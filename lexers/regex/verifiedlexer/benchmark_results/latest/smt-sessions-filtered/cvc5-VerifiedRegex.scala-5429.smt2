; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276050 () Bool)

(assert start!276050)

(declare-fun b!2838255 () Bool)

(declare-fun b_free!82045 () Bool)

(declare-fun b_next!82749 () Bool)

(assert (=> b!2838255 (= b_free!82045 (not b_next!82749))))

(declare-fun tp!908623 () Bool)

(declare-fun b_and!207963 () Bool)

(assert (=> b!2838255 (= tp!908623 b_and!207963)))

(declare-fun b_free!82047 () Bool)

(declare-fun b_next!82751 () Bool)

(assert (=> b!2838255 (= b_free!82047 (not b_next!82751))))

(declare-fun tp!908620 () Bool)

(declare-fun b_and!207965 () Bool)

(assert (=> b!2838255 (= tp!908620 b_and!207965)))

(declare-fun b!2838257 () Bool)

(declare-fun b_free!82049 () Bool)

(declare-fun b_next!82753 () Bool)

(assert (=> b!2838257 (= b_free!82049 (not b_next!82753))))

(declare-fun tp!908612 () Bool)

(declare-fun b_and!207967 () Bool)

(assert (=> b!2838257 (= tp!908612 b_and!207967)))

(declare-fun b_free!82051 () Bool)

(declare-fun b_next!82755 () Bool)

(assert (=> b!2838257 (= b_free!82051 (not b_next!82755))))

(declare-fun tp!908614 () Bool)

(declare-fun b_and!207969 () Bool)

(assert (=> b!2838257 (= tp!908614 b_and!207969)))

(declare-fun b!2838247 () Bool)

(declare-fun b_free!82053 () Bool)

(declare-fun b_next!82757 () Bool)

(assert (=> b!2838247 (= b_free!82053 (not b_next!82757))))

(declare-fun tp!908618 () Bool)

(declare-fun b_and!207971 () Bool)

(assert (=> b!2838247 (= tp!908618 b_and!207971)))

(declare-fun b_free!82055 () Bool)

(declare-fun b_next!82759 () Bool)

(assert (=> b!2838247 (= b_free!82055 (not b_next!82759))))

(declare-fun tp!908611 () Bool)

(declare-fun b_and!207973 () Bool)

(assert (=> b!2838247 (= tp!908611 b_and!207973)))

(declare-fun e!1797583 () Bool)

(assert (=> b!2838247 (= e!1797583 (and tp!908618 tp!908611))))

(declare-fun b!2838248 () Bool)

(declare-fun e!1797572 () Bool)

(declare-fun e!1797574 () Bool)

