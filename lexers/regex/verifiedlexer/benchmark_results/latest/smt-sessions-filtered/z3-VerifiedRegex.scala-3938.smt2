; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215816 () Bool)

(assert start!215816)

(declare-fun b!2214369 () Bool)

(declare-fun b_free!63951 () Bool)

(declare-fun b_next!64655 () Bool)

(assert (=> b!2214369 (= b_free!63951 (not b_next!64655))))

(declare-fun tp!688270 () Bool)

(declare-fun b_and!173619 () Bool)

(assert (=> b!2214369 (= tp!688270 b_and!173619)))

(declare-fun b_free!63953 () Bool)

(declare-fun b_next!64657 () Bool)

(assert (=> b!2214369 (= b_free!63953 (not b_next!64657))))

(declare-fun tp!688276 () Bool)

(declare-fun b_and!173621 () Bool)

(assert (=> b!2214369 (= tp!688276 b_and!173621)))

(declare-fun b_free!63955 () Bool)

(declare-fun b_next!64659 () Bool)

(assert (=> start!215816 (= b_free!63955 (not b_next!64659))))

(declare-fun tp!688273 () Bool)

(declare-fun b_and!173623 () Bool)

(assert (=> start!215816 (= tp!688273 b_and!173623)))

(declare-fun b!2214371 () Bool)

(declare-fun b_free!63957 () Bool)

(declare-fun b_next!64661 () Bool)

(assert (=> b!2214371 (= b_free!63957 (not b_next!64661))))

(declare-fun tp!688277 () Bool)

(declare-fun b_and!173625 () Bool)

(assert (=> b!2214371 (= tp!688277 b_and!173625)))

(declare-fun b_free!63959 () Bool)

(declare-fun b_next!64663 () Bool)

(assert (=> b!2214371 (= b_free!63959 (not b_next!64663))))

(declare-fun tp!688278 () Bool)

(declare-fun b_and!173627 () Bool)

(assert (=> b!2214371 (= tp!688278 b_and!173627)))

(declare-fun b!2214380 () Bool)

(declare-fun b_free!63961 () Bool)

(declare-fun b_next!64665 () Bool)

(assert (=> b!2214380 (= b_free!63961 (not b_next!64665))))

(declare-fun tp!688271 () Bool)

(declare-fun b_and!173629 () Bool)

(assert (=> b!2214380 (= tp!688271 b_and!173629)))

(declare-fun b_free!63963 () Bool)

(declare-fun b_next!64667 () Bool)

(assert (=> b!2214380 (= b_free!63963 (not b_next!64667))))

(declare-fun tp!688272 () Bool)

(declare-fun b_and!173631 () Bool)

(assert (=> b!2214380 (= tp!688272 b_and!173631)))

(declare-fun b!2214377 () Bool)

(declare-fun b_free!63965 () Bool)

(declare-fun b_next!64669 () Bool)

(assert (=> b!2214377 (= b_free!63965 (not b_next!64669))))

(declare-fun tp!688265 () Bool)

(declare-fun b_and!173633 () Bool)

(assert (=> b!2214377 (= tp!688265 b_and!173633)))

(declare-fun b_free!63967 () Bool)

(declare-fun b_next!64671 () Bool)

(assert (=> b!2214377 (= b_free!63967 (not b_next!64671))))

(declare-fun tp!688267 () Bool)

(declare-fun b_and!173635 () Bool)

(assert (=> b!2214377 (= tp!688267 b_and!173635)))

(declare-fun tp!688275 () Bool)

(declare-fun b!2214357 () Bool)

(declare-fun e!1414156 () Bool)

