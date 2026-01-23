; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94726 () Bool)

(assert start!94726)

(declare-fun bs!259468 () Bool)

(declare-fun b!1101450 () Bool)

(assert (= bs!259468 (and b!1101450 start!94726)))

(declare-fun lambda!43404 () Int)

(declare-fun lambda!43403 () Int)

(assert (=> bs!259468 (not (= lambda!43404 lambda!43403))))

(declare-fun b!1101463 () Bool)

(declare-fun e!697626 () Bool)

(assert (=> b!1101463 (= e!697626 true)))

(declare-fun b!1101462 () Bool)

(declare-fun e!697625 () Bool)

(assert (=> b!1101462 (= e!697625 e!697626)))

(assert (=> b!1101450 e!697625))

(assert (= b!1101462 b!1101463))

(assert (= b!1101450 b!1101462))

(declare-fun lambda!43405 () Int)

(assert (=> bs!259468 (not (= lambda!43405 lambda!43403))))

(assert (=> b!1101450 (not (= lambda!43405 lambda!43404))))

(declare-fun b!1101465 () Bool)

(declare-fun e!697628 () Bool)

(assert (=> b!1101465 (= e!697628 true)))

(declare-fun b!1101464 () Bool)

(declare-fun e!697627 () Bool)

(assert (=> b!1101464 (= e!697627 e!697628)))

(assert (=> b!1101450 e!697627))

(assert (= b!1101464 b!1101465))

(assert (= b!1101450 b!1101464))

(declare-fun lambda!43406 () Int)

(assert (=> bs!259468 (not (= lambda!43406 lambda!43403))))

(assert (=> b!1101450 (not (= lambda!43406 lambda!43404))))

(assert (=> b!1101450 (not (= lambda!43406 lambda!43405))))

(declare-fun b!1101467 () Bool)

(declare-fun e!697630 () Bool)

(assert (=> b!1101467 (= e!697630 true)))

(declare-fun b!1101466 () Bool)

(declare-fun e!697629 () Bool)

(assert (=> b!1101466 (= e!697629 e!697630)))

(assert (=> b!1101450 e!697629))

(assert (= b!1101466 b!1101467))

(assert (= b!1101450 b!1101466))

(declare-fun b!1101444 () Bool)

(declare-fun e!697615 () Bool)

(assert (=> b!1101444 (= e!697615 false)))

(declare-datatypes ((List!10655 0))(
  ( (Nil!10639) (Cons!10639 (h!16040 (_ BitVec 16)) (t!104039 List!10655)) )
))
(declare-datatypes ((TokenValue!1894 0))(
  ( (FloatLiteralValue!3788 (text!13703 List!10655)) (TokenValueExt!1893 (__x!7476 Int)) (Broken!9470 (value!60025 List!10655)) (Object!1909) (End!1894) (Def!1894) (Underscore!1894) (Match!1894) (Else!1894) (Error!1894) (Case!1894) (If!1894) (Extends!1894) (Abstract!1894) (Class!1894) (Val!1894) (DelimiterValue!3788 (del!1954 List!10655)) (KeywordValue!1900 (value!60026 List!10655)) (CommentValue!3788 (value!60027 List!10655)) (WhitespaceValue!3788 (value!60028 List!10655)) (IndentationValue!1894 (value!60029 List!10655)) (String!13039) (Int32!1894) (Broken!9471 (value!60030 List!10655)) (Boolean!1895) (Unit!16236) (OperatorValue!1897 (op!1954 List!10655)) (IdentifierValue!3788 (value!60031 List!10655)) (IdentifierValue!3789 (value!60032 List!10655)) (WhitespaceValue!3789 (value!60033 List!10655)) (True!3788) (False!3788) (Broken!9472 (value!60034 List!10655)) (Broken!9473 (value!60035 List!10655)) (True!3789) (RightBrace!1894) (RightBracket!1894) (Colon!1894) (Null!1894) (Comma!1894) (LeftBracket!1894) (False!3789) (LeftBrace!1894) (ImaginaryLiteralValue!1894 (text!13704 List!10655)) (StringLiteralValue!5682 (value!60036 List!10655)) (EOFValue!1894 (value!60037 List!10655)) (IdentValue!1894 (value!60038 List!10655)) (DelimiterValue!3789 (value!60039 List!10655)) (DedentValue!1894 (value!60040 List!10655)) (NewLineValue!1894 (value!60041 List!10655)) (IntegerValue!5682 (value!60042 (_ BitVec 32)) (text!13705 List!10655)) (IntegerValue!5683 (value!60043 Int) (text!13706 List!10655)) (Times!1894) (Or!1894) (Equal!1894) (Minus!1894) (Broken!9474 (value!60044 List!10655)) (And!1894) (Div!1894) (LessEqual!1894) (Mod!1894) (Concat!4991) (Not!1894) (Plus!1894) (SpaceValue!1894 (value!60045 List!10655)) (IntegerValue!5684 (value!60046 Int) (text!13707 List!10655)) (StringLiteralValue!5683 (text!13708 List!10655)) (FloatLiteralValue!3789 (text!13709 List!10655)) (BytesLiteralValue!1894 (value!60047 List!10655)) (CommentValue!3789 (value!60048 List!10655)) (StringLiteralValue!5684 (value!60049 List!10655)) (ErrorTokenValue!1894 (msg!1955 List!10655)) )
))
(declare-datatypes ((Regex!3097 0))(
  ( (ElementMatch!3097 (c!186958 (_ BitVec 16))) (Concat!4992 (regOne!6706 Regex!3097) (regTwo!6706 Regex!3097)) (EmptyExpr!3097) (Star!3097 (reg!3426 Regex!3097)) (EmptyLang!3097) (Union!3097 (regOne!6707 Regex!3097) (regTwo!6707 Regex!3097)) )
))
(declare-datatypes ((String!13040 0))(
  ( (String!13041 (value!60050 String)) )
))
(declare-datatypes ((IArray!6627 0))(
  ( (IArray!6628 (innerList!3371 List!10655)) )
))
(declare-datatypes ((Conc!3311 0))(
  ( (Node!3311 (left!9200 Conc!3311) (right!9530 Conc!3311) (csize!6852 Int) (cheight!3522 Int)) (Leaf!5231 (xs!6004 IArray!6627) (csize!6853 Int)) (Empty!3311) )
))
(declare-datatypes ((BalanceConc!6636 0))(
  ( (BalanceConc!6637 (c!186959 Conc!3311)) )
))
(declare-datatypes ((TokenValueInjection!3488 0))(
  ( (TokenValueInjection!3489 (toValue!2905 Int) (toChars!2764 Int)) )
))
(declare-datatypes ((Rule!3456 0))(
  ( (Rule!3457 (regex!1828 Regex!3097) (tag!2090 String!13040) (isSeparator!1828 Bool) (transformation!1828 TokenValueInjection!3488)) )
))
(declare-datatypes ((Token!3322 0))(
  ( (Token!3323 (value!60051 TokenValue!1894) (rule!3251 Rule!3456) (size!8258 Int) (originalCharacters!2384 List!10655)) )
))
(declare-datatypes ((List!10656 0))(
  ( (Nil!10640) (Cons!10640 (h!16041 Token!3322) (t!104040 List!10656)) )
))
(declare-datatypes ((IArray!6629 0))(
  ( (IArray!6630 (innerList!3372 List!10656)) )
))
(declare-datatypes ((Conc!3312 0))(
  ( (Node!3312 (left!9201 Conc!3312) (right!9531 Conc!3312) (csize!6854 Int) (cheight!3523 Int)) (Leaf!5232 (xs!6005 IArray!6629) (csize!6855 Int)) (Empty!3312) )
))
(declare-datatypes ((List!10657 0))(
  ( (Nil!10641) (Cons!10641 (h!16042 Rule!3456) (t!104041 List!10657)) )
))
(declare-datatypes ((BalanceConc!6638 0))(
  ( (BalanceConc!6639 (c!186960 Conc!3312)) )
))
(declare-datatypes ((PrintableTokens!372 0))(
  ( (PrintableTokens!373 (rules!9115 List!10657) (tokens!1387 BalanceConc!6638)) )
))
(declare-datatypes ((tuple2!11782 0))(
  ( (tuple2!11783 (_1!6717 Int) (_2!6717 PrintableTokens!372)) )
))
(declare-datatypes ((List!10658 0))(
  ( (Nil!10642) (Cons!10642 (h!16043 tuple2!11782) (t!104042 List!10658)) )
))
(declare-datatypes ((IArray!6631 0))(
  ( (IArray!6632 (innerList!3373 List!10658)) )
))
(declare-datatypes ((Conc!3313 0))(
  ( (Node!3313 (left!9202 Conc!3313) (right!9532 Conc!3313) (csize!6856 Int) (cheight!3524 Int)) (Leaf!5233 (xs!6006 IArray!6631) (csize!6857 Int)) (Empty!3313) )
))
(declare-datatypes ((BalanceConc!6640 0))(
  ( (BalanceConc!6641 (c!186961 Conc!3313)) )
))
(declare-fun lt!372185 () BalanceConc!6640)

