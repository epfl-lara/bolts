; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3590 () Bool)

(assert start!3590)

(declare-fun b!49679 () Bool)

(declare-fun b_free!1461 () Bool)

(declare-fun b_next!1461 () Bool)

(assert (=> b!49679 (= b_free!1461 (not b_next!1461))))

(declare-fun tp!33107 () Bool)

(declare-fun b_and!1503 () Bool)

(assert (=> b!49679 (= tp!33107 b_and!1503)))

(declare-fun b_free!1463 () Bool)

(declare-fun b_next!1463 () Bool)

(assert (=> b!49679 (= b_free!1463 (not b_next!1463))))

(declare-fun tp!33110 () Bool)

(declare-fun b_and!1505 () Bool)

(assert (=> b!49679 (= tp!33110 b_and!1505)))

(declare-fun e!29046 () Bool)

(declare-fun tp!33106 () Bool)

(declare-fun e!29044 () Bool)

(declare-fun b!49671 () Bool)

(declare-datatypes ((List!894 0))(
  ( (Nil!888) (Cons!888 (h!6285 (_ BitVec 16)) (t!17097 List!894)) )
))
(declare-datatypes ((TokenValue!177 0))(
  ( (FloatLiteralValue!354 (text!1684 List!894)) (TokenValueExt!176 (__x!1449 Int)) (Broken!885 (value!8201 List!894)) (Object!182) (End!177) (Def!177) (Underscore!177) (Match!177) (Else!177) (Error!177) (Case!177) (If!177) (Extends!177) (Abstract!177) (Class!177) (Val!177) (DelimiterValue!354 (del!237 List!894)) (KeywordValue!183 (value!8202 List!894)) (CommentValue!354 (value!8203 List!894)) (WhitespaceValue!354 (value!8204 List!894)) (IndentationValue!177 (value!8205 List!894)) (String!1276) (Int32!177) (Broken!886 (value!8206 List!894)) (Boolean!178) (Unit!481) (OperatorValue!180 (op!237 List!894)) (IdentifierValue!354 (value!8207 List!894)) (IdentifierValue!355 (value!8208 List!894)) (WhitespaceValue!355 (value!8209 List!894)) (True!354) (False!354) (Broken!887 (value!8210 List!894)) (Broken!888 (value!8211 List!894)) (True!355) (RightBrace!177) (RightBracket!177) (Colon!177) (Null!177) (Comma!177) (LeftBracket!177) (False!355) (LeftBrace!177) (ImaginaryLiteralValue!177 (text!1685 List!894)) (StringLiteralValue!531 (value!8212 List!894)) (EOFValue!177 (value!8213 List!894)) (IdentValue!177 (value!8214 List!894)) (DelimiterValue!355 (value!8215 List!894)) (DedentValue!177 (value!8216 List!894)) (NewLineValue!177 (value!8217 List!894)) (IntegerValue!531 (value!8218 (_ BitVec 32)) (text!1686 List!894)) (IntegerValue!532 (value!8219 Int) (text!1687 List!894)) (Times!177) (Or!177) (Equal!177) (Minus!177) (Broken!889 (value!8220 List!894)) (And!177) (Div!177) (LessEqual!177) (Mod!177) (Concat!432) (Not!177) (Plus!177) (SpaceValue!177 (value!8221 List!894)) (IntegerValue!533 (value!8222 Int) (text!1688 List!894)) (StringLiteralValue!532 (text!1689 List!894)) (FloatLiteralValue!355 (text!1690 List!894)) (BytesLiteralValue!177 (value!8223 List!894)) (CommentValue!355 (value!8224 List!894)) (StringLiteralValue!533 (value!8225 List!894)) (ErrorTokenValue!177 (msg!238 List!894)) )
))
(declare-datatypes ((C!1432 0))(
  ( (C!1433 (val!323 Int)) )
))
(declare-datatypes ((List!895 0))(
  ( (Nil!889) (Cons!889 (h!6286 C!1432) (t!17098 List!895)) )
))
(declare-datatypes ((IArray!357 0))(
  ( (IArray!358 (innerList!236 List!895)) )
))
(declare-datatypes ((Conc!178 0))(
  ( (Node!178 (left!684 Conc!178) (right!1014 Conc!178) (csize!586 Int) (cheight!389 Int)) (Leaf!407 (xs!2757 IArray!357) (csize!587 Int)) (Empty!178) )
))
(declare-datatypes ((BalanceConc!360 0))(
  ( (BalanceConc!361 (c!16549 Conc!178)) )
))
(declare-datatypes ((Regex!255 0))(
  ( (ElementMatch!255 (c!16550 C!1432)) (Concat!433 (regOne!1022 Regex!255) (regTwo!1022 Regex!255)) (EmptyExpr!255) (Star!255 (reg!584 Regex!255)) (EmptyLang!255) (Union!255 (regOne!1023 Regex!255) (regTwo!1023 Regex!255)) )
))
(declare-datatypes ((String!1277 0))(
  ( (String!1278 (value!8226 String)) )
))
(declare-datatypes ((TokenValueInjection!178 0))(
  ( (TokenValueInjection!179 (toValue!666 Int) (toChars!525 Int)) )
))
(declare-datatypes ((Rule!174 0))(
  ( (Rule!175 (regex!187 Regex!255) (tag!365 String!1277) (isSeparator!187 Bool) (transformation!187 TokenValueInjection!178)) )
))
(declare-datatypes ((List!896 0))(
  ( (Nil!890) (Cons!890 (h!6287 Rule!174) (t!17099 List!896)) )
))
(declare-fun rules!1069 () List!896)

