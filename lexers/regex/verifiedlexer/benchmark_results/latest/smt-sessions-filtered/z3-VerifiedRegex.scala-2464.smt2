; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130608 () Bool)

(assert start!130608)

(declare-fun b!1419409 () Bool)

(declare-fun res!642746 () Bool)

(declare-fun e!906069 () Bool)

(assert (=> b!1419409 (=> (not res!642746) (not e!906069))))

(declare-datatypes ((List!14627 0))(
  ( (Nil!14561) (Cons!14561 (h!19962 (_ BitVec 16)) (t!124370 List!14627)) )
))
(declare-datatypes ((TokenValue!2627 0))(
  ( (FloatLiteralValue!5254 (text!18834 List!14627)) (TokenValueExt!2626 (__x!9061 Int)) (Broken!13135 (value!81911 List!14627)) (Object!2692) (End!2627) (Def!2627) (Underscore!2627) (Match!2627) (Else!2627) (Error!2627) (Case!2627) (If!2627) (Extends!2627) (Abstract!2627) (Class!2627) (Val!2627) (DelimiterValue!5254 (del!2687 List!14627)) (KeywordValue!2633 (value!81912 List!14627)) (CommentValue!5254 (value!81913 List!14627)) (WhitespaceValue!5254 (value!81914 List!14627)) (IndentationValue!2627 (value!81915 List!14627)) (String!17370) (Int32!2627) (Broken!13136 (value!81916 List!14627)) (Boolean!2628) (Unit!21719) (OperatorValue!2630 (op!2687 List!14627)) (IdentifierValue!5254 (value!81917 List!14627)) (IdentifierValue!5255 (value!81918 List!14627)) (WhitespaceValue!5255 (value!81919 List!14627)) (True!5254) (False!5254) (Broken!13137 (value!81920 List!14627)) (Broken!13138 (value!81921 List!14627)) (True!5255) (RightBrace!2627) (RightBracket!2627) (Colon!2627) (Null!2627) (Comma!2627) (LeftBracket!2627) (False!5255) (LeftBrace!2627) (ImaginaryLiteralValue!2627 (text!18835 List!14627)) (StringLiteralValue!7881 (value!81922 List!14627)) (EOFValue!2627 (value!81923 List!14627)) (IdentValue!2627 (value!81924 List!14627)) (DelimiterValue!5255 (value!81925 List!14627)) (DedentValue!2627 (value!81926 List!14627)) (NewLineValue!2627 (value!81927 List!14627)) (IntegerValue!7881 (value!81928 (_ BitVec 32)) (text!18836 List!14627)) (IntegerValue!7882 (value!81929 Int) (text!18837 List!14627)) (Times!2627) (Or!2627) (Equal!2627) (Minus!2627) (Broken!13139 (value!81930 List!14627)) (And!2627) (Div!2627) (LessEqual!2627) (Mod!2627) (Concat!6478) (Not!2627) (Plus!2627) (SpaceValue!2627 (value!81931 List!14627)) (IntegerValue!7883 (value!81932 Int) (text!18838 List!14627)) (StringLiteralValue!7882 (text!18839 List!14627)) (FloatLiteralValue!5255 (text!18840 List!14627)) (BytesLiteralValue!2627 (value!81933 List!14627)) (CommentValue!5255 (value!81934 List!14627)) (StringLiteralValue!7883 (value!81935 List!14627)) (ErrorTokenValue!2627 (msg!2688 List!14627)) )
))
(declare-datatypes ((Regex!3851 0))(
  ( (ElementMatch!3851 (c!233257 (_ BitVec 16))) (Concat!6479 (regOne!8214 Regex!3851) (regTwo!8214 Regex!3851)) (EmptyExpr!3851) (Star!3851 (reg!4180 Regex!3851)) (EmptyLang!3851) (Union!3851 (regOne!8215 Regex!3851) (regTwo!8215 Regex!3851)) )
))
(declare-datatypes ((String!17371 0))(
  ( (String!17372 (value!81936 String)) )
))
(declare-datatypes ((IArray!9775 0))(
  ( (IArray!9776 (innerList!4945 List!14627)) )
))
(declare-datatypes ((Conc!4885 0))(
  ( (Node!4885 (left!12451 Conc!4885) (right!12781 Conc!4885) (csize!10000 Int) (cheight!5096 Int)) (Leaf!7350 (xs!7612 IArray!9775) (csize!10001 Int)) (Empty!4885) )
))
(declare-datatypes ((BalanceConc!9710 0))(
  ( (BalanceConc!9711 (c!233258 Conc!4885)) )
))
(declare-datatypes ((TokenValueInjection!4914 0))(
  ( (TokenValueInjection!4915 (toValue!3836 Int) (toChars!3695 Int)) )
))
(declare-datatypes ((Rule!4874 0))(
  ( (Rule!4875 (regex!2537 Regex!3851) (tag!2799 String!17371) (isSeparator!2537 Bool) (transformation!2537 TokenValueInjection!4914)) )
))
(declare-datatypes ((Token!4736 0))(
  ( (Token!4737 (value!81937 TokenValue!2627) (rule!4300 Rule!4874) (size!12021 Int) (originalCharacters!3399 List!14627)) )
))
(declare-datatypes ((List!14628 0))(
  ( (Nil!14562) (Cons!14562 (h!19963 Token!4736) (t!124371 List!14628)) )
))
(declare-datatypes ((IArray!9777 0))(
  ( (IArray!9778 (innerList!4946 List!14628)) )
))
(declare-datatypes ((Conc!4886 0))(
  ( (Node!4886 (left!12452 Conc!4886) (right!12782 Conc!4886) (csize!10002 Int) (cheight!5097 Int)) (Leaf!7351 (xs!7613 IArray!9777) (csize!10003 Int)) (Empty!4886) )
))
(declare-datatypes ((List!14629 0))(
  ( (Nil!14563) (Cons!14563 (h!19964 Rule!4874) (t!124372 List!14629)) )
))
(declare-datatypes ((BalanceConc!9712 0))(
  ( (BalanceConc!9713 (c!233259 Conc!4886)) )
))
(declare-datatypes ((PrintableTokens!856 0))(
  ( (PrintableTokens!857 (rules!11152 List!14629) (tokens!1844 BalanceConc!9712)) )
))
(declare-datatypes ((List!14630 0))(
  ( (Nil!14564) (Cons!14564 (h!19965 PrintableTokens!856) (t!124373 List!14630)) )
))
(declare-datatypes ((IArray!9779 0))(
  ( (IArray!9780 (innerList!4947 List!14630)) )
))
(declare-datatypes ((Conc!4887 0))(
  ( (Node!4887 (left!12453 Conc!4887) (right!12783 Conc!4887) (csize!10004 Int) (cheight!5098 Int)) (Leaf!7352 (xs!7614 IArray!9779) (csize!10005 Int)) (Empty!4887) )
))
(declare-datatypes ((BalanceConc!9714 0))(
  ( (BalanceConc!9715 (c!233260 Conc!4887)) )
))
(declare-fun objs!24 () BalanceConc!9714)

(declare-fun size!12022 (BalanceConc!9714) Int)

(assert (=> b!1419409 (= res!642746 (not (= (size!12022 objs!24) 1)))))

(declare-fun acc!229 () PrintableTokens!856)

(declare-fun b!1419410 () Bool)

(declare-fun tp!402472 () Bool)

(declare-fun e!906073 () Bool)

(declare-fun e!906070 () Bool)

(declare-fun inv!19203 (BalanceConc!9712) Bool)

(assert (=> b!1419410 (= e!906070 (and tp!402472 (inv!19203 (tokens!1844 acc!229)) e!906073))))

(declare-fun b!1419411 () Bool)

(declare-fun e!906067 () Bool)

(assert (=> b!1419411 (= e!906069 e!906067)))

(declare-fun res!642753 () Bool)

(assert (=> b!1419411 (=> (not res!642753) (not e!906067))))

(declare-datatypes ((Option!2800 0))(
  ( (None!2799) (Some!2799 (v!22163 PrintableTokens!856)) )
))
(declare-fun lt!478810 () Option!2800)

(get-info :version)

(assert (=> b!1419411 (= res!642753 ((_ is Some!2799) lt!478810))))

(declare-fun sep!3 () PrintableTokens!856)

(declare-fun append!452 (PrintableTokens!856 PrintableTokens!856) Option!2800)

(declare-fun head!2771 (BalanceConc!9714) PrintableTokens!856)

(assert (=> b!1419411 (= lt!478810 (append!452 (head!2771 objs!24) sep!3))))

(declare-fun b!1419412 () Bool)

(declare-fun e!906074 () Bool)

(declare-fun lt!478809 () Option!2800)

(declare-fun usesJsonRules!0 (PrintableTokens!856) Bool)

(declare-fun get!4478 (Option!2800) PrintableTokens!856)

(assert (=> b!1419412 (= e!906074 (not (usesJsonRules!0 (get!4478 lt!478809))))))

(declare-fun b!1419413 () Bool)

(declare-fun e!906071 () Bool)

(assert (=> b!1419413 (= e!906067 e!906071)))

(declare-fun res!642750 () Bool)

(assert (=> b!1419413 (=> (not res!642750) (not e!906071))))

(declare-fun lt!478808 () Option!2800)

(assert (=> b!1419413 (= res!642750 ((_ is Some!2799) lt!478808))))

(assert (=> b!1419413 (= lt!478808 (append!452 acc!229 (v!22163 lt!478810)))))

(declare-fun b!1419414 () Bool)

(declare-fun res!642749 () Bool)

(assert (=> b!1419414 (=> (not res!642749) (not e!906069))))

(assert (=> b!1419414 (= res!642749 (usesJsonRules!0 sep!3))))

(declare-fun b!1419415 () Bool)

(declare-fun tp!402470 () Bool)

(declare-fun inv!19204 (Conc!4886) Bool)

(assert (=> b!1419415 (= e!906073 (and (inv!19204 (c!233259 (tokens!1844 acc!229))) tp!402470))))

(declare-fun b!1419416 () Bool)

(declare-fun e!906072 () Bool)

(declare-fun tp!402474 () Bool)

(declare-fun e!906066 () Bool)

(assert (=> b!1419416 (= e!906072 (and tp!402474 (inv!19203 (tokens!1844 sep!3)) e!906066))))

(declare-fun b!1419417 () Bool)

(assert (=> b!1419417 (= e!906071 e!906074)))

(declare-fun res!642752 () Bool)

(assert (=> b!1419417 (=> (not res!642752) (not e!906074))))

(declare-fun isEmpty!8959 (Option!2800) Bool)

(assert (=> b!1419417 (= res!642752 (not (isEmpty!8959 lt!478809)))))

(declare-fun recombineSlicesWithSep!0 (BalanceConc!9714 PrintableTokens!856 PrintableTokens!856) Option!2800)

(declare-fun tail!2114 (BalanceConc!9714) BalanceConc!9714)

(assert (=> b!1419417 (= lt!478809 (recombineSlicesWithSep!0 (tail!2114 objs!24) sep!3 (v!22163 lt!478808)))))

(declare-fun b!1419418 () Bool)

(declare-fun e!906068 () Bool)

(declare-fun tp!402471 () Bool)

(declare-fun inv!19205 (Conc!4887) Bool)

(assert (=> b!1419418 (= e!906068 (and (inv!19205 (c!233260 objs!24)) tp!402471))))

(declare-fun b!1419419 () Bool)

(declare-fun res!642748 () Bool)

(assert (=> b!1419419 (=> (not res!642748) (not e!906069))))

(declare-fun isEmpty!8960 (BalanceConc!9714) Bool)

(assert (=> b!1419419 (= res!642748 (not (isEmpty!8960 objs!24)))))

(declare-fun res!642751 () Bool)

(assert (=> start!130608 (=> (not res!642751) (not e!906069))))

(declare-fun lambda!62637 () Int)

(declare-fun forall!3631 (BalanceConc!9714 Int) Bool)

(assert (=> start!130608 (= res!642751 (forall!3631 objs!24 lambda!62637))))

(assert (=> start!130608 e!906069))

(declare-fun inv!19206 (BalanceConc!9714) Bool)

(assert (=> start!130608 (and (inv!19206 objs!24) e!906068)))

(declare-fun inv!19207 (PrintableTokens!856) Bool)

(assert (=> start!130608 (and (inv!19207 acc!229) e!906070)))

(assert (=> start!130608 (and (inv!19207 sep!3) e!906072)))

(declare-fun b!1419420 () Bool)

(declare-fun tp!402473 () Bool)

(assert (=> b!1419420 (= e!906066 (and (inv!19204 (c!233259 (tokens!1844 sep!3))) tp!402473))))

(declare-fun b!1419421 () Bool)

(declare-fun res!642747 () Bool)

(assert (=> b!1419421 (=> (not res!642747) (not e!906069))))

(assert (=> b!1419421 (= res!642747 (usesJsonRules!0 acc!229))))

(assert (= (and start!130608 res!642751) b!1419421))

(assert (= (and b!1419421 res!642747) b!1419414))

(assert (= (and b!1419414 res!642749) b!1419419))

(assert (= (and b!1419419 res!642748) b!1419409))

(assert (= (and b!1419409 res!642746) b!1419411))

(assert (= (and b!1419411 res!642753) b!1419413))

(assert (= (and b!1419413 res!642750) b!1419417))

(assert (= (and b!1419417 res!642752) b!1419412))

(assert (= start!130608 b!1419418))

(assert (= b!1419410 b!1419415))

(assert (= start!130608 b!1419410))

(assert (= b!1419416 b!1419420))

(assert (= start!130608 b!1419416))

(declare-fun m!1608711 () Bool)

(assert (=> b!1419417 m!1608711))

(declare-fun m!1608713 () Bool)

(assert (=> b!1419417 m!1608713))

(assert (=> b!1419417 m!1608713))

(declare-fun m!1608715 () Bool)

(assert (=> b!1419417 m!1608715))

(declare-fun m!1608717 () Bool)

(assert (=> b!1419418 m!1608717))

(declare-fun m!1608719 () Bool)

(assert (=> b!1419409 m!1608719))

(declare-fun m!1608721 () Bool)

(assert (=> b!1419419 m!1608721))

(declare-fun m!1608723 () Bool)

(assert (=> b!1419416 m!1608723))

(declare-fun m!1608725 () Bool)

(assert (=> b!1419420 m!1608725))

(declare-fun m!1608727 () Bool)

(assert (=> b!1419413 m!1608727))

(declare-fun m!1608729 () Bool)

(assert (=> b!1419412 m!1608729))

(assert (=> b!1419412 m!1608729))

(declare-fun m!1608731 () Bool)

(assert (=> b!1419412 m!1608731))

(declare-fun m!1608733 () Bool)

(assert (=> b!1419410 m!1608733))

(declare-fun m!1608735 () Bool)

(assert (=> b!1419411 m!1608735))

(assert (=> b!1419411 m!1608735))

(declare-fun m!1608737 () Bool)

(assert (=> b!1419411 m!1608737))

(declare-fun m!1608739 () Bool)

(assert (=> b!1419415 m!1608739))

(declare-fun m!1608741 () Bool)

(assert (=> b!1419421 m!1608741))

(declare-fun m!1608743 () Bool)

(assert (=> start!130608 m!1608743))

(declare-fun m!1608745 () Bool)

(assert (=> start!130608 m!1608745))

(declare-fun m!1608747 () Bool)

(assert (=> start!130608 m!1608747))

