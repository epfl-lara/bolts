; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218672 () Bool)

(assert start!218672)

(declare-fun b!2243283 () Bool)

(declare-fun b_free!65169 () Bool)

(declare-fun b_next!65873 () Bool)

(assert (=> b!2243283 (= b_free!65169 (not b_next!65873))))

(declare-fun tp!707514 () Bool)

(declare-fun b_and!175197 () Bool)

(assert (=> b!2243283 (= tp!707514 b_and!175197)))

(declare-fun b_free!65171 () Bool)

(declare-fun b_next!65875 () Bool)

(assert (=> b!2243283 (= b_free!65171 (not b_next!65875))))

(declare-fun tp!707511 () Bool)

(declare-fun b_and!175199 () Bool)

(assert (=> b!2243283 (= tp!707511 b_and!175199)))

(declare-fun b!2243287 () Bool)

(declare-fun b_free!65173 () Bool)

(declare-fun b_next!65877 () Bool)

(assert (=> b!2243287 (= b_free!65173 (not b_next!65877))))

(declare-fun tp!707507 () Bool)

(declare-fun b_and!175201 () Bool)

(assert (=> b!2243287 (= tp!707507 b_and!175201)))

(declare-fun b_free!65175 () Bool)

(declare-fun b_next!65879 () Bool)

(assert (=> b!2243287 (= b_free!65175 (not b_next!65879))))

(declare-fun tp!707505 () Bool)

(declare-fun b_and!175203 () Bool)

(assert (=> b!2243287 (= tp!707505 b_and!175203)))

(declare-fun b!2243279 () Bool)

(declare-fun b_free!65177 () Bool)

(declare-fun b_next!65881 () Bool)

(assert (=> b!2243279 (= b_free!65177 (not b_next!65881))))

(declare-fun tp!707513 () Bool)

(declare-fun b_and!175205 () Bool)

(assert (=> b!2243279 (= tp!707513 b_and!175205)))

(declare-fun b_free!65179 () Bool)

(declare-fun b_next!65883 () Bool)

(assert (=> b!2243279 (= b_free!65179 (not b_next!65883))))

(declare-fun tp!707510 () Bool)

(declare-fun b_and!175207 () Bool)

(assert (=> b!2243279 (= tp!707510 b_and!175207)))

(declare-fun e!1434717 () Bool)

(declare-fun tp!707506 () Bool)

(declare-fun b!2243278 () Bool)

(declare-fun e!1434715 () Bool)

