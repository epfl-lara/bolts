; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166510 () Bool)

(assert start!166510)

(declare-fun b!1706044 () Bool)

(declare-fun b_free!46051 () Bool)

(declare-fun b_next!46755 () Bool)

(assert (=> b!1706044 (= b_free!46051 (not b_next!46755))))

(declare-fun tp!487234 () Bool)

(declare-fun b_and!123289 () Bool)

(assert (=> b!1706044 (= tp!487234 b_and!123289)))

(declare-fun b_free!46053 () Bool)

(declare-fun b_next!46757 () Bool)

(assert (=> b!1706044 (= b_free!46053 (not b_next!46757))))

(declare-fun tp!487232 () Bool)

(declare-fun b_and!123291 () Bool)

(assert (=> b!1706044 (= tp!487232 b_and!123291)))

(declare-fun b!1706054 () Bool)

(declare-fun b_free!46055 () Bool)

(declare-fun b_next!46759 () Bool)

(assert (=> b!1706054 (= b_free!46055 (not b_next!46759))))

(declare-fun tp!487235 () Bool)

(declare-fun b_and!123293 () Bool)

(assert (=> b!1706054 (= tp!487235 b_and!123293)))

(declare-fun b_free!46057 () Bool)

(declare-fun b_next!46761 () Bool)

(assert (=> b!1706054 (= b_free!46057 (not b_next!46761))))

(declare-fun tp!487239 () Bool)

(declare-fun b_and!123295 () Bool)

(assert (=> b!1706054 (= tp!487239 b_and!123295)))

(declare-fun b!1706045 () Bool)

(declare-fun b_free!46059 () Bool)

(declare-fun b_next!46763 () Bool)

(assert (=> b!1706045 (= b_free!46059 (not b_next!46763))))

(declare-fun tp!487231 () Bool)

(declare-fun b_and!123297 () Bool)

(assert (=> b!1706045 (= tp!487231 b_and!123297)))

(declare-fun b_free!46061 () Bool)

(declare-fun b_next!46765 () Bool)

(assert (=> b!1706045 (= b_free!46061 (not b_next!46765))))

(declare-fun tp!487237 () Bool)

(declare-fun b_and!123299 () Bool)

(assert (=> b!1706045 (= tp!487237 b_and!123299)))

(declare-fun b!1706041 () Bool)

(declare-fun e!1091157 () Bool)

(declare-fun e!1091153 () Bool)

(declare-fun tp!487238 () Bool)

(assert (=> b!1706041 (= e!1091157 (and e!1091153 tp!487238))))

(declare-fun b!1706042 () Bool)

(declare-fun res!764707 () Bool)

(declare-fun e!1091156 () Bool)

(assert (=> b!1706042 (=> (not res!764707) (not e!1091156))))

