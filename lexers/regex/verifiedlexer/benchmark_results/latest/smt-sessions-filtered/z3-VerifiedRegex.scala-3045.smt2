; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182710 () Bool)

(assert start!182710)

(declare-datatypes ((List!20260 0))(
  ( (Nil!20190) (Cons!20190 (h!25591 (_ BitVec 16)) (t!171677 List!20260)) )
))
(declare-datatypes ((IArray!13371 0))(
  ( (IArray!13372 (innerList!6743 List!20260)) )
))
(declare-datatypes ((Conc!6683 0))(
  ( (Node!6683 (left!16134 Conc!6683) (right!16464 Conc!6683) (csize!13596 Int) (cheight!6894 Int)) (Leaf!9729 (xs!9559 IArray!13371) (csize!13597 Int)) (Empty!6683) )
))
(declare-datatypes ((BalanceConc!13310 0))(
  ( (BalanceConc!13311 (c!299825 Conc!6683)) )
))
(declare-fun v!4922 () BalanceConc!13310)

(declare-datatypes ((TokenValue!3741 0))(
  ( (FloatLiteralValue!7482 (text!26632 List!20260)) (TokenValueExt!3740 (__x!12783 Int)) (Broken!18705 (value!113692 List!20260)) (Object!3810) (End!3741) (Def!3741) (Underscore!3741) (Match!3741) (Else!3741) (Error!3741) (Case!3741) (If!3741) (Extends!3741) (Abstract!3741) (Class!3741) (Val!3741) (DelimiterValue!7482 (del!3801 List!20260)) (KeywordValue!3747 (value!113693 List!20260)) (CommentValue!7482 (value!113694 List!20260)) (WhitespaceValue!7482 (value!113695 List!20260)) (IndentationValue!3741 (value!113696 List!20260)) (String!23034) (Int32!3741) (Broken!18706 (value!113697 List!20260)) (Boolean!3742) (Unit!34900) (OperatorValue!3744 (op!3801 List!20260)) (IdentifierValue!7482 (value!113698 List!20260)) (IdentifierValue!7483 (value!113699 List!20260)) (WhitespaceValue!7483 (value!113700 List!20260)) (True!7482) (False!7482) (Broken!18707 (value!113701 List!20260)) (Broken!18708 (value!113702 List!20260)) (True!7483) (RightBrace!3741) (RightBracket!3741) (Colon!3741) (Null!3741) (Comma!3741) (LeftBracket!3741) (False!7483) (LeftBrace!3741) (ImaginaryLiteralValue!3741 (text!26633 List!20260)) (StringLiteralValue!11223 (value!113703 List!20260)) (EOFValue!3741 (value!113704 List!20260)) (IdentValue!3741 (value!113705 List!20260)) (DelimiterValue!7483 (value!113706 List!20260)) (DedentValue!3741 (value!113707 List!20260)) (NewLineValue!3741 (value!113708 List!20260)) (IntegerValue!11223 (value!113709 (_ BitVec 32)) (text!26634 List!20260)) (IntegerValue!11224 (value!113710 Int) (text!26635 List!20260)) (Times!3741) (Or!3741) (Equal!3741) (Minus!3741) (Broken!18709 (value!113711 List!20260)) (And!3741) (Div!3741) (LessEqual!3741) (Mod!3741) (Concat!8719) (Not!3741) (Plus!3741) (SpaceValue!3741 (value!113712 List!20260)) (IntegerValue!11225 (value!113713 Int) (text!26636 List!20260)) (StringLiteralValue!11224 (text!26637 List!20260)) (FloatLiteralValue!7483 (text!26638 List!20260)) (BytesLiteralValue!3741 (value!113714 List!20260)) (CommentValue!7483 (value!113715 List!20260)) (StringLiteralValue!11225 (value!113716 List!20260)) (ErrorTokenValue!3741 (msg!3802 List!20260)) )
))
(declare-fun inv!21 (TokenValue!3741) Bool)

(declare-fun efficientList!195 (BalanceConc!13310) List!20260)

(assert (=> start!182710 (not (inv!21 (CommentValue!7483 (efficientList!195 v!4922))))))

