; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95330 () Bool)

(assert start!95330)

(declare-fun bs!259914 () Bool)

(declare-fun b!1105323 () Bool)

(assert (= bs!259914 (and b!1105323 start!95330)))

(declare-fun lambda!44604 () Int)

(declare-fun lambda!44603 () Int)

(assert (=> bs!259914 (not (= lambda!44604 lambda!44603))))

(declare-fun b!1105331 () Bool)

(declare-fun e!700514 () Bool)

(assert (=> b!1105331 (= e!700514 true)))

(declare-fun b!1105330 () Bool)

(declare-fun e!700513 () Bool)

(assert (=> b!1105330 (= e!700513 e!700514)))

(assert (=> b!1105323 e!700513))

(assert (= b!1105330 b!1105331))

(assert (= b!1105323 b!1105330))

(declare-fun lambda!44605 () Int)

(assert (=> bs!259914 (not (= lambda!44605 lambda!44603))))

(assert (=> b!1105323 (not (= lambda!44605 lambda!44604))))

(declare-fun b!1105333 () Bool)

(declare-fun e!700516 () Bool)

(assert (=> b!1105333 (= e!700516 true)))

(declare-fun b!1105332 () Bool)

(declare-fun e!700515 () Bool)

(assert (=> b!1105332 (= e!700515 e!700516)))

(assert (=> b!1105323 e!700515))

(assert (= b!1105332 b!1105333))

(assert (= b!1105323 b!1105332))

(declare-fun lambda!44606 () Int)

(assert (=> bs!259914 (not (= lambda!44606 lambda!44603))))

(assert (=> b!1105323 (not (= lambda!44606 lambda!44604))))

(assert (=> b!1105323 (not (= lambda!44606 lambda!44605))))

(declare-fun b!1105335 () Bool)

(declare-fun e!700518 () Bool)

(assert (=> b!1105335 (= e!700518 true)))

(declare-fun b!1105334 () Bool)

(declare-fun e!700517 () Bool)

(assert (=> b!1105334 (= e!700517 e!700518)))

(assert (=> b!1105323 e!700517))

(assert (= b!1105334 b!1105335))

(assert (= b!1105323 b!1105334))

(declare-fun b!1105306 () Bool)

(declare-fun e!700497 () Bool)

(declare-fun e!700503 () Bool)

(assert (=> b!1105306 (= e!700497 (not e!700503))))

(declare-fun res!489961 () Bool)

(assert (=> b!1105306 (=> res!489961 e!700503)))

(declare-datatypes ((List!10767 0))(
  ( (Nil!10751) (Cons!10751 (h!16152 (_ BitVec 16)) (t!105239 List!10767)) )
))
(declare-datatypes ((TokenValue!1922 0))(
  ( (FloatLiteralValue!3844 (text!13899 List!10767)) (TokenValueExt!1921 (__x!7504 Int)) (Broken!9610 (value!60823 List!10767)) (Object!1937) (End!1922) (Def!1922) (Underscore!1922) (Match!1922) (Else!1922) (Error!1922) (Case!1922) (If!1922) (Extends!1922) (Abstract!1922) (Class!1922) (Val!1922) (DelimiterValue!3844 (del!1982 List!10767)) (KeywordValue!1928 (value!60824 List!10767)) (CommentValue!3844 (value!60825 List!10767)) (WhitespaceValue!3844 (value!60826 List!10767)) (IndentationValue!1922 (value!60827 List!10767)) (String!13179) (Int32!1922) (Broken!9611 (value!60828 List!10767)) (Boolean!1923) (Unit!16428) (OperatorValue!1925 (op!1982 List!10767)) (IdentifierValue!3844 (value!60829 List!10767)) (IdentifierValue!3845 (value!60830 List!10767)) (WhitespaceValue!3845 (value!60831 List!10767)) (True!3844) (False!3844) (Broken!9612 (value!60832 List!10767)) (Broken!9613 (value!60833 List!10767)) (True!3845) (RightBrace!1922) (RightBracket!1922) (Colon!1922) (Null!1922) (Comma!1922) (LeftBracket!1922) (False!3845) (LeftBrace!1922) (ImaginaryLiteralValue!1922 (text!13900 List!10767)) (StringLiteralValue!5766 (value!60834 List!10767)) (EOFValue!1922 (value!60835 List!10767)) (IdentValue!1922 (value!60836 List!10767)) (DelimiterValue!3845 (value!60837 List!10767)) (DedentValue!1922 (value!60838 List!10767)) (NewLineValue!1922 (value!60839 List!10767)) (IntegerValue!5766 (value!60840 (_ BitVec 32)) (text!13901 List!10767)) (IntegerValue!5767 (value!60841 Int) (text!13902 List!10767)) (Times!1922) (Or!1922) (Equal!1922) (Minus!1922) (Broken!9614 (value!60842 List!10767)) (And!1922) (Div!1922) (LessEqual!1922) (Mod!1922) (Concat!5047) (Not!1922) (Plus!1922) (SpaceValue!1922 (value!60843 List!10767)) (IntegerValue!5768 (value!60844 Int) (text!13903 List!10767)) (StringLiteralValue!5767 (text!13904 List!10767)) (FloatLiteralValue!3845 (text!13905 List!10767)) (BytesLiteralValue!1922 (value!60845 List!10767)) (CommentValue!3845 (value!60846 List!10767)) (StringLiteralValue!5768 (value!60847 List!10767)) (ErrorTokenValue!1922 (msg!1983 List!10767)) )
))
(declare-datatypes ((Regex!3125 0))(
  ( (ElementMatch!3125 (c!187688 (_ BitVec 16))) (Concat!5048 (regOne!6762 Regex!3125) (regTwo!6762 Regex!3125)) (EmptyExpr!3125) (Star!3125 (reg!3454 Regex!3125)) (EmptyLang!3125) (Union!3125 (regOne!6763 Regex!3125) (regTwo!6763 Regex!3125)) )
))
(declare-datatypes ((String!13180 0))(
  ( (String!13181 (value!60848 String)) )
))
(declare-datatypes ((IArray!6795 0))(
  ( (IArray!6796 (innerList!3455 List!10767)) )
))
(declare-datatypes ((Conc!3395 0))(
  ( (Node!3395 (left!9354 Conc!3395) (right!9684 Conc!3395) (csize!7020 Int) (cheight!3606 Int)) (Leaf!5329 (xs!6088 IArray!6795) (csize!7021 Int)) (Empty!3395) )
))
(declare-datatypes ((BalanceConc!6804 0))(
  ( (BalanceConc!6805 (c!187689 Conc!3395)) )
))
(declare-datatypes ((TokenValueInjection!3544 0))(
  ( (TokenValueInjection!3545 (toValue!2933 Int) (toChars!2792 Int)) )
))
(declare-datatypes ((Rule!3512 0))(
  ( (Rule!3513 (regex!1856 Regex!3125) (tag!2118 String!13180) (isSeparator!1856 Bool) (transformation!1856 TokenValueInjection!3544)) )
))
(declare-datatypes ((List!10768 0))(
  ( (Nil!10752) (Cons!10752 (h!16153 Rule!3512) (t!105240 List!10768)) )
))
(declare-datatypes ((Token!3378 0))(
  ( (Token!3379 (value!60849 TokenValue!1922) (rule!3279 Rule!3512) (size!8360 Int) (originalCharacters!2412 List!10767)) )
))
(declare-datatypes ((List!10769 0))(
  ( (Nil!10753) (Cons!10753 (h!16154 Token!3378) (t!105241 List!10769)) )
))
(declare-datatypes ((IArray!6797 0))(
  ( (IArray!6798 (innerList!3456 List!10769)) )
))
(declare-datatypes ((Conc!3396 0))(
  ( (Node!3396 (left!9355 Conc!3396) (right!9685 Conc!3396) (csize!7022 Int) (cheight!3607 Int)) (Leaf!5330 (xs!6089 IArray!6797) (csize!7023 Int)) (Empty!3396) )
))
(declare-datatypes ((BalanceConc!6806 0))(
  ( (BalanceConc!6807 (c!187690 Conc!3396)) )
))
(declare-datatypes ((PrintableTokens!428 0))(
  ( (PrintableTokens!429 (rules!9143 List!10768) (tokens!1415 BalanceConc!6806)) )
))
(declare-datatypes ((tuple2!11838 0))(
  ( (tuple2!11839 (_1!6745 Int) (_2!6745 PrintableTokens!428)) )
))
(declare-datatypes ((List!10770 0))(
  ( (Nil!10754) (Cons!10754 (h!16155 tuple2!11838) (t!105242 List!10770)) )
))
(declare-datatypes ((IArray!6799 0))(
  ( (IArray!6800 (innerList!3457 List!10770)) )
))
(declare-datatypes ((Conc!3397 0))(
  ( (Node!3397 (left!9356 Conc!3397) (right!9686 Conc!3397) (csize!7024 Int) (cheight!3608 Int)) (Leaf!5331 (xs!6090 IArray!6799) (csize!7025 Int)) (Empty!3397) )
))
(declare-datatypes ((BalanceConc!6808 0))(
  ( (BalanceConc!6809 (c!187691 Conc!3397)) )
))
(declare-fun lt!375225 () BalanceConc!6808)

(declare-fun lt!375238 () Int)

(declare-fun size!8361 (BalanceConc!6808) Int)

(assert (=> b!1105306 (= res!489961 (>= (size!8361 lt!375225) lt!375238))))

(declare-fun e!700501 () Bool)

(assert (=> b!1105306 e!700501))

(declare-fun res!489962 () Bool)

(assert (=> b!1105306 (=> res!489962 e!700501)))

(declare-fun lt!375236 () Bool)

(assert (=> b!1105306 (= res!489962 lt!375236)))

(declare-fun lt!375211 () List!10770)

(declare-fun isEmpty!6721 (List!10770) Bool)

(assert (=> b!1105306 (= lt!375236 (isEmpty!6721 lt!375211))))

(declare-datatypes ((Unit!16429 0))(
  ( (Unit!16430) )
))
(declare-fun lt!375224 () Unit!16429)

(declare-fun lemmaNotForallFilterShorter!83 (List!10770 Int) Unit!16429)

(assert (=> b!1105306 (= lt!375224 (lemmaNotForallFilterShorter!83 lt!375211 lambda!44604))))

(declare-fun objs!8 () BalanceConc!6808)

(declare-fun list!3880 (BalanceConc!6808) List!10770)

(assert (=> b!1105306 (= lt!375211 (list!3880 objs!8))))

(declare-fun lt!375220 () Unit!16429)

(declare-fun e!700496 () Unit!16429)

(assert (=> b!1105306 (= lt!375220 e!700496)))

(declare-fun c!187685 () Bool)

(declare-fun forall!2533 (BalanceConc!6808 Int) Bool)

(assert (=> b!1105306 (= c!187685 (forall!2533 objs!8 lambda!44604))))

(declare-fun b!1105307 () Bool)

(declare-fun e!700502 () Bool)

(declare-fun e!700505 () Bool)

(assert (=> b!1105307 (= e!700502 e!700505)))

(declare-fun res!489966 () Bool)

(assert (=> b!1105307 (=> (not res!489966) (not e!700505))))

(assert (=> b!1105307 (= res!489966 (> lt!375238 1))))

(assert (=> b!1105307 (= lt!375238 (size!8361 objs!8))))

(declare-fun res!489959 () Bool)

(assert (=> start!95330 (=> (not res!489959) (not e!700502))))

(assert (=> start!95330 (= res!489959 (forall!2533 objs!8 lambda!44603))))

(assert (=> start!95330 e!700502))

(declare-fun e!700498 () Bool)

(declare-fun inv!13815 (BalanceConc!6808) Bool)

(assert (=> start!95330 (and (inv!13815 objs!8) e!700498)))

(declare-fun b!1105308 () Bool)

(declare-fun e!700495 () Bool)

(declare-fun e!700504 () Bool)

(assert (=> b!1105308 (= e!700495 e!700504)))

(declare-fun res!489967 () Bool)

(assert (=> b!1105308 (=> res!489967 e!700504)))

(declare-fun lt!375226 () BalanceConc!6808)

(assert (=> b!1105308 (= res!489967 (>= (size!8361 lt!375226) lt!375238))))

(declare-fun e!700506 () Bool)

(assert (=> b!1105308 e!700506))

(declare-fun res!489965 () Bool)

(assert (=> b!1105308 (=> res!489965 e!700506)))

(assert (=> b!1105308 (= res!489965 lt!375236)))

(declare-fun lt!375219 () Unit!16429)

(assert (=> b!1105308 (= lt!375219 (lemmaNotForallFilterShorter!83 lt!375211 lambda!44606))))

(declare-fun lt!375223 () Unit!16429)

(declare-fun e!700499 () Unit!16429)

(assert (=> b!1105308 (= lt!375223 e!700499)))

(declare-fun c!187684 () Bool)

(assert (=> b!1105308 (= c!187684 (forall!2533 objs!8 lambda!44606))))

(declare-fun b!1105309 () Bool)

(declare-fun e!700507 () Unit!16429)

(declare-fun Unit!16431 () Unit!16429)

(assert (=> b!1105309 (= e!700507 Unit!16431)))

(declare-fun lt!375222 () BalanceConc!6808)

(declare-fun lt!375208 () BalanceConc!6808)

(declare-fun lt!375217 () BalanceConc!6808)

(declare-fun b!1105310 () Bool)

(declare-fun ++!2890 (BalanceConc!6808 BalanceConc!6808) BalanceConc!6808)

(assert (=> b!1105310 (= e!700504 (forall!2533 (++!2890 (++!2890 lt!375217 lt!375222) lt!375208) lambda!44603))))

(declare-fun lt!375241 () List!10770)

(declare-fun lt!375207 () Unit!16429)

(declare-fun lemmaConcatPreservesForall!102 (List!10770 List!10770 Int) Unit!16429)

(assert (=> b!1105310 (= lt!375207 (lemmaConcatPreservesForall!102 lt!375241 (list!3880 lt!375208) lambda!44603))))

(declare-fun sortObjectsByID!0 (BalanceConc!6808) BalanceConc!6808)

(assert (=> b!1105310 (= lt!375208 (sortObjectsByID!0 lt!375226))))

(declare-fun lt!375212 () List!10770)

(declare-fun lt!375239 () List!10770)

(declare-fun ++!2891 (List!10770 List!10770) List!10770)

(assert (=> b!1105310 (= lt!375241 (++!2891 lt!375212 lt!375239))))

(declare-fun lt!375218 () Unit!16429)

(assert (=> b!1105310 (= lt!375218 (lemmaConcatPreservesForall!102 lt!375212 lt!375239 lambda!44603))))

(assert (=> b!1105310 (= lt!375239 (list!3880 lt!375222))))

(assert (=> b!1105310 (= lt!375212 (list!3880 lt!375217))))

(assert (=> b!1105310 (= lt!375217 (sortObjectsByID!0 lt!375225))))

(declare-fun lt!375232 () List!10770)

(declare-fun forall!2534 (List!10770 Int) Bool)

(assert (=> b!1105310 (forall!2534 lt!375232 lambda!44603)))

(declare-fun lt!375213 () Unit!16429)

(declare-fun lemmaForallSubseq!69 (List!10770 List!10770 Int) Unit!16429)

(assert (=> b!1105310 (= lt!375213 (lemmaForallSubseq!69 lt!375232 lt!375211 lambda!44603))))

(declare-fun filter!421 (BalanceConc!6808 Int) BalanceConc!6808)

(assert (=> b!1105310 (= lt!375232 (list!3880 (filter!421 objs!8 lambda!44606)))))

(declare-fun lt!375229 () List!10770)

(assert (=> b!1105310 (forall!2534 lt!375229 lambda!44603)))

(declare-fun lt!375235 () Unit!16429)

(assert (=> b!1105310 (= lt!375235 (lemmaForallSubseq!69 lt!375229 lt!375211 lambda!44603))))

(assert (=> b!1105310 (= lt!375229 (list!3880 (filter!421 objs!8 lambda!44605)))))

(declare-fun lt!375240 () List!10770)

(assert (=> b!1105310 (forall!2534 lt!375240 lambda!44603)))

(declare-fun lt!375234 () Unit!16429)

(assert (=> b!1105310 (= lt!375234 (lemmaForallSubseq!69 lt!375240 lt!375211 lambda!44603))))

(assert (=> b!1105310 (= lt!375240 (list!3880 (filter!421 objs!8 lambda!44604)))))

(declare-fun lt!375233 () Unit!16429)

(declare-fun filterSubseq!65 (List!10770 Int) Unit!16429)

(assert (=> b!1105310 (= lt!375233 (filterSubseq!65 lt!375211 lambda!44606))))

(declare-fun lt!375216 () Unit!16429)

(assert (=> b!1105310 (= lt!375216 (filterSubseq!65 lt!375211 lambda!44605))))

(declare-fun lt!375228 () Unit!16429)

(assert (=> b!1105310 (= lt!375228 (filterSubseq!65 lt!375211 lambda!44604))))

(declare-fun b!1105311 () Bool)

(declare-fun Unit!16432 () Unit!16429)

(assert (=> b!1105311 (= e!700496 Unit!16432)))

(declare-fun b!1105312 () Bool)

(assert (=> b!1105312 (= e!700503 e!700495)))

(declare-fun res!489960 () Bool)

(assert (=> b!1105312 (=> res!489960 e!700495)))

(declare-fun lt!375231 () Bool)

(assert (=> b!1105312 (= res!489960 lt!375231)))

(declare-fun lt!375210 () Unit!16429)

(assert (=> b!1105312 (= lt!375210 e!700507)))

(declare-fun c!187686 () Bool)

(assert (=> b!1105312 (= c!187686 lt!375231)))

(declare-fun lt!375227 () tuple2!11838)

(declare-fun contains!1935 (BalanceConc!6808 tuple2!11838) Bool)

(assert (=> b!1105312 (= lt!375231 (contains!1935 lt!375226 lt!375227))))

(declare-fun b!1105313 () Bool)

(declare-fun e!700500 () Unit!16429)

(declare-fun err!3070 () Unit!16429)

(assert (=> b!1105313 (= e!700500 err!3070)))

(declare-fun lt!375237 () Unit!16429)

(declare-fun forallContained!550 (List!10770 Int tuple2!11838) Unit!16429)

(assert (=> b!1105313 (= lt!375237 (forallContained!550 (list!3880 lt!375225) lambda!44604 lt!375227))))

(assert (=> b!1105313 true))

(declare-fun b!1105314 () Bool)

(declare-fun err!3073 () Unit!16429)

(assert (=> b!1105314 (= e!700496 err!3073)))

(declare-fun lt!375215 () Unit!16429)

(assert (=> b!1105314 (= lt!375215 (forallContained!550 (list!3880 objs!8) lambda!44604 lt!375227))))

(assert (=> b!1105314 true))

(declare-fun b!1105315 () Bool)

