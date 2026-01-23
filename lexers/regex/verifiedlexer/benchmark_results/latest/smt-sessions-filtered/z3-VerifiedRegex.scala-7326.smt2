; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389844 () Bool)

(assert start!389844)

(declare-fun b!4114179 () Bool)

(declare-fun b_free!115851 () Bool)

(declare-fun b_next!116555 () Bool)

(assert (=> b!4114179 (= b_free!115851 (not b_next!116555))))

(declare-fun tp!1252738 () Bool)

(declare-fun b_and!317737 () Bool)

(assert (=> b!4114179 (= tp!1252738 b_and!317737)))

(declare-fun b_free!115853 () Bool)

(declare-fun b_next!116557 () Bool)

(assert (=> b!4114179 (= b_free!115853 (not b_next!116557))))

(declare-fun tp!1252736 () Bool)

(declare-fun b_and!317739 () Bool)

(assert (=> b!4114179 (= tp!1252736 b_and!317739)))

(declare-fun b!4114171 () Bool)

(declare-fun e!2552489 () Bool)

(declare-datatypes ((String!51019 0))(
  ( (String!51020 (value!226433 String)) )
))
(declare-datatypes ((List!44496 0))(
  ( (Nil!44372) (Cons!44372 (h!49792 String!51019) (t!340247 List!44496)) )
))
(declare-fun newAcc!81 () List!44496)

(declare-fun tp!1252739 () Bool)

(declare-fun inv!58969 (String!51019) Bool)

(assert (=> b!4114171 (= e!2552489 (and (inv!58969 (h!49792 newAcc!81)) tp!1252739))))

(declare-fun b!4114173 () Bool)

(declare-fun e!2552488 () Bool)

(declare-fun acc!555 () List!44496)

(declare-fun tp!1252740 () Bool)

(assert (=> b!4114173 (= e!2552488 (and (inv!58969 (h!49792 acc!555)) tp!1252740))))

(declare-fun tp!1252737 () Bool)

(declare-fun e!2552486 () Bool)