(declare-fun inv!1193 (String!1277) Bool)

(declare-fun inv!1197 (TokenValueInjection!178) Bool)

(assert (=> b!49671 (= e!29046 (and tp!33106 (inv!1193 (tag!365 (h!6287 rules!1069))) (inv!1197 (transformation!187 (h!6287 rules!1069))) e!29044))))

(declare-fun b!49672 () Bool)

(declare-fun e!29043 () Bool)

(declare-fun tp!33109 () Bool)

(assert (=> b!49672 (= e!29043 (and e!29046 tp!33109))))

(declare-fun b!49673 () Bool)

(declare-fun e!29042 () Bool)

(declare-fun e!29041 () Bool)

(assert (=> b!49673 (= e!29042 e!29041)))

(declare-fun res!32617 () Bool)

(assert (=> b!49673 (=> (not res!32617) (not e!29041))))

(declare-fun from!821 () Int)

(declare-fun lt!7844 () Int)

(assert (=> b!49673 (= res!32617 (<= from!821 lt!7844))))

(declare-datatypes ((Token!138 0))(
  ( (Token!139 (value!8227 TokenValue!177) (rule!662 Rule!174) (size!870 Int) (originalCharacters!240 List!895)) )
))
(declare-datatypes ((List!897 0))(
  ( (Nil!891) (Cons!891 (h!6288 Token!138) (t!17100 List!897)) )
))
(declare-datatypes ((IArray!359 0))(
  ( (IArray!360 (innerList!237 List!897)) )
))
(declare-datatypes ((Conc!179 0))(
  ( (Node!179 (left!685 Conc!179) (right!1015 Conc!179) (csize!588 Int) (cheight!390 Int)) (Leaf!408 (xs!2758 IArray!359) (csize!589 Int)) (Empty!179) )
))
(declare-datatypes ((BalanceConc!362 0))(
  ( (BalanceConc!363 (c!16551 Conc!179)) )
))
(declare-fun v!6227 () BalanceConc!362)

(declare-fun size!871 (BalanceConc!362) Int)

(assert (=> b!49673 (= lt!7844 (size!871 v!6227))))

(declare-fun res!32613 () Bool)

(assert (=> start!3590 (=> (not res!32613) (not e!29042))))

(declare-datatypes ((LexerInterface!79 0))(
  ( (LexerInterfaceExt!76 (__x!1450 Int)) (Lexer!77) )
))
(declare-fun thiss!11059 () LexerInterface!79)

(get-info :version)

(assert (=> start!3590 (= res!32613 (and ((_ is Lexer!77) thiss!11059) (>= from!821 0)))))

(assert (=> start!3590 e!29042))

(assert (=> start!3590 true))

(declare-fun e!29047 () Bool)

(declare-fun inv!1198 (BalanceConc!362) Bool)

(assert (=> start!3590 (and (inv!1198 v!6227) e!29047)))

(assert (=> start!3590 e!29043))

(declare-fun b!49674 () Bool)

(declare-fun res!32618 () Bool)

(assert (=> b!49674 (=> (not res!32618) (not e!29041))))

(declare-fun rulesInvariant!73 (LexerInterface!79 List!896) Bool)

(assert (=> b!49674 (= res!32618 (rulesInvariant!73 thiss!11059 rules!1069))))

(declare-fun b!49675 () Bool)

(assert (=> b!49675 (= e!29041 (not true))))

(declare-fun lt!7841 () Int)

(declare-fun lt!7842 () List!897)

(declare-fun size!872 (List!897) Int)

(assert (=> b!49675 (= lt!7841 (size!872 lt!7842))))

(declare-fun head!344 (List!897) Token!138)

(declare-fun drop!4 (List!897 Int) List!897)

(declare-fun apply!29 (List!897 Int) Token!138)

(assert (=> b!49675 (= (head!344 (drop!4 lt!7842 (+ 1 from!821))) (apply!29 lt!7842 (+ 1 from!821)))))

