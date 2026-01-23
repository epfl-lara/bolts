; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166514 () Bool)

(assert start!166514)

(declare-fun b!1706144 () Bool)

(declare-fun b_free!46075 () Bool)

(declare-fun b_next!46779 () Bool)

(assert (=> b!1706144 (= b_free!46075 (not b_next!46779))))

(declare-fun tp!487306 () Bool)

(declare-fun b_and!123313 () Bool)

(assert (=> b!1706144 (= tp!487306 b_and!123313)))

(declare-fun b_free!46077 () Bool)

(declare-fun b_next!46781 () Bool)

(assert (=> b!1706144 (= b_free!46077 (not b_next!46781))))

(declare-fun tp!487303 () Bool)

(declare-fun b_and!123315 () Bool)

(assert (=> b!1706144 (= tp!487303 b_and!123315)))

(declare-fun b!1706143 () Bool)

(declare-fun b_free!46079 () Bool)

(declare-fun b_next!46783 () Bool)

(assert (=> b!1706143 (= b_free!46079 (not b_next!46783))))

(declare-fun tp!487304 () Bool)

(declare-fun b_and!123317 () Bool)

(assert (=> b!1706143 (= tp!487304 b_and!123317)))

(declare-fun b_free!46081 () Bool)

(declare-fun b_next!46785 () Bool)

(assert (=> b!1706143 (= b_free!46081 (not b_next!46785))))

(declare-fun tp!487302 () Bool)

(declare-fun b_and!123319 () Bool)

(assert (=> b!1706143 (= tp!487302 b_and!123319)))

(declare-fun b!1706147 () Bool)

(declare-fun b_free!46083 () Bool)

(declare-fun b_next!46787 () Bool)

(assert (=> b!1706147 (= b_free!46083 (not b_next!46787))))

(declare-fun tp!487299 () Bool)

(declare-fun b_and!123321 () Bool)

(assert (=> b!1706147 (= tp!487299 b_and!123321)))

(declare-fun b_free!46085 () Bool)

(declare-fun b_next!46789 () Bool)

(assert (=> b!1706147 (= b_free!46085 (not b_next!46789))))

(declare-fun tp!487297 () Bool)

(declare-fun b_and!123323 () Bool)

(assert (=> b!1706147 (= tp!487297 b_and!123323)))

(declare-fun b!1706135 () Bool)

(declare-fun res!764753 () Bool)

(declare-fun e!1091247 () Bool)

(assert (=> b!1706135 (=> (not res!764753) (not e!1091247))))

