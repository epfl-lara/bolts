; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15526 () Bool)

(assert start!15526)

(declare-fun b!146594 () Bool)

(declare-fun b_free!5193 () Bool)

(declare-fun b_next!5193 () Bool)

(assert (=> b!146594 (= b_free!5193 (not b_next!5193))))

(declare-fun tp!77158 () Bool)

(declare-fun b_and!8025 () Bool)

(assert (=> b!146594 (= tp!77158 b_and!8025)))

(declare-fun b_free!5195 () Bool)

(declare-fun b_next!5195 () Bool)

(assert (=> b!146594 (= b_free!5195 (not b_next!5195))))

(declare-fun tp!77155 () Bool)

(declare-fun b_and!8027 () Bool)

(assert (=> b!146594 (= tp!77155 b_and!8027)))

(declare-fun b!146590 () Bool)

(declare-fun b_free!5197 () Bool)

(declare-fun b_next!5197 () Bool)

(assert (=> b!146590 (= b_free!5197 (not b_next!5197))))

(declare-fun tp!77160 () Bool)

(declare-fun b_and!8029 () Bool)

(assert (=> b!146590 (= tp!77160 b_and!8029)))

(declare-fun b_free!5199 () Bool)

(declare-fun b_next!5199 () Bool)

(assert (=> b!146590 (= b_free!5199 (not b_next!5199))))

(declare-fun tp!77161 () Bool)

(declare-fun b_and!8031 () Bool)

(assert (=> b!146590 (= tp!77161 b_and!8031)))

(declare-fun b!146578 () Bool)

(declare-fun b_free!5201 () Bool)

(declare-fun b_next!5201 () Bool)

(assert (=> b!146578 (= b_free!5201 (not b_next!5201))))

(declare-fun tp!77157 () Bool)

(declare-fun b_and!8033 () Bool)

(assert (=> b!146578 (= tp!77157 b_and!8033)))

(declare-fun b_free!5203 () Bool)

(declare-fun b_next!5203 () Bool)

(assert (=> b!146578 (= b_free!5203 (not b_next!5203))))

(declare-fun tp!77165 () Bool)

(declare-fun b_and!8035 () Bool)

(assert (=> b!146578 (= tp!77165 b_and!8035)))

(declare-fun b!146575 () Bool)

(declare-fun res!67492 () Bool)

(declare-fun e!87139 () Bool)

(assert (=> b!146575 (=> (not res!67492) (not e!87139))))

