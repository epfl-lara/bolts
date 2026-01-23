; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129480 () Bool)

(assert start!129480)

(declare-fun b!1413292 () Bool)

(declare-fun tp!401171 () Bool)

(declare-fun e!902255 () Bool)

(declare-datatypes ((List!14515 0))(
  ( (Nil!14449) (Cons!14449 (h!19850 (_ BitVec 16)) (t!123792 List!14515)) )
))
(declare-datatypes ((TokenValue!2601 0))(
  ( (FloatLiteralValue!5202 (text!18652 List!14515)) (TokenValueExt!2600 (__x!9019 Int)) (Broken!13005 (value!81170 List!14515)) (Object!2666) (End!2601) (Def!2601) (Underscore!2601) (Match!2601) (Else!2601) (Error!2601) (Case!2601) (If!2601) (Extends!2601) (Abstract!2601) (Class!2601) (Val!2601) (DelimiterValue!5202 (del!2661 List!14515)) (KeywordValue!2607 (value!81171 List!14515)) (CommentValue!5202 (value!81172 List!14515)) (WhitespaceValue!5202 (value!81173 List!14515)) (IndentationValue!2601 (value!81174 List!14515)) (String!17240) (Int32!2601) (Broken!13006 (value!81175 List!14515)) (Boolean!2602) (Unit!20981) (OperatorValue!2604 (op!2661 List!14515)) (IdentifierValue!5202 (value!81176 List!14515)) (IdentifierValue!5203 (value!81177 List!14515)) (WhitespaceValue!5203 (value!81178 List!14515)) (True!5202) (False!5202) (Broken!13007 (value!81179 List!14515)) (Broken!13008 (value!81180 List!14515)) (True!5203) (RightBrace!2601) (RightBracket!2601) (Colon!2601) (Null!2601) (Comma!2601) (LeftBracket!2601) (False!5203) (LeftBrace!2601) (ImaginaryLiteralValue!2601 (text!18653 List!14515)) (StringLiteralValue!7803 (value!81181 List!14515)) (EOFValue!2601 (value!81182 List!14515)) (IdentValue!2601 (value!81183 List!14515)) (DelimiterValue!5203 (value!81184 List!14515)) (DedentValue!2601 (value!81185 List!14515)) (NewLineValue!2601 (value!81186 List!14515)) (IntegerValue!7803 (value!81187 (_ BitVec 32)) (text!18654 List!14515)) (IntegerValue!7804 (value!81188 Int) (text!18655 List!14515)) (Times!2601) (Or!2601) (Equal!2601) (Minus!2601) (Broken!13009 (value!81189 List!14515)) (And!2601) (Div!2601) (LessEqual!2601) (Mod!2601) (Concat!6426) (Not!2601) (Plus!2601) (SpaceValue!2601 (value!81190 List!14515)) (IntegerValue!7805 (value!81191 Int) (text!18656 List!14515)) (StringLiteralValue!7804 (text!18657 List!14515)) (FloatLiteralValue!5203 (text!18658 List!14515)) (BytesLiteralValue!2601 (value!81192 List!14515)) (CommentValue!5203 (value!81193 List!14515)) (StringLiteralValue!7805 (value!81194 List!14515)) (ErrorTokenValue!2601 (msg!2662 List!14515)) )
))
(declare-datatypes ((Regex!3825 0))(
  ( (ElementMatch!3825 (c!232206 (_ BitVec 16))) (Concat!6427 (regOne!8162 Regex!3825) (regTwo!8162 Regex!3825)) (EmptyExpr!3825) (Star!3825 (reg!4154 Regex!3825)) (EmptyLang!3825) (Union!3825 (regOne!8163 Regex!3825) (regTwo!8163 Regex!3825)) )
))
(declare-datatypes ((String!17241 0))(
  ( (String!17242 (value!81195 String)) )
))
(declare-datatypes ((IArray!9619 0))(
  ( (IArray!9620 (innerList!4867 List!14515)) )
))
(declare-datatypes ((Conc!4807 0))(
  ( (Node!4807 (left!12344 Conc!4807) (right!12674 Conc!4807) (csize!9844 Int) (cheight!5018 Int)) (Leaf!7259 (xs!7534 IArray!9619) (csize!9845 Int)) (Empty!4807) )
))
(declare-datatypes ((BalanceConc!9554 0))(
  ( (BalanceConc!9555 (c!232207 Conc!4807)) )
))
(declare-datatypes ((TokenValueInjection!4862 0))(
  ( (TokenValueInjection!4863 (toValue!3810 Int) (toChars!3669 Int)) )
))
(declare-datatypes ((Rule!4822 0))(
  ( (Rule!4823 (regex!2511 Regex!3825) (tag!2773 String!17241) (isSeparator!2511 Bool) (transformation!2511 TokenValueInjection!4862)) )
))
(declare-datatypes ((Token!4684 0))(
  ( (Token!4685 (value!81196 TokenValue!2601) (rule!4274 Rule!4822) (size!11909 Int) (originalCharacters!3373 List!14515)) )
))
(declare-datatypes ((List!14516 0))(
  ( (Nil!14450) (Cons!14450 (h!19851 Token!4684) (t!123793 List!14516)) )
))
(declare-datatypes ((IArray!9621 0))(
  ( (IArray!9622 (innerList!4868 List!14516)) )
))
(declare-datatypes ((Conc!4808 0))(
  ( (Node!4808 (left!12345 Conc!4808) (right!12675 Conc!4808) (csize!9846 Int) (cheight!5019 Int)) (Leaf!7260 (xs!7535 IArray!9621) (csize!9847 Int)) (Empty!4808) )
))
(declare-datatypes ((List!14517 0))(
  ( (Nil!14451) (Cons!14451 (h!19852 Rule!4822) (t!123794 List!14517)) )
))
(declare-datatypes ((BalanceConc!9556 0))(
  ( (BalanceConc!9557 (c!232208 Conc!4808)) )
))
(declare-datatypes ((PrintableTokens!804 0))(
  ( (PrintableTokens!805 (rules!11032 List!14517) (tokens!1762 BalanceConc!9556)) )
))
(declare-fun sep!3 () PrintableTokens!804)

(declare-fun e!902257 () Bool)

(declare-fun inv!18906 (BalanceConc!9556) Bool)

(assert (=> b!1413292 (= e!902257 (and tp!401171 (inv!18906 (tokens!1762 sep!3)) e!902255))))

(declare-fun b!1413293 () Bool)

(declare-fun res!640034 () Bool)

(declare-fun e!902253 () Bool)

(assert (=> b!1413293 (=> (not res!640034) (not e!902253))))

(declare-datatypes ((List!14518 0))(
  ( (Nil!14452) (Cons!14452 (h!19853 PrintableTokens!804) (t!123795 List!14518)) )
))
(declare-datatypes ((IArray!9623 0))(
  ( (IArray!9624 (innerList!4869 List!14518)) )
))
(declare-datatypes ((Conc!4809 0))(
  ( (Node!4809 (left!12346 Conc!4809) (right!12676 Conc!4809) (csize!9848 Int) (cheight!5020 Int)) (Leaf!7261 (xs!7536 IArray!9623) (csize!9849 Int)) (Empty!4809) )
))
(declare-datatypes ((BalanceConc!9558 0))(
  ( (BalanceConc!9559 (c!232209 Conc!4809)) )
))
(declare-fun objs!24 () BalanceConc!9558)

(declare-fun isEmpty!8836 (BalanceConc!9558) Bool)

(assert (=> b!1413293 (= res!640034 (not (isEmpty!8836 objs!24)))))

(declare-fun res!640031 () Bool)

(assert (=> start!129480 (=> (not res!640031) (not e!902253))))

(declare-fun lambda!62469 () Int)

(declare-fun forall!3549 (BalanceConc!9558 Int) Bool)

(assert (=> start!129480 (= res!640031 (forall!3549 objs!24 lambda!62469))))

(assert (=> start!129480 e!902253))

(declare-fun e!902254 () Bool)

(declare-fun inv!18907 (BalanceConc!9558) Bool)

(assert (=> start!129480 (and (inv!18907 objs!24) e!902254)))

(declare-fun acc!229 () PrintableTokens!804)

(declare-fun e!902252 () Bool)

(declare-fun inv!18908 (PrintableTokens!804) Bool)

(assert (=> start!129480 (and (inv!18908 acc!229) e!902252)))

(assert (=> start!129480 (and (inv!18908 sep!3) e!902257)))

(declare-fun b!1413294 () Bool)

(declare-fun e!902256 () Bool)

(declare-fun tail!2070 (BalanceConc!9558) BalanceConc!9558)

(assert (=> b!1413294 (= e!902256 (not (forall!3549 (tail!2070 objs!24) lambda!62469)))))

(declare-fun b!1413295 () Bool)

(assert (=> b!1413295 (= e!902253 e!902256)))

(declare-fun res!640036 () Bool)

(assert (=> b!1413295 (=> (not res!640036) (not e!902256))))

(declare-datatypes ((Option!2770 0))(
  ( (None!2769) (Some!2769 (v!21893 PrintableTokens!804)) )
))
(declare-fun lt!473262 () Option!2770)

(get-info :version)

(assert (=> b!1413295 (= res!640036 ((_ is Some!2769) lt!473262))))

(declare-fun append!430 (PrintableTokens!804 PrintableTokens!804) Option!2770)

(declare-fun head!2690 (BalanceConc!9558) PrintableTokens!804)

(assert (=> b!1413295 (= lt!473262 (append!430 (head!2690 objs!24) sep!3))))

(declare-fun b!1413296 () Bool)

(declare-fun res!640030 () Bool)

(assert (=> b!1413296 (=> (not res!640030) (not e!902253))))

(declare-fun usesJsonRules!0 (PrintableTokens!804) Bool)

(assert (=> b!1413296 (= res!640030 (usesJsonRules!0 sep!3))))

(declare-fun b!1413297 () Bool)

(declare-fun tp!401172 () Bool)

(declare-fun inv!18909 (Conc!4808) Bool)

(assert (=> b!1413297 (= e!902255 (and (inv!18909 (c!232208 (tokens!1762 sep!3))) tp!401172))))

(declare-fun b!1413298 () Bool)

(declare-fun res!640032 () Bool)

(assert (=> b!1413298 (=> (not res!640032) (not e!902256))))

(assert (=> b!1413298 (= res!640032 ((_ is Some!2769) (append!430 acc!229 (v!21893 lt!473262))))))

(declare-fun b!1413299 () Bool)

(declare-fun e!902251 () Bool)

(declare-fun tp!401170 () Bool)

(assert (=> b!1413299 (= e!902252 (and tp!401170 (inv!18906 (tokens!1762 acc!229)) e!902251))))

(declare-fun b!1413300 () Bool)

(declare-fun tp!401174 () Bool)

(assert (=> b!1413300 (= e!902251 (and (inv!18909 (c!232208 (tokens!1762 acc!229))) tp!401174))))

(declare-fun b!1413301 () Bool)

(declare-fun res!640035 () Bool)

(assert (=> b!1413301 (=> (not res!640035) (not e!902253))))

(assert (=> b!1413301 (= res!640035 (usesJsonRules!0 acc!229))))

(declare-fun b!1413302 () Bool)

(declare-fun tp!401173 () Bool)

(declare-fun inv!18910 (Conc!4809) Bool)

(assert (=> b!1413302 (= e!902254 (and (inv!18910 (c!232209 objs!24)) tp!401173))))

(declare-fun b!1413303 () Bool)

(declare-fun res!640033 () Bool)

(assert (=> b!1413303 (=> (not res!640033) (not e!902253))))

(declare-fun size!11910 (BalanceConc!9558) Int)

(assert (=> b!1413303 (= res!640033 (not (= (size!11910 objs!24) 1)))))

(assert (= (and start!129480 res!640031) b!1413301))

(assert (= (and b!1413301 res!640035) b!1413296))

(assert (= (and b!1413296 res!640030) b!1413293))

(assert (= (and b!1413293 res!640034) b!1413303))

(assert (= (and b!1413303 res!640033) b!1413295))

(assert (= (and b!1413295 res!640036) b!1413298))

(assert (= (and b!1413298 res!640032) b!1413294))

(assert (= start!129480 b!1413302))

(assert (= b!1413299 b!1413300))

(assert (= start!129480 b!1413299))

(assert (= b!1413292 b!1413297))

(assert (= start!129480 b!1413292))

(declare-fun m!1594727 () Bool)

(assert (=> b!1413301 m!1594727))

(declare-fun m!1594729 () Bool)

(assert (=> b!1413299 m!1594729))

(declare-fun m!1594731 () Bool)

(assert (=> start!129480 m!1594731))

(declare-fun m!1594733 () Bool)

(assert (=> start!129480 m!1594733))

(declare-fun m!1594735 () Bool)

(assert (=> start!129480 m!1594735))

(declare-fun m!1594737 () Bool)

(assert (=> start!129480 m!1594737))

(declare-fun m!1594739 () Bool)

(assert (=> b!1413300 m!1594739))

(declare-fun m!1594741 () Bool)

(assert (=> b!1413294 m!1594741))

(assert (=> b!1413294 m!1594741))

(declare-fun m!1594743 () Bool)

(assert (=> b!1413294 m!1594743))

(declare-fun m!1594745 () Bool)

(assert (=> b!1413293 m!1594745))

(declare-fun m!1594747 () Bool)

(assert (=> b!1413302 m!1594747))

(declare-fun m!1594749 () Bool)

(assert (=> b!1413297 m!1594749))

(declare-fun m!1594751 () Bool)

(assert (=> b!1413292 m!1594751))

(declare-fun m!1594753 () Bool)

(assert (=> b!1413298 m!1594753))

(declare-fun m!1594755 () Bool)

(assert (=> b!1413296 m!1594755))

(declare-fun m!1594757 () Bool)

(assert (=> b!1413303 m!1594757))

(declare-fun m!1594759 () Bool)

(assert (=> b!1413295 m!1594759))

(assert (=> b!1413295 m!1594759))

(declare-fun m!1594761 () Bool)

(assert (=> b!1413295 m!1594761))

(check-sat (not b!1413297) (not b!1413298) (not start!129480) (not b!1413295) (not b!1413292) (not b!1413302) (not b!1413294) (not b!1413299) (not b!1413301) (not b!1413293) (not b!1413296) (not b!1413303) (not b!1413300))
(check-sat)
(get-model)

(declare-fun bm!95021 () Bool)

(declare-fun call!95051 () BalanceConc!9554)

(declare-datatypes ((LexerInterface!2195 0))(
  ( (LexerInterfaceExt!2192 (__x!9021 Int)) (Lexer!2193) )
))
(declare-fun printTailRec!635 (LexerInterface!2195 BalanceConc!9556 Int BalanceConc!9554) BalanceConc!9554)

(assert (=> bm!95021 (= call!95051 (printTailRec!635 Lexer!2193 (tokens!1762 (v!21893 lt!473262)) 0 (BalanceConc!9555 Empty!4807)))))

(declare-fun bm!95022 () Bool)

(declare-fun call!95050 () List!14515)

(declare-fun call!95041 () BalanceConc!9554)

(declare-fun list!5671 (BalanceConc!9554) List!14515)

(assert (=> bm!95022 (= call!95050 (list!5671 call!95041))))

(declare-fun lt!473627 () LexerInterface!2195)

(declare-fun lt!473598 () LexerInterface!2195)

(declare-fun bm!95023 () Bool)

(declare-fun c!232257 () Bool)

(declare-fun call!95027 () List!14516)

(declare-fun call!95063 () List!14515)

(declare-fun call!95036 () List!14516)

(declare-fun c!232259 () Bool)

(declare-fun printList!653 (LexerInterface!2195 List!14516) List!14515)

(assert (=> bm!95023 (= call!95063 (printList!653 (ite c!232257 Lexer!2193 (ite c!232259 lt!473598 lt!473627)) (ite c!232257 call!95027 call!95036)))))

(declare-fun bm!95024 () Bool)

(declare-datatypes ((Unit!20997 0))(
  ( (Unit!20998) )
))
(declare-fun call!95047 () Unit!20997)

(declare-fun call!95056 () Unit!20997)

(assert (=> bm!95024 (= call!95047 call!95056)))

(declare-fun lt!473589 () List!14516)

(declare-fun bm!95025 () Bool)

(declare-fun call!95057 () List!14516)

(declare-fun lt!473607 () List!14516)

(declare-fun lt!473622 () List!14516)

(declare-fun lt!473617 () List!14516)

(declare-fun ++!3767 (List!14516 List!14516) List!14516)

(assert (=> bm!95025 (= call!95057 (++!3767 (ite c!232257 lt!473589 lt!473607) (ite c!232257 lt!473617 lt!473622)))))

(declare-fun b!1413407 () Bool)

(declare-fun e!902321 () List!14516)

(declare-fun call!95049 () List!14516)

(assert (=> b!1413407 (= e!902321 call!95049)))

(declare-fun bm!95026 () Bool)

(declare-fun call!95062 () List!14515)

(declare-fun lt!473639 () List!14516)

(declare-fun lt!473649 () List!14516)

(declare-fun lt!473642 () LexerInterface!2195)

(assert (=> bm!95026 (= call!95062 (printList!653 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473627)) (ite c!232257 call!95057 (ite c!232259 lt!473649 lt!473639))))))

(declare-fun b!1413408 () Bool)

(declare-fun e!902323 () List!14515)

(declare-fun call!95053 () List!14515)

(assert (=> b!1413408 (= e!902323 call!95053)))

(declare-fun bm!95027 () Bool)

(declare-fun call!95048 () List!14516)

(assert (=> bm!95027 (= call!95049 call!95048)))

(declare-fun lt!473625 () List!14516)

(declare-fun bm!95028 () Bool)

(declare-fun lt!473643 () LexerInterface!2195)

(declare-fun call!95039 () List!14515)

(assert (=> bm!95028 (= call!95039 (printList!653 (ite (or c!232257 c!232259) Lexer!2193 lt!473643) (ite c!232257 (t!123793 lt!473625) e!902321)))))

(declare-fun call!95052 () BalanceConc!9554)

(declare-fun bm!95029 () Bool)

(declare-fun print!961 (PrintableTokens!804) BalanceConc!9554)

(assert (=> bm!95029 (= call!95052 (print!961 (ite c!232257 acc!229 (v!21893 lt!473262))))))

(declare-fun call!95025 () List!14516)

(declare-fun bm!95030 () Bool)

(declare-fun theoremInvertabilityWhenTokenListSeparable!23 (LexerInterface!2195 List!14517 List!14516) Unit!20997)

(assert (=> bm!95030 (= call!95056 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))

(declare-fun b!1413409 () Bool)

(declare-fun lt!473626 () Unit!20997)

(declare-fun Unit!20999 () Unit!20997)

(assert (=> b!1413409 (= lt!473626 Unit!20999)))

(declare-fun call!95059 () List!14515)

(declare-fun e!902319 () List!14515)

(assert (=> b!1413409 (= call!95059 e!902319)))

(declare-fun c!232254 () Bool)

(declare-fun lt!473605 () List!14516)

(assert (=> b!1413409 (= c!232254 ((_ is Cons!14450) lt!473605))))

(assert (=> b!1413409 (= lt!473605 call!95049)))

(declare-fun lt!473612 () Unit!20997)

(declare-fun Unit!21000 () Unit!20997)

(assert (=> b!1413409 (= lt!473612 Unit!21000)))

(declare-fun call!95030 () BalanceConc!9554)

(assert (=> b!1413409 (= call!95030 call!95051)))

(declare-fun lt!473596 () Unit!20997)

(declare-fun Unit!21001 () Unit!20997)

(assert (=> b!1413409 (= lt!473596 Unit!21001)))

(declare-fun call!95033 () BalanceConc!9554)

(assert (=> b!1413409 (= call!95033 call!95030)))

(declare-fun lt!473628 () Unit!20997)

(assert (=> b!1413409 (= lt!473628 call!95047)))

(declare-fun lt!473624 () Unit!20997)

(declare-fun Unit!21002 () Unit!20997)

(assert (=> b!1413409 (= lt!473624 Unit!21002)))

(declare-fun call!95061 () BalanceConc!9554)

(declare-fun call!95046 () BalanceConc!9554)

(assert (=> b!1413409 (= call!95061 call!95046)))

(declare-fun lt!473640 () Unit!20997)

(declare-fun call!95029 () Unit!20997)

(assert (=> b!1413409 (= lt!473640 call!95029)))

(declare-fun lt!473594 () Unit!20997)

(declare-fun Unit!21003 () Unit!20997)

(assert (=> b!1413409 (= lt!473594 Unit!21003)))

(declare-fun call!95031 () List!14515)

(assert (=> b!1413409 (= call!95031 Nil!14449)))

(declare-fun lt!473602 () Unit!20997)

(declare-fun lt!473651 () Unit!20997)

(assert (=> b!1413409 (= lt!473602 lt!473651)))

(declare-fun call!95054 () List!14515)

(declare-fun call!95028 () List!14515)

(assert (=> b!1413409 (= call!95054 call!95028)))

(declare-fun call!95038 () Unit!20997)

(assert (=> b!1413409 (= lt!473651 call!95038)))

(declare-fun lt!473637 () List!14516)

(assert (=> b!1413409 (= lt!473637 call!95049)))

(assert (=> b!1413409 (= lt!473649 Nil!14450)))

(assert (=> b!1413409 (= lt!473598 Lexer!2193)))

(declare-fun e!902322 () Option!2770)

(assert (=> b!1413409 (= e!902322 (Some!2769 (v!21893 lt!473262)))))

(declare-fun b!1413410 () Bool)

(declare-fun e!902317 () Option!2770)

(assert (=> b!1413410 (= e!902317 (Some!2769 acc!229))))

(assert (=> b!1413410 (= lt!473642 Lexer!2193)))

(assert (=> b!1413410 (= lt!473589 call!95048)))

(assert (=> b!1413410 (= lt!473617 Nil!14450)))

(declare-fun lt!473646 () Unit!20997)

(declare-fun call!95044 () Unit!20997)

(assert (=> b!1413410 (= lt!473646 call!95044)))

(declare-fun call!95037 () List!14515)

(assert (=> b!1413410 (= call!95062 call!95037)))

(declare-fun lt!473613 () Unit!20997)

(assert (=> b!1413410 (= lt!473613 lt!473646)))

(declare-fun call!95058 () List!14515)

(assert (=> b!1413410 (= call!95058 Nil!14449)))

(declare-fun lt!473615 () Unit!20997)

(declare-fun Unit!21004 () Unit!20997)

(assert (=> b!1413410 (= lt!473615 Unit!21004)))

(declare-fun lt!473591 () Unit!20997)

(assert (=> b!1413410 (= lt!473591 call!95056)))

(declare-fun call!95026 () BalanceConc!9554)

(assert (=> b!1413410 (= call!95052 call!95026)))

(declare-fun lt!473609 () Unit!20997)

(declare-fun Unit!21005 () Unit!20997)

(assert (=> b!1413410 (= lt!473609 Unit!21005)))

(declare-fun lt!473631 () Unit!20997)

(declare-fun call!95060 () Unit!20997)

(assert (=> b!1413410 (= lt!473631 call!95060)))

(declare-fun call!95032 () BalanceConc!9554)

(declare-fun call!95042 () BalanceConc!9554)

(assert (=> b!1413410 (= call!95032 call!95042)))

(declare-fun lt!473610 () Unit!20997)

(declare-fun Unit!21006 () Unit!20997)

(assert (=> b!1413410 (= lt!473610 Unit!21006)))

(assert (=> b!1413410 (= call!95042 call!95051)))

(declare-fun lt!473592 () Unit!20997)

(declare-fun Unit!21007 () Unit!20997)

(assert (=> b!1413410 (= lt!473592 Unit!21007)))

(assert (=> b!1413410 (= lt!473625 call!95027)))

(declare-fun c!232255 () Bool)

(assert (=> b!1413410 (= c!232255 ((_ is Cons!14450) lt!473625))))

(assert (=> b!1413410 (= call!95063 e!902323)))

(declare-fun lt!473636 () Unit!20997)

(declare-fun Unit!21008 () Unit!20997)

(assert (=> b!1413410 (= lt!473636 Unit!21008)))

(declare-fun bm!95031 () Bool)

(declare-fun call!95055 () List!14515)

(assert (=> bm!95031 (= call!95031 call!95055)))

(declare-fun bm!95032 () Bool)

(declare-fun lt!473593 () List!14516)

(declare-fun lt!473638 () List!14516)

(declare-fun lemmaPrintConcatSameAsConcatPrint!18 (LexerInterface!2195 List!14516 List!14516) Unit!20997)

(assert (=> bm!95032 (= call!95044 (lemmaPrintConcatSameAsConcatPrint!18 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473643)) (ite c!232257 lt!473589 (ite c!232259 lt!473649 lt!473593)) (ite c!232257 lt!473617 (ite c!232259 lt!473637 lt!473638))))))

(declare-fun bm!95033 () Bool)

(assert (=> bm!95033 (= call!95032 (print!961 (ite c!232257 (v!21893 lt!473262) acc!229)))))

(declare-fun bm!95034 () Bool)

(declare-fun c!232260 () Bool)

(assert (=> bm!95034 (= c!232260 c!232259)))

(declare-fun call!95040 () List!14515)

(assert (=> bm!95034 (= call!95040 call!95053)))

(declare-fun call!95035 () List!14515)

(declare-fun bm!95035 () Bool)

(declare-fun lt!473614 () List!14516)

(assert (=> bm!95035 (= call!95035 (printList!653 (ite c!232257 lt!473642 (ite c!232259 Lexer!2193 lt!473627)) (ite c!232257 lt!473617 (ite c!232259 (t!123793 lt!473605) lt!473614))))))

(declare-fun bm!95036 () Bool)

(declare-fun list!5672 (BalanceConc!9556) List!14516)

(assert (=> bm!95036 (= call!95027 (list!5672 (ite c!232257 (tokens!1762 (v!21893 lt!473262)) (ite c!232259 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))

(declare-fun b!1413411 () Bool)

(assert (=> b!1413411 (= e!902319 Nil!14449)))

(declare-fun bm!95037 () Bool)

(declare-fun print!962 (LexerInterface!2195 BalanceConc!9556) BalanceConc!9554)

(assert (=> bm!95037 (= call!95042 (print!962 Lexer!2193 (tokens!1762 (v!21893 lt!473262))))))

(declare-fun bm!95038 () Bool)

(assert (=> bm!95038 (= call!95026 (print!962 Lexer!2193 (tokens!1762 acc!229)))))

(declare-fun bm!95020 () Bool)

(assert (=> bm!95020 (= call!95061 call!95032)))

(declare-fun d!404268 () Bool)

(declare-fun e!902318 () Bool)

(assert (=> d!404268 e!902318))

(declare-fun res!640061 () Bool)

(assert (=> d!404268 (=> res!640061 e!902318)))

(declare-fun lt!473601 () Option!2770)

(declare-fun isEmpty!8839 (Option!2770) Bool)

(assert (=> d!404268 (= res!640061 (isEmpty!8839 lt!473601))))

(assert (=> d!404268 (= lt!473601 e!902317)))

(declare-fun isEmpty!8840 (BalanceConc!9556) Bool)

(assert (=> d!404268 (= c!232257 (isEmpty!8840 (tokens!1762 (v!21893 lt!473262))))))

(declare-fun lt!473603 () Unit!20997)

(declare-fun lemmaInvariant!225 (PrintableTokens!804) Unit!20997)

(assert (=> d!404268 (= lt!473603 (lemmaInvariant!225 acc!229))))

(declare-fun lt!473652 () Unit!20997)

(assert (=> d!404268 (= lt!473652 (lemmaInvariant!225 (v!21893 lt!473262)))))

(assert (=> d!404268 (= (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262)))))

(assert (=> d!404268 (= (append!430 acc!229 (v!21893 lt!473262)) lt!473601)))

(declare-fun call!95045 () List!14515)

(declare-fun call!95043 () List!14515)

(declare-fun bm!95039 () Bool)

(declare-fun ++!3768 (List!14515 List!14515) List!14515)

(assert (=> bm!95039 (= call!95037 (++!3768 (ite c!232257 call!95055 (ite c!232259 call!95043 call!95031)) (ite c!232257 call!95035 call!95045)))))

(declare-fun bm!95040 () Bool)

(assert (=> bm!95040 (= call!95033 call!95052)))

(declare-fun b!1413412 () Bool)

(declare-fun e!902316 () Option!2770)

(assert (=> b!1413412 (= e!902316 None!2769)))

(declare-fun bm!95041 () Bool)

(declare-fun call!95034 () List!14515)

(assert (=> bm!95041 (= call!95034 call!95035)))

(declare-fun e!902320 () Bool)

(declare-fun b!1413413 () Bool)

(declare-fun get!4443 (Option!2770) PrintableTokens!804)

(assert (=> b!1413413 (= e!902320 (= (list!5671 (print!961 (get!4443 lt!473601))) (++!3768 (list!5671 (print!961 acc!229)) (list!5671 (print!961 (v!21893 lt!473262))))))))

(declare-fun b!1413414 () Bool)

(declare-fun c!232256 () Bool)

(declare-fun separableTokensPredicate!476 (LexerInterface!2195 Token!4684 Token!4684 List!14517) Bool)

(declare-fun last!67 (BalanceConc!9556) Token!4684)

(declare-fun head!2694 (BalanceConc!9556) Token!4684)

(assert (=> b!1413414 (= c!232256 (separableTokensPredicate!476 Lexer!2193 (last!67 (tokens!1762 acc!229)) (head!2694 (tokens!1762 (v!21893 lt!473262))) (rules!11032 acc!229)))))

(declare-fun lt!473641 () Unit!20997)

(declare-fun lt!473623 () Unit!20997)

(assert (=> b!1413414 (= lt!473641 lt!473623)))

(declare-fun lt!473648 () LexerInterface!2195)

(declare-fun lt!473633 () Token!4684)

(declare-fun rulesProduceIndividualToken!1162 (LexerInterface!2195 List!14517 Token!4684) Bool)

(assert (=> b!1413414 (rulesProduceIndividualToken!1162 lt!473648 (rules!11032 acc!229) lt!473633)))

(declare-fun lt!473630 () List!14516)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 (LexerInterface!2195 List!14517 List!14516 Token!4684) Unit!20997)

(assert (=> b!1413414 (= lt!473623 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473648 (rules!11032 acc!229) lt!473630 lt!473633))))

(assert (=> b!1413414 (= lt!473633 (head!2694 (tokens!1762 (v!21893 lt!473262))))))

(assert (=> b!1413414 (= lt!473630 call!95025)))

(assert (=> b!1413414 (= lt!473648 Lexer!2193)))

(declare-fun lt!473634 () Unit!20997)

(declare-fun lt!473645 () Unit!20997)

(assert (=> b!1413414 (= lt!473634 lt!473645)))

(declare-fun lt!473632 () LexerInterface!2195)

(declare-fun lt!473595 () Token!4684)

(assert (=> b!1413414 (rulesProduceIndividualToken!1162 lt!473632 (rules!11032 acc!229) lt!473595)))

(declare-fun lt!473616 () List!14516)

(assert (=> b!1413414 (= lt!473645 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473632 (rules!11032 acc!229) lt!473616 lt!473595))))

(assert (=> b!1413414 (= lt!473595 (last!67 (tokens!1762 acc!229)))))

(assert (=> b!1413414 (= lt!473616 call!95049)))

(assert (=> b!1413414 (= lt!473632 Lexer!2193)))

(assert (=> b!1413414 (= e!902322 e!902316)))

(declare-fun b!1413415 () Bool)

(assert (=> b!1413415 (= e!902318 e!902320)))

(declare-fun res!640062 () Bool)

(assert (=> b!1413415 (=> (not res!640062) (not e!902320))))

(assert (=> b!1413415 (= res!640062 (= (rules!11032 (get!4443 lt!473601)) (rules!11032 acc!229)))))

(declare-fun bm!95042 () Bool)

(assert (=> bm!95042 (= call!95046 call!95026)))

(declare-fun bm!95043 () Bool)

(assert (=> bm!95043 (= call!95036 (++!3767 (ite c!232259 lt!473649 lt!473639) (ite c!232259 lt!473637 lt!473614)))))

(declare-fun bm!95044 () Bool)

(assert (=> bm!95044 (= call!95048 (list!5672 (ite c!232257 (tokens!1762 acc!229) (ite c!232259 (tokens!1762 (v!21893 lt!473262)) (tokens!1762 acc!229)))))))

(declare-fun bm!95045 () Bool)

(assert (=> bm!95045 (= call!95058 (printList!653 (ite c!232257 Lexer!2193 (ite c!232259 lt!473598 lt!473643)) (ite c!232257 Nil!14450 (ite c!232259 lt!473637 lt!473638))))))

(declare-fun bm!95046 () Bool)

(declare-fun c!232258 () Bool)

(assert (=> bm!95046 (= c!232258 c!232259)))

(assert (=> bm!95046 (= call!95059 call!95039)))

(declare-fun b!1413416 () Bool)

(assert (=> b!1413416 (= e!902321 (++!3767 lt!473593 lt!473638))))

(declare-fun bm!95047 () Bool)

(assert (=> bm!95047 (= call!95054 call!95063)))

(declare-fun b!1413417 () Bool)

(assert (=> b!1413417 (= e!902317 e!902322)))

(assert (=> b!1413417 (= c!232259 (isEmpty!8840 (tokens!1762 acc!229)))))

(declare-fun bm!95048 () Bool)

(assert (=> bm!95048 (= call!95045 call!95058)))

(declare-fun bm!95049 () Bool)

(assert (=> bm!95049 (= call!95029 call!95060)))

(declare-fun bm!95050 () Bool)

(assert (=> bm!95050 (= call!95030 call!95042)))

(declare-fun e!902315 () List!14515)

(declare-fun bm!95051 () Bool)

(assert (=> bm!95051 (= call!95053 (++!3768 (ite c!232257 call!95050 e!902315) (ite c!232257 call!95039 call!95034)))))

(declare-fun bm!95052 () Bool)

(assert (=> bm!95052 (= call!95043 call!95062)))

(declare-fun bm!95053 () Bool)

(assert (=> bm!95053 (= call!95038 call!95044)))

(declare-fun bm!95054 () Bool)

(assert (=> bm!95054 (= call!95028 call!95037)))

(declare-fun b!1413418 () Bool)

(declare-fun ++!3769 (BalanceConc!9556 BalanceConc!9556) BalanceConc!9556)

(assert (=> b!1413418 (= e!902316 (Some!2769 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))

(declare-fun lt!473597 () LexerInterface!2195)

(assert (=> b!1413418 (= lt!473597 Lexer!2193)))

(assert (=> b!1413418 (= lt!473607 call!95049)))

(assert (=> b!1413418 (= lt!473622 call!95025)))

(declare-fun lt!473650 () Unit!20997)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!18 (LexerInterface!2195 List!14516 List!14516 List!14517) Unit!20997)

(assert (=> b!1413418 (= lt!473650 (tokensListTwoByTwoPredicateConcatSeparableTokensList!18 lt!473597 lt!473607 lt!473622 (rules!11032 acc!229)))))

(declare-fun lt!473606 () Unit!20997)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!18 (LexerInterface!2195 List!14517 List!14516 List!14516) Unit!20997)

(assert (=> b!1413418 (= lt!473606 (lemmaRulesProduceEachTokenIndividuallyConcat!18 lt!473597 (rules!11032 acc!229) lt!473607 lt!473622))))

(declare-fun rulesProduceEachTokenIndividuallyList!678 (LexerInterface!2195 List!14517 List!14516) Bool)

(assert (=> b!1413418 (rulesProduceEachTokenIndividuallyList!678 lt!473597 (rules!11032 acc!229) call!95057)))

(declare-fun lt!473608 () Unit!20997)

(assert (=> b!1413418 (= lt!473608 lt!473606)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!199 (LexerInterface!2195 List!14516 List!14517) Bool)

(assert (=> b!1413418 (tokensListTwoByTwoPredicateSeparableList!199 lt!473597 call!95057 (rules!11032 acc!229))))

(declare-fun lt!473619 () Unit!20997)

(assert (=> b!1413418 (= lt!473619 lt!473650)))

(assert (=> b!1413418 (= lt!473627 Lexer!2193)))

(assert (=> b!1413418 (= lt!473639 call!95049)))

(assert (=> b!1413418 (= lt!473614 call!95025)))

(declare-fun lt!473611 () Unit!20997)

(assert (=> b!1413418 (= lt!473611 (lemmaPrintConcatSameAsConcatPrint!18 lt!473627 lt!473639 lt!473614))))

(assert (=> b!1413418 (= call!95054 call!95040)))

(declare-fun lt!473644 () Unit!20997)

(assert (=> b!1413418 (= lt!473644 lt!473611)))

(declare-fun lt!473599 () Unit!20997)

(assert (=> b!1413418 (= lt!473599 call!95029)))

(assert (=> b!1413418 (= call!95061 call!95046)))

(declare-fun lt!473600 () Unit!20997)

(declare-fun Unit!21014 () Unit!20997)

(assert (=> b!1413418 (= lt!473600 Unit!21014)))

(declare-fun lt!473618 () Unit!20997)

(assert (=> b!1413418 (= lt!473618 call!95047)))

(assert (=> b!1413418 (= call!95033 call!95030)))

(declare-fun lt!473604 () Unit!20997)

(declare-fun Unit!21015 () Unit!20997)

(assert (=> b!1413418 (= lt!473604 Unit!21015)))

(declare-fun lt!473621 () PrintableTokens!804)

(assert (=> b!1413418 (= lt!473621 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))

(declare-fun lt!473635 () BalanceConc!9556)

(assert (=> b!1413418 (= lt!473635 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))

(declare-fun lt!473629 () Unit!20997)

(assert (=> b!1413418 (= lt!473629 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 acc!229) (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))

(assert (=> b!1413418 (= (print!961 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) (print!962 Lexer!2193 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))

(declare-fun lt!473620 () Unit!20997)

(declare-fun Unit!21016 () Unit!20997)

(assert (=> b!1413418 (= lt!473620 Unit!21016)))

(assert (=> b!1413418 (= lt!473643 Lexer!2193)))

(assert (=> b!1413418 (= lt!473593 call!95049)))

(assert (=> b!1413418 (= lt!473638 call!95025)))

(declare-fun lt!473647 () Unit!20997)

(assert (=> b!1413418 (= lt!473647 call!95038)))

(assert (=> b!1413418 (= call!95059 call!95028)))

(declare-fun lt!473590 () Unit!20997)

(assert (=> b!1413418 (= lt!473590 lt!473647)))

(declare-fun bm!95055 () Bool)

(assert (=> bm!95055 (= call!95025 call!95027)))

(declare-fun bm!95056 () Bool)

(assert (=> bm!95056 (= call!95055 (printList!653 (ite c!232257 lt!473642 (ite c!232259 Lexer!2193 lt!473643)) (ite c!232257 lt!473589 (ite c!232259 Nil!14450 lt!473593))))))

(declare-fun b!1413419 () Bool)

(assert (=> b!1413419 (= e!902319 call!95040)))

(declare-fun b!1413420 () Bool)

(assert (=> b!1413420 (= e!902315 call!95043)))

(declare-fun b!1413421 () Bool)

(declare-fun res!640060 () Bool)

(assert (=> b!1413421 (=> (not res!640060) (not e!902320))))

(assert (=> b!1413421 (= res!640060 (= (list!5672 (tokens!1762 (get!4443 lt!473601))) (++!3767 (list!5672 (tokens!1762 acc!229)) (list!5672 (tokens!1762 (v!21893 lt!473262))))))))

(declare-fun b!1413422 () Bool)

(assert (=> b!1413422 (= e!902323 Nil!14449)))

(declare-fun bm!95057 () Bool)

(assert (=> bm!95057 (= call!95060 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))

(declare-fun b!1413423 () Bool)

(assert (=> b!1413423 (= e!902315 call!95050)))

(declare-fun bm!95058 () Bool)

(declare-fun charsOf!1470 (Token!4684) BalanceConc!9554)

(assert (=> bm!95058 (= call!95041 (charsOf!1470 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605))))))

(assert (= (and d!404268 c!232257) b!1413410))

(assert (= (and d!404268 (not c!232257)) b!1413417))

(assert (= (and b!1413410 c!232255) b!1413408))

(assert (= (and b!1413410 (not c!232255)) b!1413422))

(assert (= (and b!1413417 c!232259) b!1413409))

(assert (= (and b!1413417 (not c!232259)) b!1413414))

(assert (= (and b!1413409 c!232254) b!1413419))

(assert (= (and b!1413409 (not c!232254)) b!1413411))

(assert (= (and b!1413414 c!232256) b!1413418))

(assert (= (and b!1413414 (not c!232256)) b!1413412))

(assert (= (or b!1413409 b!1413418) bm!95043))

(assert (= (or b!1413409 b!1413418) bm!95048))

(assert (= (or b!1413409 b!1413418) bm!95053))

(assert (= (or b!1413409 b!1413414 b!1413418) bm!95027))

(assert (= (or b!1413409 b!1413418) bm!95042))

(assert (= (or b!1413409 b!1413418) bm!95052))

(assert (= (or b!1413409 b!1413418) bm!95020))

(assert (= (or b!1413409 b!1413414 b!1413418) bm!95055))

(assert (= (or b!1413419 b!1413418) bm!95041))

(assert (= (or b!1413409 b!1413418) bm!95040))

(assert (= (or b!1413409 b!1413418) bm!95031))

(assert (= (or b!1413409 b!1413418) bm!95050))

(assert (= (or b!1413409 b!1413418) bm!95049))

(assert (= (or b!1413409 b!1413418) bm!95047))

(assert (= (or b!1413409 b!1413418) bm!95046))

(assert (= (and bm!95046 c!232258) b!1413407))

(assert (= (and bm!95046 (not c!232258)) b!1413416))

(assert (= (or b!1413409 b!1413418) bm!95024))

(assert (= (or b!1413409 b!1413418) bm!95054))

(assert (= (or b!1413419 b!1413418) bm!95034))

(assert (= (and bm!95034 c!232260) b!1413423))

(assert (= (and bm!95034 (not c!232260)) b!1413420))

(assert (= (or b!1413408 b!1413423) bm!95058))

(assert (= (or b!1413410 bm!95041) bm!95035))

(assert (= (or b!1413410 bm!95050) bm!95037))

(assert (= (or b!1413410 bm!95040) bm!95029))

(assert (= (or b!1413410 bm!95055) bm!95036))

(assert (= (or b!1413410 b!1413409) bm!95021))

(assert (= (or b!1413410 bm!95048) bm!95045))

(assert (= (or b!1413410 bm!95042) bm!95038))

(assert (= (or b!1413410 bm!95027) bm!95044))

(assert (= (or b!1413410 bm!95053) bm!95032))

(assert (= (or b!1413410 b!1413418) bm!95025))

(assert (= (or b!1413410 bm!95020) bm!95033))

(assert (= (or b!1413410 bm!95031) bm!95056))

(assert (= (or b!1413408 bm!95046) bm!95028))

(assert (= (or b!1413410 bm!95052) bm!95026))

(assert (= (or b!1413410 bm!95049) bm!95057))

(assert (= (or b!1413410 bm!95024) bm!95030))

(assert (= (or b!1413410 bm!95047) bm!95023))

(assert (= (or b!1413410 bm!95054) bm!95039))

(assert (= (or b!1413408 b!1413423) bm!95022))

(assert (= (or b!1413408 bm!95034) bm!95051))

(assert (= (and d!404268 (not res!640061)) b!1413415))

(assert (= (and b!1413415 res!640062) b!1413421))

(assert (= (and b!1413421 res!640060) b!1413413))

(declare-fun m!1594901 () Bool)

(assert (=> bm!95026 m!1594901))

(declare-fun m!1594903 () Bool)

(assert (=> bm!95044 m!1594903))

(declare-fun m!1594905 () Bool)

(assert (=> b!1413416 m!1594905))

(declare-fun m!1594907 () Bool)

(assert (=> bm!95023 m!1594907))

(declare-fun m!1594909 () Bool)

(assert (=> bm!95037 m!1594909))

(declare-fun m!1594911 () Bool)

(assert (=> b!1413415 m!1594911))

(declare-fun m!1594913 () Bool)

(assert (=> bm!95045 m!1594913))

(declare-fun m!1594915 () Bool)

(assert (=> bm!95032 m!1594915))

(declare-fun m!1594917 () Bool)

(assert (=> b!1413413 m!1594917))

(declare-fun m!1594919 () Bool)

(assert (=> b!1413413 m!1594919))

(declare-fun m!1594921 () Bool)

(assert (=> b!1413413 m!1594921))

(declare-fun m!1594923 () Bool)

(assert (=> b!1413413 m!1594923))

(assert (=> b!1413413 m!1594917))

(assert (=> b!1413413 m!1594921))

(declare-fun m!1594925 () Bool)

(assert (=> b!1413413 m!1594925))

(assert (=> b!1413413 m!1594919))

(assert (=> b!1413413 m!1594925))

(assert (=> b!1413413 m!1594911))

(declare-fun m!1594927 () Bool)

(assert (=> b!1413413 m!1594927))

(assert (=> b!1413413 m!1594911))

(assert (=> b!1413413 m!1594927))

(declare-fun m!1594929 () Bool)

(assert (=> b!1413413 m!1594929))

(declare-fun m!1594931 () Bool)

(assert (=> b!1413418 m!1594931))

(declare-fun m!1594933 () Bool)

(assert (=> b!1413418 m!1594933))

(declare-fun m!1594935 () Bool)

(assert (=> b!1413418 m!1594935))

(declare-fun m!1594937 () Bool)

(assert (=> b!1413418 m!1594937))

(declare-fun m!1594939 () Bool)

(assert (=> b!1413418 m!1594939))

(declare-fun m!1594941 () Bool)

(assert (=> b!1413418 m!1594941))

(declare-fun m!1594943 () Bool)

(assert (=> b!1413418 m!1594943))

(assert (=> b!1413418 m!1594941))

(assert (=> b!1413418 m!1594935))

(declare-fun m!1594945 () Bool)

(assert (=> b!1413418 m!1594945))

(assert (=> b!1413418 m!1594941))

(declare-fun m!1594947 () Bool)

(assert (=> b!1413418 m!1594947))

(declare-fun m!1594949 () Bool)

(assert (=> b!1413418 m!1594949))

(declare-fun m!1594951 () Bool)

(assert (=> bm!95029 m!1594951))

(declare-fun m!1594953 () Bool)

(assert (=> b!1413414 m!1594953))

(declare-fun m!1594955 () Bool)

(assert (=> b!1413414 m!1594955))

(declare-fun m!1594957 () Bool)

(assert (=> b!1413414 m!1594957))

(assert (=> b!1413414 m!1594957))

(declare-fun m!1594959 () Bool)

(assert (=> b!1413414 m!1594959))

(declare-fun m!1594961 () Bool)

(assert (=> b!1413414 m!1594961))

(assert (=> b!1413414 m!1594959))

(declare-fun m!1594963 () Bool)

(assert (=> b!1413414 m!1594963))

(declare-fun m!1594965 () Bool)

(assert (=> b!1413414 m!1594965))

(declare-fun m!1594967 () Bool)

(assert (=> bm!95025 m!1594967))

(declare-fun m!1594969 () Bool)

(assert (=> b!1413421 m!1594969))

(declare-fun m!1594971 () Bool)

(assert (=> b!1413421 m!1594971))

(declare-fun m!1594973 () Bool)

(assert (=> b!1413421 m!1594973))

(assert (=> b!1413421 m!1594969))

(assert (=> b!1413421 m!1594911))

(assert (=> b!1413421 m!1594971))

(declare-fun m!1594975 () Bool)

(assert (=> b!1413421 m!1594975))

(declare-fun m!1594977 () Bool)

(assert (=> bm!95022 m!1594977))

(declare-fun m!1594981 () Bool)

(assert (=> bm!95057 m!1594981))

(declare-fun m!1594985 () Bool)

(assert (=> b!1413417 m!1594985))

(declare-fun m!1594987 () Bool)

(assert (=> d!404268 m!1594987))

(declare-fun m!1594989 () Bool)

(assert (=> d!404268 m!1594989))

(declare-fun m!1594991 () Bool)

(assert (=> d!404268 m!1594991))

(declare-fun m!1594993 () Bool)

(assert (=> d!404268 m!1594993))

(declare-fun m!1594995 () Bool)

(assert (=> bm!95038 m!1594995))

(declare-fun m!1594997 () Bool)

(assert (=> bm!95033 m!1594997))

(declare-fun m!1595001 () Bool)

(assert (=> bm!95036 m!1595001))

(declare-fun m!1595003 () Bool)

(assert (=> bm!95058 m!1595003))

(declare-fun m!1595005 () Bool)

(assert (=> bm!95028 m!1595005))

(declare-fun m!1595007 () Bool)

(assert (=> bm!95051 m!1595007))

(declare-fun m!1595009 () Bool)

(assert (=> bm!95035 m!1595009))

(declare-fun m!1595011 () Bool)

(assert (=> bm!95021 m!1595011))

(declare-fun m!1595013 () Bool)

(assert (=> bm!95043 m!1595013))

(declare-fun m!1595015 () Bool)

(assert (=> bm!95030 m!1595015))

(declare-fun m!1595017 () Bool)

(assert (=> bm!95039 m!1595017))

(declare-fun m!1595019 () Bool)

(assert (=> bm!95056 m!1595019))

(assert (=> b!1413298 d!404268))

(declare-fun d!404286 () Bool)

(declare-fun c!232271 () Bool)

(assert (=> d!404286 (= c!232271 ((_ is Node!4808) (c!232208 (tokens!1762 sep!3))))))

(declare-fun e!902338 () Bool)

(assert (=> d!404286 (= (inv!18909 (c!232208 (tokens!1762 sep!3))) e!902338)))

(declare-fun b!1413449 () Bool)

(declare-fun inv!18913 (Conc!4808) Bool)

(assert (=> b!1413449 (= e!902338 (inv!18913 (c!232208 (tokens!1762 sep!3))))))

(declare-fun b!1413450 () Bool)

(declare-fun e!902339 () Bool)

(assert (=> b!1413450 (= e!902338 e!902339)))

(declare-fun res!640068 () Bool)

(assert (=> b!1413450 (= res!640068 (not ((_ is Leaf!7260) (c!232208 (tokens!1762 sep!3)))))))

(assert (=> b!1413450 (=> res!640068 e!902339)))

(declare-fun b!1413451 () Bool)

(declare-fun inv!18914 (Conc!4808) Bool)

(assert (=> b!1413451 (= e!902339 (inv!18914 (c!232208 (tokens!1762 sep!3))))))

(assert (= (and d!404286 c!232271) b!1413449))

(assert (= (and d!404286 (not c!232271)) b!1413450))

(assert (= (and b!1413450 (not res!640068)) b!1413451))

(declare-fun m!1595023 () Bool)

(assert (=> b!1413449 m!1595023))

(declare-fun m!1595025 () Bool)

(assert (=> b!1413451 m!1595025))

(assert (=> b!1413297 d!404286))

(declare-fun bm!95099 () Bool)

(declare-fun call!95129 () BalanceConc!9554)

(assert (=> bm!95099 (= call!95129 (printTailRec!635 Lexer!2193 (tokens!1762 sep!3) 0 (BalanceConc!9555 Empty!4807)))))

(declare-fun bm!95100 () Bool)

(declare-fun call!95128 () List!14515)

(declare-fun call!95119 () BalanceConc!9554)

(assert (=> bm!95100 (= call!95128 (list!5671 call!95119))))

(declare-fun call!95114 () List!14516)

(declare-fun lt!473758 () LexerInterface!2195)

(declare-fun call!95141 () List!14515)

(declare-fun call!95105 () List!14516)

(declare-fun c!232275 () Bool)

(declare-fun bm!95101 () Bool)

(declare-fun c!232277 () Bool)

(declare-fun lt!473729 () LexerInterface!2195)

(assert (=> bm!95101 (= call!95141 (printList!653 (ite c!232275 Lexer!2193 (ite c!232277 lt!473729 lt!473758)) (ite c!232275 call!95105 call!95114)))))

(declare-fun bm!95102 () Bool)

(declare-fun call!95125 () Unit!20997)

(declare-fun call!95134 () Unit!20997)

(assert (=> bm!95102 (= call!95125 call!95134)))

(declare-fun lt!473748 () List!14516)

(declare-fun lt!473720 () List!14516)

(declare-fun bm!95103 () Bool)

(declare-fun lt!473753 () List!14516)

(declare-fun call!95135 () List!14516)

(declare-fun lt!473738 () List!14516)

(assert (=> bm!95103 (= call!95135 (++!3767 (ite c!232275 lt!473720 lt!473738) (ite c!232275 lt!473748 lt!473753)))))

(declare-fun b!1413452 () Bool)

(declare-fun e!902346 () List!14516)

(declare-fun call!95127 () List!14516)

(assert (=> b!1413452 (= e!902346 call!95127)))

(declare-fun lt!473773 () LexerInterface!2195)

(declare-fun lt!473780 () List!14516)

(declare-fun bm!95104 () Bool)

(declare-fun lt!473770 () List!14516)

(declare-fun call!95140 () List!14515)

(assert (=> bm!95104 (= call!95140 (printList!653 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473758)) (ite c!232275 call!95135 (ite c!232277 lt!473780 lt!473770))))))

(declare-fun b!1413453 () Bool)

(declare-fun e!902348 () List!14515)

(declare-fun call!95131 () List!14515)

(assert (=> b!1413453 (= e!902348 call!95131)))

(declare-fun bm!95105 () Bool)

(declare-fun call!95126 () List!14516)

(assert (=> bm!95105 (= call!95127 call!95126)))

(declare-fun lt!473774 () LexerInterface!2195)

(declare-fun call!95117 () List!14515)

(declare-fun bm!95106 () Bool)

(declare-fun lt!473756 () List!14516)

(assert (=> bm!95106 (= call!95117 (printList!653 (ite (or c!232275 c!232277) Lexer!2193 lt!473774) (ite c!232275 (t!123793 lt!473756) e!902346)))))

(declare-fun call!95130 () BalanceConc!9554)

(declare-fun bm!95107 () Bool)

(assert (=> bm!95107 (= call!95130 (print!961 (ite c!232275 (head!2690 objs!24) sep!3)))))

(declare-fun bm!95108 () Bool)

(declare-fun call!95103 () List!14516)

(assert (=> bm!95108 (= call!95134 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))

(declare-fun b!1413454 () Bool)

(declare-fun lt!473757 () Unit!20997)

(declare-fun Unit!21020 () Unit!20997)

(assert (=> b!1413454 (= lt!473757 Unit!21020)))

(declare-fun call!95137 () List!14515)

(declare-fun e!902344 () List!14515)

(assert (=> b!1413454 (= call!95137 e!902344)))

(declare-fun c!232272 () Bool)

(declare-fun lt!473736 () List!14516)

(assert (=> b!1413454 (= c!232272 ((_ is Cons!14450) lt!473736))))

(assert (=> b!1413454 (= lt!473736 call!95127)))

(declare-fun lt!473743 () Unit!20997)

(declare-fun Unit!21021 () Unit!20997)

(assert (=> b!1413454 (= lt!473743 Unit!21021)))

(declare-fun call!95108 () BalanceConc!9554)

(assert (=> b!1413454 (= call!95108 call!95129)))

(declare-fun lt!473727 () Unit!20997)

(declare-fun Unit!21022 () Unit!20997)

(assert (=> b!1413454 (= lt!473727 Unit!21022)))

(declare-fun call!95111 () BalanceConc!9554)

(assert (=> b!1413454 (= call!95111 call!95108)))

(declare-fun lt!473759 () Unit!20997)

(assert (=> b!1413454 (= lt!473759 call!95125)))

(declare-fun lt!473755 () Unit!20997)

(declare-fun Unit!21023 () Unit!20997)

(assert (=> b!1413454 (= lt!473755 Unit!21023)))

(declare-fun call!95139 () BalanceConc!9554)

(declare-fun call!95124 () BalanceConc!9554)

(assert (=> b!1413454 (= call!95139 call!95124)))

(declare-fun lt!473771 () Unit!20997)

(declare-fun call!95107 () Unit!20997)

(assert (=> b!1413454 (= lt!473771 call!95107)))

(declare-fun lt!473725 () Unit!20997)

(declare-fun Unit!21024 () Unit!20997)

(assert (=> b!1413454 (= lt!473725 Unit!21024)))

(declare-fun call!95109 () List!14515)

(assert (=> b!1413454 (= call!95109 Nil!14449)))

(declare-fun lt!473733 () Unit!20997)

(declare-fun lt!473782 () Unit!20997)

(assert (=> b!1413454 (= lt!473733 lt!473782)))

(declare-fun call!95132 () List!14515)

(declare-fun call!95106 () List!14515)

(assert (=> b!1413454 (= call!95132 call!95106)))

(declare-fun call!95116 () Unit!20997)

(assert (=> b!1413454 (= lt!473782 call!95116)))

(declare-fun lt!473768 () List!14516)

(assert (=> b!1413454 (= lt!473768 call!95127)))

(assert (=> b!1413454 (= lt!473780 Nil!14450)))

(assert (=> b!1413454 (= lt!473729 Lexer!2193)))

(declare-fun e!902347 () Option!2770)

(assert (=> b!1413454 (= e!902347 (Some!2769 sep!3))))

(declare-fun b!1413455 () Bool)

(declare-fun e!902342 () Option!2770)

(assert (=> b!1413455 (= e!902342 (Some!2769 (head!2690 objs!24)))))

(assert (=> b!1413455 (= lt!473773 Lexer!2193)))

(assert (=> b!1413455 (= lt!473720 call!95126)))

(assert (=> b!1413455 (= lt!473748 Nil!14450)))

(declare-fun lt!473777 () Unit!20997)

(declare-fun call!95122 () Unit!20997)

(assert (=> b!1413455 (= lt!473777 call!95122)))

(declare-fun call!95115 () List!14515)

(assert (=> b!1413455 (= call!95140 call!95115)))

(declare-fun lt!473744 () Unit!20997)

(assert (=> b!1413455 (= lt!473744 lt!473777)))

(declare-fun call!95136 () List!14515)

(assert (=> b!1413455 (= call!95136 Nil!14449)))

(declare-fun lt!473746 () Unit!20997)

(declare-fun Unit!21028 () Unit!20997)

(assert (=> b!1413455 (= lt!473746 Unit!21028)))

(declare-fun lt!473722 () Unit!20997)

(assert (=> b!1413455 (= lt!473722 call!95134)))

(declare-fun call!95104 () BalanceConc!9554)

(assert (=> b!1413455 (= call!95130 call!95104)))

(declare-fun lt!473740 () Unit!20997)

(declare-fun Unit!21030 () Unit!20997)

(assert (=> b!1413455 (= lt!473740 Unit!21030)))

(declare-fun lt!473762 () Unit!20997)

(declare-fun call!95138 () Unit!20997)

(assert (=> b!1413455 (= lt!473762 call!95138)))

(declare-fun call!95110 () BalanceConc!9554)

(declare-fun call!95120 () BalanceConc!9554)

(assert (=> b!1413455 (= call!95110 call!95120)))

(declare-fun lt!473741 () Unit!20997)

(declare-fun Unit!21032 () Unit!20997)

(assert (=> b!1413455 (= lt!473741 Unit!21032)))

(assert (=> b!1413455 (= call!95120 call!95129)))

(declare-fun lt!473723 () Unit!20997)

(declare-fun Unit!21033 () Unit!20997)

(assert (=> b!1413455 (= lt!473723 Unit!21033)))

(assert (=> b!1413455 (= lt!473756 call!95105)))

(declare-fun c!232273 () Bool)

(assert (=> b!1413455 (= c!232273 ((_ is Cons!14450) lt!473756))))

(assert (=> b!1413455 (= call!95141 e!902348)))

(declare-fun lt!473767 () Unit!20997)

(declare-fun Unit!21034 () Unit!20997)

(assert (=> b!1413455 (= lt!473767 Unit!21034)))

(declare-fun bm!95109 () Bool)

(declare-fun call!95133 () List!14515)

(assert (=> bm!95109 (= call!95109 call!95133)))

(declare-fun bm!95110 () Bool)

(declare-fun lt!473724 () List!14516)

(declare-fun lt!473769 () List!14516)

(assert (=> bm!95110 (= call!95122 (lemmaPrintConcatSameAsConcatPrint!18 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473774)) (ite c!232275 lt!473720 (ite c!232277 lt!473780 lt!473724)) (ite c!232275 lt!473748 (ite c!232277 lt!473768 lt!473769))))))

(declare-fun bm!95111 () Bool)

(assert (=> bm!95111 (= call!95110 (print!961 (ite c!232275 sep!3 (head!2690 objs!24))))))

(declare-fun bm!95112 () Bool)

(declare-fun c!232278 () Bool)

(assert (=> bm!95112 (= c!232278 c!232277)))

(declare-fun call!95118 () List!14515)

(assert (=> bm!95112 (= call!95118 call!95131)))

(declare-fun lt!473745 () List!14516)

(declare-fun bm!95113 () Bool)

(declare-fun call!95113 () List!14515)

(assert (=> bm!95113 (= call!95113 (printList!653 (ite c!232275 lt!473773 (ite c!232277 Lexer!2193 lt!473758)) (ite c!232275 lt!473748 (ite c!232277 (t!123793 lt!473736) lt!473745))))))

(declare-fun bm!95114 () Bool)

(assert (=> bm!95114 (= call!95105 (list!5672 (ite c!232275 (tokens!1762 sep!3) (ite c!232277 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))

(declare-fun b!1413456 () Bool)

(assert (=> b!1413456 (= e!902344 Nil!14449)))

(declare-fun bm!95115 () Bool)

(assert (=> bm!95115 (= call!95120 (print!962 Lexer!2193 (tokens!1762 sep!3)))))

(declare-fun bm!95116 () Bool)

(assert (=> bm!95116 (= call!95104 (print!962 Lexer!2193 (tokens!1762 (head!2690 objs!24))))))

(declare-fun bm!95098 () Bool)

(assert (=> bm!95098 (= call!95139 call!95110)))

(declare-fun d!404288 () Bool)

(declare-fun e!902343 () Bool)

(assert (=> d!404288 e!902343))

(declare-fun res!640070 () Bool)

(assert (=> d!404288 (=> res!640070 e!902343)))

(declare-fun lt!473732 () Option!2770)

(assert (=> d!404288 (= res!640070 (isEmpty!8839 lt!473732))))

(assert (=> d!404288 (= lt!473732 e!902342)))

(assert (=> d!404288 (= c!232275 (isEmpty!8840 (tokens!1762 sep!3)))))

(declare-fun lt!473734 () Unit!20997)

(assert (=> d!404288 (= lt!473734 (lemmaInvariant!225 (head!2690 objs!24)))))

(declare-fun lt!473783 () Unit!20997)

(assert (=> d!404288 (= lt!473783 (lemmaInvariant!225 sep!3))))

(assert (=> d!404288 (= (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3))))

(assert (=> d!404288 (= (append!430 (head!2690 objs!24) sep!3) lt!473732)))

(declare-fun bm!95117 () Bool)

(declare-fun call!95123 () List!14515)

(declare-fun call!95121 () List!14515)

(assert (=> bm!95117 (= call!95115 (++!3768 (ite c!232275 call!95133 (ite c!232277 call!95121 call!95109)) (ite c!232275 call!95113 call!95123)))))

(declare-fun bm!95118 () Bool)

(assert (=> bm!95118 (= call!95111 call!95130)))

(declare-fun b!1413457 () Bool)

(declare-fun e!902341 () Option!2770)

(assert (=> b!1413457 (= e!902341 None!2769)))

(declare-fun bm!95119 () Bool)

(declare-fun call!95112 () List!14515)

(assert (=> bm!95119 (= call!95112 call!95113)))

(declare-fun e!902345 () Bool)

(declare-fun b!1413458 () Bool)

(assert (=> b!1413458 (= e!902345 (= (list!5671 (print!961 (get!4443 lt!473732))) (++!3768 (list!5671 (print!961 (head!2690 objs!24))) (list!5671 (print!961 sep!3)))))))

(declare-fun b!1413459 () Bool)

(declare-fun c!232274 () Bool)

(assert (=> b!1413459 (= c!232274 (separableTokensPredicate!476 Lexer!2193 (last!67 (tokens!1762 (head!2690 objs!24))) (head!2694 (tokens!1762 sep!3)) (rules!11032 (head!2690 objs!24))))))

(declare-fun lt!473772 () Unit!20997)

(declare-fun lt!473754 () Unit!20997)

(assert (=> b!1413459 (= lt!473772 lt!473754)))

(declare-fun lt!473779 () LexerInterface!2195)

(declare-fun lt!473764 () Token!4684)

(assert (=> b!1413459 (rulesProduceIndividualToken!1162 lt!473779 (rules!11032 (head!2690 objs!24)) lt!473764)))

(declare-fun lt!473761 () List!14516)

(assert (=> b!1413459 (= lt!473754 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473779 (rules!11032 (head!2690 objs!24)) lt!473761 lt!473764))))

(assert (=> b!1413459 (= lt!473764 (head!2694 (tokens!1762 sep!3)))))

(assert (=> b!1413459 (= lt!473761 call!95103)))

(assert (=> b!1413459 (= lt!473779 Lexer!2193)))

(declare-fun lt!473765 () Unit!20997)

(declare-fun lt!473776 () Unit!20997)

(assert (=> b!1413459 (= lt!473765 lt!473776)))

(declare-fun lt!473763 () LexerInterface!2195)

(declare-fun lt!473726 () Token!4684)

(assert (=> b!1413459 (rulesProduceIndividualToken!1162 lt!473763 (rules!11032 (head!2690 objs!24)) lt!473726)))

(declare-fun lt!473747 () List!14516)

(assert (=> b!1413459 (= lt!473776 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473763 (rules!11032 (head!2690 objs!24)) lt!473747 lt!473726))))

(assert (=> b!1413459 (= lt!473726 (last!67 (tokens!1762 (head!2690 objs!24))))))

(assert (=> b!1413459 (= lt!473747 call!95127)))

(assert (=> b!1413459 (= lt!473763 Lexer!2193)))

(assert (=> b!1413459 (= e!902347 e!902341)))

(declare-fun b!1413460 () Bool)

(assert (=> b!1413460 (= e!902343 e!902345)))

(declare-fun res!640071 () Bool)

(assert (=> b!1413460 (=> (not res!640071) (not e!902345))))

(assert (=> b!1413460 (= res!640071 (= (rules!11032 (get!4443 lt!473732)) (rules!11032 (head!2690 objs!24))))))

(declare-fun bm!95120 () Bool)

(assert (=> bm!95120 (= call!95124 call!95104)))

(declare-fun bm!95121 () Bool)

(assert (=> bm!95121 (= call!95114 (++!3767 (ite c!232277 lt!473780 lt!473770) (ite c!232277 lt!473768 lt!473745)))))

(declare-fun bm!95122 () Bool)

(assert (=> bm!95122 (= call!95126 (list!5672 (ite c!232275 (tokens!1762 (head!2690 objs!24)) (ite c!232277 (tokens!1762 sep!3) (tokens!1762 (head!2690 objs!24))))))))

(declare-fun bm!95123 () Bool)

(assert (=> bm!95123 (= call!95136 (printList!653 (ite c!232275 Lexer!2193 (ite c!232277 lt!473729 lt!473774)) (ite c!232275 Nil!14450 (ite c!232277 lt!473768 lt!473769))))))

(declare-fun bm!95124 () Bool)

(declare-fun c!232276 () Bool)

(assert (=> bm!95124 (= c!232276 c!232277)))

(assert (=> bm!95124 (= call!95137 call!95117)))

(declare-fun b!1413461 () Bool)

(assert (=> b!1413461 (= e!902346 (++!3767 lt!473724 lt!473769))))

(declare-fun bm!95125 () Bool)

(assert (=> bm!95125 (= call!95132 call!95141)))

(declare-fun b!1413462 () Bool)

(assert (=> b!1413462 (= e!902342 e!902347)))

(assert (=> b!1413462 (= c!232277 (isEmpty!8840 (tokens!1762 (head!2690 objs!24))))))

(declare-fun bm!95126 () Bool)

(assert (=> bm!95126 (= call!95123 call!95136)))

(declare-fun bm!95127 () Bool)

(assert (=> bm!95127 (= call!95107 call!95138)))

(declare-fun bm!95128 () Bool)

(assert (=> bm!95128 (= call!95108 call!95120)))

(declare-fun e!902340 () List!14515)

(declare-fun bm!95129 () Bool)

(assert (=> bm!95129 (= call!95131 (++!3768 (ite c!232275 call!95128 e!902340) (ite c!232275 call!95117 call!95112)))))

(declare-fun bm!95130 () Bool)

(assert (=> bm!95130 (= call!95121 call!95140)))

(declare-fun bm!95131 () Bool)

(assert (=> bm!95131 (= call!95116 call!95122)))

(declare-fun bm!95132 () Bool)

(assert (=> bm!95132 (= call!95106 call!95115)))

(declare-fun b!1413463 () Bool)

(assert (=> b!1413463 (= e!902341 (Some!2769 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))

(declare-fun lt!473728 () LexerInterface!2195)

(assert (=> b!1413463 (= lt!473728 Lexer!2193)))

(assert (=> b!1413463 (= lt!473738 call!95127)))

(assert (=> b!1413463 (= lt!473753 call!95103)))

(declare-fun lt!473781 () Unit!20997)

(assert (=> b!1413463 (= lt!473781 (tokensListTwoByTwoPredicateConcatSeparableTokensList!18 lt!473728 lt!473738 lt!473753 (rules!11032 (head!2690 objs!24))))))

(declare-fun lt!473737 () Unit!20997)

(assert (=> b!1413463 (= lt!473737 (lemmaRulesProduceEachTokenIndividuallyConcat!18 lt!473728 (rules!11032 (head!2690 objs!24)) lt!473738 lt!473753))))

(assert (=> b!1413463 (rulesProduceEachTokenIndividuallyList!678 lt!473728 (rules!11032 (head!2690 objs!24)) call!95135)))

(declare-fun lt!473739 () Unit!20997)

(assert (=> b!1413463 (= lt!473739 lt!473737)))

(assert (=> b!1413463 (tokensListTwoByTwoPredicateSeparableList!199 lt!473728 call!95135 (rules!11032 (head!2690 objs!24)))))

(declare-fun lt!473750 () Unit!20997)

(assert (=> b!1413463 (= lt!473750 lt!473781)))

(assert (=> b!1413463 (= lt!473758 Lexer!2193)))

(assert (=> b!1413463 (= lt!473770 call!95127)))

(assert (=> b!1413463 (= lt!473745 call!95103)))

(declare-fun lt!473742 () Unit!20997)

(assert (=> b!1413463 (= lt!473742 (lemmaPrintConcatSameAsConcatPrint!18 lt!473758 lt!473770 lt!473745))))

(assert (=> b!1413463 (= call!95132 call!95118)))

(declare-fun lt!473775 () Unit!20997)

(assert (=> b!1413463 (= lt!473775 lt!473742)))

(declare-fun lt!473730 () Unit!20997)

(assert (=> b!1413463 (= lt!473730 call!95107)))

(assert (=> b!1413463 (= call!95139 call!95124)))

(declare-fun lt!473731 () Unit!20997)

(declare-fun Unit!21035 () Unit!20997)

(assert (=> b!1413463 (= lt!473731 Unit!21035)))

(declare-fun lt!473749 () Unit!20997)

(assert (=> b!1413463 (= lt!473749 call!95125)))

(assert (=> b!1413463 (= call!95111 call!95108)))

(declare-fun lt!473735 () Unit!20997)

(declare-fun Unit!21036 () Unit!20997)

(assert (=> b!1413463 (= lt!473735 Unit!21036)))

(declare-fun lt!473752 () PrintableTokens!804)

(assert (=> b!1413463 (= lt!473752 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))

(declare-fun lt!473766 () BalanceConc!9556)

(assert (=> b!1413463 (= lt!473766 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))

(declare-fun lt!473760 () Unit!20997)

(assert (=> b!1413463 (= lt!473760 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (head!2690 objs!24)) (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))

(assert (=> b!1413463 (= (print!961 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) (print!962 Lexer!2193 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))

(declare-fun lt!473751 () Unit!20997)

(declare-fun Unit!21037 () Unit!20997)

(assert (=> b!1413463 (= lt!473751 Unit!21037)))

(assert (=> b!1413463 (= lt!473774 Lexer!2193)))

(assert (=> b!1413463 (= lt!473724 call!95127)))

(assert (=> b!1413463 (= lt!473769 call!95103)))

(declare-fun lt!473778 () Unit!20997)

(assert (=> b!1413463 (= lt!473778 call!95116)))

(assert (=> b!1413463 (= call!95137 call!95106)))

(declare-fun lt!473721 () Unit!20997)

(assert (=> b!1413463 (= lt!473721 lt!473778)))

(declare-fun bm!95133 () Bool)

(assert (=> bm!95133 (= call!95103 call!95105)))

(declare-fun bm!95134 () Bool)

(assert (=> bm!95134 (= call!95133 (printList!653 (ite c!232275 lt!473773 (ite c!232277 Lexer!2193 lt!473774)) (ite c!232275 lt!473720 (ite c!232277 Nil!14450 lt!473724))))))

(declare-fun b!1413464 () Bool)

(assert (=> b!1413464 (= e!902344 call!95118)))

(declare-fun b!1413465 () Bool)

(assert (=> b!1413465 (= e!902340 call!95121)))

(declare-fun b!1413466 () Bool)

(declare-fun res!640069 () Bool)

(assert (=> b!1413466 (=> (not res!640069) (not e!902345))))

(assert (=> b!1413466 (= res!640069 (= (list!5672 (tokens!1762 (get!4443 lt!473732))) (++!3767 (list!5672 (tokens!1762 (head!2690 objs!24))) (list!5672 (tokens!1762 sep!3)))))))

(declare-fun b!1413467 () Bool)

(assert (=> b!1413467 (= e!902348 Nil!14449)))

(declare-fun bm!95135 () Bool)

(assert (=> bm!95135 (= call!95138 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))

(declare-fun b!1413468 () Bool)

(assert (=> b!1413468 (= e!902340 call!95128)))

(declare-fun bm!95136 () Bool)

(assert (=> bm!95136 (= call!95119 (charsOf!1470 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736))))))

(assert (= (and d!404288 c!232275) b!1413455))

(assert (= (and d!404288 (not c!232275)) b!1413462))

(assert (= (and b!1413455 c!232273) b!1413453))

(assert (= (and b!1413455 (not c!232273)) b!1413467))

(assert (= (and b!1413462 c!232277) b!1413454))

(assert (= (and b!1413462 (not c!232277)) b!1413459))

(assert (= (and b!1413454 c!232272) b!1413464))

(assert (= (and b!1413454 (not c!232272)) b!1413456))

(assert (= (and b!1413459 c!232274) b!1413463))

(assert (= (and b!1413459 (not c!232274)) b!1413457))

(assert (= (or b!1413454 b!1413463) bm!95121))

(assert (= (or b!1413454 b!1413463) bm!95126))

(assert (= (or b!1413454 b!1413463) bm!95131))

(assert (= (or b!1413454 b!1413459 b!1413463) bm!95105))

(assert (= (or b!1413454 b!1413463) bm!95120))

(assert (= (or b!1413454 b!1413463) bm!95130))

(assert (= (or b!1413454 b!1413463) bm!95098))

(assert (= (or b!1413454 b!1413459 b!1413463) bm!95133))

(assert (= (or b!1413464 b!1413463) bm!95119))

(assert (= (or b!1413454 b!1413463) bm!95118))

(assert (= (or b!1413454 b!1413463) bm!95109))

(assert (= (or b!1413454 b!1413463) bm!95128))

(assert (= (or b!1413454 b!1413463) bm!95127))

(assert (= (or b!1413454 b!1413463) bm!95125))

(assert (= (or b!1413454 b!1413463) bm!95124))

(assert (= (and bm!95124 c!232276) b!1413452))

(assert (= (and bm!95124 (not c!232276)) b!1413461))

(assert (= (or b!1413454 b!1413463) bm!95102))

(assert (= (or b!1413454 b!1413463) bm!95132))

(assert (= (or b!1413464 b!1413463) bm!95112))

(assert (= (and bm!95112 c!232278) b!1413468))

(assert (= (and bm!95112 (not c!232278)) b!1413465))

(assert (= (or b!1413453 b!1413468) bm!95136))

(assert (= (or b!1413455 bm!95119) bm!95113))

(assert (= (or b!1413455 bm!95128) bm!95115))

(assert (= (or b!1413455 bm!95118) bm!95107))

(assert (= (or b!1413455 bm!95133) bm!95114))

(assert (= (or b!1413455 b!1413454) bm!95099))

(assert (= (or b!1413455 bm!95126) bm!95123))

(assert (= (or b!1413455 bm!95120) bm!95116))

(assert (= (or b!1413455 bm!95105) bm!95122))

(assert (= (or b!1413455 bm!95131) bm!95110))

(assert (= (or b!1413455 b!1413463) bm!95103))

(assert (= (or b!1413455 bm!95098) bm!95111))

(assert (= (or b!1413455 bm!95109) bm!95134))

(assert (= (or b!1413453 bm!95124) bm!95106))

(assert (= (or b!1413455 bm!95130) bm!95104))

(assert (= (or b!1413455 bm!95127) bm!95135))

(assert (= (or b!1413455 bm!95102) bm!95108))

(assert (= (or b!1413455 bm!95125) bm!95101))

(assert (= (or b!1413455 bm!95132) bm!95117))

(assert (= (or b!1413453 b!1413468) bm!95100))

(assert (= (or b!1413453 bm!95112) bm!95129))

(assert (= (and d!404288 (not res!640070)) b!1413460))

(assert (= (and b!1413460 res!640071) b!1413466))

(assert (= (and b!1413466 res!640069) b!1413458))

(declare-fun m!1595139 () Bool)

(assert (=> bm!95104 m!1595139))

(declare-fun m!1595141 () Bool)

(assert (=> bm!95122 m!1595141))

(declare-fun m!1595143 () Bool)

(assert (=> b!1413461 m!1595143))

(declare-fun m!1595145 () Bool)

(assert (=> bm!95101 m!1595145))

(declare-fun m!1595147 () Bool)

(assert (=> bm!95115 m!1595147))

(declare-fun m!1595149 () Bool)

(assert (=> b!1413460 m!1595149))

(declare-fun m!1595151 () Bool)

(assert (=> bm!95123 m!1595151))

(declare-fun m!1595153 () Bool)

(assert (=> bm!95110 m!1595153))

(declare-fun m!1595155 () Bool)

(assert (=> b!1413458 m!1595155))

(declare-fun m!1595157 () Bool)

(assert (=> b!1413458 m!1595157))

(declare-fun m!1595159 () Bool)

(assert (=> b!1413458 m!1595159))

(declare-fun m!1595161 () Bool)

(assert (=> b!1413458 m!1595161))

(assert (=> b!1413458 m!1595155))

(assert (=> b!1413458 m!1595159))

(declare-fun m!1595163 () Bool)

(assert (=> b!1413458 m!1595163))

(assert (=> b!1413458 m!1595157))

(assert (=> b!1413458 m!1594759))

(assert (=> b!1413458 m!1595163))

(assert (=> b!1413458 m!1595149))

(declare-fun m!1595165 () Bool)

(assert (=> b!1413458 m!1595165))

(assert (=> b!1413458 m!1595149))

(assert (=> b!1413458 m!1595165))

(declare-fun m!1595167 () Bool)

(assert (=> b!1413458 m!1595167))

(declare-fun m!1595171 () Bool)

(assert (=> b!1413463 m!1595171))

(declare-fun m!1595175 () Bool)

(assert (=> b!1413463 m!1595175))

(declare-fun m!1595177 () Bool)

(assert (=> b!1413463 m!1595177))

(declare-fun m!1595179 () Bool)

(assert (=> b!1413463 m!1595179))

(declare-fun m!1595181 () Bool)

(assert (=> b!1413463 m!1595181))

(declare-fun m!1595183 () Bool)

(assert (=> b!1413463 m!1595183))

(declare-fun m!1595185 () Bool)

(assert (=> b!1413463 m!1595185))

(assert (=> b!1413463 m!1595183))

(assert (=> b!1413463 m!1595177))

(declare-fun m!1595187 () Bool)

(assert (=> b!1413463 m!1595187))

(assert (=> b!1413463 m!1595183))

(declare-fun m!1595189 () Bool)

(assert (=> b!1413463 m!1595189))

(declare-fun m!1595191 () Bool)

(assert (=> b!1413463 m!1595191))

(declare-fun m!1595193 () Bool)

(assert (=> bm!95107 m!1595193))

(declare-fun m!1595195 () Bool)

(assert (=> b!1413459 m!1595195))

(declare-fun m!1595197 () Bool)

(assert (=> b!1413459 m!1595197))

(declare-fun m!1595199 () Bool)

(assert (=> b!1413459 m!1595199))

(assert (=> b!1413459 m!1595199))

(declare-fun m!1595201 () Bool)

(assert (=> b!1413459 m!1595201))

(declare-fun m!1595203 () Bool)

(assert (=> b!1413459 m!1595203))

(assert (=> b!1413459 m!1595201))

(declare-fun m!1595205 () Bool)

(assert (=> b!1413459 m!1595205))

(declare-fun m!1595207 () Bool)

(assert (=> b!1413459 m!1595207))

(declare-fun m!1595209 () Bool)

(assert (=> bm!95103 m!1595209))

(declare-fun m!1595211 () Bool)

(assert (=> b!1413466 m!1595211))

(declare-fun m!1595213 () Bool)

(assert (=> b!1413466 m!1595213))

(declare-fun m!1595215 () Bool)

(assert (=> b!1413466 m!1595215))

(assert (=> b!1413466 m!1595211))

(assert (=> b!1413466 m!1595149))

(assert (=> b!1413466 m!1595213))

(declare-fun m!1595217 () Bool)

(assert (=> b!1413466 m!1595217))

(declare-fun m!1595219 () Bool)

(assert (=> bm!95100 m!1595219))

(declare-fun m!1595221 () Bool)

(assert (=> bm!95135 m!1595221))

(declare-fun m!1595223 () Bool)

(assert (=> b!1413462 m!1595223))

(declare-fun m!1595225 () Bool)

(assert (=> d!404288 m!1595225))

(declare-fun m!1595227 () Bool)

(assert (=> d!404288 m!1595227))

(assert (=> d!404288 m!1594759))

(declare-fun m!1595229 () Bool)

(assert (=> d!404288 m!1595229))

(declare-fun m!1595231 () Bool)

(assert (=> d!404288 m!1595231))

(declare-fun m!1595233 () Bool)

(assert (=> bm!95116 m!1595233))

(declare-fun m!1595235 () Bool)

(assert (=> bm!95111 m!1595235))

(declare-fun m!1595237 () Bool)

(assert (=> bm!95114 m!1595237))

(declare-fun m!1595239 () Bool)

(assert (=> bm!95136 m!1595239))

(declare-fun m!1595241 () Bool)

(assert (=> bm!95106 m!1595241))

(declare-fun m!1595243 () Bool)

(assert (=> bm!95129 m!1595243))

(declare-fun m!1595245 () Bool)

(assert (=> bm!95113 m!1595245))

(declare-fun m!1595247 () Bool)

(assert (=> bm!95099 m!1595247))

(declare-fun m!1595249 () Bool)

(assert (=> bm!95121 m!1595249))

(declare-fun m!1595251 () Bool)

(assert (=> bm!95108 m!1595251))

(declare-fun m!1595253 () Bool)

(assert (=> bm!95117 m!1595253))

(declare-fun m!1595255 () Bool)

(assert (=> bm!95134 m!1595255))

(assert (=> b!1413295 d!404288))

(declare-fun d!404296 () Bool)

(declare-fun lt!473793 () PrintableTokens!804)

(declare-fun head!2695 (List!14518) PrintableTokens!804)

(declare-fun list!5673 (BalanceConc!9558) List!14518)

(assert (=> d!404296 (= lt!473793 (head!2695 (list!5673 objs!24)))))

(declare-fun head!2696 (Conc!4809) PrintableTokens!804)

(assert (=> d!404296 (= lt!473793 (head!2696 (c!232209 objs!24)))))

(assert (=> d!404296 (not (isEmpty!8836 objs!24))))

(assert (=> d!404296 (= (head!2690 objs!24) lt!473793)))

(declare-fun bs!339154 () Bool)

(assert (= bs!339154 d!404296))

(declare-fun m!1595273 () Bool)

(assert (=> bs!339154 m!1595273))

(assert (=> bs!339154 m!1595273))

(declare-fun m!1595275 () Bool)

(assert (=> bs!339154 m!1595275))

(declare-fun m!1595277 () Bool)

(assert (=> bs!339154 m!1595277))

(assert (=> bs!339154 m!1594745))

(assert (=> b!1413295 d!404296))

(declare-fun d!404306 () Bool)

(declare-datatypes ((JsonLexer!394 0))(
  ( (JsonLexer!395) )
))
(declare-fun rules!109 (JsonLexer!394) List!14517)

(assert (=> d!404306 (= (usesJsonRules!0 sep!3) (= (rules!11032 sep!3) (rules!109 JsonLexer!395)))))

(declare-fun bs!339156 () Bool)

(assert (= bs!339156 d!404306))

(declare-fun m!1595281 () Bool)

(assert (=> bs!339156 m!1595281))

(assert (=> b!1413296 d!404306))

(declare-fun d!404310 () Bool)

(declare-fun lt!473796 () Bool)

(declare-fun forall!3552 (List!14518 Int) Bool)

(assert (=> d!404310 (= lt!473796 (forall!3552 (list!5673 (tail!2070 objs!24)) lambda!62469))))

(declare-fun forall!3553 (Conc!4809 Int) Bool)

(assert (=> d!404310 (= lt!473796 (forall!3553 (c!232209 (tail!2070 objs!24)) lambda!62469))))

(assert (=> d!404310 (= (forall!3549 (tail!2070 objs!24) lambda!62469) lt!473796)))

(declare-fun bs!339157 () Bool)

(assert (= bs!339157 d!404310))

(assert (=> bs!339157 m!1594741))

(declare-fun m!1595283 () Bool)

(assert (=> bs!339157 m!1595283))

(assert (=> bs!339157 m!1595283))

(declare-fun m!1595285 () Bool)

(assert (=> bs!339157 m!1595285))

(declare-fun m!1595287 () Bool)

(assert (=> bs!339157 m!1595287))

(assert (=> b!1413294 d!404310))

(declare-fun d!404312 () Bool)

(declare-fun e!902359 () Bool)

(assert (=> d!404312 e!902359))

(declare-fun res!640078 () Bool)

(assert (=> d!404312 (=> (not res!640078) (not e!902359))))

(declare-fun isBalanced!1423 (Conc!4809) Bool)

(declare-fun tail!2073 (Conc!4809) Conc!4809)

(assert (=> d!404312 (= res!640078 (isBalanced!1423 (tail!2073 (c!232209 objs!24))))))

(declare-fun lt!473799 () BalanceConc!9558)

(assert (=> d!404312 (= lt!473799 (BalanceConc!9559 (tail!2073 (c!232209 objs!24))))))

(assert (=> d!404312 (not (isEmpty!8836 objs!24))))

(assert (=> d!404312 (= (tail!2070 objs!24) lt!473799)))

(declare-fun b!1413483 () Bool)

(declare-fun tail!2074 (List!14518) List!14518)

(assert (=> b!1413483 (= e!902359 (= (list!5673 lt!473799) (tail!2074 (list!5673 objs!24))))))

(assert (= (and d!404312 res!640078) b!1413483))

(declare-fun m!1595289 () Bool)

(assert (=> d!404312 m!1595289))

(assert (=> d!404312 m!1595289))

(declare-fun m!1595291 () Bool)

(assert (=> d!404312 m!1595291))

(assert (=> d!404312 m!1594745))

(declare-fun m!1595293 () Bool)

(assert (=> b!1413483 m!1595293))

(assert (=> b!1413483 m!1595273))

(assert (=> b!1413483 m!1595273))

(declare-fun m!1595295 () Bool)

(assert (=> b!1413483 m!1595295))

(assert (=> b!1413294 d!404312))

(declare-fun d!404314 () Bool)

(declare-fun lt!473802 () Int)

(declare-fun size!11913 (List!14518) Int)

(assert (=> d!404314 (= lt!473802 (size!11913 (list!5673 objs!24)))))

(declare-fun size!11914 (Conc!4809) Int)

(assert (=> d!404314 (= lt!473802 (size!11914 (c!232209 objs!24)))))

(assert (=> d!404314 (= (size!11910 objs!24) lt!473802)))

(declare-fun bs!339158 () Bool)

(assert (= bs!339158 d!404314))

(assert (=> bs!339158 m!1595273))

(assert (=> bs!339158 m!1595273))

(declare-fun m!1595297 () Bool)

(assert (=> bs!339158 m!1595297))

(declare-fun m!1595299 () Bool)

(assert (=> bs!339158 m!1595299))

(assert (=> b!1413303 d!404314))

(declare-fun d!404316 () Bool)

(declare-fun lt!473805 () Bool)

(declare-fun isEmpty!8844 (List!14518) Bool)

(assert (=> d!404316 (= lt!473805 (isEmpty!8844 (list!5673 objs!24)))))

(declare-fun isEmpty!8845 (Conc!4809) Bool)

(assert (=> d!404316 (= lt!473805 (isEmpty!8845 (c!232209 objs!24)))))

(assert (=> d!404316 (= (isEmpty!8836 objs!24) lt!473805)))

(declare-fun bs!339159 () Bool)

(assert (= bs!339159 d!404316))

(assert (=> bs!339159 m!1595273))

(assert (=> bs!339159 m!1595273))

(declare-fun m!1595301 () Bool)

(assert (=> bs!339159 m!1595301))

(declare-fun m!1595303 () Bool)

(assert (=> bs!339159 m!1595303))

(assert (=> b!1413293 d!404316))

(declare-fun d!404318 () Bool)

(declare-fun lt!473806 () Bool)

(assert (=> d!404318 (= lt!473806 (forall!3552 (list!5673 objs!24) lambda!62469))))

(assert (=> d!404318 (= lt!473806 (forall!3553 (c!232209 objs!24) lambda!62469))))

(assert (=> d!404318 (= (forall!3549 objs!24 lambda!62469) lt!473806)))

(declare-fun bs!339160 () Bool)

(assert (= bs!339160 d!404318))

(assert (=> bs!339160 m!1595273))

(assert (=> bs!339160 m!1595273))

(declare-fun m!1595305 () Bool)

(assert (=> bs!339160 m!1595305))

(declare-fun m!1595307 () Bool)

(assert (=> bs!339160 m!1595307))

(assert (=> start!129480 d!404318))

(declare-fun d!404320 () Bool)

(assert (=> d!404320 (= (inv!18907 objs!24) (isBalanced!1423 (c!232209 objs!24)))))

(declare-fun bs!339161 () Bool)

(assert (= bs!339161 d!404320))

(declare-fun m!1595309 () Bool)

(assert (=> bs!339161 m!1595309))

(assert (=> start!129480 d!404320))

(declare-fun d!404322 () Bool)

(declare-fun res!640097 () Bool)

(declare-fun e!902396 () Bool)

(assert (=> d!404322 (=> (not res!640097) (not e!902396))))

(declare-fun isEmpty!8846 (List!14517) Bool)

(assert (=> d!404322 (= res!640097 (not (isEmpty!8846 (rules!11032 acc!229))))))

(assert (=> d!404322 (= (inv!18908 acc!229) e!902396)))

(declare-fun b!1413541 () Bool)

(declare-fun res!640098 () Bool)

(assert (=> b!1413541 (=> (not res!640098) (not e!902396))))

(declare-fun rulesInvariant!2065 (LexerInterface!2195 List!14517) Bool)

(assert (=> b!1413541 (= res!640098 (rulesInvariant!2065 Lexer!2193 (rules!11032 acc!229)))))

(declare-fun b!1413542 () Bool)

(declare-fun res!640099 () Bool)

(assert (=> b!1413542 (=> (not res!640099) (not e!902396))))

(declare-fun rulesProduceEachTokenIndividually!792 (LexerInterface!2195 List!14517 BalanceConc!9556) Bool)

(assert (=> b!1413542 (= res!640099 (rulesProduceEachTokenIndividually!792 Lexer!2193 (rules!11032 acc!229) (tokens!1762 acc!229)))))

(declare-fun b!1413543 () Bool)

(declare-fun separableTokens!177 (LexerInterface!2195 BalanceConc!9556 List!14517) Bool)

(assert (=> b!1413543 (= e!902396 (separableTokens!177 Lexer!2193 (tokens!1762 acc!229) (rules!11032 acc!229)))))

(assert (= (and d!404322 res!640097) b!1413541))

(assert (= (and b!1413541 res!640098) b!1413542))

(assert (= (and b!1413542 res!640099) b!1413543))

(declare-fun m!1595353 () Bool)

(assert (=> d!404322 m!1595353))

(declare-fun m!1595355 () Bool)

(assert (=> b!1413541 m!1595355))

(declare-fun m!1595357 () Bool)

(assert (=> b!1413542 m!1595357))

(declare-fun m!1595359 () Bool)

(assert (=> b!1413543 m!1595359))

(assert (=> start!129480 d!404322))

(declare-fun d!404326 () Bool)

(declare-fun res!640100 () Bool)

(declare-fun e!902397 () Bool)

(assert (=> d!404326 (=> (not res!640100) (not e!902397))))

(assert (=> d!404326 (= res!640100 (not (isEmpty!8846 (rules!11032 sep!3))))))

(assert (=> d!404326 (= (inv!18908 sep!3) e!902397)))

(declare-fun b!1413544 () Bool)

(declare-fun res!640101 () Bool)

(assert (=> b!1413544 (=> (not res!640101) (not e!902397))))

(assert (=> b!1413544 (= res!640101 (rulesInvariant!2065 Lexer!2193 (rules!11032 sep!3)))))

(declare-fun b!1413545 () Bool)

(declare-fun res!640102 () Bool)

(assert (=> b!1413545 (=> (not res!640102) (not e!902397))))

(assert (=> b!1413545 (= res!640102 (rulesProduceEachTokenIndividually!792 Lexer!2193 (rules!11032 sep!3) (tokens!1762 sep!3)))))

(declare-fun b!1413546 () Bool)

(assert (=> b!1413546 (= e!902397 (separableTokens!177 Lexer!2193 (tokens!1762 sep!3) (rules!11032 sep!3)))))

(assert (= (and d!404326 res!640100) b!1413544))

(assert (= (and b!1413544 res!640101) b!1413545))

(assert (= (and b!1413545 res!640102) b!1413546))

(declare-fun m!1595361 () Bool)

(assert (=> d!404326 m!1595361))

(declare-fun m!1595363 () Bool)

(assert (=> b!1413544 m!1595363))

(declare-fun m!1595365 () Bool)

(assert (=> b!1413545 m!1595365))

(declare-fun m!1595367 () Bool)

(assert (=> b!1413546 m!1595367))

(assert (=> start!129480 d!404326))

(declare-fun d!404328 () Bool)

(declare-fun c!232286 () Bool)

(assert (=> d!404328 (= c!232286 ((_ is Node!4809) (c!232209 objs!24)))))

(declare-fun e!902402 () Bool)

(assert (=> d!404328 (= (inv!18910 (c!232209 objs!24)) e!902402)))

(declare-fun b!1413553 () Bool)

(declare-fun inv!18918 (Conc!4809) Bool)

(assert (=> b!1413553 (= e!902402 (inv!18918 (c!232209 objs!24)))))

(declare-fun b!1413554 () Bool)

(declare-fun e!902403 () Bool)

(assert (=> b!1413554 (= e!902402 e!902403)))

(declare-fun res!640105 () Bool)

(assert (=> b!1413554 (= res!640105 (not ((_ is Leaf!7261) (c!232209 objs!24))))))

(assert (=> b!1413554 (=> res!640105 e!902403)))

(declare-fun b!1413555 () Bool)

(declare-fun inv!18919 (Conc!4809) Bool)

(assert (=> b!1413555 (= e!902403 (inv!18919 (c!232209 objs!24)))))

(assert (= (and d!404328 c!232286) b!1413553))

(assert (= (and d!404328 (not c!232286)) b!1413554))

(assert (= (and b!1413554 (not res!640105)) b!1413555))

(declare-fun m!1595369 () Bool)

(assert (=> b!1413553 m!1595369))

(declare-fun m!1595371 () Bool)

(assert (=> b!1413555 m!1595371))

(assert (=> b!1413302 d!404328))

(declare-fun d!404330 () Bool)

(declare-fun isBalanced!1424 (Conc!4808) Bool)

(assert (=> d!404330 (= (inv!18906 (tokens!1762 sep!3)) (isBalanced!1424 (c!232208 (tokens!1762 sep!3))))))

(declare-fun bs!339162 () Bool)

(assert (= bs!339162 d!404330))

(declare-fun m!1595373 () Bool)

(assert (=> bs!339162 m!1595373))

(assert (=> b!1413292 d!404330))

(declare-fun d!404332 () Bool)

(assert (=> d!404332 (= (usesJsonRules!0 acc!229) (= (rules!11032 acc!229) (rules!109 JsonLexer!395)))))

(declare-fun bs!339163 () Bool)

(assert (= bs!339163 d!404332))

(assert (=> bs!339163 m!1595281))

(assert (=> b!1413301 d!404332))

(declare-fun d!404334 () Bool)

(assert (=> d!404334 (= (inv!18906 (tokens!1762 acc!229)) (isBalanced!1424 (c!232208 (tokens!1762 acc!229))))))

(declare-fun bs!339164 () Bool)

(assert (= bs!339164 d!404334))

(declare-fun m!1595375 () Bool)

(assert (=> bs!339164 m!1595375))

(assert (=> b!1413299 d!404334))

(declare-fun d!404336 () Bool)

(declare-fun c!232287 () Bool)

(assert (=> d!404336 (= c!232287 ((_ is Node!4808) (c!232208 (tokens!1762 acc!229))))))

(declare-fun e!902404 () Bool)

(assert (=> d!404336 (= (inv!18909 (c!232208 (tokens!1762 acc!229))) e!902404)))

(declare-fun b!1413556 () Bool)

(assert (=> b!1413556 (= e!902404 (inv!18913 (c!232208 (tokens!1762 acc!229))))))

(declare-fun b!1413557 () Bool)

(declare-fun e!902405 () Bool)

(assert (=> b!1413557 (= e!902404 e!902405)))

(declare-fun res!640106 () Bool)

(assert (=> b!1413557 (= res!640106 (not ((_ is Leaf!7260) (c!232208 (tokens!1762 acc!229)))))))

(assert (=> b!1413557 (=> res!640106 e!902405)))

(declare-fun b!1413558 () Bool)

(assert (=> b!1413558 (= e!902405 (inv!18914 (c!232208 (tokens!1762 acc!229))))))

(assert (= (and d!404336 c!232287) b!1413556))

(assert (= (and d!404336 (not c!232287)) b!1413557))

(assert (= (and b!1413557 (not res!640106)) b!1413558))

(declare-fun m!1595377 () Bool)

(assert (=> b!1413556 m!1595377))

(declare-fun m!1595379 () Bool)

(assert (=> b!1413558 m!1595379))

(assert (=> b!1413300 d!404336))

(declare-fun tp!401214 () Bool)

(declare-fun b!1413567 () Bool)

(declare-fun e!902411 () Bool)

(declare-fun tp!401215 () Bool)

(assert (=> b!1413567 (= e!902411 (and (inv!18910 (left!12346 (c!232209 objs!24))) tp!401214 (inv!18910 (right!12676 (c!232209 objs!24))) tp!401215))))

(declare-fun b!1413569 () Bool)

(declare-fun e!902410 () Bool)

(declare-fun tp!401216 () Bool)

(assert (=> b!1413569 (= e!902410 tp!401216)))

(declare-fun b!1413568 () Bool)

(declare-fun inv!18921 (IArray!9623) Bool)

(assert (=> b!1413568 (= e!902411 (and (inv!18921 (xs!7536 (c!232209 objs!24))) e!902410))))

(assert (=> b!1413302 (= tp!401173 (and (inv!18910 (c!232209 objs!24)) e!902411))))

(assert (= (and b!1413302 ((_ is Node!4809) (c!232209 objs!24))) b!1413567))

(assert (= b!1413568 b!1413569))

(assert (= (and b!1413302 ((_ is Leaf!7261) (c!232209 objs!24))) b!1413568))

(declare-fun m!1595381 () Bool)

(assert (=> b!1413567 m!1595381))

(declare-fun m!1595383 () Bool)

(assert (=> b!1413567 m!1595383))

(declare-fun m!1595385 () Bool)

(assert (=> b!1413568 m!1595385))

(assert (=> b!1413302 m!1594747))

(declare-fun b!1413578 () Bool)

(declare-fun e!902416 () Bool)

(declare-fun tp!401224 () Bool)

(declare-fun tp!401225 () Bool)

(assert (=> b!1413578 (= e!902416 (and (inv!18909 (left!12345 (c!232208 (tokens!1762 sep!3)))) tp!401224 (inv!18909 (right!12675 (c!232208 (tokens!1762 sep!3)))) tp!401225))))

(declare-fun b!1413580 () Bool)

(declare-fun e!902417 () Bool)

(declare-fun tp!401223 () Bool)

(assert (=> b!1413580 (= e!902417 tp!401223)))

(declare-fun b!1413579 () Bool)

(declare-fun inv!18923 (IArray!9621) Bool)

(assert (=> b!1413579 (= e!902416 (and (inv!18923 (xs!7535 (c!232208 (tokens!1762 sep!3)))) e!902417))))

(assert (=> b!1413297 (= tp!401172 (and (inv!18909 (c!232208 (tokens!1762 sep!3))) e!902416))))

(assert (= (and b!1413297 ((_ is Node!4808) (c!232208 (tokens!1762 sep!3)))) b!1413578))

(assert (= b!1413579 b!1413580))

(assert (= (and b!1413297 ((_ is Leaf!7260) (c!232208 (tokens!1762 sep!3)))) b!1413579))

(declare-fun m!1595387 () Bool)

(assert (=> b!1413578 m!1595387))

(declare-fun m!1595389 () Bool)

(assert (=> b!1413578 m!1595389))

(declare-fun m!1595391 () Bool)

(assert (=> b!1413579 m!1595391))

(assert (=> b!1413297 m!1594749))

(declare-fun b!1413591 () Bool)

(declare-fun b_free!34751 () Bool)

(declare-fun b_next!35455 () Bool)

(assert (=> b!1413591 (= b_free!34751 (not b_next!35455))))

(declare-fun tp!401232 () Bool)

(declare-fun b_and!94727 () Bool)

(assert (=> b!1413591 (= tp!401232 b_and!94727)))

(declare-fun b_free!34753 () Bool)

(declare-fun b_next!35457 () Bool)

(assert (=> b!1413591 (= b_free!34753 (not b_next!35457))))

(declare-fun tp!401233 () Bool)

(declare-fun b_and!94729 () Bool)

(assert (=> b!1413591 (= tp!401233 b_and!94729)))

(declare-fun e!902427 () Bool)

(assert (=> b!1413591 (= e!902427 (and tp!401232 tp!401233))))

(declare-fun b!1413590 () Bool)

(declare-fun e!902429 () Bool)

(declare-fun inv!18900 (String!17241) Bool)

(declare-fun inv!18924 (TokenValueInjection!4862) Bool)

(assert (=> b!1413590 (= e!902429 (and (inv!18900 (tag!2773 (h!19852 (rules!11032 sep!3)))) (inv!18924 (transformation!2511 (h!19852 (rules!11032 sep!3)))) e!902427))))

(declare-fun b!1413589 () Bool)

(declare-fun e!902428 () Bool)

(declare-fun tp!401234 () Bool)

(assert (=> b!1413589 (= e!902428 (and e!902429 tp!401234))))

(assert (=> b!1413292 (= tp!401171 e!902428)))

(assert (= b!1413590 b!1413591))

(assert (= b!1413589 b!1413590))

(assert (= (and b!1413292 ((_ is Cons!14451) (rules!11032 sep!3))) b!1413589))

(declare-fun m!1595393 () Bool)

(assert (=> b!1413590 m!1595393))

(declare-fun m!1595395 () Bool)

(assert (=> b!1413590 m!1595395))

(declare-fun b!1413594 () Bool)

(declare-fun b_free!34755 () Bool)

(declare-fun b_next!35459 () Bool)

(assert (=> b!1413594 (= b_free!34755 (not b_next!35459))))

(declare-fun tp!401235 () Bool)

(declare-fun b_and!94731 () Bool)

(assert (=> b!1413594 (= tp!401235 b_and!94731)))

(declare-fun b_free!34757 () Bool)

(declare-fun b_next!35461 () Bool)

(assert (=> b!1413594 (= b_free!34757 (not b_next!35461))))

(declare-fun tp!401236 () Bool)

(declare-fun b_and!94733 () Bool)

(assert (=> b!1413594 (= tp!401236 b_and!94733)))

(declare-fun e!902431 () Bool)

(assert (=> b!1413594 (= e!902431 (and tp!401235 tp!401236))))

(declare-fun b!1413593 () Bool)

(declare-fun e!902433 () Bool)

(assert (=> b!1413593 (= e!902433 (and (inv!18900 (tag!2773 (h!19852 (rules!11032 acc!229)))) (inv!18924 (transformation!2511 (h!19852 (rules!11032 acc!229)))) e!902431))))

(declare-fun b!1413592 () Bool)

(declare-fun e!902432 () Bool)

(declare-fun tp!401237 () Bool)

(assert (=> b!1413592 (= e!902432 (and e!902433 tp!401237))))

(assert (=> b!1413299 (= tp!401170 e!902432)))

(assert (= b!1413593 b!1413594))

(assert (= b!1413592 b!1413593))

(assert (= (and b!1413299 ((_ is Cons!14451) (rules!11032 acc!229))) b!1413592))

(declare-fun m!1595397 () Bool)

(assert (=> b!1413593 m!1595397))

(declare-fun m!1595399 () Bool)

(assert (=> b!1413593 m!1595399))

(declare-fun tp!401240 () Bool)

(declare-fun b!1413595 () Bool)

(declare-fun tp!401239 () Bool)

(declare-fun e!902434 () Bool)

(assert (=> b!1413595 (= e!902434 (and (inv!18909 (left!12345 (c!232208 (tokens!1762 acc!229)))) tp!401239 (inv!18909 (right!12675 (c!232208 (tokens!1762 acc!229)))) tp!401240))))

(declare-fun b!1413597 () Bool)

(declare-fun e!902435 () Bool)

(declare-fun tp!401238 () Bool)

(assert (=> b!1413597 (= e!902435 tp!401238)))

(declare-fun b!1413596 () Bool)

(assert (=> b!1413596 (= e!902434 (and (inv!18923 (xs!7535 (c!232208 (tokens!1762 acc!229)))) e!902435))))

(assert (=> b!1413300 (= tp!401174 (and (inv!18909 (c!232208 (tokens!1762 acc!229))) e!902434))))

(assert (= (and b!1413300 ((_ is Node!4808) (c!232208 (tokens!1762 acc!229)))) b!1413595))

(assert (= b!1413596 b!1413597))

(assert (= (and b!1413300 ((_ is Leaf!7260) (c!232208 (tokens!1762 acc!229)))) b!1413596))

(declare-fun m!1595401 () Bool)

(assert (=> b!1413595 m!1595401))

(declare-fun m!1595403 () Bool)

(assert (=> b!1413595 m!1595403))

(declare-fun m!1595405 () Bool)

(assert (=> b!1413596 m!1595405))

(assert (=> b!1413300 m!1594739))

(check-sat (not bm!95106) (not d!404268) (not d!404312) (not b_next!35457) (not bm!95029) (not b!1413297) (not b!1413555) (not bm!95032) (not bm!95113) (not bm!95099) (not b_next!35459) (not bm!95104) (not bm!95043) (not bm!95058) (not b!1413553) (not bm!95121) (not d!404288) (not b!1413462) (not b!1413300) (not bm!95123) (not bm!95056) (not bm!95051) (not bm!95023) (not d!404326) (not b!1413589) (not d!404310) (not bm!95134) (not b!1413580) (not d!404334) (not bm!95135) (not b!1413459) (not b!1413416) (not bm!95116) (not b!1413579) (not bm!95038) (not bm!95026) (not bm!95039) b_and!94731 (not b!1413466) (not b!1413596) (not b!1413590) (not b!1413542) (not b!1413556) (not d!404296) (not b!1413546) (not d!404318) (not b!1413595) (not d!404306) (not b!1413449) (not bm!95117) (not b!1413461) (not b!1413592) (not b!1413558) (not b!1413567) b_and!94727 (not b!1413415) (not b!1413544) (not b!1413463) (not b!1413593) (not b!1413302) (not bm!95129) (not bm!95100) (not b_next!35461) (not bm!95044) (not bm!95045) (not b!1413578) (not b!1413451) (not bm!95028) (not bm!95111) (not bm!95122) (not bm!95114) (not b!1413569) (not bm!95021) b_and!94733 (not b!1413568) (not b!1413413) (not b!1413417) (not b!1413597) (not bm!95033) (not d!404314) (not bm!95110) (not b!1413541) (not bm!95057) (not d!404330) (not b!1413421) (not bm!95107) (not b!1413543) (not bm!95115) b_and!94729 (not bm!95037) (not bm!95101) (not b!1413414) (not b!1413458) (not d!404332) (not bm!95030) (not b!1413418) (not b!1413545) (not bm!95136) (not d!404320) (not b!1413483) (not bm!95035) (not bm!95036) (not bm!95025) (not bm!95108) (not d!404322) (not bm!95103) (not b_next!35455) (not bm!95022) (not b!1413460) (not d!404316))
(check-sat (not b_next!35459) b_and!94731 b_and!94727 (not b_next!35461) b_and!94733 b_and!94729 (not b_next!35457) (not b_next!35455))
(get-model)

(declare-fun d!404338 () Bool)

(declare-fun list!5674 (Conc!4807) List!14515)

(assert (=> d!404338 (= (list!5671 (print!961 (get!4443 lt!473732))) (list!5674 (c!232207 (print!961 (get!4443 lt!473732)))))))

(declare-fun bs!339165 () Bool)

(assert (= bs!339165 d!404338))

(declare-fun m!1595407 () Bool)

(assert (=> bs!339165 m!1595407))

(assert (=> b!1413458 d!404338))

(declare-fun d!404340 () Bool)

(assert (=> d!404340 (= (get!4443 lt!473732) (v!21893 lt!473732))))

(assert (=> b!1413458 d!404340))

(declare-fun d!404342 () Bool)

(declare-fun e!902438 () Bool)

(assert (=> d!404342 e!902438))

(declare-fun res!640120 () Bool)

(assert (=> d!404342 (=> (not res!640120) (not e!902438))))

(declare-fun lt!473811 () BalanceConc!9554)

(declare-datatypes ((tuple2!13984 0))(
  ( (tuple2!13985 (_1!7878 BalanceConc!9556) (_2!7878 BalanceConc!9554)) )
))
(declare-fun lex!1008 (LexerInterface!2195 List!14517 BalanceConc!9554) tuple2!13984)

(assert (=> d!404342 (= res!640120 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (head!2690 objs!24)) lt!473811))) (list!5672 (tokens!1762 (head!2690 objs!24)))))))

(assert (=> d!404342 (= lt!473811 (print!962 Lexer!2193 (tokens!1762 (head!2690 objs!24))))))

(declare-fun lt!473812 () Unit!20997)

(assert (=> d!404342 (= lt!473812 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (head!2690 objs!24)) (list!5672 (tokens!1762 (head!2690 objs!24)))))))

(assert (=> d!404342 (= (print!961 (head!2690 objs!24)) lt!473811)))

(declare-fun b!1413600 () Bool)

(declare-fun isEmpty!8847 (List!14515) Bool)

(assert (=> b!1413600 (= e!902438 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (head!2690 objs!24)) lt!473811)))))))

(assert (= (and d!404342 res!640120) b!1413600))

(assert (=> d!404342 m!1595211))

(declare-fun m!1595409 () Bool)

(assert (=> d!404342 m!1595409))

(declare-fun m!1595411 () Bool)

(assert (=> d!404342 m!1595411))

(assert (=> d!404342 m!1595211))

(assert (=> d!404342 m!1595233))

(declare-fun m!1595413 () Bool)

(assert (=> d!404342 m!1595413))

(assert (=> b!1413600 m!1595411))

(declare-fun m!1595415 () Bool)

(assert (=> b!1413600 m!1595415))

(assert (=> b!1413600 m!1595415))

(declare-fun m!1595417 () Bool)

(assert (=> b!1413600 m!1595417))

(assert (=> b!1413458 d!404342))

(declare-fun d!404344 () Bool)

(declare-fun e!902439 () Bool)

(assert (=> d!404344 e!902439))

(declare-fun res!640121 () Bool)

(assert (=> d!404344 (=> (not res!640121) (not e!902439))))

(declare-fun lt!473813 () BalanceConc!9554)

(assert (=> d!404344 (= res!640121 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 sep!3) lt!473813))) (list!5672 (tokens!1762 sep!3))))))

(assert (=> d!404344 (= lt!473813 (print!962 Lexer!2193 (tokens!1762 sep!3)))))

(declare-fun lt!473814 () Unit!20997)

(assert (=> d!404344 (= lt!473814 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 sep!3) (list!5672 (tokens!1762 sep!3))))))

(assert (=> d!404344 (= (print!961 sep!3) lt!473813)))

(declare-fun b!1413601 () Bool)

(assert (=> b!1413601 (= e!902439 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 sep!3) lt!473813)))))))

(assert (= (and d!404344 res!640121) b!1413601))

(assert (=> d!404344 m!1595213))

(declare-fun m!1595419 () Bool)

(assert (=> d!404344 m!1595419))

(declare-fun m!1595421 () Bool)

(assert (=> d!404344 m!1595421))

(assert (=> d!404344 m!1595213))

(assert (=> d!404344 m!1595147))

(declare-fun m!1595423 () Bool)

(assert (=> d!404344 m!1595423))

(assert (=> b!1413601 m!1595421))

(declare-fun m!1595425 () Bool)

(assert (=> b!1413601 m!1595425))

(assert (=> b!1413601 m!1595425))

(declare-fun m!1595427 () Bool)

(assert (=> b!1413601 m!1595427))

(assert (=> b!1413458 d!404344))

(declare-fun d!404346 () Bool)

(assert (=> d!404346 (= (list!5671 (print!961 sep!3)) (list!5674 (c!232207 (print!961 sep!3))))))

(declare-fun bs!339166 () Bool)

(assert (= bs!339166 d!404346))

(declare-fun m!1595429 () Bool)

(assert (=> bs!339166 m!1595429))

(assert (=> b!1413458 d!404346))

(declare-fun d!404348 () Bool)

(declare-fun e!902440 () Bool)

(assert (=> d!404348 e!902440))

(declare-fun res!640122 () Bool)

(assert (=> d!404348 (=> (not res!640122) (not e!902440))))

(declare-fun lt!473815 () BalanceConc!9554)

(assert (=> d!404348 (= res!640122 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (get!4443 lt!473732)) lt!473815))) (list!5672 (tokens!1762 (get!4443 lt!473732)))))))

(assert (=> d!404348 (= lt!473815 (print!962 Lexer!2193 (tokens!1762 (get!4443 lt!473732))))))

(declare-fun lt!473816 () Unit!20997)

(assert (=> d!404348 (= lt!473816 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (get!4443 lt!473732)) (list!5672 (tokens!1762 (get!4443 lt!473732)))))))

(assert (=> d!404348 (= (print!961 (get!4443 lt!473732)) lt!473815)))

(declare-fun b!1413602 () Bool)

(assert (=> b!1413602 (= e!902440 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (get!4443 lt!473732)) lt!473815)))))))

(assert (= (and d!404348 res!640122) b!1413602))

(assert (=> d!404348 m!1595217))

(declare-fun m!1595431 () Bool)

(assert (=> d!404348 m!1595431))

(declare-fun m!1595433 () Bool)

(assert (=> d!404348 m!1595433))

(assert (=> d!404348 m!1595217))

(declare-fun m!1595435 () Bool)

(assert (=> d!404348 m!1595435))

(declare-fun m!1595437 () Bool)

(assert (=> d!404348 m!1595437))

(assert (=> b!1413602 m!1595433))

(declare-fun m!1595439 () Bool)

(assert (=> b!1413602 m!1595439))

(assert (=> b!1413602 m!1595439))

(declare-fun m!1595441 () Bool)

(assert (=> b!1413602 m!1595441))

(assert (=> b!1413458 d!404348))

(declare-fun d!404350 () Bool)

(declare-fun e!902446 () Bool)

(assert (=> d!404350 e!902446))

(declare-fun res!640127 () Bool)

(assert (=> d!404350 (=> (not res!640127) (not e!902446))))

(declare-fun lt!473819 () List!14515)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2140 (List!14515) (InoxSet (_ BitVec 16)))

(assert (=> d!404350 (= res!640127 (= (content!2140 lt!473819) ((_ map or) (content!2140 (list!5671 (print!961 (head!2690 objs!24)))) (content!2140 (list!5671 (print!961 sep!3))))))))

(declare-fun e!902445 () List!14515)

(assert (=> d!404350 (= lt!473819 e!902445)))

(declare-fun c!232290 () Bool)

(assert (=> d!404350 (= c!232290 ((_ is Nil!14449) (list!5671 (print!961 (head!2690 objs!24)))))))

(assert (=> d!404350 (= (++!3768 (list!5671 (print!961 (head!2690 objs!24))) (list!5671 (print!961 sep!3))) lt!473819)))

(declare-fun b!1413614 () Bool)

(assert (=> b!1413614 (= e!902446 (or (not (= (list!5671 (print!961 sep!3)) Nil!14449)) (= lt!473819 (list!5671 (print!961 (head!2690 objs!24))))))))

(declare-fun b!1413613 () Bool)

(declare-fun res!640128 () Bool)

(assert (=> b!1413613 (=> (not res!640128) (not e!902446))))

(declare-fun size!11915 (List!14515) Int)

(assert (=> b!1413613 (= res!640128 (= (size!11915 lt!473819) (+ (size!11915 (list!5671 (print!961 (head!2690 objs!24)))) (size!11915 (list!5671 (print!961 sep!3))))))))

(declare-fun b!1413612 () Bool)

(assert (=> b!1413612 (= e!902445 (Cons!14449 (h!19850 (list!5671 (print!961 (head!2690 objs!24)))) (++!3768 (t!123792 (list!5671 (print!961 (head!2690 objs!24)))) (list!5671 (print!961 sep!3)))))))

(declare-fun b!1413611 () Bool)

(assert (=> b!1413611 (= e!902445 (list!5671 (print!961 sep!3)))))

(assert (= (and d!404350 c!232290) b!1413611))

(assert (= (and d!404350 (not c!232290)) b!1413612))

(assert (= (and d!404350 res!640127) b!1413613))

(assert (= (and b!1413613 res!640128) b!1413614))

(declare-fun m!1595443 () Bool)

(assert (=> d!404350 m!1595443))

(assert (=> d!404350 m!1595157))

(declare-fun m!1595445 () Bool)

(assert (=> d!404350 m!1595445))

(assert (=> d!404350 m!1595159))

(declare-fun m!1595447 () Bool)

(assert (=> d!404350 m!1595447))

(declare-fun m!1595449 () Bool)

(assert (=> b!1413613 m!1595449))

(assert (=> b!1413613 m!1595157))

(declare-fun m!1595451 () Bool)

(assert (=> b!1413613 m!1595451))

(assert (=> b!1413613 m!1595159))

(declare-fun m!1595453 () Bool)

(assert (=> b!1413613 m!1595453))

(assert (=> b!1413612 m!1595159))

(declare-fun m!1595455 () Bool)

(assert (=> b!1413612 m!1595455))

(assert (=> b!1413458 d!404350))

(declare-fun d!404352 () Bool)

(assert (=> d!404352 (= (list!5671 (print!961 (head!2690 objs!24))) (list!5674 (c!232207 (print!961 (head!2690 objs!24)))))))

(declare-fun bs!339167 () Bool)

(assert (= bs!339167 d!404352))

(declare-fun m!1595457 () Bool)

(assert (=> bs!339167 m!1595457))

(assert (=> b!1413458 d!404352))

(declare-fun d!404354 () Bool)

(declare-fun c!232293 () Bool)

(assert (=> d!404354 (= c!232293 ((_ is Cons!14450) (ite c!232257 lt!473589 (ite c!232259 Nil!14450 lt!473593))))))

(declare-fun e!902449 () List!14515)

(assert (=> d!404354 (= (printList!653 (ite c!232257 lt!473642 (ite c!232259 Lexer!2193 lt!473643)) (ite c!232257 lt!473589 (ite c!232259 Nil!14450 lt!473593))) e!902449)))

(declare-fun b!1413619 () Bool)

(assert (=> b!1413619 (= e!902449 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232257 lt!473589 (ite c!232259 Nil!14450 lt!473593))))) (printList!653 (ite c!232257 lt!473642 (ite c!232259 Lexer!2193 lt!473643)) (t!123793 (ite c!232257 lt!473589 (ite c!232259 Nil!14450 lt!473593))))))))

(declare-fun b!1413620 () Bool)

(assert (=> b!1413620 (= e!902449 Nil!14449)))

(assert (= (and d!404354 c!232293) b!1413619))

(assert (= (and d!404354 (not c!232293)) b!1413620))

(declare-fun m!1595459 () Bool)

(assert (=> b!1413619 m!1595459))

(assert (=> b!1413619 m!1595459))

(declare-fun m!1595461 () Bool)

(assert (=> b!1413619 m!1595461))

(declare-fun m!1595463 () Bool)

(assert (=> b!1413619 m!1595463))

(assert (=> b!1413619 m!1595461))

(assert (=> b!1413619 m!1595463))

(declare-fun m!1595465 () Bool)

(assert (=> b!1413619 m!1595465))

(assert (=> bm!95056 d!404354))

(declare-fun d!404356 () Bool)

(assert (=> d!404356 (= (inv!18921 (xs!7536 (c!232209 objs!24))) (<= (size!11913 (innerList!4869 (xs!7536 (c!232209 objs!24)))) 2147483647))))

(declare-fun bs!339168 () Bool)

(assert (= bs!339168 d!404356))

(declare-fun m!1595467 () Bool)

(assert (=> bs!339168 m!1595467))

(assert (=> b!1413568 d!404356))

(declare-fun c!232294 () Bool)

(declare-fun d!404358 () Bool)

(assert (=> d!404358 (= c!232294 ((_ is Cons!14450) (ite c!232257 (t!123793 lt!473625) e!902321)))))

(declare-fun e!902450 () List!14515)

(assert (=> d!404358 (= (printList!653 (ite (or c!232257 c!232259) Lexer!2193 lt!473643) (ite c!232257 (t!123793 lt!473625) e!902321)) e!902450)))

(declare-fun b!1413621 () Bool)

(assert (=> b!1413621 (= e!902450 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232257 (t!123793 lt!473625) e!902321)))) (printList!653 (ite (or c!232257 c!232259) Lexer!2193 lt!473643) (t!123793 (ite c!232257 (t!123793 lt!473625) e!902321)))))))

(declare-fun b!1413622 () Bool)

(assert (=> b!1413622 (= e!902450 Nil!14449)))

(assert (= (and d!404358 c!232294) b!1413621))

(assert (= (and d!404358 (not c!232294)) b!1413622))

(declare-fun m!1595469 () Bool)

(assert (=> b!1413621 m!1595469))

(assert (=> b!1413621 m!1595469))

(declare-fun m!1595471 () Bool)

(assert (=> b!1413621 m!1595471))

(declare-fun m!1595473 () Bool)

(assert (=> b!1413621 m!1595473))

(assert (=> b!1413621 m!1595471))

(assert (=> b!1413621 m!1595473))

(declare-fun m!1595475 () Bool)

(assert (=> b!1413621 m!1595475))

(assert (=> bm!95028 d!404358))

(declare-fun e!902455 () Bool)

(declare-fun lt!473822 () List!14516)

(declare-fun b!1413634 () Bool)

(assert (=> b!1413634 (= e!902455 (or (not (= (list!5672 (tokens!1762 sep!3)) Nil!14450)) (= lt!473822 (list!5672 (tokens!1762 (head!2690 objs!24))))))))

(declare-fun b!1413632 () Bool)

(declare-fun e!902456 () List!14516)

(assert (=> b!1413632 (= e!902456 (Cons!14450 (h!19851 (list!5672 (tokens!1762 (head!2690 objs!24)))) (++!3767 (t!123793 (list!5672 (tokens!1762 (head!2690 objs!24)))) (list!5672 (tokens!1762 sep!3)))))))

(declare-fun d!404360 () Bool)

(assert (=> d!404360 e!902455))

(declare-fun res!640134 () Bool)

(assert (=> d!404360 (=> (not res!640134) (not e!902455))))

(declare-fun content!2141 (List!14516) (InoxSet Token!4684))

(assert (=> d!404360 (= res!640134 (= (content!2141 lt!473822) ((_ map or) (content!2141 (list!5672 (tokens!1762 (head!2690 objs!24)))) (content!2141 (list!5672 (tokens!1762 sep!3))))))))

(assert (=> d!404360 (= lt!473822 e!902456)))

(declare-fun c!232297 () Bool)

(assert (=> d!404360 (= c!232297 ((_ is Nil!14450) (list!5672 (tokens!1762 (head!2690 objs!24)))))))

(assert (=> d!404360 (= (++!3767 (list!5672 (tokens!1762 (head!2690 objs!24))) (list!5672 (tokens!1762 sep!3))) lt!473822)))

(declare-fun b!1413633 () Bool)

(declare-fun res!640133 () Bool)

(assert (=> b!1413633 (=> (not res!640133) (not e!902455))))

(declare-fun size!11916 (List!14516) Int)

(assert (=> b!1413633 (= res!640133 (= (size!11916 lt!473822) (+ (size!11916 (list!5672 (tokens!1762 (head!2690 objs!24)))) (size!11916 (list!5672 (tokens!1762 sep!3))))))))

(declare-fun b!1413631 () Bool)

(assert (=> b!1413631 (= e!902456 (list!5672 (tokens!1762 sep!3)))))

(assert (= (and d!404360 c!232297) b!1413631))

(assert (= (and d!404360 (not c!232297)) b!1413632))

(assert (= (and d!404360 res!640134) b!1413633))

(assert (= (and b!1413633 res!640133) b!1413634))

(assert (=> b!1413632 m!1595213))

(declare-fun m!1595477 () Bool)

(assert (=> b!1413632 m!1595477))

(declare-fun m!1595479 () Bool)

(assert (=> d!404360 m!1595479))

(assert (=> d!404360 m!1595211))

(declare-fun m!1595481 () Bool)

(assert (=> d!404360 m!1595481))

(assert (=> d!404360 m!1595213))

(declare-fun m!1595483 () Bool)

(assert (=> d!404360 m!1595483))

(declare-fun m!1595485 () Bool)

(assert (=> b!1413633 m!1595485))

(assert (=> b!1413633 m!1595211))

(declare-fun m!1595487 () Bool)

(assert (=> b!1413633 m!1595487))

(assert (=> b!1413633 m!1595213))

(declare-fun m!1595489 () Bool)

(assert (=> b!1413633 m!1595489))

(assert (=> b!1413466 d!404360))

(assert (=> b!1413466 d!404340))

(declare-fun d!404364 () Bool)

(declare-fun list!5675 (Conc!4808) List!14516)

(assert (=> d!404364 (= (list!5672 (tokens!1762 (get!4443 lt!473732))) (list!5675 (c!232208 (tokens!1762 (get!4443 lt!473732)))))))

(declare-fun bs!339169 () Bool)

(assert (= bs!339169 d!404364))

(declare-fun m!1595491 () Bool)

(assert (=> bs!339169 m!1595491))

(assert (=> b!1413466 d!404364))

(declare-fun d!404366 () Bool)

(assert (=> d!404366 (= (list!5672 (tokens!1762 sep!3)) (list!5675 (c!232208 (tokens!1762 sep!3))))))

(declare-fun bs!339170 () Bool)

(assert (= bs!339170 d!404366))

(declare-fun m!1595493 () Bool)

(assert (=> bs!339170 m!1595493))

(assert (=> b!1413466 d!404366))

(declare-fun d!404368 () Bool)

(assert (=> d!404368 (= (list!5672 (tokens!1762 (head!2690 objs!24))) (list!5675 (c!232208 (tokens!1762 (head!2690 objs!24)))))))

(declare-fun bs!339171 () Bool)

(assert (= bs!339171 d!404368))

(declare-fun m!1595495 () Bool)

(assert (=> bs!339171 m!1595495))

(assert (=> b!1413466 d!404368))

(declare-fun b!1413638 () Bool)

(declare-fun e!902457 () Bool)

(declare-fun lt!473823 () List!14516)

(assert (=> b!1413638 (= e!902457 (or (not (= (ite c!232277 lt!473768 lt!473745) Nil!14450)) (= lt!473823 (ite c!232277 lt!473780 lt!473770))))))

(declare-fun b!1413636 () Bool)

(declare-fun e!902458 () List!14516)

(assert (=> b!1413636 (= e!902458 (Cons!14450 (h!19851 (ite c!232277 lt!473780 lt!473770)) (++!3767 (t!123793 (ite c!232277 lt!473780 lt!473770)) (ite c!232277 lt!473768 lt!473745))))))

(declare-fun d!404370 () Bool)

(assert (=> d!404370 e!902457))

(declare-fun res!640136 () Bool)

(assert (=> d!404370 (=> (not res!640136) (not e!902457))))

(assert (=> d!404370 (= res!640136 (= (content!2141 lt!473823) ((_ map or) (content!2141 (ite c!232277 lt!473780 lt!473770)) (content!2141 (ite c!232277 lt!473768 lt!473745)))))))

(assert (=> d!404370 (= lt!473823 e!902458)))

(declare-fun c!232298 () Bool)

(assert (=> d!404370 (= c!232298 ((_ is Nil!14450) (ite c!232277 lt!473780 lt!473770)))))

(assert (=> d!404370 (= (++!3767 (ite c!232277 lt!473780 lt!473770) (ite c!232277 lt!473768 lt!473745)) lt!473823)))

(declare-fun b!1413637 () Bool)

(declare-fun res!640135 () Bool)

(assert (=> b!1413637 (=> (not res!640135) (not e!902457))))

(assert (=> b!1413637 (= res!640135 (= (size!11916 lt!473823) (+ (size!11916 (ite c!232277 lt!473780 lt!473770)) (size!11916 (ite c!232277 lt!473768 lt!473745)))))))

(declare-fun b!1413635 () Bool)

(assert (=> b!1413635 (= e!902458 (ite c!232277 lt!473768 lt!473745))))

(assert (= (and d!404370 c!232298) b!1413635))

(assert (= (and d!404370 (not c!232298)) b!1413636))

(assert (= (and d!404370 res!640136) b!1413637))

(assert (= (and b!1413637 res!640135) b!1413638))

(declare-fun m!1595497 () Bool)

(assert (=> b!1413636 m!1595497))

(declare-fun m!1595499 () Bool)

(assert (=> d!404370 m!1595499))

(declare-fun m!1595501 () Bool)

(assert (=> d!404370 m!1595501))

(declare-fun m!1595503 () Bool)

(assert (=> d!404370 m!1595503))

(declare-fun m!1595505 () Bool)

(assert (=> b!1413637 m!1595505))

(declare-fun m!1595507 () Bool)

(assert (=> b!1413637 m!1595507))

(declare-fun m!1595509 () Bool)

(assert (=> b!1413637 m!1595509))

(assert (=> bm!95121 d!404370))

(declare-fun d!404372 () Bool)

(declare-fun res!640139 () Bool)

(declare-fun e!902461 () Bool)

(assert (=> d!404372 (=> (not res!640139) (not e!902461))))

(declare-fun rulesValid!942 (LexerInterface!2195 List!14517) Bool)

(assert (=> d!404372 (= res!640139 (rulesValid!942 Lexer!2193 (rules!11032 sep!3)))))

(assert (=> d!404372 (= (rulesInvariant!2065 Lexer!2193 (rules!11032 sep!3)) e!902461)))

(declare-fun b!1413641 () Bool)

(declare-datatypes ((List!14519 0))(
  ( (Nil!14453) (Cons!14453 (h!19854 String!17241) (t!123888 List!14519)) )
))
(declare-fun noDuplicateTag!942 (LexerInterface!2195 List!14517 List!14519) Bool)

(assert (=> b!1413641 (= e!902461 (noDuplicateTag!942 Lexer!2193 (rules!11032 sep!3) Nil!14453))))

(assert (= (and d!404372 res!640139) b!1413641))

(declare-fun m!1595511 () Bool)

(assert (=> d!404372 m!1595511))

(declare-fun m!1595513 () Bool)

(assert (=> b!1413641 m!1595513))

(assert (=> b!1413544 d!404372))

(declare-fun d!404374 () Bool)

(declare-fun res!640146 () Bool)

(declare-fun e!902464 () Bool)

(assert (=> d!404374 (=> (not res!640146) (not e!902464))))

(declare-fun size!11917 (Conc!4808) Int)

(assert (=> d!404374 (= res!640146 (= (csize!9846 (c!232208 (tokens!1762 sep!3))) (+ (size!11917 (left!12345 (c!232208 (tokens!1762 sep!3)))) (size!11917 (right!12675 (c!232208 (tokens!1762 sep!3)))))))))

(assert (=> d!404374 (= (inv!18913 (c!232208 (tokens!1762 sep!3))) e!902464)))

(declare-fun b!1413648 () Bool)

(declare-fun res!640147 () Bool)

(assert (=> b!1413648 (=> (not res!640147) (not e!902464))))

(assert (=> b!1413648 (= res!640147 (and (not (= (left!12345 (c!232208 (tokens!1762 sep!3))) Empty!4808)) (not (= (right!12675 (c!232208 (tokens!1762 sep!3))) Empty!4808))))))

(declare-fun b!1413649 () Bool)

(declare-fun res!640148 () Bool)

(assert (=> b!1413649 (=> (not res!640148) (not e!902464))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!696 (Conc!4808) Int)

(assert (=> b!1413649 (= res!640148 (= (cheight!5019 (c!232208 (tokens!1762 sep!3))) (+ (max!0 (height!696 (left!12345 (c!232208 (tokens!1762 sep!3)))) (height!696 (right!12675 (c!232208 (tokens!1762 sep!3))))) 1)))))

(declare-fun b!1413650 () Bool)

(assert (=> b!1413650 (= e!902464 (<= 0 (cheight!5019 (c!232208 (tokens!1762 sep!3)))))))

(assert (= (and d!404374 res!640146) b!1413648))

(assert (= (and b!1413648 res!640147) b!1413649))

(assert (= (and b!1413649 res!640148) b!1413650))

(declare-fun m!1595515 () Bool)

(assert (=> d!404374 m!1595515))

(declare-fun m!1595517 () Bool)

(assert (=> d!404374 m!1595517))

(declare-fun m!1595519 () Bool)

(assert (=> b!1413649 m!1595519))

(declare-fun m!1595521 () Bool)

(assert (=> b!1413649 m!1595521))

(assert (=> b!1413649 m!1595519))

(assert (=> b!1413649 m!1595521))

(declare-fun m!1595523 () Bool)

(assert (=> b!1413649 m!1595523))

(assert (=> b!1413449 d!404374))

(declare-fun c!232299 () Bool)

(declare-fun d!404376 () Bool)

(assert (=> d!404376 (= c!232299 ((_ is Cons!14450) (ite c!232275 lt!473748 (ite c!232277 (t!123793 lt!473736) lt!473745))))))

(declare-fun e!902465 () List!14515)

(assert (=> d!404376 (= (printList!653 (ite c!232275 lt!473773 (ite c!232277 Lexer!2193 lt!473758)) (ite c!232275 lt!473748 (ite c!232277 (t!123793 lt!473736) lt!473745))) e!902465)))

(declare-fun b!1413651 () Bool)

(assert (=> b!1413651 (= e!902465 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232275 lt!473748 (ite c!232277 (t!123793 lt!473736) lt!473745))))) (printList!653 (ite c!232275 lt!473773 (ite c!232277 Lexer!2193 lt!473758)) (t!123793 (ite c!232275 lt!473748 (ite c!232277 (t!123793 lt!473736) lt!473745))))))))

(declare-fun b!1413652 () Bool)

(assert (=> b!1413652 (= e!902465 Nil!14449)))

(assert (= (and d!404376 c!232299) b!1413651))

(assert (= (and d!404376 (not c!232299)) b!1413652))

(declare-fun m!1595525 () Bool)

(assert (=> b!1413651 m!1595525))

(assert (=> b!1413651 m!1595525))

(declare-fun m!1595527 () Bool)

(assert (=> b!1413651 m!1595527))

(declare-fun m!1595529 () Bool)

(assert (=> b!1413651 m!1595529))

(assert (=> b!1413651 m!1595527))

(assert (=> b!1413651 m!1595529))

(declare-fun m!1595531 () Bool)

(assert (=> b!1413651 m!1595531))

(assert (=> bm!95113 d!404376))

(declare-fun d!404378 () Bool)

(declare-fun lt!473826 () Bool)

(declare-fun isEmpty!8848 (List!14516) Bool)

(assert (=> d!404378 (= lt!473826 (isEmpty!8848 (list!5672 (tokens!1762 (head!2690 objs!24)))))))

(declare-fun isEmpty!8849 (Conc!4808) Bool)

(assert (=> d!404378 (= lt!473826 (isEmpty!8849 (c!232208 (tokens!1762 (head!2690 objs!24)))))))

(assert (=> d!404378 (= (isEmpty!8840 (tokens!1762 (head!2690 objs!24))) lt!473826)))

(declare-fun bs!339172 () Bool)

(assert (= bs!339172 d!404378))

(assert (=> bs!339172 m!1595211))

(assert (=> bs!339172 m!1595211))

(declare-fun m!1595533 () Bool)

(assert (=> bs!339172 m!1595533))

(declare-fun m!1595535 () Bool)

(assert (=> bs!339172 m!1595535))

(assert (=> b!1413462 d!404378))

(declare-fun d!404380 () Bool)

(declare-fun lt!473829 () BalanceConc!9554)

(assert (=> d!404380 (= (list!5671 lt!473829) (originalCharacters!3373 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736))))))

(declare-fun dynLambda!6691 (Int TokenValue!2601) BalanceConc!9554)

(assert (=> d!404380 (= lt!473829 (dynLambda!6691 (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736))))) (value!81196 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736)))))))

(assert (=> d!404380 (= (charsOf!1470 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736))) lt!473829)))

(declare-fun b_lambda!44567 () Bool)

(assert (=> (not b_lambda!44567) (not d!404380)))

(declare-fun tb!73473 () Bool)

(declare-fun t!123827 () Bool)

(assert (=> (and b!1413591 (= (toChars!3669 (transformation!2511 (h!19852 (rules!11032 sep!3)))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736)))))) t!123827) tb!73473))

(declare-fun e!902468 () Bool)

(declare-fun tp!401243 () Bool)

(declare-fun b!1413657 () Bool)

(declare-fun inv!18925 (Conc!4807) Bool)

(assert (=> b!1413657 (= e!902468 (and (inv!18925 (c!232207 (dynLambda!6691 (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736))))) (value!81196 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736)))))) tp!401243))))

(declare-fun result!89434 () Bool)

(declare-fun inv!18926 (BalanceConc!9554) Bool)

(assert (=> tb!73473 (= result!89434 (and (inv!18926 (dynLambda!6691 (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736))))) (value!81196 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736))))) e!902468))))

(assert (= tb!73473 b!1413657))

(declare-fun m!1595537 () Bool)

(assert (=> b!1413657 m!1595537))

(declare-fun m!1595539 () Bool)

(assert (=> tb!73473 m!1595539))

(assert (=> d!404380 t!123827))

(declare-fun b_and!94735 () Bool)

(assert (= b_and!94729 (and (=> t!123827 result!89434) b_and!94735)))

(declare-fun t!123829 () Bool)

(declare-fun tb!73475 () Bool)

(assert (=> (and b!1413594 (= (toChars!3669 (transformation!2511 (h!19852 (rules!11032 acc!229)))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736)))))) t!123829) tb!73475))

(declare-fun result!89438 () Bool)

(assert (= result!89438 result!89434))

(assert (=> d!404380 t!123829))

(declare-fun b_and!94737 () Bool)

(assert (= b_and!94733 (and (=> t!123829 result!89438) b_and!94737)))

(declare-fun m!1595541 () Bool)

(assert (=> d!404380 m!1595541))

(declare-fun m!1595543 () Bool)

(assert (=> d!404380 m!1595543))

(assert (=> bm!95136 d!404380))

(declare-fun b!1413671 () Bool)

(declare-fun e!902480 () Bool)

(assert (=> b!1413671 (= e!902480 true)))

(declare-fun b!1413670 () Bool)

(declare-fun e!902479 () Bool)

(assert (=> b!1413670 (= e!902479 e!902480)))

(declare-fun b!1413669 () Bool)

(declare-fun e!902478 () Bool)

(assert (=> b!1413669 (= e!902478 e!902479)))

(declare-fun d!404382 () Bool)

(assert (=> d!404382 e!902478))

(assert (= b!1413670 b!1413671))

(assert (= b!1413669 b!1413670))

(assert (= (and d!404382 ((_ is Cons!14451) (rules!11032 acc!229))) b!1413669))

(declare-fun order!8815 () Int)

(declare-fun order!8817 () Int)

(declare-fun lambda!62474 () Int)

(declare-fun dynLambda!6692 (Int Int) Int)

(declare-fun dynLambda!6693 (Int Int) Int)

(assert (=> b!1413671 (< (dynLambda!6692 order!8815 (toValue!3810 (transformation!2511 (h!19852 (rules!11032 acc!229))))) (dynLambda!6693 order!8817 lambda!62474))))

(declare-fun order!8819 () Int)

(declare-fun dynLambda!6694 (Int Int) Int)

(assert (=> b!1413671 (< (dynLambda!6694 order!8819 (toChars!3669 (transformation!2511 (h!19852 (rules!11032 acc!229))))) (dynLambda!6693 order!8817 lambda!62474))))

(assert (=> d!404382 true))

(declare-fun e!902471 () Bool)

(assert (=> d!404382 e!902471))

(declare-fun res!640151 () Bool)

(assert (=> d!404382 (=> (not res!640151) (not e!902471))))

(declare-fun lt!473832 () Bool)

(declare-fun forall!3554 (List!14516 Int) Bool)

(assert (=> d!404382 (= res!640151 (= lt!473832 (forall!3554 (list!5672 (tokens!1762 acc!229)) lambda!62474)))))

(declare-fun forall!3555 (BalanceConc!9556 Int) Bool)

(assert (=> d!404382 (= lt!473832 (forall!3555 (tokens!1762 acc!229) lambda!62474))))

(assert (=> d!404382 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404382 (= (rulesProduceEachTokenIndividually!792 Lexer!2193 (rules!11032 acc!229) (tokens!1762 acc!229)) lt!473832)))

(declare-fun b!1413660 () Bool)

(assert (=> b!1413660 (= e!902471 (= lt!473832 (rulesProduceEachTokenIndividuallyList!678 Lexer!2193 (rules!11032 acc!229) (list!5672 (tokens!1762 acc!229)))))))

(assert (= (and d!404382 res!640151) b!1413660))

(assert (=> d!404382 m!1594969))

(assert (=> d!404382 m!1594969))

(declare-fun m!1595545 () Bool)

(assert (=> d!404382 m!1595545))

(declare-fun m!1595547 () Bool)

(assert (=> d!404382 m!1595547))

(assert (=> d!404382 m!1595353))

(assert (=> b!1413660 m!1594969))

(assert (=> b!1413660 m!1594969))

(declare-fun m!1595549 () Bool)

(assert (=> b!1413660 m!1595549))

(assert (=> b!1413542 d!404382))

(declare-fun e!902481 () Bool)

(declare-fun b!1413677 () Bool)

(declare-fun lt!473835 () List!14516)

(assert (=> b!1413677 (= e!902481 (or (not (= lt!473769 Nil!14450)) (= lt!473835 lt!473724)))))

(declare-fun b!1413675 () Bool)

(declare-fun e!902482 () List!14516)

(assert (=> b!1413675 (= e!902482 (Cons!14450 (h!19851 lt!473724) (++!3767 (t!123793 lt!473724) lt!473769)))))

(declare-fun d!404384 () Bool)

(assert (=> d!404384 e!902481))

(declare-fun res!640153 () Bool)

(assert (=> d!404384 (=> (not res!640153) (not e!902481))))

(assert (=> d!404384 (= res!640153 (= (content!2141 lt!473835) ((_ map or) (content!2141 lt!473724) (content!2141 lt!473769))))))

(assert (=> d!404384 (= lt!473835 e!902482)))

(declare-fun c!232300 () Bool)

(assert (=> d!404384 (= c!232300 ((_ is Nil!14450) lt!473724))))

(assert (=> d!404384 (= (++!3767 lt!473724 lt!473769) lt!473835)))

(declare-fun b!1413676 () Bool)

(declare-fun res!640152 () Bool)

(assert (=> b!1413676 (=> (not res!640152) (not e!902481))))

(assert (=> b!1413676 (= res!640152 (= (size!11916 lt!473835) (+ (size!11916 lt!473724) (size!11916 lt!473769))))))

(declare-fun b!1413674 () Bool)

(assert (=> b!1413674 (= e!902482 lt!473769)))

(assert (= (and d!404384 c!232300) b!1413674))

(assert (= (and d!404384 (not c!232300)) b!1413675))

(assert (= (and d!404384 res!640153) b!1413676))

(assert (= (and b!1413676 res!640152) b!1413677))

(declare-fun m!1595551 () Bool)

(assert (=> b!1413675 m!1595551))

(declare-fun m!1595553 () Bool)

(assert (=> d!404384 m!1595553))

(declare-fun m!1595555 () Bool)

(assert (=> d!404384 m!1595555))

(declare-fun m!1595557 () Bool)

(assert (=> d!404384 m!1595557))

(declare-fun m!1595559 () Bool)

(assert (=> b!1413676 m!1595559))

(declare-fun m!1595561 () Bool)

(assert (=> b!1413676 m!1595561))

(declare-fun m!1595563 () Bool)

(assert (=> b!1413676 m!1595563))

(assert (=> b!1413461 d!404384))

(declare-fun d!404386 () Bool)

(declare-fun lt!473839 () BalanceConc!9554)

(assert (=> d!404386 (= (list!5671 lt!473839) (printList!653 Lexer!2193 (list!5672 (tokens!1762 (head!2690 objs!24)))))))

(assert (=> d!404386 (= lt!473839 (printTailRec!635 Lexer!2193 (tokens!1762 (head!2690 objs!24)) 0 (BalanceConc!9555 Empty!4807)))))

(assert (=> d!404386 (= (print!962 Lexer!2193 (tokens!1762 (head!2690 objs!24))) lt!473839)))

(declare-fun bs!339173 () Bool)

(assert (= bs!339173 d!404386))

(declare-fun m!1595571 () Bool)

(assert (=> bs!339173 m!1595571))

(assert (=> bs!339173 m!1595211))

(assert (=> bs!339173 m!1595211))

(declare-fun m!1595573 () Bool)

(assert (=> bs!339173 m!1595573))

(declare-fun m!1595575 () Bool)

(assert (=> bs!339173 m!1595575))

(assert (=> bm!95116 d!404386))

(declare-fun d!404390 () Bool)

(declare-fun e!902496 () Bool)

(assert (=> d!404390 e!902496))

(declare-fun res!640157 () Bool)

(assert (=> d!404390 (=> (not res!640157) (not e!902496))))

(declare-fun lt!473840 () List!14515)

(assert (=> d!404390 (= res!640157 (= (content!2140 lt!473840) ((_ map or) (content!2140 (ite c!232275 call!95128 e!902340)) (content!2140 (ite c!232275 call!95117 call!95112)))))))

(declare-fun e!902495 () List!14515)

(assert (=> d!404390 (= lt!473840 e!902495)))

(declare-fun c!232301 () Bool)

(assert (=> d!404390 (= c!232301 ((_ is Nil!14449) (ite c!232275 call!95128 e!902340)))))

(assert (=> d!404390 (= (++!3768 (ite c!232275 call!95128 e!902340) (ite c!232275 call!95117 call!95112)) lt!473840)))

(declare-fun b!1413697 () Bool)

(assert (=> b!1413697 (= e!902496 (or (not (= (ite c!232275 call!95117 call!95112) Nil!14449)) (= lt!473840 (ite c!232275 call!95128 e!902340))))))

(declare-fun b!1413696 () Bool)

(declare-fun res!640158 () Bool)

(assert (=> b!1413696 (=> (not res!640158) (not e!902496))))

(assert (=> b!1413696 (= res!640158 (= (size!11915 lt!473840) (+ (size!11915 (ite c!232275 call!95128 e!902340)) (size!11915 (ite c!232275 call!95117 call!95112)))))))

(declare-fun b!1413695 () Bool)

(assert (=> b!1413695 (= e!902495 (Cons!14449 (h!19850 (ite c!232275 call!95128 e!902340)) (++!3768 (t!123792 (ite c!232275 call!95128 e!902340)) (ite c!232275 call!95117 call!95112))))))

(declare-fun b!1413694 () Bool)

(assert (=> b!1413694 (= e!902495 (ite c!232275 call!95117 call!95112))))

(assert (= (and d!404390 c!232301) b!1413694))

(assert (= (and d!404390 (not c!232301)) b!1413695))

(assert (= (and d!404390 res!640157) b!1413696))

(assert (= (and b!1413696 res!640158) b!1413697))

(declare-fun m!1595577 () Bool)

(assert (=> d!404390 m!1595577))

(declare-fun m!1595579 () Bool)

(assert (=> d!404390 m!1595579))

(declare-fun m!1595581 () Bool)

(assert (=> d!404390 m!1595581))

(declare-fun m!1595583 () Bool)

(assert (=> b!1413696 m!1595583))

(declare-fun m!1595585 () Bool)

(assert (=> b!1413696 m!1595585))

(declare-fun m!1595587 () Bool)

(assert (=> b!1413696 m!1595587))

(declare-fun m!1595589 () Bool)

(assert (=> b!1413695 m!1595589))

(assert (=> bm!95129 d!404390))

(declare-fun d!404392 () Bool)

(assert (=> d!404392 (= (inv!18900 (tag!2773 (h!19852 (rules!11032 acc!229)))) (= (mod (str.len (value!81195 (tag!2773 (h!19852 (rules!11032 acc!229))))) 2) 0))))

(assert (=> b!1413593 d!404392))

(declare-fun d!404394 () Bool)

(declare-fun res!640167 () Bool)

(declare-fun e!902505 () Bool)

(assert (=> d!404394 (=> (not res!640167) (not e!902505))))

(declare-fun semiInverseModEq!973 (Int Int) Bool)

(assert (=> d!404394 (= res!640167 (semiInverseModEq!973 (toChars!3669 (transformation!2511 (h!19852 (rules!11032 acc!229)))) (toValue!3810 (transformation!2511 (h!19852 (rules!11032 acc!229))))))))

(assert (=> d!404394 (= (inv!18924 (transformation!2511 (h!19852 (rules!11032 acc!229)))) e!902505)))

(declare-fun b!1413706 () Bool)

(declare-fun equivClasses!932 (Int Int) Bool)

(assert (=> b!1413706 (= e!902505 (equivClasses!932 (toChars!3669 (transformation!2511 (h!19852 (rules!11032 acc!229)))) (toValue!3810 (transformation!2511 (h!19852 (rules!11032 acc!229))))))))

(assert (= (and d!404394 res!640167) b!1413706))

(declare-fun m!1595597 () Bool)

(assert (=> d!404394 m!1595597))

(declare-fun m!1595599 () Bool)

(assert (=> b!1413706 m!1595599))

(assert (=> b!1413593 d!404394))

(declare-fun d!404400 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!394) Rule!4822)

(declare-fun integerLiteralRule!0 (JsonLexer!394) Rule!4822)

(declare-fun floatLiteralRule!0 (JsonLexer!394) Rule!4822)

(declare-fun trueRule!0 (JsonLexer!394) Rule!4822)

(declare-fun falseRule!0 (JsonLexer!394) Rule!4822)

(declare-fun nullRule!0 (JsonLexer!394) Rule!4822)

(declare-fun jsonstringRule!0 (JsonLexer!394) Rule!4822)

(declare-fun lBraceRule!0 (JsonLexer!394) Rule!4822)

(declare-fun rBraceRule!0 (JsonLexer!394) Rule!4822)

(declare-fun lBracketRule!0 (JsonLexer!394) Rule!4822)

(declare-fun rBracketRule!0 (JsonLexer!394) Rule!4822)

(declare-fun colonRule!0 (JsonLexer!394) Rule!4822)

(declare-fun commaRule!0 (JsonLexer!394) Rule!4822)

(declare-fun eofRule!0 (JsonLexer!394) Rule!4822)

(assert (=> d!404400 (= (rules!109 JsonLexer!395) (Cons!14451 (whitespaceRule!0 JsonLexer!395) (Cons!14451 (integerLiteralRule!0 JsonLexer!395) (Cons!14451 (floatLiteralRule!0 JsonLexer!395) (Cons!14451 (trueRule!0 JsonLexer!395) (Cons!14451 (falseRule!0 JsonLexer!395) (Cons!14451 (nullRule!0 JsonLexer!395) (Cons!14451 (jsonstringRule!0 JsonLexer!395) (Cons!14451 (lBraceRule!0 JsonLexer!395) (Cons!14451 (rBraceRule!0 JsonLexer!395) (Cons!14451 (lBracketRule!0 JsonLexer!395) (Cons!14451 (rBracketRule!0 JsonLexer!395) (Cons!14451 (colonRule!0 JsonLexer!395) (Cons!14451 (commaRule!0 JsonLexer!395) (Cons!14451 (eofRule!0 JsonLexer!395) Nil!14451)))))))))))))))))

(declare-fun bs!339176 () Bool)

(assert (= bs!339176 d!404400))

(declare-fun m!1595669 () Bool)

(assert (=> bs!339176 m!1595669))

(declare-fun m!1595671 () Bool)

(assert (=> bs!339176 m!1595671))

(declare-fun m!1595673 () Bool)

(assert (=> bs!339176 m!1595673))

(declare-fun m!1595675 () Bool)

(assert (=> bs!339176 m!1595675))

(declare-fun m!1595677 () Bool)

(assert (=> bs!339176 m!1595677))

(declare-fun m!1595679 () Bool)

(assert (=> bs!339176 m!1595679))

(declare-fun m!1595681 () Bool)

(assert (=> bs!339176 m!1595681))

(declare-fun m!1595683 () Bool)

(assert (=> bs!339176 m!1595683))

(declare-fun m!1595685 () Bool)

(assert (=> bs!339176 m!1595685))

(declare-fun m!1595687 () Bool)

(assert (=> bs!339176 m!1595687))

(declare-fun m!1595689 () Bool)

(assert (=> bs!339176 m!1595689))

(declare-fun m!1595691 () Bool)

(assert (=> bs!339176 m!1595691))

(declare-fun m!1595693 () Bool)

(assert (=> bs!339176 m!1595693))

(declare-fun m!1595695 () Bool)

(assert (=> bs!339176 m!1595695))

(assert (=> d!404306 d!404400))

(declare-fun d!404422 () Bool)

(declare-fun lt!473868 () BalanceConc!9554)

(declare-fun printListTailRec!260 (LexerInterface!2195 List!14516 List!14515) List!14515)

(declare-fun dropList!433 (BalanceConc!9556 Int) List!14516)

(assert (=> d!404422 (= (list!5671 lt!473868) (printListTailRec!260 Lexer!2193 (dropList!433 (tokens!1762 (v!21893 lt!473262)) 0) (list!5671 (BalanceConc!9555 Empty!4807))))))

(declare-fun e!902540 () BalanceConc!9554)

(assert (=> d!404422 (= lt!473868 e!902540)))

(declare-fun c!232312 () Bool)

(declare-fun size!11918 (BalanceConc!9556) Int)

(assert (=> d!404422 (= c!232312 (>= 0 (size!11918 (tokens!1762 (v!21893 lt!473262)))))))

(declare-fun e!902541 () Bool)

(assert (=> d!404422 e!902541))

(declare-fun res!640208 () Bool)

(assert (=> d!404422 (=> (not res!640208) (not e!902541))))

(assert (=> d!404422 (= res!640208 (>= 0 0))))

(assert (=> d!404422 (= (printTailRec!635 Lexer!2193 (tokens!1762 (v!21893 lt!473262)) 0 (BalanceConc!9555 Empty!4807)) lt!473868)))

(declare-fun b!1413772 () Bool)

(assert (=> b!1413772 (= e!902541 (<= 0 (size!11918 (tokens!1762 (v!21893 lt!473262)))))))

(declare-fun b!1413773 () Bool)

(assert (=> b!1413773 (= e!902540 (BalanceConc!9555 Empty!4807))))

(declare-fun b!1413774 () Bool)

(declare-fun ++!3770 (BalanceConc!9554 BalanceConc!9554) BalanceConc!9554)

(declare-fun apply!3702 (BalanceConc!9556 Int) Token!4684)

(assert (=> b!1413774 (= e!902540 (printTailRec!635 Lexer!2193 (tokens!1762 (v!21893 lt!473262)) (+ 0 1) (++!3770 (BalanceConc!9555 Empty!4807) (charsOf!1470 (apply!3702 (tokens!1762 (v!21893 lt!473262)) 0)))))))

(declare-fun lt!473870 () List!14516)

(assert (=> b!1413774 (= lt!473870 (list!5672 (tokens!1762 (v!21893 lt!473262))))))

(declare-fun lt!473867 () Unit!20997)

(declare-fun lemmaDropApply!455 (List!14516 Int) Unit!20997)

(assert (=> b!1413774 (= lt!473867 (lemmaDropApply!455 lt!473870 0))))

(declare-fun head!2697 (List!14516) Token!4684)

(declare-fun drop!700 (List!14516 Int) List!14516)

(declare-fun apply!3703 (List!14516 Int) Token!4684)

(assert (=> b!1413774 (= (head!2697 (drop!700 lt!473870 0)) (apply!3703 lt!473870 0))))

(declare-fun lt!473865 () Unit!20997)

(assert (=> b!1413774 (= lt!473865 lt!473867)))

(declare-fun lt!473864 () List!14516)

(assert (=> b!1413774 (= lt!473864 (list!5672 (tokens!1762 (v!21893 lt!473262))))))

(declare-fun lt!473869 () Unit!20997)

(declare-fun lemmaDropTail!435 (List!14516 Int) Unit!20997)

(assert (=> b!1413774 (= lt!473869 (lemmaDropTail!435 lt!473864 0))))

(declare-fun tail!2075 (List!14516) List!14516)

(assert (=> b!1413774 (= (tail!2075 (drop!700 lt!473864 0)) (drop!700 lt!473864 (+ 0 1)))))

(declare-fun lt!473866 () Unit!20997)

(assert (=> b!1413774 (= lt!473866 lt!473869)))

(assert (= (and d!404422 res!640208) b!1413772))

(assert (= (and d!404422 c!232312) b!1413773))

(assert (= (and d!404422 (not c!232312)) b!1413774))

(declare-fun m!1595697 () Bool)

(assert (=> d!404422 m!1595697))

(declare-fun m!1595699 () Bool)

(assert (=> d!404422 m!1595699))

(assert (=> d!404422 m!1595697))

(declare-fun m!1595701 () Bool)

(assert (=> d!404422 m!1595701))

(declare-fun m!1595703 () Bool)

(assert (=> d!404422 m!1595703))

(assert (=> d!404422 m!1595701))

(declare-fun m!1595705 () Bool)

(assert (=> d!404422 m!1595705))

(assert (=> b!1413772 m!1595699))

(declare-fun m!1595707 () Bool)

(assert (=> b!1413774 m!1595707))

(declare-fun m!1595709 () Bool)

(assert (=> b!1413774 m!1595709))

(declare-fun m!1595711 () Bool)

(assert (=> b!1413774 m!1595711))

(declare-fun m!1595713 () Bool)

(assert (=> b!1413774 m!1595713))

(declare-fun m!1595715 () Bool)

(assert (=> b!1413774 m!1595715))

(declare-fun m!1595717 () Bool)

(assert (=> b!1413774 m!1595717))

(declare-fun m!1595719 () Bool)

(assert (=> b!1413774 m!1595719))

(declare-fun m!1595721 () Bool)

(assert (=> b!1413774 m!1595721))

(declare-fun m!1595723 () Bool)

(assert (=> b!1413774 m!1595723))

(assert (=> b!1413774 m!1594971))

(declare-fun m!1595725 () Bool)

(assert (=> b!1413774 m!1595725))

(declare-fun m!1595727 () Bool)

(assert (=> b!1413774 m!1595727))

(assert (=> b!1413774 m!1595717))

(declare-fun m!1595729 () Bool)

(assert (=> b!1413774 m!1595729))

(assert (=> b!1413774 m!1595721))

(assert (=> b!1413774 m!1595709))

(assert (=> b!1413774 m!1595725))

(assert (=> b!1413774 m!1595729))

(assert (=> bm!95021 d!404422))

(declare-fun d!404424 () Bool)

(declare-fun lt!473871 () BalanceConc!9554)

(assert (=> d!404424 (= (list!5671 lt!473871) (printList!653 Lexer!2193 (list!5672 (tokens!1762 (v!21893 lt!473262)))))))

(assert (=> d!404424 (= lt!473871 (printTailRec!635 Lexer!2193 (tokens!1762 (v!21893 lt!473262)) 0 (BalanceConc!9555 Empty!4807)))))

(assert (=> d!404424 (= (print!962 Lexer!2193 (tokens!1762 (v!21893 lt!473262))) lt!473871)))

(declare-fun bs!339177 () Bool)

(assert (= bs!339177 d!404424))

(declare-fun m!1595731 () Bool)

(assert (=> bs!339177 m!1595731))

(assert (=> bs!339177 m!1594971))

(assert (=> bs!339177 m!1594971))

(declare-fun m!1595733 () Bool)

(assert (=> bs!339177 m!1595733))

(assert (=> bs!339177 m!1595011))

(assert (=> bm!95037 d!404424))

(declare-fun d!404426 () Bool)

(assert (=> d!404426 (= (isEmpty!8839 lt!473732) (not ((_ is Some!2769) lt!473732)))))

(assert (=> d!404288 d!404426))

(declare-fun d!404428 () Bool)

(declare-fun lt!473872 () Bool)

(assert (=> d!404428 (= lt!473872 (isEmpty!8848 (list!5672 (tokens!1762 sep!3))))))

(assert (=> d!404428 (= lt!473872 (isEmpty!8849 (c!232208 (tokens!1762 sep!3))))))

(assert (=> d!404428 (= (isEmpty!8840 (tokens!1762 sep!3)) lt!473872)))

(declare-fun bs!339178 () Bool)

(assert (= bs!339178 d!404428))

(assert (=> bs!339178 m!1595213))

(assert (=> bs!339178 m!1595213))

(declare-fun m!1595735 () Bool)

(assert (=> bs!339178 m!1595735))

(declare-fun m!1595737 () Bool)

(assert (=> bs!339178 m!1595737))

(assert (=> d!404288 d!404428))

(declare-fun d!404430 () Bool)

(declare-fun e!902544 () Bool)

(assert (=> d!404430 e!902544))

(declare-fun res!640213 () Bool)

(assert (=> d!404430 (=> (not res!640213) (not e!902544))))

(assert (=> d!404430 (= res!640213 (rulesInvariant!2065 Lexer!2193 (rules!11032 (head!2690 objs!24))))))

(declare-fun Unit!21038 () Unit!20997)

(assert (=> d!404430 (= (lemmaInvariant!225 (head!2690 objs!24)) Unit!21038)))

(declare-fun b!1413779 () Bool)

(declare-fun res!640214 () Bool)

(assert (=> b!1413779 (=> (not res!640214) (not e!902544))))

(assert (=> b!1413779 (= res!640214 (rulesProduceEachTokenIndividually!792 Lexer!2193 (rules!11032 (head!2690 objs!24)) (tokens!1762 (head!2690 objs!24))))))

(declare-fun b!1413780 () Bool)

(assert (=> b!1413780 (= e!902544 (separableTokens!177 Lexer!2193 (tokens!1762 (head!2690 objs!24)) (rules!11032 (head!2690 objs!24))))))

(assert (= (and d!404430 res!640213) b!1413779))

(assert (= (and b!1413779 res!640214) b!1413780))

(declare-fun m!1595739 () Bool)

(assert (=> d!404430 m!1595739))

(declare-fun m!1595741 () Bool)

(assert (=> b!1413779 m!1595741))

(declare-fun m!1595743 () Bool)

(assert (=> b!1413780 m!1595743))

(assert (=> d!404288 d!404430))

(declare-fun d!404432 () Bool)

(declare-fun e!902545 () Bool)

(assert (=> d!404432 e!902545))

(declare-fun res!640215 () Bool)

(assert (=> d!404432 (=> (not res!640215) (not e!902545))))

(assert (=> d!404432 (= res!640215 (rulesInvariant!2065 Lexer!2193 (rules!11032 sep!3)))))

(declare-fun Unit!21039 () Unit!20997)

(assert (=> d!404432 (= (lemmaInvariant!225 sep!3) Unit!21039)))

(declare-fun b!1413781 () Bool)

(declare-fun res!640216 () Bool)

(assert (=> b!1413781 (=> (not res!640216) (not e!902545))))

(assert (=> b!1413781 (= res!640216 (rulesProduceEachTokenIndividually!792 Lexer!2193 (rules!11032 sep!3) (tokens!1762 sep!3)))))

(declare-fun b!1413782 () Bool)

(assert (=> b!1413782 (= e!902545 (separableTokens!177 Lexer!2193 (tokens!1762 sep!3) (rules!11032 sep!3)))))

(assert (= (and d!404432 res!640215) b!1413781))

(assert (= (and b!1413781 res!640216) b!1413782))

(assert (=> d!404432 m!1595363))

(assert (=> b!1413781 m!1595365))

(assert (=> b!1413782 m!1595367))

(assert (=> d!404288 d!404432))

(declare-fun d!404434 () Bool)

(assert (=> d!404434 (= (get!4443 lt!473601) (v!21893 lt!473601))))

(assert (=> b!1413415 d!404434))

(declare-fun d!404436 () Bool)

(assert (=> d!404436 (= (isEmpty!8839 lt!473601) (not ((_ is Some!2769) lt!473601)))))

(assert (=> d!404268 d!404436))

(declare-fun d!404438 () Bool)

(declare-fun lt!473873 () Bool)

(assert (=> d!404438 (= lt!473873 (isEmpty!8848 (list!5672 (tokens!1762 (v!21893 lt!473262)))))))

(assert (=> d!404438 (= lt!473873 (isEmpty!8849 (c!232208 (tokens!1762 (v!21893 lt!473262)))))))

(assert (=> d!404438 (= (isEmpty!8840 (tokens!1762 (v!21893 lt!473262))) lt!473873)))

(declare-fun bs!339179 () Bool)

(assert (= bs!339179 d!404438))

(assert (=> bs!339179 m!1594971))

(assert (=> bs!339179 m!1594971))

(declare-fun m!1595745 () Bool)

(assert (=> bs!339179 m!1595745))

(declare-fun m!1595747 () Bool)

(assert (=> bs!339179 m!1595747))

(assert (=> d!404268 d!404438))

(declare-fun d!404440 () Bool)

(declare-fun e!902546 () Bool)

(assert (=> d!404440 e!902546))

(declare-fun res!640217 () Bool)

(assert (=> d!404440 (=> (not res!640217) (not e!902546))))

(assert (=> d!404440 (= res!640217 (rulesInvariant!2065 Lexer!2193 (rules!11032 acc!229)))))

(declare-fun Unit!21040 () Unit!20997)

(assert (=> d!404440 (= (lemmaInvariant!225 acc!229) Unit!21040)))

(declare-fun b!1413783 () Bool)

(declare-fun res!640218 () Bool)

(assert (=> b!1413783 (=> (not res!640218) (not e!902546))))

(assert (=> b!1413783 (= res!640218 (rulesProduceEachTokenIndividually!792 Lexer!2193 (rules!11032 acc!229) (tokens!1762 acc!229)))))

(declare-fun b!1413784 () Bool)

(assert (=> b!1413784 (= e!902546 (separableTokens!177 Lexer!2193 (tokens!1762 acc!229) (rules!11032 acc!229)))))

(assert (= (and d!404440 res!640217) b!1413783))

(assert (= (and b!1413783 res!640218) b!1413784))

(assert (=> d!404440 m!1595355))

(assert (=> b!1413783 m!1595357))

(assert (=> b!1413784 m!1595359))

(assert (=> d!404268 d!404440))

(declare-fun d!404442 () Bool)

(declare-fun e!902547 () Bool)

(assert (=> d!404442 e!902547))

(declare-fun res!640219 () Bool)

(assert (=> d!404442 (=> (not res!640219) (not e!902547))))

(assert (=> d!404442 (= res!640219 (rulesInvariant!2065 Lexer!2193 (rules!11032 (v!21893 lt!473262))))))

(declare-fun Unit!21041 () Unit!20997)

(assert (=> d!404442 (= (lemmaInvariant!225 (v!21893 lt!473262)) Unit!21041)))

(declare-fun b!1413785 () Bool)

(declare-fun res!640220 () Bool)

(assert (=> b!1413785 (=> (not res!640220) (not e!902547))))

(assert (=> b!1413785 (= res!640220 (rulesProduceEachTokenIndividually!792 Lexer!2193 (rules!11032 (v!21893 lt!473262)) (tokens!1762 (v!21893 lt!473262))))))

(declare-fun b!1413786 () Bool)

(assert (=> b!1413786 (= e!902547 (separableTokens!177 Lexer!2193 (tokens!1762 (v!21893 lt!473262)) (rules!11032 (v!21893 lt!473262))))))

(assert (= (and d!404442 res!640219) b!1413785))

(assert (= (and b!1413785 res!640220) b!1413786))

(declare-fun m!1595749 () Bool)

(assert (=> d!404442 m!1595749))

(declare-fun m!1595751 () Bool)

(assert (=> b!1413785 m!1595751))

(declare-fun m!1595753 () Bool)

(assert (=> b!1413786 m!1595753))

(assert (=> d!404268 d!404442))

(assert (=> b!1413421 d!404434))

(declare-fun b!1413790 () Bool)

(declare-fun e!902548 () Bool)

(declare-fun lt!473874 () List!14516)

(assert (=> b!1413790 (= e!902548 (or (not (= (list!5672 (tokens!1762 (v!21893 lt!473262))) Nil!14450)) (= lt!473874 (list!5672 (tokens!1762 acc!229)))))))

(declare-fun b!1413788 () Bool)

(declare-fun e!902549 () List!14516)

(assert (=> b!1413788 (= e!902549 (Cons!14450 (h!19851 (list!5672 (tokens!1762 acc!229))) (++!3767 (t!123793 (list!5672 (tokens!1762 acc!229))) (list!5672 (tokens!1762 (v!21893 lt!473262))))))))

(declare-fun d!404444 () Bool)

(assert (=> d!404444 e!902548))

(declare-fun res!640222 () Bool)

(assert (=> d!404444 (=> (not res!640222) (not e!902548))))

(assert (=> d!404444 (= res!640222 (= (content!2141 lt!473874) ((_ map or) (content!2141 (list!5672 (tokens!1762 acc!229))) (content!2141 (list!5672 (tokens!1762 (v!21893 lt!473262)))))))))

(assert (=> d!404444 (= lt!473874 e!902549)))

(declare-fun c!232313 () Bool)

(assert (=> d!404444 (= c!232313 ((_ is Nil!14450) (list!5672 (tokens!1762 acc!229))))))

(assert (=> d!404444 (= (++!3767 (list!5672 (tokens!1762 acc!229)) (list!5672 (tokens!1762 (v!21893 lt!473262)))) lt!473874)))

(declare-fun b!1413789 () Bool)

(declare-fun res!640221 () Bool)

(assert (=> b!1413789 (=> (not res!640221) (not e!902548))))

(assert (=> b!1413789 (= res!640221 (= (size!11916 lt!473874) (+ (size!11916 (list!5672 (tokens!1762 acc!229))) (size!11916 (list!5672 (tokens!1762 (v!21893 lt!473262)))))))))

(declare-fun b!1413787 () Bool)

(assert (=> b!1413787 (= e!902549 (list!5672 (tokens!1762 (v!21893 lt!473262))))))

(assert (= (and d!404444 c!232313) b!1413787))

(assert (= (and d!404444 (not c!232313)) b!1413788))

(assert (= (and d!404444 res!640222) b!1413789))

(assert (= (and b!1413789 res!640221) b!1413790))

(assert (=> b!1413788 m!1594971))

(declare-fun m!1595755 () Bool)

(assert (=> b!1413788 m!1595755))

(declare-fun m!1595757 () Bool)

(assert (=> d!404444 m!1595757))

(assert (=> d!404444 m!1594969))

(declare-fun m!1595759 () Bool)

(assert (=> d!404444 m!1595759))

(assert (=> d!404444 m!1594971))

(declare-fun m!1595761 () Bool)

(assert (=> d!404444 m!1595761))

(declare-fun m!1595763 () Bool)

(assert (=> b!1413789 m!1595763))

(assert (=> b!1413789 m!1594969))

(declare-fun m!1595765 () Bool)

(assert (=> b!1413789 m!1595765))

(assert (=> b!1413789 m!1594971))

(declare-fun m!1595767 () Bool)

(assert (=> b!1413789 m!1595767))

(assert (=> b!1413421 d!404444))

(declare-fun d!404446 () Bool)

(assert (=> d!404446 (= (list!5672 (tokens!1762 acc!229)) (list!5675 (c!232208 (tokens!1762 acc!229))))))

(declare-fun bs!339180 () Bool)

(assert (= bs!339180 d!404446))

(declare-fun m!1595769 () Bool)

(assert (=> bs!339180 m!1595769))

(assert (=> b!1413421 d!404446))

(declare-fun d!404448 () Bool)

(assert (=> d!404448 (= (list!5672 (tokens!1762 (v!21893 lt!473262))) (list!5675 (c!232208 (tokens!1762 (v!21893 lt!473262)))))))

(declare-fun bs!339181 () Bool)

(assert (= bs!339181 d!404448))

(declare-fun m!1595771 () Bool)

(assert (=> bs!339181 m!1595771))

(assert (=> b!1413421 d!404448))

(declare-fun d!404450 () Bool)

(assert (=> d!404450 (= (list!5672 (tokens!1762 (get!4443 lt!473601))) (list!5675 (c!232208 (tokens!1762 (get!4443 lt!473601)))))))

(declare-fun bs!339182 () Bool)

(assert (= bs!339182 d!404450))

(declare-fun m!1595773 () Bool)

(assert (=> bs!339182 m!1595773))

(assert (=> b!1413421 d!404450))

(declare-fun e!902550 () Bool)

(declare-fun lt!473875 () List!14516)

(declare-fun b!1413794 () Bool)

(assert (=> b!1413794 (= e!902550 (or (not (= (ite c!232257 lt!473617 lt!473622) Nil!14450)) (= lt!473875 (ite c!232257 lt!473589 lt!473607))))))

(declare-fun e!902551 () List!14516)

(declare-fun b!1413792 () Bool)

(assert (=> b!1413792 (= e!902551 (Cons!14450 (h!19851 (ite c!232257 lt!473589 lt!473607)) (++!3767 (t!123793 (ite c!232257 lt!473589 lt!473607)) (ite c!232257 lt!473617 lt!473622))))))

(declare-fun d!404452 () Bool)

(assert (=> d!404452 e!902550))

(declare-fun res!640224 () Bool)

(assert (=> d!404452 (=> (not res!640224) (not e!902550))))

(assert (=> d!404452 (= res!640224 (= (content!2141 lt!473875) ((_ map or) (content!2141 (ite c!232257 lt!473589 lt!473607)) (content!2141 (ite c!232257 lt!473617 lt!473622)))))))

(assert (=> d!404452 (= lt!473875 e!902551)))

(declare-fun c!232314 () Bool)

(assert (=> d!404452 (= c!232314 ((_ is Nil!14450) (ite c!232257 lt!473589 lt!473607)))))

(assert (=> d!404452 (= (++!3767 (ite c!232257 lt!473589 lt!473607) (ite c!232257 lt!473617 lt!473622)) lt!473875)))

(declare-fun b!1413793 () Bool)

(declare-fun res!640223 () Bool)

(assert (=> b!1413793 (=> (not res!640223) (not e!902550))))

(assert (=> b!1413793 (= res!640223 (= (size!11916 lt!473875) (+ (size!11916 (ite c!232257 lt!473589 lt!473607)) (size!11916 (ite c!232257 lt!473617 lt!473622)))))))

(declare-fun b!1413791 () Bool)

(assert (=> b!1413791 (= e!902551 (ite c!232257 lt!473617 lt!473622))))

(assert (= (and d!404452 c!232314) b!1413791))

(assert (= (and d!404452 (not c!232314)) b!1413792))

(assert (= (and d!404452 res!640224) b!1413793))

(assert (= (and b!1413793 res!640223) b!1413794))

(declare-fun m!1595775 () Bool)

(assert (=> b!1413792 m!1595775))

(declare-fun m!1595777 () Bool)

(assert (=> d!404452 m!1595777))

(declare-fun m!1595779 () Bool)

(assert (=> d!404452 m!1595779))

(declare-fun m!1595781 () Bool)

(assert (=> d!404452 m!1595781))

(declare-fun m!1595783 () Bool)

(assert (=> b!1413793 m!1595783))

(declare-fun m!1595785 () Bool)

(assert (=> b!1413793 m!1595785))

(declare-fun m!1595787 () Bool)

(assert (=> b!1413793 m!1595787))

(assert (=> bm!95025 d!404452))

(declare-fun d!404454 () Bool)

(declare-fun c!232315 () Bool)

(assert (=> d!404454 (= c!232315 ((_ is Node!4809) (left!12346 (c!232209 objs!24))))))

(declare-fun e!902552 () Bool)

(assert (=> d!404454 (= (inv!18910 (left!12346 (c!232209 objs!24))) e!902552)))

(declare-fun b!1413795 () Bool)

(assert (=> b!1413795 (= e!902552 (inv!18918 (left!12346 (c!232209 objs!24))))))

(declare-fun b!1413796 () Bool)

(declare-fun e!902553 () Bool)

(assert (=> b!1413796 (= e!902552 e!902553)))

(declare-fun res!640225 () Bool)

(assert (=> b!1413796 (= res!640225 (not ((_ is Leaf!7261) (left!12346 (c!232209 objs!24)))))))

(assert (=> b!1413796 (=> res!640225 e!902553)))

(declare-fun b!1413797 () Bool)

(assert (=> b!1413797 (= e!902553 (inv!18919 (left!12346 (c!232209 objs!24))))))

(assert (= (and d!404454 c!232315) b!1413795))

(assert (= (and d!404454 (not c!232315)) b!1413796))

(assert (= (and b!1413796 (not res!640225)) b!1413797))

(declare-fun m!1595789 () Bool)

(assert (=> b!1413795 m!1595789))

(declare-fun m!1595791 () Bool)

(assert (=> b!1413797 m!1595791))

(assert (=> b!1413567 d!404454))

(declare-fun d!404456 () Bool)

(declare-fun c!232316 () Bool)

(assert (=> d!404456 (= c!232316 ((_ is Node!4809) (right!12676 (c!232209 objs!24))))))

(declare-fun e!902554 () Bool)

(assert (=> d!404456 (= (inv!18910 (right!12676 (c!232209 objs!24))) e!902554)))

(declare-fun b!1413798 () Bool)

(assert (=> b!1413798 (= e!902554 (inv!18918 (right!12676 (c!232209 objs!24))))))

(declare-fun b!1413799 () Bool)

(declare-fun e!902555 () Bool)

(assert (=> b!1413799 (= e!902554 e!902555)))

(declare-fun res!640226 () Bool)

(assert (=> b!1413799 (= res!640226 (not ((_ is Leaf!7261) (right!12676 (c!232209 objs!24)))))))

(assert (=> b!1413799 (=> res!640226 e!902555)))

(declare-fun b!1413800 () Bool)

(assert (=> b!1413800 (= e!902555 (inv!18919 (right!12676 (c!232209 objs!24))))))

(assert (= (and d!404456 c!232316) b!1413798))

(assert (= (and d!404456 (not c!232316)) b!1413799))

(assert (= (and b!1413799 (not res!640226)) b!1413800))

(declare-fun m!1595793 () Bool)

(assert (=> b!1413798 m!1595793))

(declare-fun m!1595795 () Bool)

(assert (=> b!1413800 m!1595795))

(assert (=> b!1413567 d!404456))

(declare-fun d!404458 () Bool)

(declare-fun res!640233 () Bool)

(declare-fun e!902558 () Bool)

(assert (=> d!404458 (=> (not res!640233) (not e!902558))))

(assert (=> d!404458 (= res!640233 (= (csize!9848 (c!232209 objs!24)) (+ (size!11914 (left!12346 (c!232209 objs!24))) (size!11914 (right!12676 (c!232209 objs!24))))))))

(assert (=> d!404458 (= (inv!18918 (c!232209 objs!24)) e!902558)))

(declare-fun b!1413807 () Bool)

(declare-fun res!640234 () Bool)

(assert (=> b!1413807 (=> (not res!640234) (not e!902558))))

(assert (=> b!1413807 (= res!640234 (and (not (= (left!12346 (c!232209 objs!24)) Empty!4809)) (not (= (right!12676 (c!232209 objs!24)) Empty!4809))))))

(declare-fun b!1413808 () Bool)

(declare-fun res!640235 () Bool)

(assert (=> b!1413808 (=> (not res!640235) (not e!902558))))

(declare-fun height!697 (Conc!4809) Int)

(assert (=> b!1413808 (= res!640235 (= (cheight!5020 (c!232209 objs!24)) (+ (max!0 (height!697 (left!12346 (c!232209 objs!24))) (height!697 (right!12676 (c!232209 objs!24)))) 1)))))

(declare-fun b!1413809 () Bool)

(assert (=> b!1413809 (= e!902558 (<= 0 (cheight!5020 (c!232209 objs!24))))))

(assert (= (and d!404458 res!640233) b!1413807))

(assert (= (and b!1413807 res!640234) b!1413808))

(assert (= (and b!1413808 res!640235) b!1413809))

(declare-fun m!1595797 () Bool)

(assert (=> d!404458 m!1595797))

(declare-fun m!1595799 () Bool)

(assert (=> d!404458 m!1595799))

(declare-fun m!1595801 () Bool)

(assert (=> b!1413808 m!1595801))

(declare-fun m!1595803 () Bool)

(assert (=> b!1413808 m!1595803))

(assert (=> b!1413808 m!1595801))

(assert (=> b!1413808 m!1595803))

(declare-fun m!1595805 () Bool)

(assert (=> b!1413808 m!1595805))

(assert (=> b!1413553 d!404458))

(declare-fun d!404460 () Bool)

(assert (=> d!404460 (= (isEmpty!8846 (rules!11032 sep!3)) ((_ is Nil!14451) (rules!11032 sep!3)))))

(assert (=> d!404326 d!404460))

(declare-fun d!404462 () Bool)

(declare-fun res!640244 () Bool)

(declare-fun e!902569 () Bool)

(assert (=> d!404462 (=> res!640244 e!902569)))

(assert (=> d!404462 (= res!640244 (or (not ((_ is Cons!14450) call!95135)) (not ((_ is Cons!14450) (t!123793 call!95135)))))))

(assert (=> d!404462 (= (tokensListTwoByTwoPredicateSeparableList!199 lt!473728 call!95135 (rules!11032 (head!2690 objs!24))) e!902569)))

(declare-fun b!1413823 () Bool)

(declare-fun e!902570 () Bool)

(assert (=> b!1413823 (= e!902569 e!902570)))

(declare-fun res!640243 () Bool)

(assert (=> b!1413823 (=> (not res!640243) (not e!902570))))

(assert (=> b!1413823 (= res!640243 (separableTokensPredicate!476 lt!473728 (h!19851 call!95135) (h!19851 (t!123793 call!95135)) (rules!11032 (head!2690 objs!24))))))

(declare-fun lt!473970 () Unit!20997)

(declare-fun Unit!21042 () Unit!20997)

(assert (=> b!1413823 (= lt!473970 Unit!21042)))

(declare-fun size!11919 (BalanceConc!9554) Int)

(assert (=> b!1413823 (> (size!11919 (charsOf!1470 (h!19851 (t!123793 call!95135)))) 0)))

(declare-fun lt!473973 () Unit!20997)

(declare-fun Unit!21043 () Unit!20997)

(assert (=> b!1413823 (= lt!473973 Unit!21043)))

(assert (=> b!1413823 (rulesProduceIndividualToken!1162 lt!473728 (rules!11032 (head!2690 objs!24)) (h!19851 (t!123793 call!95135)))))

(declare-fun lt!473974 () Unit!20997)

(declare-fun Unit!21044 () Unit!20997)

(assert (=> b!1413823 (= lt!473974 Unit!21044)))

(assert (=> b!1413823 (rulesProduceIndividualToken!1162 lt!473728 (rules!11032 (head!2690 objs!24)) (h!19851 call!95135))))

(declare-fun lt!473972 () Unit!20997)

(declare-fun lt!473971 () Unit!20997)

(assert (=> b!1413823 (= lt!473972 lt!473971)))

(assert (=> b!1413823 (rulesProduceIndividualToken!1162 lt!473728 (rules!11032 (head!2690 objs!24)) (h!19851 (t!123793 call!95135)))))

(assert (=> b!1413823 (= lt!473971 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473728 (rules!11032 (head!2690 objs!24)) call!95135 (h!19851 (t!123793 call!95135))))))

(declare-fun lt!473968 () Unit!20997)

(declare-fun lt!473969 () Unit!20997)

(assert (=> b!1413823 (= lt!473968 lt!473969)))

(assert (=> b!1413823 (rulesProduceIndividualToken!1162 lt!473728 (rules!11032 (head!2690 objs!24)) (h!19851 call!95135))))

(assert (=> b!1413823 (= lt!473969 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473728 (rules!11032 (head!2690 objs!24)) call!95135 (h!19851 call!95135)))))

(declare-fun b!1413824 () Bool)

(assert (=> b!1413824 (= e!902570 (tokensListTwoByTwoPredicateSeparableList!199 lt!473728 (Cons!14450 (h!19851 (t!123793 call!95135)) (t!123793 (t!123793 call!95135))) (rules!11032 (head!2690 objs!24))))))

(assert (= (and d!404462 (not res!640244)) b!1413823))

(assert (= (and b!1413823 res!640243) b!1413824))

(declare-fun m!1595887 () Bool)

(assert (=> b!1413823 m!1595887))

(declare-fun m!1595889 () Bool)

(assert (=> b!1413823 m!1595889))

(declare-fun m!1595893 () Bool)

(assert (=> b!1413823 m!1595893))

(declare-fun m!1595895 () Bool)

(assert (=> b!1413823 m!1595895))

(declare-fun m!1595897 () Bool)

(assert (=> b!1413823 m!1595897))

(declare-fun m!1595899 () Bool)

(assert (=> b!1413823 m!1595899))

(assert (=> b!1413823 m!1595889))

(declare-fun m!1595901 () Bool)

(assert (=> b!1413823 m!1595901))

(declare-fun m!1595903 () Bool)

(assert (=> b!1413824 m!1595903))

(assert (=> b!1413463 d!404462))

(declare-fun bs!339186 () Bool)

(declare-fun d!404464 () Bool)

(assert (= bs!339186 (and d!404464 d!404382)))

(declare-fun lambda!62482 () Int)

(assert (=> bs!339186 (= (and (= lt!473728 Lexer!2193) (= (rules!11032 (head!2690 objs!24)) (rules!11032 acc!229))) (= lambda!62482 lambda!62474))))

(declare-fun b!1413849 () Bool)

(declare-fun e!902587 () Bool)

(assert (=> b!1413849 (= e!902587 true)))

(declare-fun b!1413848 () Bool)

(declare-fun e!902586 () Bool)

(assert (=> b!1413848 (= e!902586 e!902587)))

(declare-fun b!1413847 () Bool)

(declare-fun e!902585 () Bool)

(assert (=> b!1413847 (= e!902585 e!902586)))

(assert (=> d!404464 e!902585))

(assert (= b!1413848 b!1413849))

(assert (= b!1413847 b!1413848))

(assert (= (and d!404464 ((_ is Cons!14451) (rules!11032 (head!2690 objs!24)))) b!1413847))

(assert (=> b!1413849 (< (dynLambda!6692 order!8815 (toValue!3810 (transformation!2511 (h!19852 (rules!11032 (head!2690 objs!24)))))) (dynLambda!6693 order!8817 lambda!62482))))

(assert (=> b!1413849 (< (dynLambda!6694 order!8819 (toChars!3669 (transformation!2511 (h!19852 (rules!11032 (head!2690 objs!24)))))) (dynLambda!6693 order!8817 lambda!62482))))

(assert (=> d!404464 true))

(declare-fun lt!473981 () Bool)

(assert (=> d!404464 (= lt!473981 (forall!3554 call!95135 lambda!62482))))

(declare-fun e!902583 () Bool)

(assert (=> d!404464 (= lt!473981 e!902583)))

(declare-fun res!640257 () Bool)

(assert (=> d!404464 (=> res!640257 e!902583)))

(assert (=> d!404464 (= res!640257 (not ((_ is Cons!14450) call!95135)))))

(assert (=> d!404464 (not (isEmpty!8846 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404464 (= (rulesProduceEachTokenIndividuallyList!678 lt!473728 (rules!11032 (head!2690 objs!24)) call!95135) lt!473981)))

(declare-fun b!1413845 () Bool)

(declare-fun e!902584 () Bool)

(assert (=> b!1413845 (= e!902583 e!902584)))

(declare-fun res!640258 () Bool)

(assert (=> b!1413845 (=> (not res!640258) (not e!902584))))

(assert (=> b!1413845 (= res!640258 (rulesProduceIndividualToken!1162 lt!473728 (rules!11032 (head!2690 objs!24)) (h!19851 call!95135)))))

(declare-fun b!1413846 () Bool)

(assert (=> b!1413846 (= e!902584 (rulesProduceEachTokenIndividuallyList!678 lt!473728 (rules!11032 (head!2690 objs!24)) (t!123793 call!95135)))))

(assert (= (and d!404464 (not res!640257)) b!1413845))

(assert (= (and b!1413845 res!640258) b!1413846))

(declare-fun m!1595941 () Bool)

(assert (=> d!404464 m!1595941))

(declare-fun m!1595943 () Bool)

(assert (=> d!404464 m!1595943))

(assert (=> b!1413845 m!1595897))

(declare-fun m!1595945 () Bool)

(assert (=> b!1413846 m!1595945))

(assert (=> b!1413463 d!404464))

(declare-fun b!1413860 () Bool)

(declare-fun res!640270 () Bool)

(declare-fun e!902590 () Bool)

(assert (=> b!1413860 (=> (not res!640270) (not e!902590))))

(declare-fun ++!3771 (Conc!4808 Conc!4808) Conc!4808)

(assert (=> b!1413860 (= res!640270 (>= (height!696 (++!3771 (c!232208 (tokens!1762 (head!2690 objs!24))) (c!232208 (tokens!1762 sep!3)))) (max!0 (height!696 (c!232208 (tokens!1762 (head!2690 objs!24)))) (height!696 (c!232208 (tokens!1762 sep!3))))))))

(declare-fun lt!473984 () BalanceConc!9556)

(declare-fun b!1413861 () Bool)

(assert (=> b!1413861 (= e!902590 (= (list!5672 lt!473984) (++!3767 (list!5672 (tokens!1762 (head!2690 objs!24))) (list!5672 (tokens!1762 sep!3)))))))

(declare-fun b!1413859 () Bool)

(declare-fun res!640269 () Bool)

(assert (=> b!1413859 (=> (not res!640269) (not e!902590))))

(assert (=> b!1413859 (= res!640269 (<= (height!696 (++!3771 (c!232208 (tokens!1762 (head!2690 objs!24))) (c!232208 (tokens!1762 sep!3)))) (+ (max!0 (height!696 (c!232208 (tokens!1762 (head!2690 objs!24)))) (height!696 (c!232208 (tokens!1762 sep!3)))) 1)))))

(declare-fun d!404478 () Bool)

(assert (=> d!404478 e!902590))

(declare-fun res!640267 () Bool)

(assert (=> d!404478 (=> (not res!640267) (not e!902590))))

(declare-fun appendAssocInst!294 (Conc!4808 Conc!4808) Bool)

(assert (=> d!404478 (= res!640267 (appendAssocInst!294 (c!232208 (tokens!1762 (head!2690 objs!24))) (c!232208 (tokens!1762 sep!3))))))

(assert (=> d!404478 (= lt!473984 (BalanceConc!9557 (++!3771 (c!232208 (tokens!1762 (head!2690 objs!24))) (c!232208 (tokens!1762 sep!3)))))))

(assert (=> d!404478 (= (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)) lt!473984)))

(declare-fun b!1413858 () Bool)

(declare-fun res!640268 () Bool)

(assert (=> b!1413858 (=> (not res!640268) (not e!902590))))

(assert (=> b!1413858 (= res!640268 (isBalanced!1424 (++!3771 (c!232208 (tokens!1762 (head!2690 objs!24))) (c!232208 (tokens!1762 sep!3)))))))

(assert (= (and d!404478 res!640267) b!1413858))

(assert (= (and b!1413858 res!640268) b!1413859))

(assert (= (and b!1413859 res!640269) b!1413860))

(assert (= (and b!1413860 res!640270) b!1413861))

(declare-fun m!1595947 () Bool)

(assert (=> b!1413858 m!1595947))

(assert (=> b!1413858 m!1595947))

(declare-fun m!1595949 () Bool)

(assert (=> b!1413858 m!1595949))

(declare-fun m!1595951 () Bool)

(assert (=> d!404478 m!1595951))

(assert (=> d!404478 m!1595947))

(declare-fun m!1595953 () Bool)

(assert (=> b!1413859 m!1595953))

(assert (=> b!1413859 m!1595947))

(assert (=> b!1413859 m!1595947))

(declare-fun m!1595955 () Bool)

(assert (=> b!1413859 m!1595955))

(declare-fun m!1595957 () Bool)

(assert (=> b!1413859 m!1595957))

(assert (=> b!1413859 m!1595957))

(assert (=> b!1413859 m!1595953))

(declare-fun m!1595959 () Bool)

(assert (=> b!1413859 m!1595959))

(declare-fun m!1595961 () Bool)

(assert (=> b!1413861 m!1595961))

(assert (=> b!1413861 m!1595211))

(assert (=> b!1413861 m!1595213))

(assert (=> b!1413861 m!1595211))

(assert (=> b!1413861 m!1595213))

(assert (=> b!1413861 m!1595215))

(assert (=> b!1413860 m!1595953))

(assert (=> b!1413860 m!1595947))

(assert (=> b!1413860 m!1595947))

(assert (=> b!1413860 m!1595955))

(assert (=> b!1413860 m!1595957))

(assert (=> b!1413860 m!1595957))

(assert (=> b!1413860 m!1595953))

(assert (=> b!1413860 m!1595959))

(assert (=> b!1413463 d!404478))

(declare-fun d!404480 () Bool)

(declare-fun e!902674 () Bool)

(assert (=> d!404480 e!902674))

(declare-fun res!640352 () Bool)

(assert (=> d!404480 (=> (not res!640352) (not e!902674))))

(declare-fun seqFromList!1670 (List!14516) BalanceConc!9556)

(assert (=> d!404480 (= res!640352 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (head!2690 objs!24)) (print!962 Lexer!2193 (seqFromList!1670 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))) (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))

(declare-fun lt!474139 () Unit!20997)

(declare-fun e!902675 () Unit!20997)

(assert (=> d!404480 (= lt!474139 e!902675)))

(declare-fun c!232358 () Bool)

(assert (=> d!404480 (= c!232358 (or ((_ is Nil!14450) (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) ((_ is Nil!14450) (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))))

(assert (=> d!404480 (not (isEmpty!8846 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404480 (= (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (head!2690 objs!24)) (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) lt!474139)))

(declare-fun b!1414006 () Bool)

(declare-fun Unit!21045 () Unit!20997)

(assert (=> b!1414006 (= e!902675 Unit!21045)))

(declare-fun b!1414007 () Bool)

(declare-fun Unit!21046 () Unit!20997)

(assert (=> b!1414007 (= e!902675 Unit!21046)))

(declare-fun lt!474137 () BalanceConc!9554)

(assert (=> b!1414007 (= lt!474137 (print!962 Lexer!2193 (seqFromList!1670 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))

(declare-fun lt!474150 () BalanceConc!9554)

(assert (=> b!1414007 (= lt!474150 (print!962 Lexer!2193 (seqFromList!1670 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))))

(declare-fun lt!474152 () tuple2!13984)

(assert (=> b!1414007 (= lt!474152 (lex!1008 Lexer!2193 (rules!11032 (head!2690 objs!24)) lt!474150))))

(declare-fun lt!474134 () List!14515)

(assert (=> b!1414007 (= lt!474134 (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))))

(declare-fun lt!474155 () List!14515)

(assert (=> b!1414007 (= lt!474155 (list!5671 lt!474150))))

(declare-fun lt!474144 () Unit!20997)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!734 (List!14515 List!14515) Unit!20997)

(assert (=> b!1414007 (= lt!474144 (lemmaConcatTwoListThenFirstIsPrefix!734 lt!474134 lt!474155))))

(declare-fun isPrefix!1167 (List!14515 List!14515) Bool)

(assert (=> b!1414007 (isPrefix!1167 lt!474134 (++!3768 lt!474134 lt!474155))))

(declare-fun lt!474146 () Unit!20997)

(assert (=> b!1414007 (= lt!474146 lt!474144)))

(declare-fun lt!474135 () Unit!20997)

(assert (=> b!1414007 (= lt!474135 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (head!2690 objs!24)) (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))

(declare-fun lt!474143 () Unit!20997)

(declare-fun seqFromListBHdTlConstructive!63 (Token!4684 List!14516 BalanceConc!9556) Unit!20997)

(assert (=> b!1414007 (= lt!474143 (seqFromListBHdTlConstructive!63 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))) (t!123793 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))) (_1!7878 lt!474152)))))

(declare-fun prepend!379 (BalanceConc!9556 Token!4684) BalanceConc!9556)

(assert (=> b!1414007 (= (list!5672 (_1!7878 lt!474152)) (list!5672 (prepend!379 (seqFromList!1670 (t!123793 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))) (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))))

(declare-fun lt!474145 () Unit!20997)

(assert (=> b!1414007 (= lt!474145 lt!474143)))

(declare-datatypes ((tuple2!13986 0))(
  ( (tuple2!13987 (_1!7879 Token!4684) (_2!7879 List!14515)) )
))
(declare-datatypes ((Option!2771 0))(
  ( (None!2770) (Some!2770 (v!21938 tuple2!13986)) )
))
(declare-fun lt!474157 () Option!2771)

(declare-fun maxPrefix!1157 (LexerInterface!2195 List!14517 List!14515) Option!2771)

(assert (=> b!1414007 (= lt!474157 (maxPrefix!1157 Lexer!2193 (rules!11032 (head!2690 objs!24)) (list!5671 lt!474137)))))

(declare-fun singletonSeq!1159 (Token!4684) BalanceConc!9556)

(assert (=> b!1414007 (= (print!962 Lexer!2193 (singletonSeq!1159 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))) (printTailRec!635 Lexer!2193 (singletonSeq!1159 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))) 0 (BalanceConc!9555 Empty!4807)))))

(declare-fun lt!474133 () Unit!20997)

(declare-fun Unit!21047 () Unit!20997)

(assert (=> b!1414007 (= lt!474133 Unit!21047)))

(declare-fun lt!474138 () Unit!20997)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!207 (LexerInterface!2195 List!14517 List!14515 List!14515) Unit!20997)

(assert (=> b!1414007 (= lt!474138 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!207 Lexer!2193 (rules!11032 (head!2690 objs!24)) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))) (list!5671 lt!474150)))))

(assert (=> b!1414007 (= (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))) (originalCharacters!3373 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))

(declare-fun lt!474149 () Unit!20997)

(declare-fun Unit!21048 () Unit!20997)

(assert (=> b!1414007 (= lt!474149 Unit!21048)))

(declare-fun singletonSeq!1160 ((_ BitVec 16)) BalanceConc!9554)

(declare-fun apply!3704 (BalanceConc!9554 Int) (_ BitVec 16))

(declare-fun head!2698 (List!14515) (_ BitVec 16))

(assert (=> b!1414007 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))) 0))) (Cons!14449 (head!2698 (originalCharacters!3373 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))) Nil!14449))))

(declare-fun lt!474136 () Unit!20997)

(declare-fun Unit!21049 () Unit!20997)

(assert (=> b!1414007 (= lt!474136 Unit!21049)))

(assert (=> b!1414007 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))) 0))) (Cons!14449 (head!2698 (list!5671 lt!474150)) Nil!14449))))

(declare-fun lt!474140 () Unit!20997)

(declare-fun Unit!21050 () Unit!20997)

(assert (=> b!1414007 (= lt!474140 Unit!21050)))

(declare-fun head!2699 (BalanceConc!9554) (_ BitVec 16))

(assert (=> b!1414007 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))) 0))) (Cons!14449 (head!2699 lt!474150) Nil!14449))))

(declare-fun lt!474147 () Unit!20997)

(declare-fun Unit!21051 () Unit!20997)

(assert (=> b!1414007 (= lt!474147 Unit!21051)))

(declare-fun isDefined!2258 (Option!2771) Bool)

(assert (=> b!1414007 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (rules!11032 (head!2690 objs!24)) (originalCharacters!3373 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))))

(declare-fun lt!474151 () Unit!20997)

(declare-fun Unit!21052 () Unit!20997)

(assert (=> b!1414007 (= lt!474151 Unit!21052)))

(assert (=> b!1414007 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (rules!11032 (head!2690 objs!24)) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))))

(declare-fun lt!474158 () Unit!20997)

(declare-fun Unit!21053 () Unit!20997)

(assert (=> b!1414007 (= lt!474158 Unit!21053)))

(declare-fun lt!474141 () Unit!20997)

(declare-fun Unit!21054 () Unit!20997)

(assert (=> b!1414007 (= lt!474141 Unit!21054)))

(declare-fun get!4444 (Option!2771) tuple2!13986)

(assert (=> b!1414007 (= (_1!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (rules!11032 (head!2690 objs!24)) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))) (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))

(declare-fun lt!474154 () Unit!20997)

(declare-fun Unit!21055 () Unit!20997)

(assert (=> b!1414007 (= lt!474154 Unit!21055)))

(assert (=> b!1414007 (isEmpty!8847 (_2!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (rules!11032 (head!2690 objs!24)) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))))))

(declare-fun lt!474153 () Unit!20997)

(declare-fun Unit!21056 () Unit!20997)

(assert (=> b!1414007 (= lt!474153 Unit!21056)))

(declare-fun matchR!1793 (Regex!3825 List!14515) Bool)

(assert (=> b!1414007 (matchR!1793 (regex!2511 (rule!4274 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))))

(declare-fun lt!474156 () Unit!20997)

(declare-fun Unit!21057 () Unit!20997)

(assert (=> b!1414007 (= lt!474156 Unit!21057)))

(assert (=> b!1414007 (= (rule!4274 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))) (rule!4274 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))

(declare-fun lt!474148 () Unit!20997)

(declare-fun Unit!21058 () Unit!20997)

(assert (=> b!1414007 (= lt!474148 Unit!21058)))

(declare-fun lt!474142 () Unit!20997)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!5 (LexerInterface!2195 List!14517 Token!4684 Rule!4822 List!14515) Unit!20997)

(assert (=> b!1414007 (= lt!474142 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!5 Lexer!2193 (rules!11032 (head!2690 objs!24)) (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) (rule!4274 (h!19851 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))) (list!5671 lt!474150)))))

(declare-fun b!1414008 () Bool)

(declare-fun isEmpty!8850 (BalanceConc!9554) Bool)

(assert (=> b!1414008 (= e!902674 (isEmpty!8850 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (head!2690 objs!24)) (print!962 Lexer!2193 (seqFromList!1670 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))))))

(assert (= (and d!404480 c!232358) b!1414006))

(assert (= (and d!404480 (not c!232358)) b!1414007))

(assert (= (and d!404480 res!640352) b!1414008))

(assert (=> d!404480 m!1595943))

(declare-fun m!1596395 () Bool)

(assert (=> d!404480 m!1596395))

(declare-fun m!1596397 () Bool)

(assert (=> d!404480 m!1596397))

(declare-fun m!1596399 () Bool)

(assert (=> d!404480 m!1596399))

(assert (=> d!404480 m!1595177))

(declare-fun m!1596401 () Bool)

(assert (=> d!404480 m!1596401))

(assert (=> d!404480 m!1596401))

(assert (=> d!404480 m!1596395))

(declare-fun m!1596403 () Bool)

(assert (=> b!1414007 m!1596403))

(declare-fun m!1596405 () Bool)

(assert (=> b!1414007 m!1596405))

(declare-fun m!1596407 () Bool)

(assert (=> b!1414007 m!1596407))

(declare-fun m!1596409 () Bool)

(assert (=> b!1414007 m!1596409))

(declare-fun m!1596411 () Bool)

(assert (=> b!1414007 m!1596411))

(declare-fun m!1596413 () Bool)

(assert (=> b!1414007 m!1596413))

(declare-fun m!1596415 () Bool)

(assert (=> b!1414007 m!1596415))

(declare-fun m!1596417 () Bool)

(assert (=> b!1414007 m!1596417))

(declare-fun m!1596419 () Bool)

(assert (=> b!1414007 m!1596419))

(assert (=> b!1414007 m!1596405))

(declare-fun m!1596421 () Bool)

(assert (=> b!1414007 m!1596421))

(assert (=> b!1414007 m!1596403))

(declare-fun m!1596423 () Bool)

(assert (=> b!1414007 m!1596423))

(declare-fun m!1596425 () Bool)

(assert (=> b!1414007 m!1596425))

(declare-fun m!1596427 () Bool)

(assert (=> b!1414007 m!1596427))

(assert (=> b!1414007 m!1596403))

(declare-fun m!1596429 () Bool)

(assert (=> b!1414007 m!1596429))

(declare-fun m!1596431 () Bool)

(assert (=> b!1414007 m!1596431))

(declare-fun m!1596433 () Bool)

(assert (=> b!1414007 m!1596433))

(declare-fun m!1596435 () Bool)

(assert (=> b!1414007 m!1596435))

(assert (=> b!1414007 m!1596433))

(assert (=> b!1414007 m!1596405))

(assert (=> b!1414007 m!1596435))

(assert (=> b!1414007 m!1596411))

(declare-fun m!1596437 () Bool)

(assert (=> b!1414007 m!1596437))

(declare-fun m!1596439 () Bool)

(assert (=> b!1414007 m!1596439))

(declare-fun m!1596441 () Bool)

(assert (=> b!1414007 m!1596441))

(declare-fun m!1596443 () Bool)

(assert (=> b!1414007 m!1596443))

(assert (=> b!1414007 m!1596405))

(declare-fun m!1596445 () Bool)

(assert (=> b!1414007 m!1596445))

(declare-fun m!1596447 () Bool)

(assert (=> b!1414007 m!1596447))

(assert (=> b!1414007 m!1596441))

(assert (=> b!1414007 m!1596415))

(declare-fun m!1596449 () Bool)

(assert (=> b!1414007 m!1596449))

(declare-fun m!1596451 () Bool)

(assert (=> b!1414007 m!1596451))

(declare-fun m!1596453 () Bool)

(assert (=> b!1414007 m!1596453))

(declare-fun m!1596455 () Bool)

(assert (=> b!1414007 m!1596455))

(declare-fun m!1596457 () Bool)

(assert (=> b!1414007 m!1596457))

(declare-fun m!1596459 () Bool)

(assert (=> b!1414007 m!1596459))

(assert (=> b!1414007 m!1596453))

(declare-fun m!1596461 () Bool)

(assert (=> b!1414007 m!1596461))

(declare-fun m!1596463 () Bool)

(assert (=> b!1414007 m!1596463))

(assert (=> b!1414007 m!1596423))

(declare-fun m!1596465 () Bool)

(assert (=> b!1414007 m!1596465))

(assert (=> b!1414007 m!1596451))

(assert (=> b!1414007 m!1596403))

(assert (=> b!1414007 m!1596437))

(assert (=> b!1414007 m!1596425))

(declare-fun m!1596467 () Bool)

(assert (=> b!1414007 m!1596467))

(assert (=> b!1414007 m!1596447))

(assert (=> b!1414007 m!1595177))

(assert (=> b!1414007 m!1596401))

(assert (=> b!1414007 m!1596453))

(declare-fun m!1596469 () Bool)

(assert (=> b!1414007 m!1596469))

(assert (=> b!1414007 m!1596423))

(declare-fun m!1596471 () Bool)

(assert (=> b!1414007 m!1596471))

(assert (=> b!1414007 m!1596457))

(assert (=> b!1414007 m!1596401))

(assert (=> b!1414007 m!1596395))

(declare-fun m!1596473 () Bool)

(assert (=> b!1414007 m!1596473))

(assert (=> b!1414008 m!1595177))

(assert (=> b!1414008 m!1596401))

(assert (=> b!1414008 m!1596401))

(assert (=> b!1414008 m!1596395))

(assert (=> b!1414008 m!1596395))

(assert (=> b!1414008 m!1596397))

(declare-fun m!1596475 () Bool)

(assert (=> b!1414008 m!1596475))

(assert (=> b!1413463 d!404480))

(declare-fun d!404588 () Bool)

(assert (=> d!404588 (= (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))) (list!5675 (c!232208 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))

(declare-fun bs!339206 () Bool)

(assert (= bs!339206 d!404588))

(declare-fun m!1596477 () Bool)

(assert (=> bs!339206 m!1596477))

(assert (=> b!1413463 d!404588))

(declare-fun d!404590 () Bool)

(declare-fun e!902684 () Bool)

(assert (=> d!404590 e!902684))

(declare-fun res!640374 () Bool)

(assert (=> d!404590 (=> (not res!640374) (not e!902684))))

(assert (=> d!404590 (= res!640374 ((_ is Lexer!2193) lt!473728))))

(declare-fun lt!474166 () Unit!20997)

(declare-fun choose!8724 (LexerInterface!2195 List!14516 List!14516 List!14517) Unit!20997)

(assert (=> d!404590 (= lt!474166 (choose!8724 lt!473728 lt!473738 lt!473753 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404590 (not (isEmpty!8846 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404590 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!18 lt!473728 lt!473738 lt!473753 (rules!11032 (head!2690 objs!24))) lt!474166)))

(declare-fun b!1414031 () Bool)

(declare-fun res!640376 () Bool)

(assert (=> b!1414031 (=> (not res!640376) (not e!902684))))

(assert (=> b!1414031 (= res!640376 (rulesProduceEachTokenIndividuallyList!678 lt!473728 (rules!11032 (head!2690 objs!24)) lt!473753))))

(declare-fun b!1414032 () Bool)

(assert (=> b!1414032 (= e!902684 (tokensListTwoByTwoPredicateSeparableList!199 lt!473728 (++!3767 lt!473738 lt!473753) (rules!11032 (head!2690 objs!24))))))

(declare-fun lt!474168 () Unit!20997)

(declare-fun lt!474167 () Unit!20997)

(assert (=> b!1414032 (= lt!474168 lt!474167)))

(assert (=> b!1414032 (rulesProduceEachTokenIndividuallyList!678 lt!473728 (rules!11032 (head!2690 objs!24)) (++!3767 lt!473738 lt!473753))))

(assert (=> b!1414032 (= lt!474167 (lemmaRulesProduceEachTokenIndividuallyConcat!18 lt!473728 (rules!11032 (head!2690 objs!24)) lt!473738 lt!473753))))

(declare-fun b!1414029 () Bool)

(declare-fun res!640375 () Bool)

(assert (=> b!1414029 (=> (not res!640375) (not e!902684))))

(assert (=> b!1414029 (= res!640375 (rulesInvariant!2065 lt!473728 (rules!11032 (head!2690 objs!24))))))

(declare-fun b!1414030 () Bool)

(declare-fun res!640373 () Bool)

(assert (=> b!1414030 (=> (not res!640373) (not e!902684))))

(assert (=> b!1414030 (= res!640373 (rulesProduceEachTokenIndividuallyList!678 lt!473728 (rules!11032 (head!2690 objs!24)) lt!473738))))

(assert (= (and d!404590 res!640374) b!1414029))

(assert (= (and b!1414029 res!640375) b!1414030))

(assert (= (and b!1414030 res!640373) b!1414031))

(assert (= (and b!1414031 res!640376) b!1414032))

(declare-fun m!1596495 () Bool)

(assert (=> b!1414032 m!1596495))

(assert (=> b!1414032 m!1596495))

(declare-fun m!1596497 () Bool)

(assert (=> b!1414032 m!1596497))

(assert (=> b!1414032 m!1596495))

(declare-fun m!1596499 () Bool)

(assert (=> b!1414032 m!1596499))

(assert (=> b!1414032 m!1595189))

(declare-fun m!1596501 () Bool)

(assert (=> b!1414030 m!1596501))

(declare-fun m!1596503 () Bool)

(assert (=> b!1414031 m!1596503))

(declare-fun m!1596505 () Bool)

(assert (=> b!1414029 m!1596505))

(declare-fun m!1596507 () Bool)

(assert (=> d!404590 m!1596507))

(assert (=> d!404590 m!1595943))

(assert (=> b!1413463 d!404590))

(declare-fun d!404604 () Bool)

(declare-fun lt!474169 () BalanceConc!9554)

(assert (=> d!404604 (= (list!5671 lt!474169) (printList!653 Lexer!2193 (list!5672 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))

(assert (=> d!404604 (= lt!474169 (printTailRec!635 Lexer!2193 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)) 0 (BalanceConc!9555 Empty!4807)))))

(assert (=> d!404604 (= (print!962 Lexer!2193 (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))) lt!474169)))

(declare-fun bs!339208 () Bool)

(assert (= bs!339208 d!404604))

(declare-fun m!1596509 () Bool)

(assert (=> bs!339208 m!1596509))

(assert (=> bs!339208 m!1595183))

(assert (=> bs!339208 m!1595177))

(assert (=> bs!339208 m!1595177))

(declare-fun m!1596511 () Bool)

(assert (=> bs!339208 m!1596511))

(assert (=> bs!339208 m!1595183))

(declare-fun m!1596513 () Bool)

(assert (=> bs!339208 m!1596513))

(assert (=> b!1413463 d!404604))

(declare-fun d!404606 () Bool)

(declare-fun e!902685 () Bool)

(assert (=> d!404606 e!902685))

(declare-fun res!640377 () Bool)

(assert (=> d!404606 (=> (not res!640377) (not e!902685))))

(declare-fun lt!474170 () BalanceConc!9554)

(assert (=> d!404606 (= res!640377 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) lt!474170))) (list!5672 (tokens!1762 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))))

(assert (=> d!404606 (= lt!474170 (print!962 Lexer!2193 (tokens!1762 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))

(declare-fun lt!474171 () Unit!20997)

(assert (=> d!404606 (= lt!474171 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) (list!5672 (tokens!1762 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))))))))

(assert (=> d!404606 (= (print!961 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) lt!474170)))

(declare-fun b!1414033 () Bool)

(assert (=> b!1414033 (= e!902685 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (PrintableTokens!805 (rules!11032 (head!2690 objs!24)) (++!3769 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) lt!474170)))))))

(assert (= (and d!404606 res!640377) b!1414033))

(declare-fun m!1596515 () Bool)

(assert (=> d!404606 m!1596515))

(declare-fun m!1596517 () Bool)

(assert (=> d!404606 m!1596517))

(declare-fun m!1596519 () Bool)

(assert (=> d!404606 m!1596519))

(assert (=> d!404606 m!1596515))

(declare-fun m!1596521 () Bool)

(assert (=> d!404606 m!1596521))

(declare-fun m!1596523 () Bool)

(assert (=> d!404606 m!1596523))

(assert (=> b!1414033 m!1596519))

(declare-fun m!1596525 () Bool)

(assert (=> b!1414033 m!1596525))

(assert (=> b!1414033 m!1596525))

(declare-fun m!1596527 () Bool)

(assert (=> b!1414033 m!1596527))

(assert (=> b!1413463 d!404606))

(declare-fun d!404608 () Bool)

(assert (=> d!404608 (rulesProduceEachTokenIndividuallyList!678 lt!473728 (rules!11032 (head!2690 objs!24)) (++!3767 lt!473738 lt!473753))))

(declare-fun lt!474222 () Unit!20997)

(declare-fun choose!8725 (LexerInterface!2195 List!14517 List!14516 List!14516) Unit!20997)

(assert (=> d!404608 (= lt!474222 (choose!8725 lt!473728 (rules!11032 (head!2690 objs!24)) lt!473738 lt!473753))))

(assert (=> d!404608 (not (isEmpty!8846 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404608 (= (lemmaRulesProduceEachTokenIndividuallyConcat!18 lt!473728 (rules!11032 (head!2690 objs!24)) lt!473738 lt!473753) lt!474222)))

(declare-fun bs!339210 () Bool)

(assert (= bs!339210 d!404608))

(assert (=> bs!339210 m!1596495))

(assert (=> bs!339210 m!1596495))

(assert (=> bs!339210 m!1596499))

(declare-fun m!1596633 () Bool)

(assert (=> bs!339210 m!1596633))

(assert (=> bs!339210 m!1595943))

(assert (=> b!1413463 d!404608))

(declare-fun d!404616 () Bool)

(assert (=> d!404616 (= (printList!653 lt!473758 (++!3767 lt!473770 lt!473745)) (++!3768 (printList!653 lt!473758 lt!473770) (printList!653 lt!473758 lt!473745)))))

(declare-fun lt!474225 () Unit!20997)

(declare-fun choose!8726 (LexerInterface!2195 List!14516 List!14516) Unit!20997)

(assert (=> d!404616 (= lt!474225 (choose!8726 lt!473758 lt!473770 lt!473745))))

(assert (=> d!404616 (= (lemmaPrintConcatSameAsConcatPrint!18 lt!473758 lt!473770 lt!473745) lt!474225)))

(declare-fun bs!339211 () Bool)

(assert (= bs!339211 d!404616))

(declare-fun m!1596635 () Bool)

(assert (=> bs!339211 m!1596635))

(declare-fun m!1596637 () Bool)

(assert (=> bs!339211 m!1596637))

(declare-fun m!1596639 () Bool)

(assert (=> bs!339211 m!1596639))

(declare-fun m!1596641 () Bool)

(assert (=> bs!339211 m!1596641))

(declare-fun m!1596643 () Bool)

(assert (=> bs!339211 m!1596643))

(assert (=> bs!339211 m!1596641))

(assert (=> bs!339211 m!1596637))

(declare-fun m!1596645 () Bool)

(assert (=> bs!339211 m!1596645))

(assert (=> bs!339211 m!1596639))

(assert (=> b!1413463 d!404616))

(declare-fun d!404618 () Bool)

(assert (=> d!404618 (= (head!2695 (list!5673 objs!24)) (h!19853 (list!5673 objs!24)))))

(assert (=> d!404296 d!404618))

(declare-fun d!404620 () Bool)

(declare-fun list!5676 (Conc!4809) List!14518)

(assert (=> d!404620 (= (list!5673 objs!24) (list!5676 (c!232209 objs!24)))))

(declare-fun bs!339212 () Bool)

(assert (= bs!339212 d!404620))

(declare-fun m!1596647 () Bool)

(assert (=> bs!339212 m!1596647))

(assert (=> d!404296 d!404620))

(declare-fun d!404622 () Bool)

(declare-fun lt!474228 () PrintableTokens!804)

(assert (=> d!404622 (= lt!474228 (head!2695 (list!5676 (c!232209 objs!24))))))

(declare-fun e!902696 () PrintableTokens!804)

(assert (=> d!404622 (= lt!474228 e!902696)))

(declare-fun c!232362 () Bool)

(assert (=> d!404622 (= c!232362 ((_ is Leaf!7261) (c!232209 objs!24)))))

(assert (=> d!404622 (isBalanced!1423 (c!232209 objs!24))))

(assert (=> d!404622 (= (head!2696 (c!232209 objs!24)) lt!474228)))

(declare-fun b!1414047 () Bool)

(declare-fun apply!3705 (IArray!9623 Int) PrintableTokens!804)

(assert (=> b!1414047 (= e!902696 (apply!3705 (xs!7536 (c!232209 objs!24)) 0))))

(declare-fun b!1414048 () Bool)

(assert (=> b!1414048 (= e!902696 (head!2696 (left!12346 (c!232209 objs!24))))))

(assert (= (and d!404622 c!232362) b!1414047))

(assert (= (and d!404622 (not c!232362)) b!1414048))

(assert (=> d!404622 m!1596647))

(assert (=> d!404622 m!1596647))

(declare-fun m!1596649 () Bool)

(assert (=> d!404622 m!1596649))

(assert (=> d!404622 m!1595309))

(declare-fun m!1596651 () Bool)

(assert (=> b!1414047 m!1596651))

(declare-fun m!1596653 () Bool)

(assert (=> b!1414048 m!1596653))

(assert (=> d!404296 d!404622))

(assert (=> d!404296 d!404316))

(declare-fun d!404624 () Bool)

(declare-fun c!232363 () Bool)

(assert (=> d!404624 (= c!232363 ((_ is Cons!14450) (ite c!232257 Nil!14450 (ite c!232259 lt!473637 lt!473638))))))

(declare-fun e!902697 () List!14515)

(assert (=> d!404624 (= (printList!653 (ite c!232257 Lexer!2193 (ite c!232259 lt!473598 lt!473643)) (ite c!232257 Nil!14450 (ite c!232259 lt!473637 lt!473638))) e!902697)))

(declare-fun b!1414049 () Bool)

(assert (=> b!1414049 (= e!902697 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232257 Nil!14450 (ite c!232259 lt!473637 lt!473638))))) (printList!653 (ite c!232257 Lexer!2193 (ite c!232259 lt!473598 lt!473643)) (t!123793 (ite c!232257 Nil!14450 (ite c!232259 lt!473637 lt!473638))))))))

(declare-fun b!1414050 () Bool)

(assert (=> b!1414050 (= e!902697 Nil!14449)))

(assert (= (and d!404624 c!232363) b!1414049))

(assert (= (and d!404624 (not c!232363)) b!1414050))

(declare-fun m!1596655 () Bool)

(assert (=> b!1414049 m!1596655))

(assert (=> b!1414049 m!1596655))

(declare-fun m!1596657 () Bool)

(assert (=> b!1414049 m!1596657))

(declare-fun m!1596659 () Bool)

(assert (=> b!1414049 m!1596659))

(assert (=> b!1414049 m!1596657))

(assert (=> b!1414049 m!1596659))

(declare-fun m!1596661 () Bool)

(assert (=> b!1414049 m!1596661))

(assert (=> bm!95045 d!404624))

(declare-fun d!404626 () Bool)

(declare-fun lt!474229 () BalanceConc!9554)

(assert (=> d!404626 (= (list!5671 lt!474229) (originalCharacters!3373 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605))))))

(assert (=> d!404626 (= lt!474229 (dynLambda!6691 (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605))))) (value!81196 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605)))))))

(assert (=> d!404626 (= (charsOf!1470 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605))) lt!474229)))

(declare-fun b_lambda!44577 () Bool)

(assert (=> (not b_lambda!44577) (not d!404626)))

(declare-fun tb!73485 () Bool)

(declare-fun t!123855 () Bool)

(assert (=> (and b!1413591 (= (toChars!3669 (transformation!2511 (h!19852 (rules!11032 sep!3)))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605)))))) t!123855) tb!73485))

(declare-fun tp!401248 () Bool)

(declare-fun e!902698 () Bool)

(declare-fun b!1414051 () Bool)

(assert (=> b!1414051 (= e!902698 (and (inv!18925 (c!232207 (dynLambda!6691 (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605))))) (value!81196 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605)))))) tp!401248))))

(declare-fun result!89450 () Bool)

(assert (=> tb!73485 (= result!89450 (and (inv!18926 (dynLambda!6691 (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605))))) (value!81196 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605))))) e!902698))))

(assert (= tb!73485 b!1414051))

(declare-fun m!1596663 () Bool)

(assert (=> b!1414051 m!1596663))

(declare-fun m!1596665 () Bool)

(assert (=> tb!73485 m!1596665))

(assert (=> d!404626 t!123855))

(declare-fun b_and!94747 () Bool)

(assert (= b_and!94735 (and (=> t!123855 result!89450) b_and!94747)))

(declare-fun tb!73487 () Bool)

(declare-fun t!123857 () Bool)

(assert (=> (and b!1413594 (= (toChars!3669 (transformation!2511 (h!19852 (rules!11032 acc!229)))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605)))))) t!123857) tb!73487))

(declare-fun result!89452 () Bool)

(assert (= result!89452 result!89450))

(assert (=> d!404626 t!123857))

(declare-fun b_and!94749 () Bool)

(assert (= b_and!94737 (and (=> t!123857 result!89452) b_and!94749)))

(declare-fun m!1596667 () Bool)

(assert (=> d!404626 m!1596667))

(declare-fun m!1596669 () Bool)

(assert (=> d!404626 m!1596669))

(assert (=> bm!95058 d!404626))

(declare-fun d!404628 () Bool)

(declare-fun res!640402 () Bool)

(declare-fun e!902704 () Bool)

(assert (=> d!404628 (=> res!640402 e!902704)))

(assert (=> d!404628 (= res!640402 (not ((_ is Node!4808) (c!232208 (tokens!1762 sep!3)))))))

(assert (=> d!404628 (= (isBalanced!1424 (c!232208 (tokens!1762 sep!3))) e!902704)))

(declare-fun b!1414064 () Bool)

(declare-fun e!902703 () Bool)

(assert (=> b!1414064 (= e!902704 e!902703)))

(declare-fun res!640397 () Bool)

(assert (=> b!1414064 (=> (not res!640397) (not e!902703))))

(assert (=> b!1414064 (= res!640397 (<= (- 1) (- (height!696 (left!12345 (c!232208 (tokens!1762 sep!3)))) (height!696 (right!12675 (c!232208 (tokens!1762 sep!3)))))))))

(declare-fun b!1414065 () Bool)

(declare-fun res!640399 () Bool)

(assert (=> b!1414065 (=> (not res!640399) (not e!902703))))

(assert (=> b!1414065 (= res!640399 (isBalanced!1424 (right!12675 (c!232208 (tokens!1762 sep!3)))))))

(declare-fun b!1414066 () Bool)

(declare-fun res!640401 () Bool)

(assert (=> b!1414066 (=> (not res!640401) (not e!902703))))

(assert (=> b!1414066 (= res!640401 (isBalanced!1424 (left!12345 (c!232208 (tokens!1762 sep!3)))))))

(declare-fun b!1414067 () Bool)

(assert (=> b!1414067 (= e!902703 (not (isEmpty!8849 (right!12675 (c!232208 (tokens!1762 sep!3))))))))

(declare-fun b!1414068 () Bool)

(declare-fun res!640398 () Bool)

(assert (=> b!1414068 (=> (not res!640398) (not e!902703))))

(assert (=> b!1414068 (= res!640398 (not (isEmpty!8849 (left!12345 (c!232208 (tokens!1762 sep!3))))))))

(declare-fun b!1414069 () Bool)

(declare-fun res!640400 () Bool)

(assert (=> b!1414069 (=> (not res!640400) (not e!902703))))

(assert (=> b!1414069 (= res!640400 (<= (- (height!696 (left!12345 (c!232208 (tokens!1762 sep!3)))) (height!696 (right!12675 (c!232208 (tokens!1762 sep!3))))) 1))))

(assert (= (and d!404628 (not res!640402)) b!1414064))

(assert (= (and b!1414064 res!640397) b!1414069))

(assert (= (and b!1414069 res!640400) b!1414066))

(assert (= (and b!1414066 res!640401) b!1414065))

(assert (= (and b!1414065 res!640399) b!1414068))

(assert (= (and b!1414068 res!640398) b!1414067))

(assert (=> b!1414069 m!1595519))

(assert (=> b!1414069 m!1595521))

(declare-fun m!1596671 () Bool)

(assert (=> b!1414066 m!1596671))

(assert (=> b!1414064 m!1595519))

(assert (=> b!1414064 m!1595521))

(declare-fun m!1596673 () Bool)

(assert (=> b!1414067 m!1596673))

(declare-fun m!1596675 () Bool)

(assert (=> b!1414065 m!1596675))

(declare-fun m!1596677 () Bool)

(assert (=> b!1414068 m!1596677))

(assert (=> d!404330 d!404628))

(assert (=> b!1413302 d!404328))

(declare-fun d!404630 () Bool)

(declare-fun res!640403 () Bool)

(declare-fun e!902705 () Bool)

(assert (=> d!404630 (=> (not res!640403) (not e!902705))))

(assert (=> d!404630 (= res!640403 (= (csize!9846 (c!232208 (tokens!1762 acc!229))) (+ (size!11917 (left!12345 (c!232208 (tokens!1762 acc!229)))) (size!11917 (right!12675 (c!232208 (tokens!1762 acc!229)))))))))

(assert (=> d!404630 (= (inv!18913 (c!232208 (tokens!1762 acc!229))) e!902705)))

(declare-fun b!1414070 () Bool)

(declare-fun res!640404 () Bool)

(assert (=> b!1414070 (=> (not res!640404) (not e!902705))))

(assert (=> b!1414070 (= res!640404 (and (not (= (left!12345 (c!232208 (tokens!1762 acc!229))) Empty!4808)) (not (= (right!12675 (c!232208 (tokens!1762 acc!229))) Empty!4808))))))

(declare-fun b!1414071 () Bool)

(declare-fun res!640405 () Bool)

(assert (=> b!1414071 (=> (not res!640405) (not e!902705))))

(assert (=> b!1414071 (= res!640405 (= (cheight!5019 (c!232208 (tokens!1762 acc!229))) (+ (max!0 (height!696 (left!12345 (c!232208 (tokens!1762 acc!229)))) (height!696 (right!12675 (c!232208 (tokens!1762 acc!229))))) 1)))))

(declare-fun b!1414072 () Bool)

(assert (=> b!1414072 (= e!902705 (<= 0 (cheight!5019 (c!232208 (tokens!1762 acc!229)))))))

(assert (= (and d!404630 res!640403) b!1414070))

(assert (= (and b!1414070 res!640404) b!1414071))

(assert (= (and b!1414071 res!640405) b!1414072))

(declare-fun m!1596679 () Bool)

(assert (=> d!404630 m!1596679))

(declare-fun m!1596681 () Bool)

(assert (=> d!404630 m!1596681))

(declare-fun m!1596683 () Bool)

(assert (=> b!1414071 m!1596683))

(declare-fun m!1596685 () Bool)

(assert (=> b!1414071 m!1596685))

(assert (=> b!1414071 m!1596683))

(assert (=> b!1414071 m!1596685))

(declare-fun m!1596687 () Bool)

(assert (=> b!1414071 m!1596687))

(assert (=> b!1413556 d!404630))

(declare-fun d!404632 () Bool)

(declare-fun e!902706 () Bool)

(assert (=> d!404632 e!902706))

(declare-fun res!640406 () Bool)

(assert (=> d!404632 (=> (not res!640406) (not e!902706))))

(assert (=> d!404632 (= res!640406 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (print!962 Lexer!2193 (seqFromList!1670 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))) (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))

(declare-fun lt!474236 () Unit!20997)

(declare-fun e!902707 () Unit!20997)

(assert (=> d!404632 (= lt!474236 e!902707)))

(declare-fun c!232364 () Bool)

(assert (=> d!404632 (= c!232364 (or ((_ is Nil!14450) (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))) ((_ is Nil!14450) (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))))

(assert (=> d!404632 (not (isEmpty!8846 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3))))))

(assert (=> d!404632 (= (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))) lt!474236)))

(declare-fun b!1414073 () Bool)

(declare-fun Unit!21059 () Unit!20997)

(assert (=> b!1414073 (= e!902707 Unit!21059)))

(declare-fun b!1414074 () Bool)

(declare-fun Unit!21060 () Unit!20997)

(assert (=> b!1414074 (= e!902707 Unit!21060)))

(declare-fun lt!474234 () BalanceConc!9554)

(assert (=> b!1414074 (= lt!474234 (print!962 Lexer!2193 (seqFromList!1670 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))))

(declare-fun lt!474247 () BalanceConc!9554)

(assert (=> b!1414074 (= lt!474247 (print!962 Lexer!2193 (seqFromList!1670 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))))

(declare-fun lt!474249 () tuple2!13984)

(assert (=> b!1414074 (= lt!474249 (lex!1008 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) lt!474247))))

(declare-fun lt!474231 () List!14515)

(assert (=> b!1414074 (= lt!474231 (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))))

(declare-fun lt!474252 () List!14515)

(assert (=> b!1414074 (= lt!474252 (list!5671 lt!474247))))

(declare-fun lt!474241 () Unit!20997)

(assert (=> b!1414074 (= lt!474241 (lemmaConcatTwoListThenFirstIsPrefix!734 lt!474231 lt!474252))))

(assert (=> b!1414074 (isPrefix!1167 lt!474231 (++!3768 lt!474231 lt!474252))))

(declare-fun lt!474243 () Unit!20997)

(assert (=> b!1414074 (= lt!474243 lt!474241)))

(declare-fun lt!474232 () Unit!20997)

(assert (=> b!1414074 (= lt!474232 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))))

(declare-fun lt!474240 () Unit!20997)

(assert (=> b!1414074 (= lt!474240 (seqFromListBHdTlConstructive!63 (h!19851 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))) (t!123793 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))) (_1!7878 lt!474249)))))

(assert (=> b!1414074 (= (list!5672 (_1!7878 lt!474249)) (list!5672 (prepend!379 (seqFromList!1670 (t!123793 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))) (h!19851 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))))))

(declare-fun lt!474242 () Unit!20997)

(assert (=> b!1414074 (= lt!474242 lt!474240)))

(declare-fun lt!474254 () Option!2771)

(assert (=> b!1414074 (= lt!474254 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (list!5671 lt!474234)))))

(assert (=> b!1414074 (= (print!962 Lexer!2193 (singletonSeq!1159 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))) (printTailRec!635 Lexer!2193 (singletonSeq!1159 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))) 0 (BalanceConc!9555 Empty!4807)))))

(declare-fun lt!474230 () Unit!20997)

(declare-fun Unit!21061 () Unit!20997)

(assert (=> b!1414074 (= lt!474230 Unit!21061)))

(declare-fun lt!474235 () Unit!20997)

(assert (=> b!1414074 (= lt!474235 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!207 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))) (list!5671 lt!474247)))))

(assert (=> b!1414074 (= (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))) (originalCharacters!3373 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))))

(declare-fun lt!474246 () Unit!20997)

(declare-fun Unit!21062 () Unit!20997)

(assert (=> b!1414074 (= lt!474246 Unit!21062)))

(assert (=> b!1414074 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))) 0))) (Cons!14449 (head!2698 (originalCharacters!3373 (h!19851 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))) Nil!14449))))

(declare-fun lt!474233 () Unit!20997)

(declare-fun Unit!21063 () Unit!20997)

(assert (=> b!1414074 (= lt!474233 Unit!21063)))

(assert (=> b!1414074 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))) 0))) (Cons!14449 (head!2698 (list!5671 lt!474247)) Nil!14449))))

(declare-fun lt!474237 () Unit!20997)

(declare-fun Unit!21064 () Unit!20997)

(assert (=> b!1414074 (= lt!474237 Unit!21064)))

(assert (=> b!1414074 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))) 0))) (Cons!14449 (head!2699 lt!474247) Nil!14449))))

(declare-fun lt!474244 () Unit!20997)

(declare-fun Unit!21065 () Unit!20997)

(assert (=> b!1414074 (= lt!474244 Unit!21065)))

(assert (=> b!1414074 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (originalCharacters!3373 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))))

(declare-fun lt!474248 () Unit!20997)

(declare-fun Unit!21066 () Unit!20997)

(assert (=> b!1414074 (= lt!474248 Unit!21066)))

(assert (=> b!1414074 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))))))

(declare-fun lt!474255 () Unit!20997)

(declare-fun Unit!21067 () Unit!20997)

(assert (=> b!1414074 (= lt!474255 Unit!21067)))

(declare-fun lt!474238 () Unit!20997)

(declare-fun Unit!21068 () Unit!20997)

(assert (=> b!1414074 (= lt!474238 Unit!21068)))

(assert (=> b!1414074 (= (_1!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))))) (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))

(declare-fun lt!474251 () Unit!20997)

(declare-fun Unit!21069 () Unit!20997)

(assert (=> b!1414074 (= lt!474251 Unit!21069)))

(assert (=> b!1414074 (isEmpty!8847 (_2!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))))))))

(declare-fun lt!474250 () Unit!20997)

(declare-fun Unit!21070 () Unit!20997)

(assert (=> b!1414074 (= lt!474250 Unit!21070)))

(assert (=> b!1414074 (matchR!1793 (regex!2511 (rule!4274 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))))

(declare-fun lt!474253 () Unit!20997)

(declare-fun Unit!21071 () Unit!20997)

(assert (=> b!1414074 (= lt!474253 Unit!21071)))

(assert (=> b!1414074 (= (rule!4274 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))) (rule!4274 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))))))

(declare-fun lt!474245 () Unit!20997)

(declare-fun Unit!21072 () Unit!20997)

(assert (=> b!1414074 (= lt!474245 Unit!21072)))

(declare-fun lt!474239 () Unit!20997)

(assert (=> b!1414074 (= lt!474239 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!5 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))) (rule!4274 (h!19851 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103)))) (list!5671 lt!474247)))))

(declare-fun b!1414075 () Bool)

(assert (=> b!1414075 (= e!902706 (isEmpty!8850 (_2!7878 (lex!1008 Lexer!2193 (ite c!232275 (rules!11032 (head!2690 objs!24)) (rules!11032 sep!3)) (print!962 Lexer!2193 (seqFromList!1670 (ite c!232275 call!95126 (ite c!232277 call!95127 call!95103))))))))))

(assert (= (and d!404632 c!232364) b!1414073))

(assert (= (and d!404632 (not c!232364)) b!1414074))

(assert (= (and d!404632 res!640406) b!1414075))

(declare-fun m!1596695 () Bool)

(assert (=> d!404632 m!1596695))

(declare-fun m!1596697 () Bool)

(assert (=> d!404632 m!1596697))

(declare-fun m!1596699 () Bool)

(assert (=> d!404632 m!1596699))

(declare-fun m!1596701 () Bool)

(assert (=> d!404632 m!1596701))

(declare-fun m!1596703 () Bool)

(assert (=> d!404632 m!1596703))

(assert (=> d!404632 m!1596703))

(assert (=> d!404632 m!1596697))

(declare-fun m!1596705 () Bool)

(assert (=> b!1414074 m!1596705))

(declare-fun m!1596707 () Bool)

(assert (=> b!1414074 m!1596707))

(declare-fun m!1596709 () Bool)

(assert (=> b!1414074 m!1596709))

(declare-fun m!1596711 () Bool)

(assert (=> b!1414074 m!1596711))

(declare-fun m!1596713 () Bool)

(assert (=> b!1414074 m!1596713))

(declare-fun m!1596715 () Bool)

(assert (=> b!1414074 m!1596715))

(declare-fun m!1596719 () Bool)

(assert (=> b!1414074 m!1596719))

(declare-fun m!1596725 () Bool)

(assert (=> b!1414074 m!1596725))

(declare-fun m!1596731 () Bool)

(assert (=> b!1414074 m!1596731))

(assert (=> b!1414074 m!1596707))

(declare-fun m!1596735 () Bool)

(assert (=> b!1414074 m!1596735))

(assert (=> b!1414074 m!1596705))

(declare-fun m!1596739 () Bool)

(assert (=> b!1414074 m!1596739))

(declare-fun m!1596741 () Bool)

(assert (=> b!1414074 m!1596741))

(declare-fun m!1596743 () Bool)

(assert (=> b!1414074 m!1596743))

(assert (=> b!1414074 m!1596705))

(declare-fun m!1596745 () Bool)

(assert (=> b!1414074 m!1596745))

(declare-fun m!1596747 () Bool)

(assert (=> b!1414074 m!1596747))

(declare-fun m!1596749 () Bool)

(assert (=> b!1414074 m!1596749))

(declare-fun m!1596751 () Bool)

(assert (=> b!1414074 m!1596751))

(assert (=> b!1414074 m!1596749))

(assert (=> b!1414074 m!1596707))

(assert (=> b!1414074 m!1596751))

(assert (=> b!1414074 m!1596713))

(declare-fun m!1596753 () Bool)

(assert (=> b!1414074 m!1596753))

(declare-fun m!1596755 () Bool)

(assert (=> b!1414074 m!1596755))

(declare-fun m!1596757 () Bool)

(assert (=> b!1414074 m!1596757))

(declare-fun m!1596759 () Bool)

(assert (=> b!1414074 m!1596759))

(assert (=> b!1414074 m!1596707))

(declare-fun m!1596761 () Bool)

(assert (=> b!1414074 m!1596761))

(declare-fun m!1596763 () Bool)

(assert (=> b!1414074 m!1596763))

(assert (=> b!1414074 m!1596757))

(assert (=> b!1414074 m!1596719))

(declare-fun m!1596765 () Bool)

(assert (=> b!1414074 m!1596765))

(declare-fun m!1596767 () Bool)

(assert (=> b!1414074 m!1596767))

(declare-fun m!1596769 () Bool)

(assert (=> b!1414074 m!1596769))

(declare-fun m!1596771 () Bool)

(assert (=> b!1414074 m!1596771))

(declare-fun m!1596773 () Bool)

(assert (=> b!1414074 m!1596773))

(declare-fun m!1596775 () Bool)

(assert (=> b!1414074 m!1596775))

(assert (=> b!1414074 m!1596769))

(declare-fun m!1596777 () Bool)

(assert (=> b!1414074 m!1596777))

(declare-fun m!1596779 () Bool)

(assert (=> b!1414074 m!1596779))

(assert (=> b!1414074 m!1596739))

(declare-fun m!1596781 () Bool)

(assert (=> b!1414074 m!1596781))

(assert (=> b!1414074 m!1596767))

(assert (=> b!1414074 m!1596705))

(assert (=> b!1414074 m!1596753))

(assert (=> b!1414074 m!1596741))

(declare-fun m!1596783 () Bool)

(assert (=> b!1414074 m!1596783))

(assert (=> b!1414074 m!1596763))

(assert (=> b!1414074 m!1596703))

(assert (=> b!1414074 m!1596769))

(declare-fun m!1596785 () Bool)

(assert (=> b!1414074 m!1596785))

(assert (=> b!1414074 m!1596739))

(declare-fun m!1596787 () Bool)

(assert (=> b!1414074 m!1596787))

(assert (=> b!1414074 m!1596773))

(assert (=> b!1414074 m!1596703))

(assert (=> b!1414074 m!1596697))

(declare-fun m!1596789 () Bool)

(assert (=> b!1414074 m!1596789))

(assert (=> b!1414075 m!1596703))

(assert (=> b!1414075 m!1596703))

(assert (=> b!1414075 m!1596697))

(assert (=> b!1414075 m!1596697))

(assert (=> b!1414075 m!1596699))

(declare-fun m!1596791 () Bool)

(assert (=> b!1414075 m!1596791))

(assert (=> bm!95108 d!404632))

(declare-fun d!404638 () Bool)

(declare-fun res!640412 () Bool)

(declare-fun e!902713 () Bool)

(assert (=> d!404638 (=> res!640412 e!902713)))

(assert (=> d!404638 (= res!640412 ((_ is Nil!14452) (list!5673 objs!24)))))

(assert (=> d!404638 (= (forall!3552 (list!5673 objs!24) lambda!62469) e!902713)))

(declare-fun b!1414081 () Bool)

(declare-fun e!902714 () Bool)

(assert (=> b!1414081 (= e!902713 e!902714)))

(declare-fun res!640413 () Bool)

(assert (=> b!1414081 (=> (not res!640413) (not e!902714))))

(declare-fun dynLambda!6700 (Int PrintableTokens!804) Bool)

(assert (=> b!1414081 (= res!640413 (dynLambda!6700 lambda!62469 (h!19853 (list!5673 objs!24))))))

(declare-fun b!1414082 () Bool)

(assert (=> b!1414082 (= e!902714 (forall!3552 (t!123795 (list!5673 objs!24)) lambda!62469))))

(assert (= (and d!404638 (not res!640412)) b!1414081))

(assert (= (and b!1414081 res!640413) b!1414082))

(declare-fun b_lambda!44579 () Bool)

(assert (=> (not b_lambda!44579) (not b!1414081)))

(declare-fun m!1596793 () Bool)

(assert (=> b!1414081 m!1596793))

(declare-fun m!1596795 () Bool)

(assert (=> b!1414082 m!1596795))

(assert (=> d!404318 d!404638))

(assert (=> d!404318 d!404620))

(declare-fun b!1414091 () Bool)

(declare-fun e!902722 () Bool)

(declare-fun e!902721 () Bool)

(assert (=> b!1414091 (= e!902722 e!902721)))

(declare-fun c!232367 () Bool)

(assert (=> b!1414091 (= c!232367 ((_ is Leaf!7261) (c!232209 objs!24)))))

(declare-fun b!1414092 () Bool)

(declare-fun forall!3559 (IArray!9623 Int) Bool)

(assert (=> b!1414092 (= e!902721 (forall!3559 (xs!7536 (c!232209 objs!24)) lambda!62469))))

(declare-fun b!1414094 () Bool)

(declare-fun e!902723 () Bool)

(assert (=> b!1414094 (= e!902723 (forall!3553 (right!12676 (c!232209 objs!24)) lambda!62469))))

(declare-fun d!404640 () Bool)

(declare-fun lt!474266 () Bool)

(assert (=> d!404640 (= lt!474266 (forall!3552 (list!5676 (c!232209 objs!24)) lambda!62469))))

(assert (=> d!404640 (= lt!474266 e!902722)))

(declare-fun res!640419 () Bool)

(assert (=> d!404640 (=> res!640419 e!902722)))

(assert (=> d!404640 (= res!640419 ((_ is Empty!4809) (c!232209 objs!24)))))

(assert (=> d!404640 (= (forall!3553 (c!232209 objs!24) lambda!62469) lt!474266)))

(declare-fun b!1414093 () Bool)

(assert (=> b!1414093 (= e!902721 e!902723)))

(declare-fun lt!474265 () Unit!20997)

(declare-fun lemmaForallConcat!130 (List!14518 List!14518 Int) Unit!20997)

(assert (=> b!1414093 (= lt!474265 (lemmaForallConcat!130 (list!5676 (left!12346 (c!232209 objs!24))) (list!5676 (right!12676 (c!232209 objs!24))) lambda!62469))))

(declare-fun res!640418 () Bool)

(assert (=> b!1414093 (= res!640418 (forall!3553 (left!12346 (c!232209 objs!24)) lambda!62469))))

(assert (=> b!1414093 (=> (not res!640418) (not e!902723))))

(assert (= (and d!404640 (not res!640419)) b!1414091))

(assert (= (and b!1414091 c!232367) b!1414092))

(assert (= (and b!1414091 (not c!232367)) b!1414093))

(assert (= (and b!1414093 res!640418) b!1414094))

(declare-fun m!1596797 () Bool)

(assert (=> b!1414092 m!1596797))

(declare-fun m!1596799 () Bool)

(assert (=> b!1414094 m!1596799))

(assert (=> d!404640 m!1596647))

(assert (=> d!404640 m!1596647))

(declare-fun m!1596801 () Bool)

(assert (=> d!404640 m!1596801))

(declare-fun m!1596803 () Bool)

(assert (=> b!1414093 m!1596803))

(declare-fun m!1596805 () Bool)

(assert (=> b!1414093 m!1596805))

(assert (=> b!1414093 m!1596803))

(assert (=> b!1414093 m!1596805))

(declare-fun m!1596807 () Bool)

(assert (=> b!1414093 m!1596807))

(declare-fun m!1596809 () Bool)

(assert (=> b!1414093 m!1596809))

(assert (=> d!404318 d!404640))

(declare-fun b!1414107 () Bool)

(declare-fun res!640435 () Bool)

(declare-fun e!902729 () Bool)

(assert (=> b!1414107 (=> (not res!640435) (not e!902729))))

(assert (=> b!1414107 (= res!640435 (isBalanced!1423 (left!12346 (c!232209 objs!24))))))

(declare-fun b!1414108 () Bool)

(assert (=> b!1414108 (= e!902729 (not (isEmpty!8845 (right!12676 (c!232209 objs!24)))))))

(declare-fun d!404642 () Bool)

(declare-fun res!640437 () Bool)

(declare-fun e!902728 () Bool)

(assert (=> d!404642 (=> res!640437 e!902728)))

(assert (=> d!404642 (= res!640437 (not ((_ is Node!4809) (c!232209 objs!24))))))

(assert (=> d!404642 (= (isBalanced!1423 (c!232209 objs!24)) e!902728)))

(declare-fun b!1414109 () Bool)

(declare-fun res!640432 () Bool)

(assert (=> b!1414109 (=> (not res!640432) (not e!902729))))

(assert (=> b!1414109 (= res!640432 (isBalanced!1423 (right!12676 (c!232209 objs!24))))))

(declare-fun b!1414110 () Bool)

(declare-fun res!640433 () Bool)

(assert (=> b!1414110 (=> (not res!640433) (not e!902729))))

(assert (=> b!1414110 (= res!640433 (not (isEmpty!8845 (left!12346 (c!232209 objs!24)))))))

(declare-fun b!1414111 () Bool)

(assert (=> b!1414111 (= e!902728 e!902729)))

(declare-fun res!640434 () Bool)

(assert (=> b!1414111 (=> (not res!640434) (not e!902729))))

(assert (=> b!1414111 (= res!640434 (<= (- 1) (- (height!697 (left!12346 (c!232209 objs!24))) (height!697 (right!12676 (c!232209 objs!24))))))))

(declare-fun b!1414112 () Bool)

(declare-fun res!640436 () Bool)

(assert (=> b!1414112 (=> (not res!640436) (not e!902729))))

(assert (=> b!1414112 (= res!640436 (<= (- (height!697 (left!12346 (c!232209 objs!24))) (height!697 (right!12676 (c!232209 objs!24)))) 1))))

(assert (= (and d!404642 (not res!640437)) b!1414111))

(assert (= (and b!1414111 res!640434) b!1414112))

(assert (= (and b!1414112 res!640436) b!1414107))

(assert (= (and b!1414107 res!640435) b!1414109))

(assert (= (and b!1414109 res!640432) b!1414110))

(assert (= (and b!1414110 res!640433) b!1414108))

(declare-fun m!1596811 () Bool)

(assert (=> b!1414108 m!1596811))

(assert (=> b!1414112 m!1595801))

(assert (=> b!1414112 m!1595803))

(declare-fun m!1596813 () Bool)

(assert (=> b!1414107 m!1596813))

(assert (=> b!1414111 m!1595801))

(assert (=> b!1414111 m!1595803))

(declare-fun m!1596815 () Bool)

(assert (=> b!1414110 m!1596815))

(declare-fun m!1596817 () Bool)

(assert (=> b!1414109 m!1596817))

(assert (=> d!404320 d!404642))

(declare-fun d!404644 () Bool)

(assert (=> d!404644 (= (isEmpty!8844 (list!5673 objs!24)) ((_ is Nil!14452) (list!5673 objs!24)))))

(assert (=> d!404316 d!404644))

(assert (=> d!404316 d!404620))

(declare-fun d!404646 () Bool)

(declare-fun lt!474269 () Bool)

(assert (=> d!404646 (= lt!474269 (isEmpty!8844 (list!5676 (c!232209 objs!24))))))

(assert (=> d!404646 (= lt!474269 (= (size!11914 (c!232209 objs!24)) 0))))

(assert (=> d!404646 (= (isEmpty!8845 (c!232209 objs!24)) lt!474269)))

(declare-fun bs!339214 () Bool)

(assert (= bs!339214 d!404646))

(assert (=> bs!339214 m!1596647))

(assert (=> bs!339214 m!1596647))

(declare-fun m!1596819 () Bool)

(assert (=> bs!339214 m!1596819))

(assert (=> bs!339214 m!1595299))

(assert (=> d!404316 d!404646))

(declare-fun d!404648 () Bool)

(assert (=> d!404648 (= (inv!18900 (tag!2773 (h!19852 (rules!11032 sep!3)))) (= (mod (str.len (value!81195 (tag!2773 (h!19852 (rules!11032 sep!3))))) 2) 0))))

(assert (=> b!1413590 d!404648))

(declare-fun d!404650 () Bool)

(declare-fun res!640438 () Bool)

(declare-fun e!902730 () Bool)

(assert (=> d!404650 (=> (not res!640438) (not e!902730))))

(assert (=> d!404650 (= res!640438 (semiInverseModEq!973 (toChars!3669 (transformation!2511 (h!19852 (rules!11032 sep!3)))) (toValue!3810 (transformation!2511 (h!19852 (rules!11032 sep!3))))))))

(assert (=> d!404650 (= (inv!18924 (transformation!2511 (h!19852 (rules!11032 sep!3)))) e!902730)))

(declare-fun b!1414113 () Bool)

(assert (=> b!1414113 (= e!902730 (equivClasses!932 (toChars!3669 (transformation!2511 (h!19852 (rules!11032 sep!3)))) (toValue!3810 (transformation!2511 (h!19852 (rules!11032 sep!3))))))))

(assert (= (and d!404650 res!640438) b!1414113))

(declare-fun m!1596821 () Bool)

(assert (=> d!404650 m!1596821))

(declare-fun m!1596823 () Bool)

(assert (=> b!1414113 m!1596823))

(assert (=> b!1413590 d!404650))

(declare-fun d!404652 () Bool)

(declare-fun res!640439 () Bool)

(declare-fun e!902731 () Bool)

(assert (=> d!404652 (=> (not res!640439) (not e!902731))))

(assert (=> d!404652 (= res!640439 (rulesValid!942 Lexer!2193 (rules!11032 acc!229)))))

(assert (=> d!404652 (= (rulesInvariant!2065 Lexer!2193 (rules!11032 acc!229)) e!902731)))

(declare-fun b!1414114 () Bool)

(assert (=> b!1414114 (= e!902731 (noDuplicateTag!942 Lexer!2193 (rules!11032 acc!229) Nil!14453))))

(assert (= (and d!404652 res!640439) b!1414114))

(declare-fun m!1596825 () Bool)

(assert (=> d!404652 m!1596825))

(declare-fun m!1596827 () Bool)

(assert (=> b!1414114 m!1596827))

(assert (=> b!1413541 d!404652))

(declare-fun d!404654 () Bool)

(declare-fun e!902732 () Bool)

(assert (=> d!404654 e!902732))

(declare-fun res!640440 () Bool)

(assert (=> d!404654 (=> (not res!640440) (not e!902732))))

(declare-fun lt!474270 () BalanceConc!9554)

(assert (=> d!404654 (= res!640440 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (ite c!232257 (v!21893 lt!473262) acc!229)) lt!474270))) (list!5672 (tokens!1762 (ite c!232257 (v!21893 lt!473262) acc!229)))))))

(assert (=> d!404654 (= lt!474270 (print!962 Lexer!2193 (tokens!1762 (ite c!232257 (v!21893 lt!473262) acc!229))))))

(declare-fun lt!474271 () Unit!20997)

(assert (=> d!404654 (= lt!474271 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (ite c!232257 (v!21893 lt!473262) acc!229)) (list!5672 (tokens!1762 (ite c!232257 (v!21893 lt!473262) acc!229)))))))

(assert (=> d!404654 (= (print!961 (ite c!232257 (v!21893 lt!473262) acc!229)) lt!474270)))

(declare-fun b!1414115 () Bool)

(assert (=> b!1414115 (= e!902732 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (ite c!232257 (v!21893 lt!473262) acc!229)) lt!474270)))))))

(assert (= (and d!404654 res!640440) b!1414115))

(declare-fun m!1596829 () Bool)

(assert (=> d!404654 m!1596829))

(declare-fun m!1596831 () Bool)

(assert (=> d!404654 m!1596831))

(declare-fun m!1596833 () Bool)

(assert (=> d!404654 m!1596833))

(assert (=> d!404654 m!1596829))

(declare-fun m!1596835 () Bool)

(assert (=> d!404654 m!1596835))

(declare-fun m!1596837 () Bool)

(assert (=> d!404654 m!1596837))

(assert (=> b!1414115 m!1596833))

(declare-fun m!1596839 () Bool)

(assert (=> b!1414115 m!1596839))

(assert (=> b!1414115 m!1596839))

(declare-fun m!1596841 () Bool)

(assert (=> b!1414115 m!1596841))

(assert (=> bm!95033 d!404654))

(declare-fun d!404656 () Bool)

(declare-fun lt!474272 () Bool)

(assert (=> d!404656 (= lt!474272 (isEmpty!8848 (list!5672 (tokens!1762 acc!229))))))

(assert (=> d!404656 (= lt!474272 (isEmpty!8849 (c!232208 (tokens!1762 acc!229))))))

(assert (=> d!404656 (= (isEmpty!8840 (tokens!1762 acc!229)) lt!474272)))

(declare-fun bs!339215 () Bool)

(assert (= bs!339215 d!404656))

(assert (=> bs!339215 m!1594969))

(assert (=> bs!339215 m!1594969))

(declare-fun m!1596843 () Bool)

(assert (=> bs!339215 m!1596843))

(declare-fun m!1596845 () Bool)

(assert (=> bs!339215 m!1596845))

(assert (=> b!1413417 d!404656))

(declare-fun d!404658 () Bool)

(declare-fun c!232368 () Bool)

(assert (=> d!404658 (= c!232368 ((_ is Cons!14450) (ite c!232275 call!95105 call!95114)))))

(declare-fun e!902733 () List!14515)

(assert (=> d!404658 (= (printList!653 (ite c!232275 Lexer!2193 (ite c!232277 lt!473729 lt!473758)) (ite c!232275 call!95105 call!95114)) e!902733)))

(declare-fun b!1414116 () Bool)

(assert (=> b!1414116 (= e!902733 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95105 call!95114)))) (printList!653 (ite c!232275 Lexer!2193 (ite c!232277 lt!473729 lt!473758)) (t!123793 (ite c!232275 call!95105 call!95114)))))))

(declare-fun b!1414117 () Bool)

(assert (=> b!1414117 (= e!902733 Nil!14449)))

(assert (= (and d!404658 c!232368) b!1414116))

(assert (= (and d!404658 (not c!232368)) b!1414117))

(declare-fun m!1596847 () Bool)

(assert (=> b!1414116 m!1596847))

(assert (=> b!1414116 m!1596847))

(declare-fun m!1596849 () Bool)

(assert (=> b!1414116 m!1596849))

(declare-fun m!1596851 () Bool)

(assert (=> b!1414116 m!1596851))

(assert (=> b!1414116 m!1596849))

(assert (=> b!1414116 m!1596851))

(declare-fun m!1596853 () Bool)

(assert (=> b!1414116 m!1596853))

(assert (=> bm!95101 d!404658))

(declare-fun b!1414120 () Bool)

(declare-fun res!640444 () Bool)

(declare-fun e!902734 () Bool)

(assert (=> b!1414120 (=> (not res!640444) (not e!902734))))

(assert (=> b!1414120 (= res!640444 (>= (height!696 (++!3771 (c!232208 (tokens!1762 acc!229)) (c!232208 (tokens!1762 (v!21893 lt!473262))))) (max!0 (height!696 (c!232208 (tokens!1762 acc!229))) (height!696 (c!232208 (tokens!1762 (v!21893 lt!473262)))))))))

(declare-fun lt!474273 () BalanceConc!9556)

(declare-fun b!1414121 () Bool)

(assert (=> b!1414121 (= e!902734 (= (list!5672 lt!474273) (++!3767 (list!5672 (tokens!1762 acc!229)) (list!5672 (tokens!1762 (v!21893 lt!473262))))))))

(declare-fun b!1414119 () Bool)

(declare-fun res!640443 () Bool)

(assert (=> b!1414119 (=> (not res!640443) (not e!902734))))

(assert (=> b!1414119 (= res!640443 (<= (height!696 (++!3771 (c!232208 (tokens!1762 acc!229)) (c!232208 (tokens!1762 (v!21893 lt!473262))))) (+ (max!0 (height!696 (c!232208 (tokens!1762 acc!229))) (height!696 (c!232208 (tokens!1762 (v!21893 lt!473262))))) 1)))))

(declare-fun d!404660 () Bool)

(assert (=> d!404660 e!902734))

(declare-fun res!640441 () Bool)

(assert (=> d!404660 (=> (not res!640441) (not e!902734))))

(assert (=> d!404660 (= res!640441 (appendAssocInst!294 (c!232208 (tokens!1762 acc!229)) (c!232208 (tokens!1762 (v!21893 lt!473262)))))))

(assert (=> d!404660 (= lt!474273 (BalanceConc!9557 (++!3771 (c!232208 (tokens!1762 acc!229)) (c!232208 (tokens!1762 (v!21893 lt!473262))))))))

(assert (=> d!404660 (= (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))) lt!474273)))

(declare-fun b!1414118 () Bool)

(declare-fun res!640442 () Bool)

(assert (=> b!1414118 (=> (not res!640442) (not e!902734))))

(assert (=> b!1414118 (= res!640442 (isBalanced!1424 (++!3771 (c!232208 (tokens!1762 acc!229)) (c!232208 (tokens!1762 (v!21893 lt!473262))))))))

(assert (= (and d!404660 res!640441) b!1414118))

(assert (= (and b!1414118 res!640442) b!1414119))

(assert (= (and b!1414119 res!640443) b!1414120))

(assert (= (and b!1414120 res!640444) b!1414121))

(declare-fun m!1596855 () Bool)

(assert (=> b!1414118 m!1596855))

(assert (=> b!1414118 m!1596855))

(declare-fun m!1596857 () Bool)

(assert (=> b!1414118 m!1596857))

(declare-fun m!1596859 () Bool)

(assert (=> d!404660 m!1596859))

(assert (=> d!404660 m!1596855))

(declare-fun m!1596861 () Bool)

(assert (=> b!1414119 m!1596861))

(assert (=> b!1414119 m!1596855))

(assert (=> b!1414119 m!1596855))

(declare-fun m!1596863 () Bool)

(assert (=> b!1414119 m!1596863))

(declare-fun m!1596865 () Bool)

(assert (=> b!1414119 m!1596865))

(assert (=> b!1414119 m!1596865))

(assert (=> b!1414119 m!1596861))

(declare-fun m!1596867 () Bool)

(assert (=> b!1414119 m!1596867))

(declare-fun m!1596869 () Bool)

(assert (=> b!1414121 m!1596869))

(assert (=> b!1414121 m!1594969))

(assert (=> b!1414121 m!1594971))

(assert (=> b!1414121 m!1594969))

(assert (=> b!1414121 m!1594971))

(assert (=> b!1414121 m!1594973))

(assert (=> b!1414120 m!1596861))

(assert (=> b!1414120 m!1596855))

(assert (=> b!1414120 m!1596855))

(assert (=> b!1414120 m!1596863))

(assert (=> b!1414120 m!1596865))

(assert (=> b!1414120 m!1596865))

(assert (=> b!1414120 m!1596861))

(assert (=> b!1414120 m!1596867))

(assert (=> b!1413418 d!404660))

(declare-fun bs!339216 () Bool)

(declare-fun d!404662 () Bool)

(assert (= bs!339216 (and d!404662 d!404382)))

(declare-fun lambda!62483 () Int)

(assert (=> bs!339216 (= (= lt!473597 Lexer!2193) (= lambda!62483 lambda!62474))))

(declare-fun bs!339217 () Bool)

(assert (= bs!339217 (and d!404662 d!404464)))

(assert (=> bs!339217 (= (and (= lt!473597 lt!473728) (= (rules!11032 acc!229) (rules!11032 (head!2690 objs!24)))) (= lambda!62483 lambda!62482))))

(declare-fun b!1414126 () Bool)

(declare-fun e!902739 () Bool)

(assert (=> b!1414126 (= e!902739 true)))

(declare-fun b!1414125 () Bool)

(declare-fun e!902738 () Bool)

(assert (=> b!1414125 (= e!902738 e!902739)))

(declare-fun b!1414124 () Bool)

(declare-fun e!902737 () Bool)

(assert (=> b!1414124 (= e!902737 e!902738)))

(assert (=> d!404662 e!902737))

(assert (= b!1414125 b!1414126))

(assert (= b!1414124 b!1414125))

(assert (= (and d!404662 ((_ is Cons!14451) (rules!11032 acc!229))) b!1414124))

(assert (=> b!1414126 (< (dynLambda!6692 order!8815 (toValue!3810 (transformation!2511 (h!19852 (rules!11032 acc!229))))) (dynLambda!6693 order!8817 lambda!62483))))

(assert (=> b!1414126 (< (dynLambda!6694 order!8819 (toChars!3669 (transformation!2511 (h!19852 (rules!11032 acc!229))))) (dynLambda!6693 order!8817 lambda!62483))))

(assert (=> d!404662 true))

(declare-fun lt!474274 () Bool)

(assert (=> d!404662 (= lt!474274 (forall!3554 call!95057 lambda!62483))))

(declare-fun e!902735 () Bool)

(assert (=> d!404662 (= lt!474274 e!902735)))

(declare-fun res!640445 () Bool)

(assert (=> d!404662 (=> res!640445 e!902735)))

(assert (=> d!404662 (= res!640445 (not ((_ is Cons!14450) call!95057)))))

(assert (=> d!404662 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404662 (= (rulesProduceEachTokenIndividuallyList!678 lt!473597 (rules!11032 acc!229) call!95057) lt!474274)))

(declare-fun b!1414122 () Bool)

(declare-fun e!902736 () Bool)

(assert (=> b!1414122 (= e!902735 e!902736)))

(declare-fun res!640446 () Bool)

(assert (=> b!1414122 (=> (not res!640446) (not e!902736))))

(assert (=> b!1414122 (= res!640446 (rulesProduceIndividualToken!1162 lt!473597 (rules!11032 acc!229) (h!19851 call!95057)))))

(declare-fun b!1414123 () Bool)

(assert (=> b!1414123 (= e!902736 (rulesProduceEachTokenIndividuallyList!678 lt!473597 (rules!11032 acc!229) (t!123793 call!95057)))))

(assert (= (and d!404662 (not res!640445)) b!1414122))

(assert (= (and b!1414122 res!640446) b!1414123))

(declare-fun m!1596871 () Bool)

(assert (=> d!404662 m!1596871))

(assert (=> d!404662 m!1595353))

(declare-fun m!1596873 () Bool)

(assert (=> b!1414122 m!1596873))

(declare-fun m!1596875 () Bool)

(assert (=> b!1414123 m!1596875))

(assert (=> b!1413418 d!404662))

(declare-fun d!404664 () Bool)

(assert (=> d!404664 (= (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))) (list!5675 (c!232208 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))

(declare-fun bs!339218 () Bool)

(assert (= bs!339218 d!404664))

(declare-fun m!1596877 () Bool)

(assert (=> bs!339218 m!1596877))

(assert (=> b!1413418 d!404664))

(declare-fun d!404666 () Bool)

(assert (=> d!404666 (= (printList!653 lt!473627 (++!3767 lt!473639 lt!473614)) (++!3768 (printList!653 lt!473627 lt!473639) (printList!653 lt!473627 lt!473614)))))

(declare-fun lt!474275 () Unit!20997)

(assert (=> d!404666 (= lt!474275 (choose!8726 lt!473627 lt!473639 lt!473614))))

(assert (=> d!404666 (= (lemmaPrintConcatSameAsConcatPrint!18 lt!473627 lt!473639 lt!473614) lt!474275)))

(declare-fun bs!339219 () Bool)

(assert (= bs!339219 d!404666))

(declare-fun m!1596879 () Bool)

(assert (=> bs!339219 m!1596879))

(declare-fun m!1596881 () Bool)

(assert (=> bs!339219 m!1596881))

(declare-fun m!1596883 () Bool)

(assert (=> bs!339219 m!1596883))

(declare-fun m!1596885 () Bool)

(assert (=> bs!339219 m!1596885))

(declare-fun m!1596887 () Bool)

(assert (=> bs!339219 m!1596887))

(assert (=> bs!339219 m!1596885))

(assert (=> bs!339219 m!1596881))

(declare-fun m!1596889 () Bool)

(assert (=> bs!339219 m!1596889))

(assert (=> bs!339219 m!1596883))

(assert (=> b!1413418 d!404666))

(declare-fun d!404668 () Bool)

(declare-fun e!902740 () Bool)

(assert (=> d!404668 e!902740))

(declare-fun res!640448 () Bool)

(assert (=> d!404668 (=> (not res!640448) (not e!902740))))

(assert (=> d!404668 (= res!640448 ((_ is Lexer!2193) lt!473597))))

(declare-fun lt!474276 () Unit!20997)

(assert (=> d!404668 (= lt!474276 (choose!8724 lt!473597 lt!473607 lt!473622 (rules!11032 acc!229)))))

(assert (=> d!404668 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404668 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!18 lt!473597 lt!473607 lt!473622 (rules!11032 acc!229)) lt!474276)))

(declare-fun b!1414129 () Bool)

(declare-fun res!640450 () Bool)

(assert (=> b!1414129 (=> (not res!640450) (not e!902740))))

(assert (=> b!1414129 (= res!640450 (rulesProduceEachTokenIndividuallyList!678 lt!473597 (rules!11032 acc!229) lt!473622))))

(declare-fun b!1414130 () Bool)

(assert (=> b!1414130 (= e!902740 (tokensListTwoByTwoPredicateSeparableList!199 lt!473597 (++!3767 lt!473607 lt!473622) (rules!11032 acc!229)))))

(declare-fun lt!474278 () Unit!20997)

(declare-fun lt!474277 () Unit!20997)

(assert (=> b!1414130 (= lt!474278 lt!474277)))

(assert (=> b!1414130 (rulesProduceEachTokenIndividuallyList!678 lt!473597 (rules!11032 acc!229) (++!3767 lt!473607 lt!473622))))

(assert (=> b!1414130 (= lt!474277 (lemmaRulesProduceEachTokenIndividuallyConcat!18 lt!473597 (rules!11032 acc!229) lt!473607 lt!473622))))

(declare-fun b!1414127 () Bool)

(declare-fun res!640449 () Bool)

(assert (=> b!1414127 (=> (not res!640449) (not e!902740))))

(assert (=> b!1414127 (= res!640449 (rulesInvariant!2065 lt!473597 (rules!11032 acc!229)))))

(declare-fun b!1414128 () Bool)

(declare-fun res!640447 () Bool)

(assert (=> b!1414128 (=> (not res!640447) (not e!902740))))

(assert (=> b!1414128 (= res!640447 (rulesProduceEachTokenIndividuallyList!678 lt!473597 (rules!11032 acc!229) lt!473607))))

(assert (= (and d!404668 res!640448) b!1414127))

(assert (= (and b!1414127 res!640449) b!1414128))

(assert (= (and b!1414128 res!640447) b!1414129))

(assert (= (and b!1414129 res!640450) b!1414130))

(declare-fun m!1596891 () Bool)

(assert (=> b!1414130 m!1596891))

(assert (=> b!1414130 m!1596891))

(declare-fun m!1596893 () Bool)

(assert (=> b!1414130 m!1596893))

(assert (=> b!1414130 m!1596891))

(declare-fun m!1596895 () Bool)

(assert (=> b!1414130 m!1596895))

(assert (=> b!1414130 m!1594947))

(declare-fun m!1596897 () Bool)

(assert (=> b!1414128 m!1596897))

(declare-fun m!1596899 () Bool)

(assert (=> b!1414129 m!1596899))

(declare-fun m!1596901 () Bool)

(assert (=> b!1414127 m!1596901))

(declare-fun m!1596903 () Bool)

(assert (=> d!404668 m!1596903))

(assert (=> d!404668 m!1595353))

(assert (=> b!1413418 d!404668))

(declare-fun d!404670 () Bool)

(declare-fun res!640452 () Bool)

(declare-fun e!902741 () Bool)

(assert (=> d!404670 (=> res!640452 e!902741)))

(assert (=> d!404670 (= res!640452 (or (not ((_ is Cons!14450) call!95057)) (not ((_ is Cons!14450) (t!123793 call!95057)))))))

(assert (=> d!404670 (= (tokensListTwoByTwoPredicateSeparableList!199 lt!473597 call!95057 (rules!11032 acc!229)) e!902741)))

(declare-fun b!1414131 () Bool)

(declare-fun e!902742 () Bool)

(assert (=> b!1414131 (= e!902741 e!902742)))

(declare-fun res!640451 () Bool)

(assert (=> b!1414131 (=> (not res!640451) (not e!902742))))

(assert (=> b!1414131 (= res!640451 (separableTokensPredicate!476 lt!473597 (h!19851 call!95057) (h!19851 (t!123793 call!95057)) (rules!11032 acc!229)))))

(declare-fun lt!474281 () Unit!20997)

(declare-fun Unit!21084 () Unit!20997)

(assert (=> b!1414131 (= lt!474281 Unit!21084)))

(assert (=> b!1414131 (> (size!11919 (charsOf!1470 (h!19851 (t!123793 call!95057)))) 0)))

(declare-fun lt!474284 () Unit!20997)

(declare-fun Unit!21085 () Unit!20997)

(assert (=> b!1414131 (= lt!474284 Unit!21085)))

(assert (=> b!1414131 (rulesProduceIndividualToken!1162 lt!473597 (rules!11032 acc!229) (h!19851 (t!123793 call!95057)))))

(declare-fun lt!474285 () Unit!20997)

(declare-fun Unit!21086 () Unit!20997)

(assert (=> b!1414131 (= lt!474285 Unit!21086)))

(assert (=> b!1414131 (rulesProduceIndividualToken!1162 lt!473597 (rules!11032 acc!229) (h!19851 call!95057))))

(declare-fun lt!474283 () Unit!20997)

(declare-fun lt!474282 () Unit!20997)

(assert (=> b!1414131 (= lt!474283 lt!474282)))

(assert (=> b!1414131 (rulesProduceIndividualToken!1162 lt!473597 (rules!11032 acc!229) (h!19851 (t!123793 call!95057)))))

(assert (=> b!1414131 (= lt!474282 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473597 (rules!11032 acc!229) call!95057 (h!19851 (t!123793 call!95057))))))

(declare-fun lt!474279 () Unit!20997)

(declare-fun lt!474280 () Unit!20997)

(assert (=> b!1414131 (= lt!474279 lt!474280)))

(assert (=> b!1414131 (rulesProduceIndividualToken!1162 lt!473597 (rules!11032 acc!229) (h!19851 call!95057))))

(assert (=> b!1414131 (= lt!474280 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473597 (rules!11032 acc!229) call!95057 (h!19851 call!95057)))))

(declare-fun b!1414132 () Bool)

(assert (=> b!1414132 (= e!902742 (tokensListTwoByTwoPredicateSeparableList!199 lt!473597 (Cons!14450 (h!19851 (t!123793 call!95057)) (t!123793 (t!123793 call!95057))) (rules!11032 acc!229)))))

(assert (= (and d!404670 (not res!640452)) b!1414131))

(assert (= (and b!1414131 res!640451) b!1414132))

(declare-fun m!1596905 () Bool)

(assert (=> b!1414131 m!1596905))

(declare-fun m!1596907 () Bool)

(assert (=> b!1414131 m!1596907))

(declare-fun m!1596909 () Bool)

(assert (=> b!1414131 m!1596909))

(declare-fun m!1596911 () Bool)

(assert (=> b!1414131 m!1596911))

(assert (=> b!1414131 m!1596873))

(declare-fun m!1596913 () Bool)

(assert (=> b!1414131 m!1596913))

(assert (=> b!1414131 m!1596907))

(declare-fun m!1596915 () Bool)

(assert (=> b!1414131 m!1596915))

(declare-fun m!1596917 () Bool)

(assert (=> b!1414132 m!1596917))

(assert (=> b!1413418 d!404670))

(declare-fun d!404672 () Bool)

(declare-fun e!902743 () Bool)

(assert (=> d!404672 e!902743))

(declare-fun res!640453 () Bool)

(assert (=> d!404672 (=> (not res!640453) (not e!902743))))

(assert (=> d!404672 (= res!640453 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 acc!229) (print!962 Lexer!2193 (seqFromList!1670 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))) (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))

(declare-fun lt!474292 () Unit!20997)

(declare-fun e!902744 () Unit!20997)

(assert (=> d!404672 (= lt!474292 e!902744)))

(declare-fun c!232369 () Bool)

(assert (=> d!404672 (= c!232369 (or ((_ is Nil!14450) (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) ((_ is Nil!14450) (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))))

(assert (=> d!404672 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404672 (= (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 acc!229) (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) lt!474292)))

(declare-fun b!1414133 () Bool)

(declare-fun Unit!21090 () Unit!20997)

(assert (=> b!1414133 (= e!902744 Unit!21090)))

(declare-fun b!1414134 () Bool)

(declare-fun Unit!21091 () Unit!20997)

(assert (=> b!1414134 (= e!902744 Unit!21091)))

(declare-fun lt!474290 () BalanceConc!9554)

(assert (=> b!1414134 (= lt!474290 (print!962 Lexer!2193 (seqFromList!1670 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))

(declare-fun lt!474303 () BalanceConc!9554)

(assert (=> b!1414134 (= lt!474303 (print!962 Lexer!2193 (seqFromList!1670 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))))

(declare-fun lt!474305 () tuple2!13984)

(assert (=> b!1414134 (= lt!474305 (lex!1008 Lexer!2193 (rules!11032 acc!229) lt!474303))))

(declare-fun lt!474287 () List!14515)

(assert (=> b!1414134 (= lt!474287 (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))))

(declare-fun lt!474308 () List!14515)

(assert (=> b!1414134 (= lt!474308 (list!5671 lt!474303))))

(declare-fun lt!474297 () Unit!20997)

(assert (=> b!1414134 (= lt!474297 (lemmaConcatTwoListThenFirstIsPrefix!734 lt!474287 lt!474308))))

(assert (=> b!1414134 (isPrefix!1167 lt!474287 (++!3768 lt!474287 lt!474308))))

(declare-fun lt!474299 () Unit!20997)

(assert (=> b!1414134 (= lt!474299 lt!474297)))

(declare-fun lt!474288 () Unit!20997)

(assert (=> b!1414134 (= lt!474288 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 acc!229) (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))

(declare-fun lt!474296 () Unit!20997)

(assert (=> b!1414134 (= lt!474296 (seqFromListBHdTlConstructive!63 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))) (t!123793 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))) (_1!7878 lt!474305)))))

(assert (=> b!1414134 (= (list!5672 (_1!7878 lt!474305)) (list!5672 (prepend!379 (seqFromList!1670 (t!123793 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))) (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))))

(declare-fun lt!474298 () Unit!20997)

(assert (=> b!1414134 (= lt!474298 lt!474296)))

(declare-fun lt!474310 () Option!2771)

(assert (=> b!1414134 (= lt!474310 (maxPrefix!1157 Lexer!2193 (rules!11032 acc!229) (list!5671 lt!474290)))))

(assert (=> b!1414134 (= (print!962 Lexer!2193 (singletonSeq!1159 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))) (printTailRec!635 Lexer!2193 (singletonSeq!1159 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))) 0 (BalanceConc!9555 Empty!4807)))))

(declare-fun lt!474286 () Unit!20997)

(declare-fun Unit!21092 () Unit!20997)

(assert (=> b!1414134 (= lt!474286 Unit!21092)))

(declare-fun lt!474291 () Unit!20997)

(assert (=> b!1414134 (= lt!474291 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!207 Lexer!2193 (rules!11032 acc!229) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))) (list!5671 lt!474303)))))

(assert (=> b!1414134 (= (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))) (originalCharacters!3373 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))

(declare-fun lt!474302 () Unit!20997)

(declare-fun Unit!21093 () Unit!20997)

(assert (=> b!1414134 (= lt!474302 Unit!21093)))

(assert (=> b!1414134 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))) 0))) (Cons!14449 (head!2698 (originalCharacters!3373 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))) Nil!14449))))

(declare-fun lt!474289 () Unit!20997)

(declare-fun Unit!21094 () Unit!20997)

(assert (=> b!1414134 (= lt!474289 Unit!21094)))

(assert (=> b!1414134 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))) 0))) (Cons!14449 (head!2698 (list!5671 lt!474303)) Nil!14449))))

(declare-fun lt!474293 () Unit!20997)

(declare-fun Unit!21095 () Unit!20997)

(assert (=> b!1414134 (= lt!474293 Unit!21095)))

(assert (=> b!1414134 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))) 0))) (Cons!14449 (head!2699 lt!474303) Nil!14449))))

(declare-fun lt!474300 () Unit!20997)

(declare-fun Unit!21096 () Unit!20997)

(assert (=> b!1414134 (= lt!474300 Unit!21096)))

(assert (=> b!1414134 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (rules!11032 acc!229) (originalCharacters!3373 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))))

(declare-fun lt!474304 () Unit!20997)

(declare-fun Unit!21097 () Unit!20997)

(assert (=> b!1414134 (= lt!474304 Unit!21097)))

(assert (=> b!1414134 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (rules!11032 acc!229) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))))

(declare-fun lt!474311 () Unit!20997)

(declare-fun Unit!21098 () Unit!20997)

(assert (=> b!1414134 (= lt!474311 Unit!21098)))

(declare-fun lt!474294 () Unit!20997)

(declare-fun Unit!21099 () Unit!20997)

(assert (=> b!1414134 (= lt!474294 Unit!21099)))

(assert (=> b!1414134 (= (_1!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (rules!11032 acc!229) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))) (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))

(declare-fun lt!474307 () Unit!20997)

(declare-fun Unit!21100 () Unit!20997)

(assert (=> b!1414134 (= lt!474307 Unit!21100)))

(assert (=> b!1414134 (isEmpty!8847 (_2!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (rules!11032 acc!229) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))))))

(declare-fun lt!474306 () Unit!20997)

(declare-fun Unit!21101 () Unit!20997)

(assert (=> b!1414134 (= lt!474306 Unit!21101)))

(assert (=> b!1414134 (matchR!1793 (regex!2511 (rule!4274 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))) (list!5671 (charsOf!1470 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))))

(declare-fun lt!474309 () Unit!20997)

(declare-fun Unit!21102 () Unit!20997)

(assert (=> b!1414134 (= lt!474309 Unit!21102)))

(assert (=> b!1414134 (= (rule!4274 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))) (rule!4274 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))

(declare-fun lt!474301 () Unit!20997)

(declare-fun Unit!21103 () Unit!20997)

(assert (=> b!1414134 (= lt!474301 Unit!21103)))

(declare-fun lt!474295 () Unit!20997)

(assert (=> b!1414134 (= lt!474295 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!5 Lexer!2193 (rules!11032 acc!229) (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) (rule!4274 (h!19851 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))) (list!5671 lt!474303)))))

(declare-fun b!1414135 () Bool)

(assert (=> b!1414135 (= e!902743 (isEmpty!8850 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 acc!229) (print!962 Lexer!2193 (seqFromList!1670 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))))))

(assert (= (and d!404672 c!232369) b!1414133))

(assert (= (and d!404672 (not c!232369)) b!1414134))

(assert (= (and d!404672 res!640453) b!1414135))

(assert (=> d!404672 m!1595353))

(declare-fun m!1596919 () Bool)

(assert (=> d!404672 m!1596919))

(declare-fun m!1596921 () Bool)

(assert (=> d!404672 m!1596921))

(declare-fun m!1596923 () Bool)

(assert (=> d!404672 m!1596923))

(assert (=> d!404672 m!1594935))

(declare-fun m!1596925 () Bool)

(assert (=> d!404672 m!1596925))

(assert (=> d!404672 m!1596925))

(assert (=> d!404672 m!1596919))

(declare-fun m!1596927 () Bool)

(assert (=> b!1414134 m!1596927))

(declare-fun m!1596929 () Bool)

(assert (=> b!1414134 m!1596929))

(declare-fun m!1596931 () Bool)

(assert (=> b!1414134 m!1596931))

(declare-fun m!1596933 () Bool)

(assert (=> b!1414134 m!1596933))

(declare-fun m!1596935 () Bool)

(assert (=> b!1414134 m!1596935))

(declare-fun m!1596937 () Bool)

(assert (=> b!1414134 m!1596937))

(declare-fun m!1596939 () Bool)

(assert (=> b!1414134 m!1596939))

(declare-fun m!1596941 () Bool)

(assert (=> b!1414134 m!1596941))

(declare-fun m!1596943 () Bool)

(assert (=> b!1414134 m!1596943))

(assert (=> b!1414134 m!1596929))

(declare-fun m!1596945 () Bool)

(assert (=> b!1414134 m!1596945))

(assert (=> b!1414134 m!1596927))

(declare-fun m!1596947 () Bool)

(assert (=> b!1414134 m!1596947))

(declare-fun m!1596949 () Bool)

(assert (=> b!1414134 m!1596949))

(declare-fun m!1596951 () Bool)

(assert (=> b!1414134 m!1596951))

(assert (=> b!1414134 m!1596927))

(declare-fun m!1596953 () Bool)

(assert (=> b!1414134 m!1596953))

(declare-fun m!1596955 () Bool)

(assert (=> b!1414134 m!1596955))

(declare-fun m!1596957 () Bool)

(assert (=> b!1414134 m!1596957))

(declare-fun m!1596959 () Bool)

(assert (=> b!1414134 m!1596959))

(assert (=> b!1414134 m!1596957))

(assert (=> b!1414134 m!1596929))

(assert (=> b!1414134 m!1596959))

(assert (=> b!1414134 m!1596935))

(declare-fun m!1596961 () Bool)

(assert (=> b!1414134 m!1596961))

(declare-fun m!1596963 () Bool)

(assert (=> b!1414134 m!1596963))

(declare-fun m!1596965 () Bool)

(assert (=> b!1414134 m!1596965))

(declare-fun m!1596967 () Bool)

(assert (=> b!1414134 m!1596967))

(assert (=> b!1414134 m!1596929))

(declare-fun m!1596969 () Bool)

(assert (=> b!1414134 m!1596969))

(declare-fun m!1596971 () Bool)

(assert (=> b!1414134 m!1596971))

(assert (=> b!1414134 m!1596965))

(assert (=> b!1414134 m!1596939))

(declare-fun m!1596973 () Bool)

(assert (=> b!1414134 m!1596973))

(declare-fun m!1596975 () Bool)

(assert (=> b!1414134 m!1596975))

(declare-fun m!1596977 () Bool)

(assert (=> b!1414134 m!1596977))

(declare-fun m!1596979 () Bool)

(assert (=> b!1414134 m!1596979))

(declare-fun m!1596981 () Bool)

(assert (=> b!1414134 m!1596981))

(declare-fun m!1596983 () Bool)

(assert (=> b!1414134 m!1596983))

(assert (=> b!1414134 m!1596977))

(declare-fun m!1596985 () Bool)

(assert (=> b!1414134 m!1596985))

(declare-fun m!1596987 () Bool)

(assert (=> b!1414134 m!1596987))

(assert (=> b!1414134 m!1596947))

(declare-fun m!1596989 () Bool)

(assert (=> b!1414134 m!1596989))

(assert (=> b!1414134 m!1596975))

(assert (=> b!1414134 m!1596927))

(assert (=> b!1414134 m!1596961))

(assert (=> b!1414134 m!1596949))

(declare-fun m!1596991 () Bool)

(assert (=> b!1414134 m!1596991))

(assert (=> b!1414134 m!1596971))

(assert (=> b!1414134 m!1594935))

(assert (=> b!1414134 m!1596925))

(assert (=> b!1414134 m!1596977))

(declare-fun m!1596993 () Bool)

(assert (=> b!1414134 m!1596993))

(assert (=> b!1414134 m!1596947))

(declare-fun m!1596995 () Bool)

(assert (=> b!1414134 m!1596995))

(assert (=> b!1414134 m!1596981))

(assert (=> b!1414134 m!1596925))

(assert (=> b!1414134 m!1596919))

(declare-fun m!1596997 () Bool)

(assert (=> b!1414134 m!1596997))

(assert (=> b!1414135 m!1594935))

(assert (=> b!1414135 m!1596925))

(assert (=> b!1414135 m!1596925))

(assert (=> b!1414135 m!1596919))

(assert (=> b!1414135 m!1596919))

(assert (=> b!1414135 m!1596921))

(declare-fun m!1596999 () Bool)

(assert (=> b!1414135 m!1596999))

(assert (=> b!1413418 d!404672))

(declare-fun d!404674 () Bool)

(declare-fun lt!474312 () BalanceConc!9554)

(assert (=> d!404674 (= (list!5671 lt!474312) (printList!653 Lexer!2193 (list!5672 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))

(assert (=> d!404674 (= lt!474312 (printTailRec!635 Lexer!2193 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))) 0 (BalanceConc!9555 Empty!4807)))))

(assert (=> d!404674 (= (print!962 Lexer!2193 (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))) lt!474312)))

(declare-fun bs!339220 () Bool)

(assert (= bs!339220 d!404674))

(declare-fun m!1597001 () Bool)

(assert (=> bs!339220 m!1597001))

(assert (=> bs!339220 m!1594941))

(assert (=> bs!339220 m!1594935))

(assert (=> bs!339220 m!1594935))

(declare-fun m!1597003 () Bool)

(assert (=> bs!339220 m!1597003))

(assert (=> bs!339220 m!1594941))

(declare-fun m!1597005 () Bool)

(assert (=> bs!339220 m!1597005))

(assert (=> b!1413418 d!404674))

(declare-fun d!404676 () Bool)

(assert (=> d!404676 (rulesProduceEachTokenIndividuallyList!678 lt!473597 (rules!11032 acc!229) (++!3767 lt!473607 lt!473622))))

(declare-fun lt!474313 () Unit!20997)

(assert (=> d!404676 (= lt!474313 (choose!8725 lt!473597 (rules!11032 acc!229) lt!473607 lt!473622))))

(assert (=> d!404676 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404676 (= (lemmaRulesProduceEachTokenIndividuallyConcat!18 lt!473597 (rules!11032 acc!229) lt!473607 lt!473622) lt!474313)))

(declare-fun bs!339221 () Bool)

(assert (= bs!339221 d!404676))

(assert (=> bs!339221 m!1596891))

(assert (=> bs!339221 m!1596891))

(assert (=> bs!339221 m!1596895))

(declare-fun m!1597007 () Bool)

(assert (=> bs!339221 m!1597007))

(assert (=> bs!339221 m!1595353))

(assert (=> b!1413418 d!404676))

(declare-fun d!404678 () Bool)

(declare-fun e!902745 () Bool)

(assert (=> d!404678 e!902745))

(declare-fun res!640454 () Bool)

(assert (=> d!404678 (=> (not res!640454) (not e!902745))))

(declare-fun lt!474314 () BalanceConc!9554)

(assert (=> d!404678 (= res!640454 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) lt!474314))) (list!5672 (tokens!1762 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))))

(assert (=> d!404678 (= lt!474314 (print!962 Lexer!2193 (tokens!1762 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))

(declare-fun lt!474315 () Unit!20997)

(assert (=> d!404678 (= lt!474315 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) (list!5672 (tokens!1762 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))))))))

(assert (=> d!404678 (= (print!961 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) lt!474314)))

(declare-fun b!1414136 () Bool)

(assert (=> b!1414136 (= e!902745 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (PrintableTokens!805 (rules!11032 acc!229) (++!3769 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) lt!474314)))))))

(assert (= (and d!404678 res!640454) b!1414136))

(declare-fun m!1597009 () Bool)

(assert (=> d!404678 m!1597009))

(declare-fun m!1597011 () Bool)

(assert (=> d!404678 m!1597011))

(declare-fun m!1597013 () Bool)

(assert (=> d!404678 m!1597013))

(assert (=> d!404678 m!1597009))

(declare-fun m!1597015 () Bool)

(assert (=> d!404678 m!1597015))

(declare-fun m!1597017 () Bool)

(assert (=> d!404678 m!1597017))

(assert (=> b!1414136 m!1597013))

(declare-fun m!1597019 () Bool)

(assert (=> b!1414136 m!1597019))

(assert (=> b!1414136 m!1597019))

(declare-fun m!1597021 () Bool)

(assert (=> b!1414136 m!1597021))

(assert (=> b!1413418 d!404678))

(declare-fun d!404680 () Bool)

(assert (=> d!404680 (= (inv!18923 (xs!7535 (c!232208 (tokens!1762 sep!3)))) (<= (size!11916 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 sep!3))))) 2147483647))))

(declare-fun bs!339222 () Bool)

(assert (= bs!339222 d!404680))

(declare-fun m!1597023 () Bool)

(assert (=> bs!339222 m!1597023))

(assert (=> b!1413579 d!404680))

(declare-fun d!404682 () Bool)

(declare-fun e!902747 () Bool)

(assert (=> d!404682 e!902747))

(declare-fun res!640455 () Bool)

(assert (=> d!404682 (=> (not res!640455) (not e!902747))))

(declare-fun lt!474316 () List!14515)

(assert (=> d!404682 (= res!640455 (= (content!2140 lt!474316) ((_ map or) (content!2140 (ite c!232257 call!95050 e!902315)) (content!2140 (ite c!232257 call!95039 call!95034)))))))

(declare-fun e!902746 () List!14515)

(assert (=> d!404682 (= lt!474316 e!902746)))

(declare-fun c!232370 () Bool)

(assert (=> d!404682 (= c!232370 ((_ is Nil!14449) (ite c!232257 call!95050 e!902315)))))

(assert (=> d!404682 (= (++!3768 (ite c!232257 call!95050 e!902315) (ite c!232257 call!95039 call!95034)) lt!474316)))

(declare-fun b!1414140 () Bool)

(assert (=> b!1414140 (= e!902747 (or (not (= (ite c!232257 call!95039 call!95034) Nil!14449)) (= lt!474316 (ite c!232257 call!95050 e!902315))))))

(declare-fun b!1414139 () Bool)

(declare-fun res!640456 () Bool)

(assert (=> b!1414139 (=> (not res!640456) (not e!902747))))

(assert (=> b!1414139 (= res!640456 (= (size!11915 lt!474316) (+ (size!11915 (ite c!232257 call!95050 e!902315)) (size!11915 (ite c!232257 call!95039 call!95034)))))))

(declare-fun b!1414138 () Bool)

(assert (=> b!1414138 (= e!902746 (Cons!14449 (h!19850 (ite c!232257 call!95050 e!902315)) (++!3768 (t!123792 (ite c!232257 call!95050 e!902315)) (ite c!232257 call!95039 call!95034))))))

(declare-fun b!1414137 () Bool)

(assert (=> b!1414137 (= e!902746 (ite c!232257 call!95039 call!95034))))

(assert (= (and d!404682 c!232370) b!1414137))

(assert (= (and d!404682 (not c!232370)) b!1414138))

(assert (= (and d!404682 res!640455) b!1414139))

(assert (= (and b!1414139 res!640456) b!1414140))

(declare-fun m!1597025 () Bool)

(assert (=> d!404682 m!1597025))

(declare-fun m!1597027 () Bool)

(assert (=> d!404682 m!1597027))

(declare-fun m!1597029 () Bool)

(assert (=> d!404682 m!1597029))

(declare-fun m!1597031 () Bool)

(assert (=> b!1414139 m!1597031))

(declare-fun m!1597033 () Bool)

(assert (=> b!1414139 m!1597033))

(declare-fun m!1597035 () Bool)

(assert (=> b!1414139 m!1597035))

(declare-fun m!1597037 () Bool)

(assert (=> b!1414138 m!1597037))

(assert (=> bm!95051 d!404682))

(assert (=> d!404332 d!404400))

(declare-fun d!404684 () Bool)

(declare-fun lt!474317 () BalanceConc!9554)

(assert (=> d!404684 (= (list!5671 lt!474317) (printList!653 Lexer!2193 (list!5672 (tokens!1762 sep!3))))))

(assert (=> d!404684 (= lt!474317 (printTailRec!635 Lexer!2193 (tokens!1762 sep!3) 0 (BalanceConc!9555 Empty!4807)))))

(assert (=> d!404684 (= (print!962 Lexer!2193 (tokens!1762 sep!3)) lt!474317)))

(declare-fun bs!339223 () Bool)

(assert (= bs!339223 d!404684))

(declare-fun m!1597039 () Bool)

(assert (=> bs!339223 m!1597039))

(assert (=> bs!339223 m!1595213))

(assert (=> bs!339223 m!1595213))

(declare-fun m!1597041 () Bool)

(assert (=> bs!339223 m!1597041))

(assert (=> bs!339223 m!1595247))

(assert (=> bm!95115 d!404684))

(declare-fun d!404686 () Bool)

(declare-fun res!640457 () Bool)

(declare-fun e!902748 () Bool)

(assert (=> d!404686 (=> res!640457 e!902748)))

(assert (=> d!404686 (= res!640457 ((_ is Nil!14452) (list!5673 (tail!2070 objs!24))))))

(assert (=> d!404686 (= (forall!3552 (list!5673 (tail!2070 objs!24)) lambda!62469) e!902748)))

(declare-fun b!1414141 () Bool)

(declare-fun e!902749 () Bool)

(assert (=> b!1414141 (= e!902748 e!902749)))

(declare-fun res!640458 () Bool)

(assert (=> b!1414141 (=> (not res!640458) (not e!902749))))

(assert (=> b!1414141 (= res!640458 (dynLambda!6700 lambda!62469 (h!19853 (list!5673 (tail!2070 objs!24)))))))

(declare-fun b!1414142 () Bool)

(assert (=> b!1414142 (= e!902749 (forall!3552 (t!123795 (list!5673 (tail!2070 objs!24))) lambda!62469))))

(assert (= (and d!404686 (not res!640457)) b!1414141))

(assert (= (and b!1414141 res!640458) b!1414142))

(declare-fun b_lambda!44581 () Bool)

(assert (=> (not b_lambda!44581) (not b!1414141)))

(declare-fun m!1597043 () Bool)

(assert (=> b!1414141 m!1597043))

(declare-fun m!1597045 () Bool)

(assert (=> b!1414142 m!1597045))

(assert (=> d!404310 d!404686))

(declare-fun d!404688 () Bool)

(assert (=> d!404688 (= (list!5673 (tail!2070 objs!24)) (list!5676 (c!232209 (tail!2070 objs!24))))))

(declare-fun bs!339224 () Bool)

(assert (= bs!339224 d!404688))

(declare-fun m!1597047 () Bool)

(assert (=> bs!339224 m!1597047))

(assert (=> d!404310 d!404688))

(declare-fun b!1414143 () Bool)

(declare-fun e!902751 () Bool)

(declare-fun e!902750 () Bool)

(assert (=> b!1414143 (= e!902751 e!902750)))

(declare-fun c!232371 () Bool)

(assert (=> b!1414143 (= c!232371 ((_ is Leaf!7261) (c!232209 (tail!2070 objs!24))))))

(declare-fun b!1414144 () Bool)

(assert (=> b!1414144 (= e!902750 (forall!3559 (xs!7536 (c!232209 (tail!2070 objs!24))) lambda!62469))))

(declare-fun b!1414146 () Bool)

(declare-fun e!902752 () Bool)

(assert (=> b!1414146 (= e!902752 (forall!3553 (right!12676 (c!232209 (tail!2070 objs!24))) lambda!62469))))

(declare-fun d!404690 () Bool)

(declare-fun lt!474319 () Bool)

(assert (=> d!404690 (= lt!474319 (forall!3552 (list!5676 (c!232209 (tail!2070 objs!24))) lambda!62469))))

(assert (=> d!404690 (= lt!474319 e!902751)))

(declare-fun res!640460 () Bool)

(assert (=> d!404690 (=> res!640460 e!902751)))

(assert (=> d!404690 (= res!640460 ((_ is Empty!4809) (c!232209 (tail!2070 objs!24))))))

(assert (=> d!404690 (= (forall!3553 (c!232209 (tail!2070 objs!24)) lambda!62469) lt!474319)))

(declare-fun b!1414145 () Bool)

(assert (=> b!1414145 (= e!902750 e!902752)))

(declare-fun lt!474318 () Unit!20997)

(assert (=> b!1414145 (= lt!474318 (lemmaForallConcat!130 (list!5676 (left!12346 (c!232209 (tail!2070 objs!24)))) (list!5676 (right!12676 (c!232209 (tail!2070 objs!24)))) lambda!62469))))

(declare-fun res!640459 () Bool)

(assert (=> b!1414145 (= res!640459 (forall!3553 (left!12346 (c!232209 (tail!2070 objs!24))) lambda!62469))))

(assert (=> b!1414145 (=> (not res!640459) (not e!902752))))

(assert (= (and d!404690 (not res!640460)) b!1414143))

(assert (= (and b!1414143 c!232371) b!1414144))

(assert (= (and b!1414143 (not c!232371)) b!1414145))

(assert (= (and b!1414145 res!640459) b!1414146))

(declare-fun m!1597049 () Bool)

(assert (=> b!1414144 m!1597049))

(declare-fun m!1597051 () Bool)

(assert (=> b!1414146 m!1597051))

(assert (=> d!404690 m!1597047))

(assert (=> d!404690 m!1597047))

(declare-fun m!1597053 () Bool)

(assert (=> d!404690 m!1597053))

(declare-fun m!1597055 () Bool)

(assert (=> b!1414145 m!1597055))

(declare-fun m!1597057 () Bool)

(assert (=> b!1414145 m!1597057))

(assert (=> b!1414145 m!1597055))

(assert (=> b!1414145 m!1597057))

(declare-fun m!1597059 () Bool)

(assert (=> b!1414145 m!1597059))

(declare-fun m!1597061 () Bool)

(assert (=> b!1414145 m!1597061))

(assert (=> d!404310 d!404690))

(declare-fun d!404692 () Bool)

(assert (=> d!404692 (rulesProduceIndividualToken!1162 lt!473648 (rules!11032 acc!229) lt!473633)))

(declare-fun lt!474328 () Unit!20997)

(declare-fun choose!8727 (LexerInterface!2195 List!14517 List!14516 Token!4684) Unit!20997)

(assert (=> d!404692 (= lt!474328 (choose!8727 lt!473648 (rules!11032 acc!229) lt!473630 lt!473633))))

(assert (=> d!404692 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404692 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473648 (rules!11032 acc!229) lt!473630 lt!473633) lt!474328)))

(declare-fun bs!339227 () Bool)

(assert (= bs!339227 d!404692))

(assert (=> bs!339227 m!1594955))

(declare-fun m!1597085 () Bool)

(assert (=> bs!339227 m!1597085))

(assert (=> bs!339227 m!1595353))

(assert (=> b!1413414 d!404692))

(declare-fun d!404700 () Bool)

(declare-fun lt!474331 () Token!4684)

(assert (=> d!404700 (= lt!474331 (head!2697 (list!5672 (tokens!1762 (v!21893 lt!473262)))))))

(declare-fun head!2702 (Conc!4808) Token!4684)

(assert (=> d!404700 (= lt!474331 (head!2702 (c!232208 (tokens!1762 (v!21893 lt!473262)))))))

(assert (=> d!404700 (not (isEmpty!8840 (tokens!1762 (v!21893 lt!473262))))))

(assert (=> d!404700 (= (head!2694 (tokens!1762 (v!21893 lt!473262))) lt!474331)))

(declare-fun bs!339228 () Bool)

(assert (= bs!339228 d!404700))

(assert (=> bs!339228 m!1594971))

(assert (=> bs!339228 m!1594971))

(declare-fun m!1597087 () Bool)

(assert (=> bs!339228 m!1597087))

(declare-fun m!1597089 () Bool)

(assert (=> bs!339228 m!1597089))

(assert (=> bs!339228 m!1594989))

(assert (=> b!1413414 d!404700))

(declare-fun d!404702 () Bool)

(assert (=> d!404702 (rulesProduceIndividualToken!1162 lt!473632 (rules!11032 acc!229) lt!473595)))

(declare-fun lt!474332 () Unit!20997)

(assert (=> d!404702 (= lt!474332 (choose!8727 lt!473632 (rules!11032 acc!229) lt!473616 lt!473595))))

(assert (=> d!404702 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404702 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473632 (rules!11032 acc!229) lt!473616 lt!473595) lt!474332)))

(declare-fun bs!339229 () Bool)

(assert (= bs!339229 d!404702))

(assert (=> bs!339229 m!1594963))

(declare-fun m!1597091 () Bool)

(assert (=> bs!339229 m!1597091))

(assert (=> bs!339229 m!1595353))

(assert (=> b!1413414 d!404702))

(declare-fun d!404704 () Bool)

(declare-fun lt!474385 () Bool)

(declare-fun e!902783 () Bool)

(assert (=> d!404704 (= lt!474385 e!902783)))

(declare-fun res!640515 () Bool)

(assert (=> d!404704 (=> (not res!640515) (not e!902783))))

(assert (=> d!404704 (= res!640515 (= (list!5672 (_1!7878 (lex!1008 lt!473648 (rules!11032 acc!229) (print!962 lt!473648 (singletonSeq!1159 lt!473633))))) (list!5672 (singletonSeq!1159 lt!473633))))))

(declare-fun e!902782 () Bool)

(assert (=> d!404704 (= lt!474385 e!902782)))

(declare-fun res!640517 () Bool)

(assert (=> d!404704 (=> (not res!640517) (not e!902782))))

(declare-fun lt!474384 () tuple2!13984)

(assert (=> d!404704 (= res!640517 (= (size!11918 (_1!7878 lt!474384)) 1))))

(assert (=> d!404704 (= lt!474384 (lex!1008 lt!473648 (rules!11032 acc!229) (print!962 lt!473648 (singletonSeq!1159 lt!473633))))))

(assert (=> d!404704 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404704 (= (rulesProduceIndividualToken!1162 lt!473648 (rules!11032 acc!229) lt!473633) lt!474385)))

(declare-fun b!1414208 () Bool)

(declare-fun res!640516 () Bool)

(assert (=> b!1414208 (=> (not res!640516) (not e!902782))))

(assert (=> b!1414208 (= res!640516 (= (apply!3702 (_1!7878 lt!474384) 0) lt!473633))))

(declare-fun b!1414209 () Bool)

(assert (=> b!1414209 (= e!902782 (isEmpty!8850 (_2!7878 lt!474384)))))

(declare-fun b!1414210 () Bool)

(assert (=> b!1414210 (= e!902783 (isEmpty!8850 (_2!7878 (lex!1008 lt!473648 (rules!11032 acc!229) (print!962 lt!473648 (singletonSeq!1159 lt!473633))))))))

(assert (= (and d!404704 res!640517) b!1414208))

(assert (= (and b!1414208 res!640516) b!1414209))

(assert (= (and d!404704 res!640515) b!1414210))

(assert (=> d!404704 m!1595353))

(declare-fun m!1597175 () Bool)

(assert (=> d!404704 m!1597175))

(declare-fun m!1597177 () Bool)

(assert (=> d!404704 m!1597177))

(declare-fun m!1597179 () Bool)

(assert (=> d!404704 m!1597179))

(declare-fun m!1597181 () Bool)

(assert (=> d!404704 m!1597181))

(assert (=> d!404704 m!1597177))

(declare-fun m!1597183 () Bool)

(assert (=> d!404704 m!1597183))

(assert (=> d!404704 m!1597177))

(assert (=> d!404704 m!1597179))

(declare-fun m!1597185 () Bool)

(assert (=> d!404704 m!1597185))

(declare-fun m!1597187 () Bool)

(assert (=> b!1414208 m!1597187))

(declare-fun m!1597189 () Bool)

(assert (=> b!1414209 m!1597189))

(assert (=> b!1414210 m!1597177))

(assert (=> b!1414210 m!1597177))

(assert (=> b!1414210 m!1597179))

(assert (=> b!1414210 m!1597179))

(assert (=> b!1414210 m!1597181))

(declare-fun m!1597191 () Bool)

(assert (=> b!1414210 m!1597191))

(assert (=> b!1413414 d!404704))

(declare-fun d!404724 () Bool)

(declare-fun prefixMatchZipperSequence!311 (Regex!3825 BalanceConc!9554) Bool)

(declare-fun rulesRegex!371 (LexerInterface!2195 List!14517) Regex!3825)

(assert (=> d!404724 (= (separableTokensPredicate!476 Lexer!2193 (last!67 (tokens!1762 acc!229)) (head!2694 (tokens!1762 (v!21893 lt!473262))) (rules!11032 acc!229)) (not (prefixMatchZipperSequence!311 (rulesRegex!371 Lexer!2193 (rules!11032 acc!229)) (++!3770 (charsOf!1470 (last!67 (tokens!1762 acc!229))) (singletonSeq!1160 (apply!3704 (charsOf!1470 (head!2694 (tokens!1762 (v!21893 lt!473262)))) 0))))))))

(declare-fun bs!339236 () Bool)

(assert (= bs!339236 d!404724))

(assert (=> bs!339236 m!1594957))

(declare-fun m!1597447 () Bool)

(assert (=> bs!339236 m!1597447))

(assert (=> bs!339236 m!1597447))

(declare-fun m!1597455 () Bool)

(assert (=> bs!339236 m!1597455))

(declare-fun m!1597461 () Bool)

(assert (=> bs!339236 m!1597461))

(declare-fun m!1597465 () Bool)

(assert (=> bs!339236 m!1597465))

(assert (=> bs!339236 m!1594959))

(declare-fun m!1597469 () Bool)

(assert (=> bs!339236 m!1597469))

(assert (=> bs!339236 m!1597469))

(declare-fun m!1597473 () Bool)

(assert (=> bs!339236 m!1597473))

(assert (=> bs!339236 m!1597473))

(assert (=> bs!339236 m!1597455))

(assert (=> bs!339236 m!1597465))

(assert (=> bs!339236 m!1597461))

(declare-fun m!1597479 () Bool)

(assert (=> bs!339236 m!1597479))

(assert (=> b!1413414 d!404724))

(declare-fun d!404746 () Bool)

(declare-fun lt!474450 () Token!4684)

(declare-fun last!68 (List!14516) Token!4684)

(assert (=> d!404746 (= lt!474450 (last!68 (list!5672 (tokens!1762 acc!229))))))

(declare-fun last!69 (Conc!4808) Token!4684)

(assert (=> d!404746 (= lt!474450 (last!69 (c!232208 (tokens!1762 acc!229))))))

(assert (=> d!404746 (not (isEmpty!8840 (tokens!1762 acc!229)))))

(assert (=> d!404746 (= (last!67 (tokens!1762 acc!229)) lt!474450)))

(declare-fun bs!339238 () Bool)

(assert (= bs!339238 d!404746))

(assert (=> bs!339238 m!1594969))

(assert (=> bs!339238 m!1594969))

(declare-fun m!1597557 () Bool)

(assert (=> bs!339238 m!1597557))

(declare-fun m!1597559 () Bool)

(assert (=> bs!339238 m!1597559))

(assert (=> bs!339238 m!1594985))

(assert (=> b!1413414 d!404746))

(declare-fun d!404766 () Bool)

(declare-fun lt!474454 () Bool)

(declare-fun e!902811 () Bool)

(assert (=> d!404766 (= lt!474454 e!902811)))

(declare-fun res!640535 () Bool)

(assert (=> d!404766 (=> (not res!640535) (not e!902811))))

(assert (=> d!404766 (= res!640535 (= (list!5672 (_1!7878 (lex!1008 lt!473632 (rules!11032 acc!229) (print!962 lt!473632 (singletonSeq!1159 lt!473595))))) (list!5672 (singletonSeq!1159 lt!473595))))))

(declare-fun e!902810 () Bool)

(assert (=> d!404766 (= lt!474454 e!902810)))

(declare-fun res!640537 () Bool)

(assert (=> d!404766 (=> (not res!640537) (not e!902810))))

(declare-fun lt!474453 () tuple2!13984)

(assert (=> d!404766 (= res!640537 (= (size!11918 (_1!7878 lt!474453)) 1))))

(assert (=> d!404766 (= lt!474453 (lex!1008 lt!473632 (rules!11032 acc!229) (print!962 lt!473632 (singletonSeq!1159 lt!473595))))))

(assert (=> d!404766 (not (isEmpty!8846 (rules!11032 acc!229)))))

(assert (=> d!404766 (= (rulesProduceIndividualToken!1162 lt!473632 (rules!11032 acc!229) lt!473595) lt!474454)))

(declare-fun b!1414251 () Bool)

(declare-fun res!640536 () Bool)

(assert (=> b!1414251 (=> (not res!640536) (not e!902810))))

(assert (=> b!1414251 (= res!640536 (= (apply!3702 (_1!7878 lt!474453) 0) lt!473595))))

(declare-fun b!1414252 () Bool)

(assert (=> b!1414252 (= e!902810 (isEmpty!8850 (_2!7878 lt!474453)))))

(declare-fun b!1414253 () Bool)

(assert (=> b!1414253 (= e!902811 (isEmpty!8850 (_2!7878 (lex!1008 lt!473632 (rules!11032 acc!229) (print!962 lt!473632 (singletonSeq!1159 lt!473595))))))))

(assert (= (and d!404766 res!640537) b!1414251))

(assert (= (and b!1414251 res!640536) b!1414252))

(assert (= (and d!404766 res!640535) b!1414253))

(assert (=> d!404766 m!1595353))

(declare-fun m!1597573 () Bool)

(assert (=> d!404766 m!1597573))

(declare-fun m!1597575 () Bool)

(assert (=> d!404766 m!1597575))

(declare-fun m!1597577 () Bool)

(assert (=> d!404766 m!1597577))

(declare-fun m!1597579 () Bool)

(assert (=> d!404766 m!1597579))

(assert (=> d!404766 m!1597575))

(declare-fun m!1597581 () Bool)

(assert (=> d!404766 m!1597581))

(assert (=> d!404766 m!1597575))

(assert (=> d!404766 m!1597577))

(declare-fun m!1597587 () Bool)

(assert (=> d!404766 m!1597587))

(declare-fun m!1597591 () Bool)

(assert (=> b!1414251 m!1597591))

(declare-fun m!1597593 () Bool)

(assert (=> b!1414252 m!1597593))

(assert (=> b!1414253 m!1597575))

(assert (=> b!1414253 m!1597575))

(assert (=> b!1414253 m!1597577))

(assert (=> b!1414253 m!1597577))

(assert (=> b!1414253 m!1597579))

(declare-fun m!1597599 () Bool)

(assert (=> b!1414253 m!1597599))

(assert (=> b!1413414 d!404766))

(declare-fun d!404772 () Bool)

(declare-fun lt!474488 () Int)

(assert (=> d!404772 (>= lt!474488 0)))

(declare-fun e!902820 () Int)

(assert (=> d!404772 (= lt!474488 e!902820)))

(declare-fun c!232391 () Bool)

(assert (=> d!404772 (= c!232391 ((_ is Nil!14452) (list!5673 objs!24)))))

(assert (=> d!404772 (= (size!11913 (list!5673 objs!24)) lt!474488)))

(declare-fun b!1414267 () Bool)

(assert (=> b!1414267 (= e!902820 0)))

(declare-fun b!1414268 () Bool)

(assert (=> b!1414268 (= e!902820 (+ 1 (size!11913 (t!123795 (list!5673 objs!24)))))))

(assert (= (and d!404772 c!232391) b!1414267))

(assert (= (and d!404772 (not c!232391)) b!1414268))

(declare-fun m!1597631 () Bool)

(assert (=> b!1414268 m!1597631))

(assert (=> d!404314 d!404772))

(assert (=> d!404314 d!404620))

(declare-fun d!404784 () Bool)

(declare-fun lt!474491 () Int)

(assert (=> d!404784 (= lt!474491 (size!11913 (list!5676 (c!232209 objs!24))))))

(assert (=> d!404784 (= lt!474491 (ite ((_ is Empty!4809) (c!232209 objs!24)) 0 (ite ((_ is Leaf!7261) (c!232209 objs!24)) (csize!9849 (c!232209 objs!24)) (csize!9848 (c!232209 objs!24)))))))

(assert (=> d!404784 (= (size!11914 (c!232209 objs!24)) lt!474491)))

(declare-fun bs!339242 () Bool)

(assert (= bs!339242 d!404784))

(assert (=> bs!339242 m!1596647))

(assert (=> bs!339242 m!1596647))

(declare-fun m!1597643 () Bool)

(assert (=> bs!339242 m!1597643))

(assert (=> d!404314 d!404784))

(assert (=> b!1413460 d!404340))

(assert (=> b!1413297 d!404286))

(declare-fun d!404786 () Bool)

(assert (=> d!404786 (= (isEmpty!8846 (rules!11032 acc!229)) ((_ is Nil!14451) (rules!11032 acc!229)))))

(assert (=> d!404322 d!404786))

(declare-fun d!404788 () Bool)

(assert (=> d!404788 (= (inv!18923 (xs!7535 (c!232208 (tokens!1762 acc!229)))) (<= (size!11916 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 acc!229))))) 2147483647))))

(declare-fun bs!339243 () Bool)

(assert (= bs!339243 d!404788))

(declare-fun m!1597659 () Bool)

(assert (=> bs!339243 m!1597659))

(assert (=> b!1413596 d!404788))

(declare-fun d!404790 () Bool)

(declare-fun c!232392 () Bool)

(assert (=> d!404790 (= c!232392 ((_ is Cons!14450) (ite c!232275 call!95135 (ite c!232277 lt!473780 lt!473770))))))

(declare-fun e!902821 () List!14515)

(assert (=> d!404790 (= (printList!653 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473758)) (ite c!232275 call!95135 (ite c!232277 lt!473780 lt!473770))) e!902821)))

(declare-fun b!1414269 () Bool)

(assert (=> b!1414269 (= e!902821 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95135 (ite c!232277 lt!473780 lt!473770))))) (printList!653 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473758)) (t!123793 (ite c!232275 call!95135 (ite c!232277 lt!473780 lt!473770))))))))

(declare-fun b!1414270 () Bool)

(assert (=> b!1414270 (= e!902821 Nil!14449)))

(assert (= (and d!404790 c!232392) b!1414269))

(assert (= (and d!404790 (not c!232392)) b!1414270))

(declare-fun m!1597679 () Bool)

(assert (=> b!1414269 m!1597679))

(assert (=> b!1414269 m!1597679))

(declare-fun m!1597685 () Bool)

(assert (=> b!1414269 m!1597685))

(declare-fun m!1597689 () Bool)

(assert (=> b!1414269 m!1597689))

(assert (=> b!1414269 m!1597685))

(assert (=> b!1414269 m!1597689))

(declare-fun m!1597701 () Bool)

(assert (=> b!1414269 m!1597701))

(assert (=> bm!95104 d!404790))

(declare-fun d!404792 () Bool)

(declare-fun e!902822 () Bool)

(assert (=> d!404792 e!902822))

(declare-fun res!640543 () Bool)

(assert (=> d!404792 (=> (not res!640543) (not e!902822))))

(assert (=> d!404792 (= res!640543 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (print!962 Lexer!2193 (seqFromList!1670 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))) (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))

(declare-fun lt!474498 () Unit!20997)

(declare-fun e!902823 () Unit!20997)

(assert (=> d!404792 (= lt!474498 e!902823)))

(declare-fun c!232393 () Bool)

(assert (=> d!404792 (= c!232393 (or ((_ is Nil!14450) (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))) ((_ is Nil!14450) (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))))

(assert (=> d!404792 (not (isEmpty!8846 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24)))))))

(assert (=> d!404792 (= (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))) lt!474498)))

(declare-fun b!1414271 () Bool)

(declare-fun Unit!21104 () Unit!20997)

(assert (=> b!1414271 (= e!902823 Unit!21104)))

(declare-fun b!1414272 () Bool)

(declare-fun Unit!21105 () Unit!20997)

(assert (=> b!1414272 (= e!902823 Unit!21105)))

(declare-fun lt!474496 () BalanceConc!9554)

(assert (=> b!1414272 (= lt!474496 (print!962 Lexer!2193 (seqFromList!1670 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))))

(declare-fun lt!474509 () BalanceConc!9554)

(assert (=> b!1414272 (= lt!474509 (print!962 Lexer!2193 (seqFromList!1670 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))))

(declare-fun lt!474511 () tuple2!13984)

(assert (=> b!1414272 (= lt!474511 (lex!1008 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) lt!474509))))

(declare-fun lt!474493 () List!14515)

(assert (=> b!1414272 (= lt!474493 (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))))

(declare-fun lt!474514 () List!14515)

(assert (=> b!1414272 (= lt!474514 (list!5671 lt!474509))))

(declare-fun lt!474503 () Unit!20997)

(assert (=> b!1414272 (= lt!474503 (lemmaConcatTwoListThenFirstIsPrefix!734 lt!474493 lt!474514))))

(assert (=> b!1414272 (isPrefix!1167 lt!474493 (++!3768 lt!474493 lt!474514))))

(declare-fun lt!474505 () Unit!20997)

(assert (=> b!1414272 (= lt!474505 lt!474503)))

(declare-fun lt!474494 () Unit!20997)

(assert (=> b!1414272 (= lt!474494 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))))

(declare-fun lt!474502 () Unit!20997)

(assert (=> b!1414272 (= lt!474502 (seqFromListBHdTlConstructive!63 (h!19851 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))) (t!123793 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))) (_1!7878 lt!474511)))))

(assert (=> b!1414272 (= (list!5672 (_1!7878 lt!474511)) (list!5672 (prepend!379 (seqFromList!1670 (t!123793 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))) (h!19851 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))))))

(declare-fun lt!474504 () Unit!20997)

(assert (=> b!1414272 (= lt!474504 lt!474502)))

(declare-fun lt!474516 () Option!2771)

(assert (=> b!1414272 (= lt!474516 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (list!5671 lt!474496)))))

(assert (=> b!1414272 (= (print!962 Lexer!2193 (singletonSeq!1159 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))) (printTailRec!635 Lexer!2193 (singletonSeq!1159 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))) 0 (BalanceConc!9555 Empty!4807)))))

(declare-fun lt!474492 () Unit!20997)

(declare-fun Unit!21106 () Unit!20997)

(assert (=> b!1414272 (= lt!474492 Unit!21106)))

(declare-fun lt!474497 () Unit!20997)

(assert (=> b!1414272 (= lt!474497 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!207 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))) (list!5671 lt!474509)))))

(assert (=> b!1414272 (= (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))) (originalCharacters!3373 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))))

(declare-fun lt!474508 () Unit!20997)

(declare-fun Unit!21107 () Unit!20997)

(assert (=> b!1414272 (= lt!474508 Unit!21107)))

(assert (=> b!1414272 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))) 0))) (Cons!14449 (head!2698 (originalCharacters!3373 (h!19851 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))) Nil!14449))))

(declare-fun lt!474495 () Unit!20997)

(declare-fun Unit!21108 () Unit!20997)

(assert (=> b!1414272 (= lt!474495 Unit!21108)))

(assert (=> b!1414272 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))) 0))) (Cons!14449 (head!2698 (list!5671 lt!474509)) Nil!14449))))

(declare-fun lt!474499 () Unit!20997)

(declare-fun Unit!21109 () Unit!20997)

(assert (=> b!1414272 (= lt!474499 Unit!21109)))

(assert (=> b!1414272 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))) 0))) (Cons!14449 (head!2699 lt!474509) Nil!14449))))

(declare-fun lt!474506 () Unit!20997)

(declare-fun Unit!21110 () Unit!20997)

(assert (=> b!1414272 (= lt!474506 Unit!21110)))

(assert (=> b!1414272 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (originalCharacters!3373 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))))

(declare-fun lt!474510 () Unit!20997)

(declare-fun Unit!21111 () Unit!20997)

(assert (=> b!1414272 (= lt!474510 Unit!21111)))

(assert (=> b!1414272 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))))))

(declare-fun lt!474517 () Unit!20997)

(declare-fun Unit!21112 () Unit!20997)

(assert (=> b!1414272 (= lt!474517 Unit!21112)))

(declare-fun lt!474500 () Unit!20997)

(declare-fun Unit!21113 () Unit!20997)

(assert (=> b!1414272 (= lt!474500 Unit!21113)))

(assert (=> b!1414272 (= (_1!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))))) (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))

(declare-fun lt!474513 () Unit!20997)

(declare-fun Unit!21114 () Unit!20997)

(assert (=> b!1414272 (= lt!474513 Unit!21114)))

(assert (=> b!1414272 (isEmpty!8847 (_2!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))))))))

(declare-fun lt!474512 () Unit!20997)

(declare-fun Unit!21115 () Unit!20997)

(assert (=> b!1414272 (= lt!474512 Unit!21115)))

(assert (=> b!1414272 (matchR!1793 (regex!2511 (rule!4274 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))) (list!5671 (charsOf!1470 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))))

(declare-fun lt!474515 () Unit!20997)

(declare-fun Unit!21116 () Unit!20997)

(assert (=> b!1414272 (= lt!474515 Unit!21116)))

(assert (=> b!1414272 (= (rule!4274 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))) (rule!4274 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))))))

(declare-fun lt!474507 () Unit!20997)

(declare-fun Unit!21117 () Unit!20997)

(assert (=> b!1414272 (= lt!474507 Unit!21117)))

(declare-fun lt!474501 () Unit!20997)

(assert (=> b!1414272 (= lt!474501 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!5 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))) (rule!4274 (h!19851 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127)))) (list!5671 lt!474509)))))

(declare-fun b!1414273 () Bool)

(assert (=> b!1414273 (= e!902822 (isEmpty!8850 (_2!7878 (lex!1008 Lexer!2193 (ite c!232275 (rules!11032 sep!3) (rules!11032 (head!2690 objs!24))) (print!962 Lexer!2193 (seqFromList!1670 (ite c!232275 call!95105 (ite c!232277 call!95103 call!95127))))))))))

(assert (= (and d!404792 c!232393) b!1414271))

(assert (= (and d!404792 (not c!232393)) b!1414272))

(assert (= (and d!404792 res!640543) b!1414273))

(declare-fun m!1597737 () Bool)

(assert (=> d!404792 m!1597737))

(declare-fun m!1597739 () Bool)

(assert (=> d!404792 m!1597739))

(declare-fun m!1597741 () Bool)

(assert (=> d!404792 m!1597741))

(declare-fun m!1597743 () Bool)

(assert (=> d!404792 m!1597743))

(declare-fun m!1597745 () Bool)

(assert (=> d!404792 m!1597745))

(assert (=> d!404792 m!1597745))

(assert (=> d!404792 m!1597739))

(declare-fun m!1597747 () Bool)

(assert (=> b!1414272 m!1597747))

(declare-fun m!1597749 () Bool)

(assert (=> b!1414272 m!1597749))

(declare-fun m!1597751 () Bool)

(assert (=> b!1414272 m!1597751))

(declare-fun m!1597753 () Bool)

(assert (=> b!1414272 m!1597753))

(declare-fun m!1597755 () Bool)

(assert (=> b!1414272 m!1597755))

(declare-fun m!1597757 () Bool)

(assert (=> b!1414272 m!1597757))

(declare-fun m!1597759 () Bool)

(assert (=> b!1414272 m!1597759))

(declare-fun m!1597761 () Bool)

(assert (=> b!1414272 m!1597761))

(declare-fun m!1597763 () Bool)

(assert (=> b!1414272 m!1597763))

(assert (=> b!1414272 m!1597749))

(declare-fun m!1597765 () Bool)

(assert (=> b!1414272 m!1597765))

(assert (=> b!1414272 m!1597747))

(declare-fun m!1597767 () Bool)

(assert (=> b!1414272 m!1597767))

(declare-fun m!1597769 () Bool)

(assert (=> b!1414272 m!1597769))

(declare-fun m!1597771 () Bool)

(assert (=> b!1414272 m!1597771))

(assert (=> b!1414272 m!1597747))

(declare-fun m!1597773 () Bool)

(assert (=> b!1414272 m!1597773))

(declare-fun m!1597775 () Bool)

(assert (=> b!1414272 m!1597775))

(declare-fun m!1597777 () Bool)

(assert (=> b!1414272 m!1597777))

(declare-fun m!1597779 () Bool)

(assert (=> b!1414272 m!1597779))

(assert (=> b!1414272 m!1597777))

(assert (=> b!1414272 m!1597749))

(assert (=> b!1414272 m!1597779))

(assert (=> b!1414272 m!1597755))

(declare-fun m!1597781 () Bool)

(assert (=> b!1414272 m!1597781))

(declare-fun m!1597783 () Bool)

(assert (=> b!1414272 m!1597783))

(declare-fun m!1597785 () Bool)

(assert (=> b!1414272 m!1597785))

(declare-fun m!1597787 () Bool)

(assert (=> b!1414272 m!1597787))

(assert (=> b!1414272 m!1597749))

(declare-fun m!1597789 () Bool)

(assert (=> b!1414272 m!1597789))

(declare-fun m!1597791 () Bool)

(assert (=> b!1414272 m!1597791))

(assert (=> b!1414272 m!1597785))

(assert (=> b!1414272 m!1597759))

(declare-fun m!1597793 () Bool)

(assert (=> b!1414272 m!1597793))

(declare-fun m!1597795 () Bool)

(assert (=> b!1414272 m!1597795))

(declare-fun m!1597797 () Bool)

(assert (=> b!1414272 m!1597797))

(declare-fun m!1597799 () Bool)

(assert (=> b!1414272 m!1597799))

(declare-fun m!1597801 () Bool)

(assert (=> b!1414272 m!1597801))

(declare-fun m!1597803 () Bool)

(assert (=> b!1414272 m!1597803))

(assert (=> b!1414272 m!1597797))

(declare-fun m!1597805 () Bool)

(assert (=> b!1414272 m!1597805))

(declare-fun m!1597807 () Bool)

(assert (=> b!1414272 m!1597807))

(assert (=> b!1414272 m!1597767))

(declare-fun m!1597809 () Bool)

(assert (=> b!1414272 m!1597809))

(assert (=> b!1414272 m!1597795))

(assert (=> b!1414272 m!1597747))

(assert (=> b!1414272 m!1597781))

(assert (=> b!1414272 m!1597769))

(declare-fun m!1597811 () Bool)

(assert (=> b!1414272 m!1597811))

(assert (=> b!1414272 m!1597791))

(assert (=> b!1414272 m!1597745))

(assert (=> b!1414272 m!1597797))

(declare-fun m!1597813 () Bool)

(assert (=> b!1414272 m!1597813))

(assert (=> b!1414272 m!1597767))

(declare-fun m!1597815 () Bool)

(assert (=> b!1414272 m!1597815))

(assert (=> b!1414272 m!1597801))

(assert (=> b!1414272 m!1597745))

(assert (=> b!1414272 m!1597739))

(declare-fun m!1597817 () Bool)

(assert (=> b!1414272 m!1597817))

(assert (=> b!1414273 m!1597745))

(assert (=> b!1414273 m!1597745))

(assert (=> b!1414273 m!1597739))

(assert (=> b!1414273 m!1597739))

(assert (=> b!1414273 m!1597741))

(declare-fun m!1597819 () Bool)

(assert (=> b!1414273 m!1597819))

(assert (=> bm!95135 d!404792))

(declare-fun c!232395 () Bool)

(declare-fun d!404798 () Bool)

(assert (=> d!404798 (= c!232395 ((_ is Cons!14450) (ite c!232275 Nil!14450 (ite c!232277 lt!473768 lt!473769))))))

(declare-fun e!902825 () List!14515)

(assert (=> d!404798 (= (printList!653 (ite c!232275 Lexer!2193 (ite c!232277 lt!473729 lt!473774)) (ite c!232275 Nil!14450 (ite c!232277 lt!473768 lt!473769))) e!902825)))

(declare-fun b!1414276 () Bool)

(assert (=> b!1414276 (= e!902825 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232275 Nil!14450 (ite c!232277 lt!473768 lt!473769))))) (printList!653 (ite c!232275 Lexer!2193 (ite c!232277 lt!473729 lt!473774)) (t!123793 (ite c!232275 Nil!14450 (ite c!232277 lt!473768 lt!473769))))))))

(declare-fun b!1414277 () Bool)

(assert (=> b!1414277 (= e!902825 Nil!14449)))

(assert (= (and d!404798 c!232395) b!1414276))

(assert (= (and d!404798 (not c!232395)) b!1414277))

(declare-fun m!1597821 () Bool)

(assert (=> b!1414276 m!1597821))

(assert (=> b!1414276 m!1597821))

(declare-fun m!1597823 () Bool)

(assert (=> b!1414276 m!1597823))

(declare-fun m!1597825 () Bool)

(assert (=> b!1414276 m!1597825))

(assert (=> b!1414276 m!1597823))

(assert (=> b!1414276 m!1597825))

(declare-fun m!1597827 () Bool)

(assert (=> b!1414276 m!1597827))

(assert (=> bm!95123 d!404798))

(declare-fun d!404800 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!92 (LexerInterface!2195 BalanceConc!9556 Int List!14517) Bool)

(assert (=> d!404800 (= (separableTokens!177 Lexer!2193 (tokens!1762 sep!3) (rules!11032 sep!3)) (tokensListTwoByTwoPredicateSeparable!92 Lexer!2193 (tokens!1762 sep!3) 0 (rules!11032 sep!3)))))

(declare-fun bs!339245 () Bool)

(assert (= bs!339245 d!404800))

(declare-fun m!1597831 () Bool)

(assert (=> bs!339245 m!1597831))

(assert (=> b!1413546 d!404800))

(declare-fun d!404804 () Bool)

(declare-fun e!902826 () Bool)

(assert (=> d!404804 e!902826))

(declare-fun res!640544 () Bool)

(assert (=> d!404804 (=> (not res!640544) (not e!902826))))

(declare-fun lt!474521 () BalanceConc!9554)

(assert (=> d!404804 (= res!640544 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (ite c!232275 (head!2690 objs!24) sep!3)) lt!474521))) (list!5672 (tokens!1762 (ite c!232275 (head!2690 objs!24) sep!3)))))))

(assert (=> d!404804 (= lt!474521 (print!962 Lexer!2193 (tokens!1762 (ite c!232275 (head!2690 objs!24) sep!3))))))

(declare-fun lt!474522 () Unit!20997)

(assert (=> d!404804 (= lt!474522 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (ite c!232275 (head!2690 objs!24) sep!3)) (list!5672 (tokens!1762 (ite c!232275 (head!2690 objs!24) sep!3)))))))

(assert (=> d!404804 (= (print!961 (ite c!232275 (head!2690 objs!24) sep!3)) lt!474521)))

(declare-fun b!1414278 () Bool)

(assert (=> b!1414278 (= e!902826 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (ite c!232275 (head!2690 objs!24) sep!3)) lt!474521)))))))

(assert (= (and d!404804 res!640544) b!1414278))

(declare-fun m!1597833 () Bool)

(assert (=> d!404804 m!1597833))

(declare-fun m!1597835 () Bool)

(assert (=> d!404804 m!1597835))

(declare-fun m!1597837 () Bool)

(assert (=> d!404804 m!1597837))

(assert (=> d!404804 m!1597833))

(declare-fun m!1597839 () Bool)

(assert (=> d!404804 m!1597839))

(declare-fun m!1597841 () Bool)

(assert (=> d!404804 m!1597841))

(assert (=> b!1414278 m!1597837))

(declare-fun m!1597843 () Bool)

(assert (=> b!1414278 m!1597843))

(assert (=> b!1414278 m!1597843))

(declare-fun m!1597845 () Bool)

(assert (=> b!1414278 m!1597845))

(assert (=> bm!95107 d!404804))

(declare-fun d!404806 () Bool)

(declare-fun e!902827 () Bool)

(assert (=> d!404806 e!902827))

(declare-fun res!640545 () Bool)

(assert (=> d!404806 (=> (not res!640545) (not e!902827))))

(assert (=> d!404806 (= res!640545 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (print!962 Lexer!2193 (seqFromList!1670 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))) (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))

(declare-fun lt!474529 () Unit!20997)

(declare-fun e!902828 () Unit!20997)

(assert (=> d!404806 (= lt!474529 e!902828)))

(declare-fun c!232396 () Bool)

(assert (=> d!404806 (= c!232396 (or ((_ is Nil!14450) (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))) ((_ is Nil!14450) (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))))

(assert (=> d!404806 (not (isEmpty!8846 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262)))))))

(assert (=> d!404806 (= (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))) lt!474529)))

(declare-fun b!1414279 () Bool)

(declare-fun Unit!21118 () Unit!20997)

(assert (=> b!1414279 (= e!902828 Unit!21118)))

(declare-fun b!1414280 () Bool)

(declare-fun Unit!21119 () Unit!20997)

(assert (=> b!1414280 (= e!902828 Unit!21119)))

(declare-fun lt!474527 () BalanceConc!9554)

(assert (=> b!1414280 (= lt!474527 (print!962 Lexer!2193 (seqFromList!1670 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))))

(declare-fun lt!474540 () BalanceConc!9554)

(assert (=> b!1414280 (= lt!474540 (print!962 Lexer!2193 (seqFromList!1670 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))))

(declare-fun lt!474542 () tuple2!13984)

(assert (=> b!1414280 (= lt!474542 (lex!1008 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) lt!474540))))

(declare-fun lt!474524 () List!14515)

(assert (=> b!1414280 (= lt!474524 (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))))

(declare-fun lt!474545 () List!14515)

(assert (=> b!1414280 (= lt!474545 (list!5671 lt!474540))))

(declare-fun lt!474534 () Unit!20997)

(assert (=> b!1414280 (= lt!474534 (lemmaConcatTwoListThenFirstIsPrefix!734 lt!474524 lt!474545))))

(assert (=> b!1414280 (isPrefix!1167 lt!474524 (++!3768 lt!474524 lt!474545))))

(declare-fun lt!474536 () Unit!20997)

(assert (=> b!1414280 (= lt!474536 lt!474534)))

(declare-fun lt!474525 () Unit!20997)

(assert (=> b!1414280 (= lt!474525 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))))

(declare-fun lt!474533 () Unit!20997)

(assert (=> b!1414280 (= lt!474533 (seqFromListBHdTlConstructive!63 (h!19851 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))) (t!123793 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))) (_1!7878 lt!474542)))))

(assert (=> b!1414280 (= (list!5672 (_1!7878 lt!474542)) (list!5672 (prepend!379 (seqFromList!1670 (t!123793 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))) (h!19851 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))))))

(declare-fun lt!474535 () Unit!20997)

(assert (=> b!1414280 (= lt!474535 lt!474533)))

(declare-fun lt!474547 () Option!2771)

(assert (=> b!1414280 (= lt!474547 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (list!5671 lt!474527)))))

(assert (=> b!1414280 (= (print!962 Lexer!2193 (singletonSeq!1159 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))) (printTailRec!635 Lexer!2193 (singletonSeq!1159 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))) 0 (BalanceConc!9555 Empty!4807)))))

(declare-fun lt!474523 () Unit!20997)

(declare-fun Unit!21120 () Unit!20997)

(assert (=> b!1414280 (= lt!474523 Unit!21120)))

(declare-fun lt!474528 () Unit!20997)

(assert (=> b!1414280 (= lt!474528 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!207 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))) (list!5671 lt!474540)))))

(assert (=> b!1414280 (= (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))) (originalCharacters!3373 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))))

(declare-fun lt!474539 () Unit!20997)

(declare-fun Unit!21121 () Unit!20997)

(assert (=> b!1414280 (= lt!474539 Unit!21121)))

(assert (=> b!1414280 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))) 0))) (Cons!14449 (head!2698 (originalCharacters!3373 (h!19851 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))) Nil!14449))))

(declare-fun lt!474526 () Unit!20997)

(declare-fun Unit!21122 () Unit!20997)

(assert (=> b!1414280 (= lt!474526 Unit!21122)))

(assert (=> b!1414280 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))) 0))) (Cons!14449 (head!2698 (list!5671 lt!474540)) Nil!14449))))

(declare-fun lt!474530 () Unit!20997)

(declare-fun Unit!21123 () Unit!20997)

(assert (=> b!1414280 (= lt!474530 Unit!21123)))

(assert (=> b!1414280 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))) 0))) (Cons!14449 (head!2699 lt!474540) Nil!14449))))

(declare-fun lt!474537 () Unit!20997)

(declare-fun Unit!21124 () Unit!20997)

(assert (=> b!1414280 (= lt!474537 Unit!21124)))

(assert (=> b!1414280 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (originalCharacters!3373 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))))

(declare-fun lt!474541 () Unit!20997)

(declare-fun Unit!21125 () Unit!20997)

(assert (=> b!1414280 (= lt!474541 Unit!21125)))

(assert (=> b!1414280 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))))))

(declare-fun lt!474548 () Unit!20997)

(declare-fun Unit!21126 () Unit!20997)

(assert (=> b!1414280 (= lt!474548 Unit!21126)))

(declare-fun lt!474531 () Unit!20997)

(declare-fun Unit!21127 () Unit!20997)

(assert (=> b!1414280 (= lt!474531 Unit!21127)))

(assert (=> b!1414280 (= (_1!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))))) (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))

(declare-fun lt!474544 () Unit!20997)

(declare-fun Unit!21128 () Unit!20997)

(assert (=> b!1414280 (= lt!474544 Unit!21128)))

(assert (=> b!1414280 (isEmpty!8847 (_2!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))))))))

(declare-fun lt!474543 () Unit!20997)

(declare-fun Unit!21129 () Unit!20997)

(assert (=> b!1414280 (= lt!474543 Unit!21129)))

(assert (=> b!1414280 (matchR!1793 (regex!2511 (rule!4274 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))))

(declare-fun lt!474546 () Unit!20997)

(declare-fun Unit!21130 () Unit!20997)

(assert (=> b!1414280 (= lt!474546 Unit!21130)))

(assert (=> b!1414280 (= (rule!4274 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))) (rule!4274 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))))))

(declare-fun lt!474538 () Unit!20997)

(declare-fun Unit!21131 () Unit!20997)

(assert (=> b!1414280 (= lt!474538 Unit!21131)))

(declare-fun lt!474532 () Unit!20997)

(assert (=> b!1414280 (= lt!474532 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!5 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))) (rule!4274 (h!19851 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025)))) (list!5671 lt!474540)))))

(declare-fun b!1414281 () Bool)

(assert (=> b!1414281 (= e!902827 (isEmpty!8850 (_2!7878 (lex!1008 Lexer!2193 (ite c!232257 (rules!11032 acc!229) (rules!11032 (v!21893 lt!473262))) (print!962 Lexer!2193 (seqFromList!1670 (ite c!232257 call!95048 (ite c!232259 call!95049 call!95025))))))))))

(assert (= (and d!404806 c!232396) b!1414279))

(assert (= (and d!404806 (not c!232396)) b!1414280))

(assert (= (and d!404806 res!640545) b!1414281))

(declare-fun m!1597861 () Bool)

(assert (=> d!404806 m!1597861))

(declare-fun m!1597863 () Bool)

(assert (=> d!404806 m!1597863))

(declare-fun m!1597865 () Bool)

(assert (=> d!404806 m!1597865))

(declare-fun m!1597867 () Bool)

(assert (=> d!404806 m!1597867))

(declare-fun m!1597869 () Bool)

(assert (=> d!404806 m!1597869))

(assert (=> d!404806 m!1597869))

(assert (=> d!404806 m!1597863))

(declare-fun m!1597871 () Bool)

(assert (=> b!1414280 m!1597871))

(declare-fun m!1597873 () Bool)

(assert (=> b!1414280 m!1597873))

(declare-fun m!1597875 () Bool)

(assert (=> b!1414280 m!1597875))

(declare-fun m!1597877 () Bool)

(assert (=> b!1414280 m!1597877))

(declare-fun m!1597879 () Bool)

(assert (=> b!1414280 m!1597879))

(declare-fun m!1597881 () Bool)

(assert (=> b!1414280 m!1597881))

(declare-fun m!1597883 () Bool)

(assert (=> b!1414280 m!1597883))

(declare-fun m!1597885 () Bool)

(assert (=> b!1414280 m!1597885))

(declare-fun m!1597887 () Bool)

(assert (=> b!1414280 m!1597887))

(assert (=> b!1414280 m!1597873))

(declare-fun m!1597889 () Bool)

(assert (=> b!1414280 m!1597889))

(assert (=> b!1414280 m!1597871))

(declare-fun m!1597891 () Bool)

(assert (=> b!1414280 m!1597891))

(declare-fun m!1597893 () Bool)

(assert (=> b!1414280 m!1597893))

(declare-fun m!1597895 () Bool)

(assert (=> b!1414280 m!1597895))

(assert (=> b!1414280 m!1597871))

(declare-fun m!1597897 () Bool)

(assert (=> b!1414280 m!1597897))

(declare-fun m!1597899 () Bool)

(assert (=> b!1414280 m!1597899))

(declare-fun m!1597901 () Bool)

(assert (=> b!1414280 m!1597901))

(declare-fun m!1597903 () Bool)

(assert (=> b!1414280 m!1597903))

(assert (=> b!1414280 m!1597901))

(assert (=> b!1414280 m!1597873))

(assert (=> b!1414280 m!1597903))

(assert (=> b!1414280 m!1597879))

(declare-fun m!1597905 () Bool)

(assert (=> b!1414280 m!1597905))

(declare-fun m!1597907 () Bool)

(assert (=> b!1414280 m!1597907))

(declare-fun m!1597909 () Bool)

(assert (=> b!1414280 m!1597909))

(declare-fun m!1597911 () Bool)

(assert (=> b!1414280 m!1597911))

(assert (=> b!1414280 m!1597873))

(declare-fun m!1597913 () Bool)

(assert (=> b!1414280 m!1597913))

(declare-fun m!1597915 () Bool)

(assert (=> b!1414280 m!1597915))

(assert (=> b!1414280 m!1597909))

(assert (=> b!1414280 m!1597883))

(declare-fun m!1597917 () Bool)

(assert (=> b!1414280 m!1597917))

(declare-fun m!1597919 () Bool)

(assert (=> b!1414280 m!1597919))

(declare-fun m!1597921 () Bool)

(assert (=> b!1414280 m!1597921))

(declare-fun m!1597923 () Bool)

(assert (=> b!1414280 m!1597923))

(declare-fun m!1597925 () Bool)

(assert (=> b!1414280 m!1597925))

(declare-fun m!1597927 () Bool)

(assert (=> b!1414280 m!1597927))

(assert (=> b!1414280 m!1597921))

(declare-fun m!1597929 () Bool)

(assert (=> b!1414280 m!1597929))

(declare-fun m!1597931 () Bool)

(assert (=> b!1414280 m!1597931))

(assert (=> b!1414280 m!1597891))

(declare-fun m!1597933 () Bool)

(assert (=> b!1414280 m!1597933))

(assert (=> b!1414280 m!1597919))

(assert (=> b!1414280 m!1597871))

(assert (=> b!1414280 m!1597905))

(assert (=> b!1414280 m!1597893))

(declare-fun m!1597935 () Bool)

(assert (=> b!1414280 m!1597935))

(assert (=> b!1414280 m!1597915))

(assert (=> b!1414280 m!1597869))

(assert (=> b!1414280 m!1597921))

(declare-fun m!1597937 () Bool)

(assert (=> b!1414280 m!1597937))

(assert (=> b!1414280 m!1597891))

(declare-fun m!1597939 () Bool)

(assert (=> b!1414280 m!1597939))

(assert (=> b!1414280 m!1597925))

(assert (=> b!1414280 m!1597869))

(assert (=> b!1414280 m!1597863))

(declare-fun m!1597941 () Bool)

(assert (=> b!1414280 m!1597941))

(assert (=> b!1414281 m!1597869))

(assert (=> b!1414281 m!1597869))

(assert (=> b!1414281 m!1597863))

(assert (=> b!1414281 m!1597863))

(assert (=> b!1414281 m!1597865))

(declare-fun m!1597943 () Bool)

(assert (=> b!1414281 m!1597943))

(assert (=> bm!95030 d!404806))

(declare-fun d!404810 () Bool)

(assert (=> d!404810 (= (list!5672 (ite c!232257 (tokens!1762 acc!229) (ite c!232259 (tokens!1762 (v!21893 lt!473262)) (tokens!1762 acc!229)))) (list!5675 (c!232208 (ite c!232257 (tokens!1762 acc!229) (ite c!232259 (tokens!1762 (v!21893 lt!473262)) (tokens!1762 acc!229))))))))

(declare-fun bs!339247 () Bool)

(assert (= bs!339247 d!404810))

(declare-fun m!1597945 () Bool)

(assert (=> bs!339247 m!1597945))

(assert (=> bm!95044 d!404810))

(declare-fun d!404812 () Bool)

(declare-fun e!902829 () Bool)

(assert (=> d!404812 e!902829))

(declare-fun res!640546 () Bool)

(assert (=> d!404812 (=> (not res!640546) (not e!902829))))

(declare-fun lt!474549 () BalanceConc!9554)

(assert (=> d!404812 (= res!640546 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (ite c!232275 sep!3 (head!2690 objs!24))) lt!474549))) (list!5672 (tokens!1762 (ite c!232275 sep!3 (head!2690 objs!24))))))))

(assert (=> d!404812 (= lt!474549 (print!962 Lexer!2193 (tokens!1762 (ite c!232275 sep!3 (head!2690 objs!24)))))))

(declare-fun lt!474550 () Unit!20997)

(assert (=> d!404812 (= lt!474550 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (ite c!232275 sep!3 (head!2690 objs!24))) (list!5672 (tokens!1762 (ite c!232275 sep!3 (head!2690 objs!24))))))))

(assert (=> d!404812 (= (print!961 (ite c!232275 sep!3 (head!2690 objs!24))) lt!474549)))

(declare-fun b!1414282 () Bool)

(assert (=> b!1414282 (= e!902829 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (ite c!232275 sep!3 (head!2690 objs!24))) lt!474549)))))))

(assert (= (and d!404812 res!640546) b!1414282))

(declare-fun m!1597947 () Bool)

(assert (=> d!404812 m!1597947))

(declare-fun m!1597949 () Bool)

(assert (=> d!404812 m!1597949))

(declare-fun m!1597951 () Bool)

(assert (=> d!404812 m!1597951))

(assert (=> d!404812 m!1597947))

(declare-fun m!1597953 () Bool)

(assert (=> d!404812 m!1597953))

(declare-fun m!1597955 () Bool)

(assert (=> d!404812 m!1597955))

(assert (=> b!1414282 m!1597951))

(declare-fun m!1597957 () Bool)

(assert (=> b!1414282 m!1597957))

(assert (=> b!1414282 m!1597957))

(declare-fun m!1597959 () Bool)

(assert (=> b!1414282 m!1597959))

(assert (=> bm!95111 d!404812))

(declare-fun d!404814 () Bool)

(assert (=> d!404814 (= (list!5672 (ite c!232257 (tokens!1762 (v!21893 lt!473262)) (ite c!232259 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262))))) (list!5675 (c!232208 (ite c!232257 (tokens!1762 (v!21893 lt!473262)) (ite c!232259 (tokens!1762 acc!229) (tokens!1762 (v!21893 lt!473262)))))))))

(declare-fun bs!339248 () Bool)

(assert (= bs!339248 d!404814))

(declare-fun m!1597961 () Bool)

(assert (=> bs!339248 m!1597961))

(assert (=> bm!95036 d!404814))

(declare-fun d!404816 () Bool)

(declare-fun c!232397 () Bool)

(assert (=> d!404816 (= c!232397 ((_ is Node!4808) (left!12345 (c!232208 (tokens!1762 sep!3)))))))

(declare-fun e!902830 () Bool)

(assert (=> d!404816 (= (inv!18909 (left!12345 (c!232208 (tokens!1762 sep!3)))) e!902830)))

(declare-fun b!1414283 () Bool)

(assert (=> b!1414283 (= e!902830 (inv!18913 (left!12345 (c!232208 (tokens!1762 sep!3)))))))

(declare-fun b!1414284 () Bool)

(declare-fun e!902831 () Bool)

(assert (=> b!1414284 (= e!902830 e!902831)))

(declare-fun res!640547 () Bool)

(assert (=> b!1414284 (= res!640547 (not ((_ is Leaf!7260) (left!12345 (c!232208 (tokens!1762 sep!3))))))))

(assert (=> b!1414284 (=> res!640547 e!902831)))

(declare-fun b!1414285 () Bool)

(assert (=> b!1414285 (= e!902831 (inv!18914 (left!12345 (c!232208 (tokens!1762 sep!3)))))))

(assert (= (and d!404816 c!232397) b!1414283))

(assert (= (and d!404816 (not c!232397)) b!1414284))

(assert (= (and b!1414284 (not res!640547)) b!1414285))

(declare-fun m!1597963 () Bool)

(assert (=> b!1414283 m!1597963))

(declare-fun m!1597965 () Bool)

(assert (=> b!1414285 m!1597965))

(assert (=> b!1413578 d!404816))

(declare-fun d!404818 () Bool)

(declare-fun c!232398 () Bool)

(assert (=> d!404818 (= c!232398 ((_ is Node!4808) (right!12675 (c!232208 (tokens!1762 sep!3)))))))

(declare-fun e!902832 () Bool)

(assert (=> d!404818 (= (inv!18909 (right!12675 (c!232208 (tokens!1762 sep!3)))) e!902832)))

(declare-fun b!1414286 () Bool)

(assert (=> b!1414286 (= e!902832 (inv!18913 (right!12675 (c!232208 (tokens!1762 sep!3)))))))

(declare-fun b!1414287 () Bool)

(declare-fun e!902833 () Bool)

(assert (=> b!1414287 (= e!902832 e!902833)))

(declare-fun res!640548 () Bool)

(assert (=> b!1414287 (= res!640548 (not ((_ is Leaf!7260) (right!12675 (c!232208 (tokens!1762 sep!3))))))))

(assert (=> b!1414287 (=> res!640548 e!902833)))

(declare-fun b!1414288 () Bool)

(assert (=> b!1414288 (= e!902833 (inv!18914 (right!12675 (c!232208 (tokens!1762 sep!3)))))))

(assert (= (and d!404818 c!232398) b!1414286))

(assert (= (and d!404818 (not c!232398)) b!1414287))

(assert (= (and b!1414287 (not res!640548)) b!1414288))

(declare-fun m!1597967 () Bool)

(assert (=> b!1414286 m!1597967))

(declare-fun m!1597969 () Bool)

(assert (=> b!1414288 m!1597969))

(assert (=> b!1413578 d!404818))

(declare-fun d!404820 () Bool)

(assert (=> d!404820 (= (printList!653 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473643)) (++!3767 (ite c!232257 lt!473589 (ite c!232259 lt!473649 lt!473593)) (ite c!232257 lt!473617 (ite c!232259 lt!473637 lt!473638)))) (++!3768 (printList!653 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473643)) (ite c!232257 lt!473589 (ite c!232259 lt!473649 lt!473593))) (printList!653 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473643)) (ite c!232257 lt!473617 (ite c!232259 lt!473637 lt!473638)))))))

(declare-fun lt!474551 () Unit!20997)

(assert (=> d!404820 (= lt!474551 (choose!8726 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473643)) (ite c!232257 lt!473589 (ite c!232259 lt!473649 lt!473593)) (ite c!232257 lt!473617 (ite c!232259 lt!473637 lt!473638))))))

(assert (=> d!404820 (= (lemmaPrintConcatSameAsConcatPrint!18 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473643)) (ite c!232257 lt!473589 (ite c!232259 lt!473649 lt!473593)) (ite c!232257 lt!473617 (ite c!232259 lt!473637 lt!473638))) lt!474551)))

(declare-fun bs!339249 () Bool)

(assert (= bs!339249 d!404820))

(declare-fun m!1597971 () Bool)

(assert (=> bs!339249 m!1597971))

(declare-fun m!1597973 () Bool)

(assert (=> bs!339249 m!1597973))

(declare-fun m!1597975 () Bool)

(assert (=> bs!339249 m!1597975))

(declare-fun m!1597977 () Bool)

(assert (=> bs!339249 m!1597977))

(declare-fun m!1597979 () Bool)

(assert (=> bs!339249 m!1597979))

(assert (=> bs!339249 m!1597977))

(assert (=> bs!339249 m!1597973))

(declare-fun m!1597981 () Bool)

(assert (=> bs!339249 m!1597981))

(assert (=> bs!339249 m!1597975))

(assert (=> bm!95032 d!404820))

(declare-fun d!404822 () Bool)

(declare-fun e!902835 () Bool)

(assert (=> d!404822 e!902835))

(declare-fun res!640549 () Bool)

(assert (=> d!404822 (=> (not res!640549) (not e!902835))))

(declare-fun lt!474552 () List!14515)

(assert (=> d!404822 (= res!640549 (= (content!2140 lt!474552) ((_ map or) (content!2140 (ite c!232257 call!95055 (ite c!232259 call!95043 call!95031))) (content!2140 (ite c!232257 call!95035 call!95045)))))))

(declare-fun e!902834 () List!14515)

(assert (=> d!404822 (= lt!474552 e!902834)))

(declare-fun c!232399 () Bool)

(assert (=> d!404822 (= c!232399 ((_ is Nil!14449) (ite c!232257 call!95055 (ite c!232259 call!95043 call!95031))))))

(assert (=> d!404822 (= (++!3768 (ite c!232257 call!95055 (ite c!232259 call!95043 call!95031)) (ite c!232257 call!95035 call!95045)) lt!474552)))

(declare-fun b!1414292 () Bool)

(assert (=> b!1414292 (= e!902835 (or (not (= (ite c!232257 call!95035 call!95045) Nil!14449)) (= lt!474552 (ite c!232257 call!95055 (ite c!232259 call!95043 call!95031)))))))

(declare-fun b!1414291 () Bool)

(declare-fun res!640550 () Bool)

(assert (=> b!1414291 (=> (not res!640550) (not e!902835))))

(assert (=> b!1414291 (= res!640550 (= (size!11915 lt!474552) (+ (size!11915 (ite c!232257 call!95055 (ite c!232259 call!95043 call!95031))) (size!11915 (ite c!232257 call!95035 call!95045)))))))

(declare-fun b!1414290 () Bool)

(assert (=> b!1414290 (= e!902834 (Cons!14449 (h!19850 (ite c!232257 call!95055 (ite c!232259 call!95043 call!95031))) (++!3768 (t!123792 (ite c!232257 call!95055 (ite c!232259 call!95043 call!95031))) (ite c!232257 call!95035 call!95045))))))

(declare-fun b!1414289 () Bool)

(assert (=> b!1414289 (= e!902834 (ite c!232257 call!95035 call!95045))))

(assert (= (and d!404822 c!232399) b!1414289))

(assert (= (and d!404822 (not c!232399)) b!1414290))

(assert (= (and d!404822 res!640549) b!1414291))

(assert (= (and b!1414291 res!640550) b!1414292))

(declare-fun m!1597983 () Bool)

(assert (=> d!404822 m!1597983))

(declare-fun m!1597985 () Bool)

(assert (=> d!404822 m!1597985))

(declare-fun m!1597987 () Bool)

(assert (=> d!404822 m!1597987))

(declare-fun m!1597989 () Bool)

(assert (=> b!1414291 m!1597989))

(declare-fun m!1597991 () Bool)

(assert (=> b!1414291 m!1597991))

(declare-fun m!1597993 () Bool)

(assert (=> b!1414291 m!1597993))

(declare-fun m!1597995 () Bool)

(assert (=> b!1414290 m!1597995))

(assert (=> bm!95039 d!404822))

(declare-fun b!1414293 () Bool)

(declare-fun res!640554 () Bool)

(declare-fun e!902837 () Bool)

(assert (=> b!1414293 (=> (not res!640554) (not e!902837))))

(assert (=> b!1414293 (= res!640554 (isBalanced!1423 (left!12346 (tail!2073 (c!232209 objs!24)))))))

(declare-fun b!1414294 () Bool)

(assert (=> b!1414294 (= e!902837 (not (isEmpty!8845 (right!12676 (tail!2073 (c!232209 objs!24))))))))

(declare-fun d!404824 () Bool)

(declare-fun res!640556 () Bool)

(declare-fun e!902836 () Bool)

(assert (=> d!404824 (=> res!640556 e!902836)))

(assert (=> d!404824 (= res!640556 (not ((_ is Node!4809) (tail!2073 (c!232209 objs!24)))))))

(assert (=> d!404824 (= (isBalanced!1423 (tail!2073 (c!232209 objs!24))) e!902836)))

(declare-fun b!1414295 () Bool)

(declare-fun res!640551 () Bool)

(assert (=> b!1414295 (=> (not res!640551) (not e!902837))))

(assert (=> b!1414295 (= res!640551 (isBalanced!1423 (right!12676 (tail!2073 (c!232209 objs!24)))))))

(declare-fun b!1414296 () Bool)

(declare-fun res!640552 () Bool)

(assert (=> b!1414296 (=> (not res!640552) (not e!902837))))

(assert (=> b!1414296 (= res!640552 (not (isEmpty!8845 (left!12346 (tail!2073 (c!232209 objs!24))))))))

(declare-fun b!1414297 () Bool)

(assert (=> b!1414297 (= e!902836 e!902837)))

(declare-fun res!640553 () Bool)

(assert (=> b!1414297 (=> (not res!640553) (not e!902837))))

(assert (=> b!1414297 (= res!640553 (<= (- 1) (- (height!697 (left!12346 (tail!2073 (c!232209 objs!24)))) (height!697 (right!12676 (tail!2073 (c!232209 objs!24)))))))))

(declare-fun b!1414298 () Bool)

(declare-fun res!640555 () Bool)

(assert (=> b!1414298 (=> (not res!640555) (not e!902837))))

(assert (=> b!1414298 (= res!640555 (<= (- (height!697 (left!12346 (tail!2073 (c!232209 objs!24)))) (height!697 (right!12676 (tail!2073 (c!232209 objs!24))))) 1))))

(assert (= (and d!404824 (not res!640556)) b!1414297))

(assert (= (and b!1414297 res!640553) b!1414298))

(assert (= (and b!1414298 res!640555) b!1414293))

(assert (= (and b!1414293 res!640554) b!1414295))

(assert (= (and b!1414295 res!640551) b!1414296))

(assert (= (and b!1414296 res!640552) b!1414294))

(declare-fun m!1597997 () Bool)

(assert (=> b!1414294 m!1597997))

(declare-fun m!1597999 () Bool)

(assert (=> b!1414298 m!1597999))

(declare-fun m!1598001 () Bool)

(assert (=> b!1414298 m!1598001))

(declare-fun m!1598003 () Bool)

(assert (=> b!1414293 m!1598003))

(assert (=> b!1414297 m!1597999))

(assert (=> b!1414297 m!1598001))

(declare-fun m!1598005 () Bool)

(assert (=> b!1414296 m!1598005))

(declare-fun m!1598007 () Bool)

(assert (=> b!1414295 m!1598007))

(assert (=> d!404312 d!404824))

(declare-fun b!1414315 () Bool)

(declare-fun e!902850 () Bool)

(assert (=> b!1414315 (= e!902850 (isEmpty!8845 (left!12346 (c!232209 objs!24))))))

(declare-fun b!1414316 () Bool)

(declare-fun e!902849 () Conc!4809)

(declare-fun call!95153 () Conc!4809)

(assert (=> b!1414316 (= e!902849 call!95153)))

(declare-fun b!1414317 () Bool)

(declare-fun e!902851 () Conc!4809)

(declare-fun e!902852 () Conc!4809)

(assert (=> b!1414317 (= e!902851 e!902852)))

(declare-fun c!232408 () Bool)

(assert (=> b!1414317 (= c!232408 (= (csize!9849 (c!232209 objs!24)) 1))))

(declare-fun bm!95147 () Bool)

(declare-fun c!232407 () Bool)

(assert (=> bm!95147 (= call!95153 (tail!2073 (ite c!232407 (right!12676 (c!232209 objs!24)) (left!12346 (c!232209 objs!24)))))))

(declare-fun bm!95148 () Bool)

(declare-fun c!232406 () Bool)

(declare-fun call!95152 () List!14518)

(declare-fun lt!474570 () List!14518)

(declare-fun lt!474572 () List!14518)

(assert (=> bm!95148 (= call!95152 (tail!2074 (ite c!232406 lt!474570 lt!474572)))))

(declare-fun b!1414318 () Bool)

(declare-fun lt!474573 () Unit!20997)

(declare-fun lt!474571 () Unit!20997)

(assert (=> b!1414318 (= lt!474573 lt!474571)))

(declare-fun lt!474576 () List!14518)

(declare-fun ++!3775 (List!14518 List!14518) List!14518)

(assert (=> b!1414318 (= (tail!2074 (++!3775 lt!474572 lt!474576)) (++!3775 call!95152 lt!474576))))

(declare-fun lemmaTailOfConcatIsTailConcat!12 (List!14518 List!14518) Unit!20997)

(assert (=> b!1414318 (= lt!474571 (lemmaTailOfConcatIsTailConcat!12 lt!474572 lt!474576))))

(assert (=> b!1414318 (= lt!474576 (list!5676 (right!12676 (c!232209 objs!24))))))

(assert (=> b!1414318 (= lt!474572 (list!5676 (left!12346 (c!232209 objs!24))))))

(declare-fun ++!3776 (Conc!4809 Conc!4809) Conc!4809)

(assert (=> b!1414318 (= e!902849 (++!3776 call!95153 (right!12676 (c!232209 objs!24))))))

(declare-fun b!1414319 () Bool)

(declare-fun lt!474574 () Unit!20997)

(declare-fun lt!474569 () Unit!20997)

(assert (=> b!1414319 (= lt!474574 lt!474569)))

(declare-fun slice!534 (List!14518 Int Int) List!14518)

(assert (=> b!1414319 (= call!95152 (slice!534 lt!474570 1 (size!11913 lt!474570)))))

(declare-fun sliceTailLemma!12 (List!14518) Unit!20997)

(assert (=> b!1414319 (= lt!474569 (sliceTailLemma!12 lt!474570))))

(declare-fun list!5682 (IArray!9623) List!14518)

(assert (=> b!1414319 (= lt!474570 (list!5682 (xs!7536 (c!232209 objs!24))))))

(declare-fun slice!535 (IArray!9623 Int Int) IArray!9623)

(assert (=> b!1414319 (= e!902852 (Leaf!7261 (slice!535 (xs!7536 (c!232209 objs!24)) 1 (csize!9849 (c!232209 objs!24))) (- (csize!9849 (c!232209 objs!24)) 1)))))

(declare-fun b!1414320 () Bool)

(declare-fun e!902848 () Bool)

(declare-fun lt!474575 () Conc!4809)

(assert (=> b!1414320 (= e!902848 (= (list!5676 lt!474575) (tail!2074 (list!5676 (c!232209 objs!24)))))))

(declare-fun b!1414321 () Bool)

(assert (=> b!1414321 (= e!902852 Empty!4809)))

(declare-fun d!404826 () Bool)

(assert (=> d!404826 e!902848))

(declare-fun res!640561 () Bool)

(assert (=> d!404826 (=> (not res!640561) (not e!902848))))

(assert (=> d!404826 (= res!640561 (isBalanced!1423 lt!474575))))

(assert (=> d!404826 (= lt!474575 e!902851)))

(assert (=> d!404826 (= c!232406 ((_ is Leaf!7261) (c!232209 objs!24)))))

(assert (=> d!404826 (isBalanced!1423 (c!232209 objs!24))))

(assert (=> d!404826 (= (tail!2073 (c!232209 objs!24)) lt!474575)))

(declare-fun b!1414322 () Bool)

(assert (=> b!1414322 (= e!902851 e!902849)))

(declare-fun res!640562 () Bool)

(assert (=> b!1414322 (= res!640562 ((_ is Node!4809) (c!232209 objs!24)))))

(assert (=> b!1414322 (=> (not res!640562) (not e!902850))))

(assert (=> b!1414322 (= c!232407 e!902850)))

(assert (= (and d!404826 c!232406) b!1414317))

(assert (= (and d!404826 (not c!232406)) b!1414322))

(assert (= (and b!1414317 c!232408) b!1414321))

(assert (= (and b!1414317 (not c!232408)) b!1414319))

(assert (= (and b!1414322 res!640562) b!1414315))

(assert (= (and b!1414322 c!232407) b!1414316))

(assert (= (and b!1414322 (not c!232407)) b!1414318))

(assert (= (or b!1414316 b!1414318) bm!95147))

(assert (= (or b!1414319 b!1414318) bm!95148))

(assert (= (and d!404826 res!640561) b!1414320))

(declare-fun m!1598009 () Bool)

(assert (=> d!404826 m!1598009))

(assert (=> d!404826 m!1595309))

(declare-fun m!1598011 () Bool)

(assert (=> bm!95148 m!1598011))

(declare-fun m!1598013 () Bool)

(assert (=> b!1414319 m!1598013))

(declare-fun m!1598015 () Bool)

(assert (=> b!1414319 m!1598015))

(declare-fun m!1598017 () Bool)

(assert (=> b!1414319 m!1598017))

(declare-fun m!1598019 () Bool)

(assert (=> b!1414319 m!1598019))

(assert (=> b!1414319 m!1598015))

(declare-fun m!1598021 () Bool)

(assert (=> b!1414319 m!1598021))

(declare-fun m!1598023 () Bool)

(assert (=> b!1414318 m!1598023))

(declare-fun m!1598025 () Bool)

(assert (=> b!1414318 m!1598025))

(assert (=> b!1414318 m!1596803))

(declare-fun m!1598027 () Bool)

(assert (=> b!1414318 m!1598027))

(assert (=> b!1414318 m!1596805))

(declare-fun m!1598029 () Bool)

(assert (=> b!1414318 m!1598029))

(assert (=> b!1414318 m!1598023))

(declare-fun m!1598031 () Bool)

(assert (=> b!1414318 m!1598031))

(declare-fun m!1598033 () Bool)

(assert (=> b!1414320 m!1598033))

(assert (=> b!1414320 m!1596647))

(assert (=> b!1414320 m!1596647))

(declare-fun m!1598035 () Bool)

(assert (=> b!1414320 m!1598035))

(assert (=> b!1414315 m!1596815))

(declare-fun m!1598037 () Bool)

(assert (=> bm!95147 m!1598037))

(assert (=> d!404312 d!404826))

(assert (=> d!404312 d!404316))

(declare-fun c!232409 () Bool)

(declare-fun d!404828 () Bool)

(assert (=> d!404828 (= c!232409 ((_ is Cons!14450) (ite c!232257 call!95027 call!95036)))))

(declare-fun e!902853 () List!14515)

(assert (=> d!404828 (= (printList!653 (ite c!232257 Lexer!2193 (ite c!232259 lt!473598 lt!473627)) (ite c!232257 call!95027 call!95036)) e!902853)))

(declare-fun b!1414323 () Bool)

(assert (=> b!1414323 (= e!902853 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95027 call!95036)))) (printList!653 (ite c!232257 Lexer!2193 (ite c!232259 lt!473598 lt!473627)) (t!123793 (ite c!232257 call!95027 call!95036)))))))

(declare-fun b!1414324 () Bool)

(assert (=> b!1414324 (= e!902853 Nil!14449)))

(assert (= (and d!404828 c!232409) b!1414323))

(assert (= (and d!404828 (not c!232409)) b!1414324))

(declare-fun m!1598039 () Bool)

(assert (=> b!1414323 m!1598039))

(assert (=> b!1414323 m!1598039))

(declare-fun m!1598041 () Bool)

(assert (=> b!1414323 m!1598041))

(declare-fun m!1598043 () Bool)

(assert (=> b!1414323 m!1598043))

(assert (=> b!1414323 m!1598041))

(assert (=> b!1414323 m!1598043))

(declare-fun m!1598045 () Bool)

(assert (=> b!1414323 m!1598045))

(assert (=> bm!95023 d!404828))

(declare-fun d!404830 () Bool)

(declare-fun res!640568 () Bool)

(declare-fun e!902855 () Bool)

(assert (=> d!404830 (=> res!640568 e!902855)))

(assert (=> d!404830 (= res!640568 (not ((_ is Node!4808) (c!232208 (tokens!1762 acc!229)))))))

(assert (=> d!404830 (= (isBalanced!1424 (c!232208 (tokens!1762 acc!229))) e!902855)))

(declare-fun b!1414325 () Bool)

(declare-fun e!902854 () Bool)

(assert (=> b!1414325 (= e!902855 e!902854)))

(declare-fun res!640563 () Bool)

(assert (=> b!1414325 (=> (not res!640563) (not e!902854))))

(assert (=> b!1414325 (= res!640563 (<= (- 1) (- (height!696 (left!12345 (c!232208 (tokens!1762 acc!229)))) (height!696 (right!12675 (c!232208 (tokens!1762 acc!229)))))))))

(declare-fun b!1414326 () Bool)

(declare-fun res!640565 () Bool)

(assert (=> b!1414326 (=> (not res!640565) (not e!902854))))

(assert (=> b!1414326 (= res!640565 (isBalanced!1424 (right!12675 (c!232208 (tokens!1762 acc!229)))))))

(declare-fun b!1414327 () Bool)

(declare-fun res!640567 () Bool)

(assert (=> b!1414327 (=> (not res!640567) (not e!902854))))

(assert (=> b!1414327 (= res!640567 (isBalanced!1424 (left!12345 (c!232208 (tokens!1762 acc!229)))))))

(declare-fun b!1414328 () Bool)

(assert (=> b!1414328 (= e!902854 (not (isEmpty!8849 (right!12675 (c!232208 (tokens!1762 acc!229))))))))

(declare-fun b!1414329 () Bool)

(declare-fun res!640564 () Bool)

(assert (=> b!1414329 (=> (not res!640564) (not e!902854))))

(assert (=> b!1414329 (= res!640564 (not (isEmpty!8849 (left!12345 (c!232208 (tokens!1762 acc!229))))))))

(declare-fun b!1414330 () Bool)

(declare-fun res!640566 () Bool)

(assert (=> b!1414330 (=> (not res!640566) (not e!902854))))

(assert (=> b!1414330 (= res!640566 (<= (- (height!696 (left!12345 (c!232208 (tokens!1762 acc!229)))) (height!696 (right!12675 (c!232208 (tokens!1762 acc!229))))) 1))))

(assert (= (and d!404830 (not res!640568)) b!1414325))

(assert (= (and b!1414325 res!640563) b!1414330))

(assert (= (and b!1414330 res!640566) b!1414327))

(assert (= (and b!1414327 res!640567) b!1414326))

(assert (= (and b!1414326 res!640565) b!1414329))

(assert (= (and b!1414329 res!640564) b!1414328))

(assert (=> b!1414330 m!1596683))

(assert (=> b!1414330 m!1596685))

(declare-fun m!1598047 () Bool)

(assert (=> b!1414327 m!1598047))

(assert (=> b!1414325 m!1596683))

(assert (=> b!1414325 m!1596685))

(declare-fun m!1598049 () Bool)

(assert (=> b!1414328 m!1598049))

(declare-fun m!1598051 () Bool)

(assert (=> b!1414326 m!1598051))

(declare-fun m!1598053 () Bool)

(assert (=> b!1414329 m!1598053))

(assert (=> d!404334 d!404830))

(declare-fun d!404832 () Bool)

(declare-fun res!640573 () Bool)

(declare-fun e!902858 () Bool)

(assert (=> d!404832 (=> (not res!640573) (not e!902858))))

(declare-fun list!5683 (IArray!9621) List!14516)

(assert (=> d!404832 (= res!640573 (<= (size!11916 (list!5683 (xs!7535 (c!232208 (tokens!1762 sep!3))))) 512))))

(assert (=> d!404832 (= (inv!18914 (c!232208 (tokens!1762 sep!3))) e!902858)))

(declare-fun b!1414335 () Bool)

(declare-fun res!640574 () Bool)

(assert (=> b!1414335 (=> (not res!640574) (not e!902858))))

(assert (=> b!1414335 (= res!640574 (= (csize!9847 (c!232208 (tokens!1762 sep!3))) (size!11916 (list!5683 (xs!7535 (c!232208 (tokens!1762 sep!3)))))))))

(declare-fun b!1414336 () Bool)

(assert (=> b!1414336 (= e!902858 (and (> (csize!9847 (c!232208 (tokens!1762 sep!3))) 0) (<= (csize!9847 (c!232208 (tokens!1762 sep!3))) 512)))))

(assert (= (and d!404832 res!640573) b!1414335))

(assert (= (and b!1414335 res!640574) b!1414336))

(declare-fun m!1598055 () Bool)

(assert (=> d!404832 m!1598055))

(assert (=> d!404832 m!1598055))

(declare-fun m!1598057 () Bool)

(assert (=> d!404832 m!1598057))

(assert (=> b!1414335 m!1598055))

(assert (=> b!1414335 m!1598055))

(assert (=> b!1414335 m!1598057))

(assert (=> b!1413451 d!404832))

(declare-fun d!404834 () Bool)

(assert (=> d!404834 (= (list!5671 call!95119) (list!5674 (c!232207 call!95119)))))

(declare-fun bs!339250 () Bool)

(assert (= bs!339250 d!404834))

(declare-fun m!1598059 () Bool)

(assert (=> bs!339250 m!1598059))

(assert (=> bm!95100 d!404834))

(declare-fun c!232410 () Bool)

(declare-fun d!404836 () Bool)

(assert (=> d!404836 (= c!232410 ((_ is Cons!14450) (ite c!232275 lt!473720 (ite c!232277 Nil!14450 lt!473724))))))

(declare-fun e!902859 () List!14515)

(assert (=> d!404836 (= (printList!653 (ite c!232275 lt!473773 (ite c!232277 Lexer!2193 lt!473774)) (ite c!232275 lt!473720 (ite c!232277 Nil!14450 lt!473724))) e!902859)))

(declare-fun b!1414337 () Bool)

(assert (=> b!1414337 (= e!902859 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232275 lt!473720 (ite c!232277 Nil!14450 lt!473724))))) (printList!653 (ite c!232275 lt!473773 (ite c!232277 Lexer!2193 lt!473774)) (t!123793 (ite c!232275 lt!473720 (ite c!232277 Nil!14450 lt!473724))))))))

(declare-fun b!1414338 () Bool)

(assert (=> b!1414338 (= e!902859 Nil!14449)))

(assert (= (and d!404836 c!232410) b!1414337))

(assert (= (and d!404836 (not c!232410)) b!1414338))

(declare-fun m!1598061 () Bool)

(assert (=> b!1414337 m!1598061))

(assert (=> b!1414337 m!1598061))

(declare-fun m!1598063 () Bool)

(assert (=> b!1414337 m!1598063))

(declare-fun m!1598065 () Bool)

(assert (=> b!1414337 m!1598065))

(assert (=> b!1414337 m!1598063))

(assert (=> b!1414337 m!1598065))

(declare-fun m!1598067 () Bool)

(assert (=> b!1414337 m!1598067))

(assert (=> bm!95134 d!404836))

(declare-fun d!404838 () Bool)

(declare-fun res!640579 () Bool)

(declare-fun e!902862 () Bool)

(assert (=> d!404838 (=> (not res!640579) (not e!902862))))

(assert (=> d!404838 (= res!640579 (<= (size!11913 (list!5682 (xs!7536 (c!232209 objs!24)))) 512))))

(assert (=> d!404838 (= (inv!18919 (c!232209 objs!24)) e!902862)))

(declare-fun b!1414343 () Bool)

(declare-fun res!640580 () Bool)

(assert (=> b!1414343 (=> (not res!640580) (not e!902862))))

(assert (=> b!1414343 (= res!640580 (= (csize!9849 (c!232209 objs!24)) (size!11913 (list!5682 (xs!7536 (c!232209 objs!24))))))))

(declare-fun b!1414344 () Bool)

(assert (=> b!1414344 (= e!902862 (and (> (csize!9849 (c!232209 objs!24)) 0) (<= (csize!9849 (c!232209 objs!24)) 512)))))

(assert (= (and d!404838 res!640579) b!1414343))

(assert (= (and b!1414343 res!640580) b!1414344))

(assert (=> d!404838 m!1598017))

(assert (=> d!404838 m!1598017))

(declare-fun m!1598069 () Bool)

(assert (=> d!404838 m!1598069))

(assert (=> b!1414343 m!1598017))

(assert (=> b!1414343 m!1598017))

(assert (=> b!1414343 m!1598069))

(assert (=> b!1413555 d!404838))

(declare-fun d!404840 () Bool)

(declare-fun c!232411 () Bool)

(assert (=> d!404840 (= c!232411 ((_ is Cons!14450) (ite c!232257 call!95057 (ite c!232259 lt!473649 lt!473639))))))

(declare-fun e!902863 () List!14515)

(assert (=> d!404840 (= (printList!653 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473627)) (ite c!232257 call!95057 (ite c!232259 lt!473649 lt!473639))) e!902863)))

(declare-fun b!1414345 () Bool)

(assert (=> b!1414345 (= e!902863 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95057 (ite c!232259 lt!473649 lt!473639))))) (printList!653 (ite c!232257 lt!473642 (ite c!232259 lt!473598 lt!473627)) (t!123793 (ite c!232257 call!95057 (ite c!232259 lt!473649 lt!473639))))))))

(declare-fun b!1414346 () Bool)

(assert (=> b!1414346 (= e!902863 Nil!14449)))

(assert (= (and d!404840 c!232411) b!1414345))

(assert (= (and d!404840 (not c!232411)) b!1414346))

(declare-fun m!1598071 () Bool)

(assert (=> b!1414345 m!1598071))

(assert (=> b!1414345 m!1598071))

(declare-fun m!1598073 () Bool)

(assert (=> b!1414345 m!1598073))

(declare-fun m!1598075 () Bool)

(assert (=> b!1414345 m!1598075))

(assert (=> b!1414345 m!1598073))

(assert (=> b!1414345 m!1598075))

(declare-fun m!1598077 () Bool)

(assert (=> b!1414345 m!1598077))

(assert (=> bm!95026 d!404840))

(declare-fun d!404842 () Bool)

(declare-fun lt!474577 () Token!4684)

(assert (=> d!404842 (= lt!474577 (head!2697 (list!5672 (tokens!1762 sep!3))))))

(assert (=> d!404842 (= lt!474577 (head!2702 (c!232208 (tokens!1762 sep!3))))))

(assert (=> d!404842 (not (isEmpty!8840 (tokens!1762 sep!3)))))

(assert (=> d!404842 (= (head!2694 (tokens!1762 sep!3)) lt!474577)))

(declare-fun bs!339251 () Bool)

(assert (= bs!339251 d!404842))

(assert (=> bs!339251 m!1595213))

(assert (=> bs!339251 m!1595213))

(declare-fun m!1598079 () Bool)

(assert (=> bs!339251 m!1598079))

(declare-fun m!1598081 () Bool)

(assert (=> bs!339251 m!1598081))

(assert (=> bs!339251 m!1595227))

(assert (=> b!1413459 d!404842))

(declare-fun d!404844 () Bool)

(assert (=> d!404844 (rulesProduceIndividualToken!1162 lt!473763 (rules!11032 (head!2690 objs!24)) lt!473726)))

(declare-fun lt!474578 () Unit!20997)

(assert (=> d!404844 (= lt!474578 (choose!8727 lt!473763 (rules!11032 (head!2690 objs!24)) lt!473747 lt!473726))))

(assert (=> d!404844 (not (isEmpty!8846 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404844 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473763 (rules!11032 (head!2690 objs!24)) lt!473747 lt!473726) lt!474578)))

(declare-fun bs!339252 () Bool)

(assert (= bs!339252 d!404844))

(assert (=> bs!339252 m!1595205))

(declare-fun m!1598083 () Bool)

(assert (=> bs!339252 m!1598083))

(assert (=> bs!339252 m!1595943))

(assert (=> b!1413459 d!404844))

(declare-fun d!404846 () Bool)

(assert (=> d!404846 (= (separableTokensPredicate!476 Lexer!2193 (last!67 (tokens!1762 (head!2690 objs!24))) (head!2694 (tokens!1762 sep!3)) (rules!11032 (head!2690 objs!24))) (not (prefixMatchZipperSequence!311 (rulesRegex!371 Lexer!2193 (rules!11032 (head!2690 objs!24))) (++!3770 (charsOf!1470 (last!67 (tokens!1762 (head!2690 objs!24)))) (singletonSeq!1160 (apply!3704 (charsOf!1470 (head!2694 (tokens!1762 sep!3))) 0))))))))

(declare-fun bs!339253 () Bool)

(assert (= bs!339253 d!404846))

(assert (=> bs!339253 m!1595199))

(declare-fun m!1598085 () Bool)

(assert (=> bs!339253 m!1598085))

(assert (=> bs!339253 m!1598085))

(declare-fun m!1598087 () Bool)

(assert (=> bs!339253 m!1598087))

(declare-fun m!1598089 () Bool)

(assert (=> bs!339253 m!1598089))

(declare-fun m!1598091 () Bool)

(assert (=> bs!339253 m!1598091))

(assert (=> bs!339253 m!1595201))

(declare-fun m!1598093 () Bool)

(assert (=> bs!339253 m!1598093))

(assert (=> bs!339253 m!1598093))

(declare-fun m!1598095 () Bool)

(assert (=> bs!339253 m!1598095))

(assert (=> bs!339253 m!1598095))

(assert (=> bs!339253 m!1598087))

(assert (=> bs!339253 m!1598091))

(assert (=> bs!339253 m!1598089))

(declare-fun m!1598097 () Bool)

(assert (=> bs!339253 m!1598097))

(assert (=> b!1413459 d!404846))

(declare-fun d!404848 () Bool)

(declare-fun lt!474580 () Bool)

(declare-fun e!902865 () Bool)

(assert (=> d!404848 (= lt!474580 e!902865)))

(declare-fun res!640581 () Bool)

(assert (=> d!404848 (=> (not res!640581) (not e!902865))))

(assert (=> d!404848 (= res!640581 (= (list!5672 (_1!7878 (lex!1008 lt!473779 (rules!11032 (head!2690 objs!24)) (print!962 lt!473779 (singletonSeq!1159 lt!473764))))) (list!5672 (singletonSeq!1159 lt!473764))))))

(declare-fun e!902864 () Bool)

(assert (=> d!404848 (= lt!474580 e!902864)))

(declare-fun res!640583 () Bool)

(assert (=> d!404848 (=> (not res!640583) (not e!902864))))

(declare-fun lt!474579 () tuple2!13984)

(assert (=> d!404848 (= res!640583 (= (size!11918 (_1!7878 lt!474579)) 1))))

(assert (=> d!404848 (= lt!474579 (lex!1008 lt!473779 (rules!11032 (head!2690 objs!24)) (print!962 lt!473779 (singletonSeq!1159 lt!473764))))))

(assert (=> d!404848 (not (isEmpty!8846 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404848 (= (rulesProduceIndividualToken!1162 lt!473779 (rules!11032 (head!2690 objs!24)) lt!473764) lt!474580)))

(declare-fun b!1414347 () Bool)

(declare-fun res!640582 () Bool)

(assert (=> b!1414347 (=> (not res!640582) (not e!902864))))

(assert (=> b!1414347 (= res!640582 (= (apply!3702 (_1!7878 lt!474579) 0) lt!473764))))

(declare-fun b!1414348 () Bool)

(assert (=> b!1414348 (= e!902864 (isEmpty!8850 (_2!7878 lt!474579)))))

(declare-fun b!1414349 () Bool)

(assert (=> b!1414349 (= e!902865 (isEmpty!8850 (_2!7878 (lex!1008 lt!473779 (rules!11032 (head!2690 objs!24)) (print!962 lt!473779 (singletonSeq!1159 lt!473764))))))))

(assert (= (and d!404848 res!640583) b!1414347))

(assert (= (and b!1414347 res!640582) b!1414348))

(assert (= (and d!404848 res!640581) b!1414349))

(assert (=> d!404848 m!1595943))

(declare-fun m!1598099 () Bool)

(assert (=> d!404848 m!1598099))

(declare-fun m!1598101 () Bool)

(assert (=> d!404848 m!1598101))

(declare-fun m!1598103 () Bool)

(assert (=> d!404848 m!1598103))

(declare-fun m!1598105 () Bool)

(assert (=> d!404848 m!1598105))

(assert (=> d!404848 m!1598101))

(declare-fun m!1598107 () Bool)

(assert (=> d!404848 m!1598107))

(assert (=> d!404848 m!1598101))

(assert (=> d!404848 m!1598103))

(declare-fun m!1598109 () Bool)

(assert (=> d!404848 m!1598109))

(declare-fun m!1598111 () Bool)

(assert (=> b!1414347 m!1598111))

(declare-fun m!1598113 () Bool)

(assert (=> b!1414348 m!1598113))

(assert (=> b!1414349 m!1598101))

(assert (=> b!1414349 m!1598101))

(assert (=> b!1414349 m!1598103))

(assert (=> b!1414349 m!1598103))

(assert (=> b!1414349 m!1598105))

(declare-fun m!1598115 () Bool)

(assert (=> b!1414349 m!1598115))

(assert (=> b!1413459 d!404848))

(declare-fun d!404850 () Bool)

(assert (=> d!404850 (rulesProduceIndividualToken!1162 lt!473779 (rules!11032 (head!2690 objs!24)) lt!473764)))

(declare-fun lt!474581 () Unit!20997)

(assert (=> d!404850 (= lt!474581 (choose!8727 lt!473779 (rules!11032 (head!2690 objs!24)) lt!473761 lt!473764))))

(assert (=> d!404850 (not (isEmpty!8846 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404850 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!347 lt!473779 (rules!11032 (head!2690 objs!24)) lt!473761 lt!473764) lt!474581)))

(declare-fun bs!339254 () Bool)

(assert (= bs!339254 d!404850))

(assert (=> bs!339254 m!1595197))

(declare-fun m!1598117 () Bool)

(assert (=> bs!339254 m!1598117))

(assert (=> bs!339254 m!1595943))

(assert (=> b!1413459 d!404850))

(declare-fun d!404852 () Bool)

(declare-fun lt!474582 () Token!4684)

(assert (=> d!404852 (= lt!474582 (last!68 (list!5672 (tokens!1762 (head!2690 objs!24)))))))

(assert (=> d!404852 (= lt!474582 (last!69 (c!232208 (tokens!1762 (head!2690 objs!24)))))))

(assert (=> d!404852 (not (isEmpty!8840 (tokens!1762 (head!2690 objs!24))))))

(assert (=> d!404852 (= (last!67 (tokens!1762 (head!2690 objs!24))) lt!474582)))

(declare-fun bs!339255 () Bool)

(assert (= bs!339255 d!404852))

(assert (=> bs!339255 m!1595211))

(assert (=> bs!339255 m!1595211))

(declare-fun m!1598119 () Bool)

(assert (=> bs!339255 m!1598119))

(declare-fun m!1598121 () Bool)

(assert (=> bs!339255 m!1598121))

(assert (=> bs!339255 m!1595223))

(assert (=> b!1413459 d!404852))

(declare-fun d!404854 () Bool)

(declare-fun lt!474584 () Bool)

(declare-fun e!902867 () Bool)

(assert (=> d!404854 (= lt!474584 e!902867)))

(declare-fun res!640584 () Bool)

(assert (=> d!404854 (=> (not res!640584) (not e!902867))))

(assert (=> d!404854 (= res!640584 (= (list!5672 (_1!7878 (lex!1008 lt!473763 (rules!11032 (head!2690 objs!24)) (print!962 lt!473763 (singletonSeq!1159 lt!473726))))) (list!5672 (singletonSeq!1159 lt!473726))))))

(declare-fun e!902866 () Bool)

(assert (=> d!404854 (= lt!474584 e!902866)))

(declare-fun res!640586 () Bool)

(assert (=> d!404854 (=> (not res!640586) (not e!902866))))

(declare-fun lt!474583 () tuple2!13984)

(assert (=> d!404854 (= res!640586 (= (size!11918 (_1!7878 lt!474583)) 1))))

(assert (=> d!404854 (= lt!474583 (lex!1008 lt!473763 (rules!11032 (head!2690 objs!24)) (print!962 lt!473763 (singletonSeq!1159 lt!473726))))))

(assert (=> d!404854 (not (isEmpty!8846 (rules!11032 (head!2690 objs!24))))))

(assert (=> d!404854 (= (rulesProduceIndividualToken!1162 lt!473763 (rules!11032 (head!2690 objs!24)) lt!473726) lt!474584)))

(declare-fun b!1414350 () Bool)

(declare-fun res!640585 () Bool)

(assert (=> b!1414350 (=> (not res!640585) (not e!902866))))

(assert (=> b!1414350 (= res!640585 (= (apply!3702 (_1!7878 lt!474583) 0) lt!473726))))

(declare-fun b!1414351 () Bool)

(assert (=> b!1414351 (= e!902866 (isEmpty!8850 (_2!7878 lt!474583)))))

(declare-fun b!1414352 () Bool)

(assert (=> b!1414352 (= e!902867 (isEmpty!8850 (_2!7878 (lex!1008 lt!473763 (rules!11032 (head!2690 objs!24)) (print!962 lt!473763 (singletonSeq!1159 lt!473726))))))))

(assert (= (and d!404854 res!640586) b!1414350))

(assert (= (and b!1414350 res!640585) b!1414351))

(assert (= (and d!404854 res!640584) b!1414352))

(assert (=> d!404854 m!1595943))

(declare-fun m!1598123 () Bool)

(assert (=> d!404854 m!1598123))

(declare-fun m!1598125 () Bool)

(assert (=> d!404854 m!1598125))

(declare-fun m!1598127 () Bool)

(assert (=> d!404854 m!1598127))

(declare-fun m!1598129 () Bool)

(assert (=> d!404854 m!1598129))

(assert (=> d!404854 m!1598125))

(declare-fun m!1598131 () Bool)

(assert (=> d!404854 m!1598131))

(assert (=> d!404854 m!1598125))

(assert (=> d!404854 m!1598127))

(declare-fun m!1598133 () Bool)

(assert (=> d!404854 m!1598133))

(declare-fun m!1598135 () Bool)

(assert (=> b!1414350 m!1598135))

(declare-fun m!1598137 () Bool)

(assert (=> b!1414351 m!1598137))

(assert (=> b!1414352 m!1598125))

(assert (=> b!1414352 m!1598125))

(assert (=> b!1414352 m!1598127))

(assert (=> b!1414352 m!1598127))

(assert (=> b!1414352 m!1598129))

(declare-fun m!1598139 () Bool)

(assert (=> b!1414352 m!1598139))

(assert (=> b!1413459 d!404854))

(declare-fun d!404856 () Bool)

(declare-fun c!232412 () Bool)

(assert (=> d!404856 (= c!232412 ((_ is Cons!14450) (ite c!232275 (t!123793 lt!473756) e!902346)))))

(declare-fun e!902868 () List!14515)

(assert (=> d!404856 (= (printList!653 (ite (or c!232275 c!232277) Lexer!2193 lt!473774) (ite c!232275 (t!123793 lt!473756) e!902346)) e!902868)))

(declare-fun b!1414353 () Bool)

(assert (=> b!1414353 (= e!902868 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232275 (t!123793 lt!473756) e!902346)))) (printList!653 (ite (or c!232275 c!232277) Lexer!2193 lt!473774) (t!123793 (ite c!232275 (t!123793 lt!473756) e!902346)))))))

(declare-fun b!1414354 () Bool)

(assert (=> b!1414354 (= e!902868 Nil!14449)))

(assert (= (and d!404856 c!232412) b!1414353))

(assert (= (and d!404856 (not c!232412)) b!1414354))

(declare-fun m!1598141 () Bool)

(assert (=> b!1414353 m!1598141))

(assert (=> b!1414353 m!1598141))

(declare-fun m!1598143 () Bool)

(assert (=> b!1414353 m!1598143))

(declare-fun m!1598145 () Bool)

(assert (=> b!1414353 m!1598145))

(assert (=> b!1414353 m!1598143))

(assert (=> b!1414353 m!1598145))

(declare-fun m!1598147 () Bool)

(assert (=> b!1414353 m!1598147))

(assert (=> bm!95106 d!404856))

(declare-fun d!404858 () Bool)

(declare-fun c!232413 () Bool)

(assert (=> d!404858 (= c!232413 ((_ is Node!4808) (left!12345 (c!232208 (tokens!1762 acc!229)))))))

(declare-fun e!902869 () Bool)

(assert (=> d!404858 (= (inv!18909 (left!12345 (c!232208 (tokens!1762 acc!229)))) e!902869)))

(declare-fun b!1414355 () Bool)

(assert (=> b!1414355 (= e!902869 (inv!18913 (left!12345 (c!232208 (tokens!1762 acc!229)))))))

(declare-fun b!1414356 () Bool)

(declare-fun e!902870 () Bool)

(assert (=> b!1414356 (= e!902869 e!902870)))

(declare-fun res!640587 () Bool)

(assert (=> b!1414356 (= res!640587 (not ((_ is Leaf!7260) (left!12345 (c!232208 (tokens!1762 acc!229))))))))

(assert (=> b!1414356 (=> res!640587 e!902870)))

(declare-fun b!1414357 () Bool)

(assert (=> b!1414357 (= e!902870 (inv!18914 (left!12345 (c!232208 (tokens!1762 acc!229)))))))

(assert (= (and d!404858 c!232413) b!1414355))

(assert (= (and d!404858 (not c!232413)) b!1414356))

(assert (= (and b!1414356 (not res!640587)) b!1414357))

(declare-fun m!1598149 () Bool)

(assert (=> b!1414355 m!1598149))

(declare-fun m!1598151 () Bool)

(assert (=> b!1414357 m!1598151))

(assert (=> b!1413595 d!404858))

(declare-fun d!404860 () Bool)

(declare-fun c!232414 () Bool)

(assert (=> d!404860 (= c!232414 ((_ is Node!4808) (right!12675 (c!232208 (tokens!1762 acc!229)))))))

(declare-fun e!902871 () Bool)

(assert (=> d!404860 (= (inv!18909 (right!12675 (c!232208 (tokens!1762 acc!229)))) e!902871)))

(declare-fun b!1414358 () Bool)

(assert (=> b!1414358 (= e!902871 (inv!18913 (right!12675 (c!232208 (tokens!1762 acc!229)))))))

(declare-fun b!1414359 () Bool)

(declare-fun e!902872 () Bool)

(assert (=> b!1414359 (= e!902871 e!902872)))

(declare-fun res!640588 () Bool)

(assert (=> b!1414359 (= res!640588 (not ((_ is Leaf!7260) (right!12675 (c!232208 (tokens!1762 acc!229))))))))

(assert (=> b!1414359 (=> res!640588 e!902872)))

(declare-fun b!1414360 () Bool)

(assert (=> b!1414360 (= e!902872 (inv!18914 (right!12675 (c!232208 (tokens!1762 acc!229)))))))

(assert (= (and d!404860 c!232414) b!1414358))

(assert (= (and d!404860 (not c!232414)) b!1414359))

(assert (= (and b!1414359 (not res!640588)) b!1414360))

(declare-fun m!1598153 () Bool)

(assert (=> b!1414358 m!1598153))

(declare-fun m!1598155 () Bool)

(assert (=> b!1414360 m!1598155))

(assert (=> b!1413595 d!404860))

(declare-fun d!404862 () Bool)

(assert (=> d!404862 (= (list!5671 (print!961 acc!229)) (list!5674 (c!232207 (print!961 acc!229))))))

(declare-fun bs!339256 () Bool)

(assert (= bs!339256 d!404862))

(declare-fun m!1598157 () Bool)

(assert (=> bs!339256 m!1598157))

(assert (=> b!1413413 d!404862))

(declare-fun d!404864 () Bool)

(assert (=> d!404864 (= (list!5671 (print!961 (v!21893 lt!473262))) (list!5674 (c!232207 (print!961 (v!21893 lt!473262)))))))

(declare-fun bs!339257 () Bool)

(assert (= bs!339257 d!404864))

(declare-fun m!1598159 () Bool)

(assert (=> bs!339257 m!1598159))

(assert (=> b!1413413 d!404864))

(declare-fun d!404866 () Bool)

(declare-fun e!902873 () Bool)

(assert (=> d!404866 e!902873))

(declare-fun res!640589 () Bool)

(assert (=> d!404866 (=> (not res!640589) (not e!902873))))

(declare-fun lt!474585 () BalanceConc!9554)

(assert (=> d!404866 (= res!640589 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (v!21893 lt!473262)) lt!474585))) (list!5672 (tokens!1762 (v!21893 lt!473262)))))))

(assert (=> d!404866 (= lt!474585 (print!962 Lexer!2193 (tokens!1762 (v!21893 lt!473262))))))

(declare-fun lt!474586 () Unit!20997)

(assert (=> d!404866 (= lt!474586 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (v!21893 lt!473262)) (list!5672 (tokens!1762 (v!21893 lt!473262)))))))

(assert (=> d!404866 (= (print!961 (v!21893 lt!473262)) lt!474585)))

(declare-fun b!1414361 () Bool)

(assert (=> b!1414361 (= e!902873 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (v!21893 lt!473262)) lt!474585)))))))

(assert (= (and d!404866 res!640589) b!1414361))

(assert (=> d!404866 m!1594971))

(declare-fun m!1598161 () Bool)

(assert (=> d!404866 m!1598161))

(declare-fun m!1598163 () Bool)

(assert (=> d!404866 m!1598163))

(assert (=> d!404866 m!1594971))

(assert (=> d!404866 m!1594909))

(declare-fun m!1598165 () Bool)

(assert (=> d!404866 m!1598165))

(assert (=> b!1414361 m!1598163))

(declare-fun m!1598167 () Bool)

(assert (=> b!1414361 m!1598167))

(assert (=> b!1414361 m!1598167))

(declare-fun m!1598169 () Bool)

(assert (=> b!1414361 m!1598169))

(assert (=> b!1413413 d!404866))

(assert (=> b!1413413 d!404434))

(declare-fun d!404868 () Bool)

(declare-fun e!902875 () Bool)

(assert (=> d!404868 e!902875))

(declare-fun res!640590 () Bool)

(assert (=> d!404868 (=> (not res!640590) (not e!902875))))

(declare-fun lt!474587 () List!14515)

(assert (=> d!404868 (= res!640590 (= (content!2140 lt!474587) ((_ map or) (content!2140 (list!5671 (print!961 acc!229))) (content!2140 (list!5671 (print!961 (v!21893 lt!473262)))))))))

(declare-fun e!902874 () List!14515)

(assert (=> d!404868 (= lt!474587 e!902874)))

(declare-fun c!232415 () Bool)

(assert (=> d!404868 (= c!232415 ((_ is Nil!14449) (list!5671 (print!961 acc!229))))))

(assert (=> d!404868 (= (++!3768 (list!5671 (print!961 acc!229)) (list!5671 (print!961 (v!21893 lt!473262)))) lt!474587)))

(declare-fun b!1414365 () Bool)

(assert (=> b!1414365 (= e!902875 (or (not (= (list!5671 (print!961 (v!21893 lt!473262))) Nil!14449)) (= lt!474587 (list!5671 (print!961 acc!229)))))))

(declare-fun b!1414364 () Bool)

(declare-fun res!640591 () Bool)

(assert (=> b!1414364 (=> (not res!640591) (not e!902875))))

(assert (=> b!1414364 (= res!640591 (= (size!11915 lt!474587) (+ (size!11915 (list!5671 (print!961 acc!229))) (size!11915 (list!5671 (print!961 (v!21893 lt!473262)))))))))

(declare-fun b!1414363 () Bool)

(assert (=> b!1414363 (= e!902874 (Cons!14449 (h!19850 (list!5671 (print!961 acc!229))) (++!3768 (t!123792 (list!5671 (print!961 acc!229))) (list!5671 (print!961 (v!21893 lt!473262))))))))

(declare-fun b!1414362 () Bool)

(assert (=> b!1414362 (= e!902874 (list!5671 (print!961 (v!21893 lt!473262))))))

(assert (= (and d!404868 c!232415) b!1414362))

(assert (= (and d!404868 (not c!232415)) b!1414363))

(assert (= (and d!404868 res!640590) b!1414364))

(assert (= (and b!1414364 res!640591) b!1414365))

(declare-fun m!1598171 () Bool)

(assert (=> d!404868 m!1598171))

(assert (=> d!404868 m!1594919))

(declare-fun m!1598173 () Bool)

(assert (=> d!404868 m!1598173))

(assert (=> d!404868 m!1594921))

(declare-fun m!1598175 () Bool)

(assert (=> d!404868 m!1598175))

(declare-fun m!1598177 () Bool)

(assert (=> b!1414364 m!1598177))

(assert (=> b!1414364 m!1594919))

(declare-fun m!1598179 () Bool)

(assert (=> b!1414364 m!1598179))

(assert (=> b!1414364 m!1594921))

(declare-fun m!1598181 () Bool)

(assert (=> b!1414364 m!1598181))

(assert (=> b!1414363 m!1594921))

(declare-fun m!1598183 () Bool)

(assert (=> b!1414363 m!1598183))

(assert (=> b!1413413 d!404868))

(declare-fun d!404870 () Bool)

(declare-fun e!902876 () Bool)

(assert (=> d!404870 e!902876))

(declare-fun res!640592 () Bool)

(assert (=> d!404870 (=> (not res!640592) (not e!902876))))

(declare-fun lt!474588 () BalanceConc!9554)

(assert (=> d!404870 (= res!640592 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (get!4443 lt!473601)) lt!474588))) (list!5672 (tokens!1762 (get!4443 lt!473601)))))))

(assert (=> d!404870 (= lt!474588 (print!962 Lexer!2193 (tokens!1762 (get!4443 lt!473601))))))

(declare-fun lt!474589 () Unit!20997)

(assert (=> d!404870 (= lt!474589 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (get!4443 lt!473601)) (list!5672 (tokens!1762 (get!4443 lt!473601)))))))

(assert (=> d!404870 (= (print!961 (get!4443 lt!473601)) lt!474588)))

(declare-fun b!1414366 () Bool)

(assert (=> b!1414366 (= e!902876 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (get!4443 lt!473601)) lt!474588)))))))

(assert (= (and d!404870 res!640592) b!1414366))

(assert (=> d!404870 m!1594975))

(declare-fun m!1598185 () Bool)

(assert (=> d!404870 m!1598185))

(declare-fun m!1598187 () Bool)

(assert (=> d!404870 m!1598187))

(assert (=> d!404870 m!1594975))

(declare-fun m!1598189 () Bool)

(assert (=> d!404870 m!1598189))

(declare-fun m!1598191 () Bool)

(assert (=> d!404870 m!1598191))

(assert (=> b!1414366 m!1598187))

(declare-fun m!1598193 () Bool)

(assert (=> b!1414366 m!1598193))

(assert (=> b!1414366 m!1598193))

(declare-fun m!1598195 () Bool)

(assert (=> b!1414366 m!1598195))

(assert (=> b!1413413 d!404870))

(declare-fun d!404872 () Bool)

(assert (=> d!404872 (= (list!5671 (print!961 (get!4443 lt!473601))) (list!5674 (c!232207 (print!961 (get!4443 lt!473601)))))))

(declare-fun bs!339258 () Bool)

(assert (= bs!339258 d!404872))

(declare-fun m!1598197 () Bool)

(assert (=> bs!339258 m!1598197))

(assert (=> b!1413413 d!404872))

(declare-fun d!404874 () Bool)

(declare-fun e!902877 () Bool)

(assert (=> d!404874 e!902877))

(declare-fun res!640593 () Bool)

(assert (=> d!404874 (=> (not res!640593) (not e!902877))))

(declare-fun lt!474590 () BalanceConc!9554)

(assert (=> d!404874 (= res!640593 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 acc!229) lt!474590))) (list!5672 (tokens!1762 acc!229))))))

(assert (=> d!404874 (= lt!474590 (print!962 Lexer!2193 (tokens!1762 acc!229)))))

(declare-fun lt!474591 () Unit!20997)

(assert (=> d!404874 (= lt!474591 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 acc!229) (list!5672 (tokens!1762 acc!229))))))

(assert (=> d!404874 (= (print!961 acc!229) lt!474590)))

(declare-fun b!1414367 () Bool)

(assert (=> b!1414367 (= e!902877 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 acc!229) lt!474590)))))))

(assert (= (and d!404874 res!640593) b!1414367))

(assert (=> d!404874 m!1594969))

(declare-fun m!1598199 () Bool)

(assert (=> d!404874 m!1598199))

(declare-fun m!1598201 () Bool)

(assert (=> d!404874 m!1598201))

(assert (=> d!404874 m!1594969))

(assert (=> d!404874 m!1594995))

(declare-fun m!1598203 () Bool)

(assert (=> d!404874 m!1598203))

(assert (=> b!1414367 m!1598201))

(declare-fun m!1598205 () Bool)

(assert (=> b!1414367 m!1598205))

(assert (=> b!1414367 m!1598205))

(declare-fun m!1598207 () Bool)

(assert (=> b!1414367 m!1598207))

(assert (=> b!1413413 d!404874))

(declare-fun bs!339259 () Bool)

(declare-fun d!404876 () Bool)

(assert (= bs!339259 (and d!404876 d!404382)))

(declare-fun lambda!62488 () Int)

(assert (=> bs!339259 (= (= (rules!11032 sep!3) (rules!11032 acc!229)) (= lambda!62488 lambda!62474))))

(declare-fun bs!339260 () Bool)

(assert (= bs!339260 (and d!404876 d!404464)))

(assert (=> bs!339260 (= (and (= Lexer!2193 lt!473728) (= (rules!11032 sep!3) (rules!11032 (head!2690 objs!24)))) (= lambda!62488 lambda!62482))))

(declare-fun bs!339261 () Bool)

(assert (= bs!339261 (and d!404876 d!404662)))

(assert (=> bs!339261 (= (and (= Lexer!2193 lt!473597) (= (rules!11032 sep!3) (rules!11032 acc!229))) (= lambda!62488 lambda!62483))))

(declare-fun b!1414371 () Bool)

(declare-fun e!902881 () Bool)

(assert (=> b!1414371 (= e!902881 true)))

(declare-fun b!1414370 () Bool)

(declare-fun e!902880 () Bool)

(assert (=> b!1414370 (= e!902880 e!902881)))

(declare-fun b!1414369 () Bool)

(declare-fun e!902879 () Bool)

(assert (=> b!1414369 (= e!902879 e!902880)))

(assert (=> d!404876 e!902879))

(assert (= b!1414370 b!1414371))

(assert (= b!1414369 b!1414370))

(assert (= (and d!404876 ((_ is Cons!14451) (rules!11032 sep!3))) b!1414369))

(assert (=> b!1414371 (< (dynLambda!6692 order!8815 (toValue!3810 (transformation!2511 (h!19852 (rules!11032 sep!3))))) (dynLambda!6693 order!8817 lambda!62488))))

(assert (=> b!1414371 (< (dynLambda!6694 order!8819 (toChars!3669 (transformation!2511 (h!19852 (rules!11032 sep!3))))) (dynLambda!6693 order!8817 lambda!62488))))

(assert (=> d!404876 true))

(declare-fun e!902878 () Bool)

(assert (=> d!404876 e!902878))

(declare-fun res!640594 () Bool)

(assert (=> d!404876 (=> (not res!640594) (not e!902878))))

(declare-fun lt!474592 () Bool)

(assert (=> d!404876 (= res!640594 (= lt!474592 (forall!3554 (list!5672 (tokens!1762 sep!3)) lambda!62488)))))

(assert (=> d!404876 (= lt!474592 (forall!3555 (tokens!1762 sep!3) lambda!62488))))

(assert (=> d!404876 (not (isEmpty!8846 (rules!11032 sep!3)))))

(assert (=> d!404876 (= (rulesProduceEachTokenIndividually!792 Lexer!2193 (rules!11032 sep!3) (tokens!1762 sep!3)) lt!474592)))

(declare-fun b!1414368 () Bool)

(assert (=> b!1414368 (= e!902878 (= lt!474592 (rulesProduceEachTokenIndividuallyList!678 Lexer!2193 (rules!11032 sep!3) (list!5672 (tokens!1762 sep!3)))))))

(assert (= (and d!404876 res!640594) b!1414368))

(assert (=> d!404876 m!1595213))

(assert (=> d!404876 m!1595213))

(declare-fun m!1598209 () Bool)

(assert (=> d!404876 m!1598209))

(declare-fun m!1598211 () Bool)

(assert (=> d!404876 m!1598211))

(assert (=> d!404876 m!1595361))

(assert (=> b!1414368 m!1595213))

(assert (=> b!1414368 m!1595213))

(declare-fun m!1598213 () Bool)

(assert (=> b!1414368 m!1598213))

(assert (=> b!1413545 d!404876))

(declare-fun d!404878 () Bool)

(assert (=> d!404878 (= (list!5672 (ite c!232275 (tokens!1762 (head!2690 objs!24)) (ite c!232277 (tokens!1762 sep!3) (tokens!1762 (head!2690 objs!24))))) (list!5675 (c!232208 (ite c!232275 (tokens!1762 (head!2690 objs!24)) (ite c!232277 (tokens!1762 sep!3) (tokens!1762 (head!2690 objs!24)))))))))

(declare-fun bs!339262 () Bool)

(assert (= bs!339262 d!404878))

(declare-fun m!1598215 () Bool)

(assert (=> bs!339262 m!1598215))

(assert (=> bm!95122 d!404878))

(declare-fun b!1414375 () Bool)

(declare-fun e!902882 () Bool)

(declare-fun lt!474593 () List!14516)

(assert (=> b!1414375 (= e!902882 (or (not (= lt!473638 Nil!14450)) (= lt!474593 lt!473593)))))

(declare-fun b!1414373 () Bool)

(declare-fun e!902883 () List!14516)

(assert (=> b!1414373 (= e!902883 (Cons!14450 (h!19851 lt!473593) (++!3767 (t!123793 lt!473593) lt!473638)))))

(declare-fun d!404880 () Bool)

(assert (=> d!404880 e!902882))

(declare-fun res!640596 () Bool)

(assert (=> d!404880 (=> (not res!640596) (not e!902882))))

(assert (=> d!404880 (= res!640596 (= (content!2141 lt!474593) ((_ map or) (content!2141 lt!473593) (content!2141 lt!473638))))))

(assert (=> d!404880 (= lt!474593 e!902883)))

(declare-fun c!232416 () Bool)

(assert (=> d!404880 (= c!232416 ((_ is Nil!14450) lt!473593))))

(assert (=> d!404880 (= (++!3767 lt!473593 lt!473638) lt!474593)))

(declare-fun b!1414374 () Bool)

(declare-fun res!640595 () Bool)

(assert (=> b!1414374 (=> (not res!640595) (not e!902882))))

(assert (=> b!1414374 (= res!640595 (= (size!11916 lt!474593) (+ (size!11916 lt!473593) (size!11916 lt!473638))))))

(declare-fun b!1414372 () Bool)

(assert (=> b!1414372 (= e!902883 lt!473638)))

(assert (= (and d!404880 c!232416) b!1414372))

(assert (= (and d!404880 (not c!232416)) b!1414373))

(assert (= (and d!404880 res!640596) b!1414374))

(assert (= (and b!1414374 res!640595) b!1414375))

(declare-fun m!1598217 () Bool)

(assert (=> b!1414373 m!1598217))

(declare-fun m!1598219 () Bool)

(assert (=> d!404880 m!1598219))

(declare-fun m!1598221 () Bool)

(assert (=> d!404880 m!1598221))

(declare-fun m!1598223 () Bool)

(assert (=> d!404880 m!1598223))

(declare-fun m!1598225 () Bool)

(assert (=> b!1414374 m!1598225))

(declare-fun m!1598227 () Bool)

(assert (=> b!1414374 m!1598227))

(declare-fun m!1598229 () Bool)

(assert (=> b!1414374 m!1598229))

(assert (=> b!1413416 d!404880))

(declare-fun lt!474594 () List!14516)

(declare-fun b!1414379 () Bool)

(declare-fun e!902884 () Bool)

(assert (=> b!1414379 (= e!902884 (or (not (= (ite c!232259 lt!473637 lt!473614) Nil!14450)) (= lt!474594 (ite c!232259 lt!473649 lt!473639))))))

(declare-fun e!902885 () List!14516)

(declare-fun b!1414377 () Bool)

(assert (=> b!1414377 (= e!902885 (Cons!14450 (h!19851 (ite c!232259 lt!473649 lt!473639)) (++!3767 (t!123793 (ite c!232259 lt!473649 lt!473639)) (ite c!232259 lt!473637 lt!473614))))))

(declare-fun d!404882 () Bool)

(assert (=> d!404882 e!902884))

(declare-fun res!640598 () Bool)

(assert (=> d!404882 (=> (not res!640598) (not e!902884))))

(assert (=> d!404882 (= res!640598 (= (content!2141 lt!474594) ((_ map or) (content!2141 (ite c!232259 lt!473649 lt!473639)) (content!2141 (ite c!232259 lt!473637 lt!473614)))))))

(assert (=> d!404882 (= lt!474594 e!902885)))

(declare-fun c!232417 () Bool)

(assert (=> d!404882 (= c!232417 ((_ is Nil!14450) (ite c!232259 lt!473649 lt!473639)))))

(assert (=> d!404882 (= (++!3767 (ite c!232259 lt!473649 lt!473639) (ite c!232259 lt!473637 lt!473614)) lt!474594)))

(declare-fun b!1414378 () Bool)

(declare-fun res!640597 () Bool)

(assert (=> b!1414378 (=> (not res!640597) (not e!902884))))

(assert (=> b!1414378 (= res!640597 (= (size!11916 lt!474594) (+ (size!11916 (ite c!232259 lt!473649 lt!473639)) (size!11916 (ite c!232259 lt!473637 lt!473614)))))))

(declare-fun b!1414376 () Bool)

(assert (=> b!1414376 (= e!902885 (ite c!232259 lt!473637 lt!473614))))

(assert (= (and d!404882 c!232417) b!1414376))

(assert (= (and d!404882 (not c!232417)) b!1414377))

(assert (= (and d!404882 res!640598) b!1414378))

(assert (= (and b!1414378 res!640597) b!1414379))

(declare-fun m!1598231 () Bool)

(assert (=> b!1414377 m!1598231))

(declare-fun m!1598233 () Bool)

(assert (=> d!404882 m!1598233))

(declare-fun m!1598235 () Bool)

(assert (=> d!404882 m!1598235))

(declare-fun m!1598237 () Bool)

(assert (=> d!404882 m!1598237))

(declare-fun m!1598239 () Bool)

(assert (=> b!1414378 m!1598239))

(declare-fun m!1598241 () Bool)

(assert (=> b!1414378 m!1598241))

(declare-fun m!1598243 () Bool)

(assert (=> b!1414378 m!1598243))

(assert (=> bm!95043 d!404882))

(declare-fun d!404884 () Bool)

(declare-fun e!902886 () Bool)

(assert (=> d!404884 e!902886))

(declare-fun res!640599 () Bool)

(assert (=> d!404884 (=> (not res!640599) (not e!902886))))

(assert (=> d!404884 (= res!640599 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (print!962 Lexer!2193 (seqFromList!1670 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))) (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))

(declare-fun lt!474601 () Unit!20997)

(declare-fun e!902887 () Unit!20997)

(assert (=> d!404884 (= lt!474601 e!902887)))

(declare-fun c!232418 () Bool)

(assert (=> d!404884 (= c!232418 (or ((_ is Nil!14450) (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))) ((_ is Nil!14450) (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))))

(assert (=> d!404884 (not (isEmpty!8846 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229))))))

(assert (=> d!404884 (= (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))) lt!474601)))

(declare-fun b!1414380 () Bool)

(declare-fun Unit!21132 () Unit!20997)

(assert (=> b!1414380 (= e!902887 Unit!21132)))

(declare-fun b!1414381 () Bool)

(declare-fun Unit!21133 () Unit!20997)

(assert (=> b!1414381 (= e!902887 Unit!21133)))

(declare-fun lt!474599 () BalanceConc!9554)

(assert (=> b!1414381 (= lt!474599 (print!962 Lexer!2193 (seqFromList!1670 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))))

(declare-fun lt!474612 () BalanceConc!9554)

(assert (=> b!1414381 (= lt!474612 (print!962 Lexer!2193 (seqFromList!1670 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))))

(declare-fun lt!474614 () tuple2!13984)

(assert (=> b!1414381 (= lt!474614 (lex!1008 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) lt!474612))))

(declare-fun lt!474596 () List!14515)

(assert (=> b!1414381 (= lt!474596 (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))))

(declare-fun lt!474617 () List!14515)

(assert (=> b!1414381 (= lt!474617 (list!5671 lt!474612))))

(declare-fun lt!474606 () Unit!20997)

(assert (=> b!1414381 (= lt!474606 (lemmaConcatTwoListThenFirstIsPrefix!734 lt!474596 lt!474617))))

(assert (=> b!1414381 (isPrefix!1167 lt!474596 (++!3768 lt!474596 lt!474617))))

(declare-fun lt!474608 () Unit!20997)

(assert (=> b!1414381 (= lt!474608 lt!474606)))

(declare-fun lt!474597 () Unit!20997)

(assert (=> b!1414381 (= lt!474597 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))))

(declare-fun lt!474605 () Unit!20997)

(assert (=> b!1414381 (= lt!474605 (seqFromListBHdTlConstructive!63 (h!19851 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))) (t!123793 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))) (_1!7878 lt!474614)))))

(assert (=> b!1414381 (= (list!5672 (_1!7878 lt!474614)) (list!5672 (prepend!379 (seqFromList!1670 (t!123793 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))) (h!19851 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))))))

(declare-fun lt!474607 () Unit!20997)

(assert (=> b!1414381 (= lt!474607 lt!474605)))

(declare-fun lt!474619 () Option!2771)

(assert (=> b!1414381 (= lt!474619 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (list!5671 lt!474599)))))

(assert (=> b!1414381 (= (print!962 Lexer!2193 (singletonSeq!1159 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))) (printTailRec!635 Lexer!2193 (singletonSeq!1159 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))) 0 (BalanceConc!9555 Empty!4807)))))

(declare-fun lt!474595 () Unit!20997)

(declare-fun Unit!21135 () Unit!20997)

(assert (=> b!1414381 (= lt!474595 Unit!21135)))

(declare-fun lt!474600 () Unit!20997)

(assert (=> b!1414381 (= lt!474600 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!207 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))) (list!5671 lt!474612)))))

(assert (=> b!1414381 (= (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))) (originalCharacters!3373 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))))

(declare-fun lt!474611 () Unit!20997)

(declare-fun Unit!21137 () Unit!20997)

(assert (=> b!1414381 (= lt!474611 Unit!21137)))

(assert (=> b!1414381 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))) 0))) (Cons!14449 (head!2698 (originalCharacters!3373 (h!19851 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))) Nil!14449))))

(declare-fun lt!474598 () Unit!20997)

(declare-fun Unit!21138 () Unit!20997)

(assert (=> b!1414381 (= lt!474598 Unit!21138)))

(assert (=> b!1414381 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))) 0))) (Cons!14449 (head!2698 (list!5671 lt!474612)) Nil!14449))))

(declare-fun lt!474602 () Unit!20997)

(declare-fun Unit!21139 () Unit!20997)

(assert (=> b!1414381 (= lt!474602 Unit!21139)))

(assert (=> b!1414381 (= (list!5671 (singletonSeq!1160 (apply!3704 (charsOf!1470 (h!19851 (t!123793 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))) 0))) (Cons!14449 (head!2699 lt!474612) Nil!14449))))

(declare-fun lt!474609 () Unit!20997)

(declare-fun Unit!21140 () Unit!20997)

(assert (=> b!1414381 (= lt!474609 Unit!21140)))

(assert (=> b!1414381 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (originalCharacters!3373 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))))

(declare-fun lt!474613 () Unit!20997)

(declare-fun Unit!21141 () Unit!20997)

(assert (=> b!1414381 (= lt!474613 Unit!21141)))

(assert (=> b!1414381 (isDefined!2258 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))))))

(declare-fun lt!474620 () Unit!20997)

(declare-fun Unit!21142 () Unit!20997)

(assert (=> b!1414381 (= lt!474620 Unit!21142)))

(declare-fun lt!474603 () Unit!20997)

(declare-fun Unit!21143 () Unit!20997)

(assert (=> b!1414381 (= lt!474603 Unit!21143)))

(assert (=> b!1414381 (= (_1!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))))) (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))

(declare-fun lt!474616 () Unit!20997)

(declare-fun Unit!21144 () Unit!20997)

(assert (=> b!1414381 (= lt!474616 Unit!21144)))

(assert (=> b!1414381 (isEmpty!8847 (_2!7879 (get!4444 (maxPrefix!1157 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))))))))

(declare-fun lt!474615 () Unit!20997)

(declare-fun Unit!21146 () Unit!20997)

(assert (=> b!1414381 (= lt!474615 Unit!21146)))

(assert (=> b!1414381 (matchR!1793 (regex!2511 (rule!4274 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))) (list!5671 (charsOf!1470 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))))

(declare-fun lt!474618 () Unit!20997)

(declare-fun Unit!21147 () Unit!20997)

(assert (=> b!1414381 (= lt!474618 Unit!21147)))

(assert (=> b!1414381 (= (rule!4274 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))) (rule!4274 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))))))

(declare-fun lt!474610 () Unit!20997)

(declare-fun Unit!21148 () Unit!20997)

(assert (=> b!1414381 (= lt!474610 Unit!21148)))

(declare-fun lt!474604 () Unit!20997)

(assert (=> b!1414381 (= lt!474604 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!5 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))) (rule!4274 (h!19851 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049)))) (list!5671 lt!474612)))))

(declare-fun b!1414382 () Bool)

(assert (=> b!1414382 (= e!902886 (isEmpty!8850 (_2!7878 (lex!1008 Lexer!2193 (ite c!232257 (rules!11032 (v!21893 lt!473262)) (rules!11032 acc!229)) (print!962 Lexer!2193 (seqFromList!1670 (ite c!232257 call!95027 (ite c!232259 call!95025 call!95049))))))))))

(assert (= (and d!404884 c!232418) b!1414380))

(assert (= (and d!404884 (not c!232418)) b!1414381))

(assert (= (and d!404884 res!640599) b!1414382))

(declare-fun m!1598245 () Bool)

(assert (=> d!404884 m!1598245))

(declare-fun m!1598247 () Bool)

(assert (=> d!404884 m!1598247))

(declare-fun m!1598249 () Bool)

(assert (=> d!404884 m!1598249))

(declare-fun m!1598251 () Bool)

(assert (=> d!404884 m!1598251))

(declare-fun m!1598253 () Bool)

(assert (=> d!404884 m!1598253))

(assert (=> d!404884 m!1598253))

(assert (=> d!404884 m!1598247))

(declare-fun m!1598255 () Bool)

(assert (=> b!1414381 m!1598255))

(declare-fun m!1598257 () Bool)

(assert (=> b!1414381 m!1598257))

(declare-fun m!1598259 () Bool)

(assert (=> b!1414381 m!1598259))

(declare-fun m!1598261 () Bool)

(assert (=> b!1414381 m!1598261))

(declare-fun m!1598263 () Bool)

(assert (=> b!1414381 m!1598263))

(declare-fun m!1598265 () Bool)

(assert (=> b!1414381 m!1598265))

(declare-fun m!1598267 () Bool)

(assert (=> b!1414381 m!1598267))

(declare-fun m!1598269 () Bool)

(assert (=> b!1414381 m!1598269))

(declare-fun m!1598271 () Bool)

(assert (=> b!1414381 m!1598271))

(assert (=> b!1414381 m!1598257))

(declare-fun m!1598273 () Bool)

(assert (=> b!1414381 m!1598273))

(assert (=> b!1414381 m!1598255))

(declare-fun m!1598275 () Bool)

(assert (=> b!1414381 m!1598275))

(declare-fun m!1598277 () Bool)

(assert (=> b!1414381 m!1598277))

(declare-fun m!1598279 () Bool)

(assert (=> b!1414381 m!1598279))

(assert (=> b!1414381 m!1598255))

(declare-fun m!1598281 () Bool)

(assert (=> b!1414381 m!1598281))

(declare-fun m!1598283 () Bool)

(assert (=> b!1414381 m!1598283))

(declare-fun m!1598285 () Bool)

(assert (=> b!1414381 m!1598285))

(declare-fun m!1598287 () Bool)

(assert (=> b!1414381 m!1598287))

(assert (=> b!1414381 m!1598285))

(assert (=> b!1414381 m!1598257))

(assert (=> b!1414381 m!1598287))

(assert (=> b!1414381 m!1598263))

(declare-fun m!1598289 () Bool)

(assert (=> b!1414381 m!1598289))

(declare-fun m!1598291 () Bool)

(assert (=> b!1414381 m!1598291))

(declare-fun m!1598293 () Bool)

(assert (=> b!1414381 m!1598293))

(declare-fun m!1598295 () Bool)

(assert (=> b!1414381 m!1598295))

(assert (=> b!1414381 m!1598257))

(declare-fun m!1598297 () Bool)

(assert (=> b!1414381 m!1598297))

(declare-fun m!1598299 () Bool)

(assert (=> b!1414381 m!1598299))

(assert (=> b!1414381 m!1598293))

(assert (=> b!1414381 m!1598267))

(declare-fun m!1598301 () Bool)

(assert (=> b!1414381 m!1598301))

(declare-fun m!1598303 () Bool)

(assert (=> b!1414381 m!1598303))

(declare-fun m!1598305 () Bool)

(assert (=> b!1414381 m!1598305))

(declare-fun m!1598307 () Bool)

(assert (=> b!1414381 m!1598307))

(declare-fun m!1598309 () Bool)

(assert (=> b!1414381 m!1598309))

(declare-fun m!1598311 () Bool)

(assert (=> b!1414381 m!1598311))

(assert (=> b!1414381 m!1598305))

(declare-fun m!1598313 () Bool)

(assert (=> b!1414381 m!1598313))

(declare-fun m!1598315 () Bool)

(assert (=> b!1414381 m!1598315))

(assert (=> b!1414381 m!1598275))

(declare-fun m!1598317 () Bool)

(assert (=> b!1414381 m!1598317))

(assert (=> b!1414381 m!1598303))

(assert (=> b!1414381 m!1598255))

(assert (=> b!1414381 m!1598289))

(assert (=> b!1414381 m!1598277))

(declare-fun m!1598319 () Bool)

(assert (=> b!1414381 m!1598319))

(assert (=> b!1414381 m!1598299))

(assert (=> b!1414381 m!1598253))

(assert (=> b!1414381 m!1598305))

(declare-fun m!1598321 () Bool)

(assert (=> b!1414381 m!1598321))

(assert (=> b!1414381 m!1598275))

(declare-fun m!1598323 () Bool)

(assert (=> b!1414381 m!1598323))

(assert (=> b!1414381 m!1598309))

(assert (=> b!1414381 m!1598253))

(assert (=> b!1414381 m!1598247))

(declare-fun m!1598325 () Bool)

(assert (=> b!1414381 m!1598325))

(assert (=> b!1414382 m!1598253))

(assert (=> b!1414382 m!1598253))

(assert (=> b!1414382 m!1598247))

(assert (=> b!1414382 m!1598247))

(assert (=> b!1414382 m!1598249))

(declare-fun m!1598327 () Bool)

(assert (=> b!1414382 m!1598327))

(assert (=> bm!95057 d!404884))

(assert (=> b!1413300 d!404336))

(declare-fun d!404886 () Bool)

(declare-fun e!902888 () Bool)

(assert (=> d!404886 e!902888))

(declare-fun res!640600 () Bool)

(assert (=> d!404886 (=> (not res!640600) (not e!902888))))

(declare-fun lt!474621 () BalanceConc!9554)

(assert (=> d!404886 (= res!640600 (= (list!5672 (_1!7878 (lex!1008 Lexer!2193 (rules!11032 (ite c!232257 acc!229 (v!21893 lt!473262))) lt!474621))) (list!5672 (tokens!1762 (ite c!232257 acc!229 (v!21893 lt!473262))))))))

(assert (=> d!404886 (= lt!474621 (print!962 Lexer!2193 (tokens!1762 (ite c!232257 acc!229 (v!21893 lt!473262)))))))

(declare-fun lt!474622 () Unit!20997)

(assert (=> d!404886 (= lt!474622 (theoremInvertabilityWhenTokenListSeparable!23 Lexer!2193 (rules!11032 (ite c!232257 acc!229 (v!21893 lt!473262))) (list!5672 (tokens!1762 (ite c!232257 acc!229 (v!21893 lt!473262))))))))

(assert (=> d!404886 (= (print!961 (ite c!232257 acc!229 (v!21893 lt!473262))) lt!474621)))

(declare-fun b!1414383 () Bool)

(assert (=> b!1414383 (= e!902888 (isEmpty!8847 (list!5671 (_2!7878 (lex!1008 Lexer!2193 (rules!11032 (ite c!232257 acc!229 (v!21893 lt!473262))) lt!474621)))))))

(assert (= (and d!404886 res!640600) b!1414383))

(declare-fun m!1598329 () Bool)

(assert (=> d!404886 m!1598329))

(declare-fun m!1598331 () Bool)

(assert (=> d!404886 m!1598331))

(declare-fun m!1598333 () Bool)

(assert (=> d!404886 m!1598333))

(assert (=> d!404886 m!1598329))

(declare-fun m!1598335 () Bool)

(assert (=> d!404886 m!1598335))

(declare-fun m!1598337 () Bool)

(assert (=> d!404886 m!1598337))

(assert (=> b!1414383 m!1598333))

(declare-fun m!1598339 () Bool)

(assert (=> b!1414383 m!1598339))

(assert (=> b!1414383 m!1598339))

(declare-fun m!1598341 () Bool)

(assert (=> b!1414383 m!1598341))

(assert (=> bm!95029 d!404886))

(declare-fun d!404888 () Bool)

(assert (=> d!404888 (= (list!5673 lt!473799) (list!5676 (c!232209 lt!473799)))))

(declare-fun bs!339263 () Bool)

(assert (= bs!339263 d!404888))

(declare-fun m!1598343 () Bool)

(assert (=> bs!339263 m!1598343))

(assert (=> b!1413483 d!404888))

(declare-fun d!404890 () Bool)

(assert (=> d!404890 (= (tail!2074 (list!5673 objs!24)) (t!123795 (list!5673 objs!24)))))

(assert (=> b!1413483 d!404890))

(assert (=> b!1413483 d!404620))

(declare-fun c!232419 () Bool)

(declare-fun d!404892 () Bool)

(assert (=> d!404892 (= c!232419 ((_ is Cons!14450) (ite c!232257 lt!473617 (ite c!232259 (t!123793 lt!473605) lt!473614))))))

(declare-fun e!902889 () List!14515)

(assert (=> d!404892 (= (printList!653 (ite c!232257 lt!473642 (ite c!232259 Lexer!2193 lt!473627)) (ite c!232257 lt!473617 (ite c!232259 (t!123793 lt!473605) lt!473614))) e!902889)))

(declare-fun b!1414384 () Bool)

(assert (=> b!1414384 (= e!902889 (++!3768 (list!5671 (charsOf!1470 (h!19851 (ite c!232257 lt!473617 (ite c!232259 (t!123793 lt!473605) lt!473614))))) (printList!653 (ite c!232257 lt!473642 (ite c!232259 Lexer!2193 lt!473627)) (t!123793 (ite c!232257 lt!473617 (ite c!232259 (t!123793 lt!473605) lt!473614))))))))

(declare-fun b!1414385 () Bool)

(assert (=> b!1414385 (= e!902889 Nil!14449)))

(assert (= (and d!404892 c!232419) b!1414384))

(assert (= (and d!404892 (not c!232419)) b!1414385))

(declare-fun m!1598345 () Bool)

(assert (=> b!1414384 m!1598345))

(assert (=> b!1414384 m!1598345))

(declare-fun m!1598347 () Bool)

(assert (=> b!1414384 m!1598347))

(declare-fun m!1598349 () Bool)

(assert (=> b!1414384 m!1598349))

(assert (=> b!1414384 m!1598347))

(assert (=> b!1414384 m!1598349))

(declare-fun m!1598351 () Bool)

(assert (=> b!1414384 m!1598351))

(assert (=> bm!95035 d!404892))

(declare-fun d!404894 () Bool)

(declare-fun res!640601 () Bool)

(declare-fun e!902890 () Bool)

(assert (=> d!404894 (=> (not res!640601) (not e!902890))))

(assert (=> d!404894 (= res!640601 (<= (size!11916 (list!5683 (xs!7535 (c!232208 (tokens!1762 acc!229))))) 512))))

(assert (=> d!404894 (= (inv!18914 (c!232208 (tokens!1762 acc!229))) e!902890)))

(declare-fun b!1414386 () Bool)

(declare-fun res!640602 () Bool)

(assert (=> b!1414386 (=> (not res!640602) (not e!902890))))

(assert (=> b!1414386 (= res!640602 (= (csize!9847 (c!232208 (tokens!1762 acc!229))) (size!11916 (list!5683 (xs!7535 (c!232208 (tokens!1762 acc!229)))))))))

(declare-fun b!1414387 () Bool)

(assert (=> b!1414387 (= e!902890 (and (> (csize!9847 (c!232208 (tokens!1762 acc!229))) 0) (<= (csize!9847 (c!232208 (tokens!1762 acc!229))) 512)))))

(assert (= (and d!404894 res!640601) b!1414386))

(assert (= (and b!1414386 res!640602) b!1414387))

(declare-fun m!1598353 () Bool)

(assert (=> d!404894 m!1598353))

(assert (=> d!404894 m!1598353))

(declare-fun m!1598355 () Bool)

(assert (=> d!404894 m!1598355))

(assert (=> b!1414386 m!1598353))

(assert (=> b!1414386 m!1598353))

(assert (=> b!1414386 m!1598355))

(assert (=> b!1413558 d!404894))

(declare-fun d!404896 () Bool)

(assert (=> d!404896 (= (printList!653 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473774)) (++!3767 (ite c!232275 lt!473720 (ite c!232277 lt!473780 lt!473724)) (ite c!232275 lt!473748 (ite c!232277 lt!473768 lt!473769)))) (++!3768 (printList!653 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473774)) (ite c!232275 lt!473720 (ite c!232277 lt!473780 lt!473724))) (printList!653 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473774)) (ite c!232275 lt!473748 (ite c!232277 lt!473768 lt!473769)))))))

(declare-fun lt!474623 () Unit!20997)

(assert (=> d!404896 (= lt!474623 (choose!8726 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473774)) (ite c!232275 lt!473720 (ite c!232277 lt!473780 lt!473724)) (ite c!232275 lt!473748 (ite c!232277 lt!473768 lt!473769))))))

(assert (=> d!404896 (= (lemmaPrintConcatSameAsConcatPrint!18 (ite c!232275 lt!473773 (ite c!232277 lt!473729 lt!473774)) (ite c!232275 lt!473720 (ite c!232277 lt!473780 lt!473724)) (ite c!232275 lt!473748 (ite c!232277 lt!473768 lt!473769))) lt!474623)))

(declare-fun bs!339264 () Bool)

(assert (= bs!339264 d!404896))

(declare-fun m!1598357 () Bool)

(assert (=> bs!339264 m!1598357))

(declare-fun m!1598359 () Bool)

(assert (=> bs!339264 m!1598359))

(declare-fun m!1598361 () Bool)

(assert (=> bs!339264 m!1598361))

(declare-fun m!1598363 () Bool)

(assert (=> bs!339264 m!1598363))

(declare-fun m!1598365 () Bool)

(assert (=> bs!339264 m!1598365))

(assert (=> bs!339264 m!1598363))

(assert (=> bs!339264 m!1598359))

(declare-fun m!1598367 () Bool)

(assert (=> bs!339264 m!1598367))

(assert (=> bs!339264 m!1598361))

(assert (=> bm!95110 d!404896))

(declare-fun d!404898 () Bool)

(assert (=> d!404898 (= (separableTokens!177 Lexer!2193 (tokens!1762 acc!229) (rules!11032 acc!229)) (tokensListTwoByTwoPredicateSeparable!92 Lexer!2193 (tokens!1762 acc!229) 0 (rules!11032 acc!229)))))

(declare-fun bs!339265 () Bool)

(assert (= bs!339265 d!404898))

(declare-fun m!1598369 () Bool)

(assert (=> bs!339265 m!1598369))

(assert (=> b!1413543 d!404898))

(declare-fun d!404900 () Bool)

(assert (=> d!404900 (= (list!5671 call!95041) (list!5674 (c!232207 call!95041)))))

(declare-fun bs!339266 () Bool)

(assert (= bs!339266 d!404900))

(declare-fun m!1598371 () Bool)

(assert (=> bs!339266 m!1598371))

(assert (=> bm!95022 d!404900))

(declare-fun d!404902 () Bool)

(declare-fun lt!474624 () BalanceConc!9554)

(assert (=> d!404902 (= (list!5671 lt!474624) (printList!653 Lexer!2193 (list!5672 (tokens!1762 acc!229))))))

(assert (=> d!404902 (= lt!474624 (printTailRec!635 Lexer!2193 (tokens!1762 acc!229) 0 (BalanceConc!9555 Empty!4807)))))

(assert (=> d!404902 (= (print!962 Lexer!2193 (tokens!1762 acc!229)) lt!474624)))

(declare-fun bs!339267 () Bool)

(assert (= bs!339267 d!404902))

(declare-fun m!1598373 () Bool)

(assert (=> bs!339267 m!1598373))

(assert (=> bs!339267 m!1594969))

(assert (=> bs!339267 m!1594969))

(declare-fun m!1598375 () Bool)

(assert (=> bs!339267 m!1598375))

(declare-fun m!1598377 () Bool)

(assert (=> bs!339267 m!1598377))

(assert (=> bm!95038 d!404902))

(declare-fun lt!474625 () List!14516)

(declare-fun e!902891 () Bool)

(declare-fun b!1414391 () Bool)

(assert (=> b!1414391 (= e!902891 (or (not (= (ite c!232275 lt!473748 lt!473753) Nil!14450)) (= lt!474625 (ite c!232275 lt!473720 lt!473738))))))

(declare-fun b!1414389 () Bool)

(declare-fun e!902892 () List!14516)

(assert (=> b!1414389 (= e!902892 (Cons!14450 (h!19851 (ite c!232275 lt!473720 lt!473738)) (++!3767 (t!123793 (ite c!232275 lt!473720 lt!473738)) (ite c!232275 lt!473748 lt!473753))))))

(declare-fun d!404904 () Bool)

(assert (=> d!404904 e!902891))

(declare-fun res!640604 () Bool)

(assert (=> d!404904 (=> (not res!640604) (not e!902891))))

(assert (=> d!404904 (= res!640604 (= (content!2141 lt!474625) ((_ map or) (content!2141 (ite c!232275 lt!473720 lt!473738)) (content!2141 (ite c!232275 lt!473748 lt!473753)))))))

(assert (=> d!404904 (= lt!474625 e!902892)))

(declare-fun c!232420 () Bool)

(assert (=> d!404904 (= c!232420 ((_ is Nil!14450) (ite c!232275 lt!473720 lt!473738)))))

(assert (=> d!404904 (= (++!3767 (ite c!232275 lt!473720 lt!473738) (ite c!232275 lt!473748 lt!473753)) lt!474625)))

(declare-fun b!1414390 () Bool)

(declare-fun res!640603 () Bool)

(assert (=> b!1414390 (=> (not res!640603) (not e!902891))))

(assert (=> b!1414390 (= res!640603 (= (size!11916 lt!474625) (+ (size!11916 (ite c!232275 lt!473720 lt!473738)) (size!11916 (ite c!232275 lt!473748 lt!473753)))))))

(declare-fun b!1414388 () Bool)

(assert (=> b!1414388 (= e!902892 (ite c!232275 lt!473748 lt!473753))))

(assert (= (and d!404904 c!232420) b!1414388))

(assert (= (and d!404904 (not c!232420)) b!1414389))

(assert (= (and d!404904 res!640604) b!1414390))

(assert (= (and b!1414390 res!640603) b!1414391))

(declare-fun m!1598379 () Bool)

(assert (=> b!1414389 m!1598379))

(declare-fun m!1598381 () Bool)

(assert (=> d!404904 m!1598381))

(declare-fun m!1598383 () Bool)

(assert (=> d!404904 m!1598383))

(declare-fun m!1598385 () Bool)

(assert (=> d!404904 m!1598385))

(declare-fun m!1598387 () Bool)

(assert (=> b!1414390 m!1598387))

(declare-fun m!1598389 () Bool)

(assert (=> b!1414390 m!1598389))

(declare-fun m!1598391 () Bool)

(assert (=> b!1414390 m!1598391))

(assert (=> bm!95103 d!404904))

(declare-fun d!404906 () Bool)

(declare-fun e!902894 () Bool)

(assert (=> d!404906 e!902894))

(declare-fun res!640605 () Bool)

(assert (=> d!404906 (=> (not res!640605) (not e!902894))))

(declare-fun lt!474626 () List!14515)

(assert (=> d!404906 (= res!640605 (= (content!2140 lt!474626) ((_ map or) (content!2140 (ite c!232275 call!95133 (ite c!232277 call!95121 call!95109))) (content!2140 (ite c!232275 call!95113 call!95123)))))))

(declare-fun e!902893 () List!14515)

(assert (=> d!404906 (= lt!474626 e!902893)))

(declare-fun c!232421 () Bool)

(assert (=> d!404906 (= c!232421 ((_ is Nil!14449) (ite c!232275 call!95133 (ite c!232277 call!95121 call!95109))))))

(assert (=> d!404906 (= (++!3768 (ite c!232275 call!95133 (ite c!232277 call!95121 call!95109)) (ite c!232275 call!95113 call!95123)) lt!474626)))

(declare-fun b!1414395 () Bool)

(assert (=> b!1414395 (= e!902894 (or (not (= (ite c!232275 call!95113 call!95123) Nil!14449)) (= lt!474626 (ite c!232275 call!95133 (ite c!232277 call!95121 call!95109)))))))

(declare-fun b!1414394 () Bool)

(declare-fun res!640606 () Bool)

(assert (=> b!1414394 (=> (not res!640606) (not e!902894))))

(assert (=> b!1414394 (= res!640606 (= (size!11915 lt!474626) (+ (size!11915 (ite c!232275 call!95133 (ite c!232277 call!95121 call!95109))) (size!11915 (ite c!232275 call!95113 call!95123)))))))

(declare-fun b!1414393 () Bool)

(assert (=> b!1414393 (= e!902893 (Cons!14449 (h!19850 (ite c!232275 call!95133 (ite c!232277 call!95121 call!95109))) (++!3768 (t!123792 (ite c!232275 call!95133 (ite c!232277 call!95121 call!95109))) (ite c!232275 call!95113 call!95123))))))

(declare-fun b!1414392 () Bool)

(assert (=> b!1414392 (= e!902893 (ite c!232275 call!95113 call!95123))))

(assert (= (and d!404906 c!232421) b!1414392))

(assert (= (and d!404906 (not c!232421)) b!1414393))

(assert (= (and d!404906 res!640605) b!1414394))

(assert (= (and b!1414394 res!640606) b!1414395))

(declare-fun m!1598393 () Bool)

(assert (=> d!404906 m!1598393))

(declare-fun m!1598395 () Bool)

(assert (=> d!404906 m!1598395))

(declare-fun m!1598397 () Bool)

(assert (=> d!404906 m!1598397))

(declare-fun m!1598399 () Bool)

(assert (=> b!1414394 m!1598399))

(declare-fun m!1598401 () Bool)

(assert (=> b!1414394 m!1598401))

(declare-fun m!1598403 () Bool)

(assert (=> b!1414394 m!1598403))

(declare-fun m!1598405 () Bool)

(assert (=> b!1414393 m!1598405))

(assert (=> bm!95117 d!404906))

(declare-fun d!404908 () Bool)

(declare-fun lt!474631 () BalanceConc!9554)

(assert (=> d!404908 (= (list!5671 lt!474631) (printListTailRec!260 Lexer!2193 (dropList!433 (tokens!1762 sep!3) 0) (list!5671 (BalanceConc!9555 Empty!4807))))))

(declare-fun e!902895 () BalanceConc!9554)

(assert (=> d!404908 (= lt!474631 e!902895)))

(declare-fun c!232422 () Bool)

(assert (=> d!404908 (= c!232422 (>= 0 (size!11918 (tokens!1762 sep!3))))))

(declare-fun e!902896 () Bool)

(assert (=> d!404908 e!902896))

(declare-fun res!640607 () Bool)

(assert (=> d!404908 (=> (not res!640607) (not e!902896))))

(assert (=> d!404908 (= res!640607 (>= 0 0))))

(assert (=> d!404908 (= (printTailRec!635 Lexer!2193 (tokens!1762 sep!3) 0 (BalanceConc!9555 Empty!4807)) lt!474631)))

(declare-fun b!1414396 () Bool)

(assert (=> b!1414396 (= e!902896 (<= 0 (size!11918 (tokens!1762 sep!3))))))

(declare-fun b!1414397 () Bool)

(assert (=> b!1414397 (= e!902895 (BalanceConc!9555 Empty!4807))))

(declare-fun b!1414398 () Bool)

(assert (=> b!1414398 (= e!902895 (printTailRec!635 Lexer!2193 (tokens!1762 sep!3) (+ 0 1) (++!3770 (BalanceConc!9555 Empty!4807) (charsOf!1470 (apply!3702 (tokens!1762 sep!3) 0)))))))

(declare-fun lt!474633 () List!14516)

(assert (=> b!1414398 (= lt!474633 (list!5672 (tokens!1762 sep!3)))))

(declare-fun lt!474630 () Unit!20997)

(assert (=> b!1414398 (= lt!474630 (lemmaDropApply!455 lt!474633 0))))

(assert (=> b!1414398 (= (head!2697 (drop!700 lt!474633 0)) (apply!3703 lt!474633 0))))

(declare-fun lt!474628 () Unit!20997)

(assert (=> b!1414398 (= lt!474628 lt!474630)))

(declare-fun lt!474627 () List!14516)

(assert (=> b!1414398 (= lt!474627 (list!5672 (tokens!1762 sep!3)))))

(declare-fun lt!474632 () Unit!20997)

(assert (=> b!1414398 (= lt!474632 (lemmaDropTail!435 lt!474627 0))))

(assert (=> b!1414398 (= (tail!2075 (drop!700 lt!474627 0)) (drop!700 lt!474627 (+ 0 1)))))

(declare-fun lt!474629 () Unit!20997)

(assert (=> b!1414398 (= lt!474629 lt!474632)))

(assert (= (and d!404908 res!640607) b!1414396))

(assert (= (and d!404908 c!232422) b!1414397))

(assert (= (and d!404908 (not c!232422)) b!1414398))

(declare-fun m!1598407 () Bool)

(assert (=> d!404908 m!1598407))

(declare-fun m!1598409 () Bool)

(assert (=> d!404908 m!1598409))

(assert (=> d!404908 m!1598407))

(assert (=> d!404908 m!1595701))

(declare-fun m!1598411 () Bool)

(assert (=> d!404908 m!1598411))

(assert (=> d!404908 m!1595701))

(declare-fun m!1598413 () Bool)

(assert (=> d!404908 m!1598413))

(assert (=> b!1414396 m!1598409))

(declare-fun m!1598415 () Bool)

(assert (=> b!1414398 m!1598415))

(declare-fun m!1598417 () Bool)

(assert (=> b!1414398 m!1598417))

(declare-fun m!1598419 () Bool)

(assert (=> b!1414398 m!1598419))

(declare-fun m!1598421 () Bool)

(assert (=> b!1414398 m!1598421))

(declare-fun m!1598423 () Bool)

(assert (=> b!1414398 m!1598423))

(declare-fun m!1598425 () Bool)

(assert (=> b!1414398 m!1598425))

(declare-fun m!1598427 () Bool)

(assert (=> b!1414398 m!1598427))

(declare-fun m!1598429 () Bool)

(assert (=> b!1414398 m!1598429))

(declare-fun m!1598431 () Bool)

(assert (=> b!1414398 m!1598431))

(assert (=> b!1414398 m!1595213))

(declare-fun m!1598433 () Bool)

(assert (=> b!1414398 m!1598433))

(declare-fun m!1598435 () Bool)

(assert (=> b!1414398 m!1598435))

(assert (=> b!1414398 m!1598425))

(declare-fun m!1598437 () Bool)

(assert (=> b!1414398 m!1598437))

(assert (=> b!1414398 m!1598429))

(assert (=> b!1414398 m!1598417))

(assert (=> b!1414398 m!1598433))

(assert (=> b!1414398 m!1598437))

(assert (=> bm!95099 d!404908))

(declare-fun d!404910 () Bool)

(assert (=> d!404910 (= (list!5672 (ite c!232275 (tokens!1762 sep!3) (ite c!232277 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3)))) (list!5675 (c!232208 (ite c!232275 (tokens!1762 sep!3) (ite c!232277 (tokens!1762 (head!2690 objs!24)) (tokens!1762 sep!3))))))))

(declare-fun bs!339268 () Bool)

(assert (= bs!339268 d!404910))

(declare-fun m!1598439 () Bool)

(assert (=> bs!339268 m!1598439))

(assert (=> bm!95114 d!404910))

(declare-fun b!1414415 () Bool)

(declare-fun e!902909 () Bool)

(declare-fun tp!401256 () Bool)

(assert (=> b!1414415 (= e!902909 (and (inv!18909 (c!232208 (tokens!1762 (h!19853 (innerList!4869 (xs!7536 (c!232209 objs!24))))))) tp!401256))))

(declare-fun e!902907 () Bool)

(declare-fun b!1414414 () Bool)

(declare-fun tp!401257 () Bool)

(assert (=> b!1414414 (= e!902907 (and tp!401257 (inv!18906 (tokens!1762 (h!19853 (innerList!4869 (xs!7536 (c!232209 objs!24)))))) e!902909))))

(declare-fun e!902908 () Bool)

(declare-fun tp!401255 () Bool)

(declare-fun b!1414413 () Bool)

(assert (=> b!1414413 (= e!902908 (and (inv!18908 (h!19853 (innerList!4869 (xs!7536 (c!232209 objs!24))))) e!902907 tp!401255))))

(assert (=> b!1413569 (= tp!401216 e!902908)))

(assert (= b!1414414 b!1414415))

(assert (= b!1414413 b!1414414))

(assert (= (and b!1413569 ((_ is Cons!14452) (innerList!4869 (xs!7536 (c!232209 objs!24))))) b!1414413))

(declare-fun m!1598441 () Bool)

(assert (=> b!1414415 m!1598441))

(declare-fun m!1598443 () Bool)

(assert (=> b!1414414 m!1598443))

(declare-fun m!1598445 () Bool)

(assert (=> b!1414413 m!1598445))

(declare-fun b!1414429 () Bool)

(declare-fun b_free!34759 () Bool)

(declare-fun b_next!35463 () Bool)

(assert (=> b!1414429 (= b_free!34759 (not b_next!35463))))

(declare-fun tp!401266 () Bool)

(declare-fun b_and!94751 () Bool)

(assert (=> b!1414429 (= tp!401266 b_and!94751)))

(declare-fun b_free!34761 () Bool)

(declare-fun b_next!35465 () Bool)

(assert (=> b!1414429 (= b_free!34761 (not b_next!35465))))

(declare-fun tb!73489 () Bool)

(declare-fun t!123872 () Bool)

(assert (=> (and b!1414429 (= (toChars!3669 (transformation!2511 (rule!4274 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 acc!229)))))))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736)))))) t!123872) tb!73489))

(declare-fun result!89458 () Bool)

(assert (= result!89458 result!89434))

(assert (=> d!404380 t!123872))

(declare-fun tb!73491 () Bool)

(declare-fun t!123874 () Bool)

(assert (=> (and b!1414429 (= (toChars!3669 (transformation!2511 (rule!4274 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 acc!229)))))))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605)))))) t!123874) tb!73491))

(declare-fun result!89460 () Bool)

(assert (= result!89460 result!89450))

(assert (=> d!404626 t!123874))

(declare-fun b_and!94753 () Bool)

(declare-fun tp!401265 () Bool)

(assert (=> b!1414429 (= tp!401265 (and (=> t!123872 result!89458) (=> t!123874 result!89460) b_and!94753))))

(declare-fun b!1414426 () Bool)

(declare-fun e!902926 () Bool)

(declare-fun e!902925 () Bool)

(declare-fun tp!401264 () Bool)

(declare-fun inv!18929 (Token!4684) Bool)

(assert (=> b!1414426 (= e!902925 (and (inv!18929 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 acc!229)))))) e!902926 tp!401264))))

(declare-fun e!902924 () Bool)

(assert (=> b!1414429 (= e!902924 (and tp!401266 tp!401265))))

(declare-fun b!1414428 () Bool)

(declare-fun e!902927 () Bool)

(assert (=> b!1414428 (= e!902927 (and (inv!18900 (tag!2773 (rule!4274 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 acc!229)))))))) (inv!18924 (transformation!2511 (rule!4274 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 acc!229)))))))) e!902924))))

(declare-fun b!1414427 () Bool)

(declare-fun inv!21 (TokenValue!2601) Bool)

(assert (=> b!1414427 (= e!902926 (and (inv!21 (value!81196 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 acc!229))))))) e!902927))))

(assert (=> b!1413597 (= tp!401238 e!902925)))

(assert (= b!1414428 b!1414429))

(assert (= b!1414427 b!1414428))

(assert (= b!1414426 b!1414427))

(assert (= (and b!1413597 ((_ is Cons!14450) (innerList!4868 (xs!7535 (c!232208 (tokens!1762 acc!229)))))) b!1414426))

(declare-fun m!1598447 () Bool)

(assert (=> b!1414426 m!1598447))

(declare-fun m!1598449 () Bool)

(assert (=> b!1414428 m!1598449))

(declare-fun m!1598451 () Bool)

(assert (=> b!1414428 m!1598451))

(declare-fun m!1598453 () Bool)

(assert (=> b!1414427 m!1598453))

(declare-fun b!1414432 () Bool)

(declare-fun b_free!34763 () Bool)

(declare-fun b_next!35467 () Bool)

(assert (=> b!1414432 (= b_free!34763 (not b_next!35467))))

(declare-fun tp!401267 () Bool)

(declare-fun b_and!94755 () Bool)

(assert (=> b!1414432 (= tp!401267 b_and!94755)))

(declare-fun b_free!34765 () Bool)

(declare-fun b_next!35469 () Bool)

(assert (=> b!1414432 (= b_free!34765 (not b_next!35469))))

(declare-fun tb!73493 () Bool)

(declare-fun t!123876 () Bool)

(assert (=> (and b!1414432 (= (toChars!3669 (transformation!2511 (h!19852 (t!123794 (rules!11032 sep!3))))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736)))))) t!123876) tb!73493))

(declare-fun result!89462 () Bool)

(assert (= result!89462 result!89434))

(assert (=> d!404380 t!123876))

(declare-fun tb!73495 () Bool)

(declare-fun t!123878 () Bool)

(assert (=> (and b!1414432 (= (toChars!3669 (transformation!2511 (h!19852 (t!123794 (rules!11032 sep!3))))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605)))))) t!123878) tb!73495))

(declare-fun result!89464 () Bool)

(assert (= result!89464 result!89450))

(assert (=> d!404626 t!123878))

(declare-fun b_and!94757 () Bool)

(declare-fun tp!401268 () Bool)

(assert (=> b!1414432 (= tp!401268 (and (=> t!123876 result!89462) (=> t!123878 result!89464) b_and!94757))))

(declare-fun e!902929 () Bool)

(assert (=> b!1414432 (= e!902929 (and tp!401267 tp!401268))))

(declare-fun b!1414431 () Bool)

(declare-fun e!902931 () Bool)

(assert (=> b!1414431 (= e!902931 (and (inv!18900 (tag!2773 (h!19852 (t!123794 (rules!11032 sep!3))))) (inv!18924 (transformation!2511 (h!19852 (t!123794 (rules!11032 sep!3))))) e!902929))))

(declare-fun b!1414430 () Bool)

(declare-fun e!902930 () Bool)

(declare-fun tp!401269 () Bool)

(assert (=> b!1414430 (= e!902930 (and e!902931 tp!401269))))

(assert (=> b!1413589 (= tp!401234 e!902930)))

(assert (= b!1414431 b!1414432))

(assert (= b!1414430 b!1414431))

(assert (= (and b!1413589 ((_ is Cons!14451) (t!123794 (rules!11032 sep!3)))) b!1414430))

(declare-fun m!1598455 () Bool)

(assert (=> b!1414431 m!1598455))

(declare-fun m!1598457 () Bool)

(assert (=> b!1414431 m!1598457))

(declare-fun e!902934 () Bool)

(declare-fun tp!401271 () Bool)

(declare-fun b!1414436 () Bool)

(declare-fun tp!401272 () Bool)

(assert (=> b!1414436 (= e!902934 (and (inv!18909 (left!12345 (left!12345 (c!232208 (tokens!1762 sep!3))))) tp!401271 (inv!18909 (right!12675 (left!12345 (c!232208 (tokens!1762 sep!3))))) tp!401272))))

(declare-fun b!1414438 () Bool)

(declare-fun e!902935 () Bool)

(declare-fun tp!401270 () Bool)

(assert (=> b!1414438 (= e!902935 tp!401270)))

(declare-fun b!1414437 () Bool)

(assert (=> b!1414437 (= e!902934 (and (inv!18923 (xs!7535 (left!12345 (c!232208 (tokens!1762 sep!3))))) e!902935))))

(assert (=> b!1413578 (= tp!401224 (and (inv!18909 (left!12345 (c!232208 (tokens!1762 sep!3)))) e!902934))))

(assert (= (and b!1413578 ((_ is Node!4808) (left!12345 (c!232208 (tokens!1762 sep!3))))) b!1414436))

(assert (= b!1414437 b!1414438))

(assert (= (and b!1413578 ((_ is Leaf!7260) (left!12345 (c!232208 (tokens!1762 sep!3))))) b!1414437))

(declare-fun m!1598459 () Bool)

(assert (=> b!1414436 m!1598459))

(declare-fun m!1598461 () Bool)

(assert (=> b!1414436 m!1598461))

(declare-fun m!1598463 () Bool)

(assert (=> b!1414437 m!1598463))

(assert (=> b!1413578 m!1595387))

(declare-fun tp!401275 () Bool)

(declare-fun tp!401274 () Bool)

(declare-fun b!1414439 () Bool)

(declare-fun e!902936 () Bool)

(assert (=> b!1414439 (= e!902936 (and (inv!18909 (left!12345 (right!12675 (c!232208 (tokens!1762 sep!3))))) tp!401274 (inv!18909 (right!12675 (right!12675 (c!232208 (tokens!1762 sep!3))))) tp!401275))))

(declare-fun b!1414441 () Bool)

(declare-fun e!902937 () Bool)

(declare-fun tp!401273 () Bool)

(assert (=> b!1414441 (= e!902937 tp!401273)))

(declare-fun b!1414440 () Bool)

(assert (=> b!1414440 (= e!902936 (and (inv!18923 (xs!7535 (right!12675 (c!232208 (tokens!1762 sep!3))))) e!902937))))

(assert (=> b!1413578 (= tp!401225 (and (inv!18909 (right!12675 (c!232208 (tokens!1762 sep!3)))) e!902936))))

(assert (= (and b!1413578 ((_ is Node!4808) (right!12675 (c!232208 (tokens!1762 sep!3))))) b!1414439))

(assert (= b!1414440 b!1414441))

(assert (= (and b!1413578 ((_ is Leaf!7260) (right!12675 (c!232208 (tokens!1762 sep!3))))) b!1414440))

(declare-fun m!1598467 () Bool)

(assert (=> b!1414439 m!1598467))

(declare-fun m!1598469 () Bool)

(assert (=> b!1414439 m!1598469))

(declare-fun m!1598473 () Bool)

(assert (=> b!1414440 m!1598473))

(assert (=> b!1413578 m!1595389))

(declare-fun tp!401276 () Bool)

(declare-fun e!902939 () Bool)

(declare-fun b!1414442 () Bool)

(declare-fun tp!401277 () Bool)

(assert (=> b!1414442 (= e!902939 (and (inv!18910 (left!12346 (left!12346 (c!232209 objs!24)))) tp!401276 (inv!18910 (right!12676 (left!12346 (c!232209 objs!24)))) tp!401277))))

(declare-fun b!1414444 () Bool)

(declare-fun e!902938 () Bool)

(declare-fun tp!401278 () Bool)

(assert (=> b!1414444 (= e!902938 tp!401278)))

(declare-fun b!1414443 () Bool)

(assert (=> b!1414443 (= e!902939 (and (inv!18921 (xs!7536 (left!12346 (c!232209 objs!24)))) e!902938))))

(assert (=> b!1413567 (= tp!401214 (and (inv!18910 (left!12346 (c!232209 objs!24))) e!902939))))

(assert (= (and b!1413567 ((_ is Node!4809) (left!12346 (c!232209 objs!24)))) b!1414442))

(assert (= b!1414443 b!1414444))

(assert (= (and b!1413567 ((_ is Leaf!7261) (left!12346 (c!232209 objs!24)))) b!1414443))

(declare-fun m!1598487 () Bool)

(assert (=> b!1414442 m!1598487))

(declare-fun m!1598489 () Bool)

(assert (=> b!1414442 m!1598489))

(declare-fun m!1598491 () Bool)

(assert (=> b!1414443 m!1598491))

(assert (=> b!1413567 m!1595381))

(declare-fun b!1414445 () Bool)

(declare-fun tp!401279 () Bool)

(declare-fun tp!401280 () Bool)

(declare-fun e!902941 () Bool)

(assert (=> b!1414445 (= e!902941 (and (inv!18910 (left!12346 (right!12676 (c!232209 objs!24)))) tp!401279 (inv!18910 (right!12676 (right!12676 (c!232209 objs!24)))) tp!401280))))

(declare-fun b!1414447 () Bool)

(declare-fun e!902940 () Bool)

(declare-fun tp!401281 () Bool)

(assert (=> b!1414447 (= e!902940 tp!401281)))

(declare-fun b!1414446 () Bool)

(assert (=> b!1414446 (= e!902941 (and (inv!18921 (xs!7536 (right!12676 (c!232209 objs!24)))) e!902940))))

(assert (=> b!1413567 (= tp!401215 (and (inv!18910 (right!12676 (c!232209 objs!24))) e!902941))))

(assert (= (and b!1413567 ((_ is Node!4809) (right!12676 (c!232209 objs!24)))) b!1414445))

(assert (= b!1414446 b!1414447))

(assert (= (and b!1413567 ((_ is Leaf!7261) (right!12676 (c!232209 objs!24)))) b!1414446))

(declare-fun m!1598495 () Bool)

(assert (=> b!1414445 m!1598495))

(declare-fun m!1598497 () Bool)

(assert (=> b!1414445 m!1598497))

(declare-fun m!1598499 () Bool)

(assert (=> b!1414446 m!1598499))

(assert (=> b!1413567 m!1595383))

(declare-fun b!1414448 () Bool)

(declare-fun tp!401283 () Bool)

(declare-fun e!902942 () Bool)

(declare-fun tp!401284 () Bool)

(assert (=> b!1414448 (= e!902942 (and (inv!18909 (left!12345 (left!12345 (c!232208 (tokens!1762 acc!229))))) tp!401283 (inv!18909 (right!12675 (left!12345 (c!232208 (tokens!1762 acc!229))))) tp!401284))))

(declare-fun b!1414450 () Bool)

(declare-fun e!902943 () Bool)

(declare-fun tp!401282 () Bool)

(assert (=> b!1414450 (= e!902943 tp!401282)))

(declare-fun b!1414449 () Bool)

(assert (=> b!1414449 (= e!902942 (and (inv!18923 (xs!7535 (left!12345 (c!232208 (tokens!1762 acc!229))))) e!902943))))

(assert (=> b!1413595 (= tp!401239 (and (inv!18909 (left!12345 (c!232208 (tokens!1762 acc!229)))) e!902942))))

(assert (= (and b!1413595 ((_ is Node!4808) (left!12345 (c!232208 (tokens!1762 acc!229))))) b!1414448))

(assert (= b!1414449 b!1414450))

(assert (= (and b!1413595 ((_ is Leaf!7260) (left!12345 (c!232208 (tokens!1762 acc!229))))) b!1414449))

(declare-fun m!1598501 () Bool)

(assert (=> b!1414448 m!1598501))

(declare-fun m!1598503 () Bool)

(assert (=> b!1414448 m!1598503))

(declare-fun m!1598505 () Bool)

(assert (=> b!1414449 m!1598505))

(assert (=> b!1413595 m!1595401))

(declare-fun tp!401286 () Bool)

(declare-fun tp!401287 () Bool)

(declare-fun e!902944 () Bool)

(declare-fun b!1414451 () Bool)

(assert (=> b!1414451 (= e!902944 (and (inv!18909 (left!12345 (right!12675 (c!232208 (tokens!1762 acc!229))))) tp!401286 (inv!18909 (right!12675 (right!12675 (c!232208 (tokens!1762 acc!229))))) tp!401287))))

(declare-fun b!1414453 () Bool)

(declare-fun e!902945 () Bool)

(declare-fun tp!401285 () Bool)

(assert (=> b!1414453 (= e!902945 tp!401285)))

(declare-fun b!1414452 () Bool)

(assert (=> b!1414452 (= e!902944 (and (inv!18923 (xs!7535 (right!12675 (c!232208 (tokens!1762 acc!229))))) e!902945))))

(assert (=> b!1413595 (= tp!401240 (and (inv!18909 (right!12675 (c!232208 (tokens!1762 acc!229)))) e!902944))))

(assert (= (and b!1413595 ((_ is Node!4808) (right!12675 (c!232208 (tokens!1762 acc!229))))) b!1414451))

(assert (= b!1414452 b!1414453))

(assert (= (and b!1413595 ((_ is Leaf!7260) (right!12675 (c!232208 (tokens!1762 acc!229))))) b!1414452))

(declare-fun m!1598509 () Bool)

(assert (=> b!1414451 m!1598509))

(declare-fun m!1598511 () Bool)

(assert (=> b!1414451 m!1598511))

(declare-fun m!1598513 () Bool)

(assert (=> b!1414452 m!1598513))

(assert (=> b!1413595 m!1595403))

(declare-fun b!1414459 () Bool)

(declare-fun b_free!34767 () Bool)

(declare-fun b_next!35471 () Bool)

(assert (=> b!1414459 (= b_free!34767 (not b_next!35471))))

(declare-fun tp!401288 () Bool)

(declare-fun b_and!94759 () Bool)

(assert (=> b!1414459 (= tp!401288 b_and!94759)))

(declare-fun b_free!34769 () Bool)

(declare-fun b_next!35473 () Bool)

(assert (=> b!1414459 (= b_free!34769 (not b_next!35473))))

(declare-fun tb!73497 () Bool)

(declare-fun t!123880 () Bool)

(assert (=> (and b!1414459 (= (toChars!3669 (transformation!2511 (h!19852 (t!123794 (rules!11032 acc!229))))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736)))))) t!123880) tb!73497))

(declare-fun result!89466 () Bool)

(assert (= result!89466 result!89434))

(assert (=> d!404380 t!123880))

(declare-fun tb!73499 () Bool)

(declare-fun t!123882 () Bool)

(assert (=> (and b!1414459 (= (toChars!3669 (transformation!2511 (h!19852 (t!123794 (rules!11032 acc!229))))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605)))))) t!123882) tb!73499))

(declare-fun result!89468 () Bool)

(assert (= result!89468 result!89450))

(assert (=> d!404626 t!123882))

(declare-fun tp!401289 () Bool)

(declare-fun b_and!94761 () Bool)

(assert (=> b!1414459 (= tp!401289 (and (=> t!123880 result!89466) (=> t!123882 result!89468) b_and!94761))))

(declare-fun e!902949 () Bool)

(assert (=> b!1414459 (= e!902949 (and tp!401288 tp!401289))))

(declare-fun b!1414458 () Bool)

(declare-fun e!902951 () Bool)

(assert (=> b!1414458 (= e!902951 (and (inv!18900 (tag!2773 (h!19852 (t!123794 (rules!11032 acc!229))))) (inv!18924 (transformation!2511 (h!19852 (t!123794 (rules!11032 acc!229))))) e!902949))))

(declare-fun b!1414457 () Bool)

(declare-fun e!902950 () Bool)

(declare-fun tp!401290 () Bool)

(assert (=> b!1414457 (= e!902950 (and e!902951 tp!401290))))

(assert (=> b!1413592 (= tp!401237 e!902950)))

(assert (= b!1414458 b!1414459))

(assert (= b!1414457 b!1414458))

(assert (= (and b!1413592 ((_ is Cons!14451) (t!123794 (rules!11032 acc!229)))) b!1414457))

(declare-fun m!1598515 () Bool)

(assert (=> b!1414458 m!1598515))

(declare-fun m!1598519 () Bool)

(assert (=> b!1414458 m!1598519))

(declare-fun b!1414463 () Bool)

(declare-fun b_free!34771 () Bool)

(declare-fun b_next!35475 () Bool)

(assert (=> b!1414463 (= b_free!34771 (not b_next!35475))))

(declare-fun tp!401293 () Bool)

(declare-fun b_and!94763 () Bool)

(assert (=> b!1414463 (= tp!401293 b_and!94763)))

(declare-fun b_free!34773 () Bool)

(declare-fun b_next!35477 () Bool)

(assert (=> b!1414463 (= b_free!34773 (not b_next!35477))))

(declare-fun t!123884 () Bool)

(declare-fun tb!73501 () Bool)

(assert (=> (and b!1414463 (= (toChars!3669 (transformation!2511 (rule!4274 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 sep!3)))))))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232275 (h!19851 lt!473756) (h!19851 lt!473736)))))) t!123884) tb!73501))

(declare-fun result!89470 () Bool)

(assert (= result!89470 result!89434))

(assert (=> d!404380 t!123884))

(declare-fun tb!73503 () Bool)

(declare-fun t!123886 () Bool)

(assert (=> (and b!1414463 (= (toChars!3669 (transformation!2511 (rule!4274 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 sep!3)))))))) (toChars!3669 (transformation!2511 (rule!4274 (ite c!232257 (h!19851 lt!473625) (h!19851 lt!473605)))))) t!123886) tb!73503))

(declare-fun result!89472 () Bool)

(assert (= result!89472 result!89450))

(assert (=> d!404626 t!123886))

(declare-fun b_and!94765 () Bool)

(declare-fun tp!401292 () Bool)

(assert (=> b!1414463 (= tp!401292 (and (=> t!123884 result!89470) (=> t!123886 result!89472) b_and!94765))))

(declare-fun b!1414460 () Bool)

(declare-fun tp!401291 () Bool)

(declare-fun e!902956 () Bool)

(declare-fun e!902955 () Bool)

(assert (=> b!1414460 (= e!902955 (and (inv!18929 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 sep!3)))))) e!902956 tp!401291))))

(declare-fun e!902954 () Bool)

(assert (=> b!1414463 (= e!902954 (and tp!401293 tp!401292))))

(declare-fun b!1414462 () Bool)

(declare-fun e!902957 () Bool)

(assert (=> b!1414462 (= e!902957 (and (inv!18900 (tag!2773 (rule!4274 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 sep!3)))))))) (inv!18924 (transformation!2511 (rule!4274 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 sep!3)))))))) e!902954))))

(declare-fun b!1414461 () Bool)

(assert (=> b!1414461 (= e!902956 (and (inv!21 (value!81196 (h!19851 (innerList!4868 (xs!7535 (c!232208 (tokens!1762 sep!3))))))) e!902957))))

(assert (=> b!1413580 (= tp!401223 e!902955)))

(assert (= b!1414462 b!1414463))

(assert (= b!1414461 b!1414462))

(assert (= b!1414460 b!1414461))

(assert (= (and b!1413580 ((_ is Cons!14450) (innerList!4868 (xs!7535 (c!232208 (tokens!1762 sep!3)))))) b!1414460))

(declare-fun m!1598537 () Bool)

(assert (=> b!1414460 m!1598537))

(declare-fun m!1598539 () Bool)

(assert (=> b!1414462 m!1598539))

(declare-fun m!1598541 () Bool)

(assert (=> b!1414462 m!1598541))

(declare-fun m!1598543 () Bool)

(assert (=> b!1414461 m!1598543))

(declare-fun b_lambda!44583 () Bool)

(assert (= b_lambda!44581 (or start!129480 b_lambda!44583)))

(declare-fun bs!339270 () Bool)

(declare-fun d!404918 () Bool)

(assert (= bs!339270 (and d!404918 start!129480)))

(assert (=> bs!339270 (= (dynLambda!6700 lambda!62469 (h!19853 (list!5673 (tail!2070 objs!24)))) (usesJsonRules!0 (h!19853 (list!5673 (tail!2070 objs!24)))))))

(declare-fun m!1598545 () Bool)

(assert (=> bs!339270 m!1598545))

(assert (=> b!1414141 d!404918))

(declare-fun b_lambda!44585 () Bool)

(assert (= b_lambda!44579 (or start!129480 b_lambda!44585)))

(declare-fun bs!339271 () Bool)

(declare-fun d!404920 () Bool)

(assert (= bs!339271 (and d!404920 start!129480)))

(assert (=> bs!339271 (= (dynLambda!6700 lambda!62469 (h!19853 (list!5673 objs!24))) (usesJsonRules!0 (h!19853 (list!5673 objs!24))))))

(declare-fun m!1598547 () Bool)

(assert (=> bs!339271 m!1598547))

(assert (=> b!1414081 d!404920))

(check-sat (not b!1414461) (not d!404464) (not b!1414348) (not d!404366) (not bs!339270) (not d!404606) (not b!1414298) b_and!94757 (not d!404668) (not b!1413800) (not d!404400) (not b!1414107) (not d!404378) (not b!1414067) (not d!404904) (not d!404424) (not d!404346) (not d!404608) (not b!1413860) (not b!1414335) (not b!1414315) (not b!1414118) (not b!1414437) (not b!1414116) (not d!404370) (not b!1414136) (not d!404820) (not d!404852) (not b_next!35459) (not b!1414128) (not b!1414134) (not bs!339271) (not d!404842) (not b!1414390) (not b!1414330) (not b!1414368) (not b!1414453) (not d!404428) (not d!404382) (not d!404704) (not b!1414350) (not b!1413861) (not b!1414031) (not d!404364) (not b!1414438) (not b!1413660) (not b!1414048) (not b!1414065) (not b!1414008) (not d!404664) (not b!1414122) (not b!1414071) (not b!1414120) (not b!1414448) (not d!404826) (not d!404870) (not b!1413780) (not b!1413783) (not b!1414361) (not b!1414396) (not b!1414357) (not b!1414276) (not b!1414383) (not b!1413612) (not d!404700) (not b!1414440) (not d!404620) (not b!1414345) (not d!404800) (not d!404590) (not b!1414029) (not d!404834) (not b!1414318) (not b!1414130) (not d!404684) (not b!1414288) (not d!404902) (not b!1414285) (not b!1414146) (not b!1413784) (not b_next!35477) (not d!404654) (not d!404626) (not b!1414127) (not b!1414296) (not b!1414135) (not b!1414209) (not d!404806) (not b!1414381) b_and!94765 (not d!404450) (not b!1413789) (not d!404652) (not b!1414329) (not d!404680) (not d!404848) (not b!1414280) (not b!1413633) (not b!1413601) (not d!404788) (not b!1414367) (not b!1413793) (not d!404886) (not b!1413696) (not b!1414369) b_and!94759 (not d!404678) (not b!1414457) (not b!1414074) (not b!1414413) (not b!1414327) (not b!1414441) (not b!1414426) (not b!1414109) (not b_next!35471) (not b!1414283) (not b!1414132) (not b!1414351) (not d!404622) (not d!404792) (not b!1413613) (not b!1414278) b_and!94753 (not b!1414353) (not b!1414064) (not b!1414378) (not b!1413859) (not b!1413788) (not b!1413858) (not b!1413782) (not b!1414355) (not d!404880) (not b!1413675) (not b!1413845) (not b!1414145) (not b!1414208) (not b_next!35473) b_and!94731 (not d!404640) (not b!1414282) (not b!1414294) (not d!404884) (not d!404692) (not b!1413669) (not d!404690) b_and!94763 (not b!1414082) (not d!404458) (not d!404854) (not d!404360) (not d!404676) (not b!1414320) (not bm!95147) b_and!94749 (not d!404674) (not d!404646) (not b!1414115) (not d!404342) (not d!404632) (not b!1413619) (not b!1414121) (not d!404672) (not d!404702) (not b!1414281) (not d!404348) (not b!1414124) b_and!94747 (not b!1414442) (not b!1414123) (not d!404874) (not b!1413676) (not b!1414436) (not b!1414144) (not d!404384) (not b!1413636) (not b!1414389) (not b!1413695) (not d!404804) (not b!1413595) (not d!404814) b_and!94761 (not b!1414210) (not b!1414394) (not b!1413786) (not b!1414066) (not b!1414131) (not b!1414108) (not b!1414138) (not d!404838) (not d!404616) (not b!1414428) (not b_next!35467) (not b!1414377) (not b!1414030) (not b!1413657) (not b!1413567) b_and!94727 (not b!1414398) (not d!404440) (not b!1414253) (not d!404656) (not d!404662) (not b!1413795) (not b_next!35465) (not b!1413637) (not b!1414458) (not d!404478) (not b!1414386) (not b!1413774) (not b!1414447) (not b_next!35469) (not b_lambda!44583) (not b!1414069) (not b!1414352) (not b!1414075) (not b!1414049) (not b!1413621) (not b!1414363) (not b!1414251) (not d!404444) (not b!1414393) (not b!1413772) (not b!1414460) (not b_lambda!44567) (not b_next!35461) (not b!1414252) (not b!1414373) (not b!1414033) (not b!1414051) (not b!1413602) (not b!1414446) (not b!1413846) (not b!1413578) (not b!1414384) (not d!404864) (not d!404422) (not d!404862) (not b!1414449) (not d!404356) (not d!404394) (not b!1414047) (not b!1414326) (not d!404446) (not b!1414273) (not d!404876) (not b!1414112) (not b!1413808) (not tb!73473) (not b!1414094) (not b!1414269) (not d!404906) (not b!1414110) (not d!404822) (not d!404898) (not b!1414295) (not d!404480) (not d!404784) (not b!1414142) (not b!1414290) (not b_lambda!44577) (not d!404430) (not b!1414293) (not b!1413600) (not b_lambda!44585) (not b!1414427) (not b!1413847) (not d!404682) (not d!404380) (not b_next!35475) (not b!1414451) (not b!1414439) b_and!94751 (not d!404390) (not b!1414462) (not d!404588) (not b!1414415) (not d!404896) (not b!1414092) (not d!404338) (not d!404766) (not d!404688) (not d!404452) (not d!404666) (not d!404350) (not b!1413651) (not b!1414430) (not b!1414366) (not d!404910) (not d!404868) (not b!1414347) (not d!404448) (not b!1414068) (not b!1413781) (not b!1414325) (not b!1414093) (not b!1414297) (not b!1414374) (not b!1414382) (not d!404660) (not b!1414364) (not b!1414445) (not d!404650) (not b!1413779) (not d!404844) (not b!1414337) (not b!1414414) (not d!404432) (not d!404866) (not b!1413632) (not d!404900) (not d!404374) (not b!1414450) (not tb!73485) (not b!1414114) (not b!1414328) (not d!404846) (not d!404872) (not b!1413797) (not b!1414431) (not b!1414444) (not d!404812) (not d!404386) (not b!1414119) (not d!404724) (not b_next!35457) (not b!1414323) (not b!1414111) (not b!1414129) (not b!1413792) (not d!404442) b_and!94755 (not b!1414032) (not b!1414286) (not b!1413785) (not b!1414358) (not b!1414360) (not b!1413706) (not d!404908) (not b!1413798) (not b!1414291) (not b!1413824) (not b!1413641) (not d!404832) (not bm!95148) (not d!404810) (not b!1413649) (not b!1413823) (not b!1414319) (not d!404372) (not b!1414443) (not d!404352) (not d!404746) (not d!404368) (not b!1414268) (not d!404894) (not b!1414343) (not d!404344) (not b_next!35455) (not b!1414113) (not d!404850) (not b!1414349) (not d!404878) (not d!404604) (not b!1414007) (not d!404882) (not b!1414139) (not b!1414452) (not b_next!35463) (not d!404438) (not d!404888) (not b!1414272) (not d!404630))
(check-sat b_and!94757 (not b_next!35459) (not b_next!35477) b_and!94765 b_and!94759 b_and!94761 (not b_next!35465) (not b_next!35469) (not b_next!35461) (not b_next!35457) b_and!94755 (not b_next!35471) b_and!94753 (not b_next!35473) b_and!94731 b_and!94763 b_and!94749 b_and!94747 (not b_next!35467) b_and!94727 (not b_next!35475) b_and!94751 (not b_next!35463) (not b_next!35455))
