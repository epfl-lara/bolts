; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128234 () Bool)

(assert start!128234)

(declare-fun b!1405894 () Bool)

(declare-fun b_free!34307 () Bool)

(declare-fun b_next!35011 () Bool)

(assert (=> b!1405894 (= b_free!34307 (not b_next!35011))))

(declare-fun tp!399424 () Bool)

(declare-fun b_and!94131 () Bool)

(assert (=> b!1405894 (= tp!399424 b_and!94131)))

(declare-fun b_free!34309 () Bool)

(declare-fun b_next!35013 () Bool)

(assert (=> b!1405894 (= b_free!34309 (not b_next!35013))))

(declare-fun tp!399413 () Bool)

(declare-fun b_and!94133 () Bool)

(assert (=> b!1405894 (= tp!399413 b_and!94133)))

(declare-fun b!1405897 () Bool)

(declare-fun b_free!34311 () Bool)

(declare-fun b_next!35015 () Bool)

(assert (=> b!1405897 (= b_free!34311 (not b_next!35015))))

(declare-fun tp!399414 () Bool)

(declare-fun b_and!94135 () Bool)

(assert (=> b!1405897 (= tp!399414 b_and!94135)))

(declare-fun b_free!34313 () Bool)

(declare-fun b_next!35017 () Bool)

(assert (=> b!1405897 (= b_free!34313 (not b_next!35017))))

(declare-fun tp!399423 () Bool)

(declare-fun b_and!94137 () Bool)

(assert (=> b!1405897 (= tp!399423 b_and!94137)))

(declare-fun b!1405893 () Bool)

(declare-fun b_free!34315 () Bool)

(declare-fun b_next!35019 () Bool)

(assert (=> b!1405893 (= b_free!34315 (not b_next!35019))))

(declare-fun tp!399419 () Bool)

(declare-fun b_and!94139 () Bool)

(assert (=> b!1405893 (= tp!399419 b_and!94139)))

(declare-fun b_free!34317 () Bool)

(declare-fun b_next!35021 () Bool)

(assert (=> b!1405893 (= b_free!34317 (not b_next!35021))))

(declare-fun tp!399418 () Bool)

(declare-fun b_and!94141 () Bool)

(assert (=> b!1405893 (= tp!399418 b_and!94141)))

(declare-fun b!1405873 () Bool)

(assert (=> b!1405873 true))

(assert (=> b!1405873 true))

(declare-fun b!1405896 () Bool)

(assert (=> b!1405896 true))

(declare-fun b!1405901 () Bool)

(assert (=> b!1405901 true))

(declare-fun bs!338530 () Bool)

(declare-fun b!1405874 () Bool)

(assert (= bs!338530 (and b!1405874 b!1405901)))

(declare-fun lambda!61985 () Int)

(declare-fun lambda!61984 () Int)

(assert (=> bs!338530 (not (= lambda!61985 lambda!61984))))

(assert (=> b!1405874 true))

(declare-fun b!1405871 () Bool)

(declare-fun e!897520 () Bool)

(declare-fun e!897528 () Bool)

(assert (=> b!1405871 (= e!897520 e!897528)))

(declare-fun res!636418 () Bool)

(assert (=> b!1405871 (=> res!636418 e!897528)))

(declare-datatypes ((C!7876 0))(
  ( (C!7877 (val!4498 Int)) )
))
(declare-datatypes ((Regex!3793 0))(
  ( (ElementMatch!3793 (c!231188 C!7876)) (Concat!6362 (regOne!8098 Regex!3793) (regTwo!8098 Regex!3793)) (EmptyExpr!3793) (Star!3793 (reg!4122 Regex!3793)) (EmptyLang!3793) (Union!3793 (regOne!8099 Regex!3793) (regTwo!8099 Regex!3793)) )
))
(declare-fun lt!469129 () Regex!3793)

(declare-fun lambda!61982 () Int)