(declare-datatypes ((Unit!16237 0))(
  ( (Unit!16238) )
))
(declare-fun lt!372175 () Unit!16237)

(declare-fun lt!372181 () tuple2!11782)

(declare-fun forallContained!522 (List!10658 Int tuple2!11782) Unit!16237)

(declare-fun list!3834 (BalanceConc!6640) List!10658)

(assert (=> b!1101444 (= lt!372175 (forallContained!522 (list!3834 lt!372185) lambda!43406 lt!372181))))

(declare-fun b!1101445 () Bool)

(declare-fun e!697612 () Unit!16237)

(declare-fun Unit!16239 () Unit!16237)

(assert (=> b!1101445 (= e!697612 Unit!16239)))

(declare-fun b!1101446 () Bool)

(declare-fun e!697618 () Bool)

(assert (=> b!1101446 (= e!697618 (not e!697615))))

(declare-fun res!488525 () Bool)

(assert (=> b!1101446 (=> res!488525 e!697615)))

(declare-fun lt!372178 () BalanceConc!6640)

(declare-fun lt!372184 () Int)

(declare-fun size!8259 (BalanceConc!6640) Int)

(assert (=> b!1101446 (= res!488525 (>= (size!8259 lt!372178) lt!372184))))

(declare-fun e!697613 () Bool)

(assert (=> b!1101446 e!697613))

(declare-fun res!488528 () Bool)

(assert (=> b!1101446 (=> res!488528 e!697613)))

(declare-fun lt!372182 () List!10658)

(declare-fun isEmpty!6693 (List!10658) Bool)

(assert (=> b!1101446 (= res!488528 (isEmpty!6693 lt!372182))))

(declare-fun lt!372179 () Unit!16237)

(declare-fun lemmaNotForallFilterShorter!55 (List!10658 Int) Unit!16237)

(assert (=> b!1101446 (= lt!372179 (lemmaNotForallFilterShorter!55 lt!372182 lambda!43404))))

(declare-fun objs!8 () BalanceConc!6640)

(assert (=> b!1101446 (= lt!372182 (list!3834 objs!8))))

(declare-fun lt!372183 () Unit!16237)

(assert (=> b!1101446 (= lt!372183 e!697612)))

(declare-fun c!186957 () Bool)

(declare-fun forall!2458 (BalanceConc!6640 Int) Bool)

(assert (=> b!1101446 (= c!186957 (forall!2458 objs!8 lambda!43404))))

(declare-fun b!1101447 () Bool)

(declare-fun err!2633 () Unit!16237)

(assert (=> b!1101447 (= e!697612 err!2633)))

(declare-fun lt!372176 () Unit!16237)

(assert (=> b!1101447 (= lt!372176 (forallContained!522 (list!3834 objs!8) lambda!43404 lt!372181))))

(assert (=> b!1101447 true))

(declare-fun b!1101448 () Bool)

(declare-fun res!488526 () Bool)

(assert (=> b!1101448 (=> res!488526 e!697615)))

(declare-fun contains!1871 (BalanceConc!6640 tuple2!11782) Bool)

(assert (=> b!1101448 (= res!488526 (not (contains!1871 lt!372185 lt!372181)))))

(declare-fun b!1101449 () Bool)

(declare-fun size!8260 (List!10658) Int)

(declare-fun filter!348 (List!10658 Int) List!10658)

(assert (=> b!1101449 (= e!697613 (< (size!8260 (filter!348 lt!372182 lambda!43404)) (size!8260 lt!372182)))))

(declare-fun e!697614 () Bool)

(declare-fun e!697616 () Bool)

(assert (=> b!1101450 (= e!697614 e!697616)))

(declare-fun res!488527 () Bool)

(assert (=> b!1101450 (=> (not res!488527) (not e!697616))))

(assert (=> b!1101450 (= res!488527 (contains!1871 objs!8 lt!372181))))

(declare-fun filter!349 (BalanceConc!6640 Int) BalanceConc!6640)

(assert (=> b!1101450 (= lt!372185 (filter!349 objs!8 lambda!43406))))

(declare-fun lt!372177 () BalanceConc!6640)

(assert (=> b!1101450 (= lt!372177 (filter!349 objs!8 lambda!43405))))

(assert (=> b!1101450 (= lt!372178 (filter!349 objs!8 lambda!43404))))

(declare-fun apply!2147 (BalanceConc!6640 Int) tuple2!11782)

(assert (=> b!1101450 (= lt!372181 (apply!2147 objs!8 (ite (>= lt!372184 0) (div lt!372184 2) (- (div (- lt!372184) 2)))))))

(declare-fun b!1101451 () Bool)

(declare-fun e!697620 () Bool)

(assert (=> b!1101451 (= e!697620 e!697614)))

(declare-fun res!488523 () Bool)

(assert (=> b!1101451 (=> (not res!488523) (not e!697614))))

(assert (=> b!1101451 (= res!488523 (> lt!372184 1))))

(assert (=> b!1101451 (= lt!372184 (size!8259 objs!8))))

(declare-fun res!488524 () Bool)

(assert (=> start!94726 (=> (not res!488524) (not e!697620))))

(assert (=> start!94726 (= res!488524 (forall!2458 objs!8 lambda!43403))))

(assert (=> start!94726 e!697620))

(declare-fun e!697619 () Bool)

(declare-fun inv!13673 (BalanceConc!6640) Bool)

