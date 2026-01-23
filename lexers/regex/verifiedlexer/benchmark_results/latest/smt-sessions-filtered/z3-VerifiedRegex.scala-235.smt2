; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3618 () Bool)

(assert start!3618)

(declare-fun b!50188 () Bool)

(declare-fun b_free!1517 () Bool)

(declare-fun b_next!1517 () Bool)

(assert (=> b!50188 (= b_free!1517 (not b_next!1517))))

(declare-fun tp!33320 () Bool)

(declare-fun b_and!1559 () Bool)

(assert (=> b!50188 (= tp!33320 b_and!1559)))

(declare-fun b_free!1519 () Bool)

(declare-fun b_next!1519 () Bool)

(assert (=> b!50188 (= b_free!1519 (not b_next!1519))))

(declare-fun tp!33317 () Bool)

(declare-fun b_and!1561 () Bool)

(assert (=> b!50188 (= tp!33317 b_and!1561)))

(declare-fun b!50177 () Bool)

(declare-fun e!29385 () Bool)

(declare-fun e!29384 () Bool)

(declare-fun tp!33318 () Bool)

(declare-datatypes ((List!950 0))(
  ( (Nil!944) (Cons!944 (h!6341 (_ BitVec 16)) (t!17153 List!950)) )
))
(declare-datatypes ((TokenValue!191 0))(
  ( (FloatLiteralValue!382 (text!1782 List!950)) (TokenValueExt!190 (__x!1477 Int)) (Broken!955 (value!8600 List!950)) (Object!196) (End!191) (Def!191) (Underscore!191) (Match!191) (Else!191) (Error!191) (Case!191) (If!191) (Extends!191) (Abstract!191) (Class!191) (Val!191) (DelimiterValue!382 (del!251 List!950)) (KeywordValue!197 (value!8601 List!950)) (CommentValue!382 (value!8602 List!950)) (WhitespaceValue!382 (value!8603 List!950)) (IndentationValue!191 (value!8604 List!950)) (String!1346) (Int32!191) (Broken!956 (value!8605 List!950)) (Boolean!192) (Unit!523) (OperatorValue!194 (op!251 List!950)) (IdentifierValue!382 (value!8606 List!950)) (IdentifierValue!383 (value!8607 List!950)) (WhitespaceValue!383 (value!8608 List!950)) (True!382) (False!382) (Broken!957 (value!8609 List!950)) (Broken!958 (value!8610 List!950)) (True!383) (RightBrace!191) (RightBracket!191) (Colon!191) (Null!191) (Comma!191) (LeftBracket!191) (False!383) (LeftBrace!191) (ImaginaryLiteralValue!191 (text!1783 List!950)) (StringLiteralValue!573 (value!8611 List!950)) (EOFValue!191 (value!8612 List!950)) (IdentValue!191 (value!8613 List!950)) (DelimiterValue!383 (value!8614 List!950)) (DedentValue!191 (value!8615 List!950)) (NewLineValue!191 (value!8616 List!950)) (IntegerValue!573 (value!8617 (_ BitVec 32)) (text!1784 List!950)) (IntegerValue!574 (value!8618 Int) (text!1785 List!950)) (Times!191) (Or!191) (Equal!191) (Minus!191) (Broken!959 (value!8619 List!950)) (And!191) (Div!191) (LessEqual!191) (Mod!191) (Concat!460) (Not!191) (Plus!191) (SpaceValue!191 (value!8620 List!950)) (IntegerValue!575 (value!8621 Int) (text!1786 List!950)) (StringLiteralValue!574 (text!1787 List!950)) (FloatLiteralValue!383 (text!1788 List!950)) (BytesLiteralValue!191 (value!8622 List!950)) (CommentValue!383 (value!8623 List!950)) (StringLiteralValue!575 (value!8624 List!950)) (ErrorTokenValue!191 (msg!252 List!950)) )
))
(declare-datatypes ((C!1460 0))(
  ( (C!1461 (val!337 Int)) )
))
(declare-datatypes ((List!951 0))(
  ( (Nil!945) (Cons!945 (h!6342 C!1460) (t!17154 List!951)) )
))
(declare-datatypes ((IArray!413 0))(
  ( (IArray!414 (innerList!264 List!951)) )
))
(declare-datatypes ((Conc!206 0))(
  ( (Node!206 (left!719 Conc!206) (right!1049 Conc!206) (csize!642 Int) (cheight!417 Int)) (Leaf!442 (xs!2785 IArray!413) (csize!643 Int)) (Empty!206) )
))
(declare-datatypes ((String!1347 0))(
  ( (String!1348 (value!8625 String)) )
))
(declare-datatypes ((BalanceConc!416 0))(
  ( (BalanceConc!417 (c!16591 Conc!206)) )
))
(declare-datatypes ((Regex!269 0))(
  ( (ElementMatch!269 (c!16592 C!1460)) (Concat!461 (regOne!1050 Regex!269) (regTwo!1050 Regex!269)) (EmptyExpr!269) (Star!269 (reg!598 Regex!269)) (EmptyLang!269) (Union!269 (regOne!1051 Regex!269) (regTwo!1051 Regex!269)) )
))
(declare-datatypes ((TokenValueInjection!206 0))(
  ( (TokenValueInjection!207 (toValue!680 Int) (toChars!539 Int)) )
))
(declare-datatypes ((Rule!202 0))(
  ( (Rule!203 (regex!201 Regex!269) (tag!379 String!1347) (isSeparator!201 Bool) (transformation!201 TokenValueInjection!206)) )
))
(declare-datatypes ((List!952 0))(
  ( (Nil!946) (Cons!946 (h!6343 Rule!202) (t!17155 List!952)) )
))
(declare-fun rules!1069 () List!952)

