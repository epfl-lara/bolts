; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117562 () Bool)

(assert start!117562)

(declare-fun b!1323028 () Bool)

(declare-fun b_free!31883 () Bool)

(declare-fun b_next!32587 () Bool)

(assert (=> b!1323028 (= b_free!31883 (not b_next!32587))))

(declare-fun tp!383930 () Bool)

(declare-fun b_and!88359 () Bool)

(assert (=> b!1323028 (= tp!383930 b_and!88359)))

(declare-fun b_free!31885 () Bool)

(declare-fun b_next!32589 () Bool)

(assert (=> b!1323028 (= b_free!31885 (not b_next!32589))))

(declare-fun tp!383929 () Bool)

(declare-fun b_and!88361 () Bool)

(assert (=> b!1323028 (= tp!383929 b_and!88361)))

(declare-fun b!1323053 () Bool)

(declare-fun b_free!31887 () Bool)

(declare-fun b_next!32591 () Bool)

(assert (=> b!1323053 (= b_free!31887 (not b_next!32591))))

(declare-fun tp!383927 () Bool)

(declare-fun b_and!88363 () Bool)

(assert (=> b!1323053 (= tp!383927 b_and!88363)))

(declare-fun b_free!31889 () Bool)

(declare-fun b_next!32593 () Bool)

(assert (=> b!1323053 (= b_free!31889 (not b_next!32593))))

(declare-fun tp!383925 () Bool)

(declare-fun b_and!88365 () Bool)

(assert (=> b!1323053 (= tp!383925 b_and!88365)))

(declare-fun b!1323037 () Bool)

(declare-fun b_free!31891 () Bool)

(declare-fun b_next!32595 () Bool)

(assert (=> b!1323037 (= b_free!31891 (not b_next!32595))))

(declare-fun tp!383933 () Bool)

(declare-fun b_and!88367 () Bool)

(assert (=> b!1323037 (= tp!383933 b_and!88367)))

(declare-fun b_free!31893 () Bool)

(declare-fun b_next!32597 () Bool)

(assert (=> b!1323037 (= b_free!31893 (not b_next!32597))))

(declare-fun tp!383936 () Bool)

(declare-fun b_and!88369 () Bool)

(assert (=> b!1323037 (= tp!383936 b_and!88369)))

(declare-fun b!1323032 () Bool)

(assert (=> b!1323032 true))

(assert (=> b!1323032 true))

(declare-fun b!1323042 () Bool)

(assert (=> b!1323042 true))

(declare-fun b!1323041 () Bool)

(assert (=> b!1323041 true))

(declare-fun bs!331194 () Bool)

(declare-fun b!1323034 () Bool)

(assert (= bs!331194 (and b!1323034 b!1323041)))

(declare-fun lambda!54239 () Int)

(declare-fun lambda!54238 () Int)

(assert (=> bs!331194 (not (= lambda!54239 lambda!54238))))

(assert (=> b!1323034 true))

(declare-fun b!1323014 () Bool)

(declare-fun res!594931 () Bool)

(declare-fun e!847792 () Bool)

(assert (=> b!1323014 (=> res!594931 e!847792)))

(declare-datatypes ((C!7556 0))(
  ( (C!7557 (val!4338 Int)) )
))
(declare-datatypes ((List!13468 0))(
  ( (Nil!13402) (Cons!13402 (h!18803 C!7556) (t!118697 List!13468)) )
))
(declare-fun lt!436883 () List!13468)

(declare-fun lt!436863 () C!7556)

(declare-fun contains!2373 (List!13468 C!7556) Bool)

(assert (=> b!1323014 (= res!594931 (not (contains!2373 lt!436883 lt!436863)))))

(declare-fun b!1323016 () Bool)

(declare-fun res!594929 () Bool)

(declare-fun e!847791 () Bool)

(assert (=> b!1323016 (=> (not res!594929) (not e!847791))))

(declare-datatypes ((List!13469 0))(
  ( (Nil!13403) (Cons!13403 (h!18804 (_ BitVec 16)) (t!118698 List!13469)) )
))
(declare-datatypes ((TokenValue!2409 0))(
  ( (FloatLiteralValue!4818 (text!17308 List!13469)) (TokenValueExt!2408 (__x!8647 Int)) (Broken!12045 (value!75698 List!13469)) (Object!2474) (End!2409) (Def!2409) (Underscore!2409) (Match!2409) (Else!2409) (Error!2409) (Case!2409) (If!2409) (Extends!2409) (Abstract!2409) (Class!2409) (Val!2409) (DelimiterValue!4818 (del!2469 List!13469)) (KeywordValue!2415 (value!75699 List!13469)) (CommentValue!4818 (value!75700 List!13469)) (WhitespaceValue!4818 (value!75701 List!13469)) (IndentationValue!2409 (value!75702 List!13469)) (String!16280) (Int32!2409) (Broken!12046 (value!75703 List!13469)) (Boolean!2410) (Unit!19475) (OperatorValue!2412 (op!2469 List!13469)) (IdentifierValue!4818 (value!75704 List!13469)) (IdentifierValue!4819 (value!75705 List!13469)) (WhitespaceValue!4819 (value!75706 List!13469)) (True!4818) (False!4818) (Broken!12047 (value!75707 List!13469)) (Broken!12048 (value!75708 List!13469)) (True!4819) (RightBrace!2409) (RightBracket!2409) (Colon!2409) (Null!2409) (Comma!2409) (LeftBracket!2409) (False!4819) (LeftBrace!2409) (ImaginaryLiteralValue!2409 (text!17309 List!13469)) (StringLiteralValue!7227 (value!75709 List!13469)) (EOFValue!2409 (value!75710 List!13469)) (IdentValue!2409 (value!75711 List!13469)) (DelimiterValue!4819 (value!75712 List!13469)) (DedentValue!2409 (value!75713 List!13469)) (NewLineValue!2409 (value!75714 List!13469)) (IntegerValue!7227 (value!75715 (_ BitVec 32)) (text!17310 List!13469)) (IntegerValue!7228 (value!75716 Int) (text!17311 List!13469)) (Times!2409) (Or!2409) (Equal!2409) (Minus!2409) (Broken!12049 (value!75717 List!13469)) (And!2409) (Div!2409) (LessEqual!2409) (Mod!2409) (Concat!6042) (Not!2409) (Plus!2409) (SpaceValue!2409 (value!75718 List!13469)) (IntegerValue!7229 (value!75719 Int) (text!17312 List!13469)) (StringLiteralValue!7228 (text!17313 List!13469)) (FloatLiteralValue!4819 (text!17314 List!13469)) (BytesLiteralValue!2409 (value!75720 List!13469)) (CommentValue!4819 (value!75721 List!13469)) (StringLiteralValue!7229 (value!75722 List!13469)) (ErrorTokenValue!2409 (msg!2470 List!13469)) )
))
(declare-datatypes ((IArray!8821 0))(
  ( (IArray!8822 (innerList!4468 List!13468)) )
))
(declare-datatypes ((Conc!4408 0))(
  ( (Node!4408 (left!11513 Conc!4408) (right!11843 Conc!4408) (csize!9046 Int) (cheight!4619 Int)) (Leaf!6764 (xs!7123 IArray!8821) (csize!9047 Int)) (Empty!4408) )
))
(declare-datatypes ((BalanceConc!8756 0))(
  ( (BalanceConc!8757 (c!217148 Conc!4408)) )
))
(declare-datatypes ((Regex!3633 0))(
  ( (ElementMatch!3633 (c!217149 C!7556)) (Concat!6043 (regOne!7778 Regex!3633) (regTwo!7778 Regex!3633)) (EmptyExpr!3633) (Star!3633 (reg!3962 Regex!3633)) (EmptyLang!3633) (Union!3633 (regOne!7779 Regex!3633) (regTwo!7779 Regex!3633)) )
))
(declare-datatypes ((String!16281 0))(
  ( (String!16282 (value!75723 String)) )
))
(declare-datatypes ((TokenValueInjection!4478 0))(
  ( (TokenValueInjection!4479 (toValue!3550 Int) (toChars!3409 Int)) )
))
(declare-datatypes ((Rule!4438 0))(
  ( (Rule!4439 (regex!2319 Regex!3633) (tag!2581 String!16281) (isSeparator!2319 Bool) (transformation!2319 TokenValueInjection!4478)) )
))
(declare-datatypes ((List!13470 0))(
  ( (Nil!13404) (Cons!13404 (h!18805 Rule!4438) (t!118699 List!13470)) )
))
(declare-fun rules!2550 () List!13470)

(declare-fun sepAndNonSepRulesDisjointChars!692 (List!13470 List!13470) Bool)

(assert (=> b!1323016 (= res!594929 (sepAndNonSepRulesDisjointChars!692 rules!2550 rules!2550))))

(declare-fun b!1323017 () Bool)

(declare-fun e!847782 () Bool)

(assert (=> b!1323017 (= e!847791 e!847782)))

(declare-fun res!594934 () Bool)

(assert (=> b!1323017 (=> (not res!594934) (not e!847782))))

(declare-fun lt!436875 () Regex!3633)

(declare-fun lt!436872 () List!13468)

(declare-fun prefixMatch!146 (Regex!3633 List!13468) Bool)

(assert (=> b!1323017 (= res!594934 (prefixMatch!146 lt!436875 lt!436872))))

(declare-datatypes ((LexerInterface!2014 0))(
  ( (LexerInterfaceExt!2011 (__x!8648 Int)) (Lexer!2012) )
))
(declare-fun thiss!19762 () LexerInterface!2014)

(declare-fun rulesRegex!204 (LexerInterface!2014 List!13470) Regex!3633)

(assert (=> b!1323017 (= lt!436875 (rulesRegex!204 thiss!19762 rules!2550))))

(declare-fun lt!436887 () List!13468)

(declare-fun ++!3424 (List!13468 List!13468) List!13468)

(assert (=> b!1323017 (= lt!436872 (++!3424 lt!436887 (Cons!13402 lt!436863 Nil!13402)))))

(declare-fun lt!436867 () BalanceConc!8756)

(declare-fun apply!3081 (BalanceConc!8756 Int) C!7556)

(assert (=> b!1323017 (= lt!436863 (apply!3081 lt!436867 0))))

(declare-fun lt!436869 () BalanceConc!8756)

(declare-fun list!5066 (BalanceConc!8756) List!13468)

(assert (=> b!1323017 (= lt!436887 (list!5066 lt!436869))))

(declare-datatypes ((Token!4300 0))(
  ( (Token!4301 (value!75724 TokenValue!2409) (rule!4064 Rule!4438) (size!10920 Int) (originalCharacters!3181 List!13468)) )
))
(declare-fun t1!34 () Token!4300)

(declare-fun charsOf!1291 (Token!4300) BalanceConc!8756)

(assert (=> b!1323017 (= lt!436869 (charsOf!1291 t1!34))))

(declare-fun b!1323018 () Bool)

(declare-fun res!594950 () Bool)

(assert (=> b!1323018 (=> res!594950 e!847792)))

(declare-fun lt!436876 () C!7556)

(assert (=> b!1323018 (= res!594950 (not (contains!2373 lt!436883 lt!436876)))))

(declare-fun b!1323019 () Bool)

(declare-fun res!594923 () Bool)

(declare-fun e!847801 () Bool)

(assert (=> b!1323019 (=> res!594923 e!847801)))

(declare-datatypes ((List!13471 0))(
  ( (Nil!13405) (Cons!13405 (h!18806 Token!4300) (t!118700 List!13471)) )
))
(declare-fun lt!436865 () List!13471)

(declare-fun lt!436873 () BalanceConc!8756)

(declare-datatypes ((tuple2!13034 0))(
  ( (tuple2!13035 (_1!7403 List!13471) (_2!7403 List!13468)) )
))
(declare-fun lexList!552 (LexerInterface!2014 List!13470 List!13468) tuple2!13034)

(assert (=> b!1323019 (= res!594923 (not (= (lexList!552 thiss!19762 rules!2550 (list!5066 lt!436873)) (tuple2!13035 lt!436865 Nil!13402))))))

(declare-fun b!1323020 () Bool)

(declare-fun e!847800 () Bool)

(declare-fun e!847802 () Bool)

(assert (=> b!1323020 (= e!847800 e!847802)))

(declare-fun res!594949 () Bool)

(assert (=> b!1323020 (=> res!594949 e!847802)))

(declare-fun getSuffix!489 (List!13468 List!13468) List!13468)

(assert (=> b!1323020 (= res!594949 (not (= lt!436883 (++!3424 lt!436872 (getSuffix!489 lt!436883 lt!436872)))))))

(declare-fun lambda!54235 () Int)

(declare-fun pickWitness!96 (Int) List!13468)

(assert (=> b!1323020 (= lt!436883 (pickWitness!96 lambda!54235))))

(declare-fun b!1323021 () Bool)

(declare-fun res!594938 () Bool)

(declare-fun e!847789 () Bool)

(assert (=> b!1323021 (=> res!594938 e!847789)))

(declare-fun t2!34 () Token!4300)

(declare-fun contains!2374 (List!13470 Rule!4438) Bool)

(assert (=> b!1323021 (= res!594938 (not (contains!2374 rules!2550 (rule!4064 t2!34))))))

(declare-fun b!1323022 () Bool)

(declare-fun res!594926 () Bool)

(declare-fun e!847797 () Bool)

(assert (=> b!1323022 (=> res!594926 e!847797)))

(declare-fun lt!436871 () BalanceConc!8756)

(declare-fun lt!436878 () List!13471)

(assert (=> b!1323022 (= res!594926 (not (= (lexList!552 thiss!19762 rules!2550 (list!5066 lt!436871)) (tuple2!13035 lt!436878 Nil!13402))))))

(declare-fun b!1323023 () Bool)

(declare-fun res!594930 () Bool)

(declare-fun e!847786 () Bool)

(assert (=> b!1323023 (=> res!594930 e!847786)))

(declare-fun lt!436870 () List!13468)

(declare-fun matchR!1635 (Regex!3633 List!13468) Bool)

(assert (=> b!1323023 (= res!594930 (not (matchR!1635 (regex!2319 (rule!4064 t2!34)) lt!436870)))))

(declare-fun res!594946 () Bool)

(declare-fun e!847783 () Bool)

(assert (=> start!117562 (=> (not res!594946) (not e!847783))))

(get-info :version)

(assert (=> start!117562 (= res!594946 ((_ is Lexer!2012) thiss!19762))))

(assert (=> start!117562 e!847783))

(assert (=> start!117562 true))

(declare-fun e!847795 () Bool)

(assert (=> start!117562 e!847795))

(declare-fun e!847790 () Bool)

(declare-fun inv!17777 (Token!4300) Bool)

(assert (=> start!117562 (and (inv!17777 t1!34) e!847790)))

(declare-fun e!847796 () Bool)

(assert (=> start!117562 (and (inv!17777 t2!34) e!847796)))

(declare-fun b!1323015 () Bool)

(declare-fun e!847787 () Bool)

(declare-fun tp!383934 () Bool)

(assert (=> b!1323015 (= e!847795 (and e!847787 tp!383934))))

(declare-fun b!1323024 () Bool)

(declare-fun res!594939 () Bool)

(assert (=> b!1323024 (=> (not res!594939) (not e!847783))))

(assert (=> b!1323024 (= res!594939 (not (= (isSeparator!2319 (rule!4064 t1!34)) (isSeparator!2319 (rule!4064 t2!34)))))))

(declare-fun b!1323025 () Bool)

(assert (=> b!1323025 (= e!847797 e!847801)))

(declare-fun res!594922 () Bool)

(assert (=> b!1323025 (=> res!594922 e!847801)))

(declare-datatypes ((IArray!8823 0))(
  ( (IArray!8824 (innerList!4469 List!13471)) )
))
(declare-datatypes ((Conc!4409 0))(
  ( (Node!4409 (left!11514 Conc!4409) (right!11844 Conc!4409) (csize!9048 Int) (cheight!4620 Int)) (Leaf!6765 (xs!7124 IArray!8823) (csize!9049 Int)) (Empty!4409) )
))
(declare-datatypes ((BalanceConc!8758 0))(
  ( (BalanceConc!8759 (c!217150 Conc!4409)) )
))
(declare-datatypes ((tuple2!13036 0))(
  ( (tuple2!13037 (_1!7404 BalanceConc!8758) (_2!7404 BalanceConc!8756)) )
))
(declare-fun lt!436885 () tuple2!13036)

(declare-fun list!5067 (BalanceConc!8758) List!13471)

(assert (=> b!1323025 (= res!594922 (not (= (list!5067 (_1!7404 lt!436885)) lt!436865)))))

(assert (=> b!1323025 (= lt!436865 (Cons!13405 t2!34 Nil!13405))))

(declare-fun lex!849 (LexerInterface!2014 List!13470 BalanceConc!8756) tuple2!13036)

(assert (=> b!1323025 (= lt!436885 (lex!849 thiss!19762 rules!2550 lt!436873))))

(declare-fun print!788 (LexerInterface!2014 BalanceConc!8758) BalanceConc!8756)

(declare-fun singletonSeq!906 (Token!4300) BalanceConc!8758)

(assert (=> b!1323025 (= lt!436873 (print!788 thiss!19762 (singletonSeq!906 t2!34)))))

(declare-fun b!1323026 () Bool)

(declare-fun e!847793 () Bool)

(declare-fun tp!383928 () Bool)

(declare-fun inv!21 (TokenValue!2409) Bool)

(assert (=> b!1323026 (= e!847790 (and (inv!21 (value!75724 t1!34)) e!847793 tp!383928))))

(declare-fun b!1323027 () Bool)

(declare-fun res!594936 () Bool)

(assert (=> b!1323027 (=> res!594936 e!847797)))

(assert (=> b!1323027 (= res!594936 (not (contains!2374 rules!2550 (rule!4064 t1!34))))))

(declare-fun e!847788 () Bool)

(assert (=> b!1323028 (= e!847788 (and tp!383930 tp!383929))))

(declare-fun b!1323029 () Bool)

(assert (=> b!1323029 (= e!847783 e!847791)))

(declare-fun res!594943 () Bool)

(assert (=> b!1323029 (=> (not res!594943) (not e!847791))))

(declare-fun size!10921 (BalanceConc!8756) Int)

(assert (=> b!1323029 (= res!594943 (> (size!10921 lt!436867) 0))))

(assert (=> b!1323029 (= lt!436867 (charsOf!1291 t2!34))))

(declare-fun b!1323030 () Bool)

(declare-fun res!594944 () Bool)

(assert (=> b!1323030 (=> res!594944 e!847789)))

(declare-fun lt!436877 () Rule!4438)

(assert (=> b!1323030 (= res!594944 (not (contains!2374 rules!2550 lt!436877)))))

(declare-fun b!1323031 () Bool)

(declare-fun res!594951 () Bool)

(assert (=> b!1323031 (=> (not res!594951) (not e!847783))))

(declare-fun rulesInvariant!1884 (LexerInterface!2014 List!13470) Bool)

(assert (=> b!1323031 (= res!594951 (rulesInvariant!1884 thiss!19762 rules!2550))))

(assert (=> b!1323032 (= e!847782 (not e!847800))))

(declare-fun res!594928 () Bool)

(assert (=> b!1323032 (=> res!594928 e!847800)))

(declare-fun Exists!791 (Int) Bool)

(assert (=> b!1323032 (= res!594928 (not (Exists!791 lambda!54235)))))

(assert (=> b!1323032 (Exists!791 lambda!54235)))

(declare-datatypes ((Unit!19476 0))(
  ( (Unit!19477) )
))
(declare-fun lt!436866 () Unit!19476)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!109 (Regex!3633 List!13468) Unit!19476)

(assert (=> b!1323032 (= lt!436866 (lemmaPrefixMatchThenExistsStringThatMatches!109 lt!436875 lt!436872))))

(declare-fun b!1323033 () Bool)

(declare-fun res!594942 () Bool)

(assert (=> b!1323033 (=> (not res!594942) (not e!847783))))

(declare-fun isEmpty!7974 (List!13470) Bool)

(assert (=> b!1323033 (= res!594942 (not (isEmpty!7974 rules!2550)))))

(assert (=> b!1323034 (= e!847789 e!847786)))

(declare-fun res!594937 () Bool)

(assert (=> b!1323034 (=> res!594937 e!847786)))

(assert (=> b!1323034 (= res!594937 (not (matchR!1635 (regex!2319 (rule!4064 t1!34)) lt!436887)))))

(declare-fun lt!436881 () Unit!19476)

(declare-fun forallContained!570 (List!13470 Int Rule!4438) Unit!19476)

(assert (=> b!1323034 (= lt!436881 (forallContained!570 rules!2550 lambda!54239 (rule!4064 t2!34)))))

(declare-fun lt!436868 () Unit!19476)

(assert (=> b!1323034 (= lt!436868 (forallContained!570 rules!2550 lambda!54239 (rule!4064 t1!34)))))

(declare-fun lt!436886 () Unit!19476)

(assert (=> b!1323034 (= lt!436886 (forallContained!570 rules!2550 lambda!54239 lt!436877))))

(declare-fun b!1323035 () Bool)

(declare-fun e!847780 () Unit!19476)

(declare-fun Unit!19478 () Unit!19476)

(assert (=> b!1323035 (= e!847780 Unit!19478)))

(declare-fun lt!436888 () Unit!19476)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!130 (Regex!3633 List!13468 C!7556) Unit!19476)

(declare-fun head!2302 (List!13468) C!7556)

(assert (=> b!1323035 (= lt!436888 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!130 (regex!2319 (rule!4064 t1!34)) lt!436887 (head!2302 lt!436887)))))

(assert (=> b!1323035 false))

(declare-fun b!1323036 () Bool)

(declare-fun res!594927 () Bool)

(assert (=> b!1323036 (=> res!594927 e!847792)))

(assert (=> b!1323036 (= res!594927 (not (contains!2373 lt!436872 lt!436863)))))

(declare-fun e!847781 () Bool)

(assert (=> b!1323037 (= e!847781 (and tp!383933 tp!383936))))

(declare-fun tp!383932 () Bool)

(declare-fun e!847784 () Bool)

(declare-fun b!1323038 () Bool)

(declare-fun inv!17774 (String!16281) Bool)

(declare-fun inv!17778 (TokenValueInjection!4478) Bool)

(assert (=> b!1323038 (= e!847787 (and tp!383932 (inv!17774 (tag!2581 (h!18805 rules!2550))) (inv!17778 (transformation!2319 (h!18805 rules!2550))) e!847784))))

(declare-fun b!1323039 () Bool)

(declare-fun e!847803 () Bool)

(declare-fun tp!383926 () Bool)

(assert (=> b!1323039 (= e!847796 (and (inv!21 (value!75724 t2!34)) e!847803 tp!383926))))

(declare-fun b!1323040 () Bool)

(declare-fun res!594924 () Bool)

(assert (=> b!1323040 (=> res!594924 e!847797)))

(declare-datatypes ((tuple2!13038 0))(
  ( (tuple2!13039 (_1!7405 Token!4300) (_2!7405 List!13468)) )
))
(declare-datatypes ((Option!2590 0))(
  ( (None!2589) (Some!2589 (v!21178 tuple2!13038)) )
))
(declare-fun maxPrefix!1024 (LexerInterface!2014 List!13470 List!13468) Option!2590)

(assert (=> b!1323040 (= res!594924 (not (= (maxPrefix!1024 thiss!19762 rules!2550 lt!436887) (Some!2589 (tuple2!13039 t1!34 Nil!13402)))))))

(declare-fun e!847806 () Bool)

(declare-fun e!847799 () Bool)

(assert (=> b!1323041 (= e!847806 e!847799)))

(declare-fun res!594935 () Bool)

(assert (=> b!1323041 (=> res!594935 e!847799)))

(declare-fun exists!340 (List!13470 Int) Bool)

(assert (=> b!1323041 (= res!594935 (not (exists!340 rules!2550 lambda!54238)))))

(assert (=> b!1323041 (exists!340 rules!2550 lambda!54238)))

(declare-fun lt!436864 () Unit!19476)

(declare-fun lt!436874 () Regex!3633)

(declare-fun lambda!54236 () Int)

(declare-fun lemmaMapContains!62 (List!13470 Int Regex!3633) Unit!19476)

(assert (=> b!1323041 (= lt!436864 (lemmaMapContains!62 rules!2550 lambda!54236 lt!436874))))

(declare-fun e!847779 () Bool)

(assert (=> b!1323042 (= e!847792 e!847779)))

(declare-fun res!594933 () Bool)

(assert (=> b!1323042 (=> res!594933 e!847779)))

(declare-fun lambda!54237 () Int)

(declare-datatypes ((List!13472 0))(
  ( (Nil!13406) (Cons!13406 (h!18807 Regex!3633) (t!118701 List!13472)) )
))
(declare-fun exists!341 (List!13472 Int) Bool)

(declare-fun map!2945 (List!13470 Int) List!13472)

(assert (=> b!1323042 (= res!594933 (not (exists!341 (map!2945 rules!2550 lambda!54236) lambda!54237)))))

(declare-fun lt!436880 () List!13472)

(assert (=> b!1323042 (exists!341 lt!436880 lambda!54237)))

(declare-fun lt!436884 () Unit!19476)

(declare-fun matchRGenUnionSpec!70 (Regex!3633 List!13472 List!13468) Unit!19476)

(assert (=> b!1323042 (= lt!436884 (matchRGenUnionSpec!70 lt!436875 lt!436880 lt!436883))))

(assert (=> b!1323042 (= lt!436880 (map!2945 rules!2550 lambda!54236))))

(declare-fun b!1323043 () Bool)

(declare-fun res!594948 () Bool)

(assert (=> b!1323043 (=> (not res!594948) (not e!847783))))

(declare-fun rulesProduceIndividualToken!983 (LexerInterface!2014 List!13470 Token!4300) Bool)