(declare-datatypes ((List!18663 0))(
  ( (Nil!18593) (Cons!18593 (h!23994 (_ BitVec 16)) (t!157980 List!18663)) )
))
(declare-datatypes ((TokenValue!3369 0))(
  ( (FloatLiteralValue!6738 (text!24028 List!18663)) (TokenValueExt!3368 (__x!12040 Int)) (Broken!16845 (value!103098 List!18663)) (Object!3438) (End!3369) (Def!3369) (Underscore!3369) (Match!3369) (Else!3369) (Error!3369) (Case!3369) (If!3369) (Extends!3369) (Abstract!3369) (Class!3369) (Val!3369) (DelimiterValue!6738 (del!3429 List!18663)) (KeywordValue!3375 (value!103099 List!18663)) (CommentValue!6738 (value!103100 List!18663)) (WhitespaceValue!6738 (value!103101 List!18663)) (IndentationValue!3369 (value!103102 List!18663)) (String!21176) (Int32!3369) (Broken!16846 (value!103103 List!18663)) (Boolean!3370) (Unit!32436) (OperatorValue!3372 (op!3429 List!18663)) (IdentifierValue!6738 (value!103104 List!18663)) (IdentifierValue!6739 (value!103105 List!18663)) (WhitespaceValue!6739 (value!103106 List!18663)) (True!6738) (False!6738) (Broken!16847 (value!103107 List!18663)) (Broken!16848 (value!103108 List!18663)) (True!6739) (RightBrace!3369) (RightBracket!3369) (Colon!3369) (Null!3369) (Comma!3369) (LeftBracket!3369) (False!6739) (LeftBrace!3369) (ImaginaryLiteralValue!3369 (text!24029 List!18663)) (StringLiteralValue!10107 (value!103109 List!18663)) (EOFValue!3369 (value!103110 List!18663)) (IdentValue!3369 (value!103111 List!18663)) (DelimiterValue!6739 (value!103112 List!18663)) (DedentValue!3369 (value!103113 List!18663)) (NewLineValue!3369 (value!103114 List!18663)) (IntegerValue!10107 (value!103115 (_ BitVec 32)) (text!24030 List!18663)) (IntegerValue!10108 (value!103116 Int) (text!24031 List!18663)) (Times!3369) (Or!3369) (Equal!3369) (Minus!3369) (Broken!16849 (value!103117 List!18663)) (And!3369) (Div!3369) (LessEqual!3369) (Mod!3369) (Concat!7976) (Not!3369) (Plus!3369) (SpaceValue!3369 (value!103118 List!18663)) (IntegerValue!10109 (value!103119 Int) (text!24032 List!18663)) (StringLiteralValue!10108 (text!24033 List!18663)) (FloatLiteralValue!6739 (text!24034 List!18663)) (BytesLiteralValue!3369 (value!103120 List!18663)) (CommentValue!6739 (value!103121 List!18663)) (StringLiteralValue!10109 (value!103122 List!18663)) (ErrorTokenValue!3369 (msg!3430 List!18663)) )
))
(declare-datatypes ((C!9388 0))(
  ( (C!9389 (val!5290 Int)) )
))
(declare-datatypes ((List!18664 0))(
  ( (Nil!18594) (Cons!18594 (h!23995 C!9388) (t!157981 List!18664)) )
))
(declare-datatypes ((Regex!4607 0))(
  ( (ElementMatch!4607 (c!279678 C!9388)) (Concat!7977 (regOne!9726 Regex!4607) (regTwo!9726 Regex!4607)) (EmptyExpr!4607) (Star!4607 (reg!4936 Regex!4607)) (EmptyLang!4607) (Union!4607 (regOne!9727 Regex!4607) (regTwo!9727 Regex!4607)) )
))
(declare-datatypes ((String!21177 0))(
  ( (String!21178 (value!103123 String)) )
))
(declare-datatypes ((IArray!12383 0))(
  ( (IArray!12384 (innerList!6249 List!18664)) )
))
(declare-datatypes ((Conc!6189 0))(
  ( (Node!6189 (left!14846 Conc!6189) (right!15176 Conc!6189) (csize!12608 Int) (cheight!6400 Int)) (Leaf!9049 (xs!9065 IArray!12383) (csize!12609 Int)) (Empty!6189) )
))
(declare-datatypes ((BalanceConc!12322 0))(
  ( (BalanceConc!12323 (c!279679 Conc!6189)) )
))
(declare-datatypes ((TokenValueInjection!6398 0))(
  ( (TokenValueInjection!6399 (toValue!4774 Int) (toChars!4633 Int)) )
))
(declare-datatypes ((Rule!6358 0))(
  ( (Rule!6359 (regex!3279 Regex!4607) (tag!3575 String!21177) (isSeparator!3279 Bool) (transformation!3279 TokenValueInjection!6398)) )
))
(declare-datatypes ((Token!6124 0))(
  ( (Token!6125 (value!103124 TokenValue!3369) (rule!5211 Rule!6358) (size!14806 Int) (originalCharacters!4093 List!18664)) )
))
(declare-datatypes ((tuple2!18338 0))(
  ( (tuple2!18339 (_1!10571 Token!6124) (_2!10571 List!18664)) )
))
(declare-fun lt!652390 () tuple2!18338)

(declare-fun isEmpty!11671 (List!18664) Bool)

(assert (=> b!1706135 (= res!764753 (isEmpty!11671 (_2!10571 lt!652390)))))

(declare-fun b!1706136 () Bool)

(assert (=> b!1706136 (= e!1091247 false)))

(declare-fun lt!652388 () Bool)

(declare-datatypes ((LexerInterface!2908 0))(
  ( (LexerInterfaceExt!2905 (__x!12041 Int)) (Lexer!2906) )
))
(declare-fun thiss!24550 () LexerInterface!2908)

(declare-datatypes ((List!18665 0))(
  ( (Nil!18595) (Cons!18595 (h!23996 Rule!6358) (t!157982 List!18665)) )
))
(declare-fun rules!3447 () List!18665)

(declare-fun rulesValidInductive!1072 (LexerInterface!2908 List!18665) Bool)

(assert (=> b!1706136 (= lt!652388 (rulesValidInductive!1072 thiss!24550 rules!3447))))

(declare-fun e!1091255 () Bool)

(declare-fun token!523 () Token!6124)

(declare-fun e!1091251 () Bool)

(declare-fun b!1706137 () Bool)

