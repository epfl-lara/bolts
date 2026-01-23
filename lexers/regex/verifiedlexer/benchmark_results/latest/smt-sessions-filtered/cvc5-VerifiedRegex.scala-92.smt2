; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674 () Bool)

(assert start!674)

(declare-datatypes ((List!76 0))(
  ( (Nil!74) (Cons!74 (h!5470 (_ BitVec 16)) (t!14555 List!76)) )
))
(declare-datatypes ((TokenValue!32 0))(
  ( (FloatLiteralValue!64 (text!669 List!76)) (TokenValueExt!31 (__x!325 Int)) (Broken!160 (value!3993 List!76)) (Object!33) (End!32) (Def!32) (Underscore!32) (Match!32) (Else!32) (Error!32) (Case!32) (If!32) (Extends!32) (Abstract!32) (Class!32) (Val!32) (DelimiterValue!64 (del!92 List!76)) (KeywordValue!38 (value!3994 List!76)) (CommentValue!64 (value!3995 List!76)) (WhitespaceValue!64 (value!3996 List!76)) (IndentationValue!32 (value!3997 List!76)) (String!405) (Int32!32) (Broken!161 (value!3998 List!76)) (Boolean!33) (Unit!33) (OperatorValue!35 (op!92 List!76)) (IdentifierValue!64 (value!3999 List!76)) (IdentifierValue!65 (value!4000 List!76)) (WhitespaceValue!65 (value!4001 List!76)) (True!64) (False!64) (Broken!162 (value!4002 List!76)) (Broken!163 (value!4003 List!76)) (True!65) (RightBrace!32) (RightBracket!32) (Colon!32) (Null!32) (Comma!32) (LeftBracket!32) (False!65) (LeftBrace!32) (ImaginaryLiteralValue!32 (text!670 List!76)) (StringLiteralValue!96 (value!4004 List!76)) (EOFValue!32 (value!4005 List!76)) (IdentValue!32 (value!4006 List!76)) (DelimiterValue!65 (value!4007 List!76)) (DedentValue!32 (value!4008 List!76)) (NewLineValue!32 (value!4009 List!76)) (IntegerValue!96 (value!4010 (_ BitVec 32)) (text!671 List!76)) (IntegerValue!97 (value!4011 Int) (text!672 List!76)) (Times!32) (Or!32) (Equal!32) (Minus!32) (Broken!164 (value!4012 List!76)) (And!32) (Div!32) (LessEqual!32) (Mod!32) (Concat!152) (Not!32) (Plus!32) (SpaceValue!32 (value!4013 List!76)) (IntegerValue!98 (value!4014 Int) (text!673 List!76)) (StringLiteralValue!97 (text!674 List!76)) (FloatLiteralValue!65 (text!675 List!76)) (BytesLiteralValue!32 (value!4015 List!76)) (CommentValue!65 (value!4016 List!76)) (StringLiteralValue!98 (value!4017 List!76)) (ErrorTokenValue!32 (msg!93 List!76)) )
))
(declare-fun inv!21 (TokenValue!32) Bool)

(assert (=> start!674 (not (inv!21 False!64))))

(declare-fun bs!288 () Bool)

(assert (= bs!288 start!674))

(declare-fun m!3801 () Bool)

(assert (=> bs!288 m!3801))

(push 1)

(assert (not start!674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26633 () Bool)

(declare-fun e!10448 () Bool)

(declare-fun inv!16 (TokenValue!32) Bool)

(assert (=> b!26633 (= e!10448 (inv!16 False!64))))

(declare-fun d!1715 () Bool)

(declare-fun c!14460 () Bool)

(assert (=> d!1715 (= c!14460 (is-IntegerValue!96 False!64))))

(assert (=> d!1715 (= (inv!21 False!64) e!10448)))

(declare-fun b!26634 () Bool)

(declare-fun e!10449 () Bool)

(declare-fun inv!15 (TokenValue!32) Bool)

(assert (=> b!26634 (= e!10449 (inv!15 False!64))))

(declare-fun b!26635 () Bool)

(declare-fun e!10450 () Bool)

(declare-fun inv!17 (TokenValue!32) Bool)

(assert (=> b!26635 (= e!10450 (inv!17 False!64))))

(declare-fun b!26636 () Bool)

(declare-fun res!25487 () Bool)

(assert (=> b!26636 (=> res!25487 e!10449)))

(assert (=> b!26636 (= res!25487 (not (is-IntegerValue!98 False!64)))))

(assert (=> b!26636 (= e!10450 e!10449)))

(declare-fun b!26637 () Bool)

(assert (=> b!26637 (= e!10448 e!10450)))

(declare-fun c!14459 () Bool)

(assert (=> b!26637 (= c!14459 (is-IntegerValue!97 False!64))))

(assert (= (and d!1715 c!14460) b!26633))

(assert (= (and d!1715 (not c!14460)) b!26637))

(assert (= (and b!26637 c!14459) b!26635))

(assert (= (and b!26637 (not c!14459)) b!26636))

(assert (= (and b!26636 (not res!25487)) b!26634))

(declare-fun m!3805 () Bool)

(assert (=> b!26633 m!3805))

(declare-fun m!3807 () Bool)

(assert (=> b!26634 m!3807))

(declare-fun m!3809 () Bool)

(assert (=> b!26635 m!3809))

(assert (=> start!674 d!1715))

(push 1)

(assert (not b!26635))

(assert (not b!26634))

(assert (not b!26633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