(declare-fun e!1174168 () Bool)

(declare-fun inv!26276 (BalanceConc!13310) Bool)

(assert (=> start!182710 (and (inv!26276 v!4922) e!1174168)))

(declare-fun b!1837524 () Bool)

(declare-fun tp!519812 () Bool)

(declare-fun inv!26277 (Conc!6683) Bool)

(assert (=> b!1837524 (= e!1174168 (and (inv!26277 (c!299825 v!4922)) tp!519812))))

(assert (= start!182710 b!1837524))

(declare-fun m!2265449 () Bool)

(assert (=> start!182710 m!2265449))

(declare-fun m!2265451 () Bool)

(assert (=> start!182710 m!2265451))

(declare-fun m!2265453 () Bool)

(assert (=> start!182710 m!2265453))

(declare-fun m!2265455 () Bool)

(assert (=> b!1837524 m!2265455))

(check-sat (not start!182710) (not b!1837524))
(check-sat)
(get-model)

(declare-fun b!1837544 () Bool)

(declare-fun e!1174182 () Bool)

(declare-fun e!1174181 () Bool)

(assert (=> b!1837544 (= e!1174182 e!1174181)))

(declare-fun c!299834 () Bool)

(get-info :version)

(assert (=> b!1837544 (= c!299834 ((_ is IntegerValue!11224) (CommentValue!7483 (efficientList!195 v!4922))))))

(declare-fun d!561990 () Bool)

(declare-fun c!299833 () Bool)

(assert (=> d!561990 (= c!299833 ((_ is IntegerValue!11223) (CommentValue!7483 (efficientList!195 v!4922))))))

(assert (=> d!561990 (= (inv!21 (CommentValue!7483 (efficientList!195 v!4922))) e!1174182)))

(declare-fun b!1837545 () Bool)

(declare-fun res!825972 () Bool)

(declare-fun e!1174183 () Bool)

(assert (=> b!1837545 (=> res!825972 e!1174183)))

(assert (=> b!1837545 (= res!825972 (not ((_ is IntegerValue!11225) (CommentValue!7483 (efficientList!195 v!4922)))))))

(assert (=> b!1837545 (= e!1174181 e!1174183)))

(declare-fun b!1837546 () Bool)

(declare-fun inv!15 (TokenValue!3741) Bool)

(assert (=> b!1837546 (= e!1174183 (inv!15 (CommentValue!7483 (efficientList!195 v!4922))))))

(declare-fun b!1837547 () Bool)

(declare-fun inv!16 (TokenValue!3741) Bool)

(assert (=> b!1837547 (= e!1174182 (inv!16 (CommentValue!7483 (efficientList!195 v!4922))))))

(declare-fun b!1837548 () Bool)

(declare-fun inv!17 (TokenValue!3741) Bool)

(assert (=> b!1837548 (= e!1174181 (inv!17 (CommentValue!7483 (efficientList!195 v!4922))))))

(assert (= (and d!561990 c!299833) b!1837547))

(assert (= (and d!561990 (not c!299833)) b!1837544))

(assert (= (and b!1837544 c!299834) b!1837548))

(assert (= (and b!1837544 (not c!299834)) b!1837545))

(assert (= (and b!1837545 (not res!825972)) b!1837546))

(declare-fun m!2265461 () Bool)

(assert (=> b!1837546 m!2265461))

(declare-fun m!2265463 () Bool)

(assert (=> b!1837547 m!2265463))

(declare-fun m!2265465 () Bool)

(assert (=> b!1837548 m!2265465))

(assert (=> start!182710 d!561990))

(declare-fun d!561994 () Bool)

(declare-fun lt!713191 () List!20260)

(declare-fun list!8208 (BalanceConc!13310) List!20260)

(assert (=> d!561994 (= lt!713191 (list!8208 v!4922))))

(declare-fun efficientList!196 (Conc!6683 List!20260) List!20260)

(declare-fun efficientList$default$2!65 (Conc!6683) List!20260)

(assert (=> d!561994 (= lt!713191 (efficientList!196 (c!299825 v!4922) (efficientList$default$2!65 (c!299825 v!4922))))))