(declare-fun tp!487300 () Bool)

(declare-fun inv!23987 (String!21177) Bool)

(declare-fun inv!23990 (TokenValueInjection!6398) Bool)

(assert (=> b!1706137 (= e!1091251 (and tp!487300 (inv!23987 (tag!3575 (rule!5211 token!523))) (inv!23990 (transformation!3279 (rule!5211 token!523))) e!1091255))))

(declare-fun b!1706138 () Bool)

(declare-fun e!1091243 () Bool)

(declare-fun e!1091253 () Bool)

(assert (=> b!1706138 (= e!1091243 e!1091253)))

(declare-fun res!764754 () Bool)

(assert (=> b!1706138 (=> (not res!764754) (not e!1091253))))

(declare-datatypes ((Option!3603 0))(
  ( (None!3602) (Some!3602 (v!24977 tuple2!18338)) )
))
(declare-fun lt!652389 () Option!3603)

(declare-fun isDefined!2948 (Option!3603) Bool)

(assert (=> b!1706138 (= res!764754 (isDefined!2948 lt!652389))))

(declare-fun maxPrefix!1462 (LexerInterface!2908 List!18665 List!18664) Option!3603)

(declare-fun list!7496 (BalanceConc!12322) List!18664)

(declare-fun charsOf!1928 (Token!6124) BalanceConc!12322)

(assert (=> b!1706138 (= lt!652389 (maxPrefix!1462 thiss!24550 rules!3447 (list!7496 (charsOf!1928 token!523))))))

(declare-fun b!1706139 () Bool)

(declare-fun res!764758 () Bool)

(assert (=> b!1706139 (=> (not res!764758) (not e!1091243))))

(declare-fun isEmpty!11672 (List!18665) Bool)

(assert (=> b!1706139 (= res!764758 (not (isEmpty!11672 rules!3447)))))

(declare-fun b!1706140 () Bool)

(assert (=> b!1706140 (= e!1091253 e!1091247)))

(declare-fun res!764756 () Bool)

(assert (=> b!1706140 (=> (not res!764756) (not e!1091247))))

(assert (=> b!1706140 (= res!764756 (= (_1!10571 lt!652390) token!523))))

(declare-fun get!5462 (Option!3603) tuple2!18338)

(assert (=> b!1706140 (= lt!652390 (get!5462 lt!652389))))

(declare-fun b!1706142 () Bool)

(declare-fun rule!422 () Rule!6358)

(declare-fun tp!487301 () Bool)

(declare-fun e!1091242 () Bool)

(declare-fun e!1091244 () Bool)

(assert (=> b!1706142 (= e!1091242 (and tp!487301 (inv!23987 (tag!3575 rule!422)) (inv!23990 (transformation!3279 rule!422)) e!1091244))))

(assert (=> b!1706143 (= e!1091255 (and tp!487304 tp!487302))))

(assert (=> b!1706144 (= e!1091244 (and tp!487306 tp!487303))))

(declare-fun b!1706145 () Bool)

(declare-fun tp!487305 () Bool)

(declare-fun e!1091252 () Bool)

(declare-fun inv!21 (TokenValue!3369) Bool)

(assert (=> b!1706145 (= e!1091252 (and (inv!21 (value!103124 token!523)) e!1091251 tp!487305))))

(declare-fun b!1706146 () Bool)

(declare-fun res!764757 () Bool)

(assert (=> b!1706146 (=> (not res!764757) (not e!1091243))))

(declare-fun rulesInvariant!2577 (LexerInterface!2908 List!18665) Bool)

(assert (=> b!1706146 (= res!764757 (rulesInvariant!2577 thiss!24550 rules!3447))))

(declare-fun e!1091245 () Bool)

(assert (=> b!1706147 (= e!1091245 (and tp!487299 tp!487297))))

(declare-fun b!1706141 () Bool)

(declare-fun e!1091250 () Bool)

(declare-fun e!1091254 () Bool)

(declare-fun tp!487296 () Bool)

(assert (=> b!1706141 (= e!1091250 (and e!1091254 tp!487296))))

(declare-fun res!764755 () Bool)

(assert (=> start!166514 (=> (not res!764755) (not e!1091243))))

(get-info :version)

(assert (=> start!166514 (= res!764755 ((_ is Lexer!2906) thiss!24550))))

(assert (=> start!166514 e!1091243))

(assert (=> start!166514 true))

(assert (=> start!166514 e!1091250))

(assert (=> start!166514 e!1091242))

