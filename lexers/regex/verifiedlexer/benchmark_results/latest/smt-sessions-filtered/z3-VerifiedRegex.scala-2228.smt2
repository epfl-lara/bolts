; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110014 () Bool)

(assert start!110014)

(declare-fun b!1231869 () Bool)

(declare-fun b_free!29673 () Bool)

(declare-fun b_next!30377 () Bool)

(assert (=> b!1231869 (= b_free!29673 (not b_next!30377))))

(declare-fun tp!351663 () Bool)

(declare-fun b_and!84745 () Bool)

(assert (=> b!1231869 (= tp!351663 b_and!84745)))

(declare-fun b_free!29675 () Bool)

(declare-fun b_next!30379 () Bool)

(assert (=> b!1231869 (= b_free!29675 (not b_next!30379))))

(declare-fun tp!351666 () Bool)

(declare-fun b_and!84747 () Bool)

(assert (=> b!1231869 (= tp!351666 b_and!84747)))

(declare-fun b!1231874 () Bool)

(declare-fun b_free!29677 () Bool)

(declare-fun b_next!30381 () Bool)

(assert (=> b!1231874 (= b_free!29677 (not b_next!30381))))

(declare-fun tp!351664 () Bool)

(declare-fun b_and!84749 () Bool)

(assert (=> b!1231874 (= tp!351664 b_and!84749)))

(declare-fun b_free!29679 () Bool)

(declare-fun b_next!30383 () Bool)

(assert (=> b!1231874 (= b_free!29679 (not b_next!30383))))

(declare-fun tp!351658 () Bool)

(declare-fun b_and!84751 () Bool)

(assert (=> b!1231874 (= tp!351658 b_and!84751)))

(declare-fun e!789155 () Bool)

(assert (=> b!1231869 (= e!789155 (and tp!351663 tp!351666))))

(declare-fun b!1231870 () Bool)

(declare-fun e!789172 () Bool)

(declare-fun e!789164 () Bool)

(assert (=> b!1231870 (= e!789172 e!789164)))

(declare-fun res!552111 () Bool)

(assert (=> b!1231870 (=> (not res!552111) (not e!789164))))

(declare-datatypes ((C!7180 0))(
  ( (C!7181 (val!4120 Int)) )
))
(declare-datatypes ((List!12587 0))(
  ( (Nil!12529) (Cons!12529 (h!17930 C!7180) (t!115495 List!12587)) )
))
(declare-datatypes ((IArray!8213 0))(
  ( (IArray!8214 (innerList!4164 List!12587)) )
))
(declare-datatypes ((Conc!4104 0))(
  ( (Node!4104 (left!10784 Conc!4104) (right!11114 Conc!4104) (csize!8438 Int) (cheight!4315 Int)) (Leaf!6333 (xs!6815 IArray!8213) (csize!8439 Int)) (Empty!4104) )
))
(declare-datatypes ((BalanceConc!8140 0))(
  ( (BalanceConc!8141 (c!206044 Conc!4104)) )
))
(declare-fun lt!419744 () BalanceConc!8140)

(declare-fun lt!419746 () BalanceConc!8140)

(assert (=> b!1231870 (= res!552111 (= lt!419744 lt!419746))))

(declare-datatypes ((List!12588 0))(
  ( (Nil!12530) (Cons!12530 (h!17931 (_ BitVec 16)) (t!115496 List!12588)) )
))
(declare-datatypes ((TokenValue!2229 0))(
  ( (FloatLiteralValue!4458 (text!16048 List!12588)) (TokenValueExt!2228 (__x!8173 Int)) (Broken!11145 (value!70159 List!12588)) (Object!2286) (End!2229) (Def!2229) (Underscore!2229) (Match!2229) (Else!2229) (Error!2229) (Case!2229) (If!2229) (Extends!2229) (Abstract!2229) (Class!2229) (Val!2229) (DelimiterValue!4458 (del!2289 List!12588)) (KeywordValue!2235 (value!70160 List!12588)) (CommentValue!4458 (value!70161 List!12588)) (WhitespaceValue!4458 (value!70162 List!12588)) (IndentationValue!2229 (value!70163 List!12588)) (String!15276) (Int32!2229) (Broken!11146 (value!70164 List!12588)) (Boolean!2230) (Unit!18811) (OperatorValue!2232 (op!2289 List!12588)) (IdentifierValue!4458 (value!70165 List!12588)) (IdentifierValue!4459 (value!70166 List!12588)) (WhitespaceValue!4459 (value!70167 List!12588)) (True!4458) (False!4458) (Broken!11147 (value!70168 List!12588)) (Broken!11148 (value!70169 List!12588)) (True!4459) (RightBrace!2229) (RightBracket!2229) (Colon!2229) (Null!2229) (Comma!2229) (LeftBracket!2229) (False!4459) (LeftBrace!2229) (ImaginaryLiteralValue!2229 (text!16049 List!12588)) (StringLiteralValue!6687 (value!70170 List!12588)) (EOFValue!2229 (value!70171 List!12588)) (IdentValue!2229 (value!70172 List!12588)) (DelimiterValue!4459 (value!70173 List!12588)) (DedentValue!2229 (value!70174 List!12588)) (NewLineValue!2229 (value!70175 List!12588)) (IntegerValue!6687 (value!70176 (_ BitVec 32)) (text!16050 List!12588)) (IntegerValue!6688 (value!70177 Int) (text!16051 List!12588)) (Times!2229) (Or!2229) (Equal!2229) (Minus!2229) (Broken!11149 (value!70178 List!12588)) (And!2229) (Div!2229) (LessEqual!2229) (Mod!2229) (Concat!5660) (Not!2229) (Plus!2229) (SpaceValue!2229 (value!70179 List!12588)) (IntegerValue!6689 (value!70180 Int) (text!16052 List!12588)) (StringLiteralValue!6688 (text!16053 List!12588)) (FloatLiteralValue!4459 (text!16054 List!12588)) (BytesLiteralValue!2229 (value!70181 List!12588)) (CommentValue!4459 (value!70182 List!12588)) (StringLiteralValue!6689 (value!70183 List!12588)) (ErrorTokenValue!2229 (msg!2290 List!12588)) )
))
(declare-datatypes ((Regex!3431 0))(
  ( (ElementMatch!3431 (c!206045 C!7180)) (Concat!5661 (regOne!7374 Regex!3431) (regTwo!7374 Regex!3431)) (EmptyExpr!3431) (Star!3431 (reg!3760 Regex!3431)) (EmptyLang!3431) (Union!3431 (regOne!7375 Regex!3431) (regTwo!7375 Regex!3431)) )
))
(declare-datatypes ((String!15277 0))(
  ( (String!15278 (value!70184 String)) )
))
(declare-datatypes ((TokenValueInjection!4154 0))(
  ( (TokenValueInjection!4155 (toValue!3302 Int) (toChars!3161 Int)) )
))
(declare-datatypes ((Rule!4122 0))(
  ( (Rule!4123 (regex!2161 Regex!3431) (tag!2423 String!15277) (isSeparator!2161 Bool) (transformation!2161 TokenValueInjection!4154)) )
))
(declare-datatypes ((Token!3984 0))(
  ( (Token!3985 (value!70185 TokenValue!2229) (rule!3590 Rule!4122) (size!9906 Int) (originalCharacters!2715 List!12587)) )
))
(declare-datatypes ((List!12589 0))(
  ( (Nil!12531) (Cons!12531 (h!17932 Token!3984) (t!115497 List!12589)) )
))
(declare-fun tokens!556 () List!12589)

(declare-fun charsOf!1165 (Token!3984) BalanceConc!8140)

(assert (=> b!1231870 (= lt!419746 (charsOf!1165 (h!17932 tokens!556)))))

(declare-datatypes ((tuple2!12416 0))(
  ( (tuple2!12417 (_1!7055 Token!3984) (_2!7055 List!12587)) )
))
(declare-fun lt!419739 () tuple2!12416)

(assert (=> b!1231870 (= lt!419744 (charsOf!1165 (_1!7055 lt!419739)))))

(declare-fun b!1231871 () Bool)

(declare-fun res!552118 () Bool)

(declare-fun e!789167 () Bool)

(assert (=> b!1231871 (=> (not res!552118) (not e!789167))))

(declare-fun lt!419737 () List!12587)

(declare-fun input!2346 () List!12587)

(declare-fun ++!3205 (List!12587 List!12587) List!12587)

(assert (=> b!1231871 (= res!552118 (= (++!3205 lt!419737 (_2!7055 lt!419739)) input!2346))))

(declare-fun b!1231872 () Bool)

(declare-fun e!789160 () Bool)

(declare-fun e!789162 () Bool)

(assert (=> b!1231872 (= e!789160 e!789162)))

(declare-fun res!552108 () Bool)

(assert (=> b!1231872 (=> (not res!552108) (not e!789162))))

(declare-datatypes ((tuple2!12418 0))(
  ( (tuple2!12419 (_1!7056 List!12589) (_2!7056 List!12587)) )
))
(declare-fun lt!419742 () tuple2!12418)

(get-info :version)

(assert (=> b!1231872 (= res!552108 (and (= (_1!7056 lt!419742) tokens!556) (not ((_ is Nil!12531) tokens!556))))))

(declare-datatypes ((LexerInterface!1856 0))(
  ( (LexerInterfaceExt!1853 (__x!8174 Int)) (Lexer!1854) )
))
(declare-fun thiss!20528 () LexerInterface!1856)

(declare-datatypes ((List!12590 0))(
  ( (Nil!12532) (Cons!12532 (h!17933 Rule!4122) (t!115498 List!12590)) )
))
(declare-fun rules!2728 () List!12590)

(declare-fun lexList!486 (LexerInterface!1856 List!12590 List!12587) tuple2!12418)

(assert (=> b!1231872 (= lt!419742 (lexList!486 thiss!20528 rules!2728 input!2346))))

(declare-fun e!789169 () Bool)

(assert (=> b!1231874 (= e!789169 (and tp!351664 tp!351658))))

(declare-fun b!1231875 () Bool)

(declare-fun e!789158 () Bool)

(assert (=> b!1231875 (= e!789167 e!789158)))

(declare-fun res!552116 () Bool)

(assert (=> b!1231875 (=> (not res!552116) (not e!789158))))

(declare-fun lt!419743 () Bool)

(assert (=> b!1231875 (= res!552116 (not lt!419743))))

(declare-datatypes ((Unit!18812 0))(
  ( (Unit!18813) )
))
(declare-fun lt!419740 () Unit!18812)

(declare-fun e!789174 () Unit!18812)

(assert (=> b!1231875 (= lt!419740 e!789174)))

(declare-fun c!206043 () Bool)

(assert (=> b!1231875 (= c!206043 lt!419743)))

(declare-fun rulesProduceIndividualToken!850 (LexerInterface!1856 List!12590 Token!3984) Bool)

(assert (=> b!1231875 (= lt!419743 (not (rulesProduceIndividualToken!850 thiss!20528 rules!2728 (h!17932 tokens!556))))))

(declare-fun b!1231876 () Bool)

(assert (=> b!1231876 (= e!789164 e!789167)))

(declare-fun res!552110 () Bool)

(assert (=> b!1231876 (=> (not res!552110) (not e!789167))))

(declare-fun lt!419741 () List!12587)

(assert (=> b!1231876 (= res!552110 (= lt!419741 lt!419737))))

(declare-fun list!4646 (BalanceConc!8140) List!12587)

(assert (=> b!1231876 (= lt!419737 (list!4646 lt!419746))))

(assert (=> b!1231876 (= lt!419741 (list!4646 lt!419744))))

(declare-fun b!1231877 () Bool)

(declare-datatypes ((IArray!8215 0))(
  ( (IArray!8216 (innerList!4165 List!12589)) )
))
(declare-datatypes ((Conc!4105 0))(
  ( (Node!4105 (left!10785 Conc!4105) (right!11115 Conc!4105) (csize!8440 Int) (cheight!4316 Int)) (Leaf!6334 (xs!6816 IArray!8215) (csize!8441 Int)) (Empty!4105) )
))
(declare-datatypes ((BalanceConc!8142 0))(
  ( (BalanceConc!8143 (c!206046 Conc!4105)) )
))
(declare-fun rulesProduceEachTokenIndividually!776 (LexerInterface!1856 List!12590 BalanceConc!8142) Bool)

(declare-fun seqFromList!1571 (List!12589) BalanceConc!8142)

(assert (=> b!1231877 (= e!789158 (not (rulesProduceEachTokenIndividually!776 thiss!20528 rules!2728 (seqFromList!1571 tokens!556))))))

(assert (=> b!1231877 (rulesProduceEachTokenIndividually!776 thiss!20528 rules!2728 (seqFromList!1571 (t!115497 tokens!556)))))

(declare-fun lt!419745 () Unit!18812)

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!15 (LexerInterface!1856 List!12590 List!12587 List!12589) Unit!18812)

(assert (=> b!1231877 (= lt!419745 (lemmaLexThenRulesProducesEachTokenIndividually!15 thiss!20528 rules!2728 (_2!7055 lt!419739) (t!115497 tokens!556)))))

(declare-fun b!1231878 () Bool)

(declare-fun e!789157 () Bool)

(declare-fun tp!351665 () Bool)

(declare-fun inv!16745 (String!15277) Bool)

(declare-fun inv!16748 (TokenValueInjection!4154) Bool)

(assert (=> b!1231878 (= e!789157 (and tp!351665 (inv!16745 (tag!2423 (rule!3590 (h!17932 tokens!556)))) (inv!16748 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) e!789155))))

(declare-fun b!1231879 () Bool)

(declare-fun e!789161 () Bool)

(declare-fun tp!351662 () Bool)

(declare-fun e!789168 () Bool)

(declare-fun inv!16749 (Token!3984) Bool)

(assert (=> b!1231879 (= e!789161 (and (inv!16749 (h!17932 tokens!556)) e!789168 tp!351662))))

(declare-fun b!1231880 () Bool)

(declare-fun res!552109 () Bool)

(assert (=> b!1231880 (=> (not res!552109) (not e!789160))))

(declare-fun rulesInvariant!1730 (LexerInterface!1856 List!12590) Bool)

(assert (=> b!1231880 (= res!552109 (rulesInvariant!1730 thiss!20528 rules!2728))))

(declare-fun b!1231881 () Bool)

(declare-fun res!552119 () Bool)

(assert (=> b!1231881 (=> (not res!552119) (not e!789158))))

(assert (=> b!1231881 (= res!552119 (= (_1!7056 (lexList!486 thiss!20528 rules!2728 (_2!7055 lt!419739))) (t!115497 tokens!556)))))

(declare-fun tp!351661 () Bool)

(declare-fun e!789163 () Bool)

(declare-fun b!1231882 () Bool)

(assert (=> b!1231882 (= e!789163 (and tp!351661 (inv!16745 (tag!2423 (h!17933 rules!2728))) (inv!16748 (transformation!2161 (h!17933 rules!2728))) e!789169))))

(declare-fun b!1231883 () Bool)

(declare-fun e!789166 () Bool)

(assert (=> b!1231883 (= e!789166 false)))

(declare-fun b!1231873 () Bool)

(declare-fun res!552117 () Bool)

(assert (=> b!1231873 (=> (not res!552117) (not e!789167))))

(declare-fun matchR!1546 (Regex!3431 List!12587) Bool)

(assert (=> b!1231873 (= res!552117 (matchR!1546 (regex!2161 (rule!3590 (_1!7055 lt!419739))) lt!419741))))

(declare-fun res!552115 () Bool)

(assert (=> start!110014 (=> (not res!552115) (not e!789160))))

(assert (=> start!110014 (= res!552115 ((_ is Lexer!1854) thiss!20528))))

(assert (=> start!110014 e!789160))

(assert (=> start!110014 true))

(declare-fun e!789156 () Bool)

(assert (=> start!110014 e!789156))

(assert (=> start!110014 e!789161))

(declare-fun e!789170 () Bool)

(assert (=> start!110014 e!789170))

(declare-fun b!1231884 () Bool)

(declare-fun e!789159 () Bool)

(assert (=> b!1231884 (= e!789162 e!789159)))

(declare-fun res!552120 () Bool)

(assert (=> b!1231884 (=> (not res!552120) (not e!789159))))

(declare-datatypes ((Option!2525 0))(
  ( (None!2524) (Some!2524 (v!20681 tuple2!12416)) )
))
(declare-fun lt!419738 () Option!2525)

(declare-fun isDefined!2161 (Option!2525) Bool)

(assert (=> b!1231884 (= res!552120 (isDefined!2161 lt!419738))))

(declare-fun maxPrefix!978 (LexerInterface!1856 List!12590 List!12587) Option!2525)

(assert (=> b!1231884 (= lt!419738 (maxPrefix!978 thiss!20528 rules!2728 input!2346))))

(declare-fun tp!351660 () Bool)

(declare-fun b!1231885 () Bool)

(declare-fun inv!21 (TokenValue!2229) Bool)

(assert (=> b!1231885 (= e!789168 (and (inv!21 (value!70185 (h!17932 tokens!556))) e!789157 tp!351660))))

(declare-fun b!1231886 () Bool)

(declare-fun tp_is_empty!6383 () Bool)

(declare-fun tp!351659 () Bool)

(assert (=> b!1231886 (= e!789170 (and tp_is_empty!6383 tp!351659))))

(declare-fun b!1231887 () Bool)

(declare-fun Unit!18814 () Unit!18812)

(assert (=> b!1231887 (= e!789174 Unit!18814)))

(declare-fun b!1231888 () Bool)

(declare-fun Unit!18815 () Unit!18812)

(assert (=> b!1231888 (= e!789174 Unit!18815)))

(declare-fun lt!419736 () List!12589)

(assert (=> b!1231888 (= lt!419736 (Cons!12531 (h!17932 tokens!556) Nil!12531))))

(declare-fun lt!419747 () Unit!18812)

(declare-fun lemmaLexThenLexPrefix!170 (LexerInterface!1856 List!12590 List!12587 List!12587 List!12589 List!12589 List!12587) Unit!18812)

(assert (=> b!1231888 (= lt!419747 (lemmaLexThenLexPrefix!170 thiss!20528 rules!2728 lt!419737 (_2!7055 lt!419739) lt!419736 (_1!7056 (lexList!486 thiss!20528 rules!2728 (_2!7055 lt!419739))) (_2!7056 lt!419742)))))

(declare-fun res!552113 () Bool)

(assert (=> b!1231888 (= res!552113 (= (lexList!486 thiss!20528 rules!2728 lt!419737) (tuple2!12419 lt!419736 Nil!12529)))))

(assert (=> b!1231888 (=> (not res!552113) (not e!789166))))

(assert (=> b!1231888 e!789166))

(declare-fun b!1231889 () Bool)

(declare-fun res!552112 () Bool)

(assert (=> b!1231889 (=> (not res!552112) (not e!789160))))

(declare-fun isEmpty!7486 (List!12590) Bool)

(assert (=> b!1231889 (= res!552112 (not (isEmpty!7486 rules!2728)))))

(declare-fun b!1231890 () Bool)

(declare-fun tp!351667 () Bool)

(assert (=> b!1231890 (= e!789156 (and e!789163 tp!351667))))

(declare-fun b!1231891 () Bool)

(assert (=> b!1231891 (= e!789159 e!789172)))

(declare-fun res!552114 () Bool)

(assert (=> b!1231891 (=> (not res!552114) (not e!789172))))

(assert (=> b!1231891 (= res!552114 (= (_1!7055 lt!419739) (h!17932 tokens!556)))))

(declare-fun get!4121 (Option!2525) tuple2!12416)

(assert (=> b!1231891 (= lt!419739 (get!4121 lt!419738))))

(assert (= (and start!110014 res!552115) b!1231889))

(assert (= (and b!1231889 res!552112) b!1231880))

(assert (= (and b!1231880 res!552109) b!1231872))

(assert (= (and b!1231872 res!552108) b!1231884))

(assert (= (and b!1231884 res!552120) b!1231891))

(assert (= (and b!1231891 res!552114) b!1231870))

(assert (= (and b!1231870 res!552111) b!1231876))

(assert (= (and b!1231876 res!552110) b!1231871))

(assert (= (and b!1231871 res!552118) b!1231873))

(assert (= (and b!1231873 res!552117) b!1231875))

(assert (= (and b!1231875 c!206043) b!1231888))

(assert (= (and b!1231875 (not c!206043)) b!1231887))

(assert (= (and b!1231888 res!552113) b!1231883))

(assert (= (and b!1231875 res!552116) b!1231881))

(assert (= (and b!1231881 res!552119) b!1231877))

(assert (= b!1231882 b!1231874))

(assert (= b!1231890 b!1231882))

(assert (= (and start!110014 ((_ is Cons!12532) rules!2728)) b!1231890))

(assert (= b!1231878 b!1231869))

(assert (= b!1231885 b!1231878))

(assert (= b!1231879 b!1231885))

(assert (= (and start!110014 ((_ is Cons!12531) tokens!556)) b!1231879))

(assert (= (and start!110014 ((_ is Cons!12529) input!2346)) b!1231886))

(declare-fun m!1407469 () Bool)

(assert (=> b!1231885 m!1407469))

(declare-fun m!1407471 () Bool)

(assert (=> b!1231884 m!1407471))

(declare-fun m!1407473 () Bool)

(assert (=> b!1231884 m!1407473))

(declare-fun m!1407475 () Bool)

(assert (=> b!1231888 m!1407475))

(declare-fun m!1407477 () Bool)

(assert (=> b!1231888 m!1407477))

(declare-fun m!1407479 () Bool)

(assert (=> b!1231888 m!1407479))

(declare-fun m!1407481 () Bool)

(assert (=> b!1231880 m!1407481))

(declare-fun m!1407483 () Bool)

(assert (=> b!1231891 m!1407483))

(declare-fun m!1407485 () Bool)

(assert (=> b!1231871 m!1407485))

(declare-fun m!1407487 () Bool)

(assert (=> b!1231873 m!1407487))

(declare-fun m!1407489 () Bool)

(assert (=> b!1231870 m!1407489))

(declare-fun m!1407491 () Bool)

(assert (=> b!1231870 m!1407491))

(declare-fun m!1407493 () Bool)

(assert (=> b!1231879 m!1407493))

(declare-fun m!1407495 () Bool)

(assert (=> b!1231876 m!1407495))

(declare-fun m!1407497 () Bool)

(assert (=> b!1231876 m!1407497))

(declare-fun m!1407499 () Bool)

(assert (=> b!1231877 m!1407499))

(declare-fun m!1407501 () Bool)

(assert (=> b!1231877 m!1407501))

(declare-fun m!1407503 () Bool)

(assert (=> b!1231877 m!1407503))

(declare-fun m!1407505 () Bool)

(assert (=> b!1231877 m!1407505))

(assert (=> b!1231877 m!1407501))

(assert (=> b!1231877 m!1407505))

(declare-fun m!1407507 () Bool)

(assert (=> b!1231877 m!1407507))

(declare-fun m!1407509 () Bool)

(assert (=> b!1231878 m!1407509))

(declare-fun m!1407511 () Bool)

(assert (=> b!1231878 m!1407511))

(declare-fun m!1407513 () Bool)

(assert (=> b!1231875 m!1407513))

(declare-fun m!1407515 () Bool)

(assert (=> b!1231882 m!1407515))

(declare-fun m!1407517 () Bool)

(assert (=> b!1231882 m!1407517))

(assert (=> b!1231881 m!1407475))

(declare-fun m!1407519 () Bool)

(assert (=> b!1231872 m!1407519))

(declare-fun m!1407521 () Bool)

(assert (=> b!1231889 m!1407521))

(check-sat (not b_next!30379) (not b!1231881) (not b!1231873) (not b!1231877) b_and!84749 (not b!1231872) (not b!1231884) tp_is_empty!6383 b_and!84745 (not b!1231871) (not b!1231870) (not b!1231875) (not b!1231878) (not b_next!30381) (not b!1231889) (not b!1231880) (not b!1231891) (not b_next!30383) (not b!1231886) (not b!1231882) b_and!84751 (not b!1231885) b_and!84747 (not b!1231879) (not b_next!30377) (not b!1231890) (not b!1231876) (not b!1231888))
(check-sat (not b_next!30379) b_and!84749 b_and!84745 b_and!84751 b_and!84747 (not b_next!30377) (not b_next!30381) (not b_next!30383))
(get-model)

(declare-fun b!1232024 () Bool)

(declare-fun e!789247 () Bool)

(assert (=> b!1232024 (= e!789247 true)))

(declare-fun b!1232023 () Bool)

(declare-fun e!789246 () Bool)

(assert (=> b!1232023 (= e!789246 e!789247)))

(declare-fun b!1232022 () Bool)

(declare-fun e!789245 () Bool)

(assert (=> b!1232022 (= e!789245 e!789246)))

(declare-fun d!352627 () Bool)

(assert (=> d!352627 e!789245))

(assert (= b!1232023 b!1232024))

(assert (= b!1232022 b!1232023))

(assert (= (and d!352627 ((_ is Cons!12532) rules!2728)) b!1232022))

(declare-fun order!7599 () Int)

(declare-fun order!7601 () Int)

(declare-fun lambda!49269 () Int)

(declare-fun dynLambda!5474 (Int Int) Int)

(declare-fun dynLambda!5475 (Int Int) Int)

(assert (=> b!1232024 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5475 order!7601 lambda!49269))))

(declare-fun order!7603 () Int)

(declare-fun dynLambda!5476 (Int Int) Int)

(assert (=> b!1232024 (< (dynLambda!5476 order!7603 (toChars!3161 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5475 order!7601 lambda!49269))))

(assert (=> d!352627 true))

(declare-fun e!789236 () Bool)

(assert (=> d!352627 e!789236))

(declare-fun res!552193 () Bool)

(assert (=> d!352627 (=> (not res!552193) (not e!789236))))

(declare-fun lt!419789 () Bool)

(declare-fun forall!3188 (List!12589 Int) Bool)

(declare-fun list!4648 (BalanceConc!8142) List!12589)

(assert (=> d!352627 (= res!552193 (= lt!419789 (forall!3188 (list!4648 (seqFromList!1571 tokens!556)) lambda!49269)))))

(declare-fun forall!3189 (BalanceConc!8142 Int) Bool)

(assert (=> d!352627 (= lt!419789 (forall!3189 (seqFromList!1571 tokens!556) lambda!49269))))

(assert (=> d!352627 (not (isEmpty!7486 rules!2728))))

(assert (=> d!352627 (= (rulesProduceEachTokenIndividually!776 thiss!20528 rules!2728 (seqFromList!1571 tokens!556)) lt!419789)))

(declare-fun b!1232011 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!661 (LexerInterface!1856 List!12590 List!12589) Bool)

(assert (=> b!1232011 (= e!789236 (= lt!419789 (rulesProduceEachTokenIndividuallyList!661 thiss!20528 rules!2728 (list!4648 (seqFromList!1571 tokens!556)))))))

(assert (= (and d!352627 res!552193) b!1232011))

(assert (=> d!352627 m!1407505))

(declare-fun m!1407641 () Bool)

(assert (=> d!352627 m!1407641))

(assert (=> d!352627 m!1407641))

(declare-fun m!1407643 () Bool)

(assert (=> d!352627 m!1407643))

(assert (=> d!352627 m!1407505))

(declare-fun m!1407645 () Bool)

(assert (=> d!352627 m!1407645))

(assert (=> d!352627 m!1407521))

(assert (=> b!1232011 m!1407505))

(assert (=> b!1232011 m!1407641))

(assert (=> b!1232011 m!1407641))

(declare-fun m!1407647 () Bool)

(assert (=> b!1232011 m!1407647))

(assert (=> b!1231877 d!352627))

(declare-fun d!352665 () Bool)

(declare-fun fromListB!693 (List!12589) BalanceConc!8142)

(assert (=> d!352665 (= (seqFromList!1571 tokens!556) (fromListB!693 tokens!556))))

(declare-fun bs!289562 () Bool)

(assert (= bs!289562 d!352665))

(declare-fun m!1407649 () Bool)

(assert (=> bs!289562 m!1407649))

(assert (=> b!1231877 d!352665))

(declare-fun d!352667 () Bool)

(assert (=> d!352667 (= (seqFromList!1571 (t!115497 tokens!556)) (fromListB!693 (t!115497 tokens!556)))))

(declare-fun bs!289563 () Bool)

(assert (= bs!289563 d!352667))

(declare-fun m!1407651 () Bool)

(assert (=> bs!289563 m!1407651))

(assert (=> b!1231877 d!352667))

(declare-fun bs!289564 () Bool)

(declare-fun d!352669 () Bool)

(assert (= bs!289564 (and d!352669 d!352627)))

(declare-fun lambda!49273 () Int)

(assert (=> bs!289564 (= lambda!49273 lambda!49269)))

(declare-fun b!1232044 () Bool)

(declare-fun e!789261 () Bool)

(assert (=> b!1232044 (= e!789261 true)))

(declare-fun b!1232043 () Bool)

(declare-fun e!789260 () Bool)

(assert (=> b!1232043 (= e!789260 e!789261)))

(declare-fun b!1232042 () Bool)

(declare-fun e!789259 () Bool)

(assert (=> b!1232042 (= e!789259 e!789260)))

(assert (=> d!352669 e!789259))

(assert (= b!1232043 b!1232044))

(assert (= b!1232042 b!1232043))

(assert (= (and d!352669 ((_ is Cons!12532) rules!2728)) b!1232042))

(assert (=> b!1232044 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5475 order!7601 lambda!49273))))

(assert (=> b!1232044 (< (dynLambda!5476 order!7603 (toChars!3161 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5475 order!7601 lambda!49273))))

(assert (=> d!352669 true))

(declare-fun e!789258 () Bool)

(assert (=> d!352669 e!789258))

(declare-fun res!552197 () Bool)

(assert (=> d!352669 (=> (not res!552197) (not e!789258))))

(declare-fun lt!419791 () Bool)

(assert (=> d!352669 (= res!552197 (= lt!419791 (forall!3188 (list!4648 (seqFromList!1571 (t!115497 tokens!556))) lambda!49273)))))

(assert (=> d!352669 (= lt!419791 (forall!3189 (seqFromList!1571 (t!115497 tokens!556)) lambda!49273))))

(assert (=> d!352669 (not (isEmpty!7486 rules!2728))))

(assert (=> d!352669 (= (rulesProduceEachTokenIndividually!776 thiss!20528 rules!2728 (seqFromList!1571 (t!115497 tokens!556))) lt!419791)))

(declare-fun b!1232041 () Bool)

(assert (=> b!1232041 (= e!789258 (= lt!419791 (rulesProduceEachTokenIndividuallyList!661 thiss!20528 rules!2728 (list!4648 (seqFromList!1571 (t!115497 tokens!556))))))))

(assert (= (and d!352669 res!552197) b!1232041))

(assert (=> d!352669 m!1407501))

(declare-fun m!1407661 () Bool)

(assert (=> d!352669 m!1407661))

(assert (=> d!352669 m!1407661))

(declare-fun m!1407663 () Bool)

(assert (=> d!352669 m!1407663))

(assert (=> d!352669 m!1407501))

(declare-fun m!1407665 () Bool)

(assert (=> d!352669 m!1407665))

(assert (=> d!352669 m!1407521))

(assert (=> b!1232041 m!1407501))

(assert (=> b!1232041 m!1407661))

(assert (=> b!1232041 m!1407661))

(declare-fun m!1407667 () Bool)

(assert (=> b!1232041 m!1407667))

(assert (=> b!1231877 d!352669))

(declare-fun d!352673 () Bool)

(assert (=> d!352673 (rulesProduceEachTokenIndividually!776 thiss!20528 rules!2728 (seqFromList!1571 (t!115497 tokens!556)))))

(declare-fun lt!419795 () Unit!18812)

(declare-fun choose!7835 (LexerInterface!1856 List!12590 List!12587 List!12589) Unit!18812)

(assert (=> d!352673 (= lt!419795 (choose!7835 thiss!20528 rules!2728 (_2!7055 lt!419739) (t!115497 tokens!556)))))

(assert (=> d!352673 (not (isEmpty!7486 rules!2728))))

(assert (=> d!352673 (= (lemmaLexThenRulesProducesEachTokenIndividually!15 thiss!20528 rules!2728 (_2!7055 lt!419739) (t!115497 tokens!556)) lt!419795)))

(declare-fun bs!289568 () Bool)

(assert (= bs!289568 d!352673))

(assert (=> bs!289568 m!1407501))

(assert (=> bs!289568 m!1407501))

(assert (=> bs!289568 m!1407503))

(declare-fun m!1407681 () Bool)

(assert (=> bs!289568 m!1407681))

(assert (=> bs!289568 m!1407521))

(assert (=> b!1231877 d!352673))

(declare-fun d!352681 () Bool)

(declare-fun list!4649 (Conc!4104) List!12587)

(assert (=> d!352681 (= (list!4646 lt!419746) (list!4649 (c!206044 lt!419746)))))

(declare-fun bs!289569 () Bool)

(assert (= bs!289569 d!352681))

(declare-fun m!1407683 () Bool)

(assert (=> bs!289569 m!1407683))

(assert (=> b!1231876 d!352681))

(declare-fun d!352683 () Bool)

(assert (=> d!352683 (= (list!4646 lt!419744) (list!4649 (c!206044 lt!419744)))))

(declare-fun bs!289570 () Bool)

(assert (= bs!289570 d!352683))

(declare-fun m!1407685 () Bool)

(assert (=> bs!289570 m!1407685))

(assert (=> b!1231876 d!352683))

(declare-fun d!352685 () Bool)

(declare-fun lt!419803 () Bool)

(declare-fun e!789270 () Bool)

(assert (=> d!352685 (= lt!419803 e!789270)))

(declare-fun res!552205 () Bool)

(assert (=> d!352685 (=> (not res!552205) (not e!789270))))

(declare-datatypes ((tuple2!12420 0))(
  ( (tuple2!12421 (_1!7057 BalanceConc!8142) (_2!7057 BalanceConc!8140)) )
))
(declare-fun lex!761 (LexerInterface!1856 List!12590 BalanceConc!8140) tuple2!12420)

(declare-fun print!698 (LexerInterface!1856 BalanceConc!8142) BalanceConc!8140)

(declare-fun singletonSeq!746 (Token!3984) BalanceConc!8142)

(assert (=> d!352685 (= res!552205 (= (list!4648 (_1!7057 (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556)))))) (list!4648 (singletonSeq!746 (h!17932 tokens!556)))))))

(declare-fun e!789271 () Bool)

(assert (=> d!352685 (= lt!419803 e!789271)))

(declare-fun res!552207 () Bool)

(assert (=> d!352685 (=> (not res!552207) (not e!789271))))

(declare-fun lt!419804 () tuple2!12420)

(declare-fun size!9909 (BalanceConc!8142) Int)

(assert (=> d!352685 (= res!552207 (= (size!9909 (_1!7057 lt!419804)) 1))))

(assert (=> d!352685 (= lt!419804 (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556)))))))

(assert (=> d!352685 (not (isEmpty!7486 rules!2728))))

(assert (=> d!352685 (= (rulesProduceIndividualToken!850 thiss!20528 rules!2728 (h!17932 tokens!556)) lt!419803)))

(declare-fun b!1232055 () Bool)

(declare-fun res!552206 () Bool)

(assert (=> b!1232055 (=> (not res!552206) (not e!789271))))

(declare-fun apply!2689 (BalanceConc!8142 Int) Token!3984)

(assert (=> b!1232055 (= res!552206 (= (apply!2689 (_1!7057 lt!419804) 0) (h!17932 tokens!556)))))

(declare-fun b!1232056 () Bool)

