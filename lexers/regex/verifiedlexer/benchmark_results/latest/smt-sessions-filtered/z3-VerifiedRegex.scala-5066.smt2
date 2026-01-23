; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!257702 () Bool)

(assert start!257702)

(declare-fun b!2647644 () Bool)

(declare-fun b_free!74533 () Bool)

(declare-fun b_next!75237 () Bool)

(assert (=> b!2647644 (= b_free!74533 (not b_next!75237))))

(declare-fun tp!839786 () Bool)

(declare-fun b_and!194539 () Bool)

(assert (=> b!2647644 (= tp!839786 b_and!194539)))

(declare-fun b_free!74535 () Bool)

(declare-fun b_next!75239 () Bool)

(assert (=> b!2647644 (= b_free!74535 (not b_next!75239))))

(declare-fun tp!839785 () Bool)

(declare-fun b_and!194541 () Bool)

(assert (=> b!2647644 (= tp!839785 b_and!194541)))

(declare-fun b!2647631 () Bool)

(declare-fun b_free!74537 () Bool)

(declare-fun b_next!75241 () Bool)

(assert (=> b!2647631 (= b_free!74537 (not b_next!75241))))

(declare-fun tp!839778 () Bool)

(declare-fun b_and!194543 () Bool)

(assert (=> b!2647631 (= tp!839778 b_and!194543)))

(declare-fun b_free!74539 () Bool)

(declare-fun b_next!75243 () Bool)

(assert (=> b!2647631 (= b_free!74539 (not b_next!75243))))

(declare-fun tp!839780 () Bool)

(declare-fun b_and!194545 () Bool)

(assert (=> b!2647631 (= tp!839780 b_and!194545)))

(declare-fun bs!477031 () Bool)

(declare-fun b!2647636 () Bool)

(declare-fun b!2647640 () Bool)

(assert (= bs!477031 (and b!2647636 b!2647640)))

(declare-fun lambda!99130 () Int)

(declare-fun lambda!99129 () Int)

(assert (=> bs!477031 (not (= lambda!99130 lambda!99129))))

(declare-fun b!2647658 () Bool)

(declare-fun e!1669425 () Bool)

(assert (=> b!2647658 (= e!1669425 true)))

(declare-fun b!2647657 () Bool)

(declare-fun e!1669424 () Bool)

(assert (=> b!2647657 (= e!1669424 e!1669425)))

(declare-fun b!2647656 () Bool)

(declare-fun e!1669423 () Bool)

(assert (=> b!2647656 (= e!1669423 e!1669424)))

(assert (=> b!2647636 e!1669423))

(assert (= b!2647657 b!2647658))

(assert (= b!2647656 b!2647657))

