; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3586 () Bool)

(assert start!3586)

(declare-fun b!49619 () Bool)

(declare-fun b_free!1453 () Bool)

(declare-fun b_next!1453 () Bool)

(assert (=> b!49619 (= b_free!1453 (not b_next!1453))))

(declare-fun tp!33077 () Bool)

(declare-fun b_and!1495 () Bool)

(assert (=> b!49619 (= tp!33077 b_and!1495)))

(declare-fun b_free!1455 () Bool)

(declare-fun b_next!1455 () Bool)

(assert (=> b!49619 (= b_free!1455 (not b_next!1455))))

(declare-fun tp!33078 () Bool)

(declare-fun b_and!1497 () Bool)

(assert (=> b!49619 (= tp!33078 b_and!1497)))

(declare-fun b!49610 () Bool)

(declare-fun res!32576 () Bool)

(declare-fun e!29004 () Bool)

(assert (=> b!49610 (=> (not res!32576) (not e!29004))))

(declare-datatypes ((LexerInterface!77 0))(
  ( (LexerInterfaceExt!74 (__x!1445 Int)) (Lexer!75) )
))
(declare-fun thiss!11059 () LexerInterface!77)

(declare-datatypes ((List!886 0))(
  ( (Nil!880) (Cons!880 (h!6277 (_ BitVec 16)) (t!17089 List!886)) )
))
(declare-datatypes ((TokenValue!175 0))(
  ( (FloatLiteralValue!350 (text!1670 List!886)) (TokenValueExt!174 (__x!1446 Int)) (Broken!875 (value!8144 List!886)) (Object!180) (End!175) (Def!175) (Underscore!175) (Match!175) (Else!175) (Error!175) (Case!175) (If!175) (Extends!175) (Abstract!175) (Class!175) (Val!175) (DelimiterValue!350 (del!235 List!886)) (KeywordValue!181 (value!8145 List!886)) (CommentValue!350 (value!8146 List!886)) (WhitespaceValue!350 (value!8147 List!886)) (IndentationValue!175 (value!8148 List!886)) (String!1266) (Int32!175) (Broken!876 (value!8149 List!886)) (Boolean!176) (Unit!475) (OperatorValue!178 (op!235 List!886)) (IdentifierValue!350 (value!8150 List!886)) (IdentifierValue!351 (value!8151 List!886)) (WhitespaceValue!351 (value!8152 List!886)) (True!350) (False!350) (Broken!877 (value!8153 List!886)) (Broken!878 (value!8154 List!886)) (True!351) (RightBrace!175) (RightBracket!175) (Colon!175) (Null!175) (Comma!175) (LeftBracket!175) (False!351) (LeftBrace!175) (ImaginaryLiteralValue!175 (text!1671 List!886)) (StringLiteralValue!525 (value!8155 List!886)) (EOFValue!175 (value!8156 List!886)) (IdentValue!175 (value!8157 List!886)) (DelimiterValue!351 (value!8158 List!886)) (DedentValue!175 (value!8159 List!886)) (NewLineValue!175 (value!8160 List!886)) (IntegerValue!525 (value!8161 (_ BitVec 32)) (text!1672 List!886)) (IntegerValue!526 (value!8162 Int) (text!1673 List!886)) (Times!175) (Or!175) (Equal!175) (Minus!175) (Broken!879 (value!8163 List!886)) (And!175) (Div!175) (LessEqual!175) (Mod!175) (Concat!428) (Not!175) (Plus!175) (SpaceValue!175 (value!8164 List!886)) (IntegerValue!527 (value!8165 Int) (text!1674 List!886)) (StringLiteralValue!526 (text!1675 List!886)) (FloatLiteralValue!351 (text!1676 List!886)) (BytesLiteralValue!175 (value!8166 List!886)) (CommentValue!351 (value!8167 List!886)) (StringLiteralValue!527 (value!8168 List!886)) (ErrorTokenValue!175 (msg!236 List!886)) )
))
(declare-datatypes ((C!1428 0))(
  ( (C!1429 (val!321 Int)) )
))
(declare-datatypes ((List!887 0))(
  ( (Nil!881) (Cons!881 (h!6278 C!1428) (t!17090 List!887)) )
))
(declare-datatypes ((IArray!349 0))(
  ( (IArray!350 (innerList!232 List!887)) )
))
(declare-datatypes ((Conc!174 0))(
  ( (Node!174 (left!679 Conc!174) (right!1009 Conc!174) (csize!578 Int) (cheight!385 Int)) (Leaf!402 (xs!2753 IArray!349) (csize!579 Int)) (Empty!174) )
))
(declare-datatypes ((BalanceConc!352 0))(
  ( (BalanceConc!353 (c!16543 Conc!174)) )
))
(declare-datatypes ((Regex!253 0))(
  ( (ElementMatch!253 (c!16544 C!1428)) (Concat!429 (regOne!1018 Regex!253) (regTwo!1018 Regex!253)) (EmptyExpr!253) (Star!253 (reg!582 Regex!253)) (EmptyLang!253) (Union!253 (regOne!1019 Regex!253) (regTwo!1019 Regex!253)) )
))
(declare-datatypes ((String!1267 0))(
  ( (String!1268 (value!8169 String)) )
))
(declare-datatypes ((TokenValueInjection!174 0))(
  ( (TokenValueInjection!175 (toValue!664 Int) (toChars!523 Int)) )
))
(declare-datatypes ((Rule!170 0))(
  ( (Rule!171 (regex!185 Regex!253) (tag!363 String!1267) (isSeparator!185 Bool) (transformation!185 TokenValueInjection!174)) )
))
(declare-datatypes ((List!888 0))(
  ( (Nil!882) (Cons!882 (h!6279 Rule!170) (t!17091 List!888)) )
))
(declare-fun rules!1069 () List!888)