(declare-datatypes ((List!14372 0))(
  ( (Nil!14306) (Cons!14306 (h!19707 (_ BitVec 16)) (t!123041 List!14372)) )
))
(declare-datatypes ((TokenValue!2569 0))(
  ( (FloatLiteralValue!5138 (text!18428 List!14372)) (TokenValueExt!2568 (__x!8967 Int)) (Broken!12845 (value!80258 List!14372)) (Object!2634) (End!2569) (Def!2569) (Underscore!2569) (Match!2569) (Else!2569) (Error!2569) (Case!2569) (If!2569) (Extends!2569) (Abstract!2569) (Class!2569) (Val!2569) (DelimiterValue!5138 (del!2629 List!14372)) (KeywordValue!2575 (value!80259 List!14372)) (CommentValue!5138 (value!80260 List!14372)) (WhitespaceValue!5138 (value!80261 List!14372)) (IndentationValue!2569 (value!80262 List!14372)) (String!17080) (Int32!2569) (Broken!12846 (value!80263 List!14372)) (Boolean!2570) (Unit!20664) (OperatorValue!2572 (op!2629 List!14372)) (IdentifierValue!5138 (value!80264 List!14372)) (IdentifierValue!5139 (value!80265 List!14372)) (WhitespaceValue!5139 (value!80266 List!14372)) (True!5138) (False!5138) (Broken!12847 (value!80267 List!14372)) (Broken!12848 (value!80268 List!14372)) (True!5139) (RightBrace!2569) (RightBracket!2569) (Colon!2569) (Null!2569) (Comma!2569) (LeftBracket!2569) (False!5139) (LeftBrace!2569) (ImaginaryLiteralValue!2569 (text!18429 List!14372)) (StringLiteralValue!7707 (value!80269 List!14372)) (EOFValue!2569 (value!80270 List!14372)) (IdentValue!2569 (value!80271 List!14372)) (DelimiterValue!5139 (value!80272 List!14372)) (DedentValue!2569 (value!80273 List!14372)) (NewLineValue!2569 (value!80274 List!14372)) (IntegerValue!7707 (value!80275 (_ BitVec 32)) (text!18430 List!14372)) (IntegerValue!7708 (value!80276 Int) (text!18431 List!14372)) (Times!2569) (Or!2569) (Equal!2569) (Minus!2569) (Broken!12849 (value!80277 List!14372)) (And!2569) (Div!2569) (LessEqual!2569) (Mod!2569) (Concat!6363) (Not!2569) (Plus!2569) (SpaceValue!2569 (value!80278 List!14372)) (IntegerValue!7709 (value!80279 Int) (text!18432 List!14372)) (StringLiteralValue!7708 (text!18433 List!14372)) (FloatLiteralValue!5139 (text!18434 List!14372)) (BytesLiteralValue!2569 (value!80280 List!14372)) (CommentValue!5139 (value!80281 List!14372)) (StringLiteralValue!7709 (value!80282 List!14372)) (ErrorTokenValue!2569 (msg!2630 List!14372)) )
))
(declare-datatypes ((List!14373 0))(
  ( (Nil!14307) (Cons!14307 (h!19708 C!7876) (t!123042 List!14373)) )
))
(declare-datatypes ((IArray!9441 0))(
  ( (IArray!9442 (innerList!4778 List!14373)) )
))
(declare-datatypes ((Conc!4718 0))(
  ( (Node!4718 (left!12215 Conc!4718) (right!12545 Conc!4718) (csize!9666 Int) (cheight!4929 Int)) (Leaf!7154 (xs!7445 IArray!9441) (csize!9667 Int)) (Empty!4718) )
))
(declare-datatypes ((BalanceConc!9376 0))(
  ( (BalanceConc!9377 (c!231189 Conc!4718)) )
))
(declare-datatypes ((String!17081 0))(
  ( (String!17082 (value!80283 String)) )
))
(declare-datatypes ((TokenValueInjection!4798 0))(
  ( (TokenValueInjection!4799 (toValue!3770 Int) (toChars!3629 Int)) )
))
(declare-datatypes ((Rule!4758 0))(
  ( (Rule!4759 (regex!2479 Regex!3793) (tag!2741 String!17081) (isSeparator!2479 Bool) (transformation!2479 TokenValueInjection!4798)) )
))
(declare-datatypes ((List!14374 0))(
  ( (Nil!14308) (Cons!14308 (h!19709 Rule!4758) (t!123043 List!14374)) )
))
(declare-fun rules!2550 () List!14374)

(declare-datatypes ((List!14375 0))(
  ( (Nil!14309) (Cons!14309 (h!19710 Regex!3793) (t!123044 List!14375)) )
))
(declare-fun contains!2819 (List!14375 Regex!3793) Bool)

(declare-fun map!3179 (List!14374 Int) List!14375)

(assert (=> b!1405871 (= res!636418 (not (contains!2819 (map!3179 rules!2550 lambda!61982) lt!469129)))))

(declare-fun lambda!61983 () Int)

(declare-fun getWitness!490 (List!14375 Int) Regex!3793)

(assert (=> b!1405871 (= lt!469129 (getWitness!490 (map!3179 rules!2550 lambda!61982) lambda!61983))))

(declare-fun b!1405872 () Bool)

(declare-fun res!636399 () Bool)

(declare-fun e!897506 () Bool)

(assert (=> b!1405872 (=> res!636399 e!897506)))

(declare-fun lt!469123 () List!14373)

(declare-fun lt!469116 () C!7876)

(declare-fun contains!2820 (List!14373 C!7876) Bool)

(assert (=> b!1405872 (= res!636399 (not (contains!2820 lt!469123 lt!469116)))))

(declare-fun e!897523 () Bool)

(declare-fun e!897511 () Bool)

(assert (=> b!1405873 (= e!897523 (not e!897511))))

(declare-fun res!636393 () Bool)

(assert (=> b!1405873 (=> res!636393 e!897511)))

(declare-fun lambda!61981 () Int)

(declare-fun Exists!943 (Int) Bool)

(assert (=> b!1405873 (= res!636393 (not (Exists!943 lambda!61981)))))

(assert (=> b!1405873 (Exists!943 lambda!61981)))

(declare-datatypes ((Unit!20665 0))(
  ( (Unit!20666) )
))
(declare-fun lt!469114 () Unit!20665)

(declare-fun lt!469126 () Regex!3793)

(declare-fun lt!469128 () List!14373)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!261 (Regex!3793 List!14373) Unit!20665)

(assert (=> b!1405873 (= lt!469114 (lemmaPrefixMatchThenExistsStringThatMatches!261 lt!469126 lt!469128))))

(declare-fun e!897519 () Bool)

(declare-fun e!897526 () Bool)

(assert (=> b!1405874 (= e!897519 e!897526)))

(declare-fun res!636409 () Bool)

(assert (=> b!1405874 (=> res!636409 e!897526)))

(declare-datatypes ((Token!4620 0))(
  ( (Token!4621 (value!80284 TokenValue!2569) (rule!4242 Rule!4758) (size!11777 Int) (originalCharacters!3341 List!14373)) )
))
(declare-fun t1!34 () Token!4620)

(declare-fun lt!469138 () List!14373)

(declare-fun matchR!1784 (Regex!3793 List!14373) Bool)

(assert (=> b!1405874 (= res!636409 (not (matchR!1784 (regex!2479 (rule!4242 t1!34)) lt!469138)))))

(declare-fun lt!469136 () Unit!20665)

(declare-fun t2!34 () Token!4620)

(declare-fun forallContained!674 (List!14374 Int Rule!4758) Unit!20665)

(assert (=> b!1405874 (= lt!469136 (forallContained!674 rules!2550 lambda!61985 (rule!4242 t2!34)))))

(declare-fun lt!469110 () Unit!20665)

(assert (=> b!1405874 (= lt!469110 (forallContained!674 rules!2550 lambda!61985 (rule!4242 t1!34)))))

(declare-fun lt!469121 () Rule!4758)

(declare-fun lt!469127 () Unit!20665)