(declare-fun e!700508 () Bool)

(assert (=> b!1105315 (= e!700508 e!700497)))

(declare-fun res!489963 () Bool)

(assert (=> b!1105315 (=> (not res!489963) (not e!700497))))

(declare-fun lt!375230 () Bool)

(assert (=> b!1105315 (= res!489963 (not lt!375230))))

(declare-fun lt!375221 () Unit!16429)

(assert (=> b!1105315 (= lt!375221 e!700500)))

(declare-fun c!187687 () Bool)

(assert (=> b!1105315 (= c!187687 lt!375230)))

(assert (=> b!1105315 (= lt!375230 (contains!1935 lt!375225 lt!375227))))

(declare-fun b!1105316 () Bool)

(declare-fun tp!327314 () Bool)

(declare-fun inv!13816 (Conc!3397) Bool)

(assert (=> b!1105316 (= e!700498 (and (inv!13816 (c!187691 objs!8)) tp!327314))))

(declare-fun b!1105317 () Bool)

(declare-fun err!3072 () Unit!16429)

(assert (=> b!1105317 (= e!700507 err!3072)))

(declare-fun lt!375209 () Unit!16429)

(assert (=> b!1105317 (= lt!375209 (forallContained!550 (list!3880 lt!375226) lambda!44606 lt!375227))))

(assert (=> b!1105317 true))

(declare-fun b!1105318 () Bool)

(declare-fun size!8362 (List!10770) Int)

(declare-fun filter!422 (List!10770 Int) List!10770)

(assert (=> b!1105318 (= e!700506 (< (size!8362 (filter!422 lt!375211 lambda!44606)) (size!8362 lt!375211)))))

(declare-fun b!1105319 () Bool)

(declare-fun Unit!16433 () Unit!16429)

(assert (=> b!1105319 (= e!700500 Unit!16433)))

(declare-fun b!1105320 () Bool)

(assert (=> b!1105320 (= e!700501 (< (size!8362 (filter!422 lt!375211 lambda!44604)) (size!8362 lt!375211)))))

(declare-fun b!1105321 () Bool)

(declare-fun Unit!16434 () Unit!16429)

(assert (=> b!1105321 (= e!700499 Unit!16434)))

(declare-fun b!1105322 () Bool)

(declare-fun err!3071 () Unit!16429)

(assert (=> b!1105322 (= e!700499 err!3071)))

(declare-fun lt!375214 () Unit!16429)

(assert (=> b!1105322 (= lt!375214 (forallContained!550 lt!375211 lambda!44606 lt!375227))))

(assert (=> b!1105322 true))

(assert (=> b!1105323 (= e!700505 e!700508)))

(declare-fun res!489964 () Bool)

(assert (=> b!1105323 (=> (not res!489964) (not e!700508))))

(assert (=> b!1105323 (= res!489964 (contains!1935 objs!8 lt!375227))))

(assert (=> b!1105323 (= lt!375226 (filter!421 objs!8 lambda!44606))))

(assert (=> b!1105323 (= lt!375222 (filter!421 objs!8 lambda!44605))))

(assert (=> b!1105323 (= lt!375225 (filter!421 objs!8 lambda!44604))))

(declare-fun apply!2207 (BalanceConc!6808 Int) tuple2!11838)

(assert (=> b!1105323 (= lt!375227 (apply!2207 objs!8 (ite (>= lt!375238 0) (div lt!375238 2) (- (div (- lt!375238) 2)))))))

(assert (= (and start!95330 res!489959) b!1105307))

(assert (= (and b!1105307 res!489966) b!1105323))

(assert (= (and b!1105323 res!489964) b!1105315))

(assert (= (and b!1105315 c!187687) b!1105313))

(assert (= (and b!1105315 (not c!187687)) b!1105319))

(assert (= (and b!1105315 res!489963) b!1105306))

(assert (= (and b!1105306 c!187685) b!1105314))

(assert (= (and b!1105306 (not c!187685)) b!1105311))

(assert (= (and b!1105306 (not res!489962)) b!1105320))

(assert (= (and b!1105306 (not res!489961)) b!1105312))

(assert (= (and b!1105312 c!187686) b!1105317))

(assert (= (and b!1105312 (not c!187686)) b!1105309))

(assert (= (and b!1105312 (not res!489960)) b!1105308))

(assert (= (and b!1105308 c!187684) b!1105322))

(assert (= (and b!1105308 (not c!187684)) b!1105321))

(assert (= (and b!1105308 (not res!489965)) b!1105318))

(assert (= (and b!1105308 (not res!489967)) b!1105310))

(assert (= start!95330 b!1105316))

(declare-fun m!1262329 () Bool)

(assert (=> b!1105307 m!1262329))

(declare-fun m!1262331 () Bool)

(assert (=> start!95330 m!1262331))

(declare-fun m!1262333 () Bool)

(assert (=> start!95330 m!1262333))

(declare-fun m!1262335 () Bool)

(assert (=> b!1105320 m!1262335))

(assert (=> b!1105320 m!1262335))

(declare-fun m!1262337 () Bool)

(assert (=> b!1105320 m!1262337))

(declare-fun m!1262339 () Bool)

(assert (=> b!1105320 m!1262339))

(declare-fun m!1262341 () Bool)

(assert (=> b!1105317 m!1262341))

(assert (=> b!1105317 m!1262341))

(declare-fun m!1262343 () Bool)

(assert (=> b!1105317 m!1262343))

(declare-fun m!1262345 () Bool)

(assert (=> b!1105313 m!1262345))

(assert (=> b!1105313 m!1262345))

(declare-fun m!1262347 () Bool)

(assert (=> b!1105313 m!1262347))

(declare-fun m!1262349 () Bool)

(assert (=> b!1105316 m!1262349))

(declare-fun m!1262351 () Bool)

(assert (=> b!1105315 m!1262351))

(declare-fun m!1262353 () Bool)

(assert (=> b!1105318 m!1262353))

(assert (=> b!1105318 m!1262353))

(declare-fun m!1262355 () Bool)

(assert (=> b!1105318 m!1262355))

(assert (=> b!1105318 m!1262339))

(declare-fun m!1262357 () Bool)

(assert (=> b!1105312 m!1262357))

(declare-fun m!1262359 () Bool)

(assert (=> b!1105306 m!1262359))

(declare-fun m!1262361 () Bool)

(assert (=> b!1105306 m!1262361))

(declare-fun m!1262363 () Bool)

(assert (=> b!1105306 m!1262363))

(declare-fun m!1262365 () Bool)

(assert (=> b!1105306 m!1262365))

(declare-fun m!1262367 () Bool)

(assert (=> b!1105306 m!1262367))

(declare-fun m!1262369 () Bool)

(assert (=> b!1105308 m!1262369))

(declare-fun m!1262371 () Bool)

(assert (=> b!1105308 m!1262371))

(declare-fun m!1262373 () Bool)

(assert (=> b!1105308 m!1262373))

(declare-fun m!1262375 () Bool)

(assert (=> b!1105322 m!1262375))

(declare-fun m!1262377 () Bool)

(assert (=> b!1105310 m!1262377))

(declare-fun m!1262379 () Bool)

(assert (=> b!1105310 m!1262379))

(declare-fun m!1262381 () Bool)

(assert (=> b!1105310 m!1262381))

(declare-fun m!1262383 () Bool)

(assert (=> b!1105310 m!1262383))

(declare-fun m!1262385 () Bool)

(assert (=> b!1105310 m!1262385))

(declare-fun m!1262387 () Bool)

(assert (=> b!1105310 m!1262387))

(declare-fun m!1262389 () Bool)

(assert (=> b!1105310 m!1262389))

(declare-fun m!1262391 () Bool)

(assert (=> b!1105310 m!1262391))

(declare-fun m!1262393 () Bool)

(assert (=> b!1105310 m!1262393))

(declare-fun m!1262395 () Bool)

(assert (=> b!1105310 m!1262395))

(declare-fun m!1262397 () Bool)

(assert (=> b!1105310 m!1262397))

(declare-fun m!1262399 () Bool)

(assert (=> b!1105310 m!1262399))

(declare-fun m!1262401 () Bool)

(assert (=> b!1105310 m!1262401))

(declare-fun m!1262403 () Bool)

(assert (=> b!1105310 m!1262403))

(declare-fun m!1262405 () Bool)

(assert (=> b!1105310 m!1262405))

(declare-fun m!1262407 () Bool)

(assert (=> b!1105310 m!1262407))

(assert (=> b!1105310 m!1262401))

(declare-fun m!1262409 () Bool)

(assert (=> b!1105310 m!1262409))

(declare-fun m!1262411 () Bool)

(assert (=> b!1105310 m!1262411))

(declare-fun m!1262413 () Bool)

(assert (=> b!1105310 m!1262413))

(assert (=> b!1105310 m!1262383))

(assert (=> b!1105310 m!1262391))

(assert (=> b!1105310 m!1262405))

(declare-fun m!1262415 () Bool)

(assert (=> b!1105310 m!1262415))

(declare-fun m!1262417 () Bool)

(assert (=> b!1105310 m!1262417))

(declare-fun m!1262419 () Bool)

(assert (=> b!1105310 m!1262419))

(declare-fun m!1262421 () Bool)

(assert (=> b!1105310 m!1262421))

(assert (=> b!1105310 m!1262399))

(declare-fun m!1262423 () Bool)

(assert (=> b!1105310 m!1262423))

(declare-fun m!1262425 () Bool)

(assert (=> b!1105310 m!1262425))

(assert (=> b!1105310 m!1262381))

(declare-fun m!1262427 () Bool)

(assert (=> b!1105310 m!1262427))

(assert (=> b!1105323 m!1262381))

(assert (=> b!1105323 m!1262399))

(declare-fun m!1262429 () Bool)

(assert (=> b!1105323 m!1262429))

(declare-fun m!1262431 () Bool)

(assert (=> b!1105323 m!1262431))

(assert (=> b!1105323 m!1262401))

(assert (=> b!1105314 m!1262359))

(assert (=> b!1105314 m!1262359))

(declare-fun m!1262433 () Bool)

(assert (=> b!1105314 m!1262433))

(check-sat (not b!1105310) (not b!1105306) (not b!1105330) (not b!1105308) (not b!1105317) (not b!1105316) (not b!1105332) (not b!1105314) (not b!1105313) (not b!1105320) (not b!1105323) (not b!1105307) (not start!95330) (not b!1105322) (not b!1105312) (not b!1105334) (not b!1105318) (not b!1105333) (not b!1105331) (not b!1105335) (not b!1105315))
(check-sat)
(get-model)

(declare-fun d!312904 () Bool)

(declare-fun lt!375244 () Bool)

(declare-fun contains!1938 (List!10770 tuple2!11838) Bool)

(assert (=> d!312904 (= lt!375244 (contains!1938 (list!3880 lt!375226) lt!375227))))

(declare-fun contains!1939 (Conc!3397 tuple2!11838) Bool)

(assert (=> d!312904 (= lt!375244 (contains!1939 (c!187691 lt!375226) lt!375227))))

(assert (=> d!312904 (= (contains!1935 lt!375226 lt!375227) lt!375244)))

(declare-fun bs!259915 () Bool)

(assert (= bs!259915 d!312904))

(assert (=> bs!259915 m!1262341))

(assert (=> bs!259915 m!1262341))

(declare-fun m!1262435 () Bool)

(assert (=> bs!259915 m!1262435))

(declare-fun m!1262437 () Bool)

(assert (=> bs!259915 m!1262437))

(assert (=> b!1105312 d!312904))

(declare-fun d!312906 () Bool)

(declare-fun dynLambda!4742 (Int tuple2!11838) Bool)

(assert (=> d!312906 (dynLambda!4742 lambda!44606 lt!375227)))

(declare-fun lt!375247 () Unit!16429)

(declare-fun choose!7156 (List!10770 Int tuple2!11838) Unit!16429)

(assert (=> d!312906 (= lt!375247 (choose!7156 lt!375211 lambda!44606 lt!375227))))

(declare-fun e!700521 () Bool)

(assert (=> d!312906 e!700521))

(declare-fun res!489970 () Bool)

(assert (=> d!312906 (=> (not res!489970) (not e!700521))))

(assert (=> d!312906 (= res!489970 (forall!2534 lt!375211 lambda!44606))))

(assert (=> d!312906 (= (forallContained!550 lt!375211 lambda!44606 lt!375227) lt!375247)))

(declare-fun b!1105338 () Bool)

(assert (=> b!1105338 (= e!700521 (contains!1938 lt!375211 lt!375227))))

(assert (= (and d!312906 res!489970) b!1105338))

(declare-fun b_lambda!32707 () Bool)

(assert (=> (not b_lambda!32707) (not d!312906)))

(declare-fun m!1262439 () Bool)

(assert (=> d!312906 m!1262439))

(declare-fun m!1262441 () Bool)

(assert (=> d!312906 m!1262441))

(declare-fun m!1262443 () Bool)

(assert (=> d!312906 m!1262443))

(declare-fun m!1262445 () Bool)

(assert (=> b!1105338 m!1262445))

(assert (=> b!1105322 d!312906))

(declare-fun d!312908 () Bool)

(assert (=> d!312908 (dynLambda!4742 lambda!44604 lt!375227)))

(declare-fun lt!375248 () Unit!16429)

(assert (=> d!312908 (= lt!375248 (choose!7156 (list!3880 lt!375225) lambda!44604 lt!375227))))

(declare-fun e!700522 () Bool)

(assert (=> d!312908 e!700522))

(declare-fun res!489971 () Bool)

(assert (=> d!312908 (=> (not res!489971) (not e!700522))))

(assert (=> d!312908 (= res!489971 (forall!2534 (list!3880 lt!375225) lambda!44604))))

(assert (=> d!312908 (= (forallContained!550 (list!3880 lt!375225) lambda!44604 lt!375227) lt!375248)))

(declare-fun b!1105339 () Bool)

(assert (=> b!1105339 (= e!700522 (contains!1938 (list!3880 lt!375225) lt!375227))))

(assert (= (and d!312908 res!489971) b!1105339))

(declare-fun b_lambda!32709 () Bool)

(assert (=> (not b_lambda!32709) (not d!312908)))

(declare-fun m!1262447 () Bool)

(assert (=> d!312908 m!1262447))

(assert (=> d!312908 m!1262345))

(declare-fun m!1262449 () Bool)

(assert (=> d!312908 m!1262449))

(assert (=> d!312908 m!1262345))

(declare-fun m!1262451 () Bool)

(assert (=> d!312908 m!1262451))

(assert (=> b!1105339 m!1262345))

(declare-fun m!1262453 () Bool)

(assert (=> b!1105339 m!1262453))

(assert (=> b!1105313 d!312908))

(declare-fun d!312910 () Bool)

(declare-fun list!3882 (Conc!3397) List!10770)

(assert (=> d!312910 (= (list!3880 lt!375225) (list!3882 (c!187691 lt!375225)))))

(declare-fun bs!259916 () Bool)

(assert (= bs!259916 d!312910))

(declare-fun m!1262455 () Bool)

(assert (=> bs!259916 m!1262455))

(assert (=> b!1105313 d!312910))

(declare-fun d!312912 () Bool)

(declare-fun lt!375249 () Bool)

(assert (=> d!312912 (= lt!375249 (contains!1938 (list!3880 objs!8) lt!375227))))

(assert (=> d!312912 (= lt!375249 (contains!1939 (c!187691 objs!8) lt!375227))))

(assert (=> d!312912 (= (contains!1935 objs!8 lt!375227) lt!375249)))

(declare-fun bs!259917 () Bool)

(assert (= bs!259917 d!312912))

(assert (=> bs!259917 m!1262359))

(assert (=> bs!259917 m!1262359))

(declare-fun m!1262457 () Bool)

(assert (=> bs!259917 m!1262457))

(declare-fun m!1262459 () Bool)

(assert (=> bs!259917 m!1262459))

(assert (=> b!1105323 d!312912))

(declare-fun d!312914 () Bool)

(declare-fun e!700525 () Bool)

(assert (=> d!312914 e!700525))

(declare-fun res!489974 () Bool)

(assert (=> d!312914 (=> (not res!489974) (not e!700525))))

(declare-fun isBalanced!933 (Conc!3397) Bool)

(declare-fun filter!424 (Conc!3397 Int) Conc!3397)

(assert (=> d!312914 (= res!489974 (isBalanced!933 (filter!424 (c!187691 objs!8) lambda!44606)))))

(declare-fun lt!375252 () BalanceConc!6808)

(assert (=> d!312914 (= lt!375252 (BalanceConc!6809 (filter!424 (c!187691 objs!8) lambda!44606)))))

(assert (=> d!312914 (= (filter!421 objs!8 lambda!44606) lt!375252)))

(declare-fun b!1105342 () Bool)

(assert (=> b!1105342 (= e!700525 (= (list!3880 lt!375252) (filter!422 (list!3880 objs!8) lambda!44606)))))

(assert (= (and d!312914 res!489974) b!1105342))

(declare-fun m!1262461 () Bool)

(assert (=> d!312914 m!1262461))

(assert (=> d!312914 m!1262461))

(declare-fun m!1262463 () Bool)

(assert (=> d!312914 m!1262463))

(declare-fun m!1262465 () Bool)

(assert (=> b!1105342 m!1262465))

(assert (=> b!1105342 m!1262359))

(assert (=> b!1105342 m!1262359))

(declare-fun m!1262467 () Bool)

(assert (=> b!1105342 m!1262467))

(assert (=> b!1105323 d!312914))

(declare-fun d!312918 () Bool)

(declare-fun lt!375263 () tuple2!11838)

(declare-fun apply!2210 (List!10770 Int) tuple2!11838)

(assert (=> d!312918 (= lt!375263 (apply!2210 (list!3880 objs!8) (ite (>= lt!375238 0) (div lt!375238 2) (- (div (- lt!375238) 2)))))))

(declare-fun apply!2211 (Conc!3397 Int) tuple2!11838)

(assert (=> d!312918 (= lt!375263 (apply!2211 (c!187691 objs!8) (ite (>= lt!375238 0) (div lt!375238 2) (- (div (- lt!375238) 2)))))))

(declare-fun e!700536 () Bool)

(assert (=> d!312918 e!700536))

(declare-fun res!489985 () Bool)

(assert (=> d!312918 (=> (not res!489985) (not e!700536))))

(assert (=> d!312918 (= res!489985 (<= 0 (ite (>= lt!375238 0) (div lt!375238 2) (- (div (- lt!375238) 2)))))))

(assert (=> d!312918 (= (apply!2207 objs!8 (ite (>= lt!375238 0) (div lt!375238 2) (- (div (- lt!375238) 2)))) lt!375263)))

(declare-fun b!1105353 () Bool)

(assert (=> b!1105353 (= e!700536 (< (ite (>= lt!375238 0) (div lt!375238 2) (- (div (- lt!375238) 2))) (size!8361 objs!8)))))

