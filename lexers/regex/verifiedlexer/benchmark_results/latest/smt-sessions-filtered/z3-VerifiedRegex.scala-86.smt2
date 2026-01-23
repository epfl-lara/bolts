; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!628 () Bool)

(assert start!628)

(declare-datatypes ((List!65 0))(
  ( (Nil!63) (Cons!63 (h!5459 (_ BitVec 16)) (t!14544 List!65)) )
))
(declare-datatypes ((TokenValue!21 0))(
  ( (FloatLiteralValue!42 (text!592 List!65)) (TokenValueExt!20 (__x!314 Int)) (Broken!105 (value!3700 List!65)) (Object!22) (End!21) (Def!21) (Underscore!21) (Match!21) (Else!21) (Error!21) (Case!21) (If!21) (Extends!21) (Abstract!21) (Class!21) (Val!21) (DelimiterValue!42 (del!81 List!65)) (KeywordValue!27 (value!3701 List!65)) (CommentValue!42 (value!3702 List!65)) (WhitespaceValue!42 (value!3703 List!65)) (IndentationValue!21 (value!3704 List!65)) (String!370) (Int32!21) (Broken!106 (value!3705 List!65)) (Boolean!22) (Unit!22) (OperatorValue!24 (op!81 List!65)) (IdentifierValue!42 (value!3706 List!65)) (IdentifierValue!43 (value!3707 List!65)) (WhitespaceValue!43 (value!3708 List!65)) (True!42) (False!42) (Broken!107 (value!3709 List!65)) (Broken!108 (value!3710 List!65)) (True!43) (RightBrace!21) (RightBracket!21) (Colon!21) (Null!21) (Comma!21) (LeftBracket!21) (False!43) (LeftBrace!21) (ImaginaryLiteralValue!21 (text!593 List!65)) (StringLiteralValue!63 (value!3711 List!65)) (EOFValue!21 (value!3712 List!65)) (IdentValue!21 (value!3713 List!65)) (DelimiterValue!43 (value!3714 List!65)) (DedentValue!21 (value!3715 List!65)) (NewLineValue!21 (value!3716 List!65)) (IntegerValue!63 (value!3717 (_ BitVec 32)) (text!594 List!65)) (IntegerValue!64 (value!3718 Int) (text!595 List!65)) (Times!21) (Or!21) (Equal!21) (Minus!21) (Broken!109 (value!3719 List!65)) (And!21) (Div!21) (LessEqual!21) (Mod!21) (Concat!141) (Not!21) (Plus!21) (SpaceValue!21 (value!3720 List!65)) (IntegerValue!65 (value!3721 Int) (text!596 List!65)) (StringLiteralValue!64 (text!597 List!65)) (FloatLiteralValue!43 (text!598 List!65)) (BytesLiteralValue!21 (value!3722 List!65)) (CommentValue!43 (value!3723 List!65)) (StringLiteralValue!65 (value!3724 List!65)) (ErrorTokenValue!21 (msg!82 List!65)) )
))
(declare-fun inv!21 (TokenValue!21) Bool)

(assert (=> start!628 (not (inv!21 Div!21))))

(declare-fun bs!265 () Bool)

(assert (= bs!265 start!628))

(declare-fun m!3707 () Bool)

(assert (=> bs!265 m!3707))

(check-sat (not start!628))
(check-sat)
(get-model)

(declare-fun b!26463 () Bool)

(declare-fun res!25453 () Bool)

(declare-fun e!10348 () Bool)

(assert (=> b!26463 (=> res!25453 e!10348)))

(get-info :version)

(assert (=> b!26463 (= res!25453 (not ((_ is IntegerValue!65) Div!21)))))

(declare-fun e!10346 () Bool)

(assert (=> b!26463 (= e!10346 e!10348)))

(declare-fun d!1687 () Bool)

(declare-fun c!14392 () Bool)

(assert (=> d!1687 (= c!14392 ((_ is IntegerValue!63) Div!21))))

(declare-fun e!10347 () Bool)

(assert (=> d!1687 (= (inv!21 Div!21) e!10347)))

(declare-fun b!26464 () Bool)

(assert (=> b!26464 (= e!10347 e!10346)))

(declare-fun c!14391 () Bool)

(assert (=> b!26464 (= c!14391 ((_ is IntegerValue!64) Div!21))))

(declare-fun b!26465 () Bool)

(declare-fun inv!16 (TokenValue!21) Bool)

(assert (=> b!26465 (= e!10347 (inv!16 Div!21))))

(declare-fun b!26466 () Bool)

(declare-fun inv!17 (TokenValue!21) Bool)

(assert (=> b!26466 (= e!10346 (inv!17 Div!21))))

(declare-fun b!26467 () Bool)

(declare-fun inv!15 (TokenValue!21) Bool)

(assert (=> b!26467 (= e!10348 (inv!15 Div!21))))

(assert (= (and d!1687 c!14392) b!26465))

(assert (= (and d!1687 (not c!14392)) b!26464))

(assert (= (and b!26464 c!14391) b!26466))

(assert (= (and b!26464 (not c!14391)) b!26463))

(assert (= (and b!26463 (not res!25453)) b!26467))

(declare-fun m!3709 () Bool)

(assert (=> b!26465 m!3709))

(declare-fun m!3711 () Bool)

(assert (=> b!26466 m!3711))

(declare-fun m!3713 () Bool)

(assert (=> b!26467 m!3713))

(assert (=> start!628 d!1687))

(check-sat (not b!26467) (not b!26466) (not b!26465))
(check-sat)