(declare-datatypes ((List!18657 0))(
  ( (Nil!18587) (Cons!18587 (h!23988 (_ BitVec 16)) (t!157974 List!18657)) )
))
(declare-datatypes ((TokenValue!3367 0))(
  ( (FloatLiteralValue!6734 (text!24014 List!18657)) (TokenValueExt!3366 (__x!12036 Int)) (Broken!16835 (value!103041 List!18657)) (Object!3436) (End!3367) (Def!3367) (Underscore!3367) (Match!3367) (Else!3367) (Error!3367) (Case!3367) (If!3367) (Extends!3367) (Abstract!3367) (Class!3367) (Val!3367) (DelimiterValue!6734 (del!3427 List!18657)) (KeywordValue!3373 (value!103042 List!18657)) (CommentValue!6734 (value!103043 List!18657)) (WhitespaceValue!6734 (value!103044 List!18657)) (IndentationValue!3367 (value!103045 List!18657)) (String!21166) (Int32!3367) (Broken!16836 (value!103046 List!18657)) (Boolean!3368) (Unit!32434) (OperatorValue!3370 (op!3427 List!18657)) (IdentifierValue!6734 (value!103047 List!18657)) (IdentifierValue!6735 (value!103048 List!18657)) (WhitespaceValue!6735 (value!103049 List!18657)) (True!6734) (False!6734) (Broken!16837 (value!103050 List!18657)) (Broken!16838 (value!103051 List!18657)) (True!6735) (RightBrace!3367) (RightBracket!3367) (Colon!3367) (Null!3367) (Comma!3367) (LeftBracket!3367) (False!6735) (LeftBrace!3367) (ImaginaryLiteralValue!3367 (text!24015 List!18657)) (StringLiteralValue!10101 (value!103052 List!18657)) (EOFValue!3367 (value!103053 List!18657)) (IdentValue!3367 (value!103054 List!18657)) (DelimiterValue!6735 (value!103055 List!18657)) (DedentValue!3367 (value!103056 List!18657)) (NewLineValue!3367 (value!103057 List!18657)) (IntegerValue!10101 (value!103058 (_ BitVec 32)) (text!24016 List!18657)) (IntegerValue!10102 (value!103059 Int) (text!24017 List!18657)) (Times!3367) (Or!3367) (Equal!3367) (Minus!3367) (Broken!16839 (value!103060 List!18657)) (And!3367) (Div!3367) (LessEqual!3367) (Mod!3367) (Concat!7972) (Not!3367) (Plus!3367) (SpaceValue!3367 (value!103061 List!18657)) (IntegerValue!10103 (value!103062 Int) (text!24018 List!18657)) (StringLiteralValue!10102 (text!24019 List!18657)) (FloatLiteralValue!6735 (text!24020 List!18657)) (BytesLiteralValue!3367 (value!103063 List!18657)) (CommentValue!6735 (value!103064 List!18657)) (StringLiteralValue!10103 (value!103065 List!18657)) (ErrorTokenValue!3367 (msg!3428 List!18657)) )
))
(declare-datatypes ((C!9384 0))(
  ( (C!9385 (val!5288 Int)) )
))
(declare-datatypes ((Regex!4605 0))(
  ( (ElementMatch!4605 (c!279672 C!9384)) (Concat!7973 (regOne!9722 Regex!4605) (regTwo!9722 Regex!4605)) (EmptyExpr!4605) (Star!4605 (reg!4934 Regex!4605)) (EmptyLang!4605) (Union!4605 (regOne!9723 Regex!4605) (regTwo!9723 Regex!4605)) )
))
(declare-datatypes ((String!21167 0))(
  ( (String!21168 (value!103066 String)) )
))
(declare-datatypes ((List!18658 0))(
  ( (Nil!18588) (Cons!18588 (h!23989 C!9384) (t!157975 List!18658)) )
))
(declare-datatypes ((IArray!12379 0))(
  ( (IArray!12380 (innerList!6247 List!18658)) )
))
(declare-datatypes ((Conc!6187 0))(
  ( (Node!6187 (left!14843 Conc!6187) (right!15173 Conc!6187) (csize!12604 Int) (cheight!6398 Int)) (Leaf!9046 (xs!9063 IArray!12379) (csize!12605 Int)) (Empty!6187) )
))
(declare-datatypes ((BalanceConc!12318 0))(
  ( (BalanceConc!12319 (c!279673 Conc!6187)) )
))
(declare-datatypes ((TokenValueInjection!6394 0))(
  ( (TokenValueInjection!6395 (toValue!4772 Int) (toChars!4631 Int)) )
))
(declare-datatypes ((Rule!6354 0))(
  ( (Rule!6355 (regex!3277 Regex!4605) (tag!3573 String!21167) (isSeparator!3277 Bool) (transformation!3277 TokenValueInjection!6394)) )
))
(declare-datatypes ((List!18659 0))(
  ( (Nil!18589) (Cons!18589 (h!23990 Rule!6354) (t!157976 List!18659)) )
))
(declare-fun rules!3447 () List!18659)

(declare-fun rule!422 () Rule!6354)

(declare-fun contains!3293 (List!18659 Rule!6354) Bool)

(assert (=> b!1706042 (= res!764707 (contains!3293 rules!3447 rule!422))))

(declare-fun tp!487240 () Bool)

(declare-fun e!1091162 () Bool)

(declare-fun e!1091159 () Bool)

(declare-fun b!1706043 () Bool)

(declare-datatypes ((Token!6120 0))(
  ( (Token!6121 (value!103067 TokenValue!3367) (rule!5209 Rule!6354) (size!14804 Int) (originalCharacters!4091 List!18658)) )
))
(declare-fun token!523 () Token!6120)