(assert (= (and d!312918 res!489985) b!1105353))

(assert (=> d!312918 m!1262359))

(assert (=> d!312918 m!1262359))

(declare-fun m!1262497 () Bool)

(assert (=> d!312918 m!1262497))

(declare-fun m!1262499 () Bool)

(assert (=> d!312918 m!1262499))

(assert (=> b!1105353 m!1262329))

(assert (=> b!1105323 d!312918))

(declare-fun d!312928 () Bool)

(declare-fun e!700537 () Bool)

(assert (=> d!312928 e!700537))

(declare-fun res!489986 () Bool)

(assert (=> d!312928 (=> (not res!489986) (not e!700537))))

(assert (=> d!312928 (= res!489986 (isBalanced!933 (filter!424 (c!187691 objs!8) lambda!44604)))))

(declare-fun lt!375266 () BalanceConc!6808)

(assert (=> d!312928 (= lt!375266 (BalanceConc!6809 (filter!424 (c!187691 objs!8) lambda!44604)))))

(assert (=> d!312928 (= (filter!421 objs!8 lambda!44604) lt!375266)))

(declare-fun b!1105354 () Bool)

(assert (=> b!1105354 (= e!700537 (= (list!3880 lt!375266) (filter!422 (list!3880 objs!8) lambda!44604)))))

(assert (= (and d!312928 res!489986) b!1105354))

(declare-fun m!1262505 () Bool)

(assert (=> d!312928 m!1262505))

(assert (=> d!312928 m!1262505))

(declare-fun m!1262507 () Bool)

(assert (=> d!312928 m!1262507))

(declare-fun m!1262509 () Bool)

(assert (=> b!1105354 m!1262509))

(assert (=> b!1105354 m!1262359))

(assert (=> b!1105354 m!1262359))

(declare-fun m!1262511 () Bool)

(assert (=> b!1105354 m!1262511))

(assert (=> b!1105323 d!312928))

(declare-fun d!312932 () Bool)

(declare-fun e!700538 () Bool)

(assert (=> d!312932 e!700538))

(declare-fun res!489987 () Bool)

(assert (=> d!312932 (=> (not res!489987) (not e!700538))))

(assert (=> d!312932 (= res!489987 (isBalanced!933 (filter!424 (c!187691 objs!8) lambda!44605)))))

(declare-fun lt!375268 () BalanceConc!6808)

(assert (=> d!312932 (= lt!375268 (BalanceConc!6809 (filter!424 (c!187691 objs!8) lambda!44605)))))

(assert (=> d!312932 (= (filter!421 objs!8 lambda!44605) lt!375268)))

(declare-fun b!1105355 () Bool)

(assert (=> b!1105355 (= e!700538 (= (list!3880 lt!375268) (filter!422 (list!3880 objs!8) lambda!44605)))))

(assert (= (and d!312932 res!489987) b!1105355))

(declare-fun m!1262513 () Bool)

(assert (=> d!312932 m!1262513))

(assert (=> d!312932 m!1262513))

(declare-fun m!1262515 () Bool)

(assert (=> d!312932 m!1262515))

(declare-fun m!1262517 () Bool)

(assert (=> b!1105355 m!1262517))

(assert (=> b!1105355 m!1262359))

(assert (=> b!1105355 m!1262359))

(declare-fun m!1262519 () Bool)

(assert (=> b!1105355 m!1262519))

(assert (=> b!1105323 d!312932))

(declare-fun d!312934 () Bool)

(declare-fun lt!375277 () Int)

(assert (=> d!312934 (>= lt!375277 0)))

(declare-fun e!700544 () Int)

(assert (=> d!312934 (= lt!375277 e!700544)))

(declare-fun c!187696 () Bool)

(get-info :version)

(assert (=> d!312934 (= c!187696 ((_ is Nil!10754) (filter!422 lt!375211 lambda!44604)))))

(assert (=> d!312934 (= (size!8362 (filter!422 lt!375211 lambda!44604)) lt!375277)))

(declare-fun b!1105363 () Bool)

(assert (=> b!1105363 (= e!700544 0)))

(declare-fun b!1105364 () Bool)

(assert (=> b!1105364 (= e!700544 (+ 1 (size!8362 (t!105242 (filter!422 lt!375211 lambda!44604)))))))

(assert (= (and d!312934 c!187696) b!1105363))

(assert (= (and d!312934 (not c!187696)) b!1105364))

(declare-fun m!1262539 () Bool)

(assert (=> b!1105364 m!1262539))

(assert (=> b!1105320 d!312934))

(declare-fun b!1105412 () Bool)

(declare-fun e!700569 () List!10770)

(declare-fun call!80501 () List!10770)

(assert (=> b!1105412 (= e!700569 call!80501)))

(declare-fun b!1105413 () Bool)

(declare-fun e!700570 () Bool)

(declare-fun lt!375292 () List!10770)

(assert (=> b!1105413 (= e!700570 (forall!2534 lt!375292 lambda!44604))))

(declare-fun d!312944 () Bool)

(assert (=> d!312944 e!700570))

(declare-fun res!490004 () Bool)

(assert (=> d!312944 (=> (not res!490004) (not e!700570))))

(assert (=> d!312944 (= res!490004 (<= (size!8362 lt!375292) (size!8362 lt!375211)))))

(declare-fun e!700571 () List!10770)

(assert (=> d!312944 (= lt!375292 e!700571)))

(declare-fun c!187715 () Bool)

(assert (=> d!312944 (= c!187715 ((_ is Nil!10754) lt!375211))))

(assert (=> d!312944 (= (filter!422 lt!375211 lambda!44604) lt!375292)))

(declare-fun b!1105414 () Bool)

(declare-fun res!490005 () Bool)