(declare-fun inv!1256 (String!1347) Bool)

(declare-fun inv!1260 (TokenValueInjection!206) Bool)

(assert (=> b!50177 (= e!29384 (and tp!33318 (inv!1256 (tag!379 (h!6343 rules!1069))) (inv!1260 (transformation!201 (h!6343 rules!1069))) e!29385))))

(declare-fun b!50178 () Bool)

(declare-fun e!29389 () Bool)

(declare-fun e!29388 () Bool)

(assert (=> b!50178 (= e!29389 e!29388)))

(declare-fun res!32952 () Bool)

(assert (=> b!50178 (=> (not res!32952) (not e!29388))))

(declare-fun from!821 () Int)

(declare-fun lt!8219 () Int)

(assert (=> b!50178 (= res!32952 (<= from!821 lt!8219))))

(declare-datatypes ((Token!166 0))(
  ( (Token!167 (value!8626 TokenValue!191) (rule!676 Rule!202) (size!901 Int) (originalCharacters!254 List!951)) )
))
(declare-datatypes ((List!953 0))(
  ( (Nil!947) (Cons!947 (h!6344 Token!166) (t!17156 List!953)) )
))
(declare-datatypes ((IArray!415 0))(
  ( (IArray!416 (innerList!265 List!953)) )
))
(declare-datatypes ((Conc!207 0))(
  ( (Node!207 (left!720 Conc!207) (right!1050 Conc!207) (csize!644 Int) (cheight!418 Int)) (Leaf!443 (xs!2786 IArray!415) (csize!645 Int)) (Empty!207) )
))
(declare-datatypes ((BalanceConc!418 0))(
  ( (BalanceConc!419 (c!16593 Conc!207)) )
))
(declare-fun v!6227 () BalanceConc!418)

(declare-fun size!902 (BalanceConc!418) Int)

(assert (=> b!50178 (= lt!8219 (size!902 v!6227))))

(declare-fun b!50179 () Bool)

(declare-fun res!32959 () Bool)

(assert (=> b!50179 (=> (not res!32959) (not e!29388))))

(declare-datatypes ((LexerInterface!93 0))(
  ( (LexerInterfaceExt!90 (__x!1478 Int)) (Lexer!91) )
))
(declare-fun thiss!11059 () LexerInterface!93)

(declare-fun rulesProduceEachTokenIndividually!31 (LexerInterface!93 List!952 BalanceConc!418) Bool)

(assert (=> b!50179 (= res!32959 (rulesProduceEachTokenIndividually!31 thiss!11059 rules!1069 v!6227))))

(declare-fun b!50180 () Bool)

(declare-fun e!29381 () Bool)

(assert (=> b!50180 (= e!29381 true)))

(declare-fun lt!8212 () Bool)

(declare-fun lt!8213 () List!953)

(declare-fun rulesProduceEachTokenIndividuallyList!30 (LexerInterface!93 List!952 List!953) Bool)

(assert (=> b!50180 (= lt!8212 (rulesProduceEachTokenIndividuallyList!30 thiss!11059 rules!1069 lt!8213))))

(declare-fun b!50181 () Bool)

(declare-fun e!29383 () Bool)

(assert (=> b!50181 (= e!29388 (not e!29383))))

(declare-fun res!32951 () Bool)

(assert (=> b!50181 (=> res!32951 e!29383)))

(declare-fun lt!8214 () Token!166)