(declare-fun m!1608749 () Bool)

(assert (=> start!130608 m!1608749))

(declare-fun m!1608751 () Bool)

(assert (=> b!1419414 m!1608751))

(check-sat (not b!1419414) (not b!1419410) (not b!1419417) (not b!1419412) (not b!1419413) (not b!1419416) (not start!130608) (not b!1419415) (not b!1419409) (not b!1419420) (not b!1419421) (not b!1419419) (not b!1419411) (not b!1419418))
(check-sat)
(get-model)

(declare-fun d!406695 () Bool)

(declare-fun c!233263 () Bool)

(assert (=> d!406695 (= c!233263 ((_ is Node!4886) (c!233259 (tokens!1844 sep!3))))))

(declare-fun e!906079 () Bool)

(assert (=> d!406695 (= (inv!19204 (c!233259 (tokens!1844 sep!3))) e!906079)))

(declare-fun b!1419428 () Bool)

(declare-fun inv!19208 (Conc!4886) Bool)

(assert (=> b!1419428 (= e!906079 (inv!19208 (c!233259 (tokens!1844 sep!3))))))

(declare-fun b!1419429 () Bool)

(declare-fun e!906080 () Bool)

(assert (=> b!1419429 (= e!906079 e!906080)))

(declare-fun res!642756 () Bool)

(assert (=> b!1419429 (= res!642756 (not ((_ is Leaf!7351) (c!233259 (tokens!1844 sep!3)))))))

(assert (=> b!1419429 (=> res!642756 e!906080)))

(declare-fun b!1419430 () Bool)

(declare-fun inv!19209 (Conc!4886) Bool)

(assert (=> b!1419430 (= e!906080 (inv!19209 (c!233259 (tokens!1844 sep!3))))))

(assert (= (and d!406695 c!233263) b!1419428))

(assert (= (and d!406695 (not c!233263)) b!1419429))

(assert (= (and b!1419429 (not res!642756)) b!1419430))

(declare-fun m!1608753 () Bool)

(assert (=> b!1419428 m!1608753))

(declare-fun m!1608755 () Bool)

(assert (=> b!1419430 m!1608755))

(assert (=> b!1419420 d!406695))

(declare-fun d!406697 () Bool)

(declare-fun isBalanced!1453 (Conc!4886) Bool)

(assert (=> d!406697 (= (inv!19203 (tokens!1844 acc!229)) (isBalanced!1453 (c!233259 (tokens!1844 acc!229))))))

(declare-fun bs!339681 () Bool)

(assert (= bs!339681 d!406697))

(declare-fun m!1608757 () Bool)

(assert (=> bs!339681 m!1608757))

(assert (=> b!1419410 d!406697))

(declare-fun d!406699 () Bool)

(declare-datatypes ((JsonLexer!424 0))(
  ( (JsonLexer!425) )
))
(declare-fun rules!109 (JsonLexer!424) List!14629)

(assert (=> d!406699 (= (usesJsonRules!0 acc!229) (= (rules!11152 acc!229) (rules!109 JsonLexer!425)))))

(declare-fun bs!339683 () Bool)

(assert (= bs!339683 d!406699))

(declare-fun m!1608769 () Bool)

(assert (=> bs!339683 m!1608769))

(assert (=> b!1419421 d!406699))

(declare-fun bm!96820 () Bool)

(declare-fun call!96852 () List!14628)

(declare-fun call!96851 () List!14628)

(assert (=> bm!96820 (= call!96852 call!96851)))

(declare-fun c!233310 () Bool)

(declare-datatypes ((LexerInterface!2210 0))(
  ( (LexerInterfaceExt!2207 (__x!9062 Int)) (Lexer!2208) )
))
(declare-fun lt!479152 () LexerInterface!2210)

(declare-fun bm!96821 () Bool)

(declare-fun lt!479182 () LexerInterface!2210)

(declare-fun lt!479144 () List!14628)

(declare-fun call!96843 () List!14628)

(declare-fun c!233313 () Bool)

(declare-fun lt!479192 () List!14628)

(declare-fun call!96837 () List!14627)

(declare-fun printList!664 (LexerInterface!2210 List!14628) List!14627)

(assert (=> bm!96821 (= call!96837 (printList!664 (ite c!233313 Lexer!2208 (ite c!233310 lt!479152 lt!479182)) (ite c!233313 call!96843 (ite c!233310 lt!479144 lt!479192))))))

(declare-fun b!1419541 () Bool)

(declare-fun e!906143 () List!14627)

(assert (=> b!1419541 (= e!906143 Nil!14561)))

(declare-fun b!1419542 () Bool)

(declare-fun e!906142 () Option!2800)

(assert (=> b!1419542 (= e!906142 None!2799)))

(declare-fun bm!96822 () Bool)

(declare-fun c!233311 () Bool)

(assert (=> bm!96822 (= c!233311 c!233310)))

(declare-fun call!96847 () List!14627)

(declare-fun call!96862 () List!14627)

(assert (=> bm!96822 (= call!96847 call!96862)))

(declare-fun bm!96823 () Bool)

(declare-fun call!96842 () List!14627)

(declare-fun call!96839 () List!14627)

(assert (=> bm!96823 (= call!96842 call!96839)))

(declare-fun bm!96824 () Bool)

(declare-fun call!96835 () BalanceConc!9710)

(declare-fun call!96863 () BalanceConc!9710)

(assert (=> bm!96824 (= call!96835 call!96863)))

(declare-fun b!1419543 () Bool)

(assert (=> b!1419543 (= e!906143 call!96847)))

(declare-fun call!96825 () BalanceConc!9710)

(declare-fun bm!96825 () Bool)

(declare-fun print!983 (PrintableTokens!856) BalanceConc!9710)

(assert (=> bm!96825 (= call!96825 (print!983 (ite (or c!233313 c!233310) (head!2771 objs!24) sep!3)))))

(declare-fun bm!96826 () Bool)

(declare-fun call!96853 () BalanceConc!9710)

(declare-fun print!984 (LexerInterface!2210 BalanceConc!9712) BalanceConc!9710)

(assert (=> bm!96826 (= call!96853 (print!984 Lexer!2208 (tokens!1844 sep!3)))))

(declare-fun b!1419544 () Bool)

(declare-fun e!906145 () List!14627)

(declare-fun call!96833 () List!14627)

(assert (=> b!1419544 (= e!906145 call!96833)))

(declare-fun d!406709 () Bool)

(declare-fun e!906144 () Bool)

(assert (=> d!406709 e!906144))

(declare-fun res!642781 () Bool)

(assert (=> d!406709 (=> res!642781 e!906144)))

(declare-fun lt!479183 () Option!2800)

(assert (=> d!406709 (= res!642781 (isEmpty!8959 lt!479183))))

(declare-fun e!906149 () Option!2800)

(assert (=> d!406709 (= lt!479183 e!906149)))

(declare-fun isEmpty!8961 (BalanceConc!9712) Bool)

(assert (=> d!406709 (= c!233313 (isEmpty!8961 (tokens!1844 sep!3)))))

(declare-datatypes ((Unit!21720 0))(
  ( (Unit!21721) )
))
(declare-fun lt!479179 () Unit!21720)

(declare-fun lemmaInvariant!236 (PrintableTokens!856) Unit!21720)

(assert (=> d!406709 (= lt!479179 (lemmaInvariant!236 (head!2771 objs!24)))))

(declare-fun lt!479157 () Unit!21720)

(assert (=> d!406709 (= lt!479157 (lemmaInvariant!236 sep!3))))

(assert (=> d!406709 (= (rules!11152 (head!2771 objs!24)) (rules!11152 sep!3))))

(assert (=> d!406709 (= (append!452 (head!2771 objs!24) sep!3) lt!479183)))

(declare-fun b!1419540 () Bool)

(declare-fun e!906146 () List!14627)

(assert (=> b!1419540 (= e!906146 Nil!14561)))

(declare-fun bm!96827 () Bool)

(declare-fun call!96850 () List!14627)

(declare-fun call!96858 () BalanceConc!9710)

(declare-fun list!5746 (BalanceConc!9710) List!14627)

(assert (=> bm!96827 (= call!96850 (list!5746 call!96858))))

(declare-fun bm!96828 () Bool)

(declare-fun call!96827 () List!14627)

(declare-fun call!96836 () List!14627)

(assert (=> bm!96828 (= call!96827 call!96836)))

(declare-fun b!1419545 () Bool)

(declare-fun e!906147 () List!14628)

(declare-fun lt!479180 () List!14628)

(declare-fun ++!3824 (List!14628 List!14628) List!14628)

(assert (=> b!1419545 (= e!906147 (++!3824 lt!479192 lt!479180))))

(declare-fun call!96844 () List!14627)

(declare-fun call!96859 () List!14627)

(declare-fun bm!96829 () Bool)

(declare-fun ++!3825 (List!14627 List!14627) List!14627)

(assert (=> bm!96829 (= call!96862 (++!3825 (ite c!233313 call!96850 e!906145) (ite c!233313 call!96844 (ite c!233310 call!96859 call!96827))))))

(declare-fun b!1419546 () Bool)

(declare-fun c!233316 () Bool)

(declare-fun separableTokensPredicate!487 (LexerInterface!2210 Token!4736 Token!4736 List!14629) Bool)

(declare-fun last!88 (BalanceConc!9712) Token!4736)

(declare-fun head!2772 (BalanceConc!9712) Token!4736)

(assert (=> b!1419546 (= c!233316 (separableTokensPredicate!487 Lexer!2208 (last!88 (tokens!1844 (head!2771 objs!24))) (head!2772 (tokens!1844 sep!3)) (rules!11152 (head!2771 objs!24))))))

(declare-fun lt!479134 () Unit!21720)

(declare-fun lt!479171 () Unit!21720)

(assert (=> b!1419546 (= lt!479134 lt!479171)))

(declare-fun lt!479139 () LexerInterface!2210)

(declare-fun lt!479149 () Token!4736)

(declare-fun rulesProduceIndividualToken!1173 (LexerInterface!2210 List!14629 Token!4736) Bool)

(assert (=> b!1419546 (rulesProduceIndividualToken!1173 lt!479139 (rules!11152 (head!2771 objs!24)) lt!479149)))

(declare-fun lt!479162 () List!14628)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!358 (LexerInterface!2210 List!14629 List!14628 Token!4736) Unit!21720)

(assert (=> b!1419546 (= lt!479171 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!358 lt!479139 (rules!11152 (head!2771 objs!24)) lt!479162 lt!479149))))

(assert (=> b!1419546 (= lt!479149 (head!2772 (tokens!1844 sep!3)))))

(declare-fun call!96838 () List!14628)

(assert (=> b!1419546 (= lt!479162 call!96838)))

(assert (=> b!1419546 (= lt!479139 Lexer!2208)))

(declare-fun lt!479194 () Unit!21720)

(declare-fun lt!479165 () Unit!21720)

(assert (=> b!1419546 (= lt!479194 lt!479165)))

(declare-fun lt!479175 () LexerInterface!2210)

(declare-fun lt!479172 () Token!4736)

(assert (=> b!1419546 (rulesProduceIndividualToken!1173 lt!479175 (rules!11152 (head!2771 objs!24)) lt!479172)))

(declare-fun lt!479161 () List!14628)

(assert (=> b!1419546 (= lt!479165 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!358 lt!479175 (rules!11152 (head!2771 objs!24)) lt!479161 lt!479172))))

(assert (=> b!1419546 (= lt!479172 (last!88 (tokens!1844 (head!2771 objs!24))))))

(declare-fun call!96834 () List!14628)

(assert (=> b!1419546 (= lt!479161 call!96834)))

(assert (=> b!1419546 (= lt!479175 Lexer!2208)))

(declare-fun e!906141 () Option!2800)

(assert (=> b!1419546 (= e!906141 e!906142)))

(declare-fun bm!96830 () Bool)

(declare-fun call!96856 () List!14627)

(assert (=> bm!96830 (= call!96856 call!96837)))

(declare-fun call!96861 () List!14627)

(declare-fun lt!479178 () LexerInterface!2210)

(declare-fun lt!479184 () List!14628)

(declare-fun bm!96831 () Bool)

(declare-fun lt!479141 () LexerInterface!2210)

(declare-fun lt!479170 () List!14628)

(assert (=> bm!96831 (= call!96861 (printList!664 (ite c!233313 lt!479141 (ite c!233310 Lexer!2208 lt!479178)) (ite c!233313 lt!479170 (ite c!233310 Nil!14562 lt!479184))))))

(declare-fun bm!96832 () Bool)

(declare-fun call!96832 () Unit!21720)

(declare-fun call!96849 () Unit!21720)

(assert (=> bm!96832 (= call!96832 call!96849)))

(declare-fun lt!479136 () List!14628)

(declare-fun bm!96833 () Bool)

(declare-fun lt!479187 () List!14628)

(declare-fun call!96848 () List!14627)

(assert (=> bm!96833 (= call!96848 (printList!664 (ite c!233313 lt!479141 (ite c!233310 Lexer!2208 lt!479182)) (ite c!233313 lt!479136 (ite c!233310 (t!124371 lt!479187) lt!479180))))))

(declare-fun call!96854 () List!14628)

(declare-fun bm!96834 () Bool)

(declare-fun call!96831 () Unit!21720)

(declare-fun theoremInvertabilityWhenTokenListSeparable!34 (LexerInterface!2210 List!14629 List!14628) Unit!21720)

(assert (=> bm!96834 (= call!96831 (theoremInvertabilityWhenTokenListSeparable!34 Lexer!2208 (ite (or c!233313 c!233310) (rules!11152 (head!2771 objs!24)) (rules!11152 sep!3)) (ite c!233313 call!96854 (ite c!233310 call!96834 call!96838))))))

(declare-fun bm!96835 () Bool)

(assert (=> bm!96835 (= call!96838 call!96854)))

(declare-fun bm!96836 () Bool)

(declare-fun call!96840 () BalanceConc!9710)

(assert (=> bm!96836 (= call!96840 call!96825)))

(declare-fun bm!96837 () Bool)

(assert (=> bm!96837 (= call!96849 (theoremInvertabilityWhenTokenListSeparable!34 Lexer!2208 (ite (or c!233313 c!233310) (rules!11152 sep!3) (rules!11152 (head!2771 objs!24))) (ite c!233313 call!96843 (ite c!233310 call!96838 call!96834))))))

(declare-fun b!1419547 () Bool)

(declare-fun ++!3826 (BalanceConc!9712 BalanceConc!9712) BalanceConc!9712)

(assert (=> b!1419547 (= e!906142 (Some!2799 (PrintableTokens!857 (rules!11152 (head!2771 objs!24)) (++!3826 (tokens!1844 (head!2771 objs!24)) (tokens!1844 sep!3)))))))

(declare-fun lt!479186 () LexerInterface!2210)

(assert (=> b!1419547 (= lt!479186 Lexer!2208)))

(declare-fun lt!479193 () List!14628)

(assert (=> b!1419547 (= lt!479193 call!96834)))

(declare-fun lt!479135 () List!14628)

(assert (=> b!1419547 (= lt!479135 call!96838)))

(declare-fun lt!479185 () Unit!21720)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!29 (LexerInterface!2210 List!14628 List!14628 List!14629) Unit!21720)

(assert (=> b!1419547 (= lt!479185 (tokensListTwoByTwoPredicateConcatSeparableTokensList!29 lt!479186 lt!479193 lt!479135 (rules!11152 (head!2771 objs!24))))))