(assert (=> b!1105414 (=> (not res!490005) (not e!700570))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1552 (List!10770) (InoxSet tuple2!11838))

(assert (=> b!1105414 (= res!490005 (= ((_ map implies) (content!1552 lt!375292) (content!1552 lt!375211)) ((as const (InoxSet tuple2!11838)) true)))))

(declare-fun bm!80496 () Bool)

(assert (=> bm!80496 (= call!80501 (filter!422 (t!105242 lt!375211) lambda!44604))))

(declare-fun b!1105415 () Bool)

(assert (=> b!1105415 (= e!700571 e!700569)))

(declare-fun c!187714 () Bool)

(assert (=> b!1105415 (= c!187714 (dynLambda!4742 lambda!44604 (h!16155 lt!375211)))))

(declare-fun b!1105416 () Bool)

(assert (=> b!1105416 (= e!700571 Nil!10754)))

(declare-fun b!1105417 () Bool)

(assert (=> b!1105417 (= e!700569 (Cons!10754 (h!16155 lt!375211) call!80501))))

(assert (= (and d!312944 c!187715) b!1105416))

(assert (= (and d!312944 (not c!187715)) b!1105415))

(assert (= (and b!1105415 c!187714) b!1105417))

(assert (= (and b!1105415 (not c!187714)) b!1105412))

(assert (= (or b!1105417 b!1105412) bm!80496))

(assert (= (and d!312944 res!490004) b!1105414))

(assert (= (and b!1105414 res!490005) b!1105413))

(declare-fun b_lambda!32719 () Bool)

(assert (=> (not b_lambda!32719) (not b!1105415)))

(declare-fun m!1262589 () Bool)

(assert (=> d!312944 m!1262589))

(assert (=> d!312944 m!1262339))

(declare-fun m!1262591 () Bool)

(assert (=> b!1105415 m!1262591))

(declare-fun m!1262593 () Bool)

(assert (=> bm!80496 m!1262593))

(declare-fun m!1262595 () Bool)

(assert (=> b!1105413 m!1262595))

(declare-fun m!1262597 () Bool)

(assert (=> b!1105414 m!1262597))

(declare-fun m!1262599 () Bool)

(assert (=> b!1105414 m!1262599))

(assert (=> b!1105320 d!312944))

(declare-fun d!312968 () Bool)

(declare-fun lt!375297 () Int)

(assert (=> d!312968 (>= lt!375297 0)))

(declare-fun e!700572 () Int)

(assert (=> d!312968 (= lt!375297 e!700572)))

(declare-fun c!187716 () Bool)

(assert (=> d!312968 (= c!187716 ((_ is Nil!10754) lt!375211))))

(assert (=> d!312968 (= (size!8362 lt!375211) lt!375297)))

(declare-fun b!1105418 () Bool)

(assert (=> b!1105418 (= e!700572 0)))

(declare-fun b!1105419 () Bool)

(assert (=> b!1105419 (= e!700572 (+ 1 (size!8362 (t!105242 lt!375211))))))

(assert (= (and d!312968 c!187716) b!1105418))

(assert (= (and d!312968 (not c!187716)) b!1105419))

(declare-fun m!1262601 () Bool)

(assert (=> b!1105419 m!1262601))

(assert (=> b!1105320 d!312968))

(declare-fun d!312970 () Bool)

(assert (=> d!312970 (forall!2534 (++!2891 lt!375212 lt!375239) lambda!44603)))

(declare-fun lt!375304 () Unit!16429)

(declare-fun choose!7159 (List!10770 List!10770 Int) Unit!16429)

(assert (=> d!312970 (= lt!375304 (choose!7159 lt!375212 lt!375239 lambda!44603))))

(assert (=> d!312970 (forall!2534 lt!375212 lambda!44603)))

(assert (=> d!312970 (= (lemmaConcatPreservesForall!102 lt!375212 lt!375239 lambda!44603) lt!375304)))

(declare-fun bs!259929 () Bool)

(assert (= bs!259929 d!312970))

(assert (=> bs!259929 m!1262425))

(assert (=> bs!259929 m!1262425))

(declare-fun m!1262617 () Bool)

(assert (=> bs!259929 m!1262617))

(declare-fun m!1262619 () Bool)

(assert (=> bs!259929 m!1262619))

(declare-fun m!1262621 () Bool)

(assert (=> bs!259929 m!1262621))

(assert (=> b!1105310 d!312970))

(declare-fun bs!259961 () Bool)

(declare-fun b!1105587 () Bool)

(assert (= bs!259961 (and b!1105587 start!95330)))

(declare-fun lambda!44709 () Int)

(assert (=> bs!259961 (not (= lambda!44709 lambda!44603))))

(declare-fun bs!259962 () Bool)

(assert (= bs!259962 (and b!1105587 b!1105323)))

(declare-fun lt!375569 () tuple2!11838)

(assert (=> bs!259962 (= (= (_1!6745 lt!375569) (_1!6745 lt!375227)) (= lambda!44709 lambda!44604))))

(assert (=> bs!259962 (not (= lambda!44709 lambda!44605))))

(assert (=> bs!259962 (not (= lambda!44709 lambda!44606))))

(declare-fun b!1105592 () Bool)

(declare-fun e!700681 () Bool)

(assert (=> b!1105592 (= e!700681 true)))

(declare-fun b!1105591 () Bool)

(declare-fun e!700680 () Bool)

(assert (=> b!1105591 (= e!700680 e!700681)))

(assert (=> b!1105587 e!700680))

(assert (= b!1105591 b!1105592))

(assert (= b!1105587 b!1105591))

(declare-fun lambda!44710 () Int)

(assert (=> b!1105587 (not (= lambda!44710 lambda!44709))))

(assert (=> bs!259962 (not (= lambda!44710 lambda!44606))))

(assert (=> bs!259962 (= (= (_1!6745 lt!375569) (_1!6745 lt!375227)) (= lambda!44710 lambda!44605))))

(assert (=> bs!259962 (not (= lambda!44710 lambda!44604))))

(assert (=> bs!259961 (not (= lambda!44710 lambda!44603))))

(declare-fun b!1105597 () Bool)

(declare-fun e!700686 () Bool)

(assert (=> b!1105597 (= e!700686 true)))

(declare-fun b!1105596 () Bool)

(declare-fun e!700685 () Bool)

(assert (=> b!1105596 (= e!700685 e!700686)))

(assert (=> b!1105587 e!700685))

(assert (= b!1105596 b!1105597))

(assert (= b!1105587 b!1105596))

(declare-fun lambda!44711 () Int)

(assert (=> b!1105587 (not (= lambda!44711 lambda!44709))))

(assert (=> b!1105587 (not (= lambda!44711 lambda!44710))))

(assert (=> bs!259962 (= (= (_1!6745 lt!375569) (_1!6745 lt!375227)) (= lambda!44711 lambda!44606))))

(assert (=> bs!259962 (not (= lambda!44711 lambda!44605))))

(assert (=> bs!259962 (not (= lambda!44711 lambda!44604))))

(assert (=> bs!259961 (not (= lambda!44711 lambda!44603))))

(declare-fun b!1105612 () Bool)

(declare-fun e!700698 () Bool)

(assert (=> b!1105612 (= e!700698 true)))

(declare-fun b!1105611 () Bool)

(declare-fun e!700697 () Bool)

(assert (=> b!1105611 (= e!700697 e!700698)))

(assert (=> b!1105587 e!700697))

(assert (= b!1105611 b!1105612))

(assert (= b!1105587 b!1105611))

(declare-fun lambda!44712 () Int)

(assert (=> b!1105587 (not (= lambda!44712 lambda!44709))))

(assert (=> b!1105587 (not (= lambda!44712 lambda!44710))))

(assert (=> bs!259962 (not (= lambda!44712 lambda!44606))))

(assert (=> b!1105587 (not (= lambda!44712 lambda!44711))))

(assert (=> bs!259962 (not (= lambda!44712 lambda!44605))))

(assert (=> bs!259962 (not (= lambda!44712 lambda!44604))))

(assert (=> bs!259961 (= lambda!44712 lambda!44603)))

(declare-fun bs!259970 () Bool)

(declare-fun d!312982 () Bool)

(assert (= bs!259970 (and d!312982 b!1105587)))

(declare-fun lambda!44713 () Int)

(assert (=> bs!259970 (not (= lambda!44713 lambda!44709))))

(assert (=> bs!259970 (not (= lambda!44713 lambda!44710))))

(declare-fun bs!259971 () Bool)

(assert (= bs!259971 (and d!312982 b!1105323)))

(assert (=> bs!259971 (not (= lambda!44713 lambda!44606))))

(assert (=> bs!259970 (not (= lambda!44713 lambda!44711))))

(assert (=> bs!259971 (not (= lambda!44713 lambda!44605))))

(assert (=> bs!259971 (not (= lambda!44713 lambda!44604))))

(declare-fun bs!259972 () Bool)

(assert (= bs!259972 (and d!312982 start!95330)))

(assert (=> bs!259972 (= lambda!44713 lambda!44603)))

(assert (=> bs!259970 (= lambda!44713 lambda!44712)))

(declare-fun b!1105577 () Bool)

(assert (=> b!1105577 true))

(declare-fun lt!375557 () BalanceConc!6808)

(declare-fun lt!375571 () Unit!16429)

(assert (=> b!1105577 (= lt!375571 (forallContained!550 (list!3880 lt!375557) lambda!44709 lt!375569))))

(declare-fun e!700672 () Unit!16429)

(declare-fun err!3100 () Unit!16429)

(assert (=> b!1105577 (= e!700672 err!3100)))

(declare-fun b!1105578 () Bool)

(declare-fun e!700677 () BalanceConc!6808)

(assert (=> b!1105578 (= e!700677 lt!375226)))

(declare-fun b!1105579 () Bool)

(assert (=> b!1105579 true))

(declare-fun lt!375575 () Unit!16429)

(assert (=> b!1105579 (= lt!375575 (forallContained!550 (list!3880 lt!375226) lambda!44711 lt!375569))))

(declare-fun e!700673 () Unit!16429)

(declare-fun err!3101 () Unit!16429)

(assert (=> b!1105579 (= e!700673 err!3101)))

(declare-fun b!1105581 () Bool)

(assert (=> b!1105581 true))

(declare-fun lt!375570 () Unit!16429)

(assert (=> b!1105581 (= lt!375570 (forallContained!550 (list!3880 lt!375226) lambda!44709 lt!375569))))

(declare-fun e!700675 () Unit!16429)

(declare-fun err!3098 () Unit!16429)

(assert (=> b!1105581 (= e!700675 err!3098)))

(declare-fun b!1105582 () Bool)

(declare-fun Unit!16437 () Unit!16429)

(assert (=> b!1105582 (= e!700675 Unit!16437)))

(declare-fun b!1105583 () Bool)

(declare-fun Unit!16438 () Unit!16429)

(assert (=> b!1105583 (= e!700672 Unit!16438)))

(declare-fun b!1105584 () Bool)

(declare-fun e!700674 () Bool)

(declare-fun lt!375573 () List!10770)

(assert (=> b!1105584 (= e!700674 (< (size!8362 (filter!422 lt!375573 lambda!44711)) (size!8362 lt!375573)))))

(declare-fun b!1105585 () Bool)

(assert (=> b!1105585 true))

(declare-fun lt!375561 () Unit!16429)

(declare-fun lt!375567 () BalanceConc!6808)

(assert (=> b!1105585 (= lt!375561 (forallContained!550 (list!3880 lt!375567) lambda!44711 lt!375569))))

(declare-fun e!700676 () Unit!16429)

(declare-fun err!3099 () Unit!16429)

(assert (=> b!1105585 (= e!700676 err!3099)))

(declare-fun b!1105586 () Bool)

(declare-fun e!700671 () Bool)

(declare-fun lt!375549 () List!10770)

(assert (=> b!1105586 (= e!700671 (< (size!8362 (filter!422 lt!375549 lambda!44709)) (size!8362 lt!375549)))))

(declare-fun lt!375576 () BalanceConc!6808)

(assert (=> b!1105587 (= e!700677 (++!2890 (++!2890 (sortObjectsByID!0 lt!375557) lt!375576) (sortObjectsByID!0 lt!375567)))))

(assert (=> b!1105587 (= lt!375569 (apply!2207 lt!375226 (ite (>= (size!8361 lt!375226) 0) (div (size!8361 lt!375226) 2) (- (div (- (size!8361 lt!375226)) 2)))))))

(assert (=> b!1105587 (= lt!375557 (filter!421 lt!375226 lambda!44709))))

(assert (=> b!1105587 (= lt!375576 (filter!421 lt!375226 lambda!44710))))

(assert (=> b!1105587 (= lt!375567 (filter!421 lt!375226 lambda!44711))))

(declare-fun c!187758 () Bool)

(assert (=> b!1105587 (= c!187758 (contains!1935 lt!375557 lt!375569))))

(declare-fun lt!375559 () Unit!16429)

(assert (=> b!1105587 (= lt!375559 e!700672)))

(declare-fun c!187757 () Bool)

(assert (=> b!1105587 (= c!187757 (forall!2533 lt!375226 lambda!44709))))

(declare-fun lt!375562 () Unit!16429)

(assert (=> b!1105587 (= lt!375562 e!700675)))

(assert (=> b!1105587 (= lt!375549 (list!3880 lt!375226))))

(declare-fun lt!375582 () Unit!16429)

(assert (=> b!1105587 (= lt!375582 (lemmaNotForallFilterShorter!83 lt!375549 lambda!44709))))

(declare-fun res!490059 () Bool)

(assert (=> b!1105587 (= res!490059 (isEmpty!6721 lt!375549))))

(assert (=> b!1105587 (=> res!490059 e!700671)))

(assert (=> b!1105587 e!700671))

(declare-fun lt!375564 () Unit!16429)

(assert (=> b!1105587 (= lt!375564 lt!375582)))

(declare-fun c!187756 () Bool)

(assert (=> b!1105587 (= c!187756 (contains!1935 lt!375567 lt!375569))))

(declare-fun lt!375563 () Unit!16429)

(assert (=> b!1105587 (= lt!375563 e!700676)))

(declare-fun c!187760 () Bool)

(assert (=> b!1105587 (= c!187760 (forall!2533 lt!375226 lambda!44711))))

(declare-fun lt!375551 () Unit!16429)

(assert (=> b!1105587 (= lt!375551 e!700673)))

(assert (=> b!1105587 (= lt!375573 (list!3880 lt!375226))))

(declare-fun lt!375554 () Unit!16429)

(assert (=> b!1105587 (= lt!375554 (lemmaNotForallFilterShorter!83 lt!375573 lambda!44711))))

(declare-fun res!490060 () Bool)

(assert (=> b!1105587 (= res!490060 (isEmpty!6721 lt!375573))))

(assert (=> b!1105587 (=> res!490060 e!700674)))

(assert (=> b!1105587 e!700674))

(declare-fun lt!375553 () Unit!16429)

(assert (=> b!1105587 (= lt!375553 lt!375554)))

(declare-fun lt!375574 () Unit!16429)

(assert (=> b!1105587 (= lt!375574 (filterSubseq!65 (list!3880 lt!375226) lambda!44709))))

(declare-fun lt!375556 () Unit!16429)

(assert (=> b!1105587 (= lt!375556 (filterSubseq!65 (list!3880 lt!375226) lambda!44710))))

(declare-fun lt!375583 () Unit!16429)

(assert (=> b!1105587 (= lt!375583 (filterSubseq!65 (list!3880 lt!375226) lambda!44711))))

(declare-fun lt!375568 () List!10770)

(assert (=> b!1105587 (= lt!375568 (list!3880 (filter!421 lt!375226 lambda!44709)))))

(declare-fun lt!375555 () List!10770)

(assert (=> b!1105587 (= lt!375555 (list!3880 lt!375226))))

(declare-fun lt!375566 () Unit!16429)

(assert (=> b!1105587 (= lt!375566 (lemmaForallSubseq!69 lt!375568 lt!375555 lambda!44712))))

(assert (=> b!1105587 (forall!2534 lt!375568 lambda!44712)))

(declare-fun lt!375578 () Unit!16429)

(assert (=> b!1105587 (= lt!375578 lt!375566)))

(declare-fun lt!375550 () List!10770)

(assert (=> b!1105587 (= lt!375550 (list!3880 (filter!421 lt!375226 lambda!44710)))))

(declare-fun lt!375558 () List!10770)

(assert (=> b!1105587 (= lt!375558 (list!3880 lt!375226))))

(declare-fun lt!375548 () Unit!16429)

(assert (=> b!1105587 (= lt!375548 (lemmaForallSubseq!69 lt!375550 lt!375558 lambda!44712))))

(assert (=> b!1105587 (forall!2534 lt!375550 lambda!44712)))

(declare-fun lt!375572 () Unit!16429)

(assert (=> b!1105587 (= lt!375572 lt!375548)))

(declare-fun lt!375577 () List!10770)

(assert (=> b!1105587 (= lt!375577 (list!3880 (filter!421 lt!375226 lambda!44711)))))

(declare-fun lt!375560 () List!10770)

(assert (=> b!1105587 (= lt!375560 (list!3880 lt!375226))))

(declare-fun lt!375552 () Unit!16429)

(assert (=> b!1105587 (= lt!375552 (lemmaForallSubseq!69 lt!375577 lt!375560 lambda!44712))))

(assert (=> b!1105587 (forall!2534 lt!375577 lambda!44712)))

(declare-fun lt!375581 () Unit!16429)

(assert (=> b!1105587 (= lt!375581 lt!375552)))

(declare-fun lt!375579 () Unit!16429)

(assert (=> b!1105587 (= lt!375579 (lemmaConcatPreservesForall!102 (list!3880 (sortObjectsByID!0 lt!375557)) (list!3880 lt!375576) lambda!44712))))

(declare-fun lt!375580 () Unit!16429)

(assert (=> b!1105587 (= lt!375580 (lemmaConcatPreservesForall!102 (++!2891 (list!3880 (sortObjectsByID!0 lt!375557)) (list!3880 lt!375576)) (list!3880 (sortObjectsByID!0 lt!375567)) lambda!44712))))

(declare-fun b!1105588 () Bool)

(declare-fun Unit!16441 () Unit!16429)

(assert (=> b!1105588 (= e!700673 Unit!16441)))

(declare-fun lt!375565 () BalanceConc!6808)

(assert (=> d!312982 (forall!2533 lt!375565 lambda!44713)))

(assert (=> d!312982 (= lt!375565 e!700677)))

(declare-fun c!187759 () Bool)

(assert (=> d!312982 (= c!187759 (<= (size!8361 lt!375226) 1))))

(assert (=> d!312982 (= (sortObjectsByID!0 lt!375226) lt!375565)))

(declare-fun b!1105580 () Bool)

(declare-fun Unit!16442 () Unit!16429)

(assert (=> b!1105580 (= e!700676 Unit!16442)))

(assert (= (and d!312982 c!187759) b!1105578))

(assert (= (and d!312982 (not c!187759)) b!1105587))

(assert (= (and b!1105587 c!187758) b!1105577))

(assert (= (and b!1105587 (not c!187758)) b!1105583))

(assert (= (and b!1105587 c!187757) b!1105581))

(assert (= (and b!1105587 (not c!187757)) b!1105582))

(assert (= (and b!1105587 (not res!490059)) b!1105586))

(assert (= (and b!1105587 c!187756) b!1105585))

(assert (= (and b!1105587 (not c!187756)) b!1105580))

(assert (= (and b!1105587 c!187760) b!1105579))

(assert (= (and b!1105587 (not c!187760)) b!1105588))

(assert (= (and b!1105587 (not res!490060)) b!1105584))

(declare-fun m!1262959 () Bool)

(assert (=> b!1105586 m!1262959))

(assert (=> b!1105586 m!1262959))

(declare-fun m!1262961 () Bool)

(assert (=> b!1105586 m!1262961))

(declare-fun m!1262963 () Bool)

(assert (=> b!1105586 m!1262963))

(assert (=> b!1105579 m!1262341))

(assert (=> b!1105579 m!1262341))

(declare-fun m!1262965 () Bool)

(assert (=> b!1105579 m!1262965))

(declare-fun m!1262967 () Bool)

(assert (=> b!1105577 m!1262967))

(assert (=> b!1105577 m!1262967))

(declare-fun m!1262969 () Bool)

(assert (=> b!1105577 m!1262969))

(declare-fun m!1262971 () Bool)

(assert (=> b!1105585 m!1262971))

(assert (=> b!1105585 m!1262971))

(declare-fun m!1262973 () Bool)

(assert (=> b!1105585 m!1262973))

(declare-fun m!1262975 () Bool)

(assert (=> b!1105587 m!1262975))

(declare-fun m!1262977 () Bool)

(assert (=> b!1105587 m!1262977))

(declare-fun m!1262979 () Bool)

(assert (=> b!1105587 m!1262979))

(assert (=> b!1105587 m!1262341))

(declare-fun m!1262981 () Bool)

(assert (=> b!1105587 m!1262981))

(assert (=> b!1105587 m!1262369))

(declare-fun m!1262983 () Bool)

(assert (=> b!1105587 m!1262983))

(declare-fun m!1262985 () Bool)

(assert (=> b!1105587 m!1262985))

(declare-fun m!1262987 () Bool)

(assert (=> b!1105587 m!1262987))

(declare-fun m!1262989 () Bool)

(assert (=> b!1105587 m!1262989))

(declare-fun m!1262991 () Bool)

(assert (=> b!1105587 m!1262991))

(declare-fun m!1262993 () Bool)

(assert (=> b!1105587 m!1262993))

(declare-fun m!1262995 () Bool)

(assert (=> b!1105587 m!1262995))

(declare-fun m!1262997 () Bool)

(assert (=> b!1105587 m!1262997))

(assert (=> b!1105587 m!1262985))

(declare-fun m!1262999 () Bool)

(assert (=> b!1105587 m!1262999))

(declare-fun m!1263001 () Bool)

(assert (=> b!1105587 m!1263001))

(declare-fun m!1263003 () Bool)

(assert (=> b!1105587 m!1263003))

(declare-fun m!1263005 () Bool)

(assert (=> b!1105587 m!1263005))

(declare-fun m!1263007 () Bool)

(assert (=> b!1105587 m!1263007))

(declare-fun m!1263009 () Bool)

(assert (=> b!1105587 m!1263009))

(assert (=> b!1105587 m!1262975))

(declare-fun m!1263011 () Bool)

(assert (=> b!1105587 m!1263011))

(assert (=> b!1105587 m!1262987))

(assert (=> b!1105587 m!1263003))

(assert (=> b!1105587 m!1262341))

(declare-fun m!1263013 () Bool)

(assert (=> b!1105587 m!1263013))

(assert (=> b!1105587 m!1263007))

(assert (=> b!1105587 m!1263001))

(assert (=> b!1105587 m!1262341))

(declare-fun m!1263015 () Bool)

(assert (=> b!1105587 m!1263015))

(assert (=> b!1105587 m!1262987))

(declare-fun m!1263017 () Bool)

(assert (=> b!1105587 m!1263017))

(declare-fun m!1263019 () Bool)

(assert (=> b!1105587 m!1263019))

(declare-fun m!1263021 () Bool)

(assert (=> b!1105587 m!1263021))

(assert (=> b!1105587 m!1262341))

(assert (=> b!1105587 m!1262985))

(assert (=> b!1105587 m!1262993))

(declare-fun m!1263023 () Bool)

(assert (=> b!1105587 m!1263023))

(declare-fun m!1263025 () Bool)

(assert (=> b!1105587 m!1263025))

(declare-fun m!1263027 () Bool)

(assert (=> b!1105587 m!1263027))

(declare-fun m!1263029 () Bool)

(assert (=> b!1105587 m!1263029))

(declare-fun m!1263031 () Bool)

(assert (=> b!1105587 m!1263031))

(assert (=> b!1105587 m!1263003))

(declare-fun m!1263033 () Bool)

(assert (=> b!1105587 m!1263033))

(assert (=> b!1105587 m!1262991))

(assert (=> b!1105587 m!1262993))

(declare-fun m!1263035 () Bool)

(assert (=> b!1105587 m!1263035))

(declare-fun m!1263037 () Bool)

(assert (=> b!1105587 m!1263037))

(assert (=> b!1105587 m!1263007))

(assert (=> b!1105587 m!1262991))

(assert (=> b!1105587 m!1262975))

(assert (=> b!1105587 m!1263035))

(assert (=> b!1105587 m!1263033))

(declare-fun m!1263039 () Bool)

(assert (=> b!1105587 m!1263039))

(declare-fun m!1263041 () Bool)

(assert (=> b!1105587 m!1263041))

(declare-fun m!1263043 () Bool)

(assert (=> b!1105584 m!1263043))

(assert (=> b!1105584 m!1263043))

(declare-fun m!1263045 () Bool)

(assert (=> b!1105584 m!1263045))

(declare-fun m!1263047 () Bool)

(assert (=> b!1105584 m!1263047))

(assert (=> b!1105581 m!1262341))

(assert (=> b!1105581 m!1262341))

(declare-fun m!1263049 () Bool)

(assert (=> b!1105581 m!1263049))

(declare-fun m!1263051 () Bool)

(assert (=> d!312982 m!1263051))

(assert (=> d!312982 m!1262369))

(assert (=> b!1105310 d!312982))

(declare-fun d!313052 () Bool)

(assert (=> d!313052 (= (list!3880 lt!375222) (list!3882 (c!187691 lt!375222)))))

(declare-fun bs!259973 () Bool)

(assert (= bs!259973 d!313052))

(declare-fun m!1263053 () Bool)

(assert (=> bs!259973 m!1263053))

(assert (=> b!1105310 d!313052))

(declare-fun d!313054 () Bool)

(assert (=> d!313054 (= (list!3880 (filter!421 objs!8 lambda!44604)) (list!3882 (c!187691 (filter!421 objs!8 lambda!44604))))))

(declare-fun bs!259974 () Bool)

(assert (= bs!259974 d!313054))

(declare-fun m!1263055 () Bool)

(assert (=> bs!259974 m!1263055))

(assert (=> b!1105310 d!313054))

(declare-fun d!313056 () Bool)

(declare-fun subseq!165 (List!10770 List!10770) Bool)

(assert (=> d!313056 (subseq!165 (filter!422 lt!375211 lambda!44605) lt!375211)))

(declare-fun lt!375586 () Unit!16429)

(declare-fun choose!7160 (List!10770 Int) Unit!16429)

(assert (=> d!313056 (= lt!375586 (choose!7160 lt!375211 lambda!44605))))

(assert (=> d!313056 (= (filterSubseq!65 lt!375211 lambda!44605) lt!375586)))

(declare-fun bs!259975 () Bool)

(assert (= bs!259975 d!313056))

(declare-fun m!1263057 () Bool)

(assert (=> bs!259975 m!1263057))

(assert (=> bs!259975 m!1263057))

(declare-fun m!1263059 () Bool)

(assert (=> bs!259975 m!1263059))

(declare-fun m!1263061 () Bool)

(assert (=> bs!259975 m!1263061))

(assert (=> b!1105310 d!313056))

(declare-fun d!313058 () Bool)

(declare-fun res!490065 () Bool)

(declare-fun e!700707 () Bool)

(assert (=> d!313058 (=> res!490065 e!700707)))

(assert (=> d!313058 (= res!490065 ((_ is Nil!10754) lt!375229))))

(assert (=> d!313058 (= (forall!2534 lt!375229 lambda!44603) e!700707)))

(declare-fun b!1105624 () Bool)

(declare-fun e!700708 () Bool)

(assert (=> b!1105624 (= e!700707 e!700708)))

(declare-fun res!490066 () Bool)

(assert (=> b!1105624 (=> (not res!490066) (not e!700708))))

(assert (=> b!1105624 (= res!490066 (dynLambda!4742 lambda!44603 (h!16155 lt!375229)))))

(declare-fun b!1105625 () Bool)

(assert (=> b!1105625 (= e!700708 (forall!2534 (t!105242 lt!375229) lambda!44603))))

(assert (= (and d!313058 (not res!490065)) b!1105624))

(assert (= (and b!1105624 res!490066) b!1105625))

(declare-fun b_lambda!32749 () Bool)

(assert (=> (not b_lambda!32749) (not b!1105624)))

(declare-fun m!1263063 () Bool)

(assert (=> b!1105624 m!1263063))

(declare-fun m!1263065 () Bool)

(assert (=> b!1105625 m!1263065))

(assert (=> b!1105310 d!313058))

(declare-fun b!1105635 () Bool)

(declare-fun e!700713 () List!10770)

(assert (=> b!1105635 (= e!700713 (Cons!10754 (h!16155 lt!375212) (++!2891 (t!105242 lt!375212) lt!375239)))))

(declare-fun b!1105636 () Bool)

(declare-fun res!490072 () Bool)

(declare-fun e!700714 () Bool)

(assert (=> b!1105636 (=> (not res!490072) (not e!700714))))

(declare-fun lt!375589 () List!10770)

(assert (=> b!1105636 (= res!490072 (= (size!8362 lt!375589) (+ (size!8362 lt!375212) (size!8362 lt!375239))))))

(declare-fun d!313060 () Bool)

(assert (=> d!313060 e!700714))

(declare-fun res!490071 () Bool)

(assert (=> d!313060 (=> (not res!490071) (not e!700714))))

(assert (=> d!313060 (= res!490071 (= (content!1552 lt!375589) ((_ map or) (content!1552 lt!375212) (content!1552 lt!375239))))))

(assert (=> d!313060 (= lt!375589 e!700713)))

(declare-fun c!187763 () Bool)

(assert (=> d!313060 (= c!187763 ((_ is Nil!10754) lt!375212))))

(assert (=> d!313060 (= (++!2891 lt!375212 lt!375239) lt!375589)))

(declare-fun b!1105634 () Bool)

(assert (=> b!1105634 (= e!700713 lt!375239)))

(declare-fun b!1105637 () Bool)

(assert (=> b!1105637 (= e!700714 (or (not (= lt!375239 Nil!10754)) (= lt!375589 lt!375212)))))

(assert (= (and d!313060 c!187763) b!1105634))

(assert (= (and d!313060 (not c!187763)) b!1105635))

(assert (= (and d!313060 res!490071) b!1105636))

(assert (= (and b!1105636 res!490072) b!1105637))

(declare-fun m!1263067 () Bool)

(assert (=> b!1105635 m!1263067))

(declare-fun m!1263069 () Bool)

(assert (=> b!1105636 m!1263069))

(declare-fun m!1263071 () Bool)

(assert (=> b!1105636 m!1263071))

(declare-fun m!1263073 () Bool)

(assert (=> b!1105636 m!1263073))

(declare-fun m!1263075 () Bool)

(assert (=> d!313060 m!1263075))

(declare-fun m!1263077 () Bool)

(assert (=> d!313060 m!1263077))

(declare-fun m!1263079 () Bool)

(assert (=> d!313060 m!1263079))

(assert (=> b!1105310 d!313060))

(declare-fun d!313062 () Bool)

(declare-fun res!490073 () Bool)

(declare-fun e!700715 () Bool)

(assert (=> d!313062 (=> res!490073 e!700715)))

(assert (=> d!313062 (= res!490073 ((_ is Nil!10754) lt!375232))))

(assert (=> d!313062 (= (forall!2534 lt!375232 lambda!44603) e!700715)))

(declare-fun b!1105638 () Bool)

(declare-fun e!700716 () Bool)

(assert (=> b!1105638 (= e!700715 e!700716)))

(declare-fun res!490074 () Bool)

(assert (=> b!1105638 (=> (not res!490074) (not e!700716))))

(assert (=> b!1105638 (= res!490074 (dynLambda!4742 lambda!44603 (h!16155 lt!375232)))))

(declare-fun b!1105639 () Bool)

(assert (=> b!1105639 (= e!700716 (forall!2534 (t!105242 lt!375232) lambda!44603))))

(assert (= (and d!313062 (not res!490073)) b!1105638))

(assert (= (and b!1105638 res!490074) b!1105639))

(declare-fun b_lambda!32751 () Bool)

(assert (=> (not b_lambda!32751) (not b!1105638)))

(declare-fun m!1263081 () Bool)

(assert (=> b!1105638 m!1263081))

(declare-fun m!1263083 () Bool)

(assert (=> b!1105639 m!1263083))

(assert (=> b!1105310 d!313062))

(assert (=> b!1105310 d!312932))

(declare-fun d!313064 () Bool)

(assert (=> d!313064 (= (list!3880 (filter!421 objs!8 lambda!44606)) (list!3882 (c!187691 (filter!421 objs!8 lambda!44606))))))

(declare-fun bs!259976 () Bool)

(assert (= bs!259976 d!313064))

(declare-fun m!1263085 () Bool)

(assert (=> bs!259976 m!1263085))

(assert (=> b!1105310 d!313064))

(declare-fun d!313066 () Bool)

(assert (=> d!313066 (= (list!3880 lt!375208) (list!3882 (c!187691 lt!375208)))))

(declare-fun bs!259977 () Bool)

(assert (= bs!259977 d!313066))

(declare-fun m!1263087 () Bool)

(assert (=> bs!259977 m!1263087))

(assert (=> b!1105310 d!313066))

(declare-fun d!313068 () Bool)

(assert (=> d!313068 (subseq!165 (filter!422 lt!375211 lambda!44606) lt!375211)))

(declare-fun lt!375590 () Unit!16429)

(assert (=> d!313068 (= lt!375590 (choose!7160 lt!375211 lambda!44606))))

(assert (=> d!313068 (= (filterSubseq!65 lt!375211 lambda!44606) lt!375590)))

(declare-fun bs!259978 () Bool)

(assert (= bs!259978 d!313068))

(assert (=> bs!259978 m!1262353))

(assert (=> bs!259978 m!1262353))

(declare-fun m!1263089 () Bool)

(assert (=> bs!259978 m!1263089))

(declare-fun m!1263091 () Bool)

(assert (=> bs!259978 m!1263091))

(assert (=> b!1105310 d!313068))

(declare-fun d!313070 () Bool)

(assert (=> d!313070 (subseq!165 (filter!422 lt!375211 lambda!44604) lt!375211)))

(declare-fun lt!375591 () Unit!16429)

(assert (=> d!313070 (= lt!375591 (choose!7160 lt!375211 lambda!44604))))

(assert (=> d!313070 (= (filterSubseq!65 lt!375211 lambda!44604) lt!375591)))

(declare-fun bs!259979 () Bool)

(assert (= bs!259979 d!313070))

(assert (=> bs!259979 m!1262335))

(assert (=> bs!259979 m!1262335))

(declare-fun m!1263093 () Bool)

(assert (=> bs!259979 m!1263093))

(declare-fun m!1263095 () Bool)

(assert (=> bs!259979 m!1263095))

(assert (=> b!1105310 d!313070))

(declare-fun d!313072 () Bool)

(declare-fun lt!375594 () Bool)

(assert (=> d!313072 (= lt!375594 (forall!2534 (list!3880 (++!2890 (++!2890 lt!375217 lt!375222) lt!375208)) lambda!44603))))

(declare-fun forall!2536 (Conc!3397 Int) Bool)

(assert (=> d!313072 (= lt!375594 (forall!2536 (c!187691 (++!2890 (++!2890 lt!375217 lt!375222) lt!375208)) lambda!44603))))

(assert (=> d!313072 (= (forall!2533 (++!2890 (++!2890 lt!375217 lt!375222) lt!375208) lambda!44603) lt!375594)))

(declare-fun bs!259980 () Bool)

(assert (= bs!259980 d!313072))

(assert (=> bs!259980 m!1262391))

(declare-fun m!1263097 () Bool)

(assert (=> bs!259980 m!1263097))

(assert (=> bs!259980 m!1263097))

(declare-fun m!1263099 () Bool)

(assert (=> bs!259980 m!1263099))

(declare-fun m!1263101 () Bool)

(assert (=> bs!259980 m!1263101))

(assert (=> b!1105310 d!313072))

(declare-fun e!700719 () Bool)

(declare-fun b!1105651 () Bool)

(declare-fun lt!375597 () BalanceConc!6808)

(assert (=> b!1105651 (= e!700719 (= (list!3880 lt!375597) (++!2891 (list!3880 (++!2890 lt!375217 lt!375222)) (list!3880 lt!375208))))))

(declare-fun b!1105650 () Bool)

(declare-fun res!490084 () Bool)

(assert (=> b!1105650 (=> (not res!490084) (not e!700719))))

(declare-fun height!433 (Conc!3397) Int)

(declare-fun ++!2893 (Conc!3397 Conc!3397) Conc!3397)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1105650 (= res!490084 (>= (height!433 (++!2893 (c!187691 (++!2890 lt!375217 lt!375222)) (c!187691 lt!375208))) (max!0 (height!433 (c!187691 (++!2890 lt!375217 lt!375222))) (height!433 (c!187691 lt!375208)))))))