(declare-datatypes ((List!25985 0))(
  ( (Nil!25901) (Cons!25901 (h!31302 (_ BitVec 16)) (t!198837 List!25985)) )
))
(declare-datatypes ((TokenValue!4309 0))(
  ( (FloatLiteralValue!8618 (text!30608 List!25985)) (TokenValueExt!4308 (__x!17071 Int)) (Broken!21545 (value!131637 List!25985)) (Object!4392) (End!4309) (Def!4309) (Underscore!4309) (Match!4309) (Else!4309) (Error!4309) (Case!4309) (If!4309) (Extends!4309) (Abstract!4309) (Class!4309) (Val!4309) (DelimiterValue!8618 (del!4369 List!25985)) (KeywordValue!4315 (value!131638 List!25985)) (CommentValue!8618 (value!131639 List!25985)) (WhitespaceValue!8618 (value!131640 List!25985)) (IndentationValue!4309 (value!131641 List!25985)) (String!28220) (Int32!4309) (Broken!21546 (value!131642 List!25985)) (Boolean!4310) (Unit!38921) (OperatorValue!4312 (op!4369 List!25985)) (IdentifierValue!8618 (value!131643 List!25985)) (IdentifierValue!8619 (value!131644 List!25985)) (WhitespaceValue!8619 (value!131645 List!25985)) (True!8618) (False!8618) (Broken!21547 (value!131646 List!25985)) (Broken!21548 (value!131647 List!25985)) (True!8619) (RightBrace!4309) (RightBracket!4309) (Colon!4309) (Null!4309) (Comma!4309) (LeftBracket!4309) (False!8619) (LeftBrace!4309) (ImaginaryLiteralValue!4309 (text!30609 List!25985)) (StringLiteralValue!12927 (value!131648 List!25985)) (EOFValue!4309 (value!131649 List!25985)) (IdentValue!4309 (value!131650 List!25985)) (DelimiterValue!8619 (value!131651 List!25985)) (DedentValue!4309 (value!131652 List!25985)) (NewLineValue!4309 (value!131653 List!25985)) (IntegerValue!12927 (value!131654 (_ BitVec 32)) (text!30610 List!25985)) (IntegerValue!12928 (value!131655 Int) (text!30611 List!25985)) (Times!4309) (Or!4309) (Equal!4309) (Minus!4309) (Broken!21549 (value!131656 List!25985)) (And!4309) (Div!4309) (LessEqual!4309) (Mod!4309) (Concat!10626) (Not!4309) (Plus!4309) (SpaceValue!4309 (value!131657 List!25985)) (IntegerValue!12929 (value!131658 Int) (text!30612 List!25985)) (StringLiteralValue!12928 (text!30613 List!25985)) (FloatLiteralValue!8619 (text!30614 List!25985)) (BytesLiteralValue!4309 (value!131659 List!25985)) (CommentValue!8619 (value!131660 List!25985)) (StringLiteralValue!12929 (value!131661 List!25985)) (ErrorTokenValue!4309 (msg!4370 List!25985)) )
))
(declare-datatypes ((C!12780 0))(
  ( (C!12781 (val!7402 Int)) )
))
(declare-datatypes ((List!25986 0))(
  ( (Nil!25902) (Cons!25902 (h!31303 C!12780) (t!198838 List!25986)) )
))
(declare-datatypes ((IArray!16955 0))(
  ( (IArray!16956 (innerList!8535 List!25986)) )
))
(declare-datatypes ((Conc!8475 0))(
  ( (Node!8475 (left!19917 Conc!8475) (right!20247 Conc!8475) (csize!17180 Int) (cheight!8686 Int)) (Leaf!12414 (xs!11417 IArray!16955) (csize!17181 Int)) (Empty!8475) )
))
(declare-datatypes ((BalanceConc!16668 0))(
  ( (BalanceConc!16669 (c!353855 Conc!8475)) )
))
(declare-datatypes ((Regex!6317 0))(
  ( (ElementMatch!6317 (c!353856 C!12780)) (Concat!10627 (regOne!13146 Regex!6317) (regTwo!13146 Regex!6317)) (EmptyExpr!6317) (Star!6317 (reg!6646 Regex!6317)) (EmptyLang!6317) (Union!6317 (regOne!13147 Regex!6317) (regTwo!13147 Regex!6317)) )
))
(declare-datatypes ((TokenValueInjection!8202 0))(
  ( (TokenValueInjection!8203 (toValue!5884 Int) (toChars!5743 Int)) )
))
(declare-datatypes ((String!28221 0))(
  ( (String!28222 (value!131662 String)) )
))
(declare-datatypes ((Rule!8146 0))(
  ( (Rule!8147 (regex!4173 Regex!6317) (tag!4663 String!28221) (isSeparator!4173 Bool) (transformation!4173 TokenValueInjection!8202)) )
))
(declare-datatypes ((Token!7828 0))(
  ( (Token!7829 (value!131663 TokenValue!4309) (rule!6473 Rule!8146) (size!20221 Int) (originalCharacters!4945 List!25986)) )
))
(declare-fun t2!61 () Token!7828)

(declare-fun e!1414166 () Bool)

(declare-fun inv!35102 (String!28221) Bool)

(declare-fun inv!35105 (TokenValueInjection!8202) Bool)