(declare-datatypes ((Unit!482 0))(
  ( (Unit!483) )
))
(declare-fun lt!7840 () Unit!482)

(declare-fun lemmaDropApply!4 (List!897 Int) Unit!482)

(assert (=> b!49675 (= lt!7840 (lemmaDropApply!4 lt!7842 (+ 1 from!821)))))

(assert (=> b!49675 (= (head!344 (drop!4 lt!7842 from!821)) (apply!29 lt!7842 from!821))))

(declare-fun lt!7843 () Unit!482)

(assert (=> b!49675 (= lt!7843 (lemmaDropApply!4 lt!7842 from!821))))

(declare-fun list!228 (BalanceConc!362) List!897)

(assert (=> b!49675 (= lt!7842 (list!228 v!6227))))

(declare-fun b!49676 () Bool)

(declare-fun res!32616 () Bool)

(assert (=> b!49676 (=> (not res!32616) (not e!29041))))

(declare-fun isEmpty!173 (List!896) Bool)

(assert (=> b!49676 (= res!32616 (not (isEmpty!173 rules!1069)))))

(declare-fun b!49677 () Bool)

(declare-fun res!32614 () Bool)

(assert (=> b!49677 (=> (not res!32614) (not e!29041))))

(declare-fun rulesProduceEachTokenIndividually!17 (LexerInterface!79 List!896 BalanceConc!362) Bool)

(assert (=> b!49677 (= res!32614 (rulesProduceEachTokenIndividually!17 thiss!11059 rules!1069 v!6227))))

(declare-fun b!49678 () Bool)

(declare-fun tp!33108 () Bool)

(declare-fun inv!1199 (Conc!179) Bool)

(assert (=> b!49678 (= e!29047 (and (inv!1199 (c!16551 v!6227)) tp!33108))))

(assert (=> b!49679 (= e!29044 (and tp!33107 tp!33110))))

(declare-fun b!49680 () Bool)

(declare-fun res!32615 () Bool)

(assert (=> b!49680 (=> (not res!32615) (not e!29041))))

(assert (=> b!49680 (= res!32615 (< from!821 (- lt!7844 1)))))

(assert (= (and start!3590 res!32613) b!49673))

(assert (= (and b!49673 res!32617) b!49676))

(assert (= (and b!49676 res!32616) b!49674))

(assert (= (and b!49674 res!32618) b!49677))

(assert (= (and b!49677 res!32614) b!49680))

(assert (= (and b!49680 res!32615) b!49675))

(assert (= start!3590 b!49678))

(assert (= b!49671 b!49679))

(assert (= b!49672 b!49671))

(assert (= (and start!3590 ((_ is Cons!890) rules!1069)) b!49672))

(declare-fun m!23470 () Bool)

(assert (=> b!49673 m!23470))

(declare-fun m!23472 () Bool)

(assert (=> b!49677 m!23472))

(declare-fun m!23474 () Bool)

(assert (=> b!49675 m!23474))

(declare-fun m!23476 () Bool)

(assert (=> b!49675 m!23476))

(declare-fun m!23478 () Bool)

(assert (=> b!49675 m!23478))

(declare-fun m!23480 () Bool)

(assert (=> b!49675 m!23480))

(declare-fun m!23482 () Bool)

(assert (=> b!49675 m!23482))

(declare-fun m!23484 () Bool)

(assert (=> b!49675 m!23484))

(assert (=> b!49675 m!23484))

(declare-fun m!23486 () Bool)

(assert (=> b!49675 m!23486))

(assert (=> b!49675 m!23474))

(declare-fun m!23488 () Bool)

(assert (=> b!49675 m!23488))

(declare-fun m!23490 () Bool)

(assert (=> b!49675 m!23490))

(declare-fun m!23492 () Bool)

(assert (=> b!49675 m!23492))

(declare-fun m!23494 () Bool)

(assert (=> b!49678 m!23494))

(declare-fun m!23496 () Bool)

(assert (=> b!49671 m!23496))

(declare-fun m!23498 () Bool)

(assert (=> b!49671 m!23498))

(declare-fun m!23500 () Bool)

(assert (=> start!3590 m!23500))

(declare-fun m!23502 () Bool)

(assert (=> b!49674 m!23502))

(declare-fun m!23504 () Bool)

(assert (=> b!49676 m!23504))

(check-sat (not b!49675) (not b!49673) (not b!49671) (not b_next!1463) b_and!1503 (not b!49678) (not b!49677) (not b!49674) (not start!3590) (not b!49672) (not b_next!1461) (not b!49676) b_and!1505)
(check-sat b_and!1505 b_and!1503 (not b_next!1461) (not b_next!1463))