(declare-fun contains!68 (BalanceConc!418 Token!166) Bool)

(assert (=> b!50181 (= res!32951 (not (contains!68 v!6227 lt!8214)))))

(declare-fun apply!52 (BalanceConc!418 Int) Token!166)

(assert (=> b!50181 (= lt!8214 (apply!52 v!6227 from!821))))

(declare-fun lt!8217 () List!953)

(declare-fun tail!43 (List!953) List!953)

(declare-fun drop!18 (List!953 Int) List!953)

(assert (=> b!50181 (= (tail!43 lt!8217) (drop!18 lt!8213 (+ 2 from!821)))))

(declare-datatypes ((Unit!524 0))(
  ( (Unit!525) )
))
(declare-fun lt!8220 () Unit!524)

(declare-fun lemmaDropTail!14 (List!953 Int) Unit!524)

(assert (=> b!50181 (= lt!8220 (lemmaDropTail!14 lt!8213 (+ 1 from!821)))))

(declare-fun lt!8216 () List!953)

(assert (=> b!50181 (= (tail!43 lt!8216) lt!8217)))

(declare-fun lt!8215 () Unit!524)

(assert (=> b!50181 (= lt!8215 (lemmaDropTail!14 lt!8213 from!821))))

(declare-fun head!358 (List!953) Token!166)

(declare-fun apply!53 (List!953 Int) Token!166)

(assert (=> b!50181 (= (head!358 lt!8217) (apply!53 lt!8213 (+ 1 from!821)))))

(assert (=> b!50181 (= lt!8217 (drop!18 lt!8213 (+ 1 from!821)))))

(declare-fun lt!8222 () Unit!524)

(declare-fun lemmaDropApply!18 (List!953 Int) Unit!524)

(assert (=> b!50181 (= lt!8222 (lemmaDropApply!18 lt!8213 (+ 1 from!821)))))

(assert (=> b!50181 (= (head!358 lt!8216) (apply!53 lt!8213 from!821))))

(assert (=> b!50181 (= lt!8216 (drop!18 lt!8213 from!821))))

(declare-fun lt!8218 () Unit!524)

(assert (=> b!50181 (= lt!8218 (lemmaDropApply!18 lt!8213 from!821))))

(declare-fun list!242 (BalanceConc!418) List!953)

(assert (=> b!50181 (= lt!8213 (list!242 v!6227))))

(declare-fun b!50182 () Bool)

(declare-fun res!32953 () Bool)

(assert (=> b!50182 (=> res!32953 e!29383)))

(declare-fun contains!69 (List!953 Token!166) Bool)

(assert (=> b!50182 (= res!32953 (not (contains!69 lt!8213 lt!8214)))))

(declare-fun res!32955 () Bool)

(assert (=> start!3618 (=> (not res!32955) (not e!29389))))

(get-info :version)

(assert (=> start!3618 (= res!32955 (and ((_ is Lexer!91) thiss!11059) (>= from!821 0)))))

(assert (=> start!3618 e!29389))

(assert (=> start!3618 true))

(declare-fun e!29382 () Bool)

(declare-fun inv!1261 (BalanceConc!418) Bool)

(assert (=> start!3618 (and (inv!1261 v!6227) e!29382)))

(declare-fun e!29386 () Bool)

(assert (=> start!3618 e!29386))

(declare-fun b!50183 () Bool)

(declare-fun res!32957 () Bool)

(assert (=> b!50183 (=> (not res!32957) (not e!29388))))

(declare-fun rulesInvariant!87 (LexerInterface!93 List!952) Bool)

(assert (=> b!50183 (= res!32957 (rulesInvariant!87 thiss!11059 rules!1069))))

(declare-fun b!50184 () Bool)

(declare-fun res!32956 () Bool)

(assert (=> b!50184 (=> (not res!32956) (not e!29388))))

(declare-fun isEmpty!187 (List!952) Bool)

(assert (=> b!50184 (= res!32956 (not (isEmpty!187 rules!1069)))))

(declare-fun b!50185 () Bool)

(declare-fun res!32958 () Bool)

(assert (=> b!50185 (=> (not res!32958) (not e!29388))))

(assert (=> b!50185 (= res!32958 (< from!821 (- lt!8219 1)))))

(declare-fun b!50186 () Bool)

(declare-fun tp!33316 () Bool)

(declare-fun inv!1262 (Conc!207) Bool)

(assert (=> b!50186 (= e!29382 (and (inv!1262 (c!16593 v!6227)) tp!33316))))

(declare-fun b!50187 () Bool)

(declare-fun res!32954 () Bool)