(declare-fun d!313074 () Bool)

(assert (=> d!313074 e!700719))

(declare-fun res!490086 () Bool)

(assert (=> d!313074 (=> (not res!490086) (not e!700719))))

(declare-fun appendAssocInst!212 (Conc!3397 Conc!3397) Bool)

(assert (=> d!313074 (= res!490086 (appendAssocInst!212 (c!187691 (++!2890 lt!375217 lt!375222)) (c!187691 lt!375208)))))

(assert (=> d!313074 (= lt!375597 (BalanceConc!6809 (++!2893 (c!187691 (++!2890 lt!375217 lt!375222)) (c!187691 lt!375208))))))

(assert (=> d!313074 (= (++!2890 (++!2890 lt!375217 lt!375222) lt!375208) lt!375597)))

(declare-fun b!1105648 () Bool)

(declare-fun res!490085 () Bool)

(assert (=> b!1105648 (=> (not res!490085) (not e!700719))))

(assert (=> b!1105648 (= res!490085 (isBalanced!933 (++!2893 (c!187691 (++!2890 lt!375217 lt!375222)) (c!187691 lt!375208))))))

(declare-fun b!1105649 () Bool)

(declare-fun res!490083 () Bool)

(assert (=> b!1105649 (=> (not res!490083) (not e!700719))))

(assert (=> b!1105649 (= res!490083 (<= (height!433 (++!2893 (c!187691 (++!2890 lt!375217 lt!375222)) (c!187691 lt!375208))) (+ (max!0 (height!433 (c!187691 (++!2890 lt!375217 lt!375222))) (height!433 (c!187691 lt!375208))) 1)))))

(assert (= (and d!313074 res!490086) b!1105648))

(assert (= (and b!1105648 res!490085) b!1105649))

(assert (= (and b!1105649 res!490083) b!1105650))

(assert (= (and b!1105650 res!490084) b!1105651))

(declare-fun m!1263103 () Bool)

(assert (=> d!313074 m!1263103))

(declare-fun m!1263105 () Bool)

(assert (=> d!313074 m!1263105))

(declare-fun m!1263107 () Bool)

(assert (=> b!1105651 m!1263107))

(assert (=> b!1105651 m!1262383))

(declare-fun m!1263109 () Bool)

(assert (=> b!1105651 m!1263109))

(assert (=> b!1105651 m!1262405))

(assert (=> b!1105651 m!1263109))

(assert (=> b!1105651 m!1262405))

(declare-fun m!1263111 () Bool)

(assert (=> b!1105651 m!1263111))

(assert (=> b!1105648 m!1263105))

(assert (=> b!1105648 m!1263105))

(declare-fun m!1263113 () Bool)

(assert (=> b!1105648 m!1263113))

(assert (=> b!1105649 m!1263105))

(assert (=> b!1105649 m!1263105))

(declare-fun m!1263115 () Bool)

(assert (=> b!1105649 m!1263115))

(declare-fun m!1263117 () Bool)

(assert (=> b!1105649 m!1263117))

(declare-fun m!1263119 () Bool)

(assert (=> b!1105649 m!1263119))

(assert (=> b!1105649 m!1263119))

(assert (=> b!1105649 m!1263117))

(declare-fun m!1263121 () Bool)

(assert (=> b!1105649 m!1263121))

(assert (=> b!1105650 m!1263105))

(assert (=> b!1105650 m!1263105))

(assert (=> b!1105650 m!1263115))

(assert (=> b!1105650 m!1263117))

(assert (=> b!1105650 m!1263119))

(assert (=> b!1105650 m!1263119))

(assert (=> b!1105650 m!1263117))

(assert (=> b!1105650 m!1263121))

(assert (=> b!1105310 d!313074))

(declare-fun d!313076 () Bool)

(assert (=> d!313076 (= (list!3880 lt!375217) (list!3882 (c!187691 lt!375217)))))

(declare-fun bs!259981 () Bool)

(assert (= bs!259981 d!313076))

(declare-fun m!1263123 () Bool)

(assert (=> bs!259981 m!1263123))

(assert (=> b!1105310 d!313076))

(declare-fun d!313078 () Bool)

(assert (=> d!313078 (forall!2534 lt!375232 lambda!44603)))

(declare-fun lt!375600 () Unit!16429)

(declare-fun choose!7161 (List!10770 List!10770 Int) Unit!16429)

(assert (=> d!313078 (= lt!375600 (choose!7161 lt!375232 lt!375211 lambda!44603))))

(assert (=> d!313078 (forall!2534 lt!375211 lambda!44603)))

(assert (=> d!313078 (= (lemmaForallSubseq!69 lt!375232 lt!375211 lambda!44603) lt!375600)))

(declare-fun bs!259982 () Bool)

(assert (= bs!259982 d!313078))

(assert (=> bs!259982 m!1262397))

(declare-fun m!1263125 () Bool)

(assert (=> bs!259982 m!1263125))

(declare-fun m!1263127 () Bool)

(assert (=> bs!259982 m!1263127))

(assert (=> b!1105310 d!313078))

(declare-fun d!313080 () Bool)

(assert (=> d!313080 (forall!2534 lt!375240 lambda!44603)))

(declare-fun lt!375601 () Unit!16429)

(assert (=> d!313080 (= lt!375601 (choose!7161 lt!375240 lt!375211 lambda!44603))))

(assert (=> d!313080 (forall!2534 lt!375211 lambda!44603)))

(assert (=> d!313080 (= (lemmaForallSubseq!69 lt!375240 lt!375211 lambda!44603) lt!375601)))

(declare-fun bs!259983 () Bool)

(assert (= bs!259983 d!313080))

(assert (=> bs!259983 m!1262385))

(declare-fun m!1263129 () Bool)

(assert (=> bs!259983 m!1263129))

(assert (=> bs!259983 m!1263127))

(assert (=> b!1105310 d!313080))

(declare-fun b!1105655 () Bool)

(declare-fun lt!375602 () BalanceConc!6808)

(declare-fun e!700720 () Bool)

(assert (=> b!1105655 (= e!700720 (= (list!3880 lt!375602) (++!2891 (list!3880 lt!375217) (list!3880 lt!375222))))))

(declare-fun b!1105654 () Bool)

(declare-fun res!490088 () Bool)

(assert (=> b!1105654 (=> (not res!490088) (not e!700720))))

(assert (=> b!1105654 (= res!490088 (>= (height!433 (++!2893 (c!187691 lt!375217) (c!187691 lt!375222))) (max!0 (height!433 (c!187691 lt!375217)) (height!433 (c!187691 lt!375222)))))))

(declare-fun d!313082 () Bool)

(assert (=> d!313082 e!700720))

(declare-fun res!490090 () Bool)

(assert (=> d!313082 (=> (not res!490090) (not e!700720))))

(assert (=> d!313082 (= res!490090 (appendAssocInst!212 (c!187691 lt!375217) (c!187691 lt!375222)))))

(assert (=> d!313082 (= lt!375602 (BalanceConc!6809 (++!2893 (c!187691 lt!375217) (c!187691 lt!375222))))))

(assert (=> d!313082 (= (++!2890 lt!375217 lt!375222) lt!375602)))

(declare-fun b!1105652 () Bool)

(declare-fun res!490089 () Bool)

(assert (=> b!1105652 (=> (not res!490089) (not e!700720))))

(assert (=> b!1105652 (= res!490089 (isBalanced!933 (++!2893 (c!187691 lt!375217) (c!187691 lt!375222))))))

(declare-fun b!1105653 () Bool)

(declare-fun res!490087 () Bool)

(assert (=> b!1105653 (=> (not res!490087) (not e!700720))))

(assert (=> b!1105653 (= res!490087 (<= (height!433 (++!2893 (c!187691 lt!375217) (c!187691 lt!375222))) (+ (max!0 (height!433 (c!187691 lt!375217)) (height!433 (c!187691 lt!375222))) 1)))))

(assert (= (and d!313082 res!490090) b!1105652))

(assert (= (and b!1105652 res!490089) b!1105653))

(assert (= (and b!1105653 res!490087) b!1105654))

(assert (= (and b!1105654 res!490088) b!1105655))

(declare-fun m!1263131 () Bool)

(assert (=> d!313082 m!1263131))

(declare-fun m!1263133 () Bool)

(assert (=> d!313082 m!1263133))

(declare-fun m!1263135 () Bool)

(assert (=> b!1105655 m!1263135))

(assert (=> b!1105655 m!1262377))

(assert (=> b!1105655 m!1262389))

(assert (=> b!1105655 m!1262377))

(assert (=> b!1105655 m!1262389))

(declare-fun m!1263137 () Bool)

(assert (=> b!1105655 m!1263137))

(assert (=> b!1105652 m!1263133))

(assert (=> b!1105652 m!1263133))

(declare-fun m!1263139 () Bool)

(assert (=> b!1105652 m!1263139))

(assert (=> b!1105653 m!1263133))

(assert (=> b!1105653 m!1263133))

(declare-fun m!1263141 () Bool)

(assert (=> b!1105653 m!1263141))

(declare-fun m!1263143 () Bool)

(assert (=> b!1105653 m!1263143))

(declare-fun m!1263145 () Bool)

(assert (=> b!1105653 m!1263145))

(assert (=> b!1105653 m!1263145))

(assert (=> b!1105653 m!1263143))

(declare-fun m!1263147 () Bool)

(assert (=> b!1105653 m!1263147))

(assert (=> b!1105654 m!1263133))

(assert (=> b!1105654 m!1263133))

(assert (=> b!1105654 m!1263141))

(assert (=> b!1105654 m!1263143))

(assert (=> b!1105654 m!1263145))

(assert (=> b!1105654 m!1263145))

(assert (=> b!1105654 m!1263143))

(assert (=> b!1105654 m!1263147))

(assert (=> b!1105310 d!313082))

(declare-fun d!313084 () Bool)

(declare-fun res!490091 () Bool)

(declare-fun e!700721 () Bool)

(assert (=> d!313084 (=> res!490091 e!700721)))

(assert (=> d!313084 (= res!490091 ((_ is Nil!10754) lt!375240))))

(assert (=> d!313084 (= (forall!2534 lt!375240 lambda!44603) e!700721)))

(declare-fun b!1105656 () Bool)

(declare-fun e!700722 () Bool)

(assert (=> b!1105656 (= e!700721 e!700722)))

(declare-fun res!490092 () Bool)

(assert (=> b!1105656 (=> (not res!490092) (not e!700722))))

(assert (=> b!1105656 (= res!490092 (dynLambda!4742 lambda!44603 (h!16155 lt!375240)))))

(declare-fun b!1105657 () Bool)

(assert (=> b!1105657 (= e!700722 (forall!2534 (t!105242 lt!375240) lambda!44603))))

(assert (= (and d!313084 (not res!490091)) b!1105656))

(assert (= (and b!1105656 res!490092) b!1105657))

(declare-fun b_lambda!32753 () Bool)

(assert (=> (not b_lambda!32753) (not b!1105656)))

(declare-fun m!1263149 () Bool)

(assert (=> b!1105656 m!1263149))

(declare-fun m!1263151 () Bool)

(assert (=> b!1105657 m!1263151))

(assert (=> b!1105310 d!313084))

(assert (=> b!1105310 d!312914))

(declare-fun bs!259984 () Bool)

(declare-fun b!1105668 () Bool)

(assert (= bs!259984 (and b!1105668 b!1105587)))

(declare-fun lt!375624 () tuple2!11838)

(declare-fun lambda!44714 () Int)

(assert (=> bs!259984 (= (= (_1!6745 lt!375624) (_1!6745 lt!375569)) (= lambda!44714 lambda!44709))))

(assert (=> bs!259984 (not (= lambda!44714 lambda!44710))))

(declare-fun bs!259985 () Bool)

(assert (= bs!259985 (and b!1105668 b!1105323)))

(assert (=> bs!259985 (not (= lambda!44714 lambda!44606))))

(assert (=> bs!259984 (not (= lambda!44714 lambda!44711))))

(assert (=> bs!259985 (not (= lambda!44714 lambda!44605))))

(declare-fun bs!259986 () Bool)

(assert (= bs!259986 (and b!1105668 d!312982)))

(assert (=> bs!259986 (not (= lambda!44714 lambda!44713))))

(assert (=> bs!259985 (= (= (_1!6745 lt!375624) (_1!6745 lt!375227)) (= lambda!44714 lambda!44604))))

(declare-fun bs!259987 () Bool)

(assert (= bs!259987 (and b!1105668 start!95330)))

(assert (=> bs!259987 (not (= lambda!44714 lambda!44603))))

(assert (=> bs!259984 (not (= lambda!44714 lambda!44712))))

(declare-fun b!1105671 () Bool)

(declare-fun e!700731 () Bool)

(assert (=> b!1105671 (= e!700731 true)))

(declare-fun b!1105670 () Bool)

(declare-fun e!700730 () Bool)

(assert (=> b!1105670 (= e!700730 e!700731)))

(assert (=> b!1105668 e!700730))

(assert (= b!1105670 b!1105671))

(assert (= b!1105668 b!1105670))

(declare-fun lambda!44715 () Int)

(assert (=> bs!259984 (not (= lambda!44715 lambda!44709))))

(assert (=> bs!259984 (= (= (_1!6745 lt!375624) (_1!6745 lt!375569)) (= lambda!44715 lambda!44710))))

(assert (=> bs!259985 (not (= lambda!44715 lambda!44606))))

(assert (=> b!1105668 (not (= lambda!44715 lambda!44714))))

(assert (=> bs!259984 (not (= lambda!44715 lambda!44711))))

(assert (=> bs!259985 (= (= (_1!6745 lt!375624) (_1!6745 lt!375227)) (= lambda!44715 lambda!44605))))

(assert (=> bs!259986 (not (= lambda!44715 lambda!44713))))

(assert (=> bs!259985 (not (= lambda!44715 lambda!44604))))

(assert (=> bs!259987 (not (= lambda!44715 lambda!44603))))