(assert (=> b!1405874 (= lt!469127 (forallContained!674 rules!2550 lambda!61985 lt!469121))))

(declare-fun b!1405875 () Bool)

(declare-fun e!897535 () Unit!20665)

(declare-fun Unit!20667 () Unit!20665)

(assert (=> b!1405875 (= e!897535 Unit!20667)))

(declare-fun lt!469113 () Unit!20665)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!224 (Regex!3793 List!14373 C!7876) Unit!20665)

(declare-fun head!2617 (List!14373) C!7876)

(assert (=> b!1405875 (= lt!469113 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!224 (regex!2479 (rule!4242 t1!34)) lt!469138 (head!2617 lt!469138)))))

(assert (=> b!1405875 false))

(declare-fun e!897525 () Bool)

(declare-fun e!897531 () Bool)

(declare-fun b!1405876 () Bool)

(declare-fun tp!399416 () Bool)

(declare-fun inv!18608 (String!17081) Bool)

(declare-fun inv!18611 (TokenValueInjection!4798) Bool)

(assert (=> b!1405876 (= e!897531 (and tp!399416 (inv!18608 (tag!2741 (rule!4242 t2!34))) (inv!18611 (transformation!2479 (rule!4242 t2!34))) e!897525))))

(declare-fun b!1405877 () Bool)

(declare-fun e!897522 () Bool)

(assert (=> b!1405877 (= e!897522 e!897523)))

(declare-fun res!636403 () Bool)

(assert (=> b!1405877 (=> (not res!636403) (not e!897523))))

(declare-fun prefixMatch!302 (Regex!3793 List!14373) Bool)

(assert (=> b!1405877 (= res!636403 (prefixMatch!302 lt!469126 lt!469128))))

(declare-datatypes ((LexerInterface!2174 0))(
  ( (LexerInterfaceExt!2171 (__x!8968 Int)) (Lexer!2172) )
))
(declare-fun thiss!19762 () LexerInterface!2174)

(declare-fun rulesRegex!362 (LexerInterface!2174 List!14374) Regex!3793)

(assert (=> b!1405877 (= lt!469126 (rulesRegex!362 thiss!19762 rules!2550))))

(declare-fun ++!3722 (List!14373 List!14373) List!14373)

(assert (=> b!1405877 (= lt!469128 (++!3722 lt!469138 (Cons!14307 lt!469116 Nil!14307)))))

(declare-fun lt!469130 () BalanceConc!9376)

(declare-fun apply!3663 (BalanceConc!9376 Int) C!7876)

(assert (=> b!1405877 (= lt!469116 (apply!3663 lt!469130 0))))

(declare-fun lt!469108 () BalanceConc!9376)

(declare-fun list!5589 (BalanceConc!9376) List!14373)

(assert (=> b!1405877 (= lt!469138 (list!5589 lt!469108))))

(declare-fun charsOf!1451 (Token!4620) BalanceConc!9376)

(assert (=> b!1405877 (= lt!469108 (charsOf!1451 t1!34))))

(declare-fun b!1405878 () Bool)

(declare-fun e!897516 () Bool)

(assert (=> b!1405878 (= e!897516 e!897522)))

(declare-fun res!636398 () Bool)

(assert (=> b!1405878 (=> (not res!636398) (not e!897522))))

(declare-fun size!11778 (BalanceConc!9376) Int)

(assert (=> b!1405878 (= res!636398 (> (size!11778 lt!469130) 0))))

(assert (=> b!1405878 (= lt!469130 (charsOf!1451 t2!34))))

(declare-fun b!1405879 () Bool)

(declare-fun res!636395 () Bool)

(assert (=> b!1405879 (=> (not res!636395) (not e!897516))))

(declare-fun isEmpty!8712 (List!14374) Bool)

(assert (=> b!1405879 (= res!636395 (not (isEmpty!8712 rules!2550)))))

(declare-fun b!1405880 () Bool)

(declare-fun tp!399421 () Bool)

(declare-fun e!897515 () Bool)

(declare-fun e!897534 () Bool)

(assert (=> b!1405880 (= e!897534 (and tp!399421 (inv!18608 (tag!2741 (rule!4242 t1!34))) (inv!18611 (transformation!2479 (rule!4242 t1!34))) e!897515))))

(declare-fun b!1405881 () Bool)

(declare-fun e!897533 () Unit!20665)

(declare-fun Unit!20668 () Unit!20665)

(assert (=> b!1405881 (= e!897533 Unit!20668)))

(declare-fun lt!469135 () Unit!20665)

(declare-fun lt!469111 () List!14373)

(assert (=> b!1405881 (= lt!469135 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!224 (regex!2479 (rule!4242 t2!34)) lt!469111 (head!2617 lt!469111)))))

(assert (=> b!1405881 false))

(declare-fun b!1405882 () Bool)

(declare-fun res!636422 () Bool)

(declare-fun e!897529 () Bool)

(assert (=> b!1405882 (=> res!636422 e!897529)))

(declare-datatypes ((tuple2!13934 0))(
  ( (tuple2!13935 (_1!7853 Token!4620) (_2!7853 List!14373)) )
))
(declare-datatypes ((Option!2742 0))(
  ( (None!2741) (Some!2741 (v!21701 tuple2!13934)) )
))
(declare-fun maxPrefix!1148 (LexerInterface!2174 List!14374 List!14373) Option!2742)

(assert (=> b!1405882 (= res!636422 (not (= (maxPrefix!1148 thiss!19762 rules!2550 lt!469138) (Some!2741 (tuple2!13935 t1!34 Nil!14307)))))))

(declare-fun res!636396 () Bool)

(assert (=> start!128234 (=> (not res!636396) (not e!897516))))

(get-info :version)

(assert (=> start!128234 (= res!636396 ((_ is Lexer!2172) thiss!19762))))

(assert (=> start!128234 e!897516))

(assert (=> start!128234 true))

(declare-fun e!897510 () Bool)

(assert (=> start!128234 e!897510))