(declare-fun lt!479156 () Unit!21720)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!29 (LexerInterface!2210 List!14629 List!14628 List!14628) Unit!21720)

(assert (=> b!1419547 (= lt!479156 (lemmaRulesProduceEachTokenIndividuallyConcat!29 lt!479186 (rules!11152 (head!2771 objs!24)) lt!479193 lt!479135))))

(declare-fun rulesProduceEachTokenIndividuallyList!691 (LexerInterface!2210 List!14629 List!14628) Bool)

(assert (=> b!1419547 (rulesProduceEachTokenIndividuallyList!691 lt!479186 (rules!11152 (head!2771 objs!24)) (++!3824 lt!479193 lt!479135))))

(declare-fun lt!479169 () Unit!21720)

(assert (=> b!1419547 (= lt!479169 lt!479156)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!210 (LexerInterface!2210 List!14628 List!14629) Bool)

(assert (=> b!1419547 (tokensListTwoByTwoPredicateSeparableList!210 lt!479186 (++!3824 lt!479193 lt!479135) (rules!11152 (head!2771 objs!24)))))

(declare-fun lt!479188 () Unit!21720)

(assert (=> b!1419547 (= lt!479188 lt!479185)))

(assert (=> b!1419547 (= lt!479182 Lexer!2208)))

(assert (=> b!1419547 (= lt!479192 call!96834)))

(assert (=> b!1419547 (= lt!479180 call!96838)))

(declare-fun lt!479138 () Unit!21720)

(declare-fun call!96830 () Unit!21720)

(assert (=> b!1419547 (= lt!479138 call!96830)))

(declare-fun call!96860 () List!14627)

(assert (=> b!1419547 (= call!96860 call!96842)))

(declare-fun lt!479153 () Unit!21720)

(assert (=> b!1419547 (= lt!479153 lt!479138)))

(declare-fun lt!479190 () Unit!21720)

(assert (=> b!1419547 (= lt!479190 call!96832)))

(declare-fun call!96845 () BalanceConc!9710)

(assert (=> b!1419547 (= call!96835 call!96845)))

(declare-fun lt!479163 () Unit!21720)

(declare-fun Unit!21722 () Unit!21720)

(assert (=> b!1419547 (= lt!479163 Unit!21722)))

(declare-fun lt!479158 () Unit!21720)

(declare-fun call!96826 () Unit!21720)

(assert (=> b!1419547 (= lt!479158 call!96826)))

(declare-fun call!96829 () BalanceConc!9710)

(assert (=> b!1419547 (= call!96840 call!96829)))

(declare-fun lt!479177 () Unit!21720)

(declare-fun Unit!21723 () Unit!21720)

(assert (=> b!1419547 (= lt!479177 Unit!21723)))

(declare-fun lt!479196 () PrintableTokens!856)

(assert (=> b!1419547 (= lt!479196 (PrintableTokens!857 (rules!11152 (head!2771 objs!24)) (++!3826 (tokens!1844 (head!2771 objs!24)) (tokens!1844 sep!3))))))

(declare-fun lt!479147 () BalanceConc!9712)

(assert (=> b!1419547 (= lt!479147 (++!3826 (tokens!1844 (head!2771 objs!24)) (tokens!1844 sep!3)))))

(declare-fun lt!479191 () Unit!21720)

(declare-fun list!5747 (BalanceConc!9712) List!14628)

(assert (=> b!1419547 (= lt!479191 (theoremInvertabilityWhenTokenListSeparable!34 Lexer!2208 (rules!11152 (head!2771 objs!24)) (list!5747 (++!3826 (tokens!1844 (head!2771 objs!24)) (tokens!1844 sep!3)))))))

(assert (=> b!1419547 (= (print!983 (PrintableTokens!857 (rules!11152 (head!2771 objs!24)) (++!3826 (tokens!1844 (head!2771 objs!24)) (tokens!1844 sep!3)))) (print!984 Lexer!2208 (++!3826 (tokens!1844 (head!2771 objs!24)) (tokens!1844 sep!3))))))

(declare-fun lt!479142 () Unit!21720)

(declare-fun Unit!21724 () Unit!21720)

(assert (=> b!1419547 (= lt!479142 Unit!21724)))

(assert (=> b!1419547 (= lt!479178 Lexer!2208)))

(assert (=> b!1419547 (= lt!479184 call!96834)))

(declare-fun lt!479148 () List!14628)

(assert (=> b!1419547 (= lt!479148 call!96838)))

(declare-fun lt!479140 () Unit!21720)

(declare-fun lemmaPrintConcatSameAsConcatPrint!29 (LexerInterface!2210 List!14628 List!14628) Unit!21720)

(assert (=> b!1419547 (= lt!479140 (lemmaPrintConcatSameAsConcatPrint!29 lt!479178 lt!479184 lt!479148))))

(declare-fun call!96855 () List!14627)

(assert (=> b!1419547 (= call!96855 call!96847)))

(declare-fun lt!479159 () Unit!21720)

(assert (=> b!1419547 (= lt!479159 lt!479140)))

(declare-fun bm!96838 () Bool)

(declare-fun call!96828 () Unit!21720)

(assert (=> bm!96838 (= call!96830 call!96828)))

(declare-fun bm!96839 () Bool)

(declare-fun call!96846 () BalanceConc!9710)

(assert (=> bm!96839 (= call!96845 call!96846)))

(declare-fun lt!479174 () List!14628)

(declare-fun bm!96840 () Bool)

(declare-fun charsOf!1481 (Token!4736) BalanceConc!9710)

(assert (=> bm!96840 (= call!96858 (charsOf!1481 (ite c!233313 (h!19963 lt!479174) (h!19963 lt!479187))))))

(declare-fun b!1419548 () Bool)

(declare-fun lt!479143 () Unit!21720)

(declare-fun Unit!21725 () Unit!21720)

(assert (=> b!1419548 (= lt!479143 Unit!21725)))

(assert (=> b!1419548 (= call!96860 e!906143)))

(declare-fun c!233315 () Bool)

(assert (=> b!1419548 (= c!233315 ((_ is Cons!14562) lt!479187))))

(assert (=> b!1419548 (= lt!479187 call!96838)))

(declare-fun lt!479168 () Unit!21720)

(declare-fun Unit!21726 () Unit!21720)

(assert (=> b!1419548 (= lt!479168 Unit!21726)))

(declare-fun call!96841 () BalanceConc!9710)

(assert (=> b!1419548 (= call!96829 call!96841)))

(declare-fun lt!479145 () Unit!21720)

(declare-fun Unit!21727 () Unit!21720)

(assert (=> b!1419548 (= lt!479145 Unit!21727)))

(assert (=> b!1419548 (= call!96835 call!96829)))

(declare-fun lt!479166 () Unit!21720)

(assert (=> b!1419548 (= lt!479166 call!96832)))

(declare-fun lt!479176 () Unit!21720)

(declare-fun Unit!21728 () Unit!21720)

(assert (=> b!1419548 (= lt!479176 Unit!21728)))

(assert (=> b!1419548 (= call!96840 call!96845)))

(declare-fun lt!479151 () Unit!21720)

(assert (=> b!1419548 (= lt!479151 call!96826)))

(declare-fun lt!479189 () Unit!21720)

(declare-fun Unit!21729 () Unit!21720)

(assert (=> b!1419548 (= lt!479189 Unit!21729)))

(assert (=> b!1419548 (= call!96833 Nil!14561)))

(declare-fun lt!479150 () Unit!21720)

(declare-fun lt!479154 () Unit!21720)

(assert (=> b!1419548 (= lt!479150 lt!479154)))

(assert (=> b!1419548 (= call!96855 call!96842)))

(assert (=> b!1419548 (= lt!479154 call!96830)))

(declare-fun lt!479195 () List!14628)

(assert (=> b!1419548 (= lt!479195 call!96838)))

(assert (=> b!1419548 (= lt!479144 Nil!14562)))

(assert (=> b!1419548 (= lt!479152 Lexer!2208)))

(assert (=> b!1419548 (= e!906141 (Some!2799 sep!3))))

(declare-fun b!1419549 () Bool)

(declare-fun e!906148 () Bool)

(assert (=> b!1419549 (= e!906148 (= (list!5746 (print!983 (get!4478 lt!479183))) (++!3825 (list!5746 (print!983 (head!2771 objs!24))) (list!5746 (print!983 sep!3)))))))

(declare-fun bm!96841 () Bool)

(assert (=> bm!96841 (= call!96836 (printList!664 (ite c!233313 Lexer!2208 (ite c!233310 lt!479152 lt!479178)) (ite c!233313 Nil!14562 (ite c!233310 lt!479195 lt!479148))))))

(declare-fun b!1419550 () Bool)

(assert (=> b!1419550 (= e!906147 call!96838)))

(declare-fun bm!96842 () Bool)

(declare-fun printTailRec!647 (LexerInterface!2210 BalanceConc!9712 Int BalanceConc!9710) BalanceConc!9710)

(assert (=> bm!96842 (= call!96841 (printTailRec!647 Lexer!2208 (tokens!1844 sep!3) 0 (BalanceConc!9711 Empty!4885)))))

(declare-fun b!1419551 () Bool)

(assert (=> b!1419551 (= e!906144 e!906148)))

(declare-fun res!642780 () Bool)

(assert (=> b!1419551 (=> (not res!642780) (not e!906148))))

(assert (=> b!1419551 (= res!642780 (= (rules!11152 (get!4478 lt!479183)) (rules!11152 (head!2771 objs!24))))))

(declare-fun bm!96843 () Bool)

(assert (=> bm!96843 (= call!96843 (list!5747 (ite c!233313 (tokens!1844 sep!3) (tokens!1844 (head!2771 objs!24)))))))

(declare-fun bm!96844 () Bool)

(assert (=> bm!96844 (= call!96854 (list!5747 (ite c!233313 (tokens!1844 (head!2771 objs!24)) (tokens!1844 sep!3))))))

(declare-fun bm!96845 () Bool)

(assert (=> bm!96845 (= call!96855 call!96844)))

(declare-fun bm!96846 () Bool)

(assert (=> bm!96846 (= call!96839 (++!3825 (ite c!233313 call!96861 call!96856) (ite c!233313 call!96848 (ite c!233310 call!96827 call!96859))))))

(declare-fun bm!96847 () Bool)

(assert (=> bm!96847 (= call!96844 (printList!664 (ite c!233313 Lexer!2208 (ite c!233310 lt!479152 lt!479178)) (ite c!233313 (t!124371 lt!479174) call!96852)))))

(declare-fun bm!96848 () Bool)

(assert (=> bm!96848 (= call!96851 (++!3824 (ite c!233313 lt!479170 (ite c!233310 lt!479144 lt!479184)) (ite c!233313 lt!479136 (ite c!233310 lt!479195 lt!479148))))))

(declare-fun b!1419552 () Bool)

(assert (=> b!1419552 (= e!906149 e!906141)))

(assert (=> b!1419552 (= c!233310 (isEmpty!8961 (tokens!1844 (head!2771 objs!24))))))

(declare-fun b!1419553 () Bool)

(declare-fun res!642782 () Bool)

(assert (=> b!1419553 (=> (not res!642782) (not e!906148))))

(assert (=> b!1419553 (= res!642782 (= (list!5747 (tokens!1844 (get!4478 lt!479183))) (++!3824 (list!5747 (tokens!1844 (head!2771 objs!24))) (list!5747 (tokens!1844 sep!3)))))))

(declare-fun bm!96849 () Bool)

(declare-fun c!233314 () Bool)

(assert (=> bm!96849 (= c!233314 c!233310)))

(declare-fun call!96857 () List!14627)

(assert (=> bm!96849 (= call!96860 call!96857)))

(declare-fun bm!96850 () Bool)

(assert (=> bm!96850 (= call!96859 call!96848)))

(declare-fun b!1419554 () Bool)

(assert (=> b!1419554 (= e!906145 call!96850)))

(declare-fun bm!96851 () Bool)

(assert (=> bm!96851 (= call!96833 call!96861)))

(declare-fun bm!96852 () Bool)

(assert (=> bm!96852 (= call!96826 call!96831)))

(declare-fun b!1419555 () Bool)

(assert (=> b!1419555 (= e!906149 (Some!2799 (head!2771 objs!24)))))

(assert (=> b!1419555 (= lt!479141 Lexer!2208)))

(assert (=> b!1419555 (= lt!479170 call!96854)))

(assert (=> b!1419555 (= lt!479136 Nil!14562)))

(declare-fun lt!479160 () Unit!21720)

(assert (=> b!1419555 (= lt!479160 call!96828)))

(assert (=> b!1419555 (= call!96857 call!96839)))

(declare-fun lt!479137 () Unit!21720)

(assert (=> b!1419555 (= lt!479137 lt!479160)))

(assert (=> b!1419555 (= call!96836 Nil!14561)))

(declare-fun lt!479167 () Unit!21720)

(declare-fun Unit!21732 () Unit!21720)

(assert (=> b!1419555 (= lt!479167 Unit!21732)))

(declare-fun lt!479173 () Unit!21720)

(assert (=> b!1419555 (= lt!479173 call!96831)))

(assert (=> b!1419555 (= call!96825 call!96846)))

(declare-fun lt!479164 () Unit!21720)

(declare-fun Unit!21733 () Unit!21720)

(assert (=> b!1419555 (= lt!479164 Unit!21733)))

(declare-fun lt!479197 () Unit!21720)

(assert (=> b!1419555 (= lt!479197 call!96849)))

(assert (=> b!1419555 (= call!96863 call!96853)))

(declare-fun lt!479181 () Unit!21720)

(declare-fun Unit!21734 () Unit!21720)

(assert (=> b!1419555 (= lt!479181 Unit!21734)))

(assert (=> b!1419555 (= call!96853 call!96841)))

(declare-fun lt!479146 () Unit!21720)

(declare-fun Unit!21735 () Unit!21720)

(assert (=> b!1419555 (= lt!479146 Unit!21735)))

(assert (=> b!1419555 (= lt!479174 call!96843)))

(declare-fun c!233312 () Bool)

(assert (=> b!1419555 (= c!233312 ((_ is Cons!14562) lt!479174))))

(assert (=> b!1419555 (= call!96837 e!906146)))

(declare-fun lt!479155 () Unit!21720)

(declare-fun Unit!21736 () Unit!21720)

(assert (=> b!1419555 (= lt!479155 Unit!21736)))

(declare-fun bm!96853 () Bool)

(assert (=> bm!96853 (= call!96834 call!96843)))

(declare-fun bm!96854 () Bool)

(assert (=> bm!96854 (= call!96828 (lemmaPrintConcatSameAsConcatPrint!29 (ite c!233313 lt!479141 (ite c!233310 lt!479152 lt!479182)) (ite c!233313 lt!479170 (ite c!233310 lt!479144 lt!479192)) (ite c!233313 lt!479136 (ite c!233310 lt!479195 lt!479180))))))

(declare-fun bm!96855 () Bool)

(assert (=> bm!96855 (= call!96846 (print!984 Lexer!2208 (tokens!1844 (head!2771 objs!24))))))

(declare-fun bm!96856 () Bool)

(assert (=> bm!96856 (= call!96863 (print!983 (ite (or c!233313 c!233310) sep!3 (head!2771 objs!24))))))

(declare-fun bm!96857 () Bool)

(assert (=> bm!96857 (= call!96829 call!96853)))

(declare-fun b!1419556 () Bool)

(assert (=> b!1419556 (= e!906146 call!96862)))

(declare-fun bm!96858 () Bool)

(assert (=> bm!96858 (= call!96857 (printList!664 (ite c!233313 lt!479141 (ite c!233310 Lexer!2208 lt!479182)) (ite c!233313 call!96851 e!906147)))))

(assert (= (and d!406709 c!233313) b!1419555))

(assert (= (and d!406709 (not c!233313)) b!1419552))

(assert (= (and b!1419555 c!233312) b!1419556))

(assert (= (and b!1419555 (not c!233312)) b!1419540))

(assert (= (and b!1419552 c!233310) b!1419548))

(assert (= (and b!1419552 (not c!233310)) b!1419546))

(assert (= (and b!1419548 c!233315) b!1419543))

(assert (= (and b!1419548 (not c!233315)) b!1419541))

(assert (= (and b!1419546 c!233316) b!1419547))

(assert (= (and b!1419546 (not c!233316)) b!1419542))

(assert (= (or b!1419548 b!1419547) bm!96828))

(assert (= (or b!1419548 b!1419546 b!1419547) bm!96853))

(assert (= (or b!1419548 b!1419547) bm!96838))

(assert (= (or b!1419548 b!1419547) bm!96851))

(assert (= (or b!1419548 b!1419547) bm!96830))

(assert (= (or b!1419548 b!1419547) bm!96836))

(assert (= (or b!1419548 b!1419546 b!1419547) bm!96835))

(assert (= (or b!1419548 b!1419547) bm!96820))

(assert (= (or b!1419548 b!1419547) bm!96857))

(assert (= (or b!1419548 b!1419547) bm!96824))

(assert (= (or b!1419548 b!1419547) bm!96839))

(assert (= (or b!1419543 b!1419547) bm!96850))

(assert (= (or b!1419548 b!1419547) bm!96849))

(assert (= (and bm!96849 c!233314) b!1419550))

(assert (= (and bm!96849 (not c!233314)) b!1419545))

(assert (= (or b!1419548 b!1419547) bm!96832))

(assert (= (or b!1419548 b!1419547) bm!96852))

(assert (= (or b!1419548 b!1419547) bm!96845))

(assert (= (or b!1419548 b!1419547) bm!96823))

(assert (= (or b!1419543 b!1419547) bm!96822))

(assert (= (and bm!96822 c!233311) b!1419554))

(assert (= (and bm!96822 (not c!233311)) b!1419544))

(assert (= (or b!1419555 bm!96850) bm!96833))

(assert (= (or b!1419555 bm!96839) bm!96855))

(assert (= (or b!1419555 bm!96836) bm!96825))

(assert (= (or b!1419555 bm!96857) bm!96826))

(assert (= (or b!1419555 bm!96851) bm!96831))

(assert (= (or b!1419556 b!1419554) bm!96840))

(assert (= (or b!1419555 b!1419548) bm!96842))

(assert (= (or b!1419555 bm!96835) bm!96844))

(assert (= (or b!1419555 bm!96828) bm!96841))

(assert (= (or b!1419555 bm!96853) bm!96843))

(assert (= (or b!1419555 bm!96824) bm!96856))

(assert (= (or b!1419555 bm!96820) bm!96848))

(assert (= (or b!1419555 bm!96838) bm!96854))

(assert (= (or b!1419556 bm!96845) bm!96847))

(assert (= (or b!1419555 bm!96852) bm!96834))

(assert (= (or b!1419555 bm!96830) bm!96821))

(assert (= (or b!1419555 bm!96849) bm!96858))

(assert (= (or b!1419555 bm!96832) bm!96837))

(assert (= (or b!1419556 b!1419554) bm!96827))

(assert (= (or b!1419555 bm!96823) bm!96846))

(assert (= (or b!1419556 bm!96822) bm!96829))

(assert (= (and d!406709 (not res!642781)) b!1419551))

(assert (= (and b!1419551 res!642780) b!1419553))

(assert (= (and b!1419553 res!642782) b!1419549))

(declare-fun m!1608883 () Bool)

(assert (=> d!406709 m!1608883))

(declare-fun m!1608885 () Bool)

(assert (=> d!406709 m!1608885))

(assert (=> d!406709 m!1608735))

(declare-fun m!1608887 () Bool)

(assert (=> d!406709 m!1608887))

(declare-fun m!1608889 () Bool)

(assert (=> d!406709 m!1608889))

(declare-fun m!1608891 () Bool)

(assert (=> bm!96826 m!1608891))

(declare-fun m!1608893 () Bool)

(assert (=> b!1419545 m!1608893))

(declare-fun m!1608895 () Bool)

(assert (=> b!1419547 m!1608895))

(declare-fun m!1608897 () Bool)

(assert (=> b!1419547 m!1608897))

(declare-fun m!1608899 () Bool)

(assert (=> b!1419547 m!1608899))

(declare-fun m!1608901 () Bool)

(assert (=> b!1419547 m!1608901))

(declare-fun m!1608903 () Bool)

(assert (=> b!1419547 m!1608903))

(declare-fun m!1608905 () Bool)

(assert (=> b!1419547 m!1608905))

(declare-fun m!1608907 () Bool)

(assert (=> b!1419547 m!1608907))

(assert (=> b!1419547 m!1608901))

(declare-fun m!1608909 () Bool)

(assert (=> b!1419547 m!1608909))

(assert (=> b!1419547 m!1608901))

(declare-fun m!1608911 () Bool)

(assert (=> b!1419547 m!1608911))

(assert (=> b!1419547 m!1608899))

(assert (=> b!1419547 m!1608903))

(declare-fun m!1608913 () Bool)

(assert (=> b!1419547 m!1608913))

(assert (=> b!1419547 m!1608899))

(declare-fun m!1608915 () Bool)

(assert (=> b!1419547 m!1608915))

(declare-fun m!1608917 () Bool)

(assert (=> bm!96831 m!1608917))

(declare-fun m!1608919 () Bool)

(assert (=> b!1419546 m!1608919))

(declare-fun m!1608921 () Bool)

(assert (=> b!1419546 m!1608921))

(declare-fun m!1608923 () Bool)

(assert (=> b!1419546 m!1608923))

(declare-fun m!1608925 () Bool)

(assert (=> b!1419546 m!1608925))

(declare-fun m!1608927 () Bool)

(assert (=> b!1419546 m!1608927))

(assert (=> b!1419546 m!1608923))

(assert (=> b!1419546 m!1608925))

(declare-fun m!1608929 () Bool)

(assert (=> b!1419546 m!1608929))

(declare-fun m!1608931 () Bool)

(assert (=> b!1419546 m!1608931))

(declare-fun m!1608933 () Bool)

(assert (=> bm!96847 m!1608933))

(declare-fun m!1608935 () Bool)

(assert (=> b!1419553 m!1608935))

(declare-fun m!1608937 () Bool)

(assert (=> b!1419553 m!1608937))

(declare-fun m!1608939 () Bool)

(assert (=> b!1419553 m!1608939))

(assert (=> b!1419553 m!1608937))

(assert (=> b!1419553 m!1608935))

(declare-fun m!1608941 () Bool)

(assert (=> b!1419553 m!1608941))

(declare-fun m!1608943 () Bool)

(assert (=> b!1419553 m!1608943))

(declare-fun m!1608945 () Bool)

(assert (=> bm!96858 m!1608945))

(declare-fun m!1608947 () Bool)

(assert (=> bm!96834 m!1608947))

(declare-fun m!1608949 () Bool)

(assert (=> bm!96856 m!1608949))

(declare-fun m!1608951 () Bool)

(assert (=> bm!96854 m!1608951))

(declare-fun m!1608953 () Bool)

(assert (=> bm!96827 m!1608953))

(declare-fun m!1608955 () Bool)

(assert (=> bm!96829 m!1608955))

(declare-fun m!1608957 () Bool)

(assert (=> bm!96841 m!1608957))

(declare-fun m!1608959 () Bool)

(assert (=> bm!96837 m!1608959))

(declare-fun m!1608961 () Bool)

(assert (=> bm!96848 m!1608961))

(declare-fun m!1608963 () Bool)

(assert (=> bm!96840 m!1608963))

(declare-fun m!1608965 () Bool)

(assert (=> bm!96846 m!1608965))

(declare-fun m!1608967 () Bool)

(assert (=> b!1419549 m!1608967))

(declare-fun m!1608969 () Bool)

(assert (=> b!1419549 m!1608969))

(assert (=> b!1419549 m!1608735))

(assert (=> b!1419549 m!1608967))

(assert (=> b!1419549 m!1608969))

(declare-fun m!1608971 () Bool)

(assert (=> b!1419549 m!1608971))

(declare-fun m!1608973 () Bool)

(assert (=> b!1419549 m!1608973))

(declare-fun m!1608975 () Bool)

(assert (=> b!1419549 m!1608975))

(declare-fun m!1608977 () Bool)

(assert (=> b!1419549 m!1608977))

(declare-fun m!1608979 () Bool)

(assert (=> b!1419549 m!1608979))

(assert (=> b!1419549 m!1608939))

(assert (=> b!1419549 m!1608979))

(assert (=> b!1419549 m!1608971))

(assert (=> b!1419549 m!1608939))

(assert (=> b!1419549 m!1608975))

(declare-fun m!1608981 () Bool)

(assert (=> bm!96825 m!1608981))

(assert (=> b!1419551 m!1608939))

(declare-fun m!1608983 () Bool)

(assert (=> bm!96833 m!1608983))

(declare-fun m!1608985 () Bool)

(assert (=> bm!96855 m!1608985))

(declare-fun m!1608987 () Bool)

(assert (=> bm!96821 m!1608987))

(declare-fun m!1608989 () Bool)

(assert (=> b!1419552 m!1608989))

(declare-fun m!1608991 () Bool)

(assert (=> bm!96844 m!1608991))

(declare-fun m!1608993 () Bool)

(assert (=> bm!96843 m!1608993))

(declare-fun m!1608995 () Bool)

(assert (=> bm!96842 m!1608995))

(assert (=> b!1419411 d!406709))

(declare-fun d!406715 () Bool)

(declare-fun lt!479200 () PrintableTokens!856)

(declare-fun head!2774 (List!14630) PrintableTokens!856)

(declare-fun list!5750 (BalanceConc!9714) List!14630)

(assert (=> d!406715 (= lt!479200 (head!2774 (list!5750 objs!24)))))

(declare-fun head!2775 (Conc!4887) PrintableTokens!856)

(assert (=> d!406715 (= lt!479200 (head!2775 (c!233260 objs!24)))))

(assert (=> d!406715 (not (isEmpty!8960 objs!24))))

(assert (=> d!406715 (= (head!2771 objs!24) lt!479200)))

(declare-fun bs!339685 () Bool)

(assert (= bs!339685 d!406715))

(declare-fun m!1608997 () Bool)

(assert (=> bs!339685 m!1608997))

(assert (=> bs!339685 m!1608997))

(declare-fun m!1608999 () Bool)

(assert (=> bs!339685 m!1608999))

(declare-fun m!1609001 () Bool)

(assert (=> bs!339685 m!1609001))

(assert (=> bs!339685 m!1608721))

(assert (=> b!1419411 d!406715))

(declare-fun d!406717 () Bool)

(declare-fun c!233319 () Bool)

(assert (=> d!406717 (= c!233319 ((_ is Node!4887) (c!233260 objs!24)))))

(declare-fun e!906154 () Bool)

(assert (=> d!406717 (= (inv!19205 (c!233260 objs!24)) e!906154)))

(declare-fun b!1419563 () Bool)

(declare-fun inv!19214 (Conc!4887) Bool)

(assert (=> b!1419563 (= e!906154 (inv!19214 (c!233260 objs!24)))))

(declare-fun b!1419564 () Bool)

(declare-fun e!906155 () Bool)

(assert (=> b!1419564 (= e!906154 e!906155)))

(declare-fun res!642785 () Bool)

(assert (=> b!1419564 (= res!642785 (not ((_ is Leaf!7352) (c!233260 objs!24))))))

(assert (=> b!1419564 (=> res!642785 e!906155)))

(declare-fun b!1419565 () Bool)

(declare-fun inv!19215 (Conc!4887) Bool)

(assert (=> b!1419565 (= e!906155 (inv!19215 (c!233260 objs!24)))))

(assert (= (and d!406717 c!233319) b!1419563))

(assert (= (and d!406717 (not c!233319)) b!1419564))

(assert (= (and b!1419564 (not res!642785)) b!1419565))

(declare-fun m!1609003 () Bool)

(assert (=> b!1419563 m!1609003))

(declare-fun m!1609005 () Bool)

(assert (=> b!1419565 m!1609005))

(assert (=> b!1419418 d!406717))

(declare-fun d!406719 () Bool)

(declare-fun lt!479203 () Bool)

(declare-fun isEmpty!8963 (List!14630) Bool)

(assert (=> d!406719 (= lt!479203 (isEmpty!8963 (list!5750 objs!24)))))

(declare-fun isEmpty!8964 (Conc!4887) Bool)

(assert (=> d!406719 (= lt!479203 (isEmpty!8964 (c!233260 objs!24)))))

(assert (=> d!406719 (= (isEmpty!8960 objs!24) lt!479203)))

(declare-fun bs!339686 () Bool)

(assert (= bs!339686 d!406719))

(assert (=> bs!339686 m!1608997))

(assert (=> bs!339686 m!1608997))

(declare-fun m!1609007 () Bool)

(assert (=> bs!339686 m!1609007))

(declare-fun m!1609009 () Bool)

(assert (=> bs!339686 m!1609009))

(assert (=> b!1419419 d!406719))

(declare-fun d!406721 () Bool)

(declare-fun lt!479206 () Int)

(declare-fun size!12023 (List!14630) Int)

(assert (=> d!406721 (= lt!479206 (size!12023 (list!5750 objs!24)))))

(declare-fun size!12024 (Conc!4887) Int)

(assert (=> d!406721 (= lt!479206 (size!12024 (c!233260 objs!24)))))

(assert (=> d!406721 (= (size!12022 objs!24) lt!479206)))

(declare-fun bs!339687 () Bool)

(assert (= bs!339687 d!406721))

(assert (=> bs!339687 m!1608997))

(assert (=> bs!339687 m!1608997))

(declare-fun m!1609011 () Bool)

(assert (=> bs!339687 m!1609011))

(declare-fun m!1609013 () Bool)

(assert (=> bs!339687 m!1609013))

(assert (=> b!1419409 d!406721))

(declare-fun d!406723 () Bool)

(declare-fun c!233320 () Bool)

(assert (=> d!406723 (= c!233320 ((_ is Node!4886) (c!233259 (tokens!1844 acc!229))))))

(declare-fun e!906156 () Bool)

(assert (=> d!406723 (= (inv!19204 (c!233259 (tokens!1844 acc!229))) e!906156)))

(declare-fun b!1419566 () Bool)

(assert (=> b!1419566 (= e!906156 (inv!19208 (c!233259 (tokens!1844 acc!229))))))

(declare-fun b!1419567 () Bool)

(declare-fun e!906157 () Bool)

(assert (=> b!1419567 (= e!906156 e!906157)))

(declare-fun res!642786 () Bool)

(assert (=> b!1419567 (= res!642786 (not ((_ is Leaf!7351) (c!233259 (tokens!1844 acc!229)))))))

(assert (=> b!1419567 (=> res!642786 e!906157)))

(declare-fun b!1419568 () Bool)

(assert (=> b!1419568 (= e!906157 (inv!19209 (c!233259 (tokens!1844 acc!229))))))

(assert (= (and d!406723 c!233320) b!1419566))

(assert (= (and d!406723 (not c!233320)) b!1419567))

(assert (= (and b!1419567 (not res!642786)) b!1419568))

(declare-fun m!1609015 () Bool)

(assert (=> b!1419566 m!1609015))

(declare-fun m!1609017 () Bool)

(assert (=> b!1419568 m!1609017))

(assert (=> b!1419415 d!406723))

(declare-fun d!406725 () Bool)

(assert (=> d!406725 (= (inv!19203 (tokens!1844 sep!3)) (isBalanced!1453 (c!233259 (tokens!1844 sep!3))))))

(declare-fun bs!339688 () Bool)

(assert (= bs!339688 d!406725))

(declare-fun m!1609019 () Bool)

(assert (=> bs!339688 m!1609019))

(assert (=> b!1419416 d!406725))

(declare-fun d!406727 () Bool)

(declare-fun lt!479209 () Bool)

(declare-fun forall!3632 (List!14630 Int) Bool)

(assert (=> d!406727 (= lt!479209 (forall!3632 (list!5750 objs!24) lambda!62637))))

(declare-fun forall!3633 (Conc!4887 Int) Bool)

(assert (=> d!406727 (= lt!479209 (forall!3633 (c!233260 objs!24) lambda!62637))))

(assert (=> d!406727 (= (forall!3631 objs!24 lambda!62637) lt!479209)))

(declare-fun bs!339689 () Bool)

(assert (= bs!339689 d!406727))

(assert (=> bs!339689 m!1608997))

(assert (=> bs!339689 m!1608997))

(declare-fun m!1609021 () Bool)

(assert (=> bs!339689 m!1609021))

(declare-fun m!1609023 () Bool)

(assert (=> bs!339689 m!1609023))

(assert (=> start!130608 d!406727))

(declare-fun d!406729 () Bool)

(declare-fun isBalanced!1455 (Conc!4887) Bool)

(assert (=> d!406729 (= (inv!19206 objs!24) (isBalanced!1455 (c!233260 objs!24)))))

(declare-fun bs!339690 () Bool)

(assert (= bs!339690 d!406729))

(declare-fun m!1609025 () Bool)

(assert (=> bs!339690 m!1609025))

(assert (=> start!130608 d!406729))

(declare-fun d!406731 () Bool)

(declare-fun res!642797 () Bool)

(declare-fun e!906172 () Bool)

(assert (=> d!406731 (=> (not res!642797) (not e!906172))))

(declare-fun isEmpty!8965 (List!14629) Bool)

(assert (=> d!406731 (= res!642797 (not (isEmpty!8965 (rules!11152 acc!229))))))

(assert (=> d!406731 (= (inv!19207 acc!229) e!906172)))

(declare-fun b!1419597 () Bool)

(declare-fun res!642798 () Bool)

(assert (=> b!1419597 (=> (not res!642798) (not e!906172))))

(declare-fun rulesInvariant!2080 (LexerInterface!2210 List!14629) Bool)

(assert (=> b!1419597 (= res!642798 (rulesInvariant!2080 Lexer!2208 (rules!11152 acc!229)))))

(declare-fun b!1419598 () Bool)

(declare-fun res!642799 () Bool)

(assert (=> b!1419598 (=> (not res!642799) (not e!906172))))

(declare-fun rulesProduceEachTokenIndividually!807 (LexerInterface!2210 List!14629 BalanceConc!9712) Bool)

(assert (=> b!1419598 (= res!642799 (rulesProduceEachTokenIndividually!807 Lexer!2208 (rules!11152 acc!229) (tokens!1844 acc!229)))))

(declare-fun b!1419599 () Bool)

(declare-fun separableTokens!192 (LexerInterface!2210 BalanceConc!9712 List!14629) Bool)

(assert (=> b!1419599 (= e!906172 (separableTokens!192 Lexer!2208 (tokens!1844 acc!229) (rules!11152 acc!229)))))

(assert (= (and d!406731 res!642797) b!1419597))

(assert (= (and b!1419597 res!642798) b!1419598))

(assert (= (and b!1419598 res!642799) b!1419599))

(declare-fun m!1609149 () Bool)

(assert (=> d!406731 m!1609149))

(declare-fun m!1609151 () Bool)

(assert (=> b!1419597 m!1609151))

(declare-fun m!1609153 () Bool)

(assert (=> b!1419598 m!1609153))

(declare-fun m!1609155 () Bool)

(assert (=> b!1419599 m!1609155))

(assert (=> start!130608 d!406731))

(declare-fun d!406753 () Bool)

(declare-fun res!642800 () Bool)

(declare-fun e!906173 () Bool)

(assert (=> d!406753 (=> (not res!642800) (not e!906173))))

(assert (=> d!406753 (= res!642800 (not (isEmpty!8965 (rules!11152 sep!3))))))

(assert (=> d!406753 (= (inv!19207 sep!3) e!906173)))

(declare-fun b!1419600 () Bool)

(declare-fun res!642801 () Bool)

(assert (=> b!1419600 (=> (not res!642801) (not e!906173))))

(assert (=> b!1419600 (= res!642801 (rulesInvariant!2080 Lexer!2208 (rules!11152 sep!3)))))

(declare-fun b!1419601 () Bool)

(declare-fun res!642802 () Bool)

(assert (=> b!1419601 (=> (not res!642802) (not e!906173))))

(assert (=> b!1419601 (= res!642802 (rulesProduceEachTokenIndividually!807 Lexer!2208 (rules!11152 sep!3) (tokens!1844 sep!3)))))

(declare-fun b!1419602 () Bool)

(assert (=> b!1419602 (= e!906173 (separableTokens!192 Lexer!2208 (tokens!1844 sep!3) (rules!11152 sep!3)))))

(assert (= (and d!406753 res!642800) b!1419600))

(assert (= (and b!1419600 res!642801) b!1419601))

(assert (= (and b!1419601 res!642802) b!1419602))

(declare-fun m!1609157 () Bool)

(assert (=> d!406753 m!1609157))

(declare-fun m!1609159 () Bool)

(assert (=> b!1419600 m!1609159))

(declare-fun m!1609161 () Bool)

(assert (=> b!1419601 m!1609161))

(declare-fun m!1609163 () Bool)

(assert (=> b!1419602 m!1609163))

(assert (=> start!130608 d!406753))

(declare-fun d!406755 () Bool)

(assert (=> d!406755 (= (isEmpty!8959 lt!478809) (not ((_ is Some!2799) lt!478809)))))

(assert (=> b!1419417 d!406755))

(declare-fun bs!339700 () Bool)

(declare-fun d!406757 () Bool)

(assert (= bs!339700 (and d!406757 start!130608)))

(declare-fun lambda!62643 () Int)

(assert (=> bs!339700 (= lambda!62643 lambda!62637)))

(declare-fun b!1419661 () Bool)

(declare-fun e!906208 () Option!2800)

(declare-fun e!906207 () Option!2800)

(assert (=> b!1419661 (= e!906208 e!906207)))

(declare-fun lt!479308 () Option!2800)

(declare-fun call!96923 () Option!2800)

(assert (=> b!1419661 (= lt!479308 call!96923)))

(declare-fun c!233359 () Bool)

(assert (=> b!1419661 (= c!233359 ((_ is Some!2799) lt!479308))))

(declare-fun b!1419662 () Bool)

(declare-fun e!906210 () Option!2800)

(declare-fun e!906212 () Option!2800)

(assert (=> b!1419662 (= e!906210 e!906212)))

(declare-fun c!233356 () Bool)

(assert (=> b!1419662 (= c!233356 (= (size!12022 (tail!2114 objs!24)) 1))))

(declare-fun b!1419663 () Bool)

(declare-fun e!906209 () Option!2800)

(declare-fun call!96924 () Option!2800)

(assert (=> b!1419663 (= e!906209 call!96924)))

(declare-fun b!1419664 () Bool)

(declare-fun c!233358 () Bool)

(declare-fun lt!479309 () Option!2800)

(assert (=> b!1419664 (= c!233358 ((_ is Some!2799) lt!479309))))

(declare-fun call!96926 () PrintableTokens!856)

(assert (=> b!1419664 (= lt!479309 (append!452 call!96926 sep!3))))

(assert (=> b!1419664 (= e!906212 e!906208)))

(declare-fun bm!96918 () Bool)

(assert (=> bm!96918 (= call!96926 (head!2771 (tail!2114 objs!24)))))

(declare-fun b!1419665 () Bool)

(declare-fun e!906211 () Bool)

(declare-fun lt!479306 () Option!2800)

(assert (=> b!1419665 (= e!906211 (usesJsonRules!0 (get!4478 lt!479306)))))

(declare-fun bm!96919 () Bool)

(assert (=> bm!96919 (= call!96923 (append!452 (v!22163 lt!478808) (ite c!233356 call!96926 (v!22163 lt!479309))))))

(declare-fun b!1419666 () Bool)

(assert (=> b!1419666 (= e!906207 None!2799)))

(declare-fun b!1419667 () Bool)

(assert (=> b!1419667 (= e!906207 call!96924)))

(assert (=> d!406757 e!906211))

(declare-fun res!642811 () Bool)

(assert (=> d!406757 (=> res!642811 e!906211)))

(assert (=> d!406757 (= res!642811 (isEmpty!8959 lt!479306))))

(assert (=> d!406757 (= lt!479306 e!906210)))

(declare-fun c!233360 () Bool)

(assert (=> d!406757 (= c!233360 (isEmpty!8960 (tail!2114 objs!24)))))

(assert (=> d!406757 (forall!3631 (tail!2114 objs!24) lambda!62643)))

(assert (=> d!406757 (= (recombineSlicesWithSep!0 (tail!2114 objs!24) sep!3 (v!22163 lt!478808)) lt!479306)))

(declare-fun bm!96920 () Bool)

(declare-fun call!96925 () BalanceConc!9714)

(assert (=> bm!96920 (= call!96925 (tail!2114 (tail!2114 objs!24)))))

(declare-fun b!1419668 () Bool)

(assert (=> b!1419668 (= e!906208 None!2799)))

(declare-fun bm!96921 () Bool)

(declare-fun lt!479307 () Option!2800)

(assert (=> bm!96921 (= call!96924 (recombineSlicesWithSep!0 call!96925 sep!3 (ite c!233356 (v!22163 lt!479307) (v!22163 lt!479308))))))

(declare-fun b!1419669 () Bool)

(assert (=> b!1419669 (= e!906209 None!2799)))

(declare-fun b!1419670 () Bool)

(declare-fun c!233357 () Bool)

(assert (=> b!1419670 (= c!233357 ((_ is Some!2799) lt!479307))))

(assert (=> b!1419670 (= lt!479307 call!96923)))

(assert (=> b!1419670 (= e!906212 e!906209)))

(declare-fun b!1419671 () Bool)

(assert (=> b!1419671 (= e!906210 (Some!2799 (v!22163 lt!478808)))))

(assert (= (and d!406757 c!233360) b!1419671))

(assert (= (and d!406757 (not c!233360)) b!1419662))

(assert (= (and b!1419662 c!233356) b!1419670))

(assert (= (and b!1419662 (not c!233356)) b!1419664))

(assert (= (and b!1419670 c!233357) b!1419663))

(assert (= (and b!1419670 (not c!233357)) b!1419669))

(assert (= (and b!1419664 c!233358) b!1419661))

(assert (= (and b!1419664 (not c!233358)) b!1419668))

(assert (= (and b!1419661 c!233359) b!1419667))

(assert (= (and b!1419661 (not c!233359)) b!1419666))

(assert (= (or b!1419670 b!1419664) bm!96918))

(assert (= (or b!1419663 b!1419667) bm!96920))

(assert (= (or b!1419670 b!1419661) bm!96919))

(assert (= (or b!1419663 b!1419667) bm!96921))

(assert (= (and d!406757 (not res!642811)) b!1419665))

(assert (=> b!1419662 m!1608713))

(declare-fun m!1609201 () Bool)

(assert (=> b!1419662 m!1609201))

(declare-fun m!1609203 () Bool)

(assert (=> b!1419664 m!1609203))

(declare-fun m!1609205 () Bool)

(assert (=> d!406757 m!1609205))

(assert (=> d!406757 m!1608713))

(declare-fun m!1609207 () Bool)

(assert (=> d!406757 m!1609207))

(assert (=> d!406757 m!1608713))

(declare-fun m!1609209 () Bool)

(assert (=> d!406757 m!1609209))

(declare-fun m!1609211 () Bool)

(assert (=> b!1419665 m!1609211))

(assert (=> b!1419665 m!1609211))

(declare-fun m!1609213 () Bool)

(assert (=> b!1419665 m!1609213))

(assert (=> bm!96918 m!1608713))

(declare-fun m!1609215 () Bool)

(assert (=> bm!96918 m!1609215))

(declare-fun m!1609217 () Bool)

(assert (=> bm!96921 m!1609217))

(declare-fun m!1609219 () Bool)

(assert (=> bm!96919 m!1609219))

(assert (=> bm!96920 m!1608713))

(declare-fun m!1609221 () Bool)

(assert (=> bm!96920 m!1609221))

(assert (=> b!1419417 d!406757))

(declare-fun d!406767 () Bool)

(declare-fun e!906215 () Bool)

(assert (=> d!406767 e!906215))

(declare-fun res!642814 () Bool)

(assert (=> d!406767 (=> (not res!642814) (not e!906215))))

(declare-fun tail!2115 (Conc!4887) Conc!4887)

(assert (=> d!406767 (= res!642814 (isBalanced!1455 (tail!2115 (c!233260 objs!24))))))

(declare-fun lt!479312 () BalanceConc!9714)

(assert (=> d!406767 (= lt!479312 (BalanceConc!9715 (tail!2115 (c!233260 objs!24))))))

(assert (=> d!406767 (not (isEmpty!8960 objs!24))))

(assert (=> d!406767 (= (tail!2114 objs!24) lt!479312)))

(declare-fun b!1419674 () Bool)

(declare-fun tail!2116 (List!14630) List!14630)

(assert (=> b!1419674 (= e!906215 (= (list!5750 lt!479312) (tail!2116 (list!5750 objs!24))))))

(assert (= (and d!406767 res!642814) b!1419674))

(declare-fun m!1609223 () Bool)

(assert (=> d!406767 m!1609223))

(assert (=> d!406767 m!1609223))

(declare-fun m!1609225 () Bool)

(assert (=> d!406767 m!1609225))

(assert (=> d!406767 m!1608721))

(declare-fun m!1609227 () Bool)

(assert (=> b!1419674 m!1609227))

(assert (=> b!1419674 m!1608997))

(assert (=> b!1419674 m!1608997))

(declare-fun m!1609229 () Bool)

(assert (=> b!1419674 m!1609229))

(assert (=> b!1419417 d!406767))

(declare-fun d!406769 () Bool)

(assert (=> d!406769 (= (usesJsonRules!0 (get!4478 lt!478809)) (= (rules!11152 (get!4478 lt!478809)) (rules!109 JsonLexer!425)))))

(declare-fun bs!339701 () Bool)

(assert (= bs!339701 d!406769))

(assert (=> bs!339701 m!1608769))

(assert (=> b!1419412 d!406769))

(declare-fun d!406771 () Bool)

(assert (=> d!406771 (= (get!4478 lt!478809) (v!22163 lt!478809))))

(assert (=> b!1419412 d!406771))

(declare-fun bm!96922 () Bool)

(declare-fun call!96954 () List!14628)

(declare-fun call!96953 () List!14628)

(assert (=> bm!96922 (= call!96954 call!96953)))

(declare-fun lt!479331 () LexerInterface!2210)

(declare-fun lt!479371 () List!14628)

(declare-fun c!233362 () Bool)

(declare-fun call!96939 () List!14627)

(declare-fun c!233365 () Bool)

(declare-fun call!96945 () List!14628)

(declare-fun lt!479323 () List!14628)

(declare-fun bm!96923 () Bool)

(declare-fun lt!479361 () LexerInterface!2210)

(assert (=> bm!96923 (= call!96939 (printList!664 (ite c!233365 Lexer!2208 (ite c!233362 lt!479331 lt!479361)) (ite c!233365 call!96945 (ite c!233362 lt!479323 lt!479371))))))

(declare-fun b!1419676 () Bool)

(declare-fun e!906218 () List!14627)

(assert (=> b!1419676 (= e!906218 Nil!14561)))

(declare-fun b!1419677 () Bool)

(declare-fun e!906217 () Option!2800)

(assert (=> b!1419677 (= e!906217 None!2799)))

(declare-fun bm!96924 () Bool)

(declare-fun c!233363 () Bool)

(assert (=> bm!96924 (= c!233363 c!233362)))

(declare-fun call!96949 () List!14627)

(declare-fun call!96964 () List!14627)

(assert (=> bm!96924 (= call!96949 call!96964)))

(declare-fun bm!96925 () Bool)

(declare-fun call!96944 () List!14627)

(declare-fun call!96941 () List!14627)

(assert (=> bm!96925 (= call!96944 call!96941)))

(declare-fun bm!96926 () Bool)

(declare-fun call!96937 () BalanceConc!9710)

(declare-fun call!96965 () BalanceConc!9710)

(assert (=> bm!96926 (= call!96937 call!96965)))

(declare-fun b!1419678 () Bool)

(assert (=> b!1419678 (= e!906218 call!96949)))

(declare-fun bm!96927 () Bool)

(declare-fun call!96927 () BalanceConc!9710)

(assert (=> bm!96927 (= call!96927 (print!983 (ite (or c!233365 c!233362) acc!229 (v!22163 lt!478810))))))

(declare-fun bm!96928 () Bool)

(declare-fun call!96955 () BalanceConc!9710)

(assert (=> bm!96928 (= call!96955 (print!984 Lexer!2208 (tokens!1844 (v!22163 lt!478810))))))

(declare-fun b!1419679 () Bool)

(declare-fun e!906220 () List!14627)

(declare-fun call!96935 () List!14627)

(assert (=> b!1419679 (= e!906220 call!96935)))

(declare-fun d!406773 () Bool)

(declare-fun e!906219 () Bool)

(assert (=> d!406773 e!906219))

(declare-fun res!642816 () Bool)

(assert (=> d!406773 (=> res!642816 e!906219)))

(declare-fun lt!479362 () Option!2800)

(assert (=> d!406773 (= res!642816 (isEmpty!8959 lt!479362))))

(declare-fun e!906224 () Option!2800)

(assert (=> d!406773 (= lt!479362 e!906224)))

(assert (=> d!406773 (= c!233365 (isEmpty!8961 (tokens!1844 (v!22163 lt!478810))))))

(declare-fun lt!479358 () Unit!21720)

(assert (=> d!406773 (= lt!479358 (lemmaInvariant!236 acc!229))))

(declare-fun lt!479336 () Unit!21720)

(assert (=> d!406773 (= lt!479336 (lemmaInvariant!236 (v!22163 lt!478810)))))

(assert (=> d!406773 (= (rules!11152 acc!229) (rules!11152 (v!22163 lt!478810)))))

(assert (=> d!406773 (= (append!452 acc!229 (v!22163 lt!478810)) lt!479362)))

(declare-fun b!1419675 () Bool)

(declare-fun e!906221 () List!14627)

(assert (=> b!1419675 (= e!906221 Nil!14561)))

(declare-fun bm!96929 () Bool)

(declare-fun call!96952 () List!14627)

(declare-fun call!96960 () BalanceConc!9710)

(assert (=> bm!96929 (= call!96952 (list!5746 call!96960))))

(declare-fun bm!96930 () Bool)

(declare-fun call!96929 () List!14627)

(declare-fun call!96938 () List!14627)

(assert (=> bm!96930 (= call!96929 call!96938)))

(declare-fun b!1419680 () Bool)

(declare-fun e!906222 () List!14628)

(declare-fun lt!479359 () List!14628)

(assert (=> b!1419680 (= e!906222 (++!3824 lt!479371 lt!479359))))

(declare-fun call!96961 () List!14627)

(declare-fun call!96946 () List!14627)

(declare-fun bm!96931 () Bool)

(assert (=> bm!96931 (= call!96964 (++!3825 (ite c!233365 call!96952 e!906220) (ite c!233365 call!96946 (ite c!233362 call!96961 call!96929))))))

(declare-fun b!1419681 () Bool)

(declare-fun c!233368 () Bool)

(assert (=> b!1419681 (= c!233368 (separableTokensPredicate!487 Lexer!2208 (last!88 (tokens!1844 acc!229)) (head!2772 (tokens!1844 (v!22163 lt!478810))) (rules!11152 acc!229)))))

(declare-fun lt!479313 () Unit!21720)

(declare-fun lt!479350 () Unit!21720)

(assert (=> b!1419681 (= lt!479313 lt!479350)))

(declare-fun lt!479318 () LexerInterface!2210)

(declare-fun lt!479328 () Token!4736)

(assert (=> b!1419681 (rulesProduceIndividualToken!1173 lt!479318 (rules!11152 acc!229) lt!479328)))

(declare-fun lt!479341 () List!14628)

(assert (=> b!1419681 (= lt!479350 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!358 lt!479318 (rules!11152 acc!229) lt!479341 lt!479328))))