(declare-datatypes ((List!30667 0))(
  ( (Nil!30567) (Cons!30567 (h!35987 (_ BitVec 16)) (t!219538 List!30667)) )
))
(declare-datatypes ((C!15752 0))(
  ( (C!15753 (val!9810 Int)) )
))
(declare-datatypes ((Regex!7797 0))(
  ( (ElementMatch!7797 (c!425843 C!15752)) (Concat!12672 (regOne!16106 Regex!7797) (regTwo!16106 Regex!7797)) (EmptyExpr!7797) (Star!7797 (reg!8126 Regex!7797)) (EmptyLang!7797) (Union!7797 (regOne!16107 Regex!7797) (regTwo!16107 Regex!7797)) )
))
(declare-datatypes ((TokenValue!4875 0))(
  ( (FloatLiteralValue!9750 (text!34570 List!30667)) (TokenValueExt!4874 (__x!19583 Int)) (Broken!24375 (value!150189 List!30667)) (Object!4974) (End!4875) (Def!4875) (Underscore!4875) (Match!4875) (Else!4875) (Error!4875) (Case!4875) (If!4875) (Extends!4875) (Abstract!4875) (Class!4875) (Val!4875) (DelimiterValue!9750 (del!4935 List!30667)) (KeywordValue!4881 (value!150190 List!30667)) (CommentValue!9750 (value!150191 List!30667)) (WhitespaceValue!9750 (value!150192 List!30667)) (IndentationValue!4875 (value!150193 List!30667)) (String!34258) (Int32!4875) (Broken!24376 (value!150194 List!30667)) (Boolean!4876) (Unit!44634) (OperatorValue!4878 (op!4935 List!30667)) (IdentifierValue!9750 (value!150195 List!30667)) (IdentifierValue!9751 (value!150196 List!30667)) (WhitespaceValue!9751 (value!150197 List!30667)) (True!9750) (False!9750) (Broken!24377 (value!150198 List!30667)) (Broken!24378 (value!150199 List!30667)) (True!9751) (RightBrace!4875) (RightBracket!4875) (Colon!4875) (Null!4875) (Comma!4875) (LeftBracket!4875) (False!9751) (LeftBrace!4875) (ImaginaryLiteralValue!4875 (text!34571 List!30667)) (StringLiteralValue!14625 (value!150200 List!30667)) (EOFValue!4875 (value!150201 List!30667)) (IdentValue!4875 (value!150202 List!30667)) (DelimiterValue!9751 (value!150203 List!30667)) (DedentValue!4875 (value!150204 List!30667)) (NewLineValue!4875 (value!150205 List!30667)) (IntegerValue!14625 (value!150206 (_ BitVec 32)) (text!34572 List!30667)) (IntegerValue!14626 (value!150207 Int) (text!34573 List!30667)) (Times!4875) (Or!4875) (Equal!4875) (Minus!4875) (Broken!24379 (value!150208 List!30667)) (And!4875) (Div!4875) (LessEqual!4875) (Mod!4875) (Concat!12673) (Not!4875) (Plus!4875) (SpaceValue!4875 (value!150209 List!30667)) (IntegerValue!14627 (value!150210 Int) (text!34574 List!30667)) (StringLiteralValue!14626 (text!34575 List!30667)) (FloatLiteralValue!9751 (text!34576 List!30667)) (BytesLiteralValue!4875 (value!150211 List!30667)) (CommentValue!9751 (value!150212 List!30667)) (StringLiteralValue!14627 (value!150213 List!30667)) (ErrorTokenValue!4875 (msg!4936 List!30667)) )
))
(declare-datatypes ((List!30668 0))(
  ( (Nil!30568) (Cons!30568 (h!35988 C!15752) (t!219539 List!30668)) )
))
(declare-datatypes ((IArray!19101 0))(
  ( (IArray!19102 (innerList!9608 List!30668)) )
))
(declare-datatypes ((Conc!9548 0))(
  ( (Node!9548 (left!23622 Conc!9548) (right!23952 Conc!9548) (csize!19326 Int) (cheight!9759 Int)) (Leaf!14615 (xs!12560 IArray!19101) (csize!19327 Int)) (Empty!9548) )
))
(declare-datatypes ((BalanceConc!18710 0))(
  ( (BalanceConc!18711 (c!425844 Conc!9548)) )
))
(declare-datatypes ((TokenValueInjection!9190 0))(
  ( (TokenValueInjection!9191 (toValue!6579 Int) (toChars!6438 Int)) )
))
(declare-datatypes ((String!34259 0))(
  ( (String!34260 (value!150214 String)) )
))
(declare-datatypes ((Rule!9106 0))(
  ( (Rule!9107 (regex!4653 Regex!7797) (tag!5149 String!34259) (isSeparator!4653 Bool) (transformation!4653 TokenValueInjection!9190)) )
))
(declare-datatypes ((List!30669 0))(
  ( (Nil!30569) (Cons!30569 (h!35989 Rule!9106) (t!219540 List!30669)) )
))
(declare-fun rules!1726 () List!30669)

(get-info :version)

(assert (= (and b!2647636 ((_ is Cons!30569) rules!1726)) b!2647656))

(declare-fun order!16635 () Int)

(declare-fun order!16637 () Int)

(declare-fun dynLambda!13140 (Int Int) Int)

(declare-fun dynLambda!13141 (Int Int) Int)