(declare-fun e!897518 () Bool)

(declare-fun inv!18612 (Token!4620) Bool)

(assert (=> start!128234 (and (inv!18612 t1!34) e!897518)))

(declare-fun e!897509 () Bool)

(assert (=> start!128234 (and (inv!18612 t2!34) e!897509)))

(declare-fun b!1405883 () Bool)

(declare-fun res!636416 () Bool)

(declare-fun e!897508 () Bool)

(assert (=> b!1405883 (=> res!636416 e!897508)))

(declare-datatypes ((List!14376 0))(
  ( (Nil!14310) (Cons!14310 (h!19711 Token!4620) (t!123045 List!14376)) )
))
(declare-fun lt!469115 () List!14376)

(declare-fun lt!469112 () BalanceConc!9376)

(declare-datatypes ((tuple2!13936 0))(
  ( (tuple2!13937 (_1!7854 List!14376) (_2!7854 List!14373)) )
))
(declare-fun lexList!688 (LexerInterface!2174 List!14374 List!14373) tuple2!13936)

(assert (=> b!1405883 (= res!636416 (not (= (lexList!688 thiss!19762 rules!2550 (list!5589 lt!469112)) (tuple2!13937 lt!469115 Nil!14307))))))

(declare-fun b!1405884 () Bool)

(declare-fun res!636388 () Bool)

(assert (=> b!1405884 (=> (not res!636388) (not e!897516))))

(assert (=> b!1405884 (= res!636388 (not (= (isSeparator!2479 (rule!4242 t1!34)) (isSeparator!2479 (rule!4242 t2!34)))))))

(declare-fun b!1405885 () Bool)

(declare-fun res!636397 () Bool)

(assert (=> b!1405885 (=> res!636397 e!897506)))

(assert (=> b!1405885 (= res!636397 (not (contains!2820 lt!469128 lt!469116)))))

(declare-fun b!1405886 () Bool)

(declare-fun e!897532 () Bool)

(assert (=> b!1405886 (= e!897511 e!897532)))

(declare-fun res!636400 () Bool)

(assert (=> b!1405886 (=> res!636400 e!897532)))

(declare-fun getSuffix!639 (List!14373 List!14373) List!14373)

(assert (=> b!1405886 (= res!636400 (not (= lt!469123 (++!3722 lt!469128 (getSuffix!639 lt!469123 lt!469128)))))))

(declare-fun pickWitness!246 (Int) List!14373)

(assert (=> b!1405886 (= lt!469123 (pickWitness!246 lambda!61981))))

(declare-fun b!1405887 () Bool)

(declare-fun res!636421 () Bool)

(assert (=> b!1405887 (=> res!636421 e!897529)))

(declare-fun lt!469125 () BalanceConc!9376)

(declare-fun lt!469131 () List!14376)

(assert (=> b!1405887 (= res!636421 (not (= (lexList!688 thiss!19762 rules!2550 (list!5589 lt!469125)) (tuple2!13937 lt!469131 Nil!14307))))))

(declare-fun b!1405888 () Bool)

(declare-fun e!897517 () Bool)

(assert (=> b!1405888 (= e!897517 e!897529)))

(declare-fun res!636413 () Bool)

(assert (=> b!1405888 (=> res!636413 e!897529)))

(declare-datatypes ((IArray!9443 0))(
  ( (IArray!9444 (innerList!4779 List!14376)) )
))
(declare-datatypes ((Conc!4719 0))(
  ( (Node!4719 (left!12216 Conc!4719) (right!12546 Conc!4719) (csize!9668 Int) (cheight!4930 Int)) (Leaf!7155 (xs!7446 IArray!9443) (csize!9669 Int)) (Empty!4719) )
))
(declare-datatypes ((BalanceConc!9378 0))(
  ( (BalanceConc!9379 (c!231190 Conc!4719)) )
))
(declare-datatypes ((tuple2!13938 0))(
  ( (tuple2!13939 (_1!7855 BalanceConc!9378) (_2!7855 BalanceConc!9376)) )
))
(declare-fun lt!469119 () tuple2!13938)

(declare-fun list!5590 (BalanceConc!9378) List!14376)

(assert (=> b!1405888 (= res!636413 (not (= (list!5590 (_1!7855 lt!469119)) lt!469131)))))

(assert (=> b!1405888 (= lt!469131 (Cons!14310 t1!34 Nil!14310))))

(declare-fun lex!999 (LexerInterface!2174 List!14374 BalanceConc!9376) tuple2!13938)

(assert (=> b!1405888 (= lt!469119 (lex!999 thiss!19762 rules!2550 lt!469125))))

(declare-fun print!938 (LexerInterface!2174 BalanceConc!9378) BalanceConc!9376)

(declare-fun singletonSeq!1146 (Token!4620) BalanceConc!9378)

(assert (=> b!1405888 (= lt!469125 (print!938 thiss!19762 (singletonSeq!1146 t1!34)))))

(declare-fun getWitness!491 (List!14374 Int) Rule!4758)

(assert (=> b!1405888 (= lt!469121 (getWitness!491 rules!2550 lambda!61984))))

(declare-fun b!1405889 () Bool)

(declare-fun Unit!20669 () Unit!20665)

(assert (=> b!1405889 (= e!897533 Unit!20669)))

(declare-fun b!1405890 () Bool)

(declare-fun Unit!20670 () Unit!20665)

(assert (=> b!1405890 (= e!897535 Unit!20670)))

(declare-fun b!1405891 () Bool)

(declare-fun e!897536 () Bool)

(declare-fun tp!399422 () Bool)

(assert (=> b!1405891 (= e!897510 (and e!897536 tp!399422))))

(declare-fun b!1405892 () Bool)

(declare-fun res!636401 () Bool)

(assert (=> b!1405892 (=> res!636401 e!897529)))

(declare-fun isEmpty!8713 (BalanceConc!9376) Bool)

(assert (=> b!1405892 (= res!636401 (not (isEmpty!8713 (_2!7855 lt!469119))))))