(declare-fun inv!23991 (Token!6124) Bool)

(assert (=> start!166514 (and (inv!23991 token!523) e!1091252)))

(declare-fun b!1706148 () Bool)

(declare-fun res!764752 () Bool)

(assert (=> b!1706148 (=> (not res!764752) (not e!1091243))))

(declare-fun contains!3295 (List!18665 Rule!6358) Bool)

(assert (=> b!1706148 (= res!764752 (contains!3295 rules!3447 rule!422))))

(declare-fun b!1706149 () Bool)

(declare-fun tp!487298 () Bool)

(assert (=> b!1706149 (= e!1091254 (and tp!487298 (inv!23987 (tag!3575 (h!23996 rules!3447))) (inv!23990 (transformation!3279 (h!23996 rules!3447))) e!1091245))))

(declare-fun b!1706150 () Bool)

(declare-fun res!764759 () Bool)

(assert (=> b!1706150 (=> (not res!764759) (not e!1091247))))

(assert (=> b!1706150 (= res!764759 (= (rule!5211 token!523) rule!422))))

(assert (= (and start!166514 res!764755) b!1706139))

(assert (= (and b!1706139 res!764758) b!1706146))

(assert (= (and b!1706146 res!764757) b!1706148))

(assert (= (and b!1706148 res!764752) b!1706138))

(assert (= (and b!1706138 res!764754) b!1706140))

(assert (= (and b!1706140 res!764756) b!1706135))

(assert (= (and b!1706135 res!764753) b!1706150))

(assert (= (and b!1706150 res!764759) b!1706136))

(assert (= b!1706149 b!1706147))

(assert (= b!1706141 b!1706149))

(assert (= (and start!166514 ((_ is Cons!18595) rules!3447)) b!1706141))

(assert (= b!1706142 b!1706144))

(assert (= start!166514 b!1706142))

(assert (= b!1706137 b!1706143))

(assert (= b!1706145 b!1706137))

(assert (= start!166514 b!1706145))

(declare-fun m!2109877 () Bool)

(assert (=> start!166514 m!2109877))

(declare-fun m!2109879 () Bool)

(assert (=> b!1706137 m!2109879))

(declare-fun m!2109881 () Bool)

(assert (=> b!1706137 m!2109881))

(declare-fun m!2109883 () Bool)

(assert (=> b!1706138 m!2109883))

(declare-fun m!2109885 () Bool)

(assert (=> b!1706138 m!2109885))

(assert (=> b!1706138 m!2109885))

(declare-fun m!2109887 () Bool)

(assert (=> b!1706138 m!2109887))

(assert (=> b!1706138 m!2109887))

(declare-fun m!2109889 () Bool)

(assert (=> b!1706138 m!2109889))

(declare-fun m!2109891 () Bool)

(assert (=> b!1706136 m!2109891))

(declare-fun m!2109893 () Bool)

(assert (=> b!1706146 m!2109893))

(declare-fun m!2109895 () Bool)

(assert (=> b!1706142 m!2109895))

(declare-fun m!2109897 () Bool)

(assert (=> b!1706142 m!2109897))

(declare-fun m!2109899 () Bool)

(assert (=> b!1706149 m!2109899))

(declare-fun m!2109901 () Bool)

(assert (=> b!1706149 m!2109901))

(declare-fun m!2109903 () Bool)

(assert (=> b!1706148 m!2109903))

(declare-fun m!2109905 () Bool)

(assert (=> b!1706140 m!2109905))

(declare-fun m!2109907 () Bool)

(assert (=> b!1706139 m!2109907))

(declare-fun m!2109909 () Bool)

(assert (=> b!1706135 m!2109909))

(declare-fun m!2109911 () Bool)

(assert (=> b!1706145 m!2109911))

(check-sat (not b_next!46785) b_and!123317 b_and!123321 (not b_next!46779) (not b_next!46783) (not b_next!46781) (not b!1706140) (not start!166514) (not b!1706135) (not b!1706142) (not b!1706148) (not b!1706149) (not b!1706146) b_and!123313 (not b!1706136) b_and!123319 (not b!1706145) b_and!123323 (not b!1706141) (not b!1706139) (not b!1706138) (not b_next!46789) (not b_next!46787) b_and!123315 (not b!1706137))
(check-sat (not b_next!46785) b_and!123317 b_and!123319 b_and!123321 (not b_next!46779) (not b_next!46783) (not b_next!46781) b_and!123323 b_and!123315 b_and!123313 (not b_next!46789) (not b_next!46787))