(assert (=> b!2647658 (< (dynLambda!13140 order!16635 (toValue!6579 (transformation!4653 (h!35989 rules!1726)))) (dynLambda!13141 order!16637 lambda!99130))))

(declare-fun order!16639 () Int)

(declare-fun dynLambda!13142 (Int Int) Int)

(assert (=> b!2647658 (< (dynLambda!13142 order!16639 (toChars!6438 (transformation!4653 (h!35989 rules!1726)))) (dynLambda!13141 order!16637 lambda!99130))))

(assert (=> b!2647636 true))

(declare-fun res!1113604 () Bool)

(declare-fun e!1669404 () Bool)

(assert (=> start!257702 (=> (not res!1113604) (not e!1669404))))

(declare-datatypes ((LexerInterface!4250 0))(
  ( (LexerInterfaceExt!4247 (__x!19584 Int)) (Lexer!4248) )
))
(declare-fun thiss!14197 () LexerInterface!4250)

(declare-fun from!862 () Int)

(assert (=> start!257702 (= res!1113604 (and ((_ is Lexer!4248) thiss!14197) (>= from!862 0)))))

(assert (=> start!257702 e!1669404))

(assert (=> start!257702 true))

(declare-fun e!1669407 () Bool)

(assert (=> start!257702 e!1669407))

(declare-datatypes ((Token!8776 0))(
  ( (Token!8777 (value!150215 TokenValue!4875) (rule!7041 Rule!9106) (size!23654 Int) (originalCharacters!5419 List!30668)) )
))
(declare-fun separatorToken!156 () Token!8776)

(declare-fun e!1669411 () Bool)

(declare-fun inv!41509 (Token!8776) Bool)

(assert (=> start!257702 (and (inv!41509 separatorToken!156) e!1669411)))

(declare-datatypes ((List!30670 0))(
  ( (Nil!30570) (Cons!30570 (h!35990 Token!8776) (t!219541 List!30670)) )
))
(declare-datatypes ((IArray!19103 0))(
  ( (IArray!19104 (innerList!9609 List!30670)) )
))
(declare-datatypes ((Conc!9549 0))(
  ( (Node!9549 (left!23623 Conc!9549) (right!23953 Conc!9549) (csize!19328 Int) (cheight!9760 Int)) (Leaf!14616 (xs!12561 IArray!19103) (csize!19329 Int)) (Empty!9549) )
))
(declare-datatypes ((BalanceConc!18712 0))(
  ( (BalanceConc!18713 (c!425845 Conc!9549)) )
))
(declare-fun v!6381 () BalanceConc!18712)

(declare-fun e!1669406 () Bool)

(declare-fun inv!41510 (BalanceConc!18712) Bool)

(assert (=> start!257702 (and (inv!41510 v!6381) e!1669406)))

(declare-fun b!2647629 () Bool)

(declare-fun e!1669412 () Bool)

(declare-fun e!1669416 () Bool)

(assert (=> b!2647629 (= e!1669412 e!1669416)))

(declare-fun res!1113600 () Bool)

(assert (=> b!2647629 (=> (not res!1113600) (not e!1669416))))

(declare-fun lt!931596 () Int)

(assert (=> b!2647629 (= res!1113600 (< from!862 lt!931596))))

(declare-fun lt!931601 () List!30670)

(declare-datatypes ((Unit!44635 0))(
  ( (Unit!44636) )
))
(declare-fun lt!931600 () Unit!44635)

(declare-fun lemmaContentSubsetPreservesForall!320 (List!30670 List!30670 Int) Unit!44635)

(declare-fun dropList!954 (BalanceConc!18712 Int) List!30670)

(assert (=> b!2647629 (= lt!931600 (lemmaContentSubsetPreservesForall!320 lt!931601 (dropList!954 v!6381 from!862) lambda!99129))))

(declare-fun list!11525 (BalanceConc!18712) List!30670)

(assert (=> b!2647629 (= lt!931601 (list!11525 v!6381))))

(declare-fun b!2647630 () Bool)

(declare-fun tp!839783 () Bool)

