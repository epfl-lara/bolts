; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349398 () Bool)

(assert start!349398)

(declare-fun b!3705139 () Bool)

(declare-fun b_free!99029 () Bool)

(declare-fun b_next!99733 () Bool)

(assert (=> b!3705139 (= b_free!99029 (not b_next!99733))))

(declare-fun tp!1126880 () Bool)

(declare-fun b_and!277263 () Bool)

(assert (=> b!3705139 (= tp!1126880 b_and!277263)))

(declare-fun b_free!99031 () Bool)

(declare-fun b_next!99735 () Bool)

(assert (=> b!3705139 (= b_free!99031 (not b_next!99735))))

(declare-fun tp!1126883 () Bool)

(declare-fun b_and!277265 () Bool)

(assert (=> b!3705139 (= tp!1126883 b_and!277265)))

(declare-fun b!3705142 () Bool)

(declare-fun b_free!99033 () Bool)

(declare-fun b_next!99737 () Bool)

(assert (=> b!3705142 (= b_free!99033 (not b_next!99737))))

(declare-fun tp!1126882 () Bool)

(declare-fun b_and!277267 () Bool)

(assert (=> b!3705142 (= tp!1126882 b_and!277267)))

(declare-fun b_free!99035 () Bool)

(declare-fun b_next!99739 () Bool)

(assert (=> b!3705142 (= b_free!99035 (not b_next!99739))))

(declare-fun tp!1126878 () Bool)

(declare-fun b_and!277269 () Bool)

(assert (=> b!3705142 (= tp!1126878 b_and!277269)))

(declare-fun e!2295116 () Bool)

(assert (=> b!3705139 (= e!2295116 (and tp!1126880 tp!1126883))))

(declare-fun b!3705140 () Bool)

(declare-fun res!1507298 () Bool)

(declare-fun e!2295112 () Bool)

(assert (=> b!3705140 (=> (not res!1507298) (not e!2295112))))