(declare-fun isEmpty!7490 (BalanceConc!8140) Bool)

(assert (=> b!1232056 (= e!789271 (isEmpty!7490 (_2!7057 lt!419804)))))

(declare-fun b!1232057 () Bool)

(assert (=> b!1232057 (= e!789270 (isEmpty!7490 (_2!7057 (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556)))))))))

(assert (= (and d!352685 res!552207) b!1232055))

(assert (= (and b!1232055 res!552206) b!1232056))

(assert (= (and d!352685 res!552205) b!1232057))

(declare-fun m!1407689 () Bool)

(assert (=> d!352685 m!1407689))

(declare-fun m!1407691 () Bool)

(assert (=> d!352685 m!1407691))

(declare-fun m!1407693 () Bool)

(assert (=> d!352685 m!1407693))

(declare-fun m!1407695 () Bool)

(assert (=> d!352685 m!1407695))

(assert (=> d!352685 m!1407695))

(declare-fun m!1407697 () Bool)

(assert (=> d!352685 m!1407697))

(assert (=> d!352685 m!1407695))

(assert (=> d!352685 m!1407689))

(declare-fun m!1407699 () Bool)

(assert (=> d!352685 m!1407699))

(assert (=> d!352685 m!1407521))

(declare-fun m!1407701 () Bool)

(assert (=> b!1232055 m!1407701))

(declare-fun m!1407703 () Bool)

(assert (=> b!1232056 m!1407703))

(assert (=> b!1232057 m!1407695))

(assert (=> b!1232057 m!1407695))

(assert (=> b!1232057 m!1407689))

(assert (=> b!1232057 m!1407689))

(assert (=> b!1232057 m!1407691))

(declare-fun m!1407705 () Bool)

(assert (=> b!1232057 m!1407705))

(assert (=> b!1231875 d!352685))

(declare-fun d!352689 () Bool)

(declare-fun res!552218 () Bool)

(declare-fun e!789278 () Bool)

(assert (=> d!352689 (=> (not res!552218) (not e!789278))))

(declare-fun isEmpty!7491 (List!12587) Bool)

(assert (=> d!352689 (= res!552218 (not (isEmpty!7491 (originalCharacters!2715 (h!17932 tokens!556)))))))

(assert (=> d!352689 (= (inv!16749 (h!17932 tokens!556)) e!789278)))

(declare-fun b!1232068 () Bool)

(declare-fun res!552219 () Bool)

(assert (=> b!1232068 (=> (not res!552219) (not e!789278))))

(declare-fun dynLambda!5480 (Int TokenValue!2229) BalanceConc!8140)

(assert (=> b!1232068 (= res!552219 (= (originalCharacters!2715 (h!17932 tokens!556)) (list!4646 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))))))

(declare-fun b!1232069 () Bool)

(declare-fun size!9910 (List!12587) Int)

(assert (=> b!1232069 (= e!789278 (= (size!9906 (h!17932 tokens!556)) (size!9910 (originalCharacters!2715 (h!17932 tokens!556)))))))

(assert (= (and d!352689 res!552218) b!1232068))

(assert (= (and b!1232068 res!552219) b!1232069))

(declare-fun b_lambda!36445 () Bool)

(assert (=> (not b_lambda!36445) (not b!1232068)))

(declare-fun t!115518 () Bool)

(declare-fun tb!68945 () Bool)

(assert (=> (and b!1231869 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) t!115518) tb!68945))

(declare-fun b!1232074 () Bool)

(declare-fun e!789281 () Bool)

(declare-fun tp!351674 () Bool)

(declare-fun inv!16752 (Conc!4104) Bool)

(assert (=> b!1232074 (= e!789281 (and (inv!16752 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))) tp!351674))))

(declare-fun result!83206 () Bool)

(declare-fun inv!16753 (BalanceConc!8140) Bool)

(assert (=> tb!68945 (= result!83206 (and (inv!16753 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))) e!789281))))

(assert (= tb!68945 b!1232074))

(declare-fun m!1407707 () Bool)

(assert (=> b!1232074 m!1407707))

(declare-fun m!1407709 () Bool)

(assert (=> tb!68945 m!1407709))

(assert (=> b!1232068 t!115518))

(declare-fun b_and!84765 () Bool)

(assert (= b_and!84747 (and (=> t!115518 result!83206) b_and!84765)))

(declare-fun tb!68947 () Bool)

(declare-fun t!115520 () Bool)

(assert (=> (and b!1231874 (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) t!115520) tb!68947))

(declare-fun result!83210 () Bool)

(assert (= result!83210 result!83206))

(assert (=> b!1232068 t!115520))

(declare-fun b_and!84767 () Bool)

(assert (= b_and!84751 (and (=> t!115520 result!83210) b_and!84767)))

(declare-fun m!1407711 () Bool)

(assert (=> d!352689 m!1407711))

(declare-fun m!1407713 () Bool)

(assert (=> b!1232068 m!1407713))

(assert (=> b!1232068 m!1407713))

(declare-fun m!1407715 () Bool)

(assert (=> b!1232068 m!1407715))

(declare-fun m!1407717 () Bool)

(assert (=> b!1232069 m!1407717))

(assert (=> b!1231879 d!352689))

(declare-fun d!352691 () Bool)

(assert (=> d!352691 (= (inv!16745 (tag!2423 (rule!3590 (h!17932 tokens!556)))) (= (mod (str.len (value!70184 (tag!2423 (rule!3590 (h!17932 tokens!556))))) 2) 0))))

(assert (=> b!1231878 d!352691))

(declare-fun d!352693 () Bool)

(declare-fun res!552227 () Bool)

(declare-fun e!789292 () Bool)

(assert (=> d!352693 (=> (not res!552227) (not e!789292))))

(declare-fun semiInverseModEq!798 (Int Int) Bool)

(assert (=> d!352693 (= res!552227 (semiInverseModEq!798 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556))))))))

(assert (=> d!352693 (= (inv!16748 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) e!789292)))

(declare-fun b!1232090 () Bool)

(declare-fun equivClasses!765 (Int Int) Bool)

(assert (=> b!1232090 (= e!789292 (equivClasses!765 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556))))))))

(assert (= (and d!352693 res!552227) b!1232090))

(declare-fun m!1407737 () Bool)

(assert (=> d!352693 m!1407737))

(declare-fun m!1407739 () Bool)

(assert (=> b!1232090 m!1407739))

(assert (=> b!1231878 d!352693))

(declare-fun d!352697 () Bool)

(assert (=> d!352697 (= (isEmpty!7486 rules!2728) ((_ is Nil!12532) rules!2728))))

(assert (=> b!1231889 d!352697))

(declare-fun d!352699 () Bool)

(assert (=> d!352699 (= (lexList!486 thiss!20528 rules!2728 lt!419737) (tuple2!12419 lt!419736 Nil!12529))))

(declare-fun lt!419813 () Unit!18812)

(declare-fun choose!7837 (LexerInterface!1856 List!12590 List!12587 List!12587 List!12589 List!12589 List!12587) Unit!18812)

(assert (=> d!352699 (= lt!419813 (choose!7837 thiss!20528 rules!2728 lt!419737 (_2!7055 lt!419739) lt!419736 (_1!7056 (lexList!486 thiss!20528 rules!2728 (_2!7055 lt!419739))) (_2!7056 lt!419742)))))

(assert (=> d!352699 (not (isEmpty!7486 rules!2728))))

(assert (=> d!352699 (= (lemmaLexThenLexPrefix!170 thiss!20528 rules!2728 lt!419737 (_2!7055 lt!419739) lt!419736 (_1!7056 (lexList!486 thiss!20528 rules!2728 (_2!7055 lt!419739))) (_2!7056 lt!419742)) lt!419813)))

(declare-fun bs!289572 () Bool)

(assert (= bs!289572 d!352699))

(assert (=> bs!289572 m!1407479))

(declare-fun m!1407751 () Bool)

(assert (=> bs!289572 m!1407751))

(assert (=> bs!289572 m!1407521))

(assert (=> b!1231888 d!352699))

(declare-fun b!1232163 () Bool)

(declare-fun e!789348 () Bool)

(declare-fun lt!419828 () tuple2!12418)

(assert (=> b!1232163 (= e!789348 (= (_2!7056 lt!419828) (_2!7055 lt!419739)))))

(declare-fun b!1232164 () Bool)

(declare-fun e!789347 () Bool)

(assert (=> b!1232164 (= e!789348 e!789347)))

(declare-fun res!552235 () Bool)

(assert (=> b!1232164 (= res!552235 (< (size!9910 (_2!7056 lt!419828)) (size!9910 (_2!7055 lt!419739))))))

(assert (=> b!1232164 (=> (not res!552235) (not e!789347))))

(declare-fun b!1232165 () Bool)

(declare-fun e!789346 () tuple2!12418)

(declare-fun lt!419826 () Option!2525)

(declare-fun lt!419827 () tuple2!12418)

(assert (=> b!1232165 (= e!789346 (tuple2!12419 (Cons!12531 (_1!7055 (v!20681 lt!419826)) (_1!7056 lt!419827)) (_2!7056 lt!419827)))))

(assert (=> b!1232165 (= lt!419827 (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419826))))))

(declare-fun b!1232166 () Bool)

(assert (=> b!1232166 (= e!789346 (tuple2!12419 Nil!12531 (_2!7055 lt!419739)))))

(declare-fun d!352705 () Bool)

(assert (=> d!352705 e!789348))

(declare-fun c!206083 () Bool)

(declare-fun size!9911 (List!12589) Int)

(assert (=> d!352705 (= c!206083 (> (size!9911 (_1!7056 lt!419828)) 0))))

(assert (=> d!352705 (= lt!419828 e!789346)))

(declare-fun c!206082 () Bool)

(assert (=> d!352705 (= c!206082 ((_ is Some!2524) lt!419826))))

(assert (=> d!352705 (= lt!419826 (maxPrefix!978 thiss!20528 rules!2728 (_2!7055 lt!419739)))))

(assert (=> d!352705 (= (lexList!486 thiss!20528 rules!2728 (_2!7055 lt!419739)) lt!419828)))

(declare-fun b!1232167 () Bool)

(declare-fun isEmpty!7492 (List!12589) Bool)

(assert (=> b!1232167 (= e!789347 (not (isEmpty!7492 (_1!7056 lt!419828))))))

(assert (= (and d!352705 c!206082) b!1232165))

(assert (= (and d!352705 (not c!206082)) b!1232166))

(assert (= (and d!352705 c!206083) b!1232164))

(assert (= (and d!352705 (not c!206083)) b!1232163))

(assert (= (and b!1232164 res!552235) b!1232167))

(declare-fun m!1407777 () Bool)

(assert (=> b!1232164 m!1407777))

(declare-fun m!1407779 () Bool)

(assert (=> b!1232164 m!1407779))

(declare-fun m!1407781 () Bool)

(assert (=> b!1232165 m!1407781))

(declare-fun m!1407783 () Bool)

(assert (=> d!352705 m!1407783))

(declare-fun m!1407785 () Bool)

(assert (=> d!352705 m!1407785))

(declare-fun m!1407787 () Bool)

(assert (=> b!1232167 m!1407787))

(assert (=> b!1231888 d!352705))

(declare-fun b!1232168 () Bool)

(declare-fun e!789351 () Bool)

(declare-fun lt!419831 () tuple2!12418)

(assert (=> b!1232168 (= e!789351 (= (_2!7056 lt!419831) lt!419737))))

(declare-fun b!1232169 () Bool)

(declare-fun e!789350 () Bool)

(assert (=> b!1232169 (= e!789351 e!789350)))

(declare-fun res!552236 () Bool)

(assert (=> b!1232169 (= res!552236 (< (size!9910 (_2!7056 lt!419831)) (size!9910 lt!419737)))))

(assert (=> b!1232169 (=> (not res!552236) (not e!789350))))

(declare-fun b!1232170 () Bool)

(declare-fun e!789349 () tuple2!12418)

(declare-fun lt!419829 () Option!2525)

(declare-fun lt!419830 () tuple2!12418)

(assert (=> b!1232170 (= e!789349 (tuple2!12419 (Cons!12531 (_1!7055 (v!20681 lt!419829)) (_1!7056 lt!419830)) (_2!7056 lt!419830)))))

(assert (=> b!1232170 (= lt!419830 (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419829))))))

(declare-fun b!1232171 () Bool)

(assert (=> b!1232171 (= e!789349 (tuple2!12419 Nil!12531 lt!419737))))

(declare-fun d!352709 () Bool)

(assert (=> d!352709 e!789351))

(declare-fun c!206085 () Bool)

(assert (=> d!352709 (= c!206085 (> (size!9911 (_1!7056 lt!419831)) 0))))

(assert (=> d!352709 (= lt!419831 e!789349)))

(declare-fun c!206084 () Bool)

(assert (=> d!352709 (= c!206084 ((_ is Some!2524) lt!419829))))

(assert (=> d!352709 (= lt!419829 (maxPrefix!978 thiss!20528 rules!2728 lt!419737))))

(assert (=> d!352709 (= (lexList!486 thiss!20528 rules!2728 lt!419737) lt!419831)))

(declare-fun b!1232172 () Bool)

(assert (=> b!1232172 (= e!789350 (not (isEmpty!7492 (_1!7056 lt!419831))))))

(assert (= (and d!352709 c!206084) b!1232170))

(assert (= (and d!352709 (not c!206084)) b!1232171))

(assert (= (and d!352709 c!206085) b!1232169))

(assert (= (and d!352709 (not c!206085)) b!1232168))

(assert (= (and b!1232169 res!552236) b!1232172))

(declare-fun m!1407789 () Bool)

(assert (=> b!1232169 m!1407789))

(declare-fun m!1407791 () Bool)

(assert (=> b!1232169 m!1407791))

(declare-fun m!1407793 () Bool)

(assert (=> b!1232170 m!1407793))

(declare-fun m!1407795 () Bool)

(assert (=> d!352709 m!1407795))

(declare-fun m!1407797 () Bool)

(assert (=> d!352709 m!1407797))

(declare-fun m!1407799 () Bool)

(assert (=> b!1232172 m!1407799))

(assert (=> b!1231888 d!352709))

(declare-fun d!352711 () Bool)

(assert (=> d!352711 (= (inv!16745 (tag!2423 (h!17933 rules!2728))) (= (mod (str.len (value!70184 (tag!2423 (h!17933 rules!2728)))) 2) 0))))

(assert (=> b!1231882 d!352711))

(declare-fun d!352713 () Bool)

(declare-fun res!552237 () Bool)

(declare-fun e!789352 () Bool)

(assert (=> d!352713 (=> (not res!552237) (not e!789352))))

(assert (=> d!352713 (= res!552237 (semiInverseModEq!798 (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toValue!3302 (transformation!2161 (h!17933 rules!2728)))))))

(assert (=> d!352713 (= (inv!16748 (transformation!2161 (h!17933 rules!2728))) e!789352)))

(declare-fun b!1232173 () Bool)

(assert (=> b!1232173 (= e!789352 (equivClasses!765 (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toValue!3302 (transformation!2161 (h!17933 rules!2728)))))))

(assert (= (and d!352713 res!552237) b!1232173))

(declare-fun m!1407801 () Bool)

(assert (=> d!352713 m!1407801))

(declare-fun m!1407803 () Bool)

(assert (=> b!1232173 m!1407803))

(assert (=> b!1231882 d!352713))

(declare-fun b!1232184 () Bool)

(declare-fun res!552242 () Bool)

(declare-fun e!789357 () Bool)

(assert (=> b!1232184 (=> (not res!552242) (not e!789357))))

(declare-fun lt!419834 () List!12587)

(assert (=> b!1232184 (= res!552242 (= (size!9910 lt!419834) (+ (size!9910 lt!419737) (size!9910 (_2!7055 lt!419739)))))))

(declare-fun b!1232185 () Bool)

(assert (=> b!1232185 (= e!789357 (or (not (= (_2!7055 lt!419739) Nil!12529)) (= lt!419834 lt!419737)))))

(declare-fun d!352715 () Bool)

(assert (=> d!352715 e!789357))

(declare-fun res!552243 () Bool)

(assert (=> d!352715 (=> (not res!552243) (not e!789357))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1794 (List!12587) (InoxSet C!7180))

(assert (=> d!352715 (= res!552243 (= (content!1794 lt!419834) ((_ map or) (content!1794 lt!419737) (content!1794 (_2!7055 lt!419739)))))))

(declare-fun e!789358 () List!12587)

(assert (=> d!352715 (= lt!419834 e!789358)))

(declare-fun c!206088 () Bool)

(assert (=> d!352715 (= c!206088 ((_ is Nil!12529) lt!419737))))

(assert (=> d!352715 (= (++!3205 lt!419737 (_2!7055 lt!419739)) lt!419834)))

(declare-fun b!1232183 () Bool)

(assert (=> b!1232183 (= e!789358 (Cons!12529 (h!17930 lt!419737) (++!3205 (t!115495 lt!419737) (_2!7055 lt!419739))))))

(declare-fun b!1232182 () Bool)

(assert (=> b!1232182 (= e!789358 (_2!7055 lt!419739))))

(assert (= (and d!352715 c!206088) b!1232182))

(assert (= (and d!352715 (not c!206088)) b!1232183))

(assert (= (and d!352715 res!552243) b!1232184))

(assert (= (and b!1232184 res!552242) b!1232185))

(declare-fun m!1407805 () Bool)

(assert (=> b!1232184 m!1407805))

(assert (=> b!1232184 m!1407791))

(assert (=> b!1232184 m!1407779))

(declare-fun m!1407807 () Bool)

(assert (=> d!352715 m!1407807))

(declare-fun m!1407809 () Bool)

(assert (=> d!352715 m!1407809))

(declare-fun m!1407811 () Bool)

(assert (=> d!352715 m!1407811))

(declare-fun m!1407813 () Bool)

(assert (=> b!1232183 m!1407813))

(assert (=> b!1231871 d!352715))

(declare-fun d!352717 () Bool)

(declare-fun lt!419837 () BalanceConc!8140)

(assert (=> d!352717 (= (list!4646 lt!419837) (originalCharacters!2715 (h!17932 tokens!556)))))

(assert (=> d!352717 (= lt!419837 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))))

(assert (=> d!352717 (= (charsOf!1165 (h!17932 tokens!556)) lt!419837)))

(declare-fun b_lambda!36451 () Bool)

(assert (=> (not b_lambda!36451) (not d!352717)))

(assert (=> d!352717 t!115518))

(declare-fun b_and!84777 () Bool)

(assert (= b_and!84765 (and (=> t!115518 result!83206) b_and!84777)))

(assert (=> d!352717 t!115520))

(declare-fun b_and!84779 () Bool)

(assert (= b_and!84767 (and (=> t!115520 result!83210) b_and!84779)))

(declare-fun m!1407815 () Bool)

(assert (=> d!352717 m!1407815))

(assert (=> d!352717 m!1407713))

(assert (=> b!1231870 d!352717))

(declare-fun d!352719 () Bool)

(declare-fun lt!419838 () BalanceConc!8140)

(assert (=> d!352719 (= (list!4646 lt!419838) (originalCharacters!2715 (_1!7055 lt!419739)))))

(assert (=> d!352719 (= lt!419838 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739))))))

(assert (=> d!352719 (= (charsOf!1165 (_1!7055 lt!419739)) lt!419838)))

(declare-fun b_lambda!36453 () Bool)

(assert (=> (not b_lambda!36453) (not d!352719)))

(declare-fun tb!68957 () Bool)

(declare-fun t!115530 () Bool)

(assert (=> (and b!1231869 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739))))) t!115530) tb!68957))

(declare-fun b!1232186 () Bool)

(declare-fun e!789359 () Bool)

(declare-fun tp!351726 () Bool)

(assert (=> b!1232186 (= e!789359 (and (inv!16752 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739))))) tp!351726))))

(declare-fun result!83228 () Bool)

(assert (=> tb!68957 (= result!83228 (and (inv!16753 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739)))) e!789359))))

(assert (= tb!68957 b!1232186))

(declare-fun m!1407817 () Bool)

(assert (=> b!1232186 m!1407817))

(declare-fun m!1407819 () Bool)

(assert (=> tb!68957 m!1407819))

(assert (=> d!352719 t!115530))

(declare-fun b_and!84781 () Bool)

(assert (= b_and!84777 (and (=> t!115530 result!83228) b_and!84781)))

(declare-fun tb!68959 () Bool)

(declare-fun t!115532 () Bool)

(assert (=> (and b!1231874 (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739))))) t!115532) tb!68959))

(declare-fun result!83230 () Bool)

(assert (= result!83230 result!83228))

(assert (=> d!352719 t!115532))

(declare-fun b_and!84783 () Bool)

(assert (= b_and!84779 (and (=> t!115532 result!83230) b_and!84783)))

(declare-fun m!1407821 () Bool)

(assert (=> d!352719 m!1407821))

(declare-fun m!1407823 () Bool)

(assert (=> d!352719 m!1407823))

(assert (=> b!1231870 d!352719))

(assert (=> b!1231881 d!352705))

(declare-fun d!352721 () Bool)

(declare-fun res!552246 () Bool)

(declare-fun e!789362 () Bool)

(assert (=> d!352721 (=> (not res!552246) (not e!789362))))

(declare-fun rulesValid!785 (LexerInterface!1856 List!12590) Bool)

(assert (=> d!352721 (= res!552246 (rulesValid!785 thiss!20528 rules!2728))))

(assert (=> d!352721 (= (rulesInvariant!1730 thiss!20528 rules!2728) e!789362)))

(declare-fun b!1232189 () Bool)

(declare-datatypes ((List!12592 0))(
  ( (Nil!12534) (Cons!12534 (h!17935 String!15277) (t!115542 List!12592)) )
))
(declare-fun noDuplicateTag!785 (LexerInterface!1856 List!12590 List!12592) Bool)

(assert (=> b!1232189 (= e!789362 (noDuplicateTag!785 thiss!20528 rules!2728 Nil!12534))))

(assert (= (and d!352721 res!552246) b!1232189))

(declare-fun m!1407825 () Bool)

(assert (=> d!352721 m!1407825))

(declare-fun m!1407827 () Bool)

(assert (=> b!1232189 m!1407827))

(assert (=> b!1231880 d!352721))

(declare-fun d!352723 () Bool)

(assert (=> d!352723 (= (get!4121 lt!419738) (v!20681 lt!419738))))

(assert (=> b!1231891 d!352723))

(declare-fun b!1232200 () Bool)

(declare-fun res!552249 () Bool)

(declare-fun e!789369 () Bool)

(assert (=> b!1232200 (=> res!552249 e!789369)))

(assert (=> b!1232200 (= res!552249 (not ((_ is IntegerValue!6689) (value!70185 (h!17932 tokens!556)))))))

(declare-fun e!789371 () Bool)

(assert (=> b!1232200 (= e!789371 e!789369)))

(declare-fun d!352725 () Bool)

(declare-fun c!206093 () Bool)

(assert (=> d!352725 (= c!206093 ((_ is IntegerValue!6687) (value!70185 (h!17932 tokens!556))))))

(declare-fun e!789370 () Bool)

(assert (=> d!352725 (= (inv!21 (value!70185 (h!17932 tokens!556))) e!789370)))

(declare-fun b!1232201 () Bool)

(assert (=> b!1232201 (= e!789370 e!789371)))

(declare-fun c!206094 () Bool)

(assert (=> b!1232201 (= c!206094 ((_ is IntegerValue!6688) (value!70185 (h!17932 tokens!556))))))

(declare-fun b!1232202 () Bool)

(declare-fun inv!16 (TokenValue!2229) Bool)

(assert (=> b!1232202 (= e!789370 (inv!16 (value!70185 (h!17932 tokens!556))))))

(declare-fun b!1232203 () Bool)

(declare-fun inv!15 (TokenValue!2229) Bool)

(assert (=> b!1232203 (= e!789369 (inv!15 (value!70185 (h!17932 tokens!556))))))

(declare-fun b!1232204 () Bool)

(declare-fun inv!17 (TokenValue!2229) Bool)

(assert (=> b!1232204 (= e!789371 (inv!17 (value!70185 (h!17932 tokens!556))))))

(assert (= (and d!352725 c!206093) b!1232202))

(assert (= (and d!352725 (not c!206093)) b!1232201))

(assert (= (and b!1232201 c!206094) b!1232204))

(assert (= (and b!1232201 (not c!206094)) b!1232200))

(assert (= (and b!1232200 (not res!552249)) b!1232203))

(declare-fun m!1407829 () Bool)

(assert (=> b!1232202 m!1407829))

(declare-fun m!1407831 () Bool)

(assert (=> b!1232203 m!1407831))

(declare-fun m!1407833 () Bool)

(assert (=> b!1232204 m!1407833))

(assert (=> b!1231885 d!352725))

(declare-fun d!352727 () Bool)

(declare-fun isEmpty!7494 (Option!2525) Bool)

(assert (=> d!352727 (= (isDefined!2161 lt!419738) (not (isEmpty!7494 lt!419738)))))

(declare-fun bs!289574 () Bool)

(assert (= bs!289574 d!352727))

(declare-fun m!1407835 () Bool)

(assert (=> bs!289574 m!1407835))

(assert (=> b!1231884 d!352727))

(declare-fun d!352729 () Bool)

(declare-fun e!789380 () Bool)

(assert (=> d!352729 e!789380))

(declare-fun res!552264 () Bool)

(assert (=> d!352729 (=> res!552264 e!789380)))

(declare-fun lt!419850 () Option!2525)

(assert (=> d!352729 (= res!552264 (isEmpty!7494 lt!419850))))

(declare-fun e!789378 () Option!2525)

(assert (=> d!352729 (= lt!419850 e!789378)))

(declare-fun c!206097 () Bool)

(assert (=> d!352729 (= c!206097 (and ((_ is Cons!12532) rules!2728) ((_ is Nil!12532) (t!115498 rules!2728))))))

(declare-fun lt!419852 () Unit!18812)

(declare-fun lt!419851 () Unit!18812)

(assert (=> d!352729 (= lt!419852 lt!419851)))

(declare-fun isPrefix!1048 (List!12587 List!12587) Bool)

(assert (=> d!352729 (isPrefix!1048 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!741 (List!12587 List!12587) Unit!18812)

(assert (=> d!352729 (= lt!419851 (lemmaIsPrefixRefl!741 input!2346 input!2346))))

(declare-fun rulesValidInductive!684 (LexerInterface!1856 List!12590) Bool)

(assert (=> d!352729 (rulesValidInductive!684 thiss!20528 rules!2728)))

(assert (=> d!352729 (= (maxPrefix!978 thiss!20528 rules!2728 input!2346) lt!419850)))

(declare-fun b!1232223 () Bool)

(declare-fun e!789379 () Bool)

(assert (=> b!1232223 (= e!789380 e!789379)))

(declare-fun res!552270 () Bool)

(assert (=> b!1232223 (=> (not res!552270) (not e!789379))))

(assert (=> b!1232223 (= res!552270 (isDefined!2161 lt!419850))))

(declare-fun bm!85371 () Bool)

(declare-fun call!85376 () Option!2525)

(declare-fun maxPrefixOneRule!567 (LexerInterface!1856 Rule!4122 List!12587) Option!2525)

(assert (=> bm!85371 (= call!85376 (maxPrefixOneRule!567 thiss!20528 (h!17933 rules!2728) input!2346))))

(declare-fun b!1232224 () Bool)

(declare-fun contains!2107 (List!12590 Rule!4122) Bool)

(assert (=> b!1232224 (= e!789379 (contains!2107 rules!2728 (rule!3590 (_1!7055 (get!4121 lt!419850)))))))

(declare-fun b!1232225 () Bool)

(assert (=> b!1232225 (= e!789378 call!85376)))

(declare-fun b!1232226 () Bool)

(declare-fun res!552265 () Bool)

(assert (=> b!1232226 (=> (not res!552265) (not e!789379))))

(assert (=> b!1232226 (= res!552265 (= (++!3205 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850)))) (_2!7055 (get!4121 lt!419850))) input!2346))))

(declare-fun b!1232227 () Bool)

(declare-fun res!552267 () Bool)

(assert (=> b!1232227 (=> (not res!552267) (not e!789379))))

(declare-fun apply!2691 (TokenValueInjection!4154 BalanceConc!8140) TokenValue!2229)

(declare-fun seqFromList!1573 (List!12587) BalanceConc!8140)

(assert (=> b!1232227 (= res!552267 (= (value!70185 (_1!7055 (get!4121 lt!419850))) (apply!2691 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))) (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!419850)))))))))

(declare-fun b!1232228 () Bool)

(declare-fun res!552269 () Bool)

(assert (=> b!1232228 (=> (not res!552269) (not e!789379))))

(assert (=> b!1232228 (= res!552269 (matchR!1546 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))) (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))))))

(declare-fun b!1232229 () Bool)

(declare-fun res!552266 () Bool)

(assert (=> b!1232229 (=> (not res!552266) (not e!789379))))

(assert (=> b!1232229 (= res!552266 (= (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850)))) (originalCharacters!2715 (_1!7055 (get!4121 lt!419850)))))))

(declare-fun b!1232230 () Bool)

(declare-fun lt!419853 () Option!2525)

(declare-fun lt!419849 () Option!2525)

(assert (=> b!1232230 (= e!789378 (ite (and ((_ is None!2524) lt!419853) ((_ is None!2524) lt!419849)) None!2524 (ite ((_ is None!2524) lt!419849) lt!419853 (ite ((_ is None!2524) lt!419853) lt!419849 (ite (>= (size!9906 (_1!7055 (v!20681 lt!419853))) (size!9906 (_1!7055 (v!20681 lt!419849)))) lt!419853 lt!419849)))))))

(assert (=> b!1232230 (= lt!419853 call!85376)))

(assert (=> b!1232230 (= lt!419849 (maxPrefix!978 thiss!20528 (t!115498 rules!2728) input!2346))))

(declare-fun b!1232231 () Bool)

(declare-fun res!552268 () Bool)

(assert (=> b!1232231 (=> (not res!552268) (not e!789379))))

(assert (=> b!1232231 (= res!552268 (< (size!9910 (_2!7055 (get!4121 lt!419850))) (size!9910 input!2346)))))

(assert (= (and d!352729 c!206097) b!1232225))

(assert (= (and d!352729 (not c!206097)) b!1232230))

(assert (= (or b!1232225 b!1232230) bm!85371))

(assert (= (and d!352729 (not res!552264)) b!1232223))

(assert (= (and b!1232223 res!552270) b!1232229))

(assert (= (and b!1232229 res!552266) b!1232231))

(assert (= (and b!1232231 res!552268) b!1232226))

(assert (= (and b!1232226 res!552265) b!1232227))

(assert (= (and b!1232227 res!552267) b!1232228))

(assert (= (and b!1232228 res!552269) b!1232224))

(declare-fun m!1407837 () Bool)

(assert (=> b!1232229 m!1407837))

(declare-fun m!1407839 () Bool)

(assert (=> b!1232229 m!1407839))

(assert (=> b!1232229 m!1407839))

(declare-fun m!1407841 () Bool)

(assert (=> b!1232229 m!1407841))

(assert (=> b!1232231 m!1407837))

(declare-fun m!1407843 () Bool)

(assert (=> b!1232231 m!1407843))

(declare-fun m!1407845 () Bool)

(assert (=> b!1232231 m!1407845))

(assert (=> b!1232224 m!1407837))

(declare-fun m!1407847 () Bool)

(assert (=> b!1232224 m!1407847))

(assert (=> b!1232227 m!1407837))

(declare-fun m!1407849 () Bool)

(assert (=> b!1232227 m!1407849))

(assert (=> b!1232227 m!1407849))

(declare-fun m!1407851 () Bool)

(assert (=> b!1232227 m!1407851))

(declare-fun m!1407853 () Bool)

(assert (=> b!1232230 m!1407853))

(assert (=> b!1232228 m!1407837))

(assert (=> b!1232228 m!1407839))

(assert (=> b!1232228 m!1407839))

(assert (=> b!1232228 m!1407841))

(assert (=> b!1232228 m!1407841))

(declare-fun m!1407855 () Bool)

(assert (=> b!1232228 m!1407855))

(declare-fun m!1407857 () Bool)

(assert (=> bm!85371 m!1407857))

(declare-fun m!1407859 () Bool)

(assert (=> b!1232223 m!1407859))

(declare-fun m!1407861 () Bool)

(assert (=> d!352729 m!1407861))

(declare-fun m!1407863 () Bool)

(assert (=> d!352729 m!1407863))

(declare-fun m!1407865 () Bool)

(assert (=> d!352729 m!1407865))

(declare-fun m!1407867 () Bool)

(assert (=> d!352729 m!1407867))

(assert (=> b!1232226 m!1407837))

(assert (=> b!1232226 m!1407839))

(assert (=> b!1232226 m!1407839))

(assert (=> b!1232226 m!1407841))

(assert (=> b!1232226 m!1407841))

(declare-fun m!1407869 () Bool)

(assert (=> b!1232226 m!1407869))

(assert (=> b!1231884 d!352729))

(declare-fun b!1232260 () Bool)

(declare-fun e!789400 () Bool)

(declare-fun e!789396 () Bool)

(assert (=> b!1232260 (= e!789400 e!789396)))

(declare-fun res!552294 () Bool)

(assert (=> b!1232260 (=> res!552294 e!789396)))

(declare-fun call!85379 () Bool)

(assert (=> b!1232260 (= res!552294 call!85379)))

(declare-fun bm!85374 () Bool)

(assert (=> bm!85374 (= call!85379 (isEmpty!7491 lt!419741))))

(declare-fun b!1232262 () Bool)

(declare-fun e!789397 () Bool)

(declare-fun lt!419856 () Bool)

(assert (=> b!1232262 (= e!789397 (not lt!419856))))

(declare-fun b!1232263 () Bool)

(declare-fun res!552293 () Bool)

(declare-fun e!789401 () Bool)

(assert (=> b!1232263 (=> res!552293 e!789401)))

(declare-fun e!789399 () Bool)

(assert (=> b!1232263 (= res!552293 e!789399)))

(declare-fun res!552291 () Bool)

(assert (=> b!1232263 (=> (not res!552291) (not e!789399))))

(assert (=> b!1232263 (= res!552291 lt!419856)))

(declare-fun b!1232264 () Bool)

(declare-fun head!2169 (List!12587) C!7180)

(assert (=> b!1232264 (= e!789399 (= (head!2169 lt!419741) (c!206045 (regex!2161 (rule!3590 (_1!7055 lt!419739))))))))

(declare-fun b!1232265 () Bool)

(declare-fun e!789395 () Bool)

(assert (=> b!1232265 (= e!789395 e!789397)))

(declare-fun c!206104 () Bool)