(assert (=> b!2214357 (= e!1414156 (and tp!688275 (inv!35102 (tag!4663 (rule!6473 t2!61))) (inv!35105 (transformation!4173 (rule!6473 t2!61))) e!1414166))))

(declare-fun b!2214358 () Bool)

(declare-fun e!1414165 () Bool)

(assert (=> b!2214358 (= e!1414165 false)))

(declare-fun lt!826756 () Token!7828)

(declare-datatypes ((List!25987 0))(
  ( (Nil!25903) (Cons!25903 (h!31304 Token!7828) (t!198839 List!25987)) )
))
(declare-fun lt!826755 () List!25987)

(declare-fun lt!826757 () Int)

(declare-fun apply!6419 (List!25987 Int) Token!7828)

(assert (=> b!2214358 (= lt!826756 (apply!6419 lt!826755 lt!826757))))

(declare-fun tp!688280 () Bool)

(declare-fun b!2214359 () Bool)

(declare-fun e!1414152 () Bool)

(declare-fun inv!21 (TokenValue!4309) Bool)

(assert (=> b!2214359 (= e!1414152 (and (inv!21 (value!131663 t2!61)) e!1414156 tp!688280))))

(declare-fun b!2214360 () Bool)

(declare-fun res!951627 () Bool)

(declare-fun e!1414171 () Bool)

(assert (=> b!2214360 (=> (not res!951627) (not e!1414171))))

(declare-fun i!1797 () Int)

(assert (=> b!2214360 (= res!951627 (>= (- i!1797 1) 0))))

(declare-fun e!1414164 () Bool)

(declare-datatypes ((List!25988 0))(
  ( (Nil!25904) (Cons!25904 (h!31305 Rule!8146) (t!198840 List!25988)) )
))
(declare-fun rules!4462 () List!25988)

(declare-fun b!2214361 () Bool)

(declare-fun tp!688268 () Bool)

(declare-fun e!1414167 () Bool)

(assert (=> b!2214361 (= e!1414164 (and tp!688268 (inv!35102 (tag!4663 (h!31305 rules!4462))) (inv!35105 (transformation!4173 (h!31305 rules!4462))) e!1414167))))

(declare-fun e!1414169 () Bool)

(declare-fun tp!688279 () Bool)

(declare-fun e!1414153 () Bool)

(declare-fun b!2214362 () Bool)

(declare-fun l!6601 () List!25987)

(assert (=> b!2214362 (= e!1414169 (and (inv!21 (value!131663 (h!31304 l!6601))) e!1414153 tp!688279))))

(declare-fun t1!61 () Token!7828)

(declare-fun tp!688274 () Bool)

(declare-fun e!1414168 () Bool)

(declare-fun b!2214363 () Bool)

(declare-fun e!1414159 () Bool)

(assert (=> b!2214363 (= e!1414168 (and tp!688274 (inv!35102 (tag!4663 (rule!6473 t1!61))) (inv!35105 (transformation!4173 (rule!6473 t1!61))) e!1414159))))

(declare-fun res!951628 () Bool)

(declare-fun e!1414160 () Bool)

(assert (=> start!215816 (=> (not res!951628) (not e!1414160))))

(declare-datatypes ((LexerInterface!3770 0))(
  ( (LexerInterfaceExt!3767 (__x!17072 Int)) (Lexer!3768) )
))
(declare-fun thiss!27908 () LexerInterface!3770)

(get-info :version)

(assert (=> start!215816 (= res!951628 ((_ is Lexer!3768) thiss!27908))))

(assert (=> start!215816 e!1414160))

(assert (=> start!215816 true))

(declare-fun e!1414157 () Bool)

(assert (=> start!215816 e!1414157))

(declare-fun inv!35106 (Token!7828) Bool)

(assert (=> start!215816 (and (inv!35106 t2!61) e!1414152)))

(assert (=> start!215816 tp!688273))

(declare-fun e!1414163 () Bool)

(assert (=> start!215816 e!1414163))

(declare-fun e!1414150 () Bool)

(assert (=> start!215816 (and (inv!35106 t1!61) e!1414150)))

(declare-fun b!2214364 () Bool)

(declare-fun res!951626 () Bool)

(assert (=> b!2214364 (=> (not res!951626) (not e!1414160))))

(assert (=> b!2214364 (= res!951626 (= (apply!6419 l!6601 (+ 1 i!1797)) t2!61))))

(declare-fun b!2214365 () Bool)