(declare-datatypes ((List!39616 0))(
  ( (Nil!39492) (Cons!39492 (h!44912 (_ BitVec 16)) (t!302299 List!39616)) )
))
(declare-datatypes ((TokenValue!6252 0))(
  ( (FloatLiteralValue!12504 (text!44209 List!39616)) (TokenValueExt!6251 (__x!24721 Int)) (Broken!31260 (value!192018 List!39616)) (Object!6375) (End!6252) (Def!6252) (Underscore!6252) (Match!6252) (Else!6252) (Error!6252) (Case!6252) (If!6252) (Extends!6252) (Abstract!6252) (Class!6252) (Val!6252) (DelimiterValue!12504 (del!6312 List!39616)) (KeywordValue!6258 (value!192019 List!39616)) (CommentValue!12504 (value!192020 List!39616)) (WhitespaceValue!12504 (value!192021 List!39616)) (IndentationValue!6252 (value!192022 List!39616)) (String!44593) (Int32!6252) (Broken!31261 (value!192023 List!39616)) (Boolean!6253) (Unit!57411) (OperatorValue!6255 (op!6312 List!39616)) (IdentifierValue!12504 (value!192024 List!39616)) (IdentifierValue!12505 (value!192025 List!39616)) (WhitespaceValue!12505 (value!192026 List!39616)) (True!12504) (False!12504) (Broken!31262 (value!192027 List!39616)) (Broken!31263 (value!192028 List!39616)) (True!12505) (RightBrace!6252) (RightBracket!6252) (Colon!6252) (Null!6252) (Comma!6252) (LeftBracket!6252) (False!12505) (LeftBrace!6252) (ImaginaryLiteralValue!6252 (text!44210 List!39616)) (StringLiteralValue!18756 (value!192029 List!39616)) (EOFValue!6252 (value!192030 List!39616)) (IdentValue!6252 (value!192031 List!39616)) (DelimiterValue!12505 (value!192032 List!39616)) (DedentValue!6252 (value!192033 List!39616)) (NewLineValue!6252 (value!192034 List!39616)) (IntegerValue!18756 (value!192035 (_ BitVec 32)) (text!44211 List!39616)) (IntegerValue!18757 (value!192036 Int) (text!44212 List!39616)) (Times!6252) (Or!6252) (Equal!6252) (Minus!6252) (Broken!31264 (value!192037 List!39616)) (And!6252) (Div!6252) (LessEqual!6252) (Mod!6252) (Concat!17033) (Not!6252) (Plus!6252) (SpaceValue!6252 (value!192038 List!39616)) (IntegerValue!18758 (value!192039 Int) (text!44213 List!39616)) (StringLiteralValue!18757 (text!44214 List!39616)) (FloatLiteralValue!12505 (text!44215 List!39616)) (BytesLiteralValue!6252 (value!192040 List!39616)) (CommentValue!12505 (value!192041 List!39616)) (StringLiteralValue!18758 (value!192042 List!39616)) (ErrorTokenValue!6252 (msg!6313 List!39616)) )
))
(declare-datatypes ((C!21748 0))(
  ( (C!21749 (val!12922 Int)) )
))
(declare-datatypes ((List!39617 0))(
  ( (Nil!39493) (Cons!39493 (h!44913 C!21748) (t!302300 List!39617)) )
))
(declare-datatypes ((IArray!24243 0))(
  ( (IArray!24244 (innerList!12179 List!39617)) )
))
(declare-datatypes ((Conc!12119 0))(
  ( (Node!12119 (left!30688 Conc!12119) (right!31018 Conc!12119) (csize!24468 Int) (cheight!12330 Int)) (Leaf!18741 (xs!15321 IArray!24243) (csize!24469 Int)) (Empty!12119) )
))
(declare-datatypes ((BalanceConc!23852 0))(
  ( (BalanceConc!23853 (c!639988 Conc!12119)) )
))
(declare-datatypes ((Regex!10781 0))(
  ( (ElementMatch!10781 (c!639989 C!21748)) (Concat!17034 (regOne!22074 Regex!10781) (regTwo!22074 Regex!10781)) (EmptyExpr!10781) (Star!10781 (reg!11110 Regex!10781)) (EmptyLang!10781) (Union!10781 (regOne!22075 Regex!10781) (regTwo!22075 Regex!10781)) )
))
(declare-datatypes ((String!44594 0))(
  ( (String!44595 (value!192043 String)) )
))
(declare-datatypes ((TokenValueInjection!11932 0))(
  ( (TokenValueInjection!11933 (toValue!8366 Int) (toChars!8225 Int)) )
))
(declare-datatypes ((Rule!11844 0))(
  ( (Rule!11845 (regex!6022 Regex!10781) (tag!6880 String!44594) (isSeparator!6022 Bool) (transformation!6022 TokenValueInjection!11932)) )
))
(declare-datatypes ((List!39618 0))(
  ( (Nil!39494) (Cons!39494 (h!44914 Rule!11844) (t!302301 List!39618)) )
))
(declare-fun rules!2525 () List!39618)

(declare-fun tag!164 () String!44594)

(get-info :version)

(assert (=> b!3705140 (= res!1507298 (and (or (not ((_ is Cons!39494) rules!2525)) (not (= (tag!6880 (h!44914 rules!2525)) tag!164))) (or (not ((_ is Cons!39494) rules!2525)) (= (tag!6880 (h!44914 rules!2525)) tag!164)) (not ((_ is Nil!39494) rules!2525))))))

(declare-fun res!1507296 () Bool)

(assert (=> start!349398 (=> (not res!1507296) (not e!2295112))))

(declare-datatypes ((LexerInterface!5611 0))(
  ( (LexerInterfaceExt!5608 (__x!24722 Int)) (Lexer!5609) )
))
(declare-fun thiss!19663 () LexerInterface!5611)

(assert (=> start!349398 (= res!1507296 ((_ is Lexer!5609) thiss!19663))))

(assert (=> start!349398 e!2295112))

(assert (=> start!349398 true))

(declare-fun e!2295111 () Bool)

(assert (=> start!349398 e!2295111))

(declare-fun inv!52993 (String!44594) Bool)

(assert (=> start!349398 (inv!52993 tag!164)))

(declare-fun b!3705141 () Bool)

(declare-fun e!2295113 () Bool)

(declare-fun e!2295115 () Bool)

(assert (=> b!3705141 (= e!2295113 e!2295115)))

(declare-fun e!2295114 () Bool)

(assert (=> b!3705142 (= e!2295114 (and tp!1126882 tp!1126878))))