(assert (=> b!1419681 (= lt!479328 (head!2772 (tokens!1844 (v!22163 lt!478810))))))

(declare-fun call!96940 () List!14628)

(assert (=> b!1419681 (= lt!479341 call!96940)))

(assert (=> b!1419681 (= lt!479318 Lexer!2208)))

(declare-fun lt!479373 () Unit!21720)

(declare-fun lt!479344 () Unit!21720)

(assert (=> b!1419681 (= lt!479373 lt!479344)))

(declare-fun lt!479354 () LexerInterface!2210)

(declare-fun lt!479351 () Token!4736)

(assert (=> b!1419681 (rulesProduceIndividualToken!1173 lt!479354 (rules!11152 acc!229) lt!479351)))

(declare-fun lt!479340 () List!14628)

(assert (=> b!1419681 (= lt!479344 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!358 lt!479354 (rules!11152 acc!229) lt!479340 lt!479351))))

(assert (=> b!1419681 (= lt!479351 (last!88 (tokens!1844 acc!229)))))

(declare-fun call!96936 () List!14628)

(assert (=> b!1419681 (= lt!479340 call!96936)))

(assert (=> b!1419681 (= lt!479354 Lexer!2208)))

(declare-fun e!906216 () Option!2800)

(assert (=> b!1419681 (= e!906216 e!906217)))