(assert (=> start!94726 (and (inv!13673 objs!8) e!697619)))

(declare-fun b!1101452 () Bool)

(declare-fun tp!327068 () Bool)

(declare-fun inv!13674 (Conc!3313) Bool)

(assert (=> b!1101452 (= e!697619 (and (inv!13674 (c!186961 objs!8)) tp!327068))))

(declare-fun b!1101453 () Bool)

(declare-fun e!697617 () Unit!16237)

(declare-fun Unit!16240 () Unit!16237)

(assert (=> b!1101453 (= e!697617 Unit!16240)))

(declare-fun b!1101454 () Bool)

(assert (=> b!1101454 (= e!697616 e!697618)))

(declare-fun res!488529 () Bool)

(assert (=> b!1101454 (=> (not res!488529) (not e!697618))))

(declare-fun lt!372186 () Bool)

(assert (=> b!1101454 (= res!488529 (not lt!372186))))

(declare-fun lt!372180 () Unit!16237)

(assert (=> b!1101454 (= lt!372180 e!697617)))

(declare-fun c!186956 () Bool)

(assert (=> b!1101454 (= c!186956 lt!372186)))

(assert (=> b!1101454 (= lt!372186 (contains!1871 lt!372178 lt!372181))))

(declare-fun b!1101455 () Bool)

(declare-fun err!2632 () Unit!16237)

(assert (=> b!1101455 (= e!697617 err!2632)))

(declare-fun lt!372187 () Unit!16237)

(assert (=> b!1101455 (= lt!372187 (forallContained!522 (list!3834 lt!372178) lambda!43404 lt!372181))))

(assert (=> b!1101455 true))

(assert (= (and start!94726 res!488524) b!1101451))

(assert (= (and b!1101451 res!488523) b!1101450))

(assert (= (and b!1101450 res!488527) b!1101454))

(assert (= (and b!1101454 c!186956) b!1101455))

(assert (= (and b!1101454 (not c!186956)) b!1101453))

(assert (= (and b!1101454 res!488529) b!1101446))

(assert (= (and b!1101446 c!186957) b!1101447))

(assert (= (and b!1101446 (not c!186957)) b!1101445))

(assert (= (and b!1101446 (not res!488528)) b!1101449))

(assert (= (and b!1101446 (not res!488525)) b!1101448))

(assert (= (and b!1101448 (not res!488526)) b!1101444))

(assert (= start!94726 b!1101452))

(declare-fun m!1257363 () Bool)

(assert (=> start!94726 m!1257363))

(declare-fun m!1257365 () Bool)

(assert (=> start!94726 m!1257365))

(declare-fun m!1257367 () Bool)

(assert (=> b!1101450 m!1257367))

(declare-fun m!1257369 () Bool)

(assert (=> b!1101450 m!1257369))

(declare-fun m!1257371 () Bool)

(assert (=> b!1101450 m!1257371))

(declare-fun m!1257373 () Bool)

(assert (=> b!1101450 m!1257373))

(declare-fun m!1257375 () Bool)

(assert (=> b!1101450 m!1257375))

(declare-fun m!1257377 () Bool)

(assert (=> b!1101448 m!1257377))

(declare-fun m!1257379 () Bool)

(assert (=> b!1101444 m!1257379))

(assert (=> b!1101444 m!1257379))

(declare-fun m!1257381 () Bool)

(assert (=> b!1101444 m!1257381))

(declare-fun m!1257383 () Bool)

(assert (=> b!1101452 m!1257383))

(declare-fun m!1257385 () Bool)

(assert (=> b!1101446 m!1257385))

(declare-fun m!1257387 () Bool)

(assert (=> b!1101446 m!1257387))

(declare-fun m!1257389 () Bool)

(assert (=> b!1101446 m!1257389))

(declare-fun m!1257391 () Bool)

(assert (=> b!1101446 m!1257391))

(declare-fun m!1257393 () Bool)

(assert (=> b!1101446 m!1257393))

(declare-fun m!1257395 () Bool)

(assert (=> b!1101455 m!1257395))

(assert (=> b!1101455 m!1257395))

(declare-fun m!1257397 () Bool)

(assert (=> b!1101455 m!1257397))

(declare-fun m!1257399 () Bool)

(assert (=> b!1101454 m!1257399))

(declare-fun m!1257401 () Bool)

(assert (=> b!1101449 m!1257401))

(assert (=> b!1101449 m!1257401))

(declare-fun m!1257403 () Bool)

(assert (=> b!1101449 m!1257403))

(declare-fun m!1257405 () Bool)

(assert (=> b!1101449 m!1257405))

(declare-fun m!1257407 () Bool)

(assert (=> b!1101451 m!1257407))

(assert (=> b!1101447 m!1257385))

(assert (=> b!1101447 m!1257385))

(declare-fun m!1257409 () Bool)

(assert (=> b!1101447 m!1257409))

(check-sat (not b!1101466) (not b!1101467) (not b!1101452) (not b!1101448) (not b!1101447) (not b!1101463) (not b!1101455) (not b!1101465) (not b!1101464) (not b!1101446) (not b!1101462) (not b!1101449) (not b!1101450) (not start!94726) (not b!1101454) (not b!1101444) (not b!1101451))
(check-sat)
(get-model)

(declare-fun d!311474 () Bool)

(declare-fun lt!372190 () Int)

(assert (=> d!311474 (= lt!372190 (size!8260 (list!3834 lt!372178)))))

(declare-fun size!8261 (Conc!3313) Int)

(assert (=> d!311474 (= lt!372190 (size!8261 (c!186961 lt!372178)))))

(assert (=> d!311474 (= (size!8259 lt!372178) lt!372190)))

(declare-fun bs!259469 () Bool)

(assert (= bs!259469 d!311474))

(assert (=> bs!259469 m!1257395))

(assert (=> bs!259469 m!1257395))

(declare-fun m!1257411 () Bool)

(assert (=> bs!259469 m!1257411))

(declare-fun m!1257413 () Bool)

(assert (=> bs!259469 m!1257413))

(assert (=> b!1101446 d!311474))

(declare-fun d!311476 () Bool)

(get-info :version)

(assert (=> d!311476 (= (isEmpty!6693 lt!372182) ((_ is Nil!10642) lt!372182))))

(assert (=> b!1101446 d!311476))

(declare-fun d!311478 () Bool)

(declare-fun lt!372193 () Bool)

(declare-fun forall!2459 (List!10658 Int) Bool)

(assert (=> d!311478 (= lt!372193 (forall!2459 (list!3834 objs!8) lambda!43404))))

(declare-fun forall!2460 (Conc!3313 Int) Bool)

(assert (=> d!311478 (= lt!372193 (forall!2460 (c!186961 objs!8) lambda!43404))))

(assert (=> d!311478 (= (forall!2458 objs!8 lambda!43404) lt!372193)))

(declare-fun bs!259470 () Bool)

(assert (= bs!259470 d!311478))

(assert (=> bs!259470 m!1257385))

(assert (=> bs!259470 m!1257385))

(declare-fun m!1257415 () Bool)

(assert (=> bs!259470 m!1257415))

(declare-fun m!1257417 () Bool)

(assert (=> bs!259470 m!1257417))

(assert (=> b!1101446 d!311478))

(declare-fun d!311480 () Bool)