(assert (=> b!1323043 (= res!594948 (rulesProduceIndividualToken!983 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1323044 () Bool)

(declare-fun res!594945 () Bool)

(assert (=> b!1323044 (=> res!594945 e!847797)))

(declare-fun lt!436879 () tuple2!13036)

(declare-fun isEmpty!7975 (BalanceConc!8756) Bool)

(assert (=> b!1323044 (= res!594945 (not (isEmpty!7975 (_2!7404 lt!436879))))))

(declare-fun b!1323045 () Bool)

(declare-fun res!594952 () Bool)

(assert (=> b!1323045 (=> (not res!594952) (not e!847783))))

(assert (=> b!1323045 (= res!594952 (rulesProduceIndividualToken!983 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1323046 () Bool)

(assert (=> b!1323046 (= e!847779 e!847806)))

(declare-fun res!594921 () Bool)

(assert (=> b!1323046 (=> res!594921 e!847806)))

(declare-fun contains!2375 (List!13472 Regex!3633) Bool)

(assert (=> b!1323046 (= res!594921 (not (contains!2375 (map!2945 rules!2550 lambda!54236) lt!436874)))))

(declare-fun getWitness!232 (List!13472 Int) Regex!3633)

(assert (=> b!1323046 (= lt!436874 (getWitness!232 (map!2945 rules!2550 lambda!54236) lambda!54237))))

(declare-fun b!1323047 () Bool)

(assert (=> b!1323047 (= e!847801 e!847789)))

(declare-fun res!594953 () Bool)

(assert (=> b!1323047 (=> res!594953 e!847789)))

(assert (=> b!1323047 (= res!594953 (not (= (maxPrefix!1024 thiss!19762 rules!2550 lt!436870) (Some!2589 (tuple2!13039 t2!34 Nil!13402)))))))

(assert (=> b!1323047 (= lt!436870 (list!5066 lt!436867))))

(declare-fun tp!383935 () Bool)

(declare-fun b!1323048 () Bool)

(assert (=> b!1323048 (= e!847793 (and tp!383935 (inv!17774 (tag!2581 (rule!4064 t1!34))) (inv!17778 (transformation!2319 (rule!4064 t1!34))) e!847781))))

(declare-fun b!1323049 () Bool)

(declare-fun res!594947 () Bool)

(assert (=> b!1323049 (=> res!594947 e!847801)))

(assert (=> b!1323049 (= res!594947 (not (isEmpty!7975 (_2!7404 lt!436885))))))

(declare-fun b!1323050 () Bool)

(declare-fun tp!383931 () Bool)

(assert (=> b!1323050 (= e!847803 (and tp!383931 (inv!17774 (tag!2581 (rule!4064 t2!34))) (inv!17778 (transformation!2319 (rule!4064 t2!34))) e!847788))))

(declare-fun b!1323051 () Bool)

(declare-fun Unit!19479 () Unit!19476)

(assert (=> b!1323051 (= e!847780 Unit!19479)))

(declare-fun b!1323052 () Bool)

(declare-fun res!594932 () Bool)

(assert (=> b!1323052 (=> res!594932 e!847792)))

(assert (=> b!1323052 (= res!594932 (not (matchR!1635 lt!436875 lt!436883)))))

(assert (=> b!1323053 (= e!847784 (and tp!383927 tp!383925))))

(declare-fun b!1323054 () Bool)

(declare-fun res!594925 () Bool)

(assert (=> b!1323054 (=> (not res!594925) (not e!847791))))

(declare-fun separableTokensPredicate!297 (LexerInterface!2014 Token!4300 Token!4300 List!13470) Bool)

(assert (=> b!1323054 (= res!594925 (not (separableTokensPredicate!297 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1323055 () Bool)

(assert (=> b!1323055 (= e!847786 (< 0 (size!10921 lt!436869)))))

(declare-fun lt!436882 () Unit!19476)

(assert (=> b!1323055 (= lt!436882 e!847780)))

(declare-fun c!217147 () Bool)

(declare-fun usedCharacters!184 (Regex!3633) List!13468)

(assert (=> b!1323055 (= c!217147 (not (contains!2373 (usedCharacters!184 (regex!2319 (rule!4064 t1!34))) lt!436876)))))

(declare-fun b!1323056 () Bool)

(assert (=> b!1323056 (= e!847799 e!847797)))

(declare-fun res!594941 () Bool)

(assert (=> b!1323056 (=> res!594941 e!847797)))

(assert (=> b!1323056 (= res!594941 (not (= (list!5067 (_1!7404 lt!436879)) lt!436878)))))

(assert (=> b!1323056 (= lt!436878 (Cons!13405 t1!34 Nil!13405))))

(assert (=> b!1323056 (= lt!436879 (lex!849 thiss!19762 rules!2550 lt!436871))))

(assert (=> b!1323056 (= lt!436871 (print!788 thiss!19762 (singletonSeq!906 t1!34)))))

(declare-fun getWitness!233 (List!13470 Int) Rule!4438)

(assert (=> b!1323056 (= lt!436877 (getWitness!233 rules!2550 lambda!54238))))

(declare-fun b!1323057 () Bool)

(assert (=> b!1323057 (= e!847802 e!847792)))

(declare-fun res!594940 () Bool)

(assert (=> b!1323057 (=> res!594940 e!847792)))

(assert (=> b!1323057 (= res!594940 (not (contains!2373 lt!436872 lt!436876)))))

(assert (=> b!1323057 (= lt!436876 (apply!3081 lt!436869 0))))

(assert (= (and start!117562 res!594946) b!1323033))

(assert (= (and b!1323033 res!594942) b!1323031))

(assert (= (and b!1323031 res!594951) b!1323045))

(assert (= (and b!1323045 res!594952) b!1323043))

(assert (= (and b!1323043 res!594948) b!1323024))

(assert (= (and b!1323024 res!594939) b!1323029))

(assert (= (and b!1323029 res!594943) b!1323016))

(assert (= (and b!1323016 res!594929) b!1323054))

(assert (= (and b!1323054 res!594925) b!1323017))

(assert (= (and b!1323017 res!594934) b!1323032))

(assert (= (and b!1323032 (not res!594928)) b!1323020))

(assert (= (and b!1323020 (not res!594949)) b!1323057))

(assert (= (and b!1323057 (not res!594940)) b!1323018))

(assert (= (and b!1323018 (not res!594950)) b!1323036))

(assert (= (and b!1323036 (not res!594927)) b!1323014))

(assert (= (and b!1323014 (not res!594931)) b!1323052))

(assert (= (and b!1323052 (not res!594932)) b!1323042))

(assert (= (and b!1323042 (not res!594933)) b!1323046))

(assert (= (and b!1323046 (not res!594921)) b!1323041))

(assert (= (and b!1323041 (not res!594935)) b!1323056))

(assert (= (and b!1323056 (not res!594941)) b!1323044))

(assert (= (and b!1323044 (not res!594945)) b!1323022))

(assert (= (and b!1323022 (not res!594926)) b!1323040))

(assert (= (and b!1323040 (not res!594924)) b!1323027))

(assert (= (and b!1323027 (not res!594936)) b!1323025))

(assert (= (and b!1323025 (not res!594922)) b!1323049))

(assert (= (and b!1323049 (not res!594947)) b!1323019))

(assert (= (and b!1323019 (not res!594923)) b!1323047))

(assert (= (and b!1323047 (not res!594953)) b!1323021))

(assert (= (and b!1323021 (not res!594938)) b!1323030))

(assert (= (and b!1323030 (not res!594944)) b!1323034))

(assert (= (and b!1323034 (not res!594937)) b!1323023))

(assert (= (and b!1323023 (not res!594930)) b!1323055))

(assert (= (and b!1323055 c!217147) b!1323035))

(assert (= (and b!1323055 (not c!217147)) b!1323051))

(assert (= b!1323038 b!1323053))

(assert (= b!1323015 b!1323038))

(assert (= (and start!117562 ((_ is Cons!13404) rules!2550)) b!1323015))

(assert (= b!1323048 b!1323037))

(assert (= b!1323026 b!1323048))

(assert (= start!117562 b!1323026))

(assert (= b!1323050 b!1323028))

(assert (= b!1323039 b!1323050))

(assert (= start!117562 b!1323039))

(declare-fun m!1479251 () Bool)

(assert (=> b!1323043 m!1479251))

(declare-fun m!1479253 () Bool)

(assert (=> b!1323038 m!1479253))

(declare-fun m!1479255 () Bool)

(assert (=> b!1323038 m!1479255))

(declare-fun m!1479257 () Bool)

(assert (=> b!1323029 m!1479257))

(declare-fun m!1479259 () Bool)

(assert (=> b!1323029 m!1479259))

(declare-fun m!1479261 () Bool)

(assert (=> b!1323050 m!1479261))

(declare-fun m!1479263 () Bool)

(assert (=> b!1323050 m!1479263))

(declare-fun m!1479265 () Bool)

(assert (=> b!1323057 m!1479265))

(declare-fun m!1479267 () Bool)

(assert (=> b!1323057 m!1479267))

(declare-fun m!1479269 () Bool)

(assert (=> b!1323049 m!1479269))

(declare-fun m!1479271 () Bool)

(assert (=> b!1323048 m!1479271))

(declare-fun m!1479273 () Bool)

(assert (=> b!1323048 m!1479273))

(declare-fun m!1479275 () Bool)

(assert (=> b!1323021 m!1479275))

(declare-fun m!1479277 () Bool)

(assert (=> b!1323027 m!1479277))

(declare-fun m!1479279 () Bool)

(assert (=> b!1323017 m!1479279))

(declare-fun m!1479281 () Bool)

(assert (=> b!1323017 m!1479281))

(declare-fun m!1479283 () Bool)

(assert (=> b!1323017 m!1479283))

(declare-fun m!1479285 () Bool)

(assert (=> b!1323017 m!1479285))

(declare-fun m!1479287 () Bool)

(assert (=> b!1323017 m!1479287))

(declare-fun m!1479289 () Bool)

(assert (=> b!1323017 m!1479289))

(declare-fun m!1479291 () Bool)

(assert (=> b!1323045 m!1479291))

(declare-fun m!1479293 () Bool)

(assert (=> b!1323032 m!1479293))

(assert (=> b!1323032 m!1479293))

(declare-fun m!1479295 () Bool)

(assert (=> b!1323032 m!1479295))

(declare-fun m!1479297 () Bool)

(assert (=> b!1323026 m!1479297))

(declare-fun m!1479299 () Bool)

(assert (=> b!1323020 m!1479299))

(assert (=> b!1323020 m!1479299))

(declare-fun m!1479301 () Bool)

(assert (=> b!1323020 m!1479301))

(declare-fun m!1479303 () Bool)

(assert (=> b!1323020 m!1479303))

(declare-fun m!1479305 () Bool)

(assert (=> b!1323046 m!1479305))

(assert (=> b!1323046 m!1479305))

(declare-fun m!1479307 () Bool)

(assert (=> b!1323046 m!1479307))

(assert (=> b!1323046 m!1479305))

(assert (=> b!1323046 m!1479305))

(declare-fun m!1479309 () Bool)

(assert (=> b!1323046 m!1479309))

(declare-fun m!1479311 () Bool)

(assert (=> b!1323019 m!1479311))

(assert (=> b!1323019 m!1479311))

(declare-fun m!1479313 () Bool)

(assert (=> b!1323019 m!1479313))

(declare-fun m!1479315 () Bool)

(assert (=> start!117562 m!1479315))

(declare-fun m!1479317 () Bool)

(assert (=> start!117562 m!1479317))

(declare-fun m!1479319 () Bool)

(assert (=> b!1323025 m!1479319))

(declare-fun m!1479321 () Bool)

(assert (=> b!1323025 m!1479321))

(declare-fun m!1479323 () Bool)

(assert (=> b!1323025 m!1479323))

(assert (=> b!1323025 m!1479323))

(declare-fun m!1479325 () Bool)

(assert (=> b!1323025 m!1479325))

(declare-fun m!1479327 () Bool)

(assert (=> b!1323030 m!1479327))

(declare-fun m!1479329 () Bool)

(assert (=> b!1323016 m!1479329))

(declare-fun m!1479331 () Bool)

(assert (=> b!1323040 m!1479331))

(declare-fun m!1479333 () Bool)

(assert (=> b!1323056 m!1479333))

(declare-fun m!1479335 () Bool)

(assert (=> b!1323056 m!1479335))

(declare-fun m!1479337 () Bool)

(assert (=> b!1323056 m!1479337))

(assert (=> b!1323056 m!1479335))

(declare-fun m!1479339 () Bool)

(assert (=> b!1323056 m!1479339))

(declare-fun m!1479341 () Bool)

(assert (=> b!1323056 m!1479341))

(declare-fun m!1479343 () Bool)

(assert (=> b!1323036 m!1479343))

(declare-fun m!1479345 () Bool)

(assert (=> b!1323054 m!1479345))

(declare-fun m!1479347 () Bool)

(assert (=> b!1323044 m!1479347))

(declare-fun m!1479349 () Bool)

(assert (=> b!1323052 m!1479349))

(declare-fun m!1479351 () Bool)

(assert (=> b!1323031 m!1479351))

(declare-fun m!1479353 () Bool)

(assert (=> b!1323018 m!1479353))

(declare-fun m!1479355 () Bool)

(assert (=> b!1323033 m!1479355))

(declare-fun m!1479357 () Bool)

(assert (=> b!1323022 m!1479357))

(assert (=> b!1323022 m!1479357))

(declare-fun m!1479359 () Bool)

(assert (=> b!1323022 m!1479359))

(declare-fun m!1479361 () Bool)

(assert (=> b!1323041 m!1479361))

(assert (=> b!1323041 m!1479361))

(declare-fun m!1479363 () Bool)

(assert (=> b!1323041 m!1479363))

(declare-fun m!1479365 () Bool)

(assert (=> b!1323055 m!1479365))

(declare-fun m!1479367 () Bool)

(assert (=> b!1323055 m!1479367))

(assert (=> b!1323055 m!1479367))

(declare-fun m!1479369 () Bool)

(assert (=> b!1323055 m!1479369))

(declare-fun m!1479371 () Bool)

(assert (=> b!1323035 m!1479371))

(assert (=> b!1323035 m!1479371))

(declare-fun m!1479373 () Bool)

(assert (=> b!1323035 m!1479373))

(declare-fun m!1479375 () Bool)

(assert (=> b!1323023 m!1479375))

(declare-fun m!1479377 () Bool)

(assert (=> b!1323039 m!1479377))

(declare-fun m!1479379 () Bool)

(assert (=> b!1323014 m!1479379))

(declare-fun m!1479381 () Bool)

(assert (=> b!1323034 m!1479381))

(declare-fun m!1479383 () Bool)

(assert (=> b!1323034 m!1479383))

(declare-fun m!1479385 () Bool)

(assert (=> b!1323034 m!1479385))

(declare-fun m!1479387 () Bool)

(assert (=> b!1323034 m!1479387))

(declare-fun m!1479389 () Bool)

(assert (=> b!1323047 m!1479389))

(declare-fun m!1479391 () Bool)

(assert (=> b!1323047 m!1479391))

(declare-fun m!1479393 () Bool)

(assert (=> b!1323042 m!1479393))

(assert (=> b!1323042 m!1479305))

(declare-fun m!1479395 () Bool)

(assert (=> b!1323042 m!1479395))

(declare-fun m!1479397 () Bool)

(assert (=> b!1323042 m!1479397))

(assert (=> b!1323042 m!1479305))

(assert (=> b!1323042 m!1479305))

(check-sat (not b!1323036) (not b!1323056) (not b!1323017) (not b_next!32591) (not b!1323027) b_and!88367 b_and!88369 (not b!1323041) (not b!1323045) (not b!1323019) (not b!1323040) (not b_next!32589) (not b!1323043) (not b!1323020) (not b!1323031) (not b!1323049) (not b!1323016) (not b!1323033) (not b!1323025) (not b!1323035) b_and!88365 (not b!1323046) (not b!1323029) (not b!1323042) b_and!88359 (not b_next!32587) (not b!1323026) b_and!88361 (not b_next!32593) (not b_next!32595) (not b!1323052) (not b!1323057) (not b!1323022) (not b!1323038) (not b!1323015) (not b!1323032) (not b!1323023) (not b!1323044) (not b!1323039) (not start!117562) (not b!1323055) (not b!1323054) b_and!88363 (not b!1323050) (not b!1323034) (not b_next!32597) (not b!1323014) (not b!1323047) (not b!1323018) (not b!1323021) (not b!1323030) (not b!1323048))
(check-sat (not b_next!32589) (not b_next!32591) b_and!88365 b_and!88359 (not b_next!32587) b_and!88367 b_and!88363 (not b_next!32597) b_and!88369 b_and!88361 (not b_next!32593) (not b_next!32595))
(get-model)

(declare-fun b!1323096 () Bool)

(declare-fun e!847821 () Bool)

(declare-fun e!847824 () Bool)

(assert (=> b!1323096 (= e!847821 e!847824)))

(declare-fun res!594979 () Bool)

(assert (=> b!1323096 (=> res!594979 e!847824)))

(declare-fun call!89744 () Bool)

(assert (=> b!1323096 (= res!594979 call!89744)))

(declare-fun b!1323097 () Bool)

(declare-fun res!594978 () Bool)

(declare-fun e!847826 () Bool)

(assert (=> b!1323097 (=> res!594978 e!847826)))

(assert (=> b!1323097 (= res!594978 (not ((_ is ElementMatch!3633) (regex!2319 (rule!4064 t1!34)))))))

(declare-fun e!847825 () Bool)

(assert (=> b!1323097 (= e!847825 e!847826)))

(declare-fun b!1323098 () Bool)

(declare-fun e!847822 () Bool)

(declare-fun derivativeStep!907 (Regex!3633 C!7556) Regex!3633)

(declare-fun tail!1900 (List!13468) List!13468)

(assert (=> b!1323098 (= e!847822 (matchR!1635 (derivativeStep!907 (regex!2319 (rule!4064 t1!34)) (head!2302 lt!436887)) (tail!1900 lt!436887)))))

(declare-fun b!1323099 () Bool)

(declare-fun res!594982 () Bool)

(declare-fun e!847823 () Bool)

(assert (=> b!1323099 (=> (not res!594982) (not e!847823))))

(declare-fun isEmpty!7979 (List!13468) Bool)

(assert (=> b!1323099 (= res!594982 (isEmpty!7979 (tail!1900 lt!436887)))))

(declare-fun b!1323100 () Bool)

(declare-fun res!594981 () Bool)

(assert (=> b!1323100 (=> res!594981 e!847826)))

(assert (=> b!1323100 (= res!594981 e!847823)))

(declare-fun res!594984 () Bool)

(assert (=> b!1323100 (=> (not res!594984) (not e!847823))))

(declare-fun lt!436894 () Bool)

(assert (=> b!1323100 (= res!594984 lt!436894)))

(declare-fun b!1323101 () Bool)

(declare-fun res!594980 () Bool)

(assert (=> b!1323101 (=> (not res!594980) (not e!847823))))

(assert (=> b!1323101 (= res!594980 (not call!89744))))

(declare-fun b!1323102 () Bool)

(assert (=> b!1323102 (= e!847824 (not (= (head!2302 lt!436887) (c!217149 (regex!2319 (rule!4064 t1!34))))))))

(declare-fun b!1323103 () Bool)

(declare-fun nullable!1154 (Regex!3633) Bool)

(assert (=> b!1323103 (= e!847822 (nullable!1154 (regex!2319 (rule!4064 t1!34))))))

(declare-fun bm!89739 () Bool)

(assert (=> bm!89739 (= call!89744 (isEmpty!7979 lt!436887))))

(declare-fun b!1323104 () Bool)

(declare-fun e!847827 () Bool)

(assert (=> b!1323104 (= e!847827 e!847825)))

(declare-fun c!217158 () Bool)

(assert (=> b!1323104 (= c!217158 ((_ is EmptyLang!3633) (regex!2319 (rule!4064 t1!34))))))

(declare-fun b!1323105 () Bool)

(assert (=> b!1323105 (= e!847823 (= (head!2302 lt!436887) (c!217149 (regex!2319 (rule!4064 t1!34)))))))

(declare-fun d!373668 () Bool)

(assert (=> d!373668 e!847827))

(declare-fun c!217159 () Bool)

(assert (=> d!373668 (= c!217159 ((_ is EmptyExpr!3633) (regex!2319 (rule!4064 t1!34))))))

(assert (=> d!373668 (= lt!436894 e!847822)))

(declare-fun c!217157 () Bool)

(assert (=> d!373668 (= c!217157 (isEmpty!7979 lt!436887))))

(declare-fun validRegex!1559 (Regex!3633) Bool)

(assert (=> d!373668 (validRegex!1559 (regex!2319 (rule!4064 t1!34)))))

(assert (=> d!373668 (= (matchR!1635 (regex!2319 (rule!4064 t1!34)) lt!436887) lt!436894)))

(declare-fun b!1323106 () Bool)

(assert (=> b!1323106 (= e!847825 (not lt!436894))))

(declare-fun b!1323107 () Bool)

(assert (=> b!1323107 (= e!847826 e!847821)))

(declare-fun res!594983 () Bool)

(assert (=> b!1323107 (=> (not res!594983) (not e!847821))))

(assert (=> b!1323107 (= res!594983 (not lt!436894))))

(declare-fun b!1323108 () Bool)

(declare-fun res!594985 () Bool)

(assert (=> b!1323108 (=> res!594985 e!847824)))

(assert (=> b!1323108 (= res!594985 (not (isEmpty!7979 (tail!1900 lt!436887))))))

(declare-fun b!1323109 () Bool)

(assert (=> b!1323109 (= e!847827 (= lt!436894 call!89744))))

(assert (= (and d!373668 c!217157) b!1323103))

(assert (= (and d!373668 (not c!217157)) b!1323098))

(assert (= (and d!373668 c!217159) b!1323109))

(assert (= (and d!373668 (not c!217159)) b!1323104))

(assert (= (and b!1323104 c!217158) b!1323106))

(assert (= (and b!1323104 (not c!217158)) b!1323097))

(assert (= (and b!1323097 (not res!594978)) b!1323100))

(assert (= (and b!1323100 res!594984) b!1323101))

(assert (= (and b!1323101 res!594980) b!1323099))

(assert (= (and b!1323099 res!594982) b!1323105))

(assert (= (and b!1323100 (not res!594981)) b!1323107))

(assert (= (and b!1323107 res!594983) b!1323096))

(assert (= (and b!1323096 (not res!594979)) b!1323108))

(assert (= (and b!1323108 (not res!594985)) b!1323102))

(assert (= (or b!1323109 b!1323096 b!1323101) bm!89739))

(declare-fun m!1479405 () Bool)

(assert (=> d!373668 m!1479405))

(declare-fun m!1479407 () Bool)

(assert (=> d!373668 m!1479407))

(assert (=> b!1323105 m!1479371))

(declare-fun m!1479409 () Bool)

(assert (=> b!1323108 m!1479409))

(assert (=> b!1323108 m!1479409))

(declare-fun m!1479411 () Bool)

(assert (=> b!1323108 m!1479411))

(assert (=> b!1323102 m!1479371))

(declare-fun m!1479413 () Bool)

(assert (=> b!1323103 m!1479413))

(assert (=> b!1323099 m!1479409))

(assert (=> b!1323099 m!1479409))

(assert (=> b!1323099 m!1479411))

(assert (=> bm!89739 m!1479405))

(assert (=> b!1323098 m!1479371))

(assert (=> b!1323098 m!1479371))

(declare-fun m!1479415 () Bool)

(assert (=> b!1323098 m!1479415))

(assert (=> b!1323098 m!1479409))

(assert (=> b!1323098 m!1479415))

(assert (=> b!1323098 m!1479409))

(declare-fun m!1479417 () Bool)

(assert (=> b!1323098 m!1479417))

(assert (=> b!1323034 d!373668))

(declare-fun d!373670 () Bool)

(declare-fun dynLambda!5898 (Int Rule!4438) Bool)

(assert (=> d!373670 (dynLambda!5898 lambda!54239 (rule!4064 t2!34))))

(declare-fun lt!436903 () Unit!19476)

(declare-fun choose!8100 (List!13470 Int Rule!4438) Unit!19476)

(assert (=> d!373670 (= lt!436903 (choose!8100 rules!2550 lambda!54239 (rule!4064 t2!34)))))

(declare-fun e!847836 () Bool)

(assert (=> d!373670 e!847836))

(declare-fun res!594997 () Bool)

(assert (=> d!373670 (=> (not res!594997) (not e!847836))))

(declare-fun forall!3308 (List!13470 Int) Bool)

(assert (=> d!373670 (= res!594997 (forall!3308 rules!2550 lambda!54239))))

(assert (=> d!373670 (= (forallContained!570 rules!2550 lambda!54239 (rule!4064 t2!34)) lt!436903)))

(declare-fun b!1323121 () Bool)

(assert (=> b!1323121 (= e!847836 (contains!2374 rules!2550 (rule!4064 t2!34)))))

(assert (= (and d!373670 res!594997) b!1323121))

(declare-fun b_lambda!38703 () Bool)

(assert (=> (not b_lambda!38703) (not d!373670)))

(declare-fun m!1479435 () Bool)

(assert (=> d!373670 m!1479435))

(declare-fun m!1479437 () Bool)

(assert (=> d!373670 m!1479437))

(declare-fun m!1479439 () Bool)

(assert (=> d!373670 m!1479439))

(assert (=> b!1323121 m!1479275))

(assert (=> b!1323034 d!373670))

(declare-fun d!373676 () Bool)

(assert (=> d!373676 (dynLambda!5898 lambda!54239 (rule!4064 t1!34))))

(declare-fun lt!436904 () Unit!19476)

(assert (=> d!373676 (= lt!436904 (choose!8100 rules!2550 lambda!54239 (rule!4064 t1!34)))))

(declare-fun e!847837 () Bool)

(assert (=> d!373676 e!847837))

(declare-fun res!594998 () Bool)

(assert (=> d!373676 (=> (not res!594998) (not e!847837))))

(assert (=> d!373676 (= res!594998 (forall!3308 rules!2550 lambda!54239))))

(assert (=> d!373676 (= (forallContained!570 rules!2550 lambda!54239 (rule!4064 t1!34)) lt!436904)))

(declare-fun b!1323122 () Bool)

(assert (=> b!1323122 (= e!847837 (contains!2374 rules!2550 (rule!4064 t1!34)))))

(assert (= (and d!373676 res!594998) b!1323122))

(declare-fun b_lambda!38705 () Bool)

(assert (=> (not b_lambda!38705) (not d!373676)))

(declare-fun m!1479441 () Bool)

(assert (=> d!373676 m!1479441))

(declare-fun m!1479443 () Bool)

(assert (=> d!373676 m!1479443))

(assert (=> d!373676 m!1479439))

(assert (=> b!1323122 m!1479277))

(assert (=> b!1323034 d!373676))

(declare-fun d!373678 () Bool)

(assert (=> d!373678 (dynLambda!5898 lambda!54239 lt!436877)))

(declare-fun lt!436905 () Unit!19476)

(assert (=> d!373678 (= lt!436905 (choose!8100 rules!2550 lambda!54239 lt!436877))))

(declare-fun e!847838 () Bool)

(assert (=> d!373678 e!847838))

(declare-fun res!594999 () Bool)

(assert (=> d!373678 (=> (not res!594999) (not e!847838))))

(assert (=> d!373678 (= res!594999 (forall!3308 rules!2550 lambda!54239))))

(assert (=> d!373678 (= (forallContained!570 rules!2550 lambda!54239 lt!436877) lt!436905)))

(declare-fun b!1323123 () Bool)

(assert (=> b!1323123 (= e!847838 (contains!2374 rules!2550 lt!436877))))

(assert (= (and d!373678 res!594999) b!1323123))

(declare-fun b_lambda!38707 () Bool)

(assert (=> (not b_lambda!38707) (not d!373678)))

(declare-fun m!1479445 () Bool)

(assert (=> d!373678 m!1479445))

(declare-fun m!1479447 () Bool)

(assert (=> d!373678 m!1479447))

(assert (=> d!373678 m!1479439))

(assert (=> b!1323123 m!1479327))

(assert (=> b!1323034 d!373678))

(declare-fun d!373680 () Bool)

(declare-fun lt!436914 () Int)

(declare-fun size!10926 (List!13468) Int)

(assert (=> d!373680 (= lt!436914 (size!10926 (list!5066 lt!436869)))))

(declare-fun size!10927 (Conc!4408) Int)

(assert (=> d!373680 (= lt!436914 (size!10927 (c!217148 lt!436869)))))

(assert (=> d!373680 (= (size!10921 lt!436869) lt!436914)))

(declare-fun bs!331199 () Bool)

(assert (= bs!331199 d!373680))

(assert (=> bs!331199 m!1479283))

(assert (=> bs!331199 m!1479283))

(declare-fun m!1479461 () Bool)

(assert (=> bs!331199 m!1479461))

(declare-fun m!1479463 () Bool)

(assert (=> bs!331199 m!1479463))

(assert (=> b!1323055 d!373680))

(declare-fun d!373686 () Bool)

(declare-fun lt!436920 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1898 (List!13468) (InoxSet C!7556))

(assert (=> d!373686 (= lt!436920 (select (content!1898 (usedCharacters!184 (regex!2319 (rule!4064 t1!34)))) lt!436876))))

(declare-fun e!847855 () Bool)

(assert (=> d!373686 (= lt!436920 e!847855)))

(declare-fun res!595015 () Bool)

(assert (=> d!373686 (=> (not res!595015) (not e!847855))))

(assert (=> d!373686 (= res!595015 ((_ is Cons!13402) (usedCharacters!184 (regex!2319 (rule!4064 t1!34)))))))

(assert (=> d!373686 (= (contains!2373 (usedCharacters!184 (regex!2319 (rule!4064 t1!34))) lt!436876) lt!436920)))

(declare-fun b!1323139 () Bool)

(declare-fun e!847854 () Bool)

(assert (=> b!1323139 (= e!847855 e!847854)))

(declare-fun res!595016 () Bool)

(assert (=> b!1323139 (=> res!595016 e!847854)))

(assert (=> b!1323139 (= res!595016 (= (h!18803 (usedCharacters!184 (regex!2319 (rule!4064 t1!34)))) lt!436876))))

(declare-fun b!1323140 () Bool)

(assert (=> b!1323140 (= e!847854 (contains!2373 (t!118697 (usedCharacters!184 (regex!2319 (rule!4064 t1!34)))) lt!436876))))

(assert (= (and d!373686 res!595015) b!1323139))

(assert (= (and b!1323139 (not res!595016)) b!1323140))

(assert (=> d!373686 m!1479367))

(declare-fun m!1479469 () Bool)

(assert (=> d!373686 m!1479469))

(declare-fun m!1479471 () Bool)

(assert (=> d!373686 m!1479471))

(declare-fun m!1479473 () Bool)

(assert (=> b!1323140 m!1479473))

(assert (=> b!1323055 d!373686))

(declare-fun b!1323185 () Bool)

(declare-fun e!847878 () List!13468)

(declare-fun e!847879 () List!13468)

(assert (=> b!1323185 (= e!847878 e!847879)))

(declare-fun c!217179 () Bool)

(assert (=> b!1323185 (= c!217179 ((_ is Union!3633) (regex!2319 (rule!4064 t1!34))))))

(declare-fun b!1323187 () Bool)

(declare-fun e!847877 () List!13468)

(assert (=> b!1323187 (= e!847877 Nil!13402)))

(declare-fun b!1323188 () Bool)

(declare-fun e!847880 () List!13468)

(assert (=> b!1323188 (= e!847880 (Cons!13402 (c!217149 (regex!2319 (rule!4064 t1!34))) Nil!13402))))

(declare-fun bm!89748 () Bool)

(declare-fun call!89755 () List!13468)

(declare-fun call!89756 () List!13468)

(assert (=> bm!89748 (= call!89755 call!89756)))

(declare-fun b!1323189 () Bool)

(declare-fun call!89753 () List!13468)

(assert (=> b!1323189 (= e!847879 call!89753)))

(declare-fun d!373690 () Bool)

(declare-fun c!217177 () Bool)

(assert (=> d!373690 (= c!217177 (or ((_ is EmptyExpr!3633) (regex!2319 (rule!4064 t1!34))) ((_ is EmptyLang!3633) (regex!2319 (rule!4064 t1!34)))))))

(assert (=> d!373690 (= (usedCharacters!184 (regex!2319 (rule!4064 t1!34))) e!847877)))

(declare-fun b!1323186 () Bool)

(assert (=> b!1323186 (= e!847877 e!847880)))

(declare-fun c!217180 () Bool)

(assert (=> b!1323186 (= c!217180 ((_ is ElementMatch!3633) (regex!2319 (rule!4064 t1!34))))))

(declare-fun bm!89749 () Bool)

(declare-fun c!217178 () Bool)

(assert (=> bm!89749 (= call!89756 (usedCharacters!184 (ite c!217178 (reg!3962 (regex!2319 (rule!4064 t1!34))) (ite c!217179 (regOne!7779 (regex!2319 (rule!4064 t1!34))) (regTwo!7778 (regex!2319 (rule!4064 t1!34)))))))))

(declare-fun bm!89750 () Bool)

(declare-fun call!89754 () List!13468)

(assert (=> bm!89750 (= call!89753 (++!3424 (ite c!217179 call!89755 call!89754) (ite c!217179 call!89754 call!89755)))))

(declare-fun b!1323190 () Bool)

(assert (=> b!1323190 (= c!217178 ((_ is Star!3633) (regex!2319 (rule!4064 t1!34))))))

(assert (=> b!1323190 (= e!847880 e!847878)))

(declare-fun b!1323191 () Bool)

(assert (=> b!1323191 (= e!847879 call!89753)))

(declare-fun b!1323192 () Bool)

(assert (=> b!1323192 (= e!847878 call!89756)))

(declare-fun bm!89751 () Bool)

(assert (=> bm!89751 (= call!89754 (usedCharacters!184 (ite c!217179 (regTwo!7779 (regex!2319 (rule!4064 t1!34))) (regOne!7778 (regex!2319 (rule!4064 t1!34))))))))

(assert (= (and d!373690 c!217177) b!1323187))

(assert (= (and d!373690 (not c!217177)) b!1323186))

(assert (= (and b!1323186 c!217180) b!1323188))

(assert (= (and b!1323186 (not c!217180)) b!1323190))

(assert (= (and b!1323190 c!217178) b!1323192))

(assert (= (and b!1323190 (not c!217178)) b!1323185))

(assert (= (and b!1323185 c!217179) b!1323189))

(assert (= (and b!1323185 (not c!217179)) b!1323191))

(assert (= (or b!1323189 b!1323191) bm!89748))

(assert (= (or b!1323189 b!1323191) bm!89751))

(assert (= (or b!1323189 b!1323191) bm!89750))

(assert (= (or b!1323192 bm!89748) bm!89749))

(declare-fun m!1479505 () Bool)

(assert (=> bm!89749 m!1479505))

(declare-fun m!1479507 () Bool)

(assert (=> bm!89750 m!1479507))

(declare-fun m!1479509 () Bool)

(assert (=> bm!89751 m!1479509))

(assert (=> b!1323055 d!373690))

(declare-fun d!373704 () Bool)

(declare-fun lt!436928 () Bool)

(assert (=> d!373704 (= lt!436928 (select (content!1898 lt!436883) lt!436863))))

(declare-fun e!847882 () Bool)

(assert (=> d!373704 (= lt!436928 e!847882)))

(declare-fun res!595021 () Bool)

(assert (=> d!373704 (=> (not res!595021) (not e!847882))))

(assert (=> d!373704 (= res!595021 ((_ is Cons!13402) lt!436883))))

(assert (=> d!373704 (= (contains!2373 lt!436883 lt!436863) lt!436928)))

(declare-fun b!1323193 () Bool)

(declare-fun e!847881 () Bool)

(assert (=> b!1323193 (= e!847882 e!847881)))

(declare-fun res!595022 () Bool)

(assert (=> b!1323193 (=> res!595022 e!847881)))

(assert (=> b!1323193 (= res!595022 (= (h!18803 lt!436883) lt!436863))))

(declare-fun b!1323194 () Bool)

(assert (=> b!1323194 (= e!847881 (contains!2373 (t!118697 lt!436883) lt!436863))))

(assert (= (and d!373704 res!595021) b!1323193))

(assert (= (and b!1323193 (not res!595022)) b!1323194))

(declare-fun m!1479511 () Bool)

(assert (=> d!373704 m!1479511))

(declare-fun m!1479513 () Bool)

(assert (=> d!373704 m!1479513))

(declare-fun m!1479515 () Bool)

(assert (=> b!1323194 m!1479515))

(assert (=> b!1323014 d!373704))

(declare-fun d!373706 () Bool)

(declare-fun lt!436929 () Bool)

(assert (=> d!373706 (= lt!436929 (select (content!1898 lt!436872) lt!436876))))

(declare-fun e!847886 () Bool)

(assert (=> d!373706 (= lt!436929 e!847886)))

(declare-fun res!595023 () Bool)

(assert (=> d!373706 (=> (not res!595023) (not e!847886))))

(assert (=> d!373706 (= res!595023 ((_ is Cons!13402) lt!436872))))

(assert (=> d!373706 (= (contains!2373 lt!436872 lt!436876) lt!436929)))

(declare-fun b!1323199 () Bool)

(declare-fun e!847885 () Bool)

(assert (=> b!1323199 (= e!847886 e!847885)))

(declare-fun res!595024 () Bool)

(assert (=> b!1323199 (=> res!595024 e!847885)))

(assert (=> b!1323199 (= res!595024 (= (h!18803 lt!436872) lt!436876))))

(declare-fun b!1323200 () Bool)

(assert (=> b!1323200 (= e!847885 (contains!2373 (t!118697 lt!436872) lt!436876))))

(assert (= (and d!373706 res!595023) b!1323199))

(assert (= (and b!1323199 (not res!595024)) b!1323200))

(declare-fun m!1479517 () Bool)

(assert (=> d!373706 m!1479517))

(declare-fun m!1479519 () Bool)

(assert (=> d!373706 m!1479519))

(declare-fun m!1479521 () Bool)

(assert (=> b!1323200 m!1479521))

(assert (=> b!1323057 d!373706))

(declare-fun d!373708 () Bool)

(declare-fun lt!436938 () C!7556)

(declare-fun apply!3085 (List!13468 Int) C!7556)

(assert (=> d!373708 (= lt!436938 (apply!3085 (list!5066 lt!436869) 0))))

(declare-fun apply!3086 (Conc!4408 Int) C!7556)

(assert (=> d!373708 (= lt!436938 (apply!3086 (c!217148 lt!436869) 0))))

(declare-fun e!847896 () Bool)

(assert (=> d!373708 e!847896))

(declare-fun res!595033 () Bool)

(assert (=> d!373708 (=> (not res!595033) (not e!847896))))

(assert (=> d!373708 (= res!595033 (<= 0 0))))

(assert (=> d!373708 (= (apply!3081 lt!436869 0) lt!436938)))

(declare-fun b!1323216 () Bool)

(assert (=> b!1323216 (= e!847896 (< 0 (size!10921 lt!436869)))))

(assert (= (and d!373708 res!595033) b!1323216))

(assert (=> d!373708 m!1479283))

(assert (=> d!373708 m!1479283))

(declare-fun m!1479551 () Bool)

(assert (=> d!373708 m!1479551))

(declare-fun m!1479553 () Bool)

(assert (=> d!373708 m!1479553))

(assert (=> b!1323216 m!1479365))

(assert (=> b!1323057 d!373708))

(declare-fun d!373716 () Bool)

(declare-fun lt!436950 () BalanceConc!8756)

(declare-fun printList!567 (LexerInterface!2014 List!13471) List!13468)

(assert (=> d!373716 (= (list!5066 lt!436950) (printList!567 thiss!19762 (list!5067 (singletonSeq!906 t1!34))))))

(declare-fun printTailRec!549 (LexerInterface!2014 BalanceConc!8758 Int BalanceConc!8756) BalanceConc!8756)

(assert (=> d!373716 (= lt!436950 (printTailRec!549 thiss!19762 (singletonSeq!906 t1!34) 0 (BalanceConc!8757 Empty!4408)))))

(assert (=> d!373716 (= (print!788 thiss!19762 (singletonSeq!906 t1!34)) lt!436950)))

(declare-fun bs!331211 () Bool)

(assert (= bs!331211 d!373716))

(declare-fun m!1479569 () Bool)

(assert (=> bs!331211 m!1479569))

(assert (=> bs!331211 m!1479335))

(declare-fun m!1479571 () Bool)

(assert (=> bs!331211 m!1479571))

(assert (=> bs!331211 m!1479571))

(declare-fun m!1479573 () Bool)

(assert (=> bs!331211 m!1479573))

(assert (=> bs!331211 m!1479335))

(declare-fun m!1479575 () Bool)

(assert (=> bs!331211 m!1479575))

(assert (=> b!1323056 d!373716))

(declare-fun b!1323273 () Bool)

(declare-fun lt!436959 () Unit!19476)

(declare-fun Unit!19480 () Unit!19476)

(assert (=> b!1323273 (= lt!436959 Unit!19480)))

(assert (=> b!1323273 false))

(declare-fun e!847933 () Rule!4438)

(declare-fun head!2303 (List!13470) Rule!4438)

(assert (=> b!1323273 (= e!847933 (head!2303 rules!2550))))

(declare-fun b!1323274 () Bool)

(declare-fun e!847931 () Bool)

(assert (=> b!1323274 (= e!847931 (dynLambda!5898 lambda!54238 (h!18805 rules!2550)))))

(declare-fun b!1323275 () Bool)

(assert (=> b!1323275 (= e!847933 (getWitness!233 (t!118699 rules!2550) lambda!54238))))

(declare-fun d!373722 () Bool)

(declare-fun e!847932 () Bool)

(assert (=> d!373722 e!847932))

(declare-fun res!595046 () Bool)

(assert (=> d!373722 (=> (not res!595046) (not e!847932))))

(declare-fun lt!436960 () Rule!4438)

(assert (=> d!373722 (= res!595046 (dynLambda!5898 lambda!54238 lt!436960))))

(declare-fun e!847934 () Rule!4438)

(assert (=> d!373722 (= lt!436960 e!847934)))

(declare-fun c!217206 () Bool)

(assert (=> d!373722 (= c!217206 e!847931)))

(declare-fun res!595047 () Bool)

(assert (=> d!373722 (=> (not res!595047) (not e!847931))))

(assert (=> d!373722 (= res!595047 ((_ is Cons!13404) rules!2550))))

(assert (=> d!373722 (exists!340 rules!2550 lambda!54238)))

(assert (=> d!373722 (= (getWitness!233 rules!2550 lambda!54238) lt!436960)))

(declare-fun b!1323276 () Bool)

(assert (=> b!1323276 (= e!847932 (contains!2374 rules!2550 lt!436960))))

(declare-fun b!1323277 () Bool)

(assert (=> b!1323277 (= e!847934 e!847933)))

(declare-fun c!217207 () Bool)

(assert (=> b!1323277 (= c!217207 ((_ is Cons!13404) rules!2550))))

(declare-fun b!1323278 () Bool)

(assert (=> b!1323278 (= e!847934 (h!18805 rules!2550))))

(assert (= (and d!373722 res!595047) b!1323274))

(assert (= (and d!373722 c!217206) b!1323278))

(assert (= (and d!373722 (not c!217206)) b!1323277))

(assert (= (and b!1323277 c!217207) b!1323275))

(assert (= (and b!1323277 (not c!217207)) b!1323273))

(assert (= (and d!373722 res!595046) b!1323276))

(declare-fun b_lambda!38711 () Bool)

(assert (=> (not b_lambda!38711) (not b!1323274)))

(declare-fun b_lambda!38713 () Bool)

(assert (=> (not b_lambda!38713) (not d!373722)))

(declare-fun m!1479597 () Bool)

(assert (=> b!1323275 m!1479597))

(declare-fun m!1479599 () Bool)

(assert (=> b!1323273 m!1479599))

(declare-fun m!1479601 () Bool)

(assert (=> b!1323276 m!1479601))

(declare-fun m!1479603 () Bool)

(assert (=> d!373722 m!1479603))

(assert (=> d!373722 m!1479361))

(declare-fun m!1479605 () Bool)

(assert (=> b!1323274 m!1479605))

(assert (=> b!1323056 d!373722))

(declare-fun b!1323433 () Bool)

(declare-fun e!848020 () Bool)

(declare-fun lt!437010 () tuple2!13036)

(assert (=> b!1323433 (= e!848020 (= (_2!7404 lt!437010) lt!436871))))

(declare-fun e!848021 () Bool)

(declare-fun b!1323434 () Bool)

(assert (=> b!1323434 (= e!848021 (= (list!5066 (_2!7404 lt!437010)) (_2!7403 (lexList!552 thiss!19762 rules!2550 (list!5066 lt!436871)))))))

(declare-fun d!373732 () Bool)

(assert (=> d!373732 e!848021))

(declare-fun res!595148 () Bool)

(assert (=> d!373732 (=> (not res!595148) (not e!848021))))

(assert (=> d!373732 (= res!595148 e!848020)))

(declare-fun c!217235 () Bool)

(declare-fun size!10928 (BalanceConc!8758) Int)

(assert (=> d!373732 (= c!217235 (> (size!10928 (_1!7404 lt!437010)) 0))))

(declare-fun lexTailRecV2!372 (LexerInterface!2014 List!13470 BalanceConc!8756 BalanceConc!8756 BalanceConc!8756 BalanceConc!8758) tuple2!13036)

(assert (=> d!373732 (= lt!437010 (lexTailRecV2!372 thiss!19762 rules!2550 lt!436871 (BalanceConc!8757 Empty!4408) lt!436871 (BalanceConc!8759 Empty!4409)))))

(assert (=> d!373732 (= (lex!849 thiss!19762 rules!2550 lt!436871) lt!437010)))

(declare-fun b!1323435 () Bool)

(declare-fun res!595147 () Bool)

(assert (=> b!1323435 (=> (not res!595147) (not e!848021))))

(assert (=> b!1323435 (= res!595147 (= (list!5067 (_1!7404 lt!437010)) (_1!7403 (lexList!552 thiss!19762 rules!2550 (list!5066 lt!436871)))))))

(declare-fun b!1323436 () Bool)

(declare-fun e!848019 () Bool)

(declare-fun isEmpty!7980 (BalanceConc!8758) Bool)

(assert (=> b!1323436 (= e!848019 (not (isEmpty!7980 (_1!7404 lt!437010))))))

(declare-fun b!1323437 () Bool)

(assert (=> b!1323437 (= e!848020 e!848019)))

(declare-fun res!595149 () Bool)

(assert (=> b!1323437 (= res!595149 (< (size!10921 (_2!7404 lt!437010)) (size!10921 lt!436871)))))

(assert (=> b!1323437 (=> (not res!595149) (not e!848019))))

(assert (= (and d!373732 c!217235) b!1323437))

(assert (= (and d!373732 (not c!217235)) b!1323433))

(assert (= (and b!1323437 res!595149) b!1323436))

(assert (= (and d!373732 res!595148) b!1323435))

(assert (= (and b!1323435 res!595147) b!1323434))

(declare-fun m!1479783 () Bool)

(assert (=> b!1323435 m!1479783))

(assert (=> b!1323435 m!1479357))

(assert (=> b!1323435 m!1479357))

(assert (=> b!1323435 m!1479359))

(declare-fun m!1479785 () Bool)

(assert (=> b!1323437 m!1479785))

(declare-fun m!1479787 () Bool)

(assert (=> b!1323437 m!1479787))

(declare-fun m!1479789 () Bool)

(assert (=> b!1323436 m!1479789))

(declare-fun m!1479791 () Bool)

(assert (=> d!373732 m!1479791))

(declare-fun m!1479793 () Bool)

(assert (=> d!373732 m!1479793))

(declare-fun m!1479795 () Bool)

(assert (=> b!1323434 m!1479795))

(assert (=> b!1323434 m!1479357))

(assert (=> b!1323434 m!1479357))

(assert (=> b!1323434 m!1479359))

(assert (=> b!1323056 d!373732))

(declare-fun d!373768 () Bool)

(declare-fun e!848030 () Bool)

(assert (=> d!373768 e!848030))

(declare-fun res!595156 () Bool)

(assert (=> d!373768 (=> (not res!595156) (not e!848030))))

(declare-fun lt!437016 () BalanceConc!8758)

(assert (=> d!373768 (= res!595156 (= (list!5067 lt!437016) (Cons!13405 t1!34 Nil!13405)))))

(declare-fun singleton!393 (Token!4300) BalanceConc!8758)

(assert (=> d!373768 (= lt!437016 (singleton!393 t1!34))))

(assert (=> d!373768 (= (singletonSeq!906 t1!34) lt!437016)))

(declare-fun b!1323448 () Bool)

(declare-fun isBalanced!1287 (Conc!4409) Bool)

(assert (=> b!1323448 (= e!848030 (isBalanced!1287 (c!217150 lt!437016)))))

(assert (= (and d!373768 res!595156) b!1323448))

(declare-fun m!1479813 () Bool)

(assert (=> d!373768 m!1479813))

(declare-fun m!1479815 () Bool)

(assert (=> d!373768 m!1479815))

(declare-fun m!1479817 () Bool)

(assert (=> b!1323448 m!1479817))

(assert (=> b!1323056 d!373768))

(declare-fun d!373776 () Bool)

(declare-fun list!5069 (Conc!4409) List!13471)

(assert (=> d!373776 (= (list!5067 (_1!7404 lt!436879)) (list!5069 (c!217150 (_1!7404 lt!436879))))))

(declare-fun bs!331215 () Bool)

(assert (= bs!331215 d!373776))

(declare-fun m!1479819 () Bool)

(assert (=> bs!331215 m!1479819))

(assert (=> b!1323056 d!373776))

(declare-fun d!373778 () Bool)

(assert (=> d!373778 (not (matchR!1635 (regex!2319 (rule!4064 t1!34)) lt!436887))))

(declare-fun lt!437019 () Unit!19476)

(declare-fun choose!8102 (Regex!3633 List!13468 C!7556) Unit!19476)

(assert (=> d!373778 (= lt!437019 (choose!8102 (regex!2319 (rule!4064 t1!34)) lt!436887 (head!2302 lt!436887)))))

(assert (=> d!373778 (validRegex!1559 (regex!2319 (rule!4064 t1!34)))))

(assert (=> d!373778 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!130 (regex!2319 (rule!4064 t1!34)) lt!436887 (head!2302 lt!436887)) lt!437019)))

(declare-fun bs!331216 () Bool)

(assert (= bs!331216 d!373778))

(assert (=> bs!331216 m!1479381))

(assert (=> bs!331216 m!1479371))

(declare-fun m!1479825 () Bool)

(assert (=> bs!331216 m!1479825))

(assert (=> bs!331216 m!1479407))

(assert (=> b!1323035 d!373778))

(declare-fun d!373782 () Bool)

(assert (=> d!373782 (= (head!2302 lt!436887) (h!18803 lt!436887))))

(assert (=> b!1323035 d!373782))

(declare-fun d!373784 () Bool)

(declare-fun lt!437020 () Bool)

(assert (=> d!373784 (= lt!437020 (select (content!1898 lt!436872) lt!436863))))

(declare-fun e!848035 () Bool)

(assert (=> d!373784 (= lt!437020 e!848035)))

(declare-fun res!595160 () Bool)

(assert (=> d!373784 (=> (not res!595160) (not e!848035))))

(assert (=> d!373784 (= res!595160 ((_ is Cons!13402) lt!436872))))

(assert (=> d!373784 (= (contains!2373 lt!436872 lt!436863) lt!437020)))

(declare-fun b!1323454 () Bool)

(declare-fun e!848034 () Bool)

(assert (=> b!1323454 (= e!848035 e!848034)))

(declare-fun res!595161 () Bool)

(assert (=> b!1323454 (=> res!595161 e!848034)))

(assert (=> b!1323454 (= res!595161 (= (h!18803 lt!436872) lt!436863))))

(declare-fun b!1323455 () Bool)

(assert (=> b!1323455 (= e!848034 (contains!2373 (t!118697 lt!436872) lt!436863))))

(assert (= (and d!373784 res!595160) b!1323454))

(assert (= (and b!1323454 (not res!595161)) b!1323455))

(assert (=> d!373784 m!1479517))

(declare-fun m!1479829 () Bool)

(assert (=> d!373784 m!1479829))

(declare-fun m!1479831 () Bool)

(assert (=> b!1323455 m!1479831))

(assert (=> b!1323036 d!373784))

(declare-fun d!373788 () Bool)

(assert (=> d!373788 (= (inv!17774 (tag!2581 (h!18805 rules!2550))) (= (mod (str.len (value!75723 (tag!2581 (h!18805 rules!2550)))) 2) 0))))

(assert (=> b!1323038 d!373788))

(declare-fun d!373792 () Bool)

(declare-fun res!595164 () Bool)

(declare-fun e!848038 () Bool)

(assert (=> d!373792 (=> (not res!595164) (not e!848038))))

(declare-fun semiInverseModEq!875 (Int Int) Bool)

(assert (=> d!373792 (= res!595164 (semiInverseModEq!875 (toChars!3409 (transformation!2319 (h!18805 rules!2550))) (toValue!3550 (transformation!2319 (h!18805 rules!2550)))))))

(assert (=> d!373792 (= (inv!17778 (transformation!2319 (h!18805 rules!2550))) e!848038)))

(declare-fun b!1323458 () Bool)

(declare-fun equivClasses!834 (Int Int) Bool)

(assert (=> b!1323458 (= e!848038 (equivClasses!834 (toChars!3409 (transformation!2319 (h!18805 rules!2550))) (toValue!3550 (transformation!2319 (h!18805 rules!2550)))))))

(assert (= (and d!373792 res!595164) b!1323458))

(declare-fun m!1479835 () Bool)

(assert (=> d!373792 m!1479835))

(declare-fun m!1479837 () Bool)

(assert (=> b!1323458 m!1479837))

(assert (=> b!1323038 d!373792))

(declare-fun d!373794 () Bool)

(declare-fun c!217241 () Bool)

(assert (=> d!373794 (= c!217241 (isEmpty!7979 lt!436872))))

(declare-fun e!848043 () Bool)

(assert (=> d!373794 (= (prefixMatch!146 lt!436875 lt!436872) e!848043)))

(declare-fun b!1323465 () Bool)

(declare-fun lostCause!283 (Regex!3633) Bool)

(assert (=> b!1323465 (= e!848043 (not (lostCause!283 lt!436875)))))

(declare-fun b!1323466 () Bool)

(assert (=> b!1323466 (= e!848043 (prefixMatch!146 (derivativeStep!907 lt!436875 (head!2302 lt!436872)) (tail!1900 lt!436872)))))

(assert (= (and d!373794 c!217241) b!1323465))

(assert (= (and d!373794 (not c!217241)) b!1323466))

(declare-fun m!1479845 () Bool)

(assert (=> d!373794 m!1479845))

(declare-fun m!1479847 () Bool)

(assert (=> b!1323465 m!1479847))

(declare-fun m!1479849 () Bool)

(assert (=> b!1323466 m!1479849))

(assert (=> b!1323466 m!1479849))

(declare-fun m!1479851 () Bool)

(assert (=> b!1323466 m!1479851))

(declare-fun m!1479853 () Bool)

(assert (=> b!1323466 m!1479853))

(assert (=> b!1323466 m!1479851))

(assert (=> b!1323466 m!1479853))

(declare-fun m!1479855 () Bool)

(assert (=> b!1323466 m!1479855))

(assert (=> b!1323017 d!373794))

(declare-fun d!373798 () Bool)

(declare-fun lt!437024 () C!7556)

(assert (=> d!373798 (= lt!437024 (apply!3085 (list!5066 lt!436867) 0))))

(assert (=> d!373798 (= lt!437024 (apply!3086 (c!217148 lt!436867) 0))))

(declare-fun e!848044 () Bool)

(assert (=> d!373798 e!848044))

(declare-fun res!595167 () Bool)

(assert (=> d!373798 (=> (not res!595167) (not e!848044))))

(assert (=> d!373798 (= res!595167 (<= 0 0))))

(assert (=> d!373798 (= (apply!3081 lt!436867 0) lt!437024)))

(declare-fun b!1323467 () Bool)

(assert (=> b!1323467 (= e!848044 (< 0 (size!10921 lt!436867)))))

(assert (= (and d!373798 res!595167) b!1323467))

(assert (=> d!373798 m!1479391))

(assert (=> d!373798 m!1479391))

(declare-fun m!1479857 () Bool)

(assert (=> d!373798 m!1479857))

(declare-fun m!1479859 () Bool)

(assert (=> d!373798 m!1479859))

(assert (=> b!1323467 m!1479257))

(assert (=> b!1323017 d!373798))

(declare-fun d!373800 () Bool)

(declare-fun list!5070 (Conc!4408) List!13468)

(assert (=> d!373800 (= (list!5066 lt!436869) (list!5070 (c!217148 lt!436869)))))

(declare-fun bs!331226 () Bool)

(assert (= bs!331226 d!373800))

(declare-fun m!1479861 () Bool)

(assert (=> bs!331226 m!1479861))

(assert (=> b!1323017 d!373800))

(declare-fun bs!331227 () Bool)

(declare-fun d!373802 () Bool)

(assert (= bs!331227 (and d!373802 b!1323042)))

(declare-fun lambda!54264 () Int)

(assert (=> bs!331227 (= lambda!54264 lambda!54236)))

(declare-fun lt!437027 () Unit!19476)

(declare-fun lemma!77 (List!13470 LexerInterface!2014 List!13470) Unit!19476)

(assert (=> d!373802 (= lt!437027 (lemma!77 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!85 (List!13472) Regex!3633)

(assert (=> d!373802 (= (rulesRegex!204 thiss!19762 rules!2550) (generalisedUnion!85 (map!2945 rules!2550 lambda!54264)))))

(declare-fun bs!331228 () Bool)

(assert (= bs!331228 d!373802))

(declare-fun m!1479863 () Bool)

(assert (=> bs!331228 m!1479863))

(declare-fun m!1479865 () Bool)

(assert (=> bs!331228 m!1479865))

(assert (=> bs!331228 m!1479865))

(declare-fun m!1479867 () Bool)

(assert (=> bs!331228 m!1479867))

(assert (=> b!1323017 d!373802))

(declare-fun d!373804 () Bool)

(declare-fun lt!437030 () BalanceConc!8756)

(assert (=> d!373804 (= (list!5066 lt!437030) (originalCharacters!3181 t1!34))))

(declare-fun dynLambda!5900 (Int TokenValue!2409) BalanceConc!8756)

(assert (=> d!373804 (= lt!437030 (dynLambda!5900 (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (value!75724 t1!34)))))

(assert (=> d!373804 (= (charsOf!1291 t1!34) lt!437030)))

(declare-fun b_lambda!38731 () Bool)

(assert (=> (not b_lambda!38731) (not d!373804)))

(declare-fun t!118717 () Bool)

(declare-fun tb!70189 () Bool)

(assert (=> (and b!1323028 (= (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (toChars!3409 (transformation!2319 (rule!4064 t1!34)))) t!118717) tb!70189))

(declare-fun b!1323472 () Bool)

(declare-fun e!848047 () Bool)

(declare-fun tp!383943 () Bool)

(declare-fun inv!17781 (Conc!4408) Bool)

(assert (=> b!1323472 (= e!848047 (and (inv!17781 (c!217148 (dynLambda!5900 (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (value!75724 t1!34)))) tp!383943))))

(declare-fun result!85188 () Bool)

(declare-fun inv!17782 (BalanceConc!8756) Bool)

(assert (=> tb!70189 (= result!85188 (and (inv!17782 (dynLambda!5900 (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (value!75724 t1!34))) e!848047))))

(assert (= tb!70189 b!1323472))

(declare-fun m!1479869 () Bool)

(assert (=> b!1323472 m!1479869))

(declare-fun m!1479871 () Bool)

(assert (=> tb!70189 m!1479871))

(assert (=> d!373804 t!118717))

(declare-fun b_and!88389 () Bool)

(assert (= b_and!88361 (and (=> t!118717 result!85188) b_and!88389)))

(declare-fun t!118719 () Bool)

(declare-fun tb!70191 () Bool)

(assert (=> (and b!1323053 (= (toChars!3409 (transformation!2319 (h!18805 rules!2550))) (toChars!3409 (transformation!2319 (rule!4064 t1!34)))) t!118719) tb!70191))

(declare-fun result!85192 () Bool)

(assert (= result!85192 result!85188))

(assert (=> d!373804 t!118719))

(declare-fun b_and!88391 () Bool)

(assert (= b_and!88365 (and (=> t!118719 result!85192) b_and!88391)))

(declare-fun t!118721 () Bool)

(declare-fun tb!70193 () Bool)

(assert (=> (and b!1323037 (= (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (toChars!3409 (transformation!2319 (rule!4064 t1!34)))) t!118721) tb!70193))

(declare-fun result!85194 () Bool)

(assert (= result!85194 result!85188))

(assert (=> d!373804 t!118721))

(declare-fun b_and!88393 () Bool)

(assert (= b_and!88369 (and (=> t!118721 result!85194) b_and!88393)))

(declare-fun m!1479873 () Bool)

(assert (=> d!373804 m!1479873))

(declare-fun m!1479875 () Bool)

(assert (=> d!373804 m!1479875))

(assert (=> b!1323017 d!373804))

(declare-fun b!1323483 () Bool)

(declare-fun res!595172 () Bool)

(declare-fun e!848053 () Bool)

(assert (=> b!1323483 (=> (not res!595172) (not e!848053))))

(declare-fun lt!437036 () List!13468)

(assert (=> b!1323483 (= res!595172 (= (size!10926 lt!437036) (+ (size!10926 lt!436887) (size!10926 (Cons!13402 lt!436863 Nil!13402)))))))

(declare-fun d!373806 () Bool)

(assert (=> d!373806 e!848053))

(declare-fun res!595173 () Bool)

(assert (=> d!373806 (=> (not res!595173) (not e!848053))))

(assert (=> d!373806 (= res!595173 (= (content!1898 lt!437036) ((_ map or) (content!1898 lt!436887) (content!1898 (Cons!13402 lt!436863 Nil!13402)))))))

(declare-fun e!848052 () List!13468)

(assert (=> d!373806 (= lt!437036 e!848052)))

(declare-fun c!217244 () Bool)

(assert (=> d!373806 (= c!217244 ((_ is Nil!13402) lt!436887))))

(assert (=> d!373806 (= (++!3424 lt!436887 (Cons!13402 lt!436863 Nil!13402)) lt!437036)))

(declare-fun b!1323484 () Bool)

(assert (=> b!1323484 (= e!848053 (or (not (= (Cons!13402 lt!436863 Nil!13402) Nil!13402)) (= lt!437036 lt!436887)))))

(declare-fun b!1323482 () Bool)

(assert (=> b!1323482 (= e!848052 (Cons!13402 (h!18803 lt!436887) (++!3424 (t!118697 lt!436887) (Cons!13402 lt!436863 Nil!13402))))))

(declare-fun b!1323481 () Bool)

(assert (=> b!1323481 (= e!848052 (Cons!13402 lt!436863 Nil!13402))))

(assert (= (and d!373806 c!217244) b!1323481))

(assert (= (and d!373806 (not c!217244)) b!1323482))

(assert (= (and d!373806 res!595173) b!1323483))

(assert (= (and b!1323483 res!595172) b!1323484))

(declare-fun m!1479885 () Bool)

(assert (=> b!1323483 m!1479885))

(declare-fun m!1479887 () Bool)

(assert (=> b!1323483 m!1479887))

(declare-fun m!1479889 () Bool)

(assert (=> b!1323483 m!1479889))

(declare-fun m!1479891 () Bool)

(assert (=> d!373806 m!1479891))

(declare-fun m!1479893 () Bool)

(assert (=> d!373806 m!1479893))

(declare-fun m!1479895 () Bool)

(assert (=> d!373806 m!1479895))

(declare-fun m!1479897 () Bool)

(assert (=> b!1323482 m!1479897))

(assert (=> b!1323017 d!373806))

(declare-fun d!373812 () Bool)

(declare-fun res!595178 () Bool)

(declare-fun e!848058 () Bool)

(assert (=> d!373812 (=> res!595178 e!848058)))

(assert (=> d!373812 (= res!595178 (not ((_ is Cons!13404) rules!2550)))))

(assert (=> d!373812 (= (sepAndNonSepRulesDisjointChars!692 rules!2550 rules!2550) e!848058)))

(declare-fun b!1323489 () Bool)

(declare-fun e!848059 () Bool)

(assert (=> b!1323489 (= e!848058 e!848059)))

(declare-fun res!595179 () Bool)

(assert (=> b!1323489 (=> (not res!595179) (not e!848059))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!319 (Rule!4438 List!13470) Bool)

(assert (=> b!1323489 (= res!595179 (ruleDisjointCharsFromAllFromOtherType!319 (h!18805 rules!2550) rules!2550))))

(declare-fun b!1323490 () Bool)

(assert (=> b!1323490 (= e!848059 (sepAndNonSepRulesDisjointChars!692 rules!2550 (t!118699 rules!2550)))))

(assert (= (and d!373812 (not res!595178)) b!1323489))

(assert (= (and b!1323489 res!595179) b!1323490))

(declare-fun m!1479899 () Bool)

(assert (=> b!1323489 m!1479899))

(declare-fun m!1479901 () Bool)

(assert (=> b!1323490 m!1479901))

(assert (=> b!1323016 d!373812))

(declare-fun d!373814 () Bool)

(assert (=> d!373814 (= (inv!17774 (tag!2581 (rule!4064 t2!34))) (= (mod (str.len (value!75723 (tag!2581 (rule!4064 t2!34)))) 2) 0))))

(assert (=> b!1323050 d!373814))

(declare-fun d!373816 () Bool)

(declare-fun res!595180 () Bool)

(declare-fun e!848060 () Bool)

(assert (=> d!373816 (=> (not res!595180) (not e!848060))))

(assert (=> d!373816 (= res!595180 (semiInverseModEq!875 (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (toValue!3550 (transformation!2319 (rule!4064 t2!34)))))))

(assert (=> d!373816 (= (inv!17778 (transformation!2319 (rule!4064 t2!34))) e!848060)))

(declare-fun b!1323491 () Bool)

(assert (=> b!1323491 (= e!848060 (equivClasses!834 (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (toValue!3550 (transformation!2319 (rule!4064 t2!34)))))))

(assert (= (and d!373816 res!595180) b!1323491))

(declare-fun m!1479903 () Bool)

(assert (=> d!373816 m!1479903))

(declare-fun m!1479905 () Bool)

(assert (=> b!1323491 m!1479905))

(assert (=> b!1323050 d!373816))

(declare-fun d!373818 () Bool)

(declare-fun lt!437037 () Int)

(assert (=> d!373818 (= lt!437037 (size!10926 (list!5066 lt!436867)))))

(assert (=> d!373818 (= lt!437037 (size!10927 (c!217148 lt!436867)))))

(assert (=> d!373818 (= (size!10921 lt!436867) lt!437037)))

(declare-fun bs!331231 () Bool)

(assert (= bs!331231 d!373818))

(assert (=> bs!331231 m!1479391))

(assert (=> bs!331231 m!1479391))

(declare-fun m!1479907 () Bool)

(assert (=> bs!331231 m!1479907))

(declare-fun m!1479909 () Bool)

(assert (=> bs!331231 m!1479909))

(assert (=> b!1323029 d!373818))

(declare-fun d!373820 () Bool)

(declare-fun lt!437038 () BalanceConc!8756)

(assert (=> d!373820 (= (list!5066 lt!437038) (originalCharacters!3181 t2!34))))

(assert (=> d!373820 (= lt!437038 (dynLambda!5900 (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (value!75724 t2!34)))))

(assert (=> d!373820 (= (charsOf!1291 t2!34) lt!437038)))

(declare-fun b_lambda!38733 () Bool)

(assert (=> (not b_lambda!38733) (not d!373820)))

(declare-fun t!118723 () Bool)

(declare-fun tb!70195 () Bool)

(assert (=> (and b!1323028 (= (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (toChars!3409 (transformation!2319 (rule!4064 t2!34)))) t!118723) tb!70195))

(declare-fun b!1323492 () Bool)

(declare-fun e!848061 () Bool)

(declare-fun tp!383944 () Bool)

(assert (=> b!1323492 (= e!848061 (and (inv!17781 (c!217148 (dynLambda!5900 (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (value!75724 t2!34)))) tp!383944))))

(declare-fun result!85196 () Bool)

(assert (=> tb!70195 (= result!85196 (and (inv!17782 (dynLambda!5900 (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (value!75724 t2!34))) e!848061))))

(assert (= tb!70195 b!1323492))

(declare-fun m!1479911 () Bool)

(assert (=> b!1323492 m!1479911))

(declare-fun m!1479913 () Bool)

(assert (=> tb!70195 m!1479913))

(assert (=> d!373820 t!118723))

(declare-fun b_and!88395 () Bool)

(assert (= b_and!88389 (and (=> t!118723 result!85196) b_and!88395)))

(declare-fun tb!70197 () Bool)

(declare-fun t!118725 () Bool)

(assert (=> (and b!1323053 (= (toChars!3409 (transformation!2319 (h!18805 rules!2550))) (toChars!3409 (transformation!2319 (rule!4064 t2!34)))) t!118725) tb!70197))

(declare-fun result!85198 () Bool)

(assert (= result!85198 result!85196))

(assert (=> d!373820 t!118725))

(declare-fun b_and!88397 () Bool)

(assert (= b_and!88391 (and (=> t!118725 result!85198) b_and!88397)))

(declare-fun tb!70199 () Bool)

(declare-fun t!118727 () Bool)

(assert (=> (and b!1323037 (= (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (toChars!3409 (transformation!2319 (rule!4064 t2!34)))) t!118727) tb!70199))

(declare-fun result!85200 () Bool)

(assert (= result!85200 result!85196))

(assert (=> d!373820 t!118727))

(declare-fun b_and!88399 () Bool)

(assert (= b_and!88393 (and (=> t!118727 result!85200) b_and!88399)))

(declare-fun m!1479915 () Bool)

(assert (=> d!373820 m!1479915))

(declare-fun m!1479917 () Bool)

(assert (=> d!373820 m!1479917))

(assert (=> b!1323029 d!373820))

(declare-fun d!373822 () Bool)

(declare-fun lt!437041 () Bool)

(declare-fun content!1900 (List!13470) (InoxSet Rule!4438))

(assert (=> d!373822 (= lt!437041 (select (content!1900 rules!2550) lt!436877))))

(declare-fun e!848067 () Bool)

(assert (=> d!373822 (= lt!437041 e!848067)))

(declare-fun res!595185 () Bool)

(assert (=> d!373822 (=> (not res!595185) (not e!848067))))

(assert (=> d!373822 (= res!595185 ((_ is Cons!13404) rules!2550))))

(assert (=> d!373822 (= (contains!2374 rules!2550 lt!436877) lt!437041)))

(declare-fun b!1323497 () Bool)

(declare-fun e!848066 () Bool)

(assert (=> b!1323497 (= e!848067 e!848066)))

(declare-fun res!595186 () Bool)

(assert (=> b!1323497 (=> res!595186 e!848066)))

(assert (=> b!1323497 (= res!595186 (= (h!18805 rules!2550) lt!436877))))

(declare-fun b!1323498 () Bool)

(assert (=> b!1323498 (= e!848066 (contains!2374 (t!118699 rules!2550) lt!436877))))

(assert (= (and d!373822 res!595185) b!1323497))

(assert (= (and b!1323497 (not res!595186)) b!1323498))

(declare-fun m!1479919 () Bool)

(assert (=> d!373822 m!1479919))

(declare-fun m!1479921 () Bool)

(assert (=> d!373822 m!1479921))

(declare-fun m!1479923 () Bool)

(assert (=> b!1323498 m!1479923))

(assert (=> b!1323030 d!373822))

(declare-fun b!1323499 () Bool)

(declare-fun e!848068 () Bool)

(declare-fun e!848071 () Bool)

(assert (=> b!1323499 (= e!848068 e!848071)))

(declare-fun res!595188 () Bool)

(assert (=> b!1323499 (=> res!595188 e!848071)))

(declare-fun call!89777 () Bool)

(assert (=> b!1323499 (= res!595188 call!89777)))

(declare-fun b!1323500 () Bool)

(declare-fun res!595187 () Bool)

(declare-fun e!848073 () Bool)

(assert (=> b!1323500 (=> res!595187 e!848073)))

(assert (=> b!1323500 (= res!595187 (not ((_ is ElementMatch!3633) lt!436875)))))

(declare-fun e!848072 () Bool)

(assert (=> b!1323500 (= e!848072 e!848073)))

(declare-fun b!1323501 () Bool)

(declare-fun e!848069 () Bool)

(assert (=> b!1323501 (= e!848069 (matchR!1635 (derivativeStep!907 lt!436875 (head!2302 lt!436883)) (tail!1900 lt!436883)))))

(declare-fun b!1323502 () Bool)

(declare-fun res!595191 () Bool)

(declare-fun e!848070 () Bool)

(assert (=> b!1323502 (=> (not res!595191) (not e!848070))))

(assert (=> b!1323502 (= res!595191 (isEmpty!7979 (tail!1900 lt!436883)))))

(declare-fun b!1323503 () Bool)

(declare-fun res!595190 () Bool)

(assert (=> b!1323503 (=> res!595190 e!848073)))

(assert (=> b!1323503 (= res!595190 e!848070)))

(declare-fun res!595193 () Bool)

(assert (=> b!1323503 (=> (not res!595193) (not e!848070))))

(declare-fun lt!437042 () Bool)

(assert (=> b!1323503 (= res!595193 lt!437042)))

(declare-fun b!1323504 () Bool)

(declare-fun res!595189 () Bool)

(assert (=> b!1323504 (=> (not res!595189) (not e!848070))))

(assert (=> b!1323504 (= res!595189 (not call!89777))))

(declare-fun b!1323505 () Bool)

(assert (=> b!1323505 (= e!848071 (not (= (head!2302 lt!436883) (c!217149 lt!436875))))))

(declare-fun b!1323506 () Bool)

(assert (=> b!1323506 (= e!848069 (nullable!1154 lt!436875))))

(declare-fun bm!89772 () Bool)

(assert (=> bm!89772 (= call!89777 (isEmpty!7979 lt!436883))))

(declare-fun b!1323507 () Bool)

(declare-fun e!848074 () Bool)

(assert (=> b!1323507 (= e!848074 e!848072)))

(declare-fun c!217246 () Bool)

(assert (=> b!1323507 (= c!217246 ((_ is EmptyLang!3633) lt!436875))))

(declare-fun b!1323508 () Bool)

(assert (=> b!1323508 (= e!848070 (= (head!2302 lt!436883) (c!217149 lt!436875)))))

(declare-fun d!373824 () Bool)

(assert (=> d!373824 e!848074))

(declare-fun c!217247 () Bool)

(assert (=> d!373824 (= c!217247 ((_ is EmptyExpr!3633) lt!436875))))

(assert (=> d!373824 (= lt!437042 e!848069)))

(declare-fun c!217245 () Bool)

(assert (=> d!373824 (= c!217245 (isEmpty!7979 lt!436883))))

(assert (=> d!373824 (validRegex!1559 lt!436875)))

(assert (=> d!373824 (= (matchR!1635 lt!436875 lt!436883) lt!437042)))

(declare-fun b!1323509 () Bool)

(assert (=> b!1323509 (= e!848072 (not lt!437042))))

(declare-fun b!1323510 () Bool)

(assert (=> b!1323510 (= e!848073 e!848068)))

(declare-fun res!595192 () Bool)

(assert (=> b!1323510 (=> (not res!595192) (not e!848068))))

(assert (=> b!1323510 (= res!595192 (not lt!437042))))

(declare-fun b!1323511 () Bool)

(declare-fun res!595194 () Bool)

(assert (=> b!1323511 (=> res!595194 e!848071)))

(assert (=> b!1323511 (= res!595194 (not (isEmpty!7979 (tail!1900 lt!436883))))))

(declare-fun b!1323512 () Bool)

(assert (=> b!1323512 (= e!848074 (= lt!437042 call!89777))))

(assert (= (and d!373824 c!217245) b!1323506))

(assert (= (and d!373824 (not c!217245)) b!1323501))

(assert (= (and d!373824 c!217247) b!1323512))

(assert (= (and d!373824 (not c!217247)) b!1323507))

(assert (= (and b!1323507 c!217246) b!1323509))

(assert (= (and b!1323507 (not c!217246)) b!1323500))

(assert (= (and b!1323500 (not res!595187)) b!1323503))

(assert (= (and b!1323503 res!595193) b!1323504))

(assert (= (and b!1323504 res!595189) b!1323502))

(assert (= (and b!1323502 res!595191) b!1323508))

(assert (= (and b!1323503 (not res!595190)) b!1323510))

(assert (= (and b!1323510 res!595192) b!1323499))

(assert (= (and b!1323499 (not res!595188)) b!1323511))

(assert (= (and b!1323511 (not res!595194)) b!1323505))

(assert (= (or b!1323512 b!1323499 b!1323504) bm!89772))

(declare-fun m!1479925 () Bool)

(assert (=> d!373824 m!1479925))

(declare-fun m!1479927 () Bool)

(assert (=> d!373824 m!1479927))

(declare-fun m!1479929 () Bool)

(assert (=> b!1323508 m!1479929))

(declare-fun m!1479931 () Bool)

(assert (=> b!1323511 m!1479931))

(assert (=> b!1323511 m!1479931))

(declare-fun m!1479933 () Bool)

(assert (=> b!1323511 m!1479933))

(assert (=> b!1323505 m!1479929))

(declare-fun m!1479935 () Bool)

(assert (=> b!1323506 m!1479935))

(assert (=> b!1323502 m!1479931))

(assert (=> b!1323502 m!1479931))

(assert (=> b!1323502 m!1479933))

(assert (=> bm!89772 m!1479925))

(assert (=> b!1323501 m!1479929))

(assert (=> b!1323501 m!1479929))

(declare-fun m!1479937 () Bool)

(assert (=> b!1323501 m!1479937))

(assert (=> b!1323501 m!1479931))

(assert (=> b!1323501 m!1479937))

(assert (=> b!1323501 m!1479931))

(declare-fun m!1479939 () Bool)

(assert (=> b!1323501 m!1479939))

(assert (=> b!1323052 d!373824))

(declare-fun d!373826 () Bool)

(declare-fun res!595197 () Bool)

(declare-fun e!848077 () Bool)

(assert (=> d!373826 (=> (not res!595197) (not e!848077))))

(declare-fun rulesValid!845 (LexerInterface!2014 List!13470) Bool)

(assert (=> d!373826 (= res!595197 (rulesValid!845 thiss!19762 rules!2550))))

(assert (=> d!373826 (= (rulesInvariant!1884 thiss!19762 rules!2550) e!848077)))

(declare-fun b!1323515 () Bool)

(declare-datatypes ((List!13474 0))(
  ( (Nil!13408) (Cons!13408 (h!18809 String!16281) (t!118739 List!13474)) )
))
(declare-fun noDuplicateTag!845 (LexerInterface!2014 List!13470 List!13474) Bool)

(assert (=> b!1323515 (= e!848077 (noDuplicateTag!845 thiss!19762 rules!2550 Nil!13408))))

(assert (= (and d!373826 res!595197) b!1323515))

(declare-fun m!1479941 () Bool)

(assert (=> d!373826 m!1479941))

(declare-fun m!1479943 () Bool)

(assert (=> b!1323515 m!1479943))

(assert (=> b!1323031 d!373826))

(declare-fun d!373828 () Bool)

(declare-fun prefixMatchZipperSequence!187 (Regex!3633 BalanceConc!8756) Bool)

(declare-fun ++!3425 (BalanceConc!8756 BalanceConc!8756) BalanceConc!8756)

(declare-fun singletonSeq!907 (C!7556) BalanceConc!8756)

(assert (=> d!373828 (= (separableTokensPredicate!297 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!187 (rulesRegex!204 thiss!19762 rules!2550) (++!3425 (charsOf!1291 t1!34) (singletonSeq!907 (apply!3081 (charsOf!1291 t2!34) 0))))))))

(declare-fun bs!331232 () Bool)

(assert (= bs!331232 d!373828))

(assert (=> bs!331232 m!1479259))

(declare-fun m!1479945 () Bool)

(assert (=> bs!331232 m!1479945))

(declare-fun m!1479947 () Bool)

(assert (=> bs!331232 m!1479947))

(assert (=> bs!331232 m!1479279))

(assert (=> bs!331232 m!1479259))

(assert (=> bs!331232 m!1479945))

(assert (=> bs!331232 m!1479279))

(assert (=> bs!331232 m!1479947))

(declare-fun m!1479949 () Bool)

(assert (=> bs!331232 m!1479949))

(assert (=> bs!331232 m!1479285))

(assert (=> bs!331232 m!1479949))

(declare-fun m!1479951 () Bool)

(assert (=> bs!331232 m!1479951))

(assert (=> bs!331232 m!1479285))

(assert (=> b!1323054 d!373828))

(declare-fun d!373830 () Bool)

(assert (=> d!373830 (= (isEmpty!7974 rules!2550) ((_ is Nil!13404) rules!2550))))

(assert (=> b!1323033 d!373830))

(declare-fun d!373832 () Bool)

(declare-fun choose!8104 (Int) Bool)

(assert (=> d!373832 (= (Exists!791 lambda!54235) (choose!8104 lambda!54235))))

(declare-fun bs!331233 () Bool)

(assert (= bs!331233 d!373832))

(declare-fun m!1479953 () Bool)

(assert (=> bs!331233 m!1479953))

(assert (=> b!1323032 d!373832))

(declare-fun bs!331234 () Bool)

(declare-fun d!373834 () Bool)

(assert (= bs!331234 (and d!373834 b!1323032)))

(declare-fun lambda!54267 () Int)

(assert (=> bs!331234 (= lambda!54267 lambda!54235)))

(assert (=> d!373834 true))

(assert (=> d!373834 true))

(assert (=> d!373834 (Exists!791 lambda!54267)))

(declare-fun lt!437045 () Unit!19476)

(declare-fun choose!8105 (Regex!3633 List!13468) Unit!19476)

(assert (=> d!373834 (= lt!437045 (choose!8105 lt!436875 lt!436872))))

(assert (=> d!373834 (validRegex!1559 lt!436875)))

(assert (=> d!373834 (= (lemmaPrefixMatchThenExistsStringThatMatches!109 lt!436875 lt!436872) lt!437045)))

(declare-fun bs!331235 () Bool)

(assert (= bs!331235 d!373834))

(declare-fun m!1479955 () Bool)

(assert (=> bs!331235 m!1479955))

(declare-fun m!1479957 () Bool)

(assert (=> bs!331235 m!1479957))

(assert (=> bs!331235 m!1479927))

(assert (=> b!1323032 d!373834))

(declare-fun d!373836 () Bool)

(declare-fun lt!437080 () Bool)

(declare-fun e!848140 () Bool)

(assert (=> d!373836 (= lt!437080 e!848140)))

(declare-fun res!595254 () Bool)

(assert (=> d!373836 (=> (not res!595254) (not e!848140))))

(assert (=> d!373836 (= res!595254 (= (list!5067 (_1!7404 (lex!849 thiss!19762 rules!2550 (print!788 thiss!19762 (singletonSeq!906 t1!34))))) (list!5067 (singletonSeq!906 t1!34))))))

(declare-fun e!848141 () Bool)

(assert (=> d!373836 (= lt!437080 e!848141)))

(declare-fun res!595256 () Bool)

(assert (=> d!373836 (=> (not res!595256) (not e!848141))))

(declare-fun lt!437081 () tuple2!13036)

(assert (=> d!373836 (= res!595256 (= (size!10928 (_1!7404 lt!437081)) 1))))

(assert (=> d!373836 (= lt!437081 (lex!849 thiss!19762 rules!2550 (print!788 thiss!19762 (singletonSeq!906 t1!34))))))

(assert (=> d!373836 (not (isEmpty!7974 rules!2550))))

(assert (=> d!373836 (= (rulesProduceIndividualToken!983 thiss!19762 rules!2550 t1!34) lt!437080)))

(declare-fun b!1323606 () Bool)

(declare-fun res!595255 () Bool)

(assert (=> b!1323606 (=> (not res!595255) (not e!848141))))

(declare-fun apply!3088 (BalanceConc!8758 Int) Token!4300)

(assert (=> b!1323606 (= res!595255 (= (apply!3088 (_1!7404 lt!437081) 0) t1!34))))

(declare-fun b!1323607 () Bool)

(assert (=> b!1323607 (= e!848141 (isEmpty!7975 (_2!7404 lt!437081)))))

(declare-fun b!1323608 () Bool)

(assert (=> b!1323608 (= e!848140 (isEmpty!7975 (_2!7404 (lex!849 thiss!19762 rules!2550 (print!788 thiss!19762 (singletonSeq!906 t1!34))))))))

(assert (= (and d!373836 res!595256) b!1323606))

(assert (= (and b!1323606 res!595255) b!1323607))

(assert (= (and d!373836 res!595254) b!1323608))

(declare-fun m!1480103 () Bool)

(assert (=> d!373836 m!1480103))

(assert (=> d!373836 m!1479337))

(declare-fun m!1480105 () Bool)

(assert (=> d!373836 m!1480105))

(assert (=> d!373836 m!1479335))

(assert (=> d!373836 m!1479337))

(declare-fun m!1480107 () Bool)

(assert (=> d!373836 m!1480107))

(assert (=> d!373836 m!1479335))

(assert (=> d!373836 m!1479571))

(assert (=> d!373836 m!1479355))

(assert (=> d!373836 m!1479335))

(declare-fun m!1480109 () Bool)

(assert (=> b!1323606 m!1480109))

(declare-fun m!1480111 () Bool)

(assert (=> b!1323607 m!1480111))

(assert (=> b!1323608 m!1479335))

(assert (=> b!1323608 m!1479335))

(assert (=> b!1323608 m!1479337))

(assert (=> b!1323608 m!1479337))

(assert (=> b!1323608 m!1480105))

(declare-fun m!1480113 () Bool)

(assert (=> b!1323608 m!1480113))

(assert (=> b!1323045 d!373836))

(declare-fun d!373886 () Bool)

(declare-fun lt!437087 () Bool)

(assert (=> d!373886 (= lt!437087 (isEmpty!7979 (list!5066 (_2!7404 lt!436879))))))

(declare-fun isEmpty!7983 (Conc!4408) Bool)

(assert (=> d!373886 (= lt!437087 (isEmpty!7983 (c!217148 (_2!7404 lt!436879))))))

(assert (=> d!373886 (= (isEmpty!7975 (_2!7404 lt!436879)) lt!437087)))

(declare-fun bs!331243 () Bool)

(assert (= bs!331243 d!373886))

(declare-fun m!1480117 () Bool)

(assert (=> bs!331243 m!1480117))

(assert (=> bs!331243 m!1480117))

(declare-fun m!1480119 () Bool)

(assert (=> bs!331243 m!1480119))

(declare-fun m!1480121 () Bool)

(assert (=> bs!331243 m!1480121))

(assert (=> b!1323044 d!373886))

(declare-fun b!1323609 () Bool)

(declare-fun e!848142 () Bool)

(declare-fun e!848145 () Bool)

(assert (=> b!1323609 (= e!848142 e!848145)))

(declare-fun res!595258 () Bool)

(assert (=> b!1323609 (=> res!595258 e!848145)))

(declare-fun call!89779 () Bool)

(assert (=> b!1323609 (= res!595258 call!89779)))

(declare-fun b!1323610 () Bool)

(declare-fun res!595257 () Bool)

(declare-fun e!848147 () Bool)

(assert (=> b!1323610 (=> res!595257 e!848147)))

(assert (=> b!1323610 (= res!595257 (not ((_ is ElementMatch!3633) (regex!2319 (rule!4064 t2!34)))))))

(declare-fun e!848146 () Bool)

(assert (=> b!1323610 (= e!848146 e!848147)))

(declare-fun b!1323611 () Bool)

(declare-fun e!848143 () Bool)

(assert (=> b!1323611 (= e!848143 (matchR!1635 (derivativeStep!907 (regex!2319 (rule!4064 t2!34)) (head!2302 lt!436870)) (tail!1900 lt!436870)))))

(declare-fun b!1323612 () Bool)

(declare-fun res!595261 () Bool)

(declare-fun e!848144 () Bool)

(assert (=> b!1323612 (=> (not res!595261) (not e!848144))))

(assert (=> b!1323612 (= res!595261 (isEmpty!7979 (tail!1900 lt!436870)))))

(declare-fun b!1323613 () Bool)

(declare-fun res!595260 () Bool)

(assert (=> b!1323613 (=> res!595260 e!848147)))

(assert (=> b!1323613 (= res!595260 e!848144)))

(declare-fun res!595263 () Bool)

(assert (=> b!1323613 (=> (not res!595263) (not e!848144))))

(declare-fun lt!437088 () Bool)

(assert (=> b!1323613 (= res!595263 lt!437088)))

(declare-fun b!1323614 () Bool)

(declare-fun res!595259 () Bool)

(assert (=> b!1323614 (=> (not res!595259) (not e!848144))))

(assert (=> b!1323614 (= res!595259 (not call!89779))))

(declare-fun b!1323615 () Bool)

(assert (=> b!1323615 (= e!848145 (not (= (head!2302 lt!436870) (c!217149 (regex!2319 (rule!4064 t2!34))))))))

(declare-fun b!1323616 () Bool)

(assert (=> b!1323616 (= e!848143 (nullable!1154 (regex!2319 (rule!4064 t2!34))))))

(declare-fun bm!89774 () Bool)

(assert (=> bm!89774 (= call!89779 (isEmpty!7979 lt!436870))))

(declare-fun b!1323617 () Bool)

(declare-fun e!848148 () Bool)

(assert (=> b!1323617 (= e!848148 e!848146)))

(declare-fun c!217267 () Bool)

(assert (=> b!1323617 (= c!217267 ((_ is EmptyLang!3633) (regex!2319 (rule!4064 t2!34))))))

(declare-fun b!1323618 () Bool)

(assert (=> b!1323618 (= e!848144 (= (head!2302 lt!436870) (c!217149 (regex!2319 (rule!4064 t2!34)))))))

(declare-fun d!373890 () Bool)

(assert (=> d!373890 e!848148))

(declare-fun c!217268 () Bool)

(assert (=> d!373890 (= c!217268 ((_ is EmptyExpr!3633) (regex!2319 (rule!4064 t2!34))))))

(assert (=> d!373890 (= lt!437088 e!848143)))

(declare-fun c!217266 () Bool)

(assert (=> d!373890 (= c!217266 (isEmpty!7979 lt!436870))))

(assert (=> d!373890 (validRegex!1559 (regex!2319 (rule!4064 t2!34)))))

(assert (=> d!373890 (= (matchR!1635 (regex!2319 (rule!4064 t2!34)) lt!436870) lt!437088)))

(declare-fun b!1323619 () Bool)

(assert (=> b!1323619 (= e!848146 (not lt!437088))))

(declare-fun b!1323620 () Bool)

(assert (=> b!1323620 (= e!848147 e!848142)))

(declare-fun res!595262 () Bool)

(assert (=> b!1323620 (=> (not res!595262) (not e!848142))))

(assert (=> b!1323620 (= res!595262 (not lt!437088))))

(declare-fun b!1323621 () Bool)

(declare-fun res!595264 () Bool)

(assert (=> b!1323621 (=> res!595264 e!848145)))

(assert (=> b!1323621 (= res!595264 (not (isEmpty!7979 (tail!1900 lt!436870))))))

(declare-fun b!1323622 () Bool)

(assert (=> b!1323622 (= e!848148 (= lt!437088 call!89779))))

(assert (= (and d!373890 c!217266) b!1323616))

(assert (= (and d!373890 (not c!217266)) b!1323611))

(assert (= (and d!373890 c!217268) b!1323622))

(assert (= (and d!373890 (not c!217268)) b!1323617))

(assert (= (and b!1323617 c!217267) b!1323619))

(assert (= (and b!1323617 (not c!217267)) b!1323610))

(assert (= (and b!1323610 (not res!595257)) b!1323613))

(assert (= (and b!1323613 res!595263) b!1323614))

(assert (= (and b!1323614 res!595259) b!1323612))

(assert (= (and b!1323612 res!595261) b!1323618))

(assert (= (and b!1323613 (not res!595260)) b!1323620))

(assert (= (and b!1323620 res!595262) b!1323609))

(assert (= (and b!1323609 (not res!595258)) b!1323621))

(assert (= (and b!1323621 (not res!595264)) b!1323615))

(assert (= (or b!1323622 b!1323609 b!1323614) bm!89774))

(declare-fun m!1480129 () Bool)

(assert (=> d!373890 m!1480129))

(declare-fun m!1480131 () Bool)

(assert (=> d!373890 m!1480131))

(declare-fun m!1480133 () Bool)

(assert (=> b!1323618 m!1480133))

(declare-fun m!1480135 () Bool)

(assert (=> b!1323621 m!1480135))

(assert (=> b!1323621 m!1480135))

(declare-fun m!1480137 () Bool)

(assert (=> b!1323621 m!1480137))

(assert (=> b!1323615 m!1480133))

(declare-fun m!1480139 () Bool)

(assert (=> b!1323616 m!1480139))

(assert (=> b!1323612 m!1480135))

(assert (=> b!1323612 m!1480135))

(assert (=> b!1323612 m!1480137))

(assert (=> bm!89774 m!1480129))

(assert (=> b!1323611 m!1480133))

(assert (=> b!1323611 m!1480133))

(declare-fun m!1480141 () Bool)

(assert (=> b!1323611 m!1480141))

(assert (=> b!1323611 m!1480135))

(assert (=> b!1323611 m!1480141))

(assert (=> b!1323611 m!1480135))

(declare-fun m!1480143 () Bool)

(assert (=> b!1323611 m!1480143))

(assert (=> b!1323023 d!373890))

(declare-fun d!373894 () Bool)

(declare-fun lt!437091 () Bool)

(declare-fun content!1901 (List!13472) (InoxSet Regex!3633))

(assert (=> d!373894 (= lt!437091 (select (content!1901 (map!2945 rules!2550 lambda!54236)) lt!436874))))

(declare-fun e!848171 () Bool)

(assert (=> d!373894 (= lt!437091 e!848171)))

(declare-fun res!595270 () Bool)

(assert (=> d!373894 (=> (not res!595270) (not e!848171))))

(assert (=> d!373894 (= res!595270 ((_ is Cons!13406) (map!2945 rules!2550 lambda!54236)))))

(assert (=> d!373894 (= (contains!2375 (map!2945 rules!2550 lambda!54236) lt!436874) lt!437091)))

(declare-fun b!1323659 () Bool)

(declare-fun e!848170 () Bool)

(assert (=> b!1323659 (= e!848171 e!848170)))

(declare-fun res!595271 () Bool)

(assert (=> b!1323659 (=> res!595271 e!848170)))

(assert (=> b!1323659 (= res!595271 (= (h!18807 (map!2945 rules!2550 lambda!54236)) lt!436874))))

(declare-fun b!1323660 () Bool)

(assert (=> b!1323660 (= e!848170 (contains!2375 (t!118701 (map!2945 rules!2550 lambda!54236)) lt!436874))))

(assert (= (and d!373894 res!595270) b!1323659))

(assert (= (and b!1323659 (not res!595271)) b!1323660))

(assert (=> d!373894 m!1479305))

(declare-fun m!1480145 () Bool)

(assert (=> d!373894 m!1480145))

(declare-fun m!1480147 () Bool)

(assert (=> d!373894 m!1480147))

(declare-fun m!1480149 () Bool)

(assert (=> b!1323660 m!1480149))

(assert (=> b!1323046 d!373894))

(declare-fun d!373896 () Bool)

(declare-fun lt!437094 () List!13472)

(declare-fun size!10931 (List!13472) Int)

(declare-fun size!10932 (List!13470) Int)

(assert (=> d!373896 (= (size!10931 lt!437094) (size!10932 rules!2550))))

(declare-fun e!848184 () List!13472)

(assert (=> d!373896 (= lt!437094 e!848184)))

(declare-fun c!217273 () Bool)

(assert (=> d!373896 (= c!217273 ((_ is Nil!13404) rules!2550))))

(assert (=> d!373896 (= (map!2945 rules!2550 lambda!54236) lt!437094)))

(declare-fun b!1323680 () Bool)

(assert (=> b!1323680 (= e!848184 Nil!13406)))

(declare-fun b!1323681 () Bool)

(declare-fun $colon$colon!159 (List!13472 Regex!3633) List!13472)

(declare-fun dynLambda!5904 (Int Rule!4438) Regex!3633)

(assert (=> b!1323681 (= e!848184 ($colon$colon!159 (map!2945 (t!118699 rules!2550) lambda!54236) (dynLambda!5904 lambda!54236 (h!18805 rules!2550))))))

(assert (= (and d!373896 c!217273) b!1323680))

(assert (= (and d!373896 (not c!217273)) b!1323681))

(declare-fun b_lambda!38769 () Bool)

(assert (=> (not b_lambda!38769) (not b!1323681)))

(declare-fun m!1480173 () Bool)

(assert (=> d!373896 m!1480173))

(declare-fun m!1480175 () Bool)

(assert (=> d!373896 m!1480175))

(declare-fun m!1480177 () Bool)

(assert (=> b!1323681 m!1480177))

(declare-fun m!1480179 () Bool)

(assert (=> b!1323681 m!1480179))

(assert (=> b!1323681 m!1480177))

(assert (=> b!1323681 m!1480179))

(declare-fun m!1480181 () Bool)

(assert (=> b!1323681 m!1480181))

(assert (=> b!1323046 d!373896))

(declare-fun lt!437100 () Regex!3633)

(declare-fun e!848194 () Bool)

(declare-fun b!1323694 () Bool)

(assert (=> b!1323694 (= e!848194 (contains!2375 (map!2945 rules!2550 lambda!54236) lt!437100))))

(declare-fun b!1323695 () Bool)

(declare-fun e!848195 () Bool)

(declare-fun dynLambda!5905 (Int Regex!3633) Bool)

(assert (=> b!1323695 (= e!848195 (dynLambda!5905 lambda!54237 (h!18807 (map!2945 rules!2550 lambda!54236))))))

(declare-fun b!1323697 () Bool)

(declare-fun lt!437099 () Unit!19476)

(declare-fun Unit!19483 () Unit!19476)

(assert (=> b!1323697 (= lt!437099 Unit!19483)))

(assert (=> b!1323697 false))

(declare-fun e!848193 () Regex!3633)

(declare-fun head!2306 (List!13472) Regex!3633)

(assert (=> b!1323697 (= e!848193 (head!2306 (map!2945 rules!2550 lambda!54236)))))

(declare-fun b!1323698 () Bool)

(assert (=> b!1323698 (= e!848193 (getWitness!232 (t!118701 (map!2945 rules!2550 lambda!54236)) lambda!54237))))

(declare-fun b!1323699 () Bool)

(declare-fun e!848196 () Regex!3633)

(assert (=> b!1323699 (= e!848196 e!848193)))

(declare-fun c!217279 () Bool)

(assert (=> b!1323699 (= c!217279 ((_ is Cons!13406) (map!2945 rules!2550 lambda!54236)))))

(declare-fun d!373916 () Bool)

(assert (=> d!373916 e!848194))

(declare-fun res!595280 () Bool)

(assert (=> d!373916 (=> (not res!595280) (not e!848194))))

(assert (=> d!373916 (= res!595280 (dynLambda!5905 lambda!54237 lt!437100))))

(assert (=> d!373916 (= lt!437100 e!848196)))

(declare-fun c!217278 () Bool)

(assert (=> d!373916 (= c!217278 e!848195)))

(declare-fun res!595279 () Bool)

(assert (=> d!373916 (=> (not res!595279) (not e!848195))))

(assert (=> d!373916 (= res!595279 ((_ is Cons!13406) (map!2945 rules!2550 lambda!54236)))))

(assert (=> d!373916 (exists!341 (map!2945 rules!2550 lambda!54236) lambda!54237)))

(assert (=> d!373916 (= (getWitness!232 (map!2945 rules!2550 lambda!54236) lambda!54237) lt!437100)))

(declare-fun b!1323696 () Bool)

(assert (=> b!1323696 (= e!848196 (h!18807 (map!2945 rules!2550 lambda!54236)))))

(assert (= (and d!373916 res!595279) b!1323695))

(assert (= (and d!373916 c!217278) b!1323696))

(assert (= (and d!373916 (not c!217278)) b!1323699))

(assert (= (and b!1323699 c!217279) b!1323698))

(assert (= (and b!1323699 (not c!217279)) b!1323697))

(assert (= (and d!373916 res!595280) b!1323694))

(declare-fun b_lambda!38771 () Bool)

(assert (=> (not b_lambda!38771) (not b!1323695)))

(declare-fun b_lambda!38773 () Bool)

(assert (=> (not b_lambda!38773) (not d!373916)))

(declare-fun m!1480183 () Bool)

(assert (=> d!373916 m!1480183))

(assert (=> d!373916 m!1479305))

(assert (=> d!373916 m!1479395))

(declare-fun m!1480185 () Bool)

(assert (=> b!1323695 m!1480185))

(declare-fun m!1480187 () Bool)

(assert (=> b!1323698 m!1480187))

(assert (=> b!1323697 m!1479305))

(declare-fun m!1480189 () Bool)

(assert (=> b!1323697 m!1480189))

(assert (=> b!1323694 m!1479305))

(declare-fun m!1480191 () Bool)

(assert (=> b!1323694 m!1480191))

(assert (=> b!1323046 d!373916))

(declare-fun d!373918 () Bool)

(assert (=> d!373918 (= (list!5067 (_1!7404 lt!436885)) (list!5069 (c!217150 (_1!7404 lt!436885))))))

(declare-fun bs!331253 () Bool)

(assert (= bs!331253 d!373918))

(declare-fun m!1480193 () Bool)

(assert (=> bs!331253 m!1480193))

(assert (=> b!1323025 d!373918))

(declare-fun b!1323700 () Bool)

(declare-fun e!848198 () Bool)

(declare-fun lt!437101 () tuple2!13036)

(assert (=> b!1323700 (= e!848198 (= (_2!7404 lt!437101) lt!436873))))

(declare-fun e!848199 () Bool)

(declare-fun b!1323701 () Bool)

(assert (=> b!1323701 (= e!848199 (= (list!5066 (_2!7404 lt!437101)) (_2!7403 (lexList!552 thiss!19762 rules!2550 (list!5066 lt!436873)))))))

(declare-fun d!373920 () Bool)

(assert (=> d!373920 e!848199))

(declare-fun res!595282 () Bool)

(assert (=> d!373920 (=> (not res!595282) (not e!848199))))

(assert (=> d!373920 (= res!595282 e!848198)))

(declare-fun c!217280 () Bool)

(assert (=> d!373920 (= c!217280 (> (size!10928 (_1!7404 lt!437101)) 0))))

(assert (=> d!373920 (= lt!437101 (lexTailRecV2!372 thiss!19762 rules!2550 lt!436873 (BalanceConc!8757 Empty!4408) lt!436873 (BalanceConc!8759 Empty!4409)))))

(assert (=> d!373920 (= (lex!849 thiss!19762 rules!2550 lt!436873) lt!437101)))

(declare-fun b!1323702 () Bool)

(declare-fun res!595281 () Bool)

(assert (=> b!1323702 (=> (not res!595281) (not e!848199))))

(assert (=> b!1323702 (= res!595281 (= (list!5067 (_1!7404 lt!437101)) (_1!7403 (lexList!552 thiss!19762 rules!2550 (list!5066 lt!436873)))))))

(declare-fun b!1323703 () Bool)

(declare-fun e!848197 () Bool)

(assert (=> b!1323703 (= e!848197 (not (isEmpty!7980 (_1!7404 lt!437101))))))

(declare-fun b!1323704 () Bool)

(assert (=> b!1323704 (= e!848198 e!848197)))

(declare-fun res!595283 () Bool)

(assert (=> b!1323704 (= res!595283 (< (size!10921 (_2!7404 lt!437101)) (size!10921 lt!436873)))))

(assert (=> b!1323704 (=> (not res!595283) (not e!848197))))

(assert (= (and d!373920 c!217280) b!1323704))

(assert (= (and d!373920 (not c!217280)) b!1323700))

(assert (= (and b!1323704 res!595283) b!1323703))

(assert (= (and d!373920 res!595282) b!1323702))

(assert (= (and b!1323702 res!595281) b!1323701))

(declare-fun m!1480195 () Bool)

(assert (=> b!1323702 m!1480195))

(assert (=> b!1323702 m!1479311))

(assert (=> b!1323702 m!1479311))

(assert (=> b!1323702 m!1479313))

(declare-fun m!1480197 () Bool)

(assert (=> b!1323704 m!1480197))

(declare-fun m!1480199 () Bool)

(assert (=> b!1323704 m!1480199))

(declare-fun m!1480201 () Bool)

(assert (=> b!1323703 m!1480201))

(declare-fun m!1480203 () Bool)

(assert (=> d!373920 m!1480203))

(declare-fun m!1480205 () Bool)

(assert (=> d!373920 m!1480205))

(declare-fun m!1480207 () Bool)

(assert (=> b!1323701 m!1480207))

(assert (=> b!1323701 m!1479311))

(assert (=> b!1323701 m!1479311))

(assert (=> b!1323701 m!1479313))

(assert (=> b!1323025 d!373920))

(declare-fun d!373922 () Bool)

(declare-fun lt!437102 () BalanceConc!8756)

(assert (=> d!373922 (= (list!5066 lt!437102) (printList!567 thiss!19762 (list!5067 (singletonSeq!906 t2!34))))))

(assert (=> d!373922 (= lt!437102 (printTailRec!549 thiss!19762 (singletonSeq!906 t2!34) 0 (BalanceConc!8757 Empty!4408)))))

(assert (=> d!373922 (= (print!788 thiss!19762 (singletonSeq!906 t2!34)) lt!437102)))

(declare-fun bs!331254 () Bool)

(assert (= bs!331254 d!373922))

(declare-fun m!1480209 () Bool)

(assert (=> bs!331254 m!1480209))

(assert (=> bs!331254 m!1479323))

(declare-fun m!1480211 () Bool)

(assert (=> bs!331254 m!1480211))

(assert (=> bs!331254 m!1480211))

(declare-fun m!1480213 () Bool)

(assert (=> bs!331254 m!1480213))

(assert (=> bs!331254 m!1479323))

(declare-fun m!1480215 () Bool)

(assert (=> bs!331254 m!1480215))

(assert (=> b!1323025 d!373922))

(declare-fun d!373924 () Bool)

(declare-fun e!848200 () Bool)

(assert (=> d!373924 e!848200))

(declare-fun res!595284 () Bool)

(assert (=> d!373924 (=> (not res!595284) (not e!848200))))

(declare-fun lt!437103 () BalanceConc!8758)

(assert (=> d!373924 (= res!595284 (= (list!5067 lt!437103) (Cons!13405 t2!34 Nil!13405)))))

(assert (=> d!373924 (= lt!437103 (singleton!393 t2!34))))

(assert (=> d!373924 (= (singletonSeq!906 t2!34) lt!437103)))

(declare-fun b!1323705 () Bool)

(assert (=> b!1323705 (= e!848200 (isBalanced!1287 (c!217150 lt!437103)))))

(assert (= (and d!373924 res!595284) b!1323705))

(declare-fun m!1480217 () Bool)

(assert (=> d!373924 m!1480217))

(declare-fun m!1480219 () Bool)

(assert (=> d!373924 m!1480219))

(declare-fun m!1480221 () Bool)

(assert (=> b!1323705 m!1480221))

(assert (=> b!1323025 d!373924))

(declare-fun b!1323716 () Bool)

(declare-fun res!595287 () Bool)

(declare-fun e!848207 () Bool)

(assert (=> b!1323716 (=> res!595287 e!848207)))

(assert (=> b!1323716 (= res!595287 (not ((_ is IntegerValue!7229) (value!75724 t1!34))))))

(declare-fun e!848209 () Bool)

(assert (=> b!1323716 (= e!848209 e!848207)))

(declare-fun b!1323717 () Bool)

(declare-fun e!848208 () Bool)

(assert (=> b!1323717 (= e!848208 e!848209)))

(declare-fun c!217285 () Bool)

(assert (=> b!1323717 (= c!217285 ((_ is IntegerValue!7228) (value!75724 t1!34)))))

(declare-fun d!373926 () Bool)

(declare-fun c!217286 () Bool)

(assert (=> d!373926 (= c!217286 ((_ is IntegerValue!7227) (value!75724 t1!34)))))

(assert (=> d!373926 (= (inv!21 (value!75724 t1!34)) e!848208)))

(declare-fun b!1323718 () Bool)

(declare-fun inv!15 (TokenValue!2409) Bool)

(assert (=> b!1323718 (= e!848207 (inv!15 (value!75724 t1!34)))))

(declare-fun b!1323719 () Bool)

(declare-fun inv!16 (TokenValue!2409) Bool)

(assert (=> b!1323719 (= e!848208 (inv!16 (value!75724 t1!34)))))

(declare-fun b!1323720 () Bool)

(declare-fun inv!17 (TokenValue!2409) Bool)

(assert (=> b!1323720 (= e!848209 (inv!17 (value!75724 t1!34)))))

(assert (= (and d!373926 c!217286) b!1323719))

(assert (= (and d!373926 (not c!217286)) b!1323717))

(assert (= (and b!1323717 c!217285) b!1323720))

(assert (= (and b!1323717 (not c!217285)) b!1323716))

(assert (= (and b!1323716 (not res!595287)) b!1323718))

(declare-fun m!1480223 () Bool)

(assert (=> b!1323718 m!1480223))

(declare-fun m!1480225 () Bool)

(assert (=> b!1323719 m!1480225))

(declare-fun m!1480227 () Bool)

(assert (=> b!1323720 m!1480227))

(assert (=> b!1323026 d!373926))

(declare-fun d!373928 () Bool)

(declare-fun e!848217 () Bool)

(assert (=> d!373928 e!848217))

(declare-fun res!595307 () Bool)

(assert (=> d!373928 (=> res!595307 e!848217)))

(declare-fun lt!437118 () Option!2590)

(declare-fun isEmpty!7984 (Option!2590) Bool)

(assert (=> d!373928 (= res!595307 (isEmpty!7984 lt!437118))))

(declare-fun e!848218 () Option!2590)

(assert (=> d!373928 (= lt!437118 e!848218)))

(declare-fun c!217289 () Bool)

(assert (=> d!373928 (= c!217289 (and ((_ is Cons!13404) rules!2550) ((_ is Nil!13404) (t!118699 rules!2550))))))

(declare-fun lt!437116 () Unit!19476)

(declare-fun lt!437114 () Unit!19476)

(assert (=> d!373928 (= lt!437116 lt!437114)))

(declare-fun isPrefix!1082 (List!13468 List!13468) Bool)

(assert (=> d!373928 (isPrefix!1082 lt!436870 lt!436870)))

(declare-fun lemmaIsPrefixRefl!761 (List!13468 List!13468) Unit!19476)

(assert (=> d!373928 (= lt!437114 (lemmaIsPrefixRefl!761 lt!436870 lt!436870))))

(declare-fun rulesValidInductive!734 (LexerInterface!2014 List!13470) Bool)

(assert (=> d!373928 (rulesValidInductive!734 thiss!19762 rules!2550)))

(assert (=> d!373928 (= (maxPrefix!1024 thiss!19762 rules!2550 lt!436870) lt!437118)))

(declare-fun b!1323739 () Bool)

(declare-fun lt!437115 () Option!2590)

(declare-fun lt!437117 () Option!2590)

(assert (=> b!1323739 (= e!848218 (ite (and ((_ is None!2589) lt!437115) ((_ is None!2589) lt!437117)) None!2589 (ite ((_ is None!2589) lt!437117) lt!437115 (ite ((_ is None!2589) lt!437115) lt!437117 (ite (>= (size!10920 (_1!7405 (v!21178 lt!437115))) (size!10920 (_1!7405 (v!21178 lt!437117)))) lt!437115 lt!437117)))))))

(declare-fun call!89782 () Option!2590)

(assert (=> b!1323739 (= lt!437115 call!89782)))

(assert (=> b!1323739 (= lt!437117 (maxPrefix!1024 thiss!19762 (t!118699 rules!2550) lt!436870))))

(declare-fun b!1323740 () Bool)

(declare-fun res!595304 () Bool)

(declare-fun e!848216 () Bool)

(assert (=> b!1323740 (=> (not res!595304) (not e!848216))))

(declare-fun get!4270 (Option!2590) tuple2!13038)

(assert (=> b!1323740 (= res!595304 (= (list!5066 (charsOf!1291 (_1!7405 (get!4270 lt!437118)))) (originalCharacters!3181 (_1!7405 (get!4270 lt!437118)))))))

(declare-fun b!1323741 () Bool)

(declare-fun res!595303 () Bool)

(assert (=> b!1323741 (=> (not res!595303) (not e!848216))))

(assert (=> b!1323741 (= res!595303 (matchR!1635 (regex!2319 (rule!4064 (_1!7405 (get!4270 lt!437118)))) (list!5066 (charsOf!1291 (_1!7405 (get!4270 lt!437118))))))))

(declare-fun b!1323742 () Bool)

(assert (=> b!1323742 (= e!848216 (contains!2374 rules!2550 (rule!4064 (_1!7405 (get!4270 lt!437118)))))))

(declare-fun b!1323743 () Bool)

(declare-fun res!595308 () Bool)

(assert (=> b!1323743 (=> (not res!595308) (not e!848216))))

(assert (=> b!1323743 (= res!595308 (< (size!10926 (_2!7405 (get!4270 lt!437118))) (size!10926 lt!436870)))))

(declare-fun b!1323744 () Bool)

(assert (=> b!1323744 (= e!848217 e!848216)))

(declare-fun res!595305 () Bool)

(assert (=> b!1323744 (=> (not res!595305) (not e!848216))))

(declare-fun isDefined!2185 (Option!2590) Bool)

(assert (=> b!1323744 (= res!595305 (isDefined!2185 lt!437118))))

(declare-fun b!1323745 () Bool)

(assert (=> b!1323745 (= e!848218 call!89782)))

(declare-fun b!1323746 () Bool)

(declare-fun res!595306 () Bool)

(assert (=> b!1323746 (=> (not res!595306) (not e!848216))))

(declare-fun apply!3089 (TokenValueInjection!4478 BalanceConc!8756) TokenValue!2409)

(declare-fun seqFromList!1605 (List!13468) BalanceConc!8756)

(assert (=> b!1323746 (= res!595306 (= (value!75724 (_1!7405 (get!4270 lt!437118))) (apply!3089 (transformation!2319 (rule!4064 (_1!7405 (get!4270 lt!437118)))) (seqFromList!1605 (originalCharacters!3181 (_1!7405 (get!4270 lt!437118)))))))))

(declare-fun b!1323747 () Bool)

(declare-fun res!595302 () Bool)

(assert (=> b!1323747 (=> (not res!595302) (not e!848216))))

(assert (=> b!1323747 (= res!595302 (= (++!3424 (list!5066 (charsOf!1291 (_1!7405 (get!4270 lt!437118)))) (_2!7405 (get!4270 lt!437118))) lt!436870))))

(declare-fun bm!89777 () Bool)

(declare-fun maxPrefixOneRule!587 (LexerInterface!2014 Rule!4438 List!13468) Option!2590)

(assert (=> bm!89777 (= call!89782 (maxPrefixOneRule!587 thiss!19762 (h!18805 rules!2550) lt!436870))))

(assert (= (and d!373928 c!217289) b!1323745))

(assert (= (and d!373928 (not c!217289)) b!1323739))

(assert (= (or b!1323745 b!1323739) bm!89777))

(assert (= (and d!373928 (not res!595307)) b!1323744))

(assert (= (and b!1323744 res!595305) b!1323740))

(assert (= (and b!1323740 res!595304) b!1323743))

(assert (= (and b!1323743 res!595308) b!1323747))

(assert (= (and b!1323747 res!595302) b!1323746))

(assert (= (and b!1323746 res!595306) b!1323741))

(assert (= (and b!1323741 res!595303) b!1323742))

(declare-fun m!1480229 () Bool)

(assert (=> b!1323746 m!1480229))

(declare-fun m!1480231 () Bool)

(assert (=> b!1323746 m!1480231))

(assert (=> b!1323746 m!1480231))

(declare-fun m!1480233 () Bool)

(assert (=> b!1323746 m!1480233))

(declare-fun m!1480235 () Bool)

(assert (=> bm!89777 m!1480235))

(declare-fun m!1480237 () Bool)

(assert (=> b!1323744 m!1480237))

(assert (=> b!1323741 m!1480229))

(declare-fun m!1480239 () Bool)

(assert (=> b!1323741 m!1480239))

(assert (=> b!1323741 m!1480239))

(declare-fun m!1480241 () Bool)

(assert (=> b!1323741 m!1480241))

(assert (=> b!1323741 m!1480241))

(declare-fun m!1480243 () Bool)

(assert (=> b!1323741 m!1480243))

(assert (=> b!1323743 m!1480229))

(declare-fun m!1480245 () Bool)

(assert (=> b!1323743 m!1480245))

(declare-fun m!1480247 () Bool)

(assert (=> b!1323743 m!1480247))

(assert (=> b!1323740 m!1480229))

(assert (=> b!1323740 m!1480239))

(assert (=> b!1323740 m!1480239))

(assert (=> b!1323740 m!1480241))

(declare-fun m!1480249 () Bool)

(assert (=> d!373928 m!1480249))

(declare-fun m!1480251 () Bool)

(assert (=> d!373928 m!1480251))

(declare-fun m!1480253 () Bool)

(assert (=> d!373928 m!1480253))

(declare-fun m!1480255 () Bool)

(assert (=> d!373928 m!1480255))

(assert (=> b!1323742 m!1480229))

(declare-fun m!1480257 () Bool)

(assert (=> b!1323742 m!1480257))

(assert (=> b!1323747 m!1480229))

(assert (=> b!1323747 m!1480239))

(assert (=> b!1323747 m!1480239))

(assert (=> b!1323747 m!1480241))

(assert (=> b!1323747 m!1480241))

(declare-fun m!1480259 () Bool)

(assert (=> b!1323747 m!1480259))

(declare-fun m!1480261 () Bool)

(assert (=> b!1323739 m!1480261))

(assert (=> b!1323047 d!373928))

(declare-fun d!373930 () Bool)

(assert (=> d!373930 (= (list!5066 lt!436867) (list!5070 (c!217148 lt!436867)))))

(declare-fun bs!331255 () Bool)

(assert (= bs!331255 d!373930))

(declare-fun m!1480263 () Bool)

(assert (=> bs!331255 m!1480263))

(assert (=> b!1323047 d!373930))

(declare-fun d!373932 () Bool)

(declare-fun lt!437119 () Bool)

(assert (=> d!373932 (= lt!437119 (isEmpty!7979 (list!5066 (_2!7404 lt!436885))))))

(assert (=> d!373932 (= lt!437119 (isEmpty!7983 (c!217148 (_2!7404 lt!436885))))))

(assert (=> d!373932 (= (isEmpty!7975 (_2!7404 lt!436885)) lt!437119)))

(declare-fun bs!331256 () Bool)

(assert (= bs!331256 d!373932))

(declare-fun m!1480265 () Bool)

(assert (=> bs!331256 m!1480265))

(assert (=> bs!331256 m!1480265))

(declare-fun m!1480267 () Bool)

(assert (=> bs!331256 m!1480267))

(declare-fun m!1480269 () Bool)

(assert (=> bs!331256 m!1480269))

(assert (=> b!1323049 d!373932))

(declare-fun d!373934 () Bool)

(assert (=> d!373934 (= (inv!17774 (tag!2581 (rule!4064 t1!34))) (= (mod (str.len (value!75723 (tag!2581 (rule!4064 t1!34)))) 2) 0))))

(assert (=> b!1323048 d!373934))

(declare-fun d!373936 () Bool)

(declare-fun res!595309 () Bool)

(declare-fun e!848219 () Bool)

(assert (=> d!373936 (=> (not res!595309) (not e!848219))))

(assert (=> d!373936 (= res!595309 (semiInverseModEq!875 (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (toValue!3550 (transformation!2319 (rule!4064 t1!34)))))))

(assert (=> d!373936 (= (inv!17778 (transformation!2319 (rule!4064 t1!34))) e!848219)))

(declare-fun b!1323748 () Bool)

(assert (=> b!1323748 (= e!848219 (equivClasses!834 (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (toValue!3550 (transformation!2319 (rule!4064 t1!34)))))))

(assert (= (and d!373936 res!595309) b!1323748))

(declare-fun m!1480271 () Bool)

(assert (=> d!373936 m!1480271))

(declare-fun m!1480273 () Bool)

(assert (=> b!1323748 m!1480273))

(assert (=> b!1323048 d!373936))

(declare-fun d!373938 () Bool)

(declare-fun lt!437120 () Bool)

(assert (=> d!373938 (= lt!437120 (select (content!1900 rules!2550) (rule!4064 t1!34)))))

(declare-fun e!848221 () Bool)

(assert (=> d!373938 (= lt!437120 e!848221)))

(declare-fun res!595310 () Bool)

(assert (=> d!373938 (=> (not res!595310) (not e!848221))))

(assert (=> d!373938 (= res!595310 ((_ is Cons!13404) rules!2550))))

(assert (=> d!373938 (= (contains!2374 rules!2550 (rule!4064 t1!34)) lt!437120)))

(declare-fun b!1323749 () Bool)

(declare-fun e!848220 () Bool)

(assert (=> b!1323749 (= e!848221 e!848220)))

(declare-fun res!595311 () Bool)

(assert (=> b!1323749 (=> res!595311 e!848220)))

(assert (=> b!1323749 (= res!595311 (= (h!18805 rules!2550) (rule!4064 t1!34)))))

(declare-fun b!1323750 () Bool)

(assert (=> b!1323750 (= e!848220 (contains!2374 (t!118699 rules!2550) (rule!4064 t1!34)))))

(assert (= (and d!373938 res!595310) b!1323749))

(assert (= (and b!1323749 (not res!595311)) b!1323750))

(assert (=> d!373938 m!1479919))

(declare-fun m!1480275 () Bool)

(assert (=> d!373938 m!1480275))

(declare-fun m!1480277 () Bool)

(assert (=> b!1323750 m!1480277))

(assert (=> b!1323027 d!373938))

(declare-fun d!373940 () Bool)

(declare-fun lt!437121 () Bool)

(assert (=> d!373940 (= lt!437121 (select (content!1898 lt!436883) lt!436876))))

(declare-fun e!848223 () Bool)

(assert (=> d!373940 (= lt!437121 e!848223)))

(declare-fun res!595312 () Bool)

(assert (=> d!373940 (=> (not res!595312) (not e!848223))))

(assert (=> d!373940 (= res!595312 ((_ is Cons!13402) lt!436883))))

(assert (=> d!373940 (= (contains!2373 lt!436883 lt!436876) lt!437121)))

(declare-fun b!1323751 () Bool)

(declare-fun e!848222 () Bool)

(assert (=> b!1323751 (= e!848223 e!848222)))

(declare-fun res!595313 () Bool)

(assert (=> b!1323751 (=> res!595313 e!848222)))

(assert (=> b!1323751 (= res!595313 (= (h!18803 lt!436883) lt!436876))))

(declare-fun b!1323752 () Bool)

(assert (=> b!1323752 (= e!848222 (contains!2373 (t!118697 lt!436883) lt!436876))))

(assert (= (and d!373940 res!595312) b!1323751))

(assert (= (and b!1323751 (not res!595313)) b!1323752))

(assert (=> d!373940 m!1479511))

(declare-fun m!1480279 () Bool)

(assert (=> d!373940 m!1480279))

(declare-fun m!1480281 () Bool)

(assert (=> b!1323752 m!1480281))

(assert (=> b!1323018 d!373940))

(declare-fun b!1323753 () Bool)

(declare-fun res!595314 () Bool)

(declare-fun e!848224 () Bool)

(assert (=> b!1323753 (=> res!595314 e!848224)))

(assert (=> b!1323753 (= res!595314 (not ((_ is IntegerValue!7229) (value!75724 t2!34))))))

(declare-fun e!848226 () Bool)

(assert (=> b!1323753 (= e!848226 e!848224)))

(declare-fun b!1323754 () Bool)

(declare-fun e!848225 () Bool)

(assert (=> b!1323754 (= e!848225 e!848226)))

(declare-fun c!217290 () Bool)

(assert (=> b!1323754 (= c!217290 ((_ is IntegerValue!7228) (value!75724 t2!34)))))

(declare-fun d!373942 () Bool)

(declare-fun c!217291 () Bool)

(assert (=> d!373942 (= c!217291 ((_ is IntegerValue!7227) (value!75724 t2!34)))))

(assert (=> d!373942 (= (inv!21 (value!75724 t2!34)) e!848225)))

(declare-fun b!1323755 () Bool)

(assert (=> b!1323755 (= e!848224 (inv!15 (value!75724 t2!34)))))

(declare-fun b!1323756 () Bool)

(assert (=> b!1323756 (= e!848225 (inv!16 (value!75724 t2!34)))))

(declare-fun b!1323757 () Bool)

(assert (=> b!1323757 (= e!848226 (inv!17 (value!75724 t2!34)))))

(assert (= (and d!373942 c!217291) b!1323756))

(assert (= (and d!373942 (not c!217291)) b!1323754))

(assert (= (and b!1323754 c!217290) b!1323757))

(assert (= (and b!1323754 (not c!217290)) b!1323753))

(assert (= (and b!1323753 (not res!595314)) b!1323755))

(declare-fun m!1480283 () Bool)

(assert (=> b!1323755 m!1480283))

(declare-fun m!1480285 () Bool)

(assert (=> b!1323756 m!1480285))

(declare-fun m!1480287 () Bool)

(assert (=> b!1323757 m!1480287))

(assert (=> b!1323039 d!373942))

(declare-fun bs!331257 () Bool)

(declare-fun d!373944 () Bool)

(assert (= bs!331257 (and d!373944 b!1323041)))

(declare-fun lambda!54270 () Int)

(assert (=> bs!331257 (not (= lambda!54270 lambda!54238))))

(declare-fun bs!331258 () Bool)

(assert (= bs!331258 (and d!373944 b!1323034)))

(assert (=> bs!331258 (not (= lambda!54270 lambda!54239))))

(assert (=> d!373944 true))

(declare-fun order!8105 () Int)

(declare-fun dynLambda!5907 (Int Int) Int)

(assert (=> d!373944 (< (dynLambda!5907 order!8105 lambda!54238) (dynLambda!5907 order!8105 lambda!54270))))

(assert (=> d!373944 (= (exists!340 rules!2550 lambda!54238) (not (forall!3308 rules!2550 lambda!54270)))))

(declare-fun bs!331259 () Bool)

(assert (= bs!331259 d!373944))

(declare-fun m!1480289 () Bool)

(assert (=> bs!331259 m!1480289))

(assert (=> b!1323041 d!373944))

(declare-fun bs!331260 () Bool)

(declare-fun d!373946 () Bool)

(assert (= bs!331260 (and d!373946 b!1323041)))

(declare-fun lambda!54273 () Int)

(assert (=> bs!331260 (not (= lambda!54273 lambda!54238))))

(declare-fun bs!331261 () Bool)

(assert (= bs!331261 (and d!373946 b!1323034)))

(assert (=> bs!331261 (not (= lambda!54273 lambda!54239))))

(declare-fun bs!331262 () Bool)

(assert (= bs!331262 (and d!373946 d!373944)))

(assert (=> bs!331262 (not (= lambda!54273 lambda!54270))))

(assert (=> d!373946 true))

(assert (=> d!373946 true))

(declare-fun order!8107 () Int)

(declare-fun dynLambda!5908 (Int Int) Int)

(assert (=> d!373946 (< (dynLambda!5908 order!8107 lambda!54236) (dynLambda!5907 order!8105 lambda!54273))))

(assert (=> d!373946 (exists!340 rules!2550 lambda!54273)))

(declare-fun lt!437124 () Unit!19476)

(declare-fun choose!8108 (List!13470 Int Regex!3633) Unit!19476)

(assert (=> d!373946 (= lt!437124 (choose!8108 rules!2550 lambda!54236 lt!436874))))

(assert (=> d!373946 (contains!2375 (map!2945 rules!2550 lambda!54236) lt!436874)))

(assert (=> d!373946 (= (lemmaMapContains!62 rules!2550 lambda!54236 lt!436874) lt!437124)))

(declare-fun bs!331263 () Bool)

(assert (= bs!331263 d!373946))

(declare-fun m!1480291 () Bool)

(assert (=> bs!331263 m!1480291))

(declare-fun m!1480293 () Bool)

(assert (=> bs!331263 m!1480293))

(assert (=> bs!331263 m!1479305))

(assert (=> bs!331263 m!1479305))

(assert (=> bs!331263 m!1479307))

(assert (=> b!1323041 d!373946))

(declare-fun d!373948 () Bool)

(declare-fun e!848228 () Bool)

(assert (=> d!373948 e!848228))

(declare-fun res!595320 () Bool)

(assert (=> d!373948 (=> res!595320 e!848228)))

(declare-fun lt!437129 () Option!2590)

(assert (=> d!373948 (= res!595320 (isEmpty!7984 lt!437129))))

(declare-fun e!848229 () Option!2590)

(assert (=> d!373948 (= lt!437129 e!848229)))

(declare-fun c!217292 () Bool)

(assert (=> d!373948 (= c!217292 (and ((_ is Cons!13404) rules!2550) ((_ is Nil!13404) (t!118699 rules!2550))))))

(declare-fun lt!437127 () Unit!19476)

(declare-fun lt!437125 () Unit!19476)

(assert (=> d!373948 (= lt!437127 lt!437125)))

(assert (=> d!373948 (isPrefix!1082 lt!436887 lt!436887)))

(assert (=> d!373948 (= lt!437125 (lemmaIsPrefixRefl!761 lt!436887 lt!436887))))

(assert (=> d!373948 (rulesValidInductive!734 thiss!19762 rules!2550)))

(assert (=> d!373948 (= (maxPrefix!1024 thiss!19762 rules!2550 lt!436887) lt!437129)))

(declare-fun b!1323764 () Bool)

(declare-fun lt!437126 () Option!2590)

(declare-fun lt!437128 () Option!2590)

(assert (=> b!1323764 (= e!848229 (ite (and ((_ is None!2589) lt!437126) ((_ is None!2589) lt!437128)) None!2589 (ite ((_ is None!2589) lt!437128) lt!437126 (ite ((_ is None!2589) lt!437126) lt!437128 (ite (>= (size!10920 (_1!7405 (v!21178 lt!437126))) (size!10920 (_1!7405 (v!21178 lt!437128)))) lt!437126 lt!437128)))))))

(declare-fun call!89783 () Option!2590)

(assert (=> b!1323764 (= lt!437126 call!89783)))

(assert (=> b!1323764 (= lt!437128 (maxPrefix!1024 thiss!19762 (t!118699 rules!2550) lt!436887))))

(declare-fun b!1323765 () Bool)

(declare-fun res!595317 () Bool)

(declare-fun e!848227 () Bool)

(assert (=> b!1323765 (=> (not res!595317) (not e!848227))))

(assert (=> b!1323765 (= res!595317 (= (list!5066 (charsOf!1291 (_1!7405 (get!4270 lt!437129)))) (originalCharacters!3181 (_1!7405 (get!4270 lt!437129)))))))

(declare-fun b!1323766 () Bool)

(declare-fun res!595316 () Bool)

(assert (=> b!1323766 (=> (not res!595316) (not e!848227))))

(assert (=> b!1323766 (= res!595316 (matchR!1635 (regex!2319 (rule!4064 (_1!7405 (get!4270 lt!437129)))) (list!5066 (charsOf!1291 (_1!7405 (get!4270 lt!437129))))))))

(declare-fun b!1323767 () Bool)

(assert (=> b!1323767 (= e!848227 (contains!2374 rules!2550 (rule!4064 (_1!7405 (get!4270 lt!437129)))))))

(declare-fun b!1323768 () Bool)

(declare-fun res!595321 () Bool)

(assert (=> b!1323768 (=> (not res!595321) (not e!848227))))

(assert (=> b!1323768 (= res!595321 (< (size!10926 (_2!7405 (get!4270 lt!437129))) (size!10926 lt!436887)))))

(declare-fun b!1323769 () Bool)

(assert (=> b!1323769 (= e!848228 e!848227)))

(declare-fun res!595318 () Bool)

(assert (=> b!1323769 (=> (not res!595318) (not e!848227))))

(assert (=> b!1323769 (= res!595318 (isDefined!2185 lt!437129))))

(declare-fun b!1323770 () Bool)

(assert (=> b!1323770 (= e!848229 call!89783)))

(declare-fun b!1323771 () Bool)

(declare-fun res!595319 () Bool)

(assert (=> b!1323771 (=> (not res!595319) (not e!848227))))

(assert (=> b!1323771 (= res!595319 (= (value!75724 (_1!7405 (get!4270 lt!437129))) (apply!3089 (transformation!2319 (rule!4064 (_1!7405 (get!4270 lt!437129)))) (seqFromList!1605 (originalCharacters!3181 (_1!7405 (get!4270 lt!437129)))))))))

(declare-fun b!1323772 () Bool)

(declare-fun res!595315 () Bool)

(assert (=> b!1323772 (=> (not res!595315) (not e!848227))))

(assert (=> b!1323772 (= res!595315 (= (++!3424 (list!5066 (charsOf!1291 (_1!7405 (get!4270 lt!437129)))) (_2!7405 (get!4270 lt!437129))) lt!436887))))

(declare-fun bm!89778 () Bool)

(assert (=> bm!89778 (= call!89783 (maxPrefixOneRule!587 thiss!19762 (h!18805 rules!2550) lt!436887))))

(assert (= (and d!373948 c!217292) b!1323770))

(assert (= (and d!373948 (not c!217292)) b!1323764))

(assert (= (or b!1323770 b!1323764) bm!89778))

(assert (= (and d!373948 (not res!595320)) b!1323769))

(assert (= (and b!1323769 res!595318) b!1323765))

(assert (= (and b!1323765 res!595317) b!1323768))

(assert (= (and b!1323768 res!595321) b!1323772))

(assert (= (and b!1323772 res!595315) b!1323771))

(assert (= (and b!1323771 res!595319) b!1323766))

(assert (= (and b!1323766 res!595316) b!1323767))

(declare-fun m!1480295 () Bool)

(assert (=> b!1323771 m!1480295))

(declare-fun m!1480297 () Bool)

(assert (=> b!1323771 m!1480297))

(assert (=> b!1323771 m!1480297))

(declare-fun m!1480299 () Bool)

(assert (=> b!1323771 m!1480299))

(declare-fun m!1480301 () Bool)

(assert (=> bm!89778 m!1480301))

(declare-fun m!1480303 () Bool)

(assert (=> b!1323769 m!1480303))

(assert (=> b!1323766 m!1480295))

(declare-fun m!1480305 () Bool)

(assert (=> b!1323766 m!1480305))

(assert (=> b!1323766 m!1480305))

(declare-fun m!1480307 () Bool)

(assert (=> b!1323766 m!1480307))

(assert (=> b!1323766 m!1480307))

(declare-fun m!1480309 () Bool)

(assert (=> b!1323766 m!1480309))

(assert (=> b!1323768 m!1480295))

(declare-fun m!1480311 () Bool)

(assert (=> b!1323768 m!1480311))

(assert (=> b!1323768 m!1479887))

(assert (=> b!1323765 m!1480295))

(assert (=> b!1323765 m!1480305))

(assert (=> b!1323765 m!1480305))

(assert (=> b!1323765 m!1480307))

(declare-fun m!1480313 () Bool)

(assert (=> d!373948 m!1480313))

(declare-fun m!1480315 () Bool)

(assert (=> d!373948 m!1480315))

(declare-fun m!1480317 () Bool)

(assert (=> d!373948 m!1480317))

(assert (=> d!373948 m!1480255))

(assert (=> b!1323767 m!1480295))

(declare-fun m!1480319 () Bool)

(assert (=> b!1323767 m!1480319))

(assert (=> b!1323772 m!1480295))

(assert (=> b!1323772 m!1480305))

(assert (=> b!1323772 m!1480305))

(assert (=> b!1323772 m!1480307))

(assert (=> b!1323772 m!1480307))

(declare-fun m!1480321 () Bool)

(assert (=> b!1323772 m!1480321))

(declare-fun m!1480323 () Bool)

(assert (=> b!1323764 m!1480323))

(assert (=> b!1323040 d!373948))

(declare-fun b!1323783 () Bool)

(declare-fun e!848238 () Bool)

(declare-fun lt!437137 () tuple2!13034)

(declare-fun isEmpty!7985 (List!13471) Bool)

(assert (=> b!1323783 (= e!848238 (not (isEmpty!7985 (_1!7403 lt!437137))))))

(declare-fun b!1323784 () Bool)

(declare-fun e!848237 () tuple2!13034)

(declare-fun lt!437138 () Option!2590)

(declare-fun lt!437136 () tuple2!13034)

(assert (=> b!1323784 (= e!848237 (tuple2!13035 (Cons!13405 (_1!7405 (v!21178 lt!437138)) (_1!7403 lt!437136)) (_2!7403 lt!437136)))))

(assert (=> b!1323784 (= lt!437136 (lexList!552 thiss!19762 rules!2550 (_2!7405 (v!21178 lt!437138))))))

(declare-fun d!373950 () Bool)

(declare-fun e!848236 () Bool)

(assert (=> d!373950 e!848236))

(declare-fun c!217298 () Bool)

(declare-fun size!10933 (List!13471) Int)

(assert (=> d!373950 (= c!217298 (> (size!10933 (_1!7403 lt!437137)) 0))))

(assert (=> d!373950 (= lt!437137 e!848237)))

(declare-fun c!217297 () Bool)

(assert (=> d!373950 (= c!217297 ((_ is Some!2589) lt!437138))))

(assert (=> d!373950 (= lt!437138 (maxPrefix!1024 thiss!19762 rules!2550 (list!5066 lt!436873)))))

(assert (=> d!373950 (= (lexList!552 thiss!19762 rules!2550 (list!5066 lt!436873)) lt!437137)))

(declare-fun b!1323785 () Bool)

(assert (=> b!1323785 (= e!848236 e!848238)))

(declare-fun res!595324 () Bool)

(assert (=> b!1323785 (= res!595324 (< (size!10926 (_2!7403 lt!437137)) (size!10926 (list!5066 lt!436873))))))

(assert (=> b!1323785 (=> (not res!595324) (not e!848238))))

(declare-fun b!1323786 () Bool)

(assert (=> b!1323786 (= e!848237 (tuple2!13035 Nil!13405 (list!5066 lt!436873)))))

(declare-fun b!1323787 () Bool)

(assert (=> b!1323787 (= e!848236 (= (_2!7403 lt!437137) (list!5066 lt!436873)))))

(assert (= (and d!373950 c!217297) b!1323784))

(assert (= (and d!373950 (not c!217297)) b!1323786))

(assert (= (and d!373950 c!217298) b!1323785))

(assert (= (and d!373950 (not c!217298)) b!1323787))

(assert (= (and b!1323785 res!595324) b!1323783))

(declare-fun m!1480325 () Bool)

(assert (=> b!1323783 m!1480325))

(declare-fun m!1480327 () Bool)

(assert (=> b!1323784 m!1480327))

(declare-fun m!1480329 () Bool)

(assert (=> d!373950 m!1480329))

(assert (=> d!373950 m!1479311))

(declare-fun m!1480331 () Bool)

(assert (=> d!373950 m!1480331))

(declare-fun m!1480333 () Bool)

(assert (=> b!1323785 m!1480333))

(assert (=> b!1323785 m!1479311))

(declare-fun m!1480335 () Bool)

(assert (=> b!1323785 m!1480335))

(assert (=> b!1323019 d!373950))

(declare-fun d!373952 () Bool)

(assert (=> d!373952 (= (list!5066 lt!436873) (list!5070 (c!217148 lt!436873)))))

(declare-fun bs!331264 () Bool)

(assert (= bs!331264 d!373952))

(declare-fun m!1480337 () Bool)

(assert (=> bs!331264 m!1480337))

(assert (=> b!1323019 d!373952))

(assert (=> b!1323042 d!373896))

(declare-fun bs!331265 () Bool)

(declare-fun d!373954 () Bool)

(assert (= bs!331265 (and d!373954 b!1323042)))

(declare-fun lambda!54276 () Int)

(assert (=> bs!331265 (not (= lambda!54276 lambda!54237))))

(assert (=> d!373954 true))

(declare-fun order!8109 () Int)

(declare-fun dynLambda!5909 (Int Int) Int)

(assert (=> d!373954 (< (dynLambda!5909 order!8109 lambda!54237) (dynLambda!5909 order!8109 lambda!54276))))

(declare-fun forall!3310 (List!13472 Int) Bool)

(assert (=> d!373954 (= (exists!341 lt!436880 lambda!54237) (not (forall!3310 lt!436880 lambda!54276)))))

(declare-fun bs!331266 () Bool)

(assert (= bs!331266 d!373954))

(declare-fun m!1480339 () Bool)

(assert (=> bs!331266 m!1480339))

(assert (=> b!1323042 d!373954))

(declare-fun bs!331267 () Bool)

(declare-fun d!373956 () Bool)

(assert (= bs!331267 (and d!373956 b!1323042)))

(declare-fun lambda!54277 () Int)

(assert (=> bs!331267 (not (= lambda!54277 lambda!54237))))

(declare-fun bs!331268 () Bool)

(assert (= bs!331268 (and d!373956 d!373954)))

(assert (=> bs!331268 (= lambda!54277 lambda!54276)))

(assert (=> d!373956 true))

(assert (=> d!373956 (< (dynLambda!5909 order!8109 lambda!54237) (dynLambda!5909 order!8109 lambda!54277))))

(assert (=> d!373956 (= (exists!341 (map!2945 rules!2550 lambda!54236) lambda!54237) (not (forall!3310 (map!2945 rules!2550 lambda!54236) lambda!54277)))))

(declare-fun bs!331269 () Bool)

(assert (= bs!331269 d!373956))

(assert (=> bs!331269 m!1479305))

(declare-fun m!1480341 () Bool)

(assert (=> bs!331269 m!1480341))

(assert (=> b!1323042 d!373956))

(declare-fun bs!331270 () Bool)

(declare-fun d!373958 () Bool)

(assert (= bs!331270 (and d!373958 b!1323042)))

(declare-fun lambda!54282 () Int)

(assert (=> bs!331270 (not (= lambda!54282 lambda!54237))))

(declare-fun bs!331271 () Bool)

(assert (= bs!331271 (and d!373958 d!373954)))

(assert (=> bs!331271 (not (= lambda!54282 lambda!54276))))

(declare-fun bs!331272 () Bool)

(assert (= bs!331272 (and d!373958 d!373956)))

(assert (=> bs!331272 (not (= lambda!54282 lambda!54277))))

(declare-fun lambda!54283 () Int)

(assert (=> bs!331270 (= lambda!54283 lambda!54237)))

(assert (=> bs!331271 (not (= lambda!54283 lambda!54276))))

(assert (=> bs!331272 (not (= lambda!54283 lambda!54277))))

(declare-fun bs!331273 () Bool)

(assert (= bs!331273 d!373958))

(assert (=> bs!331273 (not (= lambda!54283 lambda!54282))))

(assert (=> d!373958 true))

(assert (=> d!373958 (= (matchR!1635 lt!436875 lt!436883) (exists!341 lt!436880 lambda!54283))))

(declare-fun lt!437141 () Unit!19476)

(declare-fun choose!8109 (Regex!3633 List!13472 List!13468) Unit!19476)

(assert (=> d!373958 (= lt!437141 (choose!8109 lt!436875 lt!436880 lt!436883))))

(assert (=> d!373958 (forall!3310 lt!436880 lambda!54282)))

(assert (=> d!373958 (= (matchRGenUnionSpec!70 lt!436875 lt!436880 lt!436883) lt!437141)))

(assert (=> bs!331273 m!1479349))

(declare-fun m!1480343 () Bool)

(assert (=> bs!331273 m!1480343))

(declare-fun m!1480345 () Bool)

(assert (=> bs!331273 m!1480345))

(declare-fun m!1480347 () Bool)

(assert (=> bs!331273 m!1480347))

(assert (=> b!1323042 d!373958))

(declare-fun d!373960 () Bool)

(declare-fun lt!437142 () Bool)

(assert (=> d!373960 (= lt!437142 (select (content!1900 rules!2550) (rule!4064 t2!34)))))

(declare-fun e!848242 () Bool)

(assert (=> d!373960 (= lt!437142 e!848242)))

(declare-fun res!595327 () Bool)

(assert (=> d!373960 (=> (not res!595327) (not e!848242))))

(assert (=> d!373960 (= res!595327 ((_ is Cons!13404) rules!2550))))

(assert (=> d!373960 (= (contains!2374 rules!2550 (rule!4064 t2!34)) lt!437142)))

(declare-fun b!1323792 () Bool)

(declare-fun e!848241 () Bool)

(assert (=> b!1323792 (= e!848242 e!848241)))

(declare-fun res!595328 () Bool)

(assert (=> b!1323792 (=> res!595328 e!848241)))

(assert (=> b!1323792 (= res!595328 (= (h!18805 rules!2550) (rule!4064 t2!34)))))

(declare-fun b!1323793 () Bool)

(assert (=> b!1323793 (= e!848241 (contains!2374 (t!118699 rules!2550) (rule!4064 t2!34)))))

(assert (= (and d!373960 res!595327) b!1323792))

(assert (= (and b!1323792 (not res!595328)) b!1323793))

(assert (=> d!373960 m!1479919))

(declare-fun m!1480349 () Bool)

(assert (=> d!373960 m!1480349))

(declare-fun m!1480351 () Bool)

(assert (=> b!1323793 m!1480351))

(assert (=> b!1323021 d!373960))

(declare-fun b!1323796 () Bool)

(declare-fun res!595329 () Bool)

(declare-fun e!848244 () Bool)

(assert (=> b!1323796 (=> (not res!595329) (not e!848244))))

(declare-fun lt!437143 () List!13468)

(assert (=> b!1323796 (= res!595329 (= (size!10926 lt!437143) (+ (size!10926 lt!436872) (size!10926 (getSuffix!489 lt!436883 lt!436872)))))))

(declare-fun d!373962 () Bool)

(assert (=> d!373962 e!848244))

(declare-fun res!595330 () Bool)

(assert (=> d!373962 (=> (not res!595330) (not e!848244))))

(assert (=> d!373962 (= res!595330 (= (content!1898 lt!437143) ((_ map or) (content!1898 lt!436872) (content!1898 (getSuffix!489 lt!436883 lt!436872)))))))

(declare-fun e!848243 () List!13468)

(assert (=> d!373962 (= lt!437143 e!848243)))

(declare-fun c!217299 () Bool)

(assert (=> d!373962 (= c!217299 ((_ is Nil!13402) lt!436872))))

(assert (=> d!373962 (= (++!3424 lt!436872 (getSuffix!489 lt!436883 lt!436872)) lt!437143)))

(declare-fun b!1323797 () Bool)

(assert (=> b!1323797 (= e!848244 (or (not (= (getSuffix!489 lt!436883 lt!436872) Nil!13402)) (= lt!437143 lt!436872)))))

(declare-fun b!1323795 () Bool)

(assert (=> b!1323795 (= e!848243 (Cons!13402 (h!18803 lt!436872) (++!3424 (t!118697 lt!436872) (getSuffix!489 lt!436883 lt!436872))))))

(declare-fun b!1323794 () Bool)

(assert (=> b!1323794 (= e!848243 (getSuffix!489 lt!436883 lt!436872))))

(assert (= (and d!373962 c!217299) b!1323794))

(assert (= (and d!373962 (not c!217299)) b!1323795))

(assert (= (and d!373962 res!595330) b!1323796))

(assert (= (and b!1323796 res!595329) b!1323797))

(declare-fun m!1480353 () Bool)

(assert (=> b!1323796 m!1480353))

(declare-fun m!1480355 () Bool)

(assert (=> b!1323796 m!1480355))

(assert (=> b!1323796 m!1479299))

(declare-fun m!1480357 () Bool)

(assert (=> b!1323796 m!1480357))

(declare-fun m!1480359 () Bool)

(assert (=> d!373962 m!1480359))

(assert (=> d!373962 m!1479517))

(assert (=> d!373962 m!1479299))

(declare-fun m!1480361 () Bool)

(assert (=> d!373962 m!1480361))

(assert (=> b!1323795 m!1479299))

(declare-fun m!1480363 () Bool)

(assert (=> b!1323795 m!1480363))

(assert (=> b!1323020 d!373962))

(declare-fun d!373964 () Bool)

(declare-fun lt!437146 () List!13468)

(assert (=> d!373964 (= (++!3424 lt!436872 lt!437146) lt!436883)))

(declare-fun e!848247 () List!13468)

(assert (=> d!373964 (= lt!437146 e!848247)))

(declare-fun c!217302 () Bool)

(assert (=> d!373964 (= c!217302 ((_ is Cons!13402) lt!436872))))

(assert (=> d!373964 (>= (size!10926 lt!436883) (size!10926 lt!436872))))

(assert (=> d!373964 (= (getSuffix!489 lt!436883 lt!436872) lt!437146)))

(declare-fun b!1323802 () Bool)

(assert (=> b!1323802 (= e!848247 (getSuffix!489 (tail!1900 lt!436883) (t!118697 lt!436872)))))

(declare-fun b!1323803 () Bool)

(assert (=> b!1323803 (= e!848247 lt!436883)))

(assert (= (and d!373964 c!217302) b!1323802))

(assert (= (and d!373964 (not c!217302)) b!1323803))

(declare-fun m!1480365 () Bool)

(assert (=> d!373964 m!1480365))

(declare-fun m!1480367 () Bool)

(assert (=> d!373964 m!1480367))

(assert (=> d!373964 m!1480355))

(assert (=> b!1323802 m!1479931))

(assert (=> b!1323802 m!1479931))

(declare-fun m!1480369 () Bool)

(assert (=> b!1323802 m!1480369))

(assert (=> b!1323020 d!373964))

(declare-fun d!373966 () Bool)

(declare-fun lt!437149 () List!13468)

(declare-fun dynLambda!5910 (Int List!13468) Bool)

(assert (=> d!373966 (dynLambda!5910 lambda!54235 lt!437149)))

(declare-fun choose!8110 (Int) List!13468)

(assert (=> d!373966 (= lt!437149 (choose!8110 lambda!54235))))

(assert (=> d!373966 (Exists!791 lambda!54235)))

(assert (=> d!373966 (= (pickWitness!96 lambda!54235) lt!437149)))

(declare-fun b_lambda!38775 () Bool)

(assert (=> (not b_lambda!38775) (not d!373966)))

(declare-fun bs!331274 () Bool)

(assert (= bs!331274 d!373966))

(declare-fun m!1480371 () Bool)

(assert (=> bs!331274 m!1480371))

(declare-fun m!1480373 () Bool)

(assert (=> bs!331274 m!1480373))

(assert (=> bs!331274 m!1479293))

(assert (=> b!1323020 d!373966))

(declare-fun b!1323804 () Bool)

(declare-fun e!848250 () Bool)

(declare-fun lt!437151 () tuple2!13034)

(assert (=> b!1323804 (= e!848250 (not (isEmpty!7985 (_1!7403 lt!437151))))))

(declare-fun b!1323805 () Bool)

(declare-fun e!848249 () tuple2!13034)

(declare-fun lt!437152 () Option!2590)

(declare-fun lt!437150 () tuple2!13034)

(assert (=> b!1323805 (= e!848249 (tuple2!13035 (Cons!13405 (_1!7405 (v!21178 lt!437152)) (_1!7403 lt!437150)) (_2!7403 lt!437150)))))

(assert (=> b!1323805 (= lt!437150 (lexList!552 thiss!19762 rules!2550 (_2!7405 (v!21178 lt!437152))))))

(declare-fun d!373968 () Bool)

(declare-fun e!848248 () Bool)

(assert (=> d!373968 e!848248))

(declare-fun c!217304 () Bool)

(assert (=> d!373968 (= c!217304 (> (size!10933 (_1!7403 lt!437151)) 0))))

(assert (=> d!373968 (= lt!437151 e!848249)))

(declare-fun c!217303 () Bool)

(assert (=> d!373968 (= c!217303 ((_ is Some!2589) lt!437152))))

(assert (=> d!373968 (= lt!437152 (maxPrefix!1024 thiss!19762 rules!2550 (list!5066 lt!436871)))))

(assert (=> d!373968 (= (lexList!552 thiss!19762 rules!2550 (list!5066 lt!436871)) lt!437151)))

(declare-fun b!1323806 () Bool)

(assert (=> b!1323806 (= e!848248 e!848250)))

(declare-fun res!595331 () Bool)

(assert (=> b!1323806 (= res!595331 (< (size!10926 (_2!7403 lt!437151)) (size!10926 (list!5066 lt!436871))))))

(assert (=> b!1323806 (=> (not res!595331) (not e!848250))))

(declare-fun b!1323807 () Bool)

(assert (=> b!1323807 (= e!848249 (tuple2!13035 Nil!13405 (list!5066 lt!436871)))))

(declare-fun b!1323808 () Bool)

(assert (=> b!1323808 (= e!848248 (= (_2!7403 lt!437151) (list!5066 lt!436871)))))

(assert (= (and d!373968 c!217303) b!1323805))

(assert (= (and d!373968 (not c!217303)) b!1323807))

(assert (= (and d!373968 c!217304) b!1323806))

(assert (= (and d!373968 (not c!217304)) b!1323808))

(assert (= (and b!1323806 res!595331) b!1323804))

(declare-fun m!1480375 () Bool)

(assert (=> b!1323804 m!1480375))

(declare-fun m!1480377 () Bool)

(assert (=> b!1323805 m!1480377))

(declare-fun m!1480379 () Bool)

(assert (=> d!373968 m!1480379))

(assert (=> d!373968 m!1479357))

(declare-fun m!1480381 () Bool)

(assert (=> d!373968 m!1480381))

(declare-fun m!1480383 () Bool)

(assert (=> b!1323806 m!1480383))

(assert (=> b!1323806 m!1479357))

(declare-fun m!1480385 () Bool)

(assert (=> b!1323806 m!1480385))

(assert (=> b!1323022 d!373968))

(declare-fun d!373970 () Bool)

(assert (=> d!373970 (= (list!5066 lt!436871) (list!5070 (c!217148 lt!436871)))))

(declare-fun bs!331275 () Bool)

(assert (= bs!331275 d!373970))

(declare-fun m!1480387 () Bool)

(assert (=> bs!331275 m!1480387))

(assert (=> b!1323022 d!373970))

(declare-fun d!373972 () Bool)

(declare-fun res!595336 () Bool)

(declare-fun e!848253 () Bool)

(assert (=> d!373972 (=> (not res!595336) (not e!848253))))

(assert (=> d!373972 (= res!595336 (not (isEmpty!7979 (originalCharacters!3181 t1!34))))))

(assert (=> d!373972 (= (inv!17777 t1!34) e!848253)))

(declare-fun b!1323813 () Bool)

(declare-fun res!595337 () Bool)

(assert (=> b!1323813 (=> (not res!595337) (not e!848253))))

(assert (=> b!1323813 (= res!595337 (= (originalCharacters!3181 t1!34) (list!5066 (dynLambda!5900 (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (value!75724 t1!34)))))))

(declare-fun b!1323814 () Bool)

(assert (=> b!1323814 (= e!848253 (= (size!10920 t1!34) (size!10926 (originalCharacters!3181 t1!34))))))

(assert (= (and d!373972 res!595336) b!1323813))

(assert (= (and b!1323813 res!595337) b!1323814))

(declare-fun b_lambda!38777 () Bool)

(assert (=> (not b_lambda!38777) (not b!1323813)))

(assert (=> b!1323813 t!118717))

(declare-fun b_and!88411 () Bool)

(assert (= b_and!88395 (and (=> t!118717 result!85188) b_and!88411)))

(assert (=> b!1323813 t!118719))

(declare-fun b_and!88413 () Bool)

(assert (= b_and!88397 (and (=> t!118719 result!85192) b_and!88413)))

(assert (=> b!1323813 t!118721))

(declare-fun b_and!88415 () Bool)

(assert (= b_and!88399 (and (=> t!118721 result!85194) b_and!88415)))

(declare-fun m!1480389 () Bool)

(assert (=> d!373972 m!1480389))

(assert (=> b!1323813 m!1479875))

(assert (=> b!1323813 m!1479875))

(declare-fun m!1480391 () Bool)

(assert (=> b!1323813 m!1480391))

(declare-fun m!1480393 () Bool)

(assert (=> b!1323814 m!1480393))

(assert (=> start!117562 d!373972))

(declare-fun d!373974 () Bool)

(declare-fun res!595338 () Bool)

(declare-fun e!848254 () Bool)

(assert (=> d!373974 (=> (not res!595338) (not e!848254))))

(assert (=> d!373974 (= res!595338 (not (isEmpty!7979 (originalCharacters!3181 t2!34))))))

(assert (=> d!373974 (= (inv!17777 t2!34) e!848254)))

(declare-fun b!1323815 () Bool)

(declare-fun res!595339 () Bool)

(assert (=> b!1323815 (=> (not res!595339) (not e!848254))))

(assert (=> b!1323815 (= res!595339 (= (originalCharacters!3181 t2!34) (list!5066 (dynLambda!5900 (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (value!75724 t2!34)))))))

(declare-fun b!1323816 () Bool)

(assert (=> b!1323816 (= e!848254 (= (size!10920 t2!34) (size!10926 (originalCharacters!3181 t2!34))))))

(assert (= (and d!373974 res!595338) b!1323815))

(assert (= (and b!1323815 res!595339) b!1323816))

(declare-fun b_lambda!38779 () Bool)

(assert (=> (not b_lambda!38779) (not b!1323815)))

(assert (=> b!1323815 t!118723))

(declare-fun b_and!88417 () Bool)

(assert (= b_and!88411 (and (=> t!118723 result!85196) b_and!88417)))

(assert (=> b!1323815 t!118725))

(declare-fun b_and!88419 () Bool)

(assert (= b_and!88413 (and (=> t!118725 result!85198) b_and!88419)))

(assert (=> b!1323815 t!118727))

(declare-fun b_and!88421 () Bool)

(assert (= b_and!88415 (and (=> t!118727 result!85200) b_and!88421)))

(declare-fun m!1480395 () Bool)

(assert (=> d!373974 m!1480395))

(assert (=> b!1323815 m!1479917))

(assert (=> b!1323815 m!1479917))

(declare-fun m!1480397 () Bool)

(assert (=> b!1323815 m!1480397))

(declare-fun m!1480399 () Bool)

(assert (=> b!1323816 m!1480399))

(assert (=> start!117562 d!373974))

(declare-fun d!373976 () Bool)

(declare-fun lt!437153 () Bool)

(declare-fun e!848255 () Bool)

(assert (=> d!373976 (= lt!437153 e!848255)))

(declare-fun res!595340 () Bool)

(assert (=> d!373976 (=> (not res!595340) (not e!848255))))

(assert (=> d!373976 (= res!595340 (= (list!5067 (_1!7404 (lex!849 thiss!19762 rules!2550 (print!788 thiss!19762 (singletonSeq!906 t2!34))))) (list!5067 (singletonSeq!906 t2!34))))))

(declare-fun e!848256 () Bool)

(assert (=> d!373976 (= lt!437153 e!848256)))

(declare-fun res!595342 () Bool)

(assert (=> d!373976 (=> (not res!595342) (not e!848256))))

(declare-fun lt!437154 () tuple2!13036)

(assert (=> d!373976 (= res!595342 (= (size!10928 (_1!7404 lt!437154)) 1))))

(assert (=> d!373976 (= lt!437154 (lex!849 thiss!19762 rules!2550 (print!788 thiss!19762 (singletonSeq!906 t2!34))))))

(assert (=> d!373976 (not (isEmpty!7974 rules!2550))))

(assert (=> d!373976 (= (rulesProduceIndividualToken!983 thiss!19762 rules!2550 t2!34) lt!437153)))

(declare-fun b!1323817 () Bool)

(declare-fun res!595341 () Bool)

(assert (=> b!1323817 (=> (not res!595341) (not e!848256))))

(assert (=> b!1323817 (= res!595341 (= (apply!3088 (_1!7404 lt!437154) 0) t2!34))))

(declare-fun b!1323818 () Bool)

(assert (=> b!1323818 (= e!848256 (isEmpty!7975 (_2!7404 lt!437154)))))

(declare-fun b!1323819 () Bool)

(assert (=> b!1323819 (= e!848255 (isEmpty!7975 (_2!7404 (lex!849 thiss!19762 rules!2550 (print!788 thiss!19762 (singletonSeq!906 t2!34))))))))

(assert (= (and d!373976 res!595342) b!1323817))

(assert (= (and b!1323817 res!595341) b!1323818))

(assert (= (and d!373976 res!595340) b!1323819))

(declare-fun m!1480401 () Bool)

(assert (=> d!373976 m!1480401))

(assert (=> d!373976 m!1479325))

(declare-fun m!1480403 () Bool)

(assert (=> d!373976 m!1480403))

(assert (=> d!373976 m!1479323))

(assert (=> d!373976 m!1479325))

(declare-fun m!1480405 () Bool)

(assert (=> d!373976 m!1480405))

(assert (=> d!373976 m!1479323))

(assert (=> d!373976 m!1480211))

(assert (=> d!373976 m!1479355))

(assert (=> d!373976 m!1479323))

(declare-fun m!1480407 () Bool)

(assert (=> b!1323817 m!1480407))

(declare-fun m!1480409 () Bool)

(assert (=> b!1323818 m!1480409))

(assert (=> b!1323819 m!1479323))

(assert (=> b!1323819 m!1479323))

(assert (=> b!1323819 m!1479325))

(assert (=> b!1323819 m!1479325))

(assert (=> b!1323819 m!1480403))

(declare-fun m!1480411 () Bool)

(assert (=> b!1323819 m!1480411))

(assert (=> b!1323043 d!373976))

(declare-fun b!1323833 () Bool)

(declare-fun e!848259 () Bool)

(declare-fun tp!383999 () Bool)

(declare-fun tp!383997 () Bool)

(assert (=> b!1323833 (= e!848259 (and tp!383999 tp!383997))))

(assert (=> b!1323050 (= tp!383931 e!848259)))

(declare-fun b!1323830 () Bool)

(declare-fun tp_is_empty!6643 () Bool)

(assert (=> b!1323830 (= e!848259 tp_is_empty!6643)))

(declare-fun b!1323832 () Bool)

(declare-fun tp!384000 () Bool)

(assert (=> b!1323832 (= e!848259 tp!384000)))

(declare-fun b!1323831 () Bool)

(declare-fun tp!383996 () Bool)

(declare-fun tp!383998 () Bool)

(assert (=> b!1323831 (= e!848259 (and tp!383996 tp!383998))))

(assert (= (and b!1323050 ((_ is ElementMatch!3633) (regex!2319 (rule!4064 t2!34)))) b!1323830))

(assert (= (and b!1323050 ((_ is Concat!6043) (regex!2319 (rule!4064 t2!34)))) b!1323831))

(assert (= (and b!1323050 ((_ is Star!3633) (regex!2319 (rule!4064 t2!34)))) b!1323832))

(assert (= (and b!1323050 ((_ is Union!3633) (regex!2319 (rule!4064 t2!34)))) b!1323833))

(declare-fun b!1323838 () Bool)

(declare-fun e!848262 () Bool)

(declare-fun tp!384003 () Bool)

(assert (=> b!1323838 (= e!848262 (and tp_is_empty!6643 tp!384003))))

(assert (=> b!1323039 (= tp!383926 e!848262)))

(assert (= (and b!1323039 ((_ is Cons!13402) (originalCharacters!3181 t2!34))) b!1323838))

(declare-fun b!1323839 () Bool)

(declare-fun e!848263 () Bool)

(declare-fun tp!384004 () Bool)

(assert (=> b!1323839 (= e!848263 (and tp_is_empty!6643 tp!384004))))

(assert (=> b!1323026 (= tp!383928 e!848263)))

(assert (= (and b!1323026 ((_ is Cons!13402) (originalCharacters!3181 t1!34))) b!1323839))

(declare-fun b!1323850 () Bool)

(declare-fun b_free!31899 () Bool)

(declare-fun b_next!32603 () Bool)

(assert (=> b!1323850 (= b_free!31899 (not b_next!32603))))

(declare-fun tp!384016 () Bool)

(declare-fun b_and!88423 () Bool)

(assert (=> b!1323850 (= tp!384016 b_and!88423)))

(declare-fun b_free!31901 () Bool)

(declare-fun b_next!32605 () Bool)

(assert (=> b!1323850 (= b_free!31901 (not b_next!32605))))

(declare-fun tb!70205 () Bool)

(declare-fun t!118736 () Bool)

(assert (=> (and b!1323850 (= (toChars!3409 (transformation!2319 (h!18805 (t!118699 rules!2550)))) (toChars!3409 (transformation!2319 (rule!4064 t1!34)))) t!118736) tb!70205))

(declare-fun result!85218 () Bool)

(assert (= result!85218 result!85188))

(assert (=> d!373804 t!118736))

(declare-fun t!118738 () Bool)

(declare-fun tb!70207 () Bool)

(assert (=> (and b!1323850 (= (toChars!3409 (transformation!2319 (h!18805 (t!118699 rules!2550)))) (toChars!3409 (transformation!2319 (rule!4064 t2!34)))) t!118738) tb!70207))

(declare-fun result!85220 () Bool)

(assert (= result!85220 result!85196))

(assert (=> d!373820 t!118738))

(assert (=> b!1323813 t!118736))

(assert (=> b!1323815 t!118738))

(declare-fun tp!384013 () Bool)

(declare-fun b_and!88425 () Bool)

(assert (=> b!1323850 (= tp!384013 (and (=> t!118736 result!85218) (=> t!118738 result!85220) b_and!88425))))

(declare-fun e!848273 () Bool)

(assert (=> b!1323850 (= e!848273 (and tp!384016 tp!384013))))

(declare-fun b!1323849 () Bool)

(declare-fun e!848274 () Bool)

(declare-fun tp!384014 () Bool)

(assert (=> b!1323849 (= e!848274 (and tp!384014 (inv!17774 (tag!2581 (h!18805 (t!118699 rules!2550)))) (inv!17778 (transformation!2319 (h!18805 (t!118699 rules!2550)))) e!848273))))

(declare-fun b!1323848 () Bool)

(declare-fun e!848272 () Bool)

(declare-fun tp!384015 () Bool)

(assert (=> b!1323848 (= e!848272 (and e!848274 tp!384015))))

(assert (=> b!1323015 (= tp!383934 e!848272)))

(assert (= b!1323849 b!1323850))

(assert (= b!1323848 b!1323849))

(assert (= (and b!1323015 ((_ is Cons!13404) (t!118699 rules!2550))) b!1323848))

(declare-fun m!1480413 () Bool)

(assert (=> b!1323849 m!1480413))

(declare-fun m!1480415 () Bool)

(assert (=> b!1323849 m!1480415))

(declare-fun b!1323854 () Bool)

(declare-fun e!848276 () Bool)

(declare-fun tp!384020 () Bool)

(declare-fun tp!384018 () Bool)

(assert (=> b!1323854 (= e!848276 (and tp!384020 tp!384018))))

(assert (=> b!1323038 (= tp!383932 e!848276)))

(declare-fun b!1323851 () Bool)

(assert (=> b!1323851 (= e!848276 tp_is_empty!6643)))

(declare-fun b!1323853 () Bool)

(declare-fun tp!384021 () Bool)

(assert (=> b!1323853 (= e!848276 tp!384021)))

(declare-fun b!1323852 () Bool)

(declare-fun tp!384017 () Bool)

(declare-fun tp!384019 () Bool)

(assert (=> b!1323852 (= e!848276 (and tp!384017 tp!384019))))

(assert (= (and b!1323038 ((_ is ElementMatch!3633) (regex!2319 (h!18805 rules!2550)))) b!1323851))

(assert (= (and b!1323038 ((_ is Concat!6043) (regex!2319 (h!18805 rules!2550)))) b!1323852))

(assert (= (and b!1323038 ((_ is Star!3633) (regex!2319 (h!18805 rules!2550)))) b!1323853))

(assert (= (and b!1323038 ((_ is Union!3633) (regex!2319 (h!18805 rules!2550)))) b!1323854))

(declare-fun b!1323858 () Bool)

(declare-fun e!848277 () Bool)

(declare-fun tp!384025 () Bool)

(declare-fun tp!384023 () Bool)

(assert (=> b!1323858 (= e!848277 (and tp!384025 tp!384023))))

(assert (=> b!1323048 (= tp!383935 e!848277)))

(declare-fun b!1323855 () Bool)

(assert (=> b!1323855 (= e!848277 tp_is_empty!6643)))

(declare-fun b!1323857 () Bool)

(declare-fun tp!384026 () Bool)

(assert (=> b!1323857 (= e!848277 tp!384026)))

(declare-fun b!1323856 () Bool)

(declare-fun tp!384022 () Bool)

(declare-fun tp!384024 () Bool)

(assert (=> b!1323856 (= e!848277 (and tp!384022 tp!384024))))

(assert (= (and b!1323048 ((_ is ElementMatch!3633) (regex!2319 (rule!4064 t1!34)))) b!1323855))

(assert (= (and b!1323048 ((_ is Concat!6043) (regex!2319 (rule!4064 t1!34)))) b!1323856))

(assert (= (and b!1323048 ((_ is Star!3633) (regex!2319 (rule!4064 t1!34)))) b!1323857))

(assert (= (and b!1323048 ((_ is Union!3633) (regex!2319 (rule!4064 t1!34)))) b!1323858))

(declare-fun b_lambda!38781 () Bool)

(assert (= b_lambda!38771 (or b!1323042 b_lambda!38781)))

(declare-fun bs!331276 () Bool)

(declare-fun d!373978 () Bool)

(assert (= bs!331276 (and d!373978 b!1323042)))

(declare-fun res!595343 () Bool)

(declare-fun e!848278 () Bool)

(assert (=> bs!331276 (=> (not res!595343) (not e!848278))))

(assert (=> bs!331276 (= res!595343 (validRegex!1559 (h!18807 (map!2945 rules!2550 lambda!54236))))))

(assert (=> bs!331276 (= (dynLambda!5905 lambda!54237 (h!18807 (map!2945 rules!2550 lambda!54236))) e!848278)))

(declare-fun b!1323859 () Bool)

(assert (=> b!1323859 (= e!848278 (matchR!1635 (h!18807 (map!2945 rules!2550 lambda!54236)) lt!436883))))

(assert (= (and bs!331276 res!595343) b!1323859))

(declare-fun m!1480417 () Bool)

(assert (=> bs!331276 m!1480417))

(declare-fun m!1480419 () Bool)

(assert (=> b!1323859 m!1480419))

(assert (=> b!1323695 d!373978))

(declare-fun b_lambda!38783 () Bool)

(assert (= b_lambda!38713 (or b!1323041 b_lambda!38783)))

(declare-fun bs!331277 () Bool)

(declare-fun d!373980 () Bool)

(assert (= bs!331277 (and d!373980 b!1323041)))

(assert (=> bs!331277 (= (dynLambda!5898 lambda!54238 lt!436960) (= (regex!2319 lt!436960) lt!436874))))

(assert (=> d!373722 d!373980))

(declare-fun b_lambda!38785 () Bool)

(assert (= b_lambda!38773 (or b!1323042 b_lambda!38785)))

(declare-fun bs!331278 () Bool)

(declare-fun d!373982 () Bool)

(assert (= bs!331278 (and d!373982 b!1323042)))

(declare-fun res!595344 () Bool)

(declare-fun e!848279 () Bool)

(assert (=> bs!331278 (=> (not res!595344) (not e!848279))))

(assert (=> bs!331278 (= res!595344 (validRegex!1559 lt!437100))))

(assert (=> bs!331278 (= (dynLambda!5905 lambda!54237 lt!437100) e!848279)))

(declare-fun b!1323860 () Bool)

(assert (=> b!1323860 (= e!848279 (matchR!1635 lt!437100 lt!436883))))

(assert (= (and bs!331278 res!595344) b!1323860))

(declare-fun m!1480421 () Bool)

(assert (=> bs!331278 m!1480421))

(declare-fun m!1480423 () Bool)

(assert (=> b!1323860 m!1480423))

(assert (=> d!373916 d!373982))

(declare-fun b_lambda!38787 () Bool)

(assert (= b_lambda!38705 (or b!1323034 b_lambda!38787)))

(declare-fun bs!331279 () Bool)

(declare-fun d!373984 () Bool)

(assert (= bs!331279 (and d!373984 b!1323034)))

(declare-fun ruleValid!570 (LexerInterface!2014 Rule!4438) Bool)

(assert (=> bs!331279 (= (dynLambda!5898 lambda!54239 (rule!4064 t1!34)) (ruleValid!570 thiss!19762 (rule!4064 t1!34)))))

(declare-fun m!1480425 () Bool)

(assert (=> bs!331279 m!1480425))

(assert (=> d!373676 d!373984))

(declare-fun b_lambda!38789 () Bool)

(assert (= b_lambda!38777 (or (and b!1323028 b_free!31885 (= (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (toChars!3409 (transformation!2319 (rule!4064 t1!34))))) (and b!1323053 b_free!31889 (= (toChars!3409 (transformation!2319 (h!18805 rules!2550))) (toChars!3409 (transformation!2319 (rule!4064 t1!34))))) (and b!1323037 b_free!31893) (and b!1323850 b_free!31901 (= (toChars!3409 (transformation!2319 (h!18805 (t!118699 rules!2550)))) (toChars!3409 (transformation!2319 (rule!4064 t1!34))))) b_lambda!38789)))

(declare-fun b_lambda!38791 () Bool)

(assert (= b_lambda!38711 (or b!1323041 b_lambda!38791)))

(declare-fun bs!331280 () Bool)

(declare-fun d!373986 () Bool)

(assert (= bs!331280 (and d!373986 b!1323041)))

(assert (=> bs!331280 (= (dynLambda!5898 lambda!54238 (h!18805 rules!2550)) (= (regex!2319 (h!18805 rules!2550)) lt!436874))))

(assert (=> b!1323274 d!373986))

(declare-fun b_lambda!38793 () Bool)

(assert (= b_lambda!38733 (or (and b!1323028 b_free!31885) (and b!1323053 b_free!31889 (= (toChars!3409 (transformation!2319 (h!18805 rules!2550))) (toChars!3409 (transformation!2319 (rule!4064 t2!34))))) (and b!1323037 b_free!31893 (= (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (toChars!3409 (transformation!2319 (rule!4064 t2!34))))) (and b!1323850 b_free!31901 (= (toChars!3409 (transformation!2319 (h!18805 (t!118699 rules!2550)))) (toChars!3409 (transformation!2319 (rule!4064 t2!34))))) b_lambda!38793)))

(declare-fun b_lambda!38795 () Bool)

(assert (= b_lambda!38731 (or (and b!1323028 b_free!31885 (= (toChars!3409 (transformation!2319 (rule!4064 t2!34))) (toChars!3409 (transformation!2319 (rule!4064 t1!34))))) (and b!1323053 b_free!31889 (= (toChars!3409 (transformation!2319 (h!18805 rules!2550))) (toChars!3409 (transformation!2319 (rule!4064 t1!34))))) (and b!1323037 b_free!31893) (and b!1323850 b_free!31901 (= (toChars!3409 (transformation!2319 (h!18805 (t!118699 rules!2550)))) (toChars!3409 (transformation!2319 (rule!4064 t1!34))))) b_lambda!38795)))

(declare-fun b_lambda!38797 () Bool)

(assert (= b_lambda!38703 (or b!1323034 b_lambda!38797)))

(declare-fun bs!331281 () Bool)

(declare-fun d!373988 () Bool)

(assert (= bs!331281 (and d!373988 b!1323034)))

(assert (=> bs!331281 (= (dynLambda!5898 lambda!54239 (rule!4064 t2!34)) (ruleValid!570 thiss!19762 (rule!4064 t2!34)))))

(declare-fun m!1480427 () Bool)

(assert (=> bs!331281 m!1480427))

(assert (=> d!373670 d!373988))

(declare-fun b_lambda!38799 () Bool)

(assert (= b_lambda!38775 (or b!1323032 b_lambda!38799)))

(declare-fun bs!331282 () Bool)

(declare-fun d!373990 () Bool)

(assert (= bs!331282 (and d!373990 b!1323032)))

(declare-fun res!595345 () Bool)

(declare-fun e!848280 () Bool)

(assert (=> bs!331282 (=> (not res!595345) (not e!848280))))

(assert (=> bs!331282 (= res!595345 (matchR!1635 lt!436875 lt!437149))))

(assert (=> bs!331282 (= (dynLambda!5910 lambda!54235 lt!437149) e!848280)))

(declare-fun b!1323861 () Bool)

(assert (=> b!1323861 (= e!848280 (isPrefix!1082 lt!436872 lt!437149))))

(assert (= (and bs!331282 res!595345) b!1323861))

(declare-fun m!1480429 () Bool)

(assert (=> bs!331282 m!1480429))

(declare-fun m!1480431 () Bool)

(assert (=> b!1323861 m!1480431))

(assert (=> d!373966 d!373990))

(declare-fun b_lambda!38801 () Bool)

(assert (= b_lambda!38769 (or b!1323042 b_lambda!38801)))

(declare-fun bs!331283 () Bool)

(declare-fun d!373992 () Bool)

(assert (= bs!331283 (and d!373992 b!1323042)))

(assert (=> bs!331283 (= (dynLambda!5904 lambda!54236 (h!18805 rules!2550)) (regex!2319 (h!18805 rules!2550)))))

(assert (=> b!1323681 d!373992))

(declare-fun b_lambda!38803 () Bool)

(assert (= b_lambda!38779 (or (and b!1323028 b_free!31885) (and b!1323053 b_free!31889 (= (toChars!3409 (transformation!2319 (h!18805 rules!2550))) (toChars!3409 (transformation!2319 (rule!4064 t2!34))))) (and b!1323037 b_free!31893 (= (toChars!3409 (transformation!2319 (rule!4064 t1!34))) (toChars!3409 (transformation!2319 (rule!4064 t2!34))))) (and b!1323850 b_free!31901 (= (toChars!3409 (transformation!2319 (h!18805 (t!118699 rules!2550)))) (toChars!3409 (transformation!2319 (rule!4064 t2!34))))) b_lambda!38803)))

(declare-fun b_lambda!38805 () Bool)

(assert (= b_lambda!38707 (or b!1323034 b_lambda!38805)))

(declare-fun bs!331284 () Bool)

(declare-fun d!373994 () Bool)

(assert (= bs!331284 (and d!373994 b!1323034)))

(assert (=> bs!331284 (= (dynLambda!5898 lambda!54239 lt!436877) (ruleValid!570 thiss!19762 lt!436877))))

(declare-fun m!1480433 () Bool)

(assert (=> bs!331284 m!1480433))

(assert (=> d!373678 d!373994))

(check-sat (not b!1323621) (not d!373894) (not d!373890) (not d!373686) (not b_lambda!38787) (not bs!331284) (not d!373916) (not b!1323839) (not b!1323660) (not d!373676) (not bm!89778) (not b!1323860) (not b!1323455) (not d!373836) (not b!1323435) (not b!1323704) (not bm!89750) (not b_lambda!38781) (not bs!331282) (not b!1323121) (not b_lambda!38783) (not b_lambda!38795) (not b!1323458) (not b!1323783) (not d!373958) (not b!1323854) (not d!373818) (not d!373936) (not b!1323833) (not b!1323767) (not b!1323506) (not b!1323831) (not b!1323796) (not d!373816) (not b!1323122) (not d!373956) (not b_lambda!38793) (not tb!70195) (not b!1323804) (not b!1323768) (not b!1323483) (not tb!70189) (not d!373966) (not d!373706) (not b!1323482) (not b!1323466) (not b_next!32603) (not b_next!32589) (not d!373792) (not bm!89772) (not d!373824) (not d!373922) (not b!1323705) (not b!1323771) (not d!373944) (not b!1323501) (not b!1323861) (not bs!331281) (not bm!89739) (not d!373804) (not b!1323757) (not b!1323099) (not b_lambda!38791) (not b!1323766) (not b!1323814) (not b!1323703) (not d!373940) (not b_next!32591) (not b!1323817) (not d!373670) (not b!1323515) (not b!1323098) (not d!373704) (not b!1323436) (not d!373668) (not d!373948) (not b!1323216) (not d!373918) (not b!1323772) (not b!1323785) (not d!373972) (not b!1323818) (not b!1323720) (not d!373800) (not d!373776) (not b!1323793) (not d!373822) (not b!1323273) (not b!1323853) (not d!373784) (not b!1323755) (not b!1323718) (not b!1323491) (not b!1323806) (not b_next!32605) (not d!373938) (not b!1323140) (not d!373970) (not b!1323769) (not b!1323200) (not b!1323103) (not b!1323698) (not b!1323608) (not b_lambda!38801) (not b!1323795) tp_is_empty!6643 (not b!1323805) (not b!1323502) (not b!1323490) b_and!88359 (not d!373952) (not b_lambda!38803) (not d!373732) (not b!1323815) (not b_lambda!38799) (not b!1323747) (not b!1323694) (not b!1323819) b_and!88423 (not d!373928) (not d!373798) (not b!1323511) (not b_lambda!38785) (not d!373964) (not b!1323465) (not b!1323612) b_and!88419 (not d!373834) (not b!1323746) (not bs!331279) (not d!373828) (not b!1323849) (not b!1323856) (not b!1323492) (not b_next!32587) (not b!1323437) (not b!1323858) (not d!373678) b_and!88367 (not b!1323102) (not d!373778) (not b!1323838) (not b!1323681) (not d!373722) (not b!1323618) (not b!1323615) (not b!1323740) (not b!1323750) (not b_next!32593) (not b!1323857) (not b_lambda!38789) (not b!1323802) (not b_next!32595) (not b!1323616) (not b!1323748) (not d!373932) (not b!1323701) (not b!1323744) (not b!1323859) (not d!373946) (not d!373794) (not b!1323275) (not b!1323505) (not b!1323832) (not d!373962) (not b!1323752) (not b!1323448) (not d!373768) (not b!1323852) (not b!1323105) (not b!1323816) (not bm!89777) (not d!373716) (not d!373896) (not bs!331276) (not d!373826) (not b!1323123) (not d!373960) (not b!1323697) (not bs!331278) (not b!1323784) (not b!1323194) (not d!373974) b_and!88425 (not b!1323743) (not bm!89774) (not b_lambda!38797) (not b!1323498) b_and!88363 (not b!1323508) (not d!373680) (not b!1323719) (not d!373924) (not d!373708) (not b!1323611) (not b!1323472) (not d!373802) (not b_next!32597) (not d!373930) (not b!1323848) (not b!1323108) (not b!1323702) (not b_lambda!38805) (not d!373976) (not d!373806) (not b!1323489) (not d!373920) (not d!373954) b_and!88421 (not b!1323742) (not d!373886) (not b!1323434) (not d!373820) (not b!1323606) (not d!373968) b_and!88417 (not b!1323756) (not b!1323739) (not bm!89751) (not b!1323276) (not bm!89749) (not d!373832) (not b!1323765) (not b!1323764) (not b!1323467) (not b!1323607) (not b!1323813) (not d!373950) (not b!1323741))
(check-sat (not b_next!32591) (not b_next!32605) b_and!88359 b_and!88423 b_and!88419 (not b_next!32587) b_and!88367 b_and!88417 (not b_next!32603) (not b_next!32589) (not b_next!32593) (not b_next!32595) b_and!88425 b_and!88363 (not b_next!32597) b_and!88421)