(declare-fun inv!41511 (Conc!9549) Bool)

(assert (=> b!2647630 (= e!1669406 (and (inv!41511 (c!425845 v!6381)) tp!839783))))

(declare-fun e!1669413 () Bool)

(assert (=> b!2647631 (= e!1669413 (and tp!839778 tp!839780))))

(declare-fun b!2647632 () Bool)

(declare-fun res!1113606 () Bool)

(assert (=> b!2647632 (=> (not res!1113606) (not e!1669412))))

(declare-fun rulesInvariant!3750 (LexerInterface!4250 List!30669) Bool)

(assert (=> b!2647632 (= res!1113606 (rulesInvariant!3750 thiss!14197 rules!1726))))

(declare-fun tp!839784 () Bool)

(declare-fun e!1669410 () Bool)

(declare-fun b!2647633 () Bool)

(declare-fun inv!41504 (String!34259) Bool)

(declare-fun inv!41512 (TokenValueInjection!9190) Bool)

(assert (=> b!2647633 (= e!1669410 (and tp!839784 (inv!41504 (tag!5149 (rule!7041 separatorToken!156))) (inv!41512 (transformation!4653 (rule!7041 separatorToken!156))) e!1669413))))

(declare-fun e!1669414 () Bool)

(declare-fun tp!839782 () Bool)

(declare-fun e!1669409 () Bool)

(declare-fun b!2647634 () Bool)

(assert (=> b!2647634 (= e!1669414 (and tp!839782 (inv!41504 (tag!5149 (h!35989 rules!1726))) (inv!41512 (transformation!4653 (h!35989 rules!1726))) e!1669409))))

(declare-fun b!2647635 () Bool)

(declare-fun res!1113598 () Bool)

(assert (=> b!2647635 (=> (not res!1113598) (not e!1669412))))

(declare-fun rulesProduceEachTokenIndividually!1070 (LexerInterface!4250 List!30669 BalanceConc!18712) Bool)

(assert (=> b!2647635 (= res!1113598 (rulesProduceEachTokenIndividually!1070 thiss!14197 rules!1726 v!6381))))

(declare-fun e!1669408 () Bool)

(assert (=> b!2647636 (= e!1669408 (< (- lt!931596 (+ 1 from!862)) (- lt!931596 from!862)))))

(declare-fun lt!931602 () Token!8776)

(declare-fun lt!931603 () Unit!44635)

(declare-fun forallContained!999 (List!30670 Int Token!8776) Unit!44635)

(assert (=> b!2647636 (= lt!931603 (forallContained!999 lt!931601 lambda!99130 lt!931602))))

(declare-fun b!2647637 () Bool)

(declare-fun res!1113599 () Bool)

(assert (=> b!2647637 (=> (not res!1113599) (not e!1669412))))

(declare-fun rulesProduceIndividualToken!1962 (LexerInterface!4250 List!30669 Token!8776) Bool)