(declare-fun tp!688263 () Bool)

(assert (=> b!2214365 (= e!1414157 (and e!1414164 tp!688263))))

(declare-fun b!2214366 () Bool)

(assert (=> b!2214366 (= e!1414171 e!1414165)))

(declare-fun res!951622 () Bool)

(assert (=> b!2214366 (=> (not res!951622) (not e!1414165))))

(declare-fun size!20222 (List!25987) Int)

(assert (=> b!2214366 (= res!951622 (< lt!826757 (size!20222 lt!826755)))))

(assert (=> b!2214366 (= lt!826757 (+ 1 (- i!1797 1)))))

(declare-fun b!2214367 () Bool)

(declare-fun res!951623 () Bool)

(assert (=> b!2214367 (=> (not res!951623) (not e!1414160))))

(assert (=> b!2214367 (= res!951623 (< (+ 1 i!1797) (size!20222 l!6601)))))

(declare-fun b!2214368 () Bool)

(declare-fun res!951620 () Bool)

(assert (=> b!2214368 (=> (not res!951620) (not e!1414160))))

(assert (=> b!2214368 (= res!951620 (not (= i!1797 0)))))

(assert (=> b!2214369 (= e!1414166 (and tp!688270 tp!688276))))

(declare-fun b!2214370 () Bool)

(declare-fun res!951625 () Bool)

(assert (=> b!2214370 (=> (not res!951625) (not e!1414160))))

(declare-fun p!3128 () Int)

(declare-fun tokensListTwoByTwoPredicateList!40 (LexerInterface!3770 List!25987 List!25988 Int) Bool)

(assert (=> b!2214370 (= res!951625 (tokensListTwoByTwoPredicateList!40 thiss!27908 l!6601 rules!4462 p!3128))))

(assert (=> b!2214371 (= e!1414167 (and tp!688277 tp!688278))))

(declare-fun b!2214372 () Bool)

(declare-fun tp!688264 () Bool)

(assert (=> b!2214372 (= e!1414150 (and (inv!21 (value!131663 t1!61)) e!1414168 tp!688264))))

(declare-fun b!2214373 () Bool)

(declare-fun tp!688269 () Bool)

(declare-fun e!1414151 () Bool)

(assert (=> b!2214373 (= e!1414153 (and tp!688269 (inv!35102 (tag!4663 (rule!6473 (h!31304 l!6601)))) (inv!35105 (transformation!4173 (rule!6473 (h!31304 l!6601)))) e!1414151))))

(declare-fun b!2214374 () Bool)

(declare-fun res!951621 () Bool)

(assert (=> b!2214374 (=> (not res!951621) (not e!1414165))))

(assert (=> b!2214374 (= res!951621 (= (apply!6419 lt!826755 (- i!1797 1)) t1!61))))

(declare-fun b!2214375 () Bool)

(declare-fun tp!688266 () Bool)

(assert (=> b!2214375 (= e!1414163 (and (inv!35106 (h!31304 l!6601)) e!1414169 tp!688266))))

(declare-fun b!2214376 () Bool)

(assert (=> b!2214376 (= e!1414160 e!1414171)))

(declare-fun res!951624 () Bool)

(assert (=> b!2214376 (=> (not res!951624) (not e!1414171))))

(assert (=> b!2214376 (= res!951624 (tokensListTwoByTwoPredicateList!40 thiss!27908 lt!826755 rules!4462 p!3128))))

(declare-fun tail!3216 (List!25987) List!25987)

(assert (=> b!2214376 (= lt!826755 (tail!3216 l!6601))))

(assert (=> b!2214377 (= e!1414151 (and tp!688265 tp!688267))))

(declare-fun b!2214378 () Bool)

(declare-fun res!951629 () Bool)

(assert (=> b!2214378 (=> (not res!951629) (not e!1414160))))

(assert (=> b!2214378 (= res!951629 (>= i!1797 0))))

(declare-fun b!2214379 () Bool)

(declare-fun res!951619 () Bool)

(assert (=> b!2214379 (=> (not res!951619) (not e!1414160))))

(assert (=> b!2214379 (= res!951619 (= (apply!6419 l!6601 i!1797) t1!61))))

(assert (=> b!2214380 (= e!1414159 (and tp!688271 tp!688272))))

(assert (= (and start!215816 res!951628) b!2214370))

(assert (= (and b!2214370 res!951625) b!2214378))

(assert (= (and b!2214378 res!951629) b!2214367))

