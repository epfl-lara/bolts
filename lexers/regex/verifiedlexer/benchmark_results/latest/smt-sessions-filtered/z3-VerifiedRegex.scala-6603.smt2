; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348994 () Bool)

(assert start!348994)

(declare-fun b!3703015 () Bool)

(declare-fun b_free!98729 () Bool)

(declare-fun b_next!99433 () Bool)

(assert (=> b!3703015 (= b_free!98729 (not b_next!99433))))

(declare-fun tp!1125613 () Bool)

(declare-fun b_and!276963 () Bool)

(assert (=> b!3703015 (= tp!1125613 b_and!276963)))

(declare-fun b_free!98731 () Bool)

(declare-fun b_next!99435 () Bool)

(assert (=> b!3703015 (= b_free!98731 (not b_next!99435))))

(declare-fun tp!1125614 () Bool)

(declare-fun b_and!276965 () Bool)

(assert (=> b!3703015 (= tp!1125614 b_and!276965)))

(declare-fun b!3703017 () Bool)

(declare-fun b_free!98733 () Bool)

(declare-fun b_next!99437 () Bool)

(assert (=> b!3703017 (= b_free!98733 (not b_next!99437))))

(declare-fun tp!1125616 () Bool)

(declare-fun b_and!276967 () Bool)

(assert (=> b!3703017 (= tp!1125616 b_and!276967)))

(declare-fun b_free!98735 () Bool)

(declare-fun b_next!99439 () Bool)

(assert (=> b!3703017 (= b_free!98735 (not b_next!99439))))

(declare-fun tp!1125612 () Bool)

(declare-fun b_and!276969 () Bool)

(assert (=> b!3703017 (= tp!1125612 b_and!276969)))

(declare-fun e!2293321 () Bool)

(assert (=> b!3703015 (= e!2293321 (and tp!1125613 tp!1125614))))

(declare-fun b!3703016 () Bool)

(declare-fun e!2293320 () Bool)

(assert (=> b!3703016 (= e!2293320 false)))

(declare-fun lt!1295766 () Bool)

(declare-datatypes ((LexerInterface!5575 0))(
  ( (LexerInterfaceExt!5572 (__x!24649 Int)) (Lexer!5573) )
))
(declare-fun thiss!25522 () LexerInterface!5575)

(declare-datatypes ((List!39486 0))(
  ( (Nil!39362) (Cons!39362 (h!44782 (_ BitVec 16)) (t!302169 List!39486)) )
))
(declare-datatypes ((TokenValue!6216 0))(
  ( (FloatLiteralValue!12432 (text!43957 List!39486)) (TokenValueExt!6215 (__x!24650 Int)) (Broken!31080 (value!191028 List!39486)) (Object!6339) (End!6216) (Def!6216) (Underscore!6216) (Match!6216) (Else!6216) (Error!6216) (Case!6216) (If!6216) (Extends!6216) (Abstract!6216) (Class!6216) (Val!6216) (DelimiterValue!12432 (del!6276 List!39486)) (KeywordValue!6222 (value!191029 List!39486)) (CommentValue!12432 (value!191030 List!39486)) (WhitespaceValue!12432 (value!191031 List!39486)) (IndentationValue!6216 (value!191032 List!39486)) (String!44413) (Int32!6216) (Broken!31081 (value!191033 List!39486)) (Boolean!6217) (Unit!57327) (OperatorValue!6219 (op!6276 List!39486)) (IdentifierValue!12432 (value!191034 List!39486)) (IdentifierValue!12433 (value!191035 List!39486)) (WhitespaceValue!12433 (value!191036 List!39486)) (True!12432) (False!12432) (Broken!31082 (value!191037 List!39486)) (Broken!31083 (value!191038 List!39486)) (True!12433) (RightBrace!6216) (RightBracket!6216) (Colon!6216) (Null!6216) (Comma!6216) (LeftBracket!6216) (False!12433) (LeftBrace!6216) (ImaginaryLiteralValue!6216 (text!43958 List!39486)) (StringLiteralValue!18648 (value!191039 List!39486)) (EOFValue!6216 (value!191040 List!39486)) (IdentValue!6216 (value!191041 List!39486)) (DelimiterValue!12433 (value!191042 List!39486)) (DedentValue!6216 (value!191043 List!39486)) (NewLineValue!6216 (value!191044 List!39486)) (IntegerValue!18648 (value!191045 (_ BitVec 32)) (text!43959 List!39486)) (IntegerValue!18649 (value!191046 Int) (text!43960 List!39486)) (Times!6216) (Or!6216) (Equal!6216) (Minus!6216) (Broken!31084 (value!191047 List!39486)) (And!6216) (Div!6216) (LessEqual!6216) (Mod!6216) (Concat!16961) (Not!6216) (Plus!6216) (SpaceValue!6216 (value!191048 List!39486)) (IntegerValue!18650 (value!191049 Int) (text!43961 List!39486)) (StringLiteralValue!18649 (text!43962 List!39486)) (FloatLiteralValue!12433 (text!43963 List!39486)) (BytesLiteralValue!6216 (value!191050 List!39486)) (CommentValue!12433 (value!191051 List!39486)) (StringLiteralValue!18650 (value!191052 List!39486)) (ErrorTokenValue!6216 (msg!6277 List!39486)) )
))
(declare-datatypes ((C!21676 0))(
  ( (C!21677 (val!12886 Int)) )
))
(declare-datatypes ((List!39487 0))(
  ( (Nil!39363) (Cons!39363 (h!44783 C!21676) (t!302170 List!39487)) )
))
(declare-datatypes ((IArray!24171 0))(
  ( (IArray!24172 (innerList!12143 List!39487)) )
))
(declare-datatypes ((Conc!12083 0))(
  ( (Node!12083 (left!30630 Conc!12083) (right!30960 Conc!12083) (csize!24396 Int) (cheight!12294 Int)) (Leaf!18687 (xs!15285 IArray!24171) (csize!24397 Int)) (Empty!12083) )
))
(declare-datatypes ((BalanceConc!23780 0))(
  ( (BalanceConc!23781 (c!639814 Conc!12083)) )
))
(declare-datatypes ((TokenValueInjection!11860 0))(
  ( (TokenValueInjection!11861 (toValue!8326 Int) (toChars!8185 Int)) )
))
(declare-datatypes ((String!44414 0))(
  ( (String!44415 (value!191053 String)) )
))
(declare-datatypes ((Regex!10745 0))(
  ( (ElementMatch!10745 (c!639815 C!21676)) (Concat!16962 (regOne!22002 Regex!10745) (regTwo!22002 Regex!10745)) (EmptyExpr!10745) (Star!10745 (reg!11074 Regex!10745)) (EmptyLang!10745) (Union!10745 (regOne!22003 Regex!10745) (regTwo!22003 Regex!10745)) )
))
(declare-datatypes ((Rule!11772 0))(
  ( (Rule!11773 (regex!5986 Regex!10745) (tag!6826 String!44414) (isSeparator!5986 Bool) (transformation!5986 TokenValueInjection!11860)) )
))
(declare-datatypes ((List!39488 0))(
  ( (Nil!39364) (Cons!39364 (h!44784 Rule!11772) (t!302171 List!39488)) )
))
(declare-fun rules!3698 () List!39488)