(declare-datatypes ((C!17050 0))(
  ( (C!17051 (val!10537 Int)) )
))
(declare-datatypes ((List!33682 0))(
  ( (Nil!33558) (Cons!33558 (h!38978 C!17050) (t!232163 List!33682)) )
))
(declare-datatypes ((Regex!8434 0))(
  ( (ElementMatch!8434 (c!458464 C!17050)) (Concat!13707 (regOne!17380 Regex!8434) (regTwo!17380 Regex!8434)) (EmptyExpr!8434) (Star!8434 (reg!8763 Regex!8434)) (EmptyLang!8434) (Union!8434 (regOne!17381 Regex!8434) (regTwo!17381 Regex!8434)) )
))
(declare-datatypes ((String!36888 0))(
  ( (String!36889 (value!162070 String)) )
))
(declare-datatypes ((List!33683 0))(
  ( (Nil!33559) (Cons!33559 (h!38979 (_ BitVec 16)) (t!232164 List!33683)) )
))
(declare-datatypes ((TokenValue!5273 0))(
  ( (FloatLiteralValue!10546 (text!37356 List!33683)) (TokenValueExt!5272 (__x!22284 Int)) (Broken!26365 (value!162071 List!33683)) (Object!5396) (End!5273) (Def!5273) (Underscore!5273) (Match!5273) (Else!5273) (Error!5273) (Case!5273) (If!5273) (Extends!5273) (Abstract!5273) (Class!5273) (Val!5273) (DelimiterValue!10546 (del!5333 List!33683)) (KeywordValue!5279 (value!162072 List!33683)) (CommentValue!10546 (value!162073 List!33683)) (WhitespaceValue!10546 (value!162074 List!33683)) (IndentationValue!5273 (value!162075 List!33683)) (String!36890) (Int32!5273) (Broken!26366 (value!162076 List!33683)) (Boolean!5274) (Unit!47453) (OperatorValue!5276 (op!5333 List!33683)) (IdentifierValue!10546 (value!162077 List!33683)) (IdentifierValue!10547 (value!162078 List!33683)) (WhitespaceValue!10547 (value!162079 List!33683)) (True!10546) (False!10546) (Broken!26367 (value!162080 List!33683)) (Broken!26368 (value!162081 List!33683)) (True!10547) (RightBrace!5273) (RightBracket!5273) (Colon!5273) (Null!5273) (Comma!5273) (LeftBracket!5273) (False!10547) (LeftBrace!5273) (ImaginaryLiteralValue!5273 (text!37357 List!33683)) (StringLiteralValue!15819 (value!162082 List!33683)) (EOFValue!5273 (value!162083 List!33683)) (IdentValue!5273 (value!162084 List!33683)) (DelimiterValue!10547 (value!162085 List!33683)) (DedentValue!5273 (value!162086 List!33683)) (NewLineValue!5273 (value!162087 List!33683)) (IntegerValue!15819 (value!162088 (_ BitVec 32)) (text!37358 List!33683)) (IntegerValue!15820 (value!162089 Int) (text!37359 List!33683)) (Times!5273) (Or!5273) (Equal!5273) (Minus!5273) (Broken!26369 (value!162090 List!33683)) (And!5273) (Div!5273) (LessEqual!5273) (Mod!5273) (Concat!13708) (Not!5273) (Plus!5273) (SpaceValue!5273 (value!162091 List!33683)) (IntegerValue!15821 (value!162092 Int) (text!37360 List!33683)) (StringLiteralValue!15820 (text!37361 List!33683)) (FloatLiteralValue!10547 (text!37362 List!33683)) (BytesLiteralValue!5273 (value!162093 List!33683)) (CommentValue!10547 (value!162094 List!33683)) (StringLiteralValue!15821 (value!162095 List!33683)) (ErrorTokenValue!5273 (msg!5334 List!33683)) )
))
(declare-datatypes ((IArray!20851 0))(
  ( (IArray!20852 (innerList!10483 List!33682)) )
))
(declare-datatypes ((Conc!10423 0))(
  ( (Node!10423 (left!25304 Conc!10423) (right!25634 Conc!10423) (csize!21076 Int) (cheight!10634 Int)) (Leaf!15853 (xs!13535 IArray!20851) (csize!21077 Int)) (Empty!10423) )
))
(declare-datatypes ((BalanceConc!20484 0))(
  ( (BalanceConc!20485 (c!458465 Conc!10423)) )
))
(declare-datatypes ((TokenValueInjection!9974 0))(
  ( (TokenValueInjection!9975 (toValue!7085 Int) (toChars!6944 Int)) )
))
(declare-datatypes ((Rule!9886 0))(
  ( (Rule!9887 (regex!5043 Regex!8434) (tag!5547 String!36888) (isSeparator!5043 Bool) (transformation!5043 TokenValueInjection!9974)) )
))
(declare-datatypes ((List!33684 0))(
  ( (Nil!33560) (Cons!33560 (h!38980 Rule!9886) (t!232165 List!33684)) )
))
(declare-fun rules!4246 () List!33684)

(declare-fun tp!908613 () Bool)

(declare-fun inv!45527 (String!36888) Bool)

(declare-fun inv!45530 (TokenValueInjection!9974) Bool)

(assert (=> b!2838248 (= e!1797574 (and tp!908613 (inv!45527 (tag!5547 (h!38980 rules!4246))) (inv!45530 (transformation!5043 (h!38980 rules!4246))) e!1797572))))

(declare-fun b!2838249 () Bool)

(declare-fun res!1180953 () Bool)

(declare-fun e!1797582 () Bool)

(assert (=> b!2838249 (=> (not res!1180953) (not e!1797582))))

(declare-datatypes ((LexerInterface!4633 0))(
  ( (LexerInterfaceExt!4630 (__x!22285 Int)) (Lexer!4631) )
))
(declare-fun thiss!27264 () LexerInterface!4633)

(declare-fun rulesInvariant!4049 (LexerInterface!4633 List!33684) Bool)

(assert (=> b!2838249 (= res!1180953 (rulesInvariant!4049 thiss!27264 rules!4246))))

(declare-fun b!2838250 () Bool)

(declare-fun res!1180958 () Bool)