(declare-fun inv!23980 (String!21167) Bool)

(declare-fun inv!23983 (TokenValueInjection!6394) Bool)

(assert (=> b!1706043 (= e!1091162 (and tp!487240 (inv!23980 (tag!3573 (rule!5209 token!523))) (inv!23983 (transformation!3277 (rule!5209 token!523))) e!1091159))))

(declare-fun e!1091154 () Bool)

(assert (=> b!1706044 (= e!1091154 (and tp!487234 tp!487232))))

(declare-fun e!1091160 () Bool)

(assert (=> b!1706045 (= e!1091160 (and tp!487231 tp!487237))))

(declare-fun b!1706046 () Bool)

(declare-fun res!764708 () Bool)

(assert (=> b!1706046 (=> (not res!764708) (not e!1091156))))

(declare-datatypes ((LexerInterface!2906 0))(
  ( (LexerInterfaceExt!2903 (__x!12037 Int)) (Lexer!2904) )
))
(declare-fun thiss!24550 () LexerInterface!2906)

(declare-fun rulesInvariant!2575 (LexerInterface!2906 List!18659) Bool)

(assert (=> b!1706046 (= res!764708 (rulesInvariant!2575 thiss!24550 rules!3447))))

(declare-fun b!1706047 () Bool)

(declare-fun res!764710 () Bool)

(declare-fun e!1091155 () Bool)

(assert (=> b!1706047 (=> (not res!764710) (not e!1091155))))

(declare-datatypes ((tuple2!18334 0))(
  ( (tuple2!18335 (_1!10569 Token!6120) (_2!10569 List!18658)) )
))
(declare-datatypes ((Option!3601 0))(
  ( (None!3600) (Some!3600 (v!24975 tuple2!18334)) )
))
(declare-fun lt!652372 () Option!3601)

(declare-fun get!5459 (Option!3601) tuple2!18334)

(assert (=> b!1706047 (= res!764710 (= (_1!10569 (get!5459 lt!652372)) token!523))))

(declare-fun b!1706048 () Bool)

(assert (=> b!1706048 (= e!1091156 e!1091155)))

(declare-fun res!764709 () Bool)

(assert (=> b!1706048 (=> (not res!764709) (not e!1091155))))

(declare-fun isDefined!2946 (Option!3601) Bool)

(assert (=> b!1706048 (= res!764709 (isDefined!2946 lt!652372))))

(declare-fun maxPrefix!1460 (LexerInterface!2906 List!18659 List!18658) Option!3601)

(declare-fun list!7494 (BalanceConc!12318) List!18658)

(declare-fun charsOf!1926 (Token!6120) BalanceConc!12318)

(assert (=> b!1706048 (= lt!652372 (maxPrefix!1460 thiss!24550 rules!3447 (list!7494 (charsOf!1926 token!523))))))

(declare-fun res!764711 () Bool)

(assert (=> start!166510 (=> (not res!764711) (not e!1091156))))

(get-info :version)

(assert (=> start!166510 (= res!764711 ((_ is Lexer!2904) thiss!24550))))

(assert (=> start!166510 e!1091156))

(assert (=> start!166510 true))

(assert (=> start!166510 e!1091157))

(declare-fun e!1091165 () Bool)

(assert (=> start!166510 e!1091165))

(declare-fun e!1091161 () Bool)

(declare-fun inv!23984 (Token!6120) Bool)

(assert (=> start!166510 (and (inv!23984 token!523) e!1091161)))

(declare-fun b!1706049 () Bool)

(declare-fun tp!487236 () Bool)

(assert (=> b!1706049 (= e!1091153 (and tp!487236 (inv!23980 (tag!3573 (h!23990 rules!3447))) (inv!23983 (transformation!3277 (h!23990 rules!3447))) e!1091154))))

(declare-fun b!1706050 () Bool)

(assert (=> b!1706050 (= e!1091155 false)))

(declare-fun lt!652371 () Bool)

(declare-fun rulesValidInductive!1070 (LexerInterface!2906 List!18659) Bool)

(assert (=> b!1706050 (= lt!652371 (rulesValidInductive!1070 thiss!24550 rules!3447))))