(assert (=> b!1232265 (= c!206104 ((_ is EmptyLang!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(declare-fun b!1232266 () Bool)

(declare-fun res!552292 () Bool)

(assert (=> b!1232266 (=> (not res!552292) (not e!789399))))

(assert (=> b!1232266 (= res!552292 (not call!85379))))

(declare-fun b!1232267 () Bool)

(declare-fun res!552289 () Bool)

(assert (=> b!1232267 (=> res!552289 e!789401)))

(assert (=> b!1232267 (= res!552289 (not ((_ is ElementMatch!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739))))))))

(assert (=> b!1232267 (= e!789397 e!789401)))

(declare-fun b!1232268 () Bool)

(assert (=> b!1232268 (= e!789395 (= lt!419856 call!85379))))

(declare-fun b!1232269 () Bool)

(declare-fun e!789398 () Bool)

(declare-fun derivativeStep!863 (Regex!3431 C!7180) Regex!3431)

(declare-fun tail!1801 (List!12587) List!12587)

(assert (=> b!1232269 (= e!789398 (matchR!1546 (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741)) (tail!1801 lt!419741)))))

(declare-fun b!1232270 () Bool)

(assert (=> b!1232270 (= e!789401 e!789400)))

(declare-fun res!552290 () Bool)

(assert (=> b!1232270 (=> (not res!552290) (not e!789400))))

(assert (=> b!1232270 (= res!552290 (not lt!419856))))

(declare-fun b!1232271 () Bool)

(declare-fun nullable!1070 (Regex!3431) Bool)

(assert (=> b!1232271 (= e!789398 (nullable!1070 (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(declare-fun d!352731 () Bool)

(assert (=> d!352731 e!789395))

(declare-fun c!206105 () Bool)

(assert (=> d!352731 (= c!206105 ((_ is EmptyExpr!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(assert (=> d!352731 (= lt!419856 e!789398)))

(declare-fun c!206106 () Bool)

(assert (=> d!352731 (= c!206106 (isEmpty!7491 lt!419741))))

(declare-fun validRegex!1467 (Regex!3431) Bool)

(assert (=> d!352731 (validRegex!1467 (regex!2161 (rule!3590 (_1!7055 lt!419739))))))

(assert (=> d!352731 (= (matchR!1546 (regex!2161 (rule!3590 (_1!7055 lt!419739))) lt!419741) lt!419856)))

(declare-fun b!1232261 () Bool)

(assert (=> b!1232261 (= e!789396 (not (= (head!2169 lt!419741) (c!206045 (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))))

(declare-fun b!1232272 () Bool)

(declare-fun res!552287 () Bool)

(assert (=> b!1232272 (=> (not res!552287) (not e!789399))))

(assert (=> b!1232272 (= res!552287 (isEmpty!7491 (tail!1801 lt!419741)))))

(declare-fun b!1232273 () Bool)

(declare-fun res!552288 () Bool)

(assert (=> b!1232273 (=> res!552288 e!789396)))

(assert (=> b!1232273 (= res!552288 (not (isEmpty!7491 (tail!1801 lt!419741))))))

(assert (= (and d!352731 c!206106) b!1232271))

(assert (= (and d!352731 (not c!206106)) b!1232269))

(assert (= (and d!352731 c!206105) b!1232268))

(assert (= (and d!352731 (not c!206105)) b!1232265))

(assert (= (and b!1232265 c!206104) b!1232262))

(assert (= (and b!1232265 (not c!206104)) b!1232267))

(assert (= (and b!1232267 (not res!552289)) b!1232263))

(assert (= (and b!1232263 res!552291) b!1232266))

(assert (= (and b!1232266 res!552292) b!1232272))

(assert (= (and b!1232272 res!552287) b!1232264))

(assert (= (and b!1232263 (not res!552293)) b!1232270))

(assert (= (and b!1232270 res!552290) b!1232260))

(assert (= (and b!1232260 (not res!552294)) b!1232273))

(assert (= (and b!1232273 (not res!552288)) b!1232261))

(assert (= (or b!1232268 b!1232260 b!1232266) bm!85374))

(declare-fun m!1407871 () Bool)

(assert (=> d!352731 m!1407871))

(declare-fun m!1407873 () Bool)

(assert (=> d!352731 m!1407873))

(declare-fun m!1407875 () Bool)

(assert (=> b!1232264 m!1407875))

(declare-fun m!1407877 () Bool)

(assert (=> b!1232272 m!1407877))

(assert (=> b!1232272 m!1407877))

(declare-fun m!1407879 () Bool)

(assert (=> b!1232272 m!1407879))

(assert (=> b!1232261 m!1407875))

(assert (=> b!1232269 m!1407875))

(assert (=> b!1232269 m!1407875))

(declare-fun m!1407881 () Bool)

(assert (=> b!1232269 m!1407881))

(assert (=> b!1232269 m!1407877))

(assert (=> b!1232269 m!1407881))

(assert (=> b!1232269 m!1407877))

(declare-fun m!1407883 () Bool)

(assert (=> b!1232269 m!1407883))

(assert (=> bm!85374 m!1407871))

(assert (=> b!1232273 m!1407877))

(assert (=> b!1232273 m!1407877))

(assert (=> b!1232273 m!1407879))

(declare-fun m!1407885 () Bool)

(assert (=> b!1232271 m!1407885))

(assert (=> b!1231873 d!352731))

(declare-fun b!1232274 () Bool)

(declare-fun e!789404 () Bool)

(declare-fun lt!419859 () tuple2!12418)

(assert (=> b!1232274 (= e!789404 (= (_2!7056 lt!419859) input!2346))))

(declare-fun b!1232275 () Bool)

(declare-fun e!789403 () Bool)

(assert (=> b!1232275 (= e!789404 e!789403)))

(declare-fun res!552295 () Bool)

(assert (=> b!1232275 (= res!552295 (< (size!9910 (_2!7056 lt!419859)) (size!9910 input!2346)))))

(assert (=> b!1232275 (=> (not res!552295) (not e!789403))))

(declare-fun b!1232276 () Bool)

(declare-fun e!789402 () tuple2!12418)

(declare-fun lt!419857 () Option!2525)

(declare-fun lt!419858 () tuple2!12418)

(assert (=> b!1232276 (= e!789402 (tuple2!12419 (Cons!12531 (_1!7055 (v!20681 lt!419857)) (_1!7056 lt!419858)) (_2!7056 lt!419858)))))

(assert (=> b!1232276 (= lt!419858 (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419857))))))

(declare-fun b!1232277 () Bool)

(assert (=> b!1232277 (= e!789402 (tuple2!12419 Nil!12531 input!2346))))

(declare-fun d!352733 () Bool)

(assert (=> d!352733 e!789404))

(declare-fun c!206108 () Bool)

(assert (=> d!352733 (= c!206108 (> (size!9911 (_1!7056 lt!419859)) 0))))

(assert (=> d!352733 (= lt!419859 e!789402)))

(declare-fun c!206107 () Bool)

(assert (=> d!352733 (= c!206107 ((_ is Some!2524) lt!419857))))

(assert (=> d!352733 (= lt!419857 (maxPrefix!978 thiss!20528 rules!2728 input!2346))))

(assert (=> d!352733 (= (lexList!486 thiss!20528 rules!2728 input!2346) lt!419859)))

(declare-fun b!1232278 () Bool)

(assert (=> b!1232278 (= e!789403 (not (isEmpty!7492 (_1!7056 lt!419859))))))

(assert (= (and d!352733 c!206107) b!1232276))

(assert (= (and d!352733 (not c!206107)) b!1232277))

(assert (= (and d!352733 c!206108) b!1232275))

(assert (= (and d!352733 (not c!206108)) b!1232274))

(assert (= (and b!1232275 res!552295) b!1232278))

(declare-fun m!1407887 () Bool)

(assert (=> b!1232275 m!1407887))

(assert (=> b!1232275 m!1407845))

(declare-fun m!1407889 () Bool)

(assert (=> b!1232276 m!1407889))

(declare-fun m!1407891 () Bool)

(assert (=> d!352733 m!1407891))

(assert (=> d!352733 m!1407473))

(declare-fun m!1407893 () Bool)

(assert (=> b!1232278 m!1407893))

(assert (=> b!1231872 d!352733))

(declare-fun b!1232290 () Bool)

(declare-fun e!789407 () Bool)

(declare-fun tp!351740 () Bool)

(declare-fun tp!351737 () Bool)

(assert (=> b!1232290 (= e!789407 (and tp!351740 tp!351737))))

(declare-fun b!1232291 () Bool)

(declare-fun tp!351739 () Bool)

(assert (=> b!1232291 (= e!789407 tp!351739)))

(declare-fun b!1232289 () Bool)

(assert (=> b!1232289 (= e!789407 tp_is_empty!6383)))

(declare-fun b!1232292 () Bool)

(declare-fun tp!351741 () Bool)

(declare-fun tp!351738 () Bool)

(assert (=> b!1232292 (= e!789407 (and tp!351741 tp!351738))))

(assert (=> b!1231882 (= tp!351661 e!789407)))

(assert (= (and b!1231882 ((_ is ElementMatch!3431) (regex!2161 (h!17933 rules!2728)))) b!1232289))

(assert (= (and b!1231882 ((_ is Concat!5661) (regex!2161 (h!17933 rules!2728)))) b!1232290))

(assert (= (and b!1231882 ((_ is Star!3431) (regex!2161 (h!17933 rules!2728)))) b!1232291))

(assert (= (and b!1231882 ((_ is Union!3431) (regex!2161 (h!17933 rules!2728)))) b!1232292))

(declare-fun b!1232297 () Bool)

(declare-fun e!789410 () Bool)

(declare-fun tp!351744 () Bool)

(assert (=> b!1232297 (= e!789410 (and tp_is_empty!6383 tp!351744))))

(assert (=> b!1231886 (= tp!351659 e!789410)))

(assert (= (and b!1231886 ((_ is Cons!12529) (t!115495 input!2346))) b!1232297))

(declare-fun b!1232308 () Bool)

(declare-fun b_free!29689 () Bool)

(declare-fun b_next!30393 () Bool)

(assert (=> b!1232308 (= b_free!29689 (not b_next!30393))))

(declare-fun tp!351755 () Bool)

(declare-fun b_and!84785 () Bool)

(assert (=> b!1232308 (= tp!351755 b_and!84785)))

(declare-fun b_free!29691 () Bool)

(declare-fun b_next!30395 () Bool)

(assert (=> b!1232308 (= b_free!29691 (not b_next!30395))))

(declare-fun t!115534 () Bool)

(declare-fun tb!68961 () Bool)

(assert (=> (and b!1232308 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) t!115534) tb!68961))

(declare-fun result!83238 () Bool)

(assert (= result!83238 result!83206))

(assert (=> b!1232068 t!115534))

(assert (=> d!352717 t!115534))

(declare-fun t!115536 () Bool)

(declare-fun tb!68963 () Bool)

(assert (=> (and b!1232308 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739))))) t!115536) tb!68963))

(declare-fun result!83240 () Bool)

(assert (= result!83240 result!83228))

(assert (=> d!352719 t!115536))

(declare-fun b_and!84787 () Bool)

(declare-fun tp!351756 () Bool)

(assert (=> b!1232308 (= tp!351756 (and (=> t!115534 result!83238) (=> t!115536 result!83240) b_and!84787))))

(declare-fun e!789419 () Bool)

(assert (=> b!1232308 (= e!789419 (and tp!351755 tp!351756))))

(declare-fun e!789421 () Bool)

(declare-fun b!1232307 () Bool)

(declare-fun tp!351754 () Bool)

(assert (=> b!1232307 (= e!789421 (and tp!351754 (inv!16745 (tag!2423 (h!17933 (t!115498 rules!2728)))) (inv!16748 (transformation!2161 (h!17933 (t!115498 rules!2728)))) e!789419))))

(declare-fun b!1232306 () Bool)

(declare-fun e!789420 () Bool)

(declare-fun tp!351753 () Bool)

(assert (=> b!1232306 (= e!789420 (and e!789421 tp!351753))))

(assert (=> b!1231890 (= tp!351667 e!789420)))

(assert (= b!1232307 b!1232308))

(assert (= b!1232306 b!1232307))

(assert (= (and b!1231890 ((_ is Cons!12532) (t!115498 rules!2728))) b!1232306))

(declare-fun m!1407895 () Bool)

(assert (=> b!1232307 m!1407895))

(declare-fun m!1407897 () Bool)

(assert (=> b!1232307 m!1407897))

(declare-fun b!1232309 () Bool)

(declare-fun e!789423 () Bool)

(declare-fun tp!351757 () Bool)

(assert (=> b!1232309 (= e!789423 (and tp_is_empty!6383 tp!351757))))

(assert (=> b!1231885 (= tp!351660 e!789423)))

(assert (= (and b!1231885 ((_ is Cons!12529) (originalCharacters!2715 (h!17932 tokens!556)))) b!1232309))

(declare-fun b!1232323 () Bool)

(declare-fun b_free!29693 () Bool)

(declare-fun b_next!30397 () Bool)

(assert (=> b!1232323 (= b_free!29693 (not b_next!30397))))

(declare-fun tp!351771 () Bool)

(declare-fun b_and!84789 () Bool)

(assert (=> b!1232323 (= tp!351771 b_and!84789)))

(declare-fun b_free!29695 () Bool)

(declare-fun b_next!30399 () Bool)

(assert (=> b!1232323 (= b_free!29695 (not b_next!30399))))

(declare-fun t!115538 () Bool)

(declare-fun tb!68965 () Bool)

(assert (=> (and b!1232323 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) t!115538) tb!68965))

(declare-fun result!83244 () Bool)

(assert (= result!83244 result!83206))

(assert (=> b!1232068 t!115538))

(assert (=> d!352717 t!115538))

(declare-fun t!115540 () Bool)

(declare-fun tb!68967 () Bool)

(assert (=> (and b!1232323 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739))))) t!115540) tb!68967))

(declare-fun result!83246 () Bool)

(assert (= result!83246 result!83228))

(assert (=> d!352719 t!115540))

(declare-fun b_and!84791 () Bool)

(declare-fun tp!351770 () Bool)

(assert (=> b!1232323 (= tp!351770 (and (=> t!115538 result!83244) (=> t!115540 result!83246) b_and!84791))))

(declare-fun e!789436 () Bool)

(declare-fun e!789440 () Bool)

(declare-fun tp!351769 () Bool)

(declare-fun b!1232322 () Bool)

(assert (=> b!1232322 (= e!789440 (and tp!351769 (inv!16745 (tag!2423 (rule!3590 (h!17932 (t!115497 tokens!556))))) (inv!16748 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) e!789436))))

(declare-fun b!1232320 () Bool)

(declare-fun e!789441 () Bool)

(declare-fun tp!351768 () Bool)

(declare-fun e!789438 () Bool)

(assert (=> b!1232320 (= e!789438 (and (inv!16749 (h!17932 (t!115497 tokens!556))) e!789441 tp!351768))))

(assert (=> b!1232323 (= e!789436 (and tp!351771 tp!351770))))

(declare-fun tp!351772 () Bool)

(declare-fun b!1232321 () Bool)

(assert (=> b!1232321 (= e!789441 (and (inv!21 (value!70185 (h!17932 (t!115497 tokens!556)))) e!789440 tp!351772))))

(assert (=> b!1231879 (= tp!351662 e!789438)))

(assert (= b!1232322 b!1232323))

(assert (= b!1232321 b!1232322))

(assert (= b!1232320 b!1232321))

(assert (= (and b!1231879 ((_ is Cons!12531) (t!115497 tokens!556))) b!1232320))

(declare-fun m!1407899 () Bool)

(assert (=> b!1232322 m!1407899))

(declare-fun m!1407901 () Bool)

(assert (=> b!1232322 m!1407901))

(declare-fun m!1407903 () Bool)

(assert (=> b!1232320 m!1407903))

(declare-fun m!1407905 () Bool)

(assert (=> b!1232321 m!1407905))

(declare-fun b!1232325 () Bool)

(declare-fun e!789442 () Bool)

(declare-fun tp!351776 () Bool)

(declare-fun tp!351773 () Bool)

(assert (=> b!1232325 (= e!789442 (and tp!351776 tp!351773))))

(declare-fun b!1232326 () Bool)

(declare-fun tp!351775 () Bool)

(assert (=> b!1232326 (= e!789442 tp!351775)))

(declare-fun b!1232324 () Bool)

(assert (=> b!1232324 (= e!789442 tp_is_empty!6383)))

(declare-fun b!1232327 () Bool)

(declare-fun tp!351777 () Bool)

(declare-fun tp!351774 () Bool)

(assert (=> b!1232327 (= e!789442 (and tp!351777 tp!351774))))

(assert (=> b!1231878 (= tp!351665 e!789442)))

(assert (= (and b!1231878 ((_ is ElementMatch!3431) (regex!2161 (rule!3590 (h!17932 tokens!556))))) b!1232324))

(assert (= (and b!1231878 ((_ is Concat!5661) (regex!2161 (rule!3590 (h!17932 tokens!556))))) b!1232325))

(assert (= (and b!1231878 ((_ is Star!3431) (regex!2161 (rule!3590 (h!17932 tokens!556))))) b!1232326))

(assert (= (and b!1231878 ((_ is Union!3431) (regex!2161 (rule!3590 (h!17932 tokens!556))))) b!1232327))

(declare-fun b_lambda!36455 () Bool)

(assert (= b_lambda!36445 (or (and b!1231869 b_free!29675) (and b!1231874 b_free!29679 (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))))) (and b!1232308 b_free!29691 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))))) (and b!1232323 b_free!29695 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))))) b_lambda!36455)))

(declare-fun b_lambda!36457 () Bool)

(assert (= b_lambda!36451 (or (and b!1231869 b_free!29675) (and b!1231874 b_free!29679 (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))))) (and b!1232308 b_free!29691 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))))) (and b!1232323 b_free!29695 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))))) b_lambda!36457)))

(check-sat (not bm!85371) (not b!1232290) b_and!84787 (not b!1232272) (not b_next!30379) (not d!352681) (not b!1232090) (not b!1232269) (not b!1232275) (not d!352705) (not d!352729) (not d!352669) (not b!1232022) (not b!1232309) (not b!1232186) (not b!1232189) (not b!1232068) b_and!84791 (not b!1232264) b_and!84789 (not b_next!30399) (not b!1232042) (not b!1232184) (not b!1232278) b_and!84749 (not b_next!30395) (not b!1232291) (not b!1232320) (not b!1232226) (not b!1232327) (not d!352667) (not b!1232069) tp_is_empty!6383 (not d!352673) (not b_lambda!36455) (not d!352709) (not b_next!30397) b_and!84745 (not b!1232172) (not b_next!30393) (not b!1232164) (not b!1232297) (not b!1232204) (not b!1232055) b_and!84781 (not b!1232292) (not b!1232173) (not b!1232203) (not b!1232041) (not b!1232261) (not d!352719) (not d!352717) (not b!1232074) (not b!1232169) (not b!1232325) (not b!1232228) (not b!1232306) (not d!352733) (not d!352713) (not b!1232183) (not b_next!30377) (not b!1232202) (not d!352727) (not d!352699) (not d!352627) b_and!84783 (not b!1232056) (not b!1232231) (not bm!85374) (not b!1232170) (not d!352685) (not b!1232057) (not b!1232307) (not b!1232326) (not tb!68957) (not b_next!30381) b_and!84785 (not b!1232276) (not d!352731) (not d!352715) (not b_lambda!36457) (not d!352683) (not d!352689) (not b!1232230) (not b!1232271) (not b!1232167) (not b!1232227) (not b!1232011) (not b!1232321) (not d!352721) (not b!1232165) (not b_lambda!36453) (not d!352665) (not b!1232273) (not b!1232229) (not b!1232322) (not d!352693) (not b!1232223) (not tb!68945) (not b_next!30383) (not b!1232224))
(check-sat b_and!84791 (not b_next!30395) (not b_next!30393) b_and!84781 (not b_next!30377) b_and!84783 (not b_next!30383) b_and!84787 (not b_next!30379) b_and!84789 (not b_next!30399) b_and!84749 (not b_next!30397) b_and!84745 (not b_next!30381) b_and!84785)
(get-model)

(declare-fun bs!289575 () Bool)

(declare-fun d!352735 () Bool)

(assert (= bs!289575 (and d!352735 d!352627)))

(declare-fun lambda!49277 () Int)

(assert (=> bs!289575 (= lambda!49277 lambda!49269)))

(declare-fun bs!289576 () Bool)

(assert (= bs!289576 (and d!352735 d!352669)))

(assert (=> bs!289576 (= lambda!49277 lambda!49273)))

(declare-fun b!1232336 () Bool)

(declare-fun e!789451 () Bool)

(assert (=> b!1232336 (= e!789451 true)))

(declare-fun b!1232335 () Bool)

(declare-fun e!789450 () Bool)

(assert (=> b!1232335 (= e!789450 e!789451)))

(declare-fun b!1232334 () Bool)

(declare-fun e!789449 () Bool)

(assert (=> b!1232334 (= e!789449 e!789450)))

(assert (=> d!352735 e!789449))

(assert (= b!1232335 b!1232336))

(assert (= b!1232334 b!1232335))

(assert (= (and d!352735 ((_ is Cons!12532) rules!2728)) b!1232334))

(assert (=> b!1232336 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5475 order!7601 lambda!49277))))

(assert (=> b!1232336 (< (dynLambda!5476 order!7603 (toChars!3161 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5475 order!7601 lambda!49277))))

(assert (=> d!352735 true))

(declare-fun lt!419862 () Bool)

(assert (=> d!352735 (= lt!419862 (forall!3188 (list!4648 (seqFromList!1571 (t!115497 tokens!556))) lambda!49277))))

(declare-fun e!789447 () Bool)

(assert (=> d!352735 (= lt!419862 e!789447)))

(declare-fun res!552310 () Bool)

(assert (=> d!352735 (=> res!552310 e!789447)))

(assert (=> d!352735 (= res!552310 (not ((_ is Cons!12531) (list!4648 (seqFromList!1571 (t!115497 tokens!556))))))))

(assert (=> d!352735 (not (isEmpty!7486 rules!2728))))

(assert (=> d!352735 (= (rulesProduceEachTokenIndividuallyList!661 thiss!20528 rules!2728 (list!4648 (seqFromList!1571 (t!115497 tokens!556)))) lt!419862)))

(declare-fun b!1232332 () Bool)

(declare-fun e!789448 () Bool)

(assert (=> b!1232332 (= e!789447 e!789448)))

(declare-fun res!552309 () Bool)

(assert (=> b!1232332 (=> (not res!552309) (not e!789448))))

(assert (=> b!1232332 (= res!552309 (rulesProduceIndividualToken!850 thiss!20528 rules!2728 (h!17932 (list!4648 (seqFromList!1571 (t!115497 tokens!556))))))))

(declare-fun b!1232333 () Bool)

(assert (=> b!1232333 (= e!789448 (rulesProduceEachTokenIndividuallyList!661 thiss!20528 rules!2728 (t!115497 (list!4648 (seqFromList!1571 (t!115497 tokens!556))))))))

(assert (= (and d!352735 (not res!552310)) b!1232332))

(assert (= (and b!1232332 res!552309) b!1232333))

(assert (=> d!352735 m!1407661))

(declare-fun m!1407907 () Bool)

(assert (=> d!352735 m!1407907))

(assert (=> d!352735 m!1407521))

(declare-fun m!1407909 () Bool)

(assert (=> b!1232332 m!1407909))

(declare-fun m!1407911 () Bool)

(assert (=> b!1232333 m!1407911))

(assert (=> b!1232041 d!352735))

(declare-fun d!352737 () Bool)

(declare-fun list!4651 (Conc!4105) List!12589)

(assert (=> d!352737 (= (list!4648 (seqFromList!1571 (t!115497 tokens!556))) (list!4651 (c!206046 (seqFromList!1571 (t!115497 tokens!556)))))))

(declare-fun bs!289577 () Bool)

(assert (= bs!289577 d!352737))

(declare-fun m!1407913 () Bool)

(assert (=> bs!289577 m!1407913))

(assert (=> b!1232041 d!352737))

(declare-fun d!352741 () Bool)

(assert (=> d!352741 true))

(declare-fun lambda!49280 () Int)

(declare-fun order!7611 () Int)

(declare-fun dynLambda!5481 (Int Int) Int)

(assert (=> d!352741 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) (dynLambda!5481 order!7611 lambda!49280))))

(declare-fun Forall2!371 (Int) Bool)

(assert (=> d!352741 (= (equivClasses!765 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) (Forall2!371 lambda!49280))))

(declare-fun bs!289578 () Bool)

(assert (= bs!289578 d!352741))

(declare-fun m!1407927 () Bool)

(assert (=> bs!289578 m!1407927))

(assert (=> b!1232090 d!352741))

(declare-fun d!352747 () Bool)

(declare-fun isBalanced!1193 (Conc!4104) Bool)

(assert (=> d!352747 (= (inv!16753 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))) (isBalanced!1193 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))))))

(declare-fun bs!289579 () Bool)

(assert (= bs!289579 d!352747))

(declare-fun m!1407935 () Bool)

(assert (=> bs!289579 m!1407935))

(assert (=> tb!68945 d!352747))

(declare-fun b!1232356 () Bool)

(declare-fun e!789464 () Bool)

(declare-fun lt!419865 () tuple2!12418)

(assert (=> b!1232356 (= e!789464 (= (_2!7056 lt!419865) (_2!7055 (v!20681 lt!419829))))))

(declare-fun b!1232357 () Bool)

(declare-fun e!789463 () Bool)

(assert (=> b!1232357 (= e!789464 e!789463)))

(declare-fun res!552315 () Bool)

(assert (=> b!1232357 (= res!552315 (< (size!9910 (_2!7056 lt!419865)) (size!9910 (_2!7055 (v!20681 lt!419829)))))))

(assert (=> b!1232357 (=> (not res!552315) (not e!789463))))

(declare-fun b!1232358 () Bool)

(declare-fun e!789462 () tuple2!12418)

(declare-fun lt!419863 () Option!2525)

(declare-fun lt!419864 () tuple2!12418)

(assert (=> b!1232358 (= e!789462 (tuple2!12419 (Cons!12531 (_1!7055 (v!20681 lt!419863)) (_1!7056 lt!419864)) (_2!7056 lt!419864)))))

(assert (=> b!1232358 (= lt!419864 (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419863))))))

(declare-fun b!1232359 () Bool)

(assert (=> b!1232359 (= e!789462 (tuple2!12419 Nil!12531 (_2!7055 (v!20681 lt!419829))))))

(declare-fun d!352749 () Bool)

(assert (=> d!352749 e!789464))

(declare-fun c!206116 () Bool)

(assert (=> d!352749 (= c!206116 (> (size!9911 (_1!7056 lt!419865)) 0))))

(assert (=> d!352749 (= lt!419865 e!789462)))

(declare-fun c!206115 () Bool)

(assert (=> d!352749 (= c!206115 ((_ is Some!2524) lt!419863))))

(assert (=> d!352749 (= lt!419863 (maxPrefix!978 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419829))))))

(assert (=> d!352749 (= (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419829))) lt!419865)))

(declare-fun b!1232360 () Bool)

(assert (=> b!1232360 (= e!789463 (not (isEmpty!7492 (_1!7056 lt!419865))))))

(assert (= (and d!352749 c!206115) b!1232358))

(assert (= (and d!352749 (not c!206115)) b!1232359))

(assert (= (and d!352749 c!206116) b!1232357))

(assert (= (and d!352749 (not c!206116)) b!1232356))

(assert (= (and b!1232357 res!552315) b!1232360))

(declare-fun m!1407939 () Bool)

(assert (=> b!1232357 m!1407939))

(declare-fun m!1407941 () Bool)

(assert (=> b!1232357 m!1407941))

(declare-fun m!1407943 () Bool)

(assert (=> b!1232358 m!1407943))

(declare-fun m!1407945 () Bool)

(assert (=> d!352749 m!1407945))

(declare-fun m!1407947 () Bool)

(assert (=> d!352749 m!1407947))

(declare-fun m!1407949 () Bool)

(assert (=> b!1232360 m!1407949))

(assert (=> b!1232170 d!352749))

(declare-fun d!352753 () Bool)

(assert (=> d!352753 (= (inv!16745 (tag!2423 (rule!3590 (h!17932 (t!115497 tokens!556))))) (= (mod (str.len (value!70184 (tag!2423 (rule!3590 (h!17932 (t!115497 tokens!556)))))) 2) 0))))

(assert (=> b!1232322 d!352753))

(declare-fun d!352755 () Bool)

(declare-fun res!552316 () Bool)

(declare-fun e!789465 () Bool)

(assert (=> d!352755 (=> (not res!552316) (not e!789465))))

(assert (=> d!352755 (= res!552316 (semiInverseModEq!798 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toValue!3302 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))))))

(assert (=> d!352755 (= (inv!16748 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) e!789465)))

(declare-fun b!1232361 () Bool)

(assert (=> b!1232361 (= e!789465 (equivClasses!765 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toValue!3302 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))))))

(assert (= (and d!352755 res!552316) b!1232361))

(declare-fun m!1407951 () Bool)

(assert (=> d!352755 m!1407951))

(declare-fun m!1407953 () Bool)

(assert (=> b!1232361 m!1407953))

(assert (=> b!1232322 d!352755))

(declare-fun bs!289580 () Bool)

(declare-fun d!352757 () Bool)

(assert (= bs!289580 (and d!352757 d!352741)))

(declare-fun lambda!49281 () Int)

(assert (=> bs!289580 (= (= (toValue!3302 (transformation!2161 (h!17933 rules!2728))) (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) (= lambda!49281 lambda!49280))))

(assert (=> d!352757 true))

(assert (=> d!352757 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5481 order!7611 lambda!49281))))

(assert (=> d!352757 (= (equivClasses!765 (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toValue!3302 (transformation!2161 (h!17933 rules!2728)))) (Forall2!371 lambda!49281))))

(declare-fun bs!289581 () Bool)

(assert (= bs!289581 d!352757))

(declare-fun m!1407955 () Bool)

(assert (=> bs!289581 m!1407955))

(assert (=> b!1232173 d!352757))

(declare-fun d!352759 () Bool)

(declare-fun lt!419868 () Int)

(assert (=> d!352759 (>= lt!419868 0)))

(declare-fun e!789468 () Int)

(assert (=> d!352759 (= lt!419868 e!789468)))

(declare-fun c!206119 () Bool)

(assert (=> d!352759 (= c!206119 ((_ is Nil!12531) (_1!7056 lt!419859)))))

(assert (=> d!352759 (= (size!9911 (_1!7056 lt!419859)) lt!419868)))

(declare-fun b!1232366 () Bool)

(assert (=> b!1232366 (= e!789468 0)))

(declare-fun b!1232367 () Bool)

(assert (=> b!1232367 (= e!789468 (+ 1 (size!9911 (t!115497 (_1!7056 lt!419859)))))))

(assert (= (and d!352759 c!206119) b!1232366))

(assert (= (and d!352759 (not c!206119)) b!1232367))

(declare-fun m!1407959 () Bool)

(assert (=> b!1232367 m!1407959))

(assert (=> d!352733 d!352759))

(assert (=> d!352733 d!352729))

(declare-fun b!1232370 () Bool)

(declare-fun res!552317 () Bool)

(declare-fun e!789469 () Bool)

(assert (=> b!1232370 (=> (not res!552317) (not e!789469))))

(declare-fun lt!419869 () List!12587)

(assert (=> b!1232370 (= res!552317 (= (size!9910 lt!419869) (+ (size!9910 (t!115495 lt!419737)) (size!9910 (_2!7055 lt!419739)))))))

(declare-fun b!1232371 () Bool)

(assert (=> b!1232371 (= e!789469 (or (not (= (_2!7055 lt!419739) Nil!12529)) (= lt!419869 (t!115495 lt!419737))))))

(declare-fun d!352763 () Bool)

(assert (=> d!352763 e!789469))

(declare-fun res!552318 () Bool)

(assert (=> d!352763 (=> (not res!552318) (not e!789469))))

(assert (=> d!352763 (= res!552318 (= (content!1794 lt!419869) ((_ map or) (content!1794 (t!115495 lt!419737)) (content!1794 (_2!7055 lt!419739)))))))

(declare-fun e!789470 () List!12587)

(assert (=> d!352763 (= lt!419869 e!789470)))

(declare-fun c!206120 () Bool)

(assert (=> d!352763 (= c!206120 ((_ is Nil!12529) (t!115495 lt!419737)))))

(assert (=> d!352763 (= (++!3205 (t!115495 lt!419737) (_2!7055 lt!419739)) lt!419869)))

(declare-fun b!1232369 () Bool)

(assert (=> b!1232369 (= e!789470 (Cons!12529 (h!17930 (t!115495 lt!419737)) (++!3205 (t!115495 (t!115495 lt!419737)) (_2!7055 lt!419739))))))

(declare-fun b!1232368 () Bool)

(assert (=> b!1232368 (= e!789470 (_2!7055 lt!419739))))

(assert (= (and d!352763 c!206120) b!1232368))

(assert (= (and d!352763 (not c!206120)) b!1232369))

(assert (= (and d!352763 res!552318) b!1232370))

(assert (= (and b!1232370 res!552317) b!1232371))

(declare-fun m!1407961 () Bool)

(assert (=> b!1232370 m!1407961))

(declare-fun m!1407963 () Bool)

(assert (=> b!1232370 m!1407963))

(assert (=> b!1232370 m!1407779))

(declare-fun m!1407965 () Bool)

(assert (=> d!352763 m!1407965))

(declare-fun m!1407967 () Bool)

(assert (=> d!352763 m!1407967))

(assert (=> d!352763 m!1407811))

(declare-fun m!1407969 () Bool)

(assert (=> b!1232369 m!1407969))

(assert (=> b!1232183 d!352763))

(declare-fun d!352765 () Bool)

(declare-fun e!789473 () Bool)

(assert (=> d!352765 e!789473))

(declare-fun res!552319 () Bool)

(assert (=> d!352765 (=> res!552319 e!789473)))

(declare-fun lt!419871 () Option!2525)

(assert (=> d!352765 (= res!552319 (isEmpty!7494 lt!419871))))

(declare-fun e!789471 () Option!2525)

(assert (=> d!352765 (= lt!419871 e!789471)))

(declare-fun c!206121 () Bool)

(assert (=> d!352765 (= c!206121 (and ((_ is Cons!12532) (t!115498 rules!2728)) ((_ is Nil!12532) (t!115498 (t!115498 rules!2728)))))))

(declare-fun lt!419873 () Unit!18812)

(declare-fun lt!419872 () Unit!18812)

(assert (=> d!352765 (= lt!419873 lt!419872)))

(assert (=> d!352765 (isPrefix!1048 input!2346 input!2346)))

(assert (=> d!352765 (= lt!419872 (lemmaIsPrefixRefl!741 input!2346 input!2346))))

(assert (=> d!352765 (rulesValidInductive!684 thiss!20528 (t!115498 rules!2728))))

(assert (=> d!352765 (= (maxPrefix!978 thiss!20528 (t!115498 rules!2728) input!2346) lt!419871)))

(declare-fun b!1232372 () Bool)

(declare-fun e!789472 () Bool)

(assert (=> b!1232372 (= e!789473 e!789472)))

(declare-fun res!552325 () Bool)

(assert (=> b!1232372 (=> (not res!552325) (not e!789472))))

(assert (=> b!1232372 (= res!552325 (isDefined!2161 lt!419871))))

(declare-fun call!85380 () Option!2525)

(declare-fun bm!85375 () Bool)

(assert (=> bm!85375 (= call!85380 (maxPrefixOneRule!567 thiss!20528 (h!17933 (t!115498 rules!2728)) input!2346))))

(declare-fun b!1232373 () Bool)

(assert (=> b!1232373 (= e!789472 (contains!2107 (t!115498 rules!2728) (rule!3590 (_1!7055 (get!4121 lt!419871)))))))

(declare-fun b!1232374 () Bool)

(assert (=> b!1232374 (= e!789471 call!85380)))

(declare-fun b!1232375 () Bool)

(declare-fun res!552320 () Bool)

(assert (=> b!1232375 (=> (not res!552320) (not e!789472))))

(assert (=> b!1232375 (= res!552320 (= (++!3205 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419871)))) (_2!7055 (get!4121 lt!419871))) input!2346))))

(declare-fun b!1232376 () Bool)

(declare-fun res!552322 () Bool)

(assert (=> b!1232376 (=> (not res!552322) (not e!789472))))