(assert (= (and b!2214367 res!951623) b!2214379))

(assert (= (and b!2214379 res!951619) b!2214364))

(assert (= (and b!2214364 res!951626) b!2214368))

(assert (= (and b!2214368 res!951620) b!2214376))

(assert (= (and b!2214376 res!951624) b!2214360))

(assert (= (and b!2214360 res!951627) b!2214366))

(assert (= (and b!2214366 res!951622) b!2214374))

(assert (= (and b!2214374 res!951621) b!2214358))

(assert (= b!2214361 b!2214371))

(assert (= b!2214365 b!2214361))

(assert (= (and start!215816 ((_ is Cons!25904) rules!4462)) b!2214365))

(assert (= b!2214357 b!2214369))

(assert (= b!2214359 b!2214357))

(assert (= start!215816 b!2214359))

(assert (= b!2214373 b!2214377))

(assert (= b!2214362 b!2214373))

(assert (= b!2214375 b!2214362))

(assert (= (and start!215816 ((_ is Cons!25903) l!6601)) b!2214375))

(assert (= b!2214363 b!2214380))

(assert (= b!2214372 b!2214363))

(assert (= start!215816 b!2214372))

(declare-fun m!2656489 () Bool)

(assert (=> b!2214374 m!2656489))

(declare-fun m!2656491 () Bool)

(assert (=> b!2214367 m!2656491))

(declare-fun m!2656493 () Bool)

(assert (=> b!2214375 m!2656493))

(declare-fun m!2656495 () Bool)

(assert (=> b!2214364 m!2656495))

(declare-fun m!2656497 () Bool)

(assert (=> b!2214357 m!2656497))

(declare-fun m!2656499 () Bool)

(assert (=> b!2214357 m!2656499))

(declare-fun m!2656501 () Bool)

(assert (=> b!2214361 m!2656501))

(declare-fun m!2656503 () Bool)

(assert (=> b!2214361 m!2656503))

(declare-fun m!2656505 () Bool)

(assert (=> b!2214358 m!2656505))

(declare-fun m!2656507 () Bool)

(assert (=> b!2214366 m!2656507))

(declare-fun m!2656509 () Bool)

(assert (=> b!2214363 m!2656509))

(declare-fun m!2656511 () Bool)

(assert (=> b!2214363 m!2656511))

(declare-fun m!2656513 () Bool)

(assert (=> b!2214376 m!2656513))

(declare-fun m!2656515 () Bool)

(assert (=> b!2214376 m!2656515))

(declare-fun m!2656517 () Bool)

(assert (=> b!2214362 m!2656517))

(declare-fun m!2656519 () Bool)

(assert (=> b!2214373 m!2656519))

(declare-fun m!2656521 () Bool)

(assert (=> b!2214373 m!2656521))

(declare-fun m!2656523 () Bool)

(assert (=> b!2214359 m!2656523))

(declare-fun m!2656525 () Bool)

(assert (=> b!2214372 m!2656525))

(declare-fun m!2656527 () Bool)

(assert (=> b!2214379 m!2656527))

(declare-fun m!2656529 () Bool)

(assert (=> b!2214370 m!2656529))

(declare-fun m!2656531 () Bool)

(assert (=> start!215816 m!2656531))

(declare-fun m!2656533 () Bool)

(assert (=> start!215816 m!2656533))

(check-sat b_and!173635 (not b!2214361) (not b_next!64671) b_and!173633 (not b!2214363) b_and!173629 (not b!2214367) b_and!173621 (not b!2214362) b_and!173619 b_and!173627 (not b!2214359) (not b_next!64661) b_and!173625 (not b_next!64663) (not b!2214373) (not start!215816) (not b_next!64659) (not b_next!64667) (not b!2214374) (not b_next!64669) (not b_next!64665) (not b!2214370) b_and!173631 (not b!2214358) (not b_next!64655) (not b!2214365) (not b!2214376) (not b!2214379) (not b!2214364) b_and!173623 (not b!2214366) (not b!2214372) (not b!2214375) (not b!2214357) (not b_next!64657))
(check-sat b_and!173635 (not b_next!64661) (not b_next!64671) (not b_next!64659) b_and!173633 b_and!173631 b_and!173629 (not b_next!64655) b_and!173621 b_and!173623 b_and!173619 (not b_next!64657) b_and!173627 b_and!173625 (not b_next!64663) (not b_next!64667) (not b_next!64669) (not b_next!64665))