(declare-fun tp!487230 () Bool)

(declare-fun b!1706051 () Bool)

(declare-fun inv!21 (TokenValue!3367) Bool)

(assert (=> b!1706051 (= e!1091161 (and (inv!21 (value!103067 token!523)) e!1091162 tp!487230))))

(declare-fun b!1706052 () Bool)

(declare-fun res!764706 () Bool)

(assert (=> b!1706052 (=> (not res!764706) (not e!1091156))))

(declare-fun isEmpty!11668 (List!18659) Bool)

(assert (=> b!1706052 (= res!764706 (not (isEmpty!11668 rules!3447)))))

(declare-fun tp!487233 () Bool)

(declare-fun b!1706053 () Bool)

(assert (=> b!1706053 (= e!1091165 (and tp!487233 (inv!23980 (tag!3573 rule!422)) (inv!23983 (transformation!3277 rule!422)) e!1091160))))

(assert (=> b!1706054 (= e!1091159 (and tp!487235 tp!487239))))

(assert (= (and start!166510 res!764711) b!1706052))

(assert (= (and b!1706052 res!764706) b!1706046))

(assert (= (and b!1706046 res!764708) b!1706042))

(assert (= (and b!1706042 res!764707) b!1706048))

(assert (= (and b!1706048 res!764709) b!1706047))

(assert (= (and b!1706047 res!764710) b!1706050))

(assert (= b!1706049 b!1706044))

(assert (= b!1706041 b!1706049))

(assert (= (and start!166510 ((_ is Cons!18589) rules!3447)) b!1706041))

(assert (= b!1706053 b!1706045))

(assert (= start!166510 b!1706053))

(assert (= b!1706043 b!1706054))

(assert (= b!1706051 b!1706043))

(assert (= start!166510 b!1706051))

(declare-fun m!2109807 () Bool)

(assert (=> b!1706051 m!2109807))

(declare-fun m!2109809 () Bool)

(assert (=> b!1706052 m!2109809))

(declare-fun m!2109811 () Bool)

(assert (=> b!1706050 m!2109811))

(declare-fun m!2109813 () Bool)

(assert (=> b!1706043 m!2109813))

(declare-fun m!2109815 () Bool)

(assert (=> b!1706043 m!2109815))

(declare-fun m!2109817 () Bool)

(assert (=> b!1706046 m!2109817))

(declare-fun m!2109819 () Bool)

(assert (=> b!1706053 m!2109819))

(declare-fun m!2109821 () Bool)

(assert (=> b!1706053 m!2109821))

(declare-fun m!2109823 () Bool)

(assert (=> b!1706047 m!2109823))

(declare-fun m!2109825 () Bool)

(assert (=> b!1706048 m!2109825))

(declare-fun m!2109827 () Bool)

(assert (=> b!1706048 m!2109827))

(assert (=> b!1706048 m!2109827))

(declare-fun m!2109829 () Bool)

(assert (=> b!1706048 m!2109829))

(assert (=> b!1706048 m!2109829))

(declare-fun m!2109831 () Bool)

(assert (=> b!1706048 m!2109831))

(declare-fun m!2109833 () Bool)

(assert (=> b!1706042 m!2109833))

(declare-fun m!2109835 () Bool)

(assert (=> start!166510 m!2109835))

(declare-fun m!2109837 () Bool)

(assert (=> b!1706049 m!2109837))

(declare-fun m!2109839 () Bool)

(assert (=> b!1706049 m!2109839))

(check-sat (not b!1706051) (not b!1706048) (not b_next!46757) (not b!1706046) b_and!123291 b_and!123295 (not b!1706047) b_and!123293 b_and!123289 (not b_next!46763) (not b_next!46761) (not b!1706041) (not b!1706043) (not b_next!46765) (not b!1706052) b_and!123297 (not b!1706050) (not b!1706042) (not b!1706049) b_and!123299 (not start!166510) (not b_next!46755) (not b!1706053) (not b_next!46759))
(check-sat (not b_next!46765) (not b_next!46757) b_and!123297 b_and!123291 b_and!123295 b_and!123299 b_and!123293 b_and!123289 (not b_next!46763) (not b_next!46755) (not b_next!46759) (not b_next!46761))
