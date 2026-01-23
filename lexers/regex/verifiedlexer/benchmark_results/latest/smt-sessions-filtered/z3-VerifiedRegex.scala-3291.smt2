; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188848 () Bool)

(assert start!188848)

(declare-fun res!841776 () Bool)

(declare-fun e!1203349 () Bool)

(assert (=> start!188848 (=> (not res!841776) (not e!1203349))))

(declare-fun from!519 () Int)

(assert (=> start!188848 (= res!841776 (<= 0 from!519))))

(assert (=> start!188848 e!1203349))

(assert (=> start!188848 true))

(declare-datatypes ((List!21091 0))(
  ( (Nil!21009) (Cons!21009 (h!26410 (_ BitVec 16)) (t!175090 List!21091)) )
))
(declare-datatypes ((TokenValue!3858 0))(
  ( (FloatLiteralValue!7716 (text!27451 List!21091)) (TokenValueExt!3857 (__x!13219 Int)) (Broken!19290 (value!117546 List!21091)) (Object!3939) (End!3858) (Def!3858) (Underscore!3858) (Match!3858) (Else!3858) (Error!3858) (Case!3858) (If!3858) (Extends!3858) (Abstract!3858) (Class!3858) (Val!3858) (DelimiterValue!7716 (del!3918 List!21091)) (KeywordValue!3864 (value!117547 List!21091)) (CommentValue!7716 (value!117548 List!21091)) (WhitespaceValue!7716 (value!117549 List!21091)) (IndentationValue!3858 (value!117550 List!21091)) (String!24279) (Int32!3858) (Broken!19291 (value!117551 List!21091)) (Boolean!3859) (Unit!35471) (OperatorValue!3861 (op!3918 List!21091)) (IdentifierValue!7716 (value!117552 List!21091)) (IdentifierValue!7717 (value!117553 List!21091)) (WhitespaceValue!7717 (value!117554 List!21091)) (True!7716) (False!7716) (Broken!19292 (value!117555 List!21091)) (Broken!19293 (value!117556 List!21091)) (True!7717) (RightBrace!3858) (RightBracket!3858) (Colon!3858) (Null!3858) (Comma!3858) (LeftBracket!3858) (False!7717) (LeftBrace!3858) (ImaginaryLiteralValue!3858 (text!27452 List!21091)) (StringLiteralValue!11574 (value!117557 List!21091)) (EOFValue!3858 (value!117558 List!21091)) (IdentValue!3858 (value!117559 List!21091)) (DelimiterValue!7717 (value!117560 List!21091)) (DedentValue!3858 (value!117561 List!21091)) (NewLineValue!3858 (value!117562 List!21091)) (IntegerValue!11574 (value!117563 (_ BitVec 32)) (text!27453 List!21091)) (IntegerValue!11575 (value!117564 Int) (text!27454 List!21091)) (Times!3858) (Or!3858) (Equal!3858) (Minus!3858) (Broken!19294 (value!117565 List!21091)) (And!3858) (Div!3858) (LessEqual!3858) (Mod!3858) (Concat!9005) (Not!3858) (Plus!3858) (SpaceValue!3858 (value!117566 List!21091)) (IntegerValue!11576 (value!117567 Int) (text!27455 List!21091)) (StringLiteralValue!11575 (text!27456 List!21091)) (FloatLiteralValue!7717 (text!27457 List!21091)) (BytesLiteralValue!3858 (value!117568 List!21091)) (CommentValue!7717 (value!117569 List!21091)) (StringLiteralValue!11576 (value!117570 List!21091)) (ErrorTokenValue!3858 (msg!3919 List!21091)) )
))
(declare-datatypes ((Regex!5147 0))(
  ( (ElementMatch!5147 (c!308074 (_ BitVec 16))) (Concat!9006 (regOne!10806 Regex!5147) (regTwo!10806 Regex!5147)) (EmptyExpr!5147) (Star!5147 (reg!5476 Regex!5147)) (EmptyLang!5147) (Union!5147 (regOne!10807 Regex!5147) (regTwo!10807 Regex!5147)) )
))
(declare-datatypes ((String!24280 0))(
  ( (String!24281 (value!117571 String)) )
))
(declare-datatypes ((IArray!13985 0))(
  ( (IArray!13986 (innerList!7050 List!21091)) )
))
(declare-datatypes ((Conc!6990 0))(
  ( (Node!6990 (left!16877 Conc!6990) (right!17207 Conc!6990) (csize!14210 Int) (cheight!7201 Int)) (Leaf!10282 (xs!9880 IArray!13985) (csize!14211 Int)) (Empty!6990) )
))
(declare-datatypes ((BalanceConc!13796 0))(
  ( (BalanceConc!13797 (c!308075 Conc!6990)) )
))
(declare-datatypes ((TokenValueInjection!7300 0))(
  ( (TokenValueInjection!7301 (toValue!5327 Int) (toChars!5186 Int)) )
))
(declare-datatypes ((Rule!7244 0))(
  ( (Rule!7245 (regex!3722 Regex!5147) (tag!4136 String!24280) (isSeparator!3722 Bool) (transformation!3722 TokenValueInjection!7300)) )
))
(declare-datatypes ((Token!6996 0))(
  ( (Token!6997 (value!117572 TokenValue!3858) (rule!5915 Rule!7244) (size!16698 Int) (originalCharacters!4529 List!21091)) )
))
(declare-datatypes ((List!21092 0))(
  ( (Nil!21010) (Cons!21010 (h!26411 Token!6996) (t!175091 List!21092)) )
))
(declare-datatypes ((IArray!13987 0))(
  ( (IArray!13988 (innerList!7051 List!21092)) )
))
(declare-datatypes ((Conc!6991 0))(
  ( (Node!6991 (left!16878 Conc!6991) (right!17208 Conc!6991) (csize!14212 Int) (cheight!7202 Int)) (Leaf!10283 (xs!9881 IArray!13987) (csize!14213 Int)) (Empty!6991) )
))
(declare-datatypes ((List!21093 0))(
  ( (Nil!21011) (Cons!21011 (h!26412 Rule!7244) (t!175092 List!21093)) )
))
(declare-datatypes ((BalanceConc!13798 0))(
  ( (BalanceConc!13799 (c!308076 Conc!6991)) )
))
(declare-datatypes ((PrintableTokens!1256 0))(
  ( (PrintableTokens!1257 (rules!15068 List!21093) (tokens!2460 BalanceConc!13798)) )
))
(declare-fun obj!5 () PrintableTokens!1256)