(declare-datatypes ((List!26590 0))(
  ( (Nil!26496) (Cons!26496 (h!31897 (_ BitVec 16)) (t!200120 List!26590)) )
))
(declare-datatypes ((TokenValue!4351 0))(
  ( (FloatLiteralValue!8702 (text!30902 List!26590)) (TokenValueExt!4350 (__x!17762 Int)) (Broken!21755 (value!133181 List!26590)) (Object!4444) (End!4351) (Def!4351) (Underscore!4351) (Match!4351) (Else!4351) (Error!4351) (Case!4351) (If!4351) (Extends!4351) (Abstract!4351) (Class!4351) (Val!4351) (DelimiterValue!8702 (del!4411 List!26590)) (KeywordValue!4357 (value!133182 List!26590)) (CommentValue!8702 (value!133183 List!26590)) (WhitespaceValue!8702 (value!133184 List!26590)) (IndentationValue!4351 (value!133185 List!26590)) (String!28858) (Int32!4351) (Broken!21756 (value!133186 List!26590)) (Boolean!4352) (Unit!39497) (OperatorValue!4354 (op!4411 List!26590)) (IdentifierValue!8702 (value!133187 List!26590)) (IdentifierValue!8703 (value!133188 List!26590)) (WhitespaceValue!8703 (value!133189 List!26590)) (True!8702) (False!8702) (Broken!21757 (value!133190 List!26590)) (Broken!21758 (value!133191 List!26590)) (True!8703) (RightBrace!4351) (RightBracket!4351) (Colon!4351) (Null!4351) (Comma!4351) (LeftBracket!4351) (False!8703) (LeftBrace!4351) (ImaginaryLiteralValue!4351 (text!30903 List!26590)) (StringLiteralValue!13053 (value!133192 List!26590)) (EOFValue!4351 (value!133193 List!26590)) (IdentValue!4351 (value!133194 List!26590)) (DelimiterValue!8703 (value!133195 List!26590)) (DedentValue!4351 (value!133196 List!26590)) (NewLineValue!4351 (value!133197 List!26590)) (IntegerValue!13053 (value!133198 (_ BitVec 32)) (text!30904 List!26590)) (IntegerValue!13054 (value!133199 Int) (text!30905 List!26590)) (Times!4351) (Or!4351) (Equal!4351) (Minus!4351) (Broken!21759 (value!133200 List!26590)) (And!4351) (Div!4351) (LessEqual!4351) (Mod!4351) (Concat!10888) (Not!4351) (Plus!4351) (SpaceValue!4351 (value!133201 List!26590)) (IntegerValue!13055 (value!133202 Int) (text!30906 List!26590)) (StringLiteralValue!13054 (text!30907 List!26590)) (FloatLiteralValue!8703 (text!30908 List!26590)) (BytesLiteralValue!4351 (value!133203 List!26590)) (CommentValue!8703 (value!133204 List!26590)) (StringLiteralValue!13055 (value!133205 List!26590)) (ErrorTokenValue!4351 (msg!4412 List!26590)) )
))
(declare-datatypes ((C!13220 0))(
  ( (C!13221 (val!7658 Int)) )
))
(declare-datatypes ((List!26591 0))(
  ( (Nil!26497) (Cons!26497 (h!31898 C!13220) (t!200121 List!26591)) )
))
(declare-datatypes ((IArray!17059 0))(
  ( (IArray!17060 (innerList!8587 List!26591)) )
))
(declare-datatypes ((Conc!8527 0))(
  ( (Node!8527 (left!20154 Conc!8527) (right!20484 Conc!8527) (csize!17284 Int) (cheight!8738 Int)) (Leaf!12607 (xs!11469 IArray!17059) (csize!17285 Int)) (Empty!8527) )
))
(declare-datatypes ((BalanceConc!16782 0))(
  ( (BalanceConc!16783 (c!357161 Conc!8527)) )
))
(declare-datatypes ((String!28859 0))(
  ( (String!28860 (value!133206 String)) )
))
(declare-datatypes ((Regex!6537 0))(
  ( (ElementMatch!6537 (c!357162 C!13220)) (Concat!10889 (regOne!13586 Regex!6537) (regTwo!13586 Regex!6537)) (EmptyExpr!6537) (Star!6537 (reg!6866 Regex!6537)) (EmptyLang!6537) (Union!6537 (regOne!13587 Regex!6537) (regTwo!13587 Regex!6537)) )
))
(declare-datatypes ((TokenValueInjection!8242 0))(
  ( (TokenValueInjection!8243 (toValue!5919 Int) (toChars!5778 Int)) )
))
(declare-datatypes ((Rule!8178 0))(
  ( (Rule!8179 (regex!4189 Regex!6537) (tag!4679 String!28859) (isSeparator!4189 Bool) (transformation!4189 TokenValueInjection!8242)) )
))
(declare-datatypes ((List!26592 0))(
  ( (Nil!26498) (Cons!26498 (h!31899 Rule!8178) (t!200122 List!26592)) )
))
(declare-fun rules!1750 () List!26592)

(declare-fun inv!36025 (String!28859) Bool)

(declare-fun inv!36027 (TokenValueInjection!8242) Bool)

(assert (=> b!2243278 (= e!1434717 (and tp!707506 (inv!36025 (tag!4679 (h!31899 rules!1750))) (inv!36027 (transformation!4189 (h!31899 rules!1750))) e!1434715))))

(assert (=> b!2243279 (= e!1434715 (and tp!707513 tp!707510))))

(declare-fun b!2243280 () Bool)

(declare-fun res!958488 () Bool)

(declare-fun e!1434722 () Bool)

(assert (=> b!2243280 (=> (not res!958488) (not e!1434722))))

(declare-datatypes ((LexerInterface!3786 0))(
  ( (LexerInterfaceExt!3783 (__x!17763 Int)) (Lexer!3784) )
))
(declare-fun thiss!16613 () LexerInterface!3786)

(declare-fun rulesInvariant!3288 (LexerInterface!3786 List!26592) Bool)

(assert (=> b!2243280 (= res!958488 (rulesInvariant!3288 thiss!16613 rules!1750))))

(declare-fun e!1434719 () Bool)

(declare-fun e!1434713 () Bool)

(declare-fun tp!707508 () Bool)

(declare-fun b!2243281 () Bool)

(declare-fun otherR!12 () Rule!8178)

(assert (=> b!2243281 (= e!1434719 (and tp!707508 (inv!36025 (tag!4679 otherR!12)) (inv!36027 (transformation!4189 otherR!12)) e!1434713))))

(declare-fun b!2243282 () Bool)

(declare-fun res!958487 () Bool)

(assert (=> b!2243282 (=> (not res!958487) (not e!1434722))))

(declare-fun isEmpty!14914 (List!26592) Bool)

(assert (=> b!2243282 (= res!958487 (not (isEmpty!14914 rules!1750)))))

(assert (=> b!2243283 (= e!1434713 (and tp!707514 tp!707511))))

(declare-fun b!2243284 () Bool)

(declare-fun res!958490 () Bool)

(assert (=> b!2243284 (=> (not res!958490) (not e!1434722))))

(declare-fun contains!4536 (List!26592 Rule!8178) Bool)