(declare-datatypes ((List!44497 0))(
  ( (Nil!44373) (Cons!44373 (h!49793 (_ BitVec 16)) (t!340248 List!44497)) )
))
(declare-datatypes ((TokenValue!7454 0))(
  ( (FloatLiteralValue!14908 (text!52623 List!44497)) (TokenValueExt!7453 (__x!27125 Int)) (Broken!37270 (value!226434 List!44497)) (Object!7577) (End!7454) (Def!7454) (Underscore!7454) (Match!7454) (Else!7454) (Error!7454) (Case!7454) (If!7454) (Extends!7454) (Abstract!7454) (Class!7454) (Val!7454) (DelimiterValue!14908 (del!7514 List!44497)) (KeywordValue!7460 (value!226435 List!44497)) (CommentValue!14908 (value!226436 List!44497)) (WhitespaceValue!14908 (value!226437 List!44497)) (IndentationValue!7454 (value!226438 List!44497)) (String!51021) (Int32!7454) (Broken!37271 (value!226439 List!44497)) (Boolean!7455) (Unit!63752) (OperatorValue!7457 (op!7514 List!44497)) (IdentifierValue!14908 (value!226440 List!44497)) (IdentifierValue!14909 (value!226441 List!44497)) (WhitespaceValue!14909 (value!226442 List!44497)) (True!14908) (False!14908) (Broken!37272 (value!226443 List!44497)) (Broken!37273 (value!226444 List!44497)) (True!14909) (RightBrace!7454) (RightBracket!7454) (Colon!7454) (Null!7454) (Comma!7454) (LeftBracket!7454) (False!14909) (LeftBrace!7454) (ImaginaryLiteralValue!7454 (text!52624 List!44497)) (StringLiteralValue!22362 (value!226445 List!44497)) (EOFValue!7454 (value!226446 List!44497)) (IdentValue!7454 (value!226447 List!44497)) (DelimiterValue!14909 (value!226448 List!44497)) (DedentValue!7454 (value!226449 List!44497)) (NewLineValue!7454 (value!226450 List!44497)) (IntegerValue!22362 (value!226451 (_ BitVec 32)) (text!52625 List!44497)) (IntegerValue!22363 (value!226452 Int) (text!52626 List!44497)) (Times!7454) (Or!7454) (Equal!7454) (Minus!7454) (Broken!37274 (value!226453 List!44497)) (And!7454) (Div!7454) (LessEqual!7454) (Mod!7454) (Concat!19583) (Not!7454) (Plus!7454) (SpaceValue!7454 (value!226454 List!44497)) (IntegerValue!22364 (value!226455 Int) (text!52627 List!44497)) (StringLiteralValue!22363 (text!52628 List!44497)) (FloatLiteralValue!14909 (text!52629 List!44497)) (BytesLiteralValue!7454 (value!226456 List!44497)) (CommentValue!14909 (value!226457 List!44497)) (StringLiteralValue!22364 (value!226458 List!44497)) (ErrorTokenValue!7454 (msg!7515 List!44497)) )
))
(declare-datatypes ((C!24444 0))(
  ( (C!24445 (val!14332 Int)) )
))
(declare-datatypes ((List!44498 0))(
  ( (Nil!44374) (Cons!44374 (h!49794 C!24444) (t!340249 List!44498)) )
))
(declare-datatypes ((IArray!26875 0))(
  ( (IArray!26876 (innerList!13495 List!44498)) )
))
(declare-datatypes ((Conc!13435 0))(
  ( (Node!13435 (left!33253 Conc!13435) (right!33583 Conc!13435) (csize!27100 Int) (cheight!13646 Int)) (Leaf!20762 (xs!16741 IArray!26875) (csize!27101 Int)) (Empty!13435) )
))
(declare-datatypes ((BalanceConc!26464 0))(
  ( (BalanceConc!26465 (c!706984 Conc!13435)) )
))
(declare-datatypes ((TokenValueInjection!14336 0))(
  ( (TokenValueInjection!14337 (toValue!9868 Int) (toChars!9727 Int)) )
))
(declare-datatypes ((Regex!12129 0))(
  ( (ElementMatch!12129 (c!706985 C!24444)) (Concat!19584 (regOne!24770 Regex!12129) (regTwo!24770 Regex!12129)) (EmptyExpr!12129) (Star!12129 (reg!12458 Regex!12129)) (EmptyLang!12129) (Union!12129 (regOne!24771 Regex!12129) (regTwo!24771 Regex!12129)) )
))
(declare-datatypes ((Rule!14248 0))(
  ( (Rule!14249 (regex!7224 Regex!12129) (tag!8084 String!51019) (isSeparator!7224 Bool) (transformation!7224 TokenValueInjection!14336)) )
))
(declare-datatypes ((List!44499 0))(
  ( (Nil!44375) (Cons!44375 (h!49795 Rule!14248) (t!340250 List!44499)) )
))
(declare-fun l!6467 () List!44499)

(declare-fun e!2552484 () Bool)

(declare-fun b!4114174 () Bool)

(declare-fun inv!58971 (TokenValueInjection!14336) Bool)

(assert (=> b!4114174 (= e!2552486 (and tp!1252737 (inv!58969 (tag!8084 (h!49795 l!6467))) (inv!58971 (transformation!7224 (h!49795 l!6467))) e!2552484))))

(declare-fun b!4114175 () Bool)

(declare-fun res!1680401 () Bool)

(declare-fun e!2552482 () Bool)

