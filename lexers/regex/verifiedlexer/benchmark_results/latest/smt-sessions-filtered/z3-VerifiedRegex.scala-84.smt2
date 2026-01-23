; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!612 () Bool)

(assert start!612)

(declare-datatypes ((List!61 0))(
  ( (Nil!59) (Cons!59 (h!5455 (_ BitVec 16)) (t!14540 List!61)) )
))
(declare-datatypes ((TokenValue!17 0))(
  ( (FloatLiteralValue!34 (text!564 List!61)) (TokenValueExt!16 (__x!310 Int)) (Broken!85 (value!3594 List!61)) (Object!18) (End!17) (Def!17) (Underscore!17) (Match!17) (Else!17) (Error!17) (Case!17) (If!17) (Extends!17) (Abstract!17) (Class!17) (Val!17) (DelimiterValue!34 (del!77 List!61)) (KeywordValue!23 (value!3595 List!61)) (CommentValue!34 (value!3596 List!61)) (WhitespaceValue!34 (value!3597 List!61)) (IndentationValue!17 (value!3598 List!61)) (String!358) (Int32!17) (Broken!86 (value!3599 List!61)) (Boolean!18) (Unit!18) (OperatorValue!20 (op!77 List!61)) (IdentifierValue!34 (value!3600 List!61)) (IdentifierValue!35 (value!3601 List!61)) (WhitespaceValue!35 (value!3602 List!61)) (True!34) (False!34) (Broken!87 (value!3603 List!61)) (Broken!88 (value!3604 List!61)) (True!35) (RightBrace!17) (RightBracket!17) (Colon!17) (Null!17) (Comma!17) (LeftBracket!17) (False!35) (LeftBrace!17) (ImaginaryLiteralValue!17 (text!565 List!61)) (StringLiteralValue!51 (value!3605 List!61)) (EOFValue!17 (value!3606 List!61)) (IdentValue!17 (value!3607 List!61)) (DelimiterValue!35 (value!3608 List!61)) (DedentValue!17 (value!3609 List!61)) (NewLineValue!17 (value!3610 List!61)) (IntegerValue!51 (value!3611 (_ BitVec 32)) (text!566 List!61)) (IntegerValue!52 (value!3612 Int) (text!567 List!61)) (Times!17) (Or!17) (Equal!17) (Minus!17) (Broken!89 (value!3613 List!61)) (And!17) (Div!17) (LessEqual!17) (Mod!17) (Concat!137) (Not!17) (Plus!17) (SpaceValue!17 (value!3614 List!61)) (IntegerValue!53 (value!3615 Int) (text!568 List!61)) (StringLiteralValue!52 (text!569 List!61)) (FloatLiteralValue!35 (text!570 List!61)) (BytesLiteralValue!17 (value!3616 List!61)) (CommentValue!35 (value!3617 List!61)) (StringLiteralValue!53 (value!3618 List!61)) (ErrorTokenValue!17 (msg!78 List!61)) )
))
(declare-fun inv!21 (TokenValue!17) Bool)

(assert (=> start!612 (not (inv!21 Concat!137))))

(declare-fun bs!257 () Bool)

(assert (= bs!257 start!612))

(declare-fun m!3675 () Bool)

(assert (=> bs!257 m!3675))

(check-sat (not start!612))
(check-sat)
(get-model)

(declare-fun d!1677 () Bool)

(declare-fun c!14369 () Bool)

(get-info :version)

(assert (=> d!1677 (= c!14369 ((_ is IntegerValue!51) Concat!137))))

(declare-fun e!10314 () Bool)

(assert (=> d!1677 (= (inv!21 Concat!137) e!10314)))

(declare-fun b!26408 () Bool)

(declare-fun e!10315 () Bool)

(declare-fun inv!15 (TokenValue!17) Bool)

(assert (=> b!26408 (= e!10315 (inv!15 Concat!137))))

(declare-fun b!26409 () Bool)

(declare-fun inv!16 (TokenValue!17) Bool)

(assert (=> b!26409 (= e!10314 (inv!16 Concat!137))))

(declare-fun b!26410 () Bool)

(declare-fun e!10313 () Bool)

(declare-fun inv!17 (TokenValue!17) Bool)

(assert (=> b!26410 (= e!10313 (inv!17 Concat!137))))

(declare-fun b!26411 () Bool)

(declare-fun res!25442 () Bool)

(assert (=> b!26411 (=> res!25442 e!10315)))

(assert (=> b!26411 (= res!25442 (not ((_ is IntegerValue!53) Concat!137)))))

(assert (=> b!26411 (= e!10313 e!10315)))

(declare-fun b!26412 () Bool)

(assert (=> b!26412 (= e!10314 e!10313)))

(declare-fun c!14370 () Bool)

(assert (=> b!26412 (= c!14370 ((_ is IntegerValue!52) Concat!137))))

(assert (= (and d!1677 c!14369) b!26409))

(assert (= (and d!1677 (not c!14369)) b!26412))

(assert (= (and b!26412 c!14370) b!26410))

(assert (= (and b!26412 (not c!14370)) b!26411))

(assert (= (and b!26411 (not res!25442)) b!26408))

(declare-fun m!3683 () Bool)

(assert (=> b!26408 m!3683))

(declare-fun m!3685 () Bool)

(assert (=> b!26409 m!3685))

(declare-fun m!3687 () Bool)

(assert (=> b!26410 m!3687))

(assert (=> start!612 d!1677))

(check-sat (not b!26408) (not b!26409) (not b!26410))
(check-sat)