(assert (=> b!1232376 (= res!552322 (= (value!70185 (_1!7055 (get!4121 lt!419871))) (apply!2691 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419871)))) (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!419871)))))))))

(declare-fun b!1232377 () Bool)

(declare-fun res!552324 () Bool)

(assert (=> b!1232377 (=> (not res!552324) (not e!789472))))

(assert (=> b!1232377 (= res!552324 (matchR!1546 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419871)))) (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419871))))))))

(declare-fun b!1232378 () Bool)

(declare-fun res!552321 () Bool)

(assert (=> b!1232378 (=> (not res!552321) (not e!789472))))

(assert (=> b!1232378 (= res!552321 (= (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419871)))) (originalCharacters!2715 (_1!7055 (get!4121 lt!419871)))))))

(declare-fun b!1232379 () Bool)

(declare-fun lt!419874 () Option!2525)

(declare-fun lt!419870 () Option!2525)

(assert (=> b!1232379 (= e!789471 (ite (and ((_ is None!2524) lt!419874) ((_ is None!2524) lt!419870)) None!2524 (ite ((_ is None!2524) lt!419870) lt!419874 (ite ((_ is None!2524) lt!419874) lt!419870 (ite (>= (size!9906 (_1!7055 (v!20681 lt!419874))) (size!9906 (_1!7055 (v!20681 lt!419870)))) lt!419874 lt!419870)))))))

(assert (=> b!1232379 (= lt!419874 call!85380)))

(assert (=> b!1232379 (= lt!419870 (maxPrefix!978 thiss!20528 (t!115498 (t!115498 rules!2728)) input!2346))))

(declare-fun b!1232380 () Bool)

(declare-fun res!552323 () Bool)

(assert (=> b!1232380 (=> (not res!552323) (not e!789472))))

(assert (=> b!1232380 (= res!552323 (< (size!9910 (_2!7055 (get!4121 lt!419871))) (size!9910 input!2346)))))

(assert (= (and d!352765 c!206121) b!1232374))

(assert (= (and d!352765 (not c!206121)) b!1232379))

(assert (= (or b!1232374 b!1232379) bm!85375))

(assert (= (and d!352765 (not res!552319)) b!1232372))

(assert (= (and b!1232372 res!552325) b!1232378))

(assert (= (and b!1232378 res!552321) b!1232380))

(assert (= (and b!1232380 res!552323) b!1232375))

(assert (= (and b!1232375 res!552320) b!1232376))

(assert (= (and b!1232376 res!552322) b!1232377))

(assert (= (and b!1232377 res!552324) b!1232373))

(declare-fun m!1407971 () Bool)

(assert (=> b!1232378 m!1407971))

(declare-fun m!1407973 () Bool)

(assert (=> b!1232378 m!1407973))

(assert (=> b!1232378 m!1407973))

(declare-fun m!1407975 () Bool)

(assert (=> b!1232378 m!1407975))

(assert (=> b!1232380 m!1407971))

(declare-fun m!1407977 () Bool)

(assert (=> b!1232380 m!1407977))

(assert (=> b!1232380 m!1407845))

(assert (=> b!1232373 m!1407971))

(declare-fun m!1407981 () Bool)

(assert (=> b!1232373 m!1407981))

(assert (=> b!1232376 m!1407971))

(declare-fun m!1407983 () Bool)

(assert (=> b!1232376 m!1407983))

(assert (=> b!1232376 m!1407983))

(declare-fun m!1407985 () Bool)

(assert (=> b!1232376 m!1407985))

(declare-fun m!1407987 () Bool)

(assert (=> b!1232379 m!1407987))

(assert (=> b!1232377 m!1407971))

(assert (=> b!1232377 m!1407973))

(assert (=> b!1232377 m!1407973))

(assert (=> b!1232377 m!1407975))

(assert (=> b!1232377 m!1407975))

(declare-fun m!1407989 () Bool)

(assert (=> b!1232377 m!1407989))

(declare-fun m!1407991 () Bool)

(assert (=> bm!85375 m!1407991))

(declare-fun m!1407993 () Bool)

(assert (=> b!1232372 m!1407993))

(declare-fun m!1407995 () Bool)

(assert (=> d!352765 m!1407995))

(assert (=> d!352765 m!1407863))

(assert (=> d!352765 m!1407865))

(declare-fun m!1407997 () Bool)

(assert (=> d!352765 m!1407997))

(assert (=> b!1232375 m!1407971))

(assert (=> b!1232375 m!1407973))

(assert (=> b!1232375 m!1407973))

(assert (=> b!1232375 m!1407975))

(assert (=> b!1232375 m!1407975))

(declare-fun m!1407999 () Bool)

(assert (=> b!1232375 m!1407999))

(assert (=> b!1232230 d!352765))

(declare-fun d!352769 () Bool)

(assert (=> d!352769 (= (inv!16745 (tag!2423 (h!17933 (t!115498 rules!2728)))) (= (mod (str.len (value!70184 (tag!2423 (h!17933 (t!115498 rules!2728))))) 2) 0))))

(assert (=> b!1232307 d!352769))

(declare-fun d!352771 () Bool)

(declare-fun res!552326 () Bool)

(declare-fun e!789474 () Bool)

(assert (=> d!352771 (=> (not res!552326) (not e!789474))))

(assert (=> d!352771 (= res!552326 (semiInverseModEq!798 (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toValue!3302 (transformation!2161 (h!17933 (t!115498 rules!2728))))))))

(assert (=> d!352771 (= (inv!16748 (transformation!2161 (h!17933 (t!115498 rules!2728)))) e!789474)))

(declare-fun b!1232381 () Bool)

(assert (=> b!1232381 (= e!789474 (equivClasses!765 (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toValue!3302 (transformation!2161 (h!17933 (t!115498 rules!2728))))))))

(assert (= (and d!352771 res!552326) b!1232381))

(declare-fun m!1408001 () Bool)

(assert (=> d!352771 m!1408001))

(declare-fun m!1408003 () Bool)

(assert (=> b!1232381 m!1408003))

(assert (=> b!1232307 d!352771))

(declare-fun d!352773 () Bool)

(declare-fun res!552331 () Bool)

(declare-fun e!789479 () Bool)

(assert (=> d!352773 (=> res!552331 e!789479)))

(assert (=> d!352773 (= res!552331 ((_ is Nil!12531) (list!4648 (seqFromList!1571 (t!115497 tokens!556)))))))

(assert (=> d!352773 (= (forall!3188 (list!4648 (seqFromList!1571 (t!115497 tokens!556))) lambda!49273) e!789479)))

(declare-fun b!1232386 () Bool)

(declare-fun e!789480 () Bool)

(assert (=> b!1232386 (= e!789479 e!789480)))

(declare-fun res!552332 () Bool)

(assert (=> b!1232386 (=> (not res!552332) (not e!789480))))

(declare-fun dynLambda!5482 (Int Token!3984) Bool)

(assert (=> b!1232386 (= res!552332 (dynLambda!5482 lambda!49273 (h!17932 (list!4648 (seqFromList!1571 (t!115497 tokens!556))))))))

(declare-fun b!1232387 () Bool)

(assert (=> b!1232387 (= e!789480 (forall!3188 (t!115497 (list!4648 (seqFromList!1571 (t!115497 tokens!556)))) lambda!49273))))

(assert (= (and d!352773 (not res!552331)) b!1232386))

(assert (= (and b!1232386 res!552332) b!1232387))

(declare-fun b_lambda!36461 () Bool)

(assert (=> (not b_lambda!36461) (not b!1232386)))

(declare-fun m!1408005 () Bool)

(assert (=> b!1232386 m!1408005))

(declare-fun m!1408007 () Bool)

(assert (=> b!1232387 m!1408007))

(assert (=> d!352669 d!352773))

(assert (=> d!352669 d!352737))

(declare-fun d!352775 () Bool)

(declare-fun lt!419877 () Bool)

(assert (=> d!352775 (= lt!419877 (forall!3188 (list!4648 (seqFromList!1571 (t!115497 tokens!556))) lambda!49273))))

(declare-fun forall!3192 (Conc!4105 Int) Bool)

(assert (=> d!352775 (= lt!419877 (forall!3192 (c!206046 (seqFromList!1571 (t!115497 tokens!556))) lambda!49273))))

(assert (=> d!352775 (= (forall!3189 (seqFromList!1571 (t!115497 tokens!556)) lambda!49273) lt!419877)))

(declare-fun bs!289584 () Bool)

(assert (= bs!289584 d!352775))

(assert (=> bs!289584 m!1407501))

(assert (=> bs!289584 m!1407661))

(assert (=> bs!289584 m!1407661))

(assert (=> bs!289584 m!1407663))

(declare-fun m!1408009 () Bool)

(assert (=> bs!289584 m!1408009))

(assert (=> d!352669 d!352775))

(assert (=> d!352669 d!352697))

(declare-fun d!352777 () Bool)

(assert (=> d!352777 (= (isEmpty!7491 (tail!1801 lt!419741)) ((_ is Nil!12529) (tail!1801 lt!419741)))))

(assert (=> b!1232272 d!352777))

(declare-fun d!352779 () Bool)

(assert (=> d!352779 (= (tail!1801 lt!419741) (t!115495 lt!419741))))

(assert (=> b!1232272 d!352779))

(declare-fun d!352781 () Bool)

(assert (=> d!352781 (= (isEmpty!7492 (_1!7056 lt!419831)) ((_ is Nil!12531) (_1!7056 lt!419831)))))

(assert (=> b!1232172 d!352781))

(declare-fun d!352783 () Bool)

(assert (=> d!352783 (= (inv!16753 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739)))) (isBalanced!1193 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739))))))))

(declare-fun bs!289585 () Bool)

(assert (= bs!289585 d!352783))

(declare-fun m!1408011 () Bool)

(assert (=> bs!289585 m!1408011))

(assert (=> tb!68957 d!352783))

(declare-fun d!352785 () Bool)

(assert (=> d!352785 (= (isEmpty!7491 lt!419741) ((_ is Nil!12529) lt!419741))))

(assert (=> d!352731 d!352785))

(declare-fun b!1232409 () Bool)

(declare-fun e!789503 () Bool)

(declare-fun e!789499 () Bool)

(assert (=> b!1232409 (= e!789503 e!789499)))

(declare-fun res!552347 () Bool)

(assert (=> b!1232409 (=> (not res!552347) (not e!789499))))

(declare-fun call!85388 () Bool)

(assert (=> b!1232409 (= res!552347 call!85388)))

(declare-fun b!1232410 () Bool)

(declare-fun e!789501 () Bool)

(declare-fun e!789502 () Bool)

(assert (=> b!1232410 (= e!789501 e!789502)))

(declare-fun c!206126 () Bool)

(assert (=> b!1232410 (= c!206126 ((_ is Union!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(declare-fun b!1232411 () Bool)

(declare-fun call!85389 () Bool)

(assert (=> b!1232411 (= e!789499 call!85389)))

(declare-fun d!352787 () Bool)

(declare-fun res!552350 () Bool)

(declare-fun e!789500 () Bool)

(assert (=> d!352787 (=> res!552350 e!789500)))

(assert (=> d!352787 (= res!552350 ((_ is ElementMatch!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(assert (=> d!352787 (= (validRegex!1467 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) e!789500)))

(declare-fun b!1232412 () Bool)

(declare-fun e!789498 () Bool)

(assert (=> b!1232412 (= e!789498 call!85388)))

(declare-fun b!1232413 () Bool)

(declare-fun res!552346 () Bool)

(assert (=> b!1232413 (=> res!552346 e!789503)))

(assert (=> b!1232413 (= res!552346 (not ((_ is Concat!5661) (regex!2161 (rule!3590 (_1!7055 lt!419739))))))))

(assert (=> b!1232413 (= e!789502 e!789503)))

(declare-fun b!1232414 () Bool)

(assert (=> b!1232414 (= e!789500 e!789501)))

(declare-fun c!206127 () Bool)

(assert (=> b!1232414 (= c!206127 ((_ is Star!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(declare-fun b!1232415 () Bool)

(declare-fun e!789504 () Bool)

(assert (=> b!1232415 (= e!789501 e!789504)))

(declare-fun res!552348 () Bool)

(assert (=> b!1232415 (= res!552348 (not (nullable!1070 (reg!3760 (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))))

(assert (=> b!1232415 (=> (not res!552348) (not e!789504))))

(declare-fun bm!85382 () Bool)

(declare-fun call!85387 () Bool)

(assert (=> bm!85382 (= call!85389 call!85387)))

(declare-fun b!1232416 () Bool)

(declare-fun res!552349 () Bool)

(assert (=> b!1232416 (=> (not res!552349) (not e!789498))))

(assert (=> b!1232416 (= res!552349 call!85389)))

(assert (=> b!1232416 (= e!789502 e!789498)))

(declare-fun bm!85383 () Bool)

(assert (=> bm!85383 (= call!85387 (validRegex!1467 (ite c!206127 (reg!3760 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) (ite c!206126 (regOne!7375 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) (regTwo!7374 (regex!2161 (rule!3590 (_1!7055 lt!419739))))))))))

(declare-fun b!1232417 () Bool)

(assert (=> b!1232417 (= e!789504 call!85387)))

(declare-fun bm!85384 () Bool)

(assert (=> bm!85384 (= call!85388 (validRegex!1467 (ite c!206126 (regTwo!7375 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) (regOne!7374 (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))))

(assert (= (and d!352787 (not res!552350)) b!1232414))

(assert (= (and b!1232414 c!206127) b!1232415))

(assert (= (and b!1232414 (not c!206127)) b!1232410))

(assert (= (and b!1232415 res!552348) b!1232417))

(assert (= (and b!1232410 c!206126) b!1232416))

(assert (= (and b!1232410 (not c!206126)) b!1232413))

(assert (= (and b!1232416 res!552349) b!1232412))

(assert (= (and b!1232413 (not res!552346)) b!1232409))

(assert (= (and b!1232409 res!552347) b!1232411))

(assert (= (or b!1232412 b!1232409) bm!85384))

(assert (= (or b!1232416 b!1232411) bm!85382))

(assert (= (or b!1232417 bm!85382) bm!85383))

(declare-fun m!1408019 () Bool)

(assert (=> b!1232415 m!1408019))

(declare-fun m!1408021 () Bool)

(assert (=> bm!85383 m!1408021))

(declare-fun m!1408023 () Bool)

(assert (=> bm!85384 m!1408023))

(assert (=> d!352731 d!352787))

(declare-fun d!352791 () Bool)

(declare-fun lt!419883 () Bool)

(assert (=> d!352791 (= lt!419883 (isEmpty!7491 (list!4646 (_2!7057 (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))))))))))

(declare-fun isEmpty!7495 (Conc!4104) Bool)

(assert (=> d!352791 (= lt!419883 (isEmpty!7495 (c!206044 (_2!7057 (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))))))))))

(assert (=> d!352791 (= (isEmpty!7490 (_2!7057 (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556)))))) lt!419883)))

(declare-fun bs!289586 () Bool)

(assert (= bs!289586 d!352791))

(declare-fun m!1408025 () Bool)

(assert (=> bs!289586 m!1408025))

(assert (=> bs!289586 m!1408025))

(declare-fun m!1408027 () Bool)

(assert (=> bs!289586 m!1408027))

(declare-fun m!1408029 () Bool)

(assert (=> bs!289586 m!1408029))

(assert (=> b!1232057 d!352791))

(declare-fun e!789513 () Bool)

(declare-fun b!1232429 () Bool)

(declare-fun lt!419886 () tuple2!12420)

(assert (=> b!1232429 (= e!789513 (= (list!4646 (_2!7057 lt!419886)) (_2!7056 (lexList!486 thiss!20528 rules!2728 (list!4646 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))))))))))

(declare-fun b!1232430 () Bool)

(declare-fun e!789511 () Bool)

(assert (=> b!1232430 (= e!789511 (= (_2!7057 lt!419886) (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556)))))))

(declare-fun b!1232431 () Bool)

(declare-fun e!789512 () Bool)

(assert (=> b!1232431 (= e!789511 e!789512)))

(declare-fun res!552359 () Bool)

(declare-fun size!9913 (BalanceConc!8140) Int)

(assert (=> b!1232431 (= res!552359 (< (size!9913 (_2!7057 lt!419886)) (size!9913 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))))))))

(assert (=> b!1232431 (=> (not res!552359) (not e!789512))))

(declare-fun b!1232432 () Bool)

(declare-fun isEmpty!7496 (BalanceConc!8142) Bool)

(assert (=> b!1232432 (= e!789512 (not (isEmpty!7496 (_1!7057 lt!419886))))))

(declare-fun b!1232428 () Bool)

(declare-fun res!552358 () Bool)

(assert (=> b!1232428 (=> (not res!552358) (not e!789513))))

(assert (=> b!1232428 (= res!552358 (= (list!4648 (_1!7057 lt!419886)) (_1!7056 (lexList!486 thiss!20528 rules!2728 (list!4646 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))))))))))

(declare-fun d!352793 () Bool)

(assert (=> d!352793 e!789513))

(declare-fun res!552357 () Bool)

(assert (=> d!352793 (=> (not res!552357) (not e!789513))))

(assert (=> d!352793 (= res!552357 e!789511)))

(declare-fun c!206130 () Bool)

(assert (=> d!352793 (= c!206130 (> (size!9909 (_1!7057 lt!419886)) 0))))

(declare-fun lexTailRecV2!334 (LexerInterface!1856 List!12590 BalanceConc!8140 BalanceConc!8140 BalanceConc!8140 BalanceConc!8142) tuple2!12420)

(assert (=> d!352793 (= lt!419886 (lexTailRecV2!334 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))) (BalanceConc!8141 Empty!4104) (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))) (BalanceConc!8143 Empty!4105)))))

(assert (=> d!352793 (= (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556)))) lt!419886)))

(assert (= (and d!352793 c!206130) b!1232431))

(assert (= (and d!352793 (not c!206130)) b!1232430))

(assert (= (and b!1232431 res!552359) b!1232432))

(assert (= (and d!352793 res!552357) b!1232428))

(assert (= (and b!1232428 res!552358) b!1232429))

(declare-fun m!1408031 () Bool)

(assert (=> b!1232428 m!1408031))

(assert (=> b!1232428 m!1407689))

(declare-fun m!1408033 () Bool)

(assert (=> b!1232428 m!1408033))

(assert (=> b!1232428 m!1408033))

(declare-fun m!1408035 () Bool)

(assert (=> b!1232428 m!1408035))

(declare-fun m!1408037 () Bool)

(assert (=> b!1232432 m!1408037))

(declare-fun m!1408039 () Bool)

(assert (=> b!1232431 m!1408039))

(assert (=> b!1232431 m!1407689))

(declare-fun m!1408041 () Bool)

(assert (=> b!1232431 m!1408041))

(declare-fun m!1408043 () Bool)

(assert (=> d!352793 m!1408043))

(assert (=> d!352793 m!1407689))

(assert (=> d!352793 m!1407689))

(declare-fun m!1408045 () Bool)

(assert (=> d!352793 m!1408045))

(declare-fun m!1408047 () Bool)

(assert (=> b!1232429 m!1408047))

(assert (=> b!1232429 m!1407689))

(assert (=> b!1232429 m!1408033))

(assert (=> b!1232429 m!1408033))

(assert (=> b!1232429 m!1408035))

(assert (=> b!1232057 d!352793))

(declare-fun d!352795 () Bool)

(declare-fun lt!419889 () BalanceConc!8140)

(declare-fun printList!527 (LexerInterface!1856 List!12589) List!12587)

(assert (=> d!352795 (= (list!4646 lt!419889) (printList!527 thiss!20528 (list!4648 (singletonSeq!746 (h!17932 tokens!556)))))))

(declare-fun printTailRec!509 (LexerInterface!1856 BalanceConc!8142 Int BalanceConc!8140) BalanceConc!8140)

(assert (=> d!352795 (= lt!419889 (printTailRec!509 thiss!20528 (singletonSeq!746 (h!17932 tokens!556)) 0 (BalanceConc!8141 Empty!4104)))))

(assert (=> d!352795 (= (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))) lt!419889)))

(declare-fun bs!289587 () Bool)

(assert (= bs!289587 d!352795))

(declare-fun m!1408049 () Bool)

(assert (=> bs!289587 m!1408049))

(assert (=> bs!289587 m!1407695))

(assert (=> bs!289587 m!1407697))

(assert (=> bs!289587 m!1407697))

(declare-fun m!1408051 () Bool)

(assert (=> bs!289587 m!1408051))

(assert (=> bs!289587 m!1407695))

(declare-fun m!1408053 () Bool)

(assert (=> bs!289587 m!1408053))

(assert (=> b!1232057 d!352795))

(declare-fun d!352797 () Bool)

(declare-fun e!789516 () Bool)

(assert (=> d!352797 e!789516))

(declare-fun res!552362 () Bool)

(assert (=> d!352797 (=> (not res!552362) (not e!789516))))

(declare-fun lt!419892 () BalanceConc!8142)

(assert (=> d!352797 (= res!552362 (= (list!4648 lt!419892) (Cons!12531 (h!17932 tokens!556) Nil!12531)))))

(declare-fun singleton!317 (Token!3984) BalanceConc!8142)

(assert (=> d!352797 (= lt!419892 (singleton!317 (h!17932 tokens!556)))))

(assert (=> d!352797 (= (singletonSeq!746 (h!17932 tokens!556)) lt!419892)))

(declare-fun b!1232435 () Bool)

(declare-fun isBalanced!1194 (Conc!4105) Bool)

(assert (=> b!1232435 (= e!789516 (isBalanced!1194 (c!206046 lt!419892)))))

(assert (= (and d!352797 res!552362) b!1232435))

(declare-fun m!1408055 () Bool)

(assert (=> d!352797 m!1408055))

(declare-fun m!1408057 () Bool)

(assert (=> d!352797 m!1408057))

(declare-fun m!1408059 () Bool)

(assert (=> b!1232435 m!1408059))

(assert (=> b!1232057 d!352797))

(declare-fun d!352799 () Bool)

(declare-fun charsToBigInt!0 (List!12588 Int) Int)

(assert (=> d!352799 (= (inv!15 (value!70185 (h!17932 tokens!556))) (= (charsToBigInt!0 (text!16052 (value!70185 (h!17932 tokens!556))) 0) (value!70180 (value!70185 (h!17932 tokens!556)))))))

(declare-fun bs!289588 () Bool)

(assert (= bs!289588 d!352799))

(declare-fun m!1408061 () Bool)

(assert (=> bs!289588 m!1408061))

(assert (=> b!1232203 d!352799))

(declare-fun b!1232438 () Bool)

(declare-fun res!552363 () Bool)

(declare-fun e!789517 () Bool)

(assert (=> b!1232438 (=> (not res!552363) (not e!789517))))

(declare-fun lt!419893 () List!12587)

(assert (=> b!1232438 (= res!552363 (= (size!9910 lt!419893) (+ (size!9910 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))) (size!9910 (_2!7055 (get!4121 lt!419850))))))))

(declare-fun b!1232439 () Bool)

(assert (=> b!1232439 (= e!789517 (or (not (= (_2!7055 (get!4121 lt!419850)) Nil!12529)) (= lt!419893 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850)))))))))

(declare-fun d!352801 () Bool)

(assert (=> d!352801 e!789517))

(declare-fun res!552364 () Bool)

(assert (=> d!352801 (=> (not res!552364) (not e!789517))))

(assert (=> d!352801 (= res!552364 (= (content!1794 lt!419893) ((_ map or) (content!1794 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))) (content!1794 (_2!7055 (get!4121 lt!419850))))))))

(declare-fun e!789518 () List!12587)

(assert (=> d!352801 (= lt!419893 e!789518)))

(declare-fun c!206131 () Bool)

(assert (=> d!352801 (= c!206131 ((_ is Nil!12529) (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))))))

(assert (=> d!352801 (= (++!3205 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850)))) (_2!7055 (get!4121 lt!419850))) lt!419893)))

(declare-fun b!1232437 () Bool)

(assert (=> b!1232437 (= e!789518 (Cons!12529 (h!17930 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))) (++!3205 (t!115495 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))) (_2!7055 (get!4121 lt!419850)))))))

(declare-fun b!1232436 () Bool)

(assert (=> b!1232436 (= e!789518 (_2!7055 (get!4121 lt!419850)))))

(assert (= (and d!352801 c!206131) b!1232436))

(assert (= (and d!352801 (not c!206131)) b!1232437))

(assert (= (and d!352801 res!552364) b!1232438))

(assert (= (and b!1232438 res!552363) b!1232439))

(declare-fun m!1408063 () Bool)

(assert (=> b!1232438 m!1408063))

(assert (=> b!1232438 m!1407841))

(declare-fun m!1408065 () Bool)

(assert (=> b!1232438 m!1408065))

(assert (=> b!1232438 m!1407843))

(declare-fun m!1408067 () Bool)

(assert (=> d!352801 m!1408067))

(assert (=> d!352801 m!1407841))

(declare-fun m!1408069 () Bool)

(assert (=> d!352801 m!1408069))

(declare-fun m!1408071 () Bool)

(assert (=> d!352801 m!1408071))

(declare-fun m!1408073 () Bool)

(assert (=> b!1232437 m!1408073))

(assert (=> b!1232226 d!352801))

(declare-fun d!352803 () Bool)

(assert (=> d!352803 (= (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850)))) (list!4649 (c!206044 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))))))

(declare-fun bs!289589 () Bool)

(assert (= bs!289589 d!352803))

(declare-fun m!1408075 () Bool)

(assert (=> bs!289589 m!1408075))

(assert (=> b!1232226 d!352803))

(declare-fun d!352805 () Bool)

(declare-fun lt!419894 () BalanceConc!8140)

(assert (=> d!352805 (= (list!4646 lt!419894) (originalCharacters!2715 (_1!7055 (get!4121 lt!419850))))))

(assert (=> d!352805 (= lt!419894 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))) (value!70185 (_1!7055 (get!4121 lt!419850)))))))

(assert (=> d!352805 (= (charsOf!1165 (_1!7055 (get!4121 lt!419850))) lt!419894)))

(declare-fun b_lambda!36463 () Bool)

(assert (=> (not b_lambda!36463) (not d!352805)))

(declare-fun t!115556 () Bool)

(declare-fun tb!68977 () Bool)

(assert (=> (and b!1231869 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115556) tb!68977))

(declare-fun b!1232440 () Bool)

(declare-fun e!789519 () Bool)

(declare-fun tp!351779 () Bool)

(assert (=> b!1232440 (= e!789519 (and (inv!16752 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))) (value!70185 (_1!7055 (get!4121 lt!419850)))))) tp!351779))))

(declare-fun result!83256 () Bool)

(assert (=> tb!68977 (= result!83256 (and (inv!16753 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))) (value!70185 (_1!7055 (get!4121 lt!419850))))) e!789519))))

(assert (= tb!68977 b!1232440))

(declare-fun m!1408077 () Bool)

(assert (=> b!1232440 m!1408077))

(declare-fun m!1408079 () Bool)

(assert (=> tb!68977 m!1408079))

(assert (=> d!352805 t!115556))

(declare-fun b_and!84801 () Bool)

(assert (= b_and!84781 (and (=> t!115556 result!83256) b_and!84801)))

(declare-fun tb!68979 () Bool)

(declare-fun t!115558 () Bool)

(assert (=> (and b!1231874 (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115558) tb!68979))

(declare-fun result!83258 () Bool)

(assert (= result!83258 result!83256))

(assert (=> d!352805 t!115558))

(declare-fun b_and!84803 () Bool)

(assert (= b_and!84783 (and (=> t!115558 result!83258) b_and!84803)))

(declare-fun t!115560 () Bool)

(declare-fun tb!68981 () Bool)

(assert (=> (and b!1232308 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115560) tb!68981))

(declare-fun result!83260 () Bool)

(assert (= result!83260 result!83256))

(assert (=> d!352805 t!115560))

(declare-fun b_and!84805 () Bool)

(assert (= b_and!84787 (and (=> t!115560 result!83260) b_and!84805)))

(declare-fun tb!68983 () Bool)

(declare-fun t!115562 () Bool)

(assert (=> (and b!1232323 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115562) tb!68983))

(declare-fun result!83262 () Bool)

(assert (= result!83262 result!83256))

(assert (=> d!352805 t!115562))

(declare-fun b_and!84807 () Bool)

(assert (= b_and!84791 (and (=> t!115562 result!83262) b_and!84807)))

(declare-fun m!1408081 () Bool)

(assert (=> d!352805 m!1408081))

(declare-fun m!1408083 () Bool)

(assert (=> d!352805 m!1408083))

(assert (=> b!1232226 d!352805))

(declare-fun d!352807 () Bool)

(assert (=> d!352807 (= (get!4121 lt!419850) (v!20681 lt!419850))))

(assert (=> b!1232226 d!352807))

(declare-fun d!352809 () Bool)

(assert (=> d!352809 (= (head!2169 lt!419741) (h!17930 lt!419741))))

(assert (=> b!1232264 d!352809))

(declare-fun d!352811 () Bool)

(declare-fun lt!419900 () Token!3984)

(declare-fun apply!2692 (List!12589 Int) Token!3984)

(assert (=> d!352811 (= lt!419900 (apply!2692 (list!4648 (_1!7057 lt!419804)) 0))))

(declare-fun apply!2693 (Conc!4105 Int) Token!3984)

(assert (=> d!352811 (= lt!419900 (apply!2693 (c!206046 (_1!7057 lt!419804)) 0))))

(declare-fun e!789522 () Bool)

(assert (=> d!352811 e!789522))

(declare-fun res!552367 () Bool)

(assert (=> d!352811 (=> (not res!552367) (not e!789522))))

(assert (=> d!352811 (= res!552367 (<= 0 0))))

(assert (=> d!352811 (= (apply!2689 (_1!7057 lt!419804) 0) lt!419900)))

(declare-fun b!1232443 () Bool)

(assert (=> b!1232443 (= e!789522 (< 0 (size!9909 (_1!7057 lt!419804))))))

(assert (= (and d!352811 res!552367) b!1232443))

(declare-fun m!1408091 () Bool)

(assert (=> d!352811 m!1408091))

(assert (=> d!352811 m!1408091))

(declare-fun m!1408093 () Bool)

(assert (=> d!352811 m!1408093))

(declare-fun m!1408095 () Bool)

(assert (=> d!352811 m!1408095))

(assert (=> b!1232443 m!1407699))

(assert (=> b!1232055 d!352811))

(declare-fun d!352817 () Bool)

(declare-fun lt!419903 () Bool)

(declare-fun content!1795 (List!12590) (InoxSet Rule!4122))

(assert (=> d!352817 (= lt!419903 (select (content!1795 rules!2728) (rule!3590 (_1!7055 (get!4121 lt!419850)))))))

(declare-fun e!789528 () Bool)

(assert (=> d!352817 (= lt!419903 e!789528)))

(declare-fun res!552372 () Bool)

(assert (=> d!352817 (=> (not res!552372) (not e!789528))))

(assert (=> d!352817 (= res!552372 ((_ is Cons!12532) rules!2728))))

(assert (=> d!352817 (= (contains!2107 rules!2728 (rule!3590 (_1!7055 (get!4121 lt!419850)))) lt!419903)))

(declare-fun b!1232448 () Bool)

(declare-fun e!789527 () Bool)

(assert (=> b!1232448 (= e!789528 e!789527)))

(declare-fun res!552373 () Bool)

(assert (=> b!1232448 (=> res!552373 e!789527)))

(assert (=> b!1232448 (= res!552373 (= (h!17933 rules!2728) (rule!3590 (_1!7055 (get!4121 lt!419850)))))))

(declare-fun b!1232449 () Bool)

(assert (=> b!1232449 (= e!789527 (contains!2107 (t!115498 rules!2728) (rule!3590 (_1!7055 (get!4121 lt!419850)))))))

(assert (= (and d!352817 res!552372) b!1232448))

(assert (= (and b!1232448 (not res!552373)) b!1232449))

(declare-fun m!1408097 () Bool)

(assert (=> d!352817 m!1408097))

(declare-fun m!1408099 () Bool)

(assert (=> d!352817 m!1408099))

(declare-fun m!1408101 () Bool)

(assert (=> b!1232449 m!1408101))

(assert (=> b!1232224 d!352817))

(assert (=> b!1232224 d!352807))

(declare-fun d!352819 () Bool)

(declare-fun lt!419906 () Int)

(assert (=> d!352819 (>= lt!419906 0)))

(declare-fun e!789531 () Int)

(assert (=> d!352819 (= lt!419906 e!789531)))

(declare-fun c!206134 () Bool)

(assert (=> d!352819 (= c!206134 ((_ is Nil!12529) (originalCharacters!2715 (h!17932 tokens!556))))))

(assert (=> d!352819 (= (size!9910 (originalCharacters!2715 (h!17932 tokens!556))) lt!419906)))

(declare-fun b!1232454 () Bool)

(assert (=> b!1232454 (= e!789531 0)))

(declare-fun b!1232455 () Bool)

(assert (=> b!1232455 (= e!789531 (+ 1 (size!9910 (t!115495 (originalCharacters!2715 (h!17932 tokens!556))))))))

(assert (= (and d!352819 c!206134) b!1232454))

(assert (= (and d!352819 (not c!206134)) b!1232455))

(declare-fun m!1408103 () Bool)

(assert (=> b!1232455 m!1408103))

(assert (=> b!1232069 d!352819))

(declare-fun b!1232456 () Bool)

(declare-fun e!789537 () Bool)

(declare-fun e!789533 () Bool)

(assert (=> b!1232456 (= e!789537 e!789533)))

(declare-fun res!552381 () Bool)

(assert (=> b!1232456 (=> res!552381 e!789533)))

(declare-fun call!85390 () Bool)

(assert (=> b!1232456 (= res!552381 call!85390)))

(declare-fun bm!85385 () Bool)

(assert (=> bm!85385 (= call!85390 (isEmpty!7491 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))))))

(declare-fun b!1232458 () Bool)

(declare-fun e!789534 () Bool)

(declare-fun lt!419907 () Bool)

(assert (=> b!1232458 (= e!789534 (not lt!419907))))

(declare-fun b!1232459 () Bool)

(declare-fun res!552380 () Bool)

(declare-fun e!789538 () Bool)

(assert (=> b!1232459 (=> res!552380 e!789538)))

(declare-fun e!789536 () Bool)

(assert (=> b!1232459 (= res!552380 e!789536)))

(declare-fun res!552378 () Bool)

(assert (=> b!1232459 (=> (not res!552378) (not e!789536))))

(assert (=> b!1232459 (= res!552378 lt!419907)))

(declare-fun b!1232460 () Bool)

(assert (=> b!1232460 (= e!789536 (= (head!2169 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))) (c!206045 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))))))

(declare-fun b!1232461 () Bool)

(declare-fun e!789532 () Bool)

(assert (=> b!1232461 (= e!789532 e!789534)))

(declare-fun c!206135 () Bool)

(assert (=> b!1232461 (= c!206135 ((_ is EmptyLang!3431) (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))))))

(declare-fun b!1232462 () Bool)

(declare-fun res!552379 () Bool)

(assert (=> b!1232462 (=> (not res!552379) (not e!789536))))

(assert (=> b!1232462 (= res!552379 (not call!85390))))

(declare-fun b!1232463 () Bool)

(declare-fun res!552376 () Bool)

(assert (=> b!1232463 (=> res!552376 e!789538)))

(assert (=> b!1232463 (= res!552376 (not ((_ is ElementMatch!3431) (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))))))

(assert (=> b!1232463 (= e!789534 e!789538)))

(declare-fun b!1232464 () Bool)

(assert (=> b!1232464 (= e!789532 (= lt!419907 call!85390))))