(declare-fun bm!96932 () Bool)

(declare-fun call!96958 () List!14627)

(assert (=> bm!96932 (= call!96958 call!96939)))

(declare-fun call!96963 () List!14627)

(declare-fun lt!479320 () LexerInterface!2210)

(declare-fun bm!96933 () Bool)

(declare-fun lt!479357 () LexerInterface!2210)

(declare-fun lt!479363 () List!14628)

(declare-fun lt!479349 () List!14628)

(assert (=> bm!96933 (= call!96963 (printList!664 (ite c!233365 lt!479320 (ite c!233362 Lexer!2208 lt!479357)) (ite c!233365 lt!479349 (ite c!233362 Nil!14562 lt!479363))))))

(declare-fun bm!96934 () Bool)

(declare-fun call!96934 () Unit!21720)

(declare-fun call!96951 () Unit!21720)

(assert (=> bm!96934 (= call!96934 call!96951)))

(declare-fun lt!479315 () List!14628)

(declare-fun bm!96935 () Bool)

(declare-fun call!96950 () List!14627)

(declare-fun lt!479366 () List!14628)

(assert (=> bm!96935 (= call!96950 (printList!664 (ite c!233365 lt!479320 (ite c!233362 Lexer!2208 lt!479361)) (ite c!233365 lt!479315 (ite c!233362 (t!124371 lt!479366) lt!479359))))))