(declare-fun list!3835 (Conc!3313) List!10658)

(assert (=> d!311480 (= (list!3834 objs!8) (list!3835 (c!186961 objs!8)))))

(declare-fun bs!259471 () Bool)

(assert (= bs!259471 d!311480))

(declare-fun m!1257419 () Bool)

(assert (=> bs!259471 m!1257419))

(assert (=> b!1101446 d!311480))

(declare-fun d!311482 () Bool)

(declare-fun e!697633 () Bool)

(assert (=> d!311482 e!697633))

(declare-fun res!488532 () Bool)

(assert (=> d!311482 (=> res!488532 e!697633)))

(assert (=> d!311482 (= res!488532 (isEmpty!6693 lt!372182))))

(declare-fun lt!372196 () Unit!16237)

(declare-fun choose!7098 (List!10658 Int) Unit!16237)

(assert (=> d!311482 (= lt!372196 (choose!7098 lt!372182 lambda!43404))))

(assert (=> d!311482 (not (forall!2459 lt!372182 lambda!43404))))

(assert (=> d!311482 (= (lemmaNotForallFilterShorter!55 lt!372182 lambda!43404) lt!372196)))

(declare-fun b!1101470 () Bool)

(assert (=> b!1101470 (= e!697633 (< (size!8260 (filter!348 lt!372182 lambda!43404)) (size!8260 lt!372182)))))

(assert (= (and d!311482 (not res!488532)) b!1101470))

(assert (=> d!311482 m!1257393))

(declare-fun m!1257421 () Bool)

(assert (=> d!311482 m!1257421))

(declare-fun m!1257423 () Bool)

(assert (=> d!311482 m!1257423))

(assert (=> b!1101470 m!1257401))

(assert (=> b!1101470 m!1257401))

(assert (=> b!1101470 m!1257403))

(assert (=> b!1101470 m!1257405))

(assert (=> b!1101446 d!311482))

(declare-fun d!311484 () Bool)

(declare-fun dynLambda!4681 (Int tuple2!11782) Bool)

(assert (=> d!311484 (dynLambda!4681 lambda!43404 lt!372181)))

(declare-fun lt!372199 () Unit!16237)

(declare-fun choose!7099 (List!10658 Int tuple2!11782) Unit!16237)

(assert (=> d!311484 (= lt!372199 (choose!7099 (list!3834 objs!8) lambda!43404 lt!372181))))

(declare-fun e!697636 () Bool)

(assert (=> d!311484 e!697636))

(declare-fun res!488535 () Bool)

(assert (=> d!311484 (=> (not res!488535) (not e!697636))))

(assert (=> d!311484 (= res!488535 (forall!2459 (list!3834 objs!8) lambda!43404))))

(assert (=> d!311484 (= (forallContained!522 (list!3834 objs!8) lambda!43404 lt!372181) lt!372199)))

(declare-fun b!1101473 () Bool)

(declare-fun contains!1872 (List!10658 tuple2!11782) Bool)

(assert (=> b!1101473 (= e!697636 (contains!1872 (list!3834 objs!8) lt!372181))))

(assert (= (and d!311484 res!488535) b!1101473))

(declare-fun b_lambda!32203 () Bool)

(assert (=> (not b_lambda!32203) (not d!311484)))

(declare-fun m!1257425 () Bool)

(assert (=> d!311484 m!1257425))

(assert (=> d!311484 m!1257385))

(declare-fun m!1257427 () Bool)

(assert (=> d!311484 m!1257427))

(assert (=> d!311484 m!1257385))

(assert (=> d!311484 m!1257415))

(assert (=> b!1101473 m!1257385))

(declare-fun m!1257429 () Bool)

(assert (=> b!1101473 m!1257429))

(assert (=> b!1101447 d!311484))

(assert (=> b!1101447 d!311480))

(declare-fun d!311486 () Bool)

(declare-fun lt!372202 () Bool)

(assert (=> d!311486 (= lt!372202 (contains!1872 (list!3834 lt!372178) lt!372181))))

(declare-fun contains!1873 (Conc!3313 tuple2!11782) Bool)

(assert (=> d!311486 (= lt!372202 (contains!1873 (c!186961 lt!372178) lt!372181))))

(assert (=> d!311486 (= (contains!1871 lt!372178 lt!372181) lt!372202)))

(declare-fun bs!259472 () Bool)

(assert (= bs!259472 d!311486))

(assert (=> bs!259472 m!1257395))

(assert (=> bs!259472 m!1257395))

(declare-fun m!1257431 () Bool)

(assert (=> bs!259472 m!1257431))

(declare-fun m!1257433 () Bool)

(assert (=> bs!259472 m!1257433))

(assert (=> b!1101454 d!311486))

(declare-fun d!311488 () Bool)

(assert (=> d!311488 (dynLambda!4681 lambda!43406 lt!372181)))

(declare-fun lt!372203 () Unit!16237)

(assert (=> d!311488 (= lt!372203 (choose!7099 (list!3834 lt!372185) lambda!43406 lt!372181))))

(declare-fun e!697637 () Bool)

(assert (=> d!311488 e!697637))

(declare-fun res!488536 () Bool)

(assert (=> d!311488 (=> (not res!488536) (not e!697637))))

(assert (=> d!311488 (= res!488536 (forall!2459 (list!3834 lt!372185) lambda!43406))))

(assert (=> d!311488 (= (forallContained!522 (list!3834 lt!372185) lambda!43406 lt!372181) lt!372203)))

(declare-fun b!1101474 () Bool)

(assert (=> b!1101474 (= e!697637 (contains!1872 (list!3834 lt!372185) lt!372181))))

(assert (= (and d!311488 res!488536) b!1101474))

(declare-fun b_lambda!32205 () Bool)

(assert (=> (not b_lambda!32205) (not d!311488)))

(declare-fun m!1257435 () Bool)

(assert (=> d!311488 m!1257435))

(assert (=> d!311488 m!1257379))

(declare-fun m!1257437 () Bool)

(assert (=> d!311488 m!1257437))

(assert (=> d!311488 m!1257379))

(declare-fun m!1257439 () Bool)

(assert (=> d!311488 m!1257439))

(assert (=> b!1101474 m!1257379))

(declare-fun m!1257441 () Bool)

(assert (=> b!1101474 m!1257441))

(assert (=> b!1101444 d!311488))

(declare-fun d!311490 () Bool)

(assert (=> d!311490 (= (list!3834 lt!372185) (list!3835 (c!186961 lt!372185)))))

(declare-fun bs!259473 () Bool)

(assert (= bs!259473 d!311490))

(declare-fun m!1257443 () Bool)

(assert (=> bs!259473 m!1257443))

(assert (=> b!1101444 d!311490))

(declare-fun d!311492 () Bool)

(assert (=> d!311492 (dynLambda!4681 lambda!43404 lt!372181)))

(declare-fun lt!372204 () Unit!16237)

(assert (=> d!311492 (= lt!372204 (choose!7099 (list!3834 lt!372178) lambda!43404 lt!372181))))

(declare-fun e!697638 () Bool)

(assert (=> d!311492 e!697638))

(declare-fun res!488537 () Bool)

(assert (=> d!311492 (=> (not res!488537) (not e!697638))))

