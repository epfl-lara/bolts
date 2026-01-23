; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389780 () Bool)

(assert start!389780)

(declare-fun b!4113679 () Bool)

(declare-fun b_free!115795 () Bool)

(declare-fun b_next!116499 () Bool)

(assert (=> b!4113679 (= b_free!115795 (not b_next!116499))))

(declare-fun tp!1252432 () Bool)

(declare-fun b_and!317681 () Bool)

(assert (=> b!4113679 (= tp!1252432 b_and!317681)))

(declare-fun b_free!115797 () Bool)

(declare-fun b_next!116501 () Bool)

(assert (=> b!4113679 (= b_free!115797 (not b_next!116501))))

(declare-fun tp!1252435 () Bool)

(declare-fun b_and!317683 () Bool)

(assert (=> b!4113679 (= tp!1252435 b_and!317683)))

(declare-fun res!1680225 () Bool)

(declare-fun e!2552032 () Bool)

(assert (=> start!389780 (=> (not res!1680225) (not e!2552032))))

(declare-datatypes ((LexerInterface!6803 0))(
  ( (LexerInterfaceExt!6800 (__x!27105 Int)) (Lexer!6801) )
))
(declare-fun thiss!26911 () LexerInterface!6803)

(get-info :version)

(assert (=> start!389780 (= res!1680225 ((_ is Lexer!6801) thiss!26911))))

(assert (=> start!389780 e!2552032))

(assert (=> start!389780 true))

(declare-fun e!2552041 () Bool)

(assert (=> start!389780 e!2552041))

(declare-fun e!2552040 () Bool)

(assert (=> start!389780 e!2552040))

(declare-fun e!2552035 () Bool)

(assert (=> start!389780 e!2552035))

(declare-fun b!4113675 () Bool)

(declare-fun e!2552036 () Bool)

(assert (=> b!4113675 (= e!2552036 false)))

(declare-fun b!4113676 () Bool)

(declare-fun res!1680226 () Bool)

(assert (=> b!4113676 (=> (not res!1680226) (not e!2552032))))