(declare-fun call!96933 () Unit!21720)

(declare-fun call!96956 () List!14628)

(declare-fun bm!96936 () Bool)

(assert (=> bm!96936 (= call!96933 (theoremInvertabilityWhenTokenListSeparable!34 Lexer!2208 (ite (or c!233365 c!233362) (rules!11152 acc!229) (rules!11152 (v!22163 lt!478810))) (ite c!233365 call!96956 (ite c!233362 call!96936 call!96940))))))

(declare-fun bm!96937 () Bool)

(assert (=> bm!96937 (= call!96940 call!96956)))

(declare-fun bm!96938 () Bool)

(declare-fun call!96942 () BalanceConc!9710)

(assert (=> bm!96938 (= call!96942 call!96927)))

(declare-fun bm!96939 () Bool)

(assert (=> bm!96939 (= call!96951 (theoremInvertabilityWhenTokenListSeparable!34 Lexer!2208 (ite (or c!233365 c!233362) (rules!11152 (v!22163 lt!478810)) (rules!11152 acc!229)) (ite c!233365 call!96945 (ite c!233362 call!96940 call!96936))))))

(declare-fun b!1419682 () Bool)

(assert (=> b!1419682 (= e!906217 (Some!2799 (PrintableTokens!857 (rules!11152 acc!229) (++!3826 (tokens!1844 acc!229) (tokens!1844 (v!22163 lt!478810))))))))

(declare-fun lt!479365 () LexerInterface!2210)

(assert (=> b!1419682 (= lt!479365 Lexer!2208)))

(declare-fun lt!479372 () List!14628)

(assert (=> b!1419682 (= lt!479372 call!96936)))

(declare-fun lt!479314 () List!14628)

(assert (=> b!1419682 (= lt!479314 call!96940)))

(declare-fun lt!479364 () Unit!21720)

(assert (=> b!1419682 (= lt!479364 (tokensListTwoByTwoPredicateConcatSeparableTokensList!29 lt!479365 lt!479372 lt!479314 (rules!11152 acc!229)))))

(declare-fun lt!479335 () Unit!21720)

(assert (=> b!1419682 (= lt!479335 (lemmaRulesProduceEachTokenIndividuallyConcat!29 lt!479365 (rules!11152 acc!229) lt!479372 lt!479314))))

(assert (=> b!1419682 (rulesProduceEachTokenIndividuallyList!691 lt!479365 (rules!11152 acc!229) (++!3824 lt!479372 lt!479314))))

(declare-fun lt!479348 () Unit!21720)

(assert (=> b!1419682 (= lt!479348 lt!479335)))

(assert (=> b!1419682 (tokensListTwoByTwoPredicateSeparableList!210 lt!479365 (++!3824 lt!479372 lt!479314) (rules!11152 acc!229))))

(declare-fun lt!479367 () Unit!21720)

(assert (=> b!1419682 (= lt!479367 lt!479364)))

(assert (=> b!1419682 (= lt!479361 Lexer!2208)))

(assert (=> b!1419682 (= lt!479371 call!96936)))

(assert (=> b!1419682 (= lt!479359 call!96940)))

(declare-fun lt!479317 () Unit!21720)

(declare-fun call!96932 () Unit!21720)

(assert (=> b!1419682 (= lt!479317 call!96932)))

(declare-fun call!96962 () List!14627)

(assert (=> b!1419682 (= call!96962 call!96944)))

(declare-fun lt!479332 () Unit!21720)

(assert (=> b!1419682 (= lt!479332 lt!479317)))

(declare-fun lt!479369 () Unit!21720)

(assert (=> b!1419682 (= lt!479369 call!96934)))

(declare-fun call!96947 () BalanceConc!9710)

(assert (=> b!1419682 (= call!96937 call!96947)))

(declare-fun lt!479342 () Unit!21720)

(declare-fun Unit!21750 () Unit!21720)

(assert (=> b!1419682 (= lt!479342 Unit!21750)))

(declare-fun lt!479337 () Unit!21720)

(declare-fun call!96928 () Unit!21720)

(assert (=> b!1419682 (= lt!479337 call!96928)))

(declare-fun call!96931 () BalanceConc!9710)

(assert (=> b!1419682 (= call!96942 call!96931)))

(declare-fun lt!479356 () Unit!21720)

(declare-fun Unit!21751 () Unit!21720)

(assert (=> b!1419682 (= lt!479356 Unit!21751)))

(declare-fun lt!479375 () PrintableTokens!856)

(assert (=> b!1419682 (= lt!479375 (PrintableTokens!857 (rules!11152 acc!229) (++!3826 (tokens!1844 acc!229) (tokens!1844 (v!22163 lt!478810)))))))

(declare-fun lt!479326 () BalanceConc!9712)

(assert (=> b!1419682 (= lt!479326 (++!3826 (tokens!1844 acc!229) (tokens!1844 (v!22163 lt!478810))))))

(declare-fun lt!479370 () Unit!21720)

(assert (=> b!1419682 (= lt!479370 (theoremInvertabilityWhenTokenListSeparable!34 Lexer!2208 (rules!11152 acc!229) (list!5747 (++!3826 (tokens!1844 acc!229) (tokens!1844 (v!22163 lt!478810))))))))

(assert (=> b!1419682 (= (print!983 (PrintableTokens!857 (rules!11152 acc!229) (++!3826 (tokens!1844 acc!229) (tokens!1844 (v!22163 lt!478810))))) (print!984 Lexer!2208 (++!3826 (tokens!1844 acc!229) (tokens!1844 (v!22163 lt!478810)))))))

(declare-fun lt!479321 () Unit!21720)

(declare-fun Unit!21754 () Unit!21720)

(assert (=> b!1419682 (= lt!479321 Unit!21754)))

(assert (=> b!1419682 (= lt!479357 Lexer!2208)))

(assert (=> b!1419682 (= lt!479363 call!96936)))

(declare-fun lt!479327 () List!14628)

(assert (=> b!1419682 (= lt!479327 call!96940)))

(declare-fun lt!479319 () Unit!21720)

(assert (=> b!1419682 (= lt!479319 (lemmaPrintConcatSameAsConcatPrint!29 lt!479357 lt!479363 lt!479327))))

(declare-fun call!96957 () List!14627)

(assert (=> b!1419682 (= call!96957 call!96949)))

(declare-fun lt!479338 () Unit!21720)

(assert (=> b!1419682 (= lt!479338 lt!479319)))

(declare-fun bm!96940 () Bool)

(declare-fun call!96930 () Unit!21720)

(assert (=> bm!96940 (= call!96932 call!96930)))

(declare-fun bm!96941 () Bool)

(declare-fun call!96948 () BalanceConc!9710)

(assert (=> bm!96941 (= call!96947 call!96948)))

(declare-fun lt!479353 () List!14628)

(declare-fun bm!96942 () Bool)

(assert (=> bm!96942 (= call!96960 (charsOf!1481 (ite c!233365 (h!19963 lt!479353) (h!19963 lt!479366))))))