(assert (=> b!2838250 (=> (not res!1180958) (not e!1797582))))

(declare-datatypes ((Token!9488 0))(
  ( (Token!9489 (value!162096 TokenValue!5273) (rule!7471 Rule!9886) (size!26080 Int) (originalCharacters!5775 List!33682)) )
))
(declare-datatypes ((List!33685 0))(
  ( (Nil!33561) (Cons!33561 (h!38981 Token!9488) (t!232166 List!33685)) )
))
(declare-fun tokensBis!14 () List!33685)

(declare-fun tokens!612 () List!33685)

(assert (=> b!2838250 (= res!1180958 (and (not (is-Nil!33561 tokensBis!14)) (is-Cons!33561 tokens!612) (= (h!38981 tokensBis!14) (h!38981 tokens!612))))))

(declare-fun b!2838251 () Bool)

(declare-fun res!1180955 () Bool)

(assert (=> b!2838251 (=> (not res!1180955) (not e!1797582))))

(declare-fun rulesProduceEachTokenIndividuallyList!1674 (LexerInterface!4633 List!33684 List!33685) Bool)

(assert (=> b!2838251 (= res!1180955 (rulesProduceEachTokenIndividuallyList!1674 thiss!27264 rules!4246 tokens!612))))

(declare-fun e!1797586 () Bool)

(declare-fun b!2838252 () Bool)

(declare-fun tp!908621 () Bool)

(declare-fun e!1797570 () Bool)

(declare-fun inv!21 (TokenValue!5273) Bool)

(assert (=> b!2838252 (= e!1797570 (and (inv!21 (value!162096 (h!38981 tokensBis!14))) e!1797586 tp!908621))))

(declare-fun e!1797571 () Bool)

(declare-fun tp!908622 () Bool)

(declare-fun e!1797585 () Bool)

(declare-fun b!2838253 () Bool)

(declare-fun inv!45531 (Token!9488) Bool)

(assert (=> b!2838253 (= e!1797571 (and (inv!45531 (h!38981 tokens!612)) e!1797585 tp!908622))))

(declare-fun b!2838254 () Bool)

(declare-fun res!1180956 () Bool)

(assert (=> b!2838254 (=> (not res!1180956) (not e!1797582))))

(declare-fun isEmpty!18492 (List!33684) Bool)

(assert (=> b!2838254 (= res!1180956 (not (isEmpty!18492 rules!4246)))))

(declare-fun res!1180954 () Bool)

(assert (=> start!276050 (=> (not res!1180954) (not e!1797582))))

(assert (=> start!276050 (= res!1180954 (is-Lexer!4631 thiss!27264))))

(assert (=> start!276050 e!1797582))

(assert (=> start!276050 true))

(declare-fun e!1797580 () Bool)

(assert (=> start!276050 e!1797580))

(declare-fun e!1797575 () Bool)

(assert (=> start!276050 e!1797575))

(assert (=> start!276050 e!1797571))

(declare-fun e!1797581 () Bool)

(assert (=> b!2838255 (= e!1797581 (and tp!908623 tp!908620))))

(declare-fun b!2838256 () Bool)

(declare-fun tp!908616 () Bool)

(assert (=> b!2838256 (= e!1797575 (and (inv!45531 (h!38981 tokensBis!14)) e!1797570 tp!908616))))

(assert (=> b!2838257 (= e!1797572 (and tp!908612 tp!908614))))

(declare-fun tp!908617 () Bool)

(declare-fun b!2838258 () Bool)

(assert (=> b!2838258 (= e!1797586 (and tp!908617 (inv!45527 (tag!5547 (rule!7471 (h!38981 tokensBis!14)))) (inv!45530 (transformation!5043 (rule!7471 (h!38981 tokensBis!14)))) e!1797581))))

(declare-fun b!2838259 () Bool)

(declare-fun tp!908619 () Bool)

(assert (=> b!2838259 (= e!1797580 (and e!1797574 tp!908619))))

(declare-fun b!2838260 () Bool)

(declare-fun e!1797573 () Bool)

(declare-fun tp!908615 () Bool)

(assert (=> b!2838260 (= e!1797573 (and tp!908615 (inv!45527 (tag!5547 (rule!7471 (h!38981 tokens!612)))) (inv!45530 (transformation!5043 (rule!7471 (h!38981 tokens!612)))) e!1797583))))

(declare-fun b!2838261 () Bool)

(declare-fun tp!908624 () Bool)