(assert (=> b!4114175 (=> (not res!1680401) (not e!2552482))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6842 (List!44496) (InoxSet String!51019))

(assert (=> b!4114175 (= res!1680401 (= (content!6842 acc!555) (content!6842 newAcc!81)))))

(declare-fun b!4114176 () Bool)

(declare-fun res!1680402 () Bool)

(assert (=> b!4114176 (=> (not res!1680402) (not e!2552482))))

(get-info :version)

(assert (=> b!4114176 (= res!1680402 ((_ is Cons!44375) l!6467))))

(declare-fun b!4114177 () Bool)

(assert (=> b!4114177 (= e!2552482 false)))

(declare-fun lt!1468510 () Bool)

(declare-fun contains!8892 (List!44496 String!51019) Bool)

(assert (=> b!4114177 (= lt!1468510 (contains!8892 newAcc!81 (tag!8084 (h!49795 l!6467))))))

(declare-fun lt!1468511 () Bool)

(assert (=> b!4114177 (= lt!1468511 (contains!8892 acc!555 (tag!8084 (h!49795 l!6467))))))

(declare-datatypes ((Unit!63753 0))(
  ( (Unit!63754) )
))
(declare-fun lt!1468508 () Unit!63753)

(declare-fun subsetContains!84 (List!44496 List!44496) Unit!63753)

(assert (=> b!4114177 (= lt!1468508 (subsetContains!84 newAcc!81 acc!555))))

(declare-fun lt!1468509 () Unit!63753)

(assert (=> b!4114177 (= lt!1468509 (subsetContains!84 acc!555 newAcc!81))))

(declare-fun res!1680400 () Bool)

(assert (=> start!389844 (=> (not res!1680400) (not e!2552482))))

(declare-datatypes ((LexerInterface!6813 0))(
  ( (LexerInterfaceExt!6810 (__x!27126 Int)) (Lexer!6811) )
))
(declare-fun thiss!26911 () LexerInterface!6813)

(assert (=> start!389844 (= res!1680400 ((_ is Lexer!6811) thiss!26911))))

(assert (=> start!389844 e!2552482))

(assert (=> start!389844 true))

(declare-fun e!2552481 () Bool)

(assert (=> start!389844 e!2552481))

(assert (=> start!389844 e!2552488))

(assert (=> start!389844 e!2552489))

(declare-fun b!4114172 () Bool)

(declare-fun tp!1252735 () Bool)

(assert (=> b!4114172 (= e!2552481 (and e!2552486 tp!1252735))))

(declare-fun b!4114178 () Bool)

(declare-fun res!1680399 () Bool)

(assert (=> b!4114178 (=> (not res!1680399) (not e!2552482))))

(declare-fun noDuplicateTag!2901 (LexerInterface!6813 List!44499 List!44496) Bool)

(assert (=> b!4114178 (= res!1680399 (noDuplicateTag!2901 thiss!26911 l!6467 acc!555))))

(assert (=> b!4114179 (= e!2552484 (and tp!1252738 tp!1252736))))

(assert (= (and start!389844 res!1680400) b!4114178))

(assert (= (and b!4114178 res!1680399) b!4114175))

(assert (= (and b!4114175 res!1680401) b!4114176))

(assert (= (and b!4114176 res!1680402) b!4114177))

(assert (= b!4114174 b!4114179))

(assert (= b!4114172 b!4114174))

(assert (= (and start!389844 ((_ is Cons!44375) l!6467)) b!4114172))

(assert (= (and start!389844 ((_ is Cons!44372) acc!555)) b!4114173))

(assert (= (and start!389844 ((_ is Cons!44372) newAcc!81)) b!4114171))

(declare-fun m!4714663 () Bool)

(assert (=> b!4114178 m!4714663))

(declare-fun m!4714665 () Bool)

(assert (=> b!4114174 m!4714665))

(declare-fun m!4714667 () Bool)

(assert (=> b!4114174 m!4714667))

(declare-fun m!4714669 () Bool)

(assert (=> b!4114175 m!4714669))

(declare-fun m!4714671 () Bool)

(assert (=> b!4114175 m!4714671))

(declare-fun m!4714673 () Bool)

(assert (=> b!4114177 m!4714673))

(declare-fun m!4714675 () Bool)

(assert (=> b!4114177 m!4714675))

(declare-fun m!4714677 () Bool)

(assert (=> b!4114177 m!4714677))

(declare-fun m!4714679 () Bool)

(assert (=> b!4114177 m!4714679))

(declare-fun m!4714681 () Bool)

(assert (=> b!4114173 m!4714681))

(declare-fun m!4714683 () Bool)

(assert (=> b!4114171 m!4714683))

(check-sat (not b!4114175) (not b_next!116555) (not b!4114171) (not b!4114177) (not b!4114178) (not b_next!116557) (not b!4114174) (not b!4114172) b_and!317737 b_and!317739 (not b!4114173))
(check-sat b_and!317739 b_and!317737 (not b_next!116557) (not b_next!116555))