(assert (=> bs!259984 (not (= lambda!44715 lambda!44712))))

(declare-fun b!1105673 () Bool)

(declare-fun e!700733 () Bool)

(assert (=> b!1105673 (= e!700733 true)))

(declare-fun b!1105672 () Bool)

(declare-fun e!700732 () Bool)

(assert (=> b!1105672 (= e!700732 e!700733)))

(assert (=> b!1105668 e!700732))

(assert (= b!1105672 b!1105673))

(assert (= b!1105668 b!1105672))

(declare-fun lambda!44716 () Int)

(assert (=> bs!259984 (not (= lambda!44716 lambda!44709))))

(assert (=> bs!259984 (not (= lambda!44716 lambda!44710))))

(assert (=> b!1105668 (not (= lambda!44716 lambda!44715))))

(assert (=> bs!259985 (= (= (_1!6745 lt!375624) (_1!6745 lt!375227)) (= lambda!44716 lambda!44606))))

(assert (=> b!1105668 (not (= lambda!44716 lambda!44714))))

(assert (=> bs!259984 (= (= (_1!6745 lt!375624) (_1!6745 lt!375569)) (= lambda!44716 lambda!44711))))

(assert (=> bs!259985 (not (= lambda!44716 lambda!44605))))

(assert (=> bs!259986 (not (= lambda!44716 lambda!44713))))

(assert (=> bs!259985 (not (= lambda!44716 lambda!44604))))

(assert (=> bs!259987 (not (= lambda!44716 lambda!44603))))

(assert (=> bs!259984 (not (= lambda!44716 lambda!44712))))

(declare-fun b!1105675 () Bool)

(declare-fun e!700735 () Bool)

(assert (=> b!1105675 (= e!700735 true)))

(declare-fun b!1105674 () Bool)

(declare-fun e!700734 () Bool)

(assert (=> b!1105674 (= e!700734 e!700735)))

(assert (=> b!1105668 e!700734))

(assert (= b!1105674 b!1105675))

(assert (= b!1105668 b!1105674))

(declare-fun lambda!44717 () Int)

(assert (=> bs!259984 (not (= lambda!44717 lambda!44709))))

(assert (=> bs!259984 (not (= lambda!44717 lambda!44710))))

(assert (=> b!1105668 (not (= lambda!44717 lambda!44715))))

(assert (=> bs!259985 (not (= lambda!44717 lambda!44606))))

(assert (=> b!1105668 (not (= lambda!44717 lambda!44714))))

(assert (=> bs!259984 (not (= lambda!44717 lambda!44711))))

(assert (=> bs!259986 (= lambda!44717 lambda!44713)))

(assert (=> bs!259985 (not (= lambda!44717 lambda!44604))))

(assert (=> bs!259987 (= lambda!44717 lambda!44603)))

(assert (=> bs!259984 (= lambda!44717 lambda!44712)))

(assert (=> b!1105668 (not (= lambda!44717 lambda!44716))))

(assert (=> bs!259985 (not (= lambda!44717 lambda!44605))))

(declare-fun bs!259988 () Bool)

(declare-fun d!313086 () Bool)

(assert (= bs!259988 (and d!313086 b!1105587)))

(declare-fun lambda!44718 () Int)

(assert (=> bs!259988 (not (= lambda!44718 lambda!44709))))

(assert (=> bs!259988 (not (= lambda!44718 lambda!44710))))

(declare-fun bs!259989 () Bool)

(assert (= bs!259989 (and d!313086 b!1105668)))

(assert (=> bs!259989 (not (= lambda!44718 lambda!44715))))

(declare-fun bs!259990 () Bool)

(assert (= bs!259990 (and d!313086 b!1105323)))

(assert (=> bs!259990 (not (= lambda!44718 lambda!44606))))

(assert (=> bs!259989 (not (= lambda!44718 lambda!44714))))

(assert (=> bs!259988 (not (= lambda!44718 lambda!44711))))

(assert (=> bs!259990 (not (= lambda!44718 lambda!44604))))

(declare-fun bs!259991 () Bool)

(assert (= bs!259991 (and d!313086 start!95330)))

(assert (=> bs!259991 (= lambda!44718 lambda!44603)))

(assert (=> bs!259988 (= lambda!44718 lambda!44712)))

(assert (=> bs!259989 (not (= lambda!44718 lambda!44716))))

(assert (=> bs!259990 (not (= lambda!44718 lambda!44605))))

(assert (=> bs!259989 (= lambda!44718 lambda!44717)))

(declare-fun bs!259992 () Bool)

(assert (= bs!259992 (and d!313086 d!312982)))

(assert (=> bs!259992 (= lambda!44718 lambda!44713)))

(declare-fun b!1105658 () Bool)

(assert (=> b!1105658 true))

(declare-fun lt!375626 () Unit!16429)

(declare-fun lt!375612 () BalanceConc!6808)

(assert (=> b!1105658 (= lt!375626 (forallContained!550 (list!3880 lt!375612) lambda!44714 lt!375624))))

(declare-fun e!700724 () Unit!16429)

(declare-fun err!3104 () Unit!16429)

(assert (=> b!1105658 (= e!700724 err!3104)))

(declare-fun b!1105659 () Bool)

(declare-fun e!700729 () BalanceConc!6808)

(assert (=> b!1105659 (= e!700729 lt!375225)))

(declare-fun b!1105660 () Bool)

(assert (=> b!1105660 true))

(declare-fun lt!375630 () Unit!16429)

(assert (=> b!1105660 (= lt!375630 (forallContained!550 (list!3880 lt!375225) lambda!44716 lt!375624))))

(declare-fun e!700725 () Unit!16429)

(declare-fun err!3105 () Unit!16429)

(assert (=> b!1105660 (= e!700725 err!3105)))

(declare-fun b!1105662 () Bool)

(assert (=> b!1105662 true))

(declare-fun lt!375625 () Unit!16429)

(assert (=> b!1105662 (= lt!375625 (forallContained!550 (list!3880 lt!375225) lambda!44714 lt!375624))))

(declare-fun e!700727 () Unit!16429)

(declare-fun err!3102 () Unit!16429)

(assert (=> b!1105662 (= e!700727 err!3102)))

(declare-fun b!1105663 () Bool)

(declare-fun Unit!16447 () Unit!16429)

(assert (=> b!1105663 (= e!700727 Unit!16447)))

(declare-fun b!1105664 () Bool)

(declare-fun Unit!16448 () Unit!16429)

(assert (=> b!1105664 (= e!700724 Unit!16448)))

(declare-fun b!1105665 () Bool)

(declare-fun e!700726 () Bool)

(declare-fun lt!375628 () List!10770)

(assert (=> b!1105665 (= e!700726 (< (size!8362 (filter!422 lt!375628 lambda!44716)) (size!8362 lt!375628)))))

(declare-fun b!1105666 () Bool)

(assert (=> b!1105666 true))

(declare-fun lt!375622 () BalanceConc!6808)

(declare-fun lt!375616 () Unit!16429)

(assert (=> b!1105666 (= lt!375616 (forallContained!550 (list!3880 lt!375622) lambda!44716 lt!375624))))

(declare-fun e!700728 () Unit!16429)

(declare-fun err!3103 () Unit!16429)

(assert (=> b!1105666 (= e!700728 err!3103)))

(declare-fun b!1105667 () Bool)

(declare-fun e!700723 () Bool)

(declare-fun lt!375604 () List!10770)

(assert (=> b!1105667 (= e!700723 (< (size!8362 (filter!422 lt!375604 lambda!44714)) (size!8362 lt!375604)))))

(declare-fun lt!375631 () BalanceConc!6808)

(assert (=> b!1105668 (= e!700729 (++!2890 (++!2890 (sortObjectsByID!0 lt!375612) lt!375631) (sortObjectsByID!0 lt!375622)))))

(assert (=> b!1105668 (= lt!375624 (apply!2207 lt!375225 (ite (>= (size!8361 lt!375225) 0) (div (size!8361 lt!375225) 2) (- (div (- (size!8361 lt!375225)) 2)))))))

(assert (=> b!1105668 (= lt!375612 (filter!421 lt!375225 lambda!44714))))

(assert (=> b!1105668 (= lt!375631 (filter!421 lt!375225 lambda!44715))))

(assert (=> b!1105668 (= lt!375622 (filter!421 lt!375225 lambda!44716))))

(declare-fun c!187769 () Bool)

(assert (=> b!1105668 (= c!187769 (contains!1935 lt!375612 lt!375624))))

(declare-fun lt!375614 () Unit!16429)

(assert (=> b!1105668 (= lt!375614 e!700724)))

(declare-fun c!187768 () Bool)

(assert (=> b!1105668 (= c!187768 (forall!2533 lt!375225 lambda!44714))))

(declare-fun lt!375617 () Unit!16429)

(assert (=> b!1105668 (= lt!375617 e!700727)))

(assert (=> b!1105668 (= lt!375604 (list!3880 lt!375225))))

(declare-fun lt!375637 () Unit!16429)

(assert (=> b!1105668 (= lt!375637 (lemmaNotForallFilterShorter!83 lt!375604 lambda!44714))))

(declare-fun res!490093 () Bool)

(assert (=> b!1105668 (= res!490093 (isEmpty!6721 lt!375604))))

(assert (=> b!1105668 (=> res!490093 e!700723)))

(assert (=> b!1105668 e!700723))

(declare-fun lt!375619 () Unit!16429)

(assert (=> b!1105668 (= lt!375619 lt!375637)))

(declare-fun c!187767 () Bool)

(assert (=> b!1105668 (= c!187767 (contains!1935 lt!375622 lt!375624))))

(declare-fun lt!375618 () Unit!16429)

(assert (=> b!1105668 (= lt!375618 e!700728)))

(declare-fun c!187771 () Bool)

(assert (=> b!1105668 (= c!187771 (forall!2533 lt!375225 lambda!44716))))

(declare-fun lt!375606 () Unit!16429)

(assert (=> b!1105668 (= lt!375606 e!700725)))

(assert (=> b!1105668 (= lt!375628 (list!3880 lt!375225))))

(declare-fun lt!375609 () Unit!16429)

(assert (=> b!1105668 (= lt!375609 (lemmaNotForallFilterShorter!83 lt!375628 lambda!44716))))

(declare-fun res!490094 () Bool)

(assert (=> b!1105668 (= res!490094 (isEmpty!6721 lt!375628))))

(assert (=> b!1105668 (=> res!490094 e!700726)))

(assert (=> b!1105668 e!700726))

(declare-fun lt!375608 () Unit!16429)

(assert (=> b!1105668 (= lt!375608 lt!375609)))

(declare-fun lt!375629 () Unit!16429)

(assert (=> b!1105668 (= lt!375629 (filterSubseq!65 (list!3880 lt!375225) lambda!44714))))

(declare-fun lt!375611 () Unit!16429)

(assert (=> b!1105668 (= lt!375611 (filterSubseq!65 (list!3880 lt!375225) lambda!44715))))

(declare-fun lt!375638 () Unit!16429)

(assert (=> b!1105668 (= lt!375638 (filterSubseq!65 (list!3880 lt!375225) lambda!44716))))

(declare-fun lt!375623 () List!10770)

(assert (=> b!1105668 (= lt!375623 (list!3880 (filter!421 lt!375225 lambda!44714)))))

(declare-fun lt!375610 () List!10770)

(assert (=> b!1105668 (= lt!375610 (list!3880 lt!375225))))

(declare-fun lt!375621 () Unit!16429)

(assert (=> b!1105668 (= lt!375621 (lemmaForallSubseq!69 lt!375623 lt!375610 lambda!44717))))

(assert (=> b!1105668 (forall!2534 lt!375623 lambda!44717)))

(declare-fun lt!375633 () Unit!16429)

(assert (=> b!1105668 (= lt!375633 lt!375621)))

(declare-fun lt!375605 () List!10770)

(assert (=> b!1105668 (= lt!375605 (list!3880 (filter!421 lt!375225 lambda!44715)))))

(declare-fun lt!375613 () List!10770)

(assert (=> b!1105668 (= lt!375613 (list!3880 lt!375225))))

(declare-fun lt!375603 () Unit!16429)

(assert (=> b!1105668 (= lt!375603 (lemmaForallSubseq!69 lt!375605 lt!375613 lambda!44717))))

(assert (=> b!1105668 (forall!2534 lt!375605 lambda!44717)))

(declare-fun lt!375627 () Unit!16429)

(assert (=> b!1105668 (= lt!375627 lt!375603)))

(declare-fun lt!375632 () List!10770)

(assert (=> b!1105668 (= lt!375632 (list!3880 (filter!421 lt!375225 lambda!44716)))))

(declare-fun lt!375615 () List!10770)

(assert (=> b!1105668 (= lt!375615 (list!3880 lt!375225))))

(declare-fun lt!375607 () Unit!16429)

(assert (=> b!1105668 (= lt!375607 (lemmaForallSubseq!69 lt!375632 lt!375615 lambda!44717))))

(assert (=> b!1105668 (forall!2534 lt!375632 lambda!44717)))

(declare-fun lt!375636 () Unit!16429)

(assert (=> b!1105668 (= lt!375636 lt!375607)))

(declare-fun lt!375634 () Unit!16429)

(assert (=> b!1105668 (= lt!375634 (lemmaConcatPreservesForall!102 (list!3880 (sortObjectsByID!0 lt!375612)) (list!3880 lt!375631) lambda!44717))))

(declare-fun lt!375635 () Unit!16429)

(assert (=> b!1105668 (= lt!375635 (lemmaConcatPreservesForall!102 (++!2891 (list!3880 (sortObjectsByID!0 lt!375612)) (list!3880 lt!375631)) (list!3880 (sortObjectsByID!0 lt!375622)) lambda!44717))))

(declare-fun b!1105669 () Bool)

(declare-fun Unit!16449 () Unit!16429)

(assert (=> b!1105669 (= e!700725 Unit!16449)))

(declare-fun lt!375620 () BalanceConc!6808)

(assert (=> d!313086 (forall!2533 lt!375620 lambda!44718)))

(assert (=> d!313086 (= lt!375620 e!700729)))

(declare-fun c!187770 () Bool)

(assert (=> d!313086 (= c!187770 (<= (size!8361 lt!375225) 1))))

(assert (=> d!313086 (= (sortObjectsByID!0 lt!375225) lt!375620)))

(declare-fun b!1105661 () Bool)

(declare-fun Unit!16450 () Unit!16429)

(assert (=> b!1105661 (= e!700728 Unit!16450)))

(assert (= (and d!313086 c!187770) b!1105659))

(assert (= (and d!313086 (not c!187770)) b!1105668))

(assert (= (and b!1105668 c!187769) b!1105658))

(assert (= (and b!1105668 (not c!187769)) b!1105664))

(assert (= (and b!1105668 c!187768) b!1105662))

(assert (= (and b!1105668 (not c!187768)) b!1105663))

(assert (= (and b!1105668 (not res!490093)) b!1105667))

(assert (= (and b!1105668 c!187767) b!1105666))

(assert (= (and b!1105668 (not c!187767)) b!1105661))

(assert (= (and b!1105668 c!187771) b!1105660))

(assert (= (and b!1105668 (not c!187771)) b!1105669))

(assert (= (and b!1105668 (not res!490094)) b!1105665))

(declare-fun m!1263153 () Bool)

(assert (=> b!1105667 m!1263153))

(assert (=> b!1105667 m!1263153))

(declare-fun m!1263155 () Bool)

(assert (=> b!1105667 m!1263155))

(declare-fun m!1263157 () Bool)

(assert (=> b!1105667 m!1263157))

(assert (=> b!1105660 m!1262345))

(assert (=> b!1105660 m!1262345))

(declare-fun m!1263159 () Bool)

(assert (=> b!1105660 m!1263159))

(declare-fun m!1263161 () Bool)

(assert (=> b!1105658 m!1263161))

(assert (=> b!1105658 m!1263161))

(declare-fun m!1263163 () Bool)

(assert (=> b!1105658 m!1263163))

(declare-fun m!1263165 () Bool)

(assert (=> b!1105666 m!1263165))

(assert (=> b!1105666 m!1263165))

(declare-fun m!1263167 () Bool)

(assert (=> b!1105666 m!1263167))

(declare-fun m!1263169 () Bool)

(assert (=> b!1105668 m!1263169))

(declare-fun m!1263171 () Bool)

(assert (=> b!1105668 m!1263171))

(declare-fun m!1263173 () Bool)

(assert (=> b!1105668 m!1263173))

(assert (=> b!1105668 m!1262345))

(declare-fun m!1263175 () Bool)

(assert (=> b!1105668 m!1263175))

(assert (=> b!1105668 m!1262367))

(declare-fun m!1263177 () Bool)

(assert (=> b!1105668 m!1263177))

(declare-fun m!1263179 () Bool)

(assert (=> b!1105668 m!1263179))

(declare-fun m!1263181 () Bool)

(assert (=> b!1105668 m!1263181))

(declare-fun m!1263183 () Bool)

(assert (=> b!1105668 m!1263183))

(declare-fun m!1263185 () Bool)

(assert (=> b!1105668 m!1263185))

(declare-fun m!1263187 () Bool)

(assert (=> b!1105668 m!1263187))

(declare-fun m!1263189 () Bool)

(assert (=> b!1105668 m!1263189))

(declare-fun m!1263191 () Bool)

(assert (=> b!1105668 m!1263191))

(assert (=> b!1105668 m!1263179))

(declare-fun m!1263193 () Bool)

(assert (=> b!1105668 m!1263193))

(declare-fun m!1263195 () Bool)

(assert (=> b!1105668 m!1263195))

(declare-fun m!1263197 () Bool)

(assert (=> b!1105668 m!1263197))

(declare-fun m!1263199 () Bool)

(assert (=> b!1105668 m!1263199))

(declare-fun m!1263201 () Bool)

(assert (=> b!1105668 m!1263201))

(declare-fun m!1263203 () Bool)

(assert (=> b!1105668 m!1263203))

(assert (=> b!1105668 m!1263169))

(declare-fun m!1263205 () Bool)

(assert (=> b!1105668 m!1263205))

(assert (=> b!1105668 m!1263181))

(assert (=> b!1105668 m!1263197))

(assert (=> b!1105668 m!1262345))

(declare-fun m!1263207 () Bool)

(assert (=> b!1105668 m!1263207))

(assert (=> b!1105668 m!1263201))

(assert (=> b!1105668 m!1263195))

(assert (=> b!1105668 m!1262345))

(declare-fun m!1263209 () Bool)

(assert (=> b!1105668 m!1263209))

(assert (=> b!1105668 m!1263181))

(declare-fun m!1263211 () Bool)

(assert (=> b!1105668 m!1263211))

(declare-fun m!1263213 () Bool)

(assert (=> b!1105668 m!1263213))

(declare-fun m!1263215 () Bool)

(assert (=> b!1105668 m!1263215))