(assert (=> d!311492 (= res!488537 (forall!2459 (list!3834 lt!372178) lambda!43404))))

(assert (=> d!311492 (= (forallContained!522 (list!3834 lt!372178) lambda!43404 lt!372181) lt!372204)))

(declare-fun b!1101475 () Bool)

(assert (=> b!1101475 (= e!697638 (contains!1872 (list!3834 lt!372178) lt!372181))))

(assert (= (and d!311492 res!488537) b!1101475))

(declare-fun b_lambda!32207 () Bool)

(assert (=> (not b_lambda!32207) (not d!311492)))

(assert (=> d!311492 m!1257425))

(assert (=> d!311492 m!1257395))

(declare-fun m!1257445 () Bool)

(assert (=> d!311492 m!1257445))

(assert (=> d!311492 m!1257395))

(declare-fun m!1257447 () Bool)

(assert (=> d!311492 m!1257447))

(assert (=> b!1101475 m!1257395))

(assert (=> b!1101475 m!1257431))

(assert (=> b!1101455 d!311492))

(declare-fun d!311494 () Bool)

(assert (=> d!311494 (= (list!3834 lt!372178) (list!3835 (c!186961 lt!372178)))))

(declare-fun bs!259474 () Bool)

(assert (= bs!259474 d!311494))

(declare-fun m!1257449 () Bool)

(assert (=> bs!259474 m!1257449))

(assert (=> b!1101455 d!311494))

(declare-fun d!311496 () Bool)

(declare-fun lt!372205 () Int)

(assert (=> d!311496 (= lt!372205 (size!8260 (list!3834 objs!8)))))

(assert (=> d!311496 (= lt!372205 (size!8261 (c!186961 objs!8)))))

(assert (=> d!311496 (= (size!8259 objs!8) lt!372205)))

(declare-fun bs!259475 () Bool)

(assert (= bs!259475 d!311496))

(assert (=> bs!259475 m!1257385))

(assert (=> bs!259475 m!1257385))

(declare-fun m!1257451 () Bool)

(assert (=> bs!259475 m!1257451))

(declare-fun m!1257453 () Bool)

(assert (=> bs!259475 m!1257453))

(assert (=> b!1101451 d!311496))

(declare-fun d!311498 () Bool)

(declare-fun c!186964 () Bool)

(assert (=> d!311498 (= c!186964 ((_ is Node!3313) (c!186961 objs!8)))))

(declare-fun e!697643 () Bool)

(assert (=> d!311498 (= (inv!13674 (c!186961 objs!8)) e!697643)))

(declare-fun b!1101482 () Bool)

(declare-fun inv!13675 (Conc!3313) Bool)

(assert (=> b!1101482 (= e!697643 (inv!13675 (c!186961 objs!8)))))

(declare-fun b!1101483 () Bool)

(declare-fun e!697644 () Bool)

(assert (=> b!1101483 (= e!697643 e!697644)))

(declare-fun res!488540 () Bool)

(assert (=> b!1101483 (= res!488540 (not ((_ is Leaf!5233) (c!186961 objs!8))))))

(assert (=> b!1101483 (=> res!488540 e!697644)))

(declare-fun b!1101484 () Bool)

(declare-fun inv!13676 (Conc!3313) Bool)

(assert (=> b!1101484 (= e!697644 (inv!13676 (c!186961 objs!8)))))

(assert (= (and d!311498 c!186964) b!1101482))

(assert (= (and d!311498 (not c!186964)) b!1101483))

(assert (= (and b!1101483 (not res!488540)) b!1101484))

(declare-fun m!1257455 () Bool)

(assert (=> b!1101482 m!1257455))

(declare-fun m!1257457 () Bool)

(assert (=> b!1101484 m!1257457))

(assert (=> b!1101452 d!311498))

(declare-fun d!311500 () Bool)

(declare-fun lt!372208 () Int)

(assert (=> d!311500 (>= lt!372208 0)))

(declare-fun e!697647 () Int)

(assert (=> d!311500 (= lt!372208 e!697647)))

(declare-fun c!186967 () Bool)

(assert (=> d!311500 (= c!186967 ((_ is Nil!10642) (filter!348 lt!372182 lambda!43404)))))

(assert (=> d!311500 (= (size!8260 (filter!348 lt!372182 lambda!43404)) lt!372208)))

(declare-fun b!1101489 () Bool)

(assert (=> b!1101489 (= e!697647 0)))

(declare-fun b!1101490 () Bool)

(assert (=> b!1101490 (= e!697647 (+ 1 (size!8260 (t!104042 (filter!348 lt!372182 lambda!43404)))))))

(assert (= (and d!311500 c!186967) b!1101489))

(assert (= (and d!311500 (not c!186967)) b!1101490))

(declare-fun m!1257459 () Bool)

(assert (=> b!1101490 m!1257459))

(assert (=> b!1101449 d!311500))

(declare-fun b!1101503 () Bool)

(declare-fun res!488545 () Bool)

(declare-fun e!697656 () Bool)

(assert (=> b!1101503 (=> (not res!488545) (not e!697656))))

(declare-fun lt!372211 () List!10658)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1534 (List!10658) (InoxSet tuple2!11782))

(assert (=> b!1101503 (= res!488545 (= ((_ map implies) (content!1534 lt!372211) (content!1534 lt!372182)) ((as const (InoxSet tuple2!11782)) true)))))

(declare-fun b!1101504 () Bool)

(declare-fun e!697655 () List!10658)

(declare-fun call!80431 () List!10658)

(assert (=> b!1101504 (= e!697655 call!80431)))

(declare-fun b!1101506 () Bool)

(declare-fun e!697654 () List!10658)

(assert (=> b!1101506 (= e!697654 e!697655)))

(declare-fun c!186972 () Bool)

(assert (=> b!1101506 (= c!186972 (dynLambda!4681 lambda!43404 (h!16043 lt!372182)))))

(declare-fun b!1101507 () Bool)

(assert (=> b!1101507 (= e!697655 (Cons!10642 (h!16043 lt!372182) call!80431))))

(declare-fun d!311502 () Bool)

(assert (=> d!311502 e!697656))

(declare-fun res!488546 () Bool)

(assert (=> d!311502 (=> (not res!488546) (not e!697656))))

(assert (=> d!311502 (= res!488546 (<= (size!8260 lt!372211) (size!8260 lt!372182)))))

(assert (=> d!311502 (= lt!372211 e!697654)))

(declare-fun c!186973 () Bool)

(assert (=> d!311502 (= c!186973 ((_ is Nil!10642) lt!372182))))

(assert (=> d!311502 (= (filter!348 lt!372182 lambda!43404) lt!372211)))

(declare-fun b!1101505 () Bool)

(assert (=> b!1101505 (= e!697654 Nil!10642)))

(declare-fun b!1101508 () Bool)

(assert (=> b!1101508 (= e!697656 (forall!2459 lt!372211 lambda!43404))))

(declare-fun bm!80426 () Bool)

(assert (=> bm!80426 (= call!80431 (filter!348 (t!104042 lt!372182) lambda!43404))))

(assert (= (and d!311502 c!186973) b!1101505))

(assert (= (and d!311502 (not c!186973)) b!1101506))

(assert (= (and b!1101506 c!186972) b!1101507))