(declare-datatypes ((List!2553 0))(
  ( (Nil!2543) (Cons!2543 (h!7940 (_ BitVec 16)) (t!24223 List!2553)) )
))
(declare-datatypes ((TokenValue!459 0))(
  ( (FloatLiteralValue!918 (text!3658 List!2553)) (TokenValueExt!458 (__x!2405 Int)) (Broken!2295 (value!16744 List!2553)) (Object!468) (End!459) (Def!459) (Underscore!459) (Match!459) (Else!459) (Error!459) (Case!459) (If!459) (Extends!459) (Abstract!459) (Class!459) (Val!459) (DelimiterValue!918 (del!519 List!2553)) (KeywordValue!465 (value!16745 List!2553)) (CommentValue!918 (value!16746 List!2553)) (WhitespaceValue!918 (value!16747 List!2553)) (IndentationValue!459 (value!16748 List!2553)) (String!3374) (Int32!459) (Broken!2296 (value!16749 List!2553)) (Boolean!460) (Unit!1891) (OperatorValue!462 (op!519 List!2553)) (IdentifierValue!918 (value!16750 List!2553)) (IdentifierValue!919 (value!16751 List!2553)) (WhitespaceValue!919 (value!16752 List!2553)) (True!918) (False!918) (Broken!2297 (value!16753 List!2553)) (Broken!2298 (value!16754 List!2553)) (True!919) (RightBrace!459) (RightBracket!459) (Colon!459) (Null!459) (Comma!459) (LeftBracket!459) (False!919) (LeftBrace!459) (ImaginaryLiteralValue!459 (text!3659 List!2553)) (StringLiteralValue!1377 (value!16755 List!2553)) (EOFValue!459 (value!16756 List!2553)) (IdentValue!459 (value!16757 List!2553)) (DelimiterValue!919 (value!16758 List!2553)) (DedentValue!459 (value!16759 List!2553)) (NewLineValue!459 (value!16760 List!2553)) (IntegerValue!1377 (value!16761 (_ BitVec 32)) (text!3660 List!2553)) (IntegerValue!1378 (value!16762 Int) (text!3661 List!2553)) (Times!459) (Or!459) (Equal!459) (Minus!459) (Broken!2299 (value!16763 List!2553)) (And!459) (Div!459) (LessEqual!459) (Mod!459) (Concat!1120) (Not!459) (Plus!459) (SpaceValue!459 (value!16764 List!2553)) (IntegerValue!1379 (value!16765 Int) (text!3662 List!2553)) (StringLiteralValue!1378 (text!3663 List!2553)) (FloatLiteralValue!919 (text!3664 List!2553)) (BytesLiteralValue!459 (value!16766 List!2553)) (CommentValue!919 (value!16767 List!2553)) (StringLiteralValue!1379 (value!16768 List!2553)) (ErrorTokenValue!459 (msg!520 List!2553)) )
))
(declare-datatypes ((C!2244 0))(
  ( (C!2245 (val!1008 Int)) )
))
(declare-datatypes ((List!2554 0))(
  ( (Nil!2544) (Cons!2544 (h!7941 C!2244) (t!24224 List!2554)) )
))
(declare-datatypes ((IArray!1393 0))(
  ( (IArray!1394 (innerList!754 List!2554)) )
))
(declare-datatypes ((Conc!696 0))(
  ( (Node!696 (left!1921 Conc!696) (right!2251 Conc!696) (csize!1622 Int) (cheight!907 Int)) (Leaf!1254 (xs!3291 IArray!1393) (csize!1623 Int)) (Empty!696) )
))
(declare-datatypes ((BalanceConc!1400 0))(
  ( (BalanceConc!1401 (c!29885 Conc!696)) )
))
(declare-datatypes ((Regex!661 0))(
  ( (ElementMatch!661 (c!29886 C!2244)) (Concat!1121 (regOne!1834 Regex!661) (regTwo!1834 Regex!661)) (EmptyExpr!661) (Star!661 (reg!990 Regex!661)) (EmptyLang!661) (Union!661 (regOne!1835 Regex!661) (regTwo!1835 Regex!661)) )
))
(declare-datatypes ((String!3375 0))(
  ( (String!3376 (value!16769 String)) )
))
(declare-datatypes ((TokenValueInjection!690 0))(
  ( (TokenValueInjection!691 (toValue!1064 Int) (toChars!923 Int)) )
))
(declare-datatypes ((Rule!674 0))(
  ( (Rule!675 (regex!437 Regex!661) (tag!615 String!3375) (isSeparator!437 Bool) (transformation!437 TokenValueInjection!690)) )
))
(declare-datatypes ((Token!618 0))(
  ( (Token!619 (value!16770 TokenValue!459) (rule!944 Rule!674) (size!2192 Int) (originalCharacters!480 List!2554)) )
))
(declare-datatypes ((List!2555 0))(
  ( (Nil!2545) (Cons!2545 (h!7942 Token!618) (t!24225 List!2555)) )
))
(declare-fun tokens!465 () List!2555)

(declare-fun lambda!3622 () Int)

(declare-fun forall!407 (List!2555 Int) Bool)

(assert (=> b!146575 (= res!67492 (forall!407 tokens!465 lambda!3622))))

(declare-fun e!87145 () Bool)

(declare-fun separatorToken!170 () Token!618)

(declare-fun tp!77153 () Bool)