(declare-fun rulesInvariant!71 (LexerInterface!77 List!888) Bool)

(assert (=> b!49610 (= res!32576 (rulesInvariant!71 thiss!11059 rules!1069))))

(declare-fun b!49611 () Bool)

(declare-fun res!32581 () Bool)

(assert (=> b!49611 (=> (not res!32581) (not e!29004))))

(declare-fun isEmpty!171 (List!888) Bool)

(assert (=> b!49611 (= res!32581 (not (isEmpty!171 rules!1069)))))

(declare-fun b!49612 () Bool)

(declare-fun e!28998 () Bool)

(assert (=> b!49612 (= e!28998 e!29004)))

(declare-fun res!32580 () Bool)

(assert (=> b!49612 (=> (not res!32580) (not e!29004))))

(declare-fun from!821 () Int)

(declare-fun lt!7814 () Int)

(assert (=> b!49612 (= res!32580 (<= from!821 lt!7814))))

(declare-datatypes ((Token!134 0))(
  ( (Token!135 (value!8170 TokenValue!175) (rule!660 Rule!170) (size!864 Int) (originalCharacters!238 List!887)) )
))
(declare-datatypes ((List!889 0))(
  ( (Nil!883) (Cons!883 (h!6280 Token!134) (t!17092 List!889)) )
))
(declare-datatypes ((IArray!351 0))(
  ( (IArray!352 (innerList!233 List!889)) )
))
(declare-datatypes ((Conc!175 0))(
  ( (Node!175 (left!680 Conc!175) (right!1010 Conc!175) (csize!580 Int) (cheight!386 Int)) (Leaf!403 (xs!2754 IArray!351) (csize!581 Int)) (Empty!175) )
))
(declare-datatypes ((BalanceConc!354 0))(
  ( (BalanceConc!355 (c!16545 Conc!175)) )
))
(declare-fun v!6227 () BalanceConc!354)

(declare-fun size!865 (BalanceConc!354) Int)

(assert (=> b!49612 (= lt!7814 (size!865 v!6227))))

(declare-fun b!49613 () Bool)

(declare-fun e!29000 () Bool)

(assert (=> b!49613 (= e!29000 true)))

(declare-fun lt!7813 () Int)

(declare-fun lt!7811 () List!889)

(declare-fun size!866 (List!889) Int)

(assert (=> b!49613 (= lt!7813 (size!866 lt!7811))))

(declare-fun b!49614 () Bool)

(declare-fun res!32578 () Bool)

(assert (=> b!49614 (=> (not res!32578) (not e!29004))))

(assert (=> b!49614 (= res!32578 (< from!821 (- lt!7814 1)))))

(declare-fun b!49615 () Bool)

(declare-fun e!29005 () Bool)

(declare-fun tp!33080 () Bool)

(declare-fun inv!1188 (Conc!175) Bool)

(assert (=> b!49615 (= e!29005 (and (inv!1188 (c!16545 v!6227)) tp!33080))))

(declare-fun b!49616 () Bool)

(assert (=> b!49616 (= e!29004 (not e!29000))))

(declare-fun res!32579 () Bool)

(assert (=> b!49616 (=> res!32579 e!29000)))

(assert (=> b!49616 (= res!32579 (< (+ 1 from!821) 0))))

(declare-fun head!342 (List!889) Token!134)

(declare-fun drop!2 (List!889 Int) List!889)

(declare-fun apply!27 (List!889 Int) Token!134)

