; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349314 () Bool)

(assert start!349314)

(declare-fun b!3704709 () Bool)

(declare-fun b_free!98969 () Bool)

(declare-fun b_next!99673 () Bool)

(assert (=> b!3704709 (= b_free!98969 (not b_next!99673))))

(declare-fun tp!1126637 () Bool)

(declare-fun b_and!277203 () Bool)

(assert (=> b!3704709 (= tp!1126637 b_and!277203)))

(declare-fun b_free!98971 () Bool)

(declare-fun b_next!99675 () Bool)

(assert (=> b!3704709 (= b_free!98971 (not b_next!99675))))

(declare-fun tp!1126636 () Bool)

(declare-fun b_and!277205 () Bool)

(assert (=> b!3704709 (= tp!1126636 b_and!277205)))

(declare-fun b!3704710 () Bool)

(declare-fun e!2294745 () Bool)

(declare-fun e!2294746 () Bool)

(declare-fun tp!1126638 () Bool)

(assert (=> b!3704710 (= e!2294745 (and e!2294746 tp!1126638))))

(declare-fun b!3704711 () Bool)

(declare-fun e!2294748 () Bool)

(assert (=> b!3704711 (= e!2294748 (not true))))

(declare-datatypes ((LexerInterface!5601 0))(
  ( (LexerInterfaceExt!5598 (__x!24701 Int)) (Lexer!5599) )
))
(declare-fun thiss!19663 () LexerInterface!5601)

(declare-datatypes ((List!39582 0))(
  ( (Nil!39458) (Cons!39458 (h!44878 (_ BitVec 16)) (t!302265 List!39582)) )
))
(declare-datatypes ((TokenValue!6242 0))(
  ( (FloatLiteralValue!12484 (text!44139 List!39582)) (TokenValueExt!6241 (__x!24702 Int)) (Broken!31210 (value!191743 List!39582)) (Object!6365) (End!6242) (Def!6242) (Underscore!6242) (Match!6242) (Else!6242) (Error!6242) (Case!6242) (If!6242) (Extends!6242) (Abstract!6242) (Class!6242) (Val!6242) (DelimiterValue!12484 (del!6302 List!39582)) (KeywordValue!6248 (value!191744 List!39582)) (CommentValue!12484 (value!191745 List!39582)) (WhitespaceValue!12484 (value!191746 List!39582)) (IndentationValue!6242 (value!191747 List!39582)) (String!44543) (Int32!6242) (Broken!31211 (value!191748 List!39582)) (Boolean!6243) (Unit!57391) (OperatorValue!6245 (op!6302 List!39582)) (IdentifierValue!12484 (value!191749 List!39582)) (IdentifierValue!12485 (value!191750 List!39582)) (WhitespaceValue!12485 (value!191751 List!39582)) (True!12484) (False!12484) (Broken!31212 (value!191752 List!39582)) (Broken!31213 (value!191753 List!39582)) (True!12485) (RightBrace!6242) (RightBracket!6242) (Colon!6242) (Null!6242) (Comma!6242) (LeftBracket!6242) (False!12485) (LeftBrace!6242) (ImaginaryLiteralValue!6242 (text!44140 List!39582)) (StringLiteralValue!18726 (value!191754 List!39582)) (EOFValue!6242 (value!191755 List!39582)) (IdentValue!6242 (value!191756 List!39582)) (DelimiterValue!12485 (value!191757 List!39582)) (DedentValue!6242 (value!191758 List!39582)) (NewLineValue!6242 (value!191759 List!39582)) (IntegerValue!18726 (value!191760 (_ BitVec 32)) (text!44141 List!39582)) (IntegerValue!18727 (value!191761 Int) (text!44142 List!39582)) (Times!6242) (Or!6242) (Equal!6242) (Minus!6242) (Broken!31214 (value!191762 List!39582)) (And!6242) (Div!6242) (LessEqual!6242) (Mod!6242) (Concat!17013) (Not!6242) (Plus!6242) (SpaceValue!6242 (value!191763 List!39582)) (IntegerValue!18728 (value!191764 Int) (text!44143 List!39582)) (StringLiteralValue!18727 (text!44144 List!39582)) (FloatLiteralValue!12485 (text!44145 List!39582)) (BytesLiteralValue!6242 (value!191765 List!39582)) (CommentValue!12485 (value!191766 List!39582)) (StringLiteralValue!18728 (value!191767 List!39582)) (ErrorTokenValue!6242 (msg!6303 List!39582)) )
))
(declare-datatypes ((C!21728 0))(
  ( (C!21729 (val!12912 Int)) )
))
(declare-datatypes ((List!39583 0))(
  ( (Nil!39459) (Cons!39459 (h!44879 C!21728) (t!302266 List!39583)) )
))
(declare-datatypes ((IArray!24223 0))(
  ( (IArray!24224 (innerList!12169 List!39583)) )
))
(declare-datatypes ((Conc!12109 0))(
  ( (Node!12109 (left!30673 Conc!12109) (right!31003 Conc!12109) (csize!24448 Int) (cheight!12320 Int)) (Leaf!18726 (xs!15311 IArray!24223) (csize!24449 Int)) (Empty!12109) )
))
(declare-datatypes ((BalanceConc!23832 0))(
  ( (BalanceConc!23833 (c!639944 Conc!12109)) )
))
(declare-datatypes ((String!44544 0))(
  ( (String!44545 (value!191768 String)) )
))
(declare-datatypes ((Regex!10771 0))(
  ( (ElementMatch!10771 (c!639945 C!21728)) (Concat!17014 (regOne!22054 Regex!10771) (regTwo!22054 Regex!10771)) (EmptyExpr!10771) (Star!10771 (reg!11100 Regex!10771)) (EmptyLang!10771) (Union!10771 (regOne!22055 Regex!10771) (regTwo!22055 Regex!10771)) )
))
(declare-datatypes ((TokenValueInjection!11912 0))(
  ( (TokenValueInjection!11913 (toValue!8356 Int) (toChars!8215 Int)) )
))
(declare-datatypes ((Rule!11824 0))(
  ( (Rule!11825 (regex!6012 Regex!10771) (tag!6866 String!44544) (isSeparator!6012 Bool) (transformation!6012 TokenValueInjection!11912)) )
))
(declare-datatypes ((List!39584 0))(
  ( (Nil!39460) (Cons!39460 (h!44880 Rule!11824) (t!302267 List!39584)) )
))
(declare-fun rules!2525 () List!39584)