(declare-fun b!1232465 () Bool)

(declare-fun e!789535 () Bool)

(assert (=> b!1232465 (= e!789535 (matchR!1546 (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))) (head!2169 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850)))))) (tail!1801 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850)))))))))

(declare-fun b!1232466 () Bool)

(assert (=> b!1232466 (= e!789538 e!789537)))

(declare-fun res!552377 () Bool)

(assert (=> b!1232466 (=> (not res!552377) (not e!789537))))

(assert (=> b!1232466 (= res!552377 (not lt!419907))))

(declare-fun b!1232467 () Bool)

(assert (=> b!1232467 (= e!789535 (nullable!1070 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))))))

(declare-fun d!352821 () Bool)

(assert (=> d!352821 e!789532))

(declare-fun c!206136 () Bool)

(assert (=> d!352821 (= c!206136 ((_ is EmptyExpr!3431) (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))))))

(assert (=> d!352821 (= lt!419907 e!789535)))

(declare-fun c!206137 () Bool)

(assert (=> d!352821 (= c!206137 (isEmpty!7491 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))))))

(assert (=> d!352821 (validRegex!1467 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))))

(assert (=> d!352821 (= (matchR!1546 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))) (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))) lt!419907)))

(declare-fun b!1232457 () Bool)

(assert (=> b!1232457 (= e!789533 (not (= (head!2169 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))) (c!206045 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))))))))

(declare-fun b!1232468 () Bool)

(declare-fun res!552374 () Bool)

(assert (=> b!1232468 (=> (not res!552374) (not e!789536))))

(assert (=> b!1232468 (= res!552374 (isEmpty!7491 (tail!1801 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850)))))))))

(declare-fun b!1232469 () Bool)

(declare-fun res!552375 () Bool)

(assert (=> b!1232469 (=> res!552375 e!789533)))

(assert (=> b!1232469 (= res!552375 (not (isEmpty!7491 (tail!1801 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419850))))))))))

(assert (= (and d!352821 c!206137) b!1232467))

(assert (= (and d!352821 (not c!206137)) b!1232465))

(assert (= (and d!352821 c!206136) b!1232464))

(assert (= (and d!352821 (not c!206136)) b!1232461))

(assert (= (and b!1232461 c!206135) b!1232458))

(assert (= (and b!1232461 (not c!206135)) b!1232463))

(assert (= (and b!1232463 (not res!552376)) b!1232459))

(assert (= (and b!1232459 res!552378) b!1232462))

(assert (= (and b!1232462 res!552379) b!1232468))

(assert (= (and b!1232468 res!552374) b!1232460))

(assert (= (and b!1232459 (not res!552380)) b!1232466))

(assert (= (and b!1232466 res!552377) b!1232456))

(assert (= (and b!1232456 (not res!552381)) b!1232469))

(assert (= (and b!1232469 (not res!552375)) b!1232457))

(assert (= (or b!1232464 b!1232456 b!1232462) bm!85385))

(assert (=> d!352821 m!1407841))

(declare-fun m!1408105 () Bool)

(assert (=> d!352821 m!1408105))

(declare-fun m!1408107 () Bool)

(assert (=> d!352821 m!1408107))

(assert (=> b!1232460 m!1407841))

(declare-fun m!1408109 () Bool)

(assert (=> b!1232460 m!1408109))

(assert (=> b!1232468 m!1407841))

(declare-fun m!1408111 () Bool)

(assert (=> b!1232468 m!1408111))

(assert (=> b!1232468 m!1408111))

(declare-fun m!1408113 () Bool)

(assert (=> b!1232468 m!1408113))

(assert (=> b!1232457 m!1407841))

(assert (=> b!1232457 m!1408109))

(assert (=> b!1232465 m!1407841))

(assert (=> b!1232465 m!1408109))

(assert (=> b!1232465 m!1408109))

(declare-fun m!1408115 () Bool)

(assert (=> b!1232465 m!1408115))

(assert (=> b!1232465 m!1407841))

(assert (=> b!1232465 m!1408111))

(assert (=> b!1232465 m!1408115))

(assert (=> b!1232465 m!1408111))

(declare-fun m!1408117 () Bool)

(assert (=> b!1232465 m!1408117))

(assert (=> bm!85385 m!1407841))

(assert (=> bm!85385 m!1408105))

(assert (=> b!1232469 m!1407841))

(assert (=> b!1232469 m!1408111))

(assert (=> b!1232469 m!1408111))

(assert (=> b!1232469 m!1408113))

(declare-fun m!1408119 () Bool)

(assert (=> b!1232467 m!1408119))

(assert (=> b!1232228 d!352821))

(assert (=> b!1232228 d!352807))

(assert (=> b!1232228 d!352803))

(assert (=> b!1232228 d!352805))

(declare-fun d!352823 () Bool)

(assert (=> d!352823 true))

(declare-fun lt!419910 () Bool)

(assert (=> d!352823 (= lt!419910 (rulesValidInductive!684 thiss!20528 rules!2728))))

(declare-fun lambda!49284 () Int)

(declare-fun forall!3193 (List!12590 Int) Bool)

(assert (=> d!352823 (= lt!419910 (forall!3193 rules!2728 lambda!49284))))

(assert (=> d!352823 (= (rulesValid!785 thiss!20528 rules!2728) lt!419910)))

(declare-fun bs!289592 () Bool)

(assert (= bs!289592 d!352823))

(assert (=> bs!289592 m!1407867))

(declare-fun m!1408121 () Bool)

(assert (=> bs!289592 m!1408121))

(assert (=> d!352721 d!352823))

(declare-fun d!352825 () Bool)

(declare-fun res!552382 () Bool)

(declare-fun e!789539 () Bool)

(assert (=> d!352825 (=> (not res!552382) (not e!789539))))

(assert (=> d!352825 (= res!552382 (not (isEmpty!7491 (originalCharacters!2715 (h!17932 (t!115497 tokens!556))))))))

(assert (=> d!352825 (= (inv!16749 (h!17932 (t!115497 tokens!556))) e!789539)))

(declare-fun b!1232472 () Bool)

(declare-fun res!552383 () Bool)

(assert (=> b!1232472 (=> (not res!552383) (not e!789539))))

(assert (=> b!1232472 (= res!552383 (= (originalCharacters!2715 (h!17932 (t!115497 tokens!556))) (list!4646 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (value!70185 (h!17932 (t!115497 tokens!556)))))))))

(declare-fun b!1232473 () Bool)

(assert (=> b!1232473 (= e!789539 (= (size!9906 (h!17932 (t!115497 tokens!556))) (size!9910 (originalCharacters!2715 (h!17932 (t!115497 tokens!556))))))))

(assert (= (and d!352825 res!552382) b!1232472))

(assert (= (and b!1232472 res!552383) b!1232473))

(declare-fun b_lambda!36465 () Bool)

(assert (=> (not b_lambda!36465) (not b!1232472)))

(declare-fun t!115564 () Bool)

(declare-fun tb!68985 () Bool)

(assert (=> (and b!1231869 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) t!115564) tb!68985))

(declare-fun b!1232474 () Bool)

(declare-fun e!789540 () Bool)

(declare-fun tp!351780 () Bool)

(assert (=> b!1232474 (= e!789540 (and (inv!16752 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (value!70185 (h!17932 (t!115497 tokens!556)))))) tp!351780))))

(declare-fun result!83264 () Bool)

(assert (=> tb!68985 (= result!83264 (and (inv!16753 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (value!70185 (h!17932 (t!115497 tokens!556))))) e!789540))))

(assert (= tb!68985 b!1232474))

(declare-fun m!1408123 () Bool)

(assert (=> b!1232474 m!1408123))

(declare-fun m!1408125 () Bool)

(assert (=> tb!68985 m!1408125))

(assert (=> b!1232472 t!115564))

(declare-fun b_and!84809 () Bool)

(assert (= b_and!84801 (and (=> t!115564 result!83264) b_and!84809)))

(declare-fun t!115566 () Bool)

(declare-fun tb!68987 () Bool)

(assert (=> (and b!1231874 (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) t!115566) tb!68987))

(declare-fun result!83266 () Bool)

(assert (= result!83266 result!83264))

(assert (=> b!1232472 t!115566))

(declare-fun b_and!84811 () Bool)

(assert (= b_and!84803 (and (=> t!115566 result!83266) b_and!84811)))

(declare-fun t!115568 () Bool)

(declare-fun tb!68989 () Bool)

(assert (=> (and b!1232308 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) t!115568) tb!68989))

(declare-fun result!83268 () Bool)

(assert (= result!83268 result!83264))

(assert (=> b!1232472 t!115568))

(declare-fun b_and!84813 () Bool)

(assert (= b_and!84805 (and (=> t!115568 result!83268) b_and!84813)))

(declare-fun t!115570 () Bool)

(declare-fun tb!68991 () Bool)

(assert (=> (and b!1232323 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) t!115570) tb!68991))

(declare-fun result!83270 () Bool)

(assert (= result!83270 result!83264))

(assert (=> b!1232472 t!115570))

(declare-fun b_and!84815 () Bool)

(assert (= b_and!84807 (and (=> t!115570 result!83270) b_and!84815)))

(declare-fun m!1408127 () Bool)

(assert (=> d!352825 m!1408127))

(declare-fun m!1408129 () Bool)

(assert (=> b!1232472 m!1408129))

(assert (=> b!1232472 m!1408129))

(declare-fun m!1408131 () Bool)

(assert (=> b!1232472 m!1408131))

(declare-fun m!1408133 () Bool)

(assert (=> b!1232473 m!1408133))

(assert (=> b!1232320 d!352825))

(assert (=> d!352699 d!352709))

(declare-fun d!352827 () Bool)

(assert (=> d!352827 (= (lexList!486 thiss!20528 rules!2728 lt!419737) (tuple2!12419 lt!419736 Nil!12529))))

(assert (=> d!352827 true))

(declare-fun _$42!142 () Unit!18812)

(assert (=> d!352827 (= (choose!7837 thiss!20528 rules!2728 lt!419737 (_2!7055 lt!419739) lt!419736 (_1!7056 (lexList!486 thiss!20528 rules!2728 (_2!7055 lt!419739))) (_2!7056 lt!419742)) _$42!142)))

(declare-fun bs!289593 () Bool)

(assert (= bs!289593 d!352827))

(assert (=> bs!289593 m!1407479))

(assert (=> d!352699 d!352827))

(assert (=> d!352699 d!352697))

(declare-fun d!352829 () Bool)

(declare-fun c!206140 () Bool)

(assert (=> d!352829 (= c!206140 ((_ is Node!4104) (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))))))

(declare-fun e!789545 () Bool)

(assert (=> d!352829 (= (inv!16752 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))) e!789545)))

(declare-fun b!1232481 () Bool)

(declare-fun inv!16754 (Conc!4104) Bool)

(assert (=> b!1232481 (= e!789545 (inv!16754 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))))))

(declare-fun b!1232482 () Bool)

(declare-fun e!789546 () Bool)

(assert (=> b!1232482 (= e!789545 e!789546)))

(declare-fun res!552386 () Bool)

(assert (=> b!1232482 (= res!552386 (not ((_ is Leaf!6333) (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))))))))

(assert (=> b!1232482 (=> res!552386 e!789546)))

(declare-fun b!1232483 () Bool)

(declare-fun inv!16755 (Conc!4104) Bool)

(assert (=> b!1232483 (= e!789546 (inv!16755 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))))))

(assert (= (and d!352829 c!206140) b!1232481))

(assert (= (and d!352829 (not c!206140)) b!1232482))

(assert (= (and b!1232482 (not res!552386)) b!1232483))

(declare-fun m!1408135 () Bool)

(assert (=> b!1232481 m!1408135))

(declare-fun m!1408137 () Bool)

(assert (=> b!1232483 m!1408137))

(assert (=> b!1232074 d!352829))

(assert (=> bm!85374 d!352785))

(declare-fun d!352831 () Bool)

(declare-fun res!552391 () Bool)

(declare-fun e!789551 () Bool)

(assert (=> d!352831 (=> res!552391 e!789551)))

(assert (=> d!352831 (= res!552391 ((_ is Nil!12532) rules!2728))))

(assert (=> d!352831 (= (noDuplicateTag!785 thiss!20528 rules!2728 Nil!12534) e!789551)))

(declare-fun b!1232488 () Bool)

(declare-fun e!789552 () Bool)

(assert (=> b!1232488 (= e!789551 e!789552)))

(declare-fun res!552392 () Bool)

(assert (=> b!1232488 (=> (not res!552392) (not e!789552))))

(declare-fun contains!2108 (List!12592 String!15277) Bool)

(assert (=> b!1232488 (= res!552392 (not (contains!2108 Nil!12534 (tag!2423 (h!17933 rules!2728)))))))

(declare-fun b!1232489 () Bool)

(assert (=> b!1232489 (= e!789552 (noDuplicateTag!785 thiss!20528 (t!115498 rules!2728) (Cons!12534 (tag!2423 (h!17933 rules!2728)) Nil!12534)))))

(assert (= (and d!352831 (not res!552391)) b!1232488))

(assert (= (and b!1232488 res!552392) b!1232489))

(declare-fun m!1408139 () Bool)

(assert (=> b!1232488 m!1408139))

(declare-fun m!1408141 () Bool)

(assert (=> b!1232489 m!1408141))

(assert (=> b!1232189 d!352831))

(declare-fun d!352833 () Bool)

(declare-fun lt!419911 () Int)

(assert (=> d!352833 (>= lt!419911 0)))

(declare-fun e!789553 () Int)

(assert (=> d!352833 (= lt!419911 e!789553)))

(declare-fun c!206141 () Bool)

(assert (=> d!352833 (= c!206141 ((_ is Nil!12531) (_1!7056 lt!419831)))))

(assert (=> d!352833 (= (size!9911 (_1!7056 lt!419831)) lt!419911)))

(declare-fun b!1232490 () Bool)

(assert (=> b!1232490 (= e!789553 0)))

(declare-fun b!1232491 () Bool)

(assert (=> b!1232491 (= e!789553 (+ 1 (size!9911 (t!115497 (_1!7056 lt!419831)))))))

(assert (= (and d!352833 c!206141) b!1232490))

(assert (= (and d!352833 (not c!206141)) b!1232491))

(declare-fun m!1408143 () Bool)

(assert (=> b!1232491 m!1408143))

(assert (=> d!352709 d!352833))

(declare-fun d!352835 () Bool)

(declare-fun e!789556 () Bool)

(assert (=> d!352835 e!789556))

(declare-fun res!552393 () Bool)

(assert (=> d!352835 (=> res!552393 e!789556)))

(declare-fun lt!419913 () Option!2525)

(assert (=> d!352835 (= res!552393 (isEmpty!7494 lt!419913))))

(declare-fun e!789554 () Option!2525)

(assert (=> d!352835 (= lt!419913 e!789554)))

(declare-fun c!206142 () Bool)

(assert (=> d!352835 (= c!206142 (and ((_ is Cons!12532) rules!2728) ((_ is Nil!12532) (t!115498 rules!2728))))))

(declare-fun lt!419915 () Unit!18812)

(declare-fun lt!419914 () Unit!18812)

(assert (=> d!352835 (= lt!419915 lt!419914)))

(assert (=> d!352835 (isPrefix!1048 lt!419737 lt!419737)))

(assert (=> d!352835 (= lt!419914 (lemmaIsPrefixRefl!741 lt!419737 lt!419737))))

(assert (=> d!352835 (rulesValidInductive!684 thiss!20528 rules!2728)))

(assert (=> d!352835 (= (maxPrefix!978 thiss!20528 rules!2728 lt!419737) lt!419913)))

(declare-fun b!1232492 () Bool)

(declare-fun e!789555 () Bool)

(assert (=> b!1232492 (= e!789556 e!789555)))

(declare-fun res!552399 () Bool)

(assert (=> b!1232492 (=> (not res!552399) (not e!789555))))

(assert (=> b!1232492 (= res!552399 (isDefined!2161 lt!419913))))

(declare-fun call!85391 () Option!2525)

(declare-fun bm!85386 () Bool)

(assert (=> bm!85386 (= call!85391 (maxPrefixOneRule!567 thiss!20528 (h!17933 rules!2728) lt!419737))))

(declare-fun b!1232493 () Bool)

(assert (=> b!1232493 (= e!789555 (contains!2107 rules!2728 (rule!3590 (_1!7055 (get!4121 lt!419913)))))))

(declare-fun b!1232494 () Bool)

(assert (=> b!1232494 (= e!789554 call!85391)))

(declare-fun b!1232495 () Bool)

(declare-fun res!552394 () Bool)

(assert (=> b!1232495 (=> (not res!552394) (not e!789555))))

(assert (=> b!1232495 (= res!552394 (= (++!3205 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419913)))) (_2!7055 (get!4121 lt!419913))) lt!419737))))

(declare-fun b!1232496 () Bool)

(declare-fun res!552396 () Bool)

(assert (=> b!1232496 (=> (not res!552396) (not e!789555))))

(assert (=> b!1232496 (= res!552396 (= (value!70185 (_1!7055 (get!4121 lt!419913))) (apply!2691 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419913)))) (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!419913)))))))))

(declare-fun b!1232497 () Bool)

(declare-fun res!552398 () Bool)

(assert (=> b!1232497 (=> (not res!552398) (not e!789555))))

(assert (=> b!1232497 (= res!552398 (matchR!1546 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419913)))) (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419913))))))))

(declare-fun b!1232498 () Bool)

(declare-fun res!552395 () Bool)

(assert (=> b!1232498 (=> (not res!552395) (not e!789555))))

(assert (=> b!1232498 (= res!552395 (= (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419913)))) (originalCharacters!2715 (_1!7055 (get!4121 lt!419913)))))))

(declare-fun b!1232499 () Bool)

(declare-fun lt!419916 () Option!2525)

(declare-fun lt!419912 () Option!2525)

(assert (=> b!1232499 (= e!789554 (ite (and ((_ is None!2524) lt!419916) ((_ is None!2524) lt!419912)) None!2524 (ite ((_ is None!2524) lt!419912) lt!419916 (ite ((_ is None!2524) lt!419916) lt!419912 (ite (>= (size!9906 (_1!7055 (v!20681 lt!419916))) (size!9906 (_1!7055 (v!20681 lt!419912)))) lt!419916 lt!419912)))))))

(assert (=> b!1232499 (= lt!419916 call!85391)))

(assert (=> b!1232499 (= lt!419912 (maxPrefix!978 thiss!20528 (t!115498 rules!2728) lt!419737))))

(declare-fun b!1232500 () Bool)

(declare-fun res!552397 () Bool)

(assert (=> b!1232500 (=> (not res!552397) (not e!789555))))

(assert (=> b!1232500 (= res!552397 (< (size!9910 (_2!7055 (get!4121 lt!419913))) (size!9910 lt!419737)))))

(assert (= (and d!352835 c!206142) b!1232494))

(assert (= (and d!352835 (not c!206142)) b!1232499))

(assert (= (or b!1232494 b!1232499) bm!85386))

(assert (= (and d!352835 (not res!552393)) b!1232492))

(assert (= (and b!1232492 res!552399) b!1232498))

(assert (= (and b!1232498 res!552395) b!1232500))

(assert (= (and b!1232500 res!552397) b!1232495))

(assert (= (and b!1232495 res!552394) b!1232496))

(assert (= (and b!1232496 res!552396) b!1232497))

(assert (= (and b!1232497 res!552398) b!1232493))

(declare-fun m!1408145 () Bool)

(assert (=> b!1232498 m!1408145))

(declare-fun m!1408147 () Bool)

(assert (=> b!1232498 m!1408147))

(assert (=> b!1232498 m!1408147))

(declare-fun m!1408149 () Bool)

(assert (=> b!1232498 m!1408149))

(assert (=> b!1232500 m!1408145))

(declare-fun m!1408151 () Bool)

(assert (=> b!1232500 m!1408151))

(assert (=> b!1232500 m!1407791))

(assert (=> b!1232493 m!1408145))

(declare-fun m!1408153 () Bool)

(assert (=> b!1232493 m!1408153))

(assert (=> b!1232496 m!1408145))

(declare-fun m!1408155 () Bool)

(assert (=> b!1232496 m!1408155))

(assert (=> b!1232496 m!1408155))

(declare-fun m!1408157 () Bool)

(assert (=> b!1232496 m!1408157))

(declare-fun m!1408159 () Bool)

(assert (=> b!1232499 m!1408159))

(assert (=> b!1232497 m!1408145))

(assert (=> b!1232497 m!1408147))

(assert (=> b!1232497 m!1408147))

(assert (=> b!1232497 m!1408149))

(assert (=> b!1232497 m!1408149))

(declare-fun m!1408161 () Bool)

(assert (=> b!1232497 m!1408161))

(declare-fun m!1408163 () Bool)

(assert (=> bm!85386 m!1408163))

(declare-fun m!1408165 () Bool)

(assert (=> b!1232492 m!1408165))

(declare-fun m!1408167 () Bool)

(assert (=> d!352835 m!1408167))

(declare-fun m!1408169 () Bool)

(assert (=> d!352835 m!1408169))

(declare-fun m!1408171 () Bool)

(assert (=> d!352835 m!1408171))

(assert (=> d!352835 m!1407867))

(assert (=> b!1232495 m!1408145))

(assert (=> b!1232495 m!1408147))

(assert (=> b!1232495 m!1408147))

(assert (=> b!1232495 m!1408149))

(assert (=> b!1232495 m!1408149))

(declare-fun m!1408173 () Bool)

(assert (=> b!1232495 m!1408173))

(assert (=> d!352709 d!352835))

(declare-fun d!352837 () Bool)

(declare-fun lt!419917 () Int)

(assert (=> d!352837 (>= lt!419917 0)))

(declare-fun e!789557 () Int)

(assert (=> d!352837 (= lt!419917 e!789557)))

(declare-fun c!206143 () Bool)

(assert (=> d!352837 (= c!206143 ((_ is Nil!12529) (_2!7056 lt!419859)))))

(assert (=> d!352837 (= (size!9910 (_2!7056 lt!419859)) lt!419917)))

(declare-fun b!1232501 () Bool)

(assert (=> b!1232501 (= e!789557 0)))

(declare-fun b!1232502 () Bool)

(assert (=> b!1232502 (= e!789557 (+ 1 (size!9910 (t!115495 (_2!7056 lt!419859)))))))

(assert (= (and d!352837 c!206143) b!1232501))

(assert (= (and d!352837 (not c!206143)) b!1232502))

(declare-fun m!1408175 () Bool)

(assert (=> b!1232502 m!1408175))

(assert (=> b!1232275 d!352837))

(declare-fun d!352839 () Bool)

(declare-fun lt!419918 () Int)

(assert (=> d!352839 (>= lt!419918 0)))

(declare-fun e!789558 () Int)

(assert (=> d!352839 (= lt!419918 e!789558)))

(declare-fun c!206144 () Bool)

(assert (=> d!352839 (= c!206144 ((_ is Nil!12529) input!2346))))

(assert (=> d!352839 (= (size!9910 input!2346) lt!419918)))

(declare-fun b!1232503 () Bool)

(assert (=> b!1232503 (= e!789558 0)))

(declare-fun b!1232504 () Bool)

(assert (=> b!1232504 (= e!789558 (+ 1 (size!9910 (t!115495 input!2346))))))

(assert (= (and d!352839 c!206144) b!1232503))

(assert (= (and d!352839 (not c!206144)) b!1232504))

(declare-fun m!1408177 () Bool)

(assert (=> b!1232504 m!1408177))

(assert (=> b!1232275 d!352839))

(declare-fun d!352841 () Bool)

(declare-fun lt!419919 () Int)

(assert (=> d!352841 (>= lt!419919 0)))

(declare-fun e!789559 () Int)

(assert (=> d!352841 (= lt!419919 e!789559)))

(declare-fun c!206145 () Bool)

(assert (=> d!352841 (= c!206145 ((_ is Nil!12529) (_2!7056 lt!419828)))))

(assert (=> d!352841 (= (size!9910 (_2!7056 lt!419828)) lt!419919)))

(declare-fun b!1232505 () Bool)

(assert (=> b!1232505 (= e!789559 0)))

(declare-fun b!1232506 () Bool)

(assert (=> b!1232506 (= e!789559 (+ 1 (size!9910 (t!115495 (_2!7056 lt!419828)))))))

(assert (= (and d!352841 c!206145) b!1232505))

(assert (= (and d!352841 (not c!206145)) b!1232506))

(declare-fun m!1408179 () Bool)

(assert (=> b!1232506 m!1408179))

(assert (=> b!1232164 d!352841))

(declare-fun d!352843 () Bool)

(declare-fun lt!419920 () Int)

(assert (=> d!352843 (>= lt!419920 0)))

(declare-fun e!789560 () Int)

(assert (=> d!352843 (= lt!419920 e!789560)))

(declare-fun c!206146 () Bool)

(assert (=> d!352843 (= c!206146 ((_ is Nil!12529) (_2!7055 lt!419739)))))

(assert (=> d!352843 (= (size!9910 (_2!7055 lt!419739)) lt!419920)))

(declare-fun b!1232507 () Bool)

(assert (=> b!1232507 (= e!789560 0)))

(declare-fun b!1232508 () Bool)

(assert (=> b!1232508 (= e!789560 (+ 1 (size!9910 (t!115495 (_2!7055 lt!419739)))))))

(assert (= (and d!352843 c!206146) b!1232507))

(assert (= (and d!352843 (not c!206146)) b!1232508))

(declare-fun m!1408181 () Bool)

(assert (=> b!1232508 m!1408181))

(assert (=> b!1232164 d!352843))

(declare-fun d!352845 () Bool)

(assert (=> d!352845 (= (isEmpty!7494 lt!419850) (not ((_ is Some!2524) lt!419850)))))

(assert (=> d!352729 d!352845))

(declare-fun b!1232517 () Bool)

(declare-fun e!789567 () Bool)

(declare-fun e!789568 () Bool)

(assert (=> b!1232517 (= e!789567 e!789568)))

(declare-fun res!552410 () Bool)

(assert (=> b!1232517 (=> (not res!552410) (not e!789568))))

(assert (=> b!1232517 (= res!552410 (not ((_ is Nil!12529) input!2346)))))

(declare-fun b!1232518 () Bool)

(declare-fun res!552409 () Bool)

(assert (=> b!1232518 (=> (not res!552409) (not e!789568))))

(assert (=> b!1232518 (= res!552409 (= (head!2169 input!2346) (head!2169 input!2346)))))

(declare-fun b!1232520 () Bool)

(declare-fun e!789569 () Bool)

(assert (=> b!1232520 (= e!789569 (>= (size!9910 input!2346) (size!9910 input!2346)))))

(declare-fun d!352847 () Bool)

(assert (=> d!352847 e!789569))

(declare-fun res!552411 () Bool)

(assert (=> d!352847 (=> res!552411 e!789569)))

(declare-fun lt!419923 () Bool)

(assert (=> d!352847 (= res!552411 (not lt!419923))))

(assert (=> d!352847 (= lt!419923 e!789567)))

(declare-fun res!552408 () Bool)

(assert (=> d!352847 (=> res!552408 e!789567)))

(assert (=> d!352847 (= res!552408 ((_ is Nil!12529) input!2346))))

(assert (=> d!352847 (= (isPrefix!1048 input!2346 input!2346) lt!419923)))

(declare-fun b!1232519 () Bool)

(assert (=> b!1232519 (= e!789568 (isPrefix!1048 (tail!1801 input!2346) (tail!1801 input!2346)))))

(assert (= (and d!352847 (not res!552408)) b!1232517))

(assert (= (and b!1232517 res!552410) b!1232518))

(assert (= (and b!1232518 res!552409) b!1232519))

(assert (= (and d!352847 (not res!552411)) b!1232520))

(declare-fun m!1408183 () Bool)

(assert (=> b!1232518 m!1408183))

(assert (=> b!1232518 m!1408183))

(assert (=> b!1232520 m!1407845))

(assert (=> b!1232520 m!1407845))

(declare-fun m!1408185 () Bool)

(assert (=> b!1232519 m!1408185))

(assert (=> b!1232519 m!1408185))

(assert (=> b!1232519 m!1408185))

(assert (=> b!1232519 m!1408185))

(declare-fun m!1408187 () Bool)

(assert (=> b!1232519 m!1408187))

(assert (=> d!352729 d!352847))

(declare-fun d!352849 () Bool)

(assert (=> d!352849 (isPrefix!1048 input!2346 input!2346)))

(declare-fun lt!419926 () Unit!18812)

(declare-fun choose!7839 (List!12587 List!12587) Unit!18812)

(assert (=> d!352849 (= lt!419926 (choose!7839 input!2346 input!2346))))

(assert (=> d!352849 (= (lemmaIsPrefixRefl!741 input!2346 input!2346) lt!419926)))

(declare-fun bs!289594 () Bool)

(assert (= bs!289594 d!352849))

(assert (=> bs!289594 m!1407863))

(declare-fun m!1408189 () Bool)

(assert (=> bs!289594 m!1408189))

(assert (=> d!352729 d!352849))

(declare-fun bs!289595 () Bool)

(declare-fun d!352851 () Bool)

(assert (= bs!289595 (and d!352851 d!352823)))

(declare-fun lambda!49287 () Int)

(assert (=> bs!289595 (= lambda!49287 lambda!49284)))

(assert (=> d!352851 true))

(declare-fun lt!419929 () Bool)

(assert (=> d!352851 (= lt!419929 (forall!3193 rules!2728 lambda!49287))))

(declare-fun e!789574 () Bool)

(assert (=> d!352851 (= lt!419929 e!789574)))

(declare-fun res!552416 () Bool)

(assert (=> d!352851 (=> res!552416 e!789574)))

(assert (=> d!352851 (= res!552416 (not ((_ is Cons!12532) rules!2728)))))

(assert (=> d!352851 (= (rulesValidInductive!684 thiss!20528 rules!2728) lt!419929)))

(declare-fun b!1232525 () Bool)

(declare-fun e!789575 () Bool)

(assert (=> b!1232525 (= e!789574 e!789575)))

(declare-fun res!552417 () Bool)

(assert (=> b!1232525 (=> (not res!552417) (not e!789575))))

(declare-fun ruleValid!534 (LexerInterface!1856 Rule!4122) Bool)

(assert (=> b!1232525 (= res!552417 (ruleValid!534 thiss!20528 (h!17933 rules!2728)))))

(declare-fun b!1232526 () Bool)

(assert (=> b!1232526 (= e!789575 (rulesValidInductive!684 thiss!20528 (t!115498 rules!2728)))))

(assert (= (and d!352851 (not res!552416)) b!1232525))

(assert (= (and b!1232525 res!552417) b!1232526))

(declare-fun m!1408191 () Bool)

(assert (=> d!352851 m!1408191))

(declare-fun m!1408193 () Bool)

(assert (=> b!1232525 m!1408193))

(assert (=> b!1232526 m!1407997))

(assert (=> d!352729 d!352851))

(assert (=> d!352673 d!352669))

(assert (=> d!352673 d!352667))

(declare-fun d!352853 () Bool)

(assert (=> d!352853 (rulesProduceEachTokenIndividually!776 thiss!20528 rules!2728 (seqFromList!1571 (t!115497 tokens!556)))))

(assert (=> d!352853 true))

(declare-fun _$41!377 () Unit!18812)

(assert (=> d!352853 (= (choose!7835 thiss!20528 rules!2728 (_2!7055 lt!419739) (t!115497 tokens!556)) _$41!377)))

(declare-fun bs!289601 () Bool)

(assert (= bs!289601 d!352853))

(assert (=> bs!289601 m!1407501))

(assert (=> bs!289601 m!1407501))

(assert (=> bs!289601 m!1407503))

(assert (=> d!352673 d!352853))

(assert (=> d!352673 d!352697))

(declare-fun d!352893 () Bool)

(assert (=> d!352893 (= (isDefined!2161 lt!419850) (not (isEmpty!7494 lt!419850)))))

(declare-fun bs!289602 () Bool)

(assert (= bs!289602 d!352893))

(assert (=> bs!289602 m!1407861))

(assert (=> b!1232223 d!352893))

(declare-fun d!352895 () Bool)

(declare-fun e!789611 () Bool)

(assert (=> d!352895 e!789611))

(declare-fun res!552445 () Bool)

(assert (=> d!352895 (=> (not res!552445) (not e!789611))))

(declare-fun lt!419955 () BalanceConc!8142)

(assert (=> d!352895 (= res!552445 (= (list!4648 lt!419955) tokens!556))))

(declare-fun fromList!329 (List!12589) Conc!4105)

(assert (=> d!352895 (= lt!419955 (BalanceConc!8143 (fromList!329 tokens!556)))))

(assert (=> d!352895 (= (fromListB!693 tokens!556) lt!419955)))

(declare-fun b!1232576 () Bool)

(assert (=> b!1232576 (= e!789611 (isBalanced!1194 (fromList!329 tokens!556)))))

(assert (= (and d!352895 res!552445) b!1232576))

(declare-fun m!1408255 () Bool)

(assert (=> d!352895 m!1408255))

(declare-fun m!1408257 () Bool)

(assert (=> d!352895 m!1408257))

(assert (=> b!1232576 m!1408257))

(assert (=> b!1232576 m!1408257))

(declare-fun m!1408259 () Bool)

(assert (=> b!1232576 m!1408259))

(assert (=> d!352665 d!352895))

(declare-fun d!352897 () Bool)

(declare-fun c!206163 () Bool)

(assert (=> d!352897 (= c!206163 ((_ is Empty!4104) (c!206044 lt!419744)))))

(declare-fun e!789616 () List!12587)

(assert (=> d!352897 (= (list!4649 (c!206044 lt!419744)) e!789616)))

(declare-fun b!1232587 () Bool)

(declare-fun e!789617 () List!12587)

(declare-fun list!4653 (IArray!8213) List!12587)

(assert (=> b!1232587 (= e!789617 (list!4653 (xs!6815 (c!206044 lt!419744))))))

(declare-fun b!1232588 () Bool)

(assert (=> b!1232588 (= e!789617 (++!3205 (list!4649 (left!10784 (c!206044 lt!419744))) (list!4649 (right!11114 (c!206044 lt!419744)))))))

(declare-fun b!1232586 () Bool)

(assert (=> b!1232586 (= e!789616 e!789617)))

(declare-fun c!206164 () Bool)

(assert (=> b!1232586 (= c!206164 ((_ is Leaf!6333) (c!206044 lt!419744)))))

(declare-fun b!1232585 () Bool)

(assert (=> b!1232585 (= e!789616 Nil!12529)))

(assert (= (and d!352897 c!206163) b!1232585))

(assert (= (and d!352897 (not c!206163)) b!1232586))

(assert (= (and b!1232586 c!206164) b!1232587))

(assert (= (and b!1232586 (not c!206164)) b!1232588))

(declare-fun m!1408261 () Bool)

(assert (=> b!1232587 m!1408261))

(declare-fun m!1408263 () Bool)

(assert (=> b!1232588 m!1408263))

(declare-fun m!1408265 () Bool)

(assert (=> b!1232588 m!1408265))

(assert (=> b!1232588 m!1408263))

(assert (=> b!1232588 m!1408265))

(declare-fun m!1408267 () Bool)

(assert (=> b!1232588 m!1408267))

(assert (=> d!352683 d!352897))

(declare-fun d!352899 () Bool)

(assert (=> d!352899 (= (isEmpty!7494 lt!419738) (not ((_ is Some!2524) lt!419738)))))

(assert (=> d!352727 d!352899))

(declare-fun d!352901 () Bool)

(assert (=> d!352901 true))

(declare-fun lambda!49290 () Int)

