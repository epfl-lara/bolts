; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3574 () Bool)

(assert start!3574)

(declare-fun res!32486 () Bool)

(declare-fun e!28878 () Bool)

(assert (=> start!3574 (=> (not res!32486) (not e!28878))))

(declare-datatypes ((LexerInterface!71 0))(
  ( (LexerInterfaceExt!68 (__x!1433 Int)) (Lexer!69) )
))
(declare-fun thiss!11059 () LexerInterface!71)

(declare-fun from!821 () Int)

(get-info :version)

(assert (=> start!3574 (= res!32486 (and ((_ is Lexer!69) thiss!11059) (>= from!821 0)))))

(assert (=> start!3574 e!28878))

(assert (=> start!3574 true))

(declare-datatypes ((List!863 0))(
  ( (Nil!857) (Cons!857 (h!6254 (_ BitVec 16)) (t!17066 List!863)) )
))
(declare-datatypes ((TokenValue!169 0))(
  ( (FloatLiteralValue!338 (text!1628 List!863)) (TokenValueExt!168 (__x!1434 Int)) (Broken!845 (value!7973 List!863)) (Object!174) (End!169) (Def!169) (Underscore!169) (Match!169) (Else!169) (Error!169) (Case!169) (If!169) (Extends!169) (Abstract!169) (Class!169) (Val!169) (DelimiterValue!338 (del!229 List!863)) (KeywordValue!175 (value!7974 List!863)) (CommentValue!338 (value!7975 List!863)) (WhitespaceValue!338 (value!7976 List!863)) (IndentationValue!169 (value!7977 List!863)) (String!1236) (Int32!169) (Broken!846 (value!7978 List!863)) (Boolean!170) (Unit!467) (OperatorValue!172 (op!229 List!863)) (IdentifierValue!338 (value!7979 List!863)) (IdentifierValue!339 (value!7980 List!863)) (WhitespaceValue!339 (value!7981 List!863)) (True!338) (False!338) (Broken!847 (value!7982 List!863)) (Broken!848 (value!7983 List!863)) (True!339) (RightBrace!169) (RightBracket!169) (Colon!169) (Null!169) (Comma!169) (LeftBracket!169) (False!339) (LeftBrace!169) (ImaginaryLiteralValue!169 (text!1629 List!863)) (StringLiteralValue!507 (value!7984 List!863)) (EOFValue!169 (value!7985 List!863)) (IdentValue!169 (value!7986 List!863)) (DelimiterValue!339 (value!7987 List!863)) (DedentValue!169 (value!7988 List!863)) (NewLineValue!169 (value!7989 List!863)) (IntegerValue!507 (value!7990 (_ BitVec 32)) (text!1630 List!863)) (IntegerValue!508 (value!7991 Int) (text!1631 List!863)) (Times!169) (Or!169) (Equal!169) (Minus!169) (Broken!849 (value!7992 List!863)) (And!169) (Div!169) (LessEqual!169) (Mod!169) (Concat!416) (Not!169) (Plus!169) (SpaceValue!169 (value!7993 List!863)) (IntegerValue!509 (value!7994 Int) (text!1632 List!863)) (StringLiteralValue!508 (text!1633 List!863)) (FloatLiteralValue!339 (text!1634 List!863)) (BytesLiteralValue!169 (value!7995 List!863)) (CommentValue!339 (value!7996 List!863)) (StringLiteralValue!509 (value!7997 List!863)) (ErrorTokenValue!169 (msg!230 List!863)) )
))
(declare-datatypes ((C!1416 0))(
  ( (C!1417 (val!315 Int)) )
))
(declare-datatypes ((List!864 0))(
  ( (Nil!858) (Cons!858 (h!6255 C!1416) (t!17067 List!864)) )
))
(declare-datatypes ((IArray!325 0))(
  ( (IArray!326 (innerList!220 List!864)) )
))
(declare-datatypes ((Conc!162 0))(
  ( (Node!162 (left!664 Conc!162) (right!994 Conc!162) (csize!554 Int) (cheight!373 Int)) (Leaf!387 (xs!2741 IArray!325) (csize!555 Int)) (Empty!162) )
))
(declare-datatypes ((Regex!247 0))(
  ( (ElementMatch!247 (c!16525 C!1416)) (Concat!417 (regOne!1006 Regex!247) (regTwo!1006 Regex!247)) (EmptyExpr!247) (Star!247 (reg!576 Regex!247)) (EmptyLang!247) (Union!247 (regOne!1007 Regex!247) (regTwo!1007 Regex!247)) )
))
(declare-datatypes ((String!1237 0))(
  ( (String!1238 (value!7998 String)) )
))
(declare-datatypes ((BalanceConc!328 0))(
  ( (BalanceConc!329 (c!16526 Conc!162)) )
))
(declare-datatypes ((TokenValueInjection!162 0))(
  ( (TokenValueInjection!163 (toValue!658 Int) (toChars!517 Int)) )
))
(declare-datatypes ((Rule!158 0))(
  ( (Rule!159 (regex!179 Regex!247) (tag!357 String!1237) (isSeparator!179 Bool) (transformation!179 TokenValueInjection!162)) )
))
(declare-datatypes ((Token!122 0))(
  ( (Token!123 (value!7999 TokenValue!169) (rule!654 Rule!158) (size!849 Int) (originalCharacters!232 List!864)) )
))
(declare-datatypes ((List!865 0))(
  ( (Nil!859) (Cons!859 (h!6256 Token!122) (t!17068 List!865)) )
))
(declare-datatypes ((IArray!327 0))(
  ( (IArray!328 (innerList!221 List!865)) )
))
(declare-datatypes ((Conc!163 0))(
  ( (Node!163 (left!665 Conc!163) (right!995 Conc!163) (csize!556 Int) (cheight!374 Int)) (Leaf!388 (xs!2742 IArray!327) (csize!557 Int)) (Empty!163) )
))
(declare-datatypes ((BalanceConc!330 0))(
  ( (BalanceConc!331 (c!16527 Conc!163)) )
))
(declare-fun v!6227 () BalanceConc!330)

(declare-fun e!28879 () Bool)

(declare-fun inv!1162 (BalanceConc!330) Bool)

(assert (=> start!3574 (and (inv!1162 v!6227) e!28879)))

(declare-fun b!49451 () Bool)

(assert (=> b!49451 (= e!28878 false)))

(declare-fun lt!7772 () Int)

(declare-fun size!850 (BalanceConc!330) Int)

(assert (=> b!49451 (= lt!7772 (size!850 v!6227))))

(declare-fun b!49452 () Bool)

(declare-fun tp!32990 () Bool)

(declare-fun inv!1163 (Conc!163) Bool)

(assert (=> b!49452 (= e!28879 (and (inv!1163 (c!16527 v!6227)) tp!32990))))

(assert (= (and start!3574 res!32486) b!49451))

(assert (= start!3574 b!49452))

(declare-fun m!23304 () Bool)

(assert (=> start!3574 m!23304))

(declare-fun m!23306 () Bool)

(assert (=> b!49451 m!23306))

(declare-fun m!23308 () Bool)

(assert (=> b!49452 m!23308))

(check-sat (not b!49452) (not start!3574) (not b!49451))
(check-sat)