(assert (= (and b!1101506 (not c!186972)) b!1101504))

(assert (= (or b!1101507 b!1101504) bm!80426))

(assert (= (and d!311502 res!488546) b!1101503))

(assert (= (and b!1101503 res!488545) b!1101508))

(declare-fun b_lambda!32209 () Bool)

(assert (=> (not b_lambda!32209) (not b!1101506)))

(declare-fun m!1257461 () Bool)

(assert (=> bm!80426 m!1257461))

(declare-fun m!1257463 () Bool)

(assert (=> b!1101508 m!1257463))

(declare-fun m!1257465 () Bool)

(assert (=> b!1101506 m!1257465))

(declare-fun m!1257467 () Bool)

(assert (=> b!1101503 m!1257467))

(declare-fun m!1257469 () Bool)

(assert (=> b!1101503 m!1257469))

(declare-fun m!1257471 () Bool)

(assert (=> d!311502 m!1257471))

(assert (=> d!311502 m!1257405))

(assert (=> b!1101449 d!311502))

(declare-fun d!311504 () Bool)

(declare-fun lt!372212 () Int)

(assert (=> d!311504 (>= lt!372212 0)))

(declare-fun e!697657 () Int)

(assert (=> d!311504 (= lt!372212 e!697657)))

(declare-fun c!186974 () Bool)

(assert (=> d!311504 (= c!186974 ((_ is Nil!10642) lt!372182))))

(assert (=> d!311504 (= (size!8260 lt!372182) lt!372212)))

(declare-fun b!1101509 () Bool)

(assert (=> b!1101509 (= e!697657 0)))

(declare-fun b!1101510 () Bool)

(assert (=> b!1101510 (= e!697657 (+ 1 (size!8260 (t!104042 lt!372182))))))

(assert (= (and d!311504 c!186974) b!1101509))

(assert (= (and d!311504 (not c!186974)) b!1101510))

(declare-fun m!1257473 () Bool)

(assert (=> b!1101510 m!1257473))

(assert (=> b!1101449 d!311504))

(declare-fun d!311506 () Bool)

(declare-fun lt!372213 () Bool)

(assert (=> d!311506 (= lt!372213 (contains!1872 (list!3834 lt!372185) lt!372181))))

(assert (=> d!311506 (= lt!372213 (contains!1873 (c!186961 lt!372185) lt!372181))))

(assert (=> d!311506 (= (contains!1871 lt!372185 lt!372181) lt!372213)))

(declare-fun bs!259476 () Bool)

(assert (= bs!259476 d!311506))

(assert (=> bs!259476 m!1257379))

(assert (=> bs!259476 m!1257379))

(assert (=> bs!259476 m!1257441))

(declare-fun m!1257475 () Bool)

(assert (=> bs!259476 m!1257475))

(assert (=> b!1101448 d!311506))

(declare-fun d!311510 () Bool)

(declare-fun lt!372214 () Bool)

(assert (=> d!311510 (= lt!372214 (contains!1872 (list!3834 objs!8) lt!372181))))

(assert (=> d!311510 (= lt!372214 (contains!1873 (c!186961 objs!8) lt!372181))))

(assert (=> d!311510 (= (contains!1871 objs!8 lt!372181) lt!372214)))

(declare-fun bs!259477 () Bool)

(assert (= bs!259477 d!311510))

(assert (=> bs!259477 m!1257385))

(assert (=> bs!259477 m!1257385))

(assert (=> bs!259477 m!1257429))

(declare-fun m!1257477 () Bool)

(assert (=> bs!259477 m!1257477))

(assert (=> b!1101450 d!311510))

(declare-fun d!311512 () Bool)

(declare-fun e!697663 () Bool)

(assert (=> d!311512 e!697663))

(declare-fun res!488549 () Bool)

(assert (=> d!311512 (=> (not res!488549) (not e!697663))))

(declare-fun isBalanced!916 (Conc!3313) Bool)

(declare-fun filter!350 (Conc!3313 Int) Conc!3313)

(assert (=> d!311512 (= res!488549 (isBalanced!916 (filter!350 (c!186961 objs!8) lambda!43406)))))

(declare-fun lt!372223 () BalanceConc!6640)

(assert (=> d!311512 (= lt!372223 (BalanceConc!6641 (filter!350 (c!186961 objs!8) lambda!43406)))))

(assert (=> d!311512 (= (filter!349 objs!8 lambda!43406) lt!372223)))

(declare-fun b!1101519 () Bool)

(assert (=> b!1101519 (= e!697663 (= (list!3834 lt!372223) (filter!348 (list!3834 objs!8) lambda!43406)))))

(assert (= (and d!311512 res!488549) b!1101519))

(declare-fun m!1257485 () Bool)

(assert (=> d!311512 m!1257485))

(assert (=> d!311512 m!1257485))

(declare-fun m!1257487 () Bool)

(assert (=> d!311512 m!1257487))

(declare-fun m!1257489 () Bool)

(assert (=> b!1101519 m!1257489))

(assert (=> b!1101519 m!1257385))

(assert (=> b!1101519 m!1257385))

(declare-fun m!1257491 () Bool)

(assert (=> b!1101519 m!1257491))

(assert (=> b!1101450 d!311512))

(declare-fun d!311518 () Bool)

(declare-fun e!697664 () Bool)

(assert (=> d!311518 e!697664))

(declare-fun res!488550 () Bool)

(assert (=> d!311518 (=> (not res!488550) (not e!697664))))

(assert (=> d!311518 (= res!488550 (isBalanced!916 (filter!350 (c!186961 objs!8) lambda!43405)))))

(declare-fun lt!372224 () BalanceConc!6640)

(assert (=> d!311518 (= lt!372224 (BalanceConc!6641 (filter!350 (c!186961 objs!8) lambda!43405)))))

(assert (=> d!311518 (= (filter!349 objs!8 lambda!43405) lt!372224)))

(declare-fun b!1101520 () Bool)

(assert (=> b!1101520 (= e!697664 (= (list!3834 lt!372224) (filter!348 (list!3834 objs!8) lambda!43405)))))

(assert (= (and d!311518 res!488550) b!1101520))

(declare-fun m!1257493 () Bool)

(assert (=> d!311518 m!1257493))

(assert (=> d!311518 m!1257493))

(declare-fun m!1257495 () Bool)

(assert (=> d!311518 m!1257495))

(declare-fun m!1257497 () Bool)

(assert (=> b!1101520 m!1257497))

(assert (=> b!1101520 m!1257385))

(assert (=> b!1101520 m!1257385))

(declare-fun m!1257499 () Bool)

(assert (=> b!1101520 m!1257499))

(assert (=> b!1101450 d!311518))

(declare-fun d!311520 () Bool)

(declare-fun e!697665 () Bool)

(assert (=> d!311520 e!697665))

(declare-fun res!488551 () Bool)

(assert (=> d!311520 (=> (not res!488551) (not e!697665))))

(assert (=> d!311520 (= res!488551 (isBalanced!916 (filter!350 (c!186961 objs!8) lambda!43404)))))

(declare-fun lt!372225 () BalanceConc!6640)

(assert (=> d!311520 (= lt!372225 (BalanceConc!6641 (filter!350 (c!186961 objs!8) lambda!43404)))))