(declare-fun order!7613 () Int)

(declare-fun dynLambda!5483 (Int Int) Int)

(assert (=> d!352901 (< (dynLambda!5476 order!7603 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) (dynLambda!5483 order!7613 lambda!49290))))

(assert (=> d!352901 true))

(assert (=> d!352901 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) (dynLambda!5483 order!7613 lambda!49290))))

(declare-fun Forall!461 (Int) Bool)

(assert (=> d!352901 (= (semiInverseModEq!798 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) (Forall!461 lambda!49290))))

(declare-fun bs!289603 () Bool)

(assert (= bs!289603 d!352901))

(declare-fun m!1408269 () Bool)

(assert (=> bs!289603 m!1408269))

(assert (=> d!352693 d!352901))

(declare-fun d!352903 () Bool)

(assert (=> d!352903 (= (list!4646 lt!419838) (list!4649 (c!206044 lt!419838)))))

(declare-fun bs!289604 () Bool)

(assert (= bs!289604 d!352903))

(declare-fun m!1408271 () Bool)

(assert (=> bs!289604 m!1408271))

(assert (=> d!352719 d!352903))

(declare-fun d!352905 () Bool)

(declare-fun lt!419956 () Int)

(assert (=> d!352905 (>= lt!419956 0)))

(declare-fun e!789618 () Int)

(assert (=> d!352905 (= lt!419956 e!789618)))

(declare-fun c!206165 () Bool)

(assert (=> d!352905 (= c!206165 ((_ is Nil!12531) (_1!7056 lt!419828)))))

(assert (=> d!352905 (= (size!9911 (_1!7056 lt!419828)) lt!419956)))

(declare-fun b!1232593 () Bool)

(assert (=> b!1232593 (= e!789618 0)))

(declare-fun b!1232594 () Bool)

(assert (=> b!1232594 (= e!789618 (+ 1 (size!9911 (t!115497 (_1!7056 lt!419828)))))))

(assert (= (and d!352905 c!206165) b!1232593))

(assert (= (and d!352905 (not c!206165)) b!1232594))

(declare-fun m!1408273 () Bool)

(assert (=> b!1232594 m!1408273))

(assert (=> d!352705 d!352905))

(declare-fun d!352907 () Bool)

(declare-fun e!789621 () Bool)

(assert (=> d!352907 e!789621))

(declare-fun res!552446 () Bool)

(assert (=> d!352907 (=> res!552446 e!789621)))

(declare-fun lt!419958 () Option!2525)

(assert (=> d!352907 (= res!552446 (isEmpty!7494 lt!419958))))

(declare-fun e!789619 () Option!2525)

(assert (=> d!352907 (= lt!419958 e!789619)))

(declare-fun c!206166 () Bool)

(assert (=> d!352907 (= c!206166 (and ((_ is Cons!12532) rules!2728) ((_ is Nil!12532) (t!115498 rules!2728))))))

(declare-fun lt!419960 () Unit!18812)

(declare-fun lt!419959 () Unit!18812)

(assert (=> d!352907 (= lt!419960 lt!419959)))

(assert (=> d!352907 (isPrefix!1048 (_2!7055 lt!419739) (_2!7055 lt!419739))))

(assert (=> d!352907 (= lt!419959 (lemmaIsPrefixRefl!741 (_2!7055 lt!419739) (_2!7055 lt!419739)))))

(assert (=> d!352907 (rulesValidInductive!684 thiss!20528 rules!2728)))

(assert (=> d!352907 (= (maxPrefix!978 thiss!20528 rules!2728 (_2!7055 lt!419739)) lt!419958)))

(declare-fun b!1232595 () Bool)

(declare-fun e!789620 () Bool)

(assert (=> b!1232595 (= e!789621 e!789620)))

(declare-fun res!552452 () Bool)

(assert (=> b!1232595 (=> (not res!552452) (not e!789620))))

(assert (=> b!1232595 (= res!552452 (isDefined!2161 lt!419958))))

(declare-fun call!85392 () Option!2525)

(declare-fun bm!85387 () Bool)

(assert (=> bm!85387 (= call!85392 (maxPrefixOneRule!567 thiss!20528 (h!17933 rules!2728) (_2!7055 lt!419739)))))

(declare-fun b!1232596 () Bool)

(assert (=> b!1232596 (= e!789620 (contains!2107 rules!2728 (rule!3590 (_1!7055 (get!4121 lt!419958)))))))

(declare-fun b!1232597 () Bool)

(assert (=> b!1232597 (= e!789619 call!85392)))

(declare-fun b!1232598 () Bool)

(declare-fun res!552447 () Bool)

(assert (=> b!1232598 (=> (not res!552447) (not e!789620))))

(assert (=> b!1232598 (= res!552447 (= (++!3205 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419958)))) (_2!7055 (get!4121 lt!419958))) (_2!7055 lt!419739)))))

(declare-fun b!1232599 () Bool)

(declare-fun res!552449 () Bool)

(assert (=> b!1232599 (=> (not res!552449) (not e!789620))))

(assert (=> b!1232599 (= res!552449 (= (value!70185 (_1!7055 (get!4121 lt!419958))) (apply!2691 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419958)))) (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!419958)))))))))

(declare-fun b!1232600 () Bool)

(declare-fun res!552451 () Bool)

(assert (=> b!1232600 (=> (not res!552451) (not e!789620))))

(assert (=> b!1232600 (= res!552451 (matchR!1546 (regex!2161 (rule!3590 (_1!7055 (get!4121 lt!419958)))) (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419958))))))))

(declare-fun b!1232601 () Bool)

(declare-fun res!552448 () Bool)

(assert (=> b!1232601 (=> (not res!552448) (not e!789620))))

(assert (=> b!1232601 (= res!552448 (= (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!419958)))) (originalCharacters!2715 (_1!7055 (get!4121 lt!419958)))))))

(declare-fun b!1232602 () Bool)

(declare-fun lt!419961 () Option!2525)

(declare-fun lt!419957 () Option!2525)

(assert (=> b!1232602 (= e!789619 (ite (and ((_ is None!2524) lt!419961) ((_ is None!2524) lt!419957)) None!2524 (ite ((_ is None!2524) lt!419957) lt!419961 (ite ((_ is None!2524) lt!419961) lt!419957 (ite (>= (size!9906 (_1!7055 (v!20681 lt!419961))) (size!9906 (_1!7055 (v!20681 lt!419957)))) lt!419961 lt!419957)))))))

(assert (=> b!1232602 (= lt!419961 call!85392)))

(assert (=> b!1232602 (= lt!419957 (maxPrefix!978 thiss!20528 (t!115498 rules!2728) (_2!7055 lt!419739)))))

(declare-fun b!1232603 () Bool)

(declare-fun res!552450 () Bool)

(assert (=> b!1232603 (=> (not res!552450) (not e!789620))))

(assert (=> b!1232603 (= res!552450 (< (size!9910 (_2!7055 (get!4121 lt!419958))) (size!9910 (_2!7055 lt!419739))))))

(assert (= (and d!352907 c!206166) b!1232597))

(assert (= (and d!352907 (not c!206166)) b!1232602))

(assert (= (or b!1232597 b!1232602) bm!85387))

(assert (= (and d!352907 (not res!552446)) b!1232595))

(assert (= (and b!1232595 res!552452) b!1232601))

(assert (= (and b!1232601 res!552448) b!1232603))

(assert (= (and b!1232603 res!552450) b!1232598))

(assert (= (and b!1232598 res!552447) b!1232599))

(assert (= (and b!1232599 res!552449) b!1232600))

(assert (= (and b!1232600 res!552451) b!1232596))

(declare-fun m!1408275 () Bool)

(assert (=> b!1232601 m!1408275))

(declare-fun m!1408277 () Bool)

(assert (=> b!1232601 m!1408277))

(assert (=> b!1232601 m!1408277))

(declare-fun m!1408279 () Bool)

(assert (=> b!1232601 m!1408279))

(assert (=> b!1232603 m!1408275))

(declare-fun m!1408281 () Bool)

(assert (=> b!1232603 m!1408281))

(assert (=> b!1232603 m!1407779))

(assert (=> b!1232596 m!1408275))

(declare-fun m!1408283 () Bool)

(assert (=> b!1232596 m!1408283))

(assert (=> b!1232599 m!1408275))

(declare-fun m!1408285 () Bool)

(assert (=> b!1232599 m!1408285))

(assert (=> b!1232599 m!1408285))

(declare-fun m!1408287 () Bool)

(assert (=> b!1232599 m!1408287))

(declare-fun m!1408289 () Bool)

(assert (=> b!1232602 m!1408289))

(assert (=> b!1232600 m!1408275))

(assert (=> b!1232600 m!1408277))

(assert (=> b!1232600 m!1408277))

(assert (=> b!1232600 m!1408279))

(assert (=> b!1232600 m!1408279))

(declare-fun m!1408291 () Bool)

(assert (=> b!1232600 m!1408291))

(declare-fun m!1408293 () Bool)

(assert (=> bm!85387 m!1408293))

(declare-fun m!1408295 () Bool)

(assert (=> b!1232595 m!1408295))

(declare-fun m!1408297 () Bool)

(assert (=> d!352907 m!1408297))

(declare-fun m!1408299 () Bool)

(assert (=> d!352907 m!1408299))

(declare-fun m!1408301 () Bool)

(assert (=> d!352907 m!1408301))

(assert (=> d!352907 m!1407867))

(assert (=> b!1232598 m!1408275))

(assert (=> b!1232598 m!1408277))

(assert (=> b!1232598 m!1408277))

(assert (=> b!1232598 m!1408279))

(assert (=> b!1232598 m!1408279))

(declare-fun m!1408303 () Bool)

(assert (=> b!1232598 m!1408303))

(assert (=> d!352705 d!352907))

(declare-fun d!352909 () Bool)

(declare-fun c!206169 () Bool)

(assert (=> d!352909 (= c!206169 ((_ is Nil!12529) lt!419834))))

(declare-fun e!789624 () (InoxSet C!7180))

(assert (=> d!352909 (= (content!1794 lt!419834) e!789624)))

(declare-fun b!1232608 () Bool)

(assert (=> b!1232608 (= e!789624 ((as const (Array C!7180 Bool)) false))))

(declare-fun b!1232609 () Bool)

(assert (=> b!1232609 (= e!789624 ((_ map or) (store ((as const (Array C!7180 Bool)) false) (h!17930 lt!419834) true) (content!1794 (t!115495 lt!419834))))))

(assert (= (and d!352909 c!206169) b!1232608))

(assert (= (and d!352909 (not c!206169)) b!1232609))

(declare-fun m!1408305 () Bool)

(assert (=> b!1232609 m!1408305))

(declare-fun m!1408307 () Bool)

(assert (=> b!1232609 m!1408307))

(assert (=> d!352715 d!352909))

(declare-fun d!352911 () Bool)

(declare-fun c!206170 () Bool)

(assert (=> d!352911 (= c!206170 ((_ is Nil!12529) lt!419737))))

(declare-fun e!789625 () (InoxSet C!7180))

(assert (=> d!352911 (= (content!1794 lt!419737) e!789625)))

(declare-fun b!1232610 () Bool)

(assert (=> b!1232610 (= e!789625 ((as const (Array C!7180 Bool)) false))))

(declare-fun b!1232611 () Bool)

(assert (=> b!1232611 (= e!789625 ((_ map or) (store ((as const (Array C!7180 Bool)) false) (h!17930 lt!419737) true) (content!1794 (t!115495 lt!419737))))))

(assert (= (and d!352911 c!206170) b!1232610))

(assert (= (and d!352911 (not c!206170)) b!1232611))

(declare-fun m!1408309 () Bool)

(assert (=> b!1232611 m!1408309))

(assert (=> b!1232611 m!1407967))

(assert (=> d!352715 d!352911))

(declare-fun d!352913 () Bool)

(declare-fun c!206171 () Bool)

(assert (=> d!352913 (= c!206171 ((_ is Nil!12529) (_2!7055 lt!419739)))))

(declare-fun e!789626 () (InoxSet C!7180))

(assert (=> d!352913 (= (content!1794 (_2!7055 lt!419739)) e!789626)))

(declare-fun b!1232612 () Bool)

(assert (=> b!1232612 (= e!789626 ((as const (Array C!7180 Bool)) false))))

(declare-fun b!1232613 () Bool)

(assert (=> b!1232613 (= e!789626 ((_ map or) (store ((as const (Array C!7180 Bool)) false) (h!17930 (_2!7055 lt!419739)) true) (content!1794 (t!115495 (_2!7055 lt!419739)))))))

(assert (= (and d!352913 c!206171) b!1232612))

(assert (= (and d!352913 (not c!206171)) b!1232613))

(declare-fun m!1408311 () Bool)

(assert (=> b!1232613 m!1408311))

(declare-fun m!1408313 () Bool)

(assert (=> b!1232613 m!1408313))

(assert (=> d!352715 d!352913))

(declare-fun d!352915 () Bool)

(declare-fun res!552453 () Bool)

(declare-fun e!789627 () Bool)

(assert (=> d!352915 (=> res!552453 e!789627)))

(assert (=> d!352915 (= res!552453 ((_ is Nil!12531) (list!4648 (seqFromList!1571 tokens!556))))))

(assert (=> d!352915 (= (forall!3188 (list!4648 (seqFromList!1571 tokens!556)) lambda!49269) e!789627)))

(declare-fun b!1232614 () Bool)

(declare-fun e!789628 () Bool)

(assert (=> b!1232614 (= e!789627 e!789628)))

(declare-fun res!552454 () Bool)

(assert (=> b!1232614 (=> (not res!552454) (not e!789628))))

(assert (=> b!1232614 (= res!552454 (dynLambda!5482 lambda!49269 (h!17932 (list!4648 (seqFromList!1571 tokens!556)))))))

(declare-fun b!1232615 () Bool)

(assert (=> b!1232615 (= e!789628 (forall!3188 (t!115497 (list!4648 (seqFromList!1571 tokens!556))) lambda!49269))))

(assert (= (and d!352915 (not res!552453)) b!1232614))

(assert (= (and b!1232614 res!552454) b!1232615))

(declare-fun b_lambda!36469 () Bool)

(assert (=> (not b_lambda!36469) (not b!1232614)))

(declare-fun m!1408315 () Bool)

(assert (=> b!1232614 m!1408315))

(declare-fun m!1408317 () Bool)

(assert (=> b!1232615 m!1408317))

(assert (=> d!352627 d!352915))

(declare-fun d!352917 () Bool)

(assert (=> d!352917 (= (list!4648 (seqFromList!1571 tokens!556)) (list!4651 (c!206046 (seqFromList!1571 tokens!556))))))

(declare-fun bs!289605 () Bool)

(assert (= bs!289605 d!352917))

(declare-fun m!1408319 () Bool)

(assert (=> bs!289605 m!1408319))

(assert (=> d!352627 d!352917))

(declare-fun d!352919 () Bool)

(declare-fun lt!419962 () Bool)

(assert (=> d!352919 (= lt!419962 (forall!3188 (list!4648 (seqFromList!1571 tokens!556)) lambda!49269))))

(assert (=> d!352919 (= lt!419962 (forall!3192 (c!206046 (seqFromList!1571 tokens!556)) lambda!49269))))

(assert (=> d!352919 (= (forall!3189 (seqFromList!1571 tokens!556) lambda!49269) lt!419962)))

(declare-fun bs!289606 () Bool)

(assert (= bs!289606 d!352919))

(assert (=> bs!289606 m!1407505))

(assert (=> bs!289606 m!1407641))

(assert (=> bs!289606 m!1407641))

(assert (=> bs!289606 m!1407643))

(declare-fun m!1408321 () Bool)

(assert (=> bs!289606 m!1408321))

(assert (=> d!352627 d!352919))

(assert (=> d!352627 d!352697))

(declare-fun d!352921 () Bool)

(declare-fun lt!419963 () Int)

(assert (=> d!352921 (>= lt!419963 0)))

(declare-fun e!789629 () Int)

(assert (=> d!352921 (= lt!419963 e!789629)))

(declare-fun c!206172 () Bool)

(assert (=> d!352921 (= c!206172 ((_ is Nil!12529) lt!419834))))

(assert (=> d!352921 (= (size!9910 lt!419834) lt!419963)))

(declare-fun b!1232616 () Bool)

(assert (=> b!1232616 (= e!789629 0)))

(declare-fun b!1232617 () Bool)

(assert (=> b!1232617 (= e!789629 (+ 1 (size!9910 (t!115495 lt!419834))))))

(assert (= (and d!352921 c!206172) b!1232616))

(assert (= (and d!352921 (not c!206172)) b!1232617))

(declare-fun m!1408323 () Bool)

(assert (=> b!1232617 m!1408323))

(assert (=> b!1232184 d!352921))

(declare-fun d!352923 () Bool)

(declare-fun lt!419964 () Int)

(assert (=> d!352923 (>= lt!419964 0)))

(declare-fun e!789630 () Int)

(assert (=> d!352923 (= lt!419964 e!789630)))

(declare-fun c!206173 () Bool)

(assert (=> d!352923 (= c!206173 ((_ is Nil!12529) lt!419737))))

(assert (=> d!352923 (= (size!9910 lt!419737) lt!419964)))

(declare-fun b!1232618 () Bool)

(assert (=> b!1232618 (= e!789630 0)))

(declare-fun b!1232619 () Bool)

(assert (=> b!1232619 (= e!789630 (+ 1 (size!9910 (t!115495 lt!419737))))))

(assert (= (and d!352923 c!206173) b!1232618))

(assert (= (and d!352923 (not c!206173)) b!1232619))

(assert (=> b!1232619 m!1407963))

(assert (=> b!1232184 d!352923))

(assert (=> b!1232184 d!352843))

(declare-fun d!352925 () Bool)

(declare-fun nullableFct!239 (Regex!3431) Bool)

(assert (=> d!352925 (= (nullable!1070 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) (nullableFct!239 (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(declare-fun bs!289607 () Bool)

(assert (= bs!289607 d!352925))

(declare-fun m!1408325 () Bool)

(assert (=> bs!289607 m!1408325))

(assert (=> b!1232271 d!352925))

(declare-fun d!352927 () Bool)

(declare-fun lt!419965 () Int)

(assert (=> d!352927 (>= lt!419965 0)))

(declare-fun e!789631 () Int)

(assert (=> d!352927 (= lt!419965 e!789631)))

(declare-fun c!206174 () Bool)

(assert (=> d!352927 (= c!206174 ((_ is Nil!12529) (_2!7055 (get!4121 lt!419850))))))

(assert (=> d!352927 (= (size!9910 (_2!7055 (get!4121 lt!419850))) lt!419965)))

(declare-fun b!1232620 () Bool)

(assert (=> b!1232620 (= e!789631 0)))

(declare-fun b!1232621 () Bool)

(assert (=> b!1232621 (= e!789631 (+ 1 (size!9910 (t!115495 (_2!7055 (get!4121 lt!419850))))))))

(assert (= (and d!352927 c!206174) b!1232620))

(assert (= (and d!352927 (not c!206174)) b!1232621))

(declare-fun m!1408327 () Bool)

(assert (=> b!1232621 m!1408327))

(assert (=> b!1232231 d!352927))

(assert (=> b!1232231 d!352807))

(assert (=> b!1232231 d!352839))

(assert (=> b!1232229 d!352803))

(assert (=> b!1232229 d!352805))

(assert (=> b!1232229 d!352807))

(declare-fun b!1232622 () Bool)

(declare-fun res!552455 () Bool)

(declare-fun e!789632 () Bool)

(assert (=> b!1232622 (=> res!552455 e!789632)))

(assert (=> b!1232622 (= res!552455 (not ((_ is IntegerValue!6689) (value!70185 (h!17932 (t!115497 tokens!556))))))))

(declare-fun e!789634 () Bool)

(assert (=> b!1232622 (= e!789634 e!789632)))

(declare-fun d!352929 () Bool)

(declare-fun c!206175 () Bool)

(assert (=> d!352929 (= c!206175 ((_ is IntegerValue!6687) (value!70185 (h!17932 (t!115497 tokens!556)))))))

(declare-fun e!789633 () Bool)

(assert (=> d!352929 (= (inv!21 (value!70185 (h!17932 (t!115497 tokens!556)))) e!789633)))

(declare-fun b!1232623 () Bool)

(assert (=> b!1232623 (= e!789633 e!789634)))

(declare-fun c!206176 () Bool)

(assert (=> b!1232623 (= c!206176 ((_ is IntegerValue!6688) (value!70185 (h!17932 (t!115497 tokens!556)))))))

(declare-fun b!1232624 () Bool)

(assert (=> b!1232624 (= e!789633 (inv!16 (value!70185 (h!17932 (t!115497 tokens!556)))))))

(declare-fun b!1232625 () Bool)

(assert (=> b!1232625 (= e!789632 (inv!15 (value!70185 (h!17932 (t!115497 tokens!556)))))))

(declare-fun b!1232626 () Bool)

(assert (=> b!1232626 (= e!789634 (inv!17 (value!70185 (h!17932 (t!115497 tokens!556)))))))

(assert (= (and d!352929 c!206175) b!1232624))

(assert (= (and d!352929 (not c!206175)) b!1232623))

(assert (= (and b!1232623 c!206176) b!1232626))

(assert (= (and b!1232623 (not c!206176)) b!1232622))

(assert (= (and b!1232622 (not res!552455)) b!1232625))

(declare-fun m!1408329 () Bool)

(assert (=> b!1232624 m!1408329))

(declare-fun m!1408331 () Bool)

(assert (=> b!1232625 m!1408331))

(declare-fun m!1408333 () Bool)

(assert (=> b!1232626 m!1408333))

(assert (=> b!1232321 d!352929))

(declare-fun d!352931 () Bool)

(declare-fun c!206177 () Bool)

(assert (=> d!352931 (= c!206177 ((_ is Node!4104) (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739))))))))

(declare-fun e!789635 () Bool)

(assert (=> d!352931 (= (inv!16752 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739))))) e!789635)))

(declare-fun b!1232627 () Bool)

(assert (=> b!1232627 (= e!789635 (inv!16754 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739))))))))

(declare-fun b!1232628 () Bool)

(declare-fun e!789636 () Bool)

(assert (=> b!1232628 (= e!789635 e!789636)))

(declare-fun res!552456 () Bool)

(assert (=> b!1232628 (= res!552456 (not ((_ is Leaf!6333) (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739)))))))))

(assert (=> b!1232628 (=> res!552456 e!789636)))

(declare-fun b!1232629 () Bool)

(assert (=> b!1232629 (= e!789636 (inv!16755 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739))))))))

(assert (= (and d!352931 c!206177) b!1232627))

(assert (= (and d!352931 (not c!206177)) b!1232628))

(assert (= (and b!1232628 (not res!552456)) b!1232629))

(declare-fun m!1408335 () Bool)

(assert (=> b!1232627 m!1408335))

(declare-fun m!1408337 () Bool)

(assert (=> b!1232629 m!1408337))

(assert (=> b!1232186 d!352931))

(declare-fun d!352933 () Bool)

(declare-fun lt!419966 () Int)

(assert (=> d!352933 (>= lt!419966 0)))

(declare-fun e!789637 () Int)

(assert (=> d!352933 (= lt!419966 e!789637)))

(declare-fun c!206178 () Bool)

(assert (=> d!352933 (= c!206178 ((_ is Nil!12529) (_2!7056 lt!419831)))))

(assert (=> d!352933 (= (size!9910 (_2!7056 lt!419831)) lt!419966)))

(declare-fun b!1232630 () Bool)

(assert (=> b!1232630 (= e!789637 0)))

(declare-fun b!1232631 () Bool)

(assert (=> b!1232631 (= e!789637 (+ 1 (size!9910 (t!115495 (_2!7056 lt!419831)))))))

(assert (= (and d!352933 c!206178) b!1232630))

(assert (= (and d!352933 (not c!206178)) b!1232631))

(declare-fun m!1408339 () Bool)

(assert (=> b!1232631 m!1408339))

(assert (=> b!1232169 d!352933))

(assert (=> b!1232169 d!352923))

(assert (=> b!1232273 d!352777))

(assert (=> b!1232273 d!352779))

(declare-fun d!352935 () Bool)

(assert (=> d!352935 (= (isEmpty!7492 (_1!7056 lt!419828)) ((_ is Nil!12531) (_1!7056 lt!419828)))))

(assert (=> b!1232167 d!352935))

(declare-fun b!1232632 () Bool)

(declare-fun e!789640 () Bool)

(declare-fun lt!419969 () tuple2!12418)

(assert (=> b!1232632 (= e!789640 (= (_2!7056 lt!419969) (_2!7055 (v!20681 lt!419826))))))

(declare-fun b!1232633 () Bool)

(declare-fun e!789639 () Bool)

(assert (=> b!1232633 (= e!789640 e!789639)))

(declare-fun res!552457 () Bool)

(assert (=> b!1232633 (= res!552457 (< (size!9910 (_2!7056 lt!419969)) (size!9910 (_2!7055 (v!20681 lt!419826)))))))

(assert (=> b!1232633 (=> (not res!552457) (not e!789639))))

(declare-fun b!1232634 () Bool)

(declare-fun e!789638 () tuple2!12418)

(declare-fun lt!419967 () Option!2525)

(declare-fun lt!419968 () tuple2!12418)

(assert (=> b!1232634 (= e!789638 (tuple2!12419 (Cons!12531 (_1!7055 (v!20681 lt!419967)) (_1!7056 lt!419968)) (_2!7056 lt!419968)))))

(assert (=> b!1232634 (= lt!419968 (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419967))))))

(declare-fun b!1232635 () Bool)

(assert (=> b!1232635 (= e!789638 (tuple2!12419 Nil!12531 (_2!7055 (v!20681 lt!419826))))))

(declare-fun d!352937 () Bool)

(assert (=> d!352937 e!789640))

(declare-fun c!206180 () Bool)

(assert (=> d!352937 (= c!206180 (> (size!9911 (_1!7056 lt!419969)) 0))))

(assert (=> d!352937 (= lt!419969 e!789638)))

(declare-fun c!206179 () Bool)

(assert (=> d!352937 (= c!206179 ((_ is Some!2524) lt!419967))))

(assert (=> d!352937 (= lt!419967 (maxPrefix!978 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419826))))))

(assert (=> d!352937 (= (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419826))) lt!419969)))

(declare-fun b!1232636 () Bool)

(assert (=> b!1232636 (= e!789639 (not (isEmpty!7492 (_1!7056 lt!419969))))))

(assert (= (and d!352937 c!206179) b!1232634))

(assert (= (and d!352937 (not c!206179)) b!1232635))

(assert (= (and d!352937 c!206180) b!1232633))

(assert (= (and d!352937 (not c!206180)) b!1232632))

(assert (= (and b!1232633 res!552457) b!1232636))

(declare-fun m!1408341 () Bool)

(assert (=> b!1232633 m!1408341))

(declare-fun m!1408343 () Bool)

(assert (=> b!1232633 m!1408343))

(declare-fun m!1408345 () Bool)

(assert (=> b!1232634 m!1408345))

(declare-fun m!1408347 () Bool)

(assert (=> d!352937 m!1408347))

(declare-fun m!1408349 () Bool)

(assert (=> d!352937 m!1408349))

(declare-fun m!1408351 () Bool)

(assert (=> b!1232636 m!1408351))

(assert (=> b!1232165 d!352937))

(declare-fun d!352939 () Bool)

(assert (=> d!352939 (= (list!4646 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))) (list!4649 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))))))

(declare-fun bs!289608 () Bool)

(assert (= bs!289608 d!352939))

(declare-fun m!1408353 () Bool)

(assert (=> bs!289608 m!1408353))

(assert (=> b!1232068 d!352939))

(declare-fun d!352941 () Bool)

(declare-fun lt!419970 () Bool)

(assert (=> d!352941 (= lt!419970 (isEmpty!7491 (list!4646 (_2!7057 lt!419804))))))

(assert (=> d!352941 (= lt!419970 (isEmpty!7495 (c!206044 (_2!7057 lt!419804))))))

(assert (=> d!352941 (= (isEmpty!7490 (_2!7057 lt!419804)) lt!419970)))

(declare-fun bs!289609 () Bool)

(assert (= bs!289609 d!352941))

(declare-fun m!1408355 () Bool)

(assert (=> bs!289609 m!1408355))

(assert (=> bs!289609 m!1408355))

(declare-fun m!1408357 () Bool)

(assert (=> bs!289609 m!1408357))

(declare-fun m!1408359 () Bool)

(assert (=> bs!289609 m!1408359))

(assert (=> b!1232056 d!352941))

(declare-fun d!352943 () Bool)

(declare-fun charsToInt!0 (List!12588) (_ BitVec 32))

(assert (=> d!352943 (= (inv!16 (value!70185 (h!17932 tokens!556))) (= (charsToInt!0 (text!16050 (value!70185 (h!17932 tokens!556)))) (value!70176 (value!70185 (h!17932 tokens!556)))))))

(declare-fun bs!289610 () Bool)

(assert (= bs!289610 d!352943))

(declare-fun m!1408361 () Bool)

(assert (=> bs!289610 m!1408361))

(assert (=> b!1232202 d!352943))

(declare-fun d!352945 () Bool)

(assert (=> d!352945 (= (isEmpty!7491 (originalCharacters!2715 (h!17932 tokens!556))) ((_ is Nil!12529) (originalCharacters!2715 (h!17932 tokens!556))))))

(assert (=> d!352689 d!352945))

(declare-fun d!352947 () Bool)

(declare-fun c!206181 () Bool)

(assert (=> d!352947 (= c!206181 ((_ is Empty!4104) (c!206044 lt!419746)))))

(declare-fun e!789641 () List!12587)

(assert (=> d!352947 (= (list!4649 (c!206044 lt!419746)) e!789641)))

(declare-fun b!1232639 () Bool)

(declare-fun e!789642 () List!12587)

(assert (=> b!1232639 (= e!789642 (list!4653 (xs!6815 (c!206044 lt!419746))))))

(declare-fun b!1232640 () Bool)

(assert (=> b!1232640 (= e!789642 (++!3205 (list!4649 (left!10784 (c!206044 lt!419746))) (list!4649 (right!11114 (c!206044 lt!419746)))))))

(declare-fun b!1232638 () Bool)

(assert (=> b!1232638 (= e!789641 e!789642)))

(declare-fun c!206182 () Bool)

(assert (=> b!1232638 (= c!206182 ((_ is Leaf!6333) (c!206044 lt!419746)))))

(declare-fun b!1232637 () Bool)

(assert (=> b!1232637 (= e!789641 Nil!12529)))

(assert (= (and d!352947 c!206181) b!1232637))

(assert (= (and d!352947 (not c!206181)) b!1232638))

(assert (= (and b!1232638 c!206182) b!1232639))

(assert (= (and b!1232638 (not c!206182)) b!1232640))

(declare-fun m!1408363 () Bool)

(assert (=> b!1232639 m!1408363))

(declare-fun m!1408365 () Bool)

(assert (=> b!1232640 m!1408365))

(declare-fun m!1408367 () Bool)

(assert (=> b!1232640 m!1408367))

(assert (=> b!1232640 m!1408365))

(assert (=> b!1232640 m!1408367))

(declare-fun m!1408369 () Bool)

(assert (=> b!1232640 m!1408369))

(assert (=> d!352681 d!352947))

(declare-fun b!1232641 () Bool)

(declare-fun e!789648 () Bool)

(declare-fun e!789644 () Bool)

(assert (=> b!1232641 (= e!789648 e!789644)))

(declare-fun res!552465 () Bool)

(assert (=> b!1232641 (=> res!552465 e!789644)))

(declare-fun call!85393 () Bool)

(assert (=> b!1232641 (= res!552465 call!85393)))

(declare-fun bm!85388 () Bool)

(assert (=> bm!85388 (= call!85393 (isEmpty!7491 (tail!1801 lt!419741)))))

(declare-fun b!1232643 () Bool)

(declare-fun e!789645 () Bool)

(declare-fun lt!419971 () Bool)

(assert (=> b!1232643 (= e!789645 (not lt!419971))))

(declare-fun b!1232644 () Bool)

(declare-fun res!552464 () Bool)

(declare-fun e!789649 () Bool)

(assert (=> b!1232644 (=> res!552464 e!789649)))

(declare-fun e!789647 () Bool)

(assert (=> b!1232644 (= res!552464 e!789647)))

(declare-fun res!552462 () Bool)

(assert (=> b!1232644 (=> (not res!552462) (not e!789647))))

(assert (=> b!1232644 (= res!552462 lt!419971)))

(declare-fun b!1232645 () Bool)

(assert (=> b!1232645 (= e!789647 (= (head!2169 (tail!1801 lt!419741)) (c!206045 (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741)))))))

(declare-fun b!1232646 () Bool)

(declare-fun e!789643 () Bool)

(assert (=> b!1232646 (= e!789643 e!789645)))

(declare-fun c!206183 () Bool)

(assert (=> b!1232646 (= c!206183 ((_ is EmptyLang!3431) (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741))))))

(declare-fun b!1232647 () Bool)

(declare-fun res!552463 () Bool)

(assert (=> b!1232647 (=> (not res!552463) (not e!789647))))

(assert (=> b!1232647 (= res!552463 (not call!85393))))

(declare-fun b!1232648 () Bool)

(declare-fun res!552460 () Bool)

(assert (=> b!1232648 (=> res!552460 e!789649)))

(assert (=> b!1232648 (= res!552460 (not ((_ is ElementMatch!3431) (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741)))))))

(assert (=> b!1232648 (= e!789645 e!789649)))

(declare-fun b!1232649 () Bool)

(assert (=> b!1232649 (= e!789643 (= lt!419971 call!85393))))

(declare-fun b!1232650 () Bool)

(declare-fun e!789646 () Bool)

(assert (=> b!1232650 (= e!789646 (matchR!1546 (derivativeStep!863 (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741)) (head!2169 (tail!1801 lt!419741))) (tail!1801 (tail!1801 lt!419741))))))

(declare-fun b!1232651 () Bool)

(assert (=> b!1232651 (= e!789649 e!789648)))

(declare-fun res!552461 () Bool)

(assert (=> b!1232651 (=> (not res!552461) (not e!789648))))

(assert (=> b!1232651 (= res!552461 (not lt!419971))))

(declare-fun b!1232652 () Bool)

(assert (=> b!1232652 (= e!789646 (nullable!1070 (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741))))))

(declare-fun d!352949 () Bool)

(assert (=> d!352949 e!789643))

(declare-fun c!206184 () Bool)

(assert (=> d!352949 (= c!206184 ((_ is EmptyExpr!3431) (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741))))))

(assert (=> d!352949 (= lt!419971 e!789646)))

(declare-fun c!206185 () Bool)

(assert (=> d!352949 (= c!206185 (isEmpty!7491 (tail!1801 lt!419741)))))

(assert (=> d!352949 (validRegex!1467 (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741)))))

(assert (=> d!352949 (= (matchR!1546 (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741)) (tail!1801 lt!419741)) lt!419971)))

(declare-fun b!1232642 () Bool)

(assert (=> b!1232642 (= e!789644 (not (= (head!2169 (tail!1801 lt!419741)) (c!206045 (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741))))))))

(declare-fun b!1232653 () Bool)

(declare-fun res!552458 () Bool)

(assert (=> b!1232653 (=> (not res!552458) (not e!789647))))

(assert (=> b!1232653 (= res!552458 (isEmpty!7491 (tail!1801 (tail!1801 lt!419741))))))

(declare-fun b!1232654 () Bool)

(declare-fun res!552459 () Bool)

(assert (=> b!1232654 (=> res!552459 e!789644)))