(declare-fun rulesInvariant!4998 (LexerInterface!5601 List!39584) Bool)

(assert (=> b!3704711 (rulesInvariant!4998 thiss!19663 (t!302267 rules!2525))))

(declare-datatypes ((Unit!57392 0))(
  ( (Unit!57393) )
))
(declare-fun lt!1296194 () Unit!57392)

(declare-fun lemmaInvariantOnRulesThenOnTail!698 (LexerInterface!5601 Rule!11824 List!39584) Unit!57392)

(assert (=> b!3704711 (= lt!1296194 (lemmaInvariantOnRulesThenOnTail!698 thiss!19663 (h!44880 rules!2525) (t!302267 rules!2525)))))

(declare-fun e!2294744 () Bool)

(declare-fun b!3704712 () Bool)

(declare-fun tp!1126635 () Bool)

(declare-fun inv!52968 (String!44544) Bool)

(declare-fun inv!52970 (TokenValueInjection!11912) Bool)

(assert (=> b!3704712 (= e!2294746 (and tp!1126635 (inv!52968 (tag!6866 (h!44880 rules!2525))) (inv!52970 (transformation!6012 (h!44880 rules!2525))) e!2294744))))

(declare-fun b!3704713 () Bool)

(declare-fun res!1507112 () Bool)

(assert (=> b!3704713 (=> (not res!1507112) (not e!2294748))))

(assert (=> b!3704713 (= res!1507112 (rulesInvariant!4998 thiss!19663 rules!2525))))

(declare-fun b!3704714 () Bool)

(declare-fun res!1507111 () Bool)

(assert (=> b!3704714 (=> (not res!1507111) (not e!2294748))))

(declare-fun tag!164 () String!44544)

(get-info :version)

(assert (=> b!3704714 (= res!1507111 (and (or (not ((_ is Cons!39460) rules!2525)) (not (= (tag!6866 (h!44880 rules!2525)) tag!164))) ((_ is Cons!39460) rules!2525) (not (= (tag!6866 (h!44880 rules!2525)) tag!164))))))

(declare-fun res!1507110 () Bool)

(assert (=> start!349314 (=> (not res!1507110) (not e!2294748))))

(assert (=> start!349314 (= res!1507110 ((_ is Lexer!5599) thiss!19663))))

(assert (=> start!349314 e!2294748))

(assert (=> start!349314 true))

(assert (=> start!349314 e!2294745))

(assert (=> start!349314 (inv!52968 tag!164)))

(assert (=> b!3704709 (= e!2294744 (and tp!1126637 tp!1126636))))

(assert (= (and start!349314 res!1507110) b!3704713))

(assert (= (and b!3704713 res!1507112) b!3704714))

(assert (= (and b!3704714 res!1507111) b!3704711))

(assert (= b!3704712 b!3704709))

(assert (= b!3704710 b!3704712))

(assert (= (and start!349314 ((_ is Cons!39460) rules!2525)) b!3704710))

(declare-fun m!4215313 () Bool)

(assert (=> b!3704711 m!4215313))

(declare-fun m!4215315 () Bool)

(assert (=> b!3704711 m!4215315))

(declare-fun m!4215317 () Bool)

(assert (=> b!3704712 m!4215317))

(declare-fun m!4215319 () Bool)

(assert (=> b!3704712 m!4215319))

(declare-fun m!4215321 () Bool)

(assert (=> b!3704713 m!4215321))

(declare-fun m!4215323 () Bool)

(assert (=> start!349314 m!4215323))

(check-sat b_and!277205 b_and!277203 (not b!3704712) (not b!3704713) (not b_next!99675) (not start!349314) (not b!3704711) (not b!3704710) (not b_next!99673))
(check-sat b_and!277205 b_and!277203 (not b_next!99675) (not b_next!99673))