(declare-fun b!146576 () Bool)

(declare-fun e!87142 () Bool)

(declare-fun inv!21 (TokenValue!459) Bool)

(assert (=> b!146576 (= e!87145 (and (inv!21 (value!16770 separatorToken!170)) e!87142 tp!77153))))

(declare-fun e!87148 () Bool)

(declare-fun b!146577 () Bool)

(declare-fun e!87146 () Bool)

(declare-fun tp!77154 () Bool)

(assert (=> b!146577 (= e!87148 (and (inv!21 (value!16770 (h!7942 tokens!465))) e!87146 tp!77154))))

(declare-fun e!87134 () Bool)

(assert (=> b!146578 (= e!87134 (and tp!77157 tp!77165))))

(declare-fun b!146579 () Bool)

(declare-fun res!67494 () Bool)

(assert (=> b!146579 (=> (not res!67494) (not e!87139))))

(declare-datatypes ((List!2556 0))(
  ( (Nil!2546) (Cons!2546 (h!7943 Rule!674) (t!24226 List!2556)) )
))
(declare-fun rules!1920 () List!2556)

(declare-fun sepAndNonSepRulesDisjointChars!26 (List!2556 List!2556) Bool)

(assert (=> b!146579 (= res!67494 (sepAndNonSepRulesDisjointChars!26 rules!1920 rules!1920))))

(declare-fun b!146580 () Bool)

(declare-fun e!87135 () Bool)

(declare-fun tp!77159 () Bool)

(declare-fun inv!3325 (String!3375) Bool)

(declare-fun inv!3328 (TokenValueInjection!690) Bool)

(assert (=> b!146580 (= e!87135 (and tp!77159 (inv!3325 (tag!615 (h!7943 rules!1920))) (inv!3328 (transformation!437 (h!7943 rules!1920))) e!87134))))

(declare-fun b!146581 () Bool)

(declare-fun res!67491 () Bool)

(assert (=> b!146581 (=> (not res!67491) (not e!87139))))

(get-info :version)

(assert (=> b!146581 (= res!67491 ((_ is Cons!2545) tokens!465))))

(declare-fun b!146582 () Bool)

(declare-fun res!67490 () Bool)

(assert (=> b!146582 (=> (not res!67490) (not e!87139))))

(declare-datatypes ((LexerInterface!323 0))(
  ( (LexerInterfaceExt!320 (__x!2406 Int)) (Lexer!321) )
))
(declare-fun thiss!17480 () LexerInterface!323)

(declare-fun rulesProduceIndividualToken!72 (LexerInterface!323 List!2556 Token!618) Bool)