(declare-datatypes ((List!44456 0))(
  ( (Nil!44332) (Cons!44332 (h!49752 (_ BitVec 16)) (t!340207 List!44456)) )
))
(declare-datatypes ((TokenValue!7444 0))(
  ( (FloatLiteralValue!14888 (text!52553 List!44456)) (TokenValueExt!7443 (__x!27106 Int)) (Broken!37220 (value!226158 List!44456)) (Object!7567) (End!7444) (Def!7444) (Underscore!7444) (Match!7444) (Else!7444) (Error!7444) (Case!7444) (If!7444) (Extends!7444) (Abstract!7444) (Class!7444) (Val!7444) (DelimiterValue!14888 (del!7504 List!44456)) (KeywordValue!7450 (value!226159 List!44456)) (CommentValue!14888 (value!226160 List!44456)) (WhitespaceValue!14888 (value!226161 List!44456)) (IndentationValue!7444 (value!226162 List!44456)) (String!50969) (Int32!7444) (Broken!37221 (value!226163 List!44456)) (Boolean!7445) (Unit!63730) (OperatorValue!7447 (op!7504 List!44456)) (IdentifierValue!14888 (value!226164 List!44456)) (IdentifierValue!14889 (value!226165 List!44456)) (WhitespaceValue!14889 (value!226166 List!44456)) (True!14888) (False!14888) (Broken!37222 (value!226167 List!44456)) (Broken!37223 (value!226168 List!44456)) (True!14889) (RightBrace!7444) (RightBracket!7444) (Colon!7444) (Null!7444) (Comma!7444) (LeftBracket!7444) (False!14889) (LeftBrace!7444) (ImaginaryLiteralValue!7444 (text!52554 List!44456)) (StringLiteralValue!22332 (value!226169 List!44456)) (EOFValue!7444 (value!226170 List!44456)) (IdentValue!7444 (value!226171 List!44456)) (DelimiterValue!14889 (value!226172 List!44456)) (DedentValue!7444 (value!226173 List!44456)) (NewLineValue!7444 (value!226174 List!44456)) (IntegerValue!22332 (value!226175 (_ BitVec 32)) (text!52555 List!44456)) (IntegerValue!22333 (value!226176 Int) (text!52556 List!44456)) (Times!7444) (Or!7444) (Equal!7444) (Minus!7444) (Broken!37224 (value!226177 List!44456)) (And!7444) (Div!7444) (LessEqual!7444) (Mod!7444) (Concat!19563) (Not!7444) (Plus!7444) (SpaceValue!7444 (value!226178 List!44456)) (IntegerValue!22334 (value!226179 Int) (text!52557 List!44456)) (StringLiteralValue!22333 (text!52558 List!44456)) (FloatLiteralValue!14889 (text!52559 List!44456)) (BytesLiteralValue!7444 (value!226180 List!44456)) (CommentValue!14889 (value!226181 List!44456)) (StringLiteralValue!22334 (value!226182 List!44456)) (ErrorTokenValue!7444 (msg!7505 List!44456)) )
))
(declare-datatypes ((C!24424 0))(
  ( (C!24425 (val!14322 Int)) )
))
(declare-datatypes ((List!44457 0))(
  ( (Nil!44333) (Cons!44333 (h!49753 C!24424) (t!340208 List!44457)) )
))
(declare-datatypes ((IArray!26855 0))(
  ( (IArray!26856 (innerList!13485 List!44457)) )
))
(declare-datatypes ((Conc!13425 0))(
  ( (Node!13425 (left!33234 Conc!13425) (right!33564 Conc!13425) (csize!27080 Int) (cheight!13636 Int)) (Leaf!20747 (xs!16731 IArray!26855) (csize!27081 Int)) (Empty!13425) )
))
(declare-datatypes ((BalanceConc!26444 0))(
  ( (BalanceConc!26445 (c!706942 Conc!13425)) )
))
(declare-datatypes ((TokenValueInjection!14316 0))(
  ( (TokenValueInjection!14317 (toValue!9858 Int) (toChars!9717 Int)) )
))
(declare-datatypes ((Regex!12119 0))(
  ( (ElementMatch!12119 (c!706943 C!24424)) (Concat!19564 (regOne!24750 Regex!12119) (regTwo!24750 Regex!12119)) (EmptyExpr!12119) (Star!12119 (reg!12448 Regex!12119)) (EmptyLang!12119) (Union!12119 (regOne!24751 Regex!12119) (regTwo!24751 Regex!12119)) )
))
(declare-datatypes ((String!50970 0))(
  ( (String!50971 (value!226183 String)) )
))
(declare-datatypes ((Rule!14228 0))(
  ( (Rule!14229 (regex!7214 Regex!12119) (tag!8074 String!50970) (isSeparator!7214 Bool) (transformation!7214 TokenValueInjection!14316)) )
))
(declare-datatypes ((List!44458 0))(
  ( (Nil!44334) (Cons!44334 (h!49754 Rule!14228) (t!340209 List!44458)) )
))
(declare-fun l!6467 () List!44458)

(declare-datatypes ((List!44459 0))(
  ( (Nil!44335) (Cons!44335 (h!49755 String!50970) (t!340210 List!44459)) )
))
(declare-fun acc!555 () List!44459)

(declare-fun noDuplicateTag!2891 (LexerInterface!6803 List!44458 List!44459) Bool)

(assert (=> b!4113676 (= res!1680226 (noDuplicateTag!2891 thiss!26911 l!6467 acc!555))))

(declare-fun b!4113677 () Bool)

(declare-fun tp!1252436 () Bool)

(declare-fun inv!58944 (String!50970) Bool)

(assert (=> b!4113677 (= e!2552040 (and (inv!58944 (h!49755 acc!555)) tp!1252436))))

(declare-fun b!4113678 () Bool)

(assert (=> b!4113678 (= e!2552032 e!2552036)))

(declare-fun res!1680221 () Bool)

(assert (=> b!4113678 (=> (not res!1680221) (not e!2552036))))

(declare-fun newAcc!81 () List!44459)

(declare-fun contains!8884 (List!44459 String!50970) Bool)

(assert (=> b!4113678 (= res!1680221 (= (contains!8884 acc!555 (tag!8074 (h!49754 l!6467))) (contains!8884 newAcc!81 (tag!8074 (h!49754 l!6467)))))))

(declare-datatypes ((Unit!63731 0))(
  ( (Unit!63732) )
))
(declare-fun lt!1468422 () Unit!63731)

(declare-fun subsetContains!78 (List!44459 List!44459) Unit!63731)

(assert (=> b!4113678 (= lt!1468422 (subsetContains!78 newAcc!81 acc!555))))