(declare-fun newHd!19 () Rule!11772)

(declare-fun rulesInvariant!4972 (LexerInterface!5575 List!39488) Bool)

(assert (=> b!3703016 (= lt!1295766 (rulesInvariant!4972 thiss!25522 (Cons!39364 newHd!19 rules!3698)))))

(declare-fun e!2293315 () Bool)

(assert (=> b!3703017 (= e!2293315 (and tp!1125616 tp!1125612))))

(declare-fun b!3703018 () Bool)

(declare-fun e!2293319 () Bool)

(declare-fun e!2293318 () Bool)

(declare-fun tp!1125615 () Bool)

(assert (=> b!3703018 (= e!2293319 (and e!2293318 tp!1125615))))

(declare-fun tp!1125618 () Bool)

(declare-fun b!3703020 () Bool)

(declare-fun inv!52903 (String!44414) Bool)

(declare-fun inv!52905 (TokenValueInjection!11860) Bool)

(assert (=> b!3703020 (= e!2293318 (and tp!1125618 (inv!52903 (tag!6826 (h!44784 rules!3698))) (inv!52905 (transformation!5986 (h!44784 rules!3698))) e!2293321))))

(declare-fun b!3703019 () Bool)

(declare-fun e!2293316 () Bool)

(declare-fun tp!1125617 () Bool)

(assert (=> b!3703019 (= e!2293316 (and tp!1125617 (inv!52903 (tag!6826 newHd!19)) (inv!52905 (transformation!5986 newHd!19)) e!2293315))))

(declare-fun res!1506373 () Bool)

(assert (=> start!348994 (=> (not res!1506373) (not e!2293320))))

(get-info :version)

(assert (=> start!348994 (= res!1506373 ((_ is Lexer!5573) thiss!25522))))

(assert (=> start!348994 e!2293320))

(assert (=> start!348994 true))

(assert (=> start!348994 e!2293316))

(assert (=> start!348994 e!2293319))

(assert (= (and start!348994 res!1506373) b!3703016))

(assert (= b!3703019 b!3703017))

(assert (= start!348994 b!3703019))

(assert (= b!3703020 b!3703015))

(assert (= b!3703018 b!3703020))

(assert (= (and start!348994 ((_ is Cons!39364) rules!3698)) b!3703018))

(declare-fun m!4213995 () Bool)

(assert (=> b!3703016 m!4213995))

(declare-fun m!4213997 () Bool)

(assert (=> b!3703020 m!4213997))

(declare-fun m!4213999 () Bool)

(assert (=> b!3703020 m!4213999))

(declare-fun m!4214001 () Bool)

(assert (=> b!3703019 m!4214001))

(declare-fun m!4214003 () Bool)

(assert (=> b!3703019 m!4214003))

(check-sat b_and!276963 (not b_next!99439) (not b_next!99435) (not b_next!99437) (not b!3703020) (not b!3703018) (not b!3703019) (not b!3703016) b_and!276967 (not b_next!99433) b_and!276965 b_and!276969)
(check-sat b_and!276963 (not b_next!99439) (not b_next!99435) (not b_next!99437) b_and!276967 (not b_next!99433) b_and!276965 b_and!276969)