(assert (=> d!561994 (= (efficientList!195 v!4922) lt!713191)))

(declare-fun bs!408466 () Bool)

(assert (= bs!408466 d!561994))

(declare-fun m!2265473 () Bool)

(assert (=> bs!408466 m!2265473))

(declare-fun m!2265475 () Bool)

(assert (=> bs!408466 m!2265475))

(assert (=> bs!408466 m!2265475))

(declare-fun m!2265477 () Bool)

(assert (=> bs!408466 m!2265477))

(assert (=> start!182710 d!561994))

(declare-fun d!561998 () Bool)

(declare-fun isBalanced!2073 (Conc!6683) Bool)

(assert (=> d!561998 (= (inv!26276 v!4922) (isBalanced!2073 (c!299825 v!4922)))))

(declare-fun bs!408467 () Bool)

(assert (= bs!408467 d!561998))

(declare-fun m!2265479 () Bool)

(assert (=> bs!408467 m!2265479))

(assert (=> start!182710 d!561998))

(declare-fun d!562000 () Bool)

(declare-fun c!299843 () Bool)

(assert (=> d!562000 (= c!299843 ((_ is Node!6683) (c!299825 v!4922)))))

(declare-fun e!1174201 () Bool)

(assert (=> d!562000 (= (inv!26277 (c!299825 v!4922)) e!1174201)))

(declare-fun b!1837576 () Bool)

(declare-fun inv!26280 (Conc!6683) Bool)

(assert (=> b!1837576 (= e!1174201 (inv!26280 (c!299825 v!4922)))))

(declare-fun b!1837577 () Bool)

(declare-fun e!1174202 () Bool)

(assert (=> b!1837577 (= e!1174201 e!1174202)))

(declare-fun res!825978 () Bool)

(assert (=> b!1837577 (= res!825978 (not ((_ is Leaf!9729) (c!299825 v!4922))))))

(assert (=> b!1837577 (=> res!825978 e!1174202)))

(declare-fun b!1837578 () Bool)

(declare-fun inv!26281 (Conc!6683) Bool)

(assert (=> b!1837578 (= e!1174202 (inv!26281 (c!299825 v!4922)))))

(assert (= (and d!562000 c!299843) b!1837576))

(assert (= (and d!562000 (not c!299843)) b!1837577))

(assert (= (and b!1837577 (not res!825978)) b!1837578))

(declare-fun m!2265489 () Bool)

(assert (=> b!1837576 m!2265489))

(declare-fun m!2265491 () Bool)

(assert (=> b!1837578 m!2265491))

(assert (=> b!1837524 d!562000))

(declare-fun b!1837587 () Bool)

(declare-fun tp!519823 () Bool)

(declare-fun tp!519824 () Bool)

(declare-fun e!1174209 () Bool)

(assert (=> b!1837587 (= e!1174209 (and (inv!26277 (left!16134 (c!299825 v!4922))) tp!519823 (inv!26277 (right!16464 (c!299825 v!4922))) tp!519824))))

(declare-fun b!1837588 () Bool)

(declare-fun inv!26282 (IArray!13371) Bool)

(assert (=> b!1837588 (= e!1174209 (inv!26282 (xs!9559 (c!299825 v!4922))))))

(assert (=> b!1837524 (= tp!519812 (and (inv!26277 (c!299825 v!4922)) e!1174209))))

(assert (= (and b!1837524 ((_ is Node!6683) (c!299825 v!4922))) b!1837587))

(assert (= (and b!1837524 ((_ is Leaf!9729) (c!299825 v!4922))) b!1837588))

(declare-fun m!2265499 () Bool)

(assert (=> b!1837587 m!2265499))

(declare-fun m!2265501 () Bool)

(assert (=> b!1837587 m!2265501))

(declare-fun m!2265503 () Bool)

(assert (=> b!1837588 m!2265503))

(assert (=> b!1837524 m!2265455))

(check-sat (not d!561994) (not b!1837548) (not b!1837588) (not b!1837546) (not b!1837576) (not d!561998) (not b!1837547) (not b!1837578) (not b!1837524) (not b!1837587))
(check-sat)