(declare-fun lt!1468423 () Unit!63731)

(assert (=> b!4113678 (= lt!1468423 (subsetContains!78 acc!555 newAcc!81))))

(declare-fun e!2552037 () Bool)

(assert (=> b!4113679 (= e!2552037 (and tp!1252432 tp!1252435))))

(declare-fun b!4113680 () Bool)

(declare-fun res!1680224 () Bool)

(assert (=> b!4113680 (=> (not res!1680224) (not e!2552032))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6834 (List!44459) (InoxSet String!50970))

(assert (=> b!4113680 (= res!1680224 (= (content!6834 acc!555) (content!6834 newAcc!81)))))

(declare-fun b!4113681 () Bool)

(declare-fun e!2552033 () Bool)

(declare-fun tp!1252431 () Bool)

(assert (=> b!4113681 (= e!2552041 (and e!2552033 tp!1252431))))

(declare-fun b!4113682 () Bool)

(declare-fun tp!1252434 () Bool)

(assert (=> b!4113682 (= e!2552035 (and (inv!58944 (h!49755 newAcc!81)) tp!1252434))))

(declare-fun b!4113683 () Bool)

(declare-fun res!1680222 () Bool)

(assert (=> b!4113683 (=> (not res!1680222) (not e!2552032))))

(assert (=> b!4113683 (= res!1680222 ((_ is Cons!44334) l!6467))))

(declare-fun b!4113684 () Bool)

(declare-fun res!1680223 () Bool)

(assert (=> b!4113684 (=> (not res!1680223) (not e!2552036))))

(assert (=> b!4113684 (= res!1680223 (noDuplicateTag!2891 thiss!26911 (t!340209 l!6467) (Cons!44335 (tag!8074 (h!49754 l!6467)) acc!555)))))

(declare-fun b!4113685 () Bool)

(declare-fun tp!1252433 () Bool)

(declare-fun inv!58946 (TokenValueInjection!14316) Bool)

(assert (=> b!4113685 (= e!2552033 (and tp!1252433 (inv!58944 (tag!8074 (h!49754 l!6467))) (inv!58946 (transformation!7214 (h!49754 l!6467))) e!2552037))))

(assert (= (and start!389780 res!1680225) b!4113676))

(assert (= (and b!4113676 res!1680226) b!4113680))

(assert (= (and b!4113680 res!1680224) b!4113683))

(assert (= (and b!4113683 res!1680222) b!4113678))

(assert (= (and b!4113678 res!1680221) b!4113684))

(assert (= (and b!4113684 res!1680223) b!4113675))

(assert (= b!4113685 b!4113679))

(assert (= b!4113681 b!4113685))

(assert (= (and start!389780 ((_ is Cons!44334) l!6467)) b!4113681))

(assert (= (and start!389780 ((_ is Cons!44335) acc!555)) b!4113677))

(assert (= (and start!389780 ((_ is Cons!44335) newAcc!81)) b!4113682))

(declare-fun m!4714329 () Bool)

(assert (=> b!4113676 m!4714329))

(declare-fun m!4714331 () Bool)

(assert (=> b!4113677 m!4714331))

(declare-fun m!4714333 () Bool)

(assert (=> b!4113685 m!4714333))

(declare-fun m!4714335 () Bool)

(assert (=> b!4113685 m!4714335))

(declare-fun m!4714337 () Bool)

(assert (=> b!4113682 m!4714337))

(declare-fun m!4714339 () Bool)

(assert (=> b!4113680 m!4714339))

(declare-fun m!4714341 () Bool)

(assert (=> b!4113680 m!4714341))

(declare-fun m!4714343 () Bool)

(assert (=> b!4113684 m!4714343))

(declare-fun m!4714345 () Bool)

(assert (=> b!4113678 m!4714345))

(declare-fun m!4714347 () Bool)

(assert (=> b!4113678 m!4714347))

(declare-fun m!4714349 () Bool)

(assert (=> b!4113678 m!4714349))

(declare-fun m!4714351 () Bool)

(assert (=> b!4113678 m!4714351))

(check-sat (not b!4113681) (not b!4113680) (not b_next!116501) (not b!4113677) (not b!4113678) b_and!317681 (not b!4113685) (not b_next!116499) (not b!4113684) (not b!4113676) (not b!4113682) b_and!317683)
(check-sat b_and!317683 b_and!317681 (not b_next!116501) (not b_next!116499))