(assert (=> b!2243284 (= res!958490 (contains!4536 rules!1750 otherR!12))))

(declare-fun b!2243285 () Bool)

(assert (=> b!2243285 (= e!1434722 false)))

(declare-fun lt!835014 () BalanceConc!16782)

(declare-fun input!1722 () List!26591)

(declare-fun seqFromList!2893 (List!26591) BalanceConc!16782)

(assert (=> b!2243285 (= lt!835014 (seqFromList!2893 input!1722))))

(declare-fun b!2243286 () Bool)

(declare-fun e!1434721 () Bool)

(declare-fun r!2363 () Rule!8178)

(declare-fun e!1434712 () Bool)

(declare-fun tp!707515 () Bool)

(assert (=> b!2243286 (= e!1434712 (and tp!707515 (inv!36025 (tag!4679 r!2363)) (inv!36027 (transformation!4189 r!2363)) e!1434721))))

(declare-fun res!958489 () Bool)

(assert (=> start!218672 (=> (not res!958489) (not e!1434722))))

(get-info :version)

(assert (=> start!218672 (= res!958489 ((_ is Lexer!3784) thiss!16613))))

(assert (=> start!218672 e!1434722))

(assert (=> start!218672 true))

(assert (=> start!218672 e!1434712))

(declare-fun e!1434723 () Bool)

(assert (=> start!218672 e!1434723))

(assert (=> start!218672 e!1434719))

(declare-fun e!1434716 () Bool)

(assert (=> start!218672 e!1434716))

(assert (=> b!2243287 (= e!1434721 (and tp!707507 tp!707505))))

(declare-fun b!2243288 () Bool)

(declare-fun tp!707509 () Bool)

(assert (=> b!2243288 (= e!1434716 (and e!1434717 tp!707509))))

(declare-fun b!2243289 () Bool)

(declare-fun tp_is_empty!10295 () Bool)

(declare-fun tp!707512 () Bool)

(assert (=> b!2243289 (= e!1434723 (and tp_is_empty!10295 tp!707512))))

(declare-fun b!2243290 () Bool)

(declare-fun res!958491 () Bool)

(assert (=> b!2243290 (=> (not res!958491) (not e!1434722))))

(assert (=> b!2243290 (= res!958491 (contains!4536 rules!1750 r!2363))))

(assert (= (and start!218672 res!958489) b!2243282))

(assert (= (and b!2243282 res!958487) b!2243280))

(assert (= (and b!2243280 res!958488) b!2243290))

(assert (= (and b!2243290 res!958491) b!2243284))

(assert (= (and b!2243284 res!958490) b!2243285))

(assert (= b!2243286 b!2243287))

(assert (= start!218672 b!2243286))

(assert (= (and start!218672 ((_ is Cons!26497) input!1722)) b!2243289))

(assert (= b!2243281 b!2243283))

(assert (= start!218672 b!2243281))

(assert (= b!2243278 b!2243279))

(assert (= b!2243288 b!2243278))

(assert (= (and start!218672 ((_ is Cons!26498) rules!1750)) b!2243288))

(declare-fun m!2675545 () Bool)

(assert (=> b!2243285 m!2675545))

(declare-fun m!2675547 () Bool)

(assert (=> b!2243290 m!2675547))

(declare-fun m!2675549 () Bool)

(assert (=> b!2243282 m!2675549))

(declare-fun m!2675551 () Bool)

(assert (=> b!2243284 m!2675551))

(declare-fun m!2675553 () Bool)

(assert (=> b!2243286 m!2675553))

(declare-fun m!2675555 () Bool)

(assert (=> b!2243286 m!2675555))

(declare-fun m!2675557 () Bool)

(assert (=> b!2243280 m!2675557))

(declare-fun m!2675559 () Bool)

(assert (=> b!2243281 m!2675559))

(declare-fun m!2675561 () Bool)

(assert (=> b!2243281 m!2675561))

(declare-fun m!2675563 () Bool)

(assert (=> b!2243278 m!2675563))

(declare-fun m!2675565 () Bool)

(assert (=> b!2243278 m!2675565))

(check-sat (not b!2243284) b_and!175203 (not b!2243288) (not b_next!65879) (not b!2243285) b_and!175205 (not b_next!65873) (not b!2243286) b_and!175197 b_and!175199 b_and!175201 (not b!2243290) (not b!2243289) (not b!2243280) (not b!2243282) (not b_next!65877) (not b_next!65883) (not b!2243278) (not b!2243281) b_and!175207 (not b_next!65881) (not b_next!65875) tp_is_empty!10295)
(check-sat b_and!175201 b_and!175203 (not b_next!65879) (not b_next!65877) (not b_next!65883) b_and!175205 (not b_next!65873) b_and!175207 b_and!175197 b_and!175199 (not b_next!65881) (not b_next!65875))