(declare-fun b!3705143 () Bool)

(declare-fun e!2295110 () Bool)

(declare-fun tp!1126884 () Bool)

(assert (=> b!3705143 (= e!2295111 (and e!2295110 tp!1126884))))

(declare-fun b!3705144 () Bool)

(declare-fun e!2295108 () Bool)

(declare-datatypes ((Option!8558 0))(
  ( (None!8557) (Some!8557 (v!38541 Rule!11844)) )
))
(declare-fun lt!1296278 () Option!8558)

(declare-fun isDefined!6743 (Option!8558) Bool)

(assert (=> b!3705144 (= e!2295108 (not (isDefined!6743 lt!1296278)))))

(declare-fun b!3705145 () Bool)

(assert (=> b!3705145 (= e!2295112 e!2295108)))

(declare-fun res!1507297 () Bool)

(assert (=> b!3705145 (=> (not res!1507297) (not e!2295108))))

(declare-fun isEmpty!23480 (Option!8558) Bool)

(assert (=> b!3705145 (= res!1507297 (not (isEmpty!23480 lt!1296278)))))

(declare-fun err!4169 () Option!8558)

(assert (=> b!3705145 (= lt!1296278 err!4169)))

(assert (=> b!3705145 true))

(assert (=> b!3705145 e!2295113))

(declare-fun tp!1126879 () Bool)

(declare-fun b!3705146 () Bool)

(declare-fun inv!52995 (TokenValueInjection!11932) Bool)

(assert (=> b!3705146 (= e!2295115 (and tp!1126879 (inv!52993 (tag!6880 (v!38541 err!4169))) (inv!52995 (transformation!6022 (v!38541 err!4169))) e!2295114))))

(declare-fun b!3705147 () Bool)

(declare-fun res!1507295 () Bool)

(assert (=> b!3705147 (=> (not res!1507295) (not e!2295112))))

(declare-fun rulesInvariant!5008 (LexerInterface!5611 List!39618) Bool)

(assert (=> b!3705147 (= res!1507295 (rulesInvariant!5008 thiss!19663 rules!2525))))

(declare-fun tp!1126881 () Bool)

(declare-fun b!3705148 () Bool)

(assert (=> b!3705148 (= e!2295110 (and tp!1126881 (inv!52993 (tag!6880 (h!44914 rules!2525))) (inv!52995 (transformation!6022 (h!44914 rules!2525))) e!2295116))))

(assert (= (and start!349398 res!1507296) b!3705147))

(assert (= (and b!3705147 res!1507295) b!3705140))

(assert (= (and b!3705140 res!1507298) b!3705145))

(assert (= b!3705146 b!3705142))

(assert (= b!3705141 b!3705146))

(assert (= (and b!3705145 ((_ is Some!8557) err!4169)) b!3705141))

(assert (= (and b!3705145 res!1507297) b!3705144))

(assert (= b!3705148 b!3705139))

(assert (= b!3705143 b!3705148))

(assert (= (and start!349398 ((_ is Cons!39494) rules!2525)) b!3705143))

(declare-fun m!4215601 () Bool)

(assert (=> b!3705146 m!4215601))

(declare-fun m!4215603 () Bool)

(assert (=> b!3705146 m!4215603))

(declare-fun m!4215605 () Bool)

(assert (=> start!349398 m!4215605))

(declare-fun m!4215607 () Bool)

(assert (=> b!3705147 m!4215607))

(declare-fun m!4215609 () Bool)

(assert (=> b!3705145 m!4215609))

(declare-fun m!4215611 () Bool)

(assert (=> b!3705148 m!4215611))

(declare-fun m!4215613 () Bool)

(assert (=> b!3705148 m!4215613))

(declare-fun m!4215615 () Bool)

(assert (=> b!3705144 m!4215615))

(check-sat b_and!277267 b_and!277265 (not b_next!99735) (not start!349398) b_and!277269 (not b!3705144) (not b!3705143) (not b_next!99739) (not b!3705148) (not b_next!99733) (not b_next!99737) (not b!3705147) (not b!3705145) b_and!277263 (not b!3705146))
(check-sat b_and!277267 b_and!277265 (not b_next!99735) b_and!277269 (not b_next!99739) (not b_next!99733) (not b_next!99737) b_and!277263)