(assert (=> b!1105668 m!1262345))

(assert (=> b!1105668 m!1263179))

(assert (=> b!1105668 m!1263187))

(declare-fun m!1263217 () Bool)

(assert (=> b!1105668 m!1263217))

(declare-fun m!1263219 () Bool)

(assert (=> b!1105668 m!1263219))

(declare-fun m!1263221 () Bool)

(assert (=> b!1105668 m!1263221))

(declare-fun m!1263223 () Bool)

(assert (=> b!1105668 m!1263223))

(declare-fun m!1263225 () Bool)

(assert (=> b!1105668 m!1263225))

(assert (=> b!1105668 m!1263197))

(declare-fun m!1263227 () Bool)

(assert (=> b!1105668 m!1263227))

(assert (=> b!1105668 m!1263185))

(assert (=> b!1105668 m!1263187))

(declare-fun m!1263229 () Bool)

(assert (=> b!1105668 m!1263229))

(declare-fun m!1263231 () Bool)

(assert (=> b!1105668 m!1263231))

(assert (=> b!1105668 m!1263201))

(assert (=> b!1105668 m!1263185))

(assert (=> b!1105668 m!1263169))

(assert (=> b!1105668 m!1263229))

(assert (=> b!1105668 m!1263227))

(declare-fun m!1263233 () Bool)

(assert (=> b!1105668 m!1263233))

(declare-fun m!1263235 () Bool)

(assert (=> b!1105668 m!1263235))

(declare-fun m!1263237 () Bool)

(assert (=> b!1105665 m!1263237))

(assert (=> b!1105665 m!1263237))

(declare-fun m!1263239 () Bool)

(assert (=> b!1105665 m!1263239))

(declare-fun m!1263241 () Bool)

(assert (=> b!1105665 m!1263241))

(assert (=> b!1105662 m!1262345))

(assert (=> b!1105662 m!1262345))

(declare-fun m!1263243 () Bool)

(assert (=> b!1105662 m!1263243))

(declare-fun m!1263245 () Bool)

(assert (=> d!313086 m!1263245))

(assert (=> d!313086 m!1262367))

(assert (=> b!1105310 d!313086))

(declare-fun d!313088 () Bool)

(assert (=> d!313088 (= (list!3880 (filter!421 objs!8 lambda!44605)) (list!3882 (c!187691 (filter!421 objs!8 lambda!44605))))))

(declare-fun bs!259993 () Bool)

(assert (= bs!259993 d!313088))

(declare-fun m!1263247 () Bool)

(assert (=> bs!259993 m!1263247))

(assert (=> b!1105310 d!313088))

(declare-fun d!313090 () Bool)

(assert (=> d!313090 (forall!2534 (++!2891 lt!375241 (list!3880 lt!375208)) lambda!44603)))

(declare-fun lt!375639 () Unit!16429)

(assert (=> d!313090 (= lt!375639 (choose!7159 lt!375241 (list!3880 lt!375208) lambda!44603))))

(assert (=> d!313090 (forall!2534 lt!375241 lambda!44603)))

(assert (=> d!313090 (= (lemmaConcatPreservesForall!102 lt!375241 (list!3880 lt!375208) lambda!44603) lt!375639)))

(declare-fun bs!259994 () Bool)

(assert (= bs!259994 d!313090))

(assert (=> bs!259994 m!1262405))

(declare-fun m!1263249 () Bool)

(assert (=> bs!259994 m!1263249))

(assert (=> bs!259994 m!1263249))

(declare-fun m!1263251 () Bool)

(assert (=> bs!259994 m!1263251))

(assert (=> bs!259994 m!1262405))

(declare-fun m!1263253 () Bool)

(assert (=> bs!259994 m!1263253))

(declare-fun m!1263255 () Bool)

(assert (=> bs!259994 m!1263255))

(assert (=> b!1105310 d!313090))

(declare-fun d!313092 () Bool)

(assert (=> d!313092 (forall!2534 lt!375229 lambda!44603)))

(declare-fun lt!375640 () Unit!16429)

(assert (=> d!313092 (= lt!375640 (choose!7161 lt!375229 lt!375211 lambda!44603))))

(assert (=> d!313092 (forall!2534 lt!375211 lambda!44603)))

(assert (=> d!313092 (= (lemmaForallSubseq!69 lt!375229 lt!375211 lambda!44603) lt!375640)))

(declare-fun bs!259995 () Bool)

(assert (= bs!259995 d!313092))

(assert (=> bs!259995 m!1262421))

(declare-fun m!1263257 () Bool)

(assert (=> bs!259995 m!1263257))

(assert (=> bs!259995 m!1263127))

(assert (=> b!1105310 d!313092))

(assert (=> b!1105310 d!312928))

(declare-fun d!313094 () Bool)

(assert (=> d!313094 (dynLambda!4742 lambda!44606 lt!375227)))

(declare-fun lt!375641 () Unit!16429)

(assert (=> d!313094 (= lt!375641 (choose!7156 (list!3880 lt!375226) lambda!44606 lt!375227))))

(declare-fun e!700736 () Bool)

(assert (=> d!313094 e!700736))

(declare-fun res!490095 () Bool)

(assert (=> d!313094 (=> (not res!490095) (not e!700736))))

(assert (=> d!313094 (= res!490095 (forall!2534 (list!3880 lt!375226) lambda!44606))))

(assert (=> d!313094 (= (forallContained!550 (list!3880 lt!375226) lambda!44606 lt!375227) lt!375641)))

(declare-fun b!1105676 () Bool)

(assert (=> b!1105676 (= e!700736 (contains!1938 (list!3880 lt!375226) lt!375227))))

(assert (= (and d!313094 res!490095) b!1105676))

(declare-fun b_lambda!32755 () Bool)

(assert (=> (not b_lambda!32755) (not d!313094)))

(assert (=> d!313094 m!1262439))

(assert (=> d!313094 m!1262341))

(declare-fun m!1263259 () Bool)

(assert (=> d!313094 m!1263259))

(assert (=> d!313094 m!1262341))

(declare-fun m!1263261 () Bool)

(assert (=> d!313094 m!1263261))

(assert (=> b!1105676 m!1262341))

(assert (=> b!1105676 m!1262435))

(assert (=> b!1105317 d!313094))

(declare-fun d!313096 () Bool)

(assert (=> d!313096 (= (list!3880 lt!375226) (list!3882 (c!187691 lt!375226)))))

(declare-fun bs!259996 () Bool)

(assert (= bs!259996 d!313096))

(declare-fun m!1263263 () Bool)

(assert (=> bs!259996 m!1263263))

(assert (=> b!1105317 d!313096))

(declare-fun d!313098 () Bool)

(assert (=> d!313098 (= (isEmpty!6721 lt!375211) ((_ is Nil!10754) lt!375211))))

(assert (=> b!1105306 d!313098))

(declare-fun d!313100 () Bool)

(declare-fun e!700739 () Bool)

(assert (=> d!313100 e!700739))

(declare-fun res!490098 () Bool)

(assert (=> d!313100 (=> res!490098 e!700739)))

(assert (=> d!313100 (= res!490098 (isEmpty!6721 lt!375211))))

(declare-fun lt!375644 () Unit!16429)

(declare-fun choose!7162 (List!10770 Int) Unit!16429)

(assert (=> d!313100 (= lt!375644 (choose!7162 lt!375211 lambda!44604))))

(assert (=> d!313100 (not (forall!2534 lt!375211 lambda!44604))))

(assert (=> d!313100 (= (lemmaNotForallFilterShorter!83 lt!375211 lambda!44604) lt!375644)))

(declare-fun b!1105679 () Bool)

(assert (=> b!1105679 (= e!700739 (< (size!8362 (filter!422 lt!375211 lambda!44604)) (size!8362 lt!375211)))))

(assert (= (and d!313100 (not res!490098)) b!1105679))

(assert (=> d!313100 m!1262363))

(declare-fun m!1263265 () Bool)

(assert (=> d!313100 m!1263265))

(declare-fun m!1263267 () Bool)

(assert (=> d!313100 m!1263267))

(assert (=> b!1105679 m!1262335))

(assert (=> b!1105679 m!1262335))

(assert (=> b!1105679 m!1262337))

(assert (=> b!1105679 m!1262339))

(assert (=> b!1105306 d!313100))

(declare-fun d!313102 () Bool)

(declare-fun lt!375647 () Int)

(assert (=> d!313102 (= lt!375647 (size!8362 (list!3880 lt!375225)))))

(declare-fun size!8364 (Conc!3397) Int)

(assert (=> d!313102 (= lt!375647 (size!8364 (c!187691 lt!375225)))))

(assert (=> d!313102 (= (size!8361 lt!375225) lt!375647)))

(declare-fun bs!259997 () Bool)

(assert (= bs!259997 d!313102))

(assert (=> bs!259997 m!1262345))

(assert (=> bs!259997 m!1262345))

(declare-fun m!1263269 () Bool)

(assert (=> bs!259997 m!1263269))

(declare-fun m!1263271 () Bool)

(assert (=> bs!259997 m!1263271))

(assert (=> b!1105306 d!313102))

(declare-fun d!313104 () Bool)

(assert (=> d!313104 (= (list!3880 objs!8) (list!3882 (c!187691 objs!8)))))

(declare-fun bs!259998 () Bool)

(assert (= bs!259998 d!313104))

(declare-fun m!1263273 () Bool)

(assert (=> bs!259998 m!1263273))

(assert (=> b!1105306 d!313104))

(declare-fun d!313106 () Bool)

(declare-fun lt!375648 () Bool)

(assert (=> d!313106 (= lt!375648 (forall!2534 (list!3880 objs!8) lambda!44604))))

(assert (=> d!313106 (= lt!375648 (forall!2536 (c!187691 objs!8) lambda!44604))))

(assert (=> d!313106 (= (forall!2533 objs!8 lambda!44604) lt!375648)))

(declare-fun bs!259999 () Bool)

(assert (= bs!259999 d!313106))

(assert (=> bs!259999 m!1262359))

(assert (=> bs!259999 m!1262359))

(declare-fun m!1263275 () Bool)

(assert (=> bs!259999 m!1263275))

(declare-fun m!1263277 () Bool)

(assert (=> bs!259999 m!1263277))

(assert (=> b!1105306 d!313106))

(declare-fun d!313108 () Bool)

(declare-fun lt!375649 () Int)

(assert (=> d!313108 (= lt!375649 (size!8362 (list!3880 lt!375226)))))

(assert (=> d!313108 (= lt!375649 (size!8364 (c!187691 lt!375226)))))

(assert (=> d!313108 (= (size!8361 lt!375226) lt!375649)))

(declare-fun bs!260000 () Bool)

(assert (= bs!260000 d!313108))

(assert (=> bs!260000 m!1262341))

(assert (=> bs!260000 m!1262341))

(declare-fun m!1263279 () Bool)

(assert (=> bs!260000 m!1263279))

(declare-fun m!1263281 () Bool)

(assert (=> bs!260000 m!1263281))

(assert (=> b!1105308 d!313108))

(declare-fun d!313110 () Bool)

(declare-fun e!700740 () Bool)

(assert (=> d!313110 e!700740))

(declare-fun res!490099 () Bool)

(assert (=> d!313110 (=> res!490099 e!700740)))

(assert (=> d!313110 (= res!490099 (isEmpty!6721 lt!375211))))

(declare-fun lt!375650 () Unit!16429)

(assert (=> d!313110 (= lt!375650 (choose!7162 lt!375211 lambda!44606))))

(assert (=> d!313110 (not (forall!2534 lt!375211 lambda!44606))))

(assert (=> d!313110 (= (lemmaNotForallFilterShorter!83 lt!375211 lambda!44606) lt!375650)))

(declare-fun b!1105680 () Bool)

(assert (=> b!1105680 (= e!700740 (< (size!8362 (filter!422 lt!375211 lambda!44606)) (size!8362 lt!375211)))))

(assert (= (and d!313110 (not res!490099)) b!1105680))

(assert (=> d!313110 m!1262363))

(declare-fun m!1263283 () Bool)

(assert (=> d!313110 m!1263283))

(assert (=> d!313110 m!1262443))

(assert (=> b!1105680 m!1262353))

(assert (=> b!1105680 m!1262353))

(assert (=> b!1105680 m!1262355))

(assert (=> b!1105680 m!1262339))

(assert (=> b!1105308 d!313110))

(declare-fun d!313112 () Bool)

(declare-fun lt!375651 () Bool)

(assert (=> d!313112 (= lt!375651 (forall!2534 (list!3880 objs!8) lambda!44606))))

(assert (=> d!313112 (= lt!375651 (forall!2536 (c!187691 objs!8) lambda!44606))))

(assert (=> d!313112 (= (forall!2533 objs!8 lambda!44606) lt!375651)))

(declare-fun bs!260001 () Bool)

(assert (= bs!260001 d!313112))

(assert (=> bs!260001 m!1262359))

(assert (=> bs!260001 m!1262359))

(declare-fun m!1263285 () Bool)

(assert (=> bs!260001 m!1263285))

(declare-fun m!1263287 () Bool)

(assert (=> bs!260001 m!1263287))

(assert (=> b!1105308 d!313112))

(declare-fun d!313114 () Bool)

(declare-fun lt!375652 () Int)

(assert (=> d!313114 (>= lt!375652 0)))

(declare-fun e!700741 () Int)

(assert (=> d!313114 (= lt!375652 e!700741)))

(declare-fun c!187772 () Bool)

(assert (=> d!313114 (= c!187772 ((_ is Nil!10754) (filter!422 lt!375211 lambda!44606)))))

(assert (=> d!313114 (= (size!8362 (filter!422 lt!375211 lambda!44606)) lt!375652)))

(declare-fun b!1105681 () Bool)

(assert (=> b!1105681 (= e!700741 0)))

(declare-fun b!1105682 () Bool)

(assert (=> b!1105682 (= e!700741 (+ 1 (size!8362 (t!105242 (filter!422 lt!375211 lambda!44606)))))))

(assert (= (and d!313114 c!187772) b!1105681))

(assert (= (and d!313114 (not c!187772)) b!1105682))

(declare-fun m!1263289 () Bool)

(assert (=> b!1105682 m!1263289))

(assert (=> b!1105318 d!313114))

(declare-fun b!1105683 () Bool)

(declare-fun e!700742 () List!10770)

(declare-fun call!80502 () List!10770)

(assert (=> b!1105683 (= e!700742 call!80502)))

(declare-fun b!1105684 () Bool)

(declare-fun e!700743 () Bool)

(declare-fun lt!375653 () List!10770)

(assert (=> b!1105684 (= e!700743 (forall!2534 lt!375653 lambda!44606))))

(declare-fun d!313116 () Bool)

(assert (=> d!313116 e!700743))

(declare-fun res!490100 () Bool)

(assert (=> d!313116 (=> (not res!490100) (not e!700743))))

(assert (=> d!313116 (= res!490100 (<= (size!8362 lt!375653) (size!8362 lt!375211)))))

(declare-fun e!700744 () List!10770)

(assert (=> d!313116 (= lt!375653 e!700744)))

(declare-fun c!187774 () Bool)

(assert (=> d!313116 (= c!187774 ((_ is Nil!10754) lt!375211))))

(assert (=> d!313116 (= (filter!422 lt!375211 lambda!44606) lt!375653)))

(declare-fun b!1105685 () Bool)

(declare-fun res!490101 () Bool)

(assert (=> b!1105685 (=> (not res!490101) (not e!700743))))

(assert (=> b!1105685 (= res!490101 (= ((_ map implies) (content!1552 lt!375653) (content!1552 lt!375211)) ((as const (InoxSet tuple2!11838)) true)))))

(declare-fun bm!80497 () Bool)

(assert (=> bm!80497 (= call!80502 (filter!422 (t!105242 lt!375211) lambda!44606))))

(declare-fun b!1105686 () Bool)

(assert (=> b!1105686 (= e!700744 e!700742)))

(declare-fun c!187773 () Bool)

(assert (=> b!1105686 (= c!187773 (dynLambda!4742 lambda!44606 (h!16155 lt!375211)))))

(declare-fun b!1105687 () Bool)

(assert (=> b!1105687 (= e!700744 Nil!10754)))

(declare-fun b!1105688 () Bool)

(assert (=> b!1105688 (= e!700742 (Cons!10754 (h!16155 lt!375211) call!80502))))

(assert (= (and d!313116 c!187774) b!1105687))

(assert (= (and d!313116 (not c!187774)) b!1105686))

(assert (= (and b!1105686 c!187773) b!1105688))

(assert (= (and b!1105686 (not c!187773)) b!1105683))

(assert (= (or b!1105688 b!1105683) bm!80497))

(assert (= (and d!313116 res!490100) b!1105685))

(assert (= (and b!1105685 res!490101) b!1105684))

(declare-fun b_lambda!32757 () Bool)

(assert (=> (not b_lambda!32757) (not b!1105686)))

(declare-fun m!1263291 () Bool)

(assert (=> d!313116 m!1263291))

(assert (=> d!313116 m!1262339))

(declare-fun m!1263293 () Bool)

(assert (=> b!1105686 m!1263293))

(declare-fun m!1263295 () Bool)

(assert (=> bm!80497 m!1263295))

(declare-fun m!1263297 () Bool)

(assert (=> b!1105684 m!1263297))

(declare-fun m!1263299 () Bool)

(assert (=> b!1105685 m!1263299))

(assert (=> b!1105685 m!1262599))

(assert (=> b!1105318 d!313116))

(assert (=> b!1105318 d!312968))

(declare-fun d!313118 () Bool)

(declare-fun lt!375654 () Int)

(assert (=> d!313118 (= lt!375654 (size!8362 (list!3880 objs!8)))))

(assert (=> d!313118 (= lt!375654 (size!8364 (c!187691 objs!8)))))

(assert (=> d!313118 (= (size!8361 objs!8) lt!375654)))

(declare-fun bs!260002 () Bool)

(assert (= bs!260002 d!313118))

(assert (=> bs!260002 m!1262359))

(assert (=> bs!260002 m!1262359))

(declare-fun m!1263301 () Bool)

(assert (=> bs!260002 m!1263301))

(declare-fun m!1263303 () Bool)

(assert (=> bs!260002 m!1263303))

(assert (=> b!1105307 d!313118))

(declare-fun d!313120 () Bool)

(assert (=> d!313120 (dynLambda!4742 lambda!44604 lt!375227)))

(declare-fun lt!375655 () Unit!16429)

(assert (=> d!313120 (= lt!375655 (choose!7156 (list!3880 objs!8) lambda!44604 lt!375227))))

(declare-fun e!700745 () Bool)

(assert (=> d!313120 e!700745))

(declare-fun res!490102 () Bool)

(assert (=> d!313120 (=> (not res!490102) (not e!700745))))

(assert (=> d!313120 (= res!490102 (forall!2534 (list!3880 objs!8) lambda!44604))))