(declare-fun b!1419683 () Bool)

(declare-fun lt!479322 () Unit!21720)

(declare-fun Unit!21758 () Unit!21720)

(assert (=> b!1419683 (= lt!479322 Unit!21758)))

(assert (=> b!1419683 (= call!96962 e!906218)))

(declare-fun c!233367 () Bool)

(assert (=> b!1419683 (= c!233367 ((_ is Cons!14562) lt!479366))))

(assert (=> b!1419683 (= lt!479366 call!96940)))

(declare-fun lt!479347 () Unit!21720)

(declare-fun Unit!21759 () Unit!21720)

(assert (=> b!1419683 (= lt!479347 Unit!21759)))

(declare-fun call!96943 () BalanceConc!9710)

(assert (=> b!1419683 (= call!96931 call!96943)))

(declare-fun lt!479324 () Unit!21720)

(declare-fun Unit!21760 () Unit!21720)

(assert (=> b!1419683 (= lt!479324 Unit!21760)))

(assert (=> b!1419683 (= call!96937 call!96931)))

(declare-fun lt!479345 () Unit!21720)

(assert (=> b!1419683 (= lt!479345 call!96934)))

(declare-fun lt!479355 () Unit!21720)

(declare-fun Unit!21762 () Unit!21720)

(assert (=> b!1419683 (= lt!479355 Unit!21762)))

(assert (=> b!1419683 (= call!96942 call!96947)))

(declare-fun lt!479330 () Unit!21720)

(assert (=> b!1419683 (= lt!479330 call!96928)))

(declare-fun lt!479368 () Unit!21720)

(declare-fun Unit!21763 () Unit!21720)

(assert (=> b!1419683 (= lt!479368 Unit!21763)))

(assert (=> b!1419683 (= call!96935 Nil!14561)))

(declare-fun lt!479329 () Unit!21720)

(declare-fun lt!479333 () Unit!21720)

(assert (=> b!1419683 (= lt!479329 lt!479333)))

(assert (=> b!1419683 (= call!96957 call!96944)))

(assert (=> b!1419683 (= lt!479333 call!96932)))

(declare-fun lt!479374 () List!14628)

(assert (=> b!1419683 (= lt!479374 call!96940)))

(assert (=> b!1419683 (= lt!479323 Nil!14562)))

(assert (=> b!1419683 (= lt!479331 Lexer!2208)))

(assert (=> b!1419683 (= e!906216 (Some!2799 (v!22163 lt!478810)))))

(declare-fun e!906223 () Bool)

(declare-fun b!1419684 () Bool)

(assert (=> b!1419684 (= e!906223 (= (list!5746 (print!983 (get!4478 lt!479362))) (++!3825 (list!5746 (print!983 acc!229)) (list!5746 (print!983 (v!22163 lt!478810))))))))

(declare-fun bm!96943 () Bool)

(assert (=> bm!96943 (= call!96938 (printList!664 (ite c!233365 Lexer!2208 (ite c!233362 lt!479331 lt!479357)) (ite c!233365 Nil!14562 (ite c!233362 lt!479374 lt!479327))))))

(declare-fun b!1419685 () Bool)

(assert (=> b!1419685 (= e!906222 call!96940)))

(declare-fun bm!96944 () Bool)

(assert (=> bm!96944 (= call!96943 (printTailRec!647 Lexer!2208 (tokens!1844 (v!22163 lt!478810)) 0 (BalanceConc!9711 Empty!4885)))))

(declare-fun b!1419686 () Bool)

(assert (=> b!1419686 (= e!906219 e!906223)))

(declare-fun res!642815 () Bool)

(assert (=> b!1419686 (=> (not res!642815) (not e!906223))))

(assert (=> b!1419686 (= res!642815 (= (rules!11152 (get!4478 lt!479362)) (rules!11152 acc!229)))))

(declare-fun bm!96945 () Bool)

(assert (=> bm!96945 (= call!96945 (list!5747 (ite c!233365 (tokens!1844 (v!22163 lt!478810)) (tokens!1844 acc!229))))))

(declare-fun bm!96946 () Bool)

(assert (=> bm!96946 (= call!96956 (list!5747 (ite c!233365 (tokens!1844 acc!229) (tokens!1844 (v!22163 lt!478810)))))))

(declare-fun bm!96947 () Bool)

(assert (=> bm!96947 (= call!96957 call!96946)))

(declare-fun bm!96948 () Bool)

(assert (=> bm!96948 (= call!96941 (++!3825 (ite c!233365 call!96963 call!96958) (ite c!233365 call!96950 (ite c!233362 call!96929 call!96961))))))

(declare-fun bm!96949 () Bool)

(assert (=> bm!96949 (= call!96946 (printList!664 (ite c!233365 Lexer!2208 (ite c!233362 lt!479331 lt!479357)) (ite c!233365 (t!124371 lt!479353) call!96954)))))

(declare-fun bm!96950 () Bool)

(assert (=> bm!96950 (= call!96953 (++!3824 (ite c!233365 lt!479349 (ite c!233362 lt!479323 lt!479363)) (ite c!233365 lt!479315 (ite c!233362 lt!479374 lt!479327))))))

(declare-fun b!1419687 () Bool)

(assert (=> b!1419687 (= e!906224 e!906216)))

(assert (=> b!1419687 (= c!233362 (isEmpty!8961 (tokens!1844 acc!229)))))

(declare-fun b!1419688 () Bool)

(declare-fun res!642817 () Bool)

(assert (=> b!1419688 (=> (not res!642817) (not e!906223))))

(assert (=> b!1419688 (= res!642817 (= (list!5747 (tokens!1844 (get!4478 lt!479362))) (++!3824 (list!5747 (tokens!1844 acc!229)) (list!5747 (tokens!1844 (v!22163 lt!478810))))))))

(declare-fun bm!96951 () Bool)

(declare-fun c!233366 () Bool)

(assert (=> bm!96951 (= c!233366 c!233362)))

(declare-fun call!96959 () List!14627)

(assert (=> bm!96951 (= call!96962 call!96959)))

(declare-fun bm!96952 () Bool)

(assert (=> bm!96952 (= call!96961 call!96950)))

(declare-fun b!1419689 () Bool)

(assert (=> b!1419689 (= e!906220 call!96952)))

(declare-fun bm!96953 () Bool)

(assert (=> bm!96953 (= call!96935 call!96963)))

(declare-fun bm!96954 () Bool)

(assert (=> bm!96954 (= call!96928 call!96933)))

(declare-fun b!1419690 () Bool)

(assert (=> b!1419690 (= e!906224 (Some!2799 acc!229))))

(assert (=> b!1419690 (= lt!479320 Lexer!2208)))

(assert (=> b!1419690 (= lt!479349 call!96956)))

(assert (=> b!1419690 (= lt!479315 Nil!14562)))

(declare-fun lt!479339 () Unit!21720)

(assert (=> b!1419690 (= lt!479339 call!96930)))

(assert (=> b!1419690 (= call!96959 call!96941)))

(declare-fun lt!479316 () Unit!21720)

(assert (=> b!1419690 (= lt!479316 lt!479339)))

(assert (=> b!1419690 (= call!96938 Nil!14561)))

(declare-fun lt!479346 () Unit!21720)

(declare-fun Unit!21768 () Unit!21720)

(assert (=> b!1419690 (= lt!479346 Unit!21768)))

(declare-fun lt!479352 () Unit!21720)

(assert (=> b!1419690 (= lt!479352 call!96933)))

(assert (=> b!1419690 (= call!96927 call!96948)))

(declare-fun lt!479343 () Unit!21720)

(declare-fun Unit!21770 () Unit!21720)

(assert (=> b!1419690 (= lt!479343 Unit!21770)))

(declare-fun lt!479376 () Unit!21720)

(assert (=> b!1419690 (= lt!479376 call!96951)))

(assert (=> b!1419690 (= call!96965 call!96955)))

(declare-fun lt!479360 () Unit!21720)

(declare-fun Unit!21772 () Unit!21720)

(assert (=> b!1419690 (= lt!479360 Unit!21772)))

(assert (=> b!1419690 (= call!96955 call!96943)))

(declare-fun lt!479325 () Unit!21720)

(declare-fun Unit!21773 () Unit!21720)

(assert (=> b!1419690 (= lt!479325 Unit!21773)))

(assert (=> b!1419690 (= lt!479353 call!96945)))

(declare-fun c!233364 () Bool)

(assert (=> b!1419690 (= c!233364 ((_ is Cons!14562) lt!479353))))

(assert (=> b!1419690 (= call!96939 e!906221)))

(declare-fun lt!479334 () Unit!21720)

(declare-fun Unit!21774 () Unit!21720)

(assert (=> b!1419690 (= lt!479334 Unit!21774)))

(declare-fun bm!96955 () Bool)

(assert (=> bm!96955 (= call!96936 call!96945)))

(declare-fun bm!96956 () Bool)

(assert (=> bm!96956 (= call!96930 (lemmaPrintConcatSameAsConcatPrint!29 (ite c!233365 lt!479320 (ite c!233362 lt!479331 lt!479361)) (ite c!233365 lt!479349 (ite c!233362 lt!479323 lt!479371)) (ite c!233365 lt!479315 (ite c!233362 lt!479374 lt!479359))))))

(declare-fun bm!96957 () Bool)

(assert (=> bm!96957 (= call!96948 (print!984 Lexer!2208 (tokens!1844 acc!229)))))

(declare-fun bm!96958 () Bool)

(assert (=> bm!96958 (= call!96965 (print!983 (ite (or c!233365 c!233362) (v!22163 lt!478810) acc!229)))))

(declare-fun bm!96959 () Bool)

(assert (=> bm!96959 (= call!96931 call!96955)))

(declare-fun b!1419691 () Bool)

(assert (=> b!1419691 (= e!906221 call!96964)))

(declare-fun bm!96960 () Bool)

(assert (=> bm!96960 (= call!96959 (printList!664 (ite c!233365 lt!479320 (ite c!233362 Lexer!2208 lt!479361)) (ite c!233365 call!96953 e!906222)))))

(assert (= (and d!406773 c!233365) b!1419690))

(assert (= (and d!406773 (not c!233365)) b!1419687))

(assert (= (and b!1419690 c!233364) b!1419691))

(assert (= (and b!1419690 (not c!233364)) b!1419675))

(assert (= (and b!1419687 c!233362) b!1419683))

(assert (= (and b!1419687 (not c!233362)) b!1419681))

(assert (= (and b!1419683 c!233367) b!1419678))

(assert (= (and b!1419683 (not c!233367)) b!1419676))

(assert (= (and b!1419681 c!233368) b!1419682))

(assert (= (and b!1419681 (not c!233368)) b!1419677))

(assert (= (or b!1419683 b!1419682) bm!96930))

(assert (= (or b!1419683 b!1419681 b!1419682) bm!96955))

(assert (= (or b!1419683 b!1419682) bm!96940))

(assert (= (or b!1419683 b!1419682) bm!96953))

(assert (= (or b!1419683 b!1419682) bm!96932))

(assert (= (or b!1419683 b!1419682) bm!96938))

(assert (= (or b!1419683 b!1419681 b!1419682) bm!96937))

(assert (= (or b!1419683 b!1419682) bm!96922))

(assert (= (or b!1419683 b!1419682) bm!96959))

(assert (= (or b!1419683 b!1419682) bm!96926))

(assert (= (or b!1419683 b!1419682) bm!96941))

(assert (= (or b!1419678 b!1419682) bm!96952))

(assert (= (or b!1419683 b!1419682) bm!96951))

(assert (= (and bm!96951 c!233366) b!1419685))

(assert (= (and bm!96951 (not c!233366)) b!1419680))

(assert (= (or b!1419683 b!1419682) bm!96934))

(assert (= (or b!1419683 b!1419682) bm!96954))

(assert (= (or b!1419683 b!1419682) bm!96947))

(assert (= (or b!1419683 b!1419682) bm!96925))

(assert (= (or b!1419678 b!1419682) bm!96924))

(assert (= (and bm!96924 c!233363) b!1419689))

(assert (= (and bm!96924 (not c!233363)) b!1419679))

(assert (= (or b!1419690 bm!96952) bm!96935))

(assert (= (or b!1419690 bm!96941) bm!96957))

(assert (= (or b!1419690 bm!96938) bm!96927))

(assert (= (or b!1419690 bm!96959) bm!96928))

(assert (= (or b!1419690 bm!96953) bm!96933))

(assert (= (or b!1419691 b!1419689) bm!96942))

(assert (= (or b!1419690 b!1419683) bm!96944))

(assert (= (or b!1419690 bm!96937) bm!96946))

(assert (= (or b!1419690 bm!96930) bm!96943))

(assert (= (or b!1419690 bm!96955) bm!96945))

(assert (= (or b!1419690 bm!96926) bm!96958))

(assert (= (or b!1419690 bm!96922) bm!96950))

(assert (= (or b!1419690 bm!96940) bm!96956))

(assert (= (or b!1419691 bm!96947) bm!96949))

(assert (= (or b!1419690 bm!96954) bm!96936))

(assert (= (or b!1419690 bm!96932) bm!96923))

(assert (= (or b!1419690 bm!96951) bm!96960))

(assert (= (or b!1419690 bm!96934) bm!96939))

(assert (= (or b!1419691 b!1419689) bm!96929))

(assert (= (or b!1419690 bm!96925) bm!96948))

(assert (= (or b!1419691 bm!96924) bm!96931))

(assert (= (and d!406773 (not res!642816)) b!1419686))

(assert (= (and b!1419686 res!642815) b!1419688))

(assert (= (and b!1419688 res!642817) b!1419684))

(declare-fun m!1609231 () Bool)

(assert (=> d!406773 m!1609231))

(declare-fun m!1609233 () Bool)

(assert (=> d!406773 m!1609233))

(declare-fun m!1609235 () Bool)

(assert (=> d!406773 m!1609235))

(declare-fun m!1609237 () Bool)

(assert (=> d!406773 m!1609237))

(declare-fun m!1609239 () Bool)

(assert (=> bm!96928 m!1609239))

(declare-fun m!1609241 () Bool)

(assert (=> b!1419680 m!1609241))

(declare-fun m!1609243 () Bool)

(assert (=> b!1419682 m!1609243))

(declare-fun m!1609245 () Bool)

(assert (=> b!1419682 m!1609245))

(declare-fun m!1609247 () Bool)

(assert (=> b!1419682 m!1609247))

(declare-fun m!1609249 () Bool)

(assert (=> b!1419682 m!1609249))

(declare-fun m!1609251 () Bool)

(assert (=> b!1419682 m!1609251))

(declare-fun m!1609253 () Bool)

(assert (=> b!1419682 m!1609253))

(declare-fun m!1609255 () Bool)

(assert (=> b!1419682 m!1609255))

(assert (=> b!1419682 m!1609249))

(declare-fun m!1609257 () Bool)

(assert (=> b!1419682 m!1609257))

(assert (=> b!1419682 m!1609249))

(declare-fun m!1609259 () Bool)

(assert (=> b!1419682 m!1609259))

(assert (=> b!1419682 m!1609247))

(assert (=> b!1419682 m!1609251))

(declare-fun m!1609261 () Bool)

(assert (=> b!1419682 m!1609261))

(assert (=> b!1419682 m!1609247))

(declare-fun m!1609263 () Bool)

(assert (=> b!1419682 m!1609263))

(declare-fun m!1609265 () Bool)

(assert (=> bm!96933 m!1609265))