(assert (=> d!311520 (= (filter!349 objs!8 lambda!43404) lt!372225)))

(declare-fun b!1101521 () Bool)

(assert (=> b!1101521 (= e!697665 (= (list!3834 lt!372225) (filter!348 (list!3834 objs!8) lambda!43404)))))

(assert (= (and d!311520 res!488551) b!1101521))

(declare-fun m!1257501 () Bool)

(assert (=> d!311520 m!1257501))

(assert (=> d!311520 m!1257501))

(declare-fun m!1257503 () Bool)

(assert (=> d!311520 m!1257503))

(declare-fun m!1257505 () Bool)

(assert (=> b!1101521 m!1257505))

(assert (=> b!1101521 m!1257385))

(assert (=> b!1101521 m!1257385))

(declare-fun m!1257507 () Bool)

(assert (=> b!1101521 m!1257507))

(assert (=> b!1101450 d!311520))

(declare-fun d!311522 () Bool)

(declare-fun lt!372232 () tuple2!11782)

(declare-fun apply!2148 (List!10658 Int) tuple2!11782)

(assert (=> d!311522 (= lt!372232 (apply!2148 (list!3834 objs!8) (ite (>= lt!372184 0) (div lt!372184 2) (- (div (- lt!372184) 2)))))))

(declare-fun apply!2149 (Conc!3313 Int) tuple2!11782)

(assert (=> d!311522 (= lt!372232 (apply!2149 (c!186961 objs!8) (ite (>= lt!372184 0) (div lt!372184 2) (- (div (- lt!372184) 2)))))))

(declare-fun e!697678 () Bool)

(assert (=> d!311522 e!697678))

(declare-fun res!488560 () Bool)

(assert (=> d!311522 (=> (not res!488560) (not e!697678))))

(assert (=> d!311522 (= res!488560 (<= 0 (ite (>= lt!372184 0) (div lt!372184 2) (- (div (- lt!372184) 2)))))))

(assert (=> d!311522 (= (apply!2147 objs!8 (ite (>= lt!372184 0) (div lt!372184 2) (- (div (- lt!372184) 2)))) lt!372232)))

(declare-fun b!1101544 () Bool)

(assert (=> b!1101544 (= e!697678 (< (ite (>= lt!372184 0) (div lt!372184 2) (- (div (- lt!372184) 2))) (size!8259 objs!8)))))

(assert (= (and d!311522 res!488560) b!1101544))

(assert (=> d!311522 m!1257385))

(assert (=> d!311522 m!1257385))

(declare-fun m!1257523 () Bool)

(assert (=> d!311522 m!1257523))

(declare-fun m!1257525 () Bool)

(assert (=> d!311522 m!1257525))

(assert (=> b!1101544 m!1257407))

(assert (=> b!1101450 d!311522))

(declare-fun d!311528 () Bool)

(declare-fun lt!372233 () Bool)

(assert (=> d!311528 (= lt!372233 (forall!2459 (list!3834 objs!8) lambda!43403))))

(assert (=> d!311528 (= lt!372233 (forall!2460 (c!186961 objs!8) lambda!43403))))

(assert (=> d!311528 (= (forall!2458 objs!8 lambda!43403) lt!372233)))

(declare-fun bs!259479 () Bool)

(assert (= bs!259479 d!311528))

(assert (=> bs!259479 m!1257385))

(assert (=> bs!259479 m!1257385))

(declare-fun m!1257527 () Bool)

(assert (=> bs!259479 m!1257527))

(declare-fun m!1257529 () Bool)

(assert (=> bs!259479 m!1257529))

(assert (=> start!94726 d!311528))

(declare-fun d!311530 () Bool)

(assert (=> d!311530 (= (inv!13673 objs!8) (isBalanced!916 (c!186961 objs!8)))))

(declare-fun bs!259480 () Bool)

(assert (= bs!259480 d!311530))

(declare-fun m!1257535 () Bool)

(assert (=> bs!259480 m!1257535))

(assert (=> start!94726 d!311530))

(declare-fun b!1101564 () Bool)

(declare-fun e!697693 () Bool)

(assert (=> b!1101564 (= e!697693 true)))

(declare-fun b!1101563 () Bool)

(declare-fun e!697692 () Bool)

(assert (=> b!1101563 (= e!697692 e!697693)))

(declare-fun b!1101562 () Bool)

(declare-fun e!697691 () Bool)

(assert (=> b!1101562 (= e!697691 e!697692)))

(assert (=> b!1101462 e!697691))

(assert (= b!1101563 b!1101564))

(assert (= b!1101562 b!1101563))

(assert (= (and b!1101462 ((_ is Cons!10641) (rules!9115 (_2!6717 lt!372181)))) b!1101562))

(declare-fun order!6477 () Int)

(declare-fun order!6479 () Int)

(declare-fun dynLambda!4685 (Int Int) Int)

(declare-fun dynLambda!4686 (Int Int) Int)

(assert (=> b!1101564 (< (dynLambda!4685 order!6477 (toValue!2905 (transformation!1828 (h!16042 (rules!9115 (_2!6717 lt!372181)))))) (dynLambda!4686 order!6479 lambda!43404))))

(declare-fun order!6481 () Int)

(declare-fun dynLambda!4688 (Int Int) Int)

(assert (=> b!1101564 (< (dynLambda!4688 order!6481 (toChars!2764 (transformation!1828 (h!16042 (rules!9115 (_2!6717 lt!372181)))))) (dynLambda!4686 order!6479 lambda!43404))))

(declare-fun b!1101567 () Bool)

(declare-fun e!697696 () Bool)

(assert (=> b!1101567 (= e!697696 true)))

(declare-fun b!1101566 () Bool)

(declare-fun e!697695 () Bool)

(assert (=> b!1101566 (= e!697695 e!697696)))

(declare-fun b!1101565 () Bool)

(declare-fun e!697694 () Bool)

(assert (=> b!1101565 (= e!697694 e!697695)))

(assert (=> b!1101466 e!697694))

(assert (= b!1101566 b!1101567))

(assert (= b!1101565 b!1101566))

(assert (= (and b!1101466 ((_ is Cons!10641) (rules!9115 (_2!6717 lt!372181)))) b!1101565))

(assert (=> b!1101567 (< (dynLambda!4685 order!6477 (toValue!2905 (transformation!1828 (h!16042 (rules!9115 (_2!6717 lt!372181)))))) (dynLambda!4686 order!6479 lambda!43406))))

(assert (=> b!1101567 (< (dynLambda!4688 order!6481 (toChars!2764 (transformation!1828 (h!16042 (rules!9115 (_2!6717 lt!372181)))))) (dynLambda!4686 order!6479 lambda!43406))))

(declare-fun b!1101576 () Bool)

(declare-fun e!697701 () Bool)

(assert (=> b!1101576 (= e!697701 true)))

(declare-fun b!1101578 () Bool)

(declare-fun e!697702 () Bool)

(assert (=> b!1101578 (= e!697702 true)))

(declare-fun b!1101577 () Bool)

(assert (=> b!1101577 (= e!697701 e!697702)))

(assert (=> b!1101467 e!697701))

(assert (= (and b!1101467 ((_ is Node!3312) (c!186960 (tokens!1387 (_2!6717 lt!372181))))) b!1101576))

(assert (= b!1101577 b!1101578))