(assert (=> b!49616 (= (head!342 (drop!2 lt!7811 from!821)) (apply!27 lt!7811 from!821))))

(declare-datatypes ((Unit!476 0))(
  ( (Unit!477) )
))
(declare-fun lt!7812 () Unit!476)

(declare-fun lemmaDropApply!2 (List!889 Int) Unit!476)

(assert (=> b!49616 (= lt!7812 (lemmaDropApply!2 lt!7811 from!821))))

(declare-fun list!226 (BalanceConc!354) List!889)

(assert (=> b!49616 (= lt!7811 (list!226 v!6227))))

(declare-fun res!32577 () Bool)

(assert (=> start!3586 (=> (not res!32577) (not e!28998))))

(get-info :version)

(assert (=> start!3586 (= res!32577 (and ((_ is Lexer!75) thiss!11059) (>= from!821 0)))))

(assert (=> start!3586 e!28998))

(assert (=> start!3586 true))

(declare-fun inv!1189 (BalanceConc!354) Bool)

(assert (=> start!3586 (and (inv!1189 v!6227) e!29005)))

(declare-fun e!28999 () Bool)

(assert (=> start!3586 e!28999))

(declare-fun b!49617 () Bool)

(declare-fun res!32582 () Bool)

(assert (=> b!49617 (=> (not res!32582) (not e!29004))))

(declare-fun rulesProduceEachTokenIndividually!15 (LexerInterface!77 List!888 BalanceConc!354) Bool)

(assert (=> b!49617 (= res!32582 (rulesProduceEachTokenIndividually!15 thiss!11059 rules!1069 v!6227))))

(declare-fun tp!33079 () Bool)

(declare-fun e!29002 () Bool)

(declare-fun b!49618 () Bool)

(declare-fun e!29003 () Bool)

(declare-fun inv!1184 (String!1267) Bool)

(declare-fun inv!1190 (TokenValueInjection!174) Bool)

(assert (=> b!49618 (= e!29003 (and tp!33079 (inv!1184 (tag!363 (h!6279 rules!1069))) (inv!1190 (transformation!185 (h!6279 rules!1069))) e!29002))))

(assert (=> b!49619 (= e!29002 (and tp!33077 tp!33078))))

(declare-fun b!49620 () Bool)

(declare-fun tp!33076 () Bool)

(assert (=> b!49620 (= e!28999 (and e!29003 tp!33076))))

(assert (= (and start!3586 res!32577) b!49612))

(assert (= (and b!49612 res!32580) b!49611))

(assert (= (and b!49611 res!32581) b!49610))

(assert (= (and b!49610 res!32576) b!49617))

(assert (= (and b!49617 res!32582) b!49614))

(assert (= (and b!49614 res!32578) b!49616))

(assert (= (and b!49616 (not res!32579)) b!49613))

(assert (= start!3586 b!49615))

(assert (= b!49618 b!49619))

(assert (= b!49620 b!49618))

(assert (= (and start!3586 ((_ is Cons!882) rules!1069)) b!49620))

(declare-fun m!23406 () Bool)

(assert (=> b!49615 m!23406))

(declare-fun m!23408 () Bool)

(assert (=> b!49611 m!23408))

(declare-fun m!23410 () Bool)

(assert (=> b!49613 m!23410))

(declare-fun m!23412 () Bool)

(assert (=> b!49610 m!23412))

(declare-fun m!23414 () Bool)

(assert (=> start!3586 m!23414))

(declare-fun m!23416 () Bool)

(assert (=> b!49618 m!23416))

(declare-fun m!23418 () Bool)

(assert (=> b!49618 m!23418))

(declare-fun m!23420 () Bool)

(assert (=> b!49612 m!23420))

(declare-fun m!23422 () Bool)

(assert (=> b!49617 m!23422))

(declare-fun m!23424 () Bool)

(assert (=> b!49616 m!23424))

(declare-fun m!23426 () Bool)

(assert (=> b!49616 m!23426))

(declare-fun m!23428 () Bool)

(assert (=> b!49616 m!23428))

(declare-fun m!23430 () Bool)

(assert (=> b!49616 m!23430))

(declare-fun m!23432 () Bool)

(assert (=> b!49616 m!23432))

(assert (=> b!49616 m!23428))

(check-sat (not b_next!1453) (not b!49612) (not b_next!1455) (not b!49615) (not b!49618) (not b!49613) (not start!3586) b_and!1497 (not b!49611) (not b!49617) (not b!49616) (not b!49610) (not b!49620) b_and!1495)
(check-sat b_and!1497 b_and!1495 (not b_next!1453) (not b_next!1455))