(assert (=> d!313120 (= (forallContained!550 (list!3880 objs!8) lambda!44604 lt!375227) lt!375655)))

(declare-fun b!1105689 () Bool)

(assert (=> b!1105689 (= e!700745 (contains!1938 (list!3880 objs!8) lt!375227))))

(assert (= (and d!313120 res!490102) b!1105689))

(declare-fun b_lambda!32759 () Bool)

(assert (=> (not b_lambda!32759) (not d!313120)))

(assert (=> d!313120 m!1262447))

(assert (=> d!313120 m!1262359))

(declare-fun m!1263305 () Bool)

(assert (=> d!313120 m!1263305))

(assert (=> d!313120 m!1262359))

(assert (=> d!313120 m!1263275))

(assert (=> b!1105689 m!1262359))

(assert (=> b!1105689 m!1262457))

(assert (=> b!1105314 d!313120))

(assert (=> b!1105314 d!313104))

(declare-fun d!313122 () Bool)

(declare-fun lt!375656 () Bool)

(assert (=> d!313122 (= lt!375656 (forall!2534 (list!3880 objs!8) lambda!44603))))

(assert (=> d!313122 (= lt!375656 (forall!2536 (c!187691 objs!8) lambda!44603))))

(assert (=> d!313122 (= (forall!2533 objs!8 lambda!44603) lt!375656)))

(declare-fun bs!260003 () Bool)

(assert (= bs!260003 d!313122))

(assert (=> bs!260003 m!1262359))

(assert (=> bs!260003 m!1262359))

(declare-fun m!1263307 () Bool)

(assert (=> bs!260003 m!1263307))

(declare-fun m!1263309 () Bool)

(assert (=> bs!260003 m!1263309))

(assert (=> start!95330 d!313122))

(declare-fun d!313124 () Bool)

(assert (=> d!313124 (= (inv!13815 objs!8) (isBalanced!933 (c!187691 objs!8)))))

(declare-fun bs!260004 () Bool)

(assert (= bs!260004 d!313124))

(declare-fun m!1263311 () Bool)

(assert (=> bs!260004 m!1263311))

(assert (=> start!95330 d!313124))

(declare-fun d!313126 () Bool)

(declare-fun c!187777 () Bool)

(assert (=> d!313126 (= c!187777 ((_ is Node!3397) (c!187691 objs!8)))))

(declare-fun e!700750 () Bool)

(assert (=> d!313126 (= (inv!13816 (c!187691 objs!8)) e!700750)))

(declare-fun b!1105696 () Bool)

(declare-fun inv!13820 (Conc!3397) Bool)

(assert (=> b!1105696 (= e!700750 (inv!13820 (c!187691 objs!8)))))

(declare-fun b!1105697 () Bool)

(declare-fun e!700751 () Bool)

(assert (=> b!1105697 (= e!700750 e!700751)))

(declare-fun res!490105 () Bool)

(assert (=> b!1105697 (= res!490105 (not ((_ is Leaf!5331) (c!187691 objs!8))))))

(assert (=> b!1105697 (=> res!490105 e!700751)))

(declare-fun b!1105698 () Bool)

(declare-fun inv!13821 (Conc!3397) Bool)

(assert (=> b!1105698 (= e!700751 (inv!13821 (c!187691 objs!8)))))

(assert (= (and d!313126 c!187777) b!1105696))

(assert (= (and d!313126 (not c!187777)) b!1105697))

(assert (= (and b!1105697 (not res!490105)) b!1105698))

(declare-fun m!1263313 () Bool)

(assert (=> b!1105696 m!1263313))

(declare-fun m!1263315 () Bool)

(assert (=> b!1105698 m!1263315))

(assert (=> b!1105316 d!313126))

(declare-fun d!313128 () Bool)

(declare-fun lt!375657 () Bool)

(assert (=> d!313128 (= lt!375657 (contains!1938 (list!3880 lt!375225) lt!375227))))

(assert (=> d!313128 (= lt!375657 (contains!1939 (c!187691 lt!375225) lt!375227))))

(assert (=> d!313128 (= (contains!1935 lt!375225 lt!375227) lt!375657)))

(declare-fun bs!260005 () Bool)

(assert (= bs!260005 d!313128))

(assert (=> bs!260005 m!1262345))

(assert (=> bs!260005 m!1262345))

(assert (=> bs!260005 m!1262453))

(declare-fun m!1263317 () Bool)

(assert (=> bs!260005 m!1263317))

(assert (=> b!1105315 d!313128))

(declare-fun b!1105709 () Bool)

(declare-fun e!700760 () Bool)

(assert (=> b!1105709 (= e!700760 true)))

(declare-fun b!1105708 () Bool)

(declare-fun e!700759 () Bool)

(assert (=> b!1105708 (= e!700759 e!700760)))

(declare-fun b!1105707 () Bool)

(declare-fun e!700758 () Bool)

(assert (=> b!1105707 (= e!700758 e!700759)))

(assert (=> b!1105332 e!700758))

(assert (= b!1105708 b!1105709))

(assert (= b!1105707 b!1105708))

(assert (= (and b!1105332 ((_ is Cons!10752) (rules!9143 (_2!6745 lt!375227)))) b!1105707))

(declare-fun order!6593 () Int)

(declare-fun order!6591 () Int)

(declare-fun dynLambda!4746 (Int Int) Int)

(declare-fun dynLambda!4747 (Int Int) Int)

(assert (=> b!1105709 (< (dynLambda!4746 order!6591 (toValue!2933 (transformation!1856 (h!16153 (rules!9143 (_2!6745 lt!375227)))))) (dynLambda!4747 order!6593 lambda!44605))))

(declare-fun order!6595 () Int)

(declare-fun dynLambda!4748 (Int Int) Int)

(assert (=> b!1105709 (< (dynLambda!4748 order!6595 (toChars!2792 (transformation!1856 (h!16153 (rules!9143 (_2!6745 lt!375227)))))) (dynLambda!4747 order!6593 lambda!44605))))

(declare-fun b!1105718 () Bool)

(declare-fun e!700765 () Bool)

(assert (=> b!1105718 (= e!700765 true)))

(declare-fun b!1105720 () Bool)

(declare-fun e!700766 () Bool)

(assert (=> b!1105720 (= e!700766 true)))

(declare-fun b!1105719 () Bool)

(assert (=> b!1105719 (= e!700765 e!700766)))

(assert (=> b!1105333 e!700765))

(assert (= (and b!1105333 ((_ is Node!3396) (c!187690 (tokens!1415 (_2!6745 lt!375227))))) b!1105718))

(assert (= b!1105719 b!1105720))

(assert (= (and b!1105333 ((_ is Leaf!5330) (c!187690 (tokens!1415 (_2!6745 lt!375227))))) b!1105719))

(declare-fun b!1105723 () Bool)

(declare-fun e!700769 () Bool)

(assert (=> b!1105723 (= e!700769 true)))

(declare-fun b!1105722 () Bool)

(declare-fun e!700768 () Bool)

(assert (=> b!1105722 (= e!700768 e!700769)))

(declare-fun b!1105721 () Bool)

(declare-fun e!700767 () Bool)

(assert (=> b!1105721 (= e!700767 e!700768)))

(assert (=> b!1105334 e!700767))

(assert (= b!1105722 b!1105723))

(assert (= b!1105721 b!1105722))

(assert (= (and b!1105334 ((_ is Cons!10752) (rules!9143 (_2!6745 lt!375227)))) b!1105721))

(assert (=> b!1105723 (< (dynLambda!4746 order!6591 (toValue!2933 (transformation!1856 (h!16153 (rules!9143 (_2!6745 lt!375227)))))) (dynLambda!4747 order!6593 lambda!44606))))

(assert (=> b!1105723 (< (dynLambda!4748 order!6595 (toChars!2792 (transformation!1856 (h!16153 (rules!9143 (_2!6745 lt!375227)))))) (dynLambda!4747 order!6593 lambda!44606))))

(declare-fun b!1105726 () Bool)

(declare-fun e!700772 () Bool)

(assert (=> b!1105726 (= e!700772 true)))

(declare-fun b!1105725 () Bool)

(declare-fun e!700771 () Bool)

(assert (=> b!1105725 (= e!700771 e!700772)))

(declare-fun b!1105724 () Bool)

(declare-fun e!700770 () Bool)

(assert (=> b!1105724 (= e!700770 e!700771)))

(assert (=> b!1105330 e!700770))

(assert (= b!1105725 b!1105726))

(assert (= b!1105724 b!1105725))

(assert (= (and b!1105330 ((_ is Cons!10752) (rules!9143 (_2!6745 lt!375227)))) b!1105724))

(assert (=> b!1105726 (< (dynLambda!4746 order!6591 (toValue!2933 (transformation!1856 (h!16153 (rules!9143 (_2!6745 lt!375227)))))) (dynLambda!4747 order!6593 lambda!44604))))

(assert (=> b!1105726 (< (dynLambda!4748 order!6595 (toChars!2792 (transformation!1856 (h!16153 (rules!9143 (_2!6745 lt!375227)))))) (dynLambda!4747 order!6593 lambda!44604))))

(declare-fun tp!327331 () Bool)

(declare-fun b!1105735 () Bool)

(declare-fun e!700777 () Bool)

(declare-fun tp!327332 () Bool)

(assert (=> b!1105735 (= e!700777 (and (inv!13816 (left!9356 (c!187691 objs!8))) tp!327331 (inv!13816 (right!9686 (c!187691 objs!8))) tp!327332))))

(declare-fun b!1105737 () Bool)

(declare-fun e!700778 () Bool)

(declare-fun tp!327330 () Bool)

(assert (=> b!1105737 (= e!700778 tp!327330)))

(declare-fun b!1105736 () Bool)

(declare-fun inv!13822 (IArray!6799) Bool)

(assert (=> b!1105736 (= e!700777 (and (inv!13822 (xs!6090 (c!187691 objs!8))) e!700778))))

(assert (=> b!1105316 (= tp!327314 (and (inv!13816 (c!187691 objs!8)) e!700777))))

(assert (= (and b!1105316 ((_ is Node!3397) (c!187691 objs!8))) b!1105735))

(assert (= b!1105736 b!1105737))

(assert (= (and b!1105316 ((_ is Leaf!5331) (c!187691 objs!8))) b!1105736))

(declare-fun m!1263319 () Bool)

(assert (=> b!1105735 m!1263319))

(declare-fun m!1263321 () Bool)

(assert (=> b!1105735 m!1263321))

(declare-fun m!1263323 () Bool)

(assert (=> b!1105736 m!1263323))

(assert (=> b!1105316 m!1262349))

(declare-fun b!1105738 () Bool)

(declare-fun e!700779 () Bool)

(assert (=> b!1105738 (= e!700779 true)))

(declare-fun b!1105740 () Bool)

(declare-fun e!700780 () Bool)

(assert (=> b!1105740 (= e!700780 true)))

(declare-fun b!1105739 () Bool)

(assert (=> b!1105739 (= e!700779 e!700780)))

(assert (=> b!1105335 e!700779))

(assert (= (and b!1105335 ((_ is Node!3396) (c!187690 (tokens!1415 (_2!6745 lt!375227))))) b!1105738))

(assert (= b!1105739 b!1105740))

(assert (= (and b!1105335 ((_ is Leaf!5330) (c!187690 (tokens!1415 (_2!6745 lt!375227))))) b!1105739))

(declare-fun b!1105741 () Bool)

(declare-fun e!700781 () Bool)

(assert (=> b!1105741 (= e!700781 true)))

(declare-fun b!1105743 () Bool)

(declare-fun e!700782 () Bool)

(assert (=> b!1105743 (= e!700782 true)))

(declare-fun b!1105742 () Bool)

(assert (=> b!1105742 (= e!700781 e!700782)))

(assert (=> b!1105331 e!700781))

(assert (= (and b!1105331 ((_ is Node!3396) (c!187690 (tokens!1415 (_2!6745 lt!375227))))) b!1105741))

(assert (= b!1105742 b!1105743))

(assert (= (and b!1105331 ((_ is Leaf!5330) (c!187690 (tokens!1415 (_2!6745 lt!375227))))) b!1105742))

(declare-fun b_lambda!32761 () Bool)

(assert (= b_lambda!32753 (or start!95330 b_lambda!32761)))

(declare-fun bs!260006 () Bool)

(declare-fun d!313130 () Bool)

(assert (= bs!260006 (and d!313130 start!95330)))

(declare-fun usesJsonRules!0 (PrintableTokens!428) Bool)

(assert (=> bs!260006 (= (dynLambda!4742 lambda!44603 (h!16155 lt!375240)) (usesJsonRules!0 (_2!6745 (h!16155 lt!375240))))))

(declare-fun m!1263325 () Bool)

(assert (=> bs!260006 m!1263325))

(assert (=> b!1105656 d!313130))

(declare-fun b_lambda!32763 () Bool)

(assert (= b_lambda!32751 (or start!95330 b_lambda!32763)))

(declare-fun bs!260007 () Bool)

(declare-fun d!313132 () Bool)

(assert (= bs!260007 (and d!313132 start!95330)))

(assert (=> bs!260007 (= (dynLambda!4742 lambda!44603 (h!16155 lt!375232)) (usesJsonRules!0 (_2!6745 (h!16155 lt!375232))))))

(declare-fun m!1263327 () Bool)

(assert (=> bs!260007 m!1263327))

(assert (=> b!1105638 d!313132))

(declare-fun b_lambda!32765 () Bool)

(assert (= b_lambda!32719 (or b!1105323 b_lambda!32765)))

(declare-fun bs!260008 () Bool)

(declare-fun d!313134 () Bool)

(assert (= bs!260008 (and d!313134 b!1105323)))

(assert (=> bs!260008 (= (dynLambda!4742 lambda!44604 (h!16155 lt!375211)) (< (_1!6745 (h!16155 lt!375211)) (_1!6745 lt!375227)))))

(assert (=> b!1105415 d!313134))

(declare-fun b_lambda!32767 () Bool)

(assert (= b_lambda!32707 (or b!1105323 b_lambda!32767)))

(declare-fun bs!260009 () Bool)

(declare-fun d!313136 () Bool)

(assert (= bs!260009 (and d!313136 b!1105323)))

(assert (=> bs!260009 (= (dynLambda!4742 lambda!44606 lt!375227) (> (_1!6745 lt!375227) (_1!6745 lt!375227)))))

(assert (=> d!312906 d!313136))

(declare-fun b_lambda!32769 () Bool)

(assert (= b_lambda!32755 (or b!1105323 b_lambda!32769)))

(assert (=> d!313094 d!313136))

(declare-fun b_lambda!32771 () Bool)

(assert (= b_lambda!32759 (or b!1105323 b_lambda!32771)))

(declare-fun bs!260010 () Bool)

(declare-fun d!313138 () Bool)

(assert (= bs!260010 (and d!313138 b!1105323)))

(assert (=> bs!260010 (= (dynLambda!4742 lambda!44604 lt!375227) (< (_1!6745 lt!375227) (_1!6745 lt!375227)))))

(assert (=> d!313120 d!313138))

(declare-fun b_lambda!32773 () Bool)

(assert (= b_lambda!32709 (or b!1105323 b_lambda!32773)))

(assert (=> d!312908 d!313138))

(declare-fun b_lambda!32775 () Bool)

(assert (= b_lambda!32757 (or b!1105323 b_lambda!32775)))

(declare-fun bs!260011 () Bool)

(declare-fun d!313140 () Bool)

(assert (= bs!260011 (and d!313140 b!1105323)))

(assert (=> bs!260011 (= (dynLambda!4742 lambda!44606 (h!16155 lt!375211)) (> (_1!6745 (h!16155 lt!375211)) (_1!6745 lt!375227)))))

(assert (=> b!1105686 d!313140))

(declare-fun b_lambda!32777 () Bool)

(assert (= b_lambda!32749 (or start!95330 b_lambda!32777)))

(declare-fun bs!260012 () Bool)

(declare-fun d!313142 () Bool)

(assert (= bs!260012 (and d!313142 start!95330)))

(assert (=> bs!260012 (= (dynLambda!4742 lambda!44603 (h!16155 lt!375229)) (usesJsonRules!0 (_2!6745 (h!16155 lt!375229))))))

(declare-fun m!1263329 () Bool)

(assert (=> bs!260012 m!1263329))

(assert (=> b!1105624 d!313142))

(check-sat (not b!1105342) (not d!313118) (not d!312908) (not b!1105586) (not b!1105653) (not b!1105670) (not b!1105338) (not b!1105354) (not bs!260012) (not d!313088) (not b!1105655) (not d!313074) (not b!1105680) (not d!313102) (not b!1105660) (not d!313110) (not d!313116) (not b!1105671) (not b!1105581) (not b!1105649) (not d!313082) (not b!1105355) (not b!1105721) (not b_lambda!32765) (not d!313096) (not b!1105650) (not d!313128) (not b!1105679) (not d!313064) (not d!312906) (not d!312932) (not d!313076) (not d!313104) (not d!313112) (not b!1105364) (not b!1105698) (not d!313122) (not b!1105724) (not b!1105666) (not b!1105673) (not b!1105696) (not d!313070) (not b!1105676) (not bs!260007) (not b!1105718) (not b_lambda!32773) (not b!1105414) (not b!1105675) (not b!1105689) (not b!1105591) (not d!313060) (not d!313086) (not b!1105612) (not d!313106) (not b!1105674) (not d!312918) (not b!1105707) (not b!1105597) (not d!313072) (not b!1105577) (not b!1105743) (not d!312970) (not b!1105672) (not b_lambda!32763) (not d!313108) (not b!1105316) (not b!1105596) (not d!313054) (not d!313120) (not b_lambda!32777) (not b!1105741) (not b!1105651) (not b!1105587) (not b_lambda!32767) (not b!1105735) (not b!1105667) (not b_lambda!32761) (not d!313068) (not b_lambda!32769) (not b!1105419) (not b!1105611) (not d!313080) (not b!1105635) (not b!1105740) (not b!1105353) (not d!313090) (not d!312944) (not b!1105625) (not d!312982) (not d!312910) (not d!313078) (not b!1105339) (not d!312904) (not b!1105657) (not b!1105639) (not b!1105585) (not b!1105738) (not d!312928) (not d!313092) (not b!1105658) (not bs!260006) (not b!1105636) (not d!313124) (not d!313056) (not b!1105685) (not b!1105592) (not b!1105737) (not b!1105648) (not b!1105662) (not b_lambda!32775) (not b!1105736) (not b!1105665) (not b!1105684) (not d!312914) (not d!313100) (not d!312912) (not b!1105668) (not d!313094) (not b!1105584) (not b!1105654) (not bm!80496) (not b!1105413) (not b!1105579) (not d!313052) (not bm!80497) (not d!313066) (not b!1105652) (not b_lambda!32771) (not b!1105720) (not b!1105682))
(check-sat)