(assert (= (and b!1101467 ((_ is Leaf!5232) (c!186960 (tokens!1387 (_2!6717 lt!372181))))) b!1101577))

(declare-fun b!1101579 () Bool)

(declare-fun e!697703 () Bool)

(assert (=> b!1101579 (= e!697703 true)))

(declare-fun b!1101581 () Bool)

(declare-fun e!697704 () Bool)

(assert (=> b!1101581 (= e!697704 true)))

(declare-fun b!1101580 () Bool)

(assert (=> b!1101580 (= e!697703 e!697704)))

(assert (=> b!1101465 e!697703))

(assert (= (and b!1101465 ((_ is Node!3312) (c!186960 (tokens!1387 (_2!6717 lt!372181))))) b!1101579))

(assert (= b!1101580 b!1101581))

(assert (= (and b!1101465 ((_ is Leaf!5232) (c!186960 (tokens!1387 (_2!6717 lt!372181))))) b!1101580))

(declare-fun tp!327076 () Bool)

(declare-fun b!1101590 () Bool)

(declare-fun tp!327075 () Bool)

(declare-fun e!697709 () Bool)

(assert (=> b!1101590 (= e!697709 (and (inv!13674 (left!9202 (c!186961 objs!8))) tp!327076 (inv!13674 (right!9532 (c!186961 objs!8))) tp!327075))))

(declare-fun b!1101592 () Bool)

(declare-fun e!697710 () Bool)

(declare-fun tp!327077 () Bool)

(assert (=> b!1101592 (= e!697710 tp!327077)))

(declare-fun b!1101591 () Bool)

(declare-fun inv!13680 (IArray!6631) Bool)

(assert (=> b!1101591 (= e!697709 (and (inv!13680 (xs!6006 (c!186961 objs!8))) e!697710))))

(assert (=> b!1101452 (= tp!327068 (and (inv!13674 (c!186961 objs!8)) e!697709))))

(assert (= (and b!1101452 ((_ is Node!3313) (c!186961 objs!8))) b!1101590))

(assert (= b!1101591 b!1101592))

(assert (= (and b!1101452 ((_ is Leaf!5233) (c!186961 objs!8))) b!1101591))

(declare-fun m!1257543 () Bool)

(assert (=> b!1101590 m!1257543))

(declare-fun m!1257545 () Bool)

(assert (=> b!1101590 m!1257545))

(declare-fun m!1257547 () Bool)

(assert (=> b!1101591 m!1257547))

(assert (=> b!1101452 m!1257383))

(declare-fun b!1101595 () Bool)

(declare-fun e!697713 () Bool)

(assert (=> b!1101595 (= e!697713 true)))

(declare-fun b!1101594 () Bool)

(declare-fun e!697712 () Bool)

(assert (=> b!1101594 (= e!697712 e!697713)))

(declare-fun b!1101593 () Bool)

(declare-fun e!697711 () Bool)

(assert (=> b!1101593 (= e!697711 e!697712)))

(assert (=> b!1101464 e!697711))

(assert (= b!1101594 b!1101595))

(assert (= b!1101593 b!1101594))

(assert (= (and b!1101464 ((_ is Cons!10641) (rules!9115 (_2!6717 lt!372181)))) b!1101593))

(assert (=> b!1101595 (< (dynLambda!4685 order!6477 (toValue!2905 (transformation!1828 (h!16042 (rules!9115 (_2!6717 lt!372181)))))) (dynLambda!4686 order!6479 lambda!43405))))

(assert (=> b!1101595 (< (dynLambda!4688 order!6481 (toChars!2764 (transformation!1828 (h!16042 (rules!9115 (_2!6717 lt!372181)))))) (dynLambda!4686 order!6479 lambda!43405))))

(declare-fun b!1101598 () Bool)

(declare-fun e!697716 () Bool)

(assert (=> b!1101598 (= e!697716 true)))

(declare-fun b!1101600 () Bool)

(declare-fun e!697717 () Bool)

(assert (=> b!1101600 (= e!697717 true)))

(declare-fun b!1101599 () Bool)

(assert (=> b!1101599 (= e!697716 e!697717)))

(assert (=> b!1101463 e!697716))

(assert (= (and b!1101463 ((_ is Node!3312) (c!186960 (tokens!1387 (_2!6717 lt!372181))))) b!1101598))

(assert (= b!1101599 b!1101600))

(assert (= (and b!1101463 ((_ is Leaf!5232) (c!186960 (tokens!1387 (_2!6717 lt!372181))))) b!1101599))

(declare-fun b_lambda!32213 () Bool)

(assert (= b_lambda!32205 (or b!1101450 b_lambda!32213)))

(declare-fun bs!259483 () Bool)

(declare-fun d!311538 () Bool)

(assert (= bs!259483 (and d!311538 b!1101450)))

(assert (=> bs!259483 (= (dynLambda!4681 lambda!43406 lt!372181) (> (_1!6717 lt!372181) (_1!6717 lt!372181)))))

(assert (=> d!311488 d!311538))

(declare-fun b_lambda!32215 () Bool)

(assert (= b_lambda!32209 (or b!1101450 b_lambda!32215)))

(declare-fun bs!259484 () Bool)

(declare-fun d!311540 () Bool)

(assert (= bs!259484 (and d!311540 b!1101450)))

(assert (=> bs!259484 (= (dynLambda!4681 lambda!43404 (h!16043 lt!372182)) (< (_1!6717 (h!16043 lt!372182)) (_1!6717 lt!372181)))))

(assert (=> b!1101506 d!311540))

(declare-fun b_lambda!32217 () Bool)

(assert (= b_lambda!32207 (or b!1101450 b_lambda!32217)))

(declare-fun bs!259485 () Bool)

(declare-fun d!311542 () Bool)

(assert (= bs!259485 (and d!311542 b!1101450)))

(assert (=> bs!259485 (= (dynLambda!4681 lambda!43404 lt!372181) (< (_1!6717 lt!372181) (_1!6717 lt!372181)))))

(assert (=> d!311492 d!311542))

(declare-fun b_lambda!32219 () Bool)

(assert (= b_lambda!32203 (or b!1101450 b_lambda!32219)))

(assert (=> d!311484 d!311542))

(check-sat (not d!311502) (not d!311522) (not b!1101484) (not d!311492) (not b!1101508) (not d!311486) (not b!1101510) (not d!311494) (not b!1101579) (not d!311496) (not d!311520) (not d!311510) (not d!311490) (not d!311488) (not b!1101490) (not b!1101474) (not b!1101503) (not b!1101452) (not b!1101591) (not b!1101519) (not b!1101520) (not b_lambda!32217) (not d!311518) (not b!1101544) (not b!1101562) (not d!311530) (not b!1101600) (not b!1101578) (not b_lambda!32213) (not b!1101593) (not b!1101473) (not d!311512) (not d!311478) (not b!1101576) (not d!311528) (not b!1101565) (not bm!80426) (not d!311474) (not b_lambda!32215) (not b!1101470) (not b_lambda!32219) (not b!1101590) (not d!311482) (not b!1101482) (not b!1101598) (not d!311484) (not b!1101521) (not d!311480) (not b!1101581) (not d!311506) (not b!1101592) (not b!1101475))
(check-sat)
