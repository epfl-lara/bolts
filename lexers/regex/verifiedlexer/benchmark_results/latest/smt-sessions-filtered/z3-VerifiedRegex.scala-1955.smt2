; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97418 () Bool)

(assert start!97418)

(declare-fun b!1131936 () Bool)

(assert (=> b!1131936 true))

(declare-fun b!1131924 () Bool)

(declare-fun e!723210 () Bool)

(declare-datatypes ((List!10990 0))(
  ( (Nil!10966) (Cons!10966 (h!16367 (_ BitVec 16)) (t!106950 List!10990)) )
))
(declare-datatypes ((TokenValue!1957 0))(
  ( (FloatLiteralValue!3914 (text!14144 List!10990)) (TokenValueExt!1956 (__x!7635 Int)) (Broken!9785 (value!61864 List!10990)) (Object!1980) (End!1957) (Def!1957) (Underscore!1957) (Match!1957) (Else!1957) (Error!1957) (Case!1957) (If!1957) (Extends!1957) (Abstract!1957) (Class!1957) (Val!1957) (DelimiterValue!3914 (del!2017 List!10990)) (KeywordValue!1963 (value!61865 List!10990)) (CommentValue!3914 (value!61866 List!10990)) (WhitespaceValue!3914 (value!61867 List!10990)) (IndentationValue!1957 (value!61868 List!10990)) (String!13372) (Int32!1957) (Broken!9786 (value!61869 List!10990)) (Boolean!1958) (Unit!16685) (OperatorValue!1960 (op!2017 List!10990)) (IdentifierValue!3914 (value!61870 List!10990)) (IdentifierValue!3915 (value!61871 List!10990)) (WhitespaceValue!3915 (value!61872 List!10990)) (True!3914) (False!3914) (Broken!9787 (value!61873 List!10990)) (Broken!9788 (value!61874 List!10990)) (True!3915) (RightBrace!1957) (RightBracket!1957) (Colon!1957) (Null!1957) (Comma!1957) (LeftBracket!1957) (False!3915) (LeftBrace!1957) (ImaginaryLiteralValue!1957 (text!14145 List!10990)) (StringLiteralValue!5871 (value!61875 List!10990)) (EOFValue!1957 (value!61876 List!10990)) (IdentValue!1957 (value!61877 List!10990)) (DelimiterValue!3915 (value!61878 List!10990)) (DedentValue!1957 (value!61879 List!10990)) (NewLineValue!1957 (value!61880 List!10990)) (IntegerValue!5871 (value!61881 (_ BitVec 32)) (text!14146 List!10990)) (IntegerValue!5872 (value!61882 Int) (text!14147 List!10990)) (Times!1957) (Or!1957) (Equal!1957) (Minus!1957) (Broken!9789 (value!61883 List!10990)) (And!1957) (Div!1957) (LessEqual!1957) (Mod!1957) (Concat!5118) (Not!1957) (Plus!1957) (SpaceValue!1957 (value!61884 List!10990)) (IntegerValue!5873 (value!61885 Int) (text!14148 List!10990)) (StringLiteralValue!5872 (text!14149 List!10990)) (FloatLiteralValue!3915 (text!14150 List!10990)) (BytesLiteralValue!1957 (value!61886 List!10990)) (CommentValue!3915 (value!61887 List!10990)) (StringLiteralValue!5873 (value!61888 List!10990)) (ErrorTokenValue!1957 (msg!2018 List!10990)) )
))
(declare-datatypes ((Regex!3161 0))(
  ( (ElementMatch!3161 (c!189632 (_ BitVec 16))) (Concat!5119 (regOne!6834 Regex!3161) (regTwo!6834 Regex!3161)) (EmptyExpr!3161) (Star!3161 (reg!3490 Regex!3161)) (EmptyLang!3161) (Union!3161 (regOne!6835 Regex!3161) (regTwo!6835 Regex!3161)) )
))
(declare-datatypes ((String!13373 0))(
  ( (String!13374 (value!61889 String)) )
))
(declare-datatypes ((IArray!7001 0))(
  ( (IArray!7002 (innerList!3558 List!10990)) )
))
(declare-datatypes ((Conc!3498 0))(
  ( (Node!3498 (left!9521 Conc!3498) (right!9851 Conc!3498) (csize!7226 Int) (cheight!3709 Int)) (Leaf!5454 (xs!6191 IArray!7001) (csize!7227 Int)) (Empty!3498) )
))
(declare-datatypes ((BalanceConc!7018 0))(
  ( (BalanceConc!7019 (c!189633 Conc!3498)) )
))
(declare-datatypes ((TokenValueInjection!3614 0))(
  ( (TokenValueInjection!3615 (toValue!2980 Int) (toChars!2839 Int)) )
))
(declare-datatypes ((Rule!3582 0))(
  ( (Rule!3583 (regex!1891 Regex!3161) (tag!2153 String!13373) (isSeparator!1891 Bool) (transformation!1891 TokenValueInjection!3614)) )
))
(declare-datatypes ((Token!3444 0))(
  ( (Token!3445 (value!61890 TokenValue!1957) (rule!3312 Rule!3582) (size!8552 Int) (originalCharacters!2445 List!10990)) )
))
(declare-datatypes ((List!10991 0))(
  ( (Nil!10967) (Cons!10967 (h!16368 Token!3444) (t!106951 List!10991)) )
))
(declare-datatypes ((IArray!7003 0))(
  ( (IArray!7004 (innerList!3559 List!10991)) )
))
(declare-datatypes ((Conc!3499 0))(
  ( (Node!3499 (left!9522 Conc!3499) (right!9852 Conc!3499) (csize!7228 Int) (cheight!3710 Int)) (Leaf!5455 (xs!6192 IArray!7003) (csize!7229 Int)) (Empty!3499) )
))
(declare-datatypes ((List!10992 0))(
  ( (Nil!10968) (Cons!10968 (h!16369 Rule!3582) (t!106952 List!10992)) )
))
(declare-datatypes ((BalanceConc!7020 0))(
  ( (BalanceConc!7021 (c!189634 Conc!3499)) )
))
(declare-datatypes ((PrintableTokens!468 0))(
  ( (PrintableTokens!469 (rules!9226 List!10992) (tokens!1456 BalanceConc!7020)) )
))
(declare-fun pt!21 () PrintableTokens!468)

(declare-fun tp!330971 () Bool)

(declare-fun inv!14196 (Conc!3499) Bool)

(assert (=> b!1131924 (= e!723210 (and (inv!14196 (c!189634 (tokens!1456 pt!21))) tp!330971))))

(declare-fun b!1131925 () Bool)

(declare-fun e!723214 () PrintableTokens!468)

(declare-fun call!80670 () PrintableTokens!468)

(assert (=> b!1131925 (= e!723214 call!80670)))

(declare-fun b!1131926 () Bool)

(declare-fun e!723211 () Bool)

(declare-fun e!723216 () Bool)

(assert (=> b!1131926 (= e!723211 e!723216)))

(declare-fun res!508851 () Bool)

(assert (=> b!1131926 (=> (not res!508851) (not e!723216))))

(declare-fun lt!380180 () PrintableTokens!468)

(declare-fun usesJsonRules!0 (PrintableTokens!468) Bool)

(assert (=> b!1131926 (= res!508851 (usesJsonRules!0 lt!380180))))

(assert (=> b!1131926 (= lt!380180 e!723214)))

(declare-fun c!189631 () Bool)

(declare-fun lt!380179 () Int)

(declare-fun lt!380178 () Int)

(assert (=> b!1131926 (= c!189631 (<= lt!380179 lt!380178))))

(declare-datatypes ((List!10993 0))(
  ( (Nil!10969) (Cons!10969 (h!16370 Int) (t!106953 List!10993)) )
))
(declare-datatypes ((IArray!7005 0))(
  ( (IArray!7006 (innerList!3560 List!10993)) )
))
(declare-datatypes ((Conc!3500 0))(
  ( (Node!3500 (left!9523 Conc!3500) (right!9853 Conc!3500) (csize!7230 Int) (cheight!3711 Int)) (Leaf!5456 (xs!6193 IArray!7005) (csize!7231 Int)) (Empty!3500) )
))
(declare-datatypes ((BalanceConc!7022 0))(
  ( (BalanceConc!7023 (c!189635 Conc!3500)) )
))
(declare-fun indices!2 () BalanceConc!7022)

(declare-fun apply!2275 (BalanceConc!7022 Int) Int)

(assert (=> b!1131926 (= lt!380178 (apply!2275 indices!2 1))))

(assert (=> b!1131926 (= lt!380179 (apply!2275 indices!2 0))))

(declare-fun b!1131927 () Bool)

(declare-fun e!723217 () Bool)

(declare-fun tp!330969 () Bool)

(declare-fun inv!14197 (Conc!3500) Bool)

(assert (=> b!1131927 (= e!723217 (and (inv!14197 (c!189635 indices!2)) tp!330969))))

(declare-fun b!1131929 () Bool)

(declare-fun res!508852 () Bool)

(assert (=> b!1131929 (=> (not res!508852) (not e!723211))))

(assert (=> b!1131929 (= res!508852 (usesJsonRules!0 pt!21))))

(declare-fun b!1131930 () Bool)

(declare-fun res!508846 () Bool)

(assert (=> b!1131930 (=> (not res!508846) (not e!723211))))

(declare-datatypes ((List!10994 0))(
  ( (Nil!10970) (Cons!10970 (h!16371 PrintableTokens!468) (t!106954 List!10994)) )
))
(declare-datatypes ((IArray!7007 0))(
  ( (IArray!7008 (innerList!3561 List!10994)) )
))
(declare-datatypes ((Conc!3501 0))(
  ( (Node!3501 (left!9524 Conc!3501) (right!9854 Conc!3501) (csize!7232 Int) (cheight!3712 Int)) (Leaf!5457 (xs!6194 IArray!7007) (csize!7233 Int)) (Empty!3501) )
))
(declare-datatypes ((BalanceConc!7024 0))(
  ( (BalanceConc!7025 (c!189636 Conc!3501)) )
))
(declare-fun acc!225 () BalanceConc!7024)

(declare-fun lambda!45565 () Int)

(declare-fun forall!2650 (BalanceConc!7024 Int) Bool)

(assert (=> b!1131930 (= res!508846 (forall!2650 acc!225 lambda!45565))))

(declare-fun b!1131931 () Bool)

(declare-fun res!508850 () Bool)

(assert (=> b!1131931 (=> (not res!508850) (not e!723211))))

(declare-fun size!8553 (BalanceConc!7022) Int)

(assert (=> b!1131931 (= res!508850 (>= (size!8553 indices!2) 2))))

(declare-fun tp!330970 () Bool)

(declare-fun b!1131932 () Bool)

(declare-fun e!723215 () Bool)

(declare-fun inv!14198 (BalanceConc!7020) Bool)

(assert (=> b!1131932 (= e!723215 (and tp!330970 (inv!14198 (tokens!1456 pt!21)) e!723210))))

(declare-fun b!1131933 () Bool)

(assert (=> b!1131933 (= e!723214 call!80670)))

(declare-fun b!1131934 () Bool)

(declare-fun e!723212 () Bool)

(declare-fun tp!330972 () Bool)

(declare-fun inv!14199 (Conc!3501) Bool)

(assert (=> b!1131934 (= e!723212 (and (inv!14199 (c!189636 acc!225)) tp!330972))))

(declare-fun bm!80665 () Bool)

(declare-fun slice!66 (PrintableTokens!468 Int Int) PrintableTokens!468)

(assert (=> bm!80665 (= call!80670 (slice!66 pt!21 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))))))

(declare-fun b!1131935 () Bool)

(declare-fun e!723213 () Bool)

(assert (=> b!1131935 (= e!723216 e!723213)))

(declare-fun res!508849 () Bool)

(assert (=> b!1131935 (=> (not res!508849) (not e!723213))))

(declare-fun append!334 (BalanceConc!7024 PrintableTokens!468) BalanceConc!7024)

(assert (=> b!1131935 (= res!508849 (forall!2650 (append!334 acc!225 lt!380180) lambda!45565))))

(declare-datatypes ((Unit!16686 0))(
  ( (Unit!16687) )
))
(declare-fun lt!380177 () Unit!16686)

(declare-fun lemmaConcatPreservesForall!104 (List!10994 List!10994 Int) Unit!16686)

(declare-fun list!3972 (BalanceConc!7024) List!10994)

(assert (=> b!1131935 (= lt!380177 (lemmaConcatPreservesForall!104 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970) lambda!45565))))

(declare-fun res!508847 () Bool)

(assert (=> b!1131936 (=> (not res!508847) (not e!723211))))

(declare-fun lambda!45564 () Int)

(declare-fun forall!2651 (BalanceConc!7022 Int) Bool)

(assert (=> b!1131936 (= res!508847 (forall!2651 indices!2 lambda!45564))))

(declare-fun b!1131928 () Bool)

(declare-fun isEmpty!6795 (BalanceConc!7022) Bool)

(assert (=> b!1131928 (= e!723213 (isEmpty!6795 indices!2))))

(declare-fun res!508848 () Bool)

(assert (=> start!97418 (=> (not res!508848) (not e!723211))))

(declare-fun size!108 () Int)

(declare-fun size!8554 (PrintableTokens!468) Int)

(assert (=> start!97418 (= res!508848 (= (size!8554 pt!21) size!108))))

(assert (=> start!97418 e!723211))

(declare-fun inv!14200 (PrintableTokens!468) Bool)

(assert (=> start!97418 (and (inv!14200 pt!21) e!723215)))

(assert (=> start!97418 true))

(declare-fun inv!14201 (BalanceConc!7022) Bool)

(assert (=> start!97418 (and (inv!14201 indices!2) e!723217)))

(declare-fun inv!14202 (BalanceConc!7024) Bool)

(assert (=> start!97418 (and (inv!14202 acc!225) e!723212)))

(assert (= (and start!97418 res!508848) b!1131936))

(assert (= (and b!1131936 res!508847) b!1131929))

(assert (= (and b!1131929 res!508852) b!1131930))

(assert (= (and b!1131930 res!508846) b!1131931))

(assert (= (and b!1131931 res!508850) b!1131926))

(assert (= (and b!1131926 c!189631) b!1131925))

(assert (= (and b!1131926 (not c!189631)) b!1131933))

(assert (= (or b!1131925 b!1131933) bm!80665))

(assert (= (and b!1131926 res!508851) b!1131935))

(assert (= (and b!1131935 res!508849) b!1131928))

(assert (= b!1131932 b!1131924))

(assert (= start!97418 b!1131932))

(assert (= start!97418 b!1131927))

(assert (= start!97418 b!1131934))

(declare-fun m!1281453 () Bool)

(assert (=> b!1131930 m!1281453))

(declare-fun m!1281455 () Bool)

(assert (=> start!97418 m!1281455))

(declare-fun m!1281457 () Bool)

(assert (=> start!97418 m!1281457))

(declare-fun m!1281459 () Bool)

(assert (=> start!97418 m!1281459))

(declare-fun m!1281461 () Bool)

(assert (=> start!97418 m!1281461))

(declare-fun m!1281463 () Bool)

(assert (=> b!1131929 m!1281463))

(declare-fun m!1281465 () Bool)

(assert (=> b!1131932 m!1281465))

(declare-fun m!1281467 () Bool)

(assert (=> b!1131936 m!1281467))

(declare-fun m!1281469 () Bool)

(assert (=> b!1131935 m!1281469))

(assert (=> b!1131935 m!1281469))

(declare-fun m!1281471 () Bool)

(assert (=> b!1131935 m!1281471))

(declare-fun m!1281473 () Bool)

(assert (=> b!1131935 m!1281473))

(assert (=> b!1131935 m!1281473))

(declare-fun m!1281475 () Bool)

(assert (=> b!1131935 m!1281475))

(declare-fun m!1281477 () Bool)

(assert (=> b!1131926 m!1281477))

(declare-fun m!1281479 () Bool)

(assert (=> b!1131926 m!1281479))

(declare-fun m!1281481 () Bool)

(assert (=> b!1131926 m!1281481))

(declare-fun m!1281483 () Bool)

(assert (=> b!1131931 m!1281483))

(declare-fun m!1281485 () Bool)

(assert (=> b!1131928 m!1281485))

(declare-fun m!1281487 () Bool)

(assert (=> b!1131927 m!1281487))

(declare-fun m!1281489 () Bool)

(assert (=> b!1131924 m!1281489))

(declare-fun m!1281491 () Bool)

(assert (=> b!1131934 m!1281491))

(declare-fun m!1281493 () Bool)

(assert (=> bm!80665 m!1281493))

(check-sat (not b!1131924) (not b!1131934) (not b!1131929) (not b!1131932) (not b!1131928) (not b!1131931) (not b!1131930) (not b!1131936) (not start!97418) (not b!1131926) (not b!1131935) (not b!1131927) (not bm!80665))
(check-sat)
(get-model)

(declare-fun d!319006 () Bool)

(declare-fun c!189639 () Bool)

(get-info :version)

(assert (=> d!319006 (= c!189639 ((_ is Node!3501) (c!189636 acc!225)))))

(declare-fun e!723222 () Bool)

(assert (=> d!319006 (= (inv!14199 (c!189636 acc!225)) e!723222)))

(declare-fun b!1131945 () Bool)

(declare-fun inv!14207 (Conc!3501) Bool)

(assert (=> b!1131945 (= e!723222 (inv!14207 (c!189636 acc!225)))))

(declare-fun b!1131946 () Bool)

(declare-fun e!723223 () Bool)

(assert (=> b!1131946 (= e!723222 e!723223)))

(declare-fun res!508855 () Bool)

(assert (=> b!1131946 (= res!508855 (not ((_ is Leaf!5457) (c!189636 acc!225))))))

(assert (=> b!1131946 (=> res!508855 e!723223)))

(declare-fun b!1131947 () Bool)

(declare-fun inv!14208 (Conc!3501) Bool)

(assert (=> b!1131947 (= e!723223 (inv!14208 (c!189636 acc!225)))))

(assert (= (and d!319006 c!189639) b!1131945))

(assert (= (and d!319006 (not c!189639)) b!1131946))

(assert (= (and b!1131946 (not res!508855)) b!1131947))

(declare-fun m!1281495 () Bool)

(assert (=> b!1131945 m!1281495))

(declare-fun m!1281497 () Bool)

(assert (=> b!1131947 m!1281497))

(assert (=> b!1131934 d!319006))

(declare-fun b!1132069 () Bool)

(declare-fun e!723335 () Bool)

(assert (=> b!1132069 (= e!723335 true)))

(declare-fun b!1132068 () Bool)

(declare-fun e!723334 () Bool)

(assert (=> b!1132068 (= e!723334 e!723335)))

(declare-fun d!319008 () Bool)

(assert (=> d!319008 e!723334))

(assert (= b!1132068 b!1132069))

(assert (= d!319008 b!1132068))

(declare-fun b!1132042 () Bool)

(declare-fun e!723310 () Bool)

(declare-fun e!723321 () Bool)

(assert (=> b!1132042 (= e!723310 e!723321)))

(declare-fun res!508942 () Bool)

(assert (=> b!1132042 (=> (not res!508942) (not e!723321))))

(declare-datatypes ((LexerInterface!1597 0))(
  ( (LexerInterfaceExt!1594 (__x!7637 Int)) (Lexer!1595) )
))
(declare-fun lt!380588 () LexerInterface!1597)

(declare-fun lt!380590 () Int)

(declare-fun separableTokensPredicate!95 (LexerInterface!1597 Token!3444 Token!3444 List!10992) Bool)

(declare-fun apply!2280 (BalanceConc!7020 Int) Token!3444)

(assert (=> b!1132042 (= res!508942 (separableTokensPredicate!95 lt!380588 (apply!2280 (tokens!1456 pt!21) lt!380590) (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)) (rules!9226 pt!21)))))

(declare-fun lt!380613 () Unit!16686)

(declare-fun Unit!16697 () Unit!16686)

(assert (=> b!1132042 (= lt!380613 Unit!16697)))

(declare-fun size!8559 (BalanceConc!7018) Int)

(declare-fun charsOf!1033 (Token!3444) BalanceConc!7018)

(assert (=> b!1132042 (> (size!8559 (charsOf!1033 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))) 0)))

(declare-fun lt!380594 () Unit!16686)

(declare-fun Unit!16698 () Unit!16686)

(assert (=> b!1132042 (= lt!380594 Unit!16698)))

(declare-fun rulesProduceIndividualToken!644 (LexerInterface!1597 List!10992 Token!3444) Bool)

(assert (=> b!1132042 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))

(declare-fun lt!380568 () Unit!16686)

(declare-fun Unit!16699 () Unit!16686)

(assert (=> b!1132042 (= lt!380568 Unit!16699)))

(assert (=> b!1132042 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) (apply!2280 (tokens!1456 pt!21) lt!380590))))

(declare-fun lt!380571 () Unit!16686)

(declare-fun lt!380569 () Unit!16686)

(assert (=> b!1132042 (= lt!380571 lt!380569)))

(declare-fun lt!380611 () Token!3444)

(assert (=> b!1132042 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) lt!380611)))

(declare-fun lt!380585 () List!10991)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 (LexerInterface!1597 List!10992 List!10991 Token!3444) Unit!16686)

(assert (=> b!1132042 (= lt!380569 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380588 (rules!9226 pt!21) lt!380585 lt!380611))))

(assert (=> b!1132042 (= lt!380611 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))

(declare-fun list!3976 (BalanceConc!7020) List!10991)

(assert (=> b!1132042 (= lt!380585 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!380617 () Unit!16686)

(declare-fun lt!380606 () Unit!16686)

(assert (=> b!1132042 (= lt!380617 lt!380606)))

(declare-fun lt!380579 () Token!3444)

(assert (=> b!1132042 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) lt!380579)))

(declare-fun lt!380619 () List!10991)

(assert (=> b!1132042 (= lt!380606 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380588 (rules!9226 pt!21) lt!380619 lt!380579))))

(assert (=> b!1132042 (= lt!380579 (apply!2280 (tokens!1456 pt!21) lt!380590))))

(assert (=> b!1132042 (= lt!380619 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!380573 () Unit!16686)

(declare-fun lt!380558 () Unit!16686)

(assert (=> b!1132042 (= lt!380573 lt!380558)))

(declare-fun lt!380605 () List!10991)

(declare-fun lt!380559 () Int)

(declare-fun tail!1617 (List!10991) List!10991)

(declare-fun drop!419 (List!10991 Int) List!10991)

(assert (=> b!1132042 (= (tail!1617 (drop!419 lt!380605 lt!380559)) (drop!419 lt!380605 (+ lt!380559 1)))))

(declare-fun lemmaDropTail!324 (List!10991 Int) Unit!16686)

(assert (=> b!1132042 (= lt!380558 (lemmaDropTail!324 lt!380605 lt!380559))))

(assert (=> b!1132042 (= lt!380559 (+ lt!380590 1))))

(assert (=> b!1132042 (= lt!380605 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!380548 () Unit!16686)

(declare-fun lt!380618 () Unit!16686)

(assert (=> b!1132042 (= lt!380548 lt!380618)))

(declare-fun lt!380575 () List!10991)

(assert (=> b!1132042 (= (tail!1617 (drop!419 lt!380575 lt!380590)) (drop!419 lt!380575 (+ lt!380590 1)))))

(assert (=> b!1132042 (= lt!380618 (lemmaDropTail!324 lt!380575 lt!380590))))

(assert (=> b!1132042 (= lt!380575 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!380560 () Unit!16686)

(declare-fun lt!380603 () Unit!16686)

(assert (=> b!1132042 (= lt!380560 lt!380603)))

(declare-fun lt!380596 () List!10991)

(declare-fun lt!380604 () Int)

(declare-fun head!2057 (List!10991) Token!3444)

(declare-fun apply!2281 (List!10991 Int) Token!3444)

(assert (=> b!1132042 (= (head!2057 (drop!419 lt!380596 lt!380604)) (apply!2281 lt!380596 lt!380604))))

(declare-fun lemmaDropApply!336 (List!10991 Int) Unit!16686)

(assert (=> b!1132042 (= lt!380603 (lemmaDropApply!336 lt!380596 lt!380604))))

(assert (=> b!1132042 (= lt!380604 (+ lt!380590 1))))

(assert (=> b!1132042 (= lt!380596 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!380582 () Unit!16686)

(declare-fun lt!380593 () Unit!16686)

(assert (=> b!1132042 (= lt!380582 lt!380593)))

(declare-fun lt!380589 () List!10991)

(assert (=> b!1132042 (= (head!2057 (drop!419 lt!380589 lt!380590)) (apply!2281 lt!380589 lt!380590))))

(assert (=> b!1132042 (= lt!380593 (lemmaDropApply!336 lt!380589 lt!380590))))

(assert (=> b!1132042 (= lt!380589 (list!3976 (tokens!1456 pt!21)))))

(declare-fun b!1132043 () Bool)

(declare-fun e!723316 () Bool)

(declare-fun e!723313 () Bool)

(assert (=> b!1132043 (= e!723316 e!723313)))

(declare-fun res!508939 () Bool)

(assert (=> b!1132043 (=> (not res!508939) (not e!723313))))

(declare-fun lt!380601 () LexerInterface!1597)

(declare-fun lt!380587 () List!10991)

(assert (=> b!1132043 (= res!508939 (rulesProduceIndividualToken!644 lt!380601 (rules!9226 pt!21) (h!16368 lt!380587)))))

(declare-fun lt!380580 () List!10991)

(declare-fun e!723320 () Bool)

(declare-fun b!1132044 () Bool)

(declare-fun lt!380563 () LexerInterface!1597)

(declare-fun rulesProduceEachTokenIndividuallyList!472 (LexerInterface!1597 List!10992 List!10991) Bool)

(assert (=> b!1132044 (= e!723320 (rulesProduceEachTokenIndividuallyList!472 lt!380563 (rules!9226 pt!21) (t!106951 lt!380580)))))

(declare-fun b!1132045 () Bool)

(assert (=> b!1132045 (= e!723313 (rulesProduceEachTokenIndividuallyList!472 lt!380601 (rules!9226 pt!21) (t!106951 lt!380587)))))

(declare-fun b!1132046 () Bool)

(declare-fun e!723317 () Bool)

(declare-fun lt!380584 () List!10991)

(declare-fun lt!380592 () LexerInterface!1597)

(assert (=> b!1132046 (= e!723317 (rulesProduceEachTokenIndividuallyList!472 lt!380592 (rules!9226 pt!21) (t!106951 lt!380584)))))

(declare-fun b!1132047 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!26 (LexerInterface!1597 BalanceConc!7020 Int List!10992) Bool)

(assert (=> b!1132047 (= e!723321 (tokensListTwoByTwoPredicateSeparable!26 lt!380588 (tokens!1456 pt!21) (+ lt!380590 1) (rules!9226 pt!21)))))

(declare-fun b!1132049 () Bool)

(declare-fun e!723311 () Bool)

(assert (=> b!1132049 (= e!723311 e!723320)))

(declare-fun res!508940 () Bool)

(assert (=> b!1132049 (=> (not res!508940) (not e!723320))))

(assert (=> b!1132049 (= res!508940 (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 lt!380580)))))

(declare-fun e!723312 () Bool)

(declare-fun lt!380570 () PrintableTokens!468)

(declare-fun b!1132050 () Bool)

(declare-fun slice!69 (BalanceConc!7020 Int Int) BalanceConc!7020)

(assert (=> b!1132050 (= e!723312 (= (list!3976 (tokens!1456 lt!380570)) (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))))))))

(declare-fun lt!380595 () List!10991)

(declare-fun lt!380599 () Int)

(declare-fun e!723314 () Bool)

(declare-fun b!1132051 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!71 (LexerInterface!1597 List!10991 List!10992) Bool)

(declare-fun take!17 (List!10991 Int) List!10991)

(assert (=> b!1132051 (= e!723314 (tokensListTwoByTwoPredicateSeparableList!71 lt!380563 (take!17 lt!380595 lt!380599) (rules!9226 pt!21)))))

(declare-fun lt!380562 () Unit!16686)

(declare-fun lt!380597 () Unit!16686)

(assert (=> b!1132051 (= lt!380562 lt!380597)))

(declare-fun lt!380600 () List!10991)

(declare-fun lambda!45591 () Int)

(declare-fun forall!2658 (List!10991 Int) Bool)

(assert (=> b!1132051 (forall!2658 lt!380600 lambda!45591)))

(declare-fun lemmaForallSubseq!74 (List!10991 List!10991 Int) Unit!16686)

(assert (=> b!1132051 (= lt!380597 (lemmaForallSubseq!74 lt!380600 lt!380595 lambda!45591))))

(assert (=> b!1132051 (= lt!380600 (take!17 lt!380595 lt!380599))))

(declare-fun b!1132052 () Bool)

(declare-fun e!723322 () Bool)

(assert (=> b!1132052 (= e!723322 e!723317)))

(declare-fun res!508937 () Bool)

(assert (=> b!1132052 (=> (not res!508937) (not e!723317))))

(assert (=> b!1132052 (= res!508937 (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 lt!380584)))))

(declare-fun b!1132053 () Bool)

(declare-fun e!723315 () Bool)

(declare-fun e!723318 () Bool)

(assert (=> b!1132053 (= e!723315 e!723318)))

(declare-fun res!508949 () Bool)

(assert (=> b!1132053 (=> (not res!508949) (not e!723318))))

(declare-fun lt!380574 () List!10991)

(declare-fun lt!380565 () LexerInterface!1597)

(assert (=> b!1132053 (= res!508949 (rulesProduceIndividualToken!644 lt!380565 (rules!9226 pt!21) (h!16368 lt!380574)))))

(assert (=> d!319008 e!723312))

(declare-fun res!508947 () Bool)

(assert (=> d!319008 (=> (not res!508947) (not e!723312))))

(assert (=> d!319008 (= res!508947 (= (rules!9226 lt!380570) (rules!9226 pt!21)))))

(assert (=> d!319008 (= lt!380570 (PrintableTokens!469 (rules!9226 pt!21) (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!380550 () Unit!16686)

(declare-fun lt!380553 () Unit!16686)

(assert (=> d!319008 (= lt!380550 lt!380553)))

(assert (=> d!319008 e!723314))

(declare-fun res!508948 () Bool)

(assert (=> d!319008 (=> (not res!508948) (not e!723314))))

(assert (=> d!319008 (= res!508948 (= (rulesProduceEachTokenIndividuallyList!472 lt!380563 (rules!9226 pt!21) (take!17 lt!380595 lt!380599)) e!723311))))

(declare-fun res!508946 () Bool)

(assert (=> d!319008 (=> res!508946 e!723311)))

(assert (=> d!319008 (= res!508946 (not ((_ is Cons!10967) lt!380580)))))

(assert (=> d!319008 (= lt!380580 (take!17 lt!380595 lt!380599))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!15 (LexerInterface!1597 List!10991 Int List!10992) Unit!16686)

(assert (=> d!319008 (= lt!380553 (tokensListTwoByTwoPredicateSeparableTokensTakeList!15 lt!380563 lt!380595 lt!380599 (rules!9226 pt!21)))))

(assert (=> d!319008 (= lt!380599 (- (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)) (ite c!189631 lt!380179 lt!380178)))))

(assert (=> d!319008 (= lt!380595 (drop!419 (list!3976 (tokens!1456 pt!21)) (ite c!189631 lt!380179 lt!380178)))))

(assert (=> d!319008 (= lt!380563 Lexer!1595)))

(declare-fun lt!380561 () Unit!16686)

(declare-fun lt!380612 () Unit!16686)

(assert (=> d!319008 (= lt!380561 lt!380612)))

(declare-fun lt!380578 () List!10991)

(assert (=> d!319008 (forall!2658 lt!380578 lambda!45591)))

(declare-fun lt!380576 () List!10991)

(assert (=> d!319008 (= lt!380612 (lemmaForallSubseq!74 lt!380578 lt!380576 lambda!45591))))

(assert (=> d!319008 (= lt!380576 (list!3976 (tokens!1456 pt!21)))))

(assert (=> d!319008 (= lt!380578 (drop!419 (list!3976 (tokens!1456 pt!21)) (ite c!189631 lt!380179 lt!380178)))))

(declare-fun lt!380552 () Unit!16686)

(declare-fun lt!380586 () Unit!16686)

(assert (=> d!319008 (= lt!380552 lt!380586)))

(declare-fun lt!380591 () List!10991)

(declare-fun subseq!174 (List!10991 List!10991) Bool)

(assert (=> d!319008 (subseq!174 (drop!419 lt!380591 (ite c!189631 lt!380179 lt!380178)) lt!380591)))

(declare-fun lemmaDropSubseq!15 (List!10991 Int) Unit!16686)

(assert (=> d!319008 (= lt!380586 (lemmaDropSubseq!15 lt!380591 (ite c!189631 lt!380179 lt!380178)))))

(assert (=> d!319008 (= lt!380591 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!380567 () Unit!16686)

(declare-fun lt!380615 () Unit!16686)

(assert (=> d!319008 (= lt!380567 lt!380615)))

(declare-fun e!723323 () Bool)

(assert (=> d!319008 e!723323))

(declare-fun res!508945 () Bool)

(assert (=> d!319008 (=> (not res!508945) (not e!723323))))

(declare-fun lt!380549 () List!10991)

(assert (=> d!319008 (= res!508945 (= (rulesProduceEachTokenIndividuallyList!472 lt!380592 (rules!9226 pt!21) (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))) e!723322))))

(declare-fun res!508938 () Bool)

(assert (=> d!319008 (=> res!508938 e!723322)))

(assert (=> d!319008 (= res!508938 (not ((_ is Cons!10967) lt!380584)))))

(assert (=> d!319008 (= lt!380584 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!15 (LexerInterface!1597 List!10991 Int List!10992) Unit!16686)

(assert (=> d!319008 (= lt!380615 (tokensListTwoByTwoPredicateSeparableTokensDropList!15 lt!380592 lt!380549 (ite c!189631 lt!380179 lt!380178) (rules!9226 pt!21)))))

(assert (=> d!319008 (= lt!380549 (list!3976 (tokens!1456 pt!21)))))

(assert (=> d!319008 (= lt!380592 Lexer!1595)))

(declare-fun lt!380614 () Unit!16686)

(declare-fun Unit!16700 () Unit!16686)

(assert (=> d!319008 (= lt!380614 Unit!16700)))

(assert (=> d!319008 (= (tokensListTwoByTwoPredicateSeparable!26 Lexer!1595 (tokens!1456 pt!21) 0 (rules!9226 pt!21)) e!723310)))

(declare-fun res!508944 () Bool)

(assert (=> d!319008 (=> res!508944 e!723310)))

(declare-fun size!8560 (BalanceConc!7020) Int)

(assert (=> d!319008 (= res!508944 (not (< lt!380590 (- (size!8560 (tokens!1456 pt!21)) 1))))))

(assert (=> d!319008 (= lt!380590 0)))

(assert (=> d!319008 (= lt!380588 Lexer!1595)))

(declare-fun lt!380555 () Unit!16686)

(declare-fun Unit!16701 () Unit!16686)

(assert (=> d!319008 (= lt!380555 Unit!16701)))

(declare-fun separableTokens!66 (LexerInterface!1597 BalanceConc!7020 List!10992) Bool)

(assert (=> d!319008 (= (separableTokens!66 Lexer!1595 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (rules!9226 pt!21)) (tokensListTwoByTwoPredicateSeparable!26 Lexer!1595 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) 0 (rules!9226 pt!21)))))

(declare-fun lt!380572 () Unit!16686)

(declare-fun Unit!16702 () Unit!16686)

(assert (=> d!319008 (= lt!380572 Unit!16702)))

(assert (=> d!319008 (= (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))))) e!723316)))

(declare-fun res!508936 () Bool)

(assert (=> d!319008 (=> res!508936 e!723316)))

(assert (=> d!319008 (= res!508936 (not ((_ is Cons!10967) lt!380587)))))

(assert (=> d!319008 (= lt!380587 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(assert (=> d!319008 (= lt!380601 Lexer!1595)))

(declare-fun lt!380556 () Unit!16686)

(declare-fun Unit!16703 () Unit!16686)

(assert (=> d!319008 (= lt!380556 Unit!16703)))

(declare-fun rulesProduceEachTokenIndividually!639 (LexerInterface!1597 List!10992 BalanceConc!7020) Bool)

(declare-fun forall!2659 (BalanceConc!7020 Int) Bool)

(assert (=> d!319008 (= (rulesProduceEachTokenIndividually!639 Lexer!1595 (rules!9226 pt!21) (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) (forall!2659 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lambda!45591))))

(declare-fun lt!380557 () Unit!16686)

(declare-fun lt!380551 () Unit!16686)

(assert (=> d!319008 (= lt!380557 lt!380551)))

(declare-fun lt!380602 () List!10991)

(assert (=> d!319008 (forall!2658 lt!380602 lambda!45591)))

(declare-fun lt!380610 () List!10991)

(assert (=> d!319008 (= lt!380551 (lemmaForallSubseq!74 lt!380602 lt!380610 lambda!45591))))

(assert (=> d!319008 (= lt!380610 (list!3976 (tokens!1456 pt!21)))))

(assert (=> d!319008 (= lt!380602 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!380554 () Unit!16686)

(declare-fun lt!380566 () Unit!16686)

(assert (=> d!319008 (= lt!380554 lt!380566)))

(declare-fun lt!380609 () List!10991)

(declare-fun slice!70 (List!10991 Int Int) List!10991)

(assert (=> d!319008 (subseq!174 (slice!70 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lt!380609)))

(declare-fun lemmaSliceSubseq!15 (List!10991 Int Int) Unit!16686)

(assert (=> d!319008 (= lt!380566 (lemmaSliceSubseq!15 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))))))

(assert (=> d!319008 (= lt!380609 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!380564 () Unit!16686)

(declare-fun Unit!16704 () Unit!16686)

(assert (=> d!319008 (= lt!380564 Unit!16704)))

(assert (=> d!319008 (= (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) (list!3976 (tokens!1456 pt!21))) e!723315)))

(declare-fun res!508941 () Bool)

(assert (=> d!319008 (=> res!508941 e!723315)))

(assert (=> d!319008 (= res!508941 (not ((_ is Cons!10967) lt!380574)))))

(assert (=> d!319008 (= lt!380574 (list!3976 (tokens!1456 pt!21)))))

(assert (=> d!319008 (= lt!380565 Lexer!1595)))

(declare-fun lt!380598 () Unit!16686)

(declare-fun Unit!16705 () Unit!16686)

(assert (=> d!319008 (= lt!380598 Unit!16705)))

(assert (=> d!319008 (= (rulesProduceEachTokenIndividually!639 Lexer!1595 (rules!9226 pt!21) (tokens!1456 pt!21)) (forall!2659 (tokens!1456 pt!21) lambda!45591))))

(declare-fun lt!380581 () Unit!16686)

(declare-fun lemmaInvariant!89 (PrintableTokens!468) Unit!16686)

(assert (=> d!319008 (= lt!380581 (lemmaInvariant!89 pt!21))))

(declare-fun e!723319 () Bool)

(assert (=> d!319008 e!723319))

(declare-fun res!508943 () Bool)

(assert (=> d!319008 (=> (not res!508943) (not e!723319))))

(assert (=> d!319008 (= res!508943 (and (<= 0 (ite c!189631 lt!380179 lt!380178)) (<= (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(assert (=> d!319008 (= (slice!66 pt!21 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lt!380570)))

(declare-fun b!1132048 () Bool)

(assert (=> b!1132048 (= e!723318 (rulesProduceEachTokenIndividuallyList!472 lt!380565 (rules!9226 pt!21) (t!106951 lt!380574)))))

(declare-fun b!1132054 () Bool)

(assert (=> b!1132054 (= e!723319 (<= (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)) (size!8560 (tokens!1456 pt!21))))))

(declare-fun b!1132055 () Bool)

(assert (=> b!1132055 (= e!723323 (tokensListTwoByTwoPredicateSeparableList!71 lt!380592 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) (rules!9226 pt!21)))))

(declare-fun lt!380607 () Unit!16686)

(declare-fun lt!380608 () Unit!16686)

(assert (=> b!1132055 (= lt!380607 lt!380608)))

(declare-fun lt!380616 () List!10991)

(assert (=> b!1132055 (forall!2658 lt!380616 lambda!45591)))

(assert (=> b!1132055 (= lt!380608 (lemmaForallSubseq!74 lt!380616 lt!380549 lambda!45591))))

(assert (=> b!1132055 (= lt!380616 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))

(declare-fun lt!380577 () Unit!16686)

(declare-fun lt!380583 () Unit!16686)

(assert (=> b!1132055 (= lt!380577 lt!380583)))

(assert (=> b!1132055 (subseq!174 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) lt!380549)))

(assert (=> b!1132055 (= lt!380583 (lemmaDropSubseq!15 lt!380549 (ite c!189631 lt!380179 lt!380178)))))

(assert (= (and d!319008 res!508943) b!1132054))

(assert (= (and d!319008 (not res!508941)) b!1132053))

(assert (= (and b!1132053 res!508949) b!1132048))

(assert (= (and d!319008 (not res!508936)) b!1132043))

(assert (= (and b!1132043 res!508939) b!1132045))

(assert (= (and d!319008 (not res!508944)) b!1132042))

(assert (= (and b!1132042 res!508942) b!1132047))

(assert (= (and d!319008 (not res!508938)) b!1132052))

(assert (= (and b!1132052 res!508937) b!1132046))

(assert (= (and d!319008 res!508945) b!1132055))

(assert (= (and d!319008 (not res!508946)) b!1132049))

(assert (= (and b!1132049 res!508940) b!1132044))

(assert (= (and d!319008 res!508948) b!1132051))

(assert (= (and d!319008 res!508947) b!1132050))

(declare-fun m!1281675 () Bool)

(assert (=> b!1132043 m!1281675))

(declare-fun m!1281677 () Bool)

(assert (=> b!1132052 m!1281677))

(declare-fun m!1281679 () Bool)

(assert (=> b!1132053 m!1281679))

(declare-fun m!1281681 () Bool)

(assert (=> b!1132055 m!1281681))

(assert (=> b!1132055 m!1281681))

(declare-fun m!1281683 () Bool)

(assert (=> b!1132055 m!1281683))

(declare-fun m!1281685 () Bool)

(assert (=> b!1132055 m!1281685))

(assert (=> b!1132055 m!1281681))

(declare-fun m!1281687 () Bool)

(assert (=> b!1132055 m!1281687))

(declare-fun m!1281689 () Bool)

(assert (=> b!1132055 m!1281689))

(declare-fun m!1281691 () Bool)

(assert (=> b!1132055 m!1281691))

(declare-fun m!1281693 () Bool)

(assert (=> b!1132047 m!1281693))

(declare-fun m!1281695 () Bool)

(assert (=> b!1132049 m!1281695))

(declare-fun m!1281697 () Bool)

(assert (=> b!1132050 m!1281697))

(declare-fun m!1281699 () Bool)

(assert (=> b!1132050 m!1281699))

(assert (=> b!1132050 m!1281699))

(declare-fun m!1281701 () Bool)

(assert (=> b!1132050 m!1281701))

(declare-fun m!1281703 () Bool)

(assert (=> b!1132046 m!1281703))

(declare-fun m!1281705 () Bool)

(assert (=> b!1132045 m!1281705))

(declare-fun m!1281707 () Bool)

(assert (=> b!1132042 m!1281707))

(declare-fun m!1281709 () Bool)

(assert (=> b!1132042 m!1281709))

(declare-fun m!1281711 () Bool)

(assert (=> b!1132042 m!1281711))

(declare-fun m!1281713 () Bool)

(assert (=> b!1132042 m!1281713))

(declare-fun m!1281715 () Bool)

(assert (=> b!1132042 m!1281715))

(declare-fun m!1281717 () Bool)

(assert (=> b!1132042 m!1281717))

(assert (=> b!1132042 m!1281709))

(declare-fun m!1281719 () Bool)

(assert (=> b!1132042 m!1281719))

(declare-fun m!1281721 () Bool)

(assert (=> b!1132042 m!1281721))

(declare-fun m!1281723 () Bool)

(assert (=> b!1132042 m!1281723))

(assert (=> b!1132042 m!1281721))

(declare-fun m!1281725 () Bool)

(assert (=> b!1132042 m!1281725))

(declare-fun m!1281727 () Bool)

(assert (=> b!1132042 m!1281727))

(assert (=> b!1132042 m!1281727))

(declare-fun m!1281729 () Bool)

(assert (=> b!1132042 m!1281729))

(assert (=> b!1132042 m!1281709))

(declare-fun m!1281731 () Bool)

(assert (=> b!1132042 m!1281731))

(declare-fun m!1281733 () Bool)

(assert (=> b!1132042 m!1281733))

(declare-fun m!1281735 () Bool)

(assert (=> b!1132042 m!1281735))

(assert (=> b!1132042 m!1281711))

(declare-fun m!1281737 () Bool)

(assert (=> b!1132042 m!1281737))

(declare-fun m!1281739 () Bool)

(assert (=> b!1132042 m!1281739))

(declare-fun m!1281741 () Bool)

(assert (=> b!1132042 m!1281741))

(declare-fun m!1281743 () Bool)

(assert (=> b!1132042 m!1281743))

(declare-fun m!1281745 () Bool)

(assert (=> b!1132042 m!1281745))

(assert (=> b!1132042 m!1281709))

(declare-fun m!1281747 () Bool)

(assert (=> b!1132042 m!1281747))

(declare-fun m!1281749 () Bool)

(assert (=> b!1132042 m!1281749))

(declare-fun m!1281751 () Bool)

(assert (=> b!1132042 m!1281751))

(assert (=> b!1132042 m!1281749))

(declare-fun m!1281753 () Bool)

(assert (=> b!1132042 m!1281753))

(declare-fun m!1281755 () Bool)

(assert (=> b!1132042 m!1281755))

(declare-fun m!1281757 () Bool)

(assert (=> b!1132042 m!1281757))

(assert (=> b!1132042 m!1281731))

(declare-fun m!1281759 () Bool)

(assert (=> b!1132042 m!1281759))

(assert (=> b!1132042 m!1281745))

(assert (=> b!1132042 m!1281745))

(declare-fun m!1281761 () Bool)

(assert (=> b!1132042 m!1281761))

(assert (=> d!319008 m!1281681))

(declare-fun m!1281763 () Bool)

(assert (=> d!319008 m!1281763))

(declare-fun m!1281765 () Bool)

(assert (=> d!319008 m!1281765))

(assert (=> d!319008 m!1281739))

(declare-fun m!1281767 () Bool)

(assert (=> d!319008 m!1281767))

(assert (=> d!319008 m!1281699))

(declare-fun m!1281769 () Bool)

(assert (=> d!319008 m!1281769))

(declare-fun m!1281771 () Bool)

(assert (=> d!319008 m!1281771))

(declare-fun m!1281773 () Bool)

(assert (=> d!319008 m!1281773))

(declare-fun m!1281775 () Bool)

(assert (=> d!319008 m!1281775))

(declare-fun m!1281777 () Bool)

(assert (=> d!319008 m!1281777))

(assert (=> d!319008 m!1281699))

(assert (=> d!319008 m!1281701))

(assert (=> d!319008 m!1281739))

(declare-fun m!1281779 () Bool)

(assert (=> d!319008 m!1281779))

(declare-fun m!1281781 () Bool)

(assert (=> d!319008 m!1281781))

(assert (=> d!319008 m!1281739))

(declare-fun m!1281783 () Bool)

(assert (=> d!319008 m!1281783))

(assert (=> d!319008 m!1281699))

(declare-fun m!1281785 () Bool)

(assert (=> d!319008 m!1281785))

(assert (=> d!319008 m!1281763))

(assert (=> d!319008 m!1281701))

(declare-fun m!1281787 () Bool)

(assert (=> d!319008 m!1281787))

(declare-fun m!1281789 () Bool)

(assert (=> d!319008 m!1281789))

(assert (=> d!319008 m!1281773))

(assert (=> d!319008 m!1281681))

(declare-fun m!1281791 () Bool)

(assert (=> d!319008 m!1281791))

(declare-fun m!1281793 () Bool)

(assert (=> d!319008 m!1281793))

(declare-fun m!1281795 () Bool)

(assert (=> d!319008 m!1281795))

(declare-fun m!1281797 () Bool)

(assert (=> d!319008 m!1281797))

(assert (=> d!319008 m!1281699))

(declare-fun m!1281799 () Bool)

(assert (=> d!319008 m!1281799))

(declare-fun m!1281801 () Bool)

(assert (=> d!319008 m!1281801))

(declare-fun m!1281803 () Bool)

(assert (=> d!319008 m!1281803))

(assert (=> d!319008 m!1281699))

(declare-fun m!1281805 () Bool)

(assert (=> d!319008 m!1281805))

(assert (=> d!319008 m!1281699))

(declare-fun m!1281807 () Bool)

(assert (=> d!319008 m!1281807))

(assert (=> d!319008 m!1281793))

(declare-fun m!1281809 () Bool)

(assert (=> d!319008 m!1281809))

(declare-fun m!1281811 () Bool)

(assert (=> d!319008 m!1281811))

(declare-fun m!1281813 () Bool)

(assert (=> d!319008 m!1281813))

(declare-fun m!1281815 () Bool)

(assert (=> d!319008 m!1281815))

(assert (=> b!1132051 m!1281793))

(assert (=> b!1132051 m!1281793))

(declare-fun m!1281817 () Bool)

(assert (=> b!1132051 m!1281817))

(declare-fun m!1281819 () Bool)

(assert (=> b!1132051 m!1281819))

(declare-fun m!1281821 () Bool)

(assert (=> b!1132051 m!1281821))

(assert (=> b!1132054 m!1281815))

(declare-fun m!1281823 () Bool)

(assert (=> b!1132044 m!1281823))

(declare-fun m!1281825 () Bool)

(assert (=> b!1132048 m!1281825))

(assert (=> bm!80665 d!319008))

(declare-fun d!319028 () Bool)

(declare-fun c!189648 () Bool)

(assert (=> d!319028 (= c!189648 ((_ is Node!3499) (c!189634 (tokens!1456 pt!21))))))

(declare-fun e!723340 () Bool)

(assert (=> d!319028 (= (inv!14196 (c!189634 (tokens!1456 pt!21))) e!723340)))

(declare-fun b!1132076 () Bool)

(declare-fun inv!14215 (Conc!3499) Bool)

(assert (=> b!1132076 (= e!723340 (inv!14215 (c!189634 (tokens!1456 pt!21))))))

(declare-fun b!1132077 () Bool)

(declare-fun e!723341 () Bool)

(assert (=> b!1132077 (= e!723340 e!723341)))

(declare-fun res!508952 () Bool)

(assert (=> b!1132077 (= res!508952 (not ((_ is Leaf!5455) (c!189634 (tokens!1456 pt!21)))))))

(assert (=> b!1132077 (=> res!508952 e!723341)))

(declare-fun b!1132078 () Bool)

(declare-fun inv!14216 (Conc!3499) Bool)

(assert (=> b!1132078 (= e!723341 (inv!14216 (c!189634 (tokens!1456 pt!21))))))

(assert (= (and d!319028 c!189648) b!1132076))

(assert (= (and d!319028 (not c!189648)) b!1132077))

(assert (= (and b!1132077 (not res!508952)) b!1132078))

(declare-fun m!1281827 () Bool)

(assert (=> b!1132076 m!1281827))

(declare-fun m!1281829 () Bool)

(assert (=> b!1132078 m!1281829))

(assert (=> b!1131924 d!319028))

(declare-fun d!319030 () Bool)

(declare-fun lt!380622 () Bool)

(declare-fun forall!2660 (List!10993 Int) Bool)

(declare-fun list!3977 (BalanceConc!7022) List!10993)

(assert (=> d!319030 (= lt!380622 (forall!2660 (list!3977 indices!2) lambda!45564))))

(declare-fun forall!2661 (Conc!3500 Int) Bool)

(assert (=> d!319030 (= lt!380622 (forall!2661 (c!189635 indices!2) lambda!45564))))

(assert (=> d!319030 (= (forall!2651 indices!2 lambda!45564) lt!380622)))

(declare-fun bs!277833 () Bool)

(assert (= bs!277833 d!319030))

(declare-fun m!1281831 () Bool)

(assert (=> bs!277833 m!1281831))

(assert (=> bs!277833 m!1281831))

(declare-fun m!1281833 () Bool)

(assert (=> bs!277833 m!1281833))

(declare-fun m!1281835 () Bool)

(assert (=> bs!277833 m!1281835))

(assert (=> b!1131936 d!319030))

(declare-fun d!319032 () Bool)

(declare-datatypes ((JsonLexer!312 0))(
  ( (JsonLexer!313) )
))
(declare-fun rules!109 (JsonLexer!312) List!10992)

(assert (=> d!319032 (= (usesJsonRules!0 lt!380180) (= (rules!9226 lt!380180) (rules!109 JsonLexer!313)))))

(declare-fun bs!277834 () Bool)

(assert (= bs!277834 d!319032))

(declare-fun m!1281837 () Bool)

(assert (=> bs!277834 m!1281837))

(assert (=> b!1131926 d!319032))

(declare-fun d!319034 () Bool)

(declare-fun lt!380625 () Int)

(declare-fun apply!2282 (List!10993 Int) Int)

(assert (=> d!319034 (= lt!380625 (apply!2282 (list!3977 indices!2) 1))))

(declare-fun apply!2283 (Conc!3500 Int) Int)

(assert (=> d!319034 (= lt!380625 (apply!2283 (c!189635 indices!2) 1))))

(declare-fun e!723344 () Bool)

(assert (=> d!319034 e!723344))

(declare-fun res!508955 () Bool)

(assert (=> d!319034 (=> (not res!508955) (not e!723344))))

(assert (=> d!319034 (= res!508955 (<= 0 1))))

(assert (=> d!319034 (= (apply!2275 indices!2 1) lt!380625)))

(declare-fun b!1132081 () Bool)

(assert (=> b!1132081 (= e!723344 (< 1 (size!8553 indices!2)))))

(assert (= (and d!319034 res!508955) b!1132081))

(assert (=> d!319034 m!1281831))

(assert (=> d!319034 m!1281831))

(declare-fun m!1281839 () Bool)

(assert (=> d!319034 m!1281839))

(declare-fun m!1281841 () Bool)

(assert (=> d!319034 m!1281841))

(assert (=> b!1132081 m!1281483))

(assert (=> b!1131926 d!319034))

(declare-fun d!319036 () Bool)

(declare-fun lt!380626 () Int)

(assert (=> d!319036 (= lt!380626 (apply!2282 (list!3977 indices!2) 0))))

(assert (=> d!319036 (= lt!380626 (apply!2283 (c!189635 indices!2) 0))))

(declare-fun e!723345 () Bool)

(assert (=> d!319036 e!723345))

(declare-fun res!508956 () Bool)

(assert (=> d!319036 (=> (not res!508956) (not e!723345))))

(assert (=> d!319036 (= res!508956 (<= 0 0))))

(assert (=> d!319036 (= (apply!2275 indices!2 0) lt!380626)))

(declare-fun b!1132082 () Bool)

(assert (=> b!1132082 (= e!723345 (< 0 (size!8553 indices!2)))))

(assert (= (and d!319036 res!508956) b!1132082))

(assert (=> d!319036 m!1281831))

(assert (=> d!319036 m!1281831))

(declare-fun m!1281843 () Bool)

(assert (=> d!319036 m!1281843))

(declare-fun m!1281845 () Bool)

(assert (=> d!319036 m!1281845))

(assert (=> b!1132082 m!1281483))

(assert (=> b!1131926 d!319036))

(declare-fun d!319038 () Bool)

(declare-fun lt!380629 () Bool)

(declare-fun forall!2662 (List!10994 Int) Bool)

(assert (=> d!319038 (= lt!380629 (forall!2662 (list!3972 (append!334 acc!225 lt!380180)) lambda!45565))))

(declare-fun forall!2663 (Conc!3501 Int) Bool)

(assert (=> d!319038 (= lt!380629 (forall!2663 (c!189636 (append!334 acc!225 lt!380180)) lambda!45565))))

(assert (=> d!319038 (= (forall!2650 (append!334 acc!225 lt!380180) lambda!45565) lt!380629)))

(declare-fun bs!277835 () Bool)

(assert (= bs!277835 d!319038))

(assert (=> bs!277835 m!1281469))

(declare-fun m!1281847 () Bool)

(assert (=> bs!277835 m!1281847))

(assert (=> bs!277835 m!1281847))

(declare-fun m!1281849 () Bool)

(assert (=> bs!277835 m!1281849))

(declare-fun m!1281851 () Bool)

(assert (=> bs!277835 m!1281851))

(assert (=> b!1131935 d!319038))

(declare-fun d!319040 () Bool)

(declare-fun e!723351 () Bool)

(assert (=> d!319040 e!723351))

(declare-fun res!508968 () Bool)

(assert (=> d!319040 (=> (not res!508968) (not e!723351))))

(declare-fun isBalanced!971 (Conc!3501) Bool)

(declare-fun append!336 (Conc!3501 PrintableTokens!468) Conc!3501)

(assert (=> d!319040 (= res!508968 (isBalanced!971 (append!336 (c!189636 acc!225) lt!380180)))))

(declare-fun lt!380632 () BalanceConc!7024)

(assert (=> d!319040 (= lt!380632 (BalanceConc!7025 (append!336 (c!189636 acc!225) lt!380180)))))

(assert (=> d!319040 (= (append!334 acc!225 lt!380180) lt!380632)))

(declare-fun b!1132094 () Bool)

(declare-fun $colon+!73 (List!10994 PrintableTokens!468) List!10994)

(assert (=> b!1132094 (= e!723351 (= (list!3972 lt!380632) ($colon+!73 (list!3972 acc!225) lt!380180)))))

(assert (= (and d!319040 res!508968) b!1132094))

(declare-fun m!1281861 () Bool)

(assert (=> d!319040 m!1281861))

(assert (=> d!319040 m!1281861))

(declare-fun m!1281863 () Bool)

(assert (=> d!319040 m!1281863))

(declare-fun m!1281865 () Bool)

(assert (=> b!1132094 m!1281865))

(assert (=> b!1132094 m!1281473))

(assert (=> b!1132094 m!1281473))

(declare-fun m!1281867 () Bool)

(assert (=> b!1132094 m!1281867))

(assert (=> b!1131935 d!319040))

(declare-fun d!319046 () Bool)

(declare-fun ++!2915 (List!10994 List!10994) List!10994)

(assert (=> d!319046 (forall!2662 (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970)) lambda!45565)))

(declare-fun lt!380638 () Unit!16686)

(declare-fun choose!7246 (List!10994 List!10994 Int) Unit!16686)

(assert (=> d!319046 (= lt!380638 (choose!7246 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970) lambda!45565))))

(assert (=> d!319046 (forall!2662 (list!3972 acc!225) lambda!45565)))

(assert (=> d!319046 (= (lemmaConcatPreservesForall!104 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970) lambda!45565) lt!380638)))

(declare-fun bs!277840 () Bool)

(assert (= bs!277840 d!319046))

(assert (=> bs!277840 m!1281473))

(declare-fun m!1281875 () Bool)

(assert (=> bs!277840 m!1281875))

(assert (=> bs!277840 m!1281875))

(declare-fun m!1281877 () Bool)

(assert (=> bs!277840 m!1281877))

(assert (=> bs!277840 m!1281473))

(declare-fun m!1281879 () Bool)

(assert (=> bs!277840 m!1281879))

(assert (=> bs!277840 m!1281473))

(declare-fun m!1281881 () Bool)

(assert (=> bs!277840 m!1281881))

(assert (=> b!1131935 d!319046))

(declare-fun d!319054 () Bool)

(declare-fun list!3978 (Conc!3501) List!10994)

(assert (=> d!319054 (= (list!3972 acc!225) (list!3978 (c!189636 acc!225)))))

(declare-fun bs!277841 () Bool)

(assert (= bs!277841 d!319054))

(declare-fun m!1281883 () Bool)

(assert (=> bs!277841 m!1281883))

(assert (=> b!1131935 d!319054))

(declare-fun d!319056 () Bool)

(declare-fun c!189652 () Bool)

(assert (=> d!319056 (= c!189652 ((_ is Node!3500) (c!189635 indices!2)))))

(declare-fun e!723356 () Bool)

(assert (=> d!319056 (= (inv!14197 (c!189635 indices!2)) e!723356)))

(declare-fun b!1132101 () Bool)

(declare-fun inv!14217 (Conc!3500) Bool)

(assert (=> b!1132101 (= e!723356 (inv!14217 (c!189635 indices!2)))))

(declare-fun b!1132102 () Bool)

(declare-fun e!723357 () Bool)

(assert (=> b!1132102 (= e!723356 e!723357)))

(declare-fun res!508971 () Bool)

(assert (=> b!1132102 (= res!508971 (not ((_ is Leaf!5456) (c!189635 indices!2))))))

(assert (=> b!1132102 (=> res!508971 e!723357)))

(declare-fun b!1132103 () Bool)

(declare-fun inv!14218 (Conc!3500) Bool)

(assert (=> b!1132103 (= e!723357 (inv!14218 (c!189635 indices!2)))))

(assert (= (and d!319056 c!189652) b!1132101))

(assert (= (and d!319056 (not c!189652)) b!1132102))

(assert (= (and b!1132102 (not res!508971)) b!1132103))

(declare-fun m!1281891 () Bool)

(assert (=> b!1132101 m!1281891))

(declare-fun m!1281893 () Bool)

(assert (=> b!1132103 m!1281893))

(assert (=> b!1131927 d!319056))

(declare-fun d!319060 () Bool)

(assert (=> d!319060 (= (usesJsonRules!0 pt!21) (= (rules!9226 pt!21) (rules!109 JsonLexer!313)))))

(declare-fun bs!277843 () Bool)

(assert (= bs!277843 d!319060))

(assert (=> bs!277843 m!1281837))

(assert (=> b!1131929 d!319060))

(declare-fun d!319062 () Bool)

(declare-fun lt!380644 () Bool)

(declare-fun isEmpty!6799 (List!10993) Bool)

(assert (=> d!319062 (= lt!380644 (isEmpty!6799 (list!3977 indices!2)))))

(declare-fun isEmpty!6800 (Conc!3500) Bool)

(assert (=> d!319062 (= lt!380644 (isEmpty!6800 (c!189635 indices!2)))))

(assert (=> d!319062 (= (isEmpty!6795 indices!2) lt!380644)))

(declare-fun bs!277844 () Bool)

(assert (= bs!277844 d!319062))

(assert (=> bs!277844 m!1281831))

(assert (=> bs!277844 m!1281831))

(declare-fun m!1281895 () Bool)

(assert (=> bs!277844 m!1281895))

(declare-fun m!1281897 () Bool)

(assert (=> bs!277844 m!1281897))

(assert (=> b!1131928 d!319062))

(declare-fun d!319064 () Bool)

(declare-fun lt!380645 () Bool)

(assert (=> d!319064 (= lt!380645 (forall!2662 (list!3972 acc!225) lambda!45565))))

(assert (=> d!319064 (= lt!380645 (forall!2663 (c!189636 acc!225) lambda!45565))))

(assert (=> d!319064 (= (forall!2650 acc!225 lambda!45565) lt!380645)))

(declare-fun bs!277845 () Bool)

(assert (= bs!277845 d!319064))

(assert (=> bs!277845 m!1281473))

(assert (=> bs!277845 m!1281473))

(assert (=> bs!277845 m!1281881))

(declare-fun m!1281899 () Bool)

(assert (=> bs!277845 m!1281899))

(assert (=> b!1131930 d!319064))

(declare-fun d!319066 () Bool)

(declare-fun lt!380651 () Int)

(declare-fun size!8561 (List!10993) Int)

(assert (=> d!319066 (= lt!380651 (size!8561 (list!3977 indices!2)))))

(declare-fun size!8562 (Conc!3500) Int)

(assert (=> d!319066 (= lt!380651 (size!8562 (c!189635 indices!2)))))

(assert (=> d!319066 (= (size!8553 indices!2) lt!380651)))

(declare-fun bs!277846 () Bool)

(assert (= bs!277846 d!319066))

(assert (=> bs!277846 m!1281831))

(assert (=> bs!277846 m!1281831))

(declare-fun m!1281901 () Bool)

(assert (=> bs!277846 m!1281901))

(declare-fun m!1281903 () Bool)

(assert (=> bs!277846 m!1281903))

(assert (=> b!1131931 d!319066))

(declare-fun d!319068 () Bool)

(assert (=> d!319068 (= (size!8554 pt!21) (size!8560 (tokens!1456 pt!21)))))

(declare-fun bs!277847 () Bool)

(assert (= bs!277847 d!319068))

(assert (=> bs!277847 m!1281815))

(assert (=> start!97418 d!319068))

(declare-fun d!319072 () Bool)

(declare-fun res!508984 () Bool)

(declare-fun e!723399 () Bool)

(assert (=> d!319072 (=> (not res!508984) (not e!723399))))

(declare-fun isEmpty!6801 (List!10992) Bool)

(assert (=> d!319072 (= res!508984 (not (isEmpty!6801 (rules!9226 pt!21))))))

(assert (=> d!319072 (= (inv!14200 pt!21) e!723399)))

(declare-fun b!1132163 () Bool)

(declare-fun res!508985 () Bool)

(assert (=> b!1132163 (=> (not res!508985) (not e!723399))))

(declare-fun rulesInvariant!1471 (LexerInterface!1597 List!10992) Bool)

(assert (=> b!1132163 (= res!508985 (rulesInvariant!1471 Lexer!1595 (rules!9226 pt!21)))))

(declare-fun b!1132164 () Bool)

(declare-fun res!508986 () Bool)

(assert (=> b!1132164 (=> (not res!508986) (not e!723399))))

(assert (=> b!1132164 (= res!508986 (rulesProduceEachTokenIndividually!639 Lexer!1595 (rules!9226 pt!21) (tokens!1456 pt!21)))))

(declare-fun b!1132165 () Bool)

(assert (=> b!1132165 (= e!723399 (separableTokens!66 Lexer!1595 (tokens!1456 pt!21) (rules!9226 pt!21)))))

(assert (= (and d!319072 res!508984) b!1132163))

(assert (= (and b!1132163 res!508985) b!1132164))

(assert (= (and b!1132164 res!508986) b!1132165))

(declare-fun m!1281957 () Bool)

(assert (=> d!319072 m!1281957))

(declare-fun m!1281959 () Bool)

(assert (=> b!1132163 m!1281959))

(assert (=> b!1132164 m!1281771))

(declare-fun m!1281961 () Bool)

(assert (=> b!1132165 m!1281961))

(assert (=> start!97418 d!319072))

(declare-fun d!319084 () Bool)

(declare-fun isBalanced!972 (Conc!3500) Bool)

(assert (=> d!319084 (= (inv!14201 indices!2) (isBalanced!972 (c!189635 indices!2)))))

(declare-fun bs!277853 () Bool)

(assert (= bs!277853 d!319084))

(declare-fun m!1281963 () Bool)

(assert (=> bs!277853 m!1281963))

(assert (=> start!97418 d!319084))

(declare-fun d!319086 () Bool)

(assert (=> d!319086 (= (inv!14202 acc!225) (isBalanced!971 (c!189636 acc!225)))))

(declare-fun bs!277854 () Bool)

(assert (= bs!277854 d!319086))

(declare-fun m!1281965 () Bool)

(assert (=> bs!277854 m!1281965))

(assert (=> start!97418 d!319086))

(declare-fun d!319088 () Bool)

(declare-fun isBalanced!973 (Conc!3499) Bool)

(assert (=> d!319088 (= (inv!14198 (tokens!1456 pt!21)) (isBalanced!973 (c!189634 (tokens!1456 pt!21))))))

(declare-fun bs!277855 () Bool)

(assert (= bs!277855 d!319088))

(declare-fun m!1281967 () Bool)

(assert (=> bs!277855 m!1281967))

(assert (=> b!1131932 d!319088))

(declare-fun e!723405 () Bool)

(declare-fun b!1132174 () Bool)

(declare-fun tp!331014 () Bool)

(declare-fun tp!331012 () Bool)

(assert (=> b!1132174 (= e!723405 (and (inv!14199 (left!9524 (c!189636 acc!225))) tp!331012 (inv!14199 (right!9854 (c!189636 acc!225))) tp!331014))))

(declare-fun b!1132176 () Bool)

(declare-fun e!723404 () Bool)

(declare-fun tp!331013 () Bool)

(assert (=> b!1132176 (= e!723404 tp!331013)))

(declare-fun b!1132175 () Bool)

(declare-fun inv!14219 (IArray!7007) Bool)

(assert (=> b!1132175 (= e!723405 (and (inv!14219 (xs!6194 (c!189636 acc!225))) e!723404))))

(assert (=> b!1131934 (= tp!330972 (and (inv!14199 (c!189636 acc!225)) e!723405))))

(assert (= (and b!1131934 ((_ is Node!3501) (c!189636 acc!225))) b!1132174))

(assert (= b!1132175 b!1132176))

(assert (= (and b!1131934 ((_ is Leaf!5457) (c!189636 acc!225))) b!1132175))

(declare-fun m!1281969 () Bool)

(assert (=> b!1132174 m!1281969))

(declare-fun m!1281971 () Bool)

(assert (=> b!1132174 m!1281971))

(declare-fun m!1281973 () Bool)

(assert (=> b!1132175 m!1281973))

(assert (=> b!1131934 m!1281491))

(declare-fun tp!331022 () Bool)

(declare-fun b!1132185 () Bool)

(declare-fun tp!331021 () Bool)

(declare-fun e!723411 () Bool)

(assert (=> b!1132185 (= e!723411 (and (inv!14196 (left!9522 (c!189634 (tokens!1456 pt!21)))) tp!331021 (inv!14196 (right!9852 (c!189634 (tokens!1456 pt!21)))) tp!331022))))

(declare-fun b!1132187 () Bool)

(declare-fun e!723410 () Bool)

(declare-fun tp!331023 () Bool)

(assert (=> b!1132187 (= e!723410 tp!331023)))

(declare-fun b!1132186 () Bool)

(declare-fun inv!14220 (IArray!7003) Bool)

(assert (=> b!1132186 (= e!723411 (and (inv!14220 (xs!6192 (c!189634 (tokens!1456 pt!21)))) e!723410))))

(assert (=> b!1131924 (= tp!330971 (and (inv!14196 (c!189634 (tokens!1456 pt!21))) e!723411))))

(assert (= (and b!1131924 ((_ is Node!3499) (c!189634 (tokens!1456 pt!21)))) b!1132185))

(assert (= b!1132186 b!1132187))

(assert (= (and b!1131924 ((_ is Leaf!5455) (c!189634 (tokens!1456 pt!21)))) b!1132186))

(declare-fun m!1281975 () Bool)

(assert (=> b!1132185 m!1281975))

(declare-fun m!1281977 () Bool)

(assert (=> b!1132185 m!1281977))

(declare-fun m!1281979 () Bool)

(assert (=> b!1132186 m!1281979))

(assert (=> b!1131924 m!1281489))

(declare-fun e!723416 () Bool)

(declare-fun b!1132194 () Bool)

(declare-fun tp!331029 () Bool)

(declare-fun tp!331028 () Bool)

(assert (=> b!1132194 (= e!723416 (and (inv!14197 (left!9523 (c!189635 indices!2))) tp!331028 (inv!14197 (right!9853 (c!189635 indices!2))) tp!331029))))

(declare-fun b!1132195 () Bool)

(declare-fun inv!14221 (IArray!7005) Bool)

(assert (=> b!1132195 (= e!723416 (inv!14221 (xs!6193 (c!189635 indices!2))))))

(assert (=> b!1131927 (= tp!330969 (and (inv!14197 (c!189635 indices!2)) e!723416))))

(assert (= (and b!1131927 ((_ is Node!3500) (c!189635 indices!2))) b!1132194))

(assert (= (and b!1131927 ((_ is Leaf!5456) (c!189635 indices!2))) b!1132195))

(declare-fun m!1281981 () Bool)

(assert (=> b!1132194 m!1281981))

(declare-fun m!1281983 () Bool)

(assert (=> b!1132194 m!1281983))

(declare-fun m!1281985 () Bool)

(assert (=> b!1132195 m!1281985))

(assert (=> b!1131927 m!1281487))

(declare-fun b!1132206 () Bool)

(declare-fun b_free!27345 () Bool)

(declare-fun b_next!28049 () Bool)

(assert (=> b!1132206 (= b_free!27345 (not b_next!28049))))

(declare-fun tp!331038 () Bool)

(declare-fun b_and!79949 () Bool)

(assert (=> b!1132206 (= tp!331038 b_and!79949)))

(declare-fun b_free!27347 () Bool)

(declare-fun b_next!28051 () Bool)

(assert (=> b!1132206 (= b_free!27347 (not b_next!28051))))

(declare-fun tp!331036 () Bool)

(declare-fun b_and!79951 () Bool)

(assert (=> b!1132206 (= tp!331036 b_and!79951)))

(declare-fun e!723428 () Bool)

(assert (=> b!1132206 (= e!723428 (and tp!331038 tp!331036))))

(declare-fun b!1132205 () Bool)

(declare-fun e!723427 () Bool)

(declare-fun inv!14188 (String!13373) Bool)

(declare-fun inv!14222 (TokenValueInjection!3614) Bool)

(assert (=> b!1132205 (= e!723427 (and (inv!14188 (tag!2153 (h!16369 (rules!9226 pt!21)))) (inv!14222 (transformation!1891 (h!16369 (rules!9226 pt!21)))) e!723428))))

(declare-fun b!1132204 () Bool)

(declare-fun e!723429 () Bool)

(declare-fun tp!331037 () Bool)

(assert (=> b!1132204 (= e!723429 (and e!723427 tp!331037))))

(assert (=> b!1131932 (= tp!330970 e!723429)))

(assert (= b!1132205 b!1132206))

(assert (= b!1132204 b!1132205))

(assert (= (and b!1131932 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132204))

(declare-fun m!1281987 () Bool)

(assert (=> b!1132205 m!1281987))

(declare-fun m!1281989 () Bool)

(assert (=> b!1132205 m!1281989))

(check-sat (not b!1132165) (not b!1131945) (not b!1132076) (not b!1132048) (not d!319034) (not b!1132164) (not b!1132101) (not b_next!28049) (not b!1132049) (not b!1132052) (not b!1132046) (not b!1132082) (not b!1131924) (not b!1132094) (not b!1131934) (not b!1132043) (not d!319088) (not d!319040) (not b!1132187) (not b!1132078) b_and!79951 (not d!319060) (not b!1132195) (not b!1132053) (not b!1132055) (not d!319068) (not b!1132081) (not d!319030) (not b!1132054) (not b!1132185) (not b!1132176) (not b!1132175) (not d!319084) (not b!1132045) (not b!1132194) b_and!79949 (not b!1132051) (not b!1132047) (not b!1132204) (not d!319062) (not b!1132103) (not b!1132205) (not d!319038) (not b!1132044) (not d!319086) (not b!1132163) (not b!1132068) (not d!319054) (not b!1132050) (not d!319008) (not d!319066) (not d!319036) (not b_next!28051) (not b!1132069) (not d!319046) (not b!1132186) (not b!1132042) (not b!1132174) (not b!1131947) (not b!1131927) (not d!319072) (not d!319032) (not d!319064))
(check-sat b_and!79951 b_and!79949 (not b_next!28049) (not b_next!28051))
(get-model)

(assert (=> b!1132081 d!319066))

(declare-fun d!319092 () Bool)

(declare-fun size!8563 (List!10994) Int)

(assert (=> d!319092 (= (inv!14219 (xs!6194 (c!189636 acc!225))) (<= (size!8563 (innerList!3561 (xs!6194 (c!189636 acc!225)))) 2147483647))))

(declare-fun bs!277856 () Bool)

(assert (= bs!277856 d!319092))

(declare-fun m!1281991 () Bool)

(assert (=> bs!277856 m!1281991))

(assert (=> b!1132175 d!319092))

(declare-fun d!319094 () Bool)

(declare-fun res!508998 () Bool)

(declare-fun e!723432 () Bool)

(assert (=> d!319094 (=> (not res!508998) (not e!723432))))

(declare-fun size!8564 (Conc!3499) Int)

(assert (=> d!319094 (= res!508998 (= (csize!7228 (c!189634 (tokens!1456 pt!21))) (+ (size!8564 (left!9522 (c!189634 (tokens!1456 pt!21)))) (size!8564 (right!9852 (c!189634 (tokens!1456 pt!21)))))))))

(assert (=> d!319094 (= (inv!14215 (c!189634 (tokens!1456 pt!21))) e!723432)))

(declare-fun b!1132213 () Bool)

(declare-fun res!508999 () Bool)

(assert (=> b!1132213 (=> (not res!508999) (not e!723432))))

(assert (=> b!1132213 (= res!508999 (and (not (= (left!9522 (c!189634 (tokens!1456 pt!21))) Empty!3499)) (not (= (right!9852 (c!189634 (tokens!1456 pt!21))) Empty!3499))))))

(declare-fun b!1132214 () Bool)

(declare-fun res!509000 () Bool)

(assert (=> b!1132214 (=> (not res!509000) (not e!723432))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!454 (Conc!3499) Int)

(assert (=> b!1132214 (= res!509000 (= (cheight!3710 (c!189634 (tokens!1456 pt!21))) (+ (max!0 (height!454 (left!9522 (c!189634 (tokens!1456 pt!21)))) (height!454 (right!9852 (c!189634 (tokens!1456 pt!21))))) 1)))))

(declare-fun b!1132215 () Bool)

(assert (=> b!1132215 (= e!723432 (<= 0 (cheight!3710 (c!189634 (tokens!1456 pt!21)))))))

(assert (= (and d!319094 res!508998) b!1132213))

(assert (= (and b!1132213 res!508999) b!1132214))

(assert (= (and b!1132214 res!509000) b!1132215))

(declare-fun m!1281993 () Bool)

(assert (=> d!319094 m!1281993))

(declare-fun m!1281995 () Bool)

(assert (=> d!319094 m!1281995))

(declare-fun m!1281997 () Bool)

(assert (=> b!1132214 m!1281997))

(declare-fun m!1281999 () Bool)

(assert (=> b!1132214 m!1281999))

(assert (=> b!1132214 m!1281997))

(assert (=> b!1132214 m!1281999))

(declare-fun m!1282001 () Bool)

(assert (=> b!1132214 m!1282001))

(assert (=> b!1132076 d!319094))

(declare-fun d!319096 () Bool)

(declare-fun res!509005 () Bool)

(declare-fun e!723435 () Bool)

(assert (=> d!319096 (=> (not res!509005) (not e!723435))))

(declare-fun size!8565 (List!10991) Int)

(declare-fun list!3980 (IArray!7003) List!10991)

(assert (=> d!319096 (= res!509005 (<= (size!8565 (list!3980 (xs!6192 (c!189634 (tokens!1456 pt!21))))) 512))))

(assert (=> d!319096 (= (inv!14216 (c!189634 (tokens!1456 pt!21))) e!723435)))

(declare-fun b!1132220 () Bool)

(declare-fun res!509006 () Bool)

(assert (=> b!1132220 (=> (not res!509006) (not e!723435))))

(assert (=> b!1132220 (= res!509006 (= (csize!7229 (c!189634 (tokens!1456 pt!21))) (size!8565 (list!3980 (xs!6192 (c!189634 (tokens!1456 pt!21)))))))))

(declare-fun b!1132221 () Bool)

(assert (=> b!1132221 (= e!723435 (and (> (csize!7229 (c!189634 (tokens!1456 pt!21))) 0) (<= (csize!7229 (c!189634 (tokens!1456 pt!21))) 512)))))

(assert (= (and d!319096 res!509005) b!1132220))

(assert (= (and b!1132220 res!509006) b!1132221))

(declare-fun m!1282003 () Bool)

(assert (=> d!319096 m!1282003))

(assert (=> d!319096 m!1282003))

(declare-fun m!1282005 () Bool)

(assert (=> d!319096 m!1282005))

(assert (=> b!1132220 m!1282003))

(assert (=> b!1132220 m!1282003))

(assert (=> b!1132220 m!1282005))

(assert (=> b!1132078 d!319096))

(declare-fun bs!277863 () Bool)

(declare-fun d!319098 () Bool)

(assert (= bs!277863 (and d!319098 d!319008)))

(declare-fun lambda!45600 () Int)

(assert (=> bs!277863 (= lambda!45600 lambda!45591)))

(declare-fun b!1132315 () Bool)

(declare-fun e!723500 () Bool)

(assert (=> b!1132315 (= e!723500 true)))

(declare-fun b!1132314 () Bool)

(declare-fun e!723499 () Bool)

(assert (=> b!1132314 (= e!723499 e!723500)))

(declare-fun b!1132313 () Bool)

(declare-fun e!723498 () Bool)

(assert (=> b!1132313 (= e!723498 e!723499)))

(assert (=> d!319098 e!723498))

(assert (= b!1132314 b!1132315))

(assert (= b!1132313 b!1132314))

(assert (= (and d!319098 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132313))

(declare-fun order!6707 () Int)

(declare-fun order!6705 () Int)

(declare-fun dynLambda!4835 (Int Int) Int)

(declare-fun dynLambda!4836 (Int Int) Int)

(assert (=> b!1132315 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45600))))

(declare-fun order!6709 () Int)

(declare-fun dynLambda!4837 (Int Int) Int)

(assert (=> b!1132315 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45600))))

(assert (=> d!319098 true))

(declare-fun e!723491 () Bool)

(assert (=> d!319098 e!723491))

(declare-fun res!509057 () Bool)

(assert (=> d!319098 (=> (not res!509057) (not e!723491))))

(declare-fun lt!380677 () Bool)

(assert (=> d!319098 (= res!509057 (= lt!380677 (forall!2658 (list!3976 (tokens!1456 pt!21)) lambda!45600)))))

(assert (=> d!319098 (= lt!380677 (forall!2659 (tokens!1456 pt!21) lambda!45600))))

(assert (=> d!319098 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319098 (= (rulesProduceEachTokenIndividually!639 Lexer!1595 (rules!9226 pt!21) (tokens!1456 pt!21)) lt!380677)))

(declare-fun b!1132304 () Bool)

(assert (=> b!1132304 (= e!723491 (= lt!380677 (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) (list!3976 (tokens!1456 pt!21)))))))

(assert (= (and d!319098 res!509057) b!1132304))

(assert (=> d!319098 m!1281739))

(assert (=> d!319098 m!1281739))

(declare-fun m!1282079 () Bool)

(assert (=> d!319098 m!1282079))

(declare-fun m!1282081 () Bool)

(assert (=> d!319098 m!1282081))

(assert (=> d!319098 m!1281957))

(assert (=> b!1132304 m!1281739))

(assert (=> b!1132304 m!1281739))

(assert (=> b!1132304 m!1281767))

(assert (=> b!1132164 d!319098))

(declare-fun b!1132332 () Bool)

(declare-fun e!723510 () List!10991)

(assert (=> b!1132332 (= e!723510 (Cons!10967 (h!16368 lt!380595) (take!17 (t!106951 lt!380595) (- lt!380599 1))))))

(declare-fun d!319126 () Bool)

(declare-fun e!723511 () Bool)

(assert (=> d!319126 e!723511))

(declare-fun res!509060 () Bool)

(assert (=> d!319126 (=> (not res!509060) (not e!723511))))

(declare-fun lt!380680 () List!10991)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1574 (List!10991) (InoxSet Token!3444))

(assert (=> d!319126 (= res!509060 (= ((_ map implies) (content!1574 lt!380680) (content!1574 lt!380595)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319126 (= lt!380680 e!723510)))

(declare-fun c!189672 () Bool)

(assert (=> d!319126 (= c!189672 (or ((_ is Nil!10967) lt!380595) (<= lt!380599 0)))))

(assert (=> d!319126 (= (take!17 lt!380595 lt!380599) lt!380680)))

(declare-fun b!1132333 () Bool)

(declare-fun e!723512 () Int)

(declare-fun e!723509 () Int)

(assert (=> b!1132333 (= e!723512 e!723509)))

(declare-fun c!189671 () Bool)

(assert (=> b!1132333 (= c!189671 (>= lt!380599 (size!8565 lt!380595)))))

(declare-fun b!1132334 () Bool)

(assert (=> b!1132334 (= e!723511 (= (size!8565 lt!380680) e!723512))))

(declare-fun c!189673 () Bool)

(assert (=> b!1132334 (= c!189673 (<= lt!380599 0))))

(declare-fun b!1132335 () Bool)

(assert (=> b!1132335 (= e!723509 (size!8565 lt!380595))))

(declare-fun b!1132336 () Bool)

(assert (=> b!1132336 (= e!723512 0)))

(declare-fun b!1132337 () Bool)

(assert (=> b!1132337 (= e!723510 Nil!10967)))

(declare-fun b!1132338 () Bool)

(assert (=> b!1132338 (= e!723509 lt!380599)))

(assert (= (and d!319126 c!189672) b!1132337))

(assert (= (and d!319126 (not c!189672)) b!1132332))

(assert (= (and d!319126 res!509060) b!1132334))

(assert (= (and b!1132334 c!189673) b!1132336))

(assert (= (and b!1132334 (not c!189673)) b!1132333))

(assert (= (and b!1132333 c!189671) b!1132335))

(assert (= (and b!1132333 (not c!189671)) b!1132338))

(declare-fun m!1282083 () Bool)

(assert (=> b!1132334 m!1282083))

(declare-fun m!1282085 () Bool)

(assert (=> d!319126 m!1282085))

(declare-fun m!1282087 () Bool)

(assert (=> d!319126 m!1282087))

(declare-fun m!1282089 () Bool)

(assert (=> b!1132333 m!1282089))

(assert (=> b!1132335 m!1282089))

(declare-fun m!1282091 () Bool)

(assert (=> b!1132332 m!1282091))

(assert (=> d!319008 d!319126))

(declare-fun d!319128 () Bool)

(assert (=> d!319128 (subseq!174 (slice!70 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lt!380609)))

(declare-fun lt!380683 () Unit!16686)

(declare-fun choose!7247 (List!10991 Int Int) Unit!16686)

(assert (=> d!319128 (= lt!380683 (choose!7247 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))))))

(declare-fun e!723515 () Bool)

(assert (=> d!319128 e!723515))

(declare-fun res!509063 () Bool)

(assert (=> d!319128 (=> (not res!509063) (not e!723515))))

(assert (=> d!319128 (= res!509063 (and (>= (ite c!189631 lt!380179 lt!380178) 0) (>= (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)) (ite c!189631 lt!380179 lt!380178))))))

(assert (=> d!319128 (= (lemmaSliceSubseq!15 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lt!380683)))

(declare-fun b!1132341 () Bool)

(assert (=> b!1132341 (= e!723515 (<= (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)) (size!8565 lt!380609)))))

(assert (= (and d!319128 res!509063) b!1132341))

(assert (=> d!319128 m!1281773))

(assert (=> d!319128 m!1281773))

(assert (=> d!319128 m!1281775))

(declare-fun m!1282093 () Bool)

(assert (=> d!319128 m!1282093))

(declare-fun m!1282095 () Bool)

(assert (=> b!1132341 m!1282095))

(assert (=> d!319008 d!319128))

(declare-fun d!319130 () Bool)

(assert (=> d!319130 (= (separableTokens!66 Lexer!1595 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (rules!9226 pt!21)) (tokensListTwoByTwoPredicateSeparable!26 Lexer!1595 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) 0 (rules!9226 pt!21)))))

(declare-fun bs!277864 () Bool)

(assert (= bs!277864 d!319130))

(assert (=> bs!277864 m!1281699))

(assert (=> bs!277864 m!1281805))

(assert (=> d!319008 d!319130))

(declare-fun bs!277865 () Bool)

(declare-fun d!319134 () Bool)

(assert (= bs!277865 (and d!319134 d!319008)))

(declare-fun lambda!45603 () Int)

(assert (=> bs!277865 (= lambda!45603 lambda!45591)))

(declare-fun bs!277866 () Bool)

(assert (= bs!277866 (and d!319134 d!319098)))

(assert (=> bs!277866 (= lambda!45603 lambda!45600)))

(declare-fun b!1132407 () Bool)

(declare-fun e!723553 () Bool)

(assert (=> b!1132407 (= e!723553 true)))

(declare-fun b!1132406 () Bool)

(declare-fun e!723552 () Bool)

(assert (=> b!1132406 (= e!723552 e!723553)))

(declare-fun b!1132405 () Bool)

(declare-fun e!723551 () Bool)

(assert (=> b!1132405 (= e!723551 e!723552)))

(assert (=> d!319134 e!723551))

(assert (= b!1132406 b!1132407))

(assert (= b!1132405 b!1132406))

(assert (= (and d!319134 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132405))

(assert (=> b!1132407 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45603))))

(assert (=> b!1132407 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45603))))

(assert (=> d!319134 true))

(declare-fun lt!380748 () Bool)

(assert (=> d!319134 (= lt!380748 (forall!2658 (list!3976 (tokens!1456 pt!21)) lambda!45603))))

(declare-fun e!723549 () Bool)

(assert (=> d!319134 (= lt!380748 e!723549)))

(declare-fun res!509096 () Bool)

(assert (=> d!319134 (=> res!509096 e!723549)))

(assert (=> d!319134 (= res!509096 (not ((_ is Cons!10967) (list!3976 (tokens!1456 pt!21)))))))

(assert (=> d!319134 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319134 (= (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) (list!3976 (tokens!1456 pt!21))) lt!380748)))

(declare-fun b!1132403 () Bool)

(declare-fun e!723550 () Bool)

(assert (=> b!1132403 (= e!723549 e!723550)))

(declare-fun res!509095 () Bool)

(assert (=> b!1132403 (=> (not res!509095) (not e!723550))))

(assert (=> b!1132403 (= res!509095 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (h!16368 (list!3976 (tokens!1456 pt!21)))))))

(declare-fun b!1132404 () Bool)

(assert (=> b!1132404 (= e!723550 (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) (t!106951 (list!3976 (tokens!1456 pt!21)))))))

(assert (= (and d!319134 (not res!509096)) b!1132403))

(assert (= (and b!1132403 res!509095) b!1132404))

(assert (=> d!319134 m!1281739))

(declare-fun m!1282189 () Bool)

(assert (=> d!319134 m!1282189))

(assert (=> d!319134 m!1281957))

(declare-fun m!1282191 () Bool)

(assert (=> b!1132403 m!1282191))

(declare-fun m!1282193 () Bool)

(assert (=> b!1132404 m!1282193))

(assert (=> d!319008 d!319134))

(declare-fun b!1132426 () Bool)

(declare-fun e!723565 () List!10991)

(assert (=> b!1132426 (= e!723565 Nil!10967)))

(declare-fun b!1132427 () Bool)

(declare-fun e!723567 () List!10991)

(assert (=> b!1132427 (= e!723567 (drop!419 (t!106951 (list!3976 (tokens!1456 pt!21))) (- (ite c!189631 lt!380179 lt!380178) 1)))))

(declare-fun b!1132428 () Bool)

(declare-fun e!723566 () Int)

(assert (=> b!1132428 (= e!723566 0)))

(declare-fun b!1132429 () Bool)

(declare-fun e!723568 () Int)

(declare-fun call!80703 () Int)

(assert (=> b!1132429 (= e!723568 call!80703)))

(declare-fun b!1132430 () Bool)

(assert (=> b!1132430 (= e!723566 (- call!80703 (ite c!189631 lt!380179 lt!380178)))))

(declare-fun d!319142 () Bool)

(declare-fun e!723564 () Bool)

(assert (=> d!319142 e!723564))

(declare-fun res!509099 () Bool)

(assert (=> d!319142 (=> (not res!509099) (not e!723564))))

(declare-fun lt!380751 () List!10991)

(assert (=> d!319142 (= res!509099 (= ((_ map implies) (content!1574 lt!380751) (content!1574 (list!3976 (tokens!1456 pt!21)))) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319142 (= lt!380751 e!723565)))

(declare-fun c!189699 () Bool)

(assert (=> d!319142 (= c!189699 ((_ is Nil!10967) (list!3976 (tokens!1456 pt!21))))))

(assert (=> d!319142 (= (drop!419 (list!3976 (tokens!1456 pt!21)) (ite c!189631 lt!380179 lt!380178)) lt!380751)))

(declare-fun b!1132431 () Bool)

(assert (=> b!1132431 (= e!723567 (list!3976 (tokens!1456 pt!21)))))

(declare-fun bm!80698 () Bool)

(assert (=> bm!80698 (= call!80703 (size!8565 (list!3976 (tokens!1456 pt!21))))))

(declare-fun b!1132432 () Bool)

(assert (=> b!1132432 (= e!723564 (= (size!8565 lt!380751) e!723568))))

(declare-fun c!189698 () Bool)

(assert (=> b!1132432 (= c!189698 (<= (ite c!189631 lt!380179 lt!380178) 0))))

(declare-fun b!1132433 () Bool)

(assert (=> b!1132433 (= e!723568 e!723566)))

(declare-fun c!189700 () Bool)

(assert (=> b!1132433 (= c!189700 (>= (ite c!189631 lt!380179 lt!380178) call!80703))))

(declare-fun b!1132434 () Bool)

(assert (=> b!1132434 (= e!723565 e!723567)))

(declare-fun c!189697 () Bool)

(assert (=> b!1132434 (= c!189697 (<= (ite c!189631 lt!380179 lt!380178) 0))))

(assert (= (and d!319142 c!189699) b!1132426))

(assert (= (and d!319142 (not c!189699)) b!1132434))

(assert (= (and b!1132434 c!189697) b!1132431))

(assert (= (and b!1132434 (not c!189697)) b!1132427))

(assert (= (and d!319142 res!509099) b!1132432))

(assert (= (and b!1132432 c!189698) b!1132429))

(assert (= (and b!1132432 (not c!189698)) b!1132433))

(assert (= (and b!1132433 c!189700) b!1132428))

(assert (= (and b!1132433 (not c!189700)) b!1132430))

(assert (= (or b!1132429 b!1132433 b!1132430) bm!80698))

(declare-fun m!1282195 () Bool)

(assert (=> b!1132427 m!1282195))

(declare-fun m!1282197 () Bool)

(assert (=> d!319142 m!1282197))

(assert (=> d!319142 m!1281739))

(declare-fun m!1282199 () Bool)

(assert (=> d!319142 m!1282199))

(assert (=> bm!80698 m!1281739))

(declare-fun m!1282201 () Bool)

(assert (=> bm!80698 m!1282201))

(declare-fun m!1282203 () Bool)

(assert (=> b!1132432 m!1282203))

(assert (=> d!319008 d!319142))

(declare-fun bs!277867 () Bool)

(declare-fun b!1132472 () Bool)

(assert (= bs!277867 (and b!1132472 d!319008)))

(declare-fun lambda!45606 () Int)

(assert (=> bs!277867 (= lambda!45606 lambda!45591)))

(declare-fun bs!277868 () Bool)

(assert (= bs!277868 (and b!1132472 d!319098)))

(assert (=> bs!277868 (= lambda!45606 lambda!45600)))

(declare-fun bs!277869 () Bool)

(assert (= bs!277869 (and b!1132472 d!319134)))

(assert (=> bs!277869 (= lambda!45606 lambda!45603)))

(declare-fun b!1132476 () Bool)

(declare-fun e!723601 () Bool)

(assert (=> b!1132476 (= e!723601 true)))

(declare-fun b!1132475 () Bool)

(declare-fun e!723600 () Bool)

(assert (=> b!1132475 (= e!723600 e!723601)))

(declare-fun b!1132474 () Bool)

(declare-fun e!723599 () Bool)

(assert (=> b!1132474 (= e!723599 e!723600)))

(assert (=> b!1132472 e!723599))

(assert (= b!1132475 b!1132476))

(assert (= b!1132474 b!1132475))

(assert (= (and b!1132472 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132474))

(assert (=> b!1132476 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45606))))

(assert (=> b!1132476 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45606))))

(declare-fun lt!380862 () List!10991)

(declare-fun b!1132471 () Bool)

(declare-fun e!723597 () Bool)

(assert (=> b!1132471 (= e!723597 (rulesProduceEachTokenIndividuallyList!472 lt!380563 (rules!9226 pt!21) (t!106951 lt!380862)))))

(declare-fun b!1132470 () Bool)

(declare-fun e!723598 () Bool)

(assert (=> b!1132470 (= e!723598 e!723597)))

(declare-fun res!509136 () Bool)

(assert (=> b!1132470 (=> (not res!509136) (not e!723597))))

(assert (=> b!1132470 (= res!509136 (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 lt!380862)))))

(declare-fun e!723596 () Bool)

(assert (=> b!1132472 (= e!723596 (tokensListTwoByTwoPredicateSeparableList!71 lt!380563 (take!17 lt!380595 lt!380599) (rules!9226 pt!21)))))

(declare-fun lt!380863 () Unit!16686)

(declare-fun lt!380865 () Unit!16686)

(assert (=> b!1132472 (= lt!380863 lt!380865)))

(declare-fun lt!380861 () List!10991)

(assert (=> b!1132472 (forall!2658 lt!380861 lambda!45606)))

(assert (=> b!1132472 (= lt!380865 (lemmaForallSubseq!74 lt!380861 lt!380595 lambda!45606))))

(declare-fun e!723595 () Bool)

(assert (=> b!1132472 e!723595))

(declare-fun res!509138 () Bool)

(assert (=> b!1132472 (=> (not res!509138) (not e!723595))))

(assert (=> b!1132472 (= res!509138 (forall!2658 lt!380595 lambda!45606))))

(assert (=> b!1132472 (= lt!380861 (take!17 lt!380595 lt!380599))))

(declare-fun b!1132473 () Bool)

(assert (=> b!1132473 (= e!723595 (subseq!174 lt!380861 lt!380595))))

(declare-fun d!319144 () Bool)

(assert (=> d!319144 e!723596))

(declare-fun res!509137 () Bool)

(assert (=> d!319144 (=> (not res!509137) (not e!723596))))

(assert (=> d!319144 (= res!509137 (= (rulesProduceEachTokenIndividuallyList!472 lt!380563 (rules!9226 pt!21) (take!17 lt!380595 lt!380599)) e!723598))))

(declare-fun res!509135 () Bool)

(assert (=> d!319144 (=> res!509135 e!723598)))

(assert (=> d!319144 (= res!509135 (not ((_ is Cons!10967) lt!380862)))))

(assert (=> d!319144 (= lt!380862 (take!17 lt!380595 lt!380599))))

(declare-fun lt!380864 () Unit!16686)

(declare-fun choose!7248 (LexerInterface!1597 List!10991 Int List!10992) Unit!16686)

(assert (=> d!319144 (= lt!380864 (choose!7248 lt!380563 lt!380595 lt!380599 (rules!9226 pt!21)))))

(assert (=> d!319144 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319144 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!15 lt!380563 lt!380595 lt!380599 (rules!9226 pt!21)) lt!380864)))

(assert (= (and d!319144 (not res!509135)) b!1132470))

(assert (= (and b!1132470 res!509136) b!1132471))

(assert (= (and d!319144 res!509137) b!1132472))

(assert (= (and b!1132472 res!509138) b!1132473))

(declare-fun m!1282283 () Bool)

(assert (=> b!1132470 m!1282283))

(declare-fun m!1282285 () Bool)

(assert (=> b!1132471 m!1282285))

(assert (=> b!1132472 m!1281793))

(declare-fun m!1282287 () Bool)

(assert (=> b!1132472 m!1282287))

(assert (=> b!1132472 m!1281793))

(assert (=> b!1132472 m!1281817))

(declare-fun m!1282289 () Bool)

(assert (=> b!1132472 m!1282289))

(declare-fun m!1282291 () Bool)

(assert (=> b!1132472 m!1282291))

(declare-fun m!1282293 () Bool)

(assert (=> b!1132473 m!1282293))

(assert (=> d!319144 m!1281793))

(assert (=> d!319144 m!1281793))

(assert (=> d!319144 m!1281809))

(declare-fun m!1282295 () Bool)

(assert (=> d!319144 m!1282295))

(assert (=> d!319144 m!1281957))

(assert (=> d!319008 d!319144))

(declare-fun bs!277870 () Bool)

(declare-fun d!319150 () Bool)

(assert (= bs!277870 (and d!319150 d!319008)))

(declare-fun lambda!45607 () Int)

(assert (=> bs!277870 (= (= lt!380592 Lexer!1595) (= lambda!45607 lambda!45591))))

(declare-fun bs!277871 () Bool)

(assert (= bs!277871 (and d!319150 d!319098)))

(assert (=> bs!277871 (= (= lt!380592 Lexer!1595) (= lambda!45607 lambda!45600))))

(declare-fun bs!277872 () Bool)

(assert (= bs!277872 (and d!319150 d!319134)))

(assert (=> bs!277872 (= (= lt!380592 Lexer!1595) (= lambda!45607 lambda!45603))))

(declare-fun bs!277873 () Bool)

(assert (= bs!277873 (and d!319150 b!1132472)))

(assert (=> bs!277873 (= (= lt!380592 Lexer!1595) (= lambda!45607 lambda!45606))))

(declare-fun b!1132481 () Bool)

(declare-fun e!723606 () Bool)

(assert (=> b!1132481 (= e!723606 true)))

(declare-fun b!1132480 () Bool)

(declare-fun e!723605 () Bool)

(assert (=> b!1132480 (= e!723605 e!723606)))

(declare-fun b!1132479 () Bool)

(declare-fun e!723604 () Bool)

(assert (=> b!1132479 (= e!723604 e!723605)))

(assert (=> d!319150 e!723604))

(assert (= b!1132480 b!1132481))

(assert (= b!1132479 b!1132480))

(assert (= (and d!319150 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132479))

(assert (=> b!1132481 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45607))))

(assert (=> b!1132481 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45607))))

(assert (=> d!319150 true))

(declare-fun lt!380866 () Bool)

(assert (=> d!319150 (= lt!380866 (forall!2658 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) lambda!45607))))

(declare-fun e!723602 () Bool)

(assert (=> d!319150 (= lt!380866 e!723602)))

(declare-fun res!509140 () Bool)

(assert (=> d!319150 (=> res!509140 e!723602)))

(assert (=> d!319150 (= res!509140 (not ((_ is Cons!10967) (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))))

(assert (=> d!319150 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319150 (= (rulesProduceEachTokenIndividuallyList!472 lt!380592 (rules!9226 pt!21) (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))) lt!380866)))

(declare-fun b!1132477 () Bool)

(declare-fun e!723603 () Bool)

(assert (=> b!1132477 (= e!723602 e!723603)))

(declare-fun res!509139 () Bool)

(assert (=> b!1132477 (=> (not res!509139) (not e!723603))))

(assert (=> b!1132477 (= res!509139 (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))))

(declare-fun b!1132478 () Bool)

(assert (=> b!1132478 (= e!723603 (rulesProduceEachTokenIndividuallyList!472 lt!380592 (rules!9226 pt!21) (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))))

(assert (= (and d!319150 (not res!509140)) b!1132477))

(assert (= (and b!1132477 res!509139) b!1132478))

(assert (=> d!319150 m!1281681))

(declare-fun m!1282297 () Bool)

(assert (=> d!319150 m!1282297))

(assert (=> d!319150 m!1281957))

(declare-fun m!1282299 () Bool)

(assert (=> b!1132477 m!1282299))

(declare-fun m!1282301 () Bool)

(assert (=> b!1132478 m!1282301))

(assert (=> d!319008 d!319150))

(declare-fun bs!277874 () Bool)

(declare-fun d!319152 () Bool)

(assert (= bs!277874 (and d!319152 d!319150)))

(declare-fun lambda!45608 () Int)

(assert (=> bs!277874 (= (= Lexer!1595 lt!380592) (= lambda!45608 lambda!45607))))

(declare-fun bs!277875 () Bool)

(assert (= bs!277875 (and d!319152 d!319134)))

(assert (=> bs!277875 (= lambda!45608 lambda!45603)))

(declare-fun bs!277876 () Bool)

(assert (= bs!277876 (and d!319152 b!1132472)))

(assert (=> bs!277876 (= lambda!45608 lambda!45606)))

(declare-fun bs!277877 () Bool)

(assert (= bs!277877 (and d!319152 d!319008)))

(assert (=> bs!277877 (= lambda!45608 lambda!45591)))

(declare-fun bs!277878 () Bool)

(assert (= bs!277878 (and d!319152 d!319098)))

(assert (=> bs!277878 (= lambda!45608 lambda!45600)))

(declare-fun b!1132485 () Bool)

(declare-fun e!723610 () Bool)

(assert (=> b!1132485 (= e!723610 true)))

(declare-fun b!1132484 () Bool)

(declare-fun e!723609 () Bool)

(assert (=> b!1132484 (= e!723609 e!723610)))

(declare-fun b!1132483 () Bool)

(declare-fun e!723608 () Bool)

(assert (=> b!1132483 (= e!723608 e!723609)))

(assert (=> d!319152 e!723608))

(assert (= b!1132484 b!1132485))

(assert (= b!1132483 b!1132484))

(assert (= (and d!319152 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132483))

(assert (=> b!1132485 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45608))))

(assert (=> b!1132485 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45608))))

(assert (=> d!319152 true))

(declare-fun e!723607 () Bool)

(assert (=> d!319152 e!723607))

(declare-fun res!509141 () Bool)

(assert (=> d!319152 (=> (not res!509141) (not e!723607))))

(declare-fun lt!380867 () Bool)

(assert (=> d!319152 (= res!509141 (= lt!380867 (forall!2658 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) lambda!45608)))))

(assert (=> d!319152 (= lt!380867 (forall!2659 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lambda!45608))))

(assert (=> d!319152 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319152 (= (rulesProduceEachTokenIndividually!639 Lexer!1595 (rules!9226 pt!21) (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) lt!380867)))

(declare-fun b!1132482 () Bool)

(assert (=> b!1132482 (= e!723607 (= lt!380867 (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))))

(assert (= (and d!319152 res!509141) b!1132482))

(assert (=> d!319152 m!1281699))

(assert (=> d!319152 m!1281701))

(assert (=> d!319152 m!1281701))

(declare-fun m!1282303 () Bool)

(assert (=> d!319152 m!1282303))

(assert (=> d!319152 m!1281699))

(declare-fun m!1282305 () Bool)

(assert (=> d!319152 m!1282305))

(assert (=> d!319152 m!1281957))

(assert (=> b!1132482 m!1281699))

(assert (=> b!1132482 m!1281701))

(assert (=> b!1132482 m!1281701))

(assert (=> b!1132482 m!1281787))

(assert (=> d!319008 d!319152))

(declare-fun d!319154 () Bool)

(declare-fun res!509146 () Bool)

(declare-fun e!723615 () Bool)

(assert (=> d!319154 (=> res!509146 e!723615)))

(assert (=> d!319154 (= res!509146 ((_ is Nil!10967) lt!380602))))

(assert (=> d!319154 (= (forall!2658 lt!380602 lambda!45591) e!723615)))

(declare-fun b!1132490 () Bool)

(declare-fun e!723616 () Bool)

(assert (=> b!1132490 (= e!723615 e!723616)))

(declare-fun res!509147 () Bool)

(assert (=> b!1132490 (=> (not res!509147) (not e!723616))))

(declare-fun dynLambda!4838 (Int Token!3444) Bool)

(assert (=> b!1132490 (= res!509147 (dynLambda!4838 lambda!45591 (h!16368 lt!380602)))))

(declare-fun b!1132491 () Bool)

(assert (=> b!1132491 (= e!723616 (forall!2658 (t!106951 lt!380602) lambda!45591))))

(assert (= (and d!319154 (not res!509146)) b!1132490))

(assert (= (and b!1132490 res!509147) b!1132491))

(declare-fun b_lambda!33299 () Bool)

(assert (=> (not b_lambda!33299) (not b!1132490)))

(declare-fun m!1282307 () Bool)

(assert (=> b!1132490 m!1282307))

(declare-fun m!1282309 () Bool)

(assert (=> b!1132491 m!1282309))

(assert (=> d!319008 d!319154))

(declare-fun b!1132492 () Bool)

(declare-fun e!723618 () List!10991)

(assert (=> b!1132492 (= e!723618 Nil!10967)))

(declare-fun e!723620 () List!10991)

(declare-fun b!1132493 () Bool)

(assert (=> b!1132493 (= e!723620 (drop!419 (t!106951 lt!380591) (- (ite c!189631 lt!380179 lt!380178) 1)))))

(declare-fun b!1132494 () Bool)

(declare-fun e!723619 () Int)

(assert (=> b!1132494 (= e!723619 0)))

(declare-fun b!1132495 () Bool)

(declare-fun e!723621 () Int)

(declare-fun call!80704 () Int)

(assert (=> b!1132495 (= e!723621 call!80704)))

(declare-fun b!1132496 () Bool)

(assert (=> b!1132496 (= e!723619 (- call!80704 (ite c!189631 lt!380179 lt!380178)))))

(declare-fun d!319156 () Bool)

(declare-fun e!723617 () Bool)

(assert (=> d!319156 e!723617))

(declare-fun res!509148 () Bool)

(assert (=> d!319156 (=> (not res!509148) (not e!723617))))

(declare-fun lt!380868 () List!10991)

(assert (=> d!319156 (= res!509148 (= ((_ map implies) (content!1574 lt!380868) (content!1574 lt!380591)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319156 (= lt!380868 e!723618)))

(declare-fun c!189703 () Bool)

(assert (=> d!319156 (= c!189703 ((_ is Nil!10967) lt!380591))))

(assert (=> d!319156 (= (drop!419 lt!380591 (ite c!189631 lt!380179 lt!380178)) lt!380868)))

(declare-fun b!1132497 () Bool)

(assert (=> b!1132497 (= e!723620 lt!380591)))

(declare-fun bm!80699 () Bool)

(assert (=> bm!80699 (= call!80704 (size!8565 lt!380591))))

(declare-fun b!1132498 () Bool)

(assert (=> b!1132498 (= e!723617 (= (size!8565 lt!380868) e!723621))))

(declare-fun c!189702 () Bool)

(assert (=> b!1132498 (= c!189702 (<= (ite c!189631 lt!380179 lt!380178) 0))))

(declare-fun b!1132499 () Bool)

(assert (=> b!1132499 (= e!723621 e!723619)))

(declare-fun c!189704 () Bool)

(assert (=> b!1132499 (= c!189704 (>= (ite c!189631 lt!380179 lt!380178) call!80704))))

(declare-fun b!1132500 () Bool)

(assert (=> b!1132500 (= e!723618 e!723620)))

(declare-fun c!189701 () Bool)

(assert (=> b!1132500 (= c!189701 (<= (ite c!189631 lt!380179 lt!380178) 0))))

(assert (= (and d!319156 c!189703) b!1132492))

(assert (= (and d!319156 (not c!189703)) b!1132500))

(assert (= (and b!1132500 c!189701) b!1132497))

(assert (= (and b!1132500 (not c!189701)) b!1132493))

(assert (= (and d!319156 res!509148) b!1132498))

(assert (= (and b!1132498 c!189702) b!1132495))

(assert (= (and b!1132498 (not c!189702)) b!1132499))

(assert (= (and b!1132499 c!189704) b!1132494))

(assert (= (and b!1132499 (not c!189704)) b!1132496))

(assert (= (or b!1132495 b!1132499 b!1132496) bm!80699))

(declare-fun m!1282311 () Bool)

(assert (=> b!1132493 m!1282311))

(declare-fun m!1282313 () Bool)

(assert (=> d!319156 m!1282313))

(declare-fun m!1282315 () Bool)

(assert (=> d!319156 m!1282315))

(declare-fun m!1282317 () Bool)

(assert (=> bm!80699 m!1282317))

(declare-fun m!1282319 () Bool)

(assert (=> b!1132498 m!1282319))

(assert (=> d!319008 d!319156))

(assert (=> d!319008 d!319098))

(declare-fun bs!277879 () Bool)

(declare-fun d!319158 () Bool)

(assert (= bs!277879 (and d!319158 d!319150)))

(declare-fun lambda!45609 () Int)

(assert (=> bs!277879 (= (= Lexer!1595 lt!380592) (= lambda!45609 lambda!45607))))

(declare-fun bs!277880 () Bool)

(assert (= bs!277880 (and d!319158 d!319134)))

(assert (=> bs!277880 (= lambda!45609 lambda!45603)))

(declare-fun bs!277881 () Bool)

(assert (= bs!277881 (and d!319158 b!1132472)))

(assert (=> bs!277881 (= lambda!45609 lambda!45606)))

(declare-fun bs!277882 () Bool)

(assert (= bs!277882 (and d!319158 d!319152)))

(assert (=> bs!277882 (= lambda!45609 lambda!45608)))

(declare-fun bs!277883 () Bool)

(assert (= bs!277883 (and d!319158 d!319008)))

(assert (=> bs!277883 (= lambda!45609 lambda!45591)))

(declare-fun bs!277884 () Bool)

(assert (= bs!277884 (and d!319158 d!319098)))

(assert (=> bs!277884 (= lambda!45609 lambda!45600)))

(declare-fun b!1132505 () Bool)

(declare-fun e!723626 () Bool)

(assert (=> b!1132505 (= e!723626 true)))

(declare-fun b!1132504 () Bool)

(declare-fun e!723625 () Bool)

(assert (=> b!1132504 (= e!723625 e!723626)))

(declare-fun b!1132503 () Bool)

(declare-fun e!723624 () Bool)

(assert (=> b!1132503 (= e!723624 e!723625)))

(assert (=> d!319158 e!723624))

(assert (= b!1132504 b!1132505))

(assert (= b!1132503 b!1132504))

(assert (= (and d!319158 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132503))

(assert (=> b!1132505 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45609))))

(assert (=> b!1132505 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45609))))

(assert (=> d!319158 true))

(declare-fun lt!380869 () Bool)

(assert (=> d!319158 (= lt!380869 (forall!2658 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) lambda!45609))))

(declare-fun e!723622 () Bool)

(assert (=> d!319158 (= lt!380869 e!723622)))

(declare-fun res!509150 () Bool)

(assert (=> d!319158 (=> res!509150 e!723622)))

(assert (=> d!319158 (= res!509150 (not ((_ is Cons!10967) (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))))

(assert (=> d!319158 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319158 (= (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))))) lt!380869)))

(declare-fun b!1132501 () Bool)

(declare-fun e!723623 () Bool)

(assert (=> b!1132501 (= e!723622 e!723623)))

(declare-fun res!509149 () Bool)

(assert (=> b!1132501 (=> (not res!509149) (not e!723623))))

(assert (=> b!1132501 (= res!509149 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (h!16368 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))))

(declare-fun b!1132502 () Bool)

(assert (=> b!1132502 (= e!723623 (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) (t!106951 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))))

(assert (= (and d!319158 (not res!509150)) b!1132501))

(assert (= (and b!1132501 res!509149) b!1132502))

(assert (=> d!319158 m!1281701))

(declare-fun m!1282321 () Bool)

(assert (=> d!319158 m!1282321))

(assert (=> d!319158 m!1281957))

(declare-fun m!1282323 () Bool)

(assert (=> b!1132501 m!1282323))

(declare-fun m!1282325 () Bool)

(assert (=> b!1132502 m!1282325))

(assert (=> d!319008 d!319158))

(declare-fun d!319160 () Bool)

(declare-fun e!723632 () Bool)

(assert (=> d!319160 e!723632))

(declare-fun res!509158 () Bool)

(assert (=> d!319160 (=> (not res!509158) (not e!723632))))

(declare-fun slice!71 (Conc!3499 Int Int) Conc!3499)

(assert (=> d!319160 (= res!509158 (isBalanced!973 (slice!71 (c!189634 (tokens!1456 pt!21)) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!380872 () BalanceConc!7020)

(assert (=> d!319160 (= lt!380872 (BalanceConc!7021 (slice!71 (c!189634 (tokens!1456 pt!21)) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun e!723631 () Bool)

(assert (=> d!319160 e!723631))

(declare-fun res!509157 () Bool)

(assert (=> d!319160 (=> (not res!509157) (not e!723631))))

(assert (=> d!319160 (= res!509157 (and (<= 0 (ite c!189631 lt!380179 lt!380178)) (<= (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(assert (=> d!319160 (= (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lt!380872)))

(declare-fun b!1132512 () Bool)

(declare-fun res!509159 () Bool)

(assert (=> b!1132512 (=> (not res!509159) (not e!723631))))

(assert (=> b!1132512 (= res!509159 (<= (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)) (size!8560 (tokens!1456 pt!21))))))

(declare-fun b!1132513 () Bool)

(assert (=> b!1132513 (= e!723631 (isBalanced!973 (c!189634 (tokens!1456 pt!21))))))

(declare-fun b!1132514 () Bool)

(assert (=> b!1132514 (= e!723632 (= (list!3976 lt!380872) (slice!70 (list!3976 (tokens!1456 pt!21)) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(assert (= (and d!319160 res!509157) b!1132512))

(assert (= (and b!1132512 res!509159) b!1132513))

(assert (= (and d!319160 res!509158) b!1132514))

(declare-fun m!1282327 () Bool)

(assert (=> d!319160 m!1282327))

(assert (=> d!319160 m!1282327))

(declare-fun m!1282329 () Bool)

(assert (=> d!319160 m!1282329))

(assert (=> b!1132512 m!1281815))

(assert (=> b!1132513 m!1281967))

(declare-fun m!1282331 () Bool)

(assert (=> b!1132514 m!1282331))

(assert (=> b!1132514 m!1281739))

(assert (=> b!1132514 m!1281739))

(declare-fun m!1282333 () Bool)

(assert (=> b!1132514 m!1282333))

(assert (=> d!319008 d!319160))

(declare-fun d!319162 () Bool)

(assert (=> d!319162 (forall!2658 lt!380578 lambda!45591)))

(declare-fun lt!380875 () Unit!16686)

(declare-fun choose!7249 (List!10991 List!10991 Int) Unit!16686)

(assert (=> d!319162 (= lt!380875 (choose!7249 lt!380578 lt!380576 lambda!45591))))

(assert (=> d!319162 (forall!2658 lt!380576 lambda!45591)))

(assert (=> d!319162 (= (lemmaForallSubseq!74 lt!380578 lt!380576 lambda!45591) lt!380875)))

(declare-fun bs!277885 () Bool)

(assert (= bs!277885 d!319162))

(assert (=> bs!277885 m!1281781))

(declare-fun m!1282335 () Bool)

(assert (=> bs!277885 m!1282335))

(declare-fun m!1282337 () Bool)

(assert (=> bs!277885 m!1282337))

(assert (=> d!319008 d!319162))

(declare-fun d!319164 () Bool)

(assert (=> d!319164 (= (slice!70 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (take!17 (drop!419 lt!380609 (ite c!189631 lt!380179 lt!380178)) (- (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)) (ite c!189631 lt!380179 lt!380178))))))

(declare-fun bs!277886 () Bool)

(assert (= bs!277886 d!319164))

(declare-fun m!1282339 () Bool)

(assert (=> bs!277886 m!1282339))

(assert (=> bs!277886 m!1282339))

(declare-fun m!1282341 () Bool)

(assert (=> bs!277886 m!1282341))

(assert (=> d!319008 d!319164))

(declare-fun b!1132515 () Bool)

(declare-fun e!723634 () List!10991)

(assert (=> b!1132515 (= e!723634 Nil!10967)))

(declare-fun b!1132516 () Bool)

(declare-fun e!723636 () List!10991)

(assert (=> b!1132516 (= e!723636 (drop!419 (t!106951 lt!380549) (- (ite c!189631 lt!380179 lt!380178) 1)))))

(declare-fun b!1132517 () Bool)

(declare-fun e!723635 () Int)

(assert (=> b!1132517 (= e!723635 0)))

(declare-fun b!1132518 () Bool)

(declare-fun e!723637 () Int)

(declare-fun call!80705 () Int)

(assert (=> b!1132518 (= e!723637 call!80705)))

(declare-fun b!1132519 () Bool)

(assert (=> b!1132519 (= e!723635 (- call!80705 (ite c!189631 lt!380179 lt!380178)))))

(declare-fun d!319166 () Bool)

(declare-fun e!723633 () Bool)

(assert (=> d!319166 e!723633))

(declare-fun res!509160 () Bool)

(assert (=> d!319166 (=> (not res!509160) (not e!723633))))

(declare-fun lt!380876 () List!10991)

(assert (=> d!319166 (= res!509160 (= ((_ map implies) (content!1574 lt!380876) (content!1574 lt!380549)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319166 (= lt!380876 e!723634)))

(declare-fun c!189708 () Bool)

(assert (=> d!319166 (= c!189708 ((_ is Nil!10967) lt!380549))))

(assert (=> d!319166 (= (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) lt!380876)))

(declare-fun b!1132520 () Bool)

(assert (=> b!1132520 (= e!723636 lt!380549)))

(declare-fun bm!80700 () Bool)

(assert (=> bm!80700 (= call!80705 (size!8565 lt!380549))))

(declare-fun b!1132521 () Bool)

(assert (=> b!1132521 (= e!723633 (= (size!8565 lt!380876) e!723637))))

(declare-fun c!189707 () Bool)

(assert (=> b!1132521 (= c!189707 (<= (ite c!189631 lt!380179 lt!380178) 0))))

(declare-fun b!1132522 () Bool)

(assert (=> b!1132522 (= e!723637 e!723635)))

(declare-fun c!189709 () Bool)

(assert (=> b!1132522 (= c!189709 (>= (ite c!189631 lt!380179 lt!380178) call!80705))))

(declare-fun b!1132523 () Bool)

(assert (=> b!1132523 (= e!723634 e!723636)))

(declare-fun c!189706 () Bool)

(assert (=> b!1132523 (= c!189706 (<= (ite c!189631 lt!380179 lt!380178) 0))))

(assert (= (and d!319166 c!189708) b!1132515))

(assert (= (and d!319166 (not c!189708)) b!1132523))

(assert (= (and b!1132523 c!189706) b!1132520))

(assert (= (and b!1132523 (not c!189706)) b!1132516))

(assert (= (and d!319166 res!509160) b!1132521))

(assert (= (and b!1132521 c!189707) b!1132518))

(assert (= (and b!1132521 (not c!189707)) b!1132522))

(assert (= (and b!1132522 c!189709) b!1132517))

(assert (= (and b!1132522 (not c!189709)) b!1132519))

(assert (= (or b!1132518 b!1132522 b!1132519) bm!80700))

(declare-fun m!1282343 () Bool)

(assert (=> b!1132516 m!1282343))

(declare-fun m!1282345 () Bool)

(assert (=> d!319166 m!1282345))

(declare-fun m!1282347 () Bool)

(assert (=> d!319166 m!1282347))

(declare-fun m!1282349 () Bool)

(assert (=> bm!80700 m!1282349))

(declare-fun m!1282351 () Bool)

(assert (=> b!1132521 m!1282351))

(assert (=> d!319008 d!319166))

(declare-fun d!319168 () Bool)

(declare-fun lt!380879 () Bool)

(assert (=> d!319168 (= lt!380879 (forall!2658 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) lambda!45591))))

(declare-fun forall!2665 (Conc!3499 Int) Bool)

(assert (=> d!319168 (= lt!380879 (forall!2665 (c!189634 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) lambda!45591))))

(assert (=> d!319168 (= (forall!2659 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lambda!45591) lt!380879)))

(declare-fun bs!277887 () Bool)

(assert (= bs!277887 d!319168))

(assert (=> bs!277887 m!1281699))

(assert (=> bs!277887 m!1281701))

(assert (=> bs!277887 m!1281701))

(declare-fun m!1282353 () Bool)

(assert (=> bs!277887 m!1282353))

(declare-fun m!1282355 () Bool)

(assert (=> bs!277887 m!1282355))

(assert (=> d!319008 d!319168))

(declare-fun b!1132534 () Bool)

(declare-fun e!723649 () Bool)

(assert (=> b!1132534 (= e!723649 (subseq!174 (t!106951 (slice!70 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) (t!106951 lt!380609)))))

(declare-fun e!723648 () Bool)

(declare-fun b!1132535 () Bool)

(assert (=> b!1132535 (= e!723648 (subseq!174 (slice!70 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (t!106951 lt!380609)))))

(declare-fun d!319170 () Bool)

(declare-fun res!509171 () Bool)

(declare-fun e!723647 () Bool)

(assert (=> d!319170 (=> res!509171 e!723647)))

(assert (=> d!319170 (= res!509171 ((_ is Nil!10967) (slice!70 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(assert (=> d!319170 (= (subseq!174 (slice!70 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) lt!380609) e!723647)))

(declare-fun b!1132532 () Bool)

(declare-fun e!723646 () Bool)

(assert (=> b!1132532 (= e!723647 e!723646)))

(declare-fun res!509170 () Bool)

(assert (=> b!1132532 (=> (not res!509170) (not e!723646))))

(assert (=> b!1132532 (= res!509170 ((_ is Cons!10967) lt!380609))))

(declare-fun b!1132533 () Bool)

(assert (=> b!1132533 (= e!723646 e!723648)))

(declare-fun res!509169 () Bool)

(assert (=> b!1132533 (=> res!509169 e!723648)))

(assert (=> b!1132533 (= res!509169 e!723649)))

(declare-fun res!509172 () Bool)

(assert (=> b!1132533 (=> (not res!509172) (not e!723649))))

(assert (=> b!1132533 (= res!509172 (= (h!16368 (slice!70 lt!380609 (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) (h!16368 lt!380609)))))

(assert (= (and d!319170 (not res!509171)) b!1132532))

(assert (= (and b!1132532 res!509170) b!1132533))

(assert (= (and b!1132533 res!509172) b!1132534))

(assert (= (and b!1132533 (not res!509169)) b!1132535))

(declare-fun m!1282357 () Bool)

(assert (=> b!1132534 m!1282357))

(assert (=> b!1132535 m!1281773))

(declare-fun m!1282359 () Bool)

(assert (=> b!1132535 m!1282359))

(assert (=> d!319008 d!319170))

(declare-fun d!319172 () Bool)

(assert (=> d!319172 (forall!2658 lt!380602 lambda!45591)))

(declare-fun lt!380880 () Unit!16686)

(assert (=> d!319172 (= lt!380880 (choose!7249 lt!380602 lt!380610 lambda!45591))))

(assert (=> d!319172 (forall!2658 lt!380610 lambda!45591)))

(assert (=> d!319172 (= (lemmaForallSubseq!74 lt!380602 lt!380610 lambda!45591) lt!380880)))

(declare-fun bs!277888 () Bool)

(assert (= bs!277888 d!319172))

(assert (=> bs!277888 m!1281785))

(declare-fun m!1282361 () Bool)

(assert (=> bs!277888 m!1282361))

(declare-fun m!1282363 () Bool)

(assert (=> bs!277888 m!1282363))

(assert (=> d!319008 d!319172))

(declare-fun d!319174 () Bool)

(declare-fun lt!380881 () Bool)

(assert (=> d!319174 (= lt!380881 (forall!2658 (list!3976 (tokens!1456 pt!21)) lambda!45591))))

(assert (=> d!319174 (= lt!380881 (forall!2665 (c!189634 (tokens!1456 pt!21)) lambda!45591))))

(assert (=> d!319174 (= (forall!2659 (tokens!1456 pt!21) lambda!45591) lt!380881)))

(declare-fun bs!277889 () Bool)

(assert (= bs!277889 d!319174))

(assert (=> bs!277889 m!1281739))

(assert (=> bs!277889 m!1281739))

(declare-fun m!1282365 () Bool)

(assert (=> bs!277889 m!1282365))

(declare-fun m!1282367 () Bool)

(assert (=> bs!277889 m!1282367))

(assert (=> d!319008 d!319174))

(declare-fun b!1132618 () Bool)

(declare-fun res!509213 () Bool)

(declare-fun e!723708 () Bool)

(assert (=> b!1132618 (=> (not res!509213) (not e!723708))))

(assert (=> b!1132618 (= res!509213 (rulesInvariant!1471 Lexer!1595 (rules!9226 pt!21)))))

(declare-fun e!723706 () Bool)

(declare-fun b!1132619 () Bool)

(assert (=> b!1132619 (= e!723706 (<= 0 (size!8560 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))))))))

(declare-fun e!723707 () Bool)

(declare-fun b!1132620 () Bool)

(assert (=> b!1132620 (= e!723707 (tokensListTwoByTwoPredicateSeparable!26 Lexer!1595 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (+ 0 1) (rules!9226 pt!21)))))

(declare-fun b!1132621 () Bool)

(declare-fun lt!381013 () List!10991)

(assert (=> b!1132621 (= e!723708 (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) lt!381013))))

(declare-fun lt!381017 () Bool)

(declare-fun d!319176 () Bool)

(declare-fun dropList!292 (BalanceConc!7020 Int) List!10991)

(assert (=> d!319176 (= lt!381017 (tokensListTwoByTwoPredicateSeparableList!71 Lexer!1595 (dropList!292 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) 0) (rules!9226 pt!21)))))

(declare-fun lt!381012 () Unit!16686)

(declare-fun lt!380997 () Unit!16686)

(assert (=> d!319176 (= lt!381012 lt!380997)))

(declare-fun lt!381010 () List!10991)

(assert (=> d!319176 (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) lt!381010)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!8 (LexerInterface!1597 List!10992 List!10991 List!10991) Unit!16686)

(assert (=> d!319176 (= lt!380997 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!8 Lexer!1595 (rules!9226 pt!21) lt!381013 lt!381010))))

(assert (=> d!319176 e!723708))

(declare-fun res!509216 () Bool)

(assert (=> d!319176 (=> (not res!509216) (not e!723708))))

(assert (=> d!319176 (= res!509216 ((_ is Lexer!1595) Lexer!1595))))

(assert (=> d!319176 (= lt!381010 (dropList!292 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) 0))))

(assert (=> d!319176 (= lt!381013 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!381016 () Unit!16686)

(declare-fun lt!380987 () Unit!16686)

(assert (=> d!319176 (= lt!381016 lt!380987)))

(declare-fun lt!380989 () List!10991)

(assert (=> d!319176 (subseq!174 (drop!419 lt!380989 0) lt!380989)))

(declare-fun lemmaDropSubSeq!8 (List!10991 Int) Unit!16686)

(assert (=> d!319176 (= lt!380987 (lemmaDropSubSeq!8 lt!380989 0))))

(declare-fun e!723705 () Bool)

(assert (=> d!319176 e!723705))

(declare-fun res!509220 () Bool)

(assert (=> d!319176 (=> (not res!509220) (not e!723705))))

(assert (=> d!319176 (= res!509220 (>= 0 0))))

(assert (=> d!319176 (= lt!380989 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun e!723704 () Bool)

(assert (=> d!319176 (= lt!381017 e!723704)))

(declare-fun res!509214 () Bool)

(assert (=> d!319176 (=> res!509214 e!723704)))

(assert (=> d!319176 (= res!509214 (not (< 0 (- (size!8560 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) 1))))))

(assert (=> d!319176 e!723706))

(declare-fun res!509219 () Bool)

(assert (=> d!319176 (=> (not res!509219) (not e!723706))))

(assert (=> d!319176 (= res!509219 (>= 0 0))))

(assert (=> d!319176 (= (tokensListTwoByTwoPredicateSeparable!26 Lexer!1595 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) 0 (rules!9226 pt!21)) lt!381017)))

(declare-fun b!1132622 () Bool)

(declare-fun res!509217 () Bool)

(assert (=> b!1132622 (=> (not res!509217) (not e!723708))))

(assert (=> b!1132622 (= res!509217 (not (isEmpty!6801 (rules!9226 pt!21))))))

(declare-fun b!1132623 () Bool)

(declare-fun res!509218 () Bool)

(assert (=> b!1132623 (=> (not res!509218) (not e!723708))))

(assert (=> b!1132623 (= res!509218 (subseq!174 lt!381010 lt!381013))))

(declare-fun b!1132624 () Bool)

(assert (=> b!1132624 (= e!723704 e!723707)))

(declare-fun res!509215 () Bool)

(assert (=> b!1132624 (=> (not res!509215) (not e!723707))))

(assert (=> b!1132624 (= res!509215 (separableTokensPredicate!95 Lexer!1595 (apply!2280 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) 0) (apply!2280 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (+ 0 1)) (rules!9226 pt!21)))))

(declare-fun lt!381004 () Unit!16686)

(declare-fun Unit!16712 () Unit!16686)

(assert (=> b!1132624 (= lt!381004 Unit!16712)))

(assert (=> b!1132624 (> (size!8559 (charsOf!1033 (apply!2280 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (+ 0 1)))) 0)))

(declare-fun lt!381005 () Unit!16686)

(declare-fun Unit!16713 () Unit!16686)

(assert (=> b!1132624 (= lt!381005 Unit!16713)))

(assert (=> b!1132624 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (apply!2280 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (+ 0 1)))))

(declare-fun lt!381007 () Unit!16686)

(declare-fun Unit!16714 () Unit!16686)

(assert (=> b!1132624 (= lt!381007 Unit!16714)))

(assert (=> b!1132624 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (apply!2280 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) 0))))

(declare-fun lt!380996 () Unit!16686)

(declare-fun lt!380991 () Unit!16686)

(assert (=> b!1132624 (= lt!380996 lt!380991)))

(declare-fun lt!381008 () Token!3444)

(assert (=> b!1132624 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) lt!381008)))

(declare-fun lt!381018 () List!10991)

(assert (=> b!1132624 (= lt!380991 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 Lexer!1595 (rules!9226 pt!21) lt!381018 lt!381008))))

(assert (=> b!1132624 (= lt!381008 (apply!2280 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) (+ 0 1)))))

(assert (=> b!1132624 (= lt!381018 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!380999 () Unit!16686)

(declare-fun lt!381002 () Unit!16686)

(assert (=> b!1132624 (= lt!380999 lt!381002)))

(declare-fun lt!380990 () Token!3444)

(assert (=> b!1132624 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) lt!380990)))

(declare-fun lt!381000 () List!10991)

(assert (=> b!1132624 (= lt!381002 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 Lexer!1595 (rules!9226 pt!21) lt!381000 lt!380990))))

(assert (=> b!1132624 (= lt!380990 (apply!2280 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))) 0))))

(assert (=> b!1132624 (= lt!381000 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!380986 () Unit!16686)

(declare-fun lt!380994 () Unit!16686)

(assert (=> b!1132624 (= lt!380986 lt!380994)))

(declare-fun lt!381011 () List!10991)

(declare-fun lt!381001 () Int)

(assert (=> b!1132624 (= (tail!1617 (drop!419 lt!381011 lt!381001)) (drop!419 lt!381011 (+ lt!381001 1)))))

(assert (=> b!1132624 (= lt!380994 (lemmaDropTail!324 lt!381011 lt!381001))))

(assert (=> b!1132624 (= lt!381001 (+ 0 1))))

(assert (=> b!1132624 (= lt!381011 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!380992 () Unit!16686)

(declare-fun lt!380993 () Unit!16686)

(assert (=> b!1132624 (= lt!380992 lt!380993)))

(declare-fun lt!380988 () List!10991)

(assert (=> b!1132624 (= (tail!1617 (drop!419 lt!380988 0)) (drop!419 lt!380988 (+ 0 1)))))

(assert (=> b!1132624 (= lt!380993 (lemmaDropTail!324 lt!380988 0))))

(assert (=> b!1132624 (= lt!380988 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!381003 () Unit!16686)

(declare-fun lt!381009 () Unit!16686)

(assert (=> b!1132624 (= lt!381003 lt!381009)))

(declare-fun lt!381006 () List!10991)

(declare-fun lt!381015 () Int)

(assert (=> b!1132624 (= (head!2057 (drop!419 lt!381006 lt!381015)) (apply!2281 lt!381006 lt!381015))))

(assert (=> b!1132624 (= lt!381009 (lemmaDropApply!336 lt!381006 lt!381015))))

(assert (=> b!1132624 (= lt!381015 (+ 0 1))))

(assert (=> b!1132624 (= lt!381006 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun lt!380995 () Unit!16686)

(declare-fun lt!381014 () Unit!16686)

(assert (=> b!1132624 (= lt!380995 lt!381014)))

(declare-fun lt!380998 () List!10991)

(assert (=> b!1132624 (= (head!2057 (drop!419 lt!380998 0)) (apply!2281 lt!380998 0))))

(assert (=> b!1132624 (= lt!381014 (lemmaDropApply!336 lt!380998 0))))

(assert (=> b!1132624 (= lt!380998 (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))))))

(declare-fun b!1132625 () Bool)

(assert (=> b!1132625 (= e!723705 (<= 0 (size!8565 lt!380989)))))

(assert (= (and d!319176 res!509219) b!1132619))

(assert (= (and d!319176 (not res!509214)) b!1132624))

(assert (= (and b!1132624 res!509215) b!1132620))

(assert (= (and d!319176 res!509220) b!1132625))

(assert (= (and d!319176 res!509216) b!1132622))

(assert (= (and b!1132622 res!509217) b!1132618))

(assert (= (and b!1132618 res!509213) b!1132623))

(assert (= (and b!1132623 res!509218) b!1132621))

(assert (=> b!1132620 m!1281699))

(declare-fun m!1282451 () Bool)

(assert (=> b!1132620 m!1282451))

(declare-fun m!1282453 () Bool)

(assert (=> b!1132624 m!1282453))

(declare-fun m!1282455 () Bool)

(assert (=> b!1132624 m!1282455))

(declare-fun m!1282457 () Bool)

(assert (=> b!1132624 m!1282457))

(declare-fun m!1282459 () Bool)

(assert (=> b!1132624 m!1282459))

(declare-fun m!1282461 () Bool)

(assert (=> b!1132624 m!1282461))

(declare-fun m!1282463 () Bool)

(assert (=> b!1132624 m!1282463))

(declare-fun m!1282465 () Bool)

(assert (=> b!1132624 m!1282465))

(declare-fun m!1282467 () Bool)

(assert (=> b!1132624 m!1282467))

(declare-fun m!1282469 () Bool)

(assert (=> b!1132624 m!1282469))

(declare-fun m!1282471 () Bool)

(assert (=> b!1132624 m!1282471))

(declare-fun m!1282473 () Bool)

(assert (=> b!1132624 m!1282473))

(assert (=> b!1132624 m!1282469))

(declare-fun m!1282475 () Bool)

(assert (=> b!1132624 m!1282475))

(assert (=> b!1132624 m!1281699))

(assert (=> b!1132624 m!1281701))

(declare-fun m!1282477 () Bool)

(assert (=> b!1132624 m!1282477))

(declare-fun m!1282479 () Bool)

(assert (=> b!1132624 m!1282479))

(assert (=> b!1132624 m!1282457))

(declare-fun m!1282481 () Bool)

(assert (=> b!1132624 m!1282481))

(declare-fun m!1282483 () Bool)

(assert (=> b!1132624 m!1282483))

(declare-fun m!1282485 () Bool)

(assert (=> b!1132624 m!1282485))

(declare-fun m!1282487 () Bool)

(assert (=> b!1132624 m!1282487))

(assert (=> b!1132624 m!1282475))

(declare-fun m!1282489 () Bool)

(assert (=> b!1132624 m!1282489))

(assert (=> b!1132624 m!1282461))

(assert (=> b!1132624 m!1282473))

(declare-fun m!1282491 () Bool)

(assert (=> b!1132624 m!1282491))

(assert (=> b!1132624 m!1281699))

(assert (=> b!1132624 m!1282461))

(declare-fun m!1282493 () Bool)

(assert (=> b!1132624 m!1282493))

(assert (=> b!1132624 m!1282487))

(declare-fun m!1282495 () Bool)

(assert (=> b!1132624 m!1282495))

(assert (=> b!1132624 m!1281699))

(assert (=> b!1132624 m!1282473))

(declare-fun m!1282497 () Bool)

(assert (=> b!1132624 m!1282497))

(assert (=> b!1132624 m!1282465))

(declare-fun m!1282499 () Bool)

(assert (=> b!1132624 m!1282499))

(declare-fun m!1282501 () Bool)

(assert (=> b!1132624 m!1282501))

(assert (=> b!1132624 m!1282473))

(declare-fun m!1282503 () Bool)

(assert (=> b!1132624 m!1282503))

(declare-fun m!1282505 () Bool)

(assert (=> b!1132624 m!1282505))

(declare-fun m!1282507 () Bool)

(assert (=> b!1132621 m!1282507))

(declare-fun m!1282509 () Bool)

(assert (=> b!1132623 m!1282509))

(assert (=> b!1132618 m!1281959))

(declare-fun m!1282511 () Bool)

(assert (=> b!1132625 m!1282511))

(declare-fun m!1282513 () Bool)

(assert (=> d!319176 m!1282513))

(declare-fun m!1282515 () Bool)

(assert (=> d!319176 m!1282515))

(declare-fun m!1282517 () Bool)

(assert (=> d!319176 m!1282517))

(assert (=> d!319176 m!1281699))

(declare-fun m!1282519 () Bool)

(assert (=> d!319176 m!1282519))

(assert (=> d!319176 m!1281699))

(declare-fun m!1282521 () Bool)

(assert (=> d!319176 m!1282521))

(assert (=> d!319176 m!1281699))

(assert (=> d!319176 m!1281701))

(declare-fun m!1282523 () Bool)

(assert (=> d!319176 m!1282523))

(assert (=> d!319176 m!1282521))

(declare-fun m!1282525 () Bool)

(assert (=> d!319176 m!1282525))

(assert (=> d!319176 m!1282517))

(declare-fun m!1282527 () Bool)

(assert (=> d!319176 m!1282527))

(assert (=> b!1132619 m!1281699))

(assert (=> b!1132619 m!1282519))

(assert (=> b!1132622 m!1281957))

(assert (=> d!319008 d!319176))

(declare-fun bs!277893 () Bool)

(declare-fun d!319202 () Bool)

(assert (= bs!277893 (and d!319202 d!319150)))

(declare-fun lambda!45610 () Int)

(assert (=> bs!277893 (= (= lt!380563 lt!380592) (= lambda!45610 lambda!45607))))

(declare-fun bs!277894 () Bool)

(assert (= bs!277894 (and d!319202 d!319134)))

(assert (=> bs!277894 (= (= lt!380563 Lexer!1595) (= lambda!45610 lambda!45603))))

(declare-fun bs!277895 () Bool)

(assert (= bs!277895 (and d!319202 b!1132472)))

(assert (=> bs!277895 (= (= lt!380563 Lexer!1595) (= lambda!45610 lambda!45606))))

(declare-fun bs!277896 () Bool)

(assert (= bs!277896 (and d!319202 d!319152)))

(assert (=> bs!277896 (= (= lt!380563 Lexer!1595) (= lambda!45610 lambda!45608))))

(declare-fun bs!277897 () Bool)

(assert (= bs!277897 (and d!319202 d!319098)))

(assert (=> bs!277897 (= (= lt!380563 Lexer!1595) (= lambda!45610 lambda!45600))))

(declare-fun bs!277898 () Bool)

(assert (= bs!277898 (and d!319202 d!319158)))

(assert (=> bs!277898 (= (= lt!380563 Lexer!1595) (= lambda!45610 lambda!45609))))

(declare-fun bs!277899 () Bool)

(assert (= bs!277899 (and d!319202 d!319008)))

(assert (=> bs!277899 (= (= lt!380563 Lexer!1595) (= lambda!45610 lambda!45591))))

(declare-fun b!1132646 () Bool)

(declare-fun e!723723 () Bool)

(assert (=> b!1132646 (= e!723723 true)))

(declare-fun b!1132645 () Bool)

(declare-fun e!723722 () Bool)

(assert (=> b!1132645 (= e!723722 e!723723)))

(declare-fun b!1132644 () Bool)

(declare-fun e!723721 () Bool)

(assert (=> b!1132644 (= e!723721 e!723722)))

(assert (=> d!319202 e!723721))

(assert (= b!1132645 b!1132646))

(assert (= b!1132644 b!1132645))

(assert (= (and d!319202 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132644))

(assert (=> b!1132646 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45610))))

(assert (=> b!1132646 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45610))))

(assert (=> d!319202 true))

(declare-fun lt!381021 () Bool)

(assert (=> d!319202 (= lt!381021 (forall!2658 (take!17 lt!380595 lt!380599) lambda!45610))))

(declare-fun e!723717 () Bool)

(assert (=> d!319202 (= lt!381021 e!723717)))

(declare-fun res!509226 () Bool)

(assert (=> d!319202 (=> res!509226 e!723717)))

(assert (=> d!319202 (= res!509226 (not ((_ is Cons!10967) (take!17 lt!380595 lt!380599))))))

(assert (=> d!319202 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319202 (= (rulesProduceEachTokenIndividuallyList!472 lt!380563 (rules!9226 pt!21) (take!17 lt!380595 lt!380599)) lt!381021)))

(declare-fun b!1132638 () Bool)

(declare-fun e!723718 () Bool)

(assert (=> b!1132638 (= e!723717 e!723718)))

(declare-fun res!509225 () Bool)

(assert (=> b!1132638 (=> (not res!509225) (not e!723718))))

(assert (=> b!1132638 (= res!509225 (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 (take!17 lt!380595 lt!380599))))))

(declare-fun b!1132639 () Bool)

(assert (=> b!1132639 (= e!723718 (rulesProduceEachTokenIndividuallyList!472 lt!380563 (rules!9226 pt!21) (t!106951 (take!17 lt!380595 lt!380599))))))

(assert (= (and d!319202 (not res!509226)) b!1132638))

(assert (= (and b!1132638 res!509225) b!1132639))

(assert (=> d!319202 m!1281793))

(declare-fun m!1282529 () Bool)

(assert (=> d!319202 m!1282529))

(assert (=> d!319202 m!1281957))

(declare-fun m!1282531 () Bool)

(assert (=> b!1132638 m!1282531))

(declare-fun m!1282533 () Bool)

(assert (=> b!1132639 m!1282533))

(assert (=> d!319008 d!319202))

(declare-fun d!319204 () Bool)

(declare-fun lt!381030 () Int)

(assert (=> d!319204 (= lt!381030 (size!8565 (list!3976 (tokens!1456 pt!21))))))

(assert (=> d!319204 (= lt!381030 (size!8564 (c!189634 (tokens!1456 pt!21))))))

(assert (=> d!319204 (= (size!8560 (tokens!1456 pt!21)) lt!381030)))

(declare-fun bs!277900 () Bool)

(assert (= bs!277900 d!319204))

(assert (=> bs!277900 m!1281739))

(assert (=> bs!277900 m!1281739))

(assert (=> bs!277900 m!1282201))

(declare-fun m!1282563 () Bool)

(assert (=> bs!277900 m!1282563))

(assert (=> d!319008 d!319204))

(declare-fun bs!277902 () Bool)

(declare-fun b!1132708 () Bool)

(assert (= bs!277902 (and b!1132708 d!319150)))

(declare-fun lambda!45613 () Int)

(assert (=> bs!277902 (= (= Lexer!1595 lt!380592) (= lambda!45613 lambda!45607))))

(declare-fun bs!277903 () Bool)

(assert (= bs!277903 (and b!1132708 d!319134)))

(assert (=> bs!277903 (= lambda!45613 lambda!45603)))

(declare-fun bs!277904 () Bool)

(assert (= bs!277904 (and b!1132708 b!1132472)))

(assert (=> bs!277904 (= lambda!45613 lambda!45606)))

(declare-fun bs!277905 () Bool)

(assert (= bs!277905 (and b!1132708 d!319202)))

(assert (=> bs!277905 (= (= Lexer!1595 lt!380563) (= lambda!45613 lambda!45610))))

(declare-fun bs!277906 () Bool)

(assert (= bs!277906 (and b!1132708 d!319152)))

(assert (=> bs!277906 (= lambda!45613 lambda!45608)))

(declare-fun bs!277907 () Bool)

(assert (= bs!277907 (and b!1132708 d!319098)))

(assert (=> bs!277907 (= lambda!45613 lambda!45600)))

(declare-fun bs!277908 () Bool)

(assert (= bs!277908 (and b!1132708 d!319158)))

(assert (=> bs!277908 (= lambda!45613 lambda!45609)))

(declare-fun bs!277909 () Bool)

(assert (= bs!277909 (and b!1132708 d!319008)))

(assert (=> bs!277909 (= lambda!45613 lambda!45591)))

(declare-fun b!1132712 () Bool)

(declare-fun e!723771 () Bool)

(assert (=> b!1132712 (= e!723771 true)))

(declare-fun b!1132711 () Bool)

(declare-fun e!723770 () Bool)

(assert (=> b!1132711 (= e!723770 e!723771)))

(declare-fun b!1132710 () Bool)

(declare-fun e!723769 () Bool)

(assert (=> b!1132710 (= e!723769 e!723770)))

(assert (=> b!1132708 e!723769))

(assert (= b!1132711 b!1132712))

(assert (= b!1132710 b!1132711))

(assert (= (and b!1132708 ((_ is Cons!10968) (rules!9226 pt!21))) b!1132710))

(assert (=> b!1132712 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45613))))

(assert (=> b!1132712 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45613))))

(declare-fun b!1132707 () Bool)

(declare-fun lt!381061 () List!10991)

(declare-fun e!723768 () Bool)

(assert (=> b!1132707 (= e!723768 (rulesProduceEachTokenIndividuallyList!472 lt!380592 (rules!9226 pt!21) (t!106951 lt!381061)))))

(declare-fun b!1132706 () Bool)

(declare-fun e!723766 () Bool)

(assert (=> b!1132706 (= e!723766 e!723768)))

(declare-fun res!509255 () Bool)

(assert (=> b!1132706 (=> (not res!509255) (not e!723768))))

(assert (=> b!1132706 (= res!509255 (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 lt!381061)))))

(declare-fun d!319212 () Bool)

(declare-fun e!723765 () Bool)

(assert (=> d!319212 e!723765))

(declare-fun res!509258 () Bool)

(assert (=> d!319212 (=> (not res!509258) (not e!723765))))

(assert (=> d!319212 (= res!509258 (= (rulesProduceEachTokenIndividuallyList!472 lt!380592 (rules!9226 pt!21) (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))) e!723766))))

(declare-fun res!509256 () Bool)

(assert (=> d!319212 (=> res!509256 e!723766)))

(assert (=> d!319212 (= res!509256 (not ((_ is Cons!10967) lt!381061)))))

(assert (=> d!319212 (= lt!381061 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))

(declare-fun lt!381062 () Unit!16686)

(declare-fun choose!7251 (LexerInterface!1597 List!10991 Int List!10992) Unit!16686)

(assert (=> d!319212 (= lt!381062 (choose!7251 lt!380592 lt!380549 (ite c!189631 lt!380179 lt!380178) (rules!9226 pt!21)))))

(assert (=> d!319212 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319212 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!15 lt!380592 lt!380549 (ite c!189631 lt!380179 lt!380178) (rules!9226 pt!21)) lt!381062)))

(declare-fun b!1132709 () Bool)

(declare-fun e!723767 () Bool)

(declare-fun lt!381065 () List!10991)

(assert (=> b!1132709 (= e!723767 (subseq!174 lt!381065 lt!380549))))

(assert (=> b!1132708 (= e!723765 (tokensListTwoByTwoPredicateSeparableList!71 lt!380592 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) (rules!9226 pt!21)))))

(declare-fun lt!381066 () Unit!16686)

(declare-fun lt!381064 () Unit!16686)

(assert (=> b!1132708 (= lt!381066 lt!381064)))

(assert (=> b!1132708 (forall!2658 lt!381065 lambda!45613)))

(assert (=> b!1132708 (= lt!381064 (lemmaForallSubseq!74 lt!381065 lt!380549 lambda!45613))))

(assert (=> b!1132708 e!723767))

(declare-fun res!509257 () Bool)

(assert (=> b!1132708 (=> (not res!509257) (not e!723767))))

(assert (=> b!1132708 (= res!509257 (forall!2658 lt!380549 lambda!45613))))

(assert (=> b!1132708 (= lt!381065 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))

(declare-fun lt!381063 () Unit!16686)

(declare-fun lt!381067 () Unit!16686)

(assert (=> b!1132708 (= lt!381063 lt!381067)))

(assert (=> b!1132708 (subseq!174 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) lt!380549)))

(assert (=> b!1132708 (= lt!381067 (lemmaDropSubseq!15 lt!380549 (ite c!189631 lt!380179 lt!380178)))))

(assert (= (and d!319212 (not res!509256)) b!1132706))

(assert (= (and b!1132706 res!509255) b!1132707))

(assert (= (and d!319212 res!509258) b!1132708))

(assert (= (and b!1132708 res!509257) b!1132709))

(declare-fun m!1282655 () Bool)

(assert (=> b!1132706 m!1282655))

(declare-fun m!1282657 () Bool)

(assert (=> b!1132708 m!1282657))

(assert (=> b!1132708 m!1281681))

(assert (=> b!1132708 m!1281687))

(declare-fun m!1282659 () Bool)

(assert (=> b!1132708 m!1282659))

(assert (=> b!1132708 m!1281685))

(assert (=> b!1132708 m!1281681))

(assert (=> b!1132708 m!1281683))

(declare-fun m!1282661 () Bool)

(assert (=> b!1132708 m!1282661))

(assert (=> b!1132708 m!1281681))

(assert (=> d!319212 m!1281681))

(assert (=> d!319212 m!1281681))

(assert (=> d!319212 m!1281791))

(declare-fun m!1282663 () Bool)

(assert (=> d!319212 m!1282663))

(assert (=> d!319212 m!1281957))

(declare-fun m!1282665 () Bool)

(assert (=> b!1132707 m!1282665))

(declare-fun m!1282667 () Bool)

(assert (=> b!1132709 m!1282667))

(assert (=> d!319008 d!319212))

(declare-fun d!319238 () Bool)

(assert (=> d!319238 (subseq!174 (drop!419 lt!380591 (ite c!189631 lt!380179 lt!380178)) lt!380591)))

(declare-fun lt!381070 () Unit!16686)

(declare-fun choose!7252 (List!10991 Int) Unit!16686)

(assert (=> d!319238 (= lt!381070 (choose!7252 lt!380591 (ite c!189631 lt!380179 lt!380178)))))

(assert (=> d!319238 (= (lemmaDropSubseq!15 lt!380591 (ite c!189631 lt!380179 lt!380178)) lt!381070)))

(declare-fun bs!277910 () Bool)

(assert (= bs!277910 d!319238))

(assert (=> bs!277910 m!1281763))

(assert (=> bs!277910 m!1281763))

(assert (=> bs!277910 m!1281765))

(declare-fun m!1282669 () Bool)

(assert (=> bs!277910 m!1282669))

(assert (=> d!319008 d!319238))

(declare-fun d!319240 () Bool)

(declare-fun e!723841 () Bool)

(assert (=> d!319240 e!723841))

(declare-fun res!509335 () Bool)

(assert (=> d!319240 (=> (not res!509335) (not e!723841))))

(assert (=> d!319240 (= res!509335 (rulesInvariant!1471 Lexer!1595 (rules!9226 pt!21)))))

(declare-fun Unit!16715 () Unit!16686)

(assert (=> d!319240 (= (lemmaInvariant!89 pt!21) Unit!16715)))

(declare-fun b!1132841 () Bool)

(declare-fun res!509336 () Bool)

(assert (=> b!1132841 (=> (not res!509336) (not e!723841))))

(assert (=> b!1132841 (= res!509336 (rulesProduceEachTokenIndividually!639 Lexer!1595 (rules!9226 pt!21) (tokens!1456 pt!21)))))

(declare-fun b!1132842 () Bool)

(assert (=> b!1132842 (= e!723841 (separableTokens!66 Lexer!1595 (tokens!1456 pt!21) (rules!9226 pt!21)))))

(assert (= (and d!319240 res!509335) b!1132841))

(assert (= (and b!1132841 res!509336) b!1132842))

(assert (=> d!319240 m!1281959))

(assert (=> b!1132841 m!1281771))

(assert (=> b!1132842 m!1281961))

(assert (=> d!319008 d!319240))

(declare-fun d!319286 () Bool)

(declare-fun res!509340 () Bool)

(declare-fun e!723844 () Bool)

(assert (=> d!319286 (=> res!509340 e!723844)))

(assert (=> d!319286 (= res!509340 ((_ is Nil!10967) lt!380578))))

(assert (=> d!319286 (= (forall!2658 lt!380578 lambda!45591) e!723844)))

(declare-fun b!1132846 () Bool)

(declare-fun e!723845 () Bool)

(assert (=> b!1132846 (= e!723844 e!723845)))

(declare-fun res!509341 () Bool)

(assert (=> b!1132846 (=> (not res!509341) (not e!723845))))

(assert (=> b!1132846 (= res!509341 (dynLambda!4838 lambda!45591 (h!16368 lt!380578)))))

(declare-fun b!1132847 () Bool)

(assert (=> b!1132847 (= e!723845 (forall!2658 (t!106951 lt!380578) lambda!45591))))

(assert (= (and d!319286 (not res!509340)) b!1132846))

(assert (= (and b!1132846 res!509341) b!1132847))

(declare-fun b_lambda!33307 () Bool)

(assert (=> (not b_lambda!33307) (not b!1132846)))

(declare-fun m!1282809 () Bool)

(assert (=> b!1132846 m!1282809))

(declare-fun m!1282811 () Bool)

(assert (=> b!1132847 m!1282811))

(assert (=> d!319008 d!319286))

(declare-fun d!319288 () Bool)

(declare-fun list!3984 (Conc!3499) List!10991)

(assert (=> d!319288 (= (list!3976 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179)))) (list!3984 (c!189634 (slice!69 (tokens!1456 pt!21) (ite c!189631 lt!380179 lt!380178) (ite c!189631 (+ 1 lt!380178) (+ 1 lt!380179))))))))

(declare-fun bs!277919 () Bool)

(assert (= bs!277919 d!319288))

(declare-fun m!1282835 () Bool)

(assert (=> bs!277919 m!1282835))

(assert (=> d!319008 d!319288))

(declare-fun e!723851 () Bool)

(declare-fun b!1132852 () Bool)

(assert (=> b!1132852 (= e!723851 (subseq!174 (t!106951 (drop!419 lt!380591 (ite c!189631 lt!380179 lt!380178))) (t!106951 lt!380591)))))

(declare-fun b!1132853 () Bool)

(declare-fun e!723850 () Bool)

(assert (=> b!1132853 (= e!723850 (subseq!174 (drop!419 lt!380591 (ite c!189631 lt!380179 lt!380178)) (t!106951 lt!380591)))))

(declare-fun d!319294 () Bool)

(declare-fun res!509346 () Bool)

(declare-fun e!723849 () Bool)

(assert (=> d!319294 (=> res!509346 e!723849)))

(assert (=> d!319294 (= res!509346 ((_ is Nil!10967) (drop!419 lt!380591 (ite c!189631 lt!380179 lt!380178))))))

(assert (=> d!319294 (= (subseq!174 (drop!419 lt!380591 (ite c!189631 lt!380179 lt!380178)) lt!380591) e!723849)))

(declare-fun b!1132850 () Bool)

(declare-fun e!723848 () Bool)

(assert (=> b!1132850 (= e!723849 e!723848)))

(declare-fun res!509345 () Bool)

(assert (=> b!1132850 (=> (not res!509345) (not e!723848))))

(assert (=> b!1132850 (= res!509345 ((_ is Cons!10967) lt!380591))))

(declare-fun b!1132851 () Bool)

(assert (=> b!1132851 (= e!723848 e!723850)))

(declare-fun res!509344 () Bool)

(assert (=> b!1132851 (=> res!509344 e!723850)))

(assert (=> b!1132851 (= res!509344 e!723851)))

(declare-fun res!509347 () Bool)

(assert (=> b!1132851 (=> (not res!509347) (not e!723851))))

(assert (=> b!1132851 (= res!509347 (= (h!16368 (drop!419 lt!380591 (ite c!189631 lt!380179 lt!380178))) (h!16368 lt!380591)))))

(assert (= (and d!319294 (not res!509346)) b!1132850))

(assert (= (and b!1132850 res!509345) b!1132851))

(assert (= (and b!1132851 res!509347) b!1132852))

(assert (= (and b!1132851 (not res!509344)) b!1132853))

(declare-fun m!1282839 () Bool)

(assert (=> b!1132852 m!1282839))

(assert (=> b!1132853 m!1281763))

(declare-fun m!1282841 () Bool)

(assert (=> b!1132853 m!1282841))

(assert (=> d!319008 d!319294))

(declare-fun d!319298 () Bool)

(assert (=> d!319298 (= (list!3976 (tokens!1456 pt!21)) (list!3984 (c!189634 (tokens!1456 pt!21))))))

(declare-fun bs!277921 () Bool)

(assert (= bs!277921 d!319298))

(declare-fun m!1282843 () Bool)

(assert (=> bs!277921 m!1282843))

(assert (=> d!319008 d!319298))

(declare-fun b!1132858 () Bool)

(declare-fun res!509350 () Bool)

(declare-fun e!723859 () Bool)

(assert (=> b!1132858 (=> (not res!509350) (not e!723859))))

(assert (=> b!1132858 (= res!509350 (rulesInvariant!1471 Lexer!1595 (rules!9226 pt!21)))))

(declare-fun b!1132859 () Bool)

(declare-fun e!723857 () Bool)

(assert (=> b!1132859 (= e!723857 (<= 0 (size!8560 (tokens!1456 pt!21))))))

(declare-fun b!1132860 () Bool)

(declare-fun e!723858 () Bool)

(assert (=> b!1132860 (= e!723858 (tokensListTwoByTwoPredicateSeparable!26 Lexer!1595 (tokens!1456 pt!21) (+ 0 1) (rules!9226 pt!21)))))

(declare-fun b!1132861 () Bool)

(declare-fun lt!381127 () List!10991)

(assert (=> b!1132861 (= e!723859 (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) lt!381127))))

(declare-fun d!319300 () Bool)

(declare-fun lt!381131 () Bool)

(assert (=> d!319300 (= lt!381131 (tokensListTwoByTwoPredicateSeparableList!71 Lexer!1595 (dropList!292 (tokens!1456 pt!21) 0) (rules!9226 pt!21)))))

(declare-fun lt!381126 () Unit!16686)

(declare-fun lt!381111 () Unit!16686)

(assert (=> d!319300 (= lt!381126 lt!381111)))

(declare-fun lt!381124 () List!10991)

(assert (=> d!319300 (rulesProduceEachTokenIndividuallyList!472 Lexer!1595 (rules!9226 pt!21) lt!381124)))

(assert (=> d!319300 (= lt!381111 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!8 Lexer!1595 (rules!9226 pt!21) lt!381127 lt!381124))))

(assert (=> d!319300 e!723859))

(declare-fun res!509353 () Bool)

(assert (=> d!319300 (=> (not res!509353) (not e!723859))))

(assert (=> d!319300 (= res!509353 ((_ is Lexer!1595) Lexer!1595))))

(assert (=> d!319300 (= lt!381124 (dropList!292 (tokens!1456 pt!21) 0))))

(assert (=> d!319300 (= lt!381127 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381130 () Unit!16686)

(declare-fun lt!381101 () Unit!16686)

(assert (=> d!319300 (= lt!381130 lt!381101)))

(declare-fun lt!381103 () List!10991)

(assert (=> d!319300 (subseq!174 (drop!419 lt!381103 0) lt!381103)))

(assert (=> d!319300 (= lt!381101 (lemmaDropSubSeq!8 lt!381103 0))))

(declare-fun e!723856 () Bool)

(assert (=> d!319300 e!723856))

(declare-fun res!509357 () Bool)

(assert (=> d!319300 (=> (not res!509357) (not e!723856))))

(assert (=> d!319300 (= res!509357 (>= 0 0))))

(assert (=> d!319300 (= lt!381103 (list!3976 (tokens!1456 pt!21)))))

(declare-fun e!723855 () Bool)

(assert (=> d!319300 (= lt!381131 e!723855)))

(declare-fun res!509351 () Bool)

(assert (=> d!319300 (=> res!509351 e!723855)))

(assert (=> d!319300 (= res!509351 (not (< 0 (- (size!8560 (tokens!1456 pt!21)) 1))))))

(assert (=> d!319300 e!723857))

(declare-fun res!509356 () Bool)

(assert (=> d!319300 (=> (not res!509356) (not e!723857))))

(assert (=> d!319300 (= res!509356 (>= 0 0))))

(assert (=> d!319300 (= (tokensListTwoByTwoPredicateSeparable!26 Lexer!1595 (tokens!1456 pt!21) 0 (rules!9226 pt!21)) lt!381131)))

(declare-fun b!1132862 () Bool)

(declare-fun res!509354 () Bool)

(assert (=> b!1132862 (=> (not res!509354) (not e!723859))))

(assert (=> b!1132862 (= res!509354 (not (isEmpty!6801 (rules!9226 pt!21))))))

(declare-fun b!1132863 () Bool)

(declare-fun res!509355 () Bool)

(assert (=> b!1132863 (=> (not res!509355) (not e!723859))))

(assert (=> b!1132863 (= res!509355 (subseq!174 lt!381124 lt!381127))))

(declare-fun b!1132864 () Bool)

(assert (=> b!1132864 (= e!723855 e!723858)))

(declare-fun res!509352 () Bool)

(assert (=> b!1132864 (=> (not res!509352) (not e!723858))))

(assert (=> b!1132864 (= res!509352 (separableTokensPredicate!95 Lexer!1595 (apply!2280 (tokens!1456 pt!21) 0) (apply!2280 (tokens!1456 pt!21) (+ 0 1)) (rules!9226 pt!21)))))

(declare-fun lt!381118 () Unit!16686)

(declare-fun Unit!16716 () Unit!16686)

(assert (=> b!1132864 (= lt!381118 Unit!16716)))

(assert (=> b!1132864 (> (size!8559 (charsOf!1033 (apply!2280 (tokens!1456 pt!21) (+ 0 1)))) 0)))

(declare-fun lt!381119 () Unit!16686)

(declare-fun Unit!16717 () Unit!16686)

(assert (=> b!1132864 (= lt!381119 Unit!16717)))

(assert (=> b!1132864 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (apply!2280 (tokens!1456 pt!21) (+ 0 1)))))

(declare-fun lt!381121 () Unit!16686)

(declare-fun Unit!16718 () Unit!16686)

(assert (=> b!1132864 (= lt!381121 Unit!16718)))

(assert (=> b!1132864 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (apply!2280 (tokens!1456 pt!21) 0))))

(declare-fun lt!381110 () Unit!16686)

(declare-fun lt!381105 () Unit!16686)

(assert (=> b!1132864 (= lt!381110 lt!381105)))

(declare-fun lt!381122 () Token!3444)

(assert (=> b!1132864 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) lt!381122)))

(declare-fun lt!381132 () List!10991)

(assert (=> b!1132864 (= lt!381105 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 Lexer!1595 (rules!9226 pt!21) lt!381132 lt!381122))))

(assert (=> b!1132864 (= lt!381122 (apply!2280 (tokens!1456 pt!21) (+ 0 1)))))

(assert (=> b!1132864 (= lt!381132 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381113 () Unit!16686)

(declare-fun lt!381116 () Unit!16686)

(assert (=> b!1132864 (= lt!381113 lt!381116)))

(declare-fun lt!381104 () Token!3444)

(assert (=> b!1132864 (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) lt!381104)))

(declare-fun lt!381114 () List!10991)

(assert (=> b!1132864 (= lt!381116 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 Lexer!1595 (rules!9226 pt!21) lt!381114 lt!381104))))

(assert (=> b!1132864 (= lt!381104 (apply!2280 (tokens!1456 pt!21) 0))))

(assert (=> b!1132864 (= lt!381114 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381100 () Unit!16686)

(declare-fun lt!381108 () Unit!16686)

(assert (=> b!1132864 (= lt!381100 lt!381108)))

(declare-fun lt!381125 () List!10991)

(declare-fun lt!381115 () Int)

(assert (=> b!1132864 (= (tail!1617 (drop!419 lt!381125 lt!381115)) (drop!419 lt!381125 (+ lt!381115 1)))))

(assert (=> b!1132864 (= lt!381108 (lemmaDropTail!324 lt!381125 lt!381115))))

(assert (=> b!1132864 (= lt!381115 (+ 0 1))))

(assert (=> b!1132864 (= lt!381125 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381106 () Unit!16686)

(declare-fun lt!381107 () Unit!16686)

(assert (=> b!1132864 (= lt!381106 lt!381107)))

(declare-fun lt!381102 () List!10991)

(assert (=> b!1132864 (= (tail!1617 (drop!419 lt!381102 0)) (drop!419 lt!381102 (+ 0 1)))))

(assert (=> b!1132864 (= lt!381107 (lemmaDropTail!324 lt!381102 0))))

(assert (=> b!1132864 (= lt!381102 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381117 () Unit!16686)

(declare-fun lt!381123 () Unit!16686)

(assert (=> b!1132864 (= lt!381117 lt!381123)))

(declare-fun lt!381120 () List!10991)

(declare-fun lt!381129 () Int)

(assert (=> b!1132864 (= (head!2057 (drop!419 lt!381120 lt!381129)) (apply!2281 lt!381120 lt!381129))))

(assert (=> b!1132864 (= lt!381123 (lemmaDropApply!336 lt!381120 lt!381129))))

(assert (=> b!1132864 (= lt!381129 (+ 0 1))))

(assert (=> b!1132864 (= lt!381120 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381109 () Unit!16686)

(declare-fun lt!381128 () Unit!16686)

(assert (=> b!1132864 (= lt!381109 lt!381128)))

(declare-fun lt!381112 () List!10991)

(assert (=> b!1132864 (= (head!2057 (drop!419 lt!381112 0)) (apply!2281 lt!381112 0))))

(assert (=> b!1132864 (= lt!381128 (lemmaDropApply!336 lt!381112 0))))

(assert (=> b!1132864 (= lt!381112 (list!3976 (tokens!1456 pt!21)))))

(declare-fun b!1132865 () Bool)

(assert (=> b!1132865 (= e!723856 (<= 0 (size!8565 lt!381103)))))

(assert (= (and d!319300 res!509356) b!1132859))

(assert (= (and d!319300 (not res!509351)) b!1132864))

(assert (= (and b!1132864 res!509352) b!1132860))

(assert (= (and d!319300 res!509357) b!1132865))

(assert (= (and d!319300 res!509353) b!1132862))

(assert (= (and b!1132862 res!509354) b!1132858))

(assert (= (and b!1132858 res!509350) b!1132863))

(assert (= (and b!1132863 res!509355) b!1132861))

(declare-fun m!1282859 () Bool)

(assert (=> b!1132860 m!1282859))

(declare-fun m!1282861 () Bool)

(assert (=> b!1132864 m!1282861))

(declare-fun m!1282863 () Bool)

(assert (=> b!1132864 m!1282863))

(declare-fun m!1282865 () Bool)

(assert (=> b!1132864 m!1282865))

(declare-fun m!1282867 () Bool)

(assert (=> b!1132864 m!1282867))

(declare-fun m!1282869 () Bool)

(assert (=> b!1132864 m!1282869))

(declare-fun m!1282871 () Bool)

(assert (=> b!1132864 m!1282871))

(declare-fun m!1282873 () Bool)

(assert (=> b!1132864 m!1282873))

(declare-fun m!1282875 () Bool)

(assert (=> b!1132864 m!1282875))

(declare-fun m!1282877 () Bool)

(assert (=> b!1132864 m!1282877))

(declare-fun m!1282879 () Bool)

(assert (=> b!1132864 m!1282879))

(declare-fun m!1282881 () Bool)

(assert (=> b!1132864 m!1282881))

(assert (=> b!1132864 m!1282877))

(declare-fun m!1282883 () Bool)

(assert (=> b!1132864 m!1282883))

(assert (=> b!1132864 m!1281739))

(declare-fun m!1282885 () Bool)

(assert (=> b!1132864 m!1282885))

(declare-fun m!1282887 () Bool)

(assert (=> b!1132864 m!1282887))

(assert (=> b!1132864 m!1282865))

(declare-fun m!1282889 () Bool)

(assert (=> b!1132864 m!1282889))

(declare-fun m!1282891 () Bool)

(assert (=> b!1132864 m!1282891))

(declare-fun m!1282893 () Bool)

(assert (=> b!1132864 m!1282893))

(declare-fun m!1282895 () Bool)

(assert (=> b!1132864 m!1282895))

(assert (=> b!1132864 m!1282883))

(declare-fun m!1282897 () Bool)

(assert (=> b!1132864 m!1282897))

(assert (=> b!1132864 m!1282869))

(assert (=> b!1132864 m!1282881))

(declare-fun m!1282899 () Bool)

(assert (=> b!1132864 m!1282899))

(assert (=> b!1132864 m!1282869))

(declare-fun m!1282901 () Bool)

(assert (=> b!1132864 m!1282901))

(assert (=> b!1132864 m!1282895))

(declare-fun m!1282903 () Bool)

(assert (=> b!1132864 m!1282903))

(assert (=> b!1132864 m!1282881))

(declare-fun m!1282905 () Bool)

(assert (=> b!1132864 m!1282905))

(assert (=> b!1132864 m!1282873))

(declare-fun m!1282907 () Bool)

(assert (=> b!1132864 m!1282907))

(declare-fun m!1282909 () Bool)

(assert (=> b!1132864 m!1282909))

(assert (=> b!1132864 m!1282881))

(declare-fun m!1282911 () Bool)

(assert (=> b!1132864 m!1282911))

(declare-fun m!1282913 () Bool)

(assert (=> b!1132864 m!1282913))

(declare-fun m!1282915 () Bool)

(assert (=> b!1132861 m!1282915))

(declare-fun m!1282917 () Bool)

(assert (=> b!1132863 m!1282917))

(assert (=> b!1132858 m!1281959))

(declare-fun m!1282919 () Bool)

(assert (=> b!1132865 m!1282919))

(declare-fun m!1282921 () Bool)

(assert (=> d!319300 m!1282921))

(declare-fun m!1282923 () Bool)

(assert (=> d!319300 m!1282923))

(declare-fun m!1282925 () Bool)

(assert (=> d!319300 m!1282925))

(assert (=> d!319300 m!1281815))

(declare-fun m!1282927 () Bool)

(assert (=> d!319300 m!1282927))

(assert (=> d!319300 m!1281739))

(declare-fun m!1282929 () Bool)

(assert (=> d!319300 m!1282929))

(assert (=> d!319300 m!1282927))

(declare-fun m!1282931 () Bool)

(assert (=> d!319300 m!1282931))

(assert (=> d!319300 m!1282925))

(declare-fun m!1282933 () Bool)

(assert (=> d!319300 m!1282933))

(assert (=> b!1132859 m!1281815))

(assert (=> b!1132862 m!1281957))

(assert (=> d!319008 d!319300))

(declare-fun d!319304 () Bool)

(declare-fun lt!381160 () Bool)

(declare-fun e!723910 () Bool)

(assert (=> d!319304 (= lt!381160 e!723910)))

(declare-fun res!509413 () Bool)

(assert (=> d!319304 (=> (not res!509413) (not e!723910))))

(declare-datatypes ((tuple2!11922 0))(
  ( (tuple2!11923 (_1!6808 BalanceConc!7020) (_2!6808 BalanceConc!7018)) )
))
(declare-fun lex!660 (LexerInterface!1597 List!10992 BalanceConc!7018) tuple2!11922)

(declare-fun print!597 (LexerInterface!1597 BalanceConc!7020) BalanceConc!7018)

(declare-fun singletonSeq!605 (Token!3444) BalanceConc!7020)

(assert (=> d!319304 (= res!509413 (= (list!3976 (_1!6808 (lex!660 lt!380565 (rules!9226 pt!21) (print!597 lt!380565 (singletonSeq!605 (h!16368 lt!380574)))))) (list!3976 (singletonSeq!605 (h!16368 lt!380574)))))))

(declare-fun e!723911 () Bool)

(assert (=> d!319304 (= lt!381160 e!723911)))

(declare-fun res!509414 () Bool)

(assert (=> d!319304 (=> (not res!509414) (not e!723911))))

(declare-fun lt!381161 () tuple2!11922)

(assert (=> d!319304 (= res!509414 (= (size!8560 (_1!6808 lt!381161)) 1))))

(assert (=> d!319304 (= lt!381161 (lex!660 lt!380565 (rules!9226 pt!21) (print!597 lt!380565 (singletonSeq!605 (h!16368 lt!380574)))))))

(assert (=> d!319304 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319304 (= (rulesProduceIndividualToken!644 lt!380565 (rules!9226 pt!21) (h!16368 lt!380574)) lt!381160)))

(declare-fun b!1132940 () Bool)

(declare-fun res!509412 () Bool)

(assert (=> b!1132940 (=> (not res!509412) (not e!723911))))

(assert (=> b!1132940 (= res!509412 (= (apply!2280 (_1!6808 lt!381161) 0) (h!16368 lt!380574)))))

(declare-fun b!1132941 () Bool)

(declare-fun isEmpty!6804 (BalanceConc!7018) Bool)

(assert (=> b!1132941 (= e!723911 (isEmpty!6804 (_2!6808 lt!381161)))))

(declare-fun b!1132942 () Bool)

(assert (=> b!1132942 (= e!723910 (isEmpty!6804 (_2!6808 (lex!660 lt!380565 (rules!9226 pt!21) (print!597 lt!380565 (singletonSeq!605 (h!16368 lt!380574)))))))))

(assert (= (and d!319304 res!509414) b!1132940))

(assert (= (and b!1132940 res!509412) b!1132941))

(assert (= (and d!319304 res!509413) b!1132942))

(assert (=> d!319304 m!1281957))

(declare-fun m!1283013 () Bool)

(assert (=> d!319304 m!1283013))

(declare-fun m!1283015 () Bool)

(assert (=> d!319304 m!1283015))

(assert (=> d!319304 m!1283013))

(declare-fun m!1283017 () Bool)

(assert (=> d!319304 m!1283017))

(assert (=> d!319304 m!1283013))

(declare-fun m!1283019 () Bool)

(assert (=> d!319304 m!1283019))

(declare-fun m!1283021 () Bool)

(assert (=> d!319304 m!1283021))

(assert (=> d!319304 m!1283015))

(declare-fun m!1283023 () Bool)

(assert (=> d!319304 m!1283023))

(declare-fun m!1283025 () Bool)

(assert (=> b!1132940 m!1283025))

(declare-fun m!1283027 () Bool)

(assert (=> b!1132941 m!1283027))

(assert (=> b!1132942 m!1283013))

(assert (=> b!1132942 m!1283013))

(assert (=> b!1132942 m!1283015))

(assert (=> b!1132942 m!1283015))

(assert (=> b!1132942 m!1283023))

(declare-fun m!1283029 () Bool)

(assert (=> b!1132942 m!1283029))

(assert (=> b!1132053 d!319304))

(assert (=> b!1132055 d!319166))

(declare-fun d!319338 () Bool)

(declare-fun res!509415 () Bool)

(declare-fun e!723912 () Bool)

(assert (=> d!319338 (=> res!509415 e!723912)))

(assert (=> d!319338 (= res!509415 ((_ is Nil!10967) lt!380616))))

(assert (=> d!319338 (= (forall!2658 lt!380616 lambda!45591) e!723912)))

(declare-fun b!1132943 () Bool)

(declare-fun e!723913 () Bool)

(assert (=> b!1132943 (= e!723912 e!723913)))

(declare-fun res!509416 () Bool)

(assert (=> b!1132943 (=> (not res!509416) (not e!723913))))

(assert (=> b!1132943 (= res!509416 (dynLambda!4838 lambda!45591 (h!16368 lt!380616)))))

(declare-fun b!1132944 () Bool)

(assert (=> b!1132944 (= e!723913 (forall!2658 (t!106951 lt!380616) lambda!45591))))

(assert (= (and d!319338 (not res!509415)) b!1132943))

(assert (= (and b!1132943 res!509416) b!1132944))

(declare-fun b_lambda!33313 () Bool)

(assert (=> (not b_lambda!33313) (not b!1132943)))

(declare-fun m!1283031 () Bool)

(assert (=> b!1132943 m!1283031))

(declare-fun m!1283033 () Bool)

(assert (=> b!1132944 m!1283033))

(assert (=> b!1132055 d!319338))

(declare-fun d!319340 () Bool)

(assert (=> d!319340 (subseq!174 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) lt!380549)))

(declare-fun lt!381162 () Unit!16686)

(assert (=> d!319340 (= lt!381162 (choose!7252 lt!380549 (ite c!189631 lt!380179 lt!380178)))))

(assert (=> d!319340 (= (lemmaDropSubseq!15 lt!380549 (ite c!189631 lt!380179 lt!380178)) lt!381162)))

(declare-fun bs!277934 () Bool)

(assert (= bs!277934 d!319340))

(assert (=> bs!277934 m!1281681))

(assert (=> bs!277934 m!1281681))

(assert (=> bs!277934 m!1281683))

(declare-fun m!1283035 () Bool)

(assert (=> bs!277934 m!1283035))

(assert (=> b!1132055 d!319340))

(declare-fun b!1132947 () Bool)

(declare-fun e!723917 () Bool)

(assert (=> b!1132947 (= e!723917 (subseq!174 (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))) (t!106951 lt!380549)))))

(declare-fun e!723916 () Bool)

(declare-fun b!1132948 () Bool)

(assert (=> b!1132948 (= e!723916 (subseq!174 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) (t!106951 lt!380549)))))

(declare-fun d!319342 () Bool)

(declare-fun res!509419 () Bool)

(declare-fun e!723915 () Bool)

(assert (=> d!319342 (=> res!509419 e!723915)))

(assert (=> d!319342 (= res!509419 ((_ is Nil!10967) (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))))))

(assert (=> d!319342 (= (subseq!174 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) lt!380549) e!723915)))

(declare-fun b!1132945 () Bool)

(declare-fun e!723914 () Bool)

(assert (=> b!1132945 (= e!723915 e!723914)))

(declare-fun res!509418 () Bool)

(assert (=> b!1132945 (=> (not res!509418) (not e!723914))))

(assert (=> b!1132945 (= res!509418 ((_ is Cons!10967) lt!380549))))

(declare-fun b!1132946 () Bool)

(assert (=> b!1132946 (= e!723914 e!723916)))

(declare-fun res!509417 () Bool)

(assert (=> b!1132946 (=> res!509417 e!723916)))

(assert (=> b!1132946 (= res!509417 e!723917)))

(declare-fun res!509420 () Bool)

(assert (=> b!1132946 (=> (not res!509420) (not e!723917))))

(assert (=> b!1132946 (= res!509420 (= (h!16368 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))) (h!16368 lt!380549)))))

(assert (= (and d!319342 (not res!509419)) b!1132945))

(assert (= (and b!1132945 res!509418) b!1132946))

(assert (= (and b!1132946 res!509420) b!1132947))

(assert (= (and b!1132946 (not res!509417)) b!1132948))

(declare-fun m!1283037 () Bool)

(assert (=> b!1132947 m!1283037))

(assert (=> b!1132948 m!1281681))

(declare-fun m!1283039 () Bool)

(assert (=> b!1132948 m!1283039))

(assert (=> b!1132055 d!319342))

(declare-fun d!319344 () Bool)

(declare-fun res!509478 () Bool)

(declare-fun e!723987 () Bool)

(assert (=> d!319344 (=> res!509478 e!723987)))

(assert (=> d!319344 (= res!509478 (or (not ((_ is Cons!10967) (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))) (not ((_ is Cons!10967) (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))))))

(assert (=> d!319344 (= (tokensListTwoByTwoPredicateSeparableList!71 lt!380592 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) (rules!9226 pt!21)) e!723987)))

(declare-fun b!1133057 () Bool)

(declare-fun e!723988 () Bool)

(assert (=> b!1133057 (= e!723987 e!723988)))

(declare-fun res!509477 () Bool)

(assert (=> b!1133057 (=> (not res!509477) (not e!723988))))

(assert (=> b!1133057 (= res!509477 (separableTokensPredicate!95 lt!380592 (h!16368 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))) (h!16368 (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))) (rules!9226 pt!21)))))

(declare-fun lt!381202 () Unit!16686)

(declare-fun Unit!16719 () Unit!16686)

(assert (=> b!1133057 (= lt!381202 Unit!16719)))

(assert (=> b!1133057 (> (size!8559 (charsOf!1033 (h!16368 (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))) 0)))

(declare-fun lt!381199 () Unit!16686)

(declare-fun Unit!16720 () Unit!16686)

(assert (=> b!1133057 (= lt!381199 Unit!16720)))

(assert (=> b!1133057 (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))))

(declare-fun lt!381200 () Unit!16686)

(declare-fun Unit!16721 () Unit!16686)

(assert (=> b!1133057 (= lt!381200 Unit!16721)))

(assert (=> b!1133057 (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))))))

(declare-fun lt!381201 () Unit!16686)

(declare-fun lt!381197 () Unit!16686)

(assert (=> b!1133057 (= lt!381201 lt!381197)))

(assert (=> b!1133057 (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))))

(assert (=> b!1133057 (= lt!381197 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380592 (rules!9226 pt!21) (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) (h!16368 (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))))))))

(declare-fun lt!381203 () Unit!16686)

(declare-fun lt!381198 () Unit!16686)

(assert (=> b!1133057 (= lt!381203 lt!381198)))

(assert (=> b!1133057 (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))))))

(assert (=> b!1133057 (= lt!381198 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380592 (rules!9226 pt!21) (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)) (h!16368 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))))))

(declare-fun b!1133058 () Bool)

(assert (=> b!1133058 (= e!723988 (tokensListTwoByTwoPredicateSeparableList!71 lt!380592 (Cons!10967 (h!16368 (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178)))) (t!106951 (t!106951 (drop!419 lt!380549 (ite c!189631 lt!380179 lt!380178))))) (rules!9226 pt!21)))))

(assert (= (and d!319344 (not res!509478)) b!1133057))

(assert (= (and b!1133057 res!509477) b!1133058))

(assert (=> b!1133057 m!1281681))

(declare-fun m!1283165 () Bool)

(assert (=> b!1133057 m!1283165))

(assert (=> b!1133057 m!1281681))

(declare-fun m!1283167 () Bool)

(assert (=> b!1133057 m!1283167))

(declare-fun m!1283169 () Bool)

(assert (=> b!1133057 m!1283169))

(declare-fun m!1283171 () Bool)

(assert (=> b!1133057 m!1283171))

(assert (=> b!1133057 m!1283169))

(declare-fun m!1283173 () Bool)

(assert (=> b!1133057 m!1283173))

(declare-fun m!1283175 () Bool)

(assert (=> b!1133057 m!1283175))

(assert (=> b!1133057 m!1282299))

(declare-fun m!1283177 () Bool)

(assert (=> b!1133058 m!1283177))

(assert (=> b!1132055 d!319344))

(declare-fun d!319390 () Bool)

(assert (=> d!319390 (forall!2658 lt!380616 lambda!45591)))

(declare-fun lt!381204 () Unit!16686)

(assert (=> d!319390 (= lt!381204 (choose!7249 lt!380616 lt!380549 lambda!45591))))

(assert (=> d!319390 (forall!2658 lt!380549 lambda!45591)))

(assert (=> d!319390 (= (lemmaForallSubseq!74 lt!380616 lt!380549 lambda!45591) lt!381204)))

(declare-fun bs!277966 () Bool)

(assert (= bs!277966 d!319390))

(assert (=> bs!277966 m!1281691))

(declare-fun m!1283179 () Bool)

(assert (=> bs!277966 m!1283179))

(declare-fun m!1283181 () Bool)

(assert (=> bs!277966 m!1283181))

(assert (=> b!1132055 d!319390))

(declare-fun d!319392 () Bool)

(declare-fun res!509485 () Bool)

(declare-fun e!723991 () Bool)

(assert (=> d!319392 (=> (not res!509485) (not e!723991))))

(declare-fun size!8570 (Conc!3501) Int)

(assert (=> d!319392 (= res!509485 (= (csize!7232 (c!189636 acc!225)) (+ (size!8570 (left!9524 (c!189636 acc!225))) (size!8570 (right!9854 (c!189636 acc!225))))))))

(assert (=> d!319392 (= (inv!14207 (c!189636 acc!225)) e!723991)))

(declare-fun b!1133065 () Bool)

(declare-fun res!509486 () Bool)

(assert (=> b!1133065 (=> (not res!509486) (not e!723991))))

(assert (=> b!1133065 (= res!509486 (and (not (= (left!9524 (c!189636 acc!225)) Empty!3501)) (not (= (right!9854 (c!189636 acc!225)) Empty!3501))))))

(declare-fun b!1133066 () Bool)

(declare-fun res!509487 () Bool)

(assert (=> b!1133066 (=> (not res!509487) (not e!723991))))

(declare-fun height!456 (Conc!3501) Int)

(assert (=> b!1133066 (= res!509487 (= (cheight!3712 (c!189636 acc!225)) (+ (max!0 (height!456 (left!9524 (c!189636 acc!225))) (height!456 (right!9854 (c!189636 acc!225)))) 1)))))

(declare-fun b!1133067 () Bool)

(assert (=> b!1133067 (= e!723991 (<= 0 (cheight!3712 (c!189636 acc!225))))))

(assert (= (and d!319392 res!509485) b!1133065))

(assert (= (and b!1133065 res!509486) b!1133066))

(assert (= (and b!1133066 res!509487) b!1133067))

(declare-fun m!1283183 () Bool)

(assert (=> d!319392 m!1283183))

(declare-fun m!1283185 () Bool)

(assert (=> d!319392 m!1283185))

(declare-fun m!1283187 () Bool)

(assert (=> b!1133066 m!1283187))

(declare-fun m!1283189 () Bool)

(assert (=> b!1133066 m!1283189))

(assert (=> b!1133066 m!1283187))

(assert (=> b!1133066 m!1283189))

(declare-fun m!1283191 () Bool)

(assert (=> b!1133066 m!1283191))

(assert (=> b!1131945 d!319392))

(declare-fun d!319394 () Bool)

(declare-fun res!509492 () Bool)

(declare-fun e!723994 () Bool)

(assert (=> d!319394 (=> (not res!509492) (not e!723994))))

(declare-fun list!3985 (IArray!7007) List!10994)

(assert (=> d!319394 (= res!509492 (<= (size!8563 (list!3985 (xs!6194 (c!189636 acc!225)))) 512))))

(assert (=> d!319394 (= (inv!14208 (c!189636 acc!225)) e!723994)))

(declare-fun b!1133072 () Bool)

(declare-fun res!509493 () Bool)

(assert (=> b!1133072 (=> (not res!509493) (not e!723994))))

(assert (=> b!1133072 (= res!509493 (= (csize!7233 (c!189636 acc!225)) (size!8563 (list!3985 (xs!6194 (c!189636 acc!225))))))))

(declare-fun b!1133073 () Bool)

(assert (=> b!1133073 (= e!723994 (and (> (csize!7233 (c!189636 acc!225)) 0) (<= (csize!7233 (c!189636 acc!225)) 512)))))

(assert (= (and d!319394 res!509492) b!1133072))

(assert (= (and b!1133072 res!509493) b!1133073))

(declare-fun m!1283193 () Bool)

(assert (=> d!319394 m!1283193))

(assert (=> d!319394 m!1283193))

(declare-fun m!1283195 () Bool)

(assert (=> d!319394 m!1283195))

(assert (=> b!1133072 m!1283193))

(assert (=> b!1133072 m!1283193))

(assert (=> b!1133072 m!1283195))

(assert (=> b!1131947 d!319394))

(declare-fun b!1133086 () Bool)

(declare-fun res!509507 () Bool)

(declare-fun e!724000 () Bool)

(assert (=> b!1133086 (=> (not res!509507) (not e!724000))))

(assert (=> b!1133086 (= res!509507 (<= (- (height!456 (left!9524 (c!189636 acc!225))) (height!456 (right!9854 (c!189636 acc!225)))) 1))))

(declare-fun b!1133087 () Bool)

(declare-fun res!509511 () Bool)

(assert (=> b!1133087 (=> (not res!509511) (not e!724000))))

(assert (=> b!1133087 (= res!509511 (isBalanced!971 (right!9854 (c!189636 acc!225))))))

(declare-fun d!319396 () Bool)

(declare-fun res!509506 () Bool)

(declare-fun e!723999 () Bool)

(assert (=> d!319396 (=> res!509506 e!723999)))

(assert (=> d!319396 (= res!509506 (not ((_ is Node!3501) (c!189636 acc!225))))))

(assert (=> d!319396 (= (isBalanced!971 (c!189636 acc!225)) e!723999)))

(declare-fun b!1133088 () Bool)

(declare-fun isEmpty!6805 (Conc!3501) Bool)

(assert (=> b!1133088 (= e!724000 (not (isEmpty!6805 (right!9854 (c!189636 acc!225)))))))

(declare-fun b!1133089 () Bool)

(assert (=> b!1133089 (= e!723999 e!724000)))

(declare-fun res!509510 () Bool)

(assert (=> b!1133089 (=> (not res!509510) (not e!724000))))

(assert (=> b!1133089 (= res!509510 (<= (- 1) (- (height!456 (left!9524 (c!189636 acc!225))) (height!456 (right!9854 (c!189636 acc!225))))))))

(declare-fun b!1133090 () Bool)

(declare-fun res!509509 () Bool)

(assert (=> b!1133090 (=> (not res!509509) (not e!724000))))

(assert (=> b!1133090 (= res!509509 (not (isEmpty!6805 (left!9524 (c!189636 acc!225)))))))

(declare-fun b!1133091 () Bool)

(declare-fun res!509508 () Bool)

(assert (=> b!1133091 (=> (not res!509508) (not e!724000))))

(assert (=> b!1133091 (= res!509508 (isBalanced!971 (left!9524 (c!189636 acc!225))))))

(assert (= (and d!319396 (not res!509506)) b!1133089))

(assert (= (and b!1133089 res!509510) b!1133086))

(assert (= (and b!1133086 res!509507) b!1133091))

(assert (= (and b!1133091 res!509508) b!1133087))

(assert (= (and b!1133087 res!509511) b!1133090))

(assert (= (and b!1133090 res!509509) b!1133088))

(assert (=> b!1133089 m!1283187))

(assert (=> b!1133089 m!1283189))

(declare-fun m!1283197 () Bool)

(assert (=> b!1133090 m!1283197))

(declare-fun m!1283199 () Bool)

(assert (=> b!1133088 m!1283199))

(declare-fun m!1283201 () Bool)

(assert (=> b!1133087 m!1283201))

(declare-fun m!1283203 () Bool)

(assert (=> b!1133091 m!1283203))

(assert (=> b!1133086 m!1283187))

(assert (=> b!1133086 m!1283189))

(assert (=> d!319086 d!319396))

(declare-fun bs!277967 () Bool)

(declare-fun d!319398 () Bool)

(assert (= bs!277967 (and d!319398 d!319150)))

(declare-fun lambda!45624 () Int)

(assert (=> bs!277967 (= (= lt!380565 lt!380592) (= lambda!45624 lambda!45607))))

(declare-fun bs!277968 () Bool)

(assert (= bs!277968 (and d!319398 d!319134)))

(assert (=> bs!277968 (= (= lt!380565 Lexer!1595) (= lambda!45624 lambda!45603))))

(declare-fun bs!277969 () Bool)

(assert (= bs!277969 (and d!319398 b!1132472)))

(assert (=> bs!277969 (= (= lt!380565 Lexer!1595) (= lambda!45624 lambda!45606))))

(declare-fun bs!277970 () Bool)

(assert (= bs!277970 (and d!319398 d!319202)))

(assert (=> bs!277970 (= (= lt!380565 lt!380563) (= lambda!45624 lambda!45610))))

(declare-fun bs!277971 () Bool)

(assert (= bs!277971 (and d!319398 d!319152)))

(assert (=> bs!277971 (= (= lt!380565 Lexer!1595) (= lambda!45624 lambda!45608))))

(declare-fun bs!277972 () Bool)

(assert (= bs!277972 (and d!319398 b!1132708)))

(assert (=> bs!277972 (= (= lt!380565 Lexer!1595) (= lambda!45624 lambda!45613))))

(declare-fun bs!277973 () Bool)

(assert (= bs!277973 (and d!319398 d!319098)))

(assert (=> bs!277973 (= (= lt!380565 Lexer!1595) (= lambda!45624 lambda!45600))))

(declare-fun bs!277974 () Bool)

(assert (= bs!277974 (and d!319398 d!319158)))

(assert (=> bs!277974 (= (= lt!380565 Lexer!1595) (= lambda!45624 lambda!45609))))

(declare-fun bs!277975 () Bool)

(assert (= bs!277975 (and d!319398 d!319008)))

(assert (=> bs!277975 (= (= lt!380565 Lexer!1595) (= lambda!45624 lambda!45591))))

(declare-fun b!1133096 () Bool)

(declare-fun e!724005 () Bool)

(assert (=> b!1133096 (= e!724005 true)))

(declare-fun b!1133095 () Bool)

(declare-fun e!724004 () Bool)

(assert (=> b!1133095 (= e!724004 e!724005)))

(declare-fun b!1133094 () Bool)

(declare-fun e!724003 () Bool)

(assert (=> b!1133094 (= e!724003 e!724004)))

(assert (=> d!319398 e!724003))

(assert (= b!1133095 b!1133096))

(assert (= b!1133094 b!1133095))

(assert (= (and d!319398 ((_ is Cons!10968) (rules!9226 pt!21))) b!1133094))

(assert (=> b!1133096 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45624))))

(assert (=> b!1133096 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45624))))

(assert (=> d!319398 true))

(declare-fun lt!381205 () Bool)

(assert (=> d!319398 (= lt!381205 (forall!2658 (t!106951 lt!380574) lambda!45624))))

(declare-fun e!724001 () Bool)

(assert (=> d!319398 (= lt!381205 e!724001)))

(declare-fun res!509513 () Bool)

(assert (=> d!319398 (=> res!509513 e!724001)))

(assert (=> d!319398 (= res!509513 (not ((_ is Cons!10967) (t!106951 lt!380574))))))

(assert (=> d!319398 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319398 (= (rulesProduceEachTokenIndividuallyList!472 lt!380565 (rules!9226 pt!21) (t!106951 lt!380574)) lt!381205)))

(declare-fun b!1133092 () Bool)

(declare-fun e!724002 () Bool)

(assert (=> b!1133092 (= e!724001 e!724002)))

(declare-fun res!509512 () Bool)

(assert (=> b!1133092 (=> (not res!509512) (not e!724002))))

(assert (=> b!1133092 (= res!509512 (rulesProduceIndividualToken!644 lt!380565 (rules!9226 pt!21) (h!16368 (t!106951 lt!380574))))))

(declare-fun b!1133093 () Bool)

(assert (=> b!1133093 (= e!724002 (rulesProduceEachTokenIndividuallyList!472 lt!380565 (rules!9226 pt!21) (t!106951 (t!106951 lt!380574))))))

(assert (= (and d!319398 (not res!509513)) b!1133092))

(assert (= (and b!1133092 res!509512) b!1133093))

(declare-fun m!1283205 () Bool)

(assert (=> d!319398 m!1283205))

(assert (=> d!319398 m!1281957))

(declare-fun m!1283207 () Bool)

(assert (=> b!1133092 m!1283207))

(declare-fun m!1283209 () Bool)

(assert (=> b!1133093 m!1283209))

(assert (=> b!1132048 d!319398))

(assert (=> b!1131924 d!319028))

(declare-fun d!319400 () Bool)

(assert (=> d!319400 (= (list!3976 (tokens!1456 lt!380570)) (list!3984 (c!189634 (tokens!1456 lt!380570))))))

(declare-fun bs!277976 () Bool)

(assert (= bs!277976 d!319400))

(declare-fun m!1283211 () Bool)

(assert (=> bs!277976 m!1283211))

(assert (=> b!1132050 d!319400))

(assert (=> b!1132050 d!319288))

(assert (=> b!1132050 d!319160))

(declare-fun b!1133106 () Bool)

(declare-fun e!724010 () List!10994)

(declare-fun e!724011 () List!10994)

(assert (=> b!1133106 (= e!724010 e!724011)))

(declare-fun c!189810 () Bool)

(assert (=> b!1133106 (= c!189810 ((_ is Leaf!5457) (c!189636 acc!225)))))

(declare-fun b!1133107 () Bool)

(assert (=> b!1133107 (= e!724011 (list!3985 (xs!6194 (c!189636 acc!225))))))

(declare-fun b!1133105 () Bool)

(assert (=> b!1133105 (= e!724010 Nil!10970)))

(declare-fun d!319402 () Bool)

(declare-fun c!189809 () Bool)

(assert (=> d!319402 (= c!189809 ((_ is Empty!3501) (c!189636 acc!225)))))

(assert (=> d!319402 (= (list!3978 (c!189636 acc!225)) e!724010)))

(declare-fun b!1133108 () Bool)

(assert (=> b!1133108 (= e!724011 (++!2915 (list!3978 (left!9524 (c!189636 acc!225))) (list!3978 (right!9854 (c!189636 acc!225)))))))

(assert (= (and d!319402 c!189809) b!1133105))

(assert (= (and d!319402 (not c!189809)) b!1133106))

(assert (= (and b!1133106 c!189810) b!1133107))

(assert (= (and b!1133106 (not c!189810)) b!1133108))

(assert (=> b!1133107 m!1283193))

(declare-fun m!1283213 () Bool)

(assert (=> b!1133108 m!1283213))

(declare-fun m!1283215 () Bool)

(assert (=> b!1133108 m!1283215))

(assert (=> b!1133108 m!1283213))

(assert (=> b!1133108 m!1283215))

(declare-fun m!1283217 () Bool)

(assert (=> b!1133108 m!1283217))

(assert (=> d!319054 d!319402))

(declare-fun d!319404 () Bool)

(declare-fun lt!381206 () Bool)

(declare-fun e!724012 () Bool)

(assert (=> d!319404 (= lt!381206 e!724012)))

(declare-fun res!509515 () Bool)

(assert (=> d!319404 (=> (not res!509515) (not e!724012))))

(assert (=> d!319404 (= res!509515 (= (list!3976 (_1!6808 (lex!660 lt!380592 (rules!9226 pt!21) (print!597 lt!380592 (singletonSeq!605 (h!16368 lt!380584)))))) (list!3976 (singletonSeq!605 (h!16368 lt!380584)))))))

(declare-fun e!724013 () Bool)

(assert (=> d!319404 (= lt!381206 e!724013)))

(declare-fun res!509516 () Bool)

(assert (=> d!319404 (=> (not res!509516) (not e!724013))))

(declare-fun lt!381207 () tuple2!11922)

(assert (=> d!319404 (= res!509516 (= (size!8560 (_1!6808 lt!381207)) 1))))

(assert (=> d!319404 (= lt!381207 (lex!660 lt!380592 (rules!9226 pt!21) (print!597 lt!380592 (singletonSeq!605 (h!16368 lt!380584)))))))

(assert (=> d!319404 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319404 (= (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 lt!380584)) lt!381206)))

(declare-fun b!1133109 () Bool)

(declare-fun res!509514 () Bool)

(assert (=> b!1133109 (=> (not res!509514) (not e!724013))))

(assert (=> b!1133109 (= res!509514 (= (apply!2280 (_1!6808 lt!381207) 0) (h!16368 lt!380584)))))

(declare-fun b!1133110 () Bool)

(assert (=> b!1133110 (= e!724013 (isEmpty!6804 (_2!6808 lt!381207)))))

(declare-fun b!1133111 () Bool)

(assert (=> b!1133111 (= e!724012 (isEmpty!6804 (_2!6808 (lex!660 lt!380592 (rules!9226 pt!21) (print!597 lt!380592 (singletonSeq!605 (h!16368 lt!380584)))))))))

(assert (= (and d!319404 res!509516) b!1133109))

(assert (= (and b!1133109 res!509514) b!1133110))

(assert (= (and d!319404 res!509515) b!1133111))

(assert (=> d!319404 m!1281957))

(declare-fun m!1283219 () Bool)

(assert (=> d!319404 m!1283219))

(declare-fun m!1283221 () Bool)

(assert (=> d!319404 m!1283221))

(assert (=> d!319404 m!1283219))

(declare-fun m!1283223 () Bool)

(assert (=> d!319404 m!1283223))

(assert (=> d!319404 m!1283219))

(declare-fun m!1283225 () Bool)

(assert (=> d!319404 m!1283225))

(declare-fun m!1283227 () Bool)

(assert (=> d!319404 m!1283227))

(assert (=> d!319404 m!1283221))

(declare-fun m!1283229 () Bool)

(assert (=> d!319404 m!1283229))

(declare-fun m!1283231 () Bool)

(assert (=> b!1133109 m!1283231))

(declare-fun m!1283233 () Bool)

(assert (=> b!1133110 m!1283233))

(assert (=> b!1133111 m!1283219))

(assert (=> b!1133111 m!1283219))

(assert (=> b!1133111 m!1283221))

(assert (=> b!1133111 m!1283221))

(assert (=> b!1133111 m!1283229))

(declare-fun m!1283235 () Bool)

(assert (=> b!1133111 m!1283235))

(assert (=> b!1132052 d!319404))

(declare-fun d!319406 () Bool)

(declare-fun c!189811 () Bool)

(assert (=> d!319406 (= c!189811 ((_ is Node!3500) (left!9523 (c!189635 indices!2))))))

(declare-fun e!724014 () Bool)

(assert (=> d!319406 (= (inv!14197 (left!9523 (c!189635 indices!2))) e!724014)))

(declare-fun b!1133112 () Bool)

(assert (=> b!1133112 (= e!724014 (inv!14217 (left!9523 (c!189635 indices!2))))))

(declare-fun b!1133113 () Bool)

(declare-fun e!724015 () Bool)

(assert (=> b!1133113 (= e!724014 e!724015)))

(declare-fun res!509517 () Bool)

(assert (=> b!1133113 (= res!509517 (not ((_ is Leaf!5456) (left!9523 (c!189635 indices!2)))))))

(assert (=> b!1133113 (=> res!509517 e!724015)))

(declare-fun b!1133114 () Bool)

(assert (=> b!1133114 (= e!724015 (inv!14218 (left!9523 (c!189635 indices!2))))))

(assert (= (and d!319406 c!189811) b!1133112))

(assert (= (and d!319406 (not c!189811)) b!1133113))

(assert (= (and b!1133113 (not res!509517)) b!1133114))

(declare-fun m!1283237 () Bool)

(assert (=> b!1133112 m!1283237))

(declare-fun m!1283239 () Bool)

(assert (=> b!1133114 m!1283239))

(assert (=> b!1132194 d!319406))

(declare-fun d!319408 () Bool)

(declare-fun c!189812 () Bool)

(assert (=> d!319408 (= c!189812 ((_ is Node!3500) (right!9853 (c!189635 indices!2))))))

(declare-fun e!724016 () Bool)

(assert (=> d!319408 (= (inv!14197 (right!9853 (c!189635 indices!2))) e!724016)))

(declare-fun b!1133115 () Bool)

(assert (=> b!1133115 (= e!724016 (inv!14217 (right!9853 (c!189635 indices!2))))))

(declare-fun b!1133116 () Bool)

(declare-fun e!724017 () Bool)

(assert (=> b!1133116 (= e!724016 e!724017)))

(declare-fun res!509518 () Bool)

(assert (=> b!1133116 (= res!509518 (not ((_ is Leaf!5456) (right!9853 (c!189635 indices!2)))))))

(assert (=> b!1133116 (=> res!509518 e!724017)))

(declare-fun b!1133117 () Bool)

(assert (=> b!1133117 (= e!724017 (inv!14218 (right!9853 (c!189635 indices!2))))))

(assert (= (and d!319408 c!189812) b!1133115))

(assert (= (and d!319408 (not c!189812)) b!1133116))

(assert (= (and b!1133116 (not res!509518)) b!1133117))

(declare-fun m!1283241 () Bool)

(assert (=> b!1133115 m!1283241))

(declare-fun m!1283243 () Bool)

(assert (=> b!1133117 m!1283243))

(assert (=> b!1132194 d!319408))

(declare-fun d!319410 () Bool)

(assert (=> d!319410 (= (head!2057 (drop!419 lt!380596 lt!380604)) (h!16368 (drop!419 lt!380596 lt!380604)))))

(assert (=> b!1132042 d!319410))

(declare-fun d!319412 () Bool)

(declare-fun prefixMatchZipperSequence!67 (Regex!3161 BalanceConc!7018) Bool)

(declare-fun rulesRegex!48 (LexerInterface!1597 List!10992) Regex!3161)

(declare-fun ++!2917 (BalanceConc!7018 BalanceConc!7018) BalanceConc!7018)

(declare-fun singletonSeq!607 ((_ BitVec 16)) BalanceConc!7018)

(declare-fun apply!2286 (BalanceConc!7018 Int) (_ BitVec 16))

(assert (=> d!319412 (= (separableTokensPredicate!95 lt!380588 (apply!2280 (tokens!1456 pt!21) lt!380590) (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)) (rules!9226 pt!21)) (not (prefixMatchZipperSequence!67 (rulesRegex!48 lt!380588 (rules!9226 pt!21)) (++!2917 (charsOf!1033 (apply!2280 (tokens!1456 pt!21) lt!380590)) (singletonSeq!607 (apply!2286 (charsOf!1033 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))) 0))))))))

(declare-fun bs!277977 () Bool)

(assert (= bs!277977 d!319412))

(declare-fun m!1283245 () Bool)

(assert (=> bs!277977 m!1283245))

(declare-fun m!1283247 () Bool)

(assert (=> bs!277977 m!1283247))

(declare-fun m!1283249 () Bool)

(assert (=> bs!277977 m!1283249))

(declare-fun m!1283251 () Bool)

(assert (=> bs!277977 m!1283251))

(declare-fun m!1283253 () Bool)

(assert (=> bs!277977 m!1283253))

(assert (=> bs!277977 m!1283247))

(assert (=> bs!277977 m!1281731))

(declare-fun m!1283255 () Bool)

(assert (=> bs!277977 m!1283255))

(assert (=> bs!277977 m!1283255))

(assert (=> bs!277977 m!1283253))

(assert (=> bs!277977 m!1283245))

(assert (=> bs!277977 m!1281745))

(assert (=> bs!277977 m!1283251))

(assert (=> bs!277977 m!1281709))

(assert (=> bs!277977 m!1281731))

(assert (=> b!1132042 d!319412))

(declare-fun b!1133118 () Bool)

(declare-fun e!724019 () List!10991)

(assert (=> b!1133118 (= e!724019 Nil!10967)))

(declare-fun b!1133119 () Bool)

(declare-fun e!724021 () List!10991)

(assert (=> b!1133119 (= e!724021 (drop!419 (t!106951 lt!380575) (- (+ lt!380590 1) 1)))))

(declare-fun b!1133120 () Bool)

(declare-fun e!724020 () Int)

(assert (=> b!1133120 (= e!724020 0)))

(declare-fun b!1133121 () Bool)

(declare-fun e!724022 () Int)

(declare-fun call!80727 () Int)

(assert (=> b!1133121 (= e!724022 call!80727)))

(declare-fun b!1133122 () Bool)

(assert (=> b!1133122 (= e!724020 (- call!80727 (+ lt!380590 1)))))

(declare-fun d!319414 () Bool)

(declare-fun e!724018 () Bool)

(assert (=> d!319414 e!724018))

(declare-fun res!509519 () Bool)

(assert (=> d!319414 (=> (not res!509519) (not e!724018))))

(declare-fun lt!381208 () List!10991)

(assert (=> d!319414 (= res!509519 (= ((_ map implies) (content!1574 lt!381208) (content!1574 lt!380575)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319414 (= lt!381208 e!724019)))

(declare-fun c!189815 () Bool)

(assert (=> d!319414 (= c!189815 ((_ is Nil!10967) lt!380575))))

(assert (=> d!319414 (= (drop!419 lt!380575 (+ lt!380590 1)) lt!381208)))

(declare-fun b!1133123 () Bool)

(assert (=> b!1133123 (= e!724021 lt!380575)))

(declare-fun bm!80722 () Bool)

(assert (=> bm!80722 (= call!80727 (size!8565 lt!380575))))

(declare-fun b!1133124 () Bool)

(assert (=> b!1133124 (= e!724018 (= (size!8565 lt!381208) e!724022))))

(declare-fun c!189814 () Bool)

(assert (=> b!1133124 (= c!189814 (<= (+ lt!380590 1) 0))))

(declare-fun b!1133125 () Bool)

(assert (=> b!1133125 (= e!724022 e!724020)))

(declare-fun c!189816 () Bool)

(assert (=> b!1133125 (= c!189816 (>= (+ lt!380590 1) call!80727))))

(declare-fun b!1133126 () Bool)

(assert (=> b!1133126 (= e!724019 e!724021)))

(declare-fun c!189813 () Bool)

(assert (=> b!1133126 (= c!189813 (<= (+ lt!380590 1) 0))))

(assert (= (and d!319414 c!189815) b!1133118))

(assert (= (and d!319414 (not c!189815)) b!1133126))

(assert (= (and b!1133126 c!189813) b!1133123))

(assert (= (and b!1133126 (not c!189813)) b!1133119))

(assert (= (and d!319414 res!509519) b!1133124))

(assert (= (and b!1133124 c!189814) b!1133121))

(assert (= (and b!1133124 (not c!189814)) b!1133125))

(assert (= (and b!1133125 c!189816) b!1133120))

(assert (= (and b!1133125 (not c!189816)) b!1133122))

(assert (= (or b!1133121 b!1133125 b!1133122) bm!80722))

(declare-fun m!1283257 () Bool)

(assert (=> b!1133119 m!1283257))

(declare-fun m!1283259 () Bool)

(assert (=> d!319414 m!1283259))

(declare-fun m!1283261 () Bool)

(assert (=> d!319414 m!1283261))

(declare-fun m!1283263 () Bool)

(assert (=> bm!80722 m!1283263))

(declare-fun m!1283265 () Bool)

(assert (=> b!1133124 m!1283265))

(assert (=> b!1132042 d!319414))

(declare-fun b!1133127 () Bool)

(declare-fun e!724024 () List!10991)

(assert (=> b!1133127 (= e!724024 Nil!10967)))

(declare-fun b!1133128 () Bool)

(declare-fun e!724026 () List!10991)

(assert (=> b!1133128 (= e!724026 (drop!419 (t!106951 lt!380605) (- (+ lt!380559 1) 1)))))

(declare-fun b!1133129 () Bool)

(declare-fun e!724025 () Int)

(assert (=> b!1133129 (= e!724025 0)))

(declare-fun b!1133130 () Bool)

(declare-fun e!724027 () Int)

(declare-fun call!80728 () Int)

(assert (=> b!1133130 (= e!724027 call!80728)))

(declare-fun b!1133131 () Bool)

(assert (=> b!1133131 (= e!724025 (- call!80728 (+ lt!380559 1)))))

(declare-fun d!319416 () Bool)

(declare-fun e!724023 () Bool)

(assert (=> d!319416 e!724023))

(declare-fun res!509520 () Bool)

(assert (=> d!319416 (=> (not res!509520) (not e!724023))))

(declare-fun lt!381209 () List!10991)

(assert (=> d!319416 (= res!509520 (= ((_ map implies) (content!1574 lt!381209) (content!1574 lt!380605)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319416 (= lt!381209 e!724024)))

(declare-fun c!189819 () Bool)

(assert (=> d!319416 (= c!189819 ((_ is Nil!10967) lt!380605))))

(assert (=> d!319416 (= (drop!419 lt!380605 (+ lt!380559 1)) lt!381209)))

(declare-fun b!1133132 () Bool)

(assert (=> b!1133132 (= e!724026 lt!380605)))

(declare-fun bm!80723 () Bool)

(assert (=> bm!80723 (= call!80728 (size!8565 lt!380605))))

(declare-fun b!1133133 () Bool)

(assert (=> b!1133133 (= e!724023 (= (size!8565 lt!381209) e!724027))))

(declare-fun c!189818 () Bool)

(assert (=> b!1133133 (= c!189818 (<= (+ lt!380559 1) 0))))

(declare-fun b!1133134 () Bool)

(assert (=> b!1133134 (= e!724027 e!724025)))

(declare-fun c!189820 () Bool)

(assert (=> b!1133134 (= c!189820 (>= (+ lt!380559 1) call!80728))))

(declare-fun b!1133135 () Bool)

(assert (=> b!1133135 (= e!724024 e!724026)))

(declare-fun c!189817 () Bool)

(assert (=> b!1133135 (= c!189817 (<= (+ lt!380559 1) 0))))

(assert (= (and d!319416 c!189819) b!1133127))

(assert (= (and d!319416 (not c!189819)) b!1133135))

(assert (= (and b!1133135 c!189817) b!1133132))

(assert (= (and b!1133135 (not c!189817)) b!1133128))

(assert (= (and d!319416 res!509520) b!1133133))

(assert (= (and b!1133133 c!189818) b!1133130))

(assert (= (and b!1133133 (not c!189818)) b!1133134))

(assert (= (and b!1133134 c!189820) b!1133129))

(assert (= (and b!1133134 (not c!189820)) b!1133131))

(assert (= (or b!1133130 b!1133134 b!1133131) bm!80723))

(declare-fun m!1283267 () Bool)

(assert (=> b!1133128 m!1283267))

(declare-fun m!1283269 () Bool)

(assert (=> d!319416 m!1283269))

(declare-fun m!1283271 () Bool)

(assert (=> d!319416 m!1283271))

(declare-fun m!1283273 () Bool)

(assert (=> bm!80723 m!1283273))

(declare-fun m!1283275 () Bool)

(assert (=> b!1133133 m!1283275))

(assert (=> b!1132042 d!319416))

(declare-fun b!1133136 () Bool)

(declare-fun e!724029 () List!10991)

(assert (=> b!1133136 (= e!724029 Nil!10967)))

(declare-fun b!1133137 () Bool)

(declare-fun e!724031 () List!10991)

(assert (=> b!1133137 (= e!724031 (drop!419 (t!106951 lt!380575) (- lt!380590 1)))))

(declare-fun b!1133138 () Bool)

(declare-fun e!724030 () Int)

(assert (=> b!1133138 (= e!724030 0)))

(declare-fun b!1133139 () Bool)

(declare-fun e!724032 () Int)

(declare-fun call!80729 () Int)

(assert (=> b!1133139 (= e!724032 call!80729)))

(declare-fun b!1133140 () Bool)

(assert (=> b!1133140 (= e!724030 (- call!80729 lt!380590))))

(declare-fun d!319418 () Bool)

(declare-fun e!724028 () Bool)

(assert (=> d!319418 e!724028))

(declare-fun res!509521 () Bool)

(assert (=> d!319418 (=> (not res!509521) (not e!724028))))

(declare-fun lt!381210 () List!10991)

(assert (=> d!319418 (= res!509521 (= ((_ map implies) (content!1574 lt!381210) (content!1574 lt!380575)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319418 (= lt!381210 e!724029)))

(declare-fun c!189823 () Bool)

(assert (=> d!319418 (= c!189823 ((_ is Nil!10967) lt!380575))))

(assert (=> d!319418 (= (drop!419 lt!380575 lt!380590) lt!381210)))

(declare-fun b!1133141 () Bool)

(assert (=> b!1133141 (= e!724031 lt!380575)))

(declare-fun bm!80724 () Bool)

(assert (=> bm!80724 (= call!80729 (size!8565 lt!380575))))

(declare-fun b!1133142 () Bool)

(assert (=> b!1133142 (= e!724028 (= (size!8565 lt!381210) e!724032))))

(declare-fun c!189822 () Bool)

(assert (=> b!1133142 (= c!189822 (<= lt!380590 0))))

(declare-fun b!1133143 () Bool)

(assert (=> b!1133143 (= e!724032 e!724030)))

(declare-fun c!189824 () Bool)

(assert (=> b!1133143 (= c!189824 (>= lt!380590 call!80729))))

(declare-fun b!1133144 () Bool)

(assert (=> b!1133144 (= e!724029 e!724031)))

(declare-fun c!189821 () Bool)

(assert (=> b!1133144 (= c!189821 (<= lt!380590 0))))

(assert (= (and d!319418 c!189823) b!1133136))

(assert (= (and d!319418 (not c!189823)) b!1133144))

(assert (= (and b!1133144 c!189821) b!1133141))

(assert (= (and b!1133144 (not c!189821)) b!1133137))

(assert (= (and d!319418 res!509521) b!1133142))

(assert (= (and b!1133142 c!189822) b!1133139))

(assert (= (and b!1133142 (not c!189822)) b!1133143))

(assert (= (and b!1133143 c!189824) b!1133138))

(assert (= (and b!1133143 (not c!189824)) b!1133140))

(assert (= (or b!1133139 b!1133143 b!1133140) bm!80724))

(declare-fun m!1283277 () Bool)

(assert (=> b!1133137 m!1283277))

(declare-fun m!1283279 () Bool)

(assert (=> d!319418 m!1283279))

(assert (=> d!319418 m!1283261))

(assert (=> bm!80724 m!1283263))

(declare-fun m!1283281 () Bool)

(assert (=> b!1133142 m!1283281))

(assert (=> b!1132042 d!319418))

(declare-fun d!319420 () Bool)

(declare-fun lt!381213 () Token!3444)

(declare-fun contains!1962 (List!10991 Token!3444) Bool)

(assert (=> d!319420 (contains!1962 lt!380589 lt!381213)))

(declare-fun e!724038 () Token!3444)

(assert (=> d!319420 (= lt!381213 e!724038)))

(declare-fun c!189827 () Bool)

(assert (=> d!319420 (= c!189827 (= lt!380590 0))))

(declare-fun e!724037 () Bool)

(assert (=> d!319420 e!724037))

(declare-fun res!509524 () Bool)

(assert (=> d!319420 (=> (not res!509524) (not e!724037))))

(assert (=> d!319420 (= res!509524 (<= 0 lt!380590))))

(assert (=> d!319420 (= (apply!2281 lt!380589 lt!380590) lt!381213)))

(declare-fun b!1133151 () Bool)

(assert (=> b!1133151 (= e!724037 (< lt!380590 (size!8565 lt!380589)))))

(declare-fun b!1133152 () Bool)

(assert (=> b!1133152 (= e!724038 (head!2057 lt!380589))))

(declare-fun b!1133153 () Bool)

(assert (=> b!1133153 (= e!724038 (apply!2281 (tail!1617 lt!380589) (- lt!380590 1)))))

(assert (= (and d!319420 res!509524) b!1133151))

(assert (= (and d!319420 c!189827) b!1133152))

(assert (= (and d!319420 (not c!189827)) b!1133153))

(declare-fun m!1283283 () Bool)

(assert (=> d!319420 m!1283283))

(declare-fun m!1283285 () Bool)

(assert (=> b!1133151 m!1283285))

(declare-fun m!1283287 () Bool)

(assert (=> b!1133152 m!1283287))

(declare-fun m!1283289 () Bool)

(assert (=> b!1133153 m!1283289))

(assert (=> b!1133153 m!1283289))

(declare-fun m!1283291 () Bool)

(assert (=> b!1133153 m!1283291))

(assert (=> b!1132042 d!319420))

(declare-fun d!319422 () Bool)

(declare-fun lt!381214 () Bool)

(declare-fun e!724039 () Bool)

(assert (=> d!319422 (= lt!381214 e!724039)))

(declare-fun res!509526 () Bool)

(assert (=> d!319422 (=> (not res!509526) (not e!724039))))

(assert (=> d!319422 (= res!509526 (= (list!3976 (_1!6808 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 lt!380611))))) (list!3976 (singletonSeq!605 lt!380611))))))

(declare-fun e!724040 () Bool)

(assert (=> d!319422 (= lt!381214 e!724040)))

(declare-fun res!509527 () Bool)

(assert (=> d!319422 (=> (not res!509527) (not e!724040))))

(declare-fun lt!381215 () tuple2!11922)

(assert (=> d!319422 (= res!509527 (= (size!8560 (_1!6808 lt!381215)) 1))))

(assert (=> d!319422 (= lt!381215 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 lt!380611))))))

(assert (=> d!319422 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319422 (= (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) lt!380611) lt!381214)))

(declare-fun b!1133154 () Bool)

(declare-fun res!509525 () Bool)

(assert (=> b!1133154 (=> (not res!509525) (not e!724040))))

(assert (=> b!1133154 (= res!509525 (= (apply!2280 (_1!6808 lt!381215) 0) lt!380611))))

(declare-fun b!1133155 () Bool)

(assert (=> b!1133155 (= e!724040 (isEmpty!6804 (_2!6808 lt!381215)))))

(declare-fun b!1133156 () Bool)

(assert (=> b!1133156 (= e!724039 (isEmpty!6804 (_2!6808 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 lt!380611))))))))

(assert (= (and d!319422 res!509527) b!1133154))

(assert (= (and b!1133154 res!509525) b!1133155))

(assert (= (and d!319422 res!509526) b!1133156))

(assert (=> d!319422 m!1281957))

(declare-fun m!1283293 () Bool)

(assert (=> d!319422 m!1283293))

(declare-fun m!1283295 () Bool)

(assert (=> d!319422 m!1283295))

(assert (=> d!319422 m!1283293))

(declare-fun m!1283297 () Bool)

(assert (=> d!319422 m!1283297))

(assert (=> d!319422 m!1283293))

(declare-fun m!1283299 () Bool)

(assert (=> d!319422 m!1283299))

(declare-fun m!1283301 () Bool)

(assert (=> d!319422 m!1283301))

(assert (=> d!319422 m!1283295))

(declare-fun m!1283303 () Bool)

(assert (=> d!319422 m!1283303))

(declare-fun m!1283305 () Bool)

(assert (=> b!1133154 m!1283305))

(declare-fun m!1283307 () Bool)

(assert (=> b!1133155 m!1283307))

(assert (=> b!1133156 m!1283293))

(assert (=> b!1133156 m!1283293))

(assert (=> b!1133156 m!1283295))

(assert (=> b!1133156 m!1283295))

(assert (=> b!1133156 m!1283303))

(declare-fun m!1283309 () Bool)

(assert (=> b!1133156 m!1283309))

(assert (=> b!1132042 d!319422))

(declare-fun b!1133157 () Bool)

(declare-fun e!724042 () List!10991)

(assert (=> b!1133157 (= e!724042 Nil!10967)))

(declare-fun b!1133158 () Bool)

(declare-fun e!724044 () List!10991)

(assert (=> b!1133158 (= e!724044 (drop!419 (t!106951 lt!380589) (- lt!380590 1)))))

(declare-fun b!1133159 () Bool)

(declare-fun e!724043 () Int)

(assert (=> b!1133159 (= e!724043 0)))

(declare-fun b!1133160 () Bool)

(declare-fun e!724045 () Int)

(declare-fun call!80730 () Int)

(assert (=> b!1133160 (= e!724045 call!80730)))

(declare-fun b!1133161 () Bool)

(assert (=> b!1133161 (= e!724043 (- call!80730 lt!380590))))

(declare-fun d!319424 () Bool)

(declare-fun e!724041 () Bool)

(assert (=> d!319424 e!724041))

(declare-fun res!509528 () Bool)

(assert (=> d!319424 (=> (not res!509528) (not e!724041))))

(declare-fun lt!381216 () List!10991)

(assert (=> d!319424 (= res!509528 (= ((_ map implies) (content!1574 lt!381216) (content!1574 lt!380589)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319424 (= lt!381216 e!724042)))

(declare-fun c!189830 () Bool)

(assert (=> d!319424 (= c!189830 ((_ is Nil!10967) lt!380589))))

(assert (=> d!319424 (= (drop!419 lt!380589 lt!380590) lt!381216)))

(declare-fun b!1133162 () Bool)

(assert (=> b!1133162 (= e!724044 lt!380589)))

(declare-fun bm!80725 () Bool)

(assert (=> bm!80725 (= call!80730 (size!8565 lt!380589))))

(declare-fun b!1133163 () Bool)

(assert (=> b!1133163 (= e!724041 (= (size!8565 lt!381216) e!724045))))

(declare-fun c!189829 () Bool)

(assert (=> b!1133163 (= c!189829 (<= lt!380590 0))))

(declare-fun b!1133164 () Bool)

(assert (=> b!1133164 (= e!724045 e!724043)))

(declare-fun c!189831 () Bool)

(assert (=> b!1133164 (= c!189831 (>= lt!380590 call!80730))))

(declare-fun b!1133165 () Bool)

(assert (=> b!1133165 (= e!724042 e!724044)))

(declare-fun c!189828 () Bool)

(assert (=> b!1133165 (= c!189828 (<= lt!380590 0))))

(assert (= (and d!319424 c!189830) b!1133157))

(assert (= (and d!319424 (not c!189830)) b!1133165))

(assert (= (and b!1133165 c!189828) b!1133162))

(assert (= (and b!1133165 (not c!189828)) b!1133158))

(assert (= (and d!319424 res!509528) b!1133163))

(assert (= (and b!1133163 c!189829) b!1133160))

(assert (= (and b!1133163 (not c!189829)) b!1133164))

(assert (= (and b!1133164 c!189831) b!1133159))

(assert (= (and b!1133164 (not c!189831)) b!1133161))

(assert (= (or b!1133160 b!1133164 b!1133161) bm!80725))

(declare-fun m!1283311 () Bool)

(assert (=> b!1133158 m!1283311))

(declare-fun m!1283313 () Bool)

(assert (=> d!319424 m!1283313))

(declare-fun m!1283315 () Bool)

(assert (=> d!319424 m!1283315))

(assert (=> bm!80725 m!1283285))

(declare-fun m!1283317 () Bool)

(assert (=> b!1133163 m!1283317))

(assert (=> b!1132042 d!319424))

(declare-fun d!319426 () Bool)

(declare-fun lt!381219 () Token!3444)

(assert (=> d!319426 (= lt!381219 (apply!2281 (list!3976 (tokens!1456 pt!21)) (+ lt!380590 1)))))

(declare-fun apply!2288 (Conc!3499 Int) Token!3444)

(assert (=> d!319426 (= lt!381219 (apply!2288 (c!189634 (tokens!1456 pt!21)) (+ lt!380590 1)))))

(declare-fun e!724048 () Bool)

(assert (=> d!319426 e!724048))

(declare-fun res!509531 () Bool)

(assert (=> d!319426 (=> (not res!509531) (not e!724048))))

(assert (=> d!319426 (= res!509531 (<= 0 (+ lt!380590 1)))))

(assert (=> d!319426 (= (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)) lt!381219)))

(declare-fun b!1133168 () Bool)

(assert (=> b!1133168 (= e!724048 (< (+ lt!380590 1) (size!8560 (tokens!1456 pt!21))))))

(assert (= (and d!319426 res!509531) b!1133168))

(assert (=> d!319426 m!1281739))

(assert (=> d!319426 m!1281739))

(declare-fun m!1283319 () Bool)

(assert (=> d!319426 m!1283319))

(declare-fun m!1283321 () Bool)

(assert (=> d!319426 m!1283321))

(assert (=> b!1133168 m!1281815))

(assert (=> b!1132042 d!319426))

(declare-fun d!319428 () Bool)

(assert (=> d!319428 (= (head!2057 (drop!419 lt!380589 lt!380590)) (h!16368 (drop!419 lt!380589 lt!380590)))))

(assert (=> b!1132042 d!319428))

(declare-fun d!319430 () Bool)

(declare-fun lt!381222 () BalanceConc!7018)

(declare-fun list!3987 (BalanceConc!7018) List!10990)

(assert (=> d!319430 (= (list!3987 lt!381222) (originalCharacters!2445 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))))

(declare-fun dynLambda!4842 (Int TokenValue!1957) BalanceConc!7018)

(assert (=> d!319430 (= lt!381222 (dynLambda!4842 (toChars!2839 (transformation!1891 (rule!3312 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))) (value!61890 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))))

(assert (=> d!319430 (= (charsOf!1033 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))) lt!381222)))

(declare-fun b_lambda!33319 () Bool)

(assert (=> (not b_lambda!33319) (not d!319430)))

(declare-fun tb!65043 () Bool)

(declare-fun t!107044 () Bool)

(assert (=> (and b!1132206 (= (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21)))) (toChars!2839 (transformation!1891 (rule!3312 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))) t!107044) tb!65043))

(declare-fun tp!331044 () Bool)

(declare-fun b!1133173 () Bool)

(declare-fun e!724051 () Bool)

(declare-fun inv!14225 (Conc!3498) Bool)

(assert (=> b!1133173 (= e!724051 (and (inv!14225 (c!189633 (dynLambda!4842 (toChars!2839 (transformation!1891 (rule!3312 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))) (value!61890 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))) tp!331044))))

(declare-fun result!77606 () Bool)

(declare-fun inv!14226 (BalanceConc!7018) Bool)

(assert (=> tb!65043 (= result!77606 (and (inv!14226 (dynLambda!4842 (toChars!2839 (transformation!1891 (rule!3312 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))) (value!61890 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))) e!724051))))

(assert (= tb!65043 b!1133173))

(declare-fun m!1283323 () Bool)

(assert (=> b!1133173 m!1283323))

(declare-fun m!1283325 () Bool)

(assert (=> tb!65043 m!1283325))

(assert (=> d!319430 t!107044))

(declare-fun b_and!79955 () Bool)

(assert (= b_and!79951 (and (=> t!107044 result!77606) b_and!79955)))

(declare-fun m!1283327 () Bool)

(assert (=> d!319430 m!1283327))

(declare-fun m!1283329 () Bool)

(assert (=> d!319430 m!1283329))

(assert (=> b!1132042 d!319430))

(declare-fun d!319432 () Bool)

(assert (=> d!319432 (= (tail!1617 (drop!419 lt!380575 lt!380590)) (drop!419 lt!380575 (+ lt!380590 1)))))

(declare-fun lt!381225 () Unit!16686)

(declare-fun choose!7256 (List!10991 Int) Unit!16686)

(assert (=> d!319432 (= lt!381225 (choose!7256 lt!380575 lt!380590))))

(declare-fun e!724054 () Bool)

(assert (=> d!319432 e!724054))

(declare-fun res!509534 () Bool)

(assert (=> d!319432 (=> (not res!509534) (not e!724054))))

(assert (=> d!319432 (= res!509534 (>= lt!380590 0))))

(assert (=> d!319432 (= (lemmaDropTail!324 lt!380575 lt!380590) lt!381225)))

(declare-fun b!1133176 () Bool)

(assert (=> b!1133176 (= e!724054 (< lt!380590 (size!8565 lt!380575)))))

(assert (= (and d!319432 res!509534) b!1133176))

(assert (=> d!319432 m!1281711))

(assert (=> d!319432 m!1281711))

(assert (=> d!319432 m!1281737))

(assert (=> d!319432 m!1281755))

(declare-fun m!1283331 () Bool)

(assert (=> d!319432 m!1283331))

(assert (=> b!1133176 m!1283263))

(assert (=> b!1132042 d!319432))

(declare-fun d!319434 () Bool)

(assert (=> d!319434 (= (head!2057 (drop!419 lt!380596 lt!380604)) (apply!2281 lt!380596 lt!380604))))

(declare-fun lt!381228 () Unit!16686)

(declare-fun choose!7257 (List!10991 Int) Unit!16686)

(assert (=> d!319434 (= lt!381228 (choose!7257 lt!380596 lt!380604))))

(declare-fun e!724057 () Bool)

(assert (=> d!319434 e!724057))

(declare-fun res!509537 () Bool)

(assert (=> d!319434 (=> (not res!509537) (not e!724057))))

(assert (=> d!319434 (= res!509537 (>= lt!380604 0))))

(assert (=> d!319434 (= (lemmaDropApply!336 lt!380596 lt!380604) lt!381228)))

(declare-fun b!1133179 () Bool)

(assert (=> b!1133179 (= e!724057 (< lt!380604 (size!8565 lt!380596)))))

(assert (= (and d!319434 res!509537) b!1133179))

(assert (=> d!319434 m!1281749))

(assert (=> d!319434 m!1281749))

(assert (=> d!319434 m!1281753))

(assert (=> d!319434 m!1281733))

(declare-fun m!1283333 () Bool)

(assert (=> d!319434 m!1283333))

(declare-fun m!1283335 () Bool)

(assert (=> b!1133179 m!1283335))

(assert (=> b!1132042 d!319434))

(declare-fun d!319436 () Bool)

(declare-fun lt!381229 () Bool)

(declare-fun e!724058 () Bool)

(assert (=> d!319436 (= lt!381229 e!724058)))

(declare-fun res!509539 () Bool)

(assert (=> d!319436 (=> (not res!509539) (not e!724058))))

(assert (=> d!319436 (= res!509539 (= (list!3976 (_1!6808 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 (apply!2280 (tokens!1456 pt!21) lt!380590)))))) (list!3976 (singletonSeq!605 (apply!2280 (tokens!1456 pt!21) lt!380590)))))))

(declare-fun e!724059 () Bool)

(assert (=> d!319436 (= lt!381229 e!724059)))

(declare-fun res!509540 () Bool)

(assert (=> d!319436 (=> (not res!509540) (not e!724059))))

(declare-fun lt!381230 () tuple2!11922)

(assert (=> d!319436 (= res!509540 (= (size!8560 (_1!6808 lt!381230)) 1))))

(assert (=> d!319436 (= lt!381230 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 (apply!2280 (tokens!1456 pt!21) lt!380590)))))))

(assert (=> d!319436 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319436 (= (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) (apply!2280 (tokens!1456 pt!21) lt!380590)) lt!381229)))

(declare-fun b!1133180 () Bool)

(declare-fun res!509538 () Bool)

(assert (=> b!1133180 (=> (not res!509538) (not e!724059))))

(assert (=> b!1133180 (= res!509538 (= (apply!2280 (_1!6808 lt!381230) 0) (apply!2280 (tokens!1456 pt!21) lt!380590)))))

(declare-fun b!1133181 () Bool)

(assert (=> b!1133181 (= e!724059 (isEmpty!6804 (_2!6808 lt!381230)))))

(declare-fun b!1133182 () Bool)

(assert (=> b!1133182 (= e!724058 (isEmpty!6804 (_2!6808 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 (apply!2280 (tokens!1456 pt!21) lt!380590)))))))))

(assert (= (and d!319436 res!509540) b!1133180))

(assert (= (and b!1133180 res!509538) b!1133181))

(assert (= (and d!319436 res!509539) b!1133182))

(assert (=> d!319436 m!1281957))

(declare-fun m!1283337 () Bool)

(assert (=> d!319436 m!1283337))

(declare-fun m!1283339 () Bool)

(assert (=> d!319436 m!1283339))

(assert (=> d!319436 m!1283337))

(declare-fun m!1283341 () Bool)

(assert (=> d!319436 m!1283341))

(assert (=> d!319436 m!1281745))

(assert (=> d!319436 m!1283337))

(declare-fun m!1283343 () Bool)

(assert (=> d!319436 m!1283343))

(declare-fun m!1283345 () Bool)

(assert (=> d!319436 m!1283345))

(assert (=> d!319436 m!1283339))

(declare-fun m!1283347 () Bool)

(assert (=> d!319436 m!1283347))

(declare-fun m!1283349 () Bool)

(assert (=> b!1133180 m!1283349))

(declare-fun m!1283351 () Bool)

(assert (=> b!1133181 m!1283351))

(assert (=> b!1133182 m!1281745))

(assert (=> b!1133182 m!1283337))

(assert (=> b!1133182 m!1283337))

(assert (=> b!1133182 m!1283339))

(assert (=> b!1133182 m!1283339))

(assert (=> b!1133182 m!1283347))

(declare-fun m!1283353 () Bool)

(assert (=> b!1133182 m!1283353))

(assert (=> b!1132042 d!319436))

(declare-fun d!319438 () Bool)

(assert (=> d!319438 (= (tail!1617 (drop!419 lt!380575 lt!380590)) (t!106951 (drop!419 lt!380575 lt!380590)))))

(assert (=> b!1132042 d!319438))

(declare-fun b!1133183 () Bool)

(declare-fun e!724061 () List!10991)

(assert (=> b!1133183 (= e!724061 Nil!10967)))

(declare-fun b!1133184 () Bool)

(declare-fun e!724063 () List!10991)

(assert (=> b!1133184 (= e!724063 (drop!419 (t!106951 lt!380605) (- lt!380559 1)))))

(declare-fun b!1133185 () Bool)

(declare-fun e!724062 () Int)

(assert (=> b!1133185 (= e!724062 0)))

(declare-fun b!1133186 () Bool)

(declare-fun e!724064 () Int)

(declare-fun call!80731 () Int)

(assert (=> b!1133186 (= e!724064 call!80731)))

(declare-fun b!1133187 () Bool)

(assert (=> b!1133187 (= e!724062 (- call!80731 lt!380559))))

(declare-fun d!319440 () Bool)

(declare-fun e!724060 () Bool)

(assert (=> d!319440 e!724060))

(declare-fun res!509541 () Bool)

(assert (=> d!319440 (=> (not res!509541) (not e!724060))))

(declare-fun lt!381231 () List!10991)

(assert (=> d!319440 (= res!509541 (= ((_ map implies) (content!1574 lt!381231) (content!1574 lt!380605)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319440 (= lt!381231 e!724061)))

(declare-fun c!189834 () Bool)

(assert (=> d!319440 (= c!189834 ((_ is Nil!10967) lt!380605))))

(assert (=> d!319440 (= (drop!419 lt!380605 lt!380559) lt!381231)))

(declare-fun b!1133188 () Bool)

(assert (=> b!1133188 (= e!724063 lt!380605)))

(declare-fun bm!80726 () Bool)

(assert (=> bm!80726 (= call!80731 (size!8565 lt!380605))))

(declare-fun b!1133189 () Bool)

(assert (=> b!1133189 (= e!724060 (= (size!8565 lt!381231) e!724064))))

(declare-fun c!189833 () Bool)

(assert (=> b!1133189 (= c!189833 (<= lt!380559 0))))

(declare-fun b!1133190 () Bool)

(assert (=> b!1133190 (= e!724064 e!724062)))

(declare-fun c!189835 () Bool)

(assert (=> b!1133190 (= c!189835 (>= lt!380559 call!80731))))

(declare-fun b!1133191 () Bool)

(assert (=> b!1133191 (= e!724061 e!724063)))

(declare-fun c!189832 () Bool)

(assert (=> b!1133191 (= c!189832 (<= lt!380559 0))))

(assert (= (and d!319440 c!189834) b!1133183))

(assert (= (and d!319440 (not c!189834)) b!1133191))

(assert (= (and b!1133191 c!189832) b!1133188))

(assert (= (and b!1133191 (not c!189832)) b!1133184))

(assert (= (and d!319440 res!509541) b!1133189))

(assert (= (and b!1133189 c!189833) b!1133186))

(assert (= (and b!1133189 (not c!189833)) b!1133190))

(assert (= (and b!1133190 c!189835) b!1133185))

(assert (= (and b!1133190 (not c!189835)) b!1133187))

(assert (= (or b!1133186 b!1133190 b!1133187) bm!80726))

(declare-fun m!1283355 () Bool)

(assert (=> b!1133184 m!1283355))

(declare-fun m!1283357 () Bool)

(assert (=> d!319440 m!1283357))

(assert (=> d!319440 m!1283271))

(assert (=> bm!80726 m!1283273))

(declare-fun m!1283359 () Bool)

(assert (=> b!1133189 m!1283359))

(assert (=> b!1132042 d!319440))

(declare-fun d!319442 () Bool)

(assert (=> d!319442 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) lt!380579)))

(declare-fun lt!381250 () Unit!16686)

(declare-fun choose!7259 (LexerInterface!1597 List!10992 List!10991 Token!3444) Unit!16686)

(assert (=> d!319442 (= lt!381250 (choose!7259 lt!380588 (rules!9226 pt!21) lt!380619 lt!380579))))

(assert (=> d!319442 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319442 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380588 (rules!9226 pt!21) lt!380619 lt!380579) lt!381250)))

(declare-fun bs!277988 () Bool)

(assert (= bs!277988 d!319442))

(assert (=> bs!277988 m!1281713))

(declare-fun m!1283379 () Bool)

(assert (=> bs!277988 m!1283379))

(assert (=> bs!277988 m!1281957))

(assert (=> b!1132042 d!319442))

(declare-fun d!319448 () Bool)

(assert (=> d!319448 (= (tail!1617 (drop!419 lt!380605 lt!380559)) (drop!419 lt!380605 (+ lt!380559 1)))))

(declare-fun lt!381251 () Unit!16686)

(assert (=> d!319448 (= lt!381251 (choose!7256 lt!380605 lt!380559))))

(declare-fun e!724080 () Bool)

(assert (=> d!319448 e!724080))

(declare-fun res!509554 () Bool)

(assert (=> d!319448 (=> (not res!509554) (not e!724080))))

(assert (=> d!319448 (= res!509554 (>= lt!380559 0))))

(assert (=> d!319448 (= (lemmaDropTail!324 lt!380605 lt!380559) lt!381251)))

(declare-fun b!1133207 () Bool)

(assert (=> b!1133207 (= e!724080 (< lt!380559 (size!8565 lt!380605)))))

(assert (= (and d!319448 res!509554) b!1133207))

(assert (=> d!319448 m!1281727))

(assert (=> d!319448 m!1281727))

(assert (=> d!319448 m!1281729))

(assert (=> d!319448 m!1281725))

(declare-fun m!1283381 () Bool)

(assert (=> d!319448 m!1283381))

(assert (=> b!1133207 m!1283273))

(assert (=> b!1132042 d!319448))

(declare-fun d!319450 () Bool)

(declare-fun lt!381254 () Int)

(declare-fun size!8572 (List!10990) Int)

(assert (=> d!319450 (= lt!381254 (size!8572 (list!3987 (charsOf!1033 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))))))

(declare-fun size!8573 (Conc!3498) Int)

(assert (=> d!319450 (= lt!381254 (size!8573 (c!189633 (charsOf!1033 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))))))

(assert (=> d!319450 (= (size!8559 (charsOf!1033 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))) lt!381254)))

(declare-fun bs!277989 () Bool)

(assert (= bs!277989 d!319450))

(assert (=> bs!277989 m!1281731))

(declare-fun m!1283383 () Bool)

(assert (=> bs!277989 m!1283383))

(assert (=> bs!277989 m!1283383))

(declare-fun m!1283385 () Bool)

(assert (=> bs!277989 m!1283385))

(declare-fun m!1283387 () Bool)

(assert (=> bs!277989 m!1283387))

(assert (=> b!1132042 d!319450))

(declare-fun d!319452 () Bool)

(assert (=> d!319452 (= (tail!1617 (drop!419 lt!380605 lt!380559)) (t!106951 (drop!419 lt!380605 lt!380559)))))

(assert (=> b!1132042 d!319452))

(declare-fun d!319454 () Bool)

(declare-fun lt!381255 () Bool)

(declare-fun e!724081 () Bool)

(assert (=> d!319454 (= lt!381255 e!724081)))

(declare-fun res!509556 () Bool)

(assert (=> d!319454 (=> (not res!509556) (not e!724081))))

(assert (=> d!319454 (= res!509556 (= (list!3976 (_1!6808 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))))) (list!3976 (singletonSeq!605 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))))))

(declare-fun e!724082 () Bool)

(assert (=> d!319454 (= lt!381255 e!724082)))

(declare-fun res!509557 () Bool)

(assert (=> d!319454 (=> (not res!509557) (not e!724082))))

(declare-fun lt!381256 () tuple2!11922)

(assert (=> d!319454 (= res!509557 (= (size!8560 (_1!6808 lt!381256)) 1))))

(assert (=> d!319454 (= lt!381256 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))))))

(assert (=> d!319454 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319454 (= (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))) lt!381255)))

(declare-fun b!1133208 () Bool)

(declare-fun res!509555 () Bool)

(assert (=> b!1133208 (=> (not res!509555) (not e!724082))))

(assert (=> b!1133208 (= res!509555 (= (apply!2280 (_1!6808 lt!381256) 0) (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))))

(declare-fun b!1133209 () Bool)

(assert (=> b!1133209 (= e!724082 (isEmpty!6804 (_2!6808 lt!381256)))))

(declare-fun b!1133210 () Bool)

(assert (=> b!1133210 (= e!724081 (isEmpty!6804 (_2!6808 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1))))))))))

(assert (= (and d!319454 res!509557) b!1133208))

(assert (= (and b!1133208 res!509555) b!1133209))

(assert (= (and d!319454 res!509556) b!1133210))

(assert (=> d!319454 m!1281957))

(declare-fun m!1283389 () Bool)

(assert (=> d!319454 m!1283389))

(declare-fun m!1283391 () Bool)

(assert (=> d!319454 m!1283391))

(assert (=> d!319454 m!1283389))

(declare-fun m!1283393 () Bool)

(assert (=> d!319454 m!1283393))

(assert (=> d!319454 m!1281709))

(assert (=> d!319454 m!1283389))

(declare-fun m!1283395 () Bool)

(assert (=> d!319454 m!1283395))

(declare-fun m!1283397 () Bool)

(assert (=> d!319454 m!1283397))

(assert (=> d!319454 m!1283391))

(declare-fun m!1283399 () Bool)

(assert (=> d!319454 m!1283399))

(declare-fun m!1283401 () Bool)

(assert (=> b!1133208 m!1283401))

(declare-fun m!1283403 () Bool)

(assert (=> b!1133209 m!1283403))

(assert (=> b!1133210 m!1281709))

(assert (=> b!1133210 m!1283389))

(assert (=> b!1133210 m!1283389))

(assert (=> b!1133210 m!1283391))

(assert (=> b!1133210 m!1283391))

(assert (=> b!1133210 m!1283399))

(declare-fun m!1283405 () Bool)

(assert (=> b!1133210 m!1283405))

(assert (=> b!1132042 d!319454))

(declare-fun b!1133211 () Bool)

(declare-fun e!724084 () List!10991)

(assert (=> b!1133211 (= e!724084 Nil!10967)))

(declare-fun b!1133212 () Bool)

(declare-fun e!724086 () List!10991)

(assert (=> b!1133212 (= e!724086 (drop!419 (t!106951 lt!380596) (- lt!380604 1)))))

(declare-fun b!1133213 () Bool)

(declare-fun e!724085 () Int)

(assert (=> b!1133213 (= e!724085 0)))

(declare-fun b!1133214 () Bool)

(declare-fun e!724087 () Int)

(declare-fun call!80732 () Int)

(assert (=> b!1133214 (= e!724087 call!80732)))

(declare-fun b!1133215 () Bool)

(assert (=> b!1133215 (= e!724085 (- call!80732 lt!380604))))

(declare-fun d!319456 () Bool)

(declare-fun e!724083 () Bool)

(assert (=> d!319456 e!724083))

(declare-fun res!509558 () Bool)

(assert (=> d!319456 (=> (not res!509558) (not e!724083))))

(declare-fun lt!381257 () List!10991)

(assert (=> d!319456 (= res!509558 (= ((_ map implies) (content!1574 lt!381257) (content!1574 lt!380596)) ((as const (InoxSet Token!3444)) true)))))

(assert (=> d!319456 (= lt!381257 e!724084)))

(declare-fun c!189838 () Bool)

(assert (=> d!319456 (= c!189838 ((_ is Nil!10967) lt!380596))))

(assert (=> d!319456 (= (drop!419 lt!380596 lt!380604) lt!381257)))

(declare-fun b!1133216 () Bool)

(assert (=> b!1133216 (= e!724086 lt!380596)))

(declare-fun bm!80727 () Bool)

(assert (=> bm!80727 (= call!80732 (size!8565 lt!380596))))

(declare-fun b!1133217 () Bool)

(assert (=> b!1133217 (= e!724083 (= (size!8565 lt!381257) e!724087))))

(declare-fun c!189837 () Bool)

(assert (=> b!1133217 (= c!189837 (<= lt!380604 0))))

(declare-fun b!1133218 () Bool)

(assert (=> b!1133218 (= e!724087 e!724085)))

(declare-fun c!189839 () Bool)

(assert (=> b!1133218 (= c!189839 (>= lt!380604 call!80732))))

(declare-fun b!1133219 () Bool)

(assert (=> b!1133219 (= e!724084 e!724086)))

(declare-fun c!189836 () Bool)

(assert (=> b!1133219 (= c!189836 (<= lt!380604 0))))

(assert (= (and d!319456 c!189838) b!1133211))

(assert (= (and d!319456 (not c!189838)) b!1133219))

(assert (= (and b!1133219 c!189836) b!1133216))

(assert (= (and b!1133219 (not c!189836)) b!1133212))

(assert (= (and d!319456 res!509558) b!1133217))

(assert (= (and b!1133217 c!189837) b!1133214))

(assert (= (and b!1133217 (not c!189837)) b!1133218))

(assert (= (and b!1133218 c!189839) b!1133213))

(assert (= (and b!1133218 (not c!189839)) b!1133215))

(assert (= (or b!1133214 b!1133218 b!1133215) bm!80727))

(declare-fun m!1283407 () Bool)

(assert (=> b!1133212 m!1283407))

(declare-fun m!1283409 () Bool)

(assert (=> d!319456 m!1283409))

(declare-fun m!1283411 () Bool)

(assert (=> d!319456 m!1283411))

(assert (=> bm!80727 m!1283335))

(declare-fun m!1283413 () Bool)

(assert (=> b!1133217 m!1283413))

(assert (=> b!1132042 d!319456))

(declare-fun d!319458 () Bool)

(declare-fun lt!381258 () Token!3444)

(assert (=> d!319458 (= lt!381258 (apply!2281 (list!3976 (tokens!1456 pt!21)) lt!380590))))

(assert (=> d!319458 (= lt!381258 (apply!2288 (c!189634 (tokens!1456 pt!21)) lt!380590))))

(declare-fun e!724088 () Bool)

(assert (=> d!319458 e!724088))

(declare-fun res!509559 () Bool)

(assert (=> d!319458 (=> (not res!509559) (not e!724088))))

(assert (=> d!319458 (= res!509559 (<= 0 lt!380590))))

(assert (=> d!319458 (= (apply!2280 (tokens!1456 pt!21) lt!380590) lt!381258)))

(declare-fun b!1133220 () Bool)

(assert (=> b!1133220 (= e!724088 (< lt!380590 (size!8560 (tokens!1456 pt!21))))))

(assert (= (and d!319458 res!509559) b!1133220))

(assert (=> d!319458 m!1281739))

(assert (=> d!319458 m!1281739))

(declare-fun m!1283415 () Bool)

(assert (=> d!319458 m!1283415))

(declare-fun m!1283417 () Bool)

(assert (=> d!319458 m!1283417))

(assert (=> b!1133220 m!1281815))

(assert (=> b!1132042 d!319458))

(declare-fun d!319460 () Bool)

(assert (=> d!319460 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) lt!380611)))

(declare-fun lt!381259 () Unit!16686)

(assert (=> d!319460 (= lt!381259 (choose!7259 lt!380588 (rules!9226 pt!21) lt!380585 lt!380611))))

(assert (=> d!319460 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319460 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380588 (rules!9226 pt!21) lt!380585 lt!380611) lt!381259)))

(declare-fun bs!277990 () Bool)

(assert (= bs!277990 d!319460))

(assert (=> bs!277990 m!1281741))

(declare-fun m!1283419 () Bool)

(assert (=> bs!277990 m!1283419))

(assert (=> bs!277990 m!1281957))

(assert (=> b!1132042 d!319460))

(declare-fun d!319462 () Bool)

(declare-fun lt!381260 () Bool)

(declare-fun e!724089 () Bool)

(assert (=> d!319462 (= lt!381260 e!724089)))

(declare-fun res!509561 () Bool)

(assert (=> d!319462 (=> (not res!509561) (not e!724089))))

(assert (=> d!319462 (= res!509561 (= (list!3976 (_1!6808 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 lt!380579))))) (list!3976 (singletonSeq!605 lt!380579))))))

(declare-fun e!724090 () Bool)

(assert (=> d!319462 (= lt!381260 e!724090)))

(declare-fun res!509562 () Bool)

(assert (=> d!319462 (=> (not res!509562) (not e!724090))))

(declare-fun lt!381261 () tuple2!11922)

(assert (=> d!319462 (= res!509562 (= (size!8560 (_1!6808 lt!381261)) 1))))

(assert (=> d!319462 (= lt!381261 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 lt!380579))))))

(assert (=> d!319462 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319462 (= (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) lt!380579) lt!381260)))

(declare-fun b!1133221 () Bool)

(declare-fun res!509560 () Bool)

(assert (=> b!1133221 (=> (not res!509560) (not e!724090))))

(assert (=> b!1133221 (= res!509560 (= (apply!2280 (_1!6808 lt!381261) 0) lt!380579))))

(declare-fun b!1133222 () Bool)

(assert (=> b!1133222 (= e!724090 (isEmpty!6804 (_2!6808 lt!381261)))))

(declare-fun b!1133223 () Bool)

(assert (=> b!1133223 (= e!724089 (isEmpty!6804 (_2!6808 (lex!660 lt!380588 (rules!9226 pt!21) (print!597 lt!380588 (singletonSeq!605 lt!380579))))))))

(assert (= (and d!319462 res!509562) b!1133221))

(assert (= (and b!1133221 res!509560) b!1133222))

(assert (= (and d!319462 res!509561) b!1133223))

(assert (=> d!319462 m!1281957))

(declare-fun m!1283421 () Bool)

(assert (=> d!319462 m!1283421))

(declare-fun m!1283423 () Bool)

(assert (=> d!319462 m!1283423))

(assert (=> d!319462 m!1283421))

(declare-fun m!1283425 () Bool)

(assert (=> d!319462 m!1283425))

(assert (=> d!319462 m!1283421))

(declare-fun m!1283427 () Bool)

(assert (=> d!319462 m!1283427))

(declare-fun m!1283429 () Bool)

(assert (=> d!319462 m!1283429))

(assert (=> d!319462 m!1283423))

(declare-fun m!1283431 () Bool)

(assert (=> d!319462 m!1283431))

(declare-fun m!1283433 () Bool)

(assert (=> b!1133221 m!1283433))

(declare-fun m!1283435 () Bool)

(assert (=> b!1133222 m!1283435))

(assert (=> b!1133223 m!1283421))

(assert (=> b!1133223 m!1283421))

(assert (=> b!1133223 m!1283423))

(assert (=> b!1133223 m!1283423))

(assert (=> b!1133223 m!1283431))

(declare-fun m!1283437 () Bool)

(assert (=> b!1133223 m!1283437))

(assert (=> b!1132042 d!319462))

(declare-fun d!319464 () Bool)

(declare-fun lt!381262 () Token!3444)

(assert (=> d!319464 (contains!1962 lt!380596 lt!381262)))

(declare-fun e!724092 () Token!3444)

(assert (=> d!319464 (= lt!381262 e!724092)))

(declare-fun c!189840 () Bool)

(assert (=> d!319464 (= c!189840 (= lt!380604 0))))

(declare-fun e!724091 () Bool)

(assert (=> d!319464 e!724091))

(declare-fun res!509563 () Bool)

(assert (=> d!319464 (=> (not res!509563) (not e!724091))))

(assert (=> d!319464 (= res!509563 (<= 0 lt!380604))))

(assert (=> d!319464 (= (apply!2281 lt!380596 lt!380604) lt!381262)))

(declare-fun b!1133224 () Bool)

(assert (=> b!1133224 (= e!724091 (< lt!380604 (size!8565 lt!380596)))))

(declare-fun b!1133225 () Bool)

(assert (=> b!1133225 (= e!724092 (head!2057 lt!380596))))

(declare-fun b!1133226 () Bool)

(assert (=> b!1133226 (= e!724092 (apply!2281 (tail!1617 lt!380596) (- lt!380604 1)))))

(assert (= (and d!319464 res!509563) b!1133224))

(assert (= (and d!319464 c!189840) b!1133225))

(assert (= (and d!319464 (not c!189840)) b!1133226))

(declare-fun m!1283439 () Bool)

(assert (=> d!319464 m!1283439))

(assert (=> b!1133224 m!1283335))

(declare-fun m!1283441 () Bool)

(assert (=> b!1133225 m!1283441))

(declare-fun m!1283443 () Bool)

(assert (=> b!1133226 m!1283443))

(assert (=> b!1133226 m!1283443))

(declare-fun m!1283445 () Bool)

(assert (=> b!1133226 m!1283445))

(assert (=> b!1132042 d!319464))

(assert (=> b!1132042 d!319298))

(declare-fun d!319466 () Bool)

(assert (=> d!319466 (= (head!2057 (drop!419 lt!380589 lt!380590)) (apply!2281 lt!380589 lt!380590))))

(declare-fun lt!381263 () Unit!16686)

(assert (=> d!319466 (= lt!381263 (choose!7257 lt!380589 lt!380590))))

(declare-fun e!724093 () Bool)

(assert (=> d!319466 e!724093))

(declare-fun res!509564 () Bool)

(assert (=> d!319466 (=> (not res!509564) (not e!724093))))

(assert (=> d!319466 (= res!509564 (>= lt!380590 0))))

(assert (=> d!319466 (= (lemmaDropApply!336 lt!380589 lt!380590) lt!381263)))

(declare-fun b!1133227 () Bool)

(assert (=> b!1133227 (= e!724093 (< lt!380590 (size!8565 lt!380589)))))

(assert (= (and d!319466 res!509564) b!1133227))

(assert (=> d!319466 m!1281721))

(assert (=> d!319466 m!1281721))

(assert (=> d!319466 m!1281723))

(assert (=> d!319466 m!1281735))

(declare-fun m!1283447 () Bool)

(assert (=> d!319466 m!1283447))

(assert (=> b!1133227 m!1283285))

(assert (=> b!1132042 d!319466))

(declare-fun d!319468 () Bool)

(declare-fun lt!381266 () Int)

(declare-fun contains!1963 (List!10993 Int) Bool)

(assert (=> d!319468 (contains!1963 (list!3977 indices!2) lt!381266)))

(declare-fun e!724098 () Int)

(assert (=> d!319468 (= lt!381266 e!724098)))

(declare-fun c!189843 () Bool)

(assert (=> d!319468 (= c!189843 (= 0 0))))

(declare-fun e!724099 () Bool)

(assert (=> d!319468 e!724099))

(declare-fun res!509567 () Bool)

(assert (=> d!319468 (=> (not res!509567) (not e!724099))))

(assert (=> d!319468 (= res!509567 (<= 0 0))))

(assert (=> d!319468 (= (apply!2282 (list!3977 indices!2) 0) lt!381266)))

(declare-fun b!1133234 () Bool)

(assert (=> b!1133234 (= e!724099 (< 0 (size!8561 (list!3977 indices!2))))))

(declare-fun b!1133235 () Bool)

(declare-fun head!2059 (List!10993) Int)

(assert (=> b!1133235 (= e!724098 (head!2059 (list!3977 indices!2)))))

(declare-fun b!1133236 () Bool)

(declare-fun tail!1619 (List!10993) List!10993)

(assert (=> b!1133236 (= e!724098 (apply!2282 (tail!1619 (list!3977 indices!2)) (- 0 1)))))

(assert (= (and d!319468 res!509567) b!1133234))

(assert (= (and d!319468 c!189843) b!1133235))

(assert (= (and d!319468 (not c!189843)) b!1133236))

(assert (=> d!319468 m!1281831))

(declare-fun m!1283449 () Bool)

(assert (=> d!319468 m!1283449))

(assert (=> b!1133234 m!1281831))

(assert (=> b!1133234 m!1281901))

(assert (=> b!1133235 m!1281831))

(declare-fun m!1283451 () Bool)

(assert (=> b!1133235 m!1283451))

(assert (=> b!1133236 m!1281831))

(declare-fun m!1283453 () Bool)

(assert (=> b!1133236 m!1283453))

(assert (=> b!1133236 m!1283453))

(declare-fun m!1283455 () Bool)

(assert (=> b!1133236 m!1283455))

(assert (=> d!319036 d!319468))

(declare-fun d!319470 () Bool)

(declare-fun list!3988 (Conc!3500) List!10993)

(assert (=> d!319470 (= (list!3977 indices!2) (list!3988 (c!189635 indices!2)))))

(declare-fun bs!277991 () Bool)

(assert (= bs!277991 d!319470))

(declare-fun m!1283457 () Bool)

(assert (=> bs!277991 m!1283457))

(assert (=> d!319036 d!319470))

(declare-fun b!1133251 () Bool)

(declare-fun e!724110 () Int)

(declare-fun call!80735 () Int)

(assert (=> b!1133251 (= e!724110 call!80735)))

(declare-fun b!1133252 () Bool)

(declare-fun e!724108 () Int)

(declare-fun apply!2289 (IArray!7005 Int) Int)

(assert (=> b!1133252 (= e!724108 (apply!2289 (xs!6193 (c!189635 indices!2)) 0))))

(declare-fun b!1133253 () Bool)

(assert (=> b!1133253 (= e!724108 e!724110)))

(declare-fun lt!381272 () Bool)

(declare-fun appendIndex!96 (List!10993 List!10993 Int) Bool)

(assert (=> b!1133253 (= lt!381272 (appendIndex!96 (list!3988 (left!9523 (c!189635 indices!2))) (list!3988 (right!9853 (c!189635 indices!2))) 0))))

(declare-fun c!189850 () Bool)

(assert (=> b!1133253 (= c!189850 (< 0 (size!8562 (left!9523 (c!189635 indices!2)))))))

(declare-fun d!319472 () Bool)

(declare-fun lt!381271 () Int)

(assert (=> d!319472 (= lt!381271 (apply!2282 (list!3988 (c!189635 indices!2)) 0))))

(assert (=> d!319472 (= lt!381271 e!724108)))

(declare-fun c!189852 () Bool)

(assert (=> d!319472 (= c!189852 ((_ is Leaf!5456) (c!189635 indices!2)))))

(declare-fun e!724109 () Bool)

(assert (=> d!319472 e!724109))

(declare-fun res!509570 () Bool)

(assert (=> d!319472 (=> (not res!509570) (not e!724109))))

(assert (=> d!319472 (= res!509570 (<= 0 0))))

(assert (=> d!319472 (= (apply!2283 (c!189635 indices!2) 0) lt!381271)))

(declare-fun bm!80730 () Bool)

(declare-fun c!189851 () Bool)

(assert (=> bm!80730 (= c!189851 c!189850)))

(declare-fun e!724111 () Int)

(assert (=> bm!80730 (= call!80735 (apply!2283 (ite c!189850 (left!9523 (c!189635 indices!2)) (right!9853 (c!189635 indices!2))) e!724111))))

(declare-fun b!1133254 () Bool)

(assert (=> b!1133254 (= e!724111 0)))

(declare-fun b!1133255 () Bool)

(assert (=> b!1133255 (= e!724109 (< 0 (size!8562 (c!189635 indices!2))))))

(declare-fun b!1133256 () Bool)

(assert (=> b!1133256 (= e!724111 (- 0 (size!8562 (left!9523 (c!189635 indices!2)))))))

(declare-fun b!1133257 () Bool)

(assert (=> b!1133257 (= e!724110 call!80735)))

(assert (= (and d!319472 res!509570) b!1133255))

(assert (= (and d!319472 c!189852) b!1133252))

(assert (= (and d!319472 (not c!189852)) b!1133253))

(assert (= (and b!1133253 c!189850) b!1133257))

(assert (= (and b!1133253 (not c!189850)) b!1133251))

(assert (= (or b!1133257 b!1133251) bm!80730))

(assert (= (and bm!80730 c!189851) b!1133254))

(assert (= (and bm!80730 (not c!189851)) b!1133256))

(declare-fun m!1283459 () Bool)

(assert (=> bm!80730 m!1283459))

(assert (=> b!1133255 m!1281903))

(declare-fun m!1283461 () Bool)

(assert (=> b!1133256 m!1283461))

(assert (=> d!319472 m!1283457))

(assert (=> d!319472 m!1283457))

(declare-fun m!1283463 () Bool)

(assert (=> d!319472 m!1283463))

(declare-fun m!1283465 () Bool)

(assert (=> b!1133253 m!1283465))

(declare-fun m!1283467 () Bool)

(assert (=> b!1133253 m!1283467))

(assert (=> b!1133253 m!1283465))

(assert (=> b!1133253 m!1283467))

(declare-fun m!1283469 () Bool)

(assert (=> b!1133253 m!1283469))

(assert (=> b!1133253 m!1283461))

(declare-fun m!1283471 () Bool)

(assert (=> b!1133252 m!1283471))

(assert (=> d!319036 d!319472))

(declare-fun bs!277992 () Bool)

(declare-fun d!319474 () Bool)

(assert (= bs!277992 (and d!319474 d!319134)))

(declare-fun lambda!45628 () Int)

(assert (=> bs!277992 (= (= lt!380563 Lexer!1595) (= lambda!45628 lambda!45603))))

(declare-fun bs!277993 () Bool)

(assert (= bs!277993 (and d!319474 b!1132472)))

(assert (=> bs!277993 (= (= lt!380563 Lexer!1595) (= lambda!45628 lambda!45606))))

(declare-fun bs!277994 () Bool)

(assert (= bs!277994 (and d!319474 d!319202)))

(assert (=> bs!277994 (= lambda!45628 lambda!45610)))

(declare-fun bs!277995 () Bool)

(assert (= bs!277995 (and d!319474 d!319152)))

(assert (=> bs!277995 (= (= lt!380563 Lexer!1595) (= lambda!45628 lambda!45608))))

(declare-fun bs!277996 () Bool)

(assert (= bs!277996 (and d!319474 b!1132708)))

(assert (=> bs!277996 (= (= lt!380563 Lexer!1595) (= lambda!45628 lambda!45613))))

(declare-fun bs!277997 () Bool)

(assert (= bs!277997 (and d!319474 d!319098)))

(assert (=> bs!277997 (= (= lt!380563 Lexer!1595) (= lambda!45628 lambda!45600))))

(declare-fun bs!277998 () Bool)

(assert (= bs!277998 (and d!319474 d!319398)))

(assert (=> bs!277998 (= (= lt!380563 lt!380565) (= lambda!45628 lambda!45624))))

(declare-fun bs!277999 () Bool)

(assert (= bs!277999 (and d!319474 d!319150)))

(assert (=> bs!277999 (= (= lt!380563 lt!380592) (= lambda!45628 lambda!45607))))

(declare-fun bs!278000 () Bool)

(assert (= bs!278000 (and d!319474 d!319158)))

(assert (=> bs!278000 (= (= lt!380563 Lexer!1595) (= lambda!45628 lambda!45609))))

(declare-fun bs!278001 () Bool)

(assert (= bs!278001 (and d!319474 d!319008)))

(assert (=> bs!278001 (= (= lt!380563 Lexer!1595) (= lambda!45628 lambda!45591))))

(declare-fun b!1133262 () Bool)

(declare-fun e!724116 () Bool)

(assert (=> b!1133262 (= e!724116 true)))

(declare-fun b!1133261 () Bool)

(declare-fun e!724115 () Bool)

(assert (=> b!1133261 (= e!724115 e!724116)))

(declare-fun b!1133260 () Bool)

(declare-fun e!724114 () Bool)

(assert (=> b!1133260 (= e!724114 e!724115)))

(assert (=> d!319474 e!724114))

(assert (= b!1133261 b!1133262))

(assert (= b!1133260 b!1133261))

(assert (= (and d!319474 ((_ is Cons!10968) (rules!9226 pt!21))) b!1133260))

(assert (=> b!1133262 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45628))))

(assert (=> b!1133262 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45628))))

(assert (=> d!319474 true))

(declare-fun lt!381273 () Bool)

(assert (=> d!319474 (= lt!381273 (forall!2658 (t!106951 lt!380580) lambda!45628))))

(declare-fun e!724112 () Bool)

(assert (=> d!319474 (= lt!381273 e!724112)))

(declare-fun res!509572 () Bool)

(assert (=> d!319474 (=> res!509572 e!724112)))

(assert (=> d!319474 (= res!509572 (not ((_ is Cons!10967) (t!106951 lt!380580))))))

(assert (=> d!319474 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319474 (= (rulesProduceEachTokenIndividuallyList!472 lt!380563 (rules!9226 pt!21) (t!106951 lt!380580)) lt!381273)))

(declare-fun b!1133258 () Bool)

(declare-fun e!724113 () Bool)

(assert (=> b!1133258 (= e!724112 e!724113)))

(declare-fun res!509571 () Bool)

(assert (=> b!1133258 (=> (not res!509571) (not e!724113))))

(assert (=> b!1133258 (= res!509571 (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 (t!106951 lt!380580))))))

(declare-fun b!1133259 () Bool)

(assert (=> b!1133259 (= e!724113 (rulesProduceEachTokenIndividuallyList!472 lt!380563 (rules!9226 pt!21) (t!106951 (t!106951 lt!380580))))))

(assert (= (and d!319474 (not res!509572)) b!1133258))

(assert (= (and b!1133258 res!509571) b!1133259))

(declare-fun m!1283473 () Bool)

(assert (=> d!319474 m!1283473))

(assert (=> d!319474 m!1281957))

(declare-fun m!1283475 () Bool)

(assert (=> b!1133258 m!1283475))

(declare-fun m!1283477 () Bool)

(assert (=> b!1133259 m!1283477))

(assert (=> b!1132044 d!319474))

(declare-fun b!1133275 () Bool)

(declare-fun e!724122 () Bool)

(declare-fun e!724121 () Bool)

(assert (=> b!1133275 (= e!724122 e!724121)))

(declare-fun res!509589 () Bool)

(assert (=> b!1133275 (=> (not res!509589) (not e!724121))))

(assert (=> b!1133275 (= res!509589 (<= (- 1) (- (height!454 (left!9522 (c!189634 (tokens!1456 pt!21)))) (height!454 (right!9852 (c!189634 (tokens!1456 pt!21)))))))))

(declare-fun b!1133276 () Bool)

(declare-fun res!509588 () Bool)

(assert (=> b!1133276 (=> (not res!509588) (not e!724121))))

(assert (=> b!1133276 (= res!509588 (isBalanced!973 (right!9852 (c!189634 (tokens!1456 pt!21)))))))

(declare-fun b!1133278 () Bool)

(declare-fun res!509586 () Bool)

(assert (=> b!1133278 (=> (not res!509586) (not e!724121))))

(declare-fun isEmpty!6807 (Conc!3499) Bool)

(assert (=> b!1133278 (= res!509586 (not (isEmpty!6807 (left!9522 (c!189634 (tokens!1456 pt!21))))))))

(declare-fun b!1133279 () Bool)

(declare-fun res!509590 () Bool)

(assert (=> b!1133279 (=> (not res!509590) (not e!724121))))

(assert (=> b!1133279 (= res!509590 (<= (- (height!454 (left!9522 (c!189634 (tokens!1456 pt!21)))) (height!454 (right!9852 (c!189634 (tokens!1456 pt!21))))) 1))))

(declare-fun b!1133280 () Bool)

(declare-fun res!509585 () Bool)

(assert (=> b!1133280 (=> (not res!509585) (not e!724121))))

(assert (=> b!1133280 (= res!509585 (isBalanced!973 (left!9522 (c!189634 (tokens!1456 pt!21)))))))

(declare-fun b!1133277 () Bool)

(assert (=> b!1133277 (= e!724121 (not (isEmpty!6807 (right!9852 (c!189634 (tokens!1456 pt!21))))))))

(declare-fun d!319476 () Bool)

(declare-fun res!509587 () Bool)

(assert (=> d!319476 (=> res!509587 e!724122)))

(assert (=> d!319476 (= res!509587 (not ((_ is Node!3499) (c!189634 (tokens!1456 pt!21)))))))

(assert (=> d!319476 (= (isBalanced!973 (c!189634 (tokens!1456 pt!21))) e!724122)))

(assert (= (and d!319476 (not res!509587)) b!1133275))

(assert (= (and b!1133275 res!509589) b!1133279))

(assert (= (and b!1133279 res!509590) b!1133280))

(assert (= (and b!1133280 res!509585) b!1133276))

(assert (= (and b!1133276 res!509588) b!1133278))

(assert (= (and b!1133278 res!509586) b!1133277))

(declare-fun m!1283479 () Bool)

(assert (=> b!1133276 m!1283479))

(declare-fun m!1283481 () Bool)

(assert (=> b!1133280 m!1283481))

(assert (=> b!1133275 m!1281997))

(assert (=> b!1133275 m!1281999))

(declare-fun m!1283483 () Bool)

(assert (=> b!1133277 m!1283483))

(assert (=> b!1133279 m!1281997))

(assert (=> b!1133279 m!1281999))

(declare-fun m!1283485 () Bool)

(assert (=> b!1133278 m!1283485))

(assert (=> d!319088 d!319476))

(declare-fun d!319478 () Bool)

(assert (=> d!319478 (= (isEmpty!6799 (list!3977 indices!2)) ((_ is Nil!10969) (list!3977 indices!2)))))

(assert (=> d!319062 d!319478))

(assert (=> d!319062 d!319470))

(declare-fun d!319480 () Bool)

(declare-fun lt!381288 () Bool)

(assert (=> d!319480 (= lt!381288 (isEmpty!6799 (list!3988 (c!189635 indices!2))))))

(assert (=> d!319480 (= lt!381288 (= (size!8562 (c!189635 indices!2)) 0))))

(assert (=> d!319480 (= (isEmpty!6800 (c!189635 indices!2)) lt!381288)))

(declare-fun bs!278002 () Bool)

(assert (= bs!278002 d!319480))

(assert (=> bs!278002 m!1283457))

(assert (=> bs!278002 m!1283457))

(declare-fun m!1283487 () Bool)

(assert (=> bs!278002 m!1283487))

(assert (=> bs!278002 m!1281903))

(assert (=> d!319062 d!319480))

(declare-fun d!319482 () Bool)

(assert (=> d!319482 (= (isEmpty!6801 (rules!9226 pt!21)) ((_ is Nil!10968) (rules!9226 pt!21)))))

(assert (=> d!319072 d!319482))

(declare-fun d!319484 () Bool)

(assert (=> d!319484 (= (inv!14188 (tag!2153 (h!16369 (rules!9226 pt!21)))) (= (mod (str.len (value!61889 (tag!2153 (h!16369 (rules!9226 pt!21))))) 2) 0))))

(assert (=> b!1132205 d!319484))

(declare-fun d!319486 () Bool)

(declare-fun res!509601 () Bool)

(declare-fun e!724133 () Bool)

(assert (=> d!319486 (=> (not res!509601) (not e!724133))))

(declare-fun semiInverseModEq!719 (Int Int) Bool)

(assert (=> d!319486 (= res!509601 (semiInverseModEq!719 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21)))) (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))))))

(assert (=> d!319486 (= (inv!14222 (transformation!1891 (h!16369 (rules!9226 pt!21)))) e!724133)))

(declare-fun b!1133291 () Bool)

(declare-fun equivClasses!686 (Int Int) Bool)

(assert (=> b!1133291 (= e!724133 (equivClasses!686 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21)))) (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))))))

(assert (= (and d!319486 res!509601) b!1133291))

(declare-fun m!1283489 () Bool)

(assert (=> d!319486 m!1283489))

(declare-fun m!1283491 () Bool)

(assert (=> b!1133291 m!1283491))

(assert (=> b!1132205 d!319486))

(declare-fun d!319488 () Bool)

(declare-fun res!509610 () Bool)

(declare-fun e!724145 () Bool)

(assert (=> d!319488 (=> res!509610 e!724145)))

(assert (=> d!319488 (= res!509610 ((_ is Nil!10969) (list!3977 indices!2)))))

(assert (=> d!319488 (= (forall!2660 (list!3977 indices!2) lambda!45564) e!724145)))

(declare-fun b!1133303 () Bool)

(declare-fun e!724146 () Bool)

(assert (=> b!1133303 (= e!724145 e!724146)))

(declare-fun res!509611 () Bool)

(assert (=> b!1133303 (=> (not res!509611) (not e!724146))))

(declare-fun dynLambda!4843 (Int Int) Bool)

(assert (=> b!1133303 (= res!509611 (dynLambda!4843 lambda!45564 (h!16370 (list!3977 indices!2))))))

(declare-fun b!1133304 () Bool)

(assert (=> b!1133304 (= e!724146 (forall!2660 (t!106953 (list!3977 indices!2)) lambda!45564))))

(assert (= (and d!319488 (not res!509610)) b!1133303))

(assert (= (and b!1133303 res!509611) b!1133304))

(declare-fun b_lambda!33321 () Bool)

(assert (=> (not b_lambda!33321) (not b!1133303)))

(declare-fun m!1283493 () Bool)

(assert (=> b!1133303 m!1283493))

(declare-fun m!1283495 () Bool)

(assert (=> b!1133304 m!1283495))

(assert (=> d!319030 d!319488))

(assert (=> d!319030 d!319470))

(declare-fun b!1133329 () Bool)

(declare-fun e!724165 () Bool)

(assert (=> b!1133329 (= e!724165 (forall!2661 (right!9853 (c!189635 indices!2)) lambda!45564))))

(declare-fun b!1133327 () Bool)

(declare-fun e!724163 () Bool)

(declare-fun forall!2667 (IArray!7005 Int) Bool)

(assert (=> b!1133327 (= e!724163 (forall!2667 (xs!6193 (c!189635 indices!2)) lambda!45564))))

(declare-fun d!319490 () Bool)

(declare-fun lt!381336 () Bool)

(assert (=> d!319490 (= lt!381336 (forall!2660 (list!3988 (c!189635 indices!2)) lambda!45564))))

(declare-fun e!724164 () Bool)

(assert (=> d!319490 (= lt!381336 e!724164)))

(declare-fun res!509626 () Bool)

(assert (=> d!319490 (=> res!509626 e!724164)))

(assert (=> d!319490 (= res!509626 ((_ is Empty!3500) (c!189635 indices!2)))))

(assert (=> d!319490 (= (forall!2661 (c!189635 indices!2) lambda!45564) lt!381336)))

(declare-fun b!1133326 () Bool)

(assert (=> b!1133326 (= e!724164 e!724163)))

(declare-fun c!189855 () Bool)

(assert (=> b!1133326 (= c!189855 ((_ is Leaf!5456) (c!189635 indices!2)))))

(declare-fun b!1133328 () Bool)

(assert (=> b!1133328 (= e!724163 e!724165)))

(declare-fun lt!381337 () Unit!16686)

(declare-fun lemmaForallConcat!88 (List!10993 List!10993 Int) Unit!16686)

(assert (=> b!1133328 (= lt!381337 (lemmaForallConcat!88 (list!3988 (left!9523 (c!189635 indices!2))) (list!3988 (right!9853 (c!189635 indices!2))) lambda!45564))))

(declare-fun res!509627 () Bool)

(assert (=> b!1133328 (= res!509627 (forall!2661 (left!9523 (c!189635 indices!2)) lambda!45564))))

(assert (=> b!1133328 (=> (not res!509627) (not e!724165))))

(assert (= (and d!319490 (not res!509626)) b!1133326))

(assert (= (and b!1133326 c!189855) b!1133327))

(assert (= (and b!1133326 (not c!189855)) b!1133328))

(assert (= (and b!1133328 res!509627) b!1133329))

(declare-fun m!1283589 () Bool)

(assert (=> b!1133329 m!1283589))

(declare-fun m!1283591 () Bool)

(assert (=> b!1133327 m!1283591))

(assert (=> d!319490 m!1283457))

(assert (=> d!319490 m!1283457))

(declare-fun m!1283593 () Bool)

(assert (=> d!319490 m!1283593))

(assert (=> b!1133328 m!1283465))

(assert (=> b!1133328 m!1283467))

(assert (=> b!1133328 m!1283465))

(assert (=> b!1133328 m!1283467))

(declare-fun m!1283595 () Bool)

(assert (=> b!1133328 m!1283595))

(declare-fun m!1283597 () Bool)

(assert (=> b!1133328 m!1283597))

(assert (=> d!319030 d!319490))

(declare-fun bs!278024 () Bool)

(declare-fun d!319496 () Bool)

(assert (= bs!278024 (and d!319496 d!319134)))

(declare-fun lambda!45633 () Int)

(assert (=> bs!278024 (= (= lt!380592 Lexer!1595) (= lambda!45633 lambda!45603))))

(declare-fun bs!278025 () Bool)

(assert (= bs!278025 (and d!319496 b!1132472)))

(assert (=> bs!278025 (= (= lt!380592 Lexer!1595) (= lambda!45633 lambda!45606))))

(declare-fun bs!278026 () Bool)

(assert (= bs!278026 (and d!319496 d!319202)))

(assert (=> bs!278026 (= (= lt!380592 lt!380563) (= lambda!45633 lambda!45610))))

(declare-fun bs!278027 () Bool)

(assert (= bs!278027 (and d!319496 d!319152)))

(assert (=> bs!278027 (= (= lt!380592 Lexer!1595) (= lambda!45633 lambda!45608))))

(declare-fun bs!278028 () Bool)

(assert (= bs!278028 (and d!319496 d!319474)))

(assert (=> bs!278028 (= (= lt!380592 lt!380563) (= lambda!45633 lambda!45628))))

(declare-fun bs!278029 () Bool)

(assert (= bs!278029 (and d!319496 b!1132708)))

(assert (=> bs!278029 (= (= lt!380592 Lexer!1595) (= lambda!45633 lambda!45613))))

(declare-fun bs!278030 () Bool)

(assert (= bs!278030 (and d!319496 d!319098)))

(assert (=> bs!278030 (= (= lt!380592 Lexer!1595) (= lambda!45633 lambda!45600))))

(declare-fun bs!278031 () Bool)

(assert (= bs!278031 (and d!319496 d!319398)))

(assert (=> bs!278031 (= (= lt!380592 lt!380565) (= lambda!45633 lambda!45624))))

(declare-fun bs!278032 () Bool)

(assert (= bs!278032 (and d!319496 d!319150)))

(assert (=> bs!278032 (= lambda!45633 lambda!45607)))

(declare-fun bs!278034 () Bool)

(assert (= bs!278034 (and d!319496 d!319158)))

(assert (=> bs!278034 (= (= lt!380592 Lexer!1595) (= lambda!45633 lambda!45609))))

(declare-fun bs!278036 () Bool)

(assert (= bs!278036 (and d!319496 d!319008)))

(assert (=> bs!278036 (= (= lt!380592 Lexer!1595) (= lambda!45633 lambda!45591))))

(declare-fun b!1133334 () Bool)

(declare-fun e!724170 () Bool)

(assert (=> b!1133334 (= e!724170 true)))

(declare-fun b!1133333 () Bool)

(declare-fun e!724169 () Bool)

(assert (=> b!1133333 (= e!724169 e!724170)))

(declare-fun b!1133332 () Bool)

(declare-fun e!724168 () Bool)

(assert (=> b!1133332 (= e!724168 e!724169)))

(assert (=> d!319496 e!724168))

(assert (= b!1133333 b!1133334))

(assert (= b!1133332 b!1133333))

(assert (= (and d!319496 ((_ is Cons!10968) (rules!9226 pt!21))) b!1133332))

(assert (=> b!1133334 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45633))))

(assert (=> b!1133334 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45633))))

(assert (=> d!319496 true))

(declare-fun lt!381338 () Bool)

(assert (=> d!319496 (= lt!381338 (forall!2658 (t!106951 lt!380584) lambda!45633))))

(declare-fun e!724166 () Bool)

(assert (=> d!319496 (= lt!381338 e!724166)))

(declare-fun res!509629 () Bool)

(assert (=> d!319496 (=> res!509629 e!724166)))

(assert (=> d!319496 (= res!509629 (not ((_ is Cons!10967) (t!106951 lt!380584))))))

(assert (=> d!319496 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319496 (= (rulesProduceEachTokenIndividuallyList!472 lt!380592 (rules!9226 pt!21) (t!106951 lt!380584)) lt!381338)))

(declare-fun b!1133330 () Bool)

(declare-fun e!724167 () Bool)

(assert (=> b!1133330 (= e!724166 e!724167)))

(declare-fun res!509628 () Bool)

(assert (=> b!1133330 (=> (not res!509628) (not e!724167))))

(assert (=> b!1133330 (= res!509628 (rulesProduceIndividualToken!644 lt!380592 (rules!9226 pt!21) (h!16368 (t!106951 lt!380584))))))

(declare-fun b!1133331 () Bool)

(assert (=> b!1133331 (= e!724167 (rulesProduceEachTokenIndividuallyList!472 lt!380592 (rules!9226 pt!21) (t!106951 (t!106951 lt!380584))))))

(assert (= (and d!319496 (not res!509629)) b!1133330))

(assert (= (and b!1133330 res!509628) b!1133331))

(declare-fun m!1283603 () Bool)

(assert (=> d!319496 m!1283603))

(assert (=> d!319496 m!1281957))

(declare-fun m!1283605 () Bool)

(assert (=> b!1133330 m!1283605))

(declare-fun m!1283607 () Bool)

(assert (=> b!1133331 m!1283607))

(assert (=> b!1132046 d!319496))

(assert (=> b!1132082 d!319066))

(assert (=> b!1131934 d!319006))

(declare-fun d!319500 () Bool)

(declare-fun res!509636 () Bool)

(declare-fun e!724180 () Bool)

(assert (=> d!319500 (=> res!509636 e!724180)))

(assert (=> d!319500 (= res!509636 ((_ is Nil!10970) (list!3972 acc!225)))))

(assert (=> d!319500 (= (forall!2662 (list!3972 acc!225) lambda!45565) e!724180)))

(declare-fun b!1133344 () Bool)

(declare-fun e!724181 () Bool)

(assert (=> b!1133344 (= e!724180 e!724181)))

(declare-fun res!509637 () Bool)

(assert (=> b!1133344 (=> (not res!509637) (not e!724181))))

(declare-fun dynLambda!4844 (Int PrintableTokens!468) Bool)

(assert (=> b!1133344 (= res!509637 (dynLambda!4844 lambda!45565 (h!16371 (list!3972 acc!225))))))

(declare-fun b!1133345 () Bool)

(assert (=> b!1133345 (= e!724181 (forall!2662 (t!106954 (list!3972 acc!225)) lambda!45565))))

(assert (= (and d!319500 (not res!509636)) b!1133344))

(assert (= (and b!1133344 res!509637) b!1133345))

(declare-fun b_lambda!33323 () Bool)

(assert (=> (not b_lambda!33323) (not b!1133344)))

(declare-fun m!1283617 () Bool)

(assert (=> b!1133344 m!1283617))

(declare-fun m!1283619 () Bool)

(assert (=> b!1133345 m!1283619))

(assert (=> d!319064 d!319500))

(assert (=> d!319064 d!319054))

(declare-fun b!1133359 () Bool)

(declare-fun e!724191 () Bool)

(declare-fun e!724192 () Bool)

(assert (=> b!1133359 (= e!724191 e!724192)))

(declare-fun lt!381349 () Unit!16686)

(declare-fun lemmaForallConcat!89 (List!10994 List!10994 Int) Unit!16686)

(assert (=> b!1133359 (= lt!381349 (lemmaForallConcat!89 (list!3978 (left!9524 (c!189636 acc!225))) (list!3978 (right!9854 (c!189636 acc!225))) lambda!45565))))

(declare-fun res!509646 () Bool)

(assert (=> b!1133359 (= res!509646 (forall!2663 (left!9524 (c!189636 acc!225)) lambda!45565))))

(assert (=> b!1133359 (=> (not res!509646) (not e!724192))))

(declare-fun b!1133360 () Bool)

(assert (=> b!1133360 (= e!724192 (forall!2663 (right!9854 (c!189636 acc!225)) lambda!45565))))

(declare-fun b!1133358 () Bool)

(declare-fun forall!2668 (IArray!7007 Int) Bool)

(assert (=> b!1133358 (= e!724191 (forall!2668 (xs!6194 (c!189636 acc!225)) lambda!45565))))

(declare-fun b!1133357 () Bool)

(declare-fun e!724193 () Bool)

(assert (=> b!1133357 (= e!724193 e!724191)))

(declare-fun c!189858 () Bool)

(assert (=> b!1133357 (= c!189858 ((_ is Leaf!5457) (c!189636 acc!225)))))

(declare-fun d!319506 () Bool)

(declare-fun lt!381348 () Bool)

(assert (=> d!319506 (= lt!381348 (forall!2662 (list!3978 (c!189636 acc!225)) lambda!45565))))

(assert (=> d!319506 (= lt!381348 e!724193)))

(declare-fun res!509645 () Bool)

(assert (=> d!319506 (=> res!509645 e!724193)))

(assert (=> d!319506 (= res!509645 ((_ is Empty!3501) (c!189636 acc!225)))))

(assert (=> d!319506 (= (forall!2663 (c!189636 acc!225) lambda!45565) lt!381348)))

(assert (= (and d!319506 (not res!509645)) b!1133357))

(assert (= (and b!1133357 c!189858) b!1133358))

(assert (= (and b!1133357 (not c!189858)) b!1133359))

(assert (= (and b!1133359 res!509646) b!1133360))

(assert (=> b!1133359 m!1283213))

(assert (=> b!1133359 m!1283215))

(assert (=> b!1133359 m!1283213))

(assert (=> b!1133359 m!1283215))

(declare-fun m!1283625 () Bool)

(assert (=> b!1133359 m!1283625))

(declare-fun m!1283627 () Bool)

(assert (=> b!1133359 m!1283627))

(declare-fun m!1283629 () Bool)

(assert (=> b!1133360 m!1283629))

(declare-fun m!1283631 () Bool)

(assert (=> b!1133358 m!1283631))

(assert (=> d!319506 m!1281883))

(assert (=> d!319506 m!1281883))

(declare-fun m!1283633 () Bool)

(assert (=> d!319506 m!1283633))

(assert (=> d!319064 d!319506))

(declare-fun d!319510 () Bool)

(declare-fun res!509649 () Bool)

(declare-fun e!724196 () Bool)

(assert (=> d!319510 (=> (not res!509649) (not e!724196))))

(declare-fun rulesValid!650 (LexerInterface!1597 List!10992) Bool)

(assert (=> d!319510 (= res!509649 (rulesValid!650 Lexer!1595 (rules!9226 pt!21)))))

(assert (=> d!319510 (= (rulesInvariant!1471 Lexer!1595 (rules!9226 pt!21)) e!724196)))

(declare-fun b!1133363 () Bool)

(declare-datatypes ((List!10996 0))(
  ( (Nil!10972) (Cons!10972 (h!16373 String!13373) (t!107068 List!10996)) )
))
(declare-fun noDuplicateTag!650 (LexerInterface!1597 List!10992 List!10996) Bool)

(assert (=> b!1133363 (= e!724196 (noDuplicateTag!650 Lexer!1595 (rules!9226 pt!21) Nil!10972))))

(assert (= (and d!319510 res!509649) b!1133363))

(declare-fun m!1283635 () Bool)

(assert (=> d!319510 m!1283635))

(declare-fun m!1283637 () Bool)

(assert (=> b!1133363 m!1283637))

(assert (=> b!1132163 d!319510))

(declare-fun d!319512 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!312) Rule!3582)

(declare-fun integerLiteralRule!0 (JsonLexer!312) Rule!3582)

(declare-fun floatLiteralRule!0 (JsonLexer!312) Rule!3582)

(declare-fun trueRule!0 (JsonLexer!312) Rule!3582)

(declare-fun falseRule!0 (JsonLexer!312) Rule!3582)

(declare-fun nullRule!0 (JsonLexer!312) Rule!3582)

(declare-fun jsonstringRule!0 (JsonLexer!312) Rule!3582)

(declare-fun lBraceRule!0 (JsonLexer!312) Rule!3582)

(declare-fun rBraceRule!0 (JsonLexer!312) Rule!3582)

(declare-fun lBracketRule!0 (JsonLexer!312) Rule!3582)

(declare-fun rBracketRule!0 (JsonLexer!312) Rule!3582)

(declare-fun colonRule!0 (JsonLexer!312) Rule!3582)

(declare-fun commaRule!0 (JsonLexer!312) Rule!3582)

(declare-fun eofRule!0 (JsonLexer!312) Rule!3582)

(assert (=> d!319512 (= (rules!109 JsonLexer!313) (Cons!10968 (whitespaceRule!0 JsonLexer!313) (Cons!10968 (integerLiteralRule!0 JsonLexer!313) (Cons!10968 (floatLiteralRule!0 JsonLexer!313) (Cons!10968 (trueRule!0 JsonLexer!313) (Cons!10968 (falseRule!0 JsonLexer!313) (Cons!10968 (nullRule!0 JsonLexer!313) (Cons!10968 (jsonstringRule!0 JsonLexer!313) (Cons!10968 (lBraceRule!0 JsonLexer!313) (Cons!10968 (rBraceRule!0 JsonLexer!313) (Cons!10968 (lBracketRule!0 JsonLexer!313) (Cons!10968 (rBracketRule!0 JsonLexer!313) (Cons!10968 (colonRule!0 JsonLexer!313) (Cons!10968 (commaRule!0 JsonLexer!313) (Cons!10968 (eofRule!0 JsonLexer!313) Nil!10968)))))))))))))))))

(declare-fun bs!278048 () Bool)

(assert (= bs!278048 d!319512))

(declare-fun m!1283639 () Bool)

(assert (=> bs!278048 m!1283639))

(declare-fun m!1283641 () Bool)

(assert (=> bs!278048 m!1283641))

(declare-fun m!1283643 () Bool)

(assert (=> bs!278048 m!1283643))

(declare-fun m!1283645 () Bool)

(assert (=> bs!278048 m!1283645))

(declare-fun m!1283647 () Bool)

(assert (=> bs!278048 m!1283647))

(declare-fun m!1283649 () Bool)

(assert (=> bs!278048 m!1283649))

(declare-fun m!1283651 () Bool)

(assert (=> bs!278048 m!1283651))

(declare-fun m!1283653 () Bool)

(assert (=> bs!278048 m!1283653))

(declare-fun m!1283655 () Bool)

(assert (=> bs!278048 m!1283655))

(declare-fun m!1283657 () Bool)

(assert (=> bs!278048 m!1283657))

(declare-fun m!1283659 () Bool)

(assert (=> bs!278048 m!1283659))

(declare-fun m!1283661 () Bool)

(assert (=> bs!278048 m!1283661))

(declare-fun m!1283663 () Bool)

(assert (=> bs!278048 m!1283663))

(declare-fun m!1283665 () Bool)

(assert (=> bs!278048 m!1283665))

(assert (=> d!319060 d!319512))

(declare-fun d!319514 () Bool)

(assert (=> d!319514 (= (separableTokens!66 Lexer!1595 (tokens!1456 pt!21) (rules!9226 pt!21)) (tokensListTwoByTwoPredicateSeparable!26 Lexer!1595 (tokens!1456 pt!21) 0 (rules!9226 pt!21)))))

(declare-fun bs!278049 () Bool)

(assert (= bs!278049 d!319514))

(assert (=> bs!278049 m!1281789))

(assert (=> b!1132165 d!319514))

(assert (=> d!319032 d!319512))

(declare-fun d!319516 () Bool)

(assert (=> d!319516 (= (list!3972 lt!380632) (list!3978 (c!189636 lt!380632)))))

(declare-fun bs!278050 () Bool)

(assert (= bs!278050 d!319516))

(declare-fun m!1283667 () Bool)

(assert (=> bs!278050 m!1283667))

(assert (=> b!1132094 d!319516))

(declare-fun b!1133380 () Bool)

(declare-fun e!724205 () Bool)

(declare-fun call!80740 () (_ BitVec 32))

(declare-fun call!80741 () (_ BitVec 32))

(assert (=> b!1133380 (= e!724205 (= call!80740 (bvadd call!80741 #b00000000000000000000000000000001)))))

(declare-fun lt!381352 () List!10994)

(declare-fun e!724204 () Bool)

(declare-fun b!1133381 () Bool)

(assert (=> b!1133381 (= e!724204 (= lt!381352 (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970))))))

(declare-fun b!1133382 () Bool)

(declare-fun res!509658 () Bool)

(assert (=> b!1133382 (=> (not res!509658) (not e!724204))))

(assert (=> b!1133382 (= res!509658 (= (size!8563 lt!381352) (+ (size!8563 (list!3972 acc!225)) 1)))))

(declare-fun b!1133383 () Bool)

(declare-fun e!724203 () List!10994)

(assert (=> b!1133383 (= e!724203 (Cons!10970 lt!380180 (list!3972 acc!225)))))

(declare-fun d!319518 () Bool)

(assert (=> d!319518 e!724204))

(declare-fun res!509661 () Bool)

(assert (=> d!319518 (=> (not res!509661) (not e!724204))))

(assert (=> d!319518 (= res!509661 ((_ is Cons!10970) lt!381352))))

(assert (=> d!319518 (= lt!381352 e!724203)))

(declare-fun c!189863 () Bool)

(assert (=> d!319518 (= c!189863 ((_ is Nil!10970) (list!3972 acc!225)))))

(assert (=> d!319518 (= ($colon+!73 (list!3972 acc!225) lt!380180) lt!381352)))

(declare-fun b!1133384 () Bool)

(assert (=> b!1133384 (= e!724203 (Cons!10970 (h!16371 (list!3972 acc!225)) ($colon+!73 (t!106954 (list!3972 acc!225)) lt!380180)))))

(declare-fun b!1133385 () Bool)

(declare-fun res!509659 () Bool)

(assert (=> b!1133385 (=> (not res!509659) (not e!724204))))

(assert (=> b!1133385 (= res!509659 e!724205)))

(declare-fun c!189864 () Bool)

(declare-fun isize!17 (List!10994) (_ BitVec 32))

(assert (=> b!1133385 (= c!189864 (bvslt (isize!17 (list!3972 acc!225)) #b01111111111111111111111111111111))))

(declare-fun bm!80735 () Bool)

(assert (=> bm!80735 (= call!80740 (isize!17 lt!381352))))

(declare-fun b!1133386 () Bool)

(assert (=> b!1133386 (= e!724205 (= call!80740 call!80741))))

(declare-fun bm!80736 () Bool)

(assert (=> bm!80736 (= call!80741 (isize!17 (list!3972 acc!225)))))

(declare-fun b!1133387 () Bool)

(declare-fun res!509660 () Bool)

(assert (=> b!1133387 (=> (not res!509660) (not e!724204))))

(declare-fun content!1576 (List!10994) (InoxSet PrintableTokens!468))

(assert (=> b!1133387 (= res!509660 (= (content!1576 lt!381352) ((_ map or) (content!1576 (list!3972 acc!225)) (store ((as const (Array PrintableTokens!468 Bool)) false) lt!380180 true))))))

(assert (= (and d!319518 c!189863) b!1133383))

(assert (= (and d!319518 (not c!189863)) b!1133384))

(assert (= (and d!319518 res!509661) b!1133382))

(assert (= (and b!1133382 res!509658) b!1133385))

(assert (= (and b!1133385 c!189864) b!1133380))

(assert (= (and b!1133385 (not c!189864)) b!1133386))

(assert (= (or b!1133380 b!1133386) bm!80736))

(assert (= (or b!1133380 b!1133386) bm!80735))

(assert (= (and b!1133385 res!509659) b!1133387))

(assert (= (and b!1133387 res!509660) b!1133381))

(declare-fun m!1283669 () Bool)

(assert (=> b!1133382 m!1283669))

(assert (=> b!1133382 m!1281473))

(declare-fun m!1283671 () Bool)

(assert (=> b!1133382 m!1283671))

(declare-fun m!1283673 () Bool)

(assert (=> b!1133387 m!1283673))

(assert (=> b!1133387 m!1281473))

(declare-fun m!1283675 () Bool)

(assert (=> b!1133387 m!1283675))

(declare-fun m!1283677 () Bool)

(assert (=> b!1133387 m!1283677))

(assert (=> b!1133381 m!1281473))

(assert (=> b!1133381 m!1281875))

(declare-fun m!1283679 () Bool)

(assert (=> bm!80735 m!1283679))

(assert (=> bm!80736 m!1281473))

(declare-fun m!1283681 () Bool)

(assert (=> bm!80736 m!1283681))

(declare-fun m!1283683 () Bool)

(assert (=> b!1133384 m!1283683))

(assert (=> b!1133385 m!1281473))

(assert (=> b!1133385 m!1283681))

(assert (=> b!1132094 d!319518))

(assert (=> b!1132094 d!319054))

(declare-fun d!319520 () Bool)

(declare-fun res!509662 () Bool)

(declare-fun e!724206 () Bool)

(assert (=> d!319520 (=> res!509662 e!724206)))

(assert (=> d!319520 (= res!509662 ((_ is Nil!10970) (list!3972 (append!334 acc!225 lt!380180))))))

(assert (=> d!319520 (= (forall!2662 (list!3972 (append!334 acc!225 lt!380180)) lambda!45565) e!724206)))

(declare-fun b!1133388 () Bool)

(declare-fun e!724207 () Bool)

(assert (=> b!1133388 (= e!724206 e!724207)))

(declare-fun res!509663 () Bool)

(assert (=> b!1133388 (=> (not res!509663) (not e!724207))))

(assert (=> b!1133388 (= res!509663 (dynLambda!4844 lambda!45565 (h!16371 (list!3972 (append!334 acc!225 lt!380180)))))))

(declare-fun b!1133389 () Bool)

(assert (=> b!1133389 (= e!724207 (forall!2662 (t!106954 (list!3972 (append!334 acc!225 lt!380180))) lambda!45565))))

(assert (= (and d!319520 (not res!509662)) b!1133388))

(assert (= (and b!1133388 res!509663) b!1133389))

(declare-fun b_lambda!33325 () Bool)

(assert (=> (not b_lambda!33325) (not b!1133388)))

(declare-fun m!1283685 () Bool)

(assert (=> b!1133388 m!1283685))

(declare-fun m!1283687 () Bool)

(assert (=> b!1133389 m!1283687))

(assert (=> d!319038 d!319520))

(declare-fun d!319522 () Bool)

(assert (=> d!319522 (= (list!3972 (append!334 acc!225 lt!380180)) (list!3978 (c!189636 (append!334 acc!225 lt!380180))))))

(declare-fun bs!278051 () Bool)

(assert (= bs!278051 d!319522))

(declare-fun m!1283689 () Bool)

(assert (=> bs!278051 m!1283689))

(assert (=> d!319038 d!319522))

(declare-fun b!1133392 () Bool)

(declare-fun e!724208 () Bool)

(declare-fun e!724209 () Bool)

(assert (=> b!1133392 (= e!724208 e!724209)))

(declare-fun lt!381354 () Unit!16686)

(assert (=> b!1133392 (= lt!381354 (lemmaForallConcat!89 (list!3978 (left!9524 (c!189636 (append!334 acc!225 lt!380180)))) (list!3978 (right!9854 (c!189636 (append!334 acc!225 lt!380180)))) lambda!45565))))

(declare-fun res!509665 () Bool)

(assert (=> b!1133392 (= res!509665 (forall!2663 (left!9524 (c!189636 (append!334 acc!225 lt!380180))) lambda!45565))))

(assert (=> b!1133392 (=> (not res!509665) (not e!724209))))

(declare-fun b!1133393 () Bool)

(assert (=> b!1133393 (= e!724209 (forall!2663 (right!9854 (c!189636 (append!334 acc!225 lt!380180))) lambda!45565))))

(declare-fun b!1133391 () Bool)

(assert (=> b!1133391 (= e!724208 (forall!2668 (xs!6194 (c!189636 (append!334 acc!225 lt!380180))) lambda!45565))))

(declare-fun b!1133390 () Bool)

(declare-fun e!724210 () Bool)

(assert (=> b!1133390 (= e!724210 e!724208)))

(declare-fun c!189865 () Bool)

(assert (=> b!1133390 (= c!189865 ((_ is Leaf!5457) (c!189636 (append!334 acc!225 lt!380180))))))

(declare-fun d!319524 () Bool)

(declare-fun lt!381353 () Bool)

(assert (=> d!319524 (= lt!381353 (forall!2662 (list!3978 (c!189636 (append!334 acc!225 lt!380180))) lambda!45565))))

(assert (=> d!319524 (= lt!381353 e!724210)))

(declare-fun res!509664 () Bool)

(assert (=> d!319524 (=> res!509664 e!724210)))

(assert (=> d!319524 (= res!509664 ((_ is Empty!3501) (c!189636 (append!334 acc!225 lt!380180))))))

(assert (=> d!319524 (= (forall!2663 (c!189636 (append!334 acc!225 lt!380180)) lambda!45565) lt!381353)))

(assert (= (and d!319524 (not res!509664)) b!1133390))

(assert (= (and b!1133390 c!189865) b!1133391))

(assert (= (and b!1133390 (not c!189865)) b!1133392))

(assert (= (and b!1133392 res!509665) b!1133393))

(declare-fun m!1283691 () Bool)

(assert (=> b!1133392 m!1283691))

(declare-fun m!1283693 () Bool)

(assert (=> b!1133392 m!1283693))

(assert (=> b!1133392 m!1283691))

(assert (=> b!1133392 m!1283693))

(declare-fun m!1283695 () Bool)

(assert (=> b!1133392 m!1283695))

(declare-fun m!1283697 () Bool)

(assert (=> b!1133392 m!1283697))

(declare-fun m!1283699 () Bool)

(assert (=> b!1133393 m!1283699))

(declare-fun m!1283701 () Bool)

(assert (=> b!1133391 m!1283701))

(assert (=> d!319524 m!1283689))

(assert (=> d!319524 m!1283689))

(declare-fun m!1283703 () Bool)

(assert (=> d!319524 m!1283703))

(assert (=> d!319038 d!319524))

(declare-fun d!319526 () Bool)

(assert (=> d!319526 (= (inv!14220 (xs!6192 (c!189634 (tokens!1456 pt!21)))) (<= (size!8565 (innerList!3559 (xs!6192 (c!189634 (tokens!1456 pt!21))))) 2147483647))))

(declare-fun bs!278052 () Bool)

(assert (= bs!278052 d!319526))

(declare-fun m!1283705 () Bool)

(assert (=> bs!278052 m!1283705))

(assert (=> b!1132186 d!319526))

(declare-fun d!319528 () Bool)

(declare-fun res!509666 () Bool)

(declare-fun e!724211 () Bool)

(assert (=> d!319528 (=> res!509666 e!724211)))

(assert (=> d!319528 (= res!509666 ((_ is Nil!10970) (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970))))))

(assert (=> d!319528 (= (forall!2662 (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970)) lambda!45565) e!724211)))

(declare-fun b!1133394 () Bool)

(declare-fun e!724212 () Bool)

(assert (=> b!1133394 (= e!724211 e!724212)))

(declare-fun res!509667 () Bool)

(assert (=> b!1133394 (=> (not res!509667) (not e!724212))))

(assert (=> b!1133394 (= res!509667 (dynLambda!4844 lambda!45565 (h!16371 (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970)))))))

(declare-fun b!1133395 () Bool)

(assert (=> b!1133395 (= e!724212 (forall!2662 (t!106954 (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970))) lambda!45565))))

(assert (= (and d!319528 (not res!509666)) b!1133394))

(assert (= (and b!1133394 res!509667) b!1133395))

(declare-fun b_lambda!33327 () Bool)

(assert (=> (not b_lambda!33327) (not b!1133394)))

(declare-fun m!1283707 () Bool)

(assert (=> b!1133394 m!1283707))

(declare-fun m!1283709 () Bool)

(assert (=> b!1133395 m!1283709))

(assert (=> d!319046 d!319528))

(declare-fun d!319530 () Bool)

(declare-fun e!724218 () Bool)

(assert (=> d!319530 e!724218))

(declare-fun res!509673 () Bool)

(assert (=> d!319530 (=> (not res!509673) (not e!724218))))

(declare-fun lt!381357 () List!10994)

(assert (=> d!319530 (= res!509673 (= (content!1576 lt!381357) ((_ map or) (content!1576 (list!3972 acc!225)) (content!1576 (Cons!10970 lt!380180 Nil!10970)))))))

(declare-fun e!724217 () List!10994)

(assert (=> d!319530 (= lt!381357 e!724217)))

(declare-fun c!189868 () Bool)

(assert (=> d!319530 (= c!189868 ((_ is Nil!10970) (list!3972 acc!225)))))

(assert (=> d!319530 (= (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970)) lt!381357)))

(declare-fun b!1133404 () Bool)

(assert (=> b!1133404 (= e!724217 (Cons!10970 lt!380180 Nil!10970))))

(declare-fun b!1133406 () Bool)

(declare-fun res!509672 () Bool)

(assert (=> b!1133406 (=> (not res!509672) (not e!724218))))

(assert (=> b!1133406 (= res!509672 (= (size!8563 lt!381357) (+ (size!8563 (list!3972 acc!225)) (size!8563 (Cons!10970 lt!380180 Nil!10970)))))))

(declare-fun b!1133407 () Bool)

(assert (=> b!1133407 (= e!724218 (or (not (= (Cons!10970 lt!380180 Nil!10970) Nil!10970)) (= lt!381357 (list!3972 acc!225))))))

(declare-fun b!1133405 () Bool)

(assert (=> b!1133405 (= e!724217 (Cons!10970 (h!16371 (list!3972 acc!225)) (++!2915 (t!106954 (list!3972 acc!225)) (Cons!10970 lt!380180 Nil!10970))))))

(assert (= (and d!319530 c!189868) b!1133404))

(assert (= (and d!319530 (not c!189868)) b!1133405))

(assert (= (and d!319530 res!509673) b!1133406))

(assert (= (and b!1133406 res!509672) b!1133407))

(declare-fun m!1283711 () Bool)

(assert (=> d!319530 m!1283711))

(assert (=> d!319530 m!1281473))

(assert (=> d!319530 m!1283675))

(declare-fun m!1283713 () Bool)

(assert (=> d!319530 m!1283713))

(declare-fun m!1283715 () Bool)

(assert (=> b!1133406 m!1283715))

(assert (=> b!1133406 m!1281473))

(assert (=> b!1133406 m!1283671))

(declare-fun m!1283717 () Bool)

(assert (=> b!1133406 m!1283717))

(declare-fun m!1283719 () Bool)

(assert (=> b!1133405 m!1283719))

(assert (=> d!319046 d!319530))

(declare-fun d!319532 () Bool)

(assert (=> d!319532 (forall!2662 (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970)) lambda!45565)))

(assert (=> d!319532 true))

(declare-fun _$78!236 () Unit!16686)

(assert (=> d!319532 (= (choose!7246 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970) lambda!45565) _$78!236)))

(declare-fun bs!278053 () Bool)

(assert (= bs!278053 d!319532))

(assert (=> bs!278053 m!1281473))

(assert (=> bs!278053 m!1281875))

(assert (=> bs!278053 m!1281875))

(assert (=> bs!278053 m!1281877))

(assert (=> d!319046 d!319532))

(assert (=> d!319046 d!319500))

(declare-fun d!319534 () Bool)

(declare-fun res!509680 () Bool)

(declare-fun e!724221 () Bool)

(assert (=> d!319534 (=> (not res!509680) (not e!724221))))

(assert (=> d!319534 (= res!509680 (= (csize!7230 (c!189635 indices!2)) (+ (size!8562 (left!9523 (c!189635 indices!2))) (size!8562 (right!9853 (c!189635 indices!2))))))))

(assert (=> d!319534 (= (inv!14217 (c!189635 indices!2)) e!724221)))

(declare-fun b!1133414 () Bool)

(declare-fun res!509681 () Bool)

(assert (=> b!1133414 (=> (not res!509681) (not e!724221))))

(assert (=> b!1133414 (= res!509681 (and (not (= (left!9523 (c!189635 indices!2)) Empty!3500)) (not (= (right!9853 (c!189635 indices!2)) Empty!3500))))))

(declare-fun b!1133415 () Bool)

(declare-fun res!509682 () Bool)

(assert (=> b!1133415 (=> (not res!509682) (not e!724221))))

(declare-fun height!459 (Conc!3500) Int)

(assert (=> b!1133415 (= res!509682 (= (cheight!3711 (c!189635 indices!2)) (+ (max!0 (height!459 (left!9523 (c!189635 indices!2))) (height!459 (right!9853 (c!189635 indices!2)))) 1)))))

(declare-fun b!1133416 () Bool)

(assert (=> b!1133416 (= e!724221 (<= 0 (cheight!3711 (c!189635 indices!2))))))

(assert (= (and d!319534 res!509680) b!1133414))

(assert (= (and b!1133414 res!509681) b!1133415))

(assert (= (and b!1133415 res!509682) b!1133416))

(assert (=> d!319534 m!1283461))

(declare-fun m!1283721 () Bool)

(assert (=> d!319534 m!1283721))

(declare-fun m!1283723 () Bool)

(assert (=> b!1133415 m!1283723))

(declare-fun m!1283725 () Bool)

(assert (=> b!1133415 m!1283725))

(assert (=> b!1133415 m!1283723))

(assert (=> b!1133415 m!1283725))

(declare-fun m!1283727 () Bool)

(assert (=> b!1133415 m!1283727))

(assert (=> b!1132101 d!319534))

(assert (=> b!1132054 d!319204))

(declare-fun d!319536 () Bool)

(declare-fun res!509687 () Bool)

(declare-fun e!724224 () Bool)

(assert (=> d!319536 (=> (not res!509687) (not e!724224))))

(declare-fun list!3990 (IArray!7005) List!10993)

(assert (=> d!319536 (= res!509687 (<= (size!8561 (list!3990 (xs!6193 (c!189635 indices!2)))) 512))))

(assert (=> d!319536 (= (inv!14218 (c!189635 indices!2)) e!724224)))

(declare-fun b!1133421 () Bool)

(declare-fun res!509688 () Bool)

(assert (=> b!1133421 (=> (not res!509688) (not e!724224))))

(assert (=> b!1133421 (= res!509688 (= (csize!7231 (c!189635 indices!2)) (size!8561 (list!3990 (xs!6193 (c!189635 indices!2))))))))

(declare-fun b!1133422 () Bool)

(assert (=> b!1133422 (= e!724224 (and (> (csize!7231 (c!189635 indices!2)) 0) (<= (csize!7231 (c!189635 indices!2)) 512)))))

(assert (= (and d!319536 res!509687) b!1133421))

(assert (= (and b!1133421 res!509688) b!1133422))

(declare-fun m!1283729 () Bool)

(assert (=> d!319536 m!1283729))

(assert (=> d!319536 m!1283729))

(declare-fun m!1283731 () Bool)

(assert (=> d!319536 m!1283731))

(assert (=> b!1133421 m!1283729))

(assert (=> b!1133421 m!1283729))

(assert (=> b!1133421 m!1283731))

(assert (=> b!1132103 d!319536))

(declare-fun d!319538 () Bool)

(declare-fun c!189869 () Bool)

(assert (=> d!319538 (= c!189869 ((_ is Node!3501) (left!9524 (c!189636 acc!225))))))

(declare-fun e!724225 () Bool)

(assert (=> d!319538 (= (inv!14199 (left!9524 (c!189636 acc!225))) e!724225)))

(declare-fun b!1133423 () Bool)

(assert (=> b!1133423 (= e!724225 (inv!14207 (left!9524 (c!189636 acc!225))))))

(declare-fun b!1133424 () Bool)

(declare-fun e!724226 () Bool)

(assert (=> b!1133424 (= e!724225 e!724226)))

(declare-fun res!509689 () Bool)

(assert (=> b!1133424 (= res!509689 (not ((_ is Leaf!5457) (left!9524 (c!189636 acc!225)))))))

(assert (=> b!1133424 (=> res!509689 e!724226)))

(declare-fun b!1133425 () Bool)

(assert (=> b!1133425 (= e!724226 (inv!14208 (left!9524 (c!189636 acc!225))))))

(assert (= (and d!319538 c!189869) b!1133423))

(assert (= (and d!319538 (not c!189869)) b!1133424))

(assert (= (and b!1133424 (not res!509689)) b!1133425))

(declare-fun m!1283733 () Bool)

(assert (=> b!1133423 m!1283733))

(declare-fun m!1283735 () Bool)

(assert (=> b!1133425 m!1283735))

(assert (=> b!1132174 d!319538))

(declare-fun d!319540 () Bool)

(declare-fun c!189870 () Bool)

(assert (=> d!319540 (= c!189870 ((_ is Node!3501) (right!9854 (c!189636 acc!225))))))

(declare-fun e!724227 () Bool)

(assert (=> d!319540 (= (inv!14199 (right!9854 (c!189636 acc!225))) e!724227)))

(declare-fun b!1133426 () Bool)

(assert (=> b!1133426 (= e!724227 (inv!14207 (right!9854 (c!189636 acc!225))))))

(declare-fun b!1133427 () Bool)

(declare-fun e!724228 () Bool)

(assert (=> b!1133427 (= e!724227 e!724228)))

(declare-fun res!509690 () Bool)

(assert (=> b!1133427 (= res!509690 (not ((_ is Leaf!5457) (right!9854 (c!189636 acc!225)))))))

(assert (=> b!1133427 (=> res!509690 e!724228)))

(declare-fun b!1133428 () Bool)

(assert (=> b!1133428 (= e!724228 (inv!14208 (right!9854 (c!189636 acc!225))))))

(assert (= (and d!319540 c!189870) b!1133426))

(assert (= (and d!319540 (not c!189870)) b!1133427))

(assert (= (and b!1133427 (not res!509690)) b!1133428))

(declare-fun m!1283737 () Bool)

(assert (=> b!1133426 m!1283737))

(declare-fun m!1283739 () Bool)

(assert (=> b!1133428 m!1283739))

(assert (=> b!1132174 d!319540))

(declare-fun b!1133429 () Bool)

(declare-fun res!509692 () Bool)

(declare-fun e!724230 () Bool)

(assert (=> b!1133429 (=> (not res!509692) (not e!724230))))

(assert (=> b!1133429 (= res!509692 (<= (- (height!456 (left!9524 (append!336 (c!189636 acc!225) lt!380180))) (height!456 (right!9854 (append!336 (c!189636 acc!225) lt!380180)))) 1))))

(declare-fun b!1133430 () Bool)

(declare-fun res!509696 () Bool)

(assert (=> b!1133430 (=> (not res!509696) (not e!724230))))

(assert (=> b!1133430 (= res!509696 (isBalanced!971 (right!9854 (append!336 (c!189636 acc!225) lt!380180))))))

(declare-fun d!319542 () Bool)

(declare-fun res!509691 () Bool)

(declare-fun e!724229 () Bool)

(assert (=> d!319542 (=> res!509691 e!724229)))

(assert (=> d!319542 (= res!509691 (not ((_ is Node!3501) (append!336 (c!189636 acc!225) lt!380180))))))

(assert (=> d!319542 (= (isBalanced!971 (append!336 (c!189636 acc!225) lt!380180)) e!724229)))

(declare-fun b!1133431 () Bool)

(assert (=> b!1133431 (= e!724230 (not (isEmpty!6805 (right!9854 (append!336 (c!189636 acc!225) lt!380180)))))))

(declare-fun b!1133432 () Bool)

(assert (=> b!1133432 (= e!724229 e!724230)))

(declare-fun res!509695 () Bool)

(assert (=> b!1133432 (=> (not res!509695) (not e!724230))))

(assert (=> b!1133432 (= res!509695 (<= (- 1) (- (height!456 (left!9524 (append!336 (c!189636 acc!225) lt!380180))) (height!456 (right!9854 (append!336 (c!189636 acc!225) lt!380180))))))))

(declare-fun b!1133433 () Bool)

(declare-fun res!509694 () Bool)

(assert (=> b!1133433 (=> (not res!509694) (not e!724230))))

(assert (=> b!1133433 (= res!509694 (not (isEmpty!6805 (left!9524 (append!336 (c!189636 acc!225) lt!380180)))))))

(declare-fun b!1133434 () Bool)

(declare-fun res!509693 () Bool)

(assert (=> b!1133434 (=> (not res!509693) (not e!724230))))

(assert (=> b!1133434 (= res!509693 (isBalanced!971 (left!9524 (append!336 (c!189636 acc!225) lt!380180))))))

(assert (= (and d!319542 (not res!509691)) b!1133432))

(assert (= (and b!1133432 res!509695) b!1133429))

(assert (= (and b!1133429 res!509692) b!1133434))

(assert (= (and b!1133434 res!509693) b!1133430))

(assert (= (and b!1133430 res!509696) b!1133433))

(assert (= (and b!1133433 res!509694) b!1133431))

(declare-fun m!1283741 () Bool)

(assert (=> b!1133432 m!1283741))

(declare-fun m!1283743 () Bool)

(assert (=> b!1133432 m!1283743))

(declare-fun m!1283745 () Bool)

(assert (=> b!1133433 m!1283745))

(declare-fun m!1283747 () Bool)

(assert (=> b!1133431 m!1283747))

(declare-fun m!1283749 () Bool)

(assert (=> b!1133430 m!1283749))

(declare-fun m!1283751 () Bool)

(assert (=> b!1133434 m!1283751))

(assert (=> b!1133429 m!1283741))

(assert (=> b!1133429 m!1283743))

(assert (=> d!319040 d!319542))

(declare-fun bm!80757 () Bool)

(declare-fun call!80762 () IArray!7007)

(declare-fun fill!45 (Int PrintableTokens!468) IArray!7007)

(assert (=> bm!80757 (= call!80762 (fill!45 1 lt!380180))))

(declare-fun lt!381439 () List!10994)

(declare-fun lt!381435 () List!10994)

(declare-fun lt!381431 () List!10994)

(declare-fun call!80765 () List!10994)

(declare-fun c!189884 () Bool)

(declare-fun bm!80758 () Bool)

(declare-fun lt!381429 () List!10994)

(assert (=> bm!80758 (= call!80765 (++!2915 (ite c!189884 lt!381431 lt!381429) (ite c!189884 lt!381439 lt!381435)))))

(declare-fun b!1133495 () Bool)

(declare-fun e!724265 () Conc!3501)

(declare-fun e!724270 () Conc!3501)

(assert (=> b!1133495 (= e!724265 e!724270)))

(declare-fun c!189887 () Bool)

(assert (=> b!1133495 (= c!189887 ((_ is Node!3501) (c!189636 acc!225)))))

(declare-fun b!1133496 () Bool)

(declare-fun e!724266 () Conc!3501)

(declare-fun call!80770 () Conc!3501)

(assert (=> b!1133496 (= e!724266 call!80770)))

(declare-fun d!319544 () Bool)

(declare-fun e!724269 () Bool)

(assert (=> d!319544 e!724269))

(declare-fun res!509725 () Bool)

(assert (=> d!319544 (=> (not res!509725) (not e!724269))))

(declare-fun lt!381428 () Conc!3501)

(assert (=> d!319544 (= res!509725 (isBalanced!971 lt!381428))))

(assert (=> d!319544 (= lt!381428 e!724265)))

(declare-fun c!189886 () Bool)

(assert (=> d!319544 (= c!189886 ((_ is Empty!3501) (c!189636 acc!225)))))

(assert (=> d!319544 (isBalanced!971 (c!189636 acc!225))))

(assert (=> d!319544 (= (append!336 (c!189636 acc!225) lt!380180) lt!381428)))

(declare-fun b!1133497 () Bool)

(declare-fun e!724268 () Conc!3501)

(declare-fun call!80768 () Conc!3501)

(declare-fun lt!381444 () Conc!3501)

(declare-fun <>!66 (Conc!3501 Conc!3501) Conc!3501)

(assert (=> b!1133497 (= e!724268 (<>!66 call!80768 (right!9854 lt!381444)))))

(declare-fun call!80769 () List!10994)

(assert (=> b!1133497 (= lt!381429 call!80769)))

(declare-fun call!80766 () List!10994)

(assert (=> b!1133497 (= lt!381435 call!80766)))

(declare-fun lt!381432 () List!10994)

(assert (=> b!1133497 (= lt!381432 (list!3978 (right!9854 lt!381444)))))

(declare-fun lt!381443 () Unit!16686)

(declare-fun call!80767 () Unit!16686)

(assert (=> b!1133497 (= lt!381443 call!80767)))

(declare-fun call!80763 () List!10994)

(assert (=> b!1133497 (= (++!2915 call!80765 lt!381432) (++!2915 lt!381429 call!80763))))

(declare-fun lt!381434 () Unit!16686)

(assert (=> b!1133497 (= lt!381434 lt!381443)))

(declare-fun lt!381433 () List!10994)

(assert (=> b!1133497 (= lt!381433 call!80769)))

(declare-fun lt!381445 () List!10994)

(assert (=> b!1133497 (= lt!381445 (list!3978 (right!9854 (c!189636 acc!225))))))

(declare-fun lt!381438 () List!10994)

(assert (=> b!1133497 (= lt!381438 (Cons!10970 lt!380180 Nil!10970))))

(declare-fun lt!381436 () Unit!16686)

(declare-fun lemmaConcatAssociativity!787 (List!10994 List!10994 List!10994) Unit!16686)

(assert (=> b!1133497 (= lt!381436 (lemmaConcatAssociativity!787 lt!381433 lt!381445 lt!381438))))

(declare-fun call!80771 () List!10994)

(declare-fun call!80764 () List!10994)

(assert (=> b!1133497 (= (++!2915 call!80764 lt!381438) (++!2915 lt!381433 call!80771))))

(declare-fun lt!381437 () Unit!16686)

(assert (=> b!1133497 (= lt!381437 lt!381436)))

(declare-fun b!1133498 () Bool)

(declare-fun c!189885 () Bool)

(assert (=> b!1133498 (= c!189885 (< (csize!7233 (c!189636 acc!225)) 512))))

(assert (=> b!1133498 (= e!724270 e!724266)))

(declare-fun bm!80759 () Bool)

(assert (=> bm!80759 (= call!80769 (list!3978 (left!9524 (c!189636 acc!225))))))

(declare-fun b!1133499 () Bool)

(declare-fun res!509724 () Bool)

(assert (=> b!1133499 (=> (not res!509724) (not e!724269))))

(assert (=> b!1133499 (= res!509724 (<= (height!456 lt!381428) (+ (height!456 (c!189636 acc!225)) 1)))))

(declare-fun b!1133500 () Bool)

(assert (=> b!1133500 (= c!189884 (<= (height!456 lt!381444) (+ (height!456 (left!9524 (c!189636 acc!225))) 1)))))

(assert (=> b!1133500 (= lt!381444 (append!336 (right!9854 (c!189636 acc!225)) lt!380180))))

(assert (=> b!1133500 (= e!724270 e!724268)))

(declare-fun lt!381430 () List!10994)

(declare-fun bm!80760 () Bool)

(assert (=> bm!80760 (= call!80767 (lemmaConcatAssociativity!787 (ite c!189884 lt!381430 lt!381429) (ite c!189884 lt!381431 lt!381435) (ite c!189884 lt!381439 lt!381432)))))

(declare-fun b!1133501 () Bool)

(assert (=> b!1133501 (= e!724265 (Leaf!5457 call!80762 1))))

(declare-fun b!1133502 () Bool)

(declare-fun append!338 (IArray!7007 PrintableTokens!468) IArray!7007)

(assert (=> b!1133502 (= e!724266 (Leaf!5457 (append!338 (xs!6194 (c!189636 acc!225)) lt!380180) (+ (csize!7233 (c!189636 acc!225)) 1)))))

(declare-fun lt!381442 () List!10994)

(assert (=> b!1133502 (= lt!381442 ($colon+!73 (list!3985 (xs!6194 (c!189636 acc!225))) lt!380180))))

(declare-fun bm!80761 () Bool)

(assert (=> bm!80761 (= call!80766 (list!3978 (ite c!189884 (right!9854 (c!189636 acc!225)) (left!9524 lt!381444))))))

(declare-fun b!1133503 () Bool)

(declare-fun res!509723 () Bool)

(assert (=> b!1133503 (=> (not res!509723) (not e!724269))))

(assert (=> b!1133503 (= res!509723 (<= (height!456 (c!189636 acc!225)) (height!456 lt!381428)))))

(declare-fun bm!80762 () Bool)

(assert (=> bm!80762 (= call!80771 (++!2915 (ite c!189884 lt!381430 lt!381445) (ite c!189884 lt!381431 lt!381438)))))

(declare-fun bm!80763 () Bool)

(declare-fun c!189883 () Bool)

(assert (=> bm!80763 (= c!189883 c!189887)))

(declare-fun e!724267 () Conc!3501)

(assert (=> bm!80763 (= call!80770 (<>!66 (ite c!189887 (left!9524 (c!189636 acc!225)) (c!189636 acc!225)) e!724267))))

(declare-fun b!1133504 () Bool)

(assert (=> b!1133504 (= e!724268 call!80768)))

(assert (=> b!1133504 (= lt!381430 call!80769)))

(assert (=> b!1133504 (= lt!381431 call!80766)))

(assert (=> b!1133504 (= lt!381439 (Cons!10970 lt!380180 Nil!10970))))

(declare-fun lt!381441 () Unit!16686)

(assert (=> b!1133504 (= lt!381441 call!80767)))

(assert (=> b!1133504 (= call!80763 call!80764)))

(declare-fun lt!381440 () Unit!16686)

(assert (=> b!1133504 (= lt!381440 lt!381441)))

(declare-fun b!1133505 () Bool)

(assert (=> b!1133505 (= e!724267 (Leaf!5457 call!80762 1))))

(declare-fun b!1133506 () Bool)

(assert (=> b!1133506 (= e!724267 (ite c!189884 lt!381444 (left!9524 lt!381444)))))

(declare-fun bm!80764 () Bool)

(assert (=> bm!80764 (= call!80763 (++!2915 (ite c!189884 call!80771 lt!381435) (ite c!189884 lt!381439 lt!381432)))))

(declare-fun bm!80765 () Bool)

(assert (=> bm!80765 (= call!80764 (++!2915 (ite c!189884 lt!381430 lt!381433) (ite c!189884 call!80765 lt!381445)))))

(declare-fun bm!80766 () Bool)

(assert (=> bm!80766 (= call!80768 call!80770)))

(declare-fun b!1133507 () Bool)

(assert (=> b!1133507 (= e!724269 (= (list!3978 lt!381428) ($colon+!73 (list!3978 (c!189636 acc!225)) lt!380180)))))

(assert (= (and d!319544 c!189886) b!1133501))

(assert (= (and d!319544 (not c!189886)) b!1133495))

(assert (= (and b!1133495 c!189887) b!1133500))

(assert (= (and b!1133495 (not c!189887)) b!1133498))

(assert (= (and b!1133500 c!189884) b!1133504))

(assert (= (and b!1133500 (not c!189884)) b!1133497))

(assert (= (or b!1133504 b!1133497) bm!80758))

(assert (= (or b!1133504 b!1133497) bm!80759))

(assert (= (or b!1133504 b!1133497) bm!80760))

(assert (= (or b!1133504 b!1133497) bm!80761))

(assert (= (or b!1133504 b!1133497) bm!80766))

(assert (= (or b!1133504 b!1133497) bm!80762))

(assert (= (or b!1133504 b!1133497) bm!80764))

(assert (= (or b!1133504 b!1133497) bm!80765))

(assert (= (and b!1133498 c!189885) b!1133502))

(assert (= (and b!1133498 (not c!189885)) b!1133496))

(assert (= (or bm!80766 b!1133496) bm!80763))

(assert (= (and bm!80763 c!189883) b!1133506))

(assert (= (and bm!80763 (not c!189883)) b!1133505))

(assert (= (or b!1133501 b!1133505) bm!80757))

(assert (= (and d!319544 res!509725) b!1133503))

(assert (= (and b!1133503 res!509723) b!1133499))

(assert (= (and b!1133499 res!509724) b!1133507))

(declare-fun m!1283855 () Bool)

(assert (=> bm!80760 m!1283855))

(declare-fun m!1283857 () Bool)

(assert (=> b!1133507 m!1283857))

(assert (=> b!1133507 m!1281883))

(assert (=> b!1133507 m!1281883))

(declare-fun m!1283859 () Bool)

(assert (=> b!1133507 m!1283859))

(assert (=> b!1133497 m!1283215))

(declare-fun m!1283861 () Bool)

(assert (=> b!1133497 m!1283861))

(declare-fun m!1283863 () Bool)

(assert (=> b!1133497 m!1283863))

(declare-fun m!1283865 () Bool)

(assert (=> b!1133497 m!1283865))

(declare-fun m!1283867 () Bool)

(assert (=> b!1133497 m!1283867))

(declare-fun m!1283869 () Bool)

(assert (=> b!1133497 m!1283869))

(declare-fun m!1283871 () Bool)

(assert (=> b!1133497 m!1283871))

(declare-fun m!1283873 () Bool)

(assert (=> b!1133497 m!1283873))

(declare-fun m!1283875 () Bool)

(assert (=> bm!80757 m!1283875))

(declare-fun m!1283877 () Bool)

(assert (=> d!319544 m!1283877))

(assert (=> d!319544 m!1281965))

(declare-fun m!1283879 () Bool)

(assert (=> bm!80761 m!1283879))

(declare-fun m!1283881 () Bool)

(assert (=> bm!80758 m!1283881))

(declare-fun m!1283883 () Bool)

(assert (=> b!1133499 m!1283883))

(declare-fun m!1283885 () Bool)

(assert (=> b!1133499 m!1283885))

(declare-fun m!1283887 () Bool)

(assert (=> b!1133500 m!1283887))

(assert (=> b!1133500 m!1283187))

(declare-fun m!1283889 () Bool)

(assert (=> b!1133500 m!1283889))

(declare-fun m!1283891 () Bool)

(assert (=> bm!80765 m!1283891))

(declare-fun m!1283893 () Bool)

(assert (=> bm!80764 m!1283893))

(assert (=> b!1133503 m!1283885))

(assert (=> b!1133503 m!1283883))

(declare-fun m!1283895 () Bool)

(assert (=> b!1133502 m!1283895))

(assert (=> b!1133502 m!1283193))

(assert (=> b!1133502 m!1283193))

(declare-fun m!1283897 () Bool)

(assert (=> b!1133502 m!1283897))

(assert (=> bm!80759 m!1283213))

(declare-fun m!1283899 () Bool)

(assert (=> bm!80762 m!1283899))

(declare-fun m!1283901 () Bool)

(assert (=> bm!80763 m!1283901))

(assert (=> d!319040 d!319544))

(declare-fun b!1133560 () Bool)

(declare-fun e!724312 () Bool)

(declare-fun e!724311 () Bool)

(assert (=> b!1133560 (= e!724312 e!724311)))

(declare-fun res!509743 () Bool)

(assert (=> b!1133560 (=> (not res!509743) (not e!724311))))

(assert (=> b!1133560 (= res!509743 (<= (- 1) (- (height!459 (left!9523 (c!189635 indices!2))) (height!459 (right!9853 (c!189635 indices!2))))))))

(declare-fun b!1133561 () Bool)

(declare-fun res!509739 () Bool)

(assert (=> b!1133561 (=> (not res!509739) (not e!724311))))

(assert (=> b!1133561 (= res!509739 (isBalanced!972 (left!9523 (c!189635 indices!2))))))

(declare-fun b!1133562 () Bool)

(declare-fun res!509741 () Bool)

(assert (=> b!1133562 (=> (not res!509741) (not e!724311))))

(assert (=> b!1133562 (= res!509741 (isBalanced!972 (right!9853 (c!189635 indices!2))))))

(declare-fun b!1133563 () Bool)

(declare-fun res!509738 () Bool)

(assert (=> b!1133563 (=> (not res!509738) (not e!724311))))

(assert (=> b!1133563 (= res!509738 (not (isEmpty!6800 (left!9523 (c!189635 indices!2)))))))

(declare-fun b!1133564 () Bool)

(assert (=> b!1133564 (= e!724311 (not (isEmpty!6800 (right!9853 (c!189635 indices!2)))))))

(declare-fun d!319556 () Bool)

(declare-fun res!509740 () Bool)

(assert (=> d!319556 (=> res!509740 e!724312)))

(assert (=> d!319556 (= res!509740 (not ((_ is Node!3500) (c!189635 indices!2))))))

(assert (=> d!319556 (= (isBalanced!972 (c!189635 indices!2)) e!724312)))

(declare-fun b!1133565 () Bool)

(declare-fun res!509742 () Bool)

(assert (=> b!1133565 (=> (not res!509742) (not e!724311))))

(assert (=> b!1133565 (= res!509742 (<= (- (height!459 (left!9523 (c!189635 indices!2))) (height!459 (right!9853 (c!189635 indices!2)))) 1))))

(assert (= (and d!319556 (not res!509740)) b!1133560))

(assert (= (and b!1133560 res!509743) b!1133565))

(assert (= (and b!1133565 res!509742) b!1133561))

(assert (= (and b!1133561 res!509739) b!1133562))

(assert (= (and b!1133562 res!509741) b!1133563))

(assert (= (and b!1133563 res!509738) b!1133564))

(declare-fun m!1283925 () Bool)

(assert (=> b!1133561 m!1283925))

(assert (=> b!1133560 m!1283723))

(assert (=> b!1133560 m!1283725))

(declare-fun m!1283927 () Bool)

(assert (=> b!1133563 m!1283927))

(declare-fun m!1283929 () Bool)

(assert (=> b!1133564 m!1283929))

(assert (=> b!1133565 m!1283723))

(assert (=> b!1133565 m!1283725))

(declare-fun m!1283931 () Bool)

(assert (=> b!1133562 m!1283931))

(assert (=> d!319084 d!319556))

(declare-fun d!319558 () Bool)

(declare-fun lt!381446 () Bool)

(declare-fun e!724319 () Bool)

(assert (=> d!319558 (= lt!381446 e!724319)))

(declare-fun res!509745 () Bool)

(assert (=> d!319558 (=> (not res!509745) (not e!724319))))

(assert (=> d!319558 (= res!509745 (= (list!3976 (_1!6808 (lex!660 lt!380563 (rules!9226 pt!21) (print!597 lt!380563 (singletonSeq!605 (h!16368 lt!380580)))))) (list!3976 (singletonSeq!605 (h!16368 lt!380580)))))))

(declare-fun e!724320 () Bool)

(assert (=> d!319558 (= lt!381446 e!724320)))

(declare-fun res!509746 () Bool)

(assert (=> d!319558 (=> (not res!509746) (not e!724320))))

(declare-fun lt!381447 () tuple2!11922)

(assert (=> d!319558 (= res!509746 (= (size!8560 (_1!6808 lt!381447)) 1))))

(assert (=> d!319558 (= lt!381447 (lex!660 lt!380563 (rules!9226 pt!21) (print!597 lt!380563 (singletonSeq!605 (h!16368 lt!380580)))))))

(assert (=> d!319558 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319558 (= (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 lt!380580)) lt!381446)))

(declare-fun b!1133570 () Bool)

(declare-fun res!509744 () Bool)

(assert (=> b!1133570 (=> (not res!509744) (not e!724320))))

(assert (=> b!1133570 (= res!509744 (= (apply!2280 (_1!6808 lt!381447) 0) (h!16368 lt!380580)))))

(declare-fun b!1133571 () Bool)

(assert (=> b!1133571 (= e!724320 (isEmpty!6804 (_2!6808 lt!381447)))))

(declare-fun b!1133572 () Bool)

(assert (=> b!1133572 (= e!724319 (isEmpty!6804 (_2!6808 (lex!660 lt!380563 (rules!9226 pt!21) (print!597 lt!380563 (singletonSeq!605 (h!16368 lt!380580)))))))))

(assert (= (and d!319558 res!509746) b!1133570))

(assert (= (and b!1133570 res!509744) b!1133571))

(assert (= (and d!319558 res!509745) b!1133572))

(assert (=> d!319558 m!1281957))

(declare-fun m!1283943 () Bool)

(assert (=> d!319558 m!1283943))

(declare-fun m!1283947 () Bool)

(assert (=> d!319558 m!1283947))

(assert (=> d!319558 m!1283943))

(declare-fun m!1283951 () Bool)

(assert (=> d!319558 m!1283951))

(assert (=> d!319558 m!1283943))

(declare-fun m!1283953 () Bool)

(assert (=> d!319558 m!1283953))

(declare-fun m!1283955 () Bool)

(assert (=> d!319558 m!1283955))

(assert (=> d!319558 m!1283947))

(declare-fun m!1283957 () Bool)

(assert (=> d!319558 m!1283957))

(declare-fun m!1283961 () Bool)

(assert (=> b!1133570 m!1283961))

(declare-fun m!1283965 () Bool)

(assert (=> b!1133571 m!1283965))

(assert (=> b!1133572 m!1283943))

(assert (=> b!1133572 m!1283943))

(assert (=> b!1133572 m!1283947))

(assert (=> b!1133572 m!1283947))

(assert (=> b!1133572 m!1283957))

(declare-fun m!1283969 () Bool)

(assert (=> b!1133572 m!1283969))

(assert (=> b!1132049 d!319558))

(assert (=> d!319068 d!319204))

(declare-fun d!319560 () Bool)

(declare-fun res!509748 () Bool)

(declare-fun e!724325 () Bool)

(assert (=> d!319560 (=> res!509748 e!724325)))

(assert (=> d!319560 (= res!509748 (or (not ((_ is Cons!10967) (take!17 lt!380595 lt!380599))) (not ((_ is Cons!10967) (t!106951 (take!17 lt!380595 lt!380599))))))))

(assert (=> d!319560 (= (tokensListTwoByTwoPredicateSeparableList!71 lt!380563 (take!17 lt!380595 lt!380599) (rules!9226 pt!21)) e!724325)))

(declare-fun b!1133577 () Bool)

(declare-fun e!724326 () Bool)

(assert (=> b!1133577 (= e!724325 e!724326)))

(declare-fun res!509747 () Bool)

(assert (=> b!1133577 (=> (not res!509747) (not e!724326))))

(assert (=> b!1133577 (= res!509747 (separableTokensPredicate!95 lt!380563 (h!16368 (take!17 lt!380595 lt!380599)) (h!16368 (t!106951 (take!17 lt!380595 lt!380599))) (rules!9226 pt!21)))))

(declare-fun lt!381453 () Unit!16686)

(declare-fun Unit!16725 () Unit!16686)

(assert (=> b!1133577 (= lt!381453 Unit!16725)))

(assert (=> b!1133577 (> (size!8559 (charsOf!1033 (h!16368 (t!106951 (take!17 lt!380595 lt!380599))))) 0)))

(declare-fun lt!381450 () Unit!16686)

(declare-fun Unit!16726 () Unit!16686)

(assert (=> b!1133577 (= lt!381450 Unit!16726)))

(assert (=> b!1133577 (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 (t!106951 (take!17 lt!380595 lt!380599))))))

(declare-fun lt!381451 () Unit!16686)

(declare-fun Unit!16728 () Unit!16686)

(assert (=> b!1133577 (= lt!381451 Unit!16728)))

(assert (=> b!1133577 (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 (take!17 lt!380595 lt!380599)))))

(declare-fun lt!381452 () Unit!16686)

(declare-fun lt!381448 () Unit!16686)

(assert (=> b!1133577 (= lt!381452 lt!381448)))

(assert (=> b!1133577 (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 (t!106951 (take!17 lt!380595 lt!380599))))))

(assert (=> b!1133577 (= lt!381448 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380563 (rules!9226 pt!21) (take!17 lt!380595 lt!380599) (h!16368 (t!106951 (take!17 lt!380595 lt!380599)))))))

(declare-fun lt!381454 () Unit!16686)

(declare-fun lt!381449 () Unit!16686)

(assert (=> b!1133577 (= lt!381454 lt!381449)))

(assert (=> b!1133577 (rulesProduceIndividualToken!644 lt!380563 (rules!9226 pt!21) (h!16368 (take!17 lt!380595 lt!380599)))))

(assert (=> b!1133577 (= lt!381449 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380563 (rules!9226 pt!21) (take!17 lt!380595 lt!380599) (h!16368 (take!17 lt!380595 lt!380599))))))

(declare-fun b!1133578 () Bool)

(assert (=> b!1133578 (= e!724326 (tokensListTwoByTwoPredicateSeparableList!71 lt!380563 (Cons!10967 (h!16368 (t!106951 (take!17 lt!380595 lt!380599))) (t!106951 (t!106951 (take!17 lt!380595 lt!380599)))) (rules!9226 pt!21)))))

(assert (= (and d!319560 (not res!509748)) b!1133577))

(assert (= (and b!1133577 res!509747) b!1133578))

(assert (=> b!1133577 m!1281793))

(declare-fun m!1283977 () Bool)

(assert (=> b!1133577 m!1283977))

(assert (=> b!1133577 m!1281793))

(declare-fun m!1283981 () Bool)

(assert (=> b!1133577 m!1283981))

(declare-fun m!1283983 () Bool)

(assert (=> b!1133577 m!1283983))

(declare-fun m!1283987 () Bool)

(assert (=> b!1133577 m!1283987))

(assert (=> b!1133577 m!1283983))

(declare-fun m!1283991 () Bool)

(assert (=> b!1133577 m!1283991))

(declare-fun m!1283993 () Bool)

(assert (=> b!1133577 m!1283993))

(assert (=> b!1133577 m!1282531))

(declare-fun m!1283997 () Bool)

(assert (=> b!1133578 m!1283997))

(assert (=> b!1132051 d!319560))

(assert (=> b!1132051 d!319126))

(declare-fun d!319578 () Bool)

(declare-fun res!509749 () Bool)

(declare-fun e!724327 () Bool)

(assert (=> d!319578 (=> res!509749 e!724327)))

(assert (=> d!319578 (= res!509749 ((_ is Nil!10967) lt!380600))))

(assert (=> d!319578 (= (forall!2658 lt!380600 lambda!45591) e!724327)))

(declare-fun b!1133579 () Bool)

(declare-fun e!724328 () Bool)

(assert (=> b!1133579 (= e!724327 e!724328)))

(declare-fun res!509750 () Bool)

(assert (=> b!1133579 (=> (not res!509750) (not e!724328))))

(assert (=> b!1133579 (= res!509750 (dynLambda!4838 lambda!45591 (h!16368 lt!380600)))))

(declare-fun b!1133580 () Bool)

(assert (=> b!1133580 (= e!724328 (forall!2658 (t!106951 lt!380600) lambda!45591))))

(assert (= (and d!319578 (not res!509749)) b!1133579))

(assert (= (and b!1133579 res!509750) b!1133580))

(declare-fun b_lambda!33345 () Bool)

(assert (=> (not b_lambda!33345) (not b!1133579)))

(declare-fun m!1283999 () Bool)

(assert (=> b!1133579 m!1283999))

(declare-fun m!1284001 () Bool)

(assert (=> b!1133580 m!1284001))

(assert (=> b!1132051 d!319578))

(declare-fun d!319580 () Bool)

(assert (=> d!319580 (forall!2658 lt!380600 lambda!45591)))

(declare-fun lt!381455 () Unit!16686)

(assert (=> d!319580 (= lt!381455 (choose!7249 lt!380600 lt!380595 lambda!45591))))

(assert (=> d!319580 (forall!2658 lt!380595 lambda!45591)))

(assert (=> d!319580 (= (lemmaForallSubseq!74 lt!380600 lt!380595 lambda!45591) lt!381455)))

(declare-fun bs!278063 () Bool)

(assert (= bs!278063 d!319580))

(assert (=> bs!278063 m!1281819))

(declare-fun m!1284003 () Bool)

(assert (=> bs!278063 m!1284003))

(declare-fun m!1284005 () Bool)

(assert (=> bs!278063 m!1284005))

(assert (=> b!1132051 d!319580))

(declare-fun d!319582 () Bool)

(declare-fun c!189888 () Bool)

(assert (=> d!319582 (= c!189888 ((_ is Node!3499) (left!9522 (c!189634 (tokens!1456 pt!21)))))))

(declare-fun e!724329 () Bool)

(assert (=> d!319582 (= (inv!14196 (left!9522 (c!189634 (tokens!1456 pt!21)))) e!724329)))

(declare-fun b!1133581 () Bool)

(assert (=> b!1133581 (= e!724329 (inv!14215 (left!9522 (c!189634 (tokens!1456 pt!21)))))))

(declare-fun b!1133582 () Bool)

(declare-fun e!724330 () Bool)

(assert (=> b!1133582 (= e!724329 e!724330)))

(declare-fun res!509751 () Bool)

(assert (=> b!1133582 (= res!509751 (not ((_ is Leaf!5455) (left!9522 (c!189634 (tokens!1456 pt!21))))))))

(assert (=> b!1133582 (=> res!509751 e!724330)))

(declare-fun b!1133583 () Bool)

(assert (=> b!1133583 (= e!724330 (inv!14216 (left!9522 (c!189634 (tokens!1456 pt!21)))))))

(assert (= (and d!319582 c!189888) b!1133581))

(assert (= (and d!319582 (not c!189888)) b!1133582))

(assert (= (and b!1133582 (not res!509751)) b!1133583))

(declare-fun m!1284007 () Bool)

(assert (=> b!1133581 m!1284007))

(declare-fun m!1284009 () Bool)

(assert (=> b!1133583 m!1284009))

(assert (=> b!1132185 d!319582))

(declare-fun d!319584 () Bool)

(declare-fun c!189889 () Bool)

(assert (=> d!319584 (= c!189889 ((_ is Node!3499) (right!9852 (c!189634 (tokens!1456 pt!21)))))))

(declare-fun e!724331 () Bool)

(assert (=> d!319584 (= (inv!14196 (right!9852 (c!189634 (tokens!1456 pt!21)))) e!724331)))

(declare-fun b!1133584 () Bool)

(assert (=> b!1133584 (= e!724331 (inv!14215 (right!9852 (c!189634 (tokens!1456 pt!21)))))))

(declare-fun b!1133585 () Bool)

(declare-fun e!724332 () Bool)

(assert (=> b!1133585 (= e!724331 e!724332)))

(declare-fun res!509752 () Bool)

(assert (=> b!1133585 (= res!509752 (not ((_ is Leaf!5455) (right!9852 (c!189634 (tokens!1456 pt!21))))))))

(assert (=> b!1133585 (=> res!509752 e!724332)))

(declare-fun b!1133586 () Bool)

(assert (=> b!1133586 (= e!724332 (inv!14216 (right!9852 (c!189634 (tokens!1456 pt!21)))))))

(assert (= (and d!319584 c!189889) b!1133584))

(assert (= (and d!319584 (not c!189889)) b!1133585))

(assert (= (and b!1133585 (not res!509752)) b!1133586))

(declare-fun m!1284011 () Bool)

(assert (=> b!1133584 m!1284011))

(declare-fun m!1284013 () Bool)

(assert (=> b!1133586 m!1284013))

(assert (=> b!1132185 d!319584))

(assert (=> b!1131927 d!319056))

(declare-fun d!319586 () Bool)

(declare-fun lt!381456 () Int)

(assert (=> d!319586 (contains!1963 (list!3977 indices!2) lt!381456)))

(declare-fun e!724333 () Int)

(assert (=> d!319586 (= lt!381456 e!724333)))

(declare-fun c!189890 () Bool)

(assert (=> d!319586 (= c!189890 (= 1 0))))

(declare-fun e!724334 () Bool)

(assert (=> d!319586 e!724334))

(declare-fun res!509753 () Bool)

(assert (=> d!319586 (=> (not res!509753) (not e!724334))))

(assert (=> d!319586 (= res!509753 (<= 0 1))))

(assert (=> d!319586 (= (apply!2282 (list!3977 indices!2) 1) lt!381456)))

(declare-fun b!1133587 () Bool)

(assert (=> b!1133587 (= e!724334 (< 1 (size!8561 (list!3977 indices!2))))))

(declare-fun b!1133588 () Bool)

(assert (=> b!1133588 (= e!724333 (head!2059 (list!3977 indices!2)))))

(declare-fun b!1133589 () Bool)

(assert (=> b!1133589 (= e!724333 (apply!2282 (tail!1619 (list!3977 indices!2)) (- 1 1)))))

(assert (= (and d!319586 res!509753) b!1133587))

(assert (= (and d!319586 c!189890) b!1133588))

(assert (= (and d!319586 (not c!189890)) b!1133589))

(assert (=> d!319586 m!1281831))

(declare-fun m!1284015 () Bool)

(assert (=> d!319586 m!1284015))

(assert (=> b!1133587 m!1281831))

(assert (=> b!1133587 m!1281901))

(assert (=> b!1133588 m!1281831))

(assert (=> b!1133588 m!1283451))

(assert (=> b!1133589 m!1281831))

(assert (=> b!1133589 m!1283453))

(assert (=> b!1133589 m!1283453))

(declare-fun m!1284017 () Bool)

(assert (=> b!1133589 m!1284017))

(assert (=> d!319034 d!319586))

(assert (=> d!319034 d!319470))

(declare-fun b!1133590 () Bool)

(declare-fun e!724337 () Int)

(declare-fun call!80772 () Int)

(assert (=> b!1133590 (= e!724337 call!80772)))

(declare-fun b!1133591 () Bool)

(declare-fun e!724335 () Int)

(assert (=> b!1133591 (= e!724335 (apply!2289 (xs!6193 (c!189635 indices!2)) 1))))

(declare-fun b!1133592 () Bool)

(assert (=> b!1133592 (= e!724335 e!724337)))

(declare-fun lt!381458 () Bool)

(assert (=> b!1133592 (= lt!381458 (appendIndex!96 (list!3988 (left!9523 (c!189635 indices!2))) (list!3988 (right!9853 (c!189635 indices!2))) 1))))

(declare-fun c!189891 () Bool)

(assert (=> b!1133592 (= c!189891 (< 1 (size!8562 (left!9523 (c!189635 indices!2)))))))

(declare-fun d!319588 () Bool)

(declare-fun lt!381457 () Int)

(assert (=> d!319588 (= lt!381457 (apply!2282 (list!3988 (c!189635 indices!2)) 1))))

(assert (=> d!319588 (= lt!381457 e!724335)))

(declare-fun c!189893 () Bool)

(assert (=> d!319588 (= c!189893 ((_ is Leaf!5456) (c!189635 indices!2)))))

(declare-fun e!724336 () Bool)

(assert (=> d!319588 e!724336))

(declare-fun res!509754 () Bool)

(assert (=> d!319588 (=> (not res!509754) (not e!724336))))

(assert (=> d!319588 (= res!509754 (<= 0 1))))

(assert (=> d!319588 (= (apply!2283 (c!189635 indices!2) 1) lt!381457)))

(declare-fun bm!80767 () Bool)

(declare-fun c!189892 () Bool)

(assert (=> bm!80767 (= c!189892 c!189891)))

(declare-fun e!724338 () Int)

(assert (=> bm!80767 (= call!80772 (apply!2283 (ite c!189891 (left!9523 (c!189635 indices!2)) (right!9853 (c!189635 indices!2))) e!724338))))

(declare-fun b!1133593 () Bool)

(assert (=> b!1133593 (= e!724338 1)))

(declare-fun b!1133594 () Bool)

(assert (=> b!1133594 (= e!724336 (< 1 (size!8562 (c!189635 indices!2))))))

(declare-fun b!1133595 () Bool)

(assert (=> b!1133595 (= e!724338 (- 1 (size!8562 (left!9523 (c!189635 indices!2)))))))

(declare-fun b!1133596 () Bool)

(assert (=> b!1133596 (= e!724337 call!80772)))

(assert (= (and d!319588 res!509754) b!1133594))

(assert (= (and d!319588 c!189893) b!1133591))

(assert (= (and d!319588 (not c!189893)) b!1133592))

(assert (= (and b!1133592 c!189891) b!1133596))

(assert (= (and b!1133592 (not c!189891)) b!1133590))

(assert (= (or b!1133596 b!1133590) bm!80767))

(assert (= (and bm!80767 c!189892) b!1133593))

(assert (= (and bm!80767 (not c!189892)) b!1133595))

(declare-fun m!1284019 () Bool)

(assert (=> bm!80767 m!1284019))

(assert (=> b!1133594 m!1281903))

(assert (=> b!1133595 m!1283461))

(assert (=> d!319588 m!1283457))

(assert (=> d!319588 m!1283457))

(declare-fun m!1284021 () Bool)

(assert (=> d!319588 m!1284021))

(assert (=> b!1133592 m!1283465))

(assert (=> b!1133592 m!1283467))

(assert (=> b!1133592 m!1283465))

(assert (=> b!1133592 m!1283467))

(declare-fun m!1284023 () Bool)

(assert (=> b!1133592 m!1284023))

(assert (=> b!1133592 m!1283461))

(declare-fun m!1284025 () Bool)

(assert (=> b!1133591 m!1284025))

(assert (=> d!319034 d!319588))

(declare-fun d!319590 () Bool)

(declare-fun lt!381459 () Bool)

(declare-fun e!724339 () Bool)

(assert (=> d!319590 (= lt!381459 e!724339)))

(declare-fun res!509756 () Bool)

(assert (=> d!319590 (=> (not res!509756) (not e!724339))))

(assert (=> d!319590 (= res!509756 (= (list!3976 (_1!6808 (lex!660 lt!380601 (rules!9226 pt!21) (print!597 lt!380601 (singletonSeq!605 (h!16368 lt!380587)))))) (list!3976 (singletonSeq!605 (h!16368 lt!380587)))))))

(declare-fun e!724340 () Bool)

(assert (=> d!319590 (= lt!381459 e!724340)))

(declare-fun res!509757 () Bool)

(assert (=> d!319590 (=> (not res!509757) (not e!724340))))

(declare-fun lt!381460 () tuple2!11922)

(assert (=> d!319590 (= res!509757 (= (size!8560 (_1!6808 lt!381460)) 1))))

(assert (=> d!319590 (= lt!381460 (lex!660 lt!380601 (rules!9226 pt!21) (print!597 lt!380601 (singletonSeq!605 (h!16368 lt!380587)))))))

(assert (=> d!319590 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319590 (= (rulesProduceIndividualToken!644 lt!380601 (rules!9226 pt!21) (h!16368 lt!380587)) lt!381459)))

(declare-fun b!1133597 () Bool)

(declare-fun res!509755 () Bool)

(assert (=> b!1133597 (=> (not res!509755) (not e!724340))))

(assert (=> b!1133597 (= res!509755 (= (apply!2280 (_1!6808 lt!381460) 0) (h!16368 lt!380587)))))

(declare-fun b!1133598 () Bool)

(assert (=> b!1133598 (= e!724340 (isEmpty!6804 (_2!6808 lt!381460)))))

(declare-fun b!1133599 () Bool)

(assert (=> b!1133599 (= e!724339 (isEmpty!6804 (_2!6808 (lex!660 lt!380601 (rules!9226 pt!21) (print!597 lt!380601 (singletonSeq!605 (h!16368 lt!380587)))))))))

(assert (= (and d!319590 res!509757) b!1133597))

(assert (= (and b!1133597 res!509755) b!1133598))

(assert (= (and d!319590 res!509756) b!1133599))

(assert (=> d!319590 m!1281957))

(declare-fun m!1284027 () Bool)

(assert (=> d!319590 m!1284027))

(declare-fun m!1284029 () Bool)

(assert (=> d!319590 m!1284029))

(assert (=> d!319590 m!1284027))

(declare-fun m!1284031 () Bool)

(assert (=> d!319590 m!1284031))

(assert (=> d!319590 m!1284027))

(declare-fun m!1284033 () Bool)

(assert (=> d!319590 m!1284033))

(declare-fun m!1284035 () Bool)

(assert (=> d!319590 m!1284035))

(assert (=> d!319590 m!1284029))

(declare-fun m!1284037 () Bool)

(assert (=> d!319590 m!1284037))

(declare-fun m!1284039 () Bool)

(assert (=> b!1133597 m!1284039))

(declare-fun m!1284041 () Bool)

(assert (=> b!1133598 m!1284041))

(assert (=> b!1133599 m!1284027))

(assert (=> b!1133599 m!1284027))

(assert (=> b!1133599 m!1284029))

(assert (=> b!1133599 m!1284029))

(assert (=> b!1133599 m!1284037))

(declare-fun m!1284043 () Bool)

(assert (=> b!1133599 m!1284043))

(assert (=> b!1132043 d!319590))

(declare-fun d!319592 () Bool)

(assert (=> d!319592 (= (inv!14221 (xs!6193 (c!189635 indices!2))) (<= (size!8561 (innerList!3560 (xs!6193 (c!189635 indices!2)))) 2147483647))))

(declare-fun bs!278064 () Bool)

(assert (= bs!278064 d!319592))

(declare-fun m!1284045 () Bool)

(assert (=> bs!278064 m!1284045))

(assert (=> b!1132195 d!319592))

(declare-fun d!319594 () Bool)

(declare-fun lt!381463 () Int)

(assert (=> d!319594 (>= lt!381463 0)))

(declare-fun e!724343 () Int)

(assert (=> d!319594 (= lt!381463 e!724343)))

(declare-fun c!189896 () Bool)

(assert (=> d!319594 (= c!189896 ((_ is Nil!10969) (list!3977 indices!2)))))

(assert (=> d!319594 (= (size!8561 (list!3977 indices!2)) lt!381463)))

(declare-fun b!1133604 () Bool)

(assert (=> b!1133604 (= e!724343 0)))

(declare-fun b!1133605 () Bool)

(assert (=> b!1133605 (= e!724343 (+ 1 (size!8561 (t!106953 (list!3977 indices!2)))))))

(assert (= (and d!319594 c!189896) b!1133604))

(assert (= (and d!319594 (not c!189896)) b!1133605))

(declare-fun m!1284047 () Bool)

(assert (=> b!1133605 m!1284047))

(assert (=> d!319066 d!319594))

(assert (=> d!319066 d!319470))

(declare-fun d!319596 () Bool)

(declare-fun lt!381466 () Int)

(assert (=> d!319596 (= lt!381466 (size!8561 (list!3988 (c!189635 indices!2))))))

(assert (=> d!319596 (= lt!381466 (ite ((_ is Empty!3500) (c!189635 indices!2)) 0 (ite ((_ is Leaf!5456) (c!189635 indices!2)) (csize!7231 (c!189635 indices!2)) (csize!7230 (c!189635 indices!2)))))))

(assert (=> d!319596 (= (size!8562 (c!189635 indices!2)) lt!381466)))

(declare-fun bs!278065 () Bool)

(assert (= bs!278065 d!319596))

(assert (=> bs!278065 m!1283457))

(assert (=> bs!278065 m!1283457))

(declare-fun m!1284049 () Bool)

(assert (=> bs!278065 m!1284049))

(assert (=> d!319066 d!319596))

(declare-fun bs!278066 () Bool)

(declare-fun d!319598 () Bool)

(assert (= bs!278066 (and d!319598 d!319134)))

(declare-fun lambda!45635 () Int)

(assert (=> bs!278066 (= (= lt!380601 Lexer!1595) (= lambda!45635 lambda!45603))))

(declare-fun bs!278067 () Bool)

(assert (= bs!278067 (and d!319598 d!319496)))

(assert (=> bs!278067 (= (= lt!380601 lt!380592) (= lambda!45635 lambda!45633))))

(declare-fun bs!278068 () Bool)

(assert (= bs!278068 (and d!319598 b!1132472)))

(assert (=> bs!278068 (= (= lt!380601 Lexer!1595) (= lambda!45635 lambda!45606))))

(declare-fun bs!278069 () Bool)

(assert (= bs!278069 (and d!319598 d!319202)))

(assert (=> bs!278069 (= (= lt!380601 lt!380563) (= lambda!45635 lambda!45610))))

(declare-fun bs!278070 () Bool)

(assert (= bs!278070 (and d!319598 d!319152)))

(assert (=> bs!278070 (= (= lt!380601 Lexer!1595) (= lambda!45635 lambda!45608))))

(declare-fun bs!278071 () Bool)

(assert (= bs!278071 (and d!319598 d!319474)))

(assert (=> bs!278071 (= (= lt!380601 lt!380563) (= lambda!45635 lambda!45628))))

(declare-fun bs!278072 () Bool)

(assert (= bs!278072 (and d!319598 b!1132708)))

(assert (=> bs!278072 (= (= lt!380601 Lexer!1595) (= lambda!45635 lambda!45613))))

(declare-fun bs!278073 () Bool)

(assert (= bs!278073 (and d!319598 d!319098)))

(assert (=> bs!278073 (= (= lt!380601 Lexer!1595) (= lambda!45635 lambda!45600))))

(declare-fun bs!278074 () Bool)

(assert (= bs!278074 (and d!319598 d!319398)))

(assert (=> bs!278074 (= (= lt!380601 lt!380565) (= lambda!45635 lambda!45624))))

(declare-fun bs!278075 () Bool)

(assert (= bs!278075 (and d!319598 d!319150)))

(assert (=> bs!278075 (= (= lt!380601 lt!380592) (= lambda!45635 lambda!45607))))

(declare-fun bs!278076 () Bool)

(assert (= bs!278076 (and d!319598 d!319158)))

(assert (=> bs!278076 (= (= lt!380601 Lexer!1595) (= lambda!45635 lambda!45609))))

(declare-fun bs!278077 () Bool)

(assert (= bs!278077 (and d!319598 d!319008)))

(assert (=> bs!278077 (= (= lt!380601 Lexer!1595) (= lambda!45635 lambda!45591))))

(declare-fun b!1133610 () Bool)

(declare-fun e!724348 () Bool)

(assert (=> b!1133610 (= e!724348 true)))

(declare-fun b!1133609 () Bool)

(declare-fun e!724347 () Bool)

(assert (=> b!1133609 (= e!724347 e!724348)))

(declare-fun b!1133608 () Bool)

(declare-fun e!724346 () Bool)

(assert (=> b!1133608 (= e!724346 e!724347)))

(assert (=> d!319598 e!724346))

(assert (= b!1133609 b!1133610))

(assert (= b!1133608 b!1133609))

(assert (= (and d!319598 ((_ is Cons!10968) (rules!9226 pt!21))) b!1133608))

(assert (=> b!1133610 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45635))))

(assert (=> b!1133610 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45635))))

(assert (=> d!319598 true))

(declare-fun lt!381467 () Bool)

(assert (=> d!319598 (= lt!381467 (forall!2658 (t!106951 lt!380587) lambda!45635))))

(declare-fun e!724344 () Bool)

(assert (=> d!319598 (= lt!381467 e!724344)))

(declare-fun res!509759 () Bool)

(assert (=> d!319598 (=> res!509759 e!724344)))

(assert (=> d!319598 (= res!509759 (not ((_ is Cons!10967) (t!106951 lt!380587))))))

(assert (=> d!319598 (not (isEmpty!6801 (rules!9226 pt!21)))))

(assert (=> d!319598 (= (rulesProduceEachTokenIndividuallyList!472 lt!380601 (rules!9226 pt!21) (t!106951 lt!380587)) lt!381467)))

(declare-fun b!1133606 () Bool)

(declare-fun e!724345 () Bool)

(assert (=> b!1133606 (= e!724344 e!724345)))

(declare-fun res!509758 () Bool)

(assert (=> b!1133606 (=> (not res!509758) (not e!724345))))

(assert (=> b!1133606 (= res!509758 (rulesProduceIndividualToken!644 lt!380601 (rules!9226 pt!21) (h!16368 (t!106951 lt!380587))))))

(declare-fun b!1133607 () Bool)

(assert (=> b!1133607 (= e!724345 (rulesProduceEachTokenIndividuallyList!472 lt!380601 (rules!9226 pt!21) (t!106951 (t!106951 lt!380587))))))

(assert (= (and d!319598 (not res!509759)) b!1133606))

(assert (= (and b!1133606 res!509758) b!1133607))

(declare-fun m!1284051 () Bool)

(assert (=> d!319598 m!1284051))

(assert (=> d!319598 m!1281957))

(declare-fun m!1284053 () Bool)

(assert (=> b!1133606 m!1284053))

(declare-fun m!1284055 () Bool)

(assert (=> b!1133607 m!1284055))

(assert (=> b!1132045 d!319598))

(declare-fun b!1133611 () Bool)

(declare-fun res!509760 () Bool)

(declare-fun e!724353 () Bool)

(assert (=> b!1133611 (=> (not res!509760) (not e!724353))))

(assert (=> b!1133611 (= res!509760 (rulesInvariant!1471 lt!380588 (rules!9226 pt!21)))))

(declare-fun b!1133612 () Bool)

(declare-fun e!724351 () Bool)

(assert (=> b!1133612 (= e!724351 (<= (+ lt!380590 1) (size!8560 (tokens!1456 pt!21))))))

(declare-fun e!724352 () Bool)

(declare-fun b!1133613 () Bool)

(assert (=> b!1133613 (= e!724352 (tokensListTwoByTwoPredicateSeparable!26 lt!380588 (tokens!1456 pt!21) (+ lt!380590 1 1) (rules!9226 pt!21)))))

(declare-fun b!1133614 () Bool)

(declare-fun lt!381495 () List!10991)

(assert (=> b!1133614 (= e!724353 (rulesProduceEachTokenIndividuallyList!472 lt!380588 (rules!9226 pt!21) lt!381495))))

(declare-fun d!319600 () Bool)

(declare-fun lt!381499 () Bool)

(assert (=> d!319600 (= lt!381499 (tokensListTwoByTwoPredicateSeparableList!71 lt!380588 (dropList!292 (tokens!1456 pt!21) (+ lt!380590 1)) (rules!9226 pt!21)))))

(declare-fun lt!381494 () Unit!16686)

(declare-fun lt!381479 () Unit!16686)

(assert (=> d!319600 (= lt!381494 lt!381479)))

(declare-fun lt!381492 () List!10991)

(assert (=> d!319600 (rulesProduceEachTokenIndividuallyList!472 lt!380588 (rules!9226 pt!21) lt!381492)))

(assert (=> d!319600 (= lt!381479 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!8 lt!380588 (rules!9226 pt!21) lt!381495 lt!381492))))

(assert (=> d!319600 e!724353))

(declare-fun res!509763 () Bool)

(assert (=> d!319600 (=> (not res!509763) (not e!724353))))

(assert (=> d!319600 (= res!509763 ((_ is Lexer!1595) lt!380588))))

(assert (=> d!319600 (= lt!381492 (dropList!292 (tokens!1456 pt!21) (+ lt!380590 1)))))

(assert (=> d!319600 (= lt!381495 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381498 () Unit!16686)

(declare-fun lt!381469 () Unit!16686)

(assert (=> d!319600 (= lt!381498 lt!381469)))

(declare-fun lt!381471 () List!10991)

(assert (=> d!319600 (subseq!174 (drop!419 lt!381471 (+ lt!380590 1)) lt!381471)))

(assert (=> d!319600 (= lt!381469 (lemmaDropSubSeq!8 lt!381471 (+ lt!380590 1)))))

(declare-fun e!724350 () Bool)

(assert (=> d!319600 e!724350))

(declare-fun res!509767 () Bool)

(assert (=> d!319600 (=> (not res!509767) (not e!724350))))

(assert (=> d!319600 (= res!509767 (>= (+ lt!380590 1) 0))))

(assert (=> d!319600 (= lt!381471 (list!3976 (tokens!1456 pt!21)))))

(declare-fun e!724349 () Bool)

(assert (=> d!319600 (= lt!381499 e!724349)))

(declare-fun res!509761 () Bool)

(assert (=> d!319600 (=> res!509761 e!724349)))

(assert (=> d!319600 (= res!509761 (not (< (+ lt!380590 1) (- (size!8560 (tokens!1456 pt!21)) 1))))))

(assert (=> d!319600 e!724351))

(declare-fun res!509766 () Bool)

(assert (=> d!319600 (=> (not res!509766) (not e!724351))))

(assert (=> d!319600 (= res!509766 (>= (+ lt!380590 1) 0))))

(assert (=> d!319600 (= (tokensListTwoByTwoPredicateSeparable!26 lt!380588 (tokens!1456 pt!21) (+ lt!380590 1) (rules!9226 pt!21)) lt!381499)))

(declare-fun b!1133615 () Bool)

(declare-fun res!509764 () Bool)

(assert (=> b!1133615 (=> (not res!509764) (not e!724353))))

(assert (=> b!1133615 (= res!509764 (not (isEmpty!6801 (rules!9226 pt!21))))))

(declare-fun b!1133616 () Bool)

(declare-fun res!509765 () Bool)

(assert (=> b!1133616 (=> (not res!509765) (not e!724353))))

(assert (=> b!1133616 (= res!509765 (subseq!174 lt!381492 lt!381495))))

(declare-fun b!1133617 () Bool)

(assert (=> b!1133617 (= e!724349 e!724352)))

(declare-fun res!509762 () Bool)

(assert (=> b!1133617 (=> (not res!509762) (not e!724352))))

(assert (=> b!1133617 (= res!509762 (separableTokensPredicate!95 lt!380588 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)) (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1 1)) (rules!9226 pt!21)))))

(declare-fun lt!381486 () Unit!16686)

(declare-fun Unit!16731 () Unit!16686)

(assert (=> b!1133617 (= lt!381486 Unit!16731)))

(assert (=> b!1133617 (> (size!8559 (charsOf!1033 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1 1)))) 0)))

(declare-fun lt!381487 () Unit!16686)

(declare-fun Unit!16732 () Unit!16686)

(assert (=> b!1133617 (= lt!381487 Unit!16732)))

(assert (=> b!1133617 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1 1)))))

(declare-fun lt!381489 () Unit!16686)

(declare-fun Unit!16733 () Unit!16686)

(assert (=> b!1133617 (= lt!381489 Unit!16733)))

(assert (=> b!1133617 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))

(declare-fun lt!381478 () Unit!16686)

(declare-fun lt!381473 () Unit!16686)

(assert (=> b!1133617 (= lt!381478 lt!381473)))

(declare-fun lt!381490 () Token!3444)

(assert (=> b!1133617 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) lt!381490)))

(declare-fun lt!381500 () List!10991)

(assert (=> b!1133617 (= lt!381473 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380588 (rules!9226 pt!21) lt!381500 lt!381490))))

(assert (=> b!1133617 (= lt!381490 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1 1)))))

(assert (=> b!1133617 (= lt!381500 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381481 () Unit!16686)

(declare-fun lt!381484 () Unit!16686)

(assert (=> b!1133617 (= lt!381481 lt!381484)))

(declare-fun lt!381472 () Token!3444)

(assert (=> b!1133617 (rulesProduceIndividualToken!644 lt!380588 (rules!9226 pt!21) lt!381472)))

(declare-fun lt!381482 () List!10991)

(assert (=> b!1133617 (= lt!381484 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!254 lt!380588 (rules!9226 pt!21) lt!381482 lt!381472))))

(assert (=> b!1133617 (= lt!381472 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))

(assert (=> b!1133617 (= lt!381482 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381468 () Unit!16686)

(declare-fun lt!381476 () Unit!16686)

(assert (=> b!1133617 (= lt!381468 lt!381476)))

(declare-fun lt!381493 () List!10991)

(declare-fun lt!381483 () Int)

(assert (=> b!1133617 (= (tail!1617 (drop!419 lt!381493 lt!381483)) (drop!419 lt!381493 (+ lt!381483 1)))))

(assert (=> b!1133617 (= lt!381476 (lemmaDropTail!324 lt!381493 lt!381483))))

(assert (=> b!1133617 (= lt!381483 (+ lt!380590 1 1))))

(assert (=> b!1133617 (= lt!381493 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381474 () Unit!16686)

(declare-fun lt!381475 () Unit!16686)

(assert (=> b!1133617 (= lt!381474 lt!381475)))

(declare-fun lt!381470 () List!10991)

(assert (=> b!1133617 (= (tail!1617 (drop!419 lt!381470 (+ lt!380590 1))) (drop!419 lt!381470 (+ lt!380590 1 1)))))

(assert (=> b!1133617 (= lt!381475 (lemmaDropTail!324 lt!381470 (+ lt!380590 1)))))

(assert (=> b!1133617 (= lt!381470 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381485 () Unit!16686)

(declare-fun lt!381491 () Unit!16686)

(assert (=> b!1133617 (= lt!381485 lt!381491)))

(declare-fun lt!381488 () List!10991)

(declare-fun lt!381497 () Int)

(assert (=> b!1133617 (= (head!2057 (drop!419 lt!381488 lt!381497)) (apply!2281 lt!381488 lt!381497))))

(assert (=> b!1133617 (= lt!381491 (lemmaDropApply!336 lt!381488 lt!381497))))

(assert (=> b!1133617 (= lt!381497 (+ lt!380590 1 1))))

(assert (=> b!1133617 (= lt!381488 (list!3976 (tokens!1456 pt!21)))))

(declare-fun lt!381477 () Unit!16686)

(declare-fun lt!381496 () Unit!16686)

(assert (=> b!1133617 (= lt!381477 lt!381496)))

(declare-fun lt!381480 () List!10991)

(assert (=> b!1133617 (= (head!2057 (drop!419 lt!381480 (+ lt!380590 1))) (apply!2281 lt!381480 (+ lt!380590 1)))))

(assert (=> b!1133617 (= lt!381496 (lemmaDropApply!336 lt!381480 (+ lt!380590 1)))))

(assert (=> b!1133617 (= lt!381480 (list!3976 (tokens!1456 pt!21)))))

(declare-fun b!1133618 () Bool)

(assert (=> b!1133618 (= e!724350 (<= (+ lt!380590 1) (size!8565 lt!381471)))))

(assert (= (and d!319600 res!509766) b!1133612))

(assert (= (and d!319600 (not res!509761)) b!1133617))

(assert (= (and b!1133617 res!509762) b!1133613))

(assert (= (and d!319600 res!509767) b!1133618))

(assert (= (and d!319600 res!509763) b!1133615))

(assert (= (and b!1133615 res!509764) b!1133611))

(assert (= (and b!1133611 res!509760) b!1133616))

(assert (= (and b!1133616 res!509765) b!1133614))

(declare-fun m!1284057 () Bool)

(assert (=> b!1133613 m!1284057))

(declare-fun m!1284059 () Bool)

(assert (=> b!1133617 m!1284059))

(declare-fun m!1284061 () Bool)

(assert (=> b!1133617 m!1284061))

(declare-fun m!1284063 () Bool)

(assert (=> b!1133617 m!1284063))

(declare-fun m!1284065 () Bool)

(assert (=> b!1133617 m!1284065))

(assert (=> b!1133617 m!1281709))

(assert (=> b!1133617 m!1281719))

(declare-fun m!1284067 () Bool)

(assert (=> b!1133617 m!1284067))

(declare-fun m!1284069 () Bool)

(assert (=> b!1133617 m!1284069))

(declare-fun m!1284071 () Bool)

(assert (=> b!1133617 m!1284071))

(declare-fun m!1284073 () Bool)

(assert (=> b!1133617 m!1284073))

(declare-fun m!1284075 () Bool)

(assert (=> b!1133617 m!1284075))

(assert (=> b!1133617 m!1284071))

(declare-fun m!1284077 () Bool)

(assert (=> b!1133617 m!1284077))

(assert (=> b!1133617 m!1281739))

(declare-fun m!1284079 () Bool)

(assert (=> b!1133617 m!1284079))

(declare-fun m!1284081 () Bool)

(assert (=> b!1133617 m!1284081))

(assert (=> b!1133617 m!1284063))

(declare-fun m!1284083 () Bool)

(assert (=> b!1133617 m!1284083))

(declare-fun m!1284085 () Bool)

(assert (=> b!1133617 m!1284085))

(declare-fun m!1284087 () Bool)

(assert (=> b!1133617 m!1284087))

(declare-fun m!1284089 () Bool)

(assert (=> b!1133617 m!1284089))

(assert (=> b!1133617 m!1284077))

(declare-fun m!1284091 () Bool)

(assert (=> b!1133617 m!1284091))

(assert (=> b!1133617 m!1281709))

(assert (=> b!1133617 m!1284075))

(declare-fun m!1284093 () Bool)

(assert (=> b!1133617 m!1284093))

(assert (=> b!1133617 m!1281709))

(declare-fun m!1284095 () Bool)

(assert (=> b!1133617 m!1284095))

(assert (=> b!1133617 m!1284089))

(declare-fun m!1284097 () Bool)

(assert (=> b!1133617 m!1284097))

(assert (=> b!1133617 m!1284075))

(declare-fun m!1284099 () Bool)

(assert (=> b!1133617 m!1284099))

(assert (=> b!1133617 m!1284067))

(declare-fun m!1284101 () Bool)

(assert (=> b!1133617 m!1284101))

(declare-fun m!1284103 () Bool)

(assert (=> b!1133617 m!1284103))

(assert (=> b!1133617 m!1284075))

(declare-fun m!1284105 () Bool)

(assert (=> b!1133617 m!1284105))

(declare-fun m!1284107 () Bool)

(assert (=> b!1133617 m!1284107))

(declare-fun m!1284109 () Bool)

(assert (=> b!1133614 m!1284109))

(declare-fun m!1284111 () Bool)

(assert (=> b!1133616 m!1284111))

(declare-fun m!1284113 () Bool)

(assert (=> b!1133611 m!1284113))

(declare-fun m!1284115 () Bool)

(assert (=> b!1133618 m!1284115))

(declare-fun m!1284117 () Bool)

(assert (=> d!319600 m!1284117))

(declare-fun m!1284119 () Bool)

(assert (=> d!319600 m!1284119))

(declare-fun m!1284121 () Bool)

(assert (=> d!319600 m!1284121))

(assert (=> d!319600 m!1281815))

(declare-fun m!1284123 () Bool)

(assert (=> d!319600 m!1284123))

(assert (=> d!319600 m!1281739))

(declare-fun m!1284125 () Bool)

(assert (=> d!319600 m!1284125))

(assert (=> d!319600 m!1284123))

(declare-fun m!1284127 () Bool)

(assert (=> d!319600 m!1284127))

(assert (=> d!319600 m!1284121))

(declare-fun m!1284129 () Bool)

(assert (=> d!319600 m!1284129))

(assert (=> b!1133612 m!1281815))

(assert (=> b!1133615 m!1281957))

(assert (=> b!1132047 d!319600))

(declare-fun b!1133629 () Bool)

(declare-fun e!724362 () Bool)

(declare-fun tp!331088 () Bool)

(assert (=> b!1133629 (= e!724362 (and (inv!14196 (c!189634 (tokens!1456 (h!16371 (innerList!3561 (xs!6194 (c!189636 acc!225))))))) tp!331088))))

(declare-fun tp!331089 () Bool)

(declare-fun b!1133628 () Bool)

(declare-fun e!724360 () Bool)

(assert (=> b!1133628 (= e!724360 (and tp!331089 (inv!14198 (tokens!1456 (h!16371 (innerList!3561 (xs!6194 (c!189636 acc!225)))))) e!724362))))

(declare-fun tp!331090 () Bool)

(declare-fun e!724361 () Bool)

(declare-fun b!1133627 () Bool)

(assert (=> b!1133627 (= e!724361 (and (inv!14200 (h!16371 (innerList!3561 (xs!6194 (c!189636 acc!225))))) e!724360 tp!331090))))

(assert (=> b!1132176 (= tp!331013 e!724361)))

(assert (= b!1133628 b!1133629))

(assert (= b!1133627 b!1133628))

(assert (= (and b!1132176 ((_ is Cons!10970) (innerList!3561 (xs!6194 (c!189636 acc!225))))) b!1133627))

(declare-fun m!1284131 () Bool)

(assert (=> b!1133629 m!1284131))

(declare-fun m!1284133 () Bool)

(assert (=> b!1133628 m!1284133))

(declare-fun m!1284135 () Bool)

(assert (=> b!1133627 m!1284135))

(declare-fun e!724364 () Bool)

(declare-fun b!1133630 () Bool)

(declare-fun tp!331091 () Bool)

(declare-fun tp!331092 () Bool)

(assert (=> b!1133630 (= e!724364 (and (inv!14196 (left!9522 (left!9522 (c!189634 (tokens!1456 pt!21))))) tp!331091 (inv!14196 (right!9852 (left!9522 (c!189634 (tokens!1456 pt!21))))) tp!331092))))

(declare-fun b!1133632 () Bool)

(declare-fun e!724363 () Bool)

(declare-fun tp!331093 () Bool)

(assert (=> b!1133632 (= e!724363 tp!331093)))

(declare-fun b!1133631 () Bool)

(assert (=> b!1133631 (= e!724364 (and (inv!14220 (xs!6192 (left!9522 (c!189634 (tokens!1456 pt!21))))) e!724363))))

(assert (=> b!1132185 (= tp!331021 (and (inv!14196 (left!9522 (c!189634 (tokens!1456 pt!21)))) e!724364))))

(assert (= (and b!1132185 ((_ is Node!3499) (left!9522 (c!189634 (tokens!1456 pt!21))))) b!1133630))

(assert (= b!1133631 b!1133632))

(assert (= (and b!1132185 ((_ is Leaf!5455) (left!9522 (c!189634 (tokens!1456 pt!21))))) b!1133631))

(declare-fun m!1284137 () Bool)

(assert (=> b!1133630 m!1284137))

(declare-fun m!1284139 () Bool)

(assert (=> b!1133630 m!1284139))

(declare-fun m!1284141 () Bool)

(assert (=> b!1133631 m!1284141))

(assert (=> b!1132185 m!1281975))

(declare-fun tp!331094 () Bool)

(declare-fun b!1133633 () Bool)

(declare-fun tp!331095 () Bool)

(declare-fun e!724366 () Bool)

(assert (=> b!1133633 (= e!724366 (and (inv!14196 (left!9522 (right!9852 (c!189634 (tokens!1456 pt!21))))) tp!331094 (inv!14196 (right!9852 (right!9852 (c!189634 (tokens!1456 pt!21))))) tp!331095))))

(declare-fun b!1133635 () Bool)

(declare-fun e!724365 () Bool)

(declare-fun tp!331096 () Bool)

(assert (=> b!1133635 (= e!724365 tp!331096)))

(declare-fun b!1133634 () Bool)

(assert (=> b!1133634 (= e!724366 (and (inv!14220 (xs!6192 (right!9852 (c!189634 (tokens!1456 pt!21))))) e!724365))))

(assert (=> b!1132185 (= tp!331022 (and (inv!14196 (right!9852 (c!189634 (tokens!1456 pt!21)))) e!724366))))

(assert (= (and b!1132185 ((_ is Node!3499) (right!9852 (c!189634 (tokens!1456 pt!21))))) b!1133633))

(assert (= b!1133634 b!1133635))

(assert (= (and b!1132185 ((_ is Leaf!5455) (right!9852 (c!189634 (tokens!1456 pt!21))))) b!1133634))

(declare-fun m!1284143 () Bool)

(assert (=> b!1133633 m!1284143))

(declare-fun m!1284145 () Bool)

(assert (=> b!1133633 m!1284145))

(declare-fun m!1284147 () Bool)

(assert (=> b!1133634 m!1284147))

(assert (=> b!1132185 m!1281977))

(declare-fun b!1133636 () Bool)

(declare-fun tp!331098 () Bool)

(declare-fun e!724367 () Bool)

(declare-fun tp!331097 () Bool)

(assert (=> b!1133636 (= e!724367 (and (inv!14197 (left!9523 (left!9523 (c!189635 indices!2)))) tp!331097 (inv!14197 (right!9853 (left!9523 (c!189635 indices!2)))) tp!331098))))

(declare-fun b!1133637 () Bool)

(assert (=> b!1133637 (= e!724367 (inv!14221 (xs!6193 (left!9523 (c!189635 indices!2)))))))

(assert (=> b!1132194 (= tp!331028 (and (inv!14197 (left!9523 (c!189635 indices!2))) e!724367))))

(assert (= (and b!1132194 ((_ is Node!3500) (left!9523 (c!189635 indices!2)))) b!1133636))

(assert (= (and b!1132194 ((_ is Leaf!5456) (left!9523 (c!189635 indices!2)))) b!1133637))

(declare-fun m!1284149 () Bool)

(assert (=> b!1133636 m!1284149))

(declare-fun m!1284151 () Bool)

(assert (=> b!1133636 m!1284151))

(declare-fun m!1284153 () Bool)

(assert (=> b!1133637 m!1284153))

(assert (=> b!1132194 m!1281981))

(declare-fun tp!331099 () Bool)

(declare-fun tp!331100 () Bool)

(declare-fun b!1133638 () Bool)

(declare-fun e!724369 () Bool)

(assert (=> b!1133638 (= e!724369 (and (inv!14197 (left!9523 (right!9853 (c!189635 indices!2)))) tp!331099 (inv!14197 (right!9853 (right!9853 (c!189635 indices!2)))) tp!331100))))

(declare-fun b!1133639 () Bool)

(assert (=> b!1133639 (= e!724369 (inv!14221 (xs!6193 (right!9853 (c!189635 indices!2)))))))

(assert (=> b!1132194 (= tp!331029 (and (inv!14197 (right!9853 (c!189635 indices!2))) e!724369))))

(assert (= (and b!1132194 ((_ is Node!3500) (right!9853 (c!189635 indices!2)))) b!1133638))

(assert (= (and b!1132194 ((_ is Leaf!5456) (right!9853 (c!189635 indices!2)))) b!1133639))

(declare-fun m!1284155 () Bool)

(assert (=> b!1133638 m!1284155))

(declare-fun m!1284157 () Bool)

(assert (=> b!1133638 m!1284157))

(declare-fun m!1284159 () Bool)

(assert (=> b!1133639 m!1284159))

(assert (=> b!1132194 m!1281983))

(declare-fun b!1133653 () Bool)

(declare-fun b_free!27357 () Bool)

(declare-fun b_next!28061 () Bool)

(assert (=> b!1133653 (= b_free!27357 (not b_next!28061))))

(declare-fun tp!331109 () Bool)

(declare-fun b_and!79965 () Bool)

(assert (=> b!1133653 (= tp!331109 b_and!79965)))

(declare-fun b_free!27359 () Bool)

(declare-fun b_next!28063 () Bool)

(assert (=> b!1133653 (= b_free!27359 (not b_next!28063))))

(declare-fun t!107064 () Bool)

(declare-fun tb!65049 () Bool)

(assert (=> (and b!1133653 (= (toChars!2839 (transformation!1891 (rule!3312 (h!16368 (innerList!3559 (xs!6192 (c!189634 (tokens!1456 pt!21)))))))) (toChars!2839 (transformation!1891 (rule!3312 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))) t!107064) tb!65049))

(declare-fun result!77622 () Bool)

(assert (= result!77622 result!77606))

(assert (=> d!319430 t!107064))

(declare-fun b_and!79967 () Bool)

(declare-fun tp!331107 () Bool)

(assert (=> b!1133653 (= tp!331107 (and (=> t!107064 result!77622) b_and!79967))))

(declare-fun b!1133652 () Bool)

(declare-fun e!724387 () Bool)

(declare-fun e!724388 () Bool)

(assert (=> b!1133652 (= e!724387 (and (inv!14188 (tag!2153 (rule!3312 (h!16368 (innerList!3559 (xs!6192 (c!189634 (tokens!1456 pt!21)))))))) (inv!14222 (transformation!1891 (rule!3312 (h!16368 (innerList!3559 (xs!6192 (c!189634 (tokens!1456 pt!21)))))))) e!724388))))

(declare-fun tp!331108 () Bool)

(declare-fun b!1133650 () Bool)

(declare-fun e!724384 () Bool)

(declare-fun e!724386 () Bool)

(declare-fun inv!14227 (Token!3444) Bool)

(assert (=> b!1133650 (= e!724384 (and (inv!14227 (h!16368 (innerList!3559 (xs!6192 (c!189634 (tokens!1456 pt!21)))))) e!724386 tp!331108))))

(assert (=> b!1132187 (= tp!331023 e!724384)))

(declare-fun b!1133651 () Bool)

(declare-fun inv!21 (TokenValue!1957) Bool)

(assert (=> b!1133651 (= e!724386 (and (inv!21 (value!61890 (h!16368 (innerList!3559 (xs!6192 (c!189634 (tokens!1456 pt!21))))))) e!724387))))

(assert (=> b!1133653 (= e!724388 (and tp!331109 tp!331107))))

(assert (= b!1133652 b!1133653))

(assert (= b!1133651 b!1133652))

(assert (= b!1133650 b!1133651))

(assert (= (and b!1132187 ((_ is Cons!10967) (innerList!3559 (xs!6192 (c!189634 (tokens!1456 pt!21)))))) b!1133650))

(declare-fun m!1284161 () Bool)

(assert (=> b!1133652 m!1284161))

(declare-fun m!1284163 () Bool)

(assert (=> b!1133652 m!1284163))

(declare-fun m!1284165 () Bool)

(assert (=> b!1133650 m!1284165))

(declare-fun m!1284167 () Bool)

(assert (=> b!1133651 m!1284167))

(declare-fun b!1133656 () Bool)

(declare-fun e!724391 () Bool)

(assert (=> b!1133656 (= e!724391 true)))

(declare-fun b!1133655 () Bool)

(declare-fun e!724390 () Bool)

(assert (=> b!1133655 (= e!724390 e!724391)))

(declare-fun b!1133654 () Bool)

(declare-fun e!724389 () Bool)

(assert (=> b!1133654 (= e!724389 e!724390)))

(assert (=> b!1132068 e!724389))

(assert (= b!1133655 b!1133656))

(assert (= b!1133654 b!1133655))

(assert (= (and b!1132068 ((_ is Cons!10968) (rules!9226 pt!21))) b!1133654))

(assert (=> b!1133656 (< (dynLambda!4835 order!6705 (toValue!2980 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45591))))

(assert (=> b!1133656 (< (dynLambda!4837 order!6709 (toChars!2839 (transformation!1891 (h!16369 (rules!9226 pt!21))))) (dynLambda!4836 order!6707 lambda!45591))))

(declare-fun b!1133665 () Bool)

(declare-fun e!724396 () Bool)

(assert (=> b!1133665 (= e!724396 true)))

(declare-fun b!1133667 () Bool)

(declare-fun e!724397 () Bool)

(assert (=> b!1133667 (= e!724397 true)))

(declare-fun b!1133666 () Bool)

(assert (=> b!1133666 (= e!724396 e!724397)))

(assert (=> b!1132069 e!724396))

(assert (= (and b!1132069 ((_ is Node!3499) (c!189634 (tokens!1456 pt!21)))) b!1133665))

(assert (= b!1133666 b!1133667))

(assert (= (and b!1132069 ((_ is Leaf!5455) (c!189634 (tokens!1456 pt!21)))) b!1133666))

(declare-fun b!1133670 () Bool)

(declare-fun b_free!27361 () Bool)

(declare-fun b_next!28065 () Bool)

(assert (=> b!1133670 (= b_free!27361 (not b_next!28065))))

(declare-fun tp!331112 () Bool)

(declare-fun b_and!79969 () Bool)

(assert (=> b!1133670 (= tp!331112 b_and!79969)))

(declare-fun b_free!27363 () Bool)

(declare-fun b_next!28067 () Bool)

(assert (=> b!1133670 (= b_free!27363 (not b_next!28067))))

(declare-fun t!107066 () Bool)

(declare-fun tb!65051 () Bool)

(assert (=> (and b!1133670 (= (toChars!2839 (transformation!1891 (h!16369 (t!106952 (rules!9226 pt!21))))) (toChars!2839 (transformation!1891 (rule!3312 (apply!2280 (tokens!1456 pt!21) (+ lt!380590 1)))))) t!107066) tb!65051))

(declare-fun result!77624 () Bool)

(assert (= result!77624 result!77606))

(assert (=> d!319430 t!107066))

(declare-fun tp!331110 () Bool)

(declare-fun b_and!79971 () Bool)

(assert (=> b!1133670 (= tp!331110 (and (=> t!107066 result!77624) b_and!79971))))

(declare-fun e!724400 () Bool)

(assert (=> b!1133670 (= e!724400 (and tp!331112 tp!331110))))

(declare-fun b!1133669 () Bool)

(declare-fun e!724399 () Bool)

(assert (=> b!1133669 (= e!724399 (and (inv!14188 (tag!2153 (h!16369 (t!106952 (rules!9226 pt!21))))) (inv!14222 (transformation!1891 (h!16369 (t!106952 (rules!9226 pt!21))))) e!724400))))

(declare-fun b!1133668 () Bool)

(declare-fun e!724401 () Bool)

(declare-fun tp!331111 () Bool)

(assert (=> b!1133668 (= e!724401 (and e!724399 tp!331111))))

(assert (=> b!1132204 (= tp!331037 e!724401)))

(assert (= b!1133669 b!1133670))

(assert (= b!1133668 b!1133669))

(assert (= (and b!1132204 ((_ is Cons!10968) (t!106952 (rules!9226 pt!21)))) b!1133668))

(declare-fun m!1284169 () Bool)

(assert (=> b!1133669 m!1284169))

(declare-fun m!1284171 () Bool)

(assert (=> b!1133669 m!1284171))

(declare-fun e!724403 () Bool)

(declare-fun tp!331113 () Bool)

(declare-fun b!1133671 () Bool)

(declare-fun tp!331115 () Bool)

(assert (=> b!1133671 (= e!724403 (and (inv!14199 (left!9524 (left!9524 (c!189636 acc!225)))) tp!331113 (inv!14199 (right!9854 (left!9524 (c!189636 acc!225)))) tp!331115))))

(declare-fun b!1133673 () Bool)

(declare-fun e!724402 () Bool)

(declare-fun tp!331114 () Bool)

(assert (=> b!1133673 (= e!724402 tp!331114)))

(declare-fun b!1133672 () Bool)

(assert (=> b!1133672 (= e!724403 (and (inv!14219 (xs!6194 (left!9524 (c!189636 acc!225)))) e!724402))))

(assert (=> b!1132174 (= tp!331012 (and (inv!14199 (left!9524 (c!189636 acc!225))) e!724403))))

(assert (= (and b!1132174 ((_ is Node!3501) (left!9524 (c!189636 acc!225)))) b!1133671))

(assert (= b!1133672 b!1133673))

(assert (= (and b!1132174 ((_ is Leaf!5457) (left!9524 (c!189636 acc!225)))) b!1133672))

(declare-fun m!1284173 () Bool)

(assert (=> b!1133671 m!1284173))

(declare-fun m!1284175 () Bool)

(assert (=> b!1133671 m!1284175))

(declare-fun m!1284177 () Bool)

(assert (=> b!1133672 m!1284177))

(assert (=> b!1132174 m!1281969))

(declare-fun tp!331118 () Bool)

(declare-fun tp!331116 () Bool)

(declare-fun b!1133674 () Bool)

(declare-fun e!724405 () Bool)

(assert (=> b!1133674 (= e!724405 (and (inv!14199 (left!9524 (right!9854 (c!189636 acc!225)))) tp!331116 (inv!14199 (right!9854 (right!9854 (c!189636 acc!225)))) tp!331118))))

(declare-fun b!1133676 () Bool)

(declare-fun e!724404 () Bool)

(declare-fun tp!331117 () Bool)

(assert (=> b!1133676 (= e!724404 tp!331117)))

(declare-fun b!1133675 () Bool)

(assert (=> b!1133675 (= e!724405 (and (inv!14219 (xs!6194 (right!9854 (c!189636 acc!225)))) e!724404))))

(assert (=> b!1132174 (= tp!331014 (and (inv!14199 (right!9854 (c!189636 acc!225))) e!724405))))

(assert (= (and b!1132174 ((_ is Node!3501) (right!9854 (c!189636 acc!225)))) b!1133674))

(assert (= b!1133675 b!1133676))

(assert (= (and b!1132174 ((_ is Leaf!5457) (right!9854 (c!189636 acc!225)))) b!1133675))

(declare-fun m!1284179 () Bool)

(assert (=> b!1133674 m!1284179))

(declare-fun m!1284181 () Bool)

(assert (=> b!1133674 m!1284181))

(declare-fun m!1284183 () Bool)

(assert (=> b!1133675 m!1284183))

(assert (=> b!1132174 m!1281971))

(declare-fun b_lambda!33347 () Bool)

(assert (= b_lambda!33325 (or b!1131930 b_lambda!33347)))

(declare-fun bs!278078 () Bool)

(declare-fun d!319602 () Bool)

(assert (= bs!278078 (and d!319602 b!1131930)))

(assert (=> bs!278078 (= (dynLambda!4844 lambda!45565 (h!16371 (list!3972 (append!334 acc!225 lt!380180)))) (usesJsonRules!0 (h!16371 (list!3972 (append!334 acc!225 lt!380180)))))))

(declare-fun m!1284185 () Bool)

(assert (=> bs!278078 m!1284185))

(assert (=> b!1133388 d!319602))

(declare-fun b_lambda!33349 () Bool)

(assert (= b_lambda!33327 (or b!1131930 b_lambda!33349)))

(declare-fun bs!278079 () Bool)

(declare-fun d!319604 () Bool)

(assert (= bs!278079 (and d!319604 b!1131930)))

(assert (=> bs!278079 (= (dynLambda!4844 lambda!45565 (h!16371 (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970)))) (usesJsonRules!0 (h!16371 (++!2915 (list!3972 acc!225) (Cons!10970 lt!380180 Nil!10970)))))))

(declare-fun m!1284187 () Bool)

(assert (=> bs!278079 m!1284187))

(assert (=> b!1133394 d!319604))

(declare-fun b_lambda!33351 () Bool)

(assert (= b_lambda!33313 (or d!319008 b_lambda!33351)))

(declare-fun bs!278080 () Bool)

(declare-fun d!319606 () Bool)

(assert (= bs!278080 (and d!319606 d!319008)))

(assert (=> bs!278080 (= (dynLambda!4838 lambda!45591 (h!16368 lt!380616)) (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (h!16368 lt!380616)))))

(declare-fun m!1284189 () Bool)

(assert (=> bs!278080 m!1284189))

(assert (=> b!1132943 d!319606))

(declare-fun b_lambda!33353 () Bool)

(assert (= b_lambda!33299 (or d!319008 b_lambda!33353)))

(declare-fun bs!278081 () Bool)

(declare-fun d!319608 () Bool)

(assert (= bs!278081 (and d!319608 d!319008)))

(assert (=> bs!278081 (= (dynLambda!4838 lambda!45591 (h!16368 lt!380602)) (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (h!16368 lt!380602)))))

(declare-fun m!1284191 () Bool)

(assert (=> bs!278081 m!1284191))

(assert (=> b!1132490 d!319608))

(declare-fun b_lambda!33355 () Bool)

(assert (= b_lambda!33307 (or d!319008 b_lambda!33355)))

(declare-fun bs!278082 () Bool)

(declare-fun d!319610 () Bool)

(assert (= bs!278082 (and d!319610 d!319008)))

(assert (=> bs!278082 (= (dynLambda!4838 lambda!45591 (h!16368 lt!380578)) (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (h!16368 lt!380578)))))

(declare-fun m!1284193 () Bool)

(assert (=> bs!278082 m!1284193))

(assert (=> b!1132846 d!319610))

(declare-fun b_lambda!33357 () Bool)

(assert (= b_lambda!33345 (or d!319008 b_lambda!33357)))

(declare-fun bs!278083 () Bool)

(declare-fun d!319612 () Bool)

(assert (= bs!278083 (and d!319612 d!319008)))

(assert (=> bs!278083 (= (dynLambda!4838 lambda!45591 (h!16368 lt!380600)) (rulesProduceIndividualToken!644 Lexer!1595 (rules!9226 pt!21) (h!16368 lt!380600)))))

(declare-fun m!1284195 () Bool)

(assert (=> bs!278083 m!1284195))

(assert (=> b!1133579 d!319612))

(declare-fun b_lambda!33359 () Bool)

(assert (= b_lambda!33321 (or b!1131936 b_lambda!33359)))

(declare-fun bs!278084 () Bool)

(declare-fun d!319614 () Bool)

(assert (= bs!278084 (and d!319614 b!1131936)))

(assert (=> bs!278084 (= (dynLambda!4843 lambda!45564 (h!16370 (list!3977 indices!2))) (and (<= 0 (h!16370 (list!3977 indices!2))) (< (h!16370 (list!3977 indices!2)) size!108)))))

(assert (=> b!1133303 d!319614))

(declare-fun b_lambda!33361 () Bool)

(assert (= b_lambda!33323 (or b!1131930 b_lambda!33361)))

(declare-fun bs!278085 () Bool)

(declare-fun d!319616 () Bool)

(assert (= bs!278085 (and d!319616 b!1131930)))

(assert (=> bs!278085 (= (dynLambda!4844 lambda!45565 (h!16371 (list!3972 acc!225))) (usesJsonRules!0 (h!16371 (list!3972 acc!225))))))

(declare-fun m!1284197 () Bool)

(assert (=> bs!278085 m!1284197))

(assert (=> b!1133344 d!319616))

(check-sat (not b!1133676) (not d!319432) (not b!1132940) (not d!319176) (not d!319506) (not d!319436) (not b!1133605) (not b!1132333) (not d!319526) (not b!1133563) b_and!79955 (not b!1133189) (not b!1132472) (not b!1132710) (not b!1132493) (not b!1132502) (not b!1133395) (not b!1133260) (not bm!80725) (not b!1133425) (not b!1133179) (not b!1133236) (not b!1133675) (not b!1133208) (not b!1132491) (not b!1133153) (not b!1133358) (not b!1133359) (not d!319534) (not b!1133115) (not b!1133616) (not d!319390) (not b!1133570) (not b!1133222) (not b!1133595) (not d!319588) (not d!319298) (not b!1133415) (not b!1133382) (not d!319490) (not d!319464) (not b!1133423) (not b!1133614) (not b_next!28065) (not b!1133560) (not b!1133627) (not b!1133277) (not b!1132498) (not b!1132622) (not b!1133224) (not b!1133280) (not b!1132220) (not b!1133119) (not b_lambda!33353) (not d!319454) (not b!1133628) (not b!1132709) (not b!1132403) (not b!1133597) (not b!1133599) (not b!1133151) (not b!1133671) (not b!1133276) (not b!1132841) (not d!319168) (not b_next!28063) (not b!1133583) (not bm!80758) (not b!1133278) (not d!319524) (not d!319598) (not d!319418) (not d!319474) (not bm!80764) (not b!1133087) (not b!1132947) (not b!1132516) (not b_lambda!33357) (not b!1132513) b_and!79965 (not d!319288) (not b!1133111) (not b!1133421) (not b!1133387) (not b!1132512) (not b!1133507) (not bm!80765) (not bm!80761) (not b!1133561) (not d!319420) b_and!79969 (not b!1133217) (not b!1133571) (not b!1133672) (not d!319430) (not d!319134) (not b!1133615) (not b!1133133) (not b!1133588) (not b!1133212) (not b!1132501) (not bm!80757) (not b!1133291) (not bm!80760) (not b!1133577) (not b!1132706) (not b!1132479) (not d!319158) (not d!319450) (not d!319458) (not bm!80767) (not d!319404) (not d!319162) (not d!319496) (not b!1132942) (not b!1133584) (not b!1133389) (not b!1132948) (not b!1132477) (not b!1132514) (not b!1133275) (not b_next!28067) (not b!1132623) (not d!319596) (not b_next!28061) (not bm!80726) (not b!1133112) (not d!319486) (not b!1133093) (not d!319392) (not d!319532) (not b!1133426) (not b!1132535) (not b!1133091) (not b!1133592) (not d!319166) (not b_lambda!33349) (not b!1133673) (not b!1132944) (not d!319204) (not b!1133629) (not b!1133089) (not d!319142) (not b!1133654) (not d!319164) (not d!319414) (not b!1133181) (not bm!80698) (not b!1133665) (not b_lambda!33355) (not b!1132859) (not b!1132332) (not b!1133094) (not b_lambda!33361) (not b!1133360) (not b!1133058) (not b!1133158) (not b!1133618) (not b!1133223) (not d!319152) (not b!1133587) (not b_lambda!33351) (not b!1132185) (not b!1133252) (not d!319174) (not bm!80759) (not d!319098) (not b!1132639) (not b!1133562) (not b!1133406) (not d!319544) (not d!319472) (not b_lambda!33347) (not d!319398) (not b!1133631) (not b!1133594) (not b!1133564) (not bm!80736) (not d!319400) (not b!1133163) (not d!319460) (not b!1132860) (not b!1133220) (not d!319412) (not b!1132847) (not d!319480) (not d!319590) (not b!1133137) (not b!1133612) (not b!1132194) (not d!319394) b_and!79949 (not b!1132707) (not b!1133611) (not d!319202) (not bs!278078) (not d!319440) (not b!1133381) (not d!319156) (not b!1133128) (not bs!278080) (not b!1132644) (not b!1133180) (not b!1132708) (not b!1133384) (not b!1133392) (not b!1133176) (not b!1133345) (not bm!80723) (not b!1133156) (not tb!65043) (not d!319530) (not b!1133651) (not d!319096) (not bm!80700) (not d!319150) (not b!1132405) (not b!1133589) (not b!1133586) (not b!1133092) (not b!1132620) (not d!319580) (not b!1133669) (not b!1133393) (not d!319304) (not d!319470) (not bm!80763) (not b!1132432) (not b!1133617) b_and!79971 (not b!1132863) (not b!1132624) (not d!319516) (not b!1132852) (not b!1133109) (not b!1133650) (not b!1132478) (not b!1133500) (not b!1133225) (not b!1132621) (not b!1133634) (not b!1133667) (not b!1133608) (not b!1133235) (not b!1133429) (not b!1133581) (not b!1133072) (not b!1132427) (not d!319300) (not b!1133117) (not b!1133259) (not b!1132638) (not b!1132619) (not b!1133636) (not b_lambda!33319) (not b!1133210) (not b!1133632) (not b!1132618) (not bm!80730) (not b!1133591) (not bs!278085) (not b!1133502) (not b!1133108) (not d!319092) (not b!1133255) (not d!319340) (not d!319468) (not d!319592) (not bm!80727) (not b!1133580) (not b!1132341) (not b!1132842) (not b!1132474) (not b!1133168) (not d!319130) (not b!1132853) (not d!319238) (not b!1133184) (not b!1133363) (not b!1133226) (not b!1133434) (not d!319456) (not b!1133405) (not b!1133637) (not d!319144) (not b_next!28049) (not b!1133182) (not b!1133428) (not b!1132471) (not d!319426) (not b!1133431) (not b!1133152) (not b!1133066) (not d!319212) (not b!1133155) (not b!1133565) (not d!319522) (not d!319536) (not b!1133124) (not b!1133173) (not d!319512) (not d!319424) (not d!319094) (not d!319434) (not b!1133613) (not d!319160) (not b!1133497) (not b!1133253) b_and!79967 (not b!1133607) (not b!1132625) (not bs!278082) (not b!1132304) (not d!319586) (not b!1132521) (not b!1133330) (not b!1133256) (not b!1133221) (not bs!278083) (not d!319600) (not d!319510) (not d!319128) (not b!1132862) (not bm!80735) (not b!1133606) (not b!1133674) (not d!319240) (not bs!278081) (not b!1133304) (not b!1132404) (not b!1133088) (not d!319172) (not bm!80762) (not b!1132864) (not b_next!28051) (not b!1133503) (not b!1133279) (not b!1133234) (not b_lambda!33359) (not b!1133209) (not bm!80699) (not b!1133331) (not b!1133433) (not d!319514) (not b!1133114) (not b!1132941) (not b!1133391) (not bm!80724) (not b!1133598) (not b!1132214) (not d!319558) (not b!1133328) (not bm!80722) (not b!1133572) (not d!319442) (not b!1132865) (not b!1133090) (not b!1132861) (not b!1133258) (not d!319462) (not b!1132482) (not b!1132473) (not b!1133499) (not d!319126) (not b!1133207) (not b!1133329) (not b!1133430) (not b!1133578) (not d!319416) (not b!1133652) (not b!1133432) (not b!1133668) (not b!1133086) (not b!1133638) (not b!1132503) (not d!319466) (not b!1132334) (not b!1133385) (not b!1133154) (not b!1133633) (not b!1132174) (not b!1132483) (not b!1133142) (not b!1133327) (not b!1133110) (not b!1132534) (not b!1132858) (not b!1133057) (not b!1133332) (not b!1132470) (not b!1133630) (not d!319422) (not b!1133639) (not b!1133635) (not d!319448) (not bs!278079) (not b!1133107) (not b!1132335) (not b!1132313) (not b!1133227))
(check-sat b_and!79955 (not b_next!28065) (not b_next!28063) b_and!79965 b_and!79969 b_and!79949 b_and!79971 (not b_next!28049) b_and!79967 (not b_next!28051) (not b_next!28061) (not b_next!28067))