(assert (=> b!50187 (=> res!32954 e!29381)))

(declare-fun lt!8221 () Token!166)

(assert (=> b!50187 (= res!32954 (not (contains!69 lt!8213 lt!8221)))))

(assert (=> b!50188 (= e!29385 (and tp!33320 tp!33317))))

(declare-fun b!50189 () Bool)

(declare-fun tp!33319 () Bool)

(assert (=> b!50189 (= e!29386 (and e!29384 tp!33319))))

(declare-fun b!50190 () Bool)

(assert (=> b!50190 (= e!29383 e!29381)))

(declare-fun res!32960 () Bool)

(assert (=> b!50190 (=> res!32960 e!29381)))

(assert (=> b!50190 (= res!32960 (not (contains!68 v!6227 lt!8221)))))

(assert (=> b!50190 (= lt!8221 (apply!52 v!6227 (+ 1 from!821)))))

(assert (= (and start!3618 res!32955) b!50178))

(assert (= (and b!50178 res!32952) b!50184))

(assert (= (and b!50184 res!32956) b!50183))

(assert (= (and b!50183 res!32957) b!50179))

(assert (= (and b!50179 res!32959) b!50185))

(assert (= (and b!50185 res!32958) b!50181))

(assert (= (and b!50181 (not res!32951)) b!50182))

(assert (= (and b!50182 (not res!32953)) b!50190))

(assert (= (and b!50190 (not res!32960)) b!50187))

(assert (= (and b!50187 (not res!32954)) b!50180))

(assert (= start!3618 b!50186))

(assert (= b!50177 b!50188))

(assert (= b!50189 b!50177))

(assert (= (and start!3618 ((_ is Cons!946) rules!1069)) b!50189))

(declare-fun m!24148 () Bool)

(assert (=> b!50181 m!24148))

(declare-fun m!24150 () Bool)

(assert (=> b!50181 m!24150))

(declare-fun m!24152 () Bool)

(assert (=> b!50181 m!24152))

(declare-fun m!24154 () Bool)

(assert (=> b!50181 m!24154))

(declare-fun m!24156 () Bool)

(assert (=> b!50181 m!24156))

(declare-fun m!24158 () Bool)

(assert (=> b!50181 m!24158))

(declare-fun m!24160 () Bool)

(assert (=> b!50181 m!24160))

(declare-fun m!24162 () Bool)

(assert (=> b!50181 m!24162))

(declare-fun m!24164 () Bool)

(assert (=> b!50181 m!24164))

(declare-fun m!24166 () Bool)

(assert (=> b!50181 m!24166))

(declare-fun m!24168 () Bool)

(assert (=> b!50181 m!24168))

(declare-fun m!24170 () Bool)

(assert (=> b!50181 m!24170))

(declare-fun m!24172 () Bool)

(assert (=> b!50181 m!24172))

(declare-fun m!24174 () Bool)

(assert (=> b!50181 m!24174))

(declare-fun m!24176 () Bool)

(assert (=> b!50181 m!24176))

(declare-fun m!24178 () Bool)

(assert (=> b!50181 m!24178))

(declare-fun m!24180 () Bool)

(assert (=> b!50179 m!24180))

(declare-fun m!24182 () Bool)

(assert (=> b!50190 m!24182))

(declare-fun m!24184 () Bool)

(assert (=> b!50190 m!24184))

(declare-fun m!24186 () Bool)

(assert (=> b!50177 m!24186))

(declare-fun m!24188 () Bool)

(assert (=> b!50177 m!24188))

(declare-fun m!24190 () Bool)

(assert (=> b!50183 m!24190))

(declare-fun m!24192 () Bool)

(assert (=> b!50187 m!24192))

(declare-fun m!24194 () Bool)

(assert (=> start!3618 m!24194))

(declare-fun m!24196 () Bool)

(assert (=> b!50184 m!24196))

(declare-fun m!24198 () Bool)

(assert (=> b!50180 m!24198))

(declare-fun m!24200 () Bool)

(assert (=> b!50178 m!24200))

(declare-fun m!24202 () Bool)

(assert (=> b!50182 m!24202))

(declare-fun m!24204 () Bool)

(assert (=> b!50186 m!24204))

(check-sat (not b_next!1519) (not b!50184) (not b!50189) (not b_next!1517) (not b!50187) (not b!50179) (not b!50178) b_and!1561 (not b!50182) (not b!50177) (not b!50181) (not b!50183) (not b!50190) (not start!3618) (not b!50186) b_and!1559 (not b!50180))
(check-sat b_and!1561 b_and!1559 (not b_next!1517) (not b_next!1519))