(assert (=> b!2647637 (= res!1113599 (rulesProduceIndividualToken!1962 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2647638 () Bool)

(declare-fun res!1113603 () Bool)

(assert (=> b!2647638 (=> (not res!1113603) (not e!1669412))))

(assert (=> b!2647638 (= res!1113603 (isSeparator!4653 (rule!7041 separatorToken!156)))))

(declare-fun b!2647639 () Bool)

(declare-fun tp!839779 () Bool)

(assert (=> b!2647639 (= e!1669407 (and e!1669414 tp!839779))))

(declare-fun res!1113605 () Bool)

(assert (=> b!2647640 (=> (not res!1113605) (not e!1669412))))

(declare-fun forall!6436 (BalanceConc!18712 Int) Bool)

(assert (=> b!2647640 (= res!1113605 (forall!6436 v!6381 lambda!99129))))

(declare-fun b!2647641 () Bool)

(declare-fun res!1113607 () Bool)

(assert (=> b!2647641 (=> res!1113607 e!1669408)))

(declare-fun contains!5824 (List!30670 Token!8776) Bool)

(assert (=> b!2647641 (= res!1113607 (not (contains!5824 lt!931601 lt!931602)))))

(declare-fun b!2647642 () Bool)

(assert (=> b!2647642 (= e!1669416 (not e!1669408))))

(declare-fun res!1113597 () Bool)

(assert (=> b!2647642 (=> res!1113597 e!1669408)))

(declare-fun contains!5825 (BalanceConc!18712 Token!8776) Bool)

(assert (=> b!2647642 (= res!1113597 (not (contains!5825 v!6381 lt!931602)))))

(declare-fun apply!7307 (BalanceConc!18712 Int) Token!8776)

(assert (=> b!2647642 (= lt!931602 (apply!7307 v!6381 from!862))))

(declare-fun lt!931597 () List!30670)

(declare-fun tail!4291 (List!30670) List!30670)

(declare-fun drop!1649 (List!30670 Int) List!30670)

(assert (=> b!2647642 (= (tail!4291 lt!931597) (drop!1649 lt!931601 (+ 1 from!862)))))

(declare-fun lt!931598 () Unit!44635)

(declare-fun lemmaDropTail!832 (List!30670 Int) Unit!44635)

(assert (=> b!2647642 (= lt!931598 (lemmaDropTail!832 lt!931601 from!862))))

(declare-fun head!6053 (List!30670) Token!8776)

(declare-fun apply!7308 (List!30670 Int) Token!8776)

(assert (=> b!2647642 (= (head!6053 lt!931597) (apply!7308 lt!931601 from!862))))

(assert (=> b!2647642 (= lt!931597 (drop!1649 lt!931601 from!862))))

(declare-fun lt!931599 () Unit!44635)

(declare-fun lemmaDropApply!860 (List!30670 Int) Unit!44635)

(assert (=> b!2647642 (= lt!931599 (lemmaDropApply!860 lt!931601 from!862))))

(declare-fun b!2647643 () Bool)

(declare-fun res!1113596 () Bool)

(assert (=> b!2647643 (=> (not res!1113596) (not e!1669412))))

(declare-fun sepAndNonSepRulesDisjointChars!1226 (List!30669 List!30669) Bool)

(assert (=> b!2647643 (= res!1113596 (sepAndNonSepRulesDisjointChars!1226 rules!1726 rules!1726))))

(assert (=> b!2647644 (= e!1669409 (and tp!839786 tp!839785))))

(declare-fun b!2647645 () Bool)

(declare-fun res!1113602 () Bool)

(assert (=> b!2647645 (=> (not res!1113602) (not e!1669412))))

(declare-fun isEmpty!17461 (List!30669) Bool)

(assert (=> b!2647645 (= res!1113602 (not (isEmpty!17461 rules!1726)))))

(declare-fun b!2647646 () Bool)

(assert (=> b!2647646 (= e!1669404 e!1669412)))

(declare-fun res!1113601 () Bool)

(assert (=> b!2647646 (=> (not res!1113601) (not e!1669412))))

(assert (=> b!2647646 (= res!1113601 (<= from!862 lt!931596))))

(declare-fun size!23655 (BalanceConc!18712) Int)

(assert (=> b!2647646 (= lt!931596 (size!23655 v!6381))))

(declare-fun tp!839781 () Bool)

(declare-fun b!2647647 () Bool)

(declare-fun inv!21 (TokenValue!4875) Bool)

(assert (=> b!2647647 (= e!1669411 (and (inv!21 (value!150215 separatorToken!156)) e!1669410 tp!839781))))

(assert (= (and start!257702 res!1113604) b!2647646))

(assert (= (and b!2647646 res!1113601) b!2647645))

(assert (= (and b!2647645 res!1113602) b!2647632))

(assert (= (and b!2647632 res!1113606) b!2647635))

(assert (= (and b!2647635 res!1113598) b!2647637))

(assert (= (and b!2647637 res!1113599) b!2647638))

(assert (= (and b!2647638 res!1113603) b!2647640))

(assert (= (and b!2647640 res!1113605) b!2647643))

(assert (= (and b!2647643 res!1113596) b!2647629))

(assert (= (and b!2647629 res!1113600) b!2647642))

(assert (= (and b!2647642 (not res!1113597)) b!2647641))

(assert (= (and b!2647641 (not res!1113607)) b!2647636))

(assert (= b!2647634 b!2647644))

(assert (= b!2647639 b!2647634))

(assert (= (and start!257702 ((_ is Cons!30569) rules!1726)) b!2647639))

(assert (= b!2647633 b!2647631))

(assert (= b!2647647 b!2647633))

(assert (= start!257702 b!2647647))

(assert (= start!257702 b!2647630))

(declare-fun m!2996321 () Bool)

(assert (=> b!2647646 m!2996321))

(declare-fun m!2996323 () Bool)

(assert (=> b!2647635 m!2996323))

(declare-fun m!2996325 () Bool)

(assert (=> b!2647632 m!2996325))

(declare-fun m!2996327 () Bool)

(assert (=> b!2647634 m!2996327))

(declare-fun m!2996329 () Bool)

(assert (=> b!2647634 m!2996329))

(declare-fun m!2996331 () Bool)

(assert (=> b!2647633 m!2996331))

(declare-fun m!2996333 () Bool)

(assert (=> b!2647633 m!2996333))

(declare-fun m!2996335 () Bool)

(assert (=> b!2647629 m!2996335))

(assert (=> b!2647629 m!2996335))

(declare-fun m!2996337 () Bool)

(assert (=> b!2647629 m!2996337))

(declare-fun m!2996339 () Bool)

(assert (=> b!2647629 m!2996339))

(declare-fun m!2996341 () Bool)

(assert (=> b!2647642 m!2996341))

(declare-fun m!2996343 () Bool)

(assert (=> b!2647642 m!2996343))

(declare-fun m!2996345 () Bool)

(assert (=> b!2647642 m!2996345))

(declare-fun m!2996347 () Bool)

(assert (=> b!2647642 m!2996347))

(declare-fun m!2996349 () Bool)

(assert (=> b!2647642 m!2996349))

(declare-fun m!2996351 () Bool)

(assert (=> b!2647642 m!2996351))

(declare-fun m!2996353 () Bool)

(assert (=> b!2647642 m!2996353))

(declare-fun m!2996355 () Bool)

(assert (=> b!2647642 m!2996355))

(declare-fun m!2996357 () Bool)

(assert (=> b!2647642 m!2996357))

(declare-fun m!2996359 () Bool)

(assert (=> b!2647647 m!2996359))

(declare-fun m!2996361 () Bool)

(assert (=> b!2647640 m!2996361))

(declare-fun m!2996363 () Bool)

(assert (=> b!2647641 m!2996363))

(declare-fun m!2996365 () Bool)

(assert (=> b!2647645 m!2996365))

(declare-fun m!2996367 () Bool)

(assert (=> b!2647643 m!2996367))

(declare-fun m!2996369 () Bool)

(assert (=> b!2647637 m!2996369))

(declare-fun m!2996371 () Bool)

(assert (=> b!2647630 m!2996371))

(declare-fun m!2996373 () Bool)

(assert (=> b!2647636 m!2996373))

(declare-fun m!2996375 () Bool)

(assert (=> start!257702 m!2996375))

(declare-fun m!2996377 () Bool)

(assert (=> start!257702 m!2996377))

(check-sat (not b!2647647) (not b!2647635) (not b!2647634) (not b!2647633) (not b!2647642) b_and!194541 (not start!257702) (not b_next!75241) (not b!2647646) b_and!194545 (not b_next!75237) (not b!2647632) (not b!2647640) (not b!2647643) (not b!2647641) (not b!2647637) (not b_next!75239) b_and!194539 (not b!2647630) (not b!2647639) (not b!2647629) (not b!2647656) b_and!194543 (not b!2647636) (not b_next!75243) (not b!2647645))
(check-sat (not b_next!75239) b_and!194539 b_and!194541 (not b_next!75241) b_and!194545 (not b_next!75237) b_and!194543 (not b_next!75243))