(assert (=> b!1405893 (= e!897525 (and tp!399419 tp!399418))))

(declare-fun e!897524 () Bool)

(assert (=> b!1405894 (= e!897524 (and tp!399424 tp!399413))))

(declare-fun b!1405895 () Bool)

(declare-fun tp!399415 () Bool)

(assert (=> b!1405895 (= e!897536 (and tp!399415 (inv!18608 (tag!2741 (h!19709 rules!2550))) (inv!18611 (transformation!2479 (h!19709 rules!2550))) e!897524))))

(assert (=> b!1405896 (= e!897506 e!897520)))

(declare-fun res!636406 () Bool)

(assert (=> b!1405896 (=> res!636406 e!897520)))

(declare-fun exists!602 (List!14375 Int) Bool)

(assert (=> b!1405896 (= res!636406 (not (exists!602 (map!3179 rules!2550 lambda!61982) lambda!61983)))))

(declare-fun lt!469117 () List!14375)

(assert (=> b!1405896 (exists!602 lt!469117 lambda!61983)))

(declare-fun lt!469120 () Unit!20665)

(declare-fun matchRGenUnionSpec!204 (Regex!3793 List!14375 List!14373) Unit!20665)

(assert (=> b!1405896 (= lt!469120 (matchRGenUnionSpec!204 lt!469126 lt!469117 lt!469123))))

(assert (=> b!1405896 (= lt!469117 (map!3179 rules!2550 lambda!61982))))

(assert (=> b!1405897 (= e!897515 (and tp!399414 tp!399423))))

(declare-fun b!1405898 () Bool)

(assert (=> b!1405898 (= e!897508 e!897519)))

(declare-fun res!636414 () Bool)

(assert (=> b!1405898 (=> res!636414 e!897519)))

(assert (=> b!1405898 (= res!636414 (not (= (maxPrefix!1148 thiss!19762 rules!2550 lt!469111) (Some!2741 (tuple2!13935 t2!34 Nil!14307)))))))

(assert (=> b!1405898 (= lt!469111 (list!5589 lt!469130))))

(declare-fun b!1405899 () Bool)

(assert (=> b!1405899 (= e!897529 e!897508)))

(declare-fun res!636412 () Bool)

(assert (=> b!1405899 (=> res!636412 e!897508)))

(declare-fun lt!469132 () tuple2!13938)

(assert (=> b!1405899 (= res!636412 (not (= (list!5590 (_1!7855 lt!469132)) lt!469115)))))

(assert (=> b!1405899 (= lt!469115 (Cons!14310 t2!34 Nil!14310))))

(assert (=> b!1405899 (= lt!469132 (lex!999 thiss!19762 rules!2550 lt!469112))))

(assert (=> b!1405899 (= lt!469112 (print!938 thiss!19762 (singletonSeq!1146 t2!34)))))

(declare-fun b!1405900 () Bool)

(declare-fun e!897521 () Bool)

(declare-fun e!897512 () Bool)

(assert (=> b!1405900 (= e!897521 e!897512)))

(declare-fun res!636419 () Bool)

(assert (=> b!1405900 (=> res!636419 e!897512)))

(assert (=> b!1405900 (= res!636419 (or (isSeparator!2479 lt!469121) (isSeparator!2479 (rule!4242 t1!34))))))

(assert (=> b!1405900 (= (regex!2479 lt!469121) lt!469129)))

(assert (=> b!1405901 (= e!897528 e!897517)))

(declare-fun res!636392 () Bool)

(assert (=> b!1405901 (=> res!636392 e!897517)))

(declare-fun exists!603 (List!14374 Int) Bool)

(assert (=> b!1405901 (= res!636392 (not (exists!603 rules!2550 lambda!61984)))))

(assert (=> b!1405901 (exists!603 rules!2550 lambda!61984)))

(declare-fun lt!469124 () Unit!20665)

(declare-fun lemmaMapContains!190 (List!14374 Int Regex!3793) Unit!20665)

(assert (=> b!1405901 (= lt!469124 (lemmaMapContains!190 rules!2550 lambda!61982 lt!469129))))

(declare-fun b!1405902 () Bool)

(declare-fun res!636387 () Bool)

(assert (=> b!1405902 (=> (not res!636387) (not e!897516))))

(declare-fun rulesProduceIndividualToken!1143 (LexerInterface!2174 List!14374 Token!4620) Bool)