(assert (=> b!1232654 (= res!552459 (not (isEmpty!7491 (tail!1801 (tail!1801 lt!419741)))))))

(assert (= (and d!352949 c!206185) b!1232652))

(assert (= (and d!352949 (not c!206185)) b!1232650))

(assert (= (and d!352949 c!206184) b!1232649))

(assert (= (and d!352949 (not c!206184)) b!1232646))

(assert (= (and b!1232646 c!206183) b!1232643))

(assert (= (and b!1232646 (not c!206183)) b!1232648))

(assert (= (and b!1232648 (not res!552460)) b!1232644))

(assert (= (and b!1232644 res!552462) b!1232647))

(assert (= (and b!1232647 res!552463) b!1232653))

(assert (= (and b!1232653 res!552458) b!1232645))

(assert (= (and b!1232644 (not res!552464)) b!1232651))

(assert (= (and b!1232651 res!552461) b!1232641))

(assert (= (and b!1232641 (not res!552465)) b!1232654))

(assert (= (and b!1232654 (not res!552459)) b!1232642))

(assert (= (or b!1232649 b!1232641 b!1232647) bm!85388))

(assert (=> d!352949 m!1407877))

(assert (=> d!352949 m!1407879))

(assert (=> d!352949 m!1407881))

(declare-fun m!1408371 () Bool)

(assert (=> d!352949 m!1408371))

(assert (=> b!1232645 m!1407877))

(declare-fun m!1408373 () Bool)

(assert (=> b!1232645 m!1408373))

(assert (=> b!1232653 m!1407877))

(declare-fun m!1408375 () Bool)

(assert (=> b!1232653 m!1408375))

(assert (=> b!1232653 m!1408375))

(declare-fun m!1408377 () Bool)

(assert (=> b!1232653 m!1408377))

(assert (=> b!1232642 m!1407877))

(assert (=> b!1232642 m!1408373))

(assert (=> b!1232650 m!1407877))

(assert (=> b!1232650 m!1408373))

(assert (=> b!1232650 m!1407881))

(assert (=> b!1232650 m!1408373))

(declare-fun m!1408379 () Bool)

(assert (=> b!1232650 m!1408379))

(assert (=> b!1232650 m!1407877))

(assert (=> b!1232650 m!1408375))

(assert (=> b!1232650 m!1408379))

(assert (=> b!1232650 m!1408375))

(declare-fun m!1408381 () Bool)

(assert (=> b!1232650 m!1408381))

(assert (=> bm!85388 m!1407877))

(assert (=> bm!85388 m!1407879))

(assert (=> b!1232654 m!1407877))

(assert (=> b!1232654 m!1408375))

(assert (=> b!1232654 m!1408375))

(assert (=> b!1232654 m!1408377))

(assert (=> b!1232652 m!1407881))

(declare-fun m!1408383 () Bool)

(assert (=> b!1232652 m!1408383))

(assert (=> b!1232269 d!352949))

(declare-fun b!1232675 () Bool)

(declare-fun e!789663 () Regex!3431)

(declare-fun call!85404 () Regex!3431)

(declare-fun call!85405 () Regex!3431)

(assert (=> b!1232675 (= e!789663 (Union!3431 call!85404 call!85405))))

(declare-fun c!206197 () Bool)

(declare-fun bm!85397 () Bool)

(declare-fun c!206199 () Bool)

(assert (=> bm!85397 (= call!85405 (derivativeStep!863 (ite c!206197 (regTwo!7375 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) (ite c!206199 (reg!3760 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) (regOne!7374 (regex!2161 (rule!3590 (_1!7055 lt!419739)))))) (head!2169 lt!419741)))))

(declare-fun b!1232676 () Bool)

(declare-fun e!789661 () Regex!3431)

(assert (=> b!1232676 (= e!789663 e!789661)))

(assert (=> b!1232676 (= c!206199 ((_ is Star!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(declare-fun b!1232677 () Bool)

(declare-fun e!789664 () Regex!3431)

(assert (=> b!1232677 (= e!789664 (ite (= (head!2169 lt!419741) (c!206045 (regex!2161 (rule!3590 (_1!7055 lt!419739))))) EmptyExpr!3431 EmptyLang!3431))))

(declare-fun b!1232678 () Bool)

(declare-fun call!85402 () Regex!3431)

(assert (=> b!1232678 (= e!789661 (Concat!5661 call!85402 (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(declare-fun b!1232679 () Bool)

(declare-fun e!789662 () Regex!3431)

(assert (=> b!1232679 (= e!789662 e!789664)))

(declare-fun c!206200 () Bool)

(assert (=> b!1232679 (= c!206200 ((_ is ElementMatch!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(declare-fun bm!85398 () Bool)

(assert (=> bm!85398 (= call!85402 call!85405)))

(declare-fun c!206196 () Bool)

(declare-fun bm!85399 () Bool)

(assert (=> bm!85399 (= call!85404 (derivativeStep!863 (ite c!206197 (regOne!7375 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) (ite c!206196 (regTwo!7374 (regex!2161 (rule!3590 (_1!7055 lt!419739)))) (regOne!7374 (regex!2161 (rule!3590 (_1!7055 lt!419739)))))) (head!2169 lt!419741)))))

(declare-fun call!85403 () Regex!3431)

(declare-fun b!1232680 () Bool)

(declare-fun e!789660 () Regex!3431)

(assert (=> b!1232680 (= e!789660 (Union!3431 (Concat!5661 call!85402 (regTwo!7374 (regex!2161 (rule!3590 (_1!7055 lt!419739))))) call!85403))))

(declare-fun b!1232682 () Bool)

(assert (=> b!1232682 (= e!789662 EmptyLang!3431)))

(declare-fun b!1232683 () Bool)

(assert (=> b!1232683 (= e!789660 (Union!3431 (Concat!5661 call!85403 (regTwo!7374 (regex!2161 (rule!3590 (_1!7055 lt!419739))))) EmptyLang!3431))))

(declare-fun b!1232684 () Bool)

(assert (=> b!1232684 (= c!206197 ((_ is Union!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))))))

(assert (=> b!1232684 (= e!789664 e!789663)))

(declare-fun bm!85400 () Bool)

(assert (=> bm!85400 (= call!85403 call!85404)))

(declare-fun b!1232681 () Bool)

(assert (=> b!1232681 (= c!206196 (nullable!1070 (regOne!7374 (regex!2161 (rule!3590 (_1!7055 lt!419739))))))))

(assert (=> b!1232681 (= e!789661 e!789660)))

(declare-fun d!352951 () Bool)

(declare-fun lt!419974 () Regex!3431)

(assert (=> d!352951 (validRegex!1467 lt!419974)))

(assert (=> d!352951 (= lt!419974 e!789662)))

(declare-fun c!206198 () Bool)

(assert (=> d!352951 (= c!206198 (or ((_ is EmptyExpr!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739)))) ((_ is EmptyLang!3431) (regex!2161 (rule!3590 (_1!7055 lt!419739))))))))

(assert (=> d!352951 (validRegex!1467 (regex!2161 (rule!3590 (_1!7055 lt!419739))))))

(assert (=> d!352951 (= (derivativeStep!863 (regex!2161 (rule!3590 (_1!7055 lt!419739))) (head!2169 lt!419741)) lt!419974)))

(assert (= (and d!352951 c!206198) b!1232682))

(assert (= (and d!352951 (not c!206198)) b!1232679))

(assert (= (and b!1232679 c!206200) b!1232677))

(assert (= (and b!1232679 (not c!206200)) b!1232684))

(assert (= (and b!1232684 c!206197) b!1232675))

(assert (= (and b!1232684 (not c!206197)) b!1232676))

(assert (= (and b!1232676 c!206199) b!1232678))

(assert (= (and b!1232676 (not c!206199)) b!1232681))

(assert (= (and b!1232681 c!206196) b!1232680))

(assert (= (and b!1232681 (not c!206196)) b!1232683))

(assert (= (or b!1232680 b!1232683) bm!85400))

(assert (= (or b!1232678 b!1232680) bm!85398))

(assert (= (or b!1232675 bm!85398) bm!85397))

(assert (= (or b!1232675 bm!85400) bm!85399))

(assert (=> bm!85397 m!1407875))

(declare-fun m!1408385 () Bool)

(assert (=> bm!85397 m!1408385))

(assert (=> bm!85399 m!1407875))

(declare-fun m!1408387 () Bool)

(assert (=> bm!85399 m!1408387))

(declare-fun m!1408389 () Bool)

(assert (=> b!1232681 m!1408389))

(declare-fun m!1408391 () Bool)

(assert (=> d!352951 m!1408391))

(assert (=> d!352951 m!1407873))

(assert (=> b!1232269 d!352951))

(assert (=> b!1232269 d!352809))

(assert (=> b!1232269 d!352779))

(declare-fun d!352953 () Bool)

(declare-fun charsToBigInt!1 (List!12588) Int)

(assert (=> d!352953 (= (inv!17 (value!70185 (h!17932 tokens!556))) (= (charsToBigInt!1 (text!16051 (value!70185 (h!17932 tokens!556)))) (value!70177 (value!70185 (h!17932 tokens!556)))))))

(declare-fun bs!289611 () Bool)

(assert (= bs!289611 d!352953))

(declare-fun m!1408393 () Bool)

(assert (=> bs!289611 m!1408393))

(assert (=> b!1232204 d!352953))

(declare-fun bs!289612 () Bool)

(declare-fun d!352955 () Bool)

(assert (= bs!289612 (and d!352955 d!352901)))

(declare-fun lambda!49291 () Int)

(assert (=> bs!289612 (= (and (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) (= (toValue!3302 (transformation!2161 (h!17933 rules!2728))) (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556)))))) (= lambda!49291 lambda!49290))))

(assert (=> d!352955 true))

(assert (=> d!352955 (< (dynLambda!5476 order!7603 (toChars!3161 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5483 order!7613 lambda!49291))))

(assert (=> d!352955 true))

(assert (=> d!352955 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5483 order!7613 lambda!49291))))

(assert (=> d!352955 (= (semiInverseModEq!798 (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toValue!3302 (transformation!2161 (h!17933 rules!2728)))) (Forall!461 lambda!49291))))

(declare-fun bs!289613 () Bool)

(assert (= bs!289613 d!352955))

(declare-fun m!1408395 () Bool)

(assert (=> bs!289613 m!1408395))

(assert (=> d!352713 d!352955))

(assert (=> b!1232227 d!352807))

(declare-fun d!352957 () Bool)

(declare-fun dynLambda!5485 (Int BalanceConc!8140) TokenValue!2229)

(assert (=> d!352957 (= (apply!2691 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))) (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!419850))))) (dynLambda!5485 (toValue!3302 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))) (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!419850))))))))

(declare-fun b_lambda!36471 () Bool)

(assert (=> (not b_lambda!36471) (not d!352957)))

(declare-fun tb!68993 () Bool)

(declare-fun t!115574 () Bool)

(assert (=> (and b!1231869 (= (toValue!3302 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toValue!3302 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115574) tb!68993))

(declare-fun result!83272 () Bool)

(assert (=> tb!68993 (= result!83272 (inv!21 (dynLambda!5485 (toValue!3302 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850))))) (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!419850)))))))))

(declare-fun m!1408397 () Bool)

(assert (=> tb!68993 m!1408397))

(assert (=> d!352957 t!115574))

(declare-fun b_and!84817 () Bool)

(assert (= b_and!84745 (and (=> t!115574 result!83272) b_and!84817)))

(declare-fun tb!68995 () Bool)

(declare-fun t!115576 () Bool)

(assert (=> (and b!1231874 (= (toValue!3302 (transformation!2161 (h!17933 rules!2728))) (toValue!3302 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115576) tb!68995))

(declare-fun result!83276 () Bool)

(assert (= result!83276 result!83272))

(assert (=> d!352957 t!115576))

(declare-fun b_and!84819 () Bool)

(assert (= b_and!84749 (and (=> t!115576 result!83276) b_and!84819)))

(declare-fun t!115578 () Bool)

(declare-fun tb!68997 () Bool)

(assert (=> (and b!1232308 (= (toValue!3302 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toValue!3302 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115578) tb!68997))

(declare-fun result!83278 () Bool)

(assert (= result!83278 result!83272))

(assert (=> d!352957 t!115578))

(declare-fun b_and!84821 () Bool)

(assert (= b_and!84785 (and (=> t!115578 result!83278) b_and!84821)))

(declare-fun t!115580 () Bool)

(declare-fun tb!68999 () Bool)

(assert (=> (and b!1232323 (= (toValue!3302 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toValue!3302 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115580) tb!68999))

(declare-fun result!83280 () Bool)

(assert (= result!83280 result!83272))

(assert (=> d!352957 t!115580))

(declare-fun b_and!84823 () Bool)

(assert (= b_and!84789 (and (=> t!115580 result!83280) b_and!84823)))

(assert (=> d!352957 m!1407849))

(declare-fun m!1408399 () Bool)

(assert (=> d!352957 m!1408399))

(assert (=> b!1232227 d!352957))

(declare-fun d!352959 () Bool)

(declare-fun fromListB!695 (List!12587) BalanceConc!8140)

(assert (=> d!352959 (= (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!419850)))) (fromListB!695 (originalCharacters!2715 (_1!7055 (get!4121 lt!419850)))))))

(declare-fun bs!289614 () Bool)

(assert (= bs!289614 d!352959))

(declare-fun m!1408401 () Bool)

(assert (=> bs!289614 m!1408401))

(assert (=> b!1232227 d!352959))

(declare-fun bs!289615 () Bool)

(declare-fun d!352961 () Bool)

(assert (= bs!289615 (and d!352961 d!352627)))

(declare-fun lambda!49292 () Int)

(assert (=> bs!289615 (= lambda!49292 lambda!49269)))

(declare-fun bs!289616 () Bool)

(assert (= bs!289616 (and d!352961 d!352669)))

(assert (=> bs!289616 (= lambda!49292 lambda!49273)))

(declare-fun bs!289617 () Bool)

(assert (= bs!289617 (and d!352961 d!352735)))

(assert (=> bs!289617 (= lambda!49292 lambda!49277)))

(declare-fun b!1232691 () Bool)

(declare-fun e!789672 () Bool)

(assert (=> b!1232691 (= e!789672 true)))

(declare-fun b!1232690 () Bool)

(declare-fun e!789671 () Bool)

(assert (=> b!1232690 (= e!789671 e!789672)))

(declare-fun b!1232689 () Bool)

(declare-fun e!789670 () Bool)

(assert (=> b!1232689 (= e!789670 e!789671)))

(assert (=> d!352961 e!789670))

(assert (= b!1232690 b!1232691))

(assert (= b!1232689 b!1232690))

(assert (= (and d!352961 ((_ is Cons!12532) rules!2728)) b!1232689))

(assert (=> b!1232691 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5475 order!7601 lambda!49292))))

(assert (=> b!1232691 (< (dynLambda!5476 order!7603 (toChars!3161 (transformation!2161 (h!17933 rules!2728)))) (dynLambda!5475 order!7601 lambda!49292))))

(assert (=> d!352961 true))

(declare-fun lt!419975 () Bool)

(assert (=> d!352961 (= lt!419975 (forall!3188 (list!4648 (seqFromList!1571 tokens!556)) lambda!49292))))

(declare-fun e!789668 () Bool)

(assert (=> d!352961 (= lt!419975 e!789668)))

(declare-fun res!552467 () Bool)

(assert (=> d!352961 (=> res!552467 e!789668)))

(assert (=> d!352961 (= res!552467 (not ((_ is Cons!12531) (list!4648 (seqFromList!1571 tokens!556)))))))

(assert (=> d!352961 (not (isEmpty!7486 rules!2728))))

(assert (=> d!352961 (= (rulesProduceEachTokenIndividuallyList!661 thiss!20528 rules!2728 (list!4648 (seqFromList!1571 tokens!556))) lt!419975)))

(declare-fun b!1232687 () Bool)

(declare-fun e!789669 () Bool)

(assert (=> b!1232687 (= e!789668 e!789669)))

(declare-fun res!552466 () Bool)

(assert (=> b!1232687 (=> (not res!552466) (not e!789669))))

(assert (=> b!1232687 (= res!552466 (rulesProduceIndividualToken!850 thiss!20528 rules!2728 (h!17932 (list!4648 (seqFromList!1571 tokens!556)))))))

(declare-fun b!1232688 () Bool)

(assert (=> b!1232688 (= e!789669 (rulesProduceEachTokenIndividuallyList!661 thiss!20528 rules!2728 (t!115497 (list!4648 (seqFromList!1571 tokens!556)))))))

(assert (= (and d!352961 (not res!552467)) b!1232687))

(assert (= (and b!1232687 res!552466) b!1232688))

(assert (=> d!352961 m!1407641))

(declare-fun m!1408403 () Bool)

(assert (=> d!352961 m!1408403))

(assert (=> d!352961 m!1407521))

(declare-fun m!1408405 () Bool)

(assert (=> b!1232687 m!1408405))

(declare-fun m!1408407 () Bool)

(assert (=> b!1232688 m!1408407))

(assert (=> b!1232011 d!352961))

(assert (=> b!1232011 d!352917))

(declare-fun b!1232696 () Bool)

(declare-fun e!789679 () Bool)

(declare-fun lt!419980 () tuple2!12418)

(assert (=> b!1232696 (= e!789679 (= (_2!7056 lt!419980) (_2!7055 (v!20681 lt!419857))))))

(declare-fun b!1232697 () Bool)

(declare-fun e!789678 () Bool)

(assert (=> b!1232697 (= e!789679 e!789678)))

(declare-fun res!552472 () Bool)

(assert (=> b!1232697 (= res!552472 (< (size!9910 (_2!7056 lt!419980)) (size!9910 (_2!7055 (v!20681 lt!419857)))))))

(assert (=> b!1232697 (=> (not res!552472) (not e!789678))))

(declare-fun b!1232698 () Bool)

(declare-fun e!789677 () tuple2!12418)

(declare-fun lt!419978 () Option!2525)

(declare-fun lt!419979 () tuple2!12418)

(assert (=> b!1232698 (= e!789677 (tuple2!12419 (Cons!12531 (_1!7055 (v!20681 lt!419978)) (_1!7056 lt!419979)) (_2!7056 lt!419979)))))

(assert (=> b!1232698 (= lt!419979 (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419978))))))

(declare-fun b!1232699 () Bool)

(assert (=> b!1232699 (= e!789677 (tuple2!12419 Nil!12531 (_2!7055 (v!20681 lt!419857))))))

(declare-fun d!352963 () Bool)

(assert (=> d!352963 e!789679))

(declare-fun c!206202 () Bool)

(assert (=> d!352963 (= c!206202 (> (size!9911 (_1!7056 lt!419980)) 0))))

(assert (=> d!352963 (= lt!419980 e!789677)))

(declare-fun c!206201 () Bool)

(assert (=> d!352963 (= c!206201 ((_ is Some!2524) lt!419978))))

(assert (=> d!352963 (= lt!419978 (maxPrefix!978 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419857))))))

(assert (=> d!352963 (= (lexList!486 thiss!20528 rules!2728 (_2!7055 (v!20681 lt!419857))) lt!419980)))

(declare-fun b!1232700 () Bool)

(assert (=> b!1232700 (= e!789678 (not (isEmpty!7492 (_1!7056 lt!419980))))))

(assert (= (and d!352963 c!206201) b!1232698))

(assert (= (and d!352963 (not c!206201)) b!1232699))

(assert (= (and d!352963 c!206202) b!1232697))

(assert (= (and d!352963 (not c!206202)) b!1232696))

(assert (= (and b!1232697 res!552472) b!1232700))

(declare-fun m!1408409 () Bool)

(assert (=> b!1232697 m!1408409))

(declare-fun m!1408411 () Bool)

(assert (=> b!1232697 m!1408411))

(declare-fun m!1408413 () Bool)

(assert (=> b!1232698 m!1408413))

(declare-fun m!1408415 () Bool)

(assert (=> d!352963 m!1408415))

(declare-fun m!1408417 () Bool)

(assert (=> d!352963 m!1408417))

(declare-fun m!1408419 () Bool)

(assert (=> b!1232700 m!1408419))

(assert (=> b!1232276 d!352963))

(assert (=> b!1232261 d!352809))

(assert (=> d!352685 d!352795))

(declare-fun d!352965 () Bool)

(declare-fun lt!419983 () Int)

(assert (=> d!352965 (= lt!419983 (size!9911 (list!4648 (_1!7057 lt!419804))))))

(declare-fun size!9915 (Conc!4105) Int)

(assert (=> d!352965 (= lt!419983 (size!9915 (c!206046 (_1!7057 lt!419804))))))

(assert (=> d!352965 (= (size!9909 (_1!7057 lt!419804)) lt!419983)))

(declare-fun bs!289618 () Bool)

(assert (= bs!289618 d!352965))

(assert (=> bs!289618 m!1408091))

(assert (=> bs!289618 m!1408091))

(declare-fun m!1408421 () Bool)

(assert (=> bs!289618 m!1408421))

(declare-fun m!1408423 () Bool)

(assert (=> bs!289618 m!1408423))

(assert (=> d!352685 d!352965))

(assert (=> d!352685 d!352797))

(declare-fun d!352967 () Bool)

(assert (=> d!352967 (= (list!4648 (singletonSeq!746 (h!17932 tokens!556))) (list!4651 (c!206046 (singletonSeq!746 (h!17932 tokens!556)))))))

(declare-fun bs!289619 () Bool)

(assert (= bs!289619 d!352967))

(declare-fun m!1408425 () Bool)

(assert (=> bs!289619 m!1408425))

(assert (=> d!352685 d!352967))

(declare-fun d!352969 () Bool)

(assert (=> d!352969 (= (list!4648 (_1!7057 (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556)))))) (list!4651 (c!206046 (_1!7057 (lex!761 thiss!20528 rules!2728 (print!698 thiss!20528 (singletonSeq!746 (h!17932 tokens!556))))))))))

(declare-fun bs!289620 () Bool)

(assert (= bs!289620 d!352969))

(declare-fun m!1408427 () Bool)

(assert (=> bs!289620 m!1408427))

(assert (=> d!352685 d!352969))

(assert (=> d!352685 d!352793))

(assert (=> d!352685 d!352697))

(declare-fun d!352971 () Bool)

(assert (=> d!352971 (= (list!4646 lt!419837) (list!4649 (c!206044 lt!419837)))))

(declare-fun bs!289621 () Bool)

(assert (= bs!289621 d!352971))

(declare-fun m!1408429 () Bool)

(assert (=> bs!289621 m!1408429))

(assert (=> d!352717 d!352971))

(declare-fun b!1232814 () Bool)

(declare-fun res!552532 () Bool)

(declare-fun e!789747 () Bool)

(assert (=> b!1232814 (=> (not res!552532) (not e!789747))))

(declare-fun lt!420026 () Option!2525)

(assert (=> b!1232814 (= res!552532 (= (rule!3590 (_1!7055 (get!4121 lt!420026))) (h!17933 rules!2728)))))

(declare-fun b!1232816 () Bool)

(declare-fun res!552531 () Bool)

(assert (=> b!1232816 (=> (not res!552531) (not e!789747))))

(assert (=> b!1232816 (= res!552531 (= (value!70185 (_1!7055 (get!4121 lt!420026))) (apply!2691 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!420026)))) (seqFromList!1573 (originalCharacters!2715 (_1!7055 (get!4121 lt!420026)))))))))

(declare-fun b!1232817 () Bool)

(declare-fun res!552530 () Bool)

(assert (=> b!1232817 (=> (not res!552530) (not e!789747))))

(assert (=> b!1232817 (= res!552530 (= (++!3205 (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!420026)))) (_2!7055 (get!4121 lt!420026))) input!2346))))

(declare-fun b!1232818 () Bool)

(declare-fun res!552535 () Bool)

(assert (=> b!1232818 (=> (not res!552535) (not e!789747))))

(assert (=> b!1232818 (= res!552535 (< (size!9910 (_2!7055 (get!4121 lt!420026))) (size!9910 input!2346)))))

(declare-fun b!1232819 () Bool)

(declare-fun e!789745 () Bool)

(declare-datatypes ((tuple2!12424 0))(
  ( (tuple2!12425 (_1!7059 List!12587) (_2!7059 List!12587)) )
))
(declare-fun findLongestMatchInner!264 (Regex!3431 List!12587 Int List!12587 List!12587 Int) tuple2!12424)

(assert (=> b!1232819 (= e!789745 (matchR!1546 (regex!2161 (h!17933 rules!2728)) (_1!7059 (findLongestMatchInner!264 (regex!2161 (h!17933 rules!2728)) Nil!12529 (size!9910 Nil!12529) input!2346 input!2346 (size!9910 input!2346)))))))

(declare-fun b!1232820 () Bool)

(assert (=> b!1232820 (= e!789747 (= (size!9906 (_1!7055 (get!4121 lt!420026))) (size!9910 (originalCharacters!2715 (_1!7055 (get!4121 lt!420026))))))))

(declare-fun d!352973 () Bool)

(declare-fun e!789746 () Bool)

(assert (=> d!352973 e!789746))

(declare-fun res!552536 () Bool)

(assert (=> d!352973 (=> res!552536 e!789746)))

(assert (=> d!352973 (= res!552536 (isEmpty!7494 lt!420026))))

(declare-fun e!789748 () Option!2525)

(assert (=> d!352973 (= lt!420026 e!789748)))

(declare-fun c!206224 () Bool)

(declare-fun lt!420023 () tuple2!12424)

(assert (=> d!352973 (= c!206224 (isEmpty!7491 (_1!7059 lt!420023)))))

(declare-fun findLongestMatch!220 (Regex!3431 List!12587) tuple2!12424)

(assert (=> d!352973 (= lt!420023 (findLongestMatch!220 (regex!2161 (h!17933 rules!2728)) input!2346))))

(assert (=> d!352973 (ruleValid!534 thiss!20528 (h!17933 rules!2728))))

(assert (=> d!352973 (= (maxPrefixOneRule!567 thiss!20528 (h!17933 rules!2728) input!2346) lt!420026)))

(declare-fun b!1232815 () Bool)

(assert (=> b!1232815 (= e!789746 e!789747)))

(declare-fun res!552534 () Bool)

(assert (=> b!1232815 (=> (not res!552534) (not e!789747))))

(assert (=> b!1232815 (= res!552534 (matchR!1546 (regex!2161 (h!17933 rules!2728)) (list!4646 (charsOf!1165 (_1!7055 (get!4121 lt!420026))))))))

(declare-fun b!1232821 () Bool)

(assert (=> b!1232821 (= e!789748 (Some!2524 (tuple2!12417 (Token!3985 (apply!2691 (transformation!2161 (h!17933 rules!2728)) (seqFromList!1573 (_1!7059 lt!420023))) (h!17933 rules!2728) (size!9913 (seqFromList!1573 (_1!7059 lt!420023))) (_1!7059 lt!420023)) (_2!7059 lt!420023))))))

(declare-fun lt!420025 () Unit!18812)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!248 (Regex!3431 List!12587) Unit!18812)

(assert (=> b!1232821 (= lt!420025 (longestMatchIsAcceptedByMatchOrIsEmpty!248 (regex!2161 (h!17933 rules!2728)) input!2346))))

(declare-fun res!552533 () Bool)

(assert (=> b!1232821 (= res!552533 (isEmpty!7491 (_1!7059 (findLongestMatchInner!264 (regex!2161 (h!17933 rules!2728)) Nil!12529 (size!9910 Nil!12529) input!2346 input!2346 (size!9910 input!2346)))))))

(assert (=> b!1232821 (=> res!552533 e!789745)))

(assert (=> b!1232821 e!789745))

(declare-fun lt!420022 () Unit!18812)

(assert (=> b!1232821 (= lt!420022 lt!420025)))

(declare-fun lt!420024 () Unit!18812)

(declare-fun lemmaSemiInverse!318 (TokenValueInjection!4154 BalanceConc!8140) Unit!18812)

(assert (=> b!1232821 (= lt!420024 (lemmaSemiInverse!318 (transformation!2161 (h!17933 rules!2728)) (seqFromList!1573 (_1!7059 lt!420023))))))

(declare-fun b!1232822 () Bool)

(assert (=> b!1232822 (= e!789748 None!2524)))

(assert (= (and d!352973 c!206224) b!1232822))

(assert (= (and d!352973 (not c!206224)) b!1232821))

(assert (= (and b!1232821 (not res!552533)) b!1232819))

(assert (= (and d!352973 (not res!552536)) b!1232815))

(assert (= (and b!1232815 res!552534) b!1232817))

(assert (= (and b!1232817 res!552530) b!1232818))

(assert (= (and b!1232818 res!552535) b!1232814))

(assert (= (and b!1232814 res!552532) b!1232816))

(assert (= (and b!1232816 res!552531) b!1232820))

(declare-fun m!1408567 () Bool)

(assert (=> b!1232817 m!1408567))

(declare-fun m!1408569 () Bool)

(assert (=> b!1232817 m!1408569))

(assert (=> b!1232817 m!1408569))

(declare-fun m!1408571 () Bool)

(assert (=> b!1232817 m!1408571))

(assert (=> b!1232817 m!1408571))

(declare-fun m!1408573 () Bool)

(assert (=> b!1232817 m!1408573))

(assert (=> b!1232820 m!1408567))

(declare-fun m!1408575 () Bool)

(assert (=> b!1232820 m!1408575))

(declare-fun m!1408577 () Bool)

(assert (=> b!1232821 m!1408577))

(declare-fun m!1408579 () Bool)

(assert (=> b!1232821 m!1408579))

(declare-fun m!1408581 () Bool)

(assert (=> b!1232821 m!1408581))

(assert (=> b!1232821 m!1408577))

(assert (=> b!1232821 m!1408577))

(declare-fun m!1408583 () Bool)

(assert (=> b!1232821 m!1408583))

(assert (=> b!1232821 m!1407845))

(declare-fun m!1408585 () Bool)

(assert (=> b!1232821 m!1408585))

(declare-fun m!1408587 () Bool)

(assert (=> b!1232821 m!1408587))

(assert (=> b!1232821 m!1407845))

(declare-fun m!1408589 () Bool)

(assert (=> b!1232821 m!1408589))

(assert (=> b!1232821 m!1408577))

(declare-fun m!1408591 () Bool)

(assert (=> b!1232821 m!1408591))

(assert (=> b!1232821 m!1408587))

(assert (=> b!1232818 m!1408567))

(declare-fun m!1408593 () Bool)

(assert (=> b!1232818 m!1408593))

(assert (=> b!1232818 m!1407845))

(assert (=> b!1232819 m!1408587))

(assert (=> b!1232819 m!1407845))

(assert (=> b!1232819 m!1408587))

(assert (=> b!1232819 m!1407845))

(assert (=> b!1232819 m!1408589))

(declare-fun m!1408595 () Bool)

(assert (=> b!1232819 m!1408595))

(assert (=> b!1232816 m!1408567))

(declare-fun m!1408597 () Bool)

(assert (=> b!1232816 m!1408597))

(assert (=> b!1232816 m!1408597))

(declare-fun m!1408599 () Bool)

(assert (=> b!1232816 m!1408599))

(declare-fun m!1408601 () Bool)

(assert (=> d!352973 m!1408601))

(declare-fun m!1408603 () Bool)

(assert (=> d!352973 m!1408603))

(declare-fun m!1408605 () Bool)

(assert (=> d!352973 m!1408605))

(assert (=> d!352973 m!1408193))

(assert (=> b!1232814 m!1408567))

(assert (=> b!1232815 m!1408567))

(assert (=> b!1232815 m!1408569))

(assert (=> b!1232815 m!1408569))

(assert (=> b!1232815 m!1408571))

(assert (=> b!1232815 m!1408571))

(declare-fun m!1408607 () Bool)

(assert (=> b!1232815 m!1408607))

(assert (=> bm!85371 d!352973))

(declare-fun d!353031 () Bool)

(declare-fun e!789749 () Bool)

(assert (=> d!353031 e!789749))

(declare-fun res!552537 () Bool)

(assert (=> d!353031 (=> (not res!552537) (not e!789749))))

(declare-fun lt!420027 () BalanceConc!8142)

(assert (=> d!353031 (= res!552537 (= (list!4648 lt!420027) (t!115497 tokens!556)))))

(assert (=> d!353031 (= lt!420027 (BalanceConc!8143 (fromList!329 (t!115497 tokens!556))))))

(assert (=> d!353031 (= (fromListB!693 (t!115497 tokens!556)) lt!420027)))

(declare-fun b!1232823 () Bool)

(assert (=> b!1232823 (= e!789749 (isBalanced!1194 (fromList!329 (t!115497 tokens!556))))))

(assert (= (and d!353031 res!552537) b!1232823))

(declare-fun m!1408609 () Bool)

(assert (=> d!353031 m!1408609))

(declare-fun m!1408611 () Bool)

(assert (=> d!353031 m!1408611))

(assert (=> b!1232823 m!1408611))

(assert (=> b!1232823 m!1408611))

(declare-fun m!1408613 () Bool)

(assert (=> b!1232823 m!1408613))

(assert (=> d!352667 d!353031))

(declare-fun d!353033 () Bool)

(assert (=> d!353033 (= (isEmpty!7492 (_1!7056 lt!419859)) ((_ is Nil!12531) (_1!7056 lt!419859)))))

(assert (=> b!1232278 d!353033))

(declare-fun b!1232826 () Bool)

(declare-fun e!789752 () Bool)

(assert (=> b!1232826 (= e!789752 true)))

(declare-fun b!1232825 () Bool)

(declare-fun e!789751 () Bool)

(assert (=> b!1232825 (= e!789751 e!789752)))

(declare-fun b!1232824 () Bool)

(declare-fun e!789750 () Bool)

(assert (=> b!1232824 (= e!789750 e!789751)))

(assert (=> b!1232022 e!789750))

(assert (= b!1232825 b!1232826))

(assert (= b!1232824 b!1232825))

(assert (= (and b!1232022 ((_ is Cons!12532) (t!115498 rules!2728))) b!1232824))

(assert (=> b!1232826 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (h!17933 (t!115498 rules!2728))))) (dynLambda!5475 order!7601 lambda!49269))))

(assert (=> b!1232826 (< (dynLambda!5476 order!7603 (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728))))) (dynLambda!5475 order!7601 lambda!49269))))

(declare-fun b!1232827 () Bool)

(declare-fun e!789753 () Bool)

(declare-fun tp!351782 () Bool)

(assert (=> b!1232827 (= e!789753 (and tp_is_empty!6383 tp!351782))))

(assert (=> b!1232297 (= tp!351744 e!789753)))

(assert (= (and b!1232297 ((_ is Cons!12529) (t!115495 (t!115495 input!2346)))) b!1232827))

(declare-fun b!1232831 () Bool)

(declare-fun b_free!29697 () Bool)

(declare-fun b_next!30401 () Bool)

(assert (=> b!1232831 (= b_free!29697 (not b_next!30401))))

(declare-fun tb!69017 () Bool)

(declare-fun t!115600 () Bool)

(assert (=> (and b!1232831 (= (toValue!3302 (transformation!2161 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) (toValue!3302 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115600) tb!69017))

(declare-fun result!83300 () Bool)

(assert (= result!83300 result!83272))

(assert (=> d!352957 t!115600))

(declare-fun tp!351786 () Bool)

(declare-fun b_and!84841 () Bool)

(assert (=> b!1232831 (= tp!351786 (and (=> t!115600 result!83300) b_and!84841))))

(declare-fun b_free!29699 () Bool)

(declare-fun b_next!30403 () Bool)

(assert (=> b!1232831 (= b_free!29699 (not b_next!30403))))

(declare-fun t!115602 () Bool)

(declare-fun tb!69019 () Bool)

(assert (=> (and b!1232831 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739))))) t!115602) tb!69019))