(declare-fun e!1203346 () Bool)

(declare-fun inv!28010 (PrintableTokens!1256) Bool)

(assert (=> start!188848 (and (inv!28010 obj!5) e!1203346)))

(declare-fun tp!537701 () Bool)

(declare-fun b!1885993 () Bool)

(declare-fun e!1203350 () Bool)

(declare-fun inv!28011 (BalanceConc!13798) Bool)

(assert (=> b!1885993 (= e!1203346 (and tp!537701 (inv!28011 (tokens!2460 obj!5)) e!1203350))))

(declare-fun b!1885994 () Bool)

(declare-fun e!1203345 () Bool)

(assert (=> b!1885994 (= e!1203345 true)))

(declare-fun lt!723460 () BalanceConc!13796)

(declare-fun seqFromList!2630 (List!21091) BalanceConc!13796)

(assert (=> b!1885994 (= lt!723460 (seqFromList!2630 (Cons!21009 #x0022 (Cons!21009 #x0069 (Cons!21009 #x0064 (Cons!21009 #x0022 Nil!21009))))))))

(declare-fun b!1885995 () Bool)

(declare-fun tp!537702 () Bool)

(declare-fun inv!28012 (Conc!6991) Bool)

(assert (=> b!1885995 (= e!1203350 (and (inv!28012 (c!308076 (tokens!2460 obj!5))) tp!537702))))

(declare-fun b!1885996 () Bool)

(declare-fun e!1203347 () Bool)

(assert (=> b!1885996 (= e!1203349 e!1203347)))

(declare-fun res!841774 () Bool)

(assert (=> b!1885996 (=> (not res!841774) (not e!1203347))))

(declare-fun lt!723458 () Int)

(assert (=> b!1885996 (= res!841774 (and (<= from!519 lt!723458) (< from!519 lt!723458)))))

(declare-fun size!16699 (PrintableTokens!1256) Int)

(assert (=> b!1885996 (= lt!723458 (size!16699 obj!5))))

(declare-fun b!1885997 () Bool)

(declare-fun e!1203348 () Bool)

(assert (=> b!1885997 (= e!1203347 e!1203348)))

(declare-fun res!841773 () Bool)

(assert (=> b!1885997 (=> (not res!841773) (not e!1203348))))

(assert (=> b!1885997 (= res!841773 e!1203345)))

(declare-fun res!841775 () Bool)

(assert (=> b!1885997 (=> res!841775 e!1203345)))

(declare-fun lt!723459 () Token!6996)

(get-info :version)

(assert (=> b!1885997 (= res!841775 (not ((_ is StringLiteralValue!11575) (value!117572 lt!723459))))))

(declare-fun apply!5553 (BalanceConc!13798 Int) Token!6996)

(assert (=> b!1885997 (= lt!723459 (apply!5553 (tokens!2460 obj!5) from!519))))

(declare-fun b!1885998 () Bool)

(declare-fun returnNextInt!4 () Bool)

(assert (=> b!1885998 (= e!1203348 (and (or (not ((_ is IntegerValue!11576) (value!117572 lt!723459))) (not returnNextInt!4)) (or (> 0 (+ 1 from!519)) (> (+ 1 from!519) lt!723458))))))

(assert (= (and start!188848 res!841776) b!1885996))

(assert (= (and b!1885996 res!841774) b!1885997))

(assert (= (and b!1885997 (not res!841775)) b!1885994))

(assert (= (and b!1885997 res!841773) b!1885998))

(assert (= b!1885993 b!1885995))

(assert (= start!188848 b!1885993))

(declare-fun m!2318783 () Bool)

(assert (=> b!1885993 m!2318783))

(declare-fun m!2318785 () Bool)

(assert (=> b!1885997 m!2318785))

(declare-fun m!2318787 () Bool)

(assert (=> b!1885995 m!2318787))

(declare-fun m!2318789 () Bool)

(assert (=> b!1885996 m!2318789))

(declare-fun m!2318791 () Bool)

(assert (=> b!1885994 m!2318791))

(declare-fun m!2318793 () Bool)

(assert (=> start!188848 m!2318793))

(check-sat (not b!1885994) (not start!188848) (not b!1885997) (not b!1885995) (not b!1885996) (not b!1885993))
(check-sat)