(declare-fun m!1609267 () Bool)

(assert (=> b!1419681 m!1609267))

(declare-fun m!1609269 () Bool)

(assert (=> b!1419681 m!1609269))

(declare-fun m!1609271 () Bool)

(assert (=> b!1419681 m!1609271))

(declare-fun m!1609273 () Bool)

(assert (=> b!1419681 m!1609273))

(declare-fun m!1609275 () Bool)

(assert (=> b!1419681 m!1609275))

(assert (=> b!1419681 m!1609271))

(assert (=> b!1419681 m!1609273))

(declare-fun m!1609277 () Bool)

(assert (=> b!1419681 m!1609277))

(declare-fun m!1609279 () Bool)

(assert (=> b!1419681 m!1609279))

(declare-fun m!1609281 () Bool)

(assert (=> bm!96949 m!1609281))

(declare-fun m!1609283 () Bool)

(assert (=> b!1419688 m!1609283))

(declare-fun m!1609285 () Bool)

(assert (=> b!1419688 m!1609285))

(declare-fun m!1609287 () Bool)

(assert (=> b!1419688 m!1609287))

(assert (=> b!1419688 m!1609285))

(assert (=> b!1419688 m!1609283))

(declare-fun m!1609289 () Bool)

(assert (=> b!1419688 m!1609289))

(declare-fun m!1609291 () Bool)

(assert (=> b!1419688 m!1609291))

(declare-fun m!1609293 () Bool)

(assert (=> bm!96960 m!1609293))

(declare-fun m!1609295 () Bool)

(assert (=> bm!96936 m!1609295))

(declare-fun m!1609297 () Bool)

(assert (=> bm!96958 m!1609297))

(declare-fun m!1609299 () Bool)

(assert (=> bm!96956 m!1609299))

(declare-fun m!1609301 () Bool)

(assert (=> bm!96929 m!1609301))

(declare-fun m!1609303 () Bool)

(assert (=> bm!96931 m!1609303))

(declare-fun m!1609305 () Bool)

(assert (=> bm!96943 m!1609305))

(declare-fun m!1609307 () Bool)

(assert (=> bm!96939 m!1609307))

(declare-fun m!1609309 () Bool)

(assert (=> bm!96950 m!1609309))

(declare-fun m!1609311 () Bool)

(assert (=> bm!96942 m!1609311))

(declare-fun m!1609313 () Bool)

(assert (=> bm!96948 m!1609313))

(declare-fun m!1609315 () Bool)

(assert (=> b!1419684 m!1609315))

(declare-fun m!1609317 () Bool)

(assert (=> b!1419684 m!1609317))

(assert (=> b!1419684 m!1609315))

(assert (=> b!1419684 m!1609317))

(declare-fun m!1609319 () Bool)

(assert (=> b!1419684 m!1609319))

(declare-fun m!1609321 () Bool)

(assert (=> b!1419684 m!1609321))

(declare-fun m!1609323 () Bool)

(assert (=> b!1419684 m!1609323))

(declare-fun m!1609325 () Bool)

(assert (=> b!1419684 m!1609325))

(declare-fun m!1609327 () Bool)

(assert (=> b!1419684 m!1609327))

(assert (=> b!1419684 m!1609287))

(assert (=> b!1419684 m!1609327))

(assert (=> b!1419684 m!1609319))

(assert (=> b!1419684 m!1609287))

(assert (=> b!1419684 m!1609323))

(declare-fun m!1609329 () Bool)

(assert (=> bm!96927 m!1609329))

(assert (=> b!1419686 m!1609287))

(declare-fun m!1609331 () Bool)

(assert (=> bm!96935 m!1609331))

(declare-fun m!1609333 () Bool)

(assert (=> bm!96957 m!1609333))

(declare-fun m!1609335 () Bool)

(assert (=> bm!96923 m!1609335))

(declare-fun m!1609337 () Bool)

(assert (=> b!1419687 m!1609337))

(declare-fun m!1609339 () Bool)

(assert (=> bm!96946 m!1609339))

(declare-fun m!1609341 () Bool)

(assert (=> bm!96945 m!1609341))

(declare-fun m!1609343 () Bool)

(assert (=> bm!96944 m!1609343))

(assert (=> b!1419413 d!406773))

(declare-fun d!406775 () Bool)

(assert (=> d!406775 (= (usesJsonRules!0 sep!3) (= (rules!11152 sep!3) (rules!109 JsonLexer!425)))))

(declare-fun bs!339702 () Bool)

(assert (= bs!339702 d!406775))

(assert (=> bs!339702 m!1608769))

(assert (=> b!1419414 d!406775))

(declare-fun tp!402483 () Bool)

(declare-fun b!1419700 () Bool)

(declare-fun e!906230 () Bool)

(declare-fun tp!402482 () Bool)

(assert (=> b!1419700 (= e!906230 (and (inv!19204 (left!12452 (c!233259 (tokens!1844 sep!3)))) tp!402482 (inv!19204 (right!12782 (c!233259 (tokens!1844 sep!3)))) tp!402483))))

(declare-fun b!1419702 () Bool)

(declare-fun e!906229 () Bool)

(declare-fun tp!402481 () Bool)

(assert (=> b!1419702 (= e!906229 tp!402481)))

(declare-fun b!1419701 () Bool)

(declare-fun inv!19216 (IArray!9777) Bool)

(assert (=> b!1419701 (= e!906230 (and (inv!19216 (xs!7613 (c!233259 (tokens!1844 sep!3)))) e!906229))))

(assert (=> b!1419420 (= tp!402473 (and (inv!19204 (c!233259 (tokens!1844 sep!3))) e!906230))))

(assert (= (and b!1419420 ((_ is Node!4886) (c!233259 (tokens!1844 sep!3)))) b!1419700))

(assert (= b!1419701 b!1419702))

(assert (= (and b!1419420 ((_ is Leaf!7351) (c!233259 (tokens!1844 sep!3)))) b!1419701))

(declare-fun m!1609345 () Bool)

(assert (=> b!1419700 m!1609345))

(declare-fun m!1609347 () Bool)

(assert (=> b!1419700 m!1609347))

(declare-fun m!1609349 () Bool)

(assert (=> b!1419701 m!1609349))

(assert (=> b!1419420 m!1608725))

(declare-fun tp!402485 () Bool)

(declare-fun e!906232 () Bool)

(declare-fun tp!402486 () Bool)

(declare-fun b!1419703 () Bool)

(assert (=> b!1419703 (= e!906232 (and (inv!19204 (left!12452 (c!233259 (tokens!1844 acc!229)))) tp!402485 (inv!19204 (right!12782 (c!233259 (tokens!1844 acc!229)))) tp!402486))))

(declare-fun b!1419705 () Bool)

(declare-fun e!906231 () Bool)

(declare-fun tp!402484 () Bool)

(assert (=> b!1419705 (= e!906231 tp!402484)))

(declare-fun b!1419704 () Bool)

(assert (=> b!1419704 (= e!906232 (and (inv!19216 (xs!7613 (c!233259 (tokens!1844 acc!229)))) e!906231))))

(assert (=> b!1419415 (= tp!402470 (and (inv!19204 (c!233259 (tokens!1844 acc!229))) e!906232))))

(assert (= (and b!1419415 ((_ is Node!4886) (c!233259 (tokens!1844 acc!229)))) b!1419703))

(assert (= b!1419704 b!1419705))

(assert (= (and b!1419415 ((_ is Leaf!7351) (c!233259 (tokens!1844 acc!229)))) b!1419704))

(declare-fun m!1609351 () Bool)

(assert (=> b!1419703 m!1609351))

(declare-fun m!1609353 () Bool)

(assert (=> b!1419703 m!1609353))

(declare-fun m!1609355 () Bool)

(assert (=> b!1419704 m!1609355))

(assert (=> b!1419415 m!1608739))

(declare-fun b!1419716 () Bool)

(declare-fun b_free!34999 () Bool)

(declare-fun b_next!35703 () Bool)

(assert (=> b!1419716 (= b_free!34999 (not b_next!35703))))

(declare-fun tp!402495 () Bool)

(declare-fun b_and!95015 () Bool)

(assert (=> b!1419716 (= tp!402495 b_and!95015)))

(declare-fun b_free!35001 () Bool)

(declare-fun b_next!35705 () Bool)

(assert (=> b!1419716 (= b_free!35001 (not b_next!35705))))

(declare-fun tp!402493 () Bool)

(declare-fun b_and!95017 () Bool)

(assert (=> b!1419716 (= tp!402493 b_and!95017)))

(declare-fun e!906242 () Bool)

(assert (=> b!1419716 (= e!906242 (and tp!402495 tp!402493))))

(declare-fun b!1419715 () Bool)

(declare-fun e!906241 () Bool)

(declare-fun inv!19197 (String!17371) Bool)

(declare-fun inv!19217 (TokenValueInjection!4914) Bool)

(assert (=> b!1419715 (= e!906241 (and (inv!19197 (tag!2799 (h!19964 (rules!11152 acc!229)))) (inv!19217 (transformation!2537 (h!19964 (rules!11152 acc!229)))) e!906242))))

(declare-fun b!1419714 () Bool)

(declare-fun e!906243 () Bool)

(declare-fun tp!402494 () Bool)

(assert (=> b!1419714 (= e!906243 (and e!906241 tp!402494))))

(assert (=> b!1419410 (= tp!402472 e!906243)))

(assert (= b!1419715 b!1419716))

(assert (= b!1419714 b!1419715))

(assert (= (and b!1419410 ((_ is Cons!14563) (rules!11152 acc!229))) b!1419714))

(declare-fun m!1609357 () Bool)

(assert (=> b!1419715 m!1609357))

(declare-fun m!1609359 () Bool)

(assert (=> b!1419715 m!1609359))

(declare-fun b!1419719 () Bool)

(declare-fun b_free!35003 () Bool)

(declare-fun b_next!35707 () Bool)

(assert (=> b!1419719 (= b_free!35003 (not b_next!35707))))

(declare-fun tp!402498 () Bool)

(declare-fun b_and!95019 () Bool)

(assert (=> b!1419719 (= tp!402498 b_and!95019)))

(declare-fun b_free!35005 () Bool)

(declare-fun b_next!35709 () Bool)

(assert (=> b!1419719 (= b_free!35005 (not b_next!35709))))

(declare-fun tp!402496 () Bool)

(declare-fun b_and!95021 () Bool)

(assert (=> b!1419719 (= tp!402496 b_and!95021)))

(declare-fun e!906246 () Bool)

(assert (=> b!1419719 (= e!906246 (and tp!402498 tp!402496))))

(declare-fun b!1419718 () Bool)

(declare-fun e!906245 () Bool)

(assert (=> b!1419718 (= e!906245 (and (inv!19197 (tag!2799 (h!19964 (rules!11152 sep!3)))) (inv!19217 (transformation!2537 (h!19964 (rules!11152 sep!3)))) e!906246))))

(declare-fun b!1419717 () Bool)

(declare-fun e!906247 () Bool)

(declare-fun tp!402497 () Bool)

(assert (=> b!1419717 (= e!906247 (and e!906245 tp!402497))))

(assert (=> b!1419416 (= tp!402474 e!906247)))

(assert (= b!1419718 b!1419719))

(assert (= b!1419717 b!1419718))

(assert (= (and b!1419416 ((_ is Cons!14563) (rules!11152 sep!3))) b!1419717))

(declare-fun m!1609361 () Bool)

(assert (=> b!1419718 m!1609361))

(declare-fun m!1609363 () Bool)

(assert (=> b!1419718 m!1609363))

(declare-fun b!1419728 () Bool)

(declare-fun tp!402506 () Bool)

(declare-fun e!906253 () Bool)

(declare-fun tp!402505 () Bool)

(assert (=> b!1419728 (= e!906253 (and (inv!19205 (left!12453 (c!233260 objs!24))) tp!402506 (inv!19205 (right!12783 (c!233260 objs!24))) tp!402505))))

(declare-fun b!1419730 () Bool)

(declare-fun e!906254 () Bool)

(declare-fun tp!402507 () Bool)

(assert (=> b!1419730 (= e!906254 tp!402507)))

(declare-fun b!1419729 () Bool)

(declare-fun inv!19218 (IArray!9779) Bool)

(assert (=> b!1419729 (= e!906253 (and (inv!19218 (xs!7614 (c!233260 objs!24))) e!906254))))

(assert (=> b!1419418 (= tp!402471 (and (inv!19205 (c!233260 objs!24)) e!906253))))

(assert (= (and b!1419418 ((_ is Node!4887) (c!233260 objs!24))) b!1419728))

(assert (= b!1419729 b!1419730))

(assert (= (and b!1419418 ((_ is Leaf!7352) (c!233260 objs!24))) b!1419729))

(declare-fun m!1609365 () Bool)

(assert (=> b!1419728 m!1609365))

(declare-fun m!1609367 () Bool)

(assert (=> b!1419728 m!1609367))

(declare-fun m!1609369 () Bool)

(assert (=> b!1419729 m!1609369))

(assert (=> b!1419418 m!1608717))

(check-sat (not b!1419568) (not b!1419681) (not b!1419680) b_and!95015 (not d!406721) (not b!1419682) (not d!406731) (not bm!96944) (not bm!96921) (not b!1419686) (not d!406773) (not d!406715) (not b!1419687) (not b!1419428) (not bm!96919) (not b!1419597) (not b!1419601) (not bm!96843) (not b!1419728) (not bm!96933) (not d!406727) (not b!1419730) (not b!1419563) (not b!1419549) (not bm!96946) (not b!1419704) (not bm!96931) (not b!1419664) (not d!406767) (not d!406725) (not b!1419545) (not b!1419674) (not bm!96844) (not b!1419665) (not b!1419684) (not b!1419688) (not b!1419700) (not b!1419717) (not d!406729) (not b!1419662) (not b_next!35707) (not bm!96945) (not b!1419602) (not bm!96837) (not bm!96929) (not b_next!35705) b_and!95017 (not bm!96939) (not bm!96920) (not b!1419551) (not b!1419565) (not d!406775) (not bm!96957) (not bm!96936) (not bm!96858) (not b!1419420) (not b!1419553) (not b!1419547) (not bm!96848) (not b!1419703) (not bm!96942) (not bm!96950) (not d!406757) (not bm!96856) (not bm!96825) (not bm!96928) (not bm!96918) (not b!1419418) (not bm!96956) (not bm!96927) (not b!1419430) (not bm!96846) (not b!1419701) (not d!406769) (not bm!96855) (not b!1419715) (not b_next!35709) (not bm!96949) (not bm!96829) (not b!1419599) (not bm!96840) (not bm!96831) (not bm!96841) b_and!95019 (not bm!96943) (not bm!96833) (not b!1419729) (not bm!96821) (not b!1419702) (not bm!96948) (not bm!96842) (not bm!96847) (not bm!96827) (not b!1419546) (not bm!96854) (not d!406697) (not bm!96958) (not b!1419718) (not d!406753) (not bm!96826) (not b!1419600) (not b!1419552) (not b!1419566) (not b!1419705) (not d!406719) (not b!1419598) (not bm!96960) (not bm!96834) (not b!1419714) b_and!95021 (not d!406699) (not d!406709) (not b_next!35703) (not bm!96935) (not b!1419415) (not bm!96923))
(check-sat (not b_next!35707) (not b_next!35709) b_and!95019 b_and!95015 (not b_next!35705) b_and!95017 b_and!95021 (not b_next!35703))