(declare-fun result!83302 () Bool)

(assert (= result!83302 result!83228))

(assert (=> d!352719 t!115602))

(declare-fun t!115604 () Bool)

(declare-fun tb!69021 () Bool)

(assert (=> (and b!1232831 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) t!115604) tb!69021))

(declare-fun result!83304 () Bool)

(assert (= result!83304 result!83206))

(assert (=> d!352717 t!115604))

(declare-fun t!115606 () Bool)

(declare-fun tb!69023 () Bool)

(assert (=> (and b!1232831 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) t!115606) tb!69023))

(declare-fun result!83306 () Bool)

(assert (= result!83306 result!83264))

(assert (=> b!1232472 t!115606))

(declare-fun t!115608 () Bool)

(declare-fun tb!69025 () Bool)

(assert (=> (and b!1232831 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115608) tb!69025))

(declare-fun result!83308 () Bool)

(assert (= result!83308 result!83256))

(assert (=> d!352805 t!115608))

(assert (=> b!1232068 t!115604))

(declare-fun tp!351785 () Bool)

(declare-fun b_and!84843 () Bool)

(assert (=> b!1232831 (= tp!351785 (and (=> t!115604 result!83304) (=> t!115608 result!83308) (=> t!115602 result!83302) (=> t!115606 result!83306) b_and!84843))))

(declare-fun e!789754 () Bool)

(declare-fun tp!351784 () Bool)

(declare-fun e!789758 () Bool)

(declare-fun b!1232830 () Bool)

(assert (=> b!1232830 (= e!789758 (and tp!351784 (inv!16745 (tag!2423 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) (inv!16748 (transformation!2161 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) e!789754))))

(declare-fun e!789759 () Bool)

(declare-fun b!1232828 () Bool)

(declare-fun e!789756 () Bool)

(declare-fun tp!351783 () Bool)

(assert (=> b!1232828 (= e!789756 (and (inv!16749 (h!17932 (t!115497 (t!115497 tokens!556)))) e!789759 tp!351783))))

(assert (=> b!1232831 (= e!789754 (and tp!351786 tp!351785))))

(declare-fun b!1232829 () Bool)

(declare-fun tp!351787 () Bool)

(assert (=> b!1232829 (= e!789759 (and (inv!21 (value!70185 (h!17932 (t!115497 (t!115497 tokens!556))))) e!789758 tp!351787))))

(assert (=> b!1232320 (= tp!351768 e!789756)))

(assert (= b!1232830 b!1232831))

(assert (= b!1232829 b!1232830))

(assert (= b!1232828 b!1232829))

(assert (= (and b!1232320 ((_ is Cons!12531) (t!115497 (t!115497 tokens!556)))) b!1232828))

(declare-fun m!1408619 () Bool)

(assert (=> b!1232830 m!1408619))

(declare-fun m!1408623 () Bool)

(assert (=> b!1232830 m!1408623))

(declare-fun m!1408625 () Bool)

(assert (=> b!1232828 m!1408625))

(declare-fun m!1408627 () Bool)

(assert (=> b!1232829 m!1408627))

(declare-fun b!1232839 () Bool)

(declare-fun e!789763 () Bool)

(declare-fun tp!351791 () Bool)

(declare-fun tp!351788 () Bool)

(assert (=> b!1232839 (= e!789763 (and tp!351791 tp!351788))))

(declare-fun b!1232840 () Bool)

(declare-fun tp!351790 () Bool)

(assert (=> b!1232840 (= e!789763 tp!351790)))

(declare-fun b!1232838 () Bool)

(assert (=> b!1232838 (= e!789763 tp_is_empty!6383)))

(declare-fun b!1232841 () Bool)

(declare-fun tp!351792 () Bool)

(declare-fun tp!351789 () Bool)

(assert (=> b!1232841 (= e!789763 (and tp!351792 tp!351789))))

(assert (=> b!1232325 (= tp!351776 e!789763)))

(assert (= (and b!1232325 ((_ is ElementMatch!3431) (regOne!7374 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232838))

(assert (= (and b!1232325 ((_ is Concat!5661) (regOne!7374 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232839))

(assert (= (and b!1232325 ((_ is Star!3431) (regOne!7374 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232840))

(assert (= (and b!1232325 ((_ is Union!3431) (regOne!7374 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232841))

(declare-fun b!1232843 () Bool)

(declare-fun e!789766 () Bool)

(declare-fun tp!351796 () Bool)

(declare-fun tp!351793 () Bool)

(assert (=> b!1232843 (= e!789766 (and tp!351796 tp!351793))))

(declare-fun b!1232844 () Bool)

(declare-fun tp!351795 () Bool)

(assert (=> b!1232844 (= e!789766 tp!351795)))

(declare-fun b!1232842 () Bool)

(assert (=> b!1232842 (= e!789766 tp_is_empty!6383)))

(declare-fun b!1232845 () Bool)

(declare-fun tp!351797 () Bool)

(declare-fun tp!351794 () Bool)

(assert (=> b!1232845 (= e!789766 (and tp!351797 tp!351794))))

(assert (=> b!1232325 (= tp!351773 e!789766)))

(assert (= (and b!1232325 ((_ is ElementMatch!3431) (regTwo!7374 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232842))

(assert (= (and b!1232325 ((_ is Concat!5661) (regTwo!7374 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232843))

(assert (= (and b!1232325 ((_ is Star!3431) (regTwo!7374 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232844))

(assert (= (and b!1232325 ((_ is Union!3431) (regTwo!7374 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232845))

(declare-fun e!789772 () Bool)

(declare-fun tp!351806 () Bool)

(declare-fun tp!351804 () Bool)

(declare-fun b!1232863 () Bool)

(assert (=> b!1232863 (= e!789772 (and (inv!16752 (left!10784 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))))) tp!351806 (inv!16752 (right!11114 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))))) tp!351804))))

(declare-fun b!1232865 () Bool)

(declare-fun e!789773 () Bool)

(declare-fun tp!351805 () Bool)

(assert (=> b!1232865 (= e!789773 tp!351805)))

(declare-fun b!1232864 () Bool)

(declare-fun inv!16758 (IArray!8213) Bool)

(assert (=> b!1232864 (= e!789772 (and (inv!16758 (xs!6815 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))))) e!789773))))

(assert (=> b!1232074 (= tp!351674 (and (inv!16752 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556))))) e!789772))))

(assert (= (and b!1232074 ((_ is Node!4104) (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))))) b!1232863))

(assert (= b!1232864 b!1232865))

(assert (= (and b!1232074 ((_ is Leaf!6333) (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (value!70185 (h!17932 tokens!556)))))) b!1232864))

(declare-fun m!1408651 () Bool)

(assert (=> b!1232863 m!1408651))

(declare-fun m!1408655 () Bool)

(assert (=> b!1232863 m!1408655))

(declare-fun m!1408657 () Bool)

(assert (=> b!1232864 m!1408657))

(assert (=> b!1232074 m!1407707))

(declare-fun b!1232867 () Bool)

(declare-fun e!789774 () Bool)

(declare-fun tp!351810 () Bool)

(declare-fun tp!351807 () Bool)

(assert (=> b!1232867 (= e!789774 (and tp!351810 tp!351807))))

(declare-fun b!1232868 () Bool)

(declare-fun tp!351809 () Bool)

(assert (=> b!1232868 (= e!789774 tp!351809)))

(declare-fun b!1232866 () Bool)

(assert (=> b!1232866 (= e!789774 tp_is_empty!6383)))

(declare-fun b!1232869 () Bool)

(declare-fun tp!351811 () Bool)

(declare-fun tp!351808 () Bool)

(assert (=> b!1232869 (= e!789774 (and tp!351811 tp!351808))))

(assert (=> b!1232322 (= tp!351769 e!789774)))

(assert (= (and b!1232322 ((_ is ElementMatch!3431) (regex!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) b!1232866))

(assert (= (and b!1232322 ((_ is Concat!5661) (regex!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) b!1232867))

(assert (= (and b!1232322 ((_ is Star!3431) (regex!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) b!1232868))

(assert (= (and b!1232322 ((_ is Union!3431) (regex!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) b!1232869))

(declare-fun b!1232872 () Bool)

(declare-fun e!789777 () Bool)

(assert (=> b!1232872 (= e!789777 true)))

(declare-fun b!1232871 () Bool)

(declare-fun e!789776 () Bool)

(assert (=> b!1232871 (= e!789776 e!789777)))

(declare-fun b!1232870 () Bool)

(declare-fun e!789775 () Bool)

(assert (=> b!1232870 (= e!789775 e!789776)))

(assert (=> b!1232042 e!789775))

(assert (= b!1232871 b!1232872))

(assert (= b!1232870 b!1232871))

(assert (= (and b!1232042 ((_ is Cons!12532) (t!115498 rules!2728))) b!1232870))

(assert (=> b!1232872 (< (dynLambda!5474 order!7599 (toValue!3302 (transformation!2161 (h!17933 (t!115498 rules!2728))))) (dynLambda!5475 order!7601 lambda!49273))))

(assert (=> b!1232872 (< (dynLambda!5476 order!7603 (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728))))) (dynLambda!5475 order!7601 lambda!49273))))

(declare-fun b!1232874 () Bool)

(declare-fun e!789778 () Bool)

(declare-fun tp!351815 () Bool)

(declare-fun tp!351812 () Bool)

(assert (=> b!1232874 (= e!789778 (and tp!351815 tp!351812))))

(declare-fun b!1232875 () Bool)

(declare-fun tp!351814 () Bool)

(assert (=> b!1232875 (= e!789778 tp!351814)))

(declare-fun b!1232873 () Bool)

(assert (=> b!1232873 (= e!789778 tp_is_empty!6383)))

(declare-fun b!1232876 () Bool)

(declare-fun tp!351816 () Bool)

(declare-fun tp!351813 () Bool)

(assert (=> b!1232876 (= e!789778 (and tp!351816 tp!351813))))

(assert (=> b!1232327 (= tp!351777 e!789778)))

(assert (= (and b!1232327 ((_ is ElementMatch!3431) (regOne!7375 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232873))

(assert (= (and b!1232327 ((_ is Concat!5661) (regOne!7375 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232874))

(assert (= (and b!1232327 ((_ is Star!3431) (regOne!7375 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232875))

(assert (= (and b!1232327 ((_ is Union!3431) (regOne!7375 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232876))

(declare-fun b!1232878 () Bool)

(declare-fun e!789779 () Bool)

(declare-fun tp!351820 () Bool)

(declare-fun tp!351817 () Bool)

(assert (=> b!1232878 (= e!789779 (and tp!351820 tp!351817))))

(declare-fun b!1232879 () Bool)

(declare-fun tp!351819 () Bool)

(assert (=> b!1232879 (= e!789779 tp!351819)))

(declare-fun b!1232877 () Bool)

(assert (=> b!1232877 (= e!789779 tp_is_empty!6383)))

(declare-fun b!1232880 () Bool)

(declare-fun tp!351821 () Bool)

(declare-fun tp!351818 () Bool)

(assert (=> b!1232880 (= e!789779 (and tp!351821 tp!351818))))

(assert (=> b!1232327 (= tp!351774 e!789779)))

(assert (= (and b!1232327 ((_ is ElementMatch!3431) (regTwo!7375 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232877))

(assert (= (and b!1232327 ((_ is Concat!5661) (regTwo!7375 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232878))

(assert (= (and b!1232327 ((_ is Star!3431) (regTwo!7375 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232879))

(assert (= (and b!1232327 ((_ is Union!3431) (regTwo!7375 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232880))

(declare-fun b!1232881 () Bool)

(declare-fun e!789780 () Bool)

(declare-fun tp!351822 () Bool)

(assert (=> b!1232881 (= e!789780 (and tp_is_empty!6383 tp!351822))))

(assert (=> b!1232321 (= tp!351772 e!789780)))

(assert (= (and b!1232321 ((_ is Cons!12529) (originalCharacters!2715 (h!17932 (t!115497 tokens!556))))) b!1232881))

(declare-fun tp!351825 () Bool)

(declare-fun tp!351823 () Bool)

(declare-fun e!789781 () Bool)

(declare-fun b!1232882 () Bool)

(assert (=> b!1232882 (= e!789781 (and (inv!16752 (left!10784 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739)))))) tp!351825 (inv!16752 (right!11114 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739)))))) tp!351823))))

(declare-fun b!1232884 () Bool)

(declare-fun e!789782 () Bool)

(declare-fun tp!351824 () Bool)

(assert (=> b!1232884 (= e!789782 tp!351824)))

(declare-fun b!1232883 () Bool)

(assert (=> b!1232883 (= e!789781 (and (inv!16758 (xs!6815 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739)))))) e!789782))))

(assert (=> b!1232186 (= tp!351726 (and (inv!16752 (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739))))) e!789781))))

(assert (= (and b!1232186 ((_ is Node!4104) (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739)))))) b!1232882))

(assert (= b!1232883 b!1232884))

(assert (= (and b!1232186 ((_ is Leaf!6333) (c!206044 (dynLambda!5480 (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))) (value!70185 (_1!7055 lt!419739)))))) b!1232883))

(declare-fun m!1408673 () Bool)

(assert (=> b!1232882 m!1408673))

(declare-fun m!1408675 () Bool)

(assert (=> b!1232882 m!1408675))

(declare-fun m!1408677 () Bool)

(assert (=> b!1232883 m!1408677))

(assert (=> b!1232186 m!1407817))

(declare-fun b!1232886 () Bool)

(declare-fun e!789783 () Bool)

(declare-fun tp!351829 () Bool)

(declare-fun tp!351826 () Bool)

(assert (=> b!1232886 (= e!789783 (and tp!351829 tp!351826))))

(declare-fun b!1232887 () Bool)

(declare-fun tp!351828 () Bool)

(assert (=> b!1232887 (= e!789783 tp!351828)))

(declare-fun b!1232885 () Bool)

(assert (=> b!1232885 (= e!789783 tp_is_empty!6383)))

(declare-fun b!1232888 () Bool)

(declare-fun tp!351830 () Bool)

(declare-fun tp!351827 () Bool)

(assert (=> b!1232888 (= e!789783 (and tp!351830 tp!351827))))

(assert (=> b!1232326 (= tp!351775 e!789783)))

(assert (= (and b!1232326 ((_ is ElementMatch!3431) (reg!3760 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232885))

(assert (= (and b!1232326 ((_ is Concat!5661) (reg!3760 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232886))

(assert (= (and b!1232326 ((_ is Star!3431) (reg!3760 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232887))

(assert (= (and b!1232326 ((_ is Union!3431) (reg!3760 (regex!2161 (rule!3590 (h!17932 tokens!556)))))) b!1232888))

(declare-fun b!1232890 () Bool)

(declare-fun e!789784 () Bool)

(declare-fun tp!351834 () Bool)

(declare-fun tp!351831 () Bool)

(assert (=> b!1232890 (= e!789784 (and tp!351834 tp!351831))))

(declare-fun b!1232891 () Bool)

(declare-fun tp!351833 () Bool)

(assert (=> b!1232891 (= e!789784 tp!351833)))

(declare-fun b!1232889 () Bool)

(assert (=> b!1232889 (= e!789784 tp_is_empty!6383)))

(declare-fun b!1232892 () Bool)

(declare-fun tp!351835 () Bool)

(declare-fun tp!351832 () Bool)

(assert (=> b!1232892 (= e!789784 (and tp!351835 tp!351832))))

(assert (=> b!1232291 (= tp!351739 e!789784)))

(assert (= (and b!1232291 ((_ is ElementMatch!3431) (reg!3760 (regex!2161 (h!17933 rules!2728))))) b!1232889))

(assert (= (and b!1232291 ((_ is Concat!5661) (reg!3760 (regex!2161 (h!17933 rules!2728))))) b!1232890))

(assert (= (and b!1232291 ((_ is Star!3431) (reg!3760 (regex!2161 (h!17933 rules!2728))))) b!1232891))

(assert (= (and b!1232291 ((_ is Union!3431) (reg!3760 (regex!2161 (h!17933 rules!2728))))) b!1232892))

(declare-fun b!1232894 () Bool)

(declare-fun e!789785 () Bool)

(declare-fun tp!351839 () Bool)

(declare-fun tp!351836 () Bool)

(assert (=> b!1232894 (= e!789785 (and tp!351839 tp!351836))))

(declare-fun b!1232895 () Bool)

(declare-fun tp!351838 () Bool)

(assert (=> b!1232895 (= e!789785 tp!351838)))

(declare-fun b!1232893 () Bool)

(assert (=> b!1232893 (= e!789785 tp_is_empty!6383)))

(declare-fun b!1232896 () Bool)

(declare-fun tp!351840 () Bool)

(declare-fun tp!351837 () Bool)

(assert (=> b!1232896 (= e!789785 (and tp!351840 tp!351837))))

(assert (=> b!1232307 (= tp!351754 e!789785)))

(assert (= (and b!1232307 ((_ is ElementMatch!3431) (regex!2161 (h!17933 (t!115498 rules!2728))))) b!1232893))

(assert (= (and b!1232307 ((_ is Concat!5661) (regex!2161 (h!17933 (t!115498 rules!2728))))) b!1232894))

(assert (= (and b!1232307 ((_ is Star!3431) (regex!2161 (h!17933 (t!115498 rules!2728))))) b!1232895))

(assert (= (and b!1232307 ((_ is Union!3431) (regex!2161 (h!17933 (t!115498 rules!2728))))) b!1232896))

(declare-fun b!1232897 () Bool)

(declare-fun e!789786 () Bool)

(declare-fun tp!351841 () Bool)

(assert (=> b!1232897 (= e!789786 (and tp_is_empty!6383 tp!351841))))

(assert (=> b!1232309 (= tp!351757 e!789786)))

(assert (= (and b!1232309 ((_ is Cons!12529) (t!115495 (originalCharacters!2715 (h!17932 tokens!556))))) b!1232897))

(declare-fun b!1232899 () Bool)

(declare-fun e!789787 () Bool)

(declare-fun tp!351845 () Bool)

(declare-fun tp!351842 () Bool)

(assert (=> b!1232899 (= e!789787 (and tp!351845 tp!351842))))

(declare-fun b!1232900 () Bool)

(declare-fun tp!351844 () Bool)

(assert (=> b!1232900 (= e!789787 tp!351844)))

(declare-fun b!1232898 () Bool)

(assert (=> b!1232898 (= e!789787 tp_is_empty!6383)))

(declare-fun b!1232901 () Bool)

(declare-fun tp!351846 () Bool)

(declare-fun tp!351843 () Bool)

(assert (=> b!1232901 (= e!789787 (and tp!351846 tp!351843))))

(assert (=> b!1232292 (= tp!351741 e!789787)))

(assert (= (and b!1232292 ((_ is ElementMatch!3431) (regOne!7375 (regex!2161 (h!17933 rules!2728))))) b!1232898))

(assert (= (and b!1232292 ((_ is Concat!5661) (regOne!7375 (regex!2161 (h!17933 rules!2728))))) b!1232899))

(assert (= (and b!1232292 ((_ is Star!3431) (regOne!7375 (regex!2161 (h!17933 rules!2728))))) b!1232900))

(assert (= (and b!1232292 ((_ is Union!3431) (regOne!7375 (regex!2161 (h!17933 rules!2728))))) b!1232901))

(declare-fun b!1232903 () Bool)

(declare-fun e!789788 () Bool)

(declare-fun tp!351850 () Bool)

(declare-fun tp!351847 () Bool)

(assert (=> b!1232903 (= e!789788 (and tp!351850 tp!351847))))

(declare-fun b!1232904 () Bool)

(declare-fun tp!351849 () Bool)

(assert (=> b!1232904 (= e!789788 tp!351849)))

(declare-fun b!1232902 () Bool)

(assert (=> b!1232902 (= e!789788 tp_is_empty!6383)))

(declare-fun b!1232905 () Bool)

(declare-fun tp!351851 () Bool)

(declare-fun tp!351848 () Bool)

(assert (=> b!1232905 (= e!789788 (and tp!351851 tp!351848))))

(assert (=> b!1232292 (= tp!351738 e!789788)))

(assert (= (and b!1232292 ((_ is ElementMatch!3431) (regTwo!7375 (regex!2161 (h!17933 rules!2728))))) b!1232902))

(assert (= (and b!1232292 ((_ is Concat!5661) (regTwo!7375 (regex!2161 (h!17933 rules!2728))))) b!1232903))

(assert (= (and b!1232292 ((_ is Star!3431) (regTwo!7375 (regex!2161 (h!17933 rules!2728))))) b!1232904))

(assert (= (and b!1232292 ((_ is Union!3431) (regTwo!7375 (regex!2161 (h!17933 rules!2728))))) b!1232905))

(declare-fun b!1232907 () Bool)

(declare-fun e!789789 () Bool)

(declare-fun tp!351855 () Bool)

(declare-fun tp!351852 () Bool)

(assert (=> b!1232907 (= e!789789 (and tp!351855 tp!351852))))

(declare-fun b!1232908 () Bool)

(declare-fun tp!351854 () Bool)

(assert (=> b!1232908 (= e!789789 tp!351854)))

(declare-fun b!1232906 () Bool)

(assert (=> b!1232906 (= e!789789 tp_is_empty!6383)))

(declare-fun b!1232909 () Bool)

(declare-fun tp!351856 () Bool)

(declare-fun tp!351853 () Bool)

(assert (=> b!1232909 (= e!789789 (and tp!351856 tp!351853))))

(assert (=> b!1232290 (= tp!351740 e!789789)))

(assert (= (and b!1232290 ((_ is ElementMatch!3431) (regOne!7374 (regex!2161 (h!17933 rules!2728))))) b!1232906))

(assert (= (and b!1232290 ((_ is Concat!5661) (regOne!7374 (regex!2161 (h!17933 rules!2728))))) b!1232907))

(assert (= (and b!1232290 ((_ is Star!3431) (regOne!7374 (regex!2161 (h!17933 rules!2728))))) b!1232908))

(assert (= (and b!1232290 ((_ is Union!3431) (regOne!7374 (regex!2161 (h!17933 rules!2728))))) b!1232909))

(declare-fun b!1232915 () Bool)

(declare-fun e!789794 () Bool)

(declare-fun tp!351860 () Bool)

(declare-fun tp!351857 () Bool)

(assert (=> b!1232915 (= e!789794 (and tp!351860 tp!351857))))

(declare-fun b!1232916 () Bool)

(declare-fun tp!351859 () Bool)

(assert (=> b!1232916 (= e!789794 tp!351859)))

(declare-fun b!1232914 () Bool)

(assert (=> b!1232914 (= e!789794 tp_is_empty!6383)))

(declare-fun b!1232917 () Bool)

(declare-fun tp!351861 () Bool)

(declare-fun tp!351858 () Bool)

(assert (=> b!1232917 (= e!789794 (and tp!351861 tp!351858))))

(assert (=> b!1232290 (= tp!351737 e!789794)))

(assert (= (and b!1232290 ((_ is ElementMatch!3431) (regTwo!7374 (regex!2161 (h!17933 rules!2728))))) b!1232914))

(assert (= (and b!1232290 ((_ is Concat!5661) (regTwo!7374 (regex!2161 (h!17933 rules!2728))))) b!1232915))

(assert (= (and b!1232290 ((_ is Star!3431) (regTwo!7374 (regex!2161 (h!17933 rules!2728))))) b!1232916))

(assert (= (and b!1232290 ((_ is Union!3431) (regTwo!7374 (regex!2161 (h!17933 rules!2728))))) b!1232917))

(declare-fun b!1232920 () Bool)

(declare-fun b_free!29701 () Bool)

(declare-fun b_next!30405 () Bool)

(assert (=> b!1232920 (= b_free!29701 (not b_next!30405))))

(declare-fun t!115610 () Bool)

(declare-fun tb!69027 () Bool)

(assert (=> (and b!1232920 (= (toValue!3302 (transformation!2161 (h!17933 (t!115498 (t!115498 rules!2728))))) (toValue!3302 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115610) tb!69027))

(declare-fun result!83312 () Bool)

(assert (= result!83312 result!83272))

(assert (=> d!352957 t!115610))

(declare-fun tp!351864 () Bool)

(declare-fun b_and!84845 () Bool)

(assert (=> b!1232920 (= tp!351864 (and (=> t!115610 result!83312) b_and!84845))))

(declare-fun b_free!29703 () Bool)

(declare-fun b_next!30407 () Bool)

(assert (=> b!1232920 (= b_free!29703 (not b_next!30407))))

(declare-fun t!115612 () Bool)

(declare-fun tb!69029 () Bool)

(assert (=> (and b!1232920 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 (t!115498 rules!2728))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739))))) t!115612) tb!69029))

(declare-fun result!83314 () Bool)

(assert (= result!83314 result!83228))

(assert (=> d!352719 t!115612))

(declare-fun t!115614 () Bool)

(declare-fun tb!69031 () Bool)

(assert (=> (and b!1232920 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 (t!115498 rules!2728))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556))))) t!115614) tb!69031))

(declare-fun result!83316 () Bool)

(assert (= result!83316 result!83206))

(assert (=> d!352717 t!115614))

(declare-fun tb!69033 () Bool)

(declare-fun t!115616 () Bool)

(assert (=> (and b!1232920 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 (t!115498 rules!2728))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556)))))) t!115616) tb!69033))

(declare-fun result!83318 () Bool)

(assert (= result!83318 result!83264))

(assert (=> b!1232472 t!115616))

(declare-fun t!115618 () Bool)

(declare-fun tb!69035 () Bool)

(assert (=> (and b!1232920 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 (t!115498 rules!2728))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 (get!4121 lt!419850)))))) t!115618) tb!69035))

(declare-fun result!83320 () Bool)

(assert (= result!83320 result!83256))

(assert (=> d!352805 t!115618))

(assert (=> b!1232068 t!115614))

(declare-fun b_and!84847 () Bool)

(declare-fun tp!351865 () Bool)

(assert (=> b!1232920 (= tp!351865 (and (=> t!115616 result!83318) (=> t!115618 result!83320) (=> t!115614 result!83316) (=> t!115612 result!83314) b_and!84847))))

(declare-fun e!789795 () Bool)

(assert (=> b!1232920 (= e!789795 (and tp!351864 tp!351865))))

(declare-fun tp!351863 () Bool)

(declare-fun b!1232919 () Bool)

(declare-fun e!789797 () Bool)

(assert (=> b!1232919 (= e!789797 (and tp!351863 (inv!16745 (tag!2423 (h!17933 (t!115498 (t!115498 rules!2728))))) (inv!16748 (transformation!2161 (h!17933 (t!115498 (t!115498 rules!2728))))) e!789795))))

(declare-fun b!1232918 () Bool)

(declare-fun e!789796 () Bool)

(declare-fun tp!351862 () Bool)

(assert (=> b!1232918 (= e!789796 (and e!789797 tp!351862))))

(assert (=> b!1232306 (= tp!351753 e!789796)))

(assert (= b!1232919 b!1232920))

(assert (= b!1232918 b!1232919))

(assert (= (and b!1232306 ((_ is Cons!12532) (t!115498 (t!115498 rules!2728)))) b!1232918))

(declare-fun m!1408679 () Bool)

(assert (=> b!1232919 m!1408679))

(declare-fun m!1408681 () Bool)

(assert (=> b!1232919 m!1408681))

(declare-fun b_lambda!36477 () Bool)

(assert (= b_lambda!36461 (or d!352669 b_lambda!36477)))

(declare-fun bs!289635 () Bool)

(declare-fun d!353047 () Bool)

(assert (= bs!289635 (and d!353047 d!352669)))

(assert (=> bs!289635 (= (dynLambda!5482 lambda!49273 (h!17932 (list!4648 (seqFromList!1571 (t!115497 tokens!556))))) (rulesProduceIndividualToken!850 thiss!20528 rules!2728 (h!17932 (list!4648 (seqFromList!1571 (t!115497 tokens!556))))))))

(assert (=> bs!289635 m!1407909))

(assert (=> b!1232386 d!353047))

(declare-fun b_lambda!36479 () Bool)

(assert (= b_lambda!36469 (or d!352627 b_lambda!36479)))

(declare-fun bs!289636 () Bool)

(declare-fun d!353049 () Bool)

(assert (= bs!289636 (and d!353049 d!352627)))

(assert (=> bs!289636 (= (dynLambda!5482 lambda!49269 (h!17932 (list!4648 (seqFromList!1571 tokens!556)))) (rulesProduceIndividualToken!850 thiss!20528 rules!2728 (h!17932 (list!4648 (seqFromList!1571 tokens!556)))))))

(assert (=> bs!289636 m!1408405))

(assert (=> b!1232614 d!353049))

(declare-fun b_lambda!36481 () Bool)

(assert (= b_lambda!36465 (or (and b!1232308 b_free!29691 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))))) (and b!1232831 b_free!29699 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))))) (and b!1231869 b_free!29675 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))))) (and b!1232323 b_free!29695) (and b!1232920 b_free!29703 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 (t!115498 rules!2728))))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))))) (and b!1231874 b_free!29679 (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))))) b_lambda!36481)))

(declare-fun b_lambda!36483 () Bool)

(assert (= b_lambda!36453 (or (and b!1231874 b_free!29679 (= (toChars!3161 (transformation!2161 (h!17933 rules!2728))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))))) (and b!1232323 b_free!29695 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 tokens!556))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))))) (and b!1232831 b_free!29699 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 (t!115497 (t!115497 tokens!556)))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))))) (and b!1232308 b_free!29691 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 rules!2728)))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))))) (and b!1231869 b_free!29675 (= (toChars!3161 (transformation!2161 (rule!3590 (h!17932 tokens!556)))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))))) (and b!1232920 b_free!29703 (= (toChars!3161 (transformation!2161 (h!17933 (t!115498 (t!115498 rules!2728))))) (toChars!3161 (transformation!2161 (rule!3590 (_1!7055 lt!419739)))))) b_lambda!36483)))

(check-sat (not d!352799) (not b!1232919) (not b!1232376) (not b!1232654) (not d!352953) b_and!84813 (not b!1232387) (not b!1232624) (not b_next!30379) (not b!1232380) (not b!1232491) (not bm!85375) (not b!1232469) (not b!1232617) (not b!1232688) (not b!1232819) (not bm!85386) (not b!1232639) (not d!352895) (not b!1232700) (not b!1232472) (not b_lambda!36477) (not b!1232186) (not b!1232880) (not b!1232878) (not b!1232428) (not bm!85388) (not b!1232460) (not d!353031) (not b!1232431) (not b!1232373) (not b!1232815) b_and!84823 (not b!1232588) (not b!1232917) (not bs!289635) (not b_next!30399) (not b!1232844) (not b!1232449) (not b!1232626) (not b!1232629) (not b!1232907) (not d!352925) (not b!1232488) (not b_next!30395) (not b!1232864) (not b!1232653) b_and!84819 (not b!1232333) (not b!1232595) (not b!1232525) (not d!352749) (not b!1232379) (not d!352965) (not b!1232697) (not b!1232827) (not b!1232594) (not b!1232492) (not b_lambda!36463) (not b!1232887) (not b!1232915) (not b!1232631) (not b!1232369) (not d!352775) (not b!1232495) (not b!1232601) (not d!352907) (not b!1232883) (not b_lambda!36455) (not b!1232867) (not b!1232443) (not b!1232903) tp_is_empty!6383 (not tb!68985) (not b!1232875) (not b!1232816) (not b!1232613) (not bs!289636) (not b!1232621) (not b!1232900) (not d!352821) (not b!1232440) (not b!1232843) (not b!1232504) (not b!1232820) (not b!1232457) (not b!1232908) (not b!1232609) (not b_next!30397) (not d!352735) (not b!1232634) (not d!352937) b_and!84809 (not d!352827) (not b!1232611) (not b!1232824) (not tb!68977) (not b_next!30403) (not d!352737) (not b!1232891) (not b!1232627) (not b!1232415) (not b_next!30393) (not d!352903) (not b!1232361) (not b!1232640) (not b!1232599) (not bm!85383) (not d!352823) (not b!1232358) (not b!1232438) (not d!352765) (not b_next!30401) (not b!1232074) (not b!1232474) b_and!84847 (not d!352755) (not b!1232839) (not b!1232874) (not b!1232465) (not d!352771) (not d!352961) (not b!1232429) (not b_next!30405) (not b!1232881) (not d!352951) (not d!352795) (not b!1232375) (not d!352893) (not b!1232868) (not d!352971) (not d!352741) (not b!1232879) (not b!1232598) (not b!1232360) (not b!1232687) (not b!1232432) (not b!1232372) (not b!1232370) (not b!1232498) (not b_next!30407) (not d!352955) b_and!84845 (not b!1232818) (not b!1232828) (not b!1232625) (not b!1232899) (not d!352803) (not bm!85384) (not d!352939) (not b!1232377) (not d!352793) (not b_next!30377) (not d!352805) b_and!84841 (not d!352791) (not b!1232455) (not b!1232817) (not d!352817) (not d!352763) (not b!1232642) (not b!1232841) (not d!352797) (not d!352959) (not b!1232905) (not d!352849) b_and!84815 (not b!1232865) (not d!352825) (not b!1232884) (not b!1232496) (not b!1232334) (not b!1232869) (not b!1232378) (not b!1232845) (not b!1232894) (not b!1232863) (not b!1232814) (not b!1232870) (not b!1232821) (not d!352801) (not b!1232681) (not b!1232689) (not b!1232876) (not bm!85387) (not d!352949) (not b!1232526) (not b!1232602) (not b!1232381) (not b!1232587) (not b!1232901) (not b!1232892) (not b!1232468) (not d!352811) (not d!352917) (not bm!85399) (not b!1232508) (not d!352963) (not d!352941) (not d!352853) (not b!1232633) (not b_next!30381) (not bm!85385) (not b!1232823) (not b!1232897) b_and!84843 (not b!1232603) (not b_lambda!36483) (not b_lambda!36457) (not b!1232829) (not b!1232830) (not b!1232500) (not d!352901) (not d!352943) (not b!1232840) (not b!1232918) (not b!1232499) (not d!352969) (not b_lambda!36471) (not b!1232518) (not d!352835) (not b!1232502) (not b!1232619) (not d!352747) (not d!352919) (not b!1232904) (not b!1232596) (not b!1232367) (not b!1232357) (not b!1232888) (not b_lambda!36479) (not b!1232909) (not d!352757) (not d!352851) (not b!1232576) (not b!1232435) (not b!1232520) (not b!1232698) (not b!1232882) (not b!1232489) (not b!1232519) (not bm!85397) b_and!84817 (not b!1232493) (not tb!68993) (not b!1232481) (not b!1232473) (not d!352783) (not b!1232895) (not b!1232886) (not b!1232916) (not b!1232497) (not b!1232896) (not b!1232483) (not b!1232615) (not b!1232890) (not b_lambda!36481) (not b!1232645) b_and!84821 (not b!1232652) (not b!1232506) (not b!1232332) (not b!1232467) (not b_next!30383) (not b!1232636) (not b!1232600) b_and!84811 (not b!1232437) (not d!352967) (not d!352973) (not b!1232650))
(check-sat b_and!84823 (not b_next!30399) (not b_next!30397) (not b_next!30405) (not b_next!30407) b_and!84845 b_and!84815 b_and!84817 b_and!84821 b_and!84813 (not b_next!30379) (not b_next!30395) b_and!84819 (not b_next!30393) b_and!84809 (not b_next!30403) (not b_next!30401) b_and!84847 (not b_next!30377) b_and!84841 (not b_next!30381) b_and!84843 (not b_next!30383) b_and!84811)