(assert (=> b!146582 (= res!67490 (rulesProduceIndividualToken!72 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!77164 () Bool)

(declare-fun e!87143 () Bool)

(declare-fun b!146583 () Bool)

(assert (=> b!146583 (= e!87146 (and tp!77164 (inv!3325 (tag!615 (rule!944 (h!7942 tokens!465)))) (inv!3328 (transformation!437 (rule!944 (h!7942 tokens!465)))) e!87143))))

(declare-fun b!146584 () Bool)

(assert (=> b!146584 (= e!87139 false)))

(declare-fun lt!42303 () Int)

(declare-datatypes ((IArray!1395 0))(
  ( (IArray!1396 (innerList!755 List!2555)) )
))
(declare-datatypes ((Conc!697 0))(
  ( (Node!697 (left!1922 Conc!697) (right!2252 Conc!697) (csize!1624 Int) (cheight!908 Int)) (Leaf!1255 (xs!3292 IArray!1395) (csize!1625 Int)) (Empty!697) )
))
(declare-datatypes ((BalanceConc!1402 0))(
  ( (BalanceConc!1403 (c!29887 Conc!697)) )
))
(declare-fun lt!42304 () BalanceConc!1402)

(declare-fun size!2193 (BalanceConc!1402) Int)

(assert (=> b!146584 (= lt!42303 (size!2193 lt!42304))))

(declare-fun b!146585 () Bool)

(declare-fun res!67489 () Bool)

(declare-fun e!87140 () Bool)

(assert (=> b!146585 (=> (not res!67489) (not e!87140))))

(declare-fun isEmpty!990 (List!2556) Bool)

(assert (=> b!146585 (= res!67489 (not (isEmpty!990 rules!1920)))))

(declare-fun b!146586 () Bool)

(declare-fun e!87149 () Bool)

(declare-fun tp!77156 () Bool)

(assert (=> b!146586 (= e!87149 (and e!87135 tp!77156))))

(declare-fun b!146587 () Bool)

(declare-fun res!67488 () Bool)

(assert (=> b!146587 (=> (not res!67488) (not e!87139))))

(assert (=> b!146587 (= res!67488 (isSeparator!437 (rule!944 separatorToken!170)))))

(declare-fun b!146588 () Bool)

(declare-fun tp!77162 () Bool)

(declare-fun e!87137 () Bool)

(declare-fun inv!3329 (Token!618) Bool)

(assert (=> b!146588 (= e!87137 (and (inv!3329 (h!7942 tokens!465)) e!87148 tp!77162))))

(declare-fun tp!77163 () Bool)

(declare-fun e!87136 () Bool)

(declare-fun b!146589 () Bool)

(assert (=> b!146589 (= e!87142 (and tp!77163 (inv!3325 (tag!615 (rule!944 separatorToken!170))) (inv!3328 (transformation!437 (rule!944 separatorToken!170))) e!87136))))

(assert (=> b!146590 (= e!87136 (and tp!77160 tp!77161))))

(declare-fun res!67487 () Bool)

(assert (=> start!15526 (=> (not res!67487) (not e!87140))))

(assert (=> start!15526 (= res!67487 ((_ is Lexer!321) thiss!17480))))

(assert (=> start!15526 e!87140))

(assert (=> start!15526 true))

(assert (=> start!15526 e!87149))

(assert (=> start!15526 (and (inv!3329 separatorToken!170) e!87145)))

(assert (=> start!15526 e!87137))

(declare-fun b!146591 () Bool)

(declare-fun res!67493 () Bool)

(assert (=> b!146591 (=> (not res!67493) (not e!87139))))

(declare-fun printWithSeparatorTokenWhenNeededList!16 (LexerInterface!323 List!2556 List!2555 Token!618) List!2554)

(declare-fun list!879 (BalanceConc!1400) List!2554)

(declare-fun printWithSeparatorTokenWhenNeededRec!6 (LexerInterface!323 List!2556 BalanceConc!1402 Token!618 Int) BalanceConc!1400)

(assert (=> b!146591 (= res!67493 (= (printWithSeparatorTokenWhenNeededList!16 thiss!17480 rules!1920 tokens!465 separatorToken!170) (list!879 (printWithSeparatorTokenWhenNeededRec!6 thiss!17480 rules!1920 lt!42304 separatorToken!170 0))))))

(declare-fun b!146592 () Bool)

(assert (=> b!146592 (= e!87140 e!87139)))

(declare-fun res!67495 () Bool)

(assert (=> b!146592 (=> (not res!67495) (not e!87139))))

(declare-fun rulesProduceEachTokenIndividually!115 (LexerInterface!323 List!2556 BalanceConc!1402) Bool)

(assert (=> b!146592 (= res!67495 (rulesProduceEachTokenIndividually!115 thiss!17480 rules!1920 lt!42304))))

(declare-fun seqFromList!254 (List!2555) BalanceConc!1402)

(assert (=> b!146592 (= lt!42304 (seqFromList!254 tokens!465))))

(declare-fun b!146593 () Bool)

(declare-fun res!67496 () Bool)

(assert (=> b!146593 (=> (not res!67496) (not e!87140))))

(declare-fun rulesInvariant!289 (LexerInterface!323 List!2556) Bool)

(assert (=> b!146593 (= res!67496 (rulesInvariant!289 thiss!17480 rules!1920))))

(assert (=> b!146594 (= e!87143 (and tp!77158 tp!77155))))

(assert (= (and start!15526 res!67487) b!146585))

(assert (= (and b!146585 res!67489) b!146593))

(assert (= (and b!146593 res!67496) b!146592))

(assert (= (and b!146592 res!67495) b!146582))

(assert (= (and b!146582 res!67490) b!146587))

(assert (= (and b!146587 res!67488) b!146575))

(assert (= (and b!146575 res!67492) b!146579))

(assert (= (and b!146579 res!67494) b!146581))

(assert (= (and b!146581 res!67491) b!146591))

(assert (= (and b!146591 res!67493) b!146584))

(assert (= b!146580 b!146578))

(assert (= b!146586 b!146580))

(assert (= (and start!15526 ((_ is Cons!2546) rules!1920)) b!146586))

(assert (= b!146589 b!146590))

(assert (= b!146576 b!146589))

(assert (= start!15526 b!146576))

(assert (= b!146583 b!146594))

(assert (= b!146577 b!146583))

(assert (= b!146588 b!146577))

(assert (= (and start!15526 ((_ is Cons!2545) tokens!465)) b!146588))

(declare-fun m!129273 () Bool)

(assert (=> b!146584 m!129273))

(declare-fun m!129275 () Bool)

(assert (=> b!146592 m!129275))

(declare-fun m!129277 () Bool)

(assert (=> b!146592 m!129277))

(declare-fun m!129279 () Bool)

(assert (=> b!146579 m!129279))

(declare-fun m!129281 () Bool)

(assert (=> b!146575 m!129281))

(declare-fun m!129283 () Bool)

(assert (=> b!146580 m!129283))

(declare-fun m!129285 () Bool)

(assert (=> b!146580 m!129285))

(declare-fun m!129287 () Bool)

(assert (=> b!146591 m!129287))

(declare-fun m!129289 () Bool)

(assert (=> b!146591 m!129289))

(assert (=> b!146591 m!129289))

(declare-fun m!129291 () Bool)

(assert (=> b!146591 m!129291))

(declare-fun m!129293 () Bool)

(assert (=> b!146582 m!129293))

(declare-fun m!129295 () Bool)

(assert (=> b!146588 m!129295))

(declare-fun m!129297 () Bool)

(assert (=> b!146583 m!129297))

(declare-fun m!129299 () Bool)

(assert (=> b!146583 m!129299))

(declare-fun m!129301 () Bool)

(assert (=> start!15526 m!129301))

(declare-fun m!129303 () Bool)

(assert (=> b!146593 m!129303))

(declare-fun m!129305 () Bool)

(assert (=> b!146589 m!129305))

(declare-fun m!129307 () Bool)

(assert (=> b!146589 m!129307))

(declare-fun m!129309 () Bool)

(assert (=> b!146577 m!129309))

(declare-fun m!129311 () Bool)

(assert (=> b!146585 m!129311))

(declare-fun m!129313 () Bool)

(assert (=> b!146576 m!129313))

(check-sat (not b!146575) (not b!146579) (not b!146593) (not start!15526) (not b!146582) b_and!8027 (not b_next!5199) (not b!146585) b_and!8031 (not b!146589) (not b_next!5195) (not b!146584) (not b!146583) b_and!8035 (not b!146592) b_and!8029 (not b_next!5197) b_and!8033 (not b!146576) (not b!146588) (not b_next!5203) (not b!146586) (not b!146577) b_and!8025 (not b_next!5193) (not b!146591) (not b!146580) (not b_next!5201))
(check-sat (not b_next!5195) b_and!8035 b_and!8033 b_and!8027 (not b_next!5203) (not b_next!5199) b_and!8025 (not b_next!5193) b_and!8031 (not b_next!5201) b_and!8029 (not b_next!5197))