(assert (=> b!1405902 (= res!636387 (rulesProduceIndividualToken!1143 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1405903 () Bool)

(declare-fun e!897513 () Bool)

(assert (=> b!1405903 (= e!897513 e!897521)))

(declare-fun res!636415 () Bool)

(assert (=> b!1405903 (=> res!636415 e!897521)))

(declare-fun lt!469137 () Bool)

(assert (=> b!1405903 (= res!636415 lt!469137)))

(declare-fun lt!469134 () Unit!20665)

(assert (=> b!1405903 (= lt!469134 e!897533)))

(declare-fun c!231186 () Bool)

(assert (=> b!1405903 (= c!231186 lt!469137)))

(declare-fun usedCharacters!290 (Regex!3793) List!14373)

(assert (=> b!1405903 (= lt!469137 (not (contains!2820 (usedCharacters!290 (regex!2479 (rule!4242 t2!34))) lt!469116)))))

(declare-fun b!1405904 () Bool)

(assert (=> b!1405904 (= e!897512 true)))

(assert (=> b!1405904 (not (contains!2820 (usedCharacters!290 (regex!2479 lt!469121)) lt!469116))))

(declare-fun lt!469118 () Unit!20665)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!26 (LexerInterface!2174 List!14374 List!14374 Rule!4758 Rule!4758 C!7876) Unit!20665)

(assert (=> b!1405904 (= lt!469118 (lemmaNonSepRuleNotContainsCharContainedInASepRule!26 thiss!19762 rules!2550 rules!2550 lt!469121 (rule!4242 t2!34) lt!469116))))

(declare-fun b!1405905 () Bool)

(declare-fun res!636405 () Bool)

(assert (=> b!1405905 (=> res!636405 e!897519)))

(declare-fun contains!2821 (List!14374 Rule!4758) Bool)

(assert (=> b!1405905 (= res!636405 (not (contains!2821 rules!2550 lt!469121)))))

(declare-fun b!1405906 () Bool)

(declare-fun res!636420 () Bool)

(assert (=> b!1405906 (=> (not res!636420) (not e!897522))))

(declare-fun sepAndNonSepRulesDisjointChars!852 (List!14374 List!14374) Bool)

(assert (=> b!1405906 (= res!636420 (sepAndNonSepRulesDisjointChars!852 rules!2550 rules!2550))))

(declare-fun b!1405907 () Bool)

(declare-fun res!636390 () Bool)

(assert (=> b!1405907 (=> (not res!636390) (not e!897516))))

(declare-fun rulesInvariant!2044 (LexerInterface!2174 List!14374) Bool)

(assert (=> b!1405907 (= res!636390 (rulesInvariant!2044 thiss!19762 rules!2550))))

(declare-fun b!1405908 () Bool)

(declare-fun res!636404 () Bool)

(assert (=> b!1405908 (=> res!636404 e!897506)))

(assert (=> b!1405908 (= res!636404 (not (matchR!1784 lt!469126 lt!469123)))))

(declare-fun b!1405909 () Bool)

(declare-fun res!636411 () Bool)

(assert (=> b!1405909 (=> res!636411 e!897529)))

(assert (=> b!1405909 (= res!636411 (not (contains!2821 rules!2550 (rule!4242 t1!34))))))

(declare-fun b!1405910 () Bool)

(declare-fun res!636408 () Bool)

(assert (=> b!1405910 (=> res!636408 e!897506)))

(declare-fun lt!469122 () C!7876)

(assert (=> b!1405910 (= res!636408 (not (contains!2820 lt!469123 lt!469122)))))

(declare-fun tp!399417 () Bool)

(declare-fun b!1405911 () Bool)

(declare-fun inv!21 (TokenValue!2569) Bool)

(assert (=> b!1405911 (= e!897518 (and (inv!21 (value!80284 t1!34)) e!897534 tp!399417))))

(declare-fun b!1405912 () Bool)

(assert (=> b!1405912 (= e!897526 e!897513)))

(declare-fun res!636407 () Bool)

(assert (=> b!1405912 (=> res!636407 e!897513)))

(declare-fun lt!469133 () Bool)

(assert (=> b!1405912 (= res!636407 lt!469133)))

(declare-fun lt!469109 () Unit!20665)

(assert (=> b!1405912 (= lt!469109 e!897535)))

(declare-fun c!231187 () Bool)

(assert (=> b!1405912 (= c!231187 lt!469133)))

(assert (=> b!1405912 (= lt!469133 (not (contains!2820 (usedCharacters!290 (regex!2479 (rule!4242 t1!34))) lt!469122)))))

(declare-fun b!1405913 () Bool)

(declare-fun res!636417 () Bool)

(assert (=> b!1405913 (=> res!636417 e!897526)))

(assert (=> b!1405913 (= res!636417 (not (matchR!1784 (regex!2479 (rule!4242 t2!34)) lt!469111)))))

(declare-fun b!1405914 () Bool)

(declare-fun res!636394 () Bool)

(assert (=> b!1405914 (=> (not res!636394) (not e!897522))))

(declare-fun separableTokensPredicate!457 (LexerInterface!2174 Token!4620 Token!4620 List!14374) Bool)

(assert (=> b!1405914 (= res!636394 (not (separableTokensPredicate!457 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1405915 () Bool)

(declare-fun tp!399420 () Bool)

(assert (=> b!1405915 (= e!897509 (and (inv!21 (value!80284 t2!34)) e!897531 tp!399420))))

(declare-fun b!1405916 () Bool)

(declare-fun res!636410 () Bool)

(assert (=> b!1405916 (=> res!636410 e!897519)))

(assert (=> b!1405916 (= res!636410 (not (contains!2821 rules!2550 (rule!4242 t2!34))))))

(declare-fun b!1405917 () Bool)

(assert (=> b!1405917 (= e!897532 e!897506)))

(declare-fun res!636389 () Bool)

(assert (=> b!1405917 (=> res!636389 e!897506)))

(assert (=> b!1405917 (= res!636389 (not (contains!2820 lt!469128 lt!469122)))))

(assert (=> b!1405917 (= lt!469122 (apply!3663 lt!469108 0))))

(declare-fun b!1405918 () Bool)

(declare-fun res!636391 () Bool)

(assert (=> b!1405918 (=> res!636391 e!897508)))

(assert (=> b!1405918 (= res!636391 (not (isEmpty!8713 (_2!7855 lt!469132))))))

(declare-fun b!1405919 () Bool)

(declare-fun res!636402 () Bool)

(assert (=> b!1405919 (=> (not res!636402) (not e!897516))))

(assert (=> b!1405919 (= res!636402 (rulesProduceIndividualToken!1143 thiss!19762 rules!2550 t1!34))))

(assert (= (and start!128234 res!636396) b!1405879))

(assert (= (and b!1405879 res!636395) b!1405907))

(assert (= (and b!1405907 res!636390) b!1405919))

(assert (= (and b!1405919 res!636402) b!1405902))

(assert (= (and b!1405902 res!636387) b!1405884))

(assert (= (and b!1405884 res!636388) b!1405878))

(assert (= (and b!1405878 res!636398) b!1405906))

(assert (= (and b!1405906 res!636420) b!1405914))

(assert (= (and b!1405914 res!636394) b!1405877))

(assert (= (and b!1405877 res!636403) b!1405873))

(assert (= (and b!1405873 (not res!636393)) b!1405886))

(assert (= (and b!1405886 (not res!636400)) b!1405917))

(assert (= (and b!1405917 (not res!636389)) b!1405910))

(assert (= (and b!1405910 (not res!636408)) b!1405885))

(assert (= (and b!1405885 (not res!636397)) b!1405872))

(assert (= (and b!1405872 (not res!636399)) b!1405908))

(assert (= (and b!1405908 (not res!636404)) b!1405896))

(assert (= (and b!1405896 (not res!636406)) b!1405871))

(assert (= (and b!1405871 (not res!636418)) b!1405901))

(assert (= (and b!1405901 (not res!636392)) b!1405888))

(assert (= (and b!1405888 (not res!636413)) b!1405892))

(assert (= (and b!1405892 (not res!636401)) b!1405887))

(assert (= (and b!1405887 (not res!636421)) b!1405882))

(assert (= (and b!1405882 (not res!636422)) b!1405909))

(assert (= (and b!1405909 (not res!636411)) b!1405899))

(assert (= (and b!1405899 (not res!636412)) b!1405918))

(assert (= (and b!1405918 (not res!636391)) b!1405883))

(assert (= (and b!1405883 (not res!636416)) b!1405898))

(assert (= (and b!1405898 (not res!636414)) b!1405916))

(assert (= (and b!1405916 (not res!636410)) b!1405905))

(assert (= (and b!1405905 (not res!636405)) b!1405874))

(assert (= (and b!1405874 (not res!636409)) b!1405913))

(assert (= (and b!1405913 (not res!636417)) b!1405912))

(assert (= (and b!1405912 c!231187) b!1405875))

(assert (= (and b!1405912 (not c!231187)) b!1405890))

(assert (= (and b!1405912 (not res!636407)) b!1405903))

(assert (= (and b!1405903 c!231186) b!1405881))

(assert (= (and b!1405903 (not c!231186)) b!1405889))

(assert (= (and b!1405903 (not res!636415)) b!1405900))

(assert (= (and b!1405900 (not res!636419)) b!1405904))

(assert (= b!1405895 b!1405894))

(assert (= b!1405891 b!1405895))

(assert (= (and start!128234 ((_ is Cons!14308) rules!2550)) b!1405891))

(assert (= b!1405880 b!1405897))

(assert (= b!1405911 b!1405880))

(assert (= start!128234 b!1405911))

(assert (= b!1405876 b!1405893))

(assert (= b!1405915 b!1405876))

(assert (= start!128234 b!1405915))

(declare-fun m!1583427 () Bool)

(assert (=> b!1405916 m!1583427))

(declare-fun m!1583429 () Bool)

(assert (=> b!1405912 m!1583429))

(assert (=> b!1405912 m!1583429))

(declare-fun m!1583431 () Bool)

(assert (=> b!1405912 m!1583431))

(declare-fun m!1583433 () Bool)

(assert (=> b!1405906 m!1583433))

(declare-fun m!1583435 () Bool)

(assert (=> b!1405919 m!1583435))

(declare-fun m!1583437 () Bool)

(assert (=> b!1405902 m!1583437))

(declare-fun m!1583439 () Bool)

(assert (=> b!1405879 m!1583439))

(declare-fun m!1583441 () Bool)

(assert (=> b!1405896 m!1583441))

(assert (=> b!1405896 m!1583441))

(assert (=> b!1405896 m!1583441))

(declare-fun m!1583443 () Bool)

(assert (=> b!1405896 m!1583443))

(declare-fun m!1583445 () Bool)

(assert (=> b!1405896 m!1583445))

(declare-fun m!1583447 () Bool)

(assert (=> b!1405896 m!1583447))

(declare-fun m!1583449 () Bool)

(assert (=> b!1405914 m!1583449))

(declare-fun m!1583451 () Bool)

(assert (=> b!1405880 m!1583451))

(declare-fun m!1583453 () Bool)

(assert (=> b!1405880 m!1583453))

(declare-fun m!1583455 () Bool)

(assert (=> b!1405904 m!1583455))

(assert (=> b!1405904 m!1583455))

(declare-fun m!1583457 () Bool)

(assert (=> b!1405904 m!1583457))

(declare-fun m!1583459 () Bool)

(assert (=> b!1405904 m!1583459))

(assert (=> b!1405871 m!1583441))

(assert (=> b!1405871 m!1583441))

(declare-fun m!1583461 () Bool)

(assert (=> b!1405871 m!1583461))

(assert (=> b!1405871 m!1583441))

(assert (=> b!1405871 m!1583441))

(declare-fun m!1583463 () Bool)

(assert (=> b!1405871 m!1583463))

(declare-fun m!1583465 () Bool)

(assert (=> start!128234 m!1583465))

(declare-fun m!1583467 () Bool)

(assert (=> start!128234 m!1583467))

(declare-fun m!1583469 () Bool)

(assert (=> b!1405907 m!1583469))

(declare-fun m!1583471 () Bool)

(assert (=> b!1405917 m!1583471))

(declare-fun m!1583473 () Bool)

(assert (=> b!1405917 m!1583473))

(declare-fun m!1583475 () Bool)

(assert (=> b!1405892 m!1583475))

(declare-fun m!1583477 () Bool)

(assert (=> b!1405911 m!1583477))

(declare-fun m!1583479 () Bool)

(assert (=> b!1405905 m!1583479))

(declare-fun m!1583481 () Bool)

(assert (=> b!1405886 m!1583481))

(assert (=> b!1405886 m!1583481))

(declare-fun m!1583483 () Bool)

(assert (=> b!1405886 m!1583483))

(declare-fun m!1583485 () Bool)

(assert (=> b!1405886 m!1583485))

(declare-fun m!1583487 () Bool)

(assert (=> b!1405898 m!1583487))

(declare-fun m!1583489 () Bool)

(assert (=> b!1405898 m!1583489))

(declare-fun m!1583491 () Bool)

(assert (=> b!1405883 m!1583491))

(assert (=> b!1405883 m!1583491))

(declare-fun m!1583493 () Bool)

(assert (=> b!1405883 m!1583493))

(declare-fun m!1583495 () Bool)

(assert (=> b!1405876 m!1583495))

(declare-fun m!1583497 () Bool)

(assert (=> b!1405876 m!1583497))

(declare-fun m!1583499 () Bool)

(assert (=> b!1405875 m!1583499))

(assert (=> b!1405875 m!1583499))

(declare-fun m!1583501 () Bool)

(assert (=> b!1405875 m!1583501))

(declare-fun m!1583503 () Bool)

(assert (=> b!1405915 m!1583503))

(declare-fun m!1583505 () Bool)

(assert (=> b!1405888 m!1583505))

(declare-fun m!1583507 () Bool)

(assert (=> b!1405888 m!1583507))

(assert (=> b!1405888 m!1583505))

(declare-fun m!1583509 () Bool)

(assert (=> b!1405888 m!1583509))

(declare-fun m!1583511 () Bool)

(assert (=> b!1405888 m!1583511))

(declare-fun m!1583513 () Bool)

(assert (=> b!1405888 m!1583513))

(declare-fun m!1583515 () Bool)

(assert (=> b!1405918 m!1583515))

(declare-fun m!1583517 () Bool)

(assert (=> b!1405910 m!1583517))

(declare-fun m!1583519 () Bool)

(assert (=> b!1405908 m!1583519))

(declare-fun m!1583521 () Bool)

(assert (=> b!1405873 m!1583521))

(assert (=> b!1405873 m!1583521))

(declare-fun m!1583523 () Bool)

(assert (=> b!1405873 m!1583523))

(declare-fun m!1583525 () Bool)

(assert (=> b!1405887 m!1583525))

(assert (=> b!1405887 m!1583525))

(declare-fun m!1583527 () Bool)

(assert (=> b!1405887 m!1583527))

(declare-fun m!1583529 () Bool)

(assert (=> b!1405872 m!1583529))

(declare-fun m!1583531 () Bool)

(assert (=> b!1405903 m!1583531))

(assert (=> b!1405903 m!1583531))

(declare-fun m!1583533 () Bool)

(assert (=> b!1405903 m!1583533))

(declare-fun m!1583535 () Bool)

(assert (=> b!1405874 m!1583535))

(declare-fun m!1583537 () Bool)

(assert (=> b!1405874 m!1583537))

(declare-fun m!1583539 () Bool)

(assert (=> b!1405874 m!1583539))

(declare-fun m!1583541 () Bool)

(assert (=> b!1405874 m!1583541))

(declare-fun m!1583543 () Bool)

(assert (=> b!1405877 m!1583543))

(declare-fun m!1583545 () Bool)

(assert (=> b!1405877 m!1583545))

(declare-fun m!1583547 () Bool)

(assert (=> b!1405877 m!1583547))

(declare-fun m!1583549 () Bool)

(assert (=> b!1405877 m!1583549))

(declare-fun m!1583551 () Bool)

(assert (=> b!1405877 m!1583551))

(declare-fun m!1583553 () Bool)

(assert (=> b!1405877 m!1583553))

(declare-fun m!1583555 () Bool)

(assert (=> b!1405878 m!1583555))

(declare-fun m!1583557 () Bool)

(assert (=> b!1405878 m!1583557))

(declare-fun m!1583559 () Bool)

(assert (=> b!1405901 m!1583559))

(assert (=> b!1405901 m!1583559))

(declare-fun m!1583561 () Bool)

(assert (=> b!1405901 m!1583561))

(declare-fun m!1583563 () Bool)

(assert (=> b!1405913 m!1583563))

(declare-fun m!1583565 () Bool)

(assert (=> b!1405899 m!1583565))

(declare-fun m!1583567 () Bool)

(assert (=> b!1405899 m!1583567))

(declare-fun m!1583569 () Bool)

(assert (=> b!1405899 m!1583569))

(assert (=> b!1405899 m!1583569))

(declare-fun m!1583571 () Bool)

(assert (=> b!1405899 m!1583571))

(declare-fun m!1583573 () Bool)

(assert (=> b!1405895 m!1583573))

(declare-fun m!1583575 () Bool)

(assert (=> b!1405895 m!1583575))

(declare-fun m!1583577 () Bool)

(assert (=> b!1405882 m!1583577))

(declare-fun m!1583579 () Bool)

(assert (=> b!1405881 m!1583579))

(assert (=> b!1405881 m!1583579))

(declare-fun m!1583581 () Bool)

(assert (=> b!1405881 m!1583581))

(declare-fun m!1583583 () Bool)

(assert (=> b!1405909 m!1583583))

(declare-fun m!1583585 () Bool)

(assert (=> b!1405885 m!1583585))

(check-sat (not b_next!35017) (not b!1405916) (not b!1405885) (not b!1405913) (not b!1405895) (not b!1405873) (not b!1405917) (not b!1405891) (not b!1405902) (not b!1405876) (not b_next!35021) (not b!1405883) b_and!94131 (not b!1405912) (not b!1405904) (not b!1405908) (not b!1405896) (not b!1405887) (not b!1405886) (not b!1405911) (not b!1405880) b_and!94139 (not b_next!35011) (not b!1405907) b_and!94141 (not b!1405877) (not b!1405899) (not b_next!35019) b_and!94133 (not b!1405875) (not b_next!35013) (not b!1405882) (not b!1405901) (not b!1405909) b_and!94135 (not b_next!35015) (not b!1405878) (not b!1405898) (not b!1405910) (not b!1405915) (not b!1405905) (not b!1405918) (not b!1405871) (not b!1405881) (not b!1405874) (not b!1405906) b_and!94137 (not b!1405872) (not b!1405879) (not b!1405919) (not b!1405892) (not b!1405914) (not start!128234) (not b!1405888) (not b!1405903))
(check-sat b_and!94131 (not b_next!35017) b_and!94141 (not b_next!35013) (not b_next!35021) b_and!94137 b_and!94139 (not b_next!35011) (not b_next!35019) b_and!94133 b_and!94135 (not b_next!35015))