(assert (=> b!2838261 (= e!1797585 (and (inv!21 (value!162096 (h!38981 tokens!612))) e!1797573 tp!908624))))

(declare-fun b!2838262 () Bool)

(declare-fun lt!1011502 () Bool)

(assert (=> b!2838262 (= e!1797582 (and lt!1011502 (not lt!1011502)))))

(declare-fun subseq!509 (List!33685 List!33685) Bool)

(assert (=> b!2838262 (= lt!1011502 (subseq!509 (t!232166 tokensBis!14) (t!232166 tokens!612)))))

(declare-fun b!2838263 () Bool)

(declare-fun res!1180957 () Bool)

(assert (=> b!2838263 (=> (not res!1180957) (not e!1797582))))

(assert (=> b!2838263 (= res!1180957 (subseq!509 tokensBis!14 tokens!612))))

(assert (= (and start!276050 res!1180954) b!2838254))

(assert (= (and b!2838254 res!1180956) b!2838249))

(assert (= (and b!2838249 res!1180953) b!2838263))

(assert (= (and b!2838263 res!1180957) b!2838251))

(assert (= (and b!2838251 res!1180955) b!2838250))

(assert (= (and b!2838250 res!1180958) b!2838262))

(assert (= b!2838248 b!2838257))

(assert (= b!2838259 b!2838248))

(assert (= (and start!276050 (is-Cons!33560 rules!4246)) b!2838259))

(assert (= b!2838258 b!2838255))

(assert (= b!2838252 b!2838258))

(assert (= b!2838256 b!2838252))

(assert (= (and start!276050 (is-Cons!33561 tokensBis!14)) b!2838256))

(assert (= b!2838260 b!2838247))

(assert (= b!2838261 b!2838260))

(assert (= b!2838253 b!2838261))

(assert (= (and start!276050 (is-Cons!33561 tokens!612)) b!2838253))

(declare-fun m!3267503 () Bool)

(assert (=> b!2838248 m!3267503))

(declare-fun m!3267505 () Bool)

(assert (=> b!2838248 m!3267505))

(declare-fun m!3267507 () Bool)

(assert (=> b!2838261 m!3267507))

(declare-fun m!3267509 () Bool)

(assert (=> b!2838253 m!3267509))

(declare-fun m!3267511 () Bool)

(assert (=> b!2838262 m!3267511))

(declare-fun m!3267513 () Bool)

(assert (=> b!2838254 m!3267513))

(declare-fun m!3267515 () Bool)

(assert (=> b!2838258 m!3267515))

(declare-fun m!3267517 () Bool)

(assert (=> b!2838258 m!3267517))

(declare-fun m!3267519 () Bool)

(assert (=> b!2838252 m!3267519))

(declare-fun m!3267521 () Bool)

(assert (=> b!2838263 m!3267521))

(declare-fun m!3267523 () Bool)

(assert (=> b!2838251 m!3267523))

(declare-fun m!3267525 () Bool)

(assert (=> b!2838249 m!3267525))

(declare-fun m!3267527 () Bool)

(assert (=> b!2838260 m!3267527))

(declare-fun m!3267529 () Bool)

(assert (=> b!2838260 m!3267529))

(declare-fun m!3267531 () Bool)

(assert (=> b!2838256 m!3267531))

(push 1)

(assert (not b_next!82749))

(assert b_and!207963)

(assert (not b!2838248))

(assert b_and!207971)

(assert (not b_next!82753))

(assert (not b!2838260))

(assert (not b!2838253))

(assert b_and!207973)

(assert (not b!2838258))

(assert b_and!207969)

(assert (not b_next!82755))

(assert (not b_next!82759))

(assert (not b!2838263))

(assert b_and!207967)

(assert (not b!2838259))

(assert (not b!2838254))

(assert (not b_next!82757))

(assert (not b!2838256))

(assert (not b!2838261))

(assert (not b!2838249))

(assert (not b_next!82751))

(assert (not b!2838251))

(assert (not b!2838252))

(assert (not b!2838262))

(assert b_and!207965)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82749))

(assert b_and!207973)

(assert (not b_next!82759))

(assert b_and!207963)

(assert b_and!207967)

(assert (not b_next!82757))

(assert (not b_next!82751))

(assert b_and!207971)

(assert b_and!207965)

(assert (not b_next!82753))

(assert b_and!207969)

(assert (not b_next!82755))

(check-sat)

(pop 1)

