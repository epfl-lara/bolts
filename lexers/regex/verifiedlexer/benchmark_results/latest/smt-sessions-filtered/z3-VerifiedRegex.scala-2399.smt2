; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124190 () Bool)

(assert start!124190)

(declare-fun b!1373451 () Bool)

(declare-fun b_free!33259 () Bool)

(declare-fun b_next!33963 () Bool)

(assert (=> b!1373451 (= b_free!33259 (not b_next!33963))))

(declare-fun tp!394185 () Bool)

(declare-fun b_and!92027 () Bool)

(assert (=> b!1373451 (= tp!394185 b_and!92027)))

(declare-fun b_free!33261 () Bool)

(declare-fun b_next!33965 () Bool)

(assert (=> b!1373451 (= b_free!33261 (not b_next!33965))))

(declare-fun tp!394193 () Bool)

(declare-fun b_and!92029 () Bool)

(assert (=> b!1373451 (= tp!394193 b_and!92029)))

(declare-fun b!1373449 () Bool)

(declare-fun b_free!33263 () Bool)

(declare-fun b_next!33967 () Bool)

(assert (=> b!1373449 (= b_free!33263 (not b_next!33967))))

(declare-fun tp!394190 () Bool)

(declare-fun b_and!92031 () Bool)

(assert (=> b!1373449 (= tp!394190 b_and!92031)))

(declare-fun b_free!33265 () Bool)

(declare-fun b_next!33969 () Bool)

(assert (=> b!1373449 (= b_free!33265 (not b_next!33969))))

(declare-fun tp!394186 () Bool)

(declare-fun b_and!92033 () Bool)

(assert (=> b!1373449 (= tp!394186 b_and!92033)))

(declare-fun b!1373465 () Bool)

(declare-fun b_free!33267 () Bool)

(declare-fun b_next!33971 () Bool)

(assert (=> b!1373465 (= b_free!33267 (not b_next!33971))))

(declare-fun tp!394195 () Bool)

(declare-fun b_and!92035 () Bool)

(assert (=> b!1373465 (= tp!394195 b_and!92035)))

(declare-fun b_free!33269 () Bool)

(declare-fun b_next!33973 () Bool)

(assert (=> b!1373465 (= b_free!33269 (not b_next!33973))))

(declare-fun tp!394191 () Bool)

(declare-fun b_and!92037 () Bool)

(assert (=> b!1373465 (= tp!394191 b_and!92037)))

(declare-fun b!1373443 () Bool)

(assert (=> b!1373443 true))

(assert (=> b!1373443 true))

(declare-fun b!1373464 () Bool)

(assert (=> b!1373464 true))

(declare-fun b!1373444 () Bool)

(assert (=> b!1373444 true))

(declare-fun bs!335954 () Bool)

(declare-fun b!1373448 () Bool)

(assert (= bs!335954 (and b!1373448 b!1373444)))

(declare-fun lambda!58381 () Int)

(declare-fun lambda!58380 () Int)

(assert (=> bs!335954 (not (= lambda!58381 lambda!58380))))

(assert (=> b!1373448 true))

(declare-fun b!1373439 () Bool)

(declare-fun e!877837 () Bool)

(declare-fun e!877842 () Bool)

(declare-fun tp!394196 () Bool)

(assert (=> b!1373439 (= e!877837 (and e!877842 tp!394196))))

(declare-fun res!618835 () Bool)

(declare-fun e!877839 () Bool)

(assert (=> start!124190 (=> (not res!618835) (not e!877839))))

(declare-datatypes ((LexerInterface!2102 0))(
  ( (LexerInterfaceExt!2099 (__x!8823 Int)) (Lexer!2100) )
))
(declare-fun thiss!19762 () LexerInterface!2102)

(get-info :version)

(assert (=> start!124190 (= res!618835 ((_ is Lexer!2100) thiss!19762))))

(assert (=> start!124190 e!877839))

(assert (=> start!124190 true))

(assert (=> start!124190 e!877837))

(declare-datatypes ((List!13968 0))(
  ( (Nil!13902) (Cons!13902 (h!19303 (_ BitVec 16)) (t!121639 List!13968)) )
))
(declare-datatypes ((TokenValue!2497 0))(
  ( (FloatLiteralValue!4994 (text!17924 List!13968)) (TokenValueExt!2496 (__x!8824 Int)) (Broken!12485 (value!78206 List!13968)) (Object!2562) (End!2497) (Def!2497) (Underscore!2497) (Match!2497) (Else!2497) (Error!2497) (Case!2497) (If!2497) (Extends!2497) (Abstract!2497) (Class!2497) (Val!2497) (DelimiterValue!4994 (del!2557 List!13968)) (KeywordValue!2503 (value!78207 List!13968)) (CommentValue!4994 (value!78208 List!13968)) (WhitespaceValue!4994 (value!78209 List!13968)) (IndentationValue!2497 (value!78210 List!13968)) (String!16720) (Int32!2497) (Broken!12486 (value!78211 List!13968)) (Boolean!2498) (Unit!20132) (OperatorValue!2500 (op!2557 List!13968)) (IdentifierValue!4994 (value!78212 List!13968)) (IdentifierValue!4995 (value!78213 List!13968)) (WhitespaceValue!4995 (value!78214 List!13968)) (True!4994) (False!4994) (Broken!12487 (value!78215 List!13968)) (Broken!12488 (value!78216 List!13968)) (True!4995) (RightBrace!2497) (RightBracket!2497) (Colon!2497) (Null!2497) (Comma!2497) (LeftBracket!2497) (False!4995) (LeftBrace!2497) (ImaginaryLiteralValue!2497 (text!17925 List!13968)) (StringLiteralValue!7491 (value!78217 List!13968)) (EOFValue!2497 (value!78218 List!13968)) (IdentValue!2497 (value!78219 List!13968)) (DelimiterValue!4995 (value!78220 List!13968)) (DedentValue!2497 (value!78221 List!13968)) (NewLineValue!2497 (value!78222 List!13968)) (IntegerValue!7491 (value!78223 (_ BitVec 32)) (text!17926 List!13968)) (IntegerValue!7492 (value!78224 Int) (text!17927 List!13968)) (Times!2497) (Or!2497) (Equal!2497) (Minus!2497) (Broken!12489 (value!78225 List!13968)) (And!2497) (Div!2497) (LessEqual!2497) (Mod!2497) (Concat!6218) (Not!2497) (Plus!2497) (SpaceValue!2497 (value!78226 List!13968)) (IntegerValue!7493 (value!78227 Int) (text!17928 List!13968)) (StringLiteralValue!7492 (text!17929 List!13968)) (FloatLiteralValue!4995 (text!17930 List!13968)) (BytesLiteralValue!2497 (value!78228 List!13968)) (CommentValue!4995 (value!78229 List!13968)) (StringLiteralValue!7493 (value!78230 List!13968)) (ErrorTokenValue!2497 (msg!2558 List!13968)) )
))
(declare-datatypes ((C!7732 0))(
  ( (C!7733 (val!4426 Int)) )
))
(declare-datatypes ((List!13969 0))(
  ( (Nil!13903) (Cons!13903 (h!19304 C!7732) (t!121640 List!13969)) )
))
(declare-datatypes ((IArray!9157 0))(
  ( (IArray!9158 (innerList!4636 List!13969)) )
))
(declare-datatypes ((Conc!4576 0))(
  ( (Node!4576 (left!11893 Conc!4576) (right!12223 Conc!4576) (csize!9382 Int) (cheight!4787 Int)) (Leaf!6976 (xs!7303 IArray!9157) (csize!9383 Int)) (Empty!4576) )
))
(declare-datatypes ((BalanceConc!9092 0))(
  ( (BalanceConc!9093 (c!226060 Conc!4576)) )
))
(declare-datatypes ((Regex!3721 0))(
  ( (ElementMatch!3721 (c!226061 C!7732)) (Concat!6219 (regOne!7954 Regex!3721) (regTwo!7954 Regex!3721)) (EmptyExpr!3721) (Star!3721 (reg!4050 Regex!3721)) (EmptyLang!3721) (Union!3721 (regOne!7955 Regex!3721) (regTwo!7955 Regex!3721)) )
))
(declare-datatypes ((String!16721 0))(
  ( (String!16722 (value!78231 String)) )
))
(declare-datatypes ((TokenValueInjection!4654 0))(
  ( (TokenValueInjection!4655 (toValue!3678 Int) (toChars!3537 Int)) )
))
(declare-datatypes ((Rule!4614 0))(
  ( (Rule!4615 (regex!2407 Regex!3721) (tag!2669 String!16721) (isSeparator!2407 Bool) (transformation!2407 TokenValueInjection!4654)) )
))
(declare-datatypes ((Token!4476 0))(
  ( (Token!4477 (value!78232 TokenValue!2497) (rule!4164 Rule!4614) (size!11409 Int) (originalCharacters!3269 List!13969)) )
))
(declare-fun t1!34 () Token!4476)

(declare-fun e!877856 () Bool)

(declare-fun inv!18261 (Token!4476) Bool)

(assert (=> start!124190 (and (inv!18261 t1!34) e!877856)))

(declare-fun t2!34 () Token!4476)

(declare-fun e!877845 () Bool)

(assert (=> start!124190 (and (inv!18261 t2!34) e!877845)))

(declare-fun e!877849 () Bool)

(declare-fun b!1373440 () Bool)

(declare-fun e!877850 () Bool)

(declare-fun tp!394189 () Bool)

(declare-fun inv!18258 (String!16721) Bool)

(declare-fun inv!18262 (TokenValueInjection!4654) Bool)

(assert (=> b!1373440 (= e!877849 (and tp!394189 (inv!18258 (tag!2669 (rule!4164 t2!34))) (inv!18262 (transformation!2407 (rule!4164 t2!34))) e!877850))))

(declare-fun b!1373441 () Bool)

(declare-fun res!618825 () Bool)

(declare-fun e!877836 () Bool)

(assert (=> b!1373441 (=> res!618825 e!877836)))

(declare-fun lt!456122 () List!13969)

(declare-fun lt!456121 () C!7732)

(declare-fun contains!2607 (List!13969 C!7732) Bool)

(assert (=> b!1373441 (= res!618825 (not (contains!2607 lt!456122 lt!456121)))))

(declare-fun b!1373442 () Bool)

(declare-fun res!618830 () Bool)

(declare-fun e!877857 () Bool)

(assert (=> b!1373442 (=> res!618830 e!877857)))

(declare-datatypes ((List!13970 0))(
  ( (Nil!13904) (Cons!13904 (h!19305 Token!4476) (t!121641 List!13970)) )
))
(declare-fun lt!456143 () List!13970)

(declare-fun lt!456142 () BalanceConc!9092)

(declare-datatypes ((List!13971 0))(
  ( (Nil!13905) (Cons!13905 (h!19306 Rule!4614) (t!121642 List!13971)) )
))
(declare-fun rules!2550 () List!13971)

(declare-datatypes ((tuple2!13506 0))(
  ( (tuple2!13507 (_1!7639 List!13970) (_2!7639 List!13969)) )
))
(declare-fun lexList!620 (LexerInterface!2102 List!13971 List!13969) tuple2!13506)

(declare-fun list!5362 (BalanceConc!9092) List!13969)

(assert (=> b!1373442 (= res!618830 (not (= (lexList!620 thiss!19762 rules!2550 (list!5362 lt!456142)) (tuple2!13507 lt!456143 Nil!13903))))))

(declare-fun e!877854 () Bool)

(declare-fun e!877833 () Bool)

(assert (=> b!1373443 (= e!877854 (not e!877833))))

(declare-fun res!618813 () Bool)

(assert (=> b!1373443 (=> res!618813 e!877833)))

(declare-fun lambda!58377 () Int)

(declare-fun Exists!873 (Int) Bool)

(assert (=> b!1373443 (= res!618813 (not (Exists!873 lambda!58377)))))

(assert (=> b!1373443 (Exists!873 lambda!58377)))

(declare-datatypes ((Unit!20133 0))(
  ( (Unit!20134) )
))
(declare-fun lt!456137 () Unit!20133)

(declare-fun lt!456141 () Regex!3721)

(declare-fun lt!456127 () List!13969)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!191 (Regex!3721 List!13969) Unit!20133)

(assert (=> b!1373443 (= lt!456137 (lemmaPrefixMatchThenExistsStringThatMatches!191 lt!456141 lt!456127))))

(declare-fun e!877835 () Bool)

(declare-fun e!877858 () Bool)

(assert (=> b!1373444 (= e!877835 e!877858)))

(declare-fun res!618838 () Bool)

(assert (=> b!1373444 (=> res!618838 e!877858)))

(declare-fun exists!472 (List!13971 Int) Bool)

(assert (=> b!1373444 (= res!618838 (not (exists!472 rules!2550 lambda!58380)))))

(assert (=> b!1373444 (exists!472 rules!2550 lambda!58380)))

(declare-fun lt!456135 () Unit!20133)

(declare-fun lt!456134 () Regex!3721)

(declare-fun lambda!58378 () Int)

(declare-fun lemmaMapContains!126 (List!13971 Int Regex!3721) Unit!20133)

(assert (=> b!1373444 (= lt!456135 (lemmaMapContains!126 rules!2550 lambda!58378 lt!456134))))

(declare-fun b!1373445 () Bool)

(declare-fun res!618817 () Bool)

(assert (=> b!1373445 (=> (not res!618817) (not e!877839))))

(declare-fun isEmpty!8388 (List!13971) Bool)

(assert (=> b!1373445 (= res!618817 (not (isEmpty!8388 rules!2550)))))

(declare-fun b!1373446 () Bool)

(declare-fun e!877852 () Bool)

(declare-fun lt!456133 () List!13969)

(declare-fun matchR!1714 (Regex!3721 List!13969) Bool)

(assert (=> b!1373446 (= e!877852 (matchR!1714 (regex!2407 (rule!4164 t2!34)) lt!456133))))

(declare-fun b!1373447 () Bool)

(declare-fun res!618811 () Bool)

(assert (=> b!1373447 (=> res!618811 e!877836)))

(declare-fun lt!456136 () C!7732)

(assert (=> b!1373447 (= res!618811 (not (contains!2607 lt!456127 lt!456136)))))

(declare-fun e!877834 () Bool)

(assert (=> b!1373448 (= e!877834 e!877852)))

(declare-fun res!618833 () Bool)

(assert (=> b!1373448 (=> res!618833 e!877852)))

(declare-fun lt!456128 () List!13969)

(assert (=> b!1373448 (= res!618833 (not (matchR!1714 (regex!2407 (rule!4164 t1!34)) lt!456128)))))

(declare-fun lt!456139 () Unit!20133)

(declare-fun forallContained!610 (List!13971 Int Rule!4614) Unit!20133)

(assert (=> b!1373448 (= lt!456139 (forallContained!610 rules!2550 lambda!58381 (rule!4164 t2!34)))))

(declare-fun lt!456125 () Unit!20133)

(assert (=> b!1373448 (= lt!456125 (forallContained!610 rules!2550 lambda!58381 (rule!4164 t1!34)))))

(declare-fun lt!456123 () Unit!20133)

(declare-fun lt!456138 () Rule!4614)

(assert (=> b!1373448 (= lt!456123 (forallContained!610 rules!2550 lambda!58381 lt!456138))))

(declare-fun e!877840 () Bool)

(assert (=> b!1373449 (= e!877840 (and tp!394190 tp!394186))))

(declare-fun b!1373450 () Bool)

(declare-fun e!877832 () Bool)

(assert (=> b!1373450 (= e!877839 e!877832)))

(declare-fun res!618834 () Bool)

(assert (=> b!1373450 (=> (not res!618834) (not e!877832))))

(declare-fun lt!456140 () BalanceConc!9092)

(declare-fun size!11410 (BalanceConc!9092) Int)

(assert (=> b!1373450 (= res!618834 (> (size!11410 lt!456140) 0))))

(declare-fun charsOf!1379 (Token!4476) BalanceConc!9092)

(assert (=> b!1373450 (= lt!456140 (charsOf!1379 t2!34))))

(declare-fun e!877847 () Bool)

(assert (=> b!1373451 (= e!877847 (and tp!394185 tp!394193))))

(declare-fun b!1373452 () Bool)

(declare-fun res!618832 () Bool)

(declare-fun e!877844 () Bool)

(assert (=> b!1373452 (=> res!618832 e!877844)))

(declare-fun contains!2608 (List!13971 Rule!4614) Bool)

(assert (=> b!1373452 (= res!618832 (not (contains!2608 rules!2550 (rule!4164 t1!34))))))

(declare-fun b!1373453 () Bool)

(assert (=> b!1373453 (= e!877832 e!877854)))

(declare-fun res!618828 () Bool)

(assert (=> b!1373453 (=> (not res!618828) (not e!877854))))

(declare-fun prefixMatch!230 (Regex!3721 List!13969) Bool)

(assert (=> b!1373453 (= res!618828 (prefixMatch!230 lt!456141 lt!456127))))

(declare-fun rulesRegex!290 (LexerInterface!2102 List!13971) Regex!3721)

(assert (=> b!1373453 (= lt!456141 (rulesRegex!290 thiss!19762 rules!2550))))

(declare-fun ++!3598 (List!13969 List!13969) List!13969)

(assert (=> b!1373453 (= lt!456127 (++!3598 lt!456128 (Cons!13903 lt!456136 Nil!13903)))))

(declare-fun apply!3423 (BalanceConc!9092 Int) C!7732)

(assert (=> b!1373453 (= lt!456136 (apply!3423 lt!456140 0))))

(declare-fun lt!456132 () BalanceConc!9092)

(assert (=> b!1373453 (= lt!456128 (list!5362 lt!456132))))

(assert (=> b!1373453 (= lt!456132 (charsOf!1379 t1!34))))

(declare-fun b!1373454 () Bool)

(declare-fun res!618821 () Bool)

(assert (=> b!1373454 (=> (not res!618821) (not e!877839))))

(declare-fun rulesProduceIndividualToken!1071 (LexerInterface!2102 List!13971 Token!4476) Bool)

(assert (=> b!1373454 (= res!618821 (rulesProduceIndividualToken!1071 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1373455 () Bool)

(declare-fun res!618810 () Bool)

(assert (=> b!1373455 (=> (not res!618810) (not e!877839))))

(declare-fun rulesInvariant!1972 (LexerInterface!2102 List!13971) Bool)

(assert (=> b!1373455 (= res!618810 (rulesInvariant!1972 thiss!19762 rules!2550))))

(declare-fun b!1373456 () Bool)

(declare-fun e!877841 () Bool)

(assert (=> b!1373456 (= e!877841 e!877836)))

(declare-fun res!618816 () Bool)

(assert (=> b!1373456 (=> res!618816 e!877836)))

(assert (=> b!1373456 (= res!618816 (not (contains!2607 lt!456127 lt!456121)))))

(assert (=> b!1373456 (= lt!456121 (apply!3423 lt!456132 0))))

(declare-fun tp!394188 () Bool)

(declare-fun b!1373457 () Bool)

(declare-fun e!877853 () Bool)

(assert (=> b!1373457 (= e!877853 (and tp!394188 (inv!18258 (tag!2669 (rule!4164 t1!34))) (inv!18262 (transformation!2407 (rule!4164 t1!34))) e!877847))))

(declare-fun b!1373458 () Bool)

(declare-fun res!618826 () Bool)

(assert (=> b!1373458 (=> res!618826 e!877834)))

(assert (=> b!1373458 (= res!618826 (not (contains!2608 rules!2550 (rule!4164 t2!34))))))

(declare-fun b!1373459 () Bool)

(declare-fun res!618807 () Bool)

(assert (=> b!1373459 (=> res!618807 e!877844)))

(declare-datatypes ((IArray!9159 0))(
  ( (IArray!9160 (innerList!4637 List!13970)) )
))
(declare-datatypes ((Conc!4577 0))(
  ( (Node!4577 (left!11894 Conc!4577) (right!12224 Conc!4577) (csize!9384 Int) (cheight!4788 Int)) (Leaf!6977 (xs!7304 IArray!9159) (csize!9385 Int)) (Empty!4577) )
))
(declare-datatypes ((BalanceConc!9094 0))(
  ( (BalanceConc!9095 (c!226062 Conc!4577)) )
))
(declare-datatypes ((tuple2!13508 0))(
  ( (tuple2!13509 (_1!7640 BalanceConc!9094) (_2!7640 BalanceConc!9092)) )
))
(declare-fun lt!456126 () tuple2!13508)

(declare-fun isEmpty!8389 (BalanceConc!9092) Bool)

(assert (=> b!1373459 (= res!618807 (not (isEmpty!8389 (_2!7640 lt!456126))))))

(declare-fun b!1373460 () Bool)

(declare-fun res!618812 () Bool)

(assert (=> b!1373460 (=> res!618812 e!877857)))

(declare-fun lt!456131 () tuple2!13508)

(assert (=> b!1373460 (= res!618812 (not (isEmpty!8389 (_2!7640 lt!456131))))))

(declare-fun tp!394194 () Bool)

(declare-fun b!1373461 () Bool)

(assert (=> b!1373461 (= e!877842 (and tp!394194 (inv!18258 (tag!2669 (h!19306 rules!2550))) (inv!18262 (transformation!2407 (h!19306 rules!2550))) e!877840))))

(declare-fun b!1373462 () Bool)

(assert (=> b!1373462 (= e!877858 e!877844)))

(declare-fun res!618809 () Bool)

(assert (=> b!1373462 (=> res!618809 e!877844)))

(declare-fun lt!456130 () List!13970)

(declare-fun list!5363 (BalanceConc!9094) List!13970)

(assert (=> b!1373462 (= res!618809 (not (= (list!5363 (_1!7640 lt!456126)) lt!456130)))))

(assert (=> b!1373462 (= lt!456130 (Cons!13904 t1!34 Nil!13904))))

(declare-fun lt!456124 () BalanceConc!9092)

(declare-fun lex!929 (LexerInterface!2102 List!13971 BalanceConc!9092) tuple2!13508)

(assert (=> b!1373462 (= lt!456126 (lex!929 thiss!19762 rules!2550 lt!456124))))

(declare-fun print!868 (LexerInterface!2102 BalanceConc!9094) BalanceConc!9092)

(declare-fun singletonSeq!1040 (Token!4476) BalanceConc!9094)

(assert (=> b!1373462 (= lt!456124 (print!868 thiss!19762 (singletonSeq!1040 t1!34)))))

(declare-fun getWitness!360 (List!13971 Int) Rule!4614)

(assert (=> b!1373462 (= lt!456138 (getWitness!360 rules!2550 lambda!58380))))

(declare-fun tp!394192 () Bool)

(declare-fun b!1373463 () Bool)

(declare-fun inv!21 (TokenValue!2497) Bool)

(assert (=> b!1373463 (= e!877845 (and (inv!21 (value!78232 t2!34)) e!877849 tp!394192))))

(declare-fun e!877838 () Bool)

(assert (=> b!1373464 (= e!877836 e!877838)))

(declare-fun res!618819 () Bool)

(assert (=> b!1373464 (=> res!618819 e!877838)))

(declare-fun lambda!58379 () Int)

(declare-datatypes ((List!13972 0))(
  ( (Nil!13906) (Cons!13906 (h!19307 Regex!3721) (t!121643 List!13972)) )
))
(declare-fun exists!473 (List!13972 Int) Bool)

(declare-fun map!3071 (List!13971 Int) List!13972)

(assert (=> b!1373464 (= res!618819 (not (exists!473 (map!3071 rules!2550 lambda!58378) lambda!58379)))))

(declare-fun lt!456129 () List!13972)

(assert (=> b!1373464 (exists!473 lt!456129 lambda!58379)))

(declare-fun lt!456144 () Unit!20133)

(declare-fun matchRGenUnionSpec!138 (Regex!3721 List!13972 List!13969) Unit!20133)

(assert (=> b!1373464 (= lt!456144 (matchRGenUnionSpec!138 lt!456141 lt!456129 lt!456122))))

(assert (=> b!1373464 (= lt!456129 (map!3071 rules!2550 lambda!58378))))

(assert (=> b!1373465 (= e!877850 (and tp!394195 tp!394191))))

(declare-fun b!1373466 () Bool)

(declare-fun tp!394187 () Bool)

(assert (=> b!1373466 (= e!877856 (and (inv!21 (value!78232 t1!34)) e!877853 tp!394187))))

(declare-fun b!1373467 () Bool)

(declare-fun res!618824 () Bool)

(assert (=> b!1373467 (=> res!618824 e!877844)))

(declare-datatypes ((tuple2!13510 0))(
  ( (tuple2!13511 (_1!7641 Token!4476) (_2!7641 List!13969)) )
))
(declare-datatypes ((Option!2672 0))(
  ( (None!2671) (Some!2671 (v!21488 tuple2!13510)) )
))
(declare-fun maxPrefix!1084 (LexerInterface!2102 List!13971 List!13969) Option!2672)

(assert (=> b!1373467 (= res!618824 (not (= (maxPrefix!1084 thiss!19762 rules!2550 lt!456128) (Some!2671 (tuple2!13511 t1!34 Nil!13903)))))))

(declare-fun b!1373468 () Bool)

(assert (=> b!1373468 (= e!877838 e!877835)))

(declare-fun res!618823 () Bool)

(assert (=> b!1373468 (=> res!618823 e!877835)))

(declare-fun contains!2609 (List!13972 Regex!3721) Bool)

(assert (=> b!1373468 (= res!618823 (not (contains!2609 (map!3071 rules!2550 lambda!58378) lt!456134)))))

(declare-fun getWitness!361 (List!13972 Int) Regex!3721)

(assert (=> b!1373468 (= lt!456134 (getWitness!361 (map!3071 rules!2550 lambda!58378) lambda!58379))))

(declare-fun b!1373469 () Bool)

(declare-fun res!618822 () Bool)

(assert (=> b!1373469 (=> (not res!618822) (not e!877839))))

(assert (=> b!1373469 (= res!618822 (not (= (isSeparator!2407 (rule!4164 t1!34)) (isSeparator!2407 (rule!4164 t2!34)))))))

(declare-fun b!1373470 () Bool)

(declare-fun res!618820 () Bool)

(assert (=> b!1373470 (=> (not res!618820) (not e!877832))))

(declare-fun sepAndNonSepRulesDisjointChars!780 (List!13971 List!13971) Bool)

(assert (=> b!1373470 (= res!618820 (sepAndNonSepRulesDisjointChars!780 rules!2550 rules!2550))))

(declare-fun b!1373471 () Bool)

(declare-fun res!618829 () Bool)

(assert (=> b!1373471 (=> res!618829 e!877844)))

(assert (=> b!1373471 (= res!618829 (not (= (lexList!620 thiss!19762 rules!2550 (list!5362 lt!456124)) (tuple2!13507 lt!456130 Nil!13903))))))

(declare-fun b!1373472 () Bool)

(assert (=> b!1373472 (= e!877844 e!877857)))

(declare-fun res!618837 () Bool)

(assert (=> b!1373472 (=> res!618837 e!877857)))

(assert (=> b!1373472 (= res!618837 (not (= (list!5363 (_1!7640 lt!456131)) lt!456143)))))

(assert (=> b!1373472 (= lt!456143 (Cons!13904 t2!34 Nil!13904))))

(assert (=> b!1373472 (= lt!456131 (lex!929 thiss!19762 rules!2550 lt!456142))))

(assert (=> b!1373472 (= lt!456142 (print!868 thiss!19762 (singletonSeq!1040 t2!34)))))

(declare-fun b!1373473 () Bool)

(assert (=> b!1373473 (= e!877857 e!877834)))

(declare-fun res!618815 () Bool)

(assert (=> b!1373473 (=> res!618815 e!877834)))

(assert (=> b!1373473 (= res!618815 (not (= (maxPrefix!1084 thiss!19762 rules!2550 lt!456133) (Some!2671 (tuple2!13511 t2!34 Nil!13903)))))))

(assert (=> b!1373473 (= lt!456133 (list!5362 lt!456140))))

(declare-fun b!1373474 () Bool)

(declare-fun res!618814 () Bool)

(assert (=> b!1373474 (=> (not res!618814) (not e!877832))))

(declare-fun separableTokensPredicate!385 (LexerInterface!2102 Token!4476 Token!4476 List!13971) Bool)

(assert (=> b!1373474 (= res!618814 (not (separableTokensPredicate!385 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1373475 () Bool)

(declare-fun res!618831 () Bool)

(assert (=> b!1373475 (=> res!618831 e!877836)))

(assert (=> b!1373475 (= res!618831 (not (contains!2607 lt!456122 lt!456136)))))

(declare-fun b!1373476 () Bool)

(declare-fun res!618818 () Bool)

(assert (=> b!1373476 (=> res!618818 e!877836)))

(assert (=> b!1373476 (= res!618818 (not (matchR!1714 lt!456141 lt!456122)))))

(declare-fun b!1373477 () Bool)

(assert (=> b!1373477 (= e!877833 e!877841)))

(declare-fun res!618827 () Bool)

(assert (=> b!1373477 (=> res!618827 e!877841)))

(declare-fun getSuffix!569 (List!13969 List!13969) List!13969)

(assert (=> b!1373477 (= res!618827 (not (= lt!456122 (++!3598 lt!456127 (getSuffix!569 lt!456122 lt!456127)))))))

(declare-fun pickWitness!176 (Int) List!13969)

(assert (=> b!1373477 (= lt!456122 (pickWitness!176 lambda!58377))))

(declare-fun b!1373478 () Bool)

(declare-fun res!618808 () Bool)

(assert (=> b!1373478 (=> res!618808 e!877834)))

(assert (=> b!1373478 (= res!618808 (not (contains!2608 rules!2550 lt!456138)))))

(declare-fun b!1373479 () Bool)

(declare-fun res!618836 () Bool)

(assert (=> b!1373479 (=> (not res!618836) (not e!877839))))

(assert (=> b!1373479 (= res!618836 (rulesProduceIndividualToken!1071 thiss!19762 rules!2550 t2!34))))

(assert (= (and start!124190 res!618835) b!1373445))

(assert (= (and b!1373445 res!618817) b!1373455))

(assert (= (and b!1373455 res!618810) b!1373454))

(assert (= (and b!1373454 res!618821) b!1373479))

(assert (= (and b!1373479 res!618836) b!1373469))

(assert (= (and b!1373469 res!618822) b!1373450))

(assert (= (and b!1373450 res!618834) b!1373470))

(assert (= (and b!1373470 res!618820) b!1373474))

(assert (= (and b!1373474 res!618814) b!1373453))

(assert (= (and b!1373453 res!618828) b!1373443))

(assert (= (and b!1373443 (not res!618813)) b!1373477))

(assert (= (and b!1373477 (not res!618827)) b!1373456))

(assert (= (and b!1373456 (not res!618816)) b!1373441))

(assert (= (and b!1373441 (not res!618825)) b!1373447))

(assert (= (and b!1373447 (not res!618811)) b!1373475))

(assert (= (and b!1373475 (not res!618831)) b!1373476))

(assert (= (and b!1373476 (not res!618818)) b!1373464))

(assert (= (and b!1373464 (not res!618819)) b!1373468))

(assert (= (and b!1373468 (not res!618823)) b!1373444))

(assert (= (and b!1373444 (not res!618838)) b!1373462))

(assert (= (and b!1373462 (not res!618809)) b!1373459))

(assert (= (and b!1373459 (not res!618807)) b!1373471))

(assert (= (and b!1373471 (not res!618829)) b!1373467))

(assert (= (and b!1373467 (not res!618824)) b!1373452))

(assert (= (and b!1373452 (not res!618832)) b!1373472))

(assert (= (and b!1373472 (not res!618837)) b!1373460))

(assert (= (and b!1373460 (not res!618812)) b!1373442))

(assert (= (and b!1373442 (not res!618830)) b!1373473))

(assert (= (and b!1373473 (not res!618815)) b!1373458))

(assert (= (and b!1373458 (not res!618826)) b!1373478))

(assert (= (and b!1373478 (not res!618808)) b!1373448))

(assert (= (and b!1373448 (not res!618833)) b!1373446))

(assert (= b!1373461 b!1373449))

(assert (= b!1373439 b!1373461))

(assert (= (and start!124190 ((_ is Cons!13905) rules!2550)) b!1373439))

(assert (= b!1373457 b!1373451))

(assert (= b!1373466 b!1373457))

(assert (= start!124190 b!1373466))

(assert (= b!1373440 b!1373465))

(assert (= b!1373463 b!1373440))

(assert (= start!124190 b!1373463))

(declare-fun m!1544781 () Bool)

(assert (=> start!124190 m!1544781))

(declare-fun m!1544783 () Bool)

(assert (=> start!124190 m!1544783))

(declare-fun m!1544785 () Bool)

(assert (=> b!1373475 m!1544785))

(declare-fun m!1544787 () Bool)

(assert (=> b!1373470 m!1544787))

(declare-fun m!1544789 () Bool)

(assert (=> b!1373473 m!1544789))

(declare-fun m!1544791 () Bool)

(assert (=> b!1373473 m!1544791))

(declare-fun m!1544793 () Bool)

(assert (=> b!1373468 m!1544793))

(assert (=> b!1373468 m!1544793))

(declare-fun m!1544795 () Bool)

(assert (=> b!1373468 m!1544795))

(assert (=> b!1373468 m!1544793))

(assert (=> b!1373468 m!1544793))

(declare-fun m!1544797 () Bool)

(assert (=> b!1373468 m!1544797))

(declare-fun m!1544799 () Bool)

(assert (=> b!1373463 m!1544799))

(declare-fun m!1544801 () Bool)

(assert (=> b!1373453 m!1544801))

(declare-fun m!1544803 () Bool)

(assert (=> b!1373453 m!1544803))

(declare-fun m!1544805 () Bool)

(assert (=> b!1373453 m!1544805))

(declare-fun m!1544807 () Bool)

(assert (=> b!1373453 m!1544807))

(declare-fun m!1544809 () Bool)

(assert (=> b!1373453 m!1544809))

(declare-fun m!1544811 () Bool)

(assert (=> b!1373453 m!1544811))

(declare-fun m!1544813 () Bool)

(assert (=> b!1373459 m!1544813))

(declare-fun m!1544815 () Bool)

(assert (=> b!1373462 m!1544815))

(declare-fun m!1544817 () Bool)

(assert (=> b!1373462 m!1544817))

(assert (=> b!1373462 m!1544815))

(declare-fun m!1544819 () Bool)

(assert (=> b!1373462 m!1544819))

(declare-fun m!1544821 () Bool)

(assert (=> b!1373462 m!1544821))

(declare-fun m!1544823 () Bool)

(assert (=> b!1373462 m!1544823))

(declare-fun m!1544825 () Bool)

(assert (=> b!1373477 m!1544825))

(assert (=> b!1373477 m!1544825))

(declare-fun m!1544827 () Bool)

(assert (=> b!1373477 m!1544827))

(declare-fun m!1544829 () Bool)

(assert (=> b!1373477 m!1544829))

(declare-fun m!1544831 () Bool)

(assert (=> b!1373442 m!1544831))

(assert (=> b!1373442 m!1544831))

(declare-fun m!1544833 () Bool)

(assert (=> b!1373442 m!1544833))

(declare-fun m!1544835 () Bool)

(assert (=> b!1373445 m!1544835))

(declare-fun m!1544837 () Bool)

(assert (=> b!1373471 m!1544837))

(assert (=> b!1373471 m!1544837))

(declare-fun m!1544839 () Bool)

(assert (=> b!1373471 m!1544839))

(declare-fun m!1544841 () Bool)

(assert (=> b!1373461 m!1544841))

(declare-fun m!1544843 () Bool)

(assert (=> b!1373461 m!1544843))

(declare-fun m!1544845 () Bool)

(assert (=> b!1373447 m!1544845))

(declare-fun m!1544847 () Bool)

(assert (=> b!1373467 m!1544847))

(declare-fun m!1544849 () Bool)

(assert (=> b!1373458 m!1544849))

(declare-fun m!1544851 () Bool)

(assert (=> b!1373479 m!1544851))

(declare-fun m!1544853 () Bool)

(assert (=> b!1373472 m!1544853))

(declare-fun m!1544855 () Bool)

(assert (=> b!1373472 m!1544855))

(declare-fun m!1544857 () Bool)

(assert (=> b!1373472 m!1544857))

(assert (=> b!1373472 m!1544857))

(declare-fun m!1544859 () Bool)

(assert (=> b!1373472 m!1544859))

(declare-fun m!1544861 () Bool)

(assert (=> b!1373455 m!1544861))

(declare-fun m!1544863 () Bool)

(assert (=> b!1373478 m!1544863))

(declare-fun m!1544865 () Bool)

(assert (=> b!1373456 m!1544865))

(declare-fun m!1544867 () Bool)

(assert (=> b!1373456 m!1544867))

(declare-fun m!1544869 () Bool)

(assert (=> b!1373466 m!1544869))

(declare-fun m!1544871 () Bool)

(assert (=> b!1373452 m!1544871))

(declare-fun m!1544873 () Bool)

(assert (=> b!1373464 m!1544873))

(assert (=> b!1373464 m!1544793))

(assert (=> b!1373464 m!1544793))

(declare-fun m!1544875 () Bool)

(assert (=> b!1373464 m!1544875))

(assert (=> b!1373464 m!1544793))

(declare-fun m!1544877 () Bool)

(assert (=> b!1373464 m!1544877))

(declare-fun m!1544879 () Bool)

(assert (=> b!1373450 m!1544879))

(declare-fun m!1544881 () Bool)

(assert (=> b!1373450 m!1544881))

(declare-fun m!1544883 () Bool)

(assert (=> b!1373476 m!1544883))

(declare-fun m!1544885 () Bool)

(assert (=> b!1373440 m!1544885))

(declare-fun m!1544887 () Bool)

(assert (=> b!1373440 m!1544887))

(declare-fun m!1544889 () Bool)

(assert (=> b!1373443 m!1544889))

(assert (=> b!1373443 m!1544889))

(declare-fun m!1544891 () Bool)

(assert (=> b!1373443 m!1544891))

(declare-fun m!1544893 () Bool)

(assert (=> b!1373460 m!1544893))

(declare-fun m!1544895 () Bool)

(assert (=> b!1373474 m!1544895))

(declare-fun m!1544897 () Bool)

(assert (=> b!1373444 m!1544897))

(assert (=> b!1373444 m!1544897))

(declare-fun m!1544899 () Bool)

(assert (=> b!1373444 m!1544899))

(declare-fun m!1544901 () Bool)

(assert (=> b!1373441 m!1544901))

(declare-fun m!1544903 () Bool)

(assert (=> b!1373454 m!1544903))

(declare-fun m!1544905 () Bool)

(assert (=> b!1373446 m!1544905))

(declare-fun m!1544907 () Bool)

(assert (=> b!1373457 m!1544907))

(declare-fun m!1544909 () Bool)

(assert (=> b!1373457 m!1544909))

(declare-fun m!1544911 () Bool)

(assert (=> b!1373448 m!1544911))

(declare-fun m!1544913 () Bool)

(assert (=> b!1373448 m!1544913))

(declare-fun m!1544915 () Bool)

(assert (=> b!1373448 m!1544915))

(declare-fun m!1544917 () Bool)

(assert (=> b!1373448 m!1544917))

(check-sat (not b!1373475) (not b_next!33969) (not b!1373470) (not b!1373450) (not b!1373464) (not b!1373447) (not b!1373452) b_and!92037 (not b_next!33963) b_and!92029 (not b!1373445) (not b!1373454) (not b!1373479) (not b!1373460) (not b!1373473) (not b!1373448) (not b!1373478) (not b_next!33971) (not b!1373444) (not b!1373455) (not b!1373442) b_and!92035 (not b!1373458) (not b!1373462) b_and!92033 (not b!1373472) (not b_next!33965) (not b!1373441) (not b_next!33967) (not b!1373439) (not b!1373461) (not b!1373467) (not b!1373440) (not b!1373471) (not b!1373463) (not b!1373457) b_and!92027 (not b!1373476) (not b!1373477) (not b!1373446) (not b!1373468) (not b!1373474) b_and!92031 (not b!1373459) (not b!1373466) (not start!124190) (not b!1373443) (not b!1373456) (not b_next!33973) (not b!1373453))
(check-sat (not b_next!33969) (not b_next!33971) b_and!92035 b_and!92033 (not b_next!33965) (not b_next!33967) b_and!92037 (not b_next!33963) b_and!92029 b_and!92027 b_and!92031 (not b_next!33973))
(get-model)

(declare-fun d!392148 () Bool)

(declare-fun c!226065 () Bool)

(declare-fun isEmpty!8392 (List!13969) Bool)

(assert (=> d!392148 (= c!226065 (isEmpty!8392 lt!456127))))

(declare-fun e!877861 () Bool)

(assert (=> d!392148 (= (prefixMatch!230 lt!456141 lt!456127) e!877861)))

(declare-fun b!1373494 () Bool)

(declare-fun lostCause!334 (Regex!3721) Bool)

(assert (=> b!1373494 (= e!877861 (not (lostCause!334 lt!456141)))))

(declare-fun b!1373495 () Bool)

(declare-fun derivativeStep!958 (Regex!3721 C!7732) Regex!3721)

(declare-fun head!2475 (List!13969) C!7732)

(declare-fun tail!1987 (List!13969) List!13969)

(assert (=> b!1373495 (= e!877861 (prefixMatch!230 (derivativeStep!958 lt!456141 (head!2475 lt!456127)) (tail!1987 lt!456127)))))

(assert (= (and d!392148 c!226065) b!1373494))

(assert (= (and d!392148 (not c!226065)) b!1373495))

(declare-fun m!1544919 () Bool)

(assert (=> d!392148 m!1544919))

(declare-fun m!1544921 () Bool)

(assert (=> b!1373494 m!1544921))

(declare-fun m!1544923 () Bool)

(assert (=> b!1373495 m!1544923))

(assert (=> b!1373495 m!1544923))

(declare-fun m!1544925 () Bool)

(assert (=> b!1373495 m!1544925))

(declare-fun m!1544927 () Bool)

(assert (=> b!1373495 m!1544927))

(assert (=> b!1373495 m!1544925))

(assert (=> b!1373495 m!1544927))

(declare-fun m!1544929 () Bool)

(assert (=> b!1373495 m!1544929))

(assert (=> b!1373453 d!392148))

(declare-fun b!1373506 () Bool)

(declare-fun res!618852 () Bool)

(declare-fun e!877866 () Bool)

(assert (=> b!1373506 (=> (not res!618852) (not e!877866))))

(declare-fun lt!456147 () List!13969)

(declare-fun size!11415 (List!13969) Int)

(assert (=> b!1373506 (= res!618852 (= (size!11415 lt!456147) (+ (size!11415 lt!456128) (size!11415 (Cons!13903 lt!456136 Nil!13903)))))))

(declare-fun b!1373507 () Bool)

(assert (=> b!1373507 (= e!877866 (or (not (= (Cons!13903 lt!456136 Nil!13903) Nil!13903)) (= lt!456147 lt!456128)))))

(declare-fun d!392150 () Bool)

(assert (=> d!392150 e!877866))

(declare-fun res!618851 () Bool)

(assert (=> d!392150 (=> (not res!618851) (not e!877866))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2037 (List!13969) (InoxSet C!7732))

(assert (=> d!392150 (= res!618851 (= (content!2037 lt!456147) ((_ map or) (content!2037 lt!456128) (content!2037 (Cons!13903 lt!456136 Nil!13903)))))))

(declare-fun e!877867 () List!13969)

(assert (=> d!392150 (= lt!456147 e!877867)))

(declare-fun c!226068 () Bool)

(assert (=> d!392150 (= c!226068 ((_ is Nil!13903) lt!456128))))

(assert (=> d!392150 (= (++!3598 lt!456128 (Cons!13903 lt!456136 Nil!13903)) lt!456147)))

(declare-fun b!1373505 () Bool)

(assert (=> b!1373505 (= e!877867 (Cons!13903 (h!19304 lt!456128) (++!3598 (t!121640 lt!456128) (Cons!13903 lt!456136 Nil!13903))))))

(declare-fun b!1373504 () Bool)

(assert (=> b!1373504 (= e!877867 (Cons!13903 lt!456136 Nil!13903))))

(assert (= (and d!392150 c!226068) b!1373504))

(assert (= (and d!392150 (not c!226068)) b!1373505))

(assert (= (and d!392150 res!618851) b!1373506))

(assert (= (and b!1373506 res!618852) b!1373507))

(declare-fun m!1544931 () Bool)

(assert (=> b!1373506 m!1544931))

(declare-fun m!1544933 () Bool)

(assert (=> b!1373506 m!1544933))

(declare-fun m!1544935 () Bool)

(assert (=> b!1373506 m!1544935))

(declare-fun m!1544937 () Bool)

(assert (=> d!392150 m!1544937))

(declare-fun m!1544939 () Bool)

(assert (=> d!392150 m!1544939))

(declare-fun m!1544941 () Bool)

(assert (=> d!392150 m!1544941))

(declare-fun m!1544943 () Bool)

(assert (=> b!1373505 m!1544943))

(assert (=> b!1373453 d!392150))

(declare-fun d!392152 () Bool)

(declare-fun lt!456156 () C!7732)

(declare-fun apply!3425 (List!13969 Int) C!7732)

(assert (=> d!392152 (= lt!456156 (apply!3425 (list!5362 lt!456140) 0))))

(declare-fun apply!3426 (Conc!4576 Int) C!7732)

(assert (=> d!392152 (= lt!456156 (apply!3426 (c!226060 lt!456140) 0))))

(declare-fun e!877882 () Bool)

(assert (=> d!392152 e!877882))

(declare-fun res!618867 () Bool)

(assert (=> d!392152 (=> (not res!618867) (not e!877882))))

(assert (=> d!392152 (= res!618867 (<= 0 0))))

(assert (=> d!392152 (= (apply!3423 lt!456140 0) lt!456156)))

(declare-fun b!1373522 () Bool)

(assert (=> b!1373522 (= e!877882 (< 0 (size!11410 lt!456140)))))

(assert (= (and d!392152 res!618867) b!1373522))

(assert (=> d!392152 m!1544791))

(assert (=> d!392152 m!1544791))

(declare-fun m!1544957 () Bool)

(assert (=> d!392152 m!1544957))

(declare-fun m!1544959 () Bool)

(assert (=> d!392152 m!1544959))

(assert (=> b!1373522 m!1544879))

(assert (=> b!1373453 d!392152))

(declare-fun d!392160 () Bool)

(declare-fun lt!456162 () BalanceConc!9092)

(assert (=> d!392160 (= (list!5362 lt!456162) (originalCharacters!3269 t1!34))))

(declare-fun dynLambda!6329 (Int TokenValue!2497) BalanceConc!9092)

(assert (=> d!392160 (= lt!456162 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))))

(assert (=> d!392160 (= (charsOf!1379 t1!34) lt!456162)))

(declare-fun b_lambda!42145 () Bool)

(assert (=> (not b_lambda!42145) (not d!392160)))

(declare-fun t!121645 () Bool)

(declare-fun tb!72321 () Bool)

(assert (=> (and b!1373451 (= (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toChars!3537 (transformation!2407 (rule!4164 t1!34)))) t!121645) tb!72321))

(declare-fun b!1373545 () Bool)

(declare-fun e!877896 () Bool)

(declare-fun tp!394199 () Bool)

(declare-fun inv!18263 (Conc!4576) Bool)

(assert (=> b!1373545 (= e!877896 (and (inv!18263 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))) tp!394199))))

(declare-fun result!87814 () Bool)

(declare-fun inv!18264 (BalanceConc!9092) Bool)

(assert (=> tb!72321 (= result!87814 (and (inv!18264 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))) e!877896))))

(assert (= tb!72321 b!1373545))

(declare-fun m!1544971 () Bool)

(assert (=> b!1373545 m!1544971))

(declare-fun m!1544973 () Bool)

(assert (=> tb!72321 m!1544973))

(assert (=> d!392160 t!121645))

(declare-fun b_and!92039 () Bool)

(assert (= b_and!92029 (and (=> t!121645 result!87814) b_and!92039)))

(declare-fun t!121647 () Bool)

(declare-fun tb!72323 () Bool)

(assert (=> (and b!1373449 (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 t1!34)))) t!121647) tb!72323))

(declare-fun result!87818 () Bool)

(assert (= result!87818 result!87814))

(assert (=> d!392160 t!121647))

(declare-fun b_and!92041 () Bool)

(assert (= b_and!92033 (and (=> t!121647 result!87818) b_and!92041)))

(declare-fun t!121649 () Bool)

(declare-fun tb!72325 () Bool)

(assert (=> (and b!1373465 (= (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toChars!3537 (transformation!2407 (rule!4164 t1!34)))) t!121649) tb!72325))

(declare-fun result!87820 () Bool)

(assert (= result!87820 result!87814))

(assert (=> d!392160 t!121649))

(declare-fun b_and!92043 () Bool)

(assert (= b_and!92037 (and (=> t!121649 result!87820) b_and!92043)))

(declare-fun m!1544975 () Bool)

(assert (=> d!392160 m!1544975))

(declare-fun m!1544977 () Bool)

(assert (=> d!392160 m!1544977))

(assert (=> b!1373453 d!392160))

(declare-fun d!392164 () Bool)

(declare-fun list!5366 (Conc!4576) List!13969)

(assert (=> d!392164 (= (list!5362 lt!456132) (list!5366 (c!226060 lt!456132)))))

(declare-fun bs!335955 () Bool)

(assert (= bs!335955 d!392164))

(declare-fun m!1544989 () Bool)

(assert (=> bs!335955 m!1544989))

(assert (=> b!1373453 d!392164))

(declare-fun bs!335957 () Bool)

(declare-fun d!392168 () Bool)

(assert (= bs!335957 (and d!392168 b!1373464)))

(declare-fun lambda!58384 () Int)

(assert (=> bs!335957 (= lambda!58384 lambda!58378)))

(declare-fun lt!456174 () Unit!20133)

(declare-fun lemma!128 (List!13971 LexerInterface!2102 List!13971) Unit!20133)

(assert (=> d!392168 (= lt!456174 (lemma!128 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!136 (List!13972) Regex!3721)

(assert (=> d!392168 (= (rulesRegex!290 thiss!19762 rules!2550) (generalisedUnion!136 (map!3071 rules!2550 lambda!58384)))))

(declare-fun bs!335958 () Bool)

(assert (= bs!335958 d!392168))

(declare-fun m!1544999 () Bool)

(assert (=> bs!335958 m!1544999))

(declare-fun m!1545001 () Bool)

(assert (=> bs!335958 m!1545001))

(assert (=> bs!335958 m!1545001))

(declare-fun m!1545003 () Bool)

(assert (=> bs!335958 m!1545003))

(assert (=> b!1373453 d!392168))

(declare-fun d!392174 () Bool)

(declare-fun prefixMatchZipperSequence!261 (Regex!3721 BalanceConc!9092) Bool)

(declare-fun ++!3599 (BalanceConc!9092 BalanceConc!9092) BalanceConc!9092)

(declare-fun singletonSeq!1041 (C!7732) BalanceConc!9092)

(assert (=> d!392174 (= (separableTokensPredicate!385 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!261 (rulesRegex!290 thiss!19762 rules!2550) (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))))))))

(declare-fun bs!335959 () Bool)

(assert (= bs!335959 d!392174))

(assert (=> bs!335959 m!1544881))

(assert (=> bs!335959 m!1544803))

(assert (=> bs!335959 m!1544881))

(declare-fun m!1545005 () Bool)

(assert (=> bs!335959 m!1545005))

(assert (=> bs!335959 m!1545005))

(declare-fun m!1545007 () Bool)

(assert (=> bs!335959 m!1545007))

(assert (=> bs!335959 m!1544803))

(assert (=> bs!335959 m!1545007))

(declare-fun m!1545009 () Bool)

(assert (=> bs!335959 m!1545009))

(assert (=> bs!335959 m!1544809))

(assert (=> bs!335959 m!1545009))

(declare-fun m!1545011 () Bool)

(assert (=> bs!335959 m!1545011))

(assert (=> bs!335959 m!1544809))

(assert (=> b!1373474 d!392174))

(declare-fun b!1373601 () Bool)

(declare-fun res!618907 () Bool)

(declare-fun e!877934 () Bool)

(assert (=> b!1373601 (=> (not res!618907) (not e!877934))))

(declare-fun call!92208 () Bool)

(assert (=> b!1373601 (= res!618907 (not call!92208))))

(declare-fun b!1373602 () Bool)

(declare-fun e!877933 () Bool)

(assert (=> b!1373602 (= e!877933 (not (= (head!2475 lt!456122) (c!226061 lt!456141))))))

(declare-fun b!1373603 () Bool)

(declare-fun e!877930 () Bool)

(declare-fun lt!456180 () Bool)

(assert (=> b!1373603 (= e!877930 (not lt!456180))))

(declare-fun b!1373604 () Bool)

(declare-fun res!618910 () Bool)

(assert (=> b!1373604 (=> res!618910 e!877933)))

(assert (=> b!1373604 (= res!618910 (not (isEmpty!8392 (tail!1987 lt!456122))))))

(declare-fun b!1373605 () Bool)

(declare-fun e!877932 () Bool)

(declare-fun nullable!1201 (Regex!3721) Bool)

(assert (=> b!1373605 (= e!877932 (nullable!1201 lt!456141))))

(declare-fun b!1373606 () Bool)

(assert (=> b!1373606 (= e!877932 (matchR!1714 (derivativeStep!958 lt!456141 (head!2475 lt!456122)) (tail!1987 lt!456122)))))

(declare-fun b!1373607 () Bool)

(declare-fun e!877936 () Bool)

(assert (=> b!1373607 (= e!877936 e!877930)))

(declare-fun c!226087 () Bool)

(assert (=> b!1373607 (= c!226087 ((_ is EmptyLang!3721) lt!456141))))

(declare-fun b!1373608 () Bool)

(assert (=> b!1373608 (= e!877936 (= lt!456180 call!92208))))

(declare-fun bm!92203 () Bool)

(assert (=> bm!92203 (= call!92208 (isEmpty!8392 lt!456122))))

(declare-fun b!1373609 () Bool)

(assert (=> b!1373609 (= e!877934 (= (head!2475 lt!456122) (c!226061 lt!456141)))))

(declare-fun b!1373610 () Bool)

(declare-fun res!618911 () Bool)

(assert (=> b!1373610 (=> (not res!618911) (not e!877934))))

(assert (=> b!1373610 (= res!618911 (isEmpty!8392 (tail!1987 lt!456122)))))

(declare-fun b!1373611 () Bool)

(declare-fun res!618912 () Bool)

(declare-fun e!877931 () Bool)

(assert (=> b!1373611 (=> res!618912 e!877931)))

(assert (=> b!1373611 (= res!618912 e!877934)))

(declare-fun res!618905 () Bool)

(assert (=> b!1373611 (=> (not res!618905) (not e!877934))))

(assert (=> b!1373611 (= res!618905 lt!456180)))

(declare-fun d!392176 () Bool)

(assert (=> d!392176 e!877936))

(declare-fun c!226088 () Bool)

(assert (=> d!392176 (= c!226088 ((_ is EmptyExpr!3721) lt!456141))))

(assert (=> d!392176 (= lt!456180 e!877932)))

(declare-fun c!226089 () Bool)

(assert (=> d!392176 (= c!226089 (isEmpty!8392 lt!456122))))

(declare-fun validRegex!1621 (Regex!3721) Bool)

(assert (=> d!392176 (validRegex!1621 lt!456141)))

(assert (=> d!392176 (= (matchR!1714 lt!456141 lt!456122) lt!456180)))

(declare-fun b!1373612 () Bool)

(declare-fun res!618908 () Bool)

(assert (=> b!1373612 (=> res!618908 e!877931)))

(assert (=> b!1373612 (= res!618908 (not ((_ is ElementMatch!3721) lt!456141)))))

(assert (=> b!1373612 (= e!877930 e!877931)))

(declare-fun b!1373613 () Bool)

(declare-fun e!877935 () Bool)

(assert (=> b!1373613 (= e!877931 e!877935)))

(declare-fun res!618909 () Bool)

(assert (=> b!1373613 (=> (not res!618909) (not e!877935))))

(assert (=> b!1373613 (= res!618909 (not lt!456180))))

(declare-fun b!1373614 () Bool)

(assert (=> b!1373614 (= e!877935 e!877933)))

(declare-fun res!618906 () Bool)

(assert (=> b!1373614 (=> res!618906 e!877933)))

(assert (=> b!1373614 (= res!618906 call!92208)))

(assert (= (and d!392176 c!226089) b!1373605))

(assert (= (and d!392176 (not c!226089)) b!1373606))

(assert (= (and d!392176 c!226088) b!1373608))

(assert (= (and d!392176 (not c!226088)) b!1373607))

(assert (= (and b!1373607 c!226087) b!1373603))

(assert (= (and b!1373607 (not c!226087)) b!1373612))

(assert (= (and b!1373612 (not res!618908)) b!1373611))

(assert (= (and b!1373611 res!618905) b!1373601))

(assert (= (and b!1373601 res!618907) b!1373610))

(assert (= (and b!1373610 res!618911) b!1373609))

(assert (= (and b!1373611 (not res!618912)) b!1373613))

(assert (= (and b!1373613 res!618909) b!1373614))

(assert (= (and b!1373614 (not res!618906)) b!1373604))

(assert (= (and b!1373604 (not res!618910)) b!1373602))

(assert (= (or b!1373608 b!1373601 b!1373614) bm!92203))

(declare-fun m!1545027 () Bool)

(assert (=> d!392176 m!1545027))

(declare-fun m!1545029 () Bool)

(assert (=> d!392176 m!1545029))

(declare-fun m!1545031 () Bool)

(assert (=> b!1373604 m!1545031))

(assert (=> b!1373604 m!1545031))

(declare-fun m!1545033 () Bool)

(assert (=> b!1373604 m!1545033))

(declare-fun m!1545035 () Bool)

(assert (=> b!1373602 m!1545035))

(assert (=> b!1373610 m!1545031))

(assert (=> b!1373610 m!1545031))

(assert (=> b!1373610 m!1545033))

(assert (=> b!1373609 m!1545035))

(declare-fun m!1545037 () Bool)

(assert (=> b!1373605 m!1545037))

(assert (=> b!1373606 m!1545035))

(assert (=> b!1373606 m!1545035))

(declare-fun m!1545039 () Bool)

(assert (=> b!1373606 m!1545039))

(assert (=> b!1373606 m!1545031))

(assert (=> b!1373606 m!1545039))

(assert (=> b!1373606 m!1545031))

(declare-fun m!1545041 () Bool)

(assert (=> b!1373606 m!1545041))

(assert (=> bm!92203 m!1545027))

(assert (=> b!1373476 d!392176))

(declare-fun d!392180 () Bool)

(declare-fun lt!456216 () Bool)

(declare-fun e!877989 () Bool)

(assert (=> d!392180 (= lt!456216 e!877989)))

(declare-fun res!618979 () Bool)

(assert (=> d!392180 (=> (not res!618979) (not e!877989))))

(assert (=> d!392180 (= res!618979 (= (list!5363 (_1!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34))))) (list!5363 (singletonSeq!1040 t1!34))))))

(declare-fun e!877988 () Bool)

(assert (=> d!392180 (= lt!456216 e!877988)))

(declare-fun res!618980 () Bool)

(assert (=> d!392180 (=> (not res!618980) (not e!877988))))

(declare-fun lt!456215 () tuple2!13508)

(declare-fun size!11416 (BalanceConc!9094) Int)

(assert (=> d!392180 (= res!618980 (= (size!11416 (_1!7640 lt!456215)) 1))))

(assert (=> d!392180 (= lt!456215 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34))))))

(assert (=> d!392180 (not (isEmpty!8388 rules!2550))))

(assert (=> d!392180 (= (rulesProduceIndividualToken!1071 thiss!19762 rules!2550 t1!34) lt!456216)))

(declare-fun b!1373719 () Bool)

(declare-fun res!618981 () Bool)

(assert (=> b!1373719 (=> (not res!618981) (not e!877988))))

(declare-fun apply!3427 (BalanceConc!9094 Int) Token!4476)

(assert (=> b!1373719 (= res!618981 (= (apply!3427 (_1!7640 lt!456215) 0) t1!34))))

(declare-fun b!1373720 () Bool)

(assert (=> b!1373720 (= e!877988 (isEmpty!8389 (_2!7640 lt!456215)))))

(declare-fun b!1373721 () Bool)

(assert (=> b!1373721 (= e!877989 (isEmpty!8389 (_2!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34))))))))

(assert (= (and d!392180 res!618980) b!1373719))

(assert (= (and b!1373719 res!618981) b!1373720))

(assert (= (and d!392180 res!618979) b!1373721))

(assert (=> d!392180 m!1544815))

(assert (=> d!392180 m!1544817))

(assert (=> d!392180 m!1544817))

(declare-fun m!1545153 () Bool)

(assert (=> d!392180 m!1545153))

(assert (=> d!392180 m!1544815))

(declare-fun m!1545155 () Bool)

(assert (=> d!392180 m!1545155))

(declare-fun m!1545157 () Bool)

(assert (=> d!392180 m!1545157))

(declare-fun m!1545159 () Bool)

(assert (=> d!392180 m!1545159))

(assert (=> d!392180 m!1544835))

(assert (=> d!392180 m!1544815))

(declare-fun m!1545161 () Bool)

(assert (=> b!1373719 m!1545161))

(declare-fun m!1545163 () Bool)

(assert (=> b!1373720 m!1545163))

(assert (=> b!1373721 m!1544815))

(assert (=> b!1373721 m!1544815))

(assert (=> b!1373721 m!1544817))

(assert (=> b!1373721 m!1544817))

(assert (=> b!1373721 m!1545153))

(declare-fun m!1545165 () Bool)

(assert (=> b!1373721 m!1545165))

(assert (=> b!1373454 d!392180))

(declare-fun d!392198 () Bool)

(declare-fun lt!456219 () Bool)

(assert (=> d!392198 (= lt!456219 (select (content!2037 lt!456122) lt!456136))))

(declare-fun e!877994 () Bool)

(assert (=> d!392198 (= lt!456219 e!877994)))

(declare-fun res!618987 () Bool)

(assert (=> d!392198 (=> (not res!618987) (not e!877994))))

(assert (=> d!392198 (= res!618987 ((_ is Cons!13903) lt!456122))))

(assert (=> d!392198 (= (contains!2607 lt!456122 lt!456136) lt!456219)))

(declare-fun b!1373726 () Bool)

(declare-fun e!877995 () Bool)

(assert (=> b!1373726 (= e!877994 e!877995)))

(declare-fun res!618986 () Bool)

(assert (=> b!1373726 (=> res!618986 e!877995)))

(assert (=> b!1373726 (= res!618986 (= (h!19304 lt!456122) lt!456136))))

(declare-fun b!1373727 () Bool)

(assert (=> b!1373727 (= e!877995 (contains!2607 (t!121640 lt!456122) lt!456136))))

(assert (= (and d!392198 res!618987) b!1373726))

(assert (= (and b!1373726 (not res!618986)) b!1373727))

(declare-fun m!1545167 () Bool)

(assert (=> d!392198 m!1545167))

(declare-fun m!1545169 () Bool)

(assert (=> d!392198 m!1545169))

(declare-fun m!1545171 () Bool)

(assert (=> b!1373727 m!1545171))

(assert (=> b!1373475 d!392198))

(declare-fun d!392200 () Bool)

(declare-fun lt!456220 () Bool)

(assert (=> d!392200 (= lt!456220 (select (content!2037 lt!456127) lt!456121))))

(declare-fun e!877996 () Bool)

(assert (=> d!392200 (= lt!456220 e!877996)))

(declare-fun res!618989 () Bool)

(assert (=> d!392200 (=> (not res!618989) (not e!877996))))

(assert (=> d!392200 (= res!618989 ((_ is Cons!13903) lt!456127))))

(assert (=> d!392200 (= (contains!2607 lt!456127 lt!456121) lt!456220)))

(declare-fun b!1373728 () Bool)

(declare-fun e!877997 () Bool)

(assert (=> b!1373728 (= e!877996 e!877997)))

(declare-fun res!618988 () Bool)

(assert (=> b!1373728 (=> res!618988 e!877997)))

(assert (=> b!1373728 (= res!618988 (= (h!19304 lt!456127) lt!456121))))

(declare-fun b!1373729 () Bool)

(assert (=> b!1373729 (= e!877997 (contains!2607 (t!121640 lt!456127) lt!456121))))

(assert (= (and d!392200 res!618989) b!1373728))

(assert (= (and b!1373728 (not res!618988)) b!1373729))

(declare-fun m!1545173 () Bool)

(assert (=> d!392200 m!1545173))

(declare-fun m!1545175 () Bool)

(assert (=> d!392200 m!1545175))

(declare-fun m!1545177 () Bool)

(assert (=> b!1373729 m!1545177))

(assert (=> b!1373456 d!392200))

(declare-fun d!392202 () Bool)

(declare-fun lt!456221 () C!7732)

(assert (=> d!392202 (= lt!456221 (apply!3425 (list!5362 lt!456132) 0))))

(assert (=> d!392202 (= lt!456221 (apply!3426 (c!226060 lt!456132) 0))))

(declare-fun e!877998 () Bool)

(assert (=> d!392202 e!877998))

(declare-fun res!618990 () Bool)

(assert (=> d!392202 (=> (not res!618990) (not e!877998))))

(assert (=> d!392202 (= res!618990 (<= 0 0))))

(assert (=> d!392202 (= (apply!3423 lt!456132 0) lt!456221)))

(declare-fun b!1373730 () Bool)

(assert (=> b!1373730 (= e!877998 (< 0 (size!11410 lt!456132)))))

(assert (= (and d!392202 res!618990) b!1373730))

(assert (=> d!392202 m!1544811))

(assert (=> d!392202 m!1544811))

(declare-fun m!1545179 () Bool)

(assert (=> d!392202 m!1545179))

(declare-fun m!1545181 () Bool)

(assert (=> d!392202 m!1545181))

(declare-fun m!1545183 () Bool)

(assert (=> b!1373730 m!1545183))

(assert (=> b!1373456 d!392202))

(declare-fun b!1373733 () Bool)

(declare-fun res!618992 () Bool)

(declare-fun e!877999 () Bool)

(assert (=> b!1373733 (=> (not res!618992) (not e!877999))))

(declare-fun lt!456222 () List!13969)

(assert (=> b!1373733 (= res!618992 (= (size!11415 lt!456222) (+ (size!11415 lt!456127) (size!11415 (getSuffix!569 lt!456122 lt!456127)))))))

(declare-fun b!1373734 () Bool)

(assert (=> b!1373734 (= e!877999 (or (not (= (getSuffix!569 lt!456122 lt!456127) Nil!13903)) (= lt!456222 lt!456127)))))

(declare-fun d!392204 () Bool)

(assert (=> d!392204 e!877999))

(declare-fun res!618991 () Bool)

(assert (=> d!392204 (=> (not res!618991) (not e!877999))))

(assert (=> d!392204 (= res!618991 (= (content!2037 lt!456222) ((_ map or) (content!2037 lt!456127) (content!2037 (getSuffix!569 lt!456122 lt!456127)))))))

(declare-fun e!878000 () List!13969)

(assert (=> d!392204 (= lt!456222 e!878000)))

(declare-fun c!226109 () Bool)

(assert (=> d!392204 (= c!226109 ((_ is Nil!13903) lt!456127))))

(assert (=> d!392204 (= (++!3598 lt!456127 (getSuffix!569 lt!456122 lt!456127)) lt!456222)))

(declare-fun b!1373732 () Bool)

(assert (=> b!1373732 (= e!878000 (Cons!13903 (h!19304 lt!456127) (++!3598 (t!121640 lt!456127) (getSuffix!569 lt!456122 lt!456127))))))

(declare-fun b!1373731 () Bool)

(assert (=> b!1373731 (= e!878000 (getSuffix!569 lt!456122 lt!456127))))

(assert (= (and d!392204 c!226109) b!1373731))

(assert (= (and d!392204 (not c!226109)) b!1373732))

(assert (= (and d!392204 res!618991) b!1373733))

(assert (= (and b!1373733 res!618992) b!1373734))

(declare-fun m!1545185 () Bool)

(assert (=> b!1373733 m!1545185))

(declare-fun m!1545187 () Bool)

(assert (=> b!1373733 m!1545187))

(assert (=> b!1373733 m!1544825))

(declare-fun m!1545189 () Bool)

(assert (=> b!1373733 m!1545189))

(declare-fun m!1545191 () Bool)

(assert (=> d!392204 m!1545191))

(assert (=> d!392204 m!1545173))

(assert (=> d!392204 m!1544825))

(declare-fun m!1545193 () Bool)

(assert (=> d!392204 m!1545193))

(assert (=> b!1373732 m!1544825))

(declare-fun m!1545195 () Bool)

(assert (=> b!1373732 m!1545195))

(assert (=> b!1373477 d!392204))

(declare-fun d!392206 () Bool)

(declare-fun lt!456225 () List!13969)

(assert (=> d!392206 (= (++!3598 lt!456127 lt!456225) lt!456122)))

(declare-fun e!878003 () List!13969)

(assert (=> d!392206 (= lt!456225 e!878003)))

(declare-fun c!226112 () Bool)

(assert (=> d!392206 (= c!226112 ((_ is Cons!13903) lt!456127))))

(assert (=> d!392206 (>= (size!11415 lt!456122) (size!11415 lt!456127))))

(assert (=> d!392206 (= (getSuffix!569 lt!456122 lt!456127) lt!456225)))

(declare-fun b!1373739 () Bool)

(assert (=> b!1373739 (= e!878003 (getSuffix!569 (tail!1987 lt!456122) (t!121640 lt!456127)))))

(declare-fun b!1373740 () Bool)

(assert (=> b!1373740 (= e!878003 lt!456122)))

(assert (= (and d!392206 c!226112) b!1373739))

(assert (= (and d!392206 (not c!226112)) b!1373740))

(declare-fun m!1545197 () Bool)

(assert (=> d!392206 m!1545197))

(declare-fun m!1545199 () Bool)

(assert (=> d!392206 m!1545199))

(assert (=> d!392206 m!1545187))

(assert (=> b!1373739 m!1545031))

(assert (=> b!1373739 m!1545031))

(declare-fun m!1545201 () Bool)

(assert (=> b!1373739 m!1545201))

(assert (=> b!1373477 d!392206))

(declare-fun d!392208 () Bool)

(declare-fun lt!456228 () List!13969)

(declare-fun dynLambda!6332 (Int List!13969) Bool)

(assert (=> d!392208 (dynLambda!6332 lambda!58377 lt!456228)))

(declare-fun choose!8449 (Int) List!13969)

(assert (=> d!392208 (= lt!456228 (choose!8449 lambda!58377))))

(assert (=> d!392208 (Exists!873 lambda!58377)))

(assert (=> d!392208 (= (pickWitness!176 lambda!58377) lt!456228)))

(declare-fun b_lambda!42151 () Bool)

(assert (=> (not b_lambda!42151) (not d!392208)))

(declare-fun bs!335962 () Bool)

(assert (= bs!335962 d!392208))

(declare-fun m!1545203 () Bool)

(assert (=> bs!335962 m!1545203))

(declare-fun m!1545205 () Bool)

(assert (=> bs!335962 m!1545205))

(assert (=> bs!335962 m!1544889))

(assert (=> b!1373477 d!392208))

(declare-fun d!392210 () Bool)

(declare-fun res!618995 () Bool)

(declare-fun e!878006 () Bool)

(assert (=> d!392210 (=> (not res!618995) (not e!878006))))

(declare-fun rulesValid!898 (LexerInterface!2102 List!13971) Bool)

(assert (=> d!392210 (= res!618995 (rulesValid!898 thiss!19762 rules!2550))))

(assert (=> d!392210 (= (rulesInvariant!1972 thiss!19762 rules!2550) e!878006)))

(declare-fun b!1373743 () Bool)

(declare-datatypes ((List!13973 0))(
  ( (Nil!13907) (Cons!13907 (h!19308 String!16721) (t!121680 List!13973)) )
))
(declare-fun noDuplicateTag!898 (LexerInterface!2102 List!13971 List!13973) Bool)

(assert (=> b!1373743 (= e!878006 (noDuplicateTag!898 thiss!19762 rules!2550 Nil!13907))))

(assert (= (and d!392210 res!618995) b!1373743))

(declare-fun m!1545207 () Bool)

(assert (=> d!392210 m!1545207))

(declare-fun m!1545209 () Bool)

(assert (=> b!1373743 m!1545209))

(assert (=> b!1373455 d!392210))

(declare-fun d!392212 () Bool)

(assert (=> d!392212 (= (inv!18258 (tag!2669 (rule!4164 t1!34))) (= (mod (str.len (value!78231 (tag!2669 (rule!4164 t1!34)))) 2) 0))))

(assert (=> b!1373457 d!392212))

(declare-fun d!392214 () Bool)

(declare-fun res!618998 () Bool)

(declare-fun e!878009 () Bool)

(assert (=> d!392214 (=> (not res!618998) (not e!878009))))

(declare-fun semiInverseModEq!930 (Int Int) Bool)

(assert (=> d!392214 (= res!618998 (semiInverseModEq!930 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toValue!3678 (transformation!2407 (rule!4164 t1!34)))))))

(assert (=> d!392214 (= (inv!18262 (transformation!2407 (rule!4164 t1!34))) e!878009)))

(declare-fun b!1373746 () Bool)

(declare-fun equivClasses!889 (Int Int) Bool)

(assert (=> b!1373746 (= e!878009 (equivClasses!889 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toValue!3678 (transformation!2407 (rule!4164 t1!34)))))))

(assert (= (and d!392214 res!618998) b!1373746))

(declare-fun m!1545211 () Bool)

(assert (=> d!392214 m!1545211))

(declare-fun m!1545213 () Bool)

(assert (=> b!1373746 m!1545213))

(assert (=> b!1373457 d!392214))

(declare-fun d!392216 () Bool)

(declare-fun lt!456231 () Bool)

(declare-fun content!2038 (List!13971) (InoxSet Rule!4614))

(assert (=> d!392216 (= lt!456231 (select (content!2038 rules!2550) lt!456138))))

(declare-fun e!878014 () Bool)

(assert (=> d!392216 (= lt!456231 e!878014)))

(declare-fun res!619003 () Bool)

(assert (=> d!392216 (=> (not res!619003) (not e!878014))))

(assert (=> d!392216 (= res!619003 ((_ is Cons!13905) rules!2550))))

(assert (=> d!392216 (= (contains!2608 rules!2550 lt!456138) lt!456231)))

(declare-fun b!1373751 () Bool)

(declare-fun e!878015 () Bool)

(assert (=> b!1373751 (= e!878014 e!878015)))

(declare-fun res!619004 () Bool)

(assert (=> b!1373751 (=> res!619004 e!878015)))

(assert (=> b!1373751 (= res!619004 (= (h!19306 rules!2550) lt!456138))))

(declare-fun b!1373752 () Bool)

(assert (=> b!1373752 (= e!878015 (contains!2608 (t!121642 rules!2550) lt!456138))))

(assert (= (and d!392216 res!619003) b!1373751))

(assert (= (and b!1373751 (not res!619004)) b!1373752))

(declare-fun m!1545215 () Bool)

(assert (=> d!392216 m!1545215))

(declare-fun m!1545217 () Bool)

(assert (=> d!392216 m!1545217))

(declare-fun m!1545219 () Bool)

(assert (=> b!1373752 m!1545219))

(assert (=> b!1373478 d!392216))

(declare-fun d!392218 () Bool)

(declare-fun lt!456232 () Bool)

(assert (=> d!392218 (= lt!456232 (select (content!2038 rules!2550) (rule!4164 t2!34)))))

(declare-fun e!878016 () Bool)

(assert (=> d!392218 (= lt!456232 e!878016)))

(declare-fun res!619005 () Bool)

(assert (=> d!392218 (=> (not res!619005) (not e!878016))))

(assert (=> d!392218 (= res!619005 ((_ is Cons!13905) rules!2550))))

(assert (=> d!392218 (= (contains!2608 rules!2550 (rule!4164 t2!34)) lt!456232)))

(declare-fun b!1373753 () Bool)

(declare-fun e!878017 () Bool)

(assert (=> b!1373753 (= e!878016 e!878017)))

(declare-fun res!619006 () Bool)

(assert (=> b!1373753 (=> res!619006 e!878017)))

(assert (=> b!1373753 (= res!619006 (= (h!19306 rules!2550) (rule!4164 t2!34)))))

(declare-fun b!1373754 () Bool)

(assert (=> b!1373754 (= e!878017 (contains!2608 (t!121642 rules!2550) (rule!4164 t2!34)))))

(assert (= (and d!392218 res!619005) b!1373753))

(assert (= (and b!1373753 (not res!619006)) b!1373754))

(assert (=> d!392218 m!1545215))

(declare-fun m!1545221 () Bool)

(assert (=> d!392218 m!1545221))

(declare-fun m!1545223 () Bool)

(assert (=> b!1373754 m!1545223))

(assert (=> b!1373458 d!392218))

(declare-fun d!392220 () Bool)

(declare-fun lt!456234 () Bool)

(declare-fun e!878019 () Bool)

(assert (=> d!392220 (= lt!456234 e!878019)))

(declare-fun res!619007 () Bool)

(assert (=> d!392220 (=> (not res!619007) (not e!878019))))

(assert (=> d!392220 (= res!619007 (= (list!5363 (_1!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34))))) (list!5363 (singletonSeq!1040 t2!34))))))

(declare-fun e!878018 () Bool)

(assert (=> d!392220 (= lt!456234 e!878018)))

(declare-fun res!619008 () Bool)

(assert (=> d!392220 (=> (not res!619008) (not e!878018))))

(declare-fun lt!456233 () tuple2!13508)

(assert (=> d!392220 (= res!619008 (= (size!11416 (_1!7640 lt!456233)) 1))))

(assert (=> d!392220 (= lt!456233 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34))))))

(assert (=> d!392220 (not (isEmpty!8388 rules!2550))))

(assert (=> d!392220 (= (rulesProduceIndividualToken!1071 thiss!19762 rules!2550 t2!34) lt!456234)))

(declare-fun b!1373755 () Bool)

(declare-fun res!619009 () Bool)

(assert (=> b!1373755 (=> (not res!619009) (not e!878018))))

(assert (=> b!1373755 (= res!619009 (= (apply!3427 (_1!7640 lt!456233) 0) t2!34))))

(declare-fun b!1373756 () Bool)

(assert (=> b!1373756 (= e!878018 (isEmpty!8389 (_2!7640 lt!456233)))))

(declare-fun b!1373757 () Bool)

(assert (=> b!1373757 (= e!878019 (isEmpty!8389 (_2!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34))))))))

(assert (= (and d!392220 res!619008) b!1373755))

(assert (= (and b!1373755 res!619009) b!1373756))

(assert (= (and d!392220 res!619007) b!1373757))

(assert (=> d!392220 m!1544857))

(assert (=> d!392220 m!1544859))

(assert (=> d!392220 m!1544859))

(declare-fun m!1545225 () Bool)

(assert (=> d!392220 m!1545225))

(assert (=> d!392220 m!1544857))

(declare-fun m!1545227 () Bool)

(assert (=> d!392220 m!1545227))

(declare-fun m!1545229 () Bool)

(assert (=> d!392220 m!1545229))

(declare-fun m!1545231 () Bool)

(assert (=> d!392220 m!1545231))

(assert (=> d!392220 m!1544835))

(assert (=> d!392220 m!1544857))

(declare-fun m!1545233 () Bool)

(assert (=> b!1373755 m!1545233))

(declare-fun m!1545235 () Bool)

(assert (=> b!1373756 m!1545235))

(assert (=> b!1373757 m!1544857))

(assert (=> b!1373757 m!1544857))

(assert (=> b!1373757 m!1544859))

(assert (=> b!1373757 m!1544859))

(assert (=> b!1373757 m!1545225))

(declare-fun m!1545237 () Bool)

(assert (=> b!1373757 m!1545237))

(assert (=> b!1373479 d!392220))

(declare-fun d!392222 () Bool)

(declare-fun lt!456237 () Bool)

(assert (=> d!392222 (= lt!456237 (isEmpty!8392 (list!5362 (_2!7640 lt!456131))))))

(declare-fun isEmpty!8395 (Conc!4576) Bool)

(assert (=> d!392222 (= lt!456237 (isEmpty!8395 (c!226060 (_2!7640 lt!456131))))))

(assert (=> d!392222 (= (isEmpty!8389 (_2!7640 lt!456131)) lt!456237)))

(declare-fun bs!335963 () Bool)

(assert (= bs!335963 d!392222))

(declare-fun m!1545239 () Bool)

(assert (=> bs!335963 m!1545239))

(assert (=> bs!335963 m!1545239))

(declare-fun m!1545241 () Bool)

(assert (=> bs!335963 m!1545241))

(declare-fun m!1545243 () Bool)

(assert (=> bs!335963 m!1545243))

(assert (=> b!1373460 d!392222))

(declare-fun d!392224 () Bool)

(declare-fun lt!456238 () Bool)

(assert (=> d!392224 (= lt!456238 (isEmpty!8392 (list!5362 (_2!7640 lt!456126))))))

(assert (=> d!392224 (= lt!456238 (isEmpty!8395 (c!226060 (_2!7640 lt!456126))))))

(assert (=> d!392224 (= (isEmpty!8389 (_2!7640 lt!456126)) lt!456238)))

(declare-fun bs!335964 () Bool)

(assert (= bs!335964 d!392224))

(declare-fun m!1545245 () Bool)

(assert (=> bs!335964 m!1545245))

(assert (=> bs!335964 m!1545245))

(declare-fun m!1545247 () Bool)

(assert (=> bs!335964 m!1545247))

(declare-fun m!1545249 () Bool)

(assert (=> bs!335964 m!1545249))

(assert (=> b!1373459 d!392224))

(declare-fun d!392226 () Bool)

(assert (=> d!392226 (= (inv!18258 (tag!2669 (rule!4164 t2!34))) (= (mod (str.len (value!78231 (tag!2669 (rule!4164 t2!34)))) 2) 0))))

(assert (=> b!1373440 d!392226))

(declare-fun d!392228 () Bool)

(declare-fun res!619010 () Bool)

(declare-fun e!878020 () Bool)

(assert (=> d!392228 (=> (not res!619010) (not e!878020))))

(assert (=> d!392228 (= res!619010 (semiInverseModEq!930 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toValue!3678 (transformation!2407 (rule!4164 t2!34)))))))

(assert (=> d!392228 (= (inv!18262 (transformation!2407 (rule!4164 t2!34))) e!878020)))

(declare-fun b!1373758 () Bool)

(assert (=> b!1373758 (= e!878020 (equivClasses!889 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toValue!3678 (transformation!2407 (rule!4164 t2!34)))))))

(assert (= (and d!392228 res!619010) b!1373758))

(declare-fun m!1545251 () Bool)

(assert (=> d!392228 m!1545251))

(declare-fun m!1545253 () Bool)

(assert (=> b!1373758 m!1545253))

(assert (=> b!1373440 d!392228))

(declare-fun d!392230 () Bool)

(assert (=> d!392230 (= (inv!18258 (tag!2669 (h!19306 rules!2550))) (= (mod (str.len (value!78231 (tag!2669 (h!19306 rules!2550)))) 2) 0))))

(assert (=> b!1373461 d!392230))

(declare-fun d!392232 () Bool)

(declare-fun res!619011 () Bool)

(declare-fun e!878021 () Bool)

(assert (=> d!392232 (=> (not res!619011) (not e!878021))))

(assert (=> d!392232 (= res!619011 (semiInverseModEq!930 (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (h!19306 rules!2550)))))))

(assert (=> d!392232 (= (inv!18262 (transformation!2407 (h!19306 rules!2550))) e!878021)))

(declare-fun b!1373759 () Bool)

(assert (=> b!1373759 (= e!878021 (equivClasses!889 (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (h!19306 rules!2550)))))))

(assert (= (and d!392232 res!619011) b!1373759))

(declare-fun m!1545255 () Bool)

(assert (=> d!392232 m!1545255))

(declare-fun m!1545257 () Bool)

(assert (=> b!1373759 m!1545257))

(assert (=> b!1373461 d!392232))

(declare-fun d!392234 () Bool)

(declare-fun lt!456239 () Bool)

(assert (=> d!392234 (= lt!456239 (select (content!2037 lt!456122) lt!456121))))

(declare-fun e!878022 () Bool)

(assert (=> d!392234 (= lt!456239 e!878022)))

(declare-fun res!619013 () Bool)

(assert (=> d!392234 (=> (not res!619013) (not e!878022))))

(assert (=> d!392234 (= res!619013 ((_ is Cons!13903) lt!456122))))

(assert (=> d!392234 (= (contains!2607 lt!456122 lt!456121) lt!456239)))

(declare-fun b!1373760 () Bool)

(declare-fun e!878023 () Bool)

(assert (=> b!1373760 (= e!878022 e!878023)))

(declare-fun res!619012 () Bool)

(assert (=> b!1373760 (=> res!619012 e!878023)))

(assert (=> b!1373760 (= res!619012 (= (h!19304 lt!456122) lt!456121))))

(declare-fun b!1373761 () Bool)

(assert (=> b!1373761 (= e!878023 (contains!2607 (t!121640 lt!456122) lt!456121))))

(assert (= (and d!392234 res!619013) b!1373760))

(assert (= (and b!1373760 (not res!619012)) b!1373761))

(assert (=> d!392234 m!1545167))

(declare-fun m!1545259 () Bool)

(assert (=> d!392234 m!1545259))

(declare-fun m!1545261 () Bool)

(assert (=> b!1373761 m!1545261))

(assert (=> b!1373441 d!392234))

(declare-fun d!392236 () Bool)

(declare-fun list!5367 (Conc!4577) List!13970)

(assert (=> d!392236 (= (list!5363 (_1!7640 lt!456126)) (list!5367 (c!226062 (_1!7640 lt!456126))))))

(declare-fun bs!335965 () Bool)

(assert (= bs!335965 d!392236))

(declare-fun m!1545263 () Bool)

(assert (=> bs!335965 m!1545263))

(assert (=> b!1373462 d!392236))

(declare-fun b!1373774 () Bool)

(declare-fun e!878034 () Rule!4614)

(assert (=> b!1373774 (= e!878034 (h!19306 rules!2550))))

(declare-fun b!1373775 () Bool)

(declare-fun lt!456244 () Unit!20133)

(declare-fun Unit!20136 () Unit!20133)

(assert (=> b!1373775 (= lt!456244 Unit!20136)))

(assert (=> b!1373775 false))

(declare-fun e!878035 () Rule!4614)

(declare-fun head!2477 (List!13971) Rule!4614)

(assert (=> b!1373775 (= e!878035 (head!2477 rules!2550))))

(declare-fun b!1373776 () Bool)

(declare-fun e!878033 () Bool)

(declare-fun lt!456245 () Rule!4614)

(assert (=> b!1373776 (= e!878033 (contains!2608 rules!2550 lt!456245))))

(declare-fun b!1373777 () Bool)

(assert (=> b!1373777 (= e!878035 (getWitness!360 (t!121642 rules!2550) lambda!58380))))

(declare-fun b!1373778 () Bool)

(declare-fun e!878032 () Bool)

(declare-fun dynLambda!6334 (Int Rule!4614) Bool)

(assert (=> b!1373778 (= e!878032 (dynLambda!6334 lambda!58380 (h!19306 rules!2550)))))

(declare-fun b!1373779 () Bool)

(assert (=> b!1373779 (= e!878034 e!878035)))

(declare-fun c!226117 () Bool)

(assert (=> b!1373779 (= c!226117 ((_ is Cons!13905) rules!2550))))

(declare-fun d!392238 () Bool)

(assert (=> d!392238 e!878033))

(declare-fun res!619018 () Bool)

(assert (=> d!392238 (=> (not res!619018) (not e!878033))))

(assert (=> d!392238 (= res!619018 (dynLambda!6334 lambda!58380 lt!456245))))

(assert (=> d!392238 (= lt!456245 e!878034)))

(declare-fun c!226118 () Bool)

(assert (=> d!392238 (= c!226118 e!878032)))

(declare-fun res!619019 () Bool)

(assert (=> d!392238 (=> (not res!619019) (not e!878032))))

(assert (=> d!392238 (= res!619019 ((_ is Cons!13905) rules!2550))))

(assert (=> d!392238 (exists!472 rules!2550 lambda!58380)))

(assert (=> d!392238 (= (getWitness!360 rules!2550 lambda!58380) lt!456245)))

(assert (= (and d!392238 res!619019) b!1373778))

(assert (= (and d!392238 c!226118) b!1373774))

(assert (= (and d!392238 (not c!226118)) b!1373779))

(assert (= (and b!1373779 c!226117) b!1373777))

(assert (= (and b!1373779 (not c!226117)) b!1373775))

(assert (= (and d!392238 res!619018) b!1373776))

(declare-fun b_lambda!42153 () Bool)

(assert (=> (not b_lambda!42153) (not b!1373778)))

(declare-fun b_lambda!42155 () Bool)

(assert (=> (not b_lambda!42155) (not d!392238)))

(declare-fun m!1545265 () Bool)

(assert (=> d!392238 m!1545265))

(assert (=> d!392238 m!1544897))

(declare-fun m!1545267 () Bool)

(assert (=> b!1373775 m!1545267))

(declare-fun m!1545269 () Bool)

(assert (=> b!1373777 m!1545269))

(declare-fun m!1545271 () Bool)

(assert (=> b!1373778 m!1545271))

(declare-fun m!1545273 () Bool)

(assert (=> b!1373776 m!1545273))

(assert (=> b!1373462 d!392238))

(declare-fun b!1373867 () Bool)

(declare-fun e!878091 () Bool)

(declare-fun e!878092 () Bool)

(assert (=> b!1373867 (= e!878091 e!878092)))

(declare-fun res!619068 () Bool)

(declare-fun lt!456282 () tuple2!13508)

(assert (=> b!1373867 (= res!619068 (< (size!11410 (_2!7640 lt!456282)) (size!11410 lt!456124)))))

(assert (=> b!1373867 (=> (not res!619068) (not e!878092))))

(declare-fun b!1373869 () Bool)

(declare-fun res!619066 () Bool)

(declare-fun e!878093 () Bool)

(assert (=> b!1373869 (=> (not res!619066) (not e!878093))))

(assert (=> b!1373869 (= res!619066 (= (list!5363 (_1!7640 lt!456282)) (_1!7639 (lexList!620 thiss!19762 rules!2550 (list!5362 lt!456124)))))))

(declare-fun b!1373870 () Bool)

(assert (=> b!1373870 (= e!878091 (= (_2!7640 lt!456282) lt!456124))))

(declare-fun b!1373871 () Bool)

(declare-fun isEmpty!8396 (BalanceConc!9094) Bool)

(assert (=> b!1373871 (= e!878092 (not (isEmpty!8396 (_1!7640 lt!456282))))))

(declare-fun d!392240 () Bool)

(assert (=> d!392240 e!878093))

(declare-fun res!619067 () Bool)

(assert (=> d!392240 (=> (not res!619067) (not e!878093))))

(assert (=> d!392240 (= res!619067 e!878091)))

(declare-fun c!226134 () Bool)

(assert (=> d!392240 (= c!226134 (> (size!11416 (_1!7640 lt!456282)) 0))))

(declare-fun lexTailRecV2!415 (LexerInterface!2102 List!13971 BalanceConc!9092 BalanceConc!9092 BalanceConc!9092 BalanceConc!9094) tuple2!13508)

(assert (=> d!392240 (= lt!456282 (lexTailRecV2!415 thiss!19762 rules!2550 lt!456124 (BalanceConc!9093 Empty!4576) lt!456124 (BalanceConc!9095 Empty!4577)))))

(assert (=> d!392240 (= (lex!929 thiss!19762 rules!2550 lt!456124) lt!456282)))

(declare-fun b!1373868 () Bool)

(assert (=> b!1373868 (= e!878093 (= (list!5362 (_2!7640 lt!456282)) (_2!7639 (lexList!620 thiss!19762 rules!2550 (list!5362 lt!456124)))))))

(assert (= (and d!392240 c!226134) b!1373867))

(assert (= (and d!392240 (not c!226134)) b!1373870))

(assert (= (and b!1373867 res!619068) b!1373871))

(assert (= (and d!392240 res!619067) b!1373869))

(assert (= (and b!1373869 res!619066) b!1373868))

(declare-fun m!1545381 () Bool)

(assert (=> b!1373871 m!1545381))

(declare-fun m!1545387 () Bool)

(assert (=> b!1373869 m!1545387))

(assert (=> b!1373869 m!1544837))

(assert (=> b!1373869 m!1544837))

(assert (=> b!1373869 m!1544839))

(declare-fun m!1545393 () Bool)

(assert (=> b!1373868 m!1545393))

(assert (=> b!1373868 m!1544837))

(assert (=> b!1373868 m!1544837))

(assert (=> b!1373868 m!1544839))

(declare-fun m!1545397 () Bool)

(assert (=> b!1373867 m!1545397))

(declare-fun m!1545401 () Bool)

(assert (=> b!1373867 m!1545401))

(declare-fun m!1545403 () Bool)

(assert (=> d!392240 m!1545403))

(declare-fun m!1545405 () Bool)

(assert (=> d!392240 m!1545405))

(assert (=> b!1373462 d!392240))

(declare-fun d!392282 () Bool)

(declare-fun lt!456292 () BalanceConc!9092)

(declare-fun printList!610 (LexerInterface!2102 List!13970) List!13969)

(assert (=> d!392282 (= (list!5362 lt!456292) (printList!610 thiss!19762 (list!5363 (singletonSeq!1040 t1!34))))))

(declare-fun printTailRec!592 (LexerInterface!2102 BalanceConc!9094 Int BalanceConc!9092) BalanceConc!9092)

(assert (=> d!392282 (= lt!456292 (printTailRec!592 thiss!19762 (singletonSeq!1040 t1!34) 0 (BalanceConc!9093 Empty!4576)))))

(assert (=> d!392282 (= (print!868 thiss!19762 (singletonSeq!1040 t1!34)) lt!456292)))

(declare-fun bs!335980 () Bool)

(assert (= bs!335980 d!392282))

(declare-fun m!1545427 () Bool)

(assert (=> bs!335980 m!1545427))

(assert (=> bs!335980 m!1544815))

(assert (=> bs!335980 m!1545155))

(assert (=> bs!335980 m!1545155))

(declare-fun m!1545429 () Bool)

(assert (=> bs!335980 m!1545429))

(assert (=> bs!335980 m!1544815))

(declare-fun m!1545431 () Bool)

(assert (=> bs!335980 m!1545431))

(assert (=> b!1373462 d!392282))

(declare-fun d!392292 () Bool)

(declare-fun e!878113 () Bool)

(assert (=> d!392292 e!878113))

(declare-fun res!619081 () Bool)

(assert (=> d!392292 (=> (not res!619081) (not e!878113))))

(declare-fun lt!456298 () BalanceConc!9094)

(assert (=> d!392292 (= res!619081 (= (list!5363 lt!456298) (Cons!13904 t1!34 Nil!13904)))))

(declare-fun singleton!456 (Token!4476) BalanceConc!9094)

(assert (=> d!392292 (= lt!456298 (singleton!456 t1!34))))

(assert (=> d!392292 (= (singletonSeq!1040 t1!34) lt!456298)))

(declare-fun b!1373896 () Bool)

(declare-fun isBalanced!1350 (Conc!4577) Bool)

(assert (=> b!1373896 (= e!878113 (isBalanced!1350 (c!226062 lt!456298)))))

(assert (= (and d!392292 res!619081) b!1373896))

(declare-fun m!1545441 () Bool)

(assert (=> d!392292 m!1545441))

(declare-fun m!1545443 () Bool)

(assert (=> d!392292 m!1545443))

(declare-fun m!1545445 () Bool)

(assert (=> b!1373896 m!1545445))

(assert (=> b!1373462 d!392292))

(declare-fun d!392300 () Bool)

(declare-fun lt!456304 () List!13972)

(declare-fun size!11418 (List!13972) Int)

(declare-fun size!11419 (List!13971) Int)

(assert (=> d!392300 (= (size!11418 lt!456304) (size!11419 rules!2550))))

(declare-fun e!878118 () List!13972)

(assert (=> d!392300 (= lt!456304 e!878118)))

(declare-fun c!226145 () Bool)

(assert (=> d!392300 (= c!226145 ((_ is Nil!13905) rules!2550))))

(assert (=> d!392300 (= (map!3071 rules!2550 lambda!58378) lt!456304)))

(declare-fun b!1373908 () Bool)

(assert (=> b!1373908 (= e!878118 Nil!13906)))

(declare-fun b!1373909 () Bool)

(declare-fun $colon$colon!203 (List!13972 Regex!3721) List!13972)

(declare-fun dynLambda!6335 (Int Rule!4614) Regex!3721)

(assert (=> b!1373909 (= e!878118 ($colon$colon!203 (map!3071 (t!121642 rules!2550) lambda!58378) (dynLambda!6335 lambda!58378 (h!19306 rules!2550))))))

(assert (= (and d!392300 c!226145) b!1373908))

(assert (= (and d!392300 (not c!226145)) b!1373909))

(declare-fun b_lambda!42163 () Bool)

(assert (=> (not b_lambda!42163) (not b!1373909)))

(declare-fun m!1545465 () Bool)

(assert (=> d!392300 m!1545465))

(declare-fun m!1545467 () Bool)

(assert (=> d!392300 m!1545467))

(declare-fun m!1545469 () Bool)

(assert (=> b!1373909 m!1545469))

(declare-fun m!1545471 () Bool)

(assert (=> b!1373909 m!1545471))

(assert (=> b!1373909 m!1545469))

(assert (=> b!1373909 m!1545471))

(declare-fun m!1545473 () Bool)

(assert (=> b!1373909 m!1545473))

(assert (=> b!1373464 d!392300))

(declare-fun bs!335991 () Bool)

(declare-fun d!392310 () Bool)

(assert (= bs!335991 (and d!392310 b!1373464)))

(declare-fun lambda!58410 () Int)

(assert (=> bs!335991 (not (= lambda!58410 lambda!58379))))

(declare-fun lambda!58411 () Int)

(assert (=> bs!335991 (= lambda!58411 lambda!58379)))

(declare-fun bs!335993 () Bool)

(assert (= bs!335993 d!392310))

(assert (=> bs!335993 (not (= lambda!58411 lambda!58410))))

(assert (=> d!392310 true))

(assert (=> d!392310 (= (matchR!1714 lt!456141 lt!456122) (exists!473 lt!456129 lambda!58411))))

(declare-fun lt!456310 () Unit!20133)

(declare-fun choose!8450 (Regex!3721 List!13972 List!13969) Unit!20133)

(assert (=> d!392310 (= lt!456310 (choose!8450 lt!456141 lt!456129 lt!456122))))

(declare-fun forall!3400 (List!13972 Int) Bool)

(assert (=> d!392310 (forall!3400 lt!456129 lambda!58410)))

(assert (=> d!392310 (= (matchRGenUnionSpec!138 lt!456141 lt!456129 lt!456122) lt!456310)))

(assert (=> bs!335993 m!1544883))

(declare-fun m!1545475 () Bool)

(assert (=> bs!335993 m!1545475))

(declare-fun m!1545477 () Bool)

(assert (=> bs!335993 m!1545477))

(declare-fun m!1545479 () Bool)

(assert (=> bs!335993 m!1545479))

(assert (=> b!1373464 d!392310))

(declare-fun bs!335995 () Bool)

(declare-fun d!392312 () Bool)

(assert (= bs!335995 (and d!392312 b!1373464)))

(declare-fun lambda!58415 () Int)

(assert (=> bs!335995 (not (= lambda!58415 lambda!58379))))

(declare-fun bs!335996 () Bool)

(assert (= bs!335996 (and d!392312 d!392310)))

(assert (=> bs!335996 (not (= lambda!58415 lambda!58410))))

(assert (=> bs!335996 (not (= lambda!58415 lambda!58411))))

(assert (=> d!392312 true))

(declare-fun order!8497 () Int)

(declare-fun dynLambda!6337 (Int Int) Int)

(assert (=> d!392312 (< (dynLambda!6337 order!8497 lambda!58379) (dynLambda!6337 order!8497 lambda!58415))))

(assert (=> d!392312 (= (exists!473 lt!456129 lambda!58379) (not (forall!3400 lt!456129 lambda!58415)))))

(declare-fun bs!335997 () Bool)

(assert (= bs!335997 d!392312))

(declare-fun m!1545499 () Bool)

(assert (=> bs!335997 m!1545499))

(assert (=> b!1373464 d!392312))

(declare-fun bs!335998 () Bool)

(declare-fun d!392318 () Bool)

(assert (= bs!335998 (and d!392318 b!1373464)))

(declare-fun lambda!58416 () Int)

(assert (=> bs!335998 (not (= lambda!58416 lambda!58379))))

(declare-fun bs!335999 () Bool)

(assert (= bs!335999 (and d!392318 d!392310)))

(assert (=> bs!335999 (not (= lambda!58416 lambda!58410))))

(assert (=> bs!335999 (not (= lambda!58416 lambda!58411))))

(declare-fun bs!336000 () Bool)

(assert (= bs!336000 (and d!392318 d!392312)))

(assert (=> bs!336000 (= lambda!58416 lambda!58415)))

(assert (=> d!392318 true))

(assert (=> d!392318 (< (dynLambda!6337 order!8497 lambda!58379) (dynLambda!6337 order!8497 lambda!58416))))

(assert (=> d!392318 (= (exists!473 (map!3071 rules!2550 lambda!58378) lambda!58379) (not (forall!3400 (map!3071 rules!2550 lambda!58378) lambda!58416)))))

(declare-fun bs!336001 () Bool)

(assert (= bs!336001 d!392318))

(assert (=> bs!336001 m!1544793))

(declare-fun m!1545501 () Bool)

(assert (=> bs!336001 m!1545501))

(assert (=> b!1373464 d!392318))

(declare-fun b!1373939 () Bool)

(declare-fun e!878139 () Bool)

(declare-fun lt!456322 () tuple2!13506)

(assert (=> b!1373939 (= e!878139 (= (_2!7639 lt!456322) (list!5362 lt!456142)))))

(declare-fun b!1373940 () Bool)

(declare-fun e!878141 () tuple2!13506)

(declare-fun lt!456324 () Option!2672)

(declare-fun lt!456323 () tuple2!13506)

(assert (=> b!1373940 (= e!878141 (tuple2!13507 (Cons!13904 (_1!7641 (v!21488 lt!456324)) (_1!7639 lt!456323)) (_2!7639 lt!456323)))))

(assert (=> b!1373940 (= lt!456323 (lexList!620 thiss!19762 rules!2550 (_2!7641 (v!21488 lt!456324))))))

(declare-fun b!1373941 () Bool)

(declare-fun e!878140 () Bool)

(declare-fun isEmpty!8397 (List!13970) Bool)

(assert (=> b!1373941 (= e!878140 (not (isEmpty!8397 (_1!7639 lt!456322))))))

(declare-fun d!392320 () Bool)

(assert (=> d!392320 e!878139))

(declare-fun c!226152 () Bool)

(declare-fun size!11420 (List!13970) Int)

(assert (=> d!392320 (= c!226152 (> (size!11420 (_1!7639 lt!456322)) 0))))

(assert (=> d!392320 (= lt!456322 e!878141)))

(declare-fun c!226153 () Bool)

(assert (=> d!392320 (= c!226153 ((_ is Some!2671) lt!456324))))

(assert (=> d!392320 (= lt!456324 (maxPrefix!1084 thiss!19762 rules!2550 (list!5362 lt!456142)))))

(assert (=> d!392320 (= (lexList!620 thiss!19762 rules!2550 (list!5362 lt!456142)) lt!456322)))

(declare-fun b!1373942 () Bool)

(assert (=> b!1373942 (= e!878141 (tuple2!13507 Nil!13904 (list!5362 lt!456142)))))

(declare-fun b!1373943 () Bool)

(assert (=> b!1373943 (= e!878139 e!878140)))

(declare-fun res!619098 () Bool)

(assert (=> b!1373943 (= res!619098 (< (size!11415 (_2!7639 lt!456322)) (size!11415 (list!5362 lt!456142))))))

(assert (=> b!1373943 (=> (not res!619098) (not e!878140))))

(assert (= (and d!392320 c!226153) b!1373940))

(assert (= (and d!392320 (not c!226153)) b!1373942))

(assert (= (and d!392320 c!226152) b!1373943))

(assert (= (and d!392320 (not c!226152)) b!1373939))

(assert (= (and b!1373943 res!619098) b!1373941))

(declare-fun m!1545531 () Bool)

(assert (=> b!1373940 m!1545531))

(declare-fun m!1545533 () Bool)

(assert (=> b!1373941 m!1545533))

(declare-fun m!1545535 () Bool)

(assert (=> d!392320 m!1545535))

(assert (=> d!392320 m!1544831))

(declare-fun m!1545537 () Bool)

(assert (=> d!392320 m!1545537))

(declare-fun m!1545539 () Bool)

(assert (=> b!1373943 m!1545539))

(assert (=> b!1373943 m!1544831))

(declare-fun m!1545541 () Bool)

(assert (=> b!1373943 m!1545541))

(assert (=> b!1373442 d!392320))

(declare-fun d!392332 () Bool)

(assert (=> d!392332 (= (list!5362 lt!456142) (list!5366 (c!226060 lt!456142)))))

(declare-fun bs!336003 () Bool)

(assert (= bs!336003 d!392332))

(declare-fun m!1545543 () Bool)

(assert (=> bs!336003 m!1545543))

(assert (=> b!1373442 d!392332))

(declare-fun b!1373958 () Bool)

(declare-fun res!619105 () Bool)

(declare-fun e!878152 () Bool)

(assert (=> b!1373958 (=> res!619105 e!878152)))

(assert (=> b!1373958 (= res!619105 (not ((_ is IntegerValue!7493) (value!78232 t2!34))))))

(declare-fun e!878151 () Bool)

(assert (=> b!1373958 (= e!878151 e!878152)))

(declare-fun b!1373959 () Bool)

(declare-fun e!878150 () Bool)

(assert (=> b!1373959 (= e!878150 e!878151)))

(declare-fun c!226159 () Bool)

(assert (=> b!1373959 (= c!226159 ((_ is IntegerValue!7492) (value!78232 t2!34)))))

(declare-fun b!1373960 () Bool)

(declare-fun inv!16 (TokenValue!2497) Bool)

(assert (=> b!1373960 (= e!878150 (inv!16 (value!78232 t2!34)))))

(declare-fun b!1373961 () Bool)

(declare-fun inv!15 (TokenValue!2497) Bool)

(assert (=> b!1373961 (= e!878152 (inv!15 (value!78232 t2!34)))))

(declare-fun b!1373962 () Bool)

(declare-fun inv!17 (TokenValue!2497) Bool)

(assert (=> b!1373962 (= e!878151 (inv!17 (value!78232 t2!34)))))

(declare-fun d!392334 () Bool)

(declare-fun c!226158 () Bool)

(assert (=> d!392334 (= c!226158 ((_ is IntegerValue!7491) (value!78232 t2!34)))))

(assert (=> d!392334 (= (inv!21 (value!78232 t2!34)) e!878150)))

(assert (= (and d!392334 c!226158) b!1373960))

(assert (= (and d!392334 (not c!226158)) b!1373959))

(assert (= (and b!1373959 c!226159) b!1373962))

(assert (= (and b!1373959 (not c!226159)) b!1373958))

(assert (= (and b!1373958 (not res!619105)) b!1373961))

(declare-fun m!1545551 () Bool)

(assert (=> b!1373960 m!1545551))

(declare-fun m!1545553 () Bool)

(assert (=> b!1373961 m!1545553))

(declare-fun m!1545555 () Bool)

(assert (=> b!1373962 m!1545555))

(assert (=> b!1373463 d!392334))

(declare-fun bs!336005 () Bool)

(declare-fun d!392338 () Bool)

(assert (= bs!336005 (and d!392338 b!1373444)))

(declare-fun lambda!58419 () Int)

(assert (=> bs!336005 (not (= lambda!58419 lambda!58380))))

(declare-fun bs!336006 () Bool)

(assert (= bs!336006 (and d!392338 b!1373448)))

(assert (=> bs!336006 (not (= lambda!58419 lambda!58381))))

(assert (=> d!392338 true))

(declare-fun order!8499 () Int)

(declare-fun dynLambda!6338 (Int Int) Int)

(assert (=> d!392338 (< (dynLambda!6338 order!8499 lambda!58380) (dynLambda!6338 order!8499 lambda!58419))))

(declare-fun forall!3401 (List!13971 Int) Bool)

(assert (=> d!392338 (= (exists!472 rules!2550 lambda!58380) (not (forall!3401 rules!2550 lambda!58419)))))

(declare-fun bs!336007 () Bool)

(assert (= bs!336007 d!392338))

(declare-fun m!1545575 () Bool)

(assert (=> bs!336007 m!1545575))

(assert (=> b!1373444 d!392338))

(declare-fun bs!336009 () Bool)

(declare-fun d!392344 () Bool)

(assert (= bs!336009 (and d!392344 b!1373444)))

(declare-fun lambda!58422 () Int)

(assert (=> bs!336009 (not (= lambda!58422 lambda!58380))))

(declare-fun bs!336010 () Bool)

(assert (= bs!336010 (and d!392344 b!1373448)))

(assert (=> bs!336010 (not (= lambda!58422 lambda!58381))))

(declare-fun bs!336011 () Bool)

(assert (= bs!336011 (and d!392344 d!392338)))

(assert (=> bs!336011 (not (= lambda!58422 lambda!58419))))

(assert (=> d!392344 true))

(assert (=> d!392344 true))

(declare-fun order!8501 () Int)

(declare-fun dynLambda!6340 (Int Int) Int)

(assert (=> d!392344 (< (dynLambda!6340 order!8501 lambda!58378) (dynLambda!6338 order!8499 lambda!58422))))

(assert (=> d!392344 (exists!472 rules!2550 lambda!58422)))

(declare-fun lt!456335 () Unit!20133)

(declare-fun choose!8453 (List!13971 Int Regex!3721) Unit!20133)

(assert (=> d!392344 (= lt!456335 (choose!8453 rules!2550 lambda!58378 lt!456134))))

(assert (=> d!392344 (contains!2609 (map!3071 rules!2550 lambda!58378) lt!456134)))

(assert (=> d!392344 (= (lemmaMapContains!126 rules!2550 lambda!58378 lt!456134) lt!456335)))

(declare-fun bs!336012 () Bool)

(assert (= bs!336012 d!392344))

(declare-fun m!1545599 () Bool)

(assert (=> bs!336012 m!1545599))

(declare-fun m!1545601 () Bool)

(assert (=> bs!336012 m!1545601))

(assert (=> bs!336012 m!1544793))

(assert (=> bs!336012 m!1544793))

(assert (=> bs!336012 m!1544795))

(assert (=> b!1373444 d!392344))

(declare-fun d!392352 () Bool)

(declare-fun choose!8454 (Int) Bool)

(assert (=> d!392352 (= (Exists!873 lambda!58377) (choose!8454 lambda!58377))))

(declare-fun bs!336013 () Bool)

(assert (= bs!336013 d!392352))

(declare-fun m!1545603 () Bool)

(assert (=> bs!336013 m!1545603))

(assert (=> b!1373443 d!392352))

(declare-fun bs!336015 () Bool)

(declare-fun d!392354 () Bool)

(assert (= bs!336015 (and d!392354 b!1373443)))

(declare-fun lambda!58425 () Int)

(assert (=> bs!336015 (= lambda!58425 lambda!58377)))

(assert (=> d!392354 true))

(assert (=> d!392354 true))

(assert (=> d!392354 (Exists!873 lambda!58425)))

(declare-fun lt!456346 () Unit!20133)

(declare-fun choose!8456 (Regex!3721 List!13969) Unit!20133)

(assert (=> d!392354 (= lt!456346 (choose!8456 lt!456141 lt!456127))))

(assert (=> d!392354 (validRegex!1621 lt!456141)))

(assert (=> d!392354 (= (lemmaPrefixMatchThenExistsStringThatMatches!191 lt!456141 lt!456127) lt!456346)))

(declare-fun bs!336016 () Bool)

(assert (= bs!336016 d!392354))

(declare-fun m!1545657 () Bool)

(assert (=> bs!336016 m!1545657))

(declare-fun m!1545659 () Bool)

(assert (=> bs!336016 m!1545659))

(assert (=> bs!336016 m!1545029))

(assert (=> b!1373443 d!392354))

(declare-fun d!392372 () Bool)

(assert (=> d!392372 (= (isEmpty!8388 rules!2550) ((_ is Nil!13905) rules!2550))))

(assert (=> b!1373445 d!392372))

(declare-fun b!1374014 () Bool)

(declare-fun res!619136 () Bool)

(declare-fun e!878182 () Bool)

(assert (=> b!1374014 (=> res!619136 e!878182)))

(assert (=> b!1374014 (= res!619136 (not ((_ is IntegerValue!7493) (value!78232 t1!34))))))

(declare-fun e!878181 () Bool)

(assert (=> b!1374014 (= e!878181 e!878182)))

(declare-fun b!1374015 () Bool)

(declare-fun e!878180 () Bool)

(assert (=> b!1374015 (= e!878180 e!878181)))

(declare-fun c!226168 () Bool)

(assert (=> b!1374015 (= c!226168 ((_ is IntegerValue!7492) (value!78232 t1!34)))))

(declare-fun b!1374016 () Bool)

(assert (=> b!1374016 (= e!878180 (inv!16 (value!78232 t1!34)))))

(declare-fun b!1374017 () Bool)

(assert (=> b!1374017 (= e!878182 (inv!15 (value!78232 t1!34)))))

(declare-fun b!1374018 () Bool)

(assert (=> b!1374018 (= e!878181 (inv!17 (value!78232 t1!34)))))

(declare-fun d!392374 () Bool)

(declare-fun c!226167 () Bool)

(assert (=> d!392374 (= c!226167 ((_ is IntegerValue!7491) (value!78232 t1!34)))))

(assert (=> d!392374 (= (inv!21 (value!78232 t1!34)) e!878180)))

(assert (= (and d!392374 c!226167) b!1374016))

(assert (= (and d!392374 (not c!226167)) b!1374015))

(assert (= (and b!1374015 c!226168) b!1374018))

(assert (= (and b!1374015 (not c!226168)) b!1374014))

(assert (= (and b!1374014 (not res!619136)) b!1374017))

(declare-fun m!1545661 () Bool)

(assert (=> b!1374016 m!1545661))

(declare-fun m!1545663 () Bool)

(assert (=> b!1374017 m!1545663))

(declare-fun m!1545665 () Bool)

(assert (=> b!1374018 m!1545665))

(assert (=> b!1373466 d!392374))

(declare-fun d!392376 () Bool)

(declare-fun lt!456352 () Bool)

(declare-fun content!2039 (List!13972) (InoxSet Regex!3721))

(assert (=> d!392376 (= lt!456352 (select (content!2039 (map!3071 rules!2550 lambda!58378)) lt!456134))))

(declare-fun e!878190 () Bool)

(assert (=> d!392376 (= lt!456352 e!878190)))

(declare-fun res!619141 () Bool)

(assert (=> d!392376 (=> (not res!619141) (not e!878190))))

(assert (=> d!392376 (= res!619141 ((_ is Cons!13906) (map!3071 rules!2550 lambda!58378)))))

(assert (=> d!392376 (= (contains!2609 (map!3071 rules!2550 lambda!58378) lt!456134) lt!456352)))

(declare-fun b!1374029 () Bool)

(declare-fun e!878191 () Bool)

(assert (=> b!1374029 (= e!878190 e!878191)))

(declare-fun res!619142 () Bool)

(assert (=> b!1374029 (=> res!619142 e!878191)))

(assert (=> b!1374029 (= res!619142 (= (h!19307 (map!3071 rules!2550 lambda!58378)) lt!456134))))

(declare-fun b!1374030 () Bool)

(assert (=> b!1374030 (= e!878191 (contains!2609 (t!121643 (map!3071 rules!2550 lambda!58378)) lt!456134))))

(assert (= (and d!392376 res!619141) b!1374029))

(assert (= (and b!1374029 (not res!619142)) b!1374030))

(assert (=> d!392376 m!1544793))

(declare-fun m!1545673 () Bool)

(assert (=> d!392376 m!1545673))

(declare-fun m!1545675 () Bool)

(assert (=> d!392376 m!1545675))

(declare-fun m!1545677 () Bool)

(assert (=> b!1374030 m!1545677))

(assert (=> b!1373468 d!392376))

(assert (=> b!1373468 d!392300))

(declare-fun b!1374082 () Bool)

(declare-fun e!878221 () Regex!3721)

(assert (=> b!1374082 (= e!878221 (h!19307 (map!3071 rules!2550 lambda!58378)))))

(declare-fun d!392380 () Bool)

(declare-fun e!878223 () Bool)

(assert (=> d!392380 e!878223))

(declare-fun res!619147 () Bool)

(assert (=> d!392380 (=> (not res!619147) (not e!878223))))

(declare-fun lt!456361 () Regex!3721)

(declare-fun dynLambda!6341 (Int Regex!3721) Bool)

(assert (=> d!392380 (= res!619147 (dynLambda!6341 lambda!58379 lt!456361))))

(assert (=> d!392380 (= lt!456361 e!878221)))

(declare-fun c!226177 () Bool)

(declare-fun e!878224 () Bool)

(assert (=> d!392380 (= c!226177 e!878224)))

(declare-fun res!619148 () Bool)

(assert (=> d!392380 (=> (not res!619148) (not e!878224))))

(assert (=> d!392380 (= res!619148 ((_ is Cons!13906) (map!3071 rules!2550 lambda!58378)))))

(assert (=> d!392380 (exists!473 (map!3071 rules!2550 lambda!58378) lambda!58379)))

(assert (=> d!392380 (= (getWitness!361 (map!3071 rules!2550 lambda!58378) lambda!58379) lt!456361)))

(declare-fun b!1374083 () Bool)

(declare-fun e!878222 () Regex!3721)

(assert (=> b!1374083 (= e!878221 e!878222)))

(declare-fun c!226176 () Bool)

(assert (=> b!1374083 (= c!226176 ((_ is Cons!13906) (map!3071 rules!2550 lambda!58378)))))

(declare-fun b!1374084 () Bool)

(assert (=> b!1374084 (= e!878222 (getWitness!361 (t!121643 (map!3071 rules!2550 lambda!58378)) lambda!58379))))

(declare-fun b!1374085 () Bool)

(assert (=> b!1374085 (= e!878224 (dynLambda!6341 lambda!58379 (h!19307 (map!3071 rules!2550 lambda!58378))))))

(declare-fun b!1374086 () Bool)

(declare-fun lt!456360 () Unit!20133)

(declare-fun Unit!20138 () Unit!20133)

(assert (=> b!1374086 (= lt!456360 Unit!20138)))

(assert (=> b!1374086 false))

(declare-fun head!2479 (List!13972) Regex!3721)

(assert (=> b!1374086 (= e!878222 (head!2479 (map!3071 rules!2550 lambda!58378)))))

(declare-fun b!1374087 () Bool)

(assert (=> b!1374087 (= e!878223 (contains!2609 (map!3071 rules!2550 lambda!58378) lt!456361))))

(assert (= (and d!392380 res!619148) b!1374085))

(assert (= (and d!392380 c!226177) b!1374082))

(assert (= (and d!392380 (not c!226177)) b!1374083))

(assert (= (and b!1374083 c!226176) b!1374084))

(assert (= (and b!1374083 (not c!226176)) b!1374086))

(assert (= (and d!392380 res!619147) b!1374087))

(declare-fun b_lambda!42205 () Bool)

(assert (=> (not b_lambda!42205) (not d!392380)))

(declare-fun b_lambda!42207 () Bool)

(assert (=> (not b_lambda!42207) (not b!1374085)))

(declare-fun m!1545693 () Bool)

(assert (=> b!1374084 m!1545693))

(assert (=> b!1374086 m!1544793))

(declare-fun m!1545695 () Bool)

(assert (=> b!1374086 m!1545695))

(declare-fun m!1545697 () Bool)

(assert (=> d!392380 m!1545697))

(assert (=> d!392380 m!1544793))

(assert (=> d!392380 m!1544877))

(assert (=> b!1374087 m!1544793))

(declare-fun m!1545701 () Bool)

(assert (=> b!1374087 m!1545701))

(declare-fun m!1545705 () Bool)

(assert (=> b!1374085 m!1545705))

(assert (=> b!1373468 d!392380))

(declare-fun b!1374091 () Bool)

(declare-fun res!619154 () Bool)

(declare-fun e!878232 () Bool)

(assert (=> b!1374091 (=> (not res!619154) (not e!878232))))

(declare-fun call!92218 () Bool)

(assert (=> b!1374091 (= res!619154 (not call!92218))))

(declare-fun b!1374092 () Bool)

(declare-fun e!878231 () Bool)

(assert (=> b!1374092 (= e!878231 (not (= (head!2475 lt!456133) (c!226061 (regex!2407 (rule!4164 t2!34))))))))

(declare-fun b!1374093 () Bool)

(declare-fun e!878228 () Bool)

(declare-fun lt!456362 () Bool)

(assert (=> b!1374093 (= e!878228 (not lt!456362))))

(declare-fun b!1374094 () Bool)

(declare-fun res!619157 () Bool)

(assert (=> b!1374094 (=> res!619157 e!878231)))

(assert (=> b!1374094 (= res!619157 (not (isEmpty!8392 (tail!1987 lt!456133))))))

(declare-fun b!1374095 () Bool)

(declare-fun e!878230 () Bool)

(assert (=> b!1374095 (= e!878230 (nullable!1201 (regex!2407 (rule!4164 t2!34))))))

(declare-fun b!1374096 () Bool)

(assert (=> b!1374096 (= e!878230 (matchR!1714 (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133)) (tail!1987 lt!456133)))))

(declare-fun b!1374097 () Bool)

(declare-fun e!878234 () Bool)

(assert (=> b!1374097 (= e!878234 e!878228)))

(declare-fun c!226178 () Bool)

(assert (=> b!1374097 (= c!226178 ((_ is EmptyLang!3721) (regex!2407 (rule!4164 t2!34))))))

(declare-fun b!1374098 () Bool)

(assert (=> b!1374098 (= e!878234 (= lt!456362 call!92218))))

(declare-fun bm!92213 () Bool)

(assert (=> bm!92213 (= call!92218 (isEmpty!8392 lt!456133))))

(declare-fun b!1374099 () Bool)

(assert (=> b!1374099 (= e!878232 (= (head!2475 lt!456133) (c!226061 (regex!2407 (rule!4164 t2!34)))))))

(declare-fun b!1374100 () Bool)

(declare-fun res!619158 () Bool)

(assert (=> b!1374100 (=> (not res!619158) (not e!878232))))

(assert (=> b!1374100 (= res!619158 (isEmpty!8392 (tail!1987 lt!456133)))))

(declare-fun b!1374101 () Bool)

(declare-fun res!619159 () Bool)

(declare-fun e!878229 () Bool)

(assert (=> b!1374101 (=> res!619159 e!878229)))

(assert (=> b!1374101 (= res!619159 e!878232)))

(declare-fun res!619151 () Bool)

(assert (=> b!1374101 (=> (not res!619151) (not e!878232))))

(assert (=> b!1374101 (= res!619151 lt!456362)))

(declare-fun d!392396 () Bool)

(assert (=> d!392396 e!878234))

(declare-fun c!226179 () Bool)

(assert (=> d!392396 (= c!226179 ((_ is EmptyExpr!3721) (regex!2407 (rule!4164 t2!34))))))

(assert (=> d!392396 (= lt!456362 e!878230)))

(declare-fun c!226180 () Bool)

(assert (=> d!392396 (= c!226180 (isEmpty!8392 lt!456133))))

(assert (=> d!392396 (validRegex!1621 (regex!2407 (rule!4164 t2!34)))))

(assert (=> d!392396 (= (matchR!1714 (regex!2407 (rule!4164 t2!34)) lt!456133) lt!456362)))

(declare-fun b!1374102 () Bool)

(declare-fun res!619155 () Bool)

(assert (=> b!1374102 (=> res!619155 e!878229)))

(assert (=> b!1374102 (= res!619155 (not ((_ is ElementMatch!3721) (regex!2407 (rule!4164 t2!34)))))))

(assert (=> b!1374102 (= e!878228 e!878229)))

(declare-fun b!1374103 () Bool)

(declare-fun e!878233 () Bool)

(assert (=> b!1374103 (= e!878229 e!878233)))

(declare-fun res!619156 () Bool)

(assert (=> b!1374103 (=> (not res!619156) (not e!878233))))

(assert (=> b!1374103 (= res!619156 (not lt!456362))))

(declare-fun b!1374104 () Bool)

(assert (=> b!1374104 (= e!878233 e!878231)))

(declare-fun res!619153 () Bool)

(assert (=> b!1374104 (=> res!619153 e!878231)))

(assert (=> b!1374104 (= res!619153 call!92218)))

(assert (= (and d!392396 c!226180) b!1374095))

(assert (= (and d!392396 (not c!226180)) b!1374096))

(assert (= (and d!392396 c!226179) b!1374098))

(assert (= (and d!392396 (not c!226179)) b!1374097))

(assert (= (and b!1374097 c!226178) b!1374093))

(assert (= (and b!1374097 (not c!226178)) b!1374102))

(assert (= (and b!1374102 (not res!619155)) b!1374101))

(assert (= (and b!1374101 res!619151) b!1374091))

(assert (= (and b!1374091 res!619154) b!1374100))

(assert (= (and b!1374100 res!619158) b!1374099))

(assert (= (and b!1374101 (not res!619159)) b!1374103))

(assert (= (and b!1374103 res!619156) b!1374104))

(assert (= (and b!1374104 (not res!619153)) b!1374094))

(assert (= (and b!1374094 (not res!619157)) b!1374092))

(assert (= (or b!1374098 b!1374091 b!1374104) bm!92213))

(declare-fun m!1545715 () Bool)

(assert (=> d!392396 m!1545715))

(declare-fun m!1545717 () Bool)

(assert (=> d!392396 m!1545717))

(declare-fun m!1545719 () Bool)

(assert (=> b!1374094 m!1545719))

(assert (=> b!1374094 m!1545719))

(declare-fun m!1545721 () Bool)

(assert (=> b!1374094 m!1545721))

(declare-fun m!1545723 () Bool)

(assert (=> b!1374092 m!1545723))

(assert (=> b!1374100 m!1545719))

(assert (=> b!1374100 m!1545719))

(assert (=> b!1374100 m!1545721))

(assert (=> b!1374099 m!1545723))

(declare-fun m!1545725 () Bool)

(assert (=> b!1374095 m!1545725))

(assert (=> b!1374096 m!1545723))

(assert (=> b!1374096 m!1545723))

(declare-fun m!1545727 () Bool)

(assert (=> b!1374096 m!1545727))

(assert (=> b!1374096 m!1545719))

(assert (=> b!1374096 m!1545727))

(assert (=> b!1374096 m!1545719))

(declare-fun m!1545729 () Bool)

(assert (=> b!1374096 m!1545729))

(assert (=> bm!92213 m!1545715))

(assert (=> b!1373446 d!392396))

(declare-fun b!1374123 () Bool)

(declare-fun res!619180 () Bool)

(declare-fun e!878241 () Bool)

(assert (=> b!1374123 (=> (not res!619180) (not e!878241))))

(declare-fun lt!456377 () Option!2672)

(declare-fun get!4350 (Option!2672) tuple2!13510)

(assert (=> b!1374123 (= res!619180 (= (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377)))) (originalCharacters!3269 (_1!7641 (get!4350 lt!456377)))))))

(declare-fun b!1374124 () Bool)

(assert (=> b!1374124 (= e!878241 (contains!2608 rules!2550 (rule!4164 (_1!7641 (get!4350 lt!456377)))))))

(declare-fun b!1374125 () Bool)

(declare-fun res!619177 () Bool)

(assert (=> b!1374125 (=> (not res!619177) (not e!878241))))

(assert (=> b!1374125 (= res!619177 (matchR!1714 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))))))

(declare-fun b!1374126 () Bool)

(declare-fun e!878243 () Option!2672)

(declare-fun lt!456373 () Option!2672)

(declare-fun lt!456375 () Option!2672)

(assert (=> b!1374126 (= e!878243 (ite (and ((_ is None!2671) lt!456373) ((_ is None!2671) lt!456375)) None!2671 (ite ((_ is None!2671) lt!456375) lt!456373 (ite ((_ is None!2671) lt!456373) lt!456375 (ite (>= (size!11409 (_1!7641 (v!21488 lt!456373))) (size!11409 (_1!7641 (v!21488 lt!456375)))) lt!456373 lt!456375)))))))

(declare-fun call!92221 () Option!2672)

(assert (=> b!1374126 (= lt!456373 call!92221)))

(assert (=> b!1374126 (= lt!456375 (maxPrefix!1084 thiss!19762 (t!121642 rules!2550) lt!456128))))

(declare-fun b!1374127 () Bool)

(assert (=> b!1374127 (= e!878243 call!92221)))

(declare-fun b!1374129 () Bool)

(declare-fun res!619176 () Bool)

(assert (=> b!1374129 (=> (not res!619176) (not e!878241))))

(assert (=> b!1374129 (= res!619176 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377)))) (_2!7641 (get!4350 lt!456377))) lt!456128))))

(declare-fun bm!92216 () Bool)

(declare-fun maxPrefixOneRule!619 (LexerInterface!2102 Rule!4614 List!13969) Option!2672)

(assert (=> bm!92216 (= call!92221 (maxPrefixOneRule!619 thiss!19762 (h!19306 rules!2550) lt!456128))))

(declare-fun b!1374130 () Bool)

(declare-fun res!619174 () Bool)

(assert (=> b!1374130 (=> (not res!619174) (not e!878241))))

(declare-fun apply!3431 (TokenValueInjection!4654 BalanceConc!9092) TokenValue!2497)

(declare-fun seqFromList!1637 (List!13969) BalanceConc!9092)

(assert (=> b!1374130 (= res!619174 (= (value!78232 (_1!7641 (get!4350 lt!456377))) (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456377)))))))))

(declare-fun b!1374131 () Bool)

(declare-fun e!878242 () Bool)

(assert (=> b!1374131 (= e!878242 e!878241)))

(declare-fun res!619178 () Bool)

(assert (=> b!1374131 (=> (not res!619178) (not e!878241))))

(declare-fun isDefined!2221 (Option!2672) Bool)

(assert (=> b!1374131 (= res!619178 (isDefined!2221 lt!456377))))

(declare-fun b!1374128 () Bool)

(declare-fun res!619175 () Bool)

(assert (=> b!1374128 (=> (not res!619175) (not e!878241))))

(assert (=> b!1374128 (= res!619175 (< (size!11415 (_2!7641 (get!4350 lt!456377))) (size!11415 lt!456128)))))

(declare-fun d!392402 () Bool)

(assert (=> d!392402 e!878242))

(declare-fun res!619179 () Bool)

(assert (=> d!392402 (=> res!619179 e!878242)))

(declare-fun isEmpty!8399 (Option!2672) Bool)

(assert (=> d!392402 (= res!619179 (isEmpty!8399 lt!456377))))

(assert (=> d!392402 (= lt!456377 e!878243)))

(declare-fun c!226183 () Bool)

(assert (=> d!392402 (= c!226183 (and ((_ is Cons!13905) rules!2550) ((_ is Nil!13905) (t!121642 rules!2550))))))

(declare-fun lt!456374 () Unit!20133)

(declare-fun lt!456376 () Unit!20133)

(assert (=> d!392402 (= lt!456374 lt!456376)))

(declare-fun isPrefix!1131 (List!13969 List!13969) Bool)

(assert (=> d!392402 (isPrefix!1131 lt!456128 lt!456128)))

(declare-fun lemmaIsPrefixRefl!793 (List!13969 List!13969) Unit!20133)

(assert (=> d!392402 (= lt!456376 (lemmaIsPrefixRefl!793 lt!456128 lt!456128))))

(declare-fun rulesValidInductive!772 (LexerInterface!2102 List!13971) Bool)

(assert (=> d!392402 (rulesValidInductive!772 thiss!19762 rules!2550)))

(assert (=> d!392402 (= (maxPrefix!1084 thiss!19762 rules!2550 lt!456128) lt!456377)))

(assert (= (and d!392402 c!226183) b!1374127))

(assert (= (and d!392402 (not c!226183)) b!1374126))

(assert (= (or b!1374127 b!1374126) bm!92216))

(assert (= (and d!392402 (not res!619179)) b!1374131))

(assert (= (and b!1374131 res!619178) b!1374123))

(assert (= (and b!1374123 res!619180) b!1374128))

(assert (= (and b!1374128 res!619175) b!1374129))

(assert (= (and b!1374129 res!619176) b!1374130))

(assert (= (and b!1374130 res!619174) b!1374125))

(assert (= (and b!1374125 res!619177) b!1374124))

(declare-fun m!1545731 () Bool)

(assert (=> b!1374124 m!1545731))

(declare-fun m!1545733 () Bool)

(assert (=> b!1374124 m!1545733))

(assert (=> b!1374129 m!1545731))

(declare-fun m!1545735 () Bool)

(assert (=> b!1374129 m!1545735))

(assert (=> b!1374129 m!1545735))

(declare-fun m!1545737 () Bool)

(assert (=> b!1374129 m!1545737))

(assert (=> b!1374129 m!1545737))

(declare-fun m!1545739 () Bool)

(assert (=> b!1374129 m!1545739))

(declare-fun m!1545741 () Bool)

(assert (=> bm!92216 m!1545741))

(assert (=> b!1374125 m!1545731))

(assert (=> b!1374125 m!1545735))

(assert (=> b!1374125 m!1545735))

(assert (=> b!1374125 m!1545737))

(assert (=> b!1374125 m!1545737))

(declare-fun m!1545743 () Bool)

(assert (=> b!1374125 m!1545743))

(assert (=> b!1374123 m!1545731))

(assert (=> b!1374123 m!1545735))

(assert (=> b!1374123 m!1545735))

(assert (=> b!1374123 m!1545737))

(declare-fun m!1545745 () Bool)

(assert (=> b!1374126 m!1545745))

(assert (=> b!1374130 m!1545731))

(declare-fun m!1545747 () Bool)

(assert (=> b!1374130 m!1545747))

(assert (=> b!1374130 m!1545747))

(declare-fun m!1545749 () Bool)

(assert (=> b!1374130 m!1545749))

(declare-fun m!1545751 () Bool)

(assert (=> b!1374131 m!1545751))

(declare-fun m!1545753 () Bool)

(assert (=> d!392402 m!1545753))

(declare-fun m!1545755 () Bool)

(assert (=> d!392402 m!1545755))

(declare-fun m!1545757 () Bool)

(assert (=> d!392402 m!1545757))

(declare-fun m!1545759 () Bool)

(assert (=> d!392402 m!1545759))

(assert (=> b!1374128 m!1545731))

(declare-fun m!1545761 () Bool)

(assert (=> b!1374128 m!1545761))

(assert (=> b!1374128 m!1544933))

(assert (=> b!1373467 d!392402))

(declare-fun b!1374132 () Bool)

(declare-fun res!619183 () Bool)

(declare-fun e!878248 () Bool)

(assert (=> b!1374132 (=> (not res!619183) (not e!878248))))

(declare-fun call!92222 () Bool)

(assert (=> b!1374132 (= res!619183 (not call!92222))))

(declare-fun b!1374133 () Bool)

(declare-fun e!878247 () Bool)

(assert (=> b!1374133 (= e!878247 (not (= (head!2475 lt!456128) (c!226061 (regex!2407 (rule!4164 t1!34))))))))

(declare-fun b!1374134 () Bool)

(declare-fun e!878244 () Bool)

(declare-fun lt!456378 () Bool)

(assert (=> b!1374134 (= e!878244 (not lt!456378))))

(declare-fun b!1374135 () Bool)

(declare-fun res!619186 () Bool)

(assert (=> b!1374135 (=> res!619186 e!878247)))

(assert (=> b!1374135 (= res!619186 (not (isEmpty!8392 (tail!1987 lt!456128))))))

(declare-fun b!1374136 () Bool)

(declare-fun e!878246 () Bool)

(assert (=> b!1374136 (= e!878246 (nullable!1201 (regex!2407 (rule!4164 t1!34))))))

(declare-fun b!1374137 () Bool)

(assert (=> b!1374137 (= e!878246 (matchR!1714 (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128)) (tail!1987 lt!456128)))))

(declare-fun b!1374138 () Bool)

(declare-fun e!878250 () Bool)

(assert (=> b!1374138 (= e!878250 e!878244)))

(declare-fun c!226184 () Bool)

(assert (=> b!1374138 (= c!226184 ((_ is EmptyLang!3721) (regex!2407 (rule!4164 t1!34))))))

(declare-fun b!1374139 () Bool)

(assert (=> b!1374139 (= e!878250 (= lt!456378 call!92222))))

(declare-fun bm!92217 () Bool)

(assert (=> bm!92217 (= call!92222 (isEmpty!8392 lt!456128))))

(declare-fun b!1374140 () Bool)

(assert (=> b!1374140 (= e!878248 (= (head!2475 lt!456128) (c!226061 (regex!2407 (rule!4164 t1!34)))))))

(declare-fun b!1374141 () Bool)

(declare-fun res!619187 () Bool)

(assert (=> b!1374141 (=> (not res!619187) (not e!878248))))

(assert (=> b!1374141 (= res!619187 (isEmpty!8392 (tail!1987 lt!456128)))))

(declare-fun b!1374142 () Bool)

(declare-fun res!619188 () Bool)

(declare-fun e!878245 () Bool)

(assert (=> b!1374142 (=> res!619188 e!878245)))

(assert (=> b!1374142 (= res!619188 e!878248)))

(declare-fun res!619181 () Bool)

(assert (=> b!1374142 (=> (not res!619181) (not e!878248))))

(assert (=> b!1374142 (= res!619181 lt!456378)))

(declare-fun d!392404 () Bool)

(assert (=> d!392404 e!878250))

(declare-fun c!226185 () Bool)

(assert (=> d!392404 (= c!226185 ((_ is EmptyExpr!3721) (regex!2407 (rule!4164 t1!34))))))

(assert (=> d!392404 (= lt!456378 e!878246)))

(declare-fun c!226186 () Bool)

(assert (=> d!392404 (= c!226186 (isEmpty!8392 lt!456128))))

(assert (=> d!392404 (validRegex!1621 (regex!2407 (rule!4164 t1!34)))))

(assert (=> d!392404 (= (matchR!1714 (regex!2407 (rule!4164 t1!34)) lt!456128) lt!456378)))

(declare-fun b!1374143 () Bool)

(declare-fun res!619184 () Bool)

(assert (=> b!1374143 (=> res!619184 e!878245)))

(assert (=> b!1374143 (= res!619184 (not ((_ is ElementMatch!3721) (regex!2407 (rule!4164 t1!34)))))))

(assert (=> b!1374143 (= e!878244 e!878245)))

(declare-fun b!1374144 () Bool)

(declare-fun e!878249 () Bool)

(assert (=> b!1374144 (= e!878245 e!878249)))

(declare-fun res!619185 () Bool)

(assert (=> b!1374144 (=> (not res!619185) (not e!878249))))

(assert (=> b!1374144 (= res!619185 (not lt!456378))))

(declare-fun b!1374145 () Bool)

(assert (=> b!1374145 (= e!878249 e!878247)))

(declare-fun res!619182 () Bool)

(assert (=> b!1374145 (=> res!619182 e!878247)))

(assert (=> b!1374145 (= res!619182 call!92222)))

(assert (= (and d!392404 c!226186) b!1374136))

(assert (= (and d!392404 (not c!226186)) b!1374137))

(assert (= (and d!392404 c!226185) b!1374139))

(assert (= (and d!392404 (not c!226185)) b!1374138))

(assert (= (and b!1374138 c!226184) b!1374134))

(assert (= (and b!1374138 (not c!226184)) b!1374143))

(assert (= (and b!1374143 (not res!619184)) b!1374142))

(assert (= (and b!1374142 res!619181) b!1374132))

(assert (= (and b!1374132 res!619183) b!1374141))

(assert (= (and b!1374141 res!619187) b!1374140))

(assert (= (and b!1374142 (not res!619188)) b!1374144))

(assert (= (and b!1374144 res!619185) b!1374145))

(assert (= (and b!1374145 (not res!619182)) b!1374135))

(assert (= (and b!1374135 (not res!619186)) b!1374133))

(assert (= (or b!1374139 b!1374132 b!1374145) bm!92217))

(declare-fun m!1545763 () Bool)

(assert (=> d!392404 m!1545763))

(declare-fun m!1545765 () Bool)

(assert (=> d!392404 m!1545765))

(declare-fun m!1545767 () Bool)

(assert (=> b!1374135 m!1545767))

(assert (=> b!1374135 m!1545767))

(declare-fun m!1545769 () Bool)

(assert (=> b!1374135 m!1545769))

(declare-fun m!1545771 () Bool)

(assert (=> b!1374133 m!1545771))

(assert (=> b!1374141 m!1545767))

(assert (=> b!1374141 m!1545767))

(assert (=> b!1374141 m!1545769))

(assert (=> b!1374140 m!1545771))

(declare-fun m!1545773 () Bool)

(assert (=> b!1374136 m!1545773))

(assert (=> b!1374137 m!1545771))

(assert (=> b!1374137 m!1545771))

(declare-fun m!1545775 () Bool)

(assert (=> b!1374137 m!1545775))

(assert (=> b!1374137 m!1545767))

(assert (=> b!1374137 m!1545775))

(assert (=> b!1374137 m!1545767))

(declare-fun m!1545777 () Bool)

(assert (=> b!1374137 m!1545777))

(assert (=> bm!92217 m!1545763))

(assert (=> b!1373448 d!392404))

(declare-fun d!392406 () Bool)

(assert (=> d!392406 (dynLambda!6334 lambda!58381 (rule!4164 t2!34))))

(declare-fun lt!456381 () Unit!20133)

(declare-fun choose!8458 (List!13971 Int Rule!4614) Unit!20133)

(assert (=> d!392406 (= lt!456381 (choose!8458 rules!2550 lambda!58381 (rule!4164 t2!34)))))

(declare-fun e!878253 () Bool)

(assert (=> d!392406 e!878253))

(declare-fun res!619191 () Bool)

(assert (=> d!392406 (=> (not res!619191) (not e!878253))))

(assert (=> d!392406 (= res!619191 (forall!3401 rules!2550 lambda!58381))))

(assert (=> d!392406 (= (forallContained!610 rules!2550 lambda!58381 (rule!4164 t2!34)) lt!456381)))

(declare-fun b!1374148 () Bool)

(assert (=> b!1374148 (= e!878253 (contains!2608 rules!2550 (rule!4164 t2!34)))))

(assert (= (and d!392406 res!619191) b!1374148))

(declare-fun b_lambda!42209 () Bool)

(assert (=> (not b_lambda!42209) (not d!392406)))

(declare-fun m!1545779 () Bool)

(assert (=> d!392406 m!1545779))

(declare-fun m!1545781 () Bool)

(assert (=> d!392406 m!1545781))

(declare-fun m!1545783 () Bool)

(assert (=> d!392406 m!1545783))

(assert (=> b!1374148 m!1544849))

(assert (=> b!1373448 d!392406))

(declare-fun d!392408 () Bool)

(assert (=> d!392408 (dynLambda!6334 lambda!58381 (rule!4164 t1!34))))

(declare-fun lt!456382 () Unit!20133)

(assert (=> d!392408 (= lt!456382 (choose!8458 rules!2550 lambda!58381 (rule!4164 t1!34)))))

(declare-fun e!878254 () Bool)

(assert (=> d!392408 e!878254))

(declare-fun res!619192 () Bool)

(assert (=> d!392408 (=> (not res!619192) (not e!878254))))

(assert (=> d!392408 (= res!619192 (forall!3401 rules!2550 lambda!58381))))

(assert (=> d!392408 (= (forallContained!610 rules!2550 lambda!58381 (rule!4164 t1!34)) lt!456382)))

(declare-fun b!1374149 () Bool)

(assert (=> b!1374149 (= e!878254 (contains!2608 rules!2550 (rule!4164 t1!34)))))

(assert (= (and d!392408 res!619192) b!1374149))

(declare-fun b_lambda!42211 () Bool)

(assert (=> (not b_lambda!42211) (not d!392408)))

(declare-fun m!1545785 () Bool)

(assert (=> d!392408 m!1545785))

(declare-fun m!1545787 () Bool)

(assert (=> d!392408 m!1545787))

(assert (=> d!392408 m!1545783))

(assert (=> b!1374149 m!1544871))

(assert (=> b!1373448 d!392408))

(declare-fun d!392410 () Bool)

(assert (=> d!392410 (dynLambda!6334 lambda!58381 lt!456138)))

(declare-fun lt!456383 () Unit!20133)

(assert (=> d!392410 (= lt!456383 (choose!8458 rules!2550 lambda!58381 lt!456138))))

(declare-fun e!878255 () Bool)

(assert (=> d!392410 e!878255))

(declare-fun res!619193 () Bool)

(assert (=> d!392410 (=> (not res!619193) (not e!878255))))

(assert (=> d!392410 (= res!619193 (forall!3401 rules!2550 lambda!58381))))

(assert (=> d!392410 (= (forallContained!610 rules!2550 lambda!58381 lt!456138) lt!456383)))

(declare-fun b!1374150 () Bool)

(assert (=> b!1374150 (= e!878255 (contains!2608 rules!2550 lt!456138))))

(assert (= (and d!392410 res!619193) b!1374150))

(declare-fun b_lambda!42213 () Bool)

(assert (=> (not b_lambda!42213) (not d!392410)))

(declare-fun m!1545789 () Bool)

(assert (=> d!392410 m!1545789))

(declare-fun m!1545791 () Bool)

(assert (=> d!392410 m!1545791))

(assert (=> d!392410 m!1545783))

(assert (=> b!1374150 m!1544863))

(assert (=> b!1373448 d!392410))

(declare-fun d!392412 () Bool)

(declare-fun lt!456384 () Bool)

(assert (=> d!392412 (= lt!456384 (select (content!2037 lt!456127) lt!456136))))

(declare-fun e!878256 () Bool)

(assert (=> d!392412 (= lt!456384 e!878256)))

(declare-fun res!619195 () Bool)

(assert (=> d!392412 (=> (not res!619195) (not e!878256))))

(assert (=> d!392412 (= res!619195 ((_ is Cons!13903) lt!456127))))

(assert (=> d!392412 (= (contains!2607 lt!456127 lt!456136) lt!456384)))

(declare-fun b!1374151 () Bool)

(declare-fun e!878257 () Bool)

(assert (=> b!1374151 (= e!878256 e!878257)))

(declare-fun res!619194 () Bool)

(assert (=> b!1374151 (=> res!619194 e!878257)))

(assert (=> b!1374151 (= res!619194 (= (h!19304 lt!456127) lt!456136))))

(declare-fun b!1374152 () Bool)

(assert (=> b!1374152 (= e!878257 (contains!2607 (t!121640 lt!456127) lt!456136))))

(assert (= (and d!392412 res!619195) b!1374151))

(assert (= (and b!1374151 (not res!619194)) b!1374152))

(assert (=> d!392412 m!1545173))

(declare-fun m!1545793 () Bool)

(assert (=> d!392412 m!1545793))

(declare-fun m!1545795 () Bool)

(assert (=> b!1374152 m!1545795))

(assert (=> b!1373447 d!392412))

(declare-fun d!392414 () Bool)

(declare-fun res!619200 () Bool)

(declare-fun e!878260 () Bool)

(assert (=> d!392414 (=> (not res!619200) (not e!878260))))

(assert (=> d!392414 (= res!619200 (not (isEmpty!8392 (originalCharacters!3269 t1!34))))))

(assert (=> d!392414 (= (inv!18261 t1!34) e!878260)))

(declare-fun b!1374157 () Bool)

(declare-fun res!619201 () Bool)

(assert (=> b!1374157 (=> (not res!619201) (not e!878260))))

(assert (=> b!1374157 (= res!619201 (= (originalCharacters!3269 t1!34) (list!5362 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))))))

(declare-fun b!1374158 () Bool)

(assert (=> b!1374158 (= e!878260 (= (size!11409 t1!34) (size!11415 (originalCharacters!3269 t1!34))))))

(assert (= (and d!392414 res!619200) b!1374157))

(assert (= (and b!1374157 res!619201) b!1374158))

(declare-fun b_lambda!42215 () Bool)

(assert (=> (not b_lambda!42215) (not b!1374157)))

(assert (=> b!1374157 t!121645))

(declare-fun b_and!92073 () Bool)

(assert (= b_and!92039 (and (=> t!121645 result!87814) b_and!92073)))

(assert (=> b!1374157 t!121647))

(declare-fun b_and!92075 () Bool)

(assert (= b_and!92041 (and (=> t!121647 result!87818) b_and!92075)))

(assert (=> b!1374157 t!121649))

(declare-fun b_and!92077 () Bool)

(assert (= b_and!92043 (and (=> t!121649 result!87820) b_and!92077)))

(declare-fun m!1545797 () Bool)

(assert (=> d!392414 m!1545797))

(assert (=> b!1374157 m!1544977))

(assert (=> b!1374157 m!1544977))

(declare-fun m!1545799 () Bool)

(assert (=> b!1374157 m!1545799))

(declare-fun m!1545801 () Bool)

(assert (=> b!1374158 m!1545801))

(assert (=> start!124190 d!392414))

(declare-fun d!392416 () Bool)

(declare-fun res!619202 () Bool)

(declare-fun e!878261 () Bool)

(assert (=> d!392416 (=> (not res!619202) (not e!878261))))

(assert (=> d!392416 (= res!619202 (not (isEmpty!8392 (originalCharacters!3269 t2!34))))))

(assert (=> d!392416 (= (inv!18261 t2!34) e!878261)))

(declare-fun b!1374159 () Bool)

(declare-fun res!619203 () Bool)

(assert (=> b!1374159 (=> (not res!619203) (not e!878261))))

(assert (=> b!1374159 (= res!619203 (= (originalCharacters!3269 t2!34) (list!5362 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))))))

(declare-fun b!1374160 () Bool)

(assert (=> b!1374160 (= e!878261 (= (size!11409 t2!34) (size!11415 (originalCharacters!3269 t2!34))))))

(assert (= (and d!392416 res!619202) b!1374159))

(assert (= (and b!1374159 res!619203) b!1374160))

(declare-fun b_lambda!42217 () Bool)

(assert (=> (not b_lambda!42217) (not b!1374159)))

(declare-fun t!121671 () Bool)

(declare-fun tb!72343 () Bool)

(assert (=> (and b!1373451 (= (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toChars!3537 (transformation!2407 (rule!4164 t2!34)))) t!121671) tb!72343))

(declare-fun b!1374161 () Bool)

(declare-fun e!878262 () Bool)

(declare-fun tp!394245 () Bool)

(assert (=> b!1374161 (= e!878262 (and (inv!18263 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))) tp!394245))))

(declare-fun result!87846 () Bool)

(assert (=> tb!72343 (= result!87846 (and (inv!18264 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))) e!878262))))

(assert (= tb!72343 b!1374161))

(declare-fun m!1545803 () Bool)

(assert (=> b!1374161 m!1545803))

(declare-fun m!1545805 () Bool)

(assert (=> tb!72343 m!1545805))

(assert (=> b!1374159 t!121671))

(declare-fun b_and!92079 () Bool)

(assert (= b_and!92073 (and (=> t!121671 result!87846) b_and!92079)))

(declare-fun t!121673 () Bool)

(declare-fun tb!72345 () Bool)

(assert (=> (and b!1373449 (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 t2!34)))) t!121673) tb!72345))

(declare-fun result!87848 () Bool)

(assert (= result!87848 result!87846))

(assert (=> b!1374159 t!121673))

(declare-fun b_and!92081 () Bool)

(assert (= b_and!92075 (and (=> t!121673 result!87848) b_and!92081)))

(declare-fun t!121675 () Bool)

(declare-fun tb!72347 () Bool)

(assert (=> (and b!1373465 (= (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toChars!3537 (transformation!2407 (rule!4164 t2!34)))) t!121675) tb!72347))

(declare-fun result!87850 () Bool)

(assert (= result!87850 result!87846))

(assert (=> b!1374159 t!121675))

(declare-fun b_and!92083 () Bool)

(assert (= b_and!92077 (and (=> t!121675 result!87850) b_and!92083)))

(declare-fun m!1545807 () Bool)

(assert (=> d!392416 m!1545807))

(declare-fun m!1545809 () Bool)

(assert (=> b!1374159 m!1545809))

(assert (=> b!1374159 m!1545809))

(declare-fun m!1545811 () Bool)

(assert (=> b!1374159 m!1545811))

(declare-fun m!1545813 () Bool)

(assert (=> b!1374160 m!1545813))

(assert (=> start!124190 d!392416))

(declare-fun d!392418 () Bool)

(declare-fun res!619208 () Bool)

(declare-fun e!878267 () Bool)

(assert (=> d!392418 (=> res!619208 e!878267)))

(assert (=> d!392418 (= res!619208 (not ((_ is Cons!13905) rules!2550)))))

(assert (=> d!392418 (= (sepAndNonSepRulesDisjointChars!780 rules!2550 rules!2550) e!878267)))

(declare-fun b!1374166 () Bool)

(declare-fun e!878268 () Bool)

(assert (=> b!1374166 (= e!878267 e!878268)))

(declare-fun res!619209 () Bool)

(assert (=> b!1374166 (=> (not res!619209) (not e!878268))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!372 (Rule!4614 List!13971) Bool)

(assert (=> b!1374166 (= res!619209 (ruleDisjointCharsFromAllFromOtherType!372 (h!19306 rules!2550) rules!2550))))

(declare-fun b!1374167 () Bool)

(assert (=> b!1374167 (= e!878268 (sepAndNonSepRulesDisjointChars!780 rules!2550 (t!121642 rules!2550)))))

(assert (= (and d!392418 (not res!619208)) b!1374166))

(assert (= (and b!1374166 res!619209) b!1374167))

(declare-fun m!1545815 () Bool)

(assert (=> b!1374166 m!1545815))

(declare-fun m!1545817 () Bool)

(assert (=> b!1374167 m!1545817))

(assert (=> b!1373470 d!392418))

(declare-fun d!392420 () Bool)

(assert (=> d!392420 (= (list!5363 (_1!7640 lt!456131)) (list!5367 (c!226062 (_1!7640 lt!456131))))))

(declare-fun bs!336027 () Bool)

(assert (= bs!336027 d!392420))

(declare-fun m!1545819 () Bool)

(assert (=> bs!336027 m!1545819))

(assert (=> b!1373472 d!392420))

(declare-fun b!1374168 () Bool)

(declare-fun e!878269 () Bool)

(declare-fun e!878270 () Bool)

(assert (=> b!1374168 (= e!878269 e!878270)))

(declare-fun res!619212 () Bool)

(declare-fun lt!456385 () tuple2!13508)

(assert (=> b!1374168 (= res!619212 (< (size!11410 (_2!7640 lt!456385)) (size!11410 lt!456142)))))

(assert (=> b!1374168 (=> (not res!619212) (not e!878270))))

(declare-fun b!1374170 () Bool)

(declare-fun res!619210 () Bool)

(declare-fun e!878271 () Bool)

(assert (=> b!1374170 (=> (not res!619210) (not e!878271))))

(assert (=> b!1374170 (= res!619210 (= (list!5363 (_1!7640 lt!456385)) (_1!7639 (lexList!620 thiss!19762 rules!2550 (list!5362 lt!456142)))))))

(declare-fun b!1374171 () Bool)

(assert (=> b!1374171 (= e!878269 (= (_2!7640 lt!456385) lt!456142))))

(declare-fun b!1374172 () Bool)

(assert (=> b!1374172 (= e!878270 (not (isEmpty!8396 (_1!7640 lt!456385))))))

(declare-fun d!392422 () Bool)

(assert (=> d!392422 e!878271))

(declare-fun res!619211 () Bool)

(assert (=> d!392422 (=> (not res!619211) (not e!878271))))

(assert (=> d!392422 (= res!619211 e!878269)))

(declare-fun c!226187 () Bool)

(assert (=> d!392422 (= c!226187 (> (size!11416 (_1!7640 lt!456385)) 0))))

(assert (=> d!392422 (= lt!456385 (lexTailRecV2!415 thiss!19762 rules!2550 lt!456142 (BalanceConc!9093 Empty!4576) lt!456142 (BalanceConc!9095 Empty!4577)))))

(assert (=> d!392422 (= (lex!929 thiss!19762 rules!2550 lt!456142) lt!456385)))

(declare-fun b!1374169 () Bool)

(assert (=> b!1374169 (= e!878271 (= (list!5362 (_2!7640 lt!456385)) (_2!7639 (lexList!620 thiss!19762 rules!2550 (list!5362 lt!456142)))))))

(assert (= (and d!392422 c!226187) b!1374168))

(assert (= (and d!392422 (not c!226187)) b!1374171))

(assert (= (and b!1374168 res!619212) b!1374172))

(assert (= (and d!392422 res!619211) b!1374170))

(assert (= (and b!1374170 res!619210) b!1374169))

(declare-fun m!1545821 () Bool)

(assert (=> b!1374172 m!1545821))

(declare-fun m!1545823 () Bool)

(assert (=> b!1374170 m!1545823))

(assert (=> b!1374170 m!1544831))

(assert (=> b!1374170 m!1544831))

(assert (=> b!1374170 m!1544833))

(declare-fun m!1545825 () Bool)

(assert (=> b!1374169 m!1545825))

(assert (=> b!1374169 m!1544831))

(assert (=> b!1374169 m!1544831))

(assert (=> b!1374169 m!1544833))

(declare-fun m!1545827 () Bool)

(assert (=> b!1374168 m!1545827))

(declare-fun m!1545829 () Bool)

(assert (=> b!1374168 m!1545829))

(declare-fun m!1545831 () Bool)

(assert (=> d!392422 m!1545831))

(declare-fun m!1545833 () Bool)

(assert (=> d!392422 m!1545833))

(assert (=> b!1373472 d!392422))

(declare-fun d!392424 () Bool)

(declare-fun lt!456386 () BalanceConc!9092)

(assert (=> d!392424 (= (list!5362 lt!456386) (printList!610 thiss!19762 (list!5363 (singletonSeq!1040 t2!34))))))

(assert (=> d!392424 (= lt!456386 (printTailRec!592 thiss!19762 (singletonSeq!1040 t2!34) 0 (BalanceConc!9093 Empty!4576)))))

(assert (=> d!392424 (= (print!868 thiss!19762 (singletonSeq!1040 t2!34)) lt!456386)))

(declare-fun bs!336028 () Bool)

(assert (= bs!336028 d!392424))

(declare-fun m!1545835 () Bool)

(assert (=> bs!336028 m!1545835))

(assert (=> bs!336028 m!1544857))

(assert (=> bs!336028 m!1545227))

(assert (=> bs!336028 m!1545227))

(declare-fun m!1545837 () Bool)

(assert (=> bs!336028 m!1545837))

(assert (=> bs!336028 m!1544857))

(declare-fun m!1545839 () Bool)

(assert (=> bs!336028 m!1545839))

(assert (=> b!1373472 d!392424))

(declare-fun d!392426 () Bool)

(declare-fun e!878272 () Bool)

(assert (=> d!392426 e!878272))

(declare-fun res!619213 () Bool)

(assert (=> d!392426 (=> (not res!619213) (not e!878272))))

(declare-fun lt!456387 () BalanceConc!9094)

(assert (=> d!392426 (= res!619213 (= (list!5363 lt!456387) (Cons!13904 t2!34 Nil!13904)))))

(assert (=> d!392426 (= lt!456387 (singleton!456 t2!34))))

(assert (=> d!392426 (= (singletonSeq!1040 t2!34) lt!456387)))

(declare-fun b!1374173 () Bool)

(assert (=> b!1374173 (= e!878272 (isBalanced!1350 (c!226062 lt!456387)))))

(assert (= (and d!392426 res!619213) b!1374173))

(declare-fun m!1545841 () Bool)

(assert (=> d!392426 m!1545841))

(declare-fun m!1545843 () Bool)

(assert (=> d!392426 m!1545843))

(declare-fun m!1545845 () Bool)

(assert (=> b!1374173 m!1545845))

(assert (=> b!1373472 d!392426))

(declare-fun d!392428 () Bool)

(declare-fun lt!456390 () Int)

(assert (=> d!392428 (= lt!456390 (size!11415 (list!5362 lt!456140)))))

(declare-fun size!11422 (Conc!4576) Int)

(assert (=> d!392428 (= lt!456390 (size!11422 (c!226060 lt!456140)))))

(assert (=> d!392428 (= (size!11410 lt!456140) lt!456390)))

(declare-fun bs!336029 () Bool)

(assert (= bs!336029 d!392428))

(assert (=> bs!336029 m!1544791))

(assert (=> bs!336029 m!1544791))

(declare-fun m!1545847 () Bool)

(assert (=> bs!336029 m!1545847))

(declare-fun m!1545849 () Bool)

(assert (=> bs!336029 m!1545849))

(assert (=> b!1373450 d!392428))

(declare-fun d!392430 () Bool)

(declare-fun lt!456391 () BalanceConc!9092)

(assert (=> d!392430 (= (list!5362 lt!456391) (originalCharacters!3269 t2!34))))

(assert (=> d!392430 (= lt!456391 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))))

(assert (=> d!392430 (= (charsOf!1379 t2!34) lt!456391)))

(declare-fun b_lambda!42219 () Bool)

(assert (=> (not b_lambda!42219) (not d!392430)))

(assert (=> d!392430 t!121671))

(declare-fun b_and!92085 () Bool)

(assert (= b_and!92079 (and (=> t!121671 result!87846) b_and!92085)))

(assert (=> d!392430 t!121673))

(declare-fun b_and!92087 () Bool)

(assert (= b_and!92081 (and (=> t!121673 result!87848) b_and!92087)))

(assert (=> d!392430 t!121675))

(declare-fun b_and!92089 () Bool)

(assert (= b_and!92083 (and (=> t!121675 result!87850) b_and!92089)))

(declare-fun m!1545851 () Bool)

(assert (=> d!392430 m!1545851))

(assert (=> d!392430 m!1545809))

(assert (=> b!1373450 d!392430))

(declare-fun b!1374174 () Bool)

(declare-fun e!878273 () Bool)

(declare-fun lt!456392 () tuple2!13506)

(assert (=> b!1374174 (= e!878273 (= (_2!7639 lt!456392) (list!5362 lt!456124)))))

(declare-fun b!1374175 () Bool)

(declare-fun e!878275 () tuple2!13506)

(declare-fun lt!456394 () Option!2672)

(declare-fun lt!456393 () tuple2!13506)

(assert (=> b!1374175 (= e!878275 (tuple2!13507 (Cons!13904 (_1!7641 (v!21488 lt!456394)) (_1!7639 lt!456393)) (_2!7639 lt!456393)))))

(assert (=> b!1374175 (= lt!456393 (lexList!620 thiss!19762 rules!2550 (_2!7641 (v!21488 lt!456394))))))

(declare-fun b!1374176 () Bool)

(declare-fun e!878274 () Bool)

(assert (=> b!1374176 (= e!878274 (not (isEmpty!8397 (_1!7639 lt!456392))))))

(declare-fun d!392432 () Bool)

(assert (=> d!392432 e!878273))

(declare-fun c!226188 () Bool)

(assert (=> d!392432 (= c!226188 (> (size!11420 (_1!7639 lt!456392)) 0))))

(assert (=> d!392432 (= lt!456392 e!878275)))

(declare-fun c!226189 () Bool)

(assert (=> d!392432 (= c!226189 ((_ is Some!2671) lt!456394))))

(assert (=> d!392432 (= lt!456394 (maxPrefix!1084 thiss!19762 rules!2550 (list!5362 lt!456124)))))

(assert (=> d!392432 (= (lexList!620 thiss!19762 rules!2550 (list!5362 lt!456124)) lt!456392)))

(declare-fun b!1374177 () Bool)

(assert (=> b!1374177 (= e!878275 (tuple2!13507 Nil!13904 (list!5362 lt!456124)))))

(declare-fun b!1374178 () Bool)

(assert (=> b!1374178 (= e!878273 e!878274)))

(declare-fun res!619214 () Bool)

(assert (=> b!1374178 (= res!619214 (< (size!11415 (_2!7639 lt!456392)) (size!11415 (list!5362 lt!456124))))))

(assert (=> b!1374178 (=> (not res!619214) (not e!878274))))

(assert (= (and d!392432 c!226189) b!1374175))

(assert (= (and d!392432 (not c!226189)) b!1374177))

(assert (= (and d!392432 c!226188) b!1374178))

(assert (= (and d!392432 (not c!226188)) b!1374174))

(assert (= (and b!1374178 res!619214) b!1374176))

(declare-fun m!1545853 () Bool)

(assert (=> b!1374175 m!1545853))

(declare-fun m!1545855 () Bool)

(assert (=> b!1374176 m!1545855))

(declare-fun m!1545857 () Bool)

(assert (=> d!392432 m!1545857))

(assert (=> d!392432 m!1544837))

(declare-fun m!1545859 () Bool)

(assert (=> d!392432 m!1545859))

(declare-fun m!1545861 () Bool)

(assert (=> b!1374178 m!1545861))

(assert (=> b!1374178 m!1544837))

(declare-fun m!1545863 () Bool)

(assert (=> b!1374178 m!1545863))

(assert (=> b!1373471 d!392432))

(declare-fun d!392434 () Bool)

(assert (=> d!392434 (= (list!5362 lt!456124) (list!5366 (c!226060 lt!456124)))))

(declare-fun bs!336030 () Bool)

(assert (= bs!336030 d!392434))

(declare-fun m!1545865 () Bool)

(assert (=> bs!336030 m!1545865))

(assert (=> b!1373471 d!392434))

(declare-fun d!392436 () Bool)

(declare-fun lt!456395 () Bool)

(assert (=> d!392436 (= lt!456395 (select (content!2038 rules!2550) (rule!4164 t1!34)))))

(declare-fun e!878276 () Bool)

(assert (=> d!392436 (= lt!456395 e!878276)))

(declare-fun res!619215 () Bool)

(assert (=> d!392436 (=> (not res!619215) (not e!878276))))

(assert (=> d!392436 (= res!619215 ((_ is Cons!13905) rules!2550))))

(assert (=> d!392436 (= (contains!2608 rules!2550 (rule!4164 t1!34)) lt!456395)))

(declare-fun b!1374179 () Bool)

(declare-fun e!878277 () Bool)

(assert (=> b!1374179 (= e!878276 e!878277)))

(declare-fun res!619216 () Bool)

(assert (=> b!1374179 (=> res!619216 e!878277)))

(assert (=> b!1374179 (= res!619216 (= (h!19306 rules!2550) (rule!4164 t1!34)))))

(declare-fun b!1374180 () Bool)

(assert (=> b!1374180 (= e!878277 (contains!2608 (t!121642 rules!2550) (rule!4164 t1!34)))))

(assert (= (and d!392436 res!619215) b!1374179))

(assert (= (and b!1374179 (not res!619216)) b!1374180))

(assert (=> d!392436 m!1545215))

(declare-fun m!1545867 () Bool)

(assert (=> d!392436 m!1545867))

(declare-fun m!1545869 () Bool)

(assert (=> b!1374180 m!1545869))

(assert (=> b!1373452 d!392436))

(declare-fun b!1374181 () Bool)

(declare-fun res!619223 () Bool)

(declare-fun e!878278 () Bool)

(assert (=> b!1374181 (=> (not res!619223) (not e!878278))))

(declare-fun lt!456400 () Option!2672)

(assert (=> b!1374181 (= res!619223 (= (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400)))) (originalCharacters!3269 (_1!7641 (get!4350 lt!456400)))))))

(declare-fun b!1374182 () Bool)

(assert (=> b!1374182 (= e!878278 (contains!2608 rules!2550 (rule!4164 (_1!7641 (get!4350 lt!456400)))))))

(declare-fun b!1374183 () Bool)

(declare-fun res!619220 () Bool)

(assert (=> b!1374183 (=> (not res!619220) (not e!878278))))

(assert (=> b!1374183 (= res!619220 (matchR!1714 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))))))

(declare-fun b!1374184 () Bool)

(declare-fun e!878280 () Option!2672)

(declare-fun lt!456396 () Option!2672)

(declare-fun lt!456398 () Option!2672)

(assert (=> b!1374184 (= e!878280 (ite (and ((_ is None!2671) lt!456396) ((_ is None!2671) lt!456398)) None!2671 (ite ((_ is None!2671) lt!456398) lt!456396 (ite ((_ is None!2671) lt!456396) lt!456398 (ite (>= (size!11409 (_1!7641 (v!21488 lt!456396))) (size!11409 (_1!7641 (v!21488 lt!456398)))) lt!456396 lt!456398)))))))

(declare-fun call!92223 () Option!2672)

(assert (=> b!1374184 (= lt!456396 call!92223)))

(assert (=> b!1374184 (= lt!456398 (maxPrefix!1084 thiss!19762 (t!121642 rules!2550) lt!456133))))

(declare-fun b!1374185 () Bool)

(assert (=> b!1374185 (= e!878280 call!92223)))

(declare-fun b!1374187 () Bool)

(declare-fun res!619219 () Bool)

(assert (=> b!1374187 (=> (not res!619219) (not e!878278))))

(assert (=> b!1374187 (= res!619219 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400)))) (_2!7641 (get!4350 lt!456400))) lt!456133))))

(declare-fun bm!92218 () Bool)

(assert (=> bm!92218 (= call!92223 (maxPrefixOneRule!619 thiss!19762 (h!19306 rules!2550) lt!456133))))

(declare-fun b!1374188 () Bool)

(declare-fun res!619217 () Bool)

(assert (=> b!1374188 (=> (not res!619217) (not e!878278))))

(assert (=> b!1374188 (= res!619217 (= (value!78232 (_1!7641 (get!4350 lt!456400))) (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456400)))))))))

(declare-fun b!1374189 () Bool)

(declare-fun e!878279 () Bool)

(assert (=> b!1374189 (= e!878279 e!878278)))

(declare-fun res!619221 () Bool)

(assert (=> b!1374189 (=> (not res!619221) (not e!878278))))

(assert (=> b!1374189 (= res!619221 (isDefined!2221 lt!456400))))

(declare-fun b!1374186 () Bool)

(declare-fun res!619218 () Bool)

(assert (=> b!1374186 (=> (not res!619218) (not e!878278))))

(assert (=> b!1374186 (= res!619218 (< (size!11415 (_2!7641 (get!4350 lt!456400))) (size!11415 lt!456133)))))

(declare-fun d!392438 () Bool)

(assert (=> d!392438 e!878279))

(declare-fun res!619222 () Bool)

(assert (=> d!392438 (=> res!619222 e!878279)))

(assert (=> d!392438 (= res!619222 (isEmpty!8399 lt!456400))))

(assert (=> d!392438 (= lt!456400 e!878280)))

(declare-fun c!226190 () Bool)

(assert (=> d!392438 (= c!226190 (and ((_ is Cons!13905) rules!2550) ((_ is Nil!13905) (t!121642 rules!2550))))))

(declare-fun lt!456397 () Unit!20133)

(declare-fun lt!456399 () Unit!20133)

(assert (=> d!392438 (= lt!456397 lt!456399)))

(assert (=> d!392438 (isPrefix!1131 lt!456133 lt!456133)))

(assert (=> d!392438 (= lt!456399 (lemmaIsPrefixRefl!793 lt!456133 lt!456133))))

(assert (=> d!392438 (rulesValidInductive!772 thiss!19762 rules!2550)))

(assert (=> d!392438 (= (maxPrefix!1084 thiss!19762 rules!2550 lt!456133) lt!456400)))

(assert (= (and d!392438 c!226190) b!1374185))

(assert (= (and d!392438 (not c!226190)) b!1374184))

(assert (= (or b!1374185 b!1374184) bm!92218))

(assert (= (and d!392438 (not res!619222)) b!1374189))

(assert (= (and b!1374189 res!619221) b!1374181))

(assert (= (and b!1374181 res!619223) b!1374186))

(assert (= (and b!1374186 res!619218) b!1374187))

(assert (= (and b!1374187 res!619219) b!1374188))

(assert (= (and b!1374188 res!619217) b!1374183))

(assert (= (and b!1374183 res!619220) b!1374182))

(declare-fun m!1545871 () Bool)

(assert (=> b!1374182 m!1545871))

(declare-fun m!1545873 () Bool)

(assert (=> b!1374182 m!1545873))

(assert (=> b!1374187 m!1545871))

(declare-fun m!1545875 () Bool)

(assert (=> b!1374187 m!1545875))

(assert (=> b!1374187 m!1545875))

(declare-fun m!1545877 () Bool)

(assert (=> b!1374187 m!1545877))

(assert (=> b!1374187 m!1545877))

(declare-fun m!1545879 () Bool)

(assert (=> b!1374187 m!1545879))

(declare-fun m!1545881 () Bool)

(assert (=> bm!92218 m!1545881))

(assert (=> b!1374183 m!1545871))

(assert (=> b!1374183 m!1545875))

(assert (=> b!1374183 m!1545875))

(assert (=> b!1374183 m!1545877))

(assert (=> b!1374183 m!1545877))

(declare-fun m!1545883 () Bool)

(assert (=> b!1374183 m!1545883))

(assert (=> b!1374181 m!1545871))

(assert (=> b!1374181 m!1545875))

(assert (=> b!1374181 m!1545875))

(assert (=> b!1374181 m!1545877))

(declare-fun m!1545885 () Bool)

(assert (=> b!1374184 m!1545885))

(assert (=> b!1374188 m!1545871))

(declare-fun m!1545887 () Bool)

(assert (=> b!1374188 m!1545887))

(assert (=> b!1374188 m!1545887))

(declare-fun m!1545889 () Bool)

(assert (=> b!1374188 m!1545889))

(declare-fun m!1545891 () Bool)

(assert (=> b!1374189 m!1545891))

(declare-fun m!1545893 () Bool)

(assert (=> d!392438 m!1545893))

(declare-fun m!1545895 () Bool)

(assert (=> d!392438 m!1545895))

(declare-fun m!1545897 () Bool)

(assert (=> d!392438 m!1545897))

(assert (=> d!392438 m!1545759))

(assert (=> b!1374186 m!1545871))

(declare-fun m!1545899 () Bool)

(assert (=> b!1374186 m!1545899))

(declare-fun m!1545901 () Bool)

(assert (=> b!1374186 m!1545901))

(assert (=> b!1373473 d!392438))

(declare-fun d!392440 () Bool)

(assert (=> d!392440 (= (list!5362 lt!456140) (list!5366 (c!226060 lt!456140)))))

(declare-fun bs!336031 () Bool)

(assert (= bs!336031 d!392440))

(declare-fun m!1545903 () Bool)

(assert (=> bs!336031 m!1545903))

(assert (=> b!1373473 d!392440))

(declare-fun b!1374194 () Bool)

(declare-fun e!878283 () Bool)

(declare-fun tp_is_empty!6751 () Bool)

(declare-fun tp!394248 () Bool)

(assert (=> b!1374194 (= e!878283 (and tp_is_empty!6751 tp!394248))))

(assert (=> b!1373463 (= tp!394192 e!878283)))

(assert (= (and b!1373463 ((_ is Cons!13903) (originalCharacters!3269 t2!34))) b!1374194))

(declare-fun b!1374208 () Bool)

(declare-fun e!878286 () Bool)

(declare-fun tp!394262 () Bool)

(declare-fun tp!394259 () Bool)

(assert (=> b!1374208 (= e!878286 (and tp!394262 tp!394259))))

(declare-fun b!1374205 () Bool)

(assert (=> b!1374205 (= e!878286 tp_is_empty!6751)))

(declare-fun b!1374207 () Bool)

(declare-fun tp!394263 () Bool)

(assert (=> b!1374207 (= e!878286 tp!394263)))

(declare-fun b!1374206 () Bool)

(declare-fun tp!394261 () Bool)

(declare-fun tp!394260 () Bool)

(assert (=> b!1374206 (= e!878286 (and tp!394261 tp!394260))))

(assert (=> b!1373440 (= tp!394189 e!878286)))

(assert (= (and b!1373440 ((_ is ElementMatch!3721) (regex!2407 (rule!4164 t2!34)))) b!1374205))

(assert (= (and b!1373440 ((_ is Concat!6219) (regex!2407 (rule!4164 t2!34)))) b!1374206))

(assert (= (and b!1373440 ((_ is Star!3721) (regex!2407 (rule!4164 t2!34)))) b!1374207))

(assert (= (and b!1373440 ((_ is Union!3721) (regex!2407 (rule!4164 t2!34)))) b!1374208))

(declare-fun b!1374212 () Bool)

(declare-fun e!878287 () Bool)

(declare-fun tp!394267 () Bool)

(declare-fun tp!394264 () Bool)

(assert (=> b!1374212 (= e!878287 (and tp!394267 tp!394264))))

(declare-fun b!1374209 () Bool)

(assert (=> b!1374209 (= e!878287 tp_is_empty!6751)))

(declare-fun b!1374211 () Bool)

(declare-fun tp!394268 () Bool)

(assert (=> b!1374211 (= e!878287 tp!394268)))

(declare-fun b!1374210 () Bool)

(declare-fun tp!394266 () Bool)

(declare-fun tp!394265 () Bool)

(assert (=> b!1374210 (= e!878287 (and tp!394266 tp!394265))))

(assert (=> b!1373461 (= tp!394194 e!878287)))

(assert (= (and b!1373461 ((_ is ElementMatch!3721) (regex!2407 (h!19306 rules!2550)))) b!1374209))

(assert (= (and b!1373461 ((_ is Concat!6219) (regex!2407 (h!19306 rules!2550)))) b!1374210))

(assert (= (and b!1373461 ((_ is Star!3721) (regex!2407 (h!19306 rules!2550)))) b!1374211))

(assert (= (and b!1373461 ((_ is Union!3721) (regex!2407 (h!19306 rules!2550)))) b!1374212))

(declare-fun b!1374213 () Bool)

(declare-fun e!878288 () Bool)

(declare-fun tp!394269 () Bool)

(assert (=> b!1374213 (= e!878288 (and tp_is_empty!6751 tp!394269))))

(assert (=> b!1373466 (= tp!394187 e!878288)))

(assert (= (and b!1373466 ((_ is Cons!13903) (originalCharacters!3269 t1!34))) b!1374213))

(declare-fun b!1374224 () Bool)

(declare-fun b_free!33275 () Bool)

(declare-fun b_next!33979 () Bool)

(assert (=> b!1374224 (= b_free!33275 (not b_next!33979))))

(declare-fun tp!394280 () Bool)

(declare-fun b_and!92091 () Bool)

(assert (=> b!1374224 (= tp!394280 b_and!92091)))

(declare-fun b_free!33277 () Bool)

(declare-fun b_next!33981 () Bool)

(assert (=> b!1374224 (= b_free!33277 (not b_next!33981))))

(declare-fun tb!72349 () Bool)

(declare-fun t!121677 () Bool)

(assert (=> (and b!1374224 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toChars!3537 (transformation!2407 (rule!4164 t1!34)))) t!121677) tb!72349))

(declare-fun result!87858 () Bool)

(assert (= result!87858 result!87814))

(assert (=> d!392160 t!121677))

(assert (=> b!1374157 t!121677))

(declare-fun t!121679 () Bool)

(declare-fun tb!72351 () Bool)

(assert (=> (and b!1374224 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toChars!3537 (transformation!2407 (rule!4164 t2!34)))) t!121679) tb!72351))

(declare-fun result!87860 () Bool)

(assert (= result!87860 result!87846))

(assert (=> b!1374159 t!121679))

(assert (=> d!392430 t!121679))

(declare-fun tp!394281 () Bool)

(declare-fun b_and!92093 () Bool)

(assert (=> b!1374224 (= tp!394281 (and (=> t!121677 result!87858) (=> t!121679 result!87860) b_and!92093))))

(declare-fun e!878300 () Bool)

(assert (=> b!1374224 (= e!878300 (and tp!394280 tp!394281))))

(declare-fun tp!394278 () Bool)

(declare-fun e!878299 () Bool)

(declare-fun b!1374223 () Bool)

(assert (=> b!1374223 (= e!878299 (and tp!394278 (inv!18258 (tag!2669 (h!19306 (t!121642 rules!2550)))) (inv!18262 (transformation!2407 (h!19306 (t!121642 rules!2550)))) e!878300))))

(declare-fun b!1374222 () Bool)

(declare-fun e!878298 () Bool)

(declare-fun tp!394279 () Bool)

(assert (=> b!1374222 (= e!878298 (and e!878299 tp!394279))))

(assert (=> b!1373439 (= tp!394196 e!878298)))

(assert (= b!1374223 b!1374224))

(assert (= b!1374222 b!1374223))

(assert (= (and b!1373439 ((_ is Cons!13905) (t!121642 rules!2550))) b!1374222))

(declare-fun m!1545905 () Bool)

(assert (=> b!1374223 m!1545905))

(declare-fun m!1545907 () Bool)

(assert (=> b!1374223 m!1545907))

(declare-fun b!1374228 () Bool)

(declare-fun e!878301 () Bool)

(declare-fun tp!394285 () Bool)

(declare-fun tp!394282 () Bool)

(assert (=> b!1374228 (= e!878301 (and tp!394285 tp!394282))))

(declare-fun b!1374225 () Bool)

(assert (=> b!1374225 (= e!878301 tp_is_empty!6751)))

(declare-fun b!1374227 () Bool)

(declare-fun tp!394286 () Bool)

(assert (=> b!1374227 (= e!878301 tp!394286)))

(declare-fun b!1374226 () Bool)

(declare-fun tp!394284 () Bool)

(declare-fun tp!394283 () Bool)

(assert (=> b!1374226 (= e!878301 (and tp!394284 tp!394283))))

(assert (=> b!1373457 (= tp!394188 e!878301)))

(assert (= (and b!1373457 ((_ is ElementMatch!3721) (regex!2407 (rule!4164 t1!34)))) b!1374225))

(assert (= (and b!1373457 ((_ is Concat!6219) (regex!2407 (rule!4164 t1!34)))) b!1374226))

(assert (= (and b!1373457 ((_ is Star!3721) (regex!2407 (rule!4164 t1!34)))) b!1374227))

(assert (= (and b!1373457 ((_ is Union!3721) (regex!2407 (rule!4164 t1!34)))) b!1374228))

(declare-fun b_lambda!42221 () Bool)

(assert (= b_lambda!42211 (or b!1373448 b_lambda!42221)))

(declare-fun bs!336032 () Bool)

(declare-fun d!392442 () Bool)

(assert (= bs!336032 (and d!392442 b!1373448)))

(declare-fun ruleValid!594 (LexerInterface!2102 Rule!4614) Bool)

(assert (=> bs!336032 (= (dynLambda!6334 lambda!58381 (rule!4164 t1!34)) (ruleValid!594 thiss!19762 (rule!4164 t1!34)))))

(declare-fun m!1545909 () Bool)

(assert (=> bs!336032 m!1545909))

(assert (=> d!392408 d!392442))

(declare-fun b_lambda!42223 () Bool)

(assert (= b_lambda!42219 (or (and b!1373451 b_free!33261 (= (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toChars!3537 (transformation!2407 (rule!4164 t2!34))))) (and b!1373449 b_free!33265 (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 t2!34))))) (and b!1373465 b_free!33269) (and b!1374224 b_free!33277 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toChars!3537 (transformation!2407 (rule!4164 t2!34))))) b_lambda!42223)))

(declare-fun b_lambda!42225 () Bool)

(assert (= b_lambda!42215 (or (and b!1373451 b_free!33261) (and b!1373449 b_free!33265 (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 t1!34))))) (and b!1373465 b_free!33269 (= (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toChars!3537 (transformation!2407 (rule!4164 t1!34))))) (and b!1374224 b_free!33277 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toChars!3537 (transformation!2407 (rule!4164 t1!34))))) b_lambda!42225)))

(declare-fun b_lambda!42227 () Bool)

(assert (= b_lambda!42155 (or b!1373444 b_lambda!42227)))

(declare-fun bs!336033 () Bool)

(declare-fun d!392444 () Bool)

(assert (= bs!336033 (and d!392444 b!1373444)))

(assert (=> bs!336033 (= (dynLambda!6334 lambda!58380 lt!456245) (= (regex!2407 lt!456245) lt!456134))))

(assert (=> d!392238 d!392444))

(declare-fun b_lambda!42229 () Bool)

(assert (= b_lambda!42209 (or b!1373448 b_lambda!42229)))

(declare-fun bs!336034 () Bool)

(declare-fun d!392446 () Bool)

(assert (= bs!336034 (and d!392446 b!1373448)))

(assert (=> bs!336034 (= (dynLambda!6334 lambda!58381 (rule!4164 t2!34)) (ruleValid!594 thiss!19762 (rule!4164 t2!34)))))

(declare-fun m!1545911 () Bool)

(assert (=> bs!336034 m!1545911))

(assert (=> d!392406 d!392446))

(declare-fun b_lambda!42231 () Bool)

(assert (= b_lambda!42163 (or b!1373464 b_lambda!42231)))

(declare-fun bs!336035 () Bool)

(declare-fun d!392448 () Bool)

(assert (= bs!336035 (and d!392448 b!1373464)))

(assert (=> bs!336035 (= (dynLambda!6335 lambda!58378 (h!19306 rules!2550)) (regex!2407 (h!19306 rules!2550)))))

(assert (=> b!1373909 d!392448))

(declare-fun b_lambda!42233 () Bool)

(assert (= b_lambda!42151 (or b!1373443 b_lambda!42233)))

(declare-fun bs!336036 () Bool)

(declare-fun d!392450 () Bool)

(assert (= bs!336036 (and d!392450 b!1373443)))

(declare-fun res!619224 () Bool)

(declare-fun e!878302 () Bool)

(assert (=> bs!336036 (=> (not res!619224) (not e!878302))))

(assert (=> bs!336036 (= res!619224 (matchR!1714 lt!456141 lt!456228))))

(assert (=> bs!336036 (= (dynLambda!6332 lambda!58377 lt!456228) e!878302)))

(declare-fun b!1374229 () Bool)

(assert (=> b!1374229 (= e!878302 (isPrefix!1131 lt!456127 lt!456228))))

(assert (= (and bs!336036 res!619224) b!1374229))

(declare-fun m!1545913 () Bool)

(assert (=> bs!336036 m!1545913))

(declare-fun m!1545915 () Bool)

(assert (=> b!1374229 m!1545915))

(assert (=> d!392208 d!392450))

(declare-fun b_lambda!42235 () Bool)

(assert (= b_lambda!42145 (or (and b!1373451 b_free!33261) (and b!1373449 b_free!33265 (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 t1!34))))) (and b!1373465 b_free!33269 (= (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toChars!3537 (transformation!2407 (rule!4164 t1!34))))) (and b!1374224 b_free!33277 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toChars!3537 (transformation!2407 (rule!4164 t1!34))))) b_lambda!42235)))

(declare-fun b_lambda!42237 () Bool)

(assert (= b_lambda!42217 (or (and b!1373451 b_free!33261 (= (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toChars!3537 (transformation!2407 (rule!4164 t2!34))))) (and b!1373449 b_free!33265 (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 t2!34))))) (and b!1373465 b_free!33269) (and b!1374224 b_free!33277 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toChars!3537 (transformation!2407 (rule!4164 t2!34))))) b_lambda!42237)))

(declare-fun b_lambda!42239 () Bool)

(assert (= b_lambda!42205 (or b!1373464 b_lambda!42239)))

(declare-fun bs!336037 () Bool)

(declare-fun d!392452 () Bool)

(assert (= bs!336037 (and d!392452 b!1373464)))

(declare-fun res!619225 () Bool)

(declare-fun e!878303 () Bool)

(assert (=> bs!336037 (=> (not res!619225) (not e!878303))))

(assert (=> bs!336037 (= res!619225 (validRegex!1621 lt!456361))))

(assert (=> bs!336037 (= (dynLambda!6341 lambda!58379 lt!456361) e!878303)))

(declare-fun b!1374230 () Bool)

(assert (=> b!1374230 (= e!878303 (matchR!1714 lt!456361 lt!456122))))

(assert (= (and bs!336037 res!619225) b!1374230))

(declare-fun m!1545917 () Bool)

(assert (=> bs!336037 m!1545917))

(declare-fun m!1545919 () Bool)

(assert (=> b!1374230 m!1545919))

(assert (=> d!392380 d!392452))

(declare-fun b_lambda!42241 () Bool)

(assert (= b_lambda!42153 (or b!1373444 b_lambda!42241)))

(declare-fun bs!336038 () Bool)

(declare-fun d!392454 () Bool)

(assert (= bs!336038 (and d!392454 b!1373444)))

(assert (=> bs!336038 (= (dynLambda!6334 lambda!58380 (h!19306 rules!2550)) (= (regex!2407 (h!19306 rules!2550)) lt!456134))))

(assert (=> b!1373778 d!392454))

(declare-fun b_lambda!42243 () Bool)

(assert (= b_lambda!42213 (or b!1373448 b_lambda!42243)))

(declare-fun bs!336039 () Bool)

(declare-fun d!392456 () Bool)

(assert (= bs!336039 (and d!392456 b!1373448)))

(assert (=> bs!336039 (= (dynLambda!6334 lambda!58381 lt!456138) (ruleValid!594 thiss!19762 lt!456138))))

(declare-fun m!1545921 () Bool)

(assert (=> bs!336039 m!1545921))

(assert (=> d!392410 d!392456))

(declare-fun b_lambda!42245 () Bool)

(assert (= b_lambda!42207 (or b!1373464 b_lambda!42245)))

(declare-fun bs!336040 () Bool)

(declare-fun d!392458 () Bool)

(assert (= bs!336040 (and d!392458 b!1373464)))

(declare-fun res!619226 () Bool)

(declare-fun e!878304 () Bool)

(assert (=> bs!336040 (=> (not res!619226) (not e!878304))))

(assert (=> bs!336040 (= res!619226 (validRegex!1621 (h!19307 (map!3071 rules!2550 lambda!58378))))))

(assert (=> bs!336040 (= (dynLambda!6341 lambda!58379 (h!19307 (map!3071 rules!2550 lambda!58378))) e!878304)))

(declare-fun b!1374231 () Bool)

(assert (=> b!1374231 (= e!878304 (matchR!1714 (h!19307 (map!3071 rules!2550 lambda!58378)) lt!456122))))

(assert (= (and bs!336040 res!619226) b!1374231))

(declare-fun m!1545923 () Bool)

(assert (=> bs!336040 m!1545923))

(declare-fun m!1545925 () Bool)

(assert (=> b!1374231 m!1545925))

(assert (=> b!1374085 d!392458))

(check-sat (not b!1373962) (not b!1373721) (not b!1373757) (not d!392160) (not b!1374158) (not b!1374178) (not b!1374086) (not b_next!33969) (not b!1373775) (not b!1374210) (not b!1373610) (not b!1374181) (not d!392236) (not b!1373758) (not b!1374092) (not b_lambda!42233) (not b!1373754) (not tb!72321) (not d!392222) (not b_lambda!42245) (not b!1373943) (not b!1373941) (not d!392332) (not d!392424) (not b!1374094) (not b!1374172) (not b!1374229) (not d!392208) (not b_lambda!42235) (not bs!336037) (not b!1373896) (not d!392396) (not b!1373727) (not d!392432) (not b!1373606) (not b!1374131) (not b!1374176) (not b_next!33971) (not b!1374126) (not b!1374211) (not b!1374180) (not b!1374018) (not b!1373761) (not d!392238) (not d!392240) (not d!392310) (not b!1374133) (not b!1374087) (not d!392430) b_and!92035 (not b_lambda!42243) (not b!1373961) (not b!1374213) (not d!392220) (not b!1373730) (not b!1373960) (not bs!336039) (not b!1373733) (not d!392440) (not bm!92216) (not b!1374141) (not b!1374183) (not b!1373777) (not b!1373909) (not b!1374168) (not b!1374136) (not d!392148) (not b!1374129) (not b!1374095) (not d!392152) (not d!392206) b_and!92085 (not b!1374017) (not b!1374084) (not d!392436) (not b!1374123) (not bm!92203) (not b!1374231) (not b_next!33965) (not b!1373756) (not b!1374188) (not b!1374125) tp_is_empty!6751 (not d!392428) (not b!1373505) (not b!1374208) (not d!392180) (not b!1373495) (not b!1373494) (not d!392408) (not b!1373720) (not b_next!33967) (not b!1374186) (not b!1374228) (not d!392406) (not b!1374167) (not d!392198) (not b_lambda!42237) (not b!1373755) (not b_lambda!42227) b_and!92087 (not d!392282) (not b!1374160) (not d!392344) (not b!1374124) (not d!392218) (not bm!92218) (not b!1374016) (not b!1374030) (not d!392176) (not b!1374230) (not b!1374207) (not b!1374159) (not d!392402) (not b!1374140) (not d!392214) (not d!392380) (not b_next!33963) (not b_lambda!42225) (not b!1374150) (not b!1374187) (not bs!336040) (not d!392224) (not tb!72343) (not b!1374206) (not bs!336036) b_and!92027 (not b_lambda!42241) (not b!1373602) (not b!1374100) (not d!392414) (not d!392202) (not d!392404) (not b!1374226) (not b!1374135) (not b!1374096) (not b!1373522) (not d!392438) (not b!1374149) (not d!392292) (not b!1374157) (not b_next!33981) (not b!1374182) (not b!1374227) (not bm!92217) (not b!1373776) (not d!392410) (not d!392232) (not b_lambda!42221) (not b!1373743) (not d!392228) (not b!1374212) (not d!392352) (not b!1373506) (not d!392412) (not b_next!33979) (not b!1374128) (not b!1373732) (not d!392150) (not b!1374175) (not b_lambda!42229) (not b!1373746) (not d!392234) (not b!1373604) (not b!1373867) (not b!1374173) (not b!1373609) (not b!1373871) b_and!92091 (not d!392300) (not b!1373729) (not d!392320) (not bs!336034) (not d!392312) (not b!1374222) (not b!1373868) (not d!392434) (not b!1373759) (not b!1373545) (not d!392420) (not d!392338) b_and!92031 (not b!1373869) (not d!392376) (not b!1374184) (not b!1373752) (not b!1374130) (not d!392354) (not d!392426) (not b!1374169) (not d!392168) (not b_lambda!42231) (not d!392174) (not b!1374161) (not b!1373719) (not b_lambda!42223) (not b_lambda!42239) (not d!392204) (not d!392200) (not b!1374189) (not d!392416) (not b!1374166) (not bs!336032) (not d!392210) (not bm!92213) (not b!1374152) b_and!92089 (not b!1374194) (not d!392318) (not b!1374223) b_and!92093 (not b!1373605) (not b!1374170) (not b!1373940) (not d!392422) (not b!1373739) (not b!1374099) (not b!1374148) (not b_next!33973) (not d!392164) (not b!1374137) (not d!392216))
(check-sat (not b_next!33969) (not b_next!33971) b_and!92035 b_and!92085 (not b_next!33965) (not b_next!33967) b_and!92087 (not b_next!33963) b_and!92027 (not b_next!33981) (not b_next!33979) b_and!92091 b_and!92031 (not b_next!33973) b_and!92089 b_and!92093)
(get-model)

(declare-fun d!392580 () Bool)

(assert (=> d!392580 true))

(assert (=> d!392580 true))

(declare-fun res!619341 () Bool)

(assert (=> d!392580 (= (choose!8454 lambda!58377) res!619341)))

(assert (=> d!392352 d!392580))

(declare-fun d!392586 () Bool)

(assert (=> d!392586 (= (isEmpty!8392 (tail!1987 lt!456128)) ((_ is Nil!13903) (tail!1987 lt!456128)))))

(assert (=> b!1374141 d!392586))

(declare-fun d!392588 () Bool)

(assert (=> d!392588 (= (tail!1987 lt!456128) (t!121640 lt!456128))))

(assert (=> b!1374141 d!392588))

(assert (=> d!392310 d!392176))

(declare-fun bs!336082 () Bool)

(declare-fun d!392590 () Bool)

(assert (= bs!336082 (and d!392590 d!392312)))

(declare-fun lambda!58445 () Int)

(assert (=> bs!336082 (= (= lambda!58411 lambda!58379) (= lambda!58445 lambda!58415))))

(declare-fun bs!336084 () Bool)

(assert (= bs!336084 (and d!392590 d!392318)))

(assert (=> bs!336084 (= (= lambda!58411 lambda!58379) (= lambda!58445 lambda!58416))))

(declare-fun bs!336085 () Bool)

(assert (= bs!336085 (and d!392590 d!392310)))

(assert (=> bs!336085 (not (= lambda!58445 lambda!58411))))

(declare-fun bs!336086 () Bool)

(assert (= bs!336086 (and d!392590 b!1373464)))

(assert (=> bs!336086 (not (= lambda!58445 lambda!58379))))

(assert (=> bs!336085 (not (= lambda!58445 lambda!58410))))

(assert (=> d!392590 true))

(assert (=> d!392590 (< (dynLambda!6337 order!8497 lambda!58411) (dynLambda!6337 order!8497 lambda!58445))))

(assert (=> d!392590 (= (exists!473 lt!456129 lambda!58411) (not (forall!3400 lt!456129 lambda!58445)))))

(declare-fun bs!336087 () Bool)

(assert (= bs!336087 d!392590))

(declare-fun m!1546251 () Bool)

(assert (=> bs!336087 m!1546251))

(assert (=> d!392310 d!392590))

(declare-fun bs!336088 () Bool)

(declare-fun d!392596 () Bool)

(assert (= bs!336088 (and d!392596 d!392312)))

(declare-fun lambda!58448 () Int)

(assert (=> bs!336088 (not (= lambda!58448 lambda!58415))))

(declare-fun bs!336089 () Bool)

(assert (= bs!336089 (and d!392596 d!392310)))

(assert (=> bs!336089 (= lambda!58448 lambda!58411)))

(declare-fun bs!336090 () Bool)

(assert (= bs!336090 (and d!392596 b!1373464)))

(assert (=> bs!336090 (= lambda!58448 lambda!58379)))

(assert (=> bs!336089 (not (= lambda!58448 lambda!58410))))

(declare-fun bs!336091 () Bool)

(assert (= bs!336091 (and d!392596 d!392318)))

(assert (=> bs!336091 (not (= lambda!58448 lambda!58416))))

(declare-fun bs!336092 () Bool)

(assert (= bs!336092 (and d!392596 d!392590)))

(assert (=> bs!336092 (not (= lambda!58448 lambda!58445))))

(assert (=> d!392596 true))

(assert (=> d!392596 (= (matchR!1714 lt!456141 lt!456122) (exists!473 lt!456129 lambda!58448))))

(assert (=> d!392596 true))

(declare-fun _$85!158 () Unit!20133)

(assert (=> d!392596 (= (choose!8450 lt!456141 lt!456129 lt!456122) _$85!158)))

(declare-fun bs!336093 () Bool)

(assert (= bs!336093 d!392596))

(assert (=> bs!336093 m!1544883))

(declare-fun m!1546277 () Bool)

(assert (=> bs!336093 m!1546277))

(assert (=> d!392310 d!392596))

(declare-fun d!392604 () Bool)

(declare-fun res!619362 () Bool)

(declare-fun e!878473 () Bool)

(assert (=> d!392604 (=> res!619362 e!878473)))

(assert (=> d!392604 (= res!619362 ((_ is Nil!13906) lt!456129))))

(assert (=> d!392604 (= (forall!3400 lt!456129 lambda!58410) e!878473)))

(declare-fun b!1374505 () Bool)

(declare-fun e!878474 () Bool)

(assert (=> b!1374505 (= e!878473 e!878474)))

(declare-fun res!619363 () Bool)

(assert (=> b!1374505 (=> (not res!619363) (not e!878474))))

(assert (=> b!1374505 (= res!619363 (dynLambda!6341 lambda!58410 (h!19307 lt!456129)))))

(declare-fun b!1374506 () Bool)

(assert (=> b!1374506 (= e!878474 (forall!3400 (t!121643 lt!456129) lambda!58410))))

(assert (= (and d!392604 (not res!619362)) b!1374505))

(assert (= (and b!1374505 res!619363) b!1374506))

(declare-fun b_lambda!42261 () Bool)

(assert (=> (not b_lambda!42261) (not b!1374505)))

(declare-fun m!1546279 () Bool)

(assert (=> b!1374505 m!1546279))

(declare-fun m!1546281 () Bool)

(assert (=> b!1374506 m!1546281))

(assert (=> d!392310 d!392604))

(declare-fun d!392608 () Bool)

(assert (=> d!392608 (= ($colon$colon!203 (map!3071 (t!121642 rules!2550) lambda!58378) (dynLambda!6335 lambda!58378 (h!19306 rules!2550))) (Cons!13906 (dynLambda!6335 lambda!58378 (h!19306 rules!2550)) (map!3071 (t!121642 rules!2550) lambda!58378)))))

(assert (=> b!1373909 d!392608))

(declare-fun d!392612 () Bool)

(declare-fun lt!456472 () List!13972)

(assert (=> d!392612 (= (size!11418 lt!456472) (size!11419 (t!121642 rules!2550)))))

(declare-fun e!878479 () List!13972)

(assert (=> d!392612 (= lt!456472 e!878479)))

(declare-fun c!226263 () Bool)

(assert (=> d!392612 (= c!226263 ((_ is Nil!13905) (t!121642 rules!2550)))))

(assert (=> d!392612 (= (map!3071 (t!121642 rules!2550) lambda!58378) lt!456472)))

(declare-fun b!1374512 () Bool)

(assert (=> b!1374512 (= e!878479 Nil!13906)))

(declare-fun b!1374513 () Bool)

(assert (=> b!1374513 (= e!878479 ($colon$colon!203 (map!3071 (t!121642 (t!121642 rules!2550)) lambda!58378) (dynLambda!6335 lambda!58378 (h!19306 (t!121642 rules!2550)))))))

(assert (= (and d!392612 c!226263) b!1374512))

(assert (= (and d!392612 (not c!226263)) b!1374513))

(declare-fun b_lambda!42265 () Bool)

(assert (=> (not b_lambda!42265) (not b!1374513)))

(declare-fun m!1546291 () Bool)

(assert (=> d!392612 m!1546291))

(declare-fun m!1546293 () Bool)

(assert (=> d!392612 m!1546293))

(declare-fun m!1546295 () Bool)

(assert (=> b!1374513 m!1546295))

(declare-fun m!1546299 () Bool)

(assert (=> b!1374513 m!1546299))

(assert (=> b!1374513 m!1546295))

(assert (=> b!1374513 m!1546299))

(declare-fun m!1546303 () Bool)

(assert (=> b!1374513 m!1546303))

(assert (=> b!1373909 d!392612))

(declare-fun d!392620 () Bool)

(assert (=> d!392620 (dynLambda!6334 lambda!58381 lt!456138)))

(assert (=> d!392620 true))

(declare-fun _$7!730 () Unit!20133)

(assert (=> d!392620 (= (choose!8458 rules!2550 lambda!58381 lt!456138) _$7!730)))

(declare-fun b_lambda!42267 () Bool)

(assert (=> (not b_lambda!42267) (not d!392620)))

(declare-fun bs!336096 () Bool)

(assert (= bs!336096 d!392620))

(assert (=> bs!336096 m!1545789))

(assert (=> d!392410 d!392620))

(declare-fun d!392628 () Bool)

(declare-fun res!619380 () Bool)

(declare-fun e!878494 () Bool)

(assert (=> d!392628 (=> res!619380 e!878494)))

(assert (=> d!392628 (= res!619380 ((_ is Nil!13905) rules!2550))))

(assert (=> d!392628 (= (forall!3401 rules!2550 lambda!58381) e!878494)))

(declare-fun b!1374537 () Bool)

(declare-fun e!878495 () Bool)

(assert (=> b!1374537 (= e!878494 e!878495)))

(declare-fun res!619381 () Bool)

(assert (=> b!1374537 (=> (not res!619381) (not e!878495))))

(assert (=> b!1374537 (= res!619381 (dynLambda!6334 lambda!58381 (h!19306 rules!2550)))))

(declare-fun b!1374538 () Bool)

(assert (=> b!1374538 (= e!878495 (forall!3401 (t!121642 rules!2550) lambda!58381))))

(assert (= (and d!392628 (not res!619380)) b!1374537))

(assert (= (and b!1374537 res!619381) b!1374538))

(declare-fun b_lambda!42269 () Bool)

(assert (=> (not b_lambda!42269) (not b!1374537)))

(declare-fun m!1546323 () Bool)

(assert (=> b!1374537 m!1546323))

(declare-fun m!1546325 () Bool)

(assert (=> b!1374538 m!1546325))

(assert (=> d!392410 d!392628))

(declare-fun d!392632 () Bool)

(assert (=> d!392632 true))

(declare-fun lambda!58451 () Int)

(declare-fun order!8509 () Int)

(declare-fun order!8507 () Int)

(declare-fun dynLambda!6345 (Int Int) Int)

(declare-fun dynLambda!6346 (Int Int) Int)

(assert (=> d!392632 (< (dynLambda!6345 order!8507 (toChars!3537 (transformation!2407 (rule!4164 t1!34)))) (dynLambda!6346 order!8509 lambda!58451))))

(assert (=> d!392632 true))

(declare-fun order!8511 () Int)

(declare-fun dynLambda!6347 (Int Int) Int)

(assert (=> d!392632 (< (dynLambda!6347 order!8511 (toValue!3678 (transformation!2407 (rule!4164 t1!34)))) (dynLambda!6346 order!8509 lambda!58451))))

(declare-fun Forall!540 (Int) Bool)

(assert (=> d!392632 (= (semiInverseModEq!930 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toValue!3678 (transformation!2407 (rule!4164 t1!34)))) (Forall!540 lambda!58451))))

(declare-fun bs!336097 () Bool)

(assert (= bs!336097 d!392632))

(declare-fun m!1546327 () Bool)

(assert (=> bs!336097 m!1546327))

(assert (=> d!392214 d!392632))

(declare-fun b!1374575 () Bool)

(declare-fun e!878510 () Bool)

(declare-fun e!878511 () Bool)

(assert (=> b!1374575 (= e!878510 e!878511)))

(declare-fun res!619397 () Bool)

(assert (=> b!1374575 (=> (not res!619397) (not e!878511))))

(declare-fun height!668 (Conc!4577) Int)

(assert (=> b!1374575 (= res!619397 (<= (- 1) (- (height!668 (left!11894 (c!226062 lt!456298))) (height!668 (right!12224 (c!226062 lt!456298))))))))

(declare-fun b!1374576 () Bool)

(declare-fun isEmpty!8401 (Conc!4577) Bool)

(assert (=> b!1374576 (= e!878511 (not (isEmpty!8401 (right!12224 (c!226062 lt!456298)))))))

(declare-fun b!1374577 () Bool)

(declare-fun res!619395 () Bool)

(assert (=> b!1374577 (=> (not res!619395) (not e!878511))))

(assert (=> b!1374577 (= res!619395 (not (isEmpty!8401 (left!11894 (c!226062 lt!456298)))))))

(declare-fun b!1374578 () Bool)

(declare-fun res!619396 () Bool)

(assert (=> b!1374578 (=> (not res!619396) (not e!878511))))

(assert (=> b!1374578 (= res!619396 (isBalanced!1350 (right!12224 (c!226062 lt!456298))))))

(declare-fun d!392634 () Bool)

(declare-fun res!619394 () Bool)

(assert (=> d!392634 (=> res!619394 e!878510)))

(assert (=> d!392634 (= res!619394 (not ((_ is Node!4577) (c!226062 lt!456298))))))

(assert (=> d!392634 (= (isBalanced!1350 (c!226062 lt!456298)) e!878510)))

(declare-fun b!1374579 () Bool)

(declare-fun res!619398 () Bool)

(assert (=> b!1374579 (=> (not res!619398) (not e!878511))))

(assert (=> b!1374579 (= res!619398 (<= (- (height!668 (left!11894 (c!226062 lt!456298))) (height!668 (right!12224 (c!226062 lt!456298)))) 1))))

(declare-fun b!1374580 () Bool)

(declare-fun res!619399 () Bool)

(assert (=> b!1374580 (=> (not res!619399) (not e!878511))))

(assert (=> b!1374580 (= res!619399 (isBalanced!1350 (left!11894 (c!226062 lt!456298))))))

(assert (= (and d!392634 (not res!619394)) b!1374575))

(assert (= (and b!1374575 res!619397) b!1374579))

(assert (= (and b!1374579 res!619398) b!1374580))

(assert (= (and b!1374580 res!619399) b!1374578))

(assert (= (and b!1374578 res!619396) b!1374577))

(assert (= (and b!1374577 res!619395) b!1374576))

(declare-fun m!1546329 () Bool)

(assert (=> b!1374576 m!1546329))

(declare-fun m!1546331 () Bool)

(assert (=> b!1374580 m!1546331))

(declare-fun m!1546333 () Bool)

(assert (=> b!1374575 m!1546333))

(declare-fun m!1546335 () Bool)

(assert (=> b!1374575 m!1546335))

(declare-fun m!1546337 () Bool)

(assert (=> b!1374578 m!1546337))

(assert (=> b!1374579 m!1546333))

(assert (=> b!1374579 m!1546335))

(declare-fun m!1546339 () Bool)

(assert (=> b!1374577 m!1546339))

(assert (=> b!1373896 d!392634))

(declare-fun d!392636 () Bool)

(assert (=> d!392636 (= (isEmpty!8392 (tail!1987 lt!456122)) ((_ is Nil!13903) (tail!1987 lt!456122)))))

(assert (=> b!1373610 d!392636))

(declare-fun d!392638 () Bool)

(assert (=> d!392638 (= (tail!1987 lt!456122) (t!121640 lt!456122))))

(assert (=> b!1373610 d!392638))

(declare-fun d!392640 () Bool)

(assert (=> d!392640 (= (get!4350 lt!456377) (v!21488 lt!456377))))

(assert (=> b!1374130 d!392640))

(declare-fun d!392646 () Bool)

(declare-fun dynLambda!6348 (Int BalanceConc!9092) TokenValue!2497)

(assert (=> d!392646 (= (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456377))))) (dynLambda!6348 (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456377))))))))

(declare-fun b_lambda!42271 () Bool)

(assert (=> (not b_lambda!42271) (not d!392646)))

(declare-fun tb!72377 () Bool)

(declare-fun t!121712 () Bool)

(assert (=> (and b!1373451 (= (toValue!3678 (transformation!2407 (rule!4164 t1!34))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121712) tb!72377))

(declare-fun result!87888 () Bool)

(assert (=> tb!72377 (= result!87888 (inv!21 (dynLambda!6348 (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456377)))))))))

(declare-fun m!1546351 () Bool)

(assert (=> tb!72377 m!1546351))

(assert (=> d!392646 t!121712))

(declare-fun b_and!92119 () Bool)

(assert (= b_and!92027 (and (=> t!121712 result!87888) b_and!92119)))

(declare-fun tb!72379 () Bool)

(declare-fun t!121714 () Bool)

(assert (=> (and b!1373449 (= (toValue!3678 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121714) tb!72379))

(declare-fun result!87892 () Bool)

(assert (= result!87892 result!87888))

(assert (=> d!392646 t!121714))

(declare-fun b_and!92121 () Bool)

(assert (= b_and!92031 (and (=> t!121714 result!87892) b_and!92121)))

(declare-fun tb!72381 () Bool)

(declare-fun t!121716 () Bool)

(assert (=> (and b!1373465 (= (toValue!3678 (transformation!2407 (rule!4164 t2!34))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121716) tb!72381))

(declare-fun result!87894 () Bool)

(assert (= result!87894 result!87888))

(assert (=> d!392646 t!121716))

(declare-fun b_and!92123 () Bool)

(assert (= b_and!92035 (and (=> t!121716 result!87894) b_and!92123)))

(declare-fun tb!72383 () Bool)

(declare-fun t!121718 () Bool)

(assert (=> (and b!1374224 (= (toValue!3678 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121718) tb!72383))

(declare-fun result!87896 () Bool)

(assert (= result!87896 result!87888))

(assert (=> d!392646 t!121718))

(declare-fun b_and!92125 () Bool)

(assert (= b_and!92091 (and (=> t!121718 result!87896) b_and!92125)))

(assert (=> d!392646 m!1545747))

(declare-fun m!1546353 () Bool)

(assert (=> d!392646 m!1546353))

(assert (=> b!1374130 d!392646))

(declare-fun d!392650 () Bool)

(declare-fun fromListB!721 (List!13969) BalanceConc!9092)

(assert (=> d!392650 (= (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456377)))) (fromListB!721 (originalCharacters!3269 (_1!7641 (get!4350 lt!456377)))))))

(declare-fun bs!336100 () Bool)

(assert (= bs!336100 d!392650))

(declare-fun m!1546365 () Bool)

(assert (=> bs!336100 m!1546365))

(assert (=> b!1374130 d!392650))

(declare-fun d!392656 () Bool)

(declare-fun lt!456481 () Token!4476)

(declare-fun apply!3432 (List!13970 Int) Token!4476)

(assert (=> d!392656 (= lt!456481 (apply!3432 (list!5363 (_1!7640 lt!456215)) 0))))

(declare-fun apply!3433 (Conc!4577 Int) Token!4476)

(assert (=> d!392656 (= lt!456481 (apply!3433 (c!226062 (_1!7640 lt!456215)) 0))))

(declare-fun e!878525 () Bool)

(assert (=> d!392656 e!878525))

(declare-fun res!619402 () Bool)

(assert (=> d!392656 (=> (not res!619402) (not e!878525))))

(assert (=> d!392656 (= res!619402 (<= 0 0))))

(assert (=> d!392656 (= (apply!3427 (_1!7640 lt!456215) 0) lt!456481)))

(declare-fun b!1374601 () Bool)

(assert (=> b!1374601 (= e!878525 (< 0 (size!11416 (_1!7640 lt!456215))))))

(assert (= (and d!392656 res!619402) b!1374601))

(declare-fun m!1546367 () Bool)

(assert (=> d!392656 m!1546367))

(assert (=> d!392656 m!1546367))

(declare-fun m!1546369 () Bool)

(assert (=> d!392656 m!1546369))

(declare-fun m!1546371 () Bool)

(assert (=> d!392656 m!1546371))

(assert (=> b!1374601 m!1545159))

(assert (=> b!1373719 d!392656))

(declare-fun b!1374602 () Bool)

(declare-fun res!619405 () Bool)

(declare-fun e!878530 () Bool)

(assert (=> b!1374602 (=> (not res!619405) (not e!878530))))

(declare-fun call!92251 () Bool)

(assert (=> b!1374602 (= res!619405 (not call!92251))))

(declare-fun b!1374603 () Bool)

(declare-fun e!878529 () Bool)

(assert (=> b!1374603 (= e!878529 (not (= (head!2475 lt!456228) (c!226061 lt!456141))))))

(declare-fun b!1374604 () Bool)

(declare-fun e!878526 () Bool)

(declare-fun lt!456482 () Bool)

(assert (=> b!1374604 (= e!878526 (not lt!456482))))

(declare-fun b!1374605 () Bool)

(declare-fun res!619408 () Bool)

(assert (=> b!1374605 (=> res!619408 e!878529)))

(assert (=> b!1374605 (= res!619408 (not (isEmpty!8392 (tail!1987 lt!456228))))))

(declare-fun b!1374606 () Bool)

(declare-fun e!878528 () Bool)

(assert (=> b!1374606 (= e!878528 (nullable!1201 lt!456141))))

(declare-fun b!1374607 () Bool)

(assert (=> b!1374607 (= e!878528 (matchR!1714 (derivativeStep!958 lt!456141 (head!2475 lt!456228)) (tail!1987 lt!456228)))))

(declare-fun b!1374608 () Bool)

(declare-fun e!878532 () Bool)

(assert (=> b!1374608 (= e!878532 e!878526)))

(declare-fun c!226287 () Bool)

(assert (=> b!1374608 (= c!226287 ((_ is EmptyLang!3721) lt!456141))))

(declare-fun b!1374609 () Bool)

(assert (=> b!1374609 (= e!878532 (= lt!456482 call!92251))))

(declare-fun bm!92246 () Bool)

(assert (=> bm!92246 (= call!92251 (isEmpty!8392 lt!456228))))

(declare-fun b!1374610 () Bool)

(assert (=> b!1374610 (= e!878530 (= (head!2475 lt!456228) (c!226061 lt!456141)))))

(declare-fun b!1374611 () Bool)

(declare-fun res!619409 () Bool)

(assert (=> b!1374611 (=> (not res!619409) (not e!878530))))

(assert (=> b!1374611 (= res!619409 (isEmpty!8392 (tail!1987 lt!456228)))))

(declare-fun b!1374612 () Bool)

(declare-fun res!619410 () Bool)

(declare-fun e!878527 () Bool)

(assert (=> b!1374612 (=> res!619410 e!878527)))

(assert (=> b!1374612 (= res!619410 e!878530)))

(declare-fun res!619403 () Bool)

(assert (=> b!1374612 (=> (not res!619403) (not e!878530))))

(assert (=> b!1374612 (= res!619403 lt!456482)))

(declare-fun d!392658 () Bool)

(assert (=> d!392658 e!878532))

(declare-fun c!226288 () Bool)

(assert (=> d!392658 (= c!226288 ((_ is EmptyExpr!3721) lt!456141))))

(assert (=> d!392658 (= lt!456482 e!878528)))

(declare-fun c!226289 () Bool)

(assert (=> d!392658 (= c!226289 (isEmpty!8392 lt!456228))))

(assert (=> d!392658 (validRegex!1621 lt!456141)))

(assert (=> d!392658 (= (matchR!1714 lt!456141 lt!456228) lt!456482)))

(declare-fun b!1374613 () Bool)

(declare-fun res!619406 () Bool)

(assert (=> b!1374613 (=> res!619406 e!878527)))

(assert (=> b!1374613 (= res!619406 (not ((_ is ElementMatch!3721) lt!456141)))))

(assert (=> b!1374613 (= e!878526 e!878527)))

(declare-fun b!1374614 () Bool)

(declare-fun e!878531 () Bool)

(assert (=> b!1374614 (= e!878527 e!878531)))

(declare-fun res!619407 () Bool)

(assert (=> b!1374614 (=> (not res!619407) (not e!878531))))

(assert (=> b!1374614 (= res!619407 (not lt!456482))))

(declare-fun b!1374615 () Bool)

(assert (=> b!1374615 (= e!878531 e!878529)))

(declare-fun res!619404 () Bool)

(assert (=> b!1374615 (=> res!619404 e!878529)))

(assert (=> b!1374615 (= res!619404 call!92251)))

(assert (= (and d!392658 c!226289) b!1374606))

(assert (= (and d!392658 (not c!226289)) b!1374607))

(assert (= (and d!392658 c!226288) b!1374609))

(assert (= (and d!392658 (not c!226288)) b!1374608))

(assert (= (and b!1374608 c!226287) b!1374604))

(assert (= (and b!1374608 (not c!226287)) b!1374613))

(assert (= (and b!1374613 (not res!619406)) b!1374612))

(assert (= (and b!1374612 res!619403) b!1374602))

(assert (= (and b!1374602 res!619405) b!1374611))

(assert (= (and b!1374611 res!619409) b!1374610))

(assert (= (and b!1374612 (not res!619410)) b!1374614))

(assert (= (and b!1374614 res!619407) b!1374615))

(assert (= (and b!1374615 (not res!619404)) b!1374605))

(assert (= (and b!1374605 (not res!619408)) b!1374603))

(assert (= (or b!1374609 b!1374602 b!1374615) bm!92246))

(declare-fun m!1546373 () Bool)

(assert (=> d!392658 m!1546373))

(assert (=> d!392658 m!1545029))

(declare-fun m!1546375 () Bool)

(assert (=> b!1374605 m!1546375))

(assert (=> b!1374605 m!1546375))

(declare-fun m!1546377 () Bool)

(assert (=> b!1374605 m!1546377))

(declare-fun m!1546379 () Bool)

(assert (=> b!1374603 m!1546379))

(assert (=> b!1374611 m!1546375))

(assert (=> b!1374611 m!1546375))

(assert (=> b!1374611 m!1546377))

(assert (=> b!1374610 m!1546379))

(assert (=> b!1374606 m!1545037))

(assert (=> b!1374607 m!1546379))

(assert (=> b!1374607 m!1546379))

(declare-fun m!1546381 () Bool)

(assert (=> b!1374607 m!1546381))

(assert (=> b!1374607 m!1546375))

(assert (=> b!1374607 m!1546381))

(assert (=> b!1374607 m!1546375))

(declare-fun m!1546383 () Bool)

(assert (=> b!1374607 m!1546383))

(assert (=> bm!92246 m!1546373))

(assert (=> bs!336036 d!392658))

(declare-fun d!392660 () Bool)

(assert (=> d!392660 (= (get!4350 lt!456400) (v!21488 lt!456400))))

(assert (=> b!1374188 d!392660))

(declare-fun d!392662 () Bool)

(assert (=> d!392662 (= (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456400))))) (dynLambda!6348 (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456400))))))))

(declare-fun b_lambda!42273 () Bool)

(assert (=> (not b_lambda!42273) (not d!392662)))

(declare-fun t!121720 () Bool)

(declare-fun tb!72385 () Bool)

(assert (=> (and b!1373451 (= (toValue!3678 (transformation!2407 (rule!4164 t1!34))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121720) tb!72385))

(declare-fun result!87898 () Bool)

(assert (=> tb!72385 (= result!87898 (inv!21 (dynLambda!6348 (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456400)))))))))

(declare-fun m!1546385 () Bool)

(assert (=> tb!72385 m!1546385))

(assert (=> d!392662 t!121720))

(declare-fun b_and!92127 () Bool)

(assert (= b_and!92119 (and (=> t!121720 result!87898) b_and!92127)))

(declare-fun t!121722 () Bool)

(declare-fun tb!72387 () Bool)

(assert (=> (and b!1373449 (= (toValue!3678 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121722) tb!72387))

(declare-fun result!87900 () Bool)

(assert (= result!87900 result!87898))

(assert (=> d!392662 t!121722))

(declare-fun b_and!92129 () Bool)

(assert (= b_and!92121 (and (=> t!121722 result!87900) b_and!92129)))

(declare-fun t!121724 () Bool)

(declare-fun tb!72389 () Bool)

(assert (=> (and b!1373465 (= (toValue!3678 (transformation!2407 (rule!4164 t2!34))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121724) tb!72389))

(declare-fun result!87902 () Bool)

(assert (= result!87902 result!87898))

(assert (=> d!392662 t!121724))

(declare-fun b_and!92131 () Bool)

(assert (= b_and!92123 (and (=> t!121724 result!87902) b_and!92131)))

(declare-fun tb!72391 () Bool)

(declare-fun t!121726 () Bool)

(assert (=> (and b!1374224 (= (toValue!3678 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121726) tb!72391))

(declare-fun result!87904 () Bool)

(assert (= result!87904 result!87898))

(assert (=> d!392662 t!121726))

(declare-fun b_and!92133 () Bool)

(assert (= b_and!92125 (and (=> t!121726 result!87904) b_and!92133)))

(assert (=> d!392662 m!1545887))

(declare-fun m!1546387 () Bool)

(assert (=> d!392662 m!1546387))

(assert (=> b!1374188 d!392662))

(declare-fun d!392664 () Bool)

(assert (=> d!392664 (= (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!456400)))) (fromListB!721 (originalCharacters!3269 (_1!7641 (get!4350 lt!456400)))))))

(declare-fun bs!336101 () Bool)

(assert (= bs!336101 d!392664))

(declare-fun m!1546389 () Bool)

(assert (=> bs!336101 m!1546389))

(assert (=> b!1374188 d!392664))

(declare-fun d!392666 () Bool)

(declare-fun c!226294 () Bool)

(assert (=> d!392666 (= c!226294 ((_ is Empty!4576) (c!226060 lt!456132)))))

(declare-fun e!878538 () List!13969)

(assert (=> d!392666 (= (list!5366 (c!226060 lt!456132)) e!878538)))

(declare-fun b!1374627 () Bool)

(declare-fun e!878539 () List!13969)

(assert (=> b!1374627 (= e!878539 (++!3598 (list!5366 (left!11893 (c!226060 lt!456132))) (list!5366 (right!12223 (c!226060 lt!456132)))))))

(declare-fun b!1374626 () Bool)

(declare-fun list!5369 (IArray!9157) List!13969)

(assert (=> b!1374626 (= e!878539 (list!5369 (xs!7303 (c!226060 lt!456132))))))

(declare-fun b!1374624 () Bool)

(assert (=> b!1374624 (= e!878538 Nil!13903)))

(declare-fun b!1374625 () Bool)

(assert (=> b!1374625 (= e!878538 e!878539)))

(declare-fun c!226295 () Bool)

(assert (=> b!1374625 (= c!226295 ((_ is Leaf!6976) (c!226060 lt!456132)))))

(assert (= (and d!392666 c!226294) b!1374624))

(assert (= (and d!392666 (not c!226294)) b!1374625))

(assert (= (and b!1374625 c!226295) b!1374626))

(assert (= (and b!1374625 (not c!226295)) b!1374627))

(declare-fun m!1546391 () Bool)

(assert (=> b!1374627 m!1546391))

(declare-fun m!1546393 () Bool)

(assert (=> b!1374627 m!1546393))

(assert (=> b!1374627 m!1546391))

(assert (=> b!1374627 m!1546393))

(declare-fun m!1546395 () Bool)

(assert (=> b!1374627 m!1546395))

(declare-fun m!1546397 () Bool)

(assert (=> b!1374626 m!1546397))

(assert (=> d!392164 d!392666))

(declare-fun d!392668 () Bool)

(declare-fun charsToBigInt!1 (List!13968) Int)

(assert (=> d!392668 (= (inv!17 (value!78232 t1!34)) (= (charsToBigInt!1 (text!17927 (value!78232 t1!34))) (value!78224 (value!78232 t1!34))))))

(declare-fun bs!336102 () Bool)

(assert (= bs!336102 d!392668))

(declare-fun m!1546399 () Bool)

(assert (=> bs!336102 m!1546399))

(assert (=> b!1374018 d!392668))

(declare-fun d!392670 () Bool)

(assert (=> d!392670 (= (isEmpty!8392 (tail!1987 lt!456133)) ((_ is Nil!13903) (tail!1987 lt!456133)))))

(assert (=> b!1374094 d!392670))

(declare-fun d!392672 () Bool)

(assert (=> d!392672 (= (tail!1987 lt!456133) (t!121640 lt!456133))))

(assert (=> b!1374094 d!392672))

(assert (=> b!1374149 d!392436))

(declare-fun d!392674 () Bool)

(assert (=> d!392674 (= (isEmpty!8392 lt!456127) ((_ is Nil!13903) lt!456127))))

(assert (=> d!392148 d!392674))

(declare-fun bs!336103 () Bool)

(declare-fun d!392676 () Bool)

(assert (= bs!336103 (and d!392676 b!1373464)))

(declare-fun lambda!58456 () Int)

(assert (=> bs!336103 (= lambda!58456 lambda!58378)))

(declare-fun bs!336104 () Bool)

(assert (= bs!336104 (and d!392676 d!392168)))

(assert (=> bs!336104 (= lambda!58456 lambda!58384)))

(declare-fun bs!336105 () Bool)

(assert (= bs!336105 (and d!392676 d!392312)))

(declare-fun lambda!58457 () Int)

(assert (=> bs!336105 (not (= lambda!58457 lambda!58415))))

(declare-fun bs!336106 () Bool)

(assert (= bs!336106 (and d!392676 d!392596)))

(assert (=> bs!336106 (not (= lambda!58457 lambda!58448))))

(declare-fun bs!336107 () Bool)

(assert (= bs!336107 (and d!392676 d!392310)))

(assert (=> bs!336107 (not (= lambda!58457 lambda!58411))))

(assert (=> bs!336103 (not (= lambda!58457 lambda!58379))))

(assert (=> bs!336107 (= lambda!58457 lambda!58410)))

(declare-fun bs!336108 () Bool)

(assert (= bs!336108 (and d!392676 d!392318)))

(assert (=> bs!336108 (not (= lambda!58457 lambda!58416))))

(declare-fun bs!336109 () Bool)

(assert (= bs!336109 (and d!392676 d!392590)))

(assert (=> bs!336109 (not (= lambda!58457 lambda!58445))))

(assert (=> d!392676 (forall!3400 (map!3071 rules!2550 lambda!58456) lambda!58457)))

(declare-fun lt!456501 () Unit!20133)

(declare-fun e!878546 () Unit!20133)

(assert (=> d!392676 (= lt!456501 e!878546)))

(declare-fun c!226300 () Bool)

(assert (=> d!392676 (= c!226300 ((_ is Nil!13905) rules!2550))))

(assert (=> d!392676 (rulesValidInductive!772 thiss!19762 rules!2550)))

(assert (=> d!392676 (= (lemma!128 rules!2550 thiss!19762 rules!2550) lt!456501)))

(declare-fun b!1374638 () Bool)

(declare-fun Unit!20141 () Unit!20133)

(assert (=> b!1374638 (= e!878546 Unit!20141)))

(declare-fun b!1374639 () Bool)

(declare-fun Unit!20142 () Unit!20133)

(assert (=> b!1374639 (= e!878546 Unit!20142)))

(declare-fun lt!456502 () Unit!20133)

(assert (=> b!1374639 (= lt!456502 (lemma!128 rules!2550 thiss!19762 (t!121642 rules!2550)))))

(assert (= (and d!392676 c!226300) b!1374638))

(assert (= (and d!392676 (not c!226300)) b!1374639))

(declare-fun m!1546401 () Bool)

(assert (=> d!392676 m!1546401))

(assert (=> d!392676 m!1546401))

(declare-fun m!1546403 () Bool)

(assert (=> d!392676 m!1546403))

(assert (=> d!392676 m!1545759))

(declare-fun m!1546405 () Bool)

(assert (=> b!1374639 m!1546405))

(assert (=> d!392168 d!392676))

(declare-fun bs!336112 () Bool)

(declare-fun d!392678 () Bool)

(assert (= bs!336112 (and d!392678 d!392312)))

(declare-fun lambda!58460 () Int)

(assert (=> bs!336112 (not (= lambda!58460 lambda!58415))))

(declare-fun bs!336113 () Bool)

(assert (= bs!336113 (and d!392678 d!392596)))

(assert (=> bs!336113 (not (= lambda!58460 lambda!58448))))

(declare-fun bs!336114 () Bool)

(assert (= bs!336114 (and d!392678 b!1373464)))

(assert (=> bs!336114 (not (= lambda!58460 lambda!58379))))

(declare-fun bs!336115 () Bool)

(assert (= bs!336115 (and d!392678 d!392310)))

(assert (=> bs!336115 (= lambda!58460 lambda!58410)))

(declare-fun bs!336116 () Bool)

(assert (= bs!336116 (and d!392678 d!392318)))

(assert (=> bs!336116 (not (= lambda!58460 lambda!58416))))

(declare-fun bs!336117 () Bool)

(assert (= bs!336117 (and d!392678 d!392590)))

(assert (=> bs!336117 (not (= lambda!58460 lambda!58445))))

(declare-fun bs!336118 () Bool)

(assert (= bs!336118 (and d!392678 d!392676)))

(assert (=> bs!336118 (= lambda!58460 lambda!58457)))

(assert (=> bs!336115 (not (= lambda!58460 lambda!58411))))

(declare-fun b!1374665 () Bool)

(declare-fun e!878566 () Regex!3721)

(assert (=> b!1374665 (= e!878566 EmptyLang!3721)))

(declare-fun b!1374666 () Bool)

(declare-fun e!878564 () Bool)

(declare-fun isEmpty!8402 (List!13972) Bool)

(assert (=> b!1374666 (= e!878564 (isEmpty!8402 (t!121643 (map!3071 rules!2550 lambda!58384))))))

(declare-fun e!878565 () Bool)

(assert (=> d!392678 e!878565))

(declare-fun res!619420 () Bool)

(assert (=> d!392678 (=> (not res!619420) (not e!878565))))

(declare-fun lt!456513 () Regex!3721)

(assert (=> d!392678 (= res!619420 (validRegex!1621 lt!456513))))

(declare-fun e!878563 () Regex!3721)

(assert (=> d!392678 (= lt!456513 e!878563)))

(declare-fun c!226311 () Bool)

(assert (=> d!392678 (= c!226311 e!878564)))

(declare-fun res!619421 () Bool)

(assert (=> d!392678 (=> (not res!619421) (not e!878564))))

(assert (=> d!392678 (= res!619421 ((_ is Cons!13906) (map!3071 rules!2550 lambda!58384)))))

(assert (=> d!392678 (forall!3400 (map!3071 rules!2550 lambda!58384) lambda!58460)))

(assert (=> d!392678 (= (generalisedUnion!136 (map!3071 rules!2550 lambda!58384)) lt!456513)))

(declare-fun b!1374667 () Bool)

(declare-fun e!878568 () Bool)

(declare-fun e!878567 () Bool)

(assert (=> b!1374667 (= e!878568 e!878567)))

(declare-fun c!226312 () Bool)

(declare-fun tail!1990 (List!13972) List!13972)

(assert (=> b!1374667 (= c!226312 (isEmpty!8402 (tail!1990 (map!3071 rules!2550 lambda!58384))))))

(declare-fun b!1374668 () Bool)

(assert (=> b!1374668 (= e!878567 (= lt!456513 (head!2479 (map!3071 rules!2550 lambda!58384))))))

(declare-fun b!1374669 () Bool)

(declare-fun isEmptyLang!47 (Regex!3721) Bool)

(assert (=> b!1374669 (= e!878568 (isEmptyLang!47 lt!456513))))

(declare-fun b!1374670 () Bool)

(assert (=> b!1374670 (= e!878563 (h!19307 (map!3071 rules!2550 lambda!58384)))))

(declare-fun b!1374671 () Bool)

(assert (=> b!1374671 (= e!878565 e!878568)))

(declare-fun c!226310 () Bool)

(assert (=> b!1374671 (= c!226310 (isEmpty!8402 (map!3071 rules!2550 lambda!58384)))))

(declare-fun b!1374672 () Bool)

(assert (=> b!1374672 (= e!878566 (Union!3721 (h!19307 (map!3071 rules!2550 lambda!58384)) (generalisedUnion!136 (t!121643 (map!3071 rules!2550 lambda!58384)))))))

(declare-fun b!1374673 () Bool)

(assert (=> b!1374673 (= e!878563 e!878566)))

(declare-fun c!226313 () Bool)

(assert (=> b!1374673 (= c!226313 ((_ is Cons!13906) (map!3071 rules!2550 lambda!58384)))))

(declare-fun b!1374674 () Bool)

(declare-fun isUnion!47 (Regex!3721) Bool)

(assert (=> b!1374674 (= e!878567 (isUnion!47 lt!456513))))

(assert (= (and d!392678 res!619421) b!1374666))

(assert (= (and d!392678 c!226311) b!1374670))

(assert (= (and d!392678 (not c!226311)) b!1374673))

(assert (= (and b!1374673 c!226313) b!1374672))

(assert (= (and b!1374673 (not c!226313)) b!1374665))

(assert (= (and d!392678 res!619420) b!1374671))

(assert (= (and b!1374671 c!226310) b!1374669))

(assert (= (and b!1374671 (not c!226310)) b!1374667))

(assert (= (and b!1374667 c!226312) b!1374668))

(assert (= (and b!1374667 (not c!226312)) b!1374674))

(declare-fun m!1546451 () Bool)

(assert (=> b!1374666 m!1546451))

(assert (=> b!1374667 m!1545001))

(declare-fun m!1546453 () Bool)

(assert (=> b!1374667 m!1546453))

(assert (=> b!1374667 m!1546453))

(declare-fun m!1546455 () Bool)

(assert (=> b!1374667 m!1546455))

(declare-fun m!1546457 () Bool)

(assert (=> d!392678 m!1546457))

(assert (=> d!392678 m!1545001))

(declare-fun m!1546459 () Bool)

(assert (=> d!392678 m!1546459))

(declare-fun m!1546461 () Bool)

(assert (=> b!1374672 m!1546461))

(declare-fun m!1546463 () Bool)

(assert (=> b!1374674 m!1546463))

(declare-fun m!1546465 () Bool)

(assert (=> b!1374669 m!1546465))

(assert (=> b!1374668 m!1545001))

(declare-fun m!1546467 () Bool)

(assert (=> b!1374668 m!1546467))

(assert (=> b!1374671 m!1545001))

(declare-fun m!1546469 () Bool)

(assert (=> b!1374671 m!1546469))

(assert (=> d!392168 d!392678))

(declare-fun d!392688 () Bool)

(declare-fun lt!456516 () List!13972)

(assert (=> d!392688 (= (size!11418 lt!456516) (size!11419 rules!2550))))

(declare-fun e!878571 () List!13972)

(assert (=> d!392688 (= lt!456516 e!878571)))

(declare-fun c!226314 () Bool)

(assert (=> d!392688 (= c!226314 ((_ is Nil!13905) rules!2550))))

(assert (=> d!392688 (= (map!3071 rules!2550 lambda!58384) lt!456516)))

(declare-fun b!1374677 () Bool)

(assert (=> b!1374677 (= e!878571 Nil!13906)))

(declare-fun b!1374678 () Bool)

(assert (=> b!1374678 (= e!878571 ($colon$colon!203 (map!3071 (t!121642 rules!2550) lambda!58384) (dynLambda!6335 lambda!58384 (h!19306 rules!2550))))))

(assert (= (and d!392688 c!226314) b!1374677))

(assert (= (and d!392688 (not c!226314)) b!1374678))

(declare-fun b_lambda!42275 () Bool)

(assert (=> (not b_lambda!42275) (not b!1374678)))

(declare-fun m!1546471 () Bool)

(assert (=> d!392688 m!1546471))

(assert (=> d!392688 m!1545467))

(declare-fun m!1546473 () Bool)

(assert (=> b!1374678 m!1546473))

(declare-fun m!1546475 () Bool)

(assert (=> b!1374678 m!1546475))

(assert (=> b!1374678 m!1546473))

(assert (=> b!1374678 m!1546475))

(declare-fun m!1546477 () Bool)

(assert (=> b!1374678 m!1546477))

(assert (=> d!392168 d!392688))

(declare-fun d!392690 () Bool)

(assert (=> d!392690 (= (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377)))) (list!5366 (c!226060 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))))))

(declare-fun bs!336119 () Bool)

(assert (= bs!336119 d!392690))

(declare-fun m!1546479 () Bool)

(assert (=> bs!336119 m!1546479))

(assert (=> b!1374123 d!392690))

(declare-fun d!392692 () Bool)

(declare-fun lt!456518 () BalanceConc!9092)

(assert (=> d!392692 (= (list!5362 lt!456518) (originalCharacters!3269 (_1!7641 (get!4350 lt!456377))))))

(assert (=> d!392692 (= lt!456518 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))) (value!78232 (_1!7641 (get!4350 lt!456377)))))))

(assert (=> d!392692 (= (charsOf!1379 (_1!7641 (get!4350 lt!456377))) lt!456518)))

(declare-fun b_lambda!42277 () Bool)

(assert (=> (not b_lambda!42277) (not d!392692)))

(declare-fun tb!72393 () Bool)

(declare-fun t!121729 () Bool)

(assert (=> (and b!1373451 (= (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121729) tb!72393))

(declare-fun b!1374680 () Bool)

(declare-fun e!878573 () Bool)

(declare-fun tp!394289 () Bool)

(assert (=> b!1374680 (= e!878573 (and (inv!18263 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))) (value!78232 (_1!7641 (get!4350 lt!456377)))))) tp!394289))))

(declare-fun result!87906 () Bool)

(assert (=> tb!72393 (= result!87906 (and (inv!18264 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))) (value!78232 (_1!7641 (get!4350 lt!456377))))) e!878573))))

(assert (= tb!72393 b!1374680))

(declare-fun m!1546487 () Bool)

(assert (=> b!1374680 m!1546487))

(declare-fun m!1546489 () Bool)

(assert (=> tb!72393 m!1546489))

(assert (=> d!392692 t!121729))

(declare-fun b_and!92135 () Bool)

(assert (= b_and!92085 (and (=> t!121729 result!87906) b_and!92135)))

(declare-fun tb!72395 () Bool)

(declare-fun t!121731 () Bool)

(assert (=> (and b!1373449 (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121731) tb!72395))

(declare-fun result!87908 () Bool)

(assert (= result!87908 result!87906))

(assert (=> d!392692 t!121731))

(declare-fun b_and!92137 () Bool)

(assert (= b_and!92087 (and (=> t!121731 result!87908) b_and!92137)))

(declare-fun t!121733 () Bool)

(declare-fun tb!72397 () Bool)

(assert (=> (and b!1373465 (= (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121733) tb!72397))

(declare-fun result!87910 () Bool)

(assert (= result!87910 result!87906))

(assert (=> d!392692 t!121733))

(declare-fun b_and!92139 () Bool)

(assert (= b_and!92089 (and (=> t!121733 result!87910) b_and!92139)))

(declare-fun tb!72399 () Bool)

(declare-fun t!121735 () Bool)

(assert (=> (and b!1374224 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121735) tb!72399))

(declare-fun result!87912 () Bool)

(assert (= result!87912 result!87906))

(assert (=> d!392692 t!121735))

(declare-fun b_and!92141 () Bool)

(assert (= b_and!92093 (and (=> t!121735 result!87912) b_and!92141)))

(declare-fun m!1546491 () Bool)

(assert (=> d!392692 m!1546491))

(declare-fun m!1546493 () Bool)

(assert (=> d!392692 m!1546493))

(assert (=> b!1374123 d!392692))

(assert (=> b!1374123 d!392640))

(declare-fun bs!336120 () Bool)

(declare-fun d!392698 () Bool)

(assert (= bs!336120 (and d!392698 d!392632)))

(declare-fun lambda!58461 () Int)

(assert (=> bs!336120 (= (and (= (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toChars!3537 (transformation!2407 (rule!4164 t1!34)))) (= (toValue!3678 (transformation!2407 (rule!4164 t2!34))) (toValue!3678 (transformation!2407 (rule!4164 t1!34))))) (= lambda!58461 lambda!58451))))

(assert (=> d!392698 true))

(assert (=> d!392698 (< (dynLambda!6345 order!8507 (toChars!3537 (transformation!2407 (rule!4164 t2!34)))) (dynLambda!6346 order!8509 lambda!58461))))

(assert (=> d!392698 true))

(assert (=> d!392698 (< (dynLambda!6347 order!8511 (toValue!3678 (transformation!2407 (rule!4164 t2!34)))) (dynLambda!6346 order!8509 lambda!58461))))

(assert (=> d!392698 (= (semiInverseModEq!930 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toValue!3678 (transformation!2407 (rule!4164 t2!34)))) (Forall!540 lambda!58461))))

(declare-fun bs!336121 () Bool)

(assert (= bs!336121 d!392698))

(declare-fun m!1546505 () Bool)

(assert (=> bs!336121 m!1546505))

(assert (=> d!392228 d!392698))

(declare-fun d!392700 () Bool)

(declare-fun c!226330 () Bool)

(assert (=> d!392700 (= c!226330 ((_ is Empty!4577) (c!226062 (_1!7640 lt!456131))))))

(declare-fun e!878597 () List!13970)

(assert (=> d!392700 (= (list!5367 (c!226062 (_1!7640 lt!456131))) e!878597)))

(declare-fun b!1374729 () Bool)

(declare-fun e!878598 () List!13970)

(declare-fun list!5370 (IArray!9159) List!13970)

(assert (=> b!1374729 (= e!878598 (list!5370 (xs!7304 (c!226062 (_1!7640 lt!456131)))))))

(declare-fun b!1374728 () Bool)

(assert (=> b!1374728 (= e!878597 e!878598)))

(declare-fun c!226331 () Bool)

(assert (=> b!1374728 (= c!226331 ((_ is Leaf!6977) (c!226062 (_1!7640 lt!456131))))))

(declare-fun b!1374730 () Bool)

(declare-fun ++!3601 (List!13970 List!13970) List!13970)

(assert (=> b!1374730 (= e!878598 (++!3601 (list!5367 (left!11894 (c!226062 (_1!7640 lt!456131)))) (list!5367 (right!12224 (c!226062 (_1!7640 lt!456131))))))))

(declare-fun b!1374727 () Bool)

(assert (=> b!1374727 (= e!878597 Nil!13904)))

(assert (= (and d!392700 c!226330) b!1374727))

(assert (= (and d!392700 (not c!226330)) b!1374728))

(assert (= (and b!1374728 c!226331) b!1374729))

(assert (= (and b!1374728 (not c!226331)) b!1374730))

(declare-fun m!1546529 () Bool)

(assert (=> b!1374729 m!1546529))

(declare-fun m!1546531 () Bool)

(assert (=> b!1374730 m!1546531))

(declare-fun m!1546535 () Bool)

(assert (=> b!1374730 m!1546535))

(assert (=> b!1374730 m!1546531))

(assert (=> b!1374730 m!1546535))

(declare-fun m!1546539 () Bool)

(assert (=> b!1374730 m!1546539))

(assert (=> d!392420 d!392700))

(declare-fun d!392718 () Bool)

(assert (=> d!392718 (dynLambda!6334 lambda!58381 (rule!4164 t1!34))))

(assert (=> d!392718 true))

(declare-fun _$7!731 () Unit!20133)

(assert (=> d!392718 (= (choose!8458 rules!2550 lambda!58381 (rule!4164 t1!34)) _$7!731)))

(declare-fun b_lambda!42279 () Bool)

(assert (=> (not b_lambda!42279) (not d!392718)))

(declare-fun bs!336125 () Bool)

(assert (= bs!336125 d!392718))

(assert (=> bs!336125 m!1545785))

(assert (=> d!392408 d!392718))

(assert (=> d!392408 d!392628))

(declare-fun d!392720 () Bool)

(assert (=> d!392720 (= (list!5363 (_1!7640 lt!456282)) (list!5367 (c!226062 (_1!7640 lt!456282))))))

(declare-fun bs!336126 () Bool)

(assert (= bs!336126 d!392720))

(declare-fun m!1546545 () Bool)

(assert (=> bs!336126 m!1546545))

(assert (=> b!1373869 d!392720))

(assert (=> b!1373869 d!392432))

(assert (=> b!1373869 d!392434))

(declare-fun d!392724 () Bool)

(declare-fun res!619447 () Bool)

(declare-fun e!878603 () Bool)

(assert (=> d!392724 (=> (not res!619447) (not e!878603))))

(assert (=> d!392724 (= res!619447 (validRegex!1621 (regex!2407 (rule!4164 t2!34))))))

(assert (=> d!392724 (= (ruleValid!594 thiss!19762 (rule!4164 t2!34)) e!878603)))

(declare-fun b!1374737 () Bool)

(declare-fun res!619448 () Bool)

(assert (=> b!1374737 (=> (not res!619448) (not e!878603))))

(assert (=> b!1374737 (= res!619448 (not (nullable!1201 (regex!2407 (rule!4164 t2!34)))))))

(declare-fun b!1374738 () Bool)

(assert (=> b!1374738 (= e!878603 (not (= (tag!2669 (rule!4164 t2!34)) (String!16722 ""))))))

(assert (= (and d!392724 res!619447) b!1374737))

(assert (= (and b!1374737 res!619448) b!1374738))

(assert (=> d!392724 m!1545717))

(assert (=> b!1374737 m!1545725))

(assert (=> bs!336034 d!392724))

(declare-fun b!1374741 () Bool)

(declare-fun res!619453 () Bool)

(declare-fun e!878610 () Bool)

(assert (=> b!1374741 (=> (not res!619453) (not e!878610))))

(declare-fun call!92258 () Bool)

(assert (=> b!1374741 (= res!619453 (not call!92258))))

(declare-fun b!1374742 () Bool)

(declare-fun e!878609 () Bool)

(assert (=> b!1374742 (= e!878609 (not (= (head!2475 lt!456122) (c!226061 lt!456361))))))

(declare-fun b!1374743 () Bool)

(declare-fun e!878606 () Bool)

(declare-fun lt!456524 () Bool)

(assert (=> b!1374743 (= e!878606 (not lt!456524))))

(declare-fun b!1374744 () Bool)

(declare-fun res!619458 () Bool)

(assert (=> b!1374744 (=> res!619458 e!878609)))

(assert (=> b!1374744 (= res!619458 (not (isEmpty!8392 (tail!1987 lt!456122))))))

(declare-fun b!1374745 () Bool)

(declare-fun e!878608 () Bool)

(assert (=> b!1374745 (= e!878608 (nullable!1201 lt!456361))))

(declare-fun b!1374746 () Bool)

(assert (=> b!1374746 (= e!878608 (matchR!1714 (derivativeStep!958 lt!456361 (head!2475 lt!456122)) (tail!1987 lt!456122)))))

(declare-fun b!1374747 () Bool)

(declare-fun e!878614 () Bool)

(assert (=> b!1374747 (= e!878614 e!878606)))

(declare-fun c!226332 () Bool)

(assert (=> b!1374747 (= c!226332 ((_ is EmptyLang!3721) lt!456361))))

(declare-fun b!1374748 () Bool)

(assert (=> b!1374748 (= e!878614 (= lt!456524 call!92258))))

(declare-fun bm!92253 () Bool)

(assert (=> bm!92253 (= call!92258 (isEmpty!8392 lt!456122))))

(declare-fun b!1374751 () Bool)

(assert (=> b!1374751 (= e!878610 (= (head!2475 lt!456122) (c!226061 lt!456361)))))

(declare-fun b!1374752 () Bool)

(declare-fun res!619459 () Bool)

(assert (=> b!1374752 (=> (not res!619459) (not e!878610))))

(assert (=> b!1374752 (= res!619459 (isEmpty!8392 (tail!1987 lt!456122)))))

(declare-fun b!1374753 () Bool)

(declare-fun res!619460 () Bool)

(declare-fun e!878607 () Bool)

(assert (=> b!1374753 (=> res!619460 e!878607)))

(assert (=> b!1374753 (= res!619460 e!878610)))

(declare-fun res!619451 () Bool)

(assert (=> b!1374753 (=> (not res!619451) (not e!878610))))

(assert (=> b!1374753 (= res!619451 lt!456524)))

(declare-fun d!392728 () Bool)

(assert (=> d!392728 e!878614))

(declare-fun c!226333 () Bool)

(assert (=> d!392728 (= c!226333 ((_ is EmptyExpr!3721) lt!456361))))

(assert (=> d!392728 (= lt!456524 e!878608)))

(declare-fun c!226334 () Bool)

(assert (=> d!392728 (= c!226334 (isEmpty!8392 lt!456122))))

(assert (=> d!392728 (validRegex!1621 lt!456361)))

(assert (=> d!392728 (= (matchR!1714 lt!456361 lt!456122) lt!456524)))

(declare-fun b!1374754 () Bool)

(declare-fun res!619454 () Bool)

(assert (=> b!1374754 (=> res!619454 e!878607)))

(assert (=> b!1374754 (= res!619454 (not ((_ is ElementMatch!3721) lt!456361)))))

(assert (=> b!1374754 (= e!878606 e!878607)))

(declare-fun b!1374755 () Bool)

(declare-fun e!878613 () Bool)

(assert (=> b!1374755 (= e!878607 e!878613)))

(declare-fun res!619455 () Bool)

(assert (=> b!1374755 (=> (not res!619455) (not e!878613))))

(assert (=> b!1374755 (= res!619455 (not lt!456524))))

(declare-fun b!1374756 () Bool)

(assert (=> b!1374756 (= e!878613 e!878609)))

(declare-fun res!619452 () Bool)

(assert (=> b!1374756 (=> res!619452 e!878609)))

(assert (=> b!1374756 (= res!619452 call!92258)))

(assert (= (and d!392728 c!226334) b!1374745))

(assert (= (and d!392728 (not c!226334)) b!1374746))

(assert (= (and d!392728 c!226333) b!1374748))

(assert (= (and d!392728 (not c!226333)) b!1374747))

(assert (= (and b!1374747 c!226332) b!1374743))

(assert (= (and b!1374747 (not c!226332)) b!1374754))

(assert (= (and b!1374754 (not res!619454)) b!1374753))

(assert (= (and b!1374753 res!619451) b!1374741))

(assert (= (and b!1374741 res!619453) b!1374752))

(assert (= (and b!1374752 res!619459) b!1374751))

(assert (= (and b!1374753 (not res!619460)) b!1374755))

(assert (= (and b!1374755 res!619455) b!1374756))

(assert (= (and b!1374756 (not res!619452)) b!1374744))

(assert (= (and b!1374744 (not res!619458)) b!1374742))

(assert (= (or b!1374748 b!1374741 b!1374756) bm!92253))

(assert (=> d!392728 m!1545027))

(assert (=> d!392728 m!1545917))

(assert (=> b!1374744 m!1545031))

(assert (=> b!1374744 m!1545031))

(assert (=> b!1374744 m!1545033))

(assert (=> b!1374742 m!1545035))

(assert (=> b!1374752 m!1545031))

(assert (=> b!1374752 m!1545031))

(assert (=> b!1374752 m!1545033))

(assert (=> b!1374751 m!1545035))

(declare-fun m!1546547 () Bool)

(assert (=> b!1374745 m!1546547))

(assert (=> b!1374746 m!1545035))

(assert (=> b!1374746 m!1545035))

(declare-fun m!1546549 () Bool)

(assert (=> b!1374746 m!1546549))

(assert (=> b!1374746 m!1545031))

(assert (=> b!1374746 m!1546549))

(assert (=> b!1374746 m!1545031))

(declare-fun m!1546551 () Bool)

(assert (=> b!1374746 m!1546551))

(assert (=> bm!92253 m!1545027))

(assert (=> b!1374230 d!392728))

(declare-fun d!392730 () Bool)

(assert (=> d!392730 true))

(declare-fun order!8513 () Int)

(declare-fun lambda!58464 () Int)

(declare-fun dynLambda!6350 (Int Int) Int)

(assert (=> d!392730 (< (dynLambda!6347 order!8511 (toValue!3678 (transformation!2407 (rule!4164 t1!34)))) (dynLambda!6350 order!8513 lambda!58464))))

(declare-fun Forall2!443 (Int) Bool)

(assert (=> d!392730 (= (equivClasses!889 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toValue!3678 (transformation!2407 (rule!4164 t1!34)))) (Forall2!443 lambda!58464))))

(declare-fun bs!336129 () Bool)

(assert (= bs!336129 d!392730))

(declare-fun m!1546561 () Bool)

(assert (=> bs!336129 m!1546561))

(assert (=> b!1373746 d!392730))

(declare-fun d!392738 () Bool)

(assert (=> d!392738 (= (isEmpty!8399 lt!456377) (not ((_ is Some!2671) lt!456377)))))

(assert (=> d!392402 d!392738))

(declare-fun d!392740 () Bool)

(declare-fun e!878633 () Bool)

(assert (=> d!392740 e!878633))

(declare-fun res!619477 () Bool)

(assert (=> d!392740 (=> res!619477 e!878633)))

(declare-fun lt!456533 () Bool)

(assert (=> d!392740 (= res!619477 (not lt!456533))))

(declare-fun e!878631 () Bool)

(assert (=> d!392740 (= lt!456533 e!878631)))

(declare-fun res!619478 () Bool)

(assert (=> d!392740 (=> res!619478 e!878631)))

(assert (=> d!392740 (= res!619478 ((_ is Nil!13903) lt!456128))))

(assert (=> d!392740 (= (isPrefix!1131 lt!456128 lt!456128) lt!456533)))

(declare-fun b!1374780 () Bool)

(declare-fun e!878632 () Bool)

(assert (=> b!1374780 (= e!878631 e!878632)))

(declare-fun res!619476 () Bool)

(assert (=> b!1374780 (=> (not res!619476) (not e!878632))))

(assert (=> b!1374780 (= res!619476 (not ((_ is Nil!13903) lt!456128)))))

(declare-fun b!1374783 () Bool)

(assert (=> b!1374783 (= e!878633 (>= (size!11415 lt!456128) (size!11415 lt!456128)))))

(declare-fun b!1374782 () Bool)

(assert (=> b!1374782 (= e!878632 (isPrefix!1131 (tail!1987 lt!456128) (tail!1987 lt!456128)))))

(declare-fun b!1374781 () Bool)

(declare-fun res!619479 () Bool)

(assert (=> b!1374781 (=> (not res!619479) (not e!878632))))

(assert (=> b!1374781 (= res!619479 (= (head!2475 lt!456128) (head!2475 lt!456128)))))

(assert (= (and d!392740 (not res!619478)) b!1374780))

(assert (= (and b!1374780 res!619476) b!1374781))

(assert (= (and b!1374781 res!619479) b!1374782))

(assert (= (and d!392740 (not res!619477)) b!1374783))

(assert (=> b!1374783 m!1544933))

(assert (=> b!1374783 m!1544933))

(assert (=> b!1374782 m!1545767))

(assert (=> b!1374782 m!1545767))

(assert (=> b!1374782 m!1545767))

(assert (=> b!1374782 m!1545767))

(declare-fun m!1546571 () Bool)

(assert (=> b!1374782 m!1546571))

(assert (=> b!1374781 m!1545771))

(assert (=> b!1374781 m!1545771))

(assert (=> d!392402 d!392740))

(declare-fun d!392744 () Bool)

(assert (=> d!392744 (isPrefix!1131 lt!456128 lt!456128)))

(declare-fun lt!456536 () Unit!20133)

(declare-fun choose!8462 (List!13969 List!13969) Unit!20133)

(assert (=> d!392744 (= lt!456536 (choose!8462 lt!456128 lt!456128))))

(assert (=> d!392744 (= (lemmaIsPrefixRefl!793 lt!456128 lt!456128) lt!456536)))

(declare-fun bs!336130 () Bool)

(assert (= bs!336130 d!392744))

(assert (=> bs!336130 m!1545755))

(declare-fun m!1546573 () Bool)

(assert (=> bs!336130 m!1546573))

(assert (=> d!392402 d!392744))

(declare-fun bs!336131 () Bool)

(declare-fun d!392746 () Bool)

(assert (= bs!336131 (and d!392746 b!1373444)))

(declare-fun lambda!58467 () Int)

(assert (=> bs!336131 (not (= lambda!58467 lambda!58380))))

(declare-fun bs!336132 () Bool)

(assert (= bs!336132 (and d!392746 b!1373448)))

(assert (=> bs!336132 (= lambda!58467 lambda!58381)))

(declare-fun bs!336133 () Bool)

(assert (= bs!336133 (and d!392746 d!392338)))

(assert (=> bs!336133 (not (= lambda!58467 lambda!58419))))

(declare-fun bs!336134 () Bool)

(assert (= bs!336134 (and d!392746 d!392344)))

(assert (=> bs!336134 (not (= lambda!58467 lambda!58422))))

(assert (=> d!392746 true))

(declare-fun lt!456543 () Bool)

(assert (=> d!392746 (= lt!456543 (forall!3401 rules!2550 lambda!58467))))

(declare-fun e!878647 () Bool)

(assert (=> d!392746 (= lt!456543 e!878647)))

(declare-fun res!619487 () Bool)

(assert (=> d!392746 (=> res!619487 e!878647)))

(assert (=> d!392746 (= res!619487 (not ((_ is Cons!13905) rules!2550)))))

(assert (=> d!392746 (= (rulesValidInductive!772 thiss!19762 rules!2550) lt!456543)))

(declare-fun b!1374802 () Bool)

(declare-fun e!878646 () Bool)

(assert (=> b!1374802 (= e!878647 e!878646)))

(declare-fun res!619486 () Bool)

(assert (=> b!1374802 (=> (not res!619486) (not e!878646))))

(assert (=> b!1374802 (= res!619486 (ruleValid!594 thiss!19762 (h!19306 rules!2550)))))

(declare-fun b!1374803 () Bool)

(assert (=> b!1374803 (= e!878646 (rulesValidInductive!772 thiss!19762 (t!121642 rules!2550)))))

(assert (= (and d!392746 (not res!619487)) b!1374802))

(assert (= (and b!1374802 res!619486) b!1374803))

(declare-fun m!1546575 () Bool)

(assert (=> d!392746 m!1546575))

(declare-fun m!1546577 () Bool)

(assert (=> b!1374802 m!1546577))

(declare-fun m!1546579 () Bool)

(assert (=> b!1374803 m!1546579))

(assert (=> d!392402 d!392746))

(declare-fun d!392748 () Bool)

(assert (=> d!392748 (= (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400)))) (list!5366 (c!226060 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))))))

(declare-fun bs!336135 () Bool)

(assert (= bs!336135 d!392748))

(declare-fun m!1546581 () Bool)

(assert (=> bs!336135 m!1546581))

(assert (=> b!1374181 d!392748))

(declare-fun d!392750 () Bool)

(declare-fun lt!456544 () BalanceConc!9092)

(assert (=> d!392750 (= (list!5362 lt!456544) (originalCharacters!3269 (_1!7641 (get!4350 lt!456400))))))

(assert (=> d!392750 (= lt!456544 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))) (value!78232 (_1!7641 (get!4350 lt!456400)))))))

(assert (=> d!392750 (= (charsOf!1379 (_1!7641 (get!4350 lt!456400))) lt!456544)))

(declare-fun b_lambda!42281 () Bool)

(assert (=> (not b_lambda!42281) (not d!392750)))

(declare-fun tb!72401 () Bool)

(declare-fun t!121739 () Bool)

(assert (=> (and b!1373451 (= (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121739) tb!72401))

(declare-fun b!1374804 () Bool)

(declare-fun e!878648 () Bool)

(declare-fun tp!394290 () Bool)

(assert (=> b!1374804 (= e!878648 (and (inv!18263 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))) (value!78232 (_1!7641 (get!4350 lt!456400)))))) tp!394290))))

(declare-fun result!87914 () Bool)

(assert (=> tb!72401 (= result!87914 (and (inv!18264 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))) (value!78232 (_1!7641 (get!4350 lt!456400))))) e!878648))))

(assert (= tb!72401 b!1374804))

(declare-fun m!1546583 () Bool)

(assert (=> b!1374804 m!1546583))

(declare-fun m!1546585 () Bool)

(assert (=> tb!72401 m!1546585))

(assert (=> d!392750 t!121739))

(declare-fun b_and!92143 () Bool)

(assert (= b_and!92135 (and (=> t!121739 result!87914) b_and!92143)))

(declare-fun t!121741 () Bool)

(declare-fun tb!72403 () Bool)

(assert (=> (and b!1373449 (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121741) tb!72403))

(declare-fun result!87916 () Bool)

(assert (= result!87916 result!87914))

(assert (=> d!392750 t!121741))

(declare-fun b_and!92145 () Bool)

(assert (= b_and!92137 (and (=> t!121741 result!87916) b_and!92145)))

(declare-fun tb!72405 () Bool)

(declare-fun t!121743 () Bool)

(assert (=> (and b!1373465 (= (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121743) tb!72405))

(declare-fun result!87918 () Bool)

(assert (= result!87918 result!87914))

(assert (=> d!392750 t!121743))

(declare-fun b_and!92147 () Bool)

(assert (= b_and!92139 (and (=> t!121743 result!87918) b_and!92147)))

(declare-fun t!121745 () Bool)

(declare-fun tb!72407 () Bool)

(assert (=> (and b!1374224 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121745) tb!72407))

(declare-fun result!87920 () Bool)

(assert (= result!87920 result!87914))

(assert (=> d!392750 t!121745))

(declare-fun b_and!92149 () Bool)

(assert (= b_and!92141 (and (=> t!121745 result!87920) b_and!92149)))

(declare-fun m!1546587 () Bool)

(assert (=> d!392750 m!1546587))

(declare-fun m!1546589 () Bool)

(assert (=> d!392750 m!1546589))

(assert (=> b!1374181 d!392750))

(assert (=> b!1374181 d!392660))

(declare-fun bs!336136 () Bool)

(declare-fun d!392752 () Bool)

(assert (= bs!336136 (and d!392752 b!1373448)))

(declare-fun lambda!58468 () Int)

(assert (=> bs!336136 (not (= lambda!58468 lambda!58381))))

(declare-fun bs!336137 () Bool)

(assert (= bs!336137 (and d!392752 d!392746)))

(assert (=> bs!336137 (not (= lambda!58468 lambda!58467))))

(declare-fun bs!336138 () Bool)

(assert (= bs!336138 (and d!392752 d!392344)))

(assert (=> bs!336138 (not (= lambda!58468 lambda!58422))))

(declare-fun bs!336139 () Bool)

(assert (= bs!336139 (and d!392752 d!392338)))

(assert (=> bs!336139 (= (= lambda!58422 lambda!58380) (= lambda!58468 lambda!58419))))

(declare-fun bs!336140 () Bool)

(assert (= bs!336140 (and d!392752 b!1373444)))

(assert (=> bs!336140 (not (= lambda!58468 lambda!58380))))

(assert (=> d!392752 true))

(assert (=> d!392752 (< (dynLambda!6338 order!8499 lambda!58422) (dynLambda!6338 order!8499 lambda!58468))))

(assert (=> d!392752 (= (exists!472 rules!2550 lambda!58422) (not (forall!3401 rules!2550 lambda!58468)))))

(declare-fun bs!336141 () Bool)

(assert (= bs!336141 d!392752))

(declare-fun m!1546595 () Bool)

(assert (=> bs!336141 m!1546595))

(assert (=> d!392344 d!392752))

(declare-fun bs!336149 () Bool)

(declare-fun d!392754 () Bool)

(assert (= bs!336149 (and d!392754 b!1373448)))

(declare-fun lambda!58472 () Int)

(assert (=> bs!336149 (not (= lambda!58472 lambda!58381))))

(declare-fun bs!336150 () Bool)

(assert (= bs!336150 (and d!392754 d!392746)))

(assert (=> bs!336150 (not (= lambda!58472 lambda!58467))))

(declare-fun bs!336151 () Bool)

(assert (= bs!336151 (and d!392754 d!392752)))

(assert (=> bs!336151 (not (= lambda!58472 lambda!58468))))

(declare-fun bs!336152 () Bool)

(assert (= bs!336152 (and d!392754 d!392344)))

(assert (=> bs!336152 (= lambda!58472 lambda!58422)))

(declare-fun bs!336153 () Bool)

(assert (= bs!336153 (and d!392754 d!392338)))

(assert (=> bs!336153 (not (= lambda!58472 lambda!58419))))

(declare-fun bs!336154 () Bool)

(assert (= bs!336154 (and d!392754 b!1373444)))

(assert (=> bs!336154 (not (= lambda!58472 lambda!58380))))

(assert (=> d!392754 true))

(assert (=> d!392754 true))

(assert (=> d!392754 (< (dynLambda!6340 order!8501 lambda!58378) (dynLambda!6338 order!8499 lambda!58472))))

(assert (=> d!392754 (exists!472 rules!2550 lambda!58472)))

(assert (=> d!392754 true))

(declare-fun _$24!118 () Unit!20133)

(assert (=> d!392754 (= (choose!8453 rules!2550 lambda!58378 lt!456134) _$24!118)))

(declare-fun bs!336155 () Bool)

(assert (= bs!336155 d!392754))

(declare-fun m!1546605 () Bool)

(assert (=> bs!336155 m!1546605))

(assert (=> d!392344 d!392754))

(assert (=> d!392344 d!392376))

(assert (=> d!392344 d!392300))

(declare-fun d!392760 () Bool)

(declare-fun lt!456549 () Int)

(assert (=> d!392760 (= lt!456549 (size!11420 (list!5363 (_1!7640 lt!456282))))))

(declare-fun size!11423 (Conc!4577) Int)

(assert (=> d!392760 (= lt!456549 (size!11423 (c!226062 (_1!7640 lt!456282))))))

(assert (=> d!392760 (= (size!11416 (_1!7640 lt!456282)) lt!456549)))

(declare-fun bs!336156 () Bool)

(assert (= bs!336156 d!392760))

(assert (=> bs!336156 m!1545387))

(assert (=> bs!336156 m!1545387))

(declare-fun m!1546607 () Bool)

(assert (=> bs!336156 m!1546607))

(declare-fun m!1546609 () Bool)

(assert (=> bs!336156 m!1546609))

(assert (=> d!392240 d!392760))

(declare-fun lt!456689 () tuple2!13508)

(declare-datatypes ((tuple2!13514 0))(
  ( (tuple2!13515 (_1!7643 Token!4476) (_2!7643 BalanceConc!9092)) )
))
(declare-datatypes ((Option!2673 0))(
  ( (None!2672) (Some!2672 (v!21502 tuple2!13514)) )
))
(declare-fun lt!456707 () Option!2673)

(declare-fun b!1375045 () Bool)

(declare-fun lexRec!282 (LexerInterface!2102 List!13971 BalanceConc!9092) tuple2!13508)

(assert (=> b!1375045 (= lt!456689 (lexRec!282 thiss!19762 rules!2550 (_2!7643 (v!21502 lt!456707))))))

(declare-fun e!878784 () tuple2!13508)

(declare-fun prepend!371 (BalanceConc!9094 Token!4476) BalanceConc!9094)

(assert (=> b!1375045 (= e!878784 (tuple2!13509 (prepend!371 (_1!7640 lt!456689) (_1!7643 (v!21502 lt!456707))) (_2!7640 lt!456689)))))

(declare-fun b!1375046 () Bool)

(declare-fun e!878783 () tuple2!13508)

(assert (=> b!1375046 (= e!878783 (tuple2!13509 (BalanceConc!9095 Empty!4577) lt!456124))))

(declare-fun lt!456704 () tuple2!13508)

(declare-fun b!1375047 () Bool)

(declare-fun lt!456679 () Option!2673)

(assert (=> b!1375047 (= lt!456704 (lexRec!282 thiss!19762 rules!2550 (_2!7643 (v!21502 lt!456679))))))

(declare-fun e!878782 () tuple2!13508)

(assert (=> b!1375047 (= e!878782 (tuple2!13509 (prepend!371 (_1!7640 lt!456704) (_1!7643 (v!21502 lt!456679))) (_2!7640 lt!456704)))))

(declare-fun d!392762 () Bool)

(declare-fun e!878785 () Bool)

(assert (=> d!392762 e!878785))

(declare-fun res!619596 () Bool)

(assert (=> d!392762 (=> (not res!619596) (not e!878785))))

(declare-fun lt!456705 () tuple2!13508)

(assert (=> d!392762 (= res!619596 (= (list!5363 (_1!7640 lt!456705)) (list!5363 (_1!7640 (lexRec!282 thiss!19762 rules!2550 lt!456124)))))))

(assert (=> d!392762 (= lt!456705 e!878783)))

(declare-fun c!226407 () Bool)

(declare-fun lt!456702 () Option!2673)

(assert (=> d!392762 (= c!226407 ((_ is Some!2672) lt!456702))))

(declare-fun maxPrefixZipperSequenceV2!227 (LexerInterface!2102 List!13971 BalanceConc!9092 BalanceConc!9092) Option!2673)

(assert (=> d!392762 (= lt!456702 (maxPrefixZipperSequenceV2!227 thiss!19762 rules!2550 lt!456124 lt!456124))))

(declare-fun lt!456700 () Unit!20133)

(declare-fun lt!456680 () Unit!20133)

(assert (=> d!392762 (= lt!456700 lt!456680)))

(declare-fun lt!456709 () List!13969)

(declare-fun lt!456708 () List!13969)

(declare-fun isSuffix!260 (List!13969 List!13969) Bool)

(assert (=> d!392762 (isSuffix!260 lt!456709 (++!3598 lt!456708 lt!456709))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!238 (List!13969 List!13969) Unit!20133)

(assert (=> d!392762 (= lt!456680 (lemmaConcatTwoListThenFSndIsSuffix!238 lt!456708 lt!456709))))

(assert (=> d!392762 (= lt!456709 (list!5362 lt!456124))))

(assert (=> d!392762 (= lt!456708 (list!5362 (BalanceConc!9093 Empty!4576)))))

(assert (=> d!392762 (= (lexTailRecV2!415 thiss!19762 rules!2550 lt!456124 (BalanceConc!9093 Empty!4576) lt!456124 (BalanceConc!9095 Empty!4577)) lt!456705)))

(declare-fun b!1375048 () Bool)

(declare-fun lt!456695 () BalanceConc!9092)

(declare-fun append!407 (BalanceConc!9094 Token!4476) BalanceConc!9094)

(assert (=> b!1375048 (= e!878783 (lexTailRecV2!415 thiss!19762 rules!2550 lt!456124 lt!456695 (_2!7643 (v!21502 lt!456702)) (append!407 (BalanceConc!9095 Empty!4577) (_1!7643 (v!21502 lt!456702)))))))

(declare-fun lt!456703 () tuple2!13508)

(assert (=> b!1375048 (= lt!456703 (lexRec!282 thiss!19762 rules!2550 (_2!7643 (v!21502 lt!456702))))))

(declare-fun lt!456683 () List!13969)

(assert (=> b!1375048 (= lt!456683 (list!5362 (BalanceConc!9093 Empty!4576)))))

(declare-fun lt!456693 () List!13969)

(assert (=> b!1375048 (= lt!456693 (list!5362 (charsOf!1379 (_1!7643 (v!21502 lt!456702)))))))

(declare-fun lt!456687 () List!13969)

(assert (=> b!1375048 (= lt!456687 (list!5362 (_2!7643 (v!21502 lt!456702))))))

(declare-fun lt!456711 () Unit!20133)

(declare-fun lemmaConcatAssociativity!863 (List!13969 List!13969 List!13969) Unit!20133)

(assert (=> b!1375048 (= lt!456711 (lemmaConcatAssociativity!863 lt!456683 lt!456693 lt!456687))))

(assert (=> b!1375048 (= (++!3598 (++!3598 lt!456683 lt!456693) lt!456687) (++!3598 lt!456683 (++!3598 lt!456693 lt!456687)))))

(declare-fun lt!456692 () Unit!20133)

(assert (=> b!1375048 (= lt!456692 lt!456711)))

(declare-fun maxPrefixZipperSequence!555 (LexerInterface!2102 List!13971 BalanceConc!9092) Option!2673)

(assert (=> b!1375048 (= lt!456679 (maxPrefixZipperSequence!555 thiss!19762 rules!2550 lt!456124))))

(declare-fun c!226408 () Bool)

(assert (=> b!1375048 (= c!226408 ((_ is Some!2672) lt!456679))))

(assert (=> b!1375048 (= (lexRec!282 thiss!19762 rules!2550 lt!456124) e!878782)))

(declare-fun lt!456685 () Unit!20133)

(declare-fun Unit!20144 () Unit!20133)

(assert (=> b!1375048 (= lt!456685 Unit!20144)))

(declare-fun lt!456690 () List!13970)

(assert (=> b!1375048 (= lt!456690 (list!5363 (BalanceConc!9095 Empty!4577)))))

(declare-fun lt!456710 () List!13970)

(assert (=> b!1375048 (= lt!456710 (Cons!13904 (_1!7643 (v!21502 lt!456702)) Nil!13904))))

(declare-fun lt!456694 () List!13970)

(assert (=> b!1375048 (= lt!456694 (list!5363 (_1!7640 lt!456703)))))

(declare-fun lt!456686 () Unit!20133)

(declare-fun lemmaConcatAssociativity!864 (List!13970 List!13970 List!13970) Unit!20133)

(assert (=> b!1375048 (= lt!456686 (lemmaConcatAssociativity!864 lt!456690 lt!456710 lt!456694))))

(assert (=> b!1375048 (= (++!3601 (++!3601 lt!456690 lt!456710) lt!456694) (++!3601 lt!456690 (++!3601 lt!456710 lt!456694)))))

(declare-fun lt!456681 () Unit!20133)

(assert (=> b!1375048 (= lt!456681 lt!456686)))

(declare-fun lt!456697 () List!13969)

(assert (=> b!1375048 (= lt!456697 (++!3598 (list!5362 (BalanceConc!9093 Empty!4576)) (list!5362 (charsOf!1379 (_1!7643 (v!21502 lt!456702))))))))

(declare-fun lt!456699 () List!13969)

(assert (=> b!1375048 (= lt!456699 (list!5362 (_2!7643 (v!21502 lt!456702))))))

(declare-fun lt!456682 () List!13970)

(assert (=> b!1375048 (= lt!456682 (list!5363 (append!407 (BalanceConc!9095 Empty!4577) (_1!7643 (v!21502 lt!456702)))))))

(declare-fun lt!456678 () Unit!20133)

(declare-fun lemmaLexThenLexPrefix!197 (LexerInterface!2102 List!13971 List!13969 List!13969 List!13970 List!13970 List!13969) Unit!20133)

(assert (=> b!1375048 (= lt!456678 (lemmaLexThenLexPrefix!197 thiss!19762 rules!2550 lt!456697 lt!456699 lt!456682 (list!5363 (_1!7640 lt!456703)) (list!5362 (_2!7640 lt!456703))))))

(assert (=> b!1375048 (= (lexList!620 thiss!19762 rules!2550 lt!456697) (tuple2!13507 lt!456682 Nil!13903))))

(declare-fun lt!456696 () Unit!20133)

(assert (=> b!1375048 (= lt!456696 lt!456678)))

(declare-fun lt!456684 () BalanceConc!9092)

(assert (=> b!1375048 (= lt!456684 (++!3599 (BalanceConc!9093 Empty!4576) (charsOf!1379 (_1!7643 (v!21502 lt!456702)))))))

(assert (=> b!1375048 (= lt!456707 (maxPrefixZipperSequence!555 thiss!19762 rules!2550 lt!456684))))

(declare-fun c!226409 () Bool)

(assert (=> b!1375048 (= c!226409 ((_ is Some!2672) lt!456707))))

(assert (=> b!1375048 (= (lexRec!282 thiss!19762 rules!2550 (++!3599 (BalanceConc!9093 Empty!4576) (charsOf!1379 (_1!7643 (v!21502 lt!456702))))) e!878784)))

(declare-fun lt!456688 () Unit!20133)

(declare-fun Unit!20145 () Unit!20133)

(assert (=> b!1375048 (= lt!456688 Unit!20145)))

(assert (=> b!1375048 (= lt!456695 (++!3599 (BalanceConc!9093 Empty!4576) (charsOf!1379 (_1!7643 (v!21502 lt!456702)))))))

(declare-fun lt!456701 () List!13969)

(assert (=> b!1375048 (= lt!456701 (list!5362 lt!456695))))

(declare-fun lt!456698 () List!13969)

(assert (=> b!1375048 (= lt!456698 (list!5362 (_2!7643 (v!21502 lt!456702))))))

(declare-fun lt!456691 () Unit!20133)

(assert (=> b!1375048 (= lt!456691 (lemmaConcatTwoListThenFSndIsSuffix!238 lt!456701 lt!456698))))

(assert (=> b!1375048 (isSuffix!260 lt!456698 (++!3598 lt!456701 lt!456698))))

(declare-fun lt!456706 () Unit!20133)

(assert (=> b!1375048 (= lt!456706 lt!456691)))

(declare-fun b!1375049 () Bool)

(assert (=> b!1375049 (= e!878784 (tuple2!13509 (BalanceConc!9095 Empty!4577) lt!456684))))

(declare-fun b!1375050 () Bool)

(assert (=> b!1375050 (= e!878785 (= (list!5362 (_2!7640 lt!456705)) (list!5362 (_2!7640 (lexRec!282 thiss!19762 rules!2550 lt!456124)))))))

(declare-fun b!1375051 () Bool)

(assert (=> b!1375051 (= e!878782 (tuple2!13509 (BalanceConc!9095 Empty!4577) lt!456124))))

(assert (= (and d!392762 c!226407) b!1375048))

(assert (= (and d!392762 (not c!226407)) b!1375046))

(assert (= (and b!1375048 c!226408) b!1375047))

(assert (= (and b!1375048 (not c!226408)) b!1375051))

(assert (= (and b!1375048 c!226409) b!1375045))

(assert (= (and b!1375048 (not c!226409)) b!1375049))

(assert (= (and d!392762 res!619596) b!1375050))

(declare-fun m!1547011 () Bool)

(assert (=> b!1375050 m!1547011))

(declare-fun m!1547013 () Bool)

(assert (=> b!1375050 m!1547013))

(declare-fun m!1547015 () Bool)

(assert (=> b!1375050 m!1547015))

(declare-fun m!1547017 () Bool)

(assert (=> b!1375048 m!1547017))

(declare-fun m!1547019 () Bool)

(assert (=> b!1375048 m!1547019))

(declare-fun m!1547021 () Bool)

(assert (=> b!1375048 m!1547021))

(declare-fun m!1547023 () Bool)

(assert (=> b!1375048 m!1547023))

(declare-fun m!1547025 () Bool)

(assert (=> b!1375048 m!1547025))

(declare-fun m!1547027 () Bool)

(assert (=> b!1375048 m!1547027))

(assert (=> b!1375048 m!1547023))

(declare-fun m!1547029 () Bool)

(assert (=> b!1375048 m!1547029))

(declare-fun m!1547031 () Bool)

(assert (=> b!1375048 m!1547031))

(declare-fun m!1547033 () Bool)

(assert (=> b!1375048 m!1547033))

(assert (=> b!1375048 m!1547023))

(declare-fun m!1547035 () Bool)

(assert (=> b!1375048 m!1547035))

(declare-fun m!1547037 () Bool)

(assert (=> b!1375048 m!1547037))

(declare-fun m!1547039 () Bool)

(assert (=> b!1375048 m!1547039))

(declare-fun m!1547041 () Bool)

(assert (=> b!1375048 m!1547041))

(declare-fun m!1547043 () Bool)

(assert (=> b!1375048 m!1547043))

(declare-fun m!1547045 () Bool)

(assert (=> b!1375048 m!1547045))

(declare-fun m!1547047 () Bool)

(assert (=> b!1375048 m!1547047))

(declare-fun m!1547049 () Bool)

(assert (=> b!1375048 m!1547049))

(declare-fun m!1547051 () Bool)

(assert (=> b!1375048 m!1547051))

(declare-fun m!1547053 () Bool)

(assert (=> b!1375048 m!1547053))

(declare-fun m!1547055 () Bool)

(assert (=> b!1375048 m!1547055))

(assert (=> b!1375048 m!1547049))

(assert (=> b!1375048 m!1547041))

(declare-fun m!1547057 () Bool)

(assert (=> b!1375048 m!1547057))

(declare-fun m!1547059 () Bool)

(assert (=> b!1375048 m!1547059))

(declare-fun m!1547061 () Bool)

(assert (=> b!1375048 m!1547061))

(assert (=> b!1375048 m!1547061))

(assert (=> b!1375048 m!1547057))

(assert (=> b!1375048 m!1547019))

(declare-fun m!1547063 () Bool)

(assert (=> b!1375048 m!1547063))

(declare-fun m!1547065 () Bool)

(assert (=> b!1375048 m!1547065))

(declare-fun m!1547067 () Bool)

(assert (=> b!1375048 m!1547067))

(declare-fun m!1547069 () Bool)

(assert (=> b!1375048 m!1547069))

(declare-fun m!1547071 () Bool)

(assert (=> b!1375048 m!1547071))

(declare-fun m!1547073 () Bool)

(assert (=> b!1375048 m!1547073))

(assert (=> b!1375048 m!1547067))

(assert (=> b!1375048 m!1547061))

(assert (=> b!1375048 m!1547071))

(assert (=> b!1375048 m!1547063))

(assert (=> b!1375048 m!1547013))

(assert (=> b!1375048 m!1547021))

(declare-fun m!1547075 () Bool)

(assert (=> b!1375048 m!1547075))

(assert (=> b!1375048 m!1547043))

(declare-fun m!1547077 () Bool)

(assert (=> b!1375048 m!1547077))

(assert (=> b!1375048 m!1547017))

(declare-fun m!1547079 () Bool)

(assert (=> b!1375048 m!1547079))

(declare-fun m!1547081 () Bool)

(assert (=> b!1375047 m!1547081))

(declare-fun m!1547083 () Bool)

(assert (=> b!1375047 m!1547083))

(declare-fun m!1547085 () Bool)

(assert (=> d!392762 m!1547085))

(assert (=> d!392762 m!1544837))

(declare-fun m!1547087 () Bool)

(assert (=> d!392762 m!1547087))

(declare-fun m!1547089 () Bool)

(assert (=> d!392762 m!1547089))

(assert (=> d!392762 m!1547013))

(assert (=> d!392762 m!1547041))

(declare-fun m!1547091 () Bool)

(assert (=> d!392762 m!1547091))

(assert (=> d!392762 m!1547091))

(declare-fun m!1547093 () Bool)

(assert (=> d!392762 m!1547093))

(declare-fun m!1547095 () Bool)

(assert (=> d!392762 m!1547095))

(declare-fun m!1547097 () Bool)

(assert (=> b!1375045 m!1547097))

(declare-fun m!1547099 () Bool)

(assert (=> b!1375045 m!1547099))

(assert (=> d!392240 d!392762))

(declare-fun d!392928 () Bool)

(declare-fun isBalanced!1351 (Conc!4576) Bool)

(assert (=> d!392928 (= (inv!18264 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))) (isBalanced!1351 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))))))

(declare-fun bs!336192 () Bool)

(assert (= bs!336192 d!392928))

(declare-fun m!1547101 () Bool)

(assert (=> bs!336192 m!1547101))

(assert (=> tb!72343 d!392928))

(declare-fun d!392930 () Bool)

(declare-fun charsToBigInt!0 (List!13968 Int) Int)

(assert (=> d!392930 (= (inv!15 (value!78232 t2!34)) (= (charsToBigInt!0 (text!17928 (value!78232 t2!34)) 0) (value!78227 (value!78232 t2!34))))))

(declare-fun bs!336193 () Bool)

(assert (= bs!336193 d!392930))

(declare-fun m!1547103 () Bool)

(assert (=> bs!336193 m!1547103))

(assert (=> b!1373961 d!392930))

(declare-fun d!392932 () Bool)

(assert (=> d!392932 (= (head!2475 lt!456122) (h!19304 lt!456122))))

(assert (=> b!1373602 d!392932))

(declare-fun d!392934 () Bool)

(declare-fun lt!456712 () Bool)

(assert (=> d!392934 (= lt!456712 (select (content!2038 (t!121642 rules!2550)) (rule!4164 t2!34)))))

(declare-fun e!878786 () Bool)

(assert (=> d!392934 (= lt!456712 e!878786)))

(declare-fun res!619597 () Bool)

(assert (=> d!392934 (=> (not res!619597) (not e!878786))))

(assert (=> d!392934 (= res!619597 ((_ is Cons!13905) (t!121642 rules!2550)))))

(assert (=> d!392934 (= (contains!2608 (t!121642 rules!2550) (rule!4164 t2!34)) lt!456712)))

(declare-fun b!1375052 () Bool)

(declare-fun e!878787 () Bool)

(assert (=> b!1375052 (= e!878786 e!878787)))

(declare-fun res!619598 () Bool)

(assert (=> b!1375052 (=> res!619598 e!878787)))

(assert (=> b!1375052 (= res!619598 (= (h!19306 (t!121642 rules!2550)) (rule!4164 t2!34)))))

(declare-fun b!1375053 () Bool)

(assert (=> b!1375053 (= e!878787 (contains!2608 (t!121642 (t!121642 rules!2550)) (rule!4164 t2!34)))))

(assert (= (and d!392934 res!619597) b!1375052))

(assert (= (and b!1375052 (not res!619598)) b!1375053))

(declare-fun m!1547105 () Bool)

(assert (=> d!392934 m!1547105))

(declare-fun m!1547107 () Bool)

(assert (=> d!392934 m!1547107))

(declare-fun m!1547109 () Bool)

(assert (=> b!1375053 m!1547109))

(assert (=> b!1373754 d!392934))

(declare-fun d!392936 () Bool)

(assert (=> d!392936 (= (isEmpty!8397 (_1!7639 lt!456322)) ((_ is Nil!13904) (_1!7639 lt!456322)))))

(assert (=> b!1373941 d!392936))

(declare-fun d!392938 () Bool)

(declare-fun c!226412 () Bool)

(assert (=> d!392938 (= c!226412 ((_ is Nil!13906) (map!3071 rules!2550 lambda!58378)))))

(declare-fun e!878790 () (InoxSet Regex!3721))

(assert (=> d!392938 (= (content!2039 (map!3071 rules!2550 lambda!58378)) e!878790)))

(declare-fun b!1375058 () Bool)

(assert (=> b!1375058 (= e!878790 ((as const (Array Regex!3721 Bool)) false))))

(declare-fun b!1375059 () Bool)

(assert (=> b!1375059 (= e!878790 ((_ map or) (store ((as const (Array Regex!3721 Bool)) false) (h!19307 (map!3071 rules!2550 lambda!58378)) true) (content!2039 (t!121643 (map!3071 rules!2550 lambda!58378)))))))

(assert (= (and d!392938 c!226412) b!1375058))

(assert (= (and d!392938 (not c!226412)) b!1375059))

(declare-fun m!1547111 () Bool)

(assert (=> b!1375059 m!1547111))

(declare-fun m!1547113 () Bool)

(assert (=> b!1375059 m!1547113))

(assert (=> d!392376 d!392938))

(declare-fun d!392940 () Bool)

(declare-fun lt!456713 () Bool)

(assert (=> d!392940 (= lt!456713 (select (content!2037 (t!121640 lt!456127)) lt!456121))))

(declare-fun e!878791 () Bool)

(assert (=> d!392940 (= lt!456713 e!878791)))

(declare-fun res!619600 () Bool)

(assert (=> d!392940 (=> (not res!619600) (not e!878791))))

(assert (=> d!392940 (= res!619600 ((_ is Cons!13903) (t!121640 lt!456127)))))

(assert (=> d!392940 (= (contains!2607 (t!121640 lt!456127) lt!456121) lt!456713)))

(declare-fun b!1375060 () Bool)

(declare-fun e!878792 () Bool)

(assert (=> b!1375060 (= e!878791 e!878792)))

(declare-fun res!619599 () Bool)

(assert (=> b!1375060 (=> res!619599 e!878792)))

(assert (=> b!1375060 (= res!619599 (= (h!19304 (t!121640 lt!456127)) lt!456121))))

(declare-fun b!1375061 () Bool)

(assert (=> b!1375061 (= e!878792 (contains!2607 (t!121640 (t!121640 lt!456127)) lt!456121))))

(assert (= (and d!392940 res!619600) b!1375060))

(assert (= (and b!1375060 (not res!619599)) b!1375061))

(declare-fun m!1547115 () Bool)

(assert (=> d!392940 m!1547115))

(declare-fun m!1547117 () Bool)

(assert (=> d!392940 m!1547117))

(declare-fun m!1547119 () Bool)

(assert (=> b!1375061 m!1547119))

(assert (=> b!1373729 d!392940))

(declare-fun d!392942 () Bool)

(assert (=> d!392942 (= (list!5362 lt!456386) (list!5366 (c!226060 lt!456386)))))

(declare-fun bs!336194 () Bool)

(assert (= bs!336194 d!392942))

(declare-fun m!1547121 () Bool)

(assert (=> bs!336194 m!1547121))

(assert (=> d!392424 d!392942))

(declare-fun d!392944 () Bool)

(declare-fun c!226415 () Bool)

(assert (=> d!392944 (= c!226415 ((_ is Cons!13904) (list!5363 (singletonSeq!1040 t2!34))))))

(declare-fun e!878795 () List!13969)

(assert (=> d!392944 (= (printList!610 thiss!19762 (list!5363 (singletonSeq!1040 t2!34))) e!878795)))

(declare-fun b!1375066 () Bool)

(assert (=> b!1375066 (= e!878795 (++!3598 (list!5362 (charsOf!1379 (h!19305 (list!5363 (singletonSeq!1040 t2!34))))) (printList!610 thiss!19762 (t!121641 (list!5363 (singletonSeq!1040 t2!34))))))))

(declare-fun b!1375067 () Bool)

(assert (=> b!1375067 (= e!878795 Nil!13903)))

(assert (= (and d!392944 c!226415) b!1375066))

(assert (= (and d!392944 (not c!226415)) b!1375067))

(declare-fun m!1547123 () Bool)

(assert (=> b!1375066 m!1547123))

(assert (=> b!1375066 m!1547123))

(declare-fun m!1547125 () Bool)

(assert (=> b!1375066 m!1547125))

(declare-fun m!1547127 () Bool)

(assert (=> b!1375066 m!1547127))

(assert (=> b!1375066 m!1547125))

(assert (=> b!1375066 m!1547127))

(declare-fun m!1547129 () Bool)

(assert (=> b!1375066 m!1547129))

(assert (=> d!392424 d!392944))

(declare-fun d!392946 () Bool)

(assert (=> d!392946 (= (list!5363 (singletonSeq!1040 t2!34)) (list!5367 (c!226062 (singletonSeq!1040 t2!34))))))

(declare-fun bs!336195 () Bool)

(assert (= bs!336195 d!392946))

(declare-fun m!1547131 () Bool)

(assert (=> bs!336195 m!1547131))

(assert (=> d!392424 d!392946))

(declare-fun d!392948 () Bool)

(declare-fun lt!456730 () BalanceConc!9092)

(declare-fun printListTailRec!253 (LexerInterface!2102 List!13970 List!13969) List!13969)

(declare-fun dropList!412 (BalanceConc!9094 Int) List!13970)

(assert (=> d!392948 (= (list!5362 lt!456730) (printListTailRec!253 thiss!19762 (dropList!412 (singletonSeq!1040 t2!34) 0) (list!5362 (BalanceConc!9093 Empty!4576))))))

(declare-fun e!878801 () BalanceConc!9092)

(assert (=> d!392948 (= lt!456730 e!878801)))

(declare-fun c!226418 () Bool)

(assert (=> d!392948 (= c!226418 (>= 0 (size!11416 (singletonSeq!1040 t2!34))))))

(declare-fun e!878800 () Bool)

(assert (=> d!392948 e!878800))

(declare-fun res!619603 () Bool)

(assert (=> d!392948 (=> (not res!619603) (not e!878800))))

(assert (=> d!392948 (= res!619603 (>= 0 0))))

(assert (=> d!392948 (= (printTailRec!592 thiss!19762 (singletonSeq!1040 t2!34) 0 (BalanceConc!9093 Empty!4576)) lt!456730)))

(declare-fun b!1375074 () Bool)

(assert (=> b!1375074 (= e!878800 (<= 0 (size!11416 (singletonSeq!1040 t2!34))))))

(declare-fun b!1375075 () Bool)

(assert (=> b!1375075 (= e!878801 (BalanceConc!9093 Empty!4576))))

(declare-fun b!1375076 () Bool)

(assert (=> b!1375076 (= e!878801 (printTailRec!592 thiss!19762 (singletonSeq!1040 t2!34) (+ 0 1) (++!3599 (BalanceConc!9093 Empty!4576) (charsOf!1379 (apply!3427 (singletonSeq!1040 t2!34) 0)))))))

(declare-fun lt!456729 () List!13970)

(assert (=> b!1375076 (= lt!456729 (list!5363 (singletonSeq!1040 t2!34)))))

(declare-fun lt!456732 () Unit!20133)

(declare-fun lemmaDropApply!444 (List!13970 Int) Unit!20133)

(assert (=> b!1375076 (= lt!456732 (lemmaDropApply!444 lt!456729 0))))

(declare-fun head!2481 (List!13970) Token!4476)

(declare-fun drop!689 (List!13970 Int) List!13970)

(assert (=> b!1375076 (= (head!2481 (drop!689 lt!456729 0)) (apply!3432 lt!456729 0))))

(declare-fun lt!456731 () Unit!20133)

(assert (=> b!1375076 (= lt!456731 lt!456732)))

(declare-fun lt!456728 () List!13970)

(assert (=> b!1375076 (= lt!456728 (list!5363 (singletonSeq!1040 t2!34)))))

(declare-fun lt!456733 () Unit!20133)

(declare-fun lemmaDropTail!424 (List!13970 Int) Unit!20133)

(assert (=> b!1375076 (= lt!456733 (lemmaDropTail!424 lt!456728 0))))

(declare-fun tail!1992 (List!13970) List!13970)

(assert (=> b!1375076 (= (tail!1992 (drop!689 lt!456728 0)) (drop!689 lt!456728 (+ 0 1)))))

(declare-fun lt!456734 () Unit!20133)

(assert (=> b!1375076 (= lt!456734 lt!456733)))

(assert (= (and d!392948 res!619603) b!1375074))

(assert (= (and d!392948 c!226418) b!1375075))

(assert (= (and d!392948 (not c!226418)) b!1375076))

(declare-fun m!1547133 () Bool)

(assert (=> d!392948 m!1547133))

(assert (=> d!392948 m!1547041))

(declare-fun m!1547135 () Bool)

(assert (=> d!392948 m!1547135))

(declare-fun m!1547137 () Bool)

(assert (=> d!392948 m!1547137))

(assert (=> d!392948 m!1544857))

(assert (=> d!392948 m!1547133))

(assert (=> d!392948 m!1547041))

(assert (=> d!392948 m!1544857))

(declare-fun m!1547139 () Bool)

(assert (=> d!392948 m!1547139))

(assert (=> b!1375074 m!1544857))

(assert (=> b!1375074 m!1547139))

(declare-fun m!1547141 () Bool)

(assert (=> b!1375076 m!1547141))

(declare-fun m!1547143 () Bool)

(assert (=> b!1375076 m!1547143))

(declare-fun m!1547145 () Bool)

(assert (=> b!1375076 m!1547145))

(assert (=> b!1375076 m!1547145))

(declare-fun m!1547147 () Bool)

(assert (=> b!1375076 m!1547147))

(assert (=> b!1375076 m!1544857))

(declare-fun m!1547149 () Bool)

(assert (=> b!1375076 m!1547149))

(declare-fun m!1547151 () Bool)

(assert (=> b!1375076 m!1547151))

(declare-fun m!1547153 () Bool)

(assert (=> b!1375076 m!1547153))

(declare-fun m!1547155 () Bool)

(assert (=> b!1375076 m!1547155))

(declare-fun m!1547157 () Bool)

(assert (=> b!1375076 m!1547157))

(assert (=> b!1375076 m!1544857))

(assert (=> b!1375076 m!1545227))

(declare-fun m!1547159 () Bool)

(assert (=> b!1375076 m!1547159))

(assert (=> b!1375076 m!1547141))

(declare-fun m!1547161 () Bool)

(assert (=> b!1375076 m!1547161))

(assert (=> b!1375076 m!1547149))

(declare-fun m!1547163 () Bool)

(assert (=> b!1375076 m!1547163))

(assert (=> b!1375076 m!1547161))

(assert (=> b!1375076 m!1544857))

(assert (=> b!1375076 m!1547163))

(assert (=> d!392424 d!392948))

(declare-fun b!1375077 () Bool)

(declare-fun res!619606 () Bool)

(declare-fun e!878806 () Bool)

(assert (=> b!1375077 (=> (not res!619606) (not e!878806))))

(declare-fun call!92273 () Bool)

(assert (=> b!1375077 (= res!619606 (not call!92273))))

(declare-fun b!1375078 () Bool)

(declare-fun e!878805 () Bool)

(assert (=> b!1375078 (= e!878805 (not (= (head!2475 (tail!1987 lt!456122)) (c!226061 (derivativeStep!958 lt!456141 (head!2475 lt!456122))))))))

(declare-fun b!1375079 () Bool)

(declare-fun e!878802 () Bool)

(declare-fun lt!456735 () Bool)

(assert (=> b!1375079 (= e!878802 (not lt!456735))))

(declare-fun b!1375080 () Bool)

(declare-fun res!619609 () Bool)

(assert (=> b!1375080 (=> res!619609 e!878805)))

(assert (=> b!1375080 (= res!619609 (not (isEmpty!8392 (tail!1987 (tail!1987 lt!456122)))))))

(declare-fun b!1375081 () Bool)

(declare-fun e!878804 () Bool)

(assert (=> b!1375081 (= e!878804 (nullable!1201 (derivativeStep!958 lt!456141 (head!2475 lt!456122))))))

(declare-fun b!1375082 () Bool)

(assert (=> b!1375082 (= e!878804 (matchR!1714 (derivativeStep!958 (derivativeStep!958 lt!456141 (head!2475 lt!456122)) (head!2475 (tail!1987 lt!456122))) (tail!1987 (tail!1987 lt!456122))))))

(declare-fun b!1375083 () Bool)

(declare-fun e!878808 () Bool)

(assert (=> b!1375083 (= e!878808 e!878802)))

(declare-fun c!226419 () Bool)

(assert (=> b!1375083 (= c!226419 ((_ is EmptyLang!3721) (derivativeStep!958 lt!456141 (head!2475 lt!456122))))))

(declare-fun b!1375084 () Bool)

(assert (=> b!1375084 (= e!878808 (= lt!456735 call!92273))))

(declare-fun bm!92268 () Bool)

(assert (=> bm!92268 (= call!92273 (isEmpty!8392 (tail!1987 lt!456122)))))

(declare-fun b!1375085 () Bool)

(assert (=> b!1375085 (= e!878806 (= (head!2475 (tail!1987 lt!456122)) (c!226061 (derivativeStep!958 lt!456141 (head!2475 lt!456122)))))))

(declare-fun b!1375086 () Bool)

(declare-fun res!619610 () Bool)

(assert (=> b!1375086 (=> (not res!619610) (not e!878806))))

(assert (=> b!1375086 (= res!619610 (isEmpty!8392 (tail!1987 (tail!1987 lt!456122))))))

(declare-fun b!1375087 () Bool)

(declare-fun res!619611 () Bool)

(declare-fun e!878803 () Bool)

(assert (=> b!1375087 (=> res!619611 e!878803)))

(assert (=> b!1375087 (= res!619611 e!878806)))

(declare-fun res!619604 () Bool)

(assert (=> b!1375087 (=> (not res!619604) (not e!878806))))

(assert (=> b!1375087 (= res!619604 lt!456735)))

(declare-fun d!392950 () Bool)

(assert (=> d!392950 e!878808))

(declare-fun c!226420 () Bool)

(assert (=> d!392950 (= c!226420 ((_ is EmptyExpr!3721) (derivativeStep!958 lt!456141 (head!2475 lt!456122))))))

(assert (=> d!392950 (= lt!456735 e!878804)))

(declare-fun c!226421 () Bool)

(assert (=> d!392950 (= c!226421 (isEmpty!8392 (tail!1987 lt!456122)))))

(assert (=> d!392950 (validRegex!1621 (derivativeStep!958 lt!456141 (head!2475 lt!456122)))))

(assert (=> d!392950 (= (matchR!1714 (derivativeStep!958 lt!456141 (head!2475 lt!456122)) (tail!1987 lt!456122)) lt!456735)))

(declare-fun b!1375088 () Bool)

(declare-fun res!619607 () Bool)

(assert (=> b!1375088 (=> res!619607 e!878803)))

(assert (=> b!1375088 (= res!619607 (not ((_ is ElementMatch!3721) (derivativeStep!958 lt!456141 (head!2475 lt!456122)))))))

(assert (=> b!1375088 (= e!878802 e!878803)))

(declare-fun b!1375089 () Bool)

(declare-fun e!878807 () Bool)

(assert (=> b!1375089 (= e!878803 e!878807)))

(declare-fun res!619608 () Bool)

(assert (=> b!1375089 (=> (not res!619608) (not e!878807))))

(assert (=> b!1375089 (= res!619608 (not lt!456735))))

(declare-fun b!1375090 () Bool)

(assert (=> b!1375090 (= e!878807 e!878805)))

(declare-fun res!619605 () Bool)

(assert (=> b!1375090 (=> res!619605 e!878805)))

(assert (=> b!1375090 (= res!619605 call!92273)))

(assert (= (and d!392950 c!226421) b!1375081))

(assert (= (and d!392950 (not c!226421)) b!1375082))

(assert (= (and d!392950 c!226420) b!1375084))

(assert (= (and d!392950 (not c!226420)) b!1375083))

(assert (= (and b!1375083 c!226419) b!1375079))

(assert (= (and b!1375083 (not c!226419)) b!1375088))

(assert (= (and b!1375088 (not res!619607)) b!1375087))

(assert (= (and b!1375087 res!619604) b!1375077))

(assert (= (and b!1375077 res!619606) b!1375086))

(assert (= (and b!1375086 res!619610) b!1375085))

(assert (= (and b!1375087 (not res!619611)) b!1375089))

(assert (= (and b!1375089 res!619608) b!1375090))

(assert (= (and b!1375090 (not res!619605)) b!1375080))

(assert (= (and b!1375080 (not res!619609)) b!1375078))

(assert (= (or b!1375084 b!1375077 b!1375090) bm!92268))

(assert (=> d!392950 m!1545031))

(assert (=> d!392950 m!1545033))

(assert (=> d!392950 m!1545039))

(declare-fun m!1547165 () Bool)

(assert (=> d!392950 m!1547165))

(assert (=> b!1375080 m!1545031))

(declare-fun m!1547167 () Bool)

(assert (=> b!1375080 m!1547167))

(assert (=> b!1375080 m!1547167))

(declare-fun m!1547169 () Bool)

(assert (=> b!1375080 m!1547169))

(assert (=> b!1375078 m!1545031))

(declare-fun m!1547171 () Bool)

(assert (=> b!1375078 m!1547171))

(assert (=> b!1375086 m!1545031))

(assert (=> b!1375086 m!1547167))

(assert (=> b!1375086 m!1547167))

(assert (=> b!1375086 m!1547169))

(assert (=> b!1375085 m!1545031))

(assert (=> b!1375085 m!1547171))

(assert (=> b!1375081 m!1545039))

(declare-fun m!1547173 () Bool)

(assert (=> b!1375081 m!1547173))

(assert (=> b!1375082 m!1545031))

(assert (=> b!1375082 m!1547171))

(assert (=> b!1375082 m!1545039))

(assert (=> b!1375082 m!1547171))

(declare-fun m!1547175 () Bool)

(assert (=> b!1375082 m!1547175))

(assert (=> b!1375082 m!1545031))

(assert (=> b!1375082 m!1547167))

(assert (=> b!1375082 m!1547175))

(assert (=> b!1375082 m!1547167))

(declare-fun m!1547177 () Bool)

(assert (=> b!1375082 m!1547177))

(assert (=> bm!92268 m!1545031))

(assert (=> bm!92268 m!1545033))

(assert (=> b!1373606 d!392950))

(declare-fun d!392952 () Bool)

(declare-fun lt!456738 () Regex!3721)

(assert (=> d!392952 (validRegex!1621 lt!456738)))

(declare-fun e!878823 () Regex!3721)

(assert (=> d!392952 (= lt!456738 e!878823)))

(declare-fun c!226434 () Bool)

(assert (=> d!392952 (= c!226434 (or ((_ is EmptyExpr!3721) lt!456141) ((_ is EmptyLang!3721) lt!456141)))))

(assert (=> d!392952 (validRegex!1621 lt!456141)))

(assert (=> d!392952 (= (derivativeStep!958 lt!456141 (head!2475 lt!456122)) lt!456738)))

(declare-fun bm!92277 () Bool)

(declare-fun call!92283 () Regex!3721)

(declare-fun call!92285 () Regex!3721)

(assert (=> bm!92277 (= call!92283 call!92285)))

(declare-fun b!1375111 () Bool)

(assert (=> b!1375111 (= e!878823 EmptyLang!3721)))

(declare-fun b!1375112 () Bool)

(declare-fun e!878822 () Regex!3721)

(assert (=> b!1375112 (= e!878822 (Concat!6219 call!92283 lt!456141))))

(declare-fun b!1375113 () Bool)

(declare-fun e!878819 () Regex!3721)

(declare-fun call!92284 () Regex!3721)

(assert (=> b!1375113 (= e!878819 (Union!3721 call!92284 call!92285))))

(declare-fun b!1375114 () Bool)

(declare-fun e!878820 () Regex!3721)

(assert (=> b!1375114 (= e!878823 e!878820)))

(declare-fun c!226433 () Bool)

(assert (=> b!1375114 (= c!226433 ((_ is ElementMatch!3721) lt!456141))))

(declare-fun e!878821 () Regex!3721)

(declare-fun call!92282 () Regex!3721)

(declare-fun b!1375115 () Bool)

(assert (=> b!1375115 (= e!878821 (Union!3721 (Concat!6219 call!92283 (regTwo!7954 lt!456141)) call!92282))))

(declare-fun b!1375116 () Bool)

(declare-fun c!226432 () Bool)

(assert (=> b!1375116 (= c!226432 ((_ is Union!3721) lt!456141))))

(assert (=> b!1375116 (= e!878820 e!878819)))

(declare-fun bm!92278 () Bool)

(declare-fun c!226435 () Bool)

(assert (=> bm!92278 (= call!92284 (derivativeStep!958 (ite c!226432 (regOne!7955 lt!456141) (ite c!226435 (regTwo!7954 lt!456141) (regOne!7954 lt!456141))) (head!2475 lt!456122)))))

(declare-fun bm!92279 () Bool)

(assert (=> bm!92279 (= call!92282 call!92284)))

(declare-fun b!1375117 () Bool)

(assert (=> b!1375117 (= e!878821 (Union!3721 (Concat!6219 call!92282 (regTwo!7954 lt!456141)) EmptyLang!3721))))

(declare-fun c!226436 () Bool)

(declare-fun bm!92280 () Bool)

(assert (=> bm!92280 (= call!92285 (derivativeStep!958 (ite c!226432 (regTwo!7955 lt!456141) (ite c!226436 (reg!4050 lt!456141) (regOne!7954 lt!456141))) (head!2475 lt!456122)))))

(declare-fun b!1375118 () Bool)

(assert (=> b!1375118 (= e!878819 e!878822)))

(assert (=> b!1375118 (= c!226436 ((_ is Star!3721) lt!456141))))

(declare-fun b!1375119 () Bool)

(assert (=> b!1375119 (= e!878820 (ite (= (head!2475 lt!456122) (c!226061 lt!456141)) EmptyExpr!3721 EmptyLang!3721))))

(declare-fun b!1375120 () Bool)

(assert (=> b!1375120 (= c!226435 (nullable!1201 (regOne!7954 lt!456141)))))

(assert (=> b!1375120 (= e!878822 e!878821)))

(assert (= (and d!392952 c!226434) b!1375111))

(assert (= (and d!392952 (not c!226434)) b!1375114))

(assert (= (and b!1375114 c!226433) b!1375119))

(assert (= (and b!1375114 (not c!226433)) b!1375116))

(assert (= (and b!1375116 c!226432) b!1375113))

(assert (= (and b!1375116 (not c!226432)) b!1375118))

(assert (= (and b!1375118 c!226436) b!1375112))

(assert (= (and b!1375118 (not c!226436)) b!1375120))

(assert (= (and b!1375120 c!226435) b!1375115))

(assert (= (and b!1375120 (not c!226435)) b!1375117))

(assert (= (or b!1375115 b!1375117) bm!92279))

(assert (= (or b!1375112 b!1375115) bm!92277))

(assert (= (or b!1375113 bm!92279) bm!92278))

(assert (= (or b!1375113 bm!92277) bm!92280))

(declare-fun m!1547179 () Bool)

(assert (=> d!392952 m!1547179))

(assert (=> d!392952 m!1545029))

(assert (=> bm!92278 m!1545035))

(declare-fun m!1547181 () Bool)

(assert (=> bm!92278 m!1547181))

(assert (=> bm!92280 m!1545035))

(declare-fun m!1547183 () Bool)

(assert (=> bm!92280 m!1547183))

(declare-fun m!1547185 () Bool)

(assert (=> b!1375120 m!1547185))

(assert (=> b!1373606 d!392952))

(assert (=> b!1373606 d!392932))

(assert (=> b!1373606 d!392638))

(declare-fun d!392954 () Bool)

(declare-fun lt!456741 () Int)

(assert (=> d!392954 (>= lt!456741 0)))

(declare-fun e!878826 () Int)

(assert (=> d!392954 (= lt!456741 e!878826)))

(declare-fun c!226439 () Bool)

(assert (=> d!392954 (= c!226439 ((_ is Nil!13903) (_2!7639 lt!456392)))))

(assert (=> d!392954 (= (size!11415 (_2!7639 lt!456392)) lt!456741)))

(declare-fun b!1375125 () Bool)

(assert (=> b!1375125 (= e!878826 0)))

(declare-fun b!1375126 () Bool)

(assert (=> b!1375126 (= e!878826 (+ 1 (size!11415 (t!121640 (_2!7639 lt!456392)))))))

(assert (= (and d!392954 c!226439) b!1375125))

(assert (= (and d!392954 (not c!226439)) b!1375126))

(declare-fun m!1547187 () Bool)

(assert (=> b!1375126 m!1547187))

(assert (=> b!1374178 d!392954))

(declare-fun d!392956 () Bool)

(declare-fun lt!456742 () Int)

(assert (=> d!392956 (>= lt!456742 0)))

(declare-fun e!878827 () Int)

(assert (=> d!392956 (= lt!456742 e!878827)))

(declare-fun c!226440 () Bool)

(assert (=> d!392956 (= c!226440 ((_ is Nil!13903) (list!5362 lt!456124)))))

(assert (=> d!392956 (= (size!11415 (list!5362 lt!456124)) lt!456742)))

(declare-fun b!1375127 () Bool)

(assert (=> b!1375127 (= e!878827 0)))

(declare-fun b!1375128 () Bool)

(assert (=> b!1375128 (= e!878827 (+ 1 (size!11415 (t!121640 (list!5362 lt!456124)))))))

(assert (= (and d!392956 c!226440) b!1375127))

(assert (= (and d!392956 (not c!226440)) b!1375128))

(declare-fun m!1547189 () Bool)

(assert (=> b!1375128 m!1547189))

(assert (=> b!1374178 d!392956))

(declare-fun d!392958 () Bool)

(declare-fun res!619612 () Bool)

(declare-fun e!878828 () Bool)

(assert (=> d!392958 (=> (not res!619612) (not e!878828))))

(assert (=> d!392958 (= res!619612 (validRegex!1621 (regex!2407 (rule!4164 t1!34))))))

(assert (=> d!392958 (= (ruleValid!594 thiss!19762 (rule!4164 t1!34)) e!878828)))

(declare-fun b!1375129 () Bool)

(declare-fun res!619613 () Bool)

(assert (=> b!1375129 (=> (not res!619613) (not e!878828))))

(assert (=> b!1375129 (= res!619613 (not (nullable!1201 (regex!2407 (rule!4164 t1!34)))))))

(declare-fun b!1375130 () Bool)

(assert (=> b!1375130 (= e!878828 (not (= (tag!2669 (rule!4164 t1!34)) (String!16722 ""))))))

(assert (= (and d!392958 res!619612) b!1375129))

(assert (= (and b!1375129 res!619613) b!1375130))

(assert (=> d!392958 m!1545765))

(assert (=> b!1375129 m!1545773))

(assert (=> bs!336032 d!392958))

(declare-fun d!392960 () Bool)

(assert (=> d!392960 (= (isDefined!2221 lt!456377) (not (isEmpty!8399 lt!456377)))))

(declare-fun bs!336196 () Bool)

(assert (= bs!336196 d!392960))

(assert (=> bs!336196 m!1545753))

(assert (=> b!1374131 d!392960))

(declare-fun d!392962 () Bool)

(declare-fun c!226441 () Bool)

(assert (=> d!392962 (= c!226441 ((_ is Empty!4577) (c!226062 (_1!7640 lt!456126))))))

(declare-fun e!878829 () List!13970)

(assert (=> d!392962 (= (list!5367 (c!226062 (_1!7640 lt!456126))) e!878829)))

(declare-fun b!1375133 () Bool)

(declare-fun e!878830 () List!13970)

(assert (=> b!1375133 (= e!878830 (list!5370 (xs!7304 (c!226062 (_1!7640 lt!456126)))))))

(declare-fun b!1375132 () Bool)

(assert (=> b!1375132 (= e!878829 e!878830)))

(declare-fun c!226442 () Bool)

(assert (=> b!1375132 (= c!226442 ((_ is Leaf!6977) (c!226062 (_1!7640 lt!456126))))))

(declare-fun b!1375134 () Bool)

(assert (=> b!1375134 (= e!878830 (++!3601 (list!5367 (left!11894 (c!226062 (_1!7640 lt!456126)))) (list!5367 (right!12224 (c!226062 (_1!7640 lt!456126))))))))

(declare-fun b!1375131 () Bool)

(assert (=> b!1375131 (= e!878829 Nil!13904)))

(assert (= (and d!392962 c!226441) b!1375131))

(assert (= (and d!392962 (not c!226441)) b!1375132))

(assert (= (and b!1375132 c!226442) b!1375133))

(assert (= (and b!1375132 (not c!226442)) b!1375134))

(declare-fun m!1547191 () Bool)

(assert (=> b!1375133 m!1547191))

(declare-fun m!1547193 () Bool)

(assert (=> b!1375134 m!1547193))

(declare-fun m!1547195 () Bool)

(assert (=> b!1375134 m!1547195))

(assert (=> b!1375134 m!1547193))

(assert (=> b!1375134 m!1547195))

(declare-fun m!1547197 () Bool)

(assert (=> b!1375134 m!1547197))

(assert (=> d!392236 d!392962))

(assert (=> b!1373609 d!392932))

(declare-fun d!392964 () Bool)

(assert (=> d!392964 (= (isEmpty!8392 lt!456133) ((_ is Nil!13903) lt!456133))))

(assert (=> bm!92213 d!392964))

(declare-fun d!392966 () Bool)

(declare-fun c!226443 () Bool)

(assert (=> d!392966 (= c!226443 (isEmpty!8392 (tail!1987 lt!456127)))))

(declare-fun e!878831 () Bool)

(assert (=> d!392966 (= (prefixMatch!230 (derivativeStep!958 lt!456141 (head!2475 lt!456127)) (tail!1987 lt!456127)) e!878831)))

(declare-fun b!1375135 () Bool)

(assert (=> b!1375135 (= e!878831 (not (lostCause!334 (derivativeStep!958 lt!456141 (head!2475 lt!456127)))))))

(declare-fun b!1375136 () Bool)

(assert (=> b!1375136 (= e!878831 (prefixMatch!230 (derivativeStep!958 (derivativeStep!958 lt!456141 (head!2475 lt!456127)) (head!2475 (tail!1987 lt!456127))) (tail!1987 (tail!1987 lt!456127))))))

(assert (= (and d!392966 c!226443) b!1375135))

(assert (= (and d!392966 (not c!226443)) b!1375136))

(assert (=> d!392966 m!1544927))

(declare-fun m!1547199 () Bool)

(assert (=> d!392966 m!1547199))

(assert (=> b!1375135 m!1544925))

(declare-fun m!1547201 () Bool)

(assert (=> b!1375135 m!1547201))

(assert (=> b!1375136 m!1544927))

(declare-fun m!1547203 () Bool)

(assert (=> b!1375136 m!1547203))

(assert (=> b!1375136 m!1544925))

(assert (=> b!1375136 m!1547203))

(declare-fun m!1547205 () Bool)

(assert (=> b!1375136 m!1547205))

(assert (=> b!1375136 m!1544927))

(declare-fun m!1547207 () Bool)

(assert (=> b!1375136 m!1547207))

(assert (=> b!1375136 m!1547205))

(assert (=> b!1375136 m!1547207))

(declare-fun m!1547209 () Bool)

(assert (=> b!1375136 m!1547209))

(assert (=> b!1373495 d!392966))

(declare-fun d!392968 () Bool)

(declare-fun lt!456743 () Regex!3721)

(assert (=> d!392968 (validRegex!1621 lt!456743)))

(declare-fun e!878836 () Regex!3721)

(assert (=> d!392968 (= lt!456743 e!878836)))

(declare-fun c!226446 () Bool)

(assert (=> d!392968 (= c!226446 (or ((_ is EmptyExpr!3721) lt!456141) ((_ is EmptyLang!3721) lt!456141)))))

(assert (=> d!392968 (validRegex!1621 lt!456141)))

(assert (=> d!392968 (= (derivativeStep!958 lt!456141 (head!2475 lt!456127)) lt!456743)))

(declare-fun bm!92281 () Bool)

(declare-fun call!92287 () Regex!3721)

(declare-fun call!92289 () Regex!3721)

(assert (=> bm!92281 (= call!92287 call!92289)))

(declare-fun b!1375137 () Bool)

(assert (=> b!1375137 (= e!878836 EmptyLang!3721)))

(declare-fun b!1375138 () Bool)

(declare-fun e!878835 () Regex!3721)

(assert (=> b!1375138 (= e!878835 (Concat!6219 call!92287 lt!456141))))

(declare-fun b!1375139 () Bool)

(declare-fun e!878832 () Regex!3721)

(declare-fun call!92288 () Regex!3721)

(assert (=> b!1375139 (= e!878832 (Union!3721 call!92288 call!92289))))

(declare-fun b!1375140 () Bool)

(declare-fun e!878833 () Regex!3721)

(assert (=> b!1375140 (= e!878836 e!878833)))

(declare-fun c!226445 () Bool)

(assert (=> b!1375140 (= c!226445 ((_ is ElementMatch!3721) lt!456141))))

(declare-fun e!878834 () Regex!3721)

(declare-fun b!1375141 () Bool)

(declare-fun call!92286 () Regex!3721)

(assert (=> b!1375141 (= e!878834 (Union!3721 (Concat!6219 call!92287 (regTwo!7954 lt!456141)) call!92286))))

(declare-fun b!1375142 () Bool)

(declare-fun c!226444 () Bool)

(assert (=> b!1375142 (= c!226444 ((_ is Union!3721) lt!456141))))

(assert (=> b!1375142 (= e!878833 e!878832)))

(declare-fun bm!92282 () Bool)

(declare-fun c!226447 () Bool)

(assert (=> bm!92282 (= call!92288 (derivativeStep!958 (ite c!226444 (regOne!7955 lt!456141) (ite c!226447 (regTwo!7954 lt!456141) (regOne!7954 lt!456141))) (head!2475 lt!456127)))))

(declare-fun bm!92283 () Bool)

(assert (=> bm!92283 (= call!92286 call!92288)))

(declare-fun b!1375143 () Bool)

(assert (=> b!1375143 (= e!878834 (Union!3721 (Concat!6219 call!92286 (regTwo!7954 lt!456141)) EmptyLang!3721))))

(declare-fun c!226448 () Bool)

(declare-fun bm!92284 () Bool)

(assert (=> bm!92284 (= call!92289 (derivativeStep!958 (ite c!226444 (regTwo!7955 lt!456141) (ite c!226448 (reg!4050 lt!456141) (regOne!7954 lt!456141))) (head!2475 lt!456127)))))

(declare-fun b!1375144 () Bool)

(assert (=> b!1375144 (= e!878832 e!878835)))

(assert (=> b!1375144 (= c!226448 ((_ is Star!3721) lt!456141))))

(declare-fun b!1375145 () Bool)

(assert (=> b!1375145 (= e!878833 (ite (= (head!2475 lt!456127) (c!226061 lt!456141)) EmptyExpr!3721 EmptyLang!3721))))

(declare-fun b!1375146 () Bool)

(assert (=> b!1375146 (= c!226447 (nullable!1201 (regOne!7954 lt!456141)))))

(assert (=> b!1375146 (= e!878835 e!878834)))

(assert (= (and d!392968 c!226446) b!1375137))

(assert (= (and d!392968 (not c!226446)) b!1375140))

(assert (= (and b!1375140 c!226445) b!1375145))

(assert (= (and b!1375140 (not c!226445)) b!1375142))

(assert (= (and b!1375142 c!226444) b!1375139))

(assert (= (and b!1375142 (not c!226444)) b!1375144))

(assert (= (and b!1375144 c!226448) b!1375138))

(assert (= (and b!1375144 (not c!226448)) b!1375146))

(assert (= (and b!1375146 c!226447) b!1375141))

(assert (= (and b!1375146 (not c!226447)) b!1375143))

(assert (= (or b!1375141 b!1375143) bm!92283))

(assert (= (or b!1375138 b!1375141) bm!92281))

(assert (= (or b!1375139 bm!92283) bm!92282))

(assert (= (or b!1375139 bm!92281) bm!92284))

(declare-fun m!1547211 () Bool)

(assert (=> d!392968 m!1547211))

(assert (=> d!392968 m!1545029))

(assert (=> bm!92282 m!1544923))

(declare-fun m!1547213 () Bool)

(assert (=> bm!92282 m!1547213))

(assert (=> bm!92284 m!1544923))

(declare-fun m!1547215 () Bool)

(assert (=> bm!92284 m!1547215))

(assert (=> b!1375146 m!1547185))

(assert (=> b!1373495 d!392968))

(declare-fun d!392970 () Bool)

(assert (=> d!392970 (= (head!2475 lt!456127) (h!19304 lt!456127))))

(assert (=> b!1373495 d!392970))

(declare-fun d!392972 () Bool)

(assert (=> d!392972 (= (tail!1987 lt!456127) (t!121640 lt!456127))))

(assert (=> b!1373495 d!392972))

(declare-fun d!392974 () Bool)

(declare-fun res!619616 () List!13969)

(assert (=> d!392974 (dynLambda!6332 lambda!58377 res!619616)))

(declare-fun e!878839 () Bool)

(assert (=> d!392974 e!878839))

(assert (=> d!392974 (= (choose!8449 lambda!58377) res!619616)))

(declare-fun b!1375151 () Bool)

(declare-fun tp!394296 () Bool)

(assert (=> b!1375151 (= e!878839 (and tp_is_empty!6751 tp!394296))))

(assert (= (and d!392974 ((_ is Cons!13903) res!619616)) b!1375151))

(declare-fun b_lambda!42301 () Bool)

(assert (=> (not b_lambda!42301) (not d!392974)))

(declare-fun m!1547217 () Bool)

(assert (=> d!392974 m!1547217))

(assert (=> d!392208 d!392974))

(assert (=> d!392208 d!392352))

(declare-fun d!392976 () Bool)

(assert (=> d!392976 (= (isDefined!2221 lt!456400) (not (isEmpty!8399 lt!456400)))))

(declare-fun bs!336197 () Bool)

(assert (= bs!336197 d!392976))

(assert (=> bs!336197 m!1545893))

(assert (=> b!1374189 d!392976))

(declare-fun d!392978 () Bool)

(declare-fun lt!456758 () Int)

(assert (=> d!392978 (>= lt!456758 0)))

(declare-fun e!878842 () Int)

(assert (=> d!392978 (= lt!456758 e!878842)))

(declare-fun c!226451 () Bool)

(assert (=> d!392978 (= c!226451 ((_ is Nil!13903) lt!456222))))

(assert (=> d!392978 (= (size!11415 lt!456222) lt!456758)))

(declare-fun b!1375154 () Bool)

(assert (=> b!1375154 (= e!878842 0)))

(declare-fun b!1375155 () Bool)

(assert (=> b!1375155 (= e!878842 (+ 1 (size!11415 (t!121640 lt!456222))))))

(assert (= (and d!392978 c!226451) b!1375154))

(assert (= (and d!392978 (not c!226451)) b!1375155))

(declare-fun m!1547219 () Bool)

(assert (=> b!1375155 m!1547219))

(assert (=> b!1373733 d!392978))

(declare-fun d!392980 () Bool)

(declare-fun lt!456769 () Int)

(assert (=> d!392980 (>= lt!456769 0)))

(declare-fun e!878843 () Int)

(assert (=> d!392980 (= lt!456769 e!878843)))

(declare-fun c!226452 () Bool)

(assert (=> d!392980 (= c!226452 ((_ is Nil!13903) lt!456127))))

(assert (=> d!392980 (= (size!11415 lt!456127) lt!456769)))

(declare-fun b!1375156 () Bool)

(assert (=> b!1375156 (= e!878843 0)))

(declare-fun b!1375157 () Bool)

(assert (=> b!1375157 (= e!878843 (+ 1 (size!11415 (t!121640 lt!456127))))))

(assert (= (and d!392980 c!226452) b!1375156))

(assert (= (and d!392980 (not c!226452)) b!1375157))

(declare-fun m!1547221 () Bool)

(assert (=> b!1375157 m!1547221))

(assert (=> b!1373733 d!392980))

(declare-fun d!392982 () Bool)

(declare-fun lt!456770 () Int)

(assert (=> d!392982 (>= lt!456770 0)))

(declare-fun e!878844 () Int)

(assert (=> d!392982 (= lt!456770 e!878844)))

(declare-fun c!226453 () Bool)

(assert (=> d!392982 (= c!226453 ((_ is Nil!13903) (getSuffix!569 lt!456122 lt!456127)))))

(assert (=> d!392982 (= (size!11415 (getSuffix!569 lt!456122 lt!456127)) lt!456770)))

(declare-fun b!1375158 () Bool)

(assert (=> b!1375158 (= e!878844 0)))

(declare-fun b!1375159 () Bool)

(assert (=> b!1375159 (= e!878844 (+ 1 (size!11415 (t!121640 (getSuffix!569 lt!456122 lt!456127)))))))

(assert (= (and d!392982 c!226453) b!1375158))

(assert (= (and d!392982 (not c!226453)) b!1375159))

(declare-fun m!1547223 () Bool)

(assert (=> b!1375159 m!1547223))

(assert (=> b!1373733 d!392982))

(declare-fun d!392984 () Bool)

(declare-fun lt!456777 () Int)

(assert (=> d!392984 (>= lt!456777 0)))

(declare-fun e!878847 () Int)

(assert (=> d!392984 (= lt!456777 e!878847)))

(declare-fun c!226456 () Bool)

(assert (=> d!392984 (= c!226456 ((_ is Nil!13903) (_2!7641 (get!4350 lt!456377))))))

(assert (=> d!392984 (= (size!11415 (_2!7641 (get!4350 lt!456377))) lt!456777)))

(declare-fun b!1375164 () Bool)

(assert (=> b!1375164 (= e!878847 0)))

(declare-fun b!1375165 () Bool)

(assert (=> b!1375165 (= e!878847 (+ 1 (size!11415 (t!121640 (_2!7641 (get!4350 lt!456377))))))))

(assert (= (and d!392984 c!226456) b!1375164))

(assert (= (and d!392984 (not c!226456)) b!1375165))

(declare-fun m!1547225 () Bool)

(assert (=> b!1375165 m!1547225))

(assert (=> b!1374128 d!392984))

(assert (=> b!1374128 d!392640))

(declare-fun d!392986 () Bool)

(declare-fun lt!456778 () Int)

(assert (=> d!392986 (>= lt!456778 0)))

(declare-fun e!878848 () Int)

(assert (=> d!392986 (= lt!456778 e!878848)))

(declare-fun c!226457 () Bool)

(assert (=> d!392986 (= c!226457 ((_ is Nil!13903) lt!456128))))

(assert (=> d!392986 (= (size!11415 lt!456128) lt!456778)))

(declare-fun b!1375166 () Bool)

(assert (=> b!1375166 (= e!878848 0)))

(declare-fun b!1375167 () Bool)

(assert (=> b!1375167 (= e!878848 (+ 1 (size!11415 (t!121640 lt!456128))))))

(assert (= (and d!392986 c!226457) b!1375166))

(assert (= (and d!392986 (not c!226457)) b!1375167))

(declare-fun m!1547227 () Bool)

(assert (=> b!1375167 m!1547227))

(assert (=> b!1374128 d!392986))

(declare-fun d!392988 () Bool)

(declare-fun lt!456819 () C!7732)

(assert (=> d!392988 (contains!2607 (list!5362 lt!456132) lt!456819)))

(declare-fun e!878857 () C!7732)

(assert (=> d!392988 (= lt!456819 e!878857)))

(declare-fun c!226462 () Bool)

(assert (=> d!392988 (= c!226462 (= 0 0))))

(declare-fun e!878858 () Bool)

(assert (=> d!392988 e!878858))

(declare-fun res!619621 () Bool)

(assert (=> d!392988 (=> (not res!619621) (not e!878858))))

(assert (=> d!392988 (= res!619621 (<= 0 0))))

(assert (=> d!392988 (= (apply!3425 (list!5362 lt!456132) 0) lt!456819)))

(declare-fun b!1375180 () Bool)

(assert (=> b!1375180 (= e!878858 (< 0 (size!11415 (list!5362 lt!456132))))))

(declare-fun b!1375181 () Bool)

(assert (=> b!1375181 (= e!878857 (head!2475 (list!5362 lt!456132)))))

(declare-fun b!1375182 () Bool)

(assert (=> b!1375182 (= e!878857 (apply!3425 (tail!1987 (list!5362 lt!456132)) (- 0 1)))))

(assert (= (and d!392988 res!619621) b!1375180))

(assert (= (and d!392988 c!226462) b!1375181))

(assert (= (and d!392988 (not c!226462)) b!1375182))

(assert (=> d!392988 m!1544811))

(declare-fun m!1547229 () Bool)

(assert (=> d!392988 m!1547229))

(assert (=> b!1375180 m!1544811))

(declare-fun m!1547231 () Bool)

(assert (=> b!1375180 m!1547231))

(assert (=> b!1375181 m!1544811))

(declare-fun m!1547233 () Bool)

(assert (=> b!1375181 m!1547233))

(assert (=> b!1375182 m!1544811))

(declare-fun m!1547235 () Bool)

(assert (=> b!1375182 m!1547235))

(assert (=> b!1375182 m!1547235))

(declare-fun m!1547237 () Bool)

(assert (=> b!1375182 m!1547237))

(assert (=> d!392202 d!392988))

(assert (=> d!392202 d!392164))

(declare-fun b!1375204 () Bool)

(declare-fun e!878874 () C!7732)

(declare-fun call!92292 () C!7732)

(assert (=> b!1375204 (= e!878874 call!92292)))

(declare-fun b!1375205 () Bool)

(assert (=> b!1375205 (= e!878874 call!92292)))

(declare-fun b!1375207 () Bool)

(declare-fun e!878872 () Bool)

(assert (=> b!1375207 (= e!878872 (< 0 (size!11422 (c!226060 lt!456132))))))

(declare-fun b!1375208 () Bool)

(declare-fun e!878873 () C!7732)

(declare-fun apply!3437 (IArray!9157 Int) C!7732)

(assert (=> b!1375208 (= e!878873 (apply!3437 (xs!7303 (c!226060 lt!456132)) 0))))

(declare-fun b!1375209 () Bool)

(declare-fun e!878871 () Int)

(assert (=> b!1375209 (= e!878871 0)))

(declare-fun b!1375210 () Bool)

(assert (=> b!1375210 (= e!878871 (- 0 (size!11422 (left!11893 (c!226060 lt!456132)))))))

(declare-fun bm!92287 () Bool)

(declare-fun c!226474 () Bool)

(declare-fun c!226472 () Bool)

(assert (=> bm!92287 (= c!226474 c!226472)))

(assert (=> bm!92287 (= call!92292 (apply!3426 (ite c!226472 (left!11893 (c!226060 lt!456132)) (right!12223 (c!226060 lt!456132))) e!878871))))

(declare-fun b!1375206 () Bool)

(assert (=> b!1375206 (= e!878873 e!878874)))

(declare-fun lt!456858 () Bool)

(declare-fun appendIndex!171 (List!13969 List!13969 Int) Bool)

(assert (=> b!1375206 (= lt!456858 (appendIndex!171 (list!5366 (left!11893 (c!226060 lt!456132))) (list!5366 (right!12223 (c!226060 lt!456132))) 0))))

(assert (=> b!1375206 (= c!226472 (< 0 (size!11422 (left!11893 (c!226060 lt!456132)))))))

(declare-fun d!392990 () Bool)

(declare-fun lt!456859 () C!7732)

(assert (=> d!392990 (= lt!456859 (apply!3425 (list!5366 (c!226060 lt!456132)) 0))))

(assert (=> d!392990 (= lt!456859 e!878873)))

(declare-fun c!226473 () Bool)

(assert (=> d!392990 (= c!226473 ((_ is Leaf!6976) (c!226060 lt!456132)))))

(assert (=> d!392990 e!878872))

(declare-fun res!619625 () Bool)

(assert (=> d!392990 (=> (not res!619625) (not e!878872))))

(assert (=> d!392990 (= res!619625 (<= 0 0))))

(assert (=> d!392990 (= (apply!3426 (c!226060 lt!456132) 0) lt!456859)))

(assert (= (and d!392990 res!619625) b!1375207))

(assert (= (and d!392990 c!226473) b!1375208))

(assert (= (and d!392990 (not c!226473)) b!1375206))

(assert (= (and b!1375206 c!226472) b!1375204))

(assert (= (and b!1375206 (not c!226472)) b!1375205))

(assert (= (or b!1375204 b!1375205) bm!92287))

(assert (= (and bm!92287 c!226474) b!1375209))

(assert (= (and bm!92287 (not c!226474)) b!1375210))

(declare-fun m!1547239 () Bool)

(assert (=> b!1375208 m!1547239))

(declare-fun m!1547241 () Bool)

(assert (=> b!1375210 m!1547241))

(assert (=> d!392990 m!1544989))

(assert (=> d!392990 m!1544989))

(declare-fun m!1547243 () Bool)

(assert (=> d!392990 m!1547243))

(declare-fun m!1547245 () Bool)

(assert (=> bm!92287 m!1547245))

(assert (=> b!1375206 m!1546391))

(assert (=> b!1375206 m!1546393))

(assert (=> b!1375206 m!1546391))

(assert (=> b!1375206 m!1546393))

(declare-fun m!1547247 () Bool)

(assert (=> b!1375206 m!1547247))

(assert (=> b!1375206 m!1547241))

(declare-fun m!1547249 () Bool)

(assert (=> b!1375207 m!1547249))

(assert (=> d!392202 d!392990))

(declare-fun d!392992 () Bool)

(declare-fun lt!456860 () Int)

(assert (=> d!392992 (= lt!456860 (size!11420 (list!5363 (_1!7640 lt!456385))))))

(assert (=> d!392992 (= lt!456860 (size!11423 (c!226062 (_1!7640 lt!456385))))))

(assert (=> d!392992 (= (size!11416 (_1!7640 lt!456385)) lt!456860)))

(declare-fun bs!336198 () Bool)

(assert (= bs!336198 d!392992))

(assert (=> bs!336198 m!1545823))

(assert (=> bs!336198 m!1545823))

(declare-fun m!1547251 () Bool)

(assert (=> bs!336198 m!1547251))

(declare-fun m!1547253 () Bool)

(assert (=> bs!336198 m!1547253))

(assert (=> d!392422 d!392992))

(declare-fun lt!456890 () Option!2673)

(declare-fun lt!456872 () tuple2!13508)

(declare-fun b!1375211 () Bool)

(assert (=> b!1375211 (= lt!456872 (lexRec!282 thiss!19762 rules!2550 (_2!7643 (v!21502 lt!456890))))))

(declare-fun e!878877 () tuple2!13508)

(assert (=> b!1375211 (= e!878877 (tuple2!13509 (prepend!371 (_1!7640 lt!456872) (_1!7643 (v!21502 lt!456890))) (_2!7640 lt!456872)))))

(declare-fun b!1375212 () Bool)

(declare-fun e!878876 () tuple2!13508)

(assert (=> b!1375212 (= e!878876 (tuple2!13509 (BalanceConc!9095 Empty!4577) lt!456142))))

(declare-fun b!1375213 () Bool)

(declare-fun lt!456887 () tuple2!13508)

(declare-fun lt!456862 () Option!2673)

(assert (=> b!1375213 (= lt!456887 (lexRec!282 thiss!19762 rules!2550 (_2!7643 (v!21502 lt!456862))))))

(declare-fun e!878875 () tuple2!13508)

(assert (=> b!1375213 (= e!878875 (tuple2!13509 (prepend!371 (_1!7640 lt!456887) (_1!7643 (v!21502 lt!456862))) (_2!7640 lt!456887)))))

(declare-fun d!392994 () Bool)

(declare-fun e!878878 () Bool)

(assert (=> d!392994 e!878878))

(declare-fun res!619626 () Bool)

(assert (=> d!392994 (=> (not res!619626) (not e!878878))))

(declare-fun lt!456888 () tuple2!13508)

(assert (=> d!392994 (= res!619626 (= (list!5363 (_1!7640 lt!456888)) (list!5363 (_1!7640 (lexRec!282 thiss!19762 rules!2550 lt!456142)))))))

(assert (=> d!392994 (= lt!456888 e!878876)))

(declare-fun c!226475 () Bool)

(declare-fun lt!456885 () Option!2673)

(assert (=> d!392994 (= c!226475 ((_ is Some!2672) lt!456885))))

(assert (=> d!392994 (= lt!456885 (maxPrefixZipperSequenceV2!227 thiss!19762 rules!2550 lt!456142 lt!456142))))

(declare-fun lt!456883 () Unit!20133)

(declare-fun lt!456863 () Unit!20133)

(assert (=> d!392994 (= lt!456883 lt!456863)))

(declare-fun lt!456892 () List!13969)

(declare-fun lt!456891 () List!13969)

(assert (=> d!392994 (isSuffix!260 lt!456892 (++!3598 lt!456891 lt!456892))))

(assert (=> d!392994 (= lt!456863 (lemmaConcatTwoListThenFSndIsSuffix!238 lt!456891 lt!456892))))

(assert (=> d!392994 (= lt!456892 (list!5362 lt!456142))))

(assert (=> d!392994 (= lt!456891 (list!5362 (BalanceConc!9093 Empty!4576)))))

(assert (=> d!392994 (= (lexTailRecV2!415 thiss!19762 rules!2550 lt!456142 (BalanceConc!9093 Empty!4576) lt!456142 (BalanceConc!9095 Empty!4577)) lt!456888)))

(declare-fun b!1375214 () Bool)

(declare-fun lt!456878 () BalanceConc!9092)

(assert (=> b!1375214 (= e!878876 (lexTailRecV2!415 thiss!19762 rules!2550 lt!456142 lt!456878 (_2!7643 (v!21502 lt!456885)) (append!407 (BalanceConc!9095 Empty!4577) (_1!7643 (v!21502 lt!456885)))))))

(declare-fun lt!456886 () tuple2!13508)

(assert (=> b!1375214 (= lt!456886 (lexRec!282 thiss!19762 rules!2550 (_2!7643 (v!21502 lt!456885))))))

(declare-fun lt!456866 () List!13969)

(assert (=> b!1375214 (= lt!456866 (list!5362 (BalanceConc!9093 Empty!4576)))))

(declare-fun lt!456876 () List!13969)

(assert (=> b!1375214 (= lt!456876 (list!5362 (charsOf!1379 (_1!7643 (v!21502 lt!456885)))))))

(declare-fun lt!456870 () List!13969)

(assert (=> b!1375214 (= lt!456870 (list!5362 (_2!7643 (v!21502 lt!456885))))))

(declare-fun lt!456894 () Unit!20133)

(assert (=> b!1375214 (= lt!456894 (lemmaConcatAssociativity!863 lt!456866 lt!456876 lt!456870))))

(assert (=> b!1375214 (= (++!3598 (++!3598 lt!456866 lt!456876) lt!456870) (++!3598 lt!456866 (++!3598 lt!456876 lt!456870)))))

(declare-fun lt!456875 () Unit!20133)

(assert (=> b!1375214 (= lt!456875 lt!456894)))

(assert (=> b!1375214 (= lt!456862 (maxPrefixZipperSequence!555 thiss!19762 rules!2550 lt!456142))))

(declare-fun c!226476 () Bool)

(assert (=> b!1375214 (= c!226476 ((_ is Some!2672) lt!456862))))

(assert (=> b!1375214 (= (lexRec!282 thiss!19762 rules!2550 lt!456142) e!878875)))

(declare-fun lt!456868 () Unit!20133)

(declare-fun Unit!20146 () Unit!20133)

(assert (=> b!1375214 (= lt!456868 Unit!20146)))

(declare-fun lt!456873 () List!13970)

(assert (=> b!1375214 (= lt!456873 (list!5363 (BalanceConc!9095 Empty!4577)))))

(declare-fun lt!456893 () List!13970)

(assert (=> b!1375214 (= lt!456893 (Cons!13904 (_1!7643 (v!21502 lt!456885)) Nil!13904))))

(declare-fun lt!456877 () List!13970)

(assert (=> b!1375214 (= lt!456877 (list!5363 (_1!7640 lt!456886)))))

(declare-fun lt!456869 () Unit!20133)

(assert (=> b!1375214 (= lt!456869 (lemmaConcatAssociativity!864 lt!456873 lt!456893 lt!456877))))

(assert (=> b!1375214 (= (++!3601 (++!3601 lt!456873 lt!456893) lt!456877) (++!3601 lt!456873 (++!3601 lt!456893 lt!456877)))))

(declare-fun lt!456864 () Unit!20133)

(assert (=> b!1375214 (= lt!456864 lt!456869)))

(declare-fun lt!456880 () List!13969)

(assert (=> b!1375214 (= lt!456880 (++!3598 (list!5362 (BalanceConc!9093 Empty!4576)) (list!5362 (charsOf!1379 (_1!7643 (v!21502 lt!456885))))))))

(declare-fun lt!456882 () List!13969)

(assert (=> b!1375214 (= lt!456882 (list!5362 (_2!7643 (v!21502 lt!456885))))))

(declare-fun lt!456865 () List!13970)

(assert (=> b!1375214 (= lt!456865 (list!5363 (append!407 (BalanceConc!9095 Empty!4577) (_1!7643 (v!21502 lt!456885)))))))

(declare-fun lt!456861 () Unit!20133)

(assert (=> b!1375214 (= lt!456861 (lemmaLexThenLexPrefix!197 thiss!19762 rules!2550 lt!456880 lt!456882 lt!456865 (list!5363 (_1!7640 lt!456886)) (list!5362 (_2!7640 lt!456886))))))

(assert (=> b!1375214 (= (lexList!620 thiss!19762 rules!2550 lt!456880) (tuple2!13507 lt!456865 Nil!13903))))

(declare-fun lt!456879 () Unit!20133)

(assert (=> b!1375214 (= lt!456879 lt!456861)))

(declare-fun lt!456867 () BalanceConc!9092)

(assert (=> b!1375214 (= lt!456867 (++!3599 (BalanceConc!9093 Empty!4576) (charsOf!1379 (_1!7643 (v!21502 lt!456885)))))))

(assert (=> b!1375214 (= lt!456890 (maxPrefixZipperSequence!555 thiss!19762 rules!2550 lt!456867))))

(declare-fun c!226477 () Bool)

(assert (=> b!1375214 (= c!226477 ((_ is Some!2672) lt!456890))))

(assert (=> b!1375214 (= (lexRec!282 thiss!19762 rules!2550 (++!3599 (BalanceConc!9093 Empty!4576) (charsOf!1379 (_1!7643 (v!21502 lt!456885))))) e!878877)))

(declare-fun lt!456871 () Unit!20133)

(declare-fun Unit!20147 () Unit!20133)

(assert (=> b!1375214 (= lt!456871 Unit!20147)))

(assert (=> b!1375214 (= lt!456878 (++!3599 (BalanceConc!9093 Empty!4576) (charsOf!1379 (_1!7643 (v!21502 lt!456885)))))))

(declare-fun lt!456884 () List!13969)

(assert (=> b!1375214 (= lt!456884 (list!5362 lt!456878))))

(declare-fun lt!456881 () List!13969)

(assert (=> b!1375214 (= lt!456881 (list!5362 (_2!7643 (v!21502 lt!456885))))))

(declare-fun lt!456874 () Unit!20133)

(assert (=> b!1375214 (= lt!456874 (lemmaConcatTwoListThenFSndIsSuffix!238 lt!456884 lt!456881))))

(assert (=> b!1375214 (isSuffix!260 lt!456881 (++!3598 lt!456884 lt!456881))))

(declare-fun lt!456889 () Unit!20133)

(assert (=> b!1375214 (= lt!456889 lt!456874)))

(declare-fun b!1375215 () Bool)

(assert (=> b!1375215 (= e!878877 (tuple2!13509 (BalanceConc!9095 Empty!4577) lt!456867))))

(declare-fun b!1375216 () Bool)

(assert (=> b!1375216 (= e!878878 (= (list!5362 (_2!7640 lt!456888)) (list!5362 (_2!7640 (lexRec!282 thiss!19762 rules!2550 lt!456142)))))))

(declare-fun b!1375217 () Bool)

(assert (=> b!1375217 (= e!878875 (tuple2!13509 (BalanceConc!9095 Empty!4577) lt!456142))))

(assert (= (and d!392994 c!226475) b!1375214))

(assert (= (and d!392994 (not c!226475)) b!1375212))

(assert (= (and b!1375214 c!226476) b!1375213))

(assert (= (and b!1375214 (not c!226476)) b!1375217))

(assert (= (and b!1375214 c!226477) b!1375211))

(assert (= (and b!1375214 (not c!226477)) b!1375215))

(assert (= (and d!392994 res!619626) b!1375216))

(declare-fun m!1547329 () Bool)

(assert (=> b!1375216 m!1547329))

(declare-fun m!1547333 () Bool)

(assert (=> b!1375216 m!1547333))

(declare-fun m!1547337 () Bool)

(assert (=> b!1375216 m!1547337))

(declare-fun m!1547341 () Bool)

(assert (=> b!1375214 m!1547341))

(declare-fun m!1547343 () Bool)

(assert (=> b!1375214 m!1547343))

(declare-fun m!1547345 () Bool)

(assert (=> b!1375214 m!1547345))

(declare-fun m!1547353 () Bool)

(assert (=> b!1375214 m!1547353))

(declare-fun m!1547355 () Bool)

(assert (=> b!1375214 m!1547355))

(declare-fun m!1547359 () Bool)

(assert (=> b!1375214 m!1547359))

(assert (=> b!1375214 m!1547353))

(declare-fun m!1547361 () Bool)

(assert (=> b!1375214 m!1547361))

(declare-fun m!1547363 () Bool)

(assert (=> b!1375214 m!1547363))

(declare-fun m!1547365 () Bool)

(assert (=> b!1375214 m!1547365))

(assert (=> b!1375214 m!1547353))

(declare-fun m!1547367 () Bool)

(assert (=> b!1375214 m!1547367))

(declare-fun m!1547369 () Bool)

(assert (=> b!1375214 m!1547369))

(assert (=> b!1375214 m!1547039))

(assert (=> b!1375214 m!1547041))

(declare-fun m!1547371 () Bool)

(assert (=> b!1375214 m!1547371))

(declare-fun m!1547373 () Bool)

(assert (=> b!1375214 m!1547373))

(declare-fun m!1547375 () Bool)

(assert (=> b!1375214 m!1547375))

(declare-fun m!1547377 () Bool)

(assert (=> b!1375214 m!1547377))

(declare-fun m!1547379 () Bool)

(assert (=> b!1375214 m!1547379))

(declare-fun m!1547381 () Bool)

(assert (=> b!1375214 m!1547381))

(declare-fun m!1547383 () Bool)

(assert (=> b!1375214 m!1547383))

(assert (=> b!1375214 m!1547377))

(assert (=> b!1375214 m!1547041))

(declare-fun m!1547389 () Bool)

(assert (=> b!1375214 m!1547389))

(declare-fun m!1547391 () Bool)

(assert (=> b!1375214 m!1547391))

(declare-fun m!1547393 () Bool)

(assert (=> b!1375214 m!1547393))

(assert (=> b!1375214 m!1547393))

(assert (=> b!1375214 m!1547389))

(assert (=> b!1375214 m!1547343))

(declare-fun m!1547395 () Bool)

(assert (=> b!1375214 m!1547395))

(declare-fun m!1547399 () Bool)

(assert (=> b!1375214 m!1547399))

(declare-fun m!1547401 () Bool)

(assert (=> b!1375214 m!1547401))

(declare-fun m!1547403 () Bool)

(assert (=> b!1375214 m!1547403))

(declare-fun m!1547405 () Bool)

(assert (=> b!1375214 m!1547405))

(declare-fun m!1547407 () Bool)

(assert (=> b!1375214 m!1547407))

(assert (=> b!1375214 m!1547401))

(assert (=> b!1375214 m!1547393))

(assert (=> b!1375214 m!1547405))

(assert (=> b!1375214 m!1547395))

(assert (=> b!1375214 m!1547333))

(assert (=> b!1375214 m!1547345))

(declare-fun m!1547409 () Bool)

(assert (=> b!1375214 m!1547409))

(assert (=> b!1375214 m!1547371))

(declare-fun m!1547411 () Bool)

(assert (=> b!1375214 m!1547411))

(assert (=> b!1375214 m!1547341))

(declare-fun m!1547413 () Bool)

(assert (=> b!1375214 m!1547413))

(declare-fun m!1547415 () Bool)

(assert (=> b!1375213 m!1547415))

(declare-fun m!1547417 () Bool)

(assert (=> b!1375213 m!1547417))

(declare-fun m!1547419 () Bool)

(assert (=> d!392994 m!1547419))

(assert (=> d!392994 m!1544831))

(declare-fun m!1547421 () Bool)

(assert (=> d!392994 m!1547421))

(declare-fun m!1547423 () Bool)

(assert (=> d!392994 m!1547423))

(assert (=> d!392994 m!1547333))

(assert (=> d!392994 m!1547041))

(declare-fun m!1547425 () Bool)

(assert (=> d!392994 m!1547425))

(assert (=> d!392994 m!1547425))

(declare-fun m!1547427 () Bool)

(assert (=> d!392994 m!1547427))

(declare-fun m!1547429 () Bool)

(assert (=> d!392994 m!1547429))

(declare-fun m!1547431 () Bool)

(assert (=> b!1375211 m!1547431))

(declare-fun m!1547433 () Bool)

(assert (=> b!1375211 m!1547433))

(assert (=> d!392422 d!392994))

(declare-fun d!393004 () Bool)

(assert (=> d!393004 (= (head!2479 (map!3071 rules!2550 lambda!58378)) (h!19307 (map!3071 rules!2550 lambda!58378)))))

(assert (=> b!1374086 d!393004))

(assert (=> b!1374135 d!392586))

(assert (=> b!1374135 d!392588))

(declare-fun d!393006 () Bool)

(assert (=> d!393006 (= (inv!18258 (tag!2669 (h!19306 (t!121642 rules!2550)))) (= (mod (str.len (value!78231 (tag!2669 (h!19306 (t!121642 rules!2550))))) 2) 0))))

(assert (=> b!1374223 d!393006))

(declare-fun d!393010 () Bool)

(declare-fun res!619630 () Bool)

(declare-fun e!878879 () Bool)

(assert (=> d!393010 (=> (not res!619630) (not e!878879))))

(assert (=> d!393010 (= res!619630 (semiInverseModEq!930 (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toValue!3678 (transformation!2407 (h!19306 (t!121642 rules!2550))))))))

(assert (=> d!393010 (= (inv!18262 (transformation!2407 (h!19306 (t!121642 rules!2550)))) e!878879)))

(declare-fun b!1375218 () Bool)

(assert (=> b!1375218 (= e!878879 (equivClasses!889 (toChars!3537 (transformation!2407 (h!19306 (t!121642 rules!2550)))) (toValue!3678 (transformation!2407 (h!19306 (t!121642 rules!2550))))))))

(assert (= (and d!393010 res!619630) b!1375218))

(declare-fun m!1547435 () Bool)

(assert (=> d!393010 m!1547435))

(declare-fun m!1547437 () Bool)

(assert (=> b!1375218 m!1547437))

(assert (=> b!1374223 d!393010))

(declare-fun d!393012 () Bool)

(assert (=> d!393012 (= (inv!15 (value!78232 t1!34)) (= (charsToBigInt!0 (text!17928 (value!78232 t1!34)) 0) (value!78227 (value!78232 t1!34))))))

(declare-fun bs!336202 () Bool)

(assert (= bs!336202 d!393012))

(declare-fun m!1547439 () Bool)

(assert (=> bs!336202 m!1547439))

(assert (=> b!1374017 d!393012))

(declare-fun d!393014 () Bool)

(declare-fun nullableFct!283 (Regex!3721) Bool)

(assert (=> d!393014 (= (nullable!1201 (regex!2407 (rule!4164 t2!34))) (nullableFct!283 (regex!2407 (rule!4164 t2!34))))))

(declare-fun bs!336203 () Bool)

(assert (= bs!336203 d!393014))

(declare-fun m!1547441 () Bool)

(assert (=> bs!336203 m!1547441))

(assert (=> b!1374095 d!393014))

(declare-fun d!393016 () Bool)

(declare-fun lt!456902 () Int)

(assert (=> d!393016 (>= lt!456902 0)))

(declare-fun e!878884 () Int)

(assert (=> d!393016 (= lt!456902 e!878884)))

(declare-fun c!226479 () Bool)

(assert (=> d!393016 (= c!226479 ((_ is Nil!13903) (_2!7641 (get!4350 lt!456400))))))

(assert (=> d!393016 (= (size!11415 (_2!7641 (get!4350 lt!456400))) lt!456902)))

(declare-fun b!1375228 () Bool)

(assert (=> b!1375228 (= e!878884 0)))

(declare-fun b!1375229 () Bool)

(assert (=> b!1375229 (= e!878884 (+ 1 (size!11415 (t!121640 (_2!7641 (get!4350 lt!456400))))))))

(assert (= (and d!393016 c!226479) b!1375228))

(assert (= (and d!393016 (not c!226479)) b!1375229))

(declare-fun m!1547443 () Bool)

(assert (=> b!1375229 m!1547443))

(assert (=> b!1374186 d!393016))

(assert (=> b!1374186 d!392660))

(declare-fun d!393018 () Bool)

(declare-fun lt!456903 () Int)

(assert (=> d!393018 (>= lt!456903 0)))

(declare-fun e!878885 () Int)

(assert (=> d!393018 (= lt!456903 e!878885)))

(declare-fun c!226480 () Bool)

(assert (=> d!393018 (= c!226480 ((_ is Nil!13903) lt!456133))))

(assert (=> d!393018 (= (size!11415 lt!456133) lt!456903)))

(declare-fun b!1375230 () Bool)

(assert (=> b!1375230 (= e!878885 0)))

(declare-fun b!1375231 () Bool)

(assert (=> b!1375231 (= e!878885 (+ 1 (size!11415 (t!121640 lt!456133))))))

(assert (= (and d!393018 c!226480) b!1375230))

(assert (= (and d!393018 (not c!226480)) b!1375231))

(declare-fun m!1547445 () Bool)

(assert (=> b!1375231 m!1547445))

(assert (=> b!1374186 d!393018))

(declare-fun d!393020 () Bool)

(declare-fun c!226484 () Bool)

(assert (=> d!393020 (= c!226484 ((_ is Node!4576) (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))))))

(declare-fun e!878893 () Bool)

(assert (=> d!393020 (= (inv!18263 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))) e!878893)))

(declare-fun b!1375243 () Bool)

(declare-fun inv!18269 (Conc!4576) Bool)

(assert (=> b!1375243 (= e!878893 (inv!18269 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))))))

(declare-fun b!1375244 () Bool)

(declare-fun e!878894 () Bool)

(assert (=> b!1375244 (= e!878893 e!878894)))

(declare-fun res!619643 () Bool)

(assert (=> b!1375244 (= res!619643 (not ((_ is Leaf!6976) (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))))))))

(assert (=> b!1375244 (=> res!619643 e!878894)))

(declare-fun b!1375245 () Bool)

(declare-fun inv!18270 (Conc!4576) Bool)

(assert (=> b!1375245 (= e!878894 (inv!18270 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))))))

(assert (= (and d!393020 c!226484) b!1375243))

(assert (= (and d!393020 (not c!226484)) b!1375244))

(assert (= (and b!1375244 (not res!619643)) b!1375245))

(declare-fun m!1547513 () Bool)

(assert (=> b!1375243 m!1547513))

(declare-fun m!1547515 () Bool)

(assert (=> b!1375245 m!1547515))

(assert (=> b!1374161 d!393020))

(declare-fun d!393030 () Bool)

(declare-fun c!226487 () Bool)

(assert (=> d!393030 (= c!226487 ((_ is Nil!13903) lt!456122))))

(declare-fun e!878897 () (InoxSet C!7732))

(assert (=> d!393030 (= (content!2037 lt!456122) e!878897)))

(declare-fun b!1375250 () Bool)

(assert (=> b!1375250 (= e!878897 ((as const (Array C!7732 Bool)) false))))

(declare-fun b!1375251 () Bool)

(assert (=> b!1375251 (= e!878897 ((_ map or) (store ((as const (Array C!7732 Bool)) false) (h!19304 lt!456122) true) (content!2037 (t!121640 lt!456122))))))

(assert (= (and d!393030 c!226487) b!1375250))

(assert (= (and d!393030 (not c!226487)) b!1375251))

(declare-fun m!1547519 () Bool)

(assert (=> b!1375251 m!1547519))

(declare-fun m!1547521 () Bool)

(assert (=> b!1375251 m!1547521))

(assert (=> d!392234 d!393030))

(declare-fun d!393034 () Bool)

(declare-fun lt!456906 () Bool)

(assert (=> d!393034 (= lt!456906 (select (content!2038 rules!2550) (rule!4164 (_1!7641 (get!4350 lt!456377)))))))

(declare-fun e!878898 () Bool)

(assert (=> d!393034 (= lt!456906 e!878898)))

(declare-fun res!619644 () Bool)

(assert (=> d!393034 (=> (not res!619644) (not e!878898))))

(assert (=> d!393034 (= res!619644 ((_ is Cons!13905) rules!2550))))

(assert (=> d!393034 (= (contains!2608 rules!2550 (rule!4164 (_1!7641 (get!4350 lt!456377)))) lt!456906)))

(declare-fun b!1375252 () Bool)

(declare-fun e!878899 () Bool)

(assert (=> b!1375252 (= e!878898 e!878899)))

(declare-fun res!619645 () Bool)

(assert (=> b!1375252 (=> res!619645 e!878899)))

(assert (=> b!1375252 (= res!619645 (= (h!19306 rules!2550) (rule!4164 (_1!7641 (get!4350 lt!456377)))))))

(declare-fun b!1375253 () Bool)

(assert (=> b!1375253 (= e!878899 (contains!2608 (t!121642 rules!2550) (rule!4164 (_1!7641 (get!4350 lt!456377)))))))

(assert (= (and d!393034 res!619644) b!1375252))

(assert (= (and b!1375252 (not res!619645)) b!1375253))

(assert (=> d!393034 m!1545215))

(declare-fun m!1547523 () Bool)

(assert (=> d!393034 m!1547523))

(declare-fun m!1547525 () Bool)

(assert (=> b!1375253 m!1547525))

(assert (=> b!1374124 d!393034))

(assert (=> b!1374124 d!392640))

(declare-fun d!393036 () Bool)

(declare-fun lt!456909 () Int)

(assert (=> d!393036 (= lt!456909 (size!11415 (list!5362 lt!456132)))))

(assert (=> d!393036 (= lt!456909 (size!11422 (c!226060 lt!456132)))))

(assert (=> d!393036 (= (size!11410 lt!456132) lt!456909)))

(declare-fun bs!336209 () Bool)

(assert (= bs!336209 d!393036))

(assert (=> bs!336209 m!1544811))

(assert (=> bs!336209 m!1544811))

(assert (=> bs!336209 m!1547231))

(assert (=> bs!336209 m!1547249))

(assert (=> b!1373730 d!393036))

(assert (=> d!392238 d!392338))

(declare-fun lt!456910 () Bool)

(declare-fun d!393038 () Bool)

(assert (=> d!393038 (= lt!456910 (isEmpty!8392 (list!5362 (_2!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34)))))))))

(assert (=> d!393038 (= lt!456910 (isEmpty!8395 (c!226060 (_2!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34)))))))))

(assert (=> d!393038 (= (isEmpty!8389 (_2!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34))))) lt!456910)))

(declare-fun bs!336210 () Bool)

(assert (= bs!336210 d!393038))

(declare-fun m!1547527 () Bool)

(assert (=> bs!336210 m!1547527))

(assert (=> bs!336210 m!1547527))

(declare-fun m!1547529 () Bool)

(assert (=> bs!336210 m!1547529))

(declare-fun m!1547531 () Bool)

(assert (=> bs!336210 m!1547531))

(assert (=> b!1373757 d!393038))

(declare-fun b!1375254 () Bool)

(declare-fun e!878900 () Bool)

(declare-fun e!878901 () Bool)

(assert (=> b!1375254 (= e!878900 e!878901)))

(declare-fun lt!456911 () tuple2!13508)

(declare-fun res!619648 () Bool)

(assert (=> b!1375254 (= res!619648 (< (size!11410 (_2!7640 lt!456911)) (size!11410 (print!868 thiss!19762 (singletonSeq!1040 t2!34)))))))

(assert (=> b!1375254 (=> (not res!619648) (not e!878901))))

(declare-fun b!1375256 () Bool)

(declare-fun res!619646 () Bool)

(declare-fun e!878902 () Bool)

(assert (=> b!1375256 (=> (not res!619646) (not e!878902))))

(assert (=> b!1375256 (= res!619646 (= (list!5363 (_1!7640 lt!456911)) (_1!7639 (lexList!620 thiss!19762 rules!2550 (list!5362 (print!868 thiss!19762 (singletonSeq!1040 t2!34)))))))))

(declare-fun b!1375257 () Bool)

(assert (=> b!1375257 (= e!878900 (= (_2!7640 lt!456911) (print!868 thiss!19762 (singletonSeq!1040 t2!34))))))

(declare-fun b!1375258 () Bool)

(assert (=> b!1375258 (= e!878901 (not (isEmpty!8396 (_1!7640 lt!456911))))))

(declare-fun d!393040 () Bool)

(assert (=> d!393040 e!878902))

(declare-fun res!619647 () Bool)

(assert (=> d!393040 (=> (not res!619647) (not e!878902))))

(assert (=> d!393040 (= res!619647 e!878900)))

(declare-fun c!226488 () Bool)

(assert (=> d!393040 (= c!226488 (> (size!11416 (_1!7640 lt!456911)) 0))))

(assert (=> d!393040 (= lt!456911 (lexTailRecV2!415 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34)) (BalanceConc!9093 Empty!4576) (print!868 thiss!19762 (singletonSeq!1040 t2!34)) (BalanceConc!9095 Empty!4577)))))

(assert (=> d!393040 (= (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34))) lt!456911)))

(declare-fun b!1375255 () Bool)

(assert (=> b!1375255 (= e!878902 (= (list!5362 (_2!7640 lt!456911)) (_2!7639 (lexList!620 thiss!19762 rules!2550 (list!5362 (print!868 thiss!19762 (singletonSeq!1040 t2!34)))))))))

(assert (= (and d!393040 c!226488) b!1375254))

(assert (= (and d!393040 (not c!226488)) b!1375257))

(assert (= (and b!1375254 res!619648) b!1375258))

(assert (= (and d!393040 res!619647) b!1375256))

(assert (= (and b!1375256 res!619646) b!1375255))

(declare-fun m!1547533 () Bool)

(assert (=> b!1375258 m!1547533))

(declare-fun m!1547535 () Bool)

(assert (=> b!1375256 m!1547535))

(assert (=> b!1375256 m!1544859))

(declare-fun m!1547537 () Bool)

(assert (=> b!1375256 m!1547537))

(assert (=> b!1375256 m!1547537))

(declare-fun m!1547539 () Bool)

(assert (=> b!1375256 m!1547539))

(declare-fun m!1547541 () Bool)

(assert (=> b!1375255 m!1547541))

(assert (=> b!1375255 m!1544859))

(assert (=> b!1375255 m!1547537))

(assert (=> b!1375255 m!1547537))

(assert (=> b!1375255 m!1547539))

(declare-fun m!1547543 () Bool)

(assert (=> b!1375254 m!1547543))

(assert (=> b!1375254 m!1544859))

(declare-fun m!1547545 () Bool)

(assert (=> b!1375254 m!1547545))

(declare-fun m!1547547 () Bool)

(assert (=> d!393040 m!1547547))

(assert (=> d!393040 m!1544859))

(assert (=> d!393040 m!1544859))

(declare-fun m!1547549 () Bool)

(assert (=> d!393040 m!1547549))

(assert (=> b!1373757 d!393040))

(assert (=> b!1373757 d!392424))

(assert (=> b!1373757 d!392426))

(declare-fun d!393042 () Bool)

(declare-fun c!226489 () Bool)

(assert (=> d!393042 (= c!226489 ((_ is Empty!4576) (c!226060 lt!456142)))))

(declare-fun e!878903 () List!13969)

(assert (=> d!393042 (= (list!5366 (c!226060 lt!456142)) e!878903)))

(declare-fun b!1375262 () Bool)

(declare-fun e!878904 () List!13969)

(assert (=> b!1375262 (= e!878904 (++!3598 (list!5366 (left!11893 (c!226060 lt!456142))) (list!5366 (right!12223 (c!226060 lt!456142)))))))

(declare-fun b!1375261 () Bool)

(assert (=> b!1375261 (= e!878904 (list!5369 (xs!7303 (c!226060 lt!456142))))))

(declare-fun b!1375259 () Bool)

(assert (=> b!1375259 (= e!878903 Nil!13903)))

(declare-fun b!1375260 () Bool)

(assert (=> b!1375260 (= e!878903 e!878904)))

(declare-fun c!226490 () Bool)

(assert (=> b!1375260 (= c!226490 ((_ is Leaf!6976) (c!226060 lt!456142)))))

(assert (= (and d!393042 c!226489) b!1375259))

(assert (= (and d!393042 (not c!226489)) b!1375260))

(assert (= (and b!1375260 c!226490) b!1375261))

(assert (= (and b!1375260 (not c!226490)) b!1375262))

(declare-fun m!1547551 () Bool)

(assert (=> b!1375262 m!1547551))

(declare-fun m!1547553 () Bool)

(assert (=> b!1375262 m!1547553))

(assert (=> b!1375262 m!1547551))

(assert (=> b!1375262 m!1547553))

(declare-fun m!1547555 () Bool)

(assert (=> b!1375262 m!1547555))

(declare-fun m!1547557 () Bool)

(assert (=> b!1375261 m!1547557))

(assert (=> d!392332 d!393042))

(declare-fun d!393044 () Bool)

(declare-fun lt!456913 () Bool)

(assert (=> d!393044 (= lt!456913 (select (content!2038 rules!2550) (rule!4164 (_1!7641 (get!4350 lt!456400)))))))

(declare-fun e!878905 () Bool)

(assert (=> d!393044 (= lt!456913 e!878905)))

(declare-fun res!619649 () Bool)

(assert (=> d!393044 (=> (not res!619649) (not e!878905))))

(assert (=> d!393044 (= res!619649 ((_ is Cons!13905) rules!2550))))

(assert (=> d!393044 (= (contains!2608 rules!2550 (rule!4164 (_1!7641 (get!4350 lt!456400)))) lt!456913)))

(declare-fun b!1375263 () Bool)

(declare-fun e!878906 () Bool)

(assert (=> b!1375263 (= e!878905 e!878906)))

(declare-fun res!619650 () Bool)

(assert (=> b!1375263 (=> res!619650 e!878906)))

(assert (=> b!1375263 (= res!619650 (= (h!19306 rules!2550) (rule!4164 (_1!7641 (get!4350 lt!456400)))))))

(declare-fun b!1375264 () Bool)

(assert (=> b!1375264 (= e!878906 (contains!2608 (t!121642 rules!2550) (rule!4164 (_1!7641 (get!4350 lt!456400)))))))

(assert (= (and d!393044 res!619649) b!1375263))

(assert (= (and b!1375263 (not res!619650)) b!1375264))

(assert (=> d!393044 m!1545215))

(declare-fun m!1547561 () Bool)

(assert (=> d!393044 m!1547561))

(declare-fun m!1547563 () Bool)

(assert (=> b!1375264 m!1547563))

(assert (=> b!1374182 d!393044))

(assert (=> b!1374182 d!392660))

(declare-fun d!393048 () Bool)

(assert (=> d!393048 (= (inv!18264 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))) (isBalanced!1351 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))))))

(declare-fun bs!336219 () Bool)

(assert (= bs!336219 d!393048))

(declare-fun m!1547565 () Bool)

(assert (=> bs!336219 m!1547565))

(assert (=> tb!72321 d!393048))

(declare-fun d!393050 () Bool)

(assert (=> d!393050 (= (list!5362 (_2!7640 lt!456282)) (list!5366 (c!226060 (_2!7640 lt!456282))))))

(declare-fun bs!336221 () Bool)

(assert (= bs!336221 d!393050))

(declare-fun m!1547569 () Bool)

(assert (=> bs!336221 m!1547569))

(assert (=> b!1373868 d!393050))

(assert (=> b!1373868 d!392432))

(assert (=> b!1373868 d!392434))

(declare-fun d!393052 () Bool)

(declare-fun charsToInt!0 (List!13968) (_ BitVec 32))

(assert (=> d!393052 (= (inv!16 (value!78232 t2!34)) (= (charsToInt!0 (text!17926 (value!78232 t2!34))) (value!78223 (value!78232 t2!34))))))

(declare-fun bs!336224 () Bool)

(assert (= bs!336224 d!393052))

(declare-fun m!1547585 () Bool)

(assert (=> bs!336224 m!1547585))

(assert (=> b!1373960 d!393052))

(declare-fun d!393062 () Bool)

(declare-fun lt!456953 () Bool)

(assert (=> d!393062 (= lt!456953 (isEmpty!8397 (list!5363 (_1!7640 lt!456385))))))

(assert (=> d!393062 (= lt!456953 (isEmpty!8401 (c!226062 (_1!7640 lt!456385))))))

(assert (=> d!393062 (= (isEmpty!8396 (_1!7640 lt!456385)) lt!456953)))

(declare-fun bs!336225 () Bool)

(assert (= bs!336225 d!393062))

(assert (=> bs!336225 m!1545823))

(assert (=> bs!336225 m!1545823))

(declare-fun m!1547587 () Bool)

(assert (=> bs!336225 m!1547587))

(declare-fun m!1547589 () Bool)

(assert (=> bs!336225 m!1547589))

(assert (=> b!1374172 d!393062))

(declare-fun bs!336226 () Bool)

(declare-fun d!393064 () Bool)

(assert (= bs!336226 (and d!393064 d!392730)))

(declare-fun lambda!58486 () Int)

(assert (=> bs!336226 (= (= (toValue!3678 (transformation!2407 (rule!4164 t2!34))) (toValue!3678 (transformation!2407 (rule!4164 t1!34)))) (= lambda!58486 lambda!58464))))

(assert (=> d!393064 true))

(assert (=> d!393064 (< (dynLambda!6347 order!8511 (toValue!3678 (transformation!2407 (rule!4164 t2!34)))) (dynLambda!6350 order!8513 lambda!58486))))

(assert (=> d!393064 (= (equivClasses!889 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (toValue!3678 (transformation!2407 (rule!4164 t2!34)))) (Forall2!443 lambda!58486))))

(declare-fun bs!336227 () Bool)

(assert (= bs!336227 d!393064))

(declare-fun m!1547629 () Bool)

(assert (=> bs!336227 m!1547629))

(assert (=> b!1373758 d!393064))

(declare-fun b!1375274 () Bool)

(declare-fun e!878913 () Bool)

(declare-fun lt!456954 () tuple2!13506)

(assert (=> b!1375274 (= e!878913 (= (_2!7639 lt!456954) (_2!7641 (v!21488 lt!456324))))))

(declare-fun b!1375275 () Bool)

(declare-fun e!878915 () tuple2!13506)

(declare-fun lt!456956 () Option!2672)

(declare-fun lt!456955 () tuple2!13506)

(assert (=> b!1375275 (= e!878915 (tuple2!13507 (Cons!13904 (_1!7641 (v!21488 lt!456956)) (_1!7639 lt!456955)) (_2!7639 lt!456955)))))

(assert (=> b!1375275 (= lt!456955 (lexList!620 thiss!19762 rules!2550 (_2!7641 (v!21488 lt!456956))))))

(declare-fun b!1375276 () Bool)

(declare-fun e!878914 () Bool)

(assert (=> b!1375276 (= e!878914 (not (isEmpty!8397 (_1!7639 lt!456954))))))

(declare-fun d!393066 () Bool)

(assert (=> d!393066 e!878913))

(declare-fun c!226494 () Bool)

(assert (=> d!393066 (= c!226494 (> (size!11420 (_1!7639 lt!456954)) 0))))

(assert (=> d!393066 (= lt!456954 e!878915)))

(declare-fun c!226495 () Bool)

(assert (=> d!393066 (= c!226495 ((_ is Some!2671) lt!456956))))

(assert (=> d!393066 (= lt!456956 (maxPrefix!1084 thiss!19762 rules!2550 (_2!7641 (v!21488 lt!456324))))))

(assert (=> d!393066 (= (lexList!620 thiss!19762 rules!2550 (_2!7641 (v!21488 lt!456324))) lt!456954)))

(declare-fun b!1375277 () Bool)

(assert (=> b!1375277 (= e!878915 (tuple2!13507 Nil!13904 (_2!7641 (v!21488 lt!456324))))))

(declare-fun b!1375278 () Bool)

(assert (=> b!1375278 (= e!878913 e!878914)))

(declare-fun res!619654 () Bool)

(assert (=> b!1375278 (= res!619654 (< (size!11415 (_2!7639 lt!456954)) (size!11415 (_2!7641 (v!21488 lt!456324)))))))

(assert (=> b!1375278 (=> (not res!619654) (not e!878914))))

(assert (= (and d!393066 c!226495) b!1375275))

(assert (= (and d!393066 (not c!226495)) b!1375277))

(assert (= (and d!393066 c!226494) b!1375278))

(assert (= (and d!393066 (not c!226494)) b!1375274))

(assert (= (and b!1375278 res!619654) b!1375276))

(declare-fun m!1547657 () Bool)

(assert (=> b!1375275 m!1547657))

(declare-fun m!1547661 () Bool)

(assert (=> b!1375276 m!1547661))

(declare-fun m!1547663 () Bool)

(assert (=> d!393066 m!1547663))

(declare-fun m!1547665 () Bool)

(assert (=> d!393066 m!1547665))

(declare-fun m!1547669 () Bool)

(assert (=> b!1375278 m!1547669))

(declare-fun m!1547673 () Bool)

(assert (=> b!1375278 m!1547673))

(assert (=> b!1373940 d!393066))

(declare-fun d!393068 () Bool)

(declare-fun lt!456957 () Bool)

(assert (=> d!393068 (= lt!456957 (select (content!2038 (t!121642 rules!2550)) (rule!4164 t1!34)))))

(declare-fun e!878916 () Bool)

(assert (=> d!393068 (= lt!456957 e!878916)))

(declare-fun res!619655 () Bool)

(assert (=> d!393068 (=> (not res!619655) (not e!878916))))

(assert (=> d!393068 (= res!619655 ((_ is Cons!13905) (t!121642 rules!2550)))))

(assert (=> d!393068 (= (contains!2608 (t!121642 rules!2550) (rule!4164 t1!34)) lt!456957)))

(declare-fun b!1375279 () Bool)

(declare-fun e!878917 () Bool)

(assert (=> b!1375279 (= e!878916 e!878917)))

(declare-fun res!619656 () Bool)

(assert (=> b!1375279 (=> res!619656 e!878917)))

(assert (=> b!1375279 (= res!619656 (= (h!19306 (t!121642 rules!2550)) (rule!4164 t1!34)))))

(declare-fun b!1375280 () Bool)

(assert (=> b!1375280 (= e!878917 (contains!2608 (t!121642 (t!121642 rules!2550)) (rule!4164 t1!34)))))

(assert (= (and d!393068 res!619655) b!1375279))

(assert (= (and b!1375279 (not res!619656)) b!1375280))

(assert (=> d!393068 m!1547105))

(declare-fun m!1547689 () Bool)

(assert (=> d!393068 m!1547689))

(declare-fun m!1547693 () Bool)

(assert (=> b!1375280 m!1547693))

(assert (=> b!1374180 d!393068))

(declare-fun b!1375283 () Bool)

(declare-fun res!619659 () Bool)

(declare-fun e!878923 () Bool)

(assert (=> b!1375283 (=> (not res!619659) (not e!878923))))

(declare-fun call!92293 () Bool)

(assert (=> b!1375283 (= res!619659 (not call!92293))))

(declare-fun b!1375284 () Bool)

(declare-fun e!878922 () Bool)

(assert (=> b!1375284 (= e!878922 (not (= (head!2475 lt!456122) (c!226061 (h!19307 (map!3071 rules!2550 lambda!58378))))))))

(declare-fun b!1375285 () Bool)

(declare-fun e!878918 () Bool)

(declare-fun lt!456958 () Bool)

(assert (=> b!1375285 (= e!878918 (not lt!456958))))

(declare-fun b!1375286 () Bool)

(declare-fun res!619662 () Bool)

(assert (=> b!1375286 (=> res!619662 e!878922)))

(assert (=> b!1375286 (= res!619662 (not (isEmpty!8392 (tail!1987 lt!456122))))))

(declare-fun b!1375287 () Bool)

(declare-fun e!878921 () Bool)

(assert (=> b!1375287 (= e!878921 (nullable!1201 (h!19307 (map!3071 rules!2550 lambda!58378))))))

(declare-fun b!1375288 () Bool)

(assert (=> b!1375288 (= e!878921 (matchR!1714 (derivativeStep!958 (h!19307 (map!3071 rules!2550 lambda!58378)) (head!2475 lt!456122)) (tail!1987 lt!456122)))))

(declare-fun b!1375289 () Bool)

(declare-fun e!878925 () Bool)

(assert (=> b!1375289 (= e!878925 e!878918)))

(declare-fun c!226496 () Bool)

(assert (=> b!1375289 (= c!226496 ((_ is EmptyLang!3721) (h!19307 (map!3071 rules!2550 lambda!58378))))))

(declare-fun b!1375290 () Bool)

(assert (=> b!1375290 (= e!878925 (= lt!456958 call!92293))))

(declare-fun bm!92288 () Bool)

(assert (=> bm!92288 (= call!92293 (isEmpty!8392 lt!456122))))

(declare-fun b!1375291 () Bool)

(assert (=> b!1375291 (= e!878923 (= (head!2475 lt!456122) (c!226061 (h!19307 (map!3071 rules!2550 lambda!58378)))))))

(declare-fun b!1375292 () Bool)

(declare-fun res!619663 () Bool)

(assert (=> b!1375292 (=> (not res!619663) (not e!878923))))

(assert (=> b!1375292 (= res!619663 (isEmpty!8392 (tail!1987 lt!456122)))))

(declare-fun b!1375293 () Bool)

(declare-fun res!619664 () Bool)

(declare-fun e!878919 () Bool)

(assert (=> b!1375293 (=> res!619664 e!878919)))

(assert (=> b!1375293 (= res!619664 e!878923)))

(declare-fun res!619657 () Bool)

(assert (=> b!1375293 (=> (not res!619657) (not e!878923))))

(assert (=> b!1375293 (= res!619657 lt!456958)))

(declare-fun d!393070 () Bool)

(assert (=> d!393070 e!878925))

(declare-fun c!226497 () Bool)

(assert (=> d!393070 (= c!226497 ((_ is EmptyExpr!3721) (h!19307 (map!3071 rules!2550 lambda!58378))))))

(assert (=> d!393070 (= lt!456958 e!878921)))

(declare-fun c!226499 () Bool)

(assert (=> d!393070 (= c!226499 (isEmpty!8392 lt!456122))))

(assert (=> d!393070 (validRegex!1621 (h!19307 (map!3071 rules!2550 lambda!58378)))))

(assert (=> d!393070 (= (matchR!1714 (h!19307 (map!3071 rules!2550 lambda!58378)) lt!456122) lt!456958)))

(declare-fun b!1375294 () Bool)

(declare-fun res!619660 () Bool)

(assert (=> b!1375294 (=> res!619660 e!878919)))

(assert (=> b!1375294 (= res!619660 (not ((_ is ElementMatch!3721) (h!19307 (map!3071 rules!2550 lambda!58378)))))))

(assert (=> b!1375294 (= e!878918 e!878919)))

(declare-fun b!1375295 () Bool)

(declare-fun e!878924 () Bool)

(assert (=> b!1375295 (= e!878919 e!878924)))

(declare-fun res!619661 () Bool)

(assert (=> b!1375295 (=> (not res!619661) (not e!878924))))

(assert (=> b!1375295 (= res!619661 (not lt!456958))))

(declare-fun b!1375296 () Bool)

(assert (=> b!1375296 (= e!878924 e!878922)))

(declare-fun res!619658 () Bool)

(assert (=> b!1375296 (=> res!619658 e!878922)))

(assert (=> b!1375296 (= res!619658 call!92293)))

(assert (= (and d!393070 c!226499) b!1375287))

(assert (= (and d!393070 (not c!226499)) b!1375288))

(assert (= (and d!393070 c!226497) b!1375290))

(assert (= (and d!393070 (not c!226497)) b!1375289))

(assert (= (and b!1375289 c!226496) b!1375285))

(assert (= (and b!1375289 (not c!226496)) b!1375294))

(assert (= (and b!1375294 (not res!619660)) b!1375293))

(assert (= (and b!1375293 res!619657) b!1375283))

(assert (= (and b!1375283 res!619659) b!1375292))

(assert (= (and b!1375292 res!619663) b!1375291))

(assert (= (and b!1375293 (not res!619664)) b!1375295))

(assert (= (and b!1375295 res!619661) b!1375296))

(assert (= (and b!1375296 (not res!619658)) b!1375286))

(assert (= (and b!1375286 (not res!619662)) b!1375284))

(assert (= (or b!1375290 b!1375283 b!1375296) bm!92288))

(assert (=> d!393070 m!1545027))

(assert (=> d!393070 m!1545923))

(assert (=> b!1375286 m!1545031))

(assert (=> b!1375286 m!1545031))

(assert (=> b!1375286 m!1545033))

(assert (=> b!1375284 m!1545035))

(assert (=> b!1375292 m!1545031))

(assert (=> b!1375292 m!1545031))

(assert (=> b!1375292 m!1545033))

(assert (=> b!1375291 m!1545035))

(declare-fun m!1547699 () Bool)

(assert (=> b!1375287 m!1547699))

(assert (=> b!1375288 m!1545035))

(assert (=> b!1375288 m!1545035))

(declare-fun m!1547701 () Bool)

(assert (=> b!1375288 m!1547701))

(assert (=> b!1375288 m!1545031))

(assert (=> b!1375288 m!1547701))

(assert (=> b!1375288 m!1545031))

(declare-fun m!1547703 () Bool)

(assert (=> b!1375288 m!1547703))

(assert (=> bm!92288 m!1545027))

(assert (=> b!1374231 d!393070))

(declare-fun bm!92300 () Bool)

(declare-fun call!92306 () Bool)

(declare-fun call!92305 () Bool)

(assert (=> bm!92300 (= call!92306 call!92305)))

(declare-fun d!393078 () Bool)

(declare-fun res!619688 () Bool)

(declare-fun e!878962 () Bool)

(assert (=> d!393078 (=> res!619688 e!878962)))

(assert (=> d!393078 (= res!619688 ((_ is ElementMatch!3721) lt!456361))))

(assert (=> d!393078 (= (validRegex!1621 lt!456361) e!878962)))

(declare-fun b!1375347 () Bool)

(declare-fun e!878959 () Bool)

(declare-fun e!878960 () Bool)

(assert (=> b!1375347 (= e!878959 e!878960)))

(declare-fun c!226515 () Bool)

(assert (=> b!1375347 (= c!226515 ((_ is Union!3721) lt!456361))))

(declare-fun b!1375348 () Bool)

(declare-fun res!619687 () Bool)

(declare-fun e!878958 () Bool)

(assert (=> b!1375348 (=> (not res!619687) (not e!878958))))

(declare-fun call!92307 () Bool)

(assert (=> b!1375348 (= res!619687 call!92307)))

(assert (=> b!1375348 (= e!878960 e!878958)))

(declare-fun bm!92301 () Bool)

(assert (=> bm!92301 (= call!92307 (validRegex!1621 (ite c!226515 (regOne!7955 lt!456361) (regOne!7954 lt!456361))))))

(declare-fun b!1375349 () Bool)

(declare-fun e!878961 () Bool)

(declare-fun e!878957 () Bool)

(assert (=> b!1375349 (= e!878961 e!878957)))

(declare-fun res!619686 () Bool)

(assert (=> b!1375349 (=> (not res!619686) (not e!878957))))

(assert (=> b!1375349 (= res!619686 call!92307)))

(declare-fun b!1375350 () Bool)

(declare-fun e!878963 () Bool)

(assert (=> b!1375350 (= e!878963 call!92305)))

(declare-fun b!1375351 () Bool)

(assert (=> b!1375351 (= e!878962 e!878959)))

(declare-fun c!226516 () Bool)

(assert (=> b!1375351 (= c!226516 ((_ is Star!3721) lt!456361))))

(declare-fun b!1375352 () Bool)

(assert (=> b!1375352 (= e!878957 call!92306)))

(declare-fun b!1375353 () Bool)

(declare-fun res!619689 () Bool)

(assert (=> b!1375353 (=> res!619689 e!878961)))

(assert (=> b!1375353 (= res!619689 (not ((_ is Concat!6219) lt!456361)))))

(assert (=> b!1375353 (= e!878960 e!878961)))

(declare-fun b!1375354 () Bool)

(assert (=> b!1375354 (= e!878958 call!92306)))

(declare-fun b!1375355 () Bool)

(assert (=> b!1375355 (= e!878959 e!878963)))

(declare-fun res!619685 () Bool)

(assert (=> b!1375355 (= res!619685 (not (nullable!1201 (reg!4050 lt!456361))))))

(assert (=> b!1375355 (=> (not res!619685) (not e!878963))))

(declare-fun bm!92302 () Bool)

(assert (=> bm!92302 (= call!92305 (validRegex!1621 (ite c!226516 (reg!4050 lt!456361) (ite c!226515 (regTwo!7955 lt!456361) (regTwo!7954 lt!456361)))))))

(assert (= (and d!393078 (not res!619688)) b!1375351))

(assert (= (and b!1375351 c!226516) b!1375355))

(assert (= (and b!1375351 (not c!226516)) b!1375347))

(assert (= (and b!1375355 res!619685) b!1375350))

(assert (= (and b!1375347 c!226515) b!1375348))

(assert (= (and b!1375347 (not c!226515)) b!1375353))

(assert (= (and b!1375348 res!619687) b!1375354))

(assert (= (and b!1375353 (not res!619689)) b!1375349))

(assert (= (and b!1375349 res!619686) b!1375352))

(assert (= (or b!1375348 b!1375349) bm!92301))

(assert (= (or b!1375354 b!1375352) bm!92300))

(assert (= (or b!1375350 bm!92300) bm!92302))

(declare-fun m!1547731 () Bool)

(assert (=> bm!92301 m!1547731))

(declare-fun m!1547733 () Bool)

(assert (=> b!1375355 m!1547733))

(declare-fun m!1547735 () Bool)

(assert (=> bm!92302 m!1547735))

(assert (=> bs!336037 d!393078))

(declare-fun d!393094 () Bool)

(declare-fun lt!456966 () List!13969)

(assert (=> d!393094 (= (++!3598 (t!121640 lt!456127) lt!456966) (tail!1987 lt!456122))))

(declare-fun e!878971 () List!13969)

(assert (=> d!393094 (= lt!456966 e!878971)))

(declare-fun c!226520 () Bool)

(assert (=> d!393094 (= c!226520 ((_ is Cons!13903) (t!121640 lt!456127)))))

(assert (=> d!393094 (>= (size!11415 (tail!1987 lt!456122)) (size!11415 (t!121640 lt!456127)))))

(assert (=> d!393094 (= (getSuffix!569 (tail!1987 lt!456122) (t!121640 lt!456127)) lt!456966)))

(declare-fun b!1375370 () Bool)

(assert (=> b!1375370 (= e!878971 (getSuffix!569 (tail!1987 (tail!1987 lt!456122)) (t!121640 (t!121640 lt!456127))))))

(declare-fun b!1375371 () Bool)

(assert (=> b!1375371 (= e!878971 (tail!1987 lt!456122))))

(assert (= (and d!393094 c!226520) b!1375370))

(assert (= (and d!393094 (not c!226520)) b!1375371))

(declare-fun m!1547737 () Bool)

(assert (=> d!393094 m!1547737))

(assert (=> d!393094 m!1545031))

(declare-fun m!1547739 () Bool)

(assert (=> d!393094 m!1547739))

(assert (=> d!393094 m!1547221))

(assert (=> b!1375370 m!1545031))

(assert (=> b!1375370 m!1547167))

(assert (=> b!1375370 m!1547167))

(declare-fun m!1547745 () Bool)

(assert (=> b!1375370 m!1547745))

(assert (=> b!1373739 d!393094))

(assert (=> b!1373739 d!392638))

(declare-fun b!1375372 () Bool)

(declare-fun e!878974 () Rule!4614)

(assert (=> b!1375372 (= e!878974 (h!19306 (t!121642 rules!2550)))))

(declare-fun b!1375373 () Bool)

(declare-fun lt!456967 () Unit!20133)

(declare-fun Unit!20148 () Unit!20133)

(assert (=> b!1375373 (= lt!456967 Unit!20148)))

(assert (=> b!1375373 false))

(declare-fun e!878975 () Rule!4614)

(assert (=> b!1375373 (= e!878975 (head!2477 (t!121642 rules!2550)))))

(declare-fun b!1375374 () Bool)

(declare-fun e!878973 () Bool)

(declare-fun lt!456968 () Rule!4614)

(assert (=> b!1375374 (= e!878973 (contains!2608 (t!121642 rules!2550) lt!456968))))

(declare-fun b!1375375 () Bool)

(assert (=> b!1375375 (= e!878975 (getWitness!360 (t!121642 (t!121642 rules!2550)) lambda!58380))))

(declare-fun b!1375376 () Bool)

(declare-fun e!878972 () Bool)

(assert (=> b!1375376 (= e!878972 (dynLambda!6334 lambda!58380 (h!19306 (t!121642 rules!2550))))))

(declare-fun b!1375377 () Bool)

(assert (=> b!1375377 (= e!878974 e!878975)))

(declare-fun c!226521 () Bool)

(assert (=> b!1375377 (= c!226521 ((_ is Cons!13905) (t!121642 rules!2550)))))

(declare-fun d!393096 () Bool)

(assert (=> d!393096 e!878973))

(declare-fun res!619698 () Bool)

(assert (=> d!393096 (=> (not res!619698) (not e!878973))))

(assert (=> d!393096 (= res!619698 (dynLambda!6334 lambda!58380 lt!456968))))

(assert (=> d!393096 (= lt!456968 e!878974)))

(declare-fun c!226522 () Bool)

(assert (=> d!393096 (= c!226522 e!878972)))

(declare-fun res!619699 () Bool)

(assert (=> d!393096 (=> (not res!619699) (not e!878972))))

(assert (=> d!393096 (= res!619699 ((_ is Cons!13905) (t!121642 rules!2550)))))

(assert (=> d!393096 (exists!472 (t!121642 rules!2550) lambda!58380)))

(assert (=> d!393096 (= (getWitness!360 (t!121642 rules!2550) lambda!58380) lt!456968)))

(assert (= (and d!393096 res!619699) b!1375376))

(assert (= (and d!393096 c!226522) b!1375372))

(assert (= (and d!393096 (not c!226522)) b!1375377))

(assert (= (and b!1375377 c!226521) b!1375375))

(assert (= (and b!1375377 (not c!226521)) b!1375373))

(assert (= (and d!393096 res!619698) b!1375374))

(declare-fun b_lambda!42305 () Bool)

(assert (=> (not b_lambda!42305) (not b!1375376)))

(declare-fun b_lambda!42307 () Bool)

(assert (=> (not b_lambda!42307) (not d!393096)))

(declare-fun m!1547753 () Bool)

(assert (=> d!393096 m!1547753))

(declare-fun m!1547755 () Bool)

(assert (=> d!393096 m!1547755))

(declare-fun m!1547757 () Bool)

(assert (=> b!1375373 m!1547757))

(declare-fun m!1547759 () Bool)

(assert (=> b!1375375 m!1547759))

(declare-fun m!1547763 () Bool)

(assert (=> b!1375376 m!1547763))

(declare-fun m!1547765 () Bool)

(assert (=> b!1375374 m!1547765))

(assert (=> b!1373777 d!393096))

(declare-fun d!393104 () Bool)

(declare-fun c!226525 () Bool)

(assert (=> d!393104 (= c!226525 ((_ is Nil!13903) lt!456222))))

(declare-fun e!878978 () (InoxSet C!7732))

(assert (=> d!393104 (= (content!2037 lt!456222) e!878978)))

(declare-fun b!1375382 () Bool)

(assert (=> b!1375382 (= e!878978 ((as const (Array C!7732 Bool)) false))))

(declare-fun b!1375383 () Bool)

(assert (=> b!1375383 (= e!878978 ((_ map or) (store ((as const (Array C!7732 Bool)) false) (h!19304 lt!456222) true) (content!2037 (t!121640 lt!456222))))))

(assert (= (and d!393104 c!226525) b!1375382))

(assert (= (and d!393104 (not c!226525)) b!1375383))

(declare-fun m!1547769 () Bool)

(assert (=> b!1375383 m!1547769))

(declare-fun m!1547771 () Bool)

(assert (=> b!1375383 m!1547771))

(assert (=> d!392204 d!393104))

(declare-fun d!393108 () Bool)

(declare-fun c!226526 () Bool)

(assert (=> d!393108 (= c!226526 ((_ is Nil!13903) lt!456127))))

(declare-fun e!878979 () (InoxSet C!7732))

(assert (=> d!393108 (= (content!2037 lt!456127) e!878979)))

(declare-fun b!1375384 () Bool)

(assert (=> b!1375384 (= e!878979 ((as const (Array C!7732 Bool)) false))))

(declare-fun b!1375385 () Bool)

(assert (=> b!1375385 (= e!878979 ((_ map or) (store ((as const (Array C!7732 Bool)) false) (h!19304 lt!456127) true) (content!2037 (t!121640 lt!456127))))))

(assert (= (and d!393108 c!226526) b!1375384))

(assert (= (and d!393108 (not c!226526)) b!1375385))

(declare-fun m!1547777 () Bool)

(assert (=> b!1375385 m!1547777))

(assert (=> b!1375385 m!1547115))

(assert (=> d!392204 d!393108))

(declare-fun d!393112 () Bool)

(declare-fun c!226528 () Bool)

(assert (=> d!393112 (= c!226528 ((_ is Nil!13903) (getSuffix!569 lt!456122 lt!456127)))))

(declare-fun e!878983 () (InoxSet C!7732))

(assert (=> d!393112 (= (content!2037 (getSuffix!569 lt!456122 lt!456127)) e!878983)))

(declare-fun b!1375395 () Bool)

(assert (=> b!1375395 (= e!878983 ((as const (Array C!7732 Bool)) false))))

(declare-fun b!1375396 () Bool)

(assert (=> b!1375396 (= e!878983 ((_ map or) (store ((as const (Array C!7732 Bool)) false) (h!19304 (getSuffix!569 lt!456122 lt!456127)) true) (content!2037 (t!121640 (getSuffix!569 lt!456122 lt!456127)))))))

(assert (= (and d!393112 c!226528) b!1375395))

(assert (= (and d!393112 (not c!226528)) b!1375396))

(declare-fun m!1547779 () Bool)

(assert (=> b!1375396 m!1547779))

(declare-fun m!1547781 () Bool)

(assert (=> b!1375396 m!1547781))

(assert (=> d!392204 d!393112))

(declare-fun b!1375424 () Bool)

(declare-fun e!879004 () Bool)

(declare-fun e!879005 () Bool)

(assert (=> b!1375424 (= e!879004 e!879005)))

(declare-fun res!619719 () Bool)

(declare-fun rulesUseDisjointChars!184 (Rule!4614 Rule!4614) Bool)

(assert (=> b!1375424 (= res!619719 (rulesUseDisjointChars!184 (h!19306 rules!2550) (h!19306 rules!2550)))))

(assert (=> b!1375424 (=> (not res!619719) (not e!879005))))

(declare-fun b!1375425 () Bool)

(declare-fun e!879003 () Bool)

(assert (=> b!1375425 (= e!879004 e!879003)))

(declare-fun res!619718 () Bool)

(assert (=> b!1375425 (= res!619718 (not ((_ is Cons!13905) rules!2550)))))

(assert (=> b!1375425 (=> res!619718 e!879003)))

(declare-fun bm!92311 () Bool)

(declare-fun call!92316 () Bool)

(assert (=> bm!92311 (= call!92316 (ruleDisjointCharsFromAllFromOtherType!372 (h!19306 rules!2550) (t!121642 rules!2550)))))

(declare-fun b!1375426 () Bool)

(assert (=> b!1375426 (= e!879005 call!92316)))

(declare-fun d!393114 () Bool)

(declare-fun c!226537 () Bool)

(assert (=> d!393114 (= c!226537 (and ((_ is Cons!13905) rules!2550) (not (= (isSeparator!2407 (h!19306 rules!2550)) (isSeparator!2407 (h!19306 rules!2550))))))))

(assert (=> d!393114 (= (ruleDisjointCharsFromAllFromOtherType!372 (h!19306 rules!2550) rules!2550) e!879004)))

(declare-fun b!1375427 () Bool)

(assert (=> b!1375427 (= e!879003 call!92316)))

(assert (= (and d!393114 c!226537) b!1375424))

(assert (= (and d!393114 (not c!226537)) b!1375425))

(assert (= (and b!1375424 res!619719) b!1375426))

(assert (= (and b!1375425 (not res!619718)) b!1375427))

(assert (= (or b!1375426 b!1375427) bm!92311))

(declare-fun m!1547831 () Bool)

(assert (=> b!1375424 m!1547831))

(declare-fun m!1547835 () Bool)

(assert (=> bm!92311 m!1547835))

(assert (=> b!1374166 d!393114))

(declare-fun d!393124 () Bool)

(declare-fun lt!456980 () Int)

(assert (=> d!393124 (= lt!456980 (size!11415 (list!5362 (_2!7640 lt!456385))))))

(assert (=> d!393124 (= lt!456980 (size!11422 (c!226060 (_2!7640 lt!456385))))))

(assert (=> d!393124 (= (size!11410 (_2!7640 lt!456385)) lt!456980)))

(declare-fun bs!336235 () Bool)

(assert (= bs!336235 d!393124))

(assert (=> bs!336235 m!1545825))

(assert (=> bs!336235 m!1545825))

(declare-fun m!1547843 () Bool)

(assert (=> bs!336235 m!1547843))

(declare-fun m!1547845 () Bool)

(assert (=> bs!336235 m!1547845))

(assert (=> b!1374168 d!393124))

(declare-fun d!393128 () Bool)

(declare-fun lt!456981 () Int)

(assert (=> d!393128 (= lt!456981 (size!11415 (list!5362 lt!456142)))))

(assert (=> d!393128 (= lt!456981 (size!11422 (c!226060 lt!456142)))))

(assert (=> d!393128 (= (size!11410 lt!456142) lt!456981)))

(declare-fun bs!336236 () Bool)

(assert (= bs!336236 d!393128))

(assert (=> bs!336236 m!1544831))

(assert (=> bs!336236 m!1544831))

(assert (=> bs!336236 m!1545541))

(declare-fun m!1547847 () Bool)

(assert (=> bs!336236 m!1547847))

(assert (=> b!1374168 d!393128))

(declare-fun d!393130 () Bool)

(declare-fun lt!456982 () Int)

(assert (=> d!393130 (>= lt!456982 0)))

(declare-fun e!879013 () Int)

(assert (=> d!393130 (= lt!456982 e!879013)))

(declare-fun c!226540 () Bool)

(assert (=> d!393130 (= c!226540 ((_ is Nil!13903) (list!5362 lt!456140)))))

(assert (=> d!393130 (= (size!11415 (list!5362 lt!456140)) lt!456982)))

(declare-fun b!1375437 () Bool)

(assert (=> b!1375437 (= e!879013 0)))

(declare-fun b!1375438 () Bool)

(assert (=> b!1375438 (= e!879013 (+ 1 (size!11415 (t!121640 (list!5362 lt!456140)))))))

(assert (= (and d!393130 c!226540) b!1375437))

(assert (= (and d!393130 (not c!226540)) b!1375438))

(declare-fun m!1547849 () Bool)

(assert (=> b!1375438 m!1547849))

(assert (=> d!392428 d!393130))

(assert (=> d!392428 d!392440))

(declare-fun d!393132 () Bool)

(declare-fun lt!456988 () Int)

(assert (=> d!393132 (= lt!456988 (size!11415 (list!5366 (c!226060 lt!456140))))))

(assert (=> d!393132 (= lt!456988 (ite ((_ is Empty!4576) (c!226060 lt!456140)) 0 (ite ((_ is Leaf!6976) (c!226060 lt!456140)) (csize!9383 (c!226060 lt!456140)) (csize!9382 (c!226060 lt!456140)))))))

(assert (=> d!393132 (= (size!11422 (c!226060 lt!456140)) lt!456988)))

(declare-fun bs!336238 () Bool)

(assert (= bs!336238 d!393132))

(assert (=> bs!336238 m!1545903))

(assert (=> bs!336238 m!1545903))

(declare-fun m!1547871 () Bool)

(assert (=> bs!336238 m!1547871))

(assert (=> d!392428 d!393132))

(declare-fun d!393144 () Bool)

(assert (=> d!393144 (= (nullable!1201 lt!456141) (nullableFct!283 lt!456141))))

(declare-fun bs!336239 () Bool)

(assert (= bs!336239 d!393144))

(declare-fun m!1547877 () Bool)

(assert (=> bs!336239 m!1547877))

(assert (=> b!1373605 d!393144))

(assert (=> d!392396 d!392964))

(declare-fun bm!92318 () Bool)

(declare-fun call!92324 () Bool)

(declare-fun call!92323 () Bool)

(assert (=> bm!92318 (= call!92324 call!92323)))

(declare-fun d!393148 () Bool)

(declare-fun res!619738 () Bool)

(declare-fun e!879031 () Bool)

(assert (=> d!393148 (=> res!619738 e!879031)))

(assert (=> d!393148 (= res!619738 ((_ is ElementMatch!3721) (regex!2407 (rule!4164 t2!34))))))

(assert (=> d!393148 (= (validRegex!1621 (regex!2407 (rule!4164 t2!34))) e!879031)))

(declare-fun b!1375453 () Bool)

(declare-fun e!879028 () Bool)

(declare-fun e!879029 () Bool)

(assert (=> b!1375453 (= e!879028 e!879029)))

(declare-fun c!226543 () Bool)

(assert (=> b!1375453 (= c!226543 ((_ is Union!3721) (regex!2407 (rule!4164 t2!34))))))

(declare-fun b!1375454 () Bool)

(declare-fun res!619737 () Bool)

(declare-fun e!879027 () Bool)

(assert (=> b!1375454 (=> (not res!619737) (not e!879027))))

(declare-fun call!92325 () Bool)

(assert (=> b!1375454 (= res!619737 call!92325)))

(assert (=> b!1375454 (= e!879029 e!879027)))

(declare-fun bm!92319 () Bool)

(assert (=> bm!92319 (= call!92325 (validRegex!1621 (ite c!226543 (regOne!7955 (regex!2407 (rule!4164 t2!34))) (regOne!7954 (regex!2407 (rule!4164 t2!34))))))))

(declare-fun b!1375455 () Bool)

(declare-fun e!879030 () Bool)

(declare-fun e!879026 () Bool)

(assert (=> b!1375455 (= e!879030 e!879026)))

(declare-fun res!619736 () Bool)

(assert (=> b!1375455 (=> (not res!619736) (not e!879026))))

(assert (=> b!1375455 (= res!619736 call!92325)))

(declare-fun b!1375456 () Bool)

(declare-fun e!879032 () Bool)

(assert (=> b!1375456 (= e!879032 call!92323)))

(declare-fun b!1375457 () Bool)

(assert (=> b!1375457 (= e!879031 e!879028)))

(declare-fun c!226544 () Bool)

(assert (=> b!1375457 (= c!226544 ((_ is Star!3721) (regex!2407 (rule!4164 t2!34))))))

(declare-fun b!1375458 () Bool)

(assert (=> b!1375458 (= e!879026 call!92324)))

(declare-fun b!1375459 () Bool)

(declare-fun res!619739 () Bool)

(assert (=> b!1375459 (=> res!619739 e!879030)))

(assert (=> b!1375459 (= res!619739 (not ((_ is Concat!6219) (regex!2407 (rule!4164 t2!34)))))))

(assert (=> b!1375459 (= e!879029 e!879030)))

(declare-fun b!1375460 () Bool)

(assert (=> b!1375460 (= e!879027 call!92324)))

(declare-fun b!1375461 () Bool)

(assert (=> b!1375461 (= e!879028 e!879032)))

(declare-fun res!619735 () Bool)

(assert (=> b!1375461 (= res!619735 (not (nullable!1201 (reg!4050 (regex!2407 (rule!4164 t2!34))))))))

(assert (=> b!1375461 (=> (not res!619735) (not e!879032))))

(declare-fun bm!92320 () Bool)

(assert (=> bm!92320 (= call!92323 (validRegex!1621 (ite c!226544 (reg!4050 (regex!2407 (rule!4164 t2!34))) (ite c!226543 (regTwo!7955 (regex!2407 (rule!4164 t2!34))) (regTwo!7954 (regex!2407 (rule!4164 t2!34)))))))))

(assert (= (and d!393148 (not res!619738)) b!1375457))

(assert (= (and b!1375457 c!226544) b!1375461))

(assert (= (and b!1375457 (not c!226544)) b!1375453))

(assert (= (and b!1375461 res!619735) b!1375456))

(assert (= (and b!1375453 c!226543) b!1375454))

(assert (= (and b!1375453 (not c!226543)) b!1375459))

(assert (= (and b!1375454 res!619737) b!1375460))

(assert (= (and b!1375459 (not res!619739)) b!1375455))

(assert (= (and b!1375455 res!619736) b!1375458))

(assert (= (or b!1375454 b!1375455) bm!92319))

(assert (= (or b!1375460 b!1375458) bm!92318))

(assert (= (or b!1375456 bm!92318) bm!92320))

(declare-fun m!1547883 () Bool)

(assert (=> bm!92319 m!1547883))

(declare-fun m!1547885 () Bool)

(assert (=> b!1375461 m!1547885))

(declare-fun m!1547887 () Bool)

(assert (=> bm!92320 m!1547887))

(assert (=> d!392396 d!393148))

(declare-fun d!393154 () Bool)

(assert (=> d!393154 (= (list!5362 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))) (list!5366 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))))))

(declare-fun bs!336242 () Bool)

(assert (= bs!336242 d!393154))

(declare-fun m!1547889 () Bool)

(assert (=> bs!336242 m!1547889))

(assert (=> b!1374157 d!393154))

(declare-fun d!393156 () Bool)

(declare-fun lt!456991 () Int)

(assert (=> d!393156 (>= lt!456991 0)))

(declare-fun e!879035 () Int)

(assert (=> d!393156 (= lt!456991 e!879035)))

(declare-fun c!226547 () Bool)

(assert (=> d!393156 (= c!226547 ((_ is Nil!13906) lt!456304))))

(assert (=> d!393156 (= (size!11418 lt!456304) lt!456991)))

(declare-fun b!1375466 () Bool)

(assert (=> b!1375466 (= e!879035 0)))

(declare-fun b!1375467 () Bool)

(assert (=> b!1375467 (= e!879035 (+ 1 (size!11418 (t!121643 lt!456304))))))

(assert (= (and d!393156 c!226547) b!1375466))

(assert (= (and d!393156 (not c!226547)) b!1375467))

(declare-fun m!1547891 () Bool)

(assert (=> b!1375467 m!1547891))

(assert (=> d!392300 d!393156))

(declare-fun d!393158 () Bool)

(declare-fun lt!456994 () Int)

(assert (=> d!393158 (>= lt!456994 0)))

(declare-fun e!879038 () Int)

(assert (=> d!393158 (= lt!456994 e!879038)))

(declare-fun c!226551 () Bool)

(assert (=> d!393158 (= c!226551 ((_ is Nil!13905) rules!2550))))

(assert (=> d!393158 (= (size!11419 rules!2550) lt!456994)))

(declare-fun b!1375472 () Bool)

(assert (=> b!1375472 (= e!879038 0)))

(declare-fun b!1375473 () Bool)

(assert (=> b!1375473 (= e!879038 (+ 1 (size!11419 (t!121642 rules!2550))))))

(assert (= (and d!393158 c!226551) b!1375472))

(assert (= (and d!393158 (not c!226551)) b!1375473))

(assert (=> b!1375473 m!1546293))

(assert (=> d!392300 d!393158))

(declare-fun d!393160 () Bool)

(assert (=> d!393160 (= (list!5362 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))) (list!5366 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))))))

(declare-fun bs!336243 () Bool)

(assert (= bs!336243 d!393160))

(declare-fun m!1547893 () Bool)

(assert (=> bs!336243 m!1547893))

(assert (=> b!1374159 d!393160))

(declare-fun d!393162 () Bool)

(assert (=> d!393162 (= (isEmpty!8392 lt!456122) ((_ is Nil!13903) lt!456122))))

(assert (=> d!392176 d!393162))

(declare-fun bm!92321 () Bool)

(declare-fun call!92327 () Bool)

(declare-fun call!92326 () Bool)

(assert (=> bm!92321 (= call!92327 call!92326)))

(declare-fun d!393164 () Bool)

(declare-fun res!619743 () Bool)

(declare-fun e!879044 () Bool)

(assert (=> d!393164 (=> res!619743 e!879044)))

(assert (=> d!393164 (= res!619743 ((_ is ElementMatch!3721) lt!456141))))

(assert (=> d!393164 (= (validRegex!1621 lt!456141) e!879044)))

(declare-fun b!1375474 () Bool)

(declare-fun e!879041 () Bool)

(declare-fun e!879042 () Bool)

(assert (=> b!1375474 (= e!879041 e!879042)))

(declare-fun c!226553 () Bool)

(assert (=> b!1375474 (= c!226553 ((_ is Union!3721) lt!456141))))

(declare-fun b!1375475 () Bool)

(declare-fun res!619742 () Bool)

(declare-fun e!879040 () Bool)

(assert (=> b!1375475 (=> (not res!619742) (not e!879040))))

(declare-fun call!92328 () Bool)

(assert (=> b!1375475 (= res!619742 call!92328)))

(assert (=> b!1375475 (= e!879042 e!879040)))

(declare-fun bm!92322 () Bool)

(assert (=> bm!92322 (= call!92328 (validRegex!1621 (ite c!226553 (regOne!7955 lt!456141) (regOne!7954 lt!456141))))))

(declare-fun b!1375476 () Bool)

(declare-fun e!879043 () Bool)

(declare-fun e!879039 () Bool)

(assert (=> b!1375476 (= e!879043 e!879039)))

(declare-fun res!619741 () Bool)

(assert (=> b!1375476 (=> (not res!619741) (not e!879039))))

(assert (=> b!1375476 (= res!619741 call!92328)))

(declare-fun b!1375477 () Bool)

(declare-fun e!879045 () Bool)

(assert (=> b!1375477 (= e!879045 call!92326)))

(declare-fun b!1375478 () Bool)

(assert (=> b!1375478 (= e!879044 e!879041)))

(declare-fun c!226554 () Bool)

(assert (=> b!1375478 (= c!226554 ((_ is Star!3721) lt!456141))))

(declare-fun b!1375479 () Bool)

(assert (=> b!1375479 (= e!879039 call!92327)))

(declare-fun b!1375480 () Bool)

(declare-fun res!619744 () Bool)

(assert (=> b!1375480 (=> res!619744 e!879043)))

(assert (=> b!1375480 (= res!619744 (not ((_ is Concat!6219) lt!456141)))))

(assert (=> b!1375480 (= e!879042 e!879043)))

(declare-fun b!1375481 () Bool)

(assert (=> b!1375481 (= e!879040 call!92327)))

(declare-fun b!1375482 () Bool)

(assert (=> b!1375482 (= e!879041 e!879045)))

(declare-fun res!619740 () Bool)

(assert (=> b!1375482 (= res!619740 (not (nullable!1201 (reg!4050 lt!456141))))))

(assert (=> b!1375482 (=> (not res!619740) (not e!879045))))

(declare-fun bm!92323 () Bool)

(assert (=> bm!92323 (= call!92326 (validRegex!1621 (ite c!226554 (reg!4050 lt!456141) (ite c!226553 (regTwo!7955 lt!456141) (regTwo!7954 lt!456141)))))))

(assert (= (and d!393164 (not res!619743)) b!1375478))

(assert (= (and b!1375478 c!226554) b!1375482))

(assert (= (and b!1375478 (not c!226554)) b!1375474))

(assert (= (and b!1375482 res!619740) b!1375477))

(assert (= (and b!1375474 c!226553) b!1375475))

(assert (= (and b!1375474 (not c!226553)) b!1375480))

(assert (= (and b!1375475 res!619742) b!1375481))

(assert (= (and b!1375480 (not res!619744)) b!1375476))

(assert (= (and b!1375476 res!619741) b!1375479))

(assert (= (or b!1375475 b!1375476) bm!92322))

(assert (= (or b!1375481 b!1375479) bm!92321))

(assert (= (or b!1375477 bm!92321) bm!92323))

(declare-fun m!1547895 () Bool)

(assert (=> bm!92322 m!1547895))

(declare-fun m!1547897 () Bool)

(assert (=> b!1375482 m!1547897))

(declare-fun m!1547899 () Bool)

(assert (=> bm!92323 m!1547899))

(assert (=> d!392176 d!393164))

(declare-fun bs!336244 () Bool)

(declare-fun d!393166 () Bool)

(assert (= bs!336244 (and d!393166 d!392632)))

(declare-fun lambda!58490 () Int)

(assert (=> bs!336244 (= (and (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 t1!34)))) (= (toValue!3678 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (rule!4164 t1!34))))) (= lambda!58490 lambda!58451))))

(declare-fun bs!336245 () Bool)

(assert (= bs!336245 (and d!393166 d!392698)))

(assert (=> bs!336245 (= (and (= (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toChars!3537 (transformation!2407 (rule!4164 t2!34)))) (= (toValue!3678 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (rule!4164 t2!34))))) (= lambda!58490 lambda!58461))))

(assert (=> d!393166 true))

(assert (=> d!393166 (< (dynLambda!6345 order!8507 (toChars!3537 (transformation!2407 (h!19306 rules!2550)))) (dynLambda!6346 order!8509 lambda!58490))))

(assert (=> d!393166 true))

(assert (=> d!393166 (< (dynLambda!6347 order!8511 (toValue!3678 (transformation!2407 (h!19306 rules!2550)))) (dynLambda!6346 order!8509 lambda!58490))))

(assert (=> d!393166 (= (semiInverseModEq!930 (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (h!19306 rules!2550)))) (Forall!540 lambda!58490))))

(declare-fun bs!336246 () Bool)

(assert (= bs!336246 d!393166))

(declare-fun m!1547901 () Bool)

(assert (=> bs!336246 m!1547901))

(assert (=> d!392232 d!393166))

(declare-fun d!393168 () Bool)

(assert (=> d!393168 (= (isEmpty!8392 lt!456128) ((_ is Nil!13903) lt!456128))))

(assert (=> bm!92217 d!393168))

(assert (=> bm!92203 d!393162))

(declare-fun b!1375491 () Bool)

(declare-fun e!879048 () Bool)

(declare-fun lt!456997 () tuple2!13506)

(assert (=> b!1375491 (= e!879048 (= (_2!7639 lt!456997) (_2!7641 (v!21488 lt!456394))))))

(declare-fun b!1375492 () Bool)

(declare-fun e!879050 () tuple2!13506)

(declare-fun lt!456999 () Option!2672)

(declare-fun lt!456998 () tuple2!13506)

(assert (=> b!1375492 (= e!879050 (tuple2!13507 (Cons!13904 (_1!7641 (v!21488 lt!456999)) (_1!7639 lt!456998)) (_2!7639 lt!456998)))))

(assert (=> b!1375492 (= lt!456998 (lexList!620 thiss!19762 rules!2550 (_2!7641 (v!21488 lt!456999))))))

(declare-fun b!1375493 () Bool)

(declare-fun e!879049 () Bool)

(assert (=> b!1375493 (= e!879049 (not (isEmpty!8397 (_1!7639 lt!456997))))))

(declare-fun d!393170 () Bool)

(assert (=> d!393170 e!879048))

(declare-fun c!226556 () Bool)

(assert (=> d!393170 (= c!226556 (> (size!11420 (_1!7639 lt!456997)) 0))))

(assert (=> d!393170 (= lt!456997 e!879050)))

(declare-fun c!226557 () Bool)

(assert (=> d!393170 (= c!226557 ((_ is Some!2671) lt!456999))))

(assert (=> d!393170 (= lt!456999 (maxPrefix!1084 thiss!19762 rules!2550 (_2!7641 (v!21488 lt!456394))))))

(assert (=> d!393170 (= (lexList!620 thiss!19762 rules!2550 (_2!7641 (v!21488 lt!456394))) lt!456997)))

(declare-fun b!1375494 () Bool)

(assert (=> b!1375494 (= e!879050 (tuple2!13507 Nil!13904 (_2!7641 (v!21488 lt!456394))))))

(declare-fun b!1375495 () Bool)

(assert (=> b!1375495 (= e!879048 e!879049)))

(declare-fun res!619753 () Bool)

(assert (=> b!1375495 (= res!619753 (< (size!11415 (_2!7639 lt!456997)) (size!11415 (_2!7641 (v!21488 lt!456394)))))))

(assert (=> b!1375495 (=> (not res!619753) (not e!879049))))

(assert (= (and d!393170 c!226557) b!1375492))

(assert (= (and d!393170 (not c!226557)) b!1375494))

(assert (= (and d!393170 c!226556) b!1375495))

(assert (= (and d!393170 (not c!226556)) b!1375491))

(assert (= (and b!1375495 res!619753) b!1375493))

(declare-fun m!1547903 () Bool)

(assert (=> b!1375492 m!1547903))

(declare-fun m!1547905 () Bool)

(assert (=> b!1375493 m!1547905))

(declare-fun m!1547907 () Bool)

(assert (=> d!393170 m!1547907))

(declare-fun m!1547909 () Bool)

(assert (=> d!393170 m!1547909))

(declare-fun m!1547911 () Bool)

(assert (=> b!1375495 m!1547911))

(declare-fun m!1547913 () Bool)

(assert (=> b!1375495 m!1547913))

(assert (=> b!1374175 d!393170))

(declare-fun d!393172 () Bool)

(assert (=> d!393172 (= (head!2475 lt!456133) (h!19304 lt!456133))))

(assert (=> b!1374099 d!393172))

(declare-fun d!393174 () Bool)

(declare-fun lt!457000 () Bool)

(assert (=> d!393174 (= lt!457000 (select (content!2037 (t!121640 lt!456127)) lt!456136))))

(declare-fun e!879051 () Bool)

(assert (=> d!393174 (= lt!457000 e!879051)))

(declare-fun res!619755 () Bool)

(assert (=> d!393174 (=> (not res!619755) (not e!879051))))

(assert (=> d!393174 (= res!619755 ((_ is Cons!13903) (t!121640 lt!456127)))))

(assert (=> d!393174 (= (contains!2607 (t!121640 lt!456127) lt!456136) lt!457000)))

(declare-fun b!1375496 () Bool)

(declare-fun e!879052 () Bool)

(assert (=> b!1375496 (= e!879051 e!879052)))

(declare-fun res!619754 () Bool)

(assert (=> b!1375496 (=> res!619754 e!879052)))

(assert (=> b!1375496 (= res!619754 (= (h!19304 (t!121640 lt!456127)) lt!456136))))

(declare-fun b!1375497 () Bool)

(assert (=> b!1375497 (= e!879052 (contains!2607 (t!121640 (t!121640 lt!456127)) lt!456136))))

(assert (= (and d!393174 res!619755) b!1375496))

(assert (= (and b!1375496 (not res!619754)) b!1375497))

(assert (=> d!393174 m!1547115))

(declare-fun m!1547915 () Bool)

(assert (=> d!393174 m!1547915))

(declare-fun m!1547917 () Bool)

(assert (=> b!1375497 m!1547917))

(assert (=> b!1374152 d!393174))

(declare-fun d!393176 () Bool)

(declare-fun res!619756 () Bool)

(declare-fun e!879053 () Bool)

(assert (=> d!393176 (=> (not res!619756) (not e!879053))))

(assert (=> d!393176 (= res!619756 (validRegex!1621 (regex!2407 lt!456138)))))

(assert (=> d!393176 (= (ruleValid!594 thiss!19762 lt!456138) e!879053)))

(declare-fun b!1375498 () Bool)

(declare-fun res!619757 () Bool)

(assert (=> b!1375498 (=> (not res!619757) (not e!879053))))

(assert (=> b!1375498 (= res!619757 (not (nullable!1201 (regex!2407 lt!456138))))))

(declare-fun b!1375499 () Bool)

(assert (=> b!1375499 (= e!879053 (not (= (tag!2669 lt!456138) (String!16722 ""))))))

(assert (= (and d!393176 res!619756) b!1375498))

(assert (= (and b!1375498 res!619757) b!1375499))

(declare-fun m!1547919 () Bool)

(assert (=> d!393176 m!1547919))

(declare-fun m!1547921 () Bool)

(assert (=> b!1375498 m!1547921))

(assert (=> bs!336039 d!393176))

(declare-fun d!393178 () Bool)

(declare-fun lostCauseFct!135 (Regex!3721) Bool)

(assert (=> d!393178 (= (lostCause!334 lt!456141) (lostCauseFct!135 lt!456141))))

(declare-fun bs!336247 () Bool)

(assert (= bs!336247 d!393178))

(declare-fun m!1547923 () Bool)

(assert (=> bs!336247 m!1547923))

(assert (=> b!1373494 d!393178))

(declare-fun d!393180 () Bool)

(assert (=> d!393180 (= (isEmpty!8392 (originalCharacters!3269 t2!34)) ((_ is Nil!13903) (originalCharacters!3269 t2!34)))))

(assert (=> d!392416 d!393180))

(assert (=> b!1373522 d!392428))

(declare-fun d!393182 () Bool)

(declare-fun lt!457004 () Int)

(assert (=> d!393182 (>= lt!457004 0)))

(declare-fun e!879057 () Int)

(assert (=> d!393182 (= lt!457004 e!879057)))

(declare-fun c!226560 () Bool)

(assert (=> d!393182 (= c!226560 ((_ is Nil!13904) (_1!7639 lt!456322)))))

(assert (=> d!393182 (= (size!11420 (_1!7639 lt!456322)) lt!457004)))

(declare-fun b!1375508 () Bool)

(assert (=> b!1375508 (= e!879057 0)))

(declare-fun b!1375509 () Bool)

(assert (=> b!1375509 (= e!879057 (+ 1 (size!11420 (t!121641 (_1!7639 lt!456322)))))))

(assert (= (and d!393182 c!226560) b!1375508))

(assert (= (and d!393182 (not c!226560)) b!1375509))

(declare-fun m!1547945 () Bool)

(assert (=> b!1375509 m!1547945))

(assert (=> d!392320 d!393182))

(declare-fun b!1375510 () Bool)

(declare-fun res!619768 () Bool)

(declare-fun e!879058 () Bool)

(assert (=> b!1375510 (=> (not res!619768) (not e!879058))))

(declare-fun lt!457009 () Option!2672)

(assert (=> b!1375510 (= res!619768 (= (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457009)))) (originalCharacters!3269 (_1!7641 (get!4350 lt!457009)))))))

(declare-fun b!1375511 () Bool)

(assert (=> b!1375511 (= e!879058 (contains!2608 rules!2550 (rule!4164 (_1!7641 (get!4350 lt!457009)))))))

(declare-fun b!1375512 () Bool)

(declare-fun res!619765 () Bool)

(assert (=> b!1375512 (=> (not res!619765) (not e!879058))))

(assert (=> b!1375512 (= res!619765 (matchR!1714 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!457009)))) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457009))))))))

(declare-fun b!1375513 () Bool)

(declare-fun e!879060 () Option!2672)

(declare-fun lt!457005 () Option!2672)

(declare-fun lt!457007 () Option!2672)

(assert (=> b!1375513 (= e!879060 (ite (and ((_ is None!2671) lt!457005) ((_ is None!2671) lt!457007)) None!2671 (ite ((_ is None!2671) lt!457007) lt!457005 (ite ((_ is None!2671) lt!457005) lt!457007 (ite (>= (size!11409 (_1!7641 (v!21488 lt!457005))) (size!11409 (_1!7641 (v!21488 lt!457007)))) lt!457005 lt!457007)))))))

(declare-fun call!92329 () Option!2672)

(assert (=> b!1375513 (= lt!457005 call!92329)))

(assert (=> b!1375513 (= lt!457007 (maxPrefix!1084 thiss!19762 (t!121642 rules!2550) (list!5362 lt!456142)))))

(declare-fun b!1375514 () Bool)

(assert (=> b!1375514 (= e!879060 call!92329)))

(declare-fun b!1375516 () Bool)

(declare-fun res!619764 () Bool)

(assert (=> b!1375516 (=> (not res!619764) (not e!879058))))

(assert (=> b!1375516 (= res!619764 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457009)))) (_2!7641 (get!4350 lt!457009))) (list!5362 lt!456142)))))

(declare-fun bm!92324 () Bool)

(assert (=> bm!92324 (= call!92329 (maxPrefixOneRule!619 thiss!19762 (h!19306 rules!2550) (list!5362 lt!456142)))))

(declare-fun b!1375517 () Bool)

(declare-fun res!619762 () Bool)

(assert (=> b!1375517 (=> (not res!619762) (not e!879058))))

(assert (=> b!1375517 (= res!619762 (= (value!78232 (_1!7641 (get!4350 lt!457009))) (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!457009)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!457009)))))))))

(declare-fun b!1375518 () Bool)

(declare-fun e!879059 () Bool)

(assert (=> b!1375518 (= e!879059 e!879058)))

(declare-fun res!619766 () Bool)

(assert (=> b!1375518 (=> (not res!619766) (not e!879058))))

(assert (=> b!1375518 (= res!619766 (isDefined!2221 lt!457009))))

(declare-fun b!1375515 () Bool)

(declare-fun res!619763 () Bool)

(assert (=> b!1375515 (=> (not res!619763) (not e!879058))))

(assert (=> b!1375515 (= res!619763 (< (size!11415 (_2!7641 (get!4350 lt!457009))) (size!11415 (list!5362 lt!456142))))))

(declare-fun d!393184 () Bool)

(assert (=> d!393184 e!879059))

(declare-fun res!619767 () Bool)

(assert (=> d!393184 (=> res!619767 e!879059)))

(assert (=> d!393184 (= res!619767 (isEmpty!8399 lt!457009))))

(assert (=> d!393184 (= lt!457009 e!879060)))

(declare-fun c!226561 () Bool)

(assert (=> d!393184 (= c!226561 (and ((_ is Cons!13905) rules!2550) ((_ is Nil!13905) (t!121642 rules!2550))))))

(declare-fun lt!457006 () Unit!20133)

(declare-fun lt!457008 () Unit!20133)

(assert (=> d!393184 (= lt!457006 lt!457008)))

(assert (=> d!393184 (isPrefix!1131 (list!5362 lt!456142) (list!5362 lt!456142))))

(assert (=> d!393184 (= lt!457008 (lemmaIsPrefixRefl!793 (list!5362 lt!456142) (list!5362 lt!456142)))))

(assert (=> d!393184 (rulesValidInductive!772 thiss!19762 rules!2550)))

(assert (=> d!393184 (= (maxPrefix!1084 thiss!19762 rules!2550 (list!5362 lt!456142)) lt!457009)))

(assert (= (and d!393184 c!226561) b!1375514))

(assert (= (and d!393184 (not c!226561)) b!1375513))

(assert (= (or b!1375514 b!1375513) bm!92324))

(assert (= (and d!393184 (not res!619767)) b!1375518))

(assert (= (and b!1375518 res!619766) b!1375510))

(assert (= (and b!1375510 res!619768) b!1375515))

(assert (= (and b!1375515 res!619763) b!1375516))

(assert (= (and b!1375516 res!619764) b!1375517))

(assert (= (and b!1375517 res!619762) b!1375512))

(assert (= (and b!1375512 res!619765) b!1375511))

(declare-fun m!1547949 () Bool)

(assert (=> b!1375511 m!1547949))

(declare-fun m!1547951 () Bool)

(assert (=> b!1375511 m!1547951))

(assert (=> b!1375516 m!1547949))

(declare-fun m!1547953 () Bool)

(assert (=> b!1375516 m!1547953))

(assert (=> b!1375516 m!1547953))

(declare-fun m!1547955 () Bool)

(assert (=> b!1375516 m!1547955))

(assert (=> b!1375516 m!1547955))

(declare-fun m!1547957 () Bool)

(assert (=> b!1375516 m!1547957))

(assert (=> bm!92324 m!1544831))

(declare-fun m!1547959 () Bool)

(assert (=> bm!92324 m!1547959))

(assert (=> b!1375512 m!1547949))

(assert (=> b!1375512 m!1547953))

(assert (=> b!1375512 m!1547953))

(assert (=> b!1375512 m!1547955))

(assert (=> b!1375512 m!1547955))

(declare-fun m!1547961 () Bool)

(assert (=> b!1375512 m!1547961))

(assert (=> b!1375510 m!1547949))

(assert (=> b!1375510 m!1547953))

(assert (=> b!1375510 m!1547953))

(assert (=> b!1375510 m!1547955))

(assert (=> b!1375513 m!1544831))

(declare-fun m!1547963 () Bool)

(assert (=> b!1375513 m!1547963))

(assert (=> b!1375517 m!1547949))

(declare-fun m!1547965 () Bool)

(assert (=> b!1375517 m!1547965))

(assert (=> b!1375517 m!1547965))

(declare-fun m!1547967 () Bool)

(assert (=> b!1375517 m!1547967))

(declare-fun m!1547969 () Bool)

(assert (=> b!1375518 m!1547969))

(declare-fun m!1547971 () Bool)

(assert (=> d!393184 m!1547971))

(assert (=> d!393184 m!1544831))

(assert (=> d!393184 m!1544831))

(declare-fun m!1547973 () Bool)

(assert (=> d!393184 m!1547973))

(assert (=> d!393184 m!1544831))

(assert (=> d!393184 m!1544831))

(declare-fun m!1547975 () Bool)

(assert (=> d!393184 m!1547975))

(assert (=> d!393184 m!1545759))

(assert (=> b!1375515 m!1547949))

(declare-fun m!1547977 () Bool)

(assert (=> b!1375515 m!1547977))

(assert (=> b!1375515 m!1544831))

(assert (=> b!1375515 m!1545541))

(assert (=> d!392320 d!393184))

(declare-fun b!1375530 () Bool)

(declare-fun e!879063 () Bool)

(declare-fun lt!457012 () BalanceConc!9092)

(assert (=> b!1375530 (= e!879063 (= (list!5362 lt!457012) (++!3598 (list!5362 (charsOf!1379 t1!34)) (list!5362 (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))))))))

(declare-fun d!393188 () Bool)

(assert (=> d!393188 e!879063))

(declare-fun res!619777 () Bool)

(assert (=> d!393188 (=> (not res!619777) (not e!879063))))

(declare-fun appendAssocInst!282 (Conc!4576 Conc!4576) Bool)

(assert (=> d!393188 (= res!619777 (appendAssocInst!282 (c!226060 (charsOf!1379 t1!34)) (c!226060 (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0)))))))

(declare-fun ++!3603 (Conc!4576 Conc!4576) Conc!4576)

(assert (=> d!393188 (= lt!457012 (BalanceConc!9093 (++!3603 (c!226060 (charsOf!1379 t1!34)) (c!226060 (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))))))))

(assert (=> d!393188 (= (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))) lt!457012)))

(declare-fun b!1375527 () Bool)

(declare-fun res!619780 () Bool)

(assert (=> b!1375527 (=> (not res!619780) (not e!879063))))

(assert (=> b!1375527 (= res!619780 (isBalanced!1351 (++!3603 (c!226060 (charsOf!1379 t1!34)) (c!226060 (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))))))))

(declare-fun b!1375529 () Bool)

(declare-fun res!619778 () Bool)

(assert (=> b!1375529 (=> (not res!619778) (not e!879063))))

(declare-fun height!670 (Conc!4576) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1375529 (= res!619778 (>= (height!670 (++!3603 (c!226060 (charsOf!1379 t1!34)) (c!226060 (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))))) (max!0 (height!670 (c!226060 (charsOf!1379 t1!34))) (height!670 (c!226060 (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0)))))))))

(declare-fun b!1375528 () Bool)

(declare-fun res!619779 () Bool)

(assert (=> b!1375528 (=> (not res!619779) (not e!879063))))

(assert (=> b!1375528 (= res!619779 (<= (height!670 (++!3603 (c!226060 (charsOf!1379 t1!34)) (c!226060 (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))))) (+ (max!0 (height!670 (c!226060 (charsOf!1379 t1!34))) (height!670 (c!226060 (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))))) 1)))))

(assert (= (and d!393188 res!619777) b!1375527))

(assert (= (and b!1375527 res!619780) b!1375528))

(assert (= (and b!1375528 res!619779) b!1375529))

(assert (= (and b!1375529 res!619778) b!1375530))

(declare-fun m!1547979 () Bool)

(assert (=> b!1375528 m!1547979))

(declare-fun m!1547981 () Bool)

(assert (=> b!1375528 m!1547981))

(declare-fun m!1547983 () Bool)

(assert (=> b!1375528 m!1547983))

(assert (=> b!1375528 m!1547981))

(declare-fun m!1547985 () Bool)

(assert (=> b!1375528 m!1547985))

(assert (=> b!1375528 m!1547985))

(assert (=> b!1375528 m!1547979))

(declare-fun m!1547987 () Bool)

(assert (=> b!1375528 m!1547987))

(assert (=> b!1375529 m!1547979))

(assert (=> b!1375529 m!1547981))

(assert (=> b!1375529 m!1547983))

(assert (=> b!1375529 m!1547981))

(assert (=> b!1375529 m!1547985))

(assert (=> b!1375529 m!1547985))

(assert (=> b!1375529 m!1547979))

(assert (=> b!1375529 m!1547987))

(declare-fun m!1547989 () Bool)

(assert (=> b!1375530 m!1547989))

(assert (=> b!1375530 m!1544803))

(declare-fun m!1547991 () Bool)

(assert (=> b!1375530 m!1547991))

(assert (=> b!1375530 m!1545007))

(declare-fun m!1547993 () Bool)

(assert (=> b!1375530 m!1547993))

(assert (=> b!1375530 m!1547991))

(assert (=> b!1375530 m!1547993))

(declare-fun m!1547995 () Bool)

(assert (=> b!1375530 m!1547995))

(declare-fun m!1547997 () Bool)

(assert (=> d!393188 m!1547997))

(assert (=> d!393188 m!1547981))

(assert (=> b!1375527 m!1547981))

(assert (=> b!1375527 m!1547981))

(declare-fun m!1547999 () Bool)

(assert (=> b!1375527 m!1547999))

(assert (=> d!392174 d!393188))

(declare-fun d!393190 () Bool)

(declare-fun lt!457073 () Bool)

(assert (=> d!393190 (= lt!457073 (prefixMatch!230 (rulesRegex!290 thiss!19762 rules!2550) (list!5362 (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))))))))

(declare-datatypes ((Context!1208 0))(
  ( (Context!1209 (exprs!1104 List!13972)) )
))
(declare-fun prefixMatchZipperSequence!263 ((InoxSet Context!1208) BalanceConc!9092 Int) Bool)

(declare-fun focus!95 (Regex!3721) (InoxSet Context!1208))

(assert (=> d!393190 (= lt!457073 (prefixMatchZipperSequence!263 (focus!95 (rulesRegex!290 thiss!19762 rules!2550)) (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))) 0))))

(declare-fun lt!457068 () Unit!20133)

(declare-fun lt!457070 () Unit!20133)

(assert (=> d!393190 (= lt!457068 lt!457070)))

(declare-fun lt!457071 () List!13969)

(declare-fun lt!457075 () (InoxSet Context!1208))

(declare-fun prefixMatchZipper!75 ((InoxSet Context!1208) List!13969) Bool)

(assert (=> d!393190 (= (prefixMatch!230 (rulesRegex!290 thiss!19762 rules!2550) lt!457071) (prefixMatchZipper!75 lt!457075 lt!457071))))

(declare-datatypes ((List!13975 0))(
  ( (Nil!13909) (Cons!13909 (h!19310 Context!1208) (t!121788 List!13975)) )
))
(declare-fun lt!457067 () List!13975)

(declare-fun prefixMatchZipperRegexEquiv!75 ((InoxSet Context!1208) List!13975 Regex!3721 List!13969) Unit!20133)

(assert (=> d!393190 (= lt!457070 (prefixMatchZipperRegexEquiv!75 lt!457075 lt!457067 (rulesRegex!290 thiss!19762 rules!2550) lt!457071))))

(assert (=> d!393190 (= lt!457071 (list!5362 (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0)))))))

(declare-fun toList!759 ((InoxSet Context!1208)) List!13975)

(assert (=> d!393190 (= lt!457067 (toList!759 (focus!95 (rulesRegex!290 thiss!19762 rules!2550))))))

(assert (=> d!393190 (= lt!457075 (focus!95 (rulesRegex!290 thiss!19762 rules!2550)))))

(declare-fun lt!457072 () Unit!20133)

(declare-fun lt!457074 () Unit!20133)

(assert (=> d!393190 (= lt!457072 lt!457074)))

(declare-fun lt!457076 () Int)

(declare-fun lt!457069 () (InoxSet Context!1208))

(declare-fun dropList!413 (BalanceConc!9092 Int) List!13969)

(assert (=> d!393190 (= (prefixMatchZipper!75 lt!457069 (dropList!413 (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))) lt!457076)) (prefixMatchZipperSequence!263 lt!457069 (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))) lt!457076))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!75 ((InoxSet Context!1208) BalanceConc!9092 Int) Unit!20133)

(assert (=> d!393190 (= lt!457074 (lemmaprefixMatchZipperSequenceEquivalent!75 lt!457069 (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0))) lt!457076))))

(assert (=> d!393190 (= lt!457076 0)))

(assert (=> d!393190 (= lt!457069 (focus!95 (rulesRegex!290 thiss!19762 rules!2550)))))

(assert (=> d!393190 (validRegex!1621 (rulesRegex!290 thiss!19762 rules!2550))))

(assert (=> d!393190 (= (prefixMatchZipperSequence!261 (rulesRegex!290 thiss!19762 rules!2550) (++!3599 (charsOf!1379 t1!34) (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0)))) lt!457073)))

(declare-fun bs!336250 () Bool)

(assert (= bs!336250 d!393190))

(assert (=> bs!336250 m!1544809))

(declare-fun m!1548047 () Bool)

(assert (=> bs!336250 m!1548047))

(declare-fun m!1548049 () Bool)

(assert (=> bs!336250 m!1548049))

(assert (=> bs!336250 m!1545009))

(declare-fun m!1548053 () Bool)

(assert (=> bs!336250 m!1548053))

(assert (=> bs!336250 m!1545009))

(declare-fun m!1548059 () Bool)

(assert (=> bs!336250 m!1548059))

(assert (=> bs!336250 m!1544809))

(declare-fun m!1548061 () Bool)

(assert (=> bs!336250 m!1548061))

(declare-fun m!1548063 () Bool)

(assert (=> bs!336250 m!1548063))

(assert (=> bs!336250 m!1545009))

(declare-fun m!1548065 () Bool)

(assert (=> bs!336250 m!1548065))

(assert (=> bs!336250 m!1545009))

(assert (=> bs!336250 m!1548061))

(assert (=> bs!336250 m!1548059))

(declare-fun m!1548067 () Bool)

(assert (=> bs!336250 m!1548067))

(assert (=> bs!336250 m!1544809))

(declare-fun m!1548069 () Bool)

(assert (=> bs!336250 m!1548069))

(declare-fun m!1548071 () Bool)

(assert (=> bs!336250 m!1548071))

(assert (=> bs!336250 m!1545009))

(declare-fun m!1548073 () Bool)

(assert (=> bs!336250 m!1548073))

(assert (=> bs!336250 m!1544809))

(assert (=> bs!336250 m!1548071))

(assert (=> bs!336250 m!1544809))

(declare-fun m!1548075 () Bool)

(assert (=> bs!336250 m!1548075))

(assert (=> bs!336250 m!1548071))

(declare-fun m!1548077 () Bool)

(assert (=> bs!336250 m!1548077))

(assert (=> d!392174 d!393190))

(declare-fun d!393200 () Bool)

(declare-fun e!879104 () Bool)

(assert (=> d!393200 e!879104))

(declare-fun res!619792 () Bool)

(assert (=> d!393200 (=> (not res!619792) (not e!879104))))

(declare-fun lt!457079 () BalanceConc!9092)

(assert (=> d!393200 (= res!619792 (= (list!5362 lt!457079) (Cons!13903 (apply!3423 (charsOf!1379 t2!34) 0) Nil!13903)))))

(declare-fun singleton!457 (C!7732) BalanceConc!9092)

(assert (=> d!393200 (= lt!457079 (singleton!457 (apply!3423 (charsOf!1379 t2!34) 0)))))

(assert (=> d!393200 (= (singletonSeq!1041 (apply!3423 (charsOf!1379 t2!34) 0)) lt!457079)))

(declare-fun b!1375625 () Bool)

(assert (=> b!1375625 (= e!879104 (isBalanced!1351 (c!226060 lt!457079)))))

(assert (= (and d!393200 res!619792) b!1375625))

(declare-fun m!1548101 () Bool)

(assert (=> d!393200 m!1548101))

(assert (=> d!393200 m!1545005))

(declare-fun m!1548103 () Bool)

(assert (=> d!393200 m!1548103))

(declare-fun m!1548105 () Bool)

(assert (=> b!1375625 m!1548105))

(assert (=> d!392174 d!393200))

(assert (=> d!392174 d!392168))

(declare-fun d!393226 () Bool)

(declare-fun lt!457080 () C!7732)

(assert (=> d!393226 (= lt!457080 (apply!3425 (list!5362 (charsOf!1379 t2!34)) 0))))

(assert (=> d!393226 (= lt!457080 (apply!3426 (c!226060 (charsOf!1379 t2!34)) 0))))

(declare-fun e!879105 () Bool)

(assert (=> d!393226 e!879105))

(declare-fun res!619793 () Bool)

(assert (=> d!393226 (=> (not res!619793) (not e!879105))))

(assert (=> d!393226 (= res!619793 (<= 0 0))))

(assert (=> d!393226 (= (apply!3423 (charsOf!1379 t2!34) 0) lt!457080)))

(declare-fun b!1375626 () Bool)

(assert (=> b!1375626 (= e!879105 (< 0 (size!11410 (charsOf!1379 t2!34))))))

(assert (= (and d!393226 res!619793) b!1375626))

(assert (=> d!393226 m!1544881))

(declare-fun m!1548107 () Bool)

(assert (=> d!393226 m!1548107))

(assert (=> d!393226 m!1548107))

(declare-fun m!1548109 () Bool)

(assert (=> d!393226 m!1548109))

(declare-fun m!1548111 () Bool)

(assert (=> d!393226 m!1548111))

(assert (=> b!1375626 m!1544881))

(declare-fun m!1548113 () Bool)

(assert (=> b!1375626 m!1548113))

(assert (=> d!392174 d!393226))

(assert (=> d!392174 d!392160))

(assert (=> d!392174 d!392430))

(declare-fun b!1375629 () Bool)

(declare-fun res!619795 () Bool)

(declare-fun e!879106 () Bool)

(assert (=> b!1375629 (=> (not res!619795) (not e!879106))))

(declare-fun lt!457081 () List!13969)

(assert (=> b!1375629 (= res!619795 (= (size!11415 lt!457081) (+ (size!11415 (t!121640 lt!456127)) (size!11415 (getSuffix!569 lt!456122 lt!456127)))))))

(declare-fun b!1375630 () Bool)

(assert (=> b!1375630 (= e!879106 (or (not (= (getSuffix!569 lt!456122 lt!456127) Nil!13903)) (= lt!457081 (t!121640 lt!456127))))))

(declare-fun d!393228 () Bool)

(assert (=> d!393228 e!879106))

(declare-fun res!619794 () Bool)

(assert (=> d!393228 (=> (not res!619794) (not e!879106))))

(assert (=> d!393228 (= res!619794 (= (content!2037 lt!457081) ((_ map or) (content!2037 (t!121640 lt!456127)) (content!2037 (getSuffix!569 lt!456122 lt!456127)))))))

(declare-fun e!879107 () List!13969)

(assert (=> d!393228 (= lt!457081 e!879107)))

(declare-fun c!226565 () Bool)

(assert (=> d!393228 (= c!226565 ((_ is Nil!13903) (t!121640 lt!456127)))))

(assert (=> d!393228 (= (++!3598 (t!121640 lt!456127) (getSuffix!569 lt!456122 lt!456127)) lt!457081)))

(declare-fun b!1375628 () Bool)

(assert (=> b!1375628 (= e!879107 (Cons!13903 (h!19304 (t!121640 lt!456127)) (++!3598 (t!121640 (t!121640 lt!456127)) (getSuffix!569 lt!456122 lt!456127))))))

(declare-fun b!1375627 () Bool)

(assert (=> b!1375627 (= e!879107 (getSuffix!569 lt!456122 lt!456127))))

(assert (= (and d!393228 c!226565) b!1375627))

(assert (= (and d!393228 (not c!226565)) b!1375628))

(assert (= (and d!393228 res!619794) b!1375629))

(assert (= (and b!1375629 res!619795) b!1375630))

(declare-fun m!1548115 () Bool)

(assert (=> b!1375629 m!1548115))

(assert (=> b!1375629 m!1547221))

(assert (=> b!1375629 m!1544825))

(assert (=> b!1375629 m!1545189))

(declare-fun m!1548117 () Bool)

(assert (=> d!393228 m!1548117))

(assert (=> d!393228 m!1547115))

(assert (=> d!393228 m!1544825))

(assert (=> d!393228 m!1545193))

(assert (=> b!1375628 m!1544825))

(declare-fun m!1548119 () Bool)

(assert (=> b!1375628 m!1548119))

(assert (=> b!1373732 d!393228))

(declare-fun b!1375633 () Bool)

(declare-fun res!619797 () Bool)

(declare-fun e!879108 () Bool)

(assert (=> b!1375633 (=> (not res!619797) (not e!879108))))

(declare-fun lt!457082 () List!13969)

(assert (=> b!1375633 (= res!619797 (= (size!11415 lt!457082) (+ (size!11415 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))) (size!11415 (_2!7641 (get!4350 lt!456377))))))))

(declare-fun b!1375634 () Bool)

(assert (=> b!1375634 (= e!879108 (or (not (= (_2!7641 (get!4350 lt!456377)) Nil!13903)) (= lt!457082 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377)))))))))

(declare-fun d!393230 () Bool)

(assert (=> d!393230 e!879108))

(declare-fun res!619796 () Bool)

(assert (=> d!393230 (=> (not res!619796) (not e!879108))))

(assert (=> d!393230 (= res!619796 (= (content!2037 lt!457082) ((_ map or) (content!2037 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))) (content!2037 (_2!7641 (get!4350 lt!456377))))))))

(declare-fun e!879109 () List!13969)

(assert (=> d!393230 (= lt!457082 e!879109)))

(declare-fun c!226566 () Bool)

(assert (=> d!393230 (= c!226566 ((_ is Nil!13903) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))))))

(assert (=> d!393230 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377)))) (_2!7641 (get!4350 lt!456377))) lt!457082)))

(declare-fun b!1375632 () Bool)

(assert (=> b!1375632 (= e!879109 (Cons!13903 (h!19304 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))) (++!3598 (t!121640 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))) (_2!7641 (get!4350 lt!456377)))))))

(declare-fun b!1375631 () Bool)

(assert (=> b!1375631 (= e!879109 (_2!7641 (get!4350 lt!456377)))))

(assert (= (and d!393230 c!226566) b!1375631))

(assert (= (and d!393230 (not c!226566)) b!1375632))

(assert (= (and d!393230 res!619796) b!1375633))

(assert (= (and b!1375633 res!619797) b!1375634))

(declare-fun m!1548121 () Bool)

(assert (=> b!1375633 m!1548121))

(assert (=> b!1375633 m!1545737))

(declare-fun m!1548123 () Bool)

(assert (=> b!1375633 m!1548123))

(assert (=> b!1375633 m!1545761))

(declare-fun m!1548125 () Bool)

(assert (=> d!393230 m!1548125))

(assert (=> d!393230 m!1545737))

(declare-fun m!1548127 () Bool)

(assert (=> d!393230 m!1548127))

(declare-fun m!1548129 () Bool)

(assert (=> d!393230 m!1548129))

(declare-fun m!1548131 () Bool)

(assert (=> b!1375632 m!1548131))

(assert (=> b!1374129 d!393230))

(assert (=> b!1374129 d!392690))

(assert (=> b!1374129 d!392692))

(assert (=> b!1374129 d!392640))

(declare-fun lt!457083 () Bool)

(declare-fun d!393232 () Bool)

(assert (=> d!393232 (= lt!457083 (select (content!2039 (map!3071 rules!2550 lambda!58378)) lt!456361))))

(declare-fun e!879110 () Bool)

(assert (=> d!393232 (= lt!457083 e!879110)))

(declare-fun res!619798 () Bool)

(assert (=> d!393232 (=> (not res!619798) (not e!879110))))

(assert (=> d!393232 (= res!619798 ((_ is Cons!13906) (map!3071 rules!2550 lambda!58378)))))

(assert (=> d!393232 (= (contains!2609 (map!3071 rules!2550 lambda!58378) lt!456361) lt!457083)))

(declare-fun b!1375635 () Bool)

(declare-fun e!879111 () Bool)

(assert (=> b!1375635 (= e!879110 e!879111)))

(declare-fun res!619799 () Bool)

(assert (=> b!1375635 (=> res!619799 e!879111)))

(assert (=> b!1375635 (= res!619799 (= (h!19307 (map!3071 rules!2550 lambda!58378)) lt!456361))))

(declare-fun b!1375636 () Bool)

(assert (=> b!1375636 (= e!879111 (contains!2609 (t!121643 (map!3071 rules!2550 lambda!58378)) lt!456361))))

(assert (= (and d!393232 res!619798) b!1375635))

(assert (= (and b!1375635 (not res!619799)) b!1375636))

(assert (=> d!393232 m!1544793))

(assert (=> d!393232 m!1545673))

(declare-fun m!1548133 () Bool)

(assert (=> d!393232 m!1548133))

(declare-fun m!1548135 () Bool)

(assert (=> b!1375636 m!1548135))

(assert (=> b!1374087 d!393232))

(declare-fun d!393234 () Bool)

(declare-fun lt!457084 () C!7732)

(assert (=> d!393234 (contains!2607 (list!5362 lt!456140) lt!457084)))

(declare-fun e!879112 () C!7732)

(assert (=> d!393234 (= lt!457084 e!879112)))

(declare-fun c!226567 () Bool)

(assert (=> d!393234 (= c!226567 (= 0 0))))

(declare-fun e!879113 () Bool)

(assert (=> d!393234 e!879113))

(declare-fun res!619800 () Bool)

(assert (=> d!393234 (=> (not res!619800) (not e!879113))))

(assert (=> d!393234 (= res!619800 (<= 0 0))))

(assert (=> d!393234 (= (apply!3425 (list!5362 lt!456140) 0) lt!457084)))

(declare-fun b!1375637 () Bool)

(assert (=> b!1375637 (= e!879113 (< 0 (size!11415 (list!5362 lt!456140))))))

(declare-fun b!1375638 () Bool)

(assert (=> b!1375638 (= e!879112 (head!2475 (list!5362 lt!456140)))))

(declare-fun b!1375639 () Bool)

(assert (=> b!1375639 (= e!879112 (apply!3425 (tail!1987 (list!5362 lt!456140)) (- 0 1)))))

(assert (= (and d!393234 res!619800) b!1375637))

(assert (= (and d!393234 c!226567) b!1375638))

(assert (= (and d!393234 (not c!226567)) b!1375639))

(assert (=> d!393234 m!1544791))

(declare-fun m!1548137 () Bool)

(assert (=> d!393234 m!1548137))

(assert (=> b!1375637 m!1544791))

(assert (=> b!1375637 m!1545847))

(assert (=> b!1375638 m!1544791))

(declare-fun m!1548139 () Bool)

(assert (=> b!1375638 m!1548139))

(assert (=> b!1375639 m!1544791))

(declare-fun m!1548141 () Bool)

(assert (=> b!1375639 m!1548141))

(assert (=> b!1375639 m!1548141))

(declare-fun m!1548143 () Bool)

(assert (=> b!1375639 m!1548143))

(assert (=> d!392152 d!393234))

(assert (=> d!392152 d!392440))

(declare-fun b!1375640 () Bool)

(declare-fun e!879117 () C!7732)

(declare-fun call!92330 () C!7732)

(assert (=> b!1375640 (= e!879117 call!92330)))

(declare-fun b!1375641 () Bool)

(assert (=> b!1375641 (= e!879117 call!92330)))

(declare-fun b!1375643 () Bool)

(declare-fun e!879115 () Bool)

(assert (=> b!1375643 (= e!879115 (< 0 (size!11422 (c!226060 lt!456140))))))

(declare-fun b!1375644 () Bool)

(declare-fun e!879116 () C!7732)

(assert (=> b!1375644 (= e!879116 (apply!3437 (xs!7303 (c!226060 lt!456140)) 0))))

(declare-fun b!1375645 () Bool)

(declare-fun e!879114 () Int)

(assert (=> b!1375645 (= e!879114 0)))

(declare-fun b!1375646 () Bool)

(assert (=> b!1375646 (= e!879114 (- 0 (size!11422 (left!11893 (c!226060 lt!456140)))))))

(declare-fun bm!92325 () Bool)

(declare-fun c!226570 () Bool)

(declare-fun c!226568 () Bool)

(assert (=> bm!92325 (= c!226570 c!226568)))

(assert (=> bm!92325 (= call!92330 (apply!3426 (ite c!226568 (left!11893 (c!226060 lt!456140)) (right!12223 (c!226060 lt!456140))) e!879114))))

(declare-fun b!1375642 () Bool)

(assert (=> b!1375642 (= e!879116 e!879117)))

(declare-fun lt!457085 () Bool)

(assert (=> b!1375642 (= lt!457085 (appendIndex!171 (list!5366 (left!11893 (c!226060 lt!456140))) (list!5366 (right!12223 (c!226060 lt!456140))) 0))))

(assert (=> b!1375642 (= c!226568 (< 0 (size!11422 (left!11893 (c!226060 lt!456140)))))))

(declare-fun d!393236 () Bool)

(declare-fun lt!457086 () C!7732)

(assert (=> d!393236 (= lt!457086 (apply!3425 (list!5366 (c!226060 lt!456140)) 0))))

(assert (=> d!393236 (= lt!457086 e!879116)))

(declare-fun c!226569 () Bool)

(assert (=> d!393236 (= c!226569 ((_ is Leaf!6976) (c!226060 lt!456140)))))

(assert (=> d!393236 e!879115))

(declare-fun res!619801 () Bool)

(assert (=> d!393236 (=> (not res!619801) (not e!879115))))

(assert (=> d!393236 (= res!619801 (<= 0 0))))

(assert (=> d!393236 (= (apply!3426 (c!226060 lt!456140) 0) lt!457086)))

(assert (= (and d!393236 res!619801) b!1375643))

(assert (= (and d!393236 c!226569) b!1375644))

(assert (= (and d!393236 (not c!226569)) b!1375642))

(assert (= (and b!1375642 c!226568) b!1375640))

(assert (= (and b!1375642 (not c!226568)) b!1375641))

(assert (= (or b!1375640 b!1375641) bm!92325))

(assert (= (and bm!92325 c!226570) b!1375645))

(assert (= (and bm!92325 (not c!226570)) b!1375646))

(declare-fun m!1548145 () Bool)

(assert (=> b!1375644 m!1548145))

(declare-fun m!1548147 () Bool)

(assert (=> b!1375646 m!1548147))

(assert (=> d!393236 m!1545903))

(assert (=> d!393236 m!1545903))

(declare-fun m!1548149 () Bool)

(assert (=> d!393236 m!1548149))

(declare-fun m!1548151 () Bool)

(assert (=> bm!92325 m!1548151))

(declare-fun m!1548153 () Bool)

(assert (=> b!1375642 m!1548153))

(declare-fun m!1548155 () Bool)

(assert (=> b!1375642 m!1548155))

(assert (=> b!1375642 m!1548153))

(assert (=> b!1375642 m!1548155))

(declare-fun m!1548157 () Bool)

(assert (=> b!1375642 m!1548157))

(assert (=> b!1375642 m!1548147))

(assert (=> b!1375643 m!1545849))

(assert (=> d!392152 d!393236))

(declare-fun d!393238 () Bool)

(assert (=> d!393238 (= (nullable!1201 (regex!2407 (rule!4164 t1!34))) (nullableFct!283 (regex!2407 (rule!4164 t1!34))))))

(declare-fun bs!336263 () Bool)

(assert (= bs!336263 d!393238))

(declare-fun m!1548159 () Bool)

(assert (=> bs!336263 m!1548159))

(assert (=> b!1374136 d!393238))

(declare-fun b!1375647 () Bool)

(declare-fun e!879118 () Bool)

(declare-fun e!879119 () Bool)

(assert (=> b!1375647 (= e!879118 e!879119)))

(declare-fun res!619805 () Bool)

(assert (=> b!1375647 (=> (not res!619805) (not e!879119))))

(assert (=> b!1375647 (= res!619805 (<= (- 1) (- (height!668 (left!11894 (c!226062 lt!456387))) (height!668 (right!12224 (c!226062 lt!456387))))))))

(declare-fun b!1375648 () Bool)

(assert (=> b!1375648 (= e!879119 (not (isEmpty!8401 (right!12224 (c!226062 lt!456387)))))))

(declare-fun b!1375649 () Bool)

(declare-fun res!619803 () Bool)

(assert (=> b!1375649 (=> (not res!619803) (not e!879119))))

(assert (=> b!1375649 (= res!619803 (not (isEmpty!8401 (left!11894 (c!226062 lt!456387)))))))

(declare-fun b!1375650 () Bool)

(declare-fun res!619804 () Bool)

(assert (=> b!1375650 (=> (not res!619804) (not e!879119))))

(assert (=> b!1375650 (= res!619804 (isBalanced!1350 (right!12224 (c!226062 lt!456387))))))

(declare-fun d!393240 () Bool)

(declare-fun res!619802 () Bool)

(assert (=> d!393240 (=> res!619802 e!879118)))

(assert (=> d!393240 (= res!619802 (not ((_ is Node!4577) (c!226062 lt!456387))))))

(assert (=> d!393240 (= (isBalanced!1350 (c!226062 lt!456387)) e!879118)))

(declare-fun b!1375651 () Bool)

(declare-fun res!619806 () Bool)

(assert (=> b!1375651 (=> (not res!619806) (not e!879119))))

(assert (=> b!1375651 (= res!619806 (<= (- (height!668 (left!11894 (c!226062 lt!456387))) (height!668 (right!12224 (c!226062 lt!456387)))) 1))))

(declare-fun b!1375652 () Bool)

(declare-fun res!619807 () Bool)

(assert (=> b!1375652 (=> (not res!619807) (not e!879119))))

(assert (=> b!1375652 (= res!619807 (isBalanced!1350 (left!11894 (c!226062 lt!456387))))))

(assert (= (and d!393240 (not res!619802)) b!1375647))

(assert (= (and b!1375647 res!619805) b!1375651))

(assert (= (and b!1375651 res!619806) b!1375652))

(assert (= (and b!1375652 res!619807) b!1375650))

(assert (= (and b!1375650 res!619804) b!1375649))

(assert (= (and b!1375649 res!619803) b!1375648))

(declare-fun m!1548161 () Bool)

(assert (=> b!1375648 m!1548161))

(declare-fun m!1548163 () Bool)

(assert (=> b!1375652 m!1548163))

(declare-fun m!1548165 () Bool)

(assert (=> b!1375647 m!1548165))

(declare-fun m!1548167 () Bool)

(assert (=> b!1375647 m!1548167))

(declare-fun m!1548169 () Bool)

(assert (=> b!1375650 m!1548169))

(assert (=> b!1375651 m!1548165))

(assert (=> b!1375651 m!1548167))

(declare-fun m!1548171 () Bool)

(assert (=> b!1375649 m!1548171))

(assert (=> b!1374173 d!393240))

(declare-fun d!393242 () Bool)

(declare-fun lt!457087 () Bool)

(assert (=> d!393242 (= lt!457087 (isEmpty!8392 (list!5362 (_2!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34)))))))))

(assert (=> d!393242 (= lt!457087 (isEmpty!8395 (c!226060 (_2!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34)))))))))

(assert (=> d!393242 (= (isEmpty!8389 (_2!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34))))) lt!457087)))

(declare-fun bs!336264 () Bool)

(assert (= bs!336264 d!393242))

(declare-fun m!1548173 () Bool)

(assert (=> bs!336264 m!1548173))

(assert (=> bs!336264 m!1548173))

(declare-fun m!1548175 () Bool)

(assert (=> bs!336264 m!1548175))

(declare-fun m!1548177 () Bool)

(assert (=> bs!336264 m!1548177))

(assert (=> b!1373721 d!393242))

(declare-fun b!1375653 () Bool)

(declare-fun e!879120 () Bool)

(declare-fun e!879121 () Bool)

(assert (=> b!1375653 (= e!879120 e!879121)))

(declare-fun lt!457088 () tuple2!13508)

(declare-fun res!619810 () Bool)

(assert (=> b!1375653 (= res!619810 (< (size!11410 (_2!7640 lt!457088)) (size!11410 (print!868 thiss!19762 (singletonSeq!1040 t1!34)))))))

(assert (=> b!1375653 (=> (not res!619810) (not e!879121))))

(declare-fun b!1375655 () Bool)

(declare-fun res!619808 () Bool)

(declare-fun e!879122 () Bool)

(assert (=> b!1375655 (=> (not res!619808) (not e!879122))))

(assert (=> b!1375655 (= res!619808 (= (list!5363 (_1!7640 lt!457088)) (_1!7639 (lexList!620 thiss!19762 rules!2550 (list!5362 (print!868 thiss!19762 (singletonSeq!1040 t1!34)))))))))

(declare-fun b!1375656 () Bool)

(assert (=> b!1375656 (= e!879120 (= (_2!7640 lt!457088) (print!868 thiss!19762 (singletonSeq!1040 t1!34))))))

(declare-fun b!1375657 () Bool)

(assert (=> b!1375657 (= e!879121 (not (isEmpty!8396 (_1!7640 lt!457088))))))

(declare-fun d!393244 () Bool)

(assert (=> d!393244 e!879122))

(declare-fun res!619809 () Bool)

(assert (=> d!393244 (=> (not res!619809) (not e!879122))))

(assert (=> d!393244 (= res!619809 e!879120)))

(declare-fun c!226571 () Bool)

(assert (=> d!393244 (= c!226571 (> (size!11416 (_1!7640 lt!457088)) 0))))

(assert (=> d!393244 (= lt!457088 (lexTailRecV2!415 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34)) (BalanceConc!9093 Empty!4576) (print!868 thiss!19762 (singletonSeq!1040 t1!34)) (BalanceConc!9095 Empty!4577)))))

(assert (=> d!393244 (= (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34))) lt!457088)))

(declare-fun b!1375654 () Bool)

(assert (=> b!1375654 (= e!879122 (= (list!5362 (_2!7640 lt!457088)) (_2!7639 (lexList!620 thiss!19762 rules!2550 (list!5362 (print!868 thiss!19762 (singletonSeq!1040 t1!34)))))))))

(assert (= (and d!393244 c!226571) b!1375653))

(assert (= (and d!393244 (not c!226571)) b!1375656))

(assert (= (and b!1375653 res!619810) b!1375657))

(assert (= (and d!393244 res!619809) b!1375655))

(assert (= (and b!1375655 res!619808) b!1375654))

(declare-fun m!1548179 () Bool)

(assert (=> b!1375657 m!1548179))

(declare-fun m!1548181 () Bool)

(assert (=> b!1375655 m!1548181))

(assert (=> b!1375655 m!1544817))

(declare-fun m!1548183 () Bool)

(assert (=> b!1375655 m!1548183))

(assert (=> b!1375655 m!1548183))

(declare-fun m!1548185 () Bool)

(assert (=> b!1375655 m!1548185))

(declare-fun m!1548187 () Bool)

(assert (=> b!1375654 m!1548187))

(assert (=> b!1375654 m!1544817))

(assert (=> b!1375654 m!1548183))

(assert (=> b!1375654 m!1548183))

(assert (=> b!1375654 m!1548185))

(declare-fun m!1548189 () Bool)

(assert (=> b!1375653 m!1548189))

(assert (=> b!1375653 m!1544817))

(declare-fun m!1548191 () Bool)

(assert (=> b!1375653 m!1548191))

(declare-fun m!1548193 () Bool)

(assert (=> d!393244 m!1548193))

(assert (=> d!393244 m!1544817))

(assert (=> d!393244 m!1544817))

(declare-fun m!1548195 () Bool)

(assert (=> d!393244 m!1548195))

(assert (=> b!1373721 d!393244))

(assert (=> b!1373721 d!392282))

(assert (=> b!1373721 d!392292))

(declare-fun d!393246 () Bool)

(assert (=> d!393246 (= (isEmpty!8392 (list!5362 (_2!7640 lt!456131))) ((_ is Nil!13903) (list!5362 (_2!7640 lt!456131))))))

(assert (=> d!392222 d!393246))

(declare-fun d!393248 () Bool)

(assert (=> d!393248 (= (list!5362 (_2!7640 lt!456131)) (list!5366 (c!226060 (_2!7640 lt!456131))))))

(declare-fun bs!336265 () Bool)

(assert (= bs!336265 d!393248))

(declare-fun m!1548197 () Bool)

(assert (=> bs!336265 m!1548197))

(assert (=> d!392222 d!393248))

(declare-fun d!393250 () Bool)

(declare-fun lt!457091 () Bool)

(assert (=> d!393250 (= lt!457091 (isEmpty!8392 (list!5366 (c!226060 (_2!7640 lt!456131)))))))

(assert (=> d!393250 (= lt!457091 (= (size!11422 (c!226060 (_2!7640 lt!456131))) 0))))

(assert (=> d!393250 (= (isEmpty!8395 (c!226060 (_2!7640 lt!456131))) lt!457091)))

(declare-fun bs!336266 () Bool)

(assert (= bs!336266 d!393250))

(assert (=> bs!336266 m!1548197))

(assert (=> bs!336266 m!1548197))

(declare-fun m!1548199 () Bool)

(assert (=> bs!336266 m!1548199))

(declare-fun m!1548201 () Bool)

(assert (=> bs!336266 m!1548201))

(assert (=> d!392222 d!393250))

(declare-fun d!393252 () Bool)

(assert (=> d!393252 (= (list!5362 lt!456292) (list!5366 (c!226060 lt!456292)))))

(declare-fun bs!336267 () Bool)

(assert (= bs!336267 d!393252))

(declare-fun m!1548203 () Bool)

(assert (=> bs!336267 m!1548203))

(assert (=> d!392282 d!393252))

(declare-fun d!393254 () Bool)

(declare-fun c!226572 () Bool)

(assert (=> d!393254 (= c!226572 ((_ is Cons!13904) (list!5363 (singletonSeq!1040 t1!34))))))

(declare-fun e!879123 () List!13969)

(assert (=> d!393254 (= (printList!610 thiss!19762 (list!5363 (singletonSeq!1040 t1!34))) e!879123)))

(declare-fun b!1375658 () Bool)

(assert (=> b!1375658 (= e!879123 (++!3598 (list!5362 (charsOf!1379 (h!19305 (list!5363 (singletonSeq!1040 t1!34))))) (printList!610 thiss!19762 (t!121641 (list!5363 (singletonSeq!1040 t1!34))))))))

(declare-fun b!1375659 () Bool)

(assert (=> b!1375659 (= e!879123 Nil!13903)))

(assert (= (and d!393254 c!226572) b!1375658))

(assert (= (and d!393254 (not c!226572)) b!1375659))

(declare-fun m!1548205 () Bool)

(assert (=> b!1375658 m!1548205))

(assert (=> b!1375658 m!1548205))

(declare-fun m!1548207 () Bool)

(assert (=> b!1375658 m!1548207))

(declare-fun m!1548209 () Bool)

(assert (=> b!1375658 m!1548209))

(assert (=> b!1375658 m!1548207))

(assert (=> b!1375658 m!1548209))

(declare-fun m!1548211 () Bool)

(assert (=> b!1375658 m!1548211))

(assert (=> d!392282 d!393254))

(declare-fun d!393256 () Bool)

(assert (=> d!393256 (= (list!5363 (singletonSeq!1040 t1!34)) (list!5367 (c!226062 (singletonSeq!1040 t1!34))))))

(declare-fun bs!336268 () Bool)

(assert (= bs!336268 d!393256))

(declare-fun m!1548213 () Bool)

(assert (=> bs!336268 m!1548213))

(assert (=> d!392282 d!393256))

(declare-fun d!393258 () Bool)

(declare-fun lt!457094 () BalanceConc!9092)

(assert (=> d!393258 (= (list!5362 lt!457094) (printListTailRec!253 thiss!19762 (dropList!412 (singletonSeq!1040 t1!34) 0) (list!5362 (BalanceConc!9093 Empty!4576))))))

(declare-fun e!879125 () BalanceConc!9092)

(assert (=> d!393258 (= lt!457094 e!879125)))

(declare-fun c!226573 () Bool)

(assert (=> d!393258 (= c!226573 (>= 0 (size!11416 (singletonSeq!1040 t1!34))))))

(declare-fun e!879124 () Bool)

(assert (=> d!393258 e!879124))

(declare-fun res!619811 () Bool)

(assert (=> d!393258 (=> (not res!619811) (not e!879124))))

(assert (=> d!393258 (= res!619811 (>= 0 0))))

(assert (=> d!393258 (= (printTailRec!592 thiss!19762 (singletonSeq!1040 t1!34) 0 (BalanceConc!9093 Empty!4576)) lt!457094)))

(declare-fun b!1375660 () Bool)

(assert (=> b!1375660 (= e!879124 (<= 0 (size!11416 (singletonSeq!1040 t1!34))))))

(declare-fun b!1375661 () Bool)

(assert (=> b!1375661 (= e!879125 (BalanceConc!9093 Empty!4576))))

(declare-fun b!1375662 () Bool)

(assert (=> b!1375662 (= e!879125 (printTailRec!592 thiss!19762 (singletonSeq!1040 t1!34) (+ 0 1) (++!3599 (BalanceConc!9093 Empty!4576) (charsOf!1379 (apply!3427 (singletonSeq!1040 t1!34) 0)))))))

(declare-fun lt!457093 () List!13970)

(assert (=> b!1375662 (= lt!457093 (list!5363 (singletonSeq!1040 t1!34)))))

(declare-fun lt!457096 () Unit!20133)

(assert (=> b!1375662 (= lt!457096 (lemmaDropApply!444 lt!457093 0))))

(assert (=> b!1375662 (= (head!2481 (drop!689 lt!457093 0)) (apply!3432 lt!457093 0))))

(declare-fun lt!457095 () Unit!20133)

(assert (=> b!1375662 (= lt!457095 lt!457096)))

(declare-fun lt!457092 () List!13970)

(assert (=> b!1375662 (= lt!457092 (list!5363 (singletonSeq!1040 t1!34)))))

(declare-fun lt!457097 () Unit!20133)

(assert (=> b!1375662 (= lt!457097 (lemmaDropTail!424 lt!457092 0))))

(assert (=> b!1375662 (= (tail!1992 (drop!689 lt!457092 0)) (drop!689 lt!457092 (+ 0 1)))))

(declare-fun lt!457098 () Unit!20133)

(assert (=> b!1375662 (= lt!457098 lt!457097)))

(assert (= (and d!393258 res!619811) b!1375660))

(assert (= (and d!393258 c!226573) b!1375661))

(assert (= (and d!393258 (not c!226573)) b!1375662))

(declare-fun m!1548215 () Bool)

(assert (=> d!393258 m!1548215))

(assert (=> d!393258 m!1547041))

(declare-fun m!1548217 () Bool)

(assert (=> d!393258 m!1548217))

(declare-fun m!1548219 () Bool)

(assert (=> d!393258 m!1548219))

(assert (=> d!393258 m!1544815))

(assert (=> d!393258 m!1548215))

(assert (=> d!393258 m!1547041))

(assert (=> d!393258 m!1544815))

(declare-fun m!1548221 () Bool)

(assert (=> d!393258 m!1548221))

(assert (=> b!1375660 m!1544815))

(assert (=> b!1375660 m!1548221))

(declare-fun m!1548223 () Bool)

(assert (=> b!1375662 m!1548223))

(declare-fun m!1548225 () Bool)

(assert (=> b!1375662 m!1548225))

(declare-fun m!1548227 () Bool)

(assert (=> b!1375662 m!1548227))

(assert (=> b!1375662 m!1548227))

(declare-fun m!1548229 () Bool)

(assert (=> b!1375662 m!1548229))

(assert (=> b!1375662 m!1544815))

(declare-fun m!1548231 () Bool)

(assert (=> b!1375662 m!1548231))

(declare-fun m!1548233 () Bool)

(assert (=> b!1375662 m!1548233))

(declare-fun m!1548235 () Bool)

(assert (=> b!1375662 m!1548235))

(declare-fun m!1548237 () Bool)

(assert (=> b!1375662 m!1548237))

(declare-fun m!1548239 () Bool)

(assert (=> b!1375662 m!1548239))

(assert (=> b!1375662 m!1544815))

(assert (=> b!1375662 m!1545155))

(declare-fun m!1548241 () Bool)

(assert (=> b!1375662 m!1548241))

(assert (=> b!1375662 m!1548223))

(declare-fun m!1548243 () Bool)

(assert (=> b!1375662 m!1548243))

(assert (=> b!1375662 m!1548231))

(declare-fun m!1548245 () Bool)

(assert (=> b!1375662 m!1548245))

(assert (=> b!1375662 m!1548243))

(assert (=> b!1375662 m!1544815))

(assert (=> b!1375662 m!1548245))

(assert (=> d!392282 d!393258))

(declare-fun d!393260 () Bool)

(assert (=> d!393260 (= (inv!16 (value!78232 t1!34)) (= (charsToInt!0 (text!17926 (value!78232 t1!34))) (value!78223 (value!78232 t1!34))))))

(declare-fun bs!336269 () Bool)

(assert (= bs!336269 d!393260))

(declare-fun m!1548247 () Bool)

(assert (=> bs!336269 m!1548247))

(assert (=> b!1374016 d!393260))

(declare-fun b!1375663 () Bool)

(declare-fun res!619814 () Bool)

(declare-fun e!879130 () Bool)

(assert (=> b!1375663 (=> (not res!619814) (not e!879130))))

(declare-fun call!92331 () Bool)

(assert (=> b!1375663 (= res!619814 (not call!92331))))

(declare-fun b!1375664 () Bool)

(declare-fun e!879129 () Bool)

(assert (=> b!1375664 (= e!879129 (not (= (head!2475 (tail!1987 lt!456133)) (c!226061 (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133))))))))

(declare-fun b!1375665 () Bool)

(declare-fun e!879126 () Bool)

(declare-fun lt!457099 () Bool)

(assert (=> b!1375665 (= e!879126 (not lt!457099))))

(declare-fun b!1375666 () Bool)

(declare-fun res!619817 () Bool)

(assert (=> b!1375666 (=> res!619817 e!879129)))

(assert (=> b!1375666 (= res!619817 (not (isEmpty!8392 (tail!1987 (tail!1987 lt!456133)))))))

(declare-fun b!1375667 () Bool)

(declare-fun e!879128 () Bool)

(assert (=> b!1375667 (= e!879128 (nullable!1201 (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133))))))

(declare-fun b!1375668 () Bool)

(assert (=> b!1375668 (= e!879128 (matchR!1714 (derivativeStep!958 (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133)) (head!2475 (tail!1987 lt!456133))) (tail!1987 (tail!1987 lt!456133))))))

(declare-fun b!1375669 () Bool)

(declare-fun e!879132 () Bool)

(assert (=> b!1375669 (= e!879132 e!879126)))

(declare-fun c!226574 () Bool)

(assert (=> b!1375669 (= c!226574 ((_ is EmptyLang!3721) (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133))))))

(declare-fun b!1375670 () Bool)

(assert (=> b!1375670 (= e!879132 (= lt!457099 call!92331))))

(declare-fun bm!92326 () Bool)

(assert (=> bm!92326 (= call!92331 (isEmpty!8392 (tail!1987 lt!456133)))))

(declare-fun b!1375671 () Bool)

(assert (=> b!1375671 (= e!879130 (= (head!2475 (tail!1987 lt!456133)) (c!226061 (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133)))))))

(declare-fun b!1375672 () Bool)

(declare-fun res!619818 () Bool)

(assert (=> b!1375672 (=> (not res!619818) (not e!879130))))

(assert (=> b!1375672 (= res!619818 (isEmpty!8392 (tail!1987 (tail!1987 lt!456133))))))

(declare-fun b!1375673 () Bool)

(declare-fun res!619819 () Bool)

(declare-fun e!879127 () Bool)

(assert (=> b!1375673 (=> res!619819 e!879127)))

(assert (=> b!1375673 (= res!619819 e!879130)))

(declare-fun res!619812 () Bool)

(assert (=> b!1375673 (=> (not res!619812) (not e!879130))))

(assert (=> b!1375673 (= res!619812 lt!457099)))

(declare-fun d!393262 () Bool)

(assert (=> d!393262 e!879132))

(declare-fun c!226575 () Bool)

(assert (=> d!393262 (= c!226575 ((_ is EmptyExpr!3721) (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133))))))

(assert (=> d!393262 (= lt!457099 e!879128)))

(declare-fun c!226576 () Bool)

(assert (=> d!393262 (= c!226576 (isEmpty!8392 (tail!1987 lt!456133)))))

(assert (=> d!393262 (validRegex!1621 (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133)))))

(assert (=> d!393262 (= (matchR!1714 (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133)) (tail!1987 lt!456133)) lt!457099)))

(declare-fun b!1375674 () Bool)

(declare-fun res!619815 () Bool)

(assert (=> b!1375674 (=> res!619815 e!879127)))

(assert (=> b!1375674 (= res!619815 (not ((_ is ElementMatch!3721) (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133)))))))

(assert (=> b!1375674 (= e!879126 e!879127)))

(declare-fun b!1375675 () Bool)

(declare-fun e!879131 () Bool)

(assert (=> b!1375675 (= e!879127 e!879131)))

(declare-fun res!619816 () Bool)

(assert (=> b!1375675 (=> (not res!619816) (not e!879131))))

(assert (=> b!1375675 (= res!619816 (not lt!457099))))

(declare-fun b!1375676 () Bool)

(assert (=> b!1375676 (= e!879131 e!879129)))

(declare-fun res!619813 () Bool)

(assert (=> b!1375676 (=> res!619813 e!879129)))

(assert (=> b!1375676 (= res!619813 call!92331)))

(assert (= (and d!393262 c!226576) b!1375667))

(assert (= (and d!393262 (not c!226576)) b!1375668))

(assert (= (and d!393262 c!226575) b!1375670))

(assert (= (and d!393262 (not c!226575)) b!1375669))

(assert (= (and b!1375669 c!226574) b!1375665))

(assert (= (and b!1375669 (not c!226574)) b!1375674))

(assert (= (and b!1375674 (not res!619815)) b!1375673))

(assert (= (and b!1375673 res!619812) b!1375663))

(assert (= (and b!1375663 res!619814) b!1375672))

(assert (= (and b!1375672 res!619818) b!1375671))

(assert (= (and b!1375673 (not res!619819)) b!1375675))

(assert (= (and b!1375675 res!619816) b!1375676))

(assert (= (and b!1375676 (not res!619813)) b!1375666))

(assert (= (and b!1375666 (not res!619817)) b!1375664))

(assert (= (or b!1375670 b!1375663 b!1375676) bm!92326))

(assert (=> d!393262 m!1545719))

(assert (=> d!393262 m!1545721))

(assert (=> d!393262 m!1545727))

(declare-fun m!1548249 () Bool)

(assert (=> d!393262 m!1548249))

(assert (=> b!1375666 m!1545719))

(declare-fun m!1548251 () Bool)

(assert (=> b!1375666 m!1548251))

(assert (=> b!1375666 m!1548251))

(declare-fun m!1548253 () Bool)

(assert (=> b!1375666 m!1548253))

(assert (=> b!1375664 m!1545719))

(declare-fun m!1548255 () Bool)

(assert (=> b!1375664 m!1548255))

(assert (=> b!1375672 m!1545719))

(assert (=> b!1375672 m!1548251))

(assert (=> b!1375672 m!1548251))

(assert (=> b!1375672 m!1548253))

(assert (=> b!1375671 m!1545719))

(assert (=> b!1375671 m!1548255))

(assert (=> b!1375667 m!1545727))

(declare-fun m!1548257 () Bool)

(assert (=> b!1375667 m!1548257))

(assert (=> b!1375668 m!1545719))

(assert (=> b!1375668 m!1548255))

(assert (=> b!1375668 m!1545727))

(assert (=> b!1375668 m!1548255))

(declare-fun m!1548259 () Bool)

(assert (=> b!1375668 m!1548259))

(assert (=> b!1375668 m!1545719))

(assert (=> b!1375668 m!1548251))

(assert (=> b!1375668 m!1548259))

(assert (=> b!1375668 m!1548251))

(declare-fun m!1548261 () Bool)

(assert (=> b!1375668 m!1548261))

(assert (=> bm!92326 m!1545719))

(assert (=> bm!92326 m!1545721))

(assert (=> b!1374096 d!393262))

(declare-fun d!393264 () Bool)

(declare-fun lt!457100 () Regex!3721)

(assert (=> d!393264 (validRegex!1621 lt!457100)))

(declare-fun e!879137 () Regex!3721)

(assert (=> d!393264 (= lt!457100 e!879137)))

(declare-fun c!226579 () Bool)

(assert (=> d!393264 (= c!226579 (or ((_ is EmptyExpr!3721) (regex!2407 (rule!4164 t2!34))) ((_ is EmptyLang!3721) (regex!2407 (rule!4164 t2!34)))))))

(assert (=> d!393264 (validRegex!1621 (regex!2407 (rule!4164 t2!34)))))

(assert (=> d!393264 (= (derivativeStep!958 (regex!2407 (rule!4164 t2!34)) (head!2475 lt!456133)) lt!457100)))

(declare-fun bm!92327 () Bool)

(declare-fun call!92333 () Regex!3721)

(declare-fun call!92335 () Regex!3721)

(assert (=> bm!92327 (= call!92333 call!92335)))

(declare-fun b!1375677 () Bool)

(assert (=> b!1375677 (= e!879137 EmptyLang!3721)))

(declare-fun b!1375678 () Bool)

(declare-fun e!879136 () Regex!3721)

(assert (=> b!1375678 (= e!879136 (Concat!6219 call!92333 (regex!2407 (rule!4164 t2!34))))))

(declare-fun b!1375679 () Bool)

(declare-fun e!879133 () Regex!3721)

(declare-fun call!92334 () Regex!3721)

(assert (=> b!1375679 (= e!879133 (Union!3721 call!92334 call!92335))))

(declare-fun b!1375680 () Bool)

(declare-fun e!879134 () Regex!3721)

(assert (=> b!1375680 (= e!879137 e!879134)))

(declare-fun c!226578 () Bool)

(assert (=> b!1375680 (= c!226578 ((_ is ElementMatch!3721) (regex!2407 (rule!4164 t2!34))))))

(declare-fun call!92332 () Regex!3721)

(declare-fun b!1375681 () Bool)

(declare-fun e!879135 () Regex!3721)

(assert (=> b!1375681 (= e!879135 (Union!3721 (Concat!6219 call!92333 (regTwo!7954 (regex!2407 (rule!4164 t2!34)))) call!92332))))

(declare-fun b!1375682 () Bool)

(declare-fun c!226577 () Bool)

(assert (=> b!1375682 (= c!226577 ((_ is Union!3721) (regex!2407 (rule!4164 t2!34))))))

(assert (=> b!1375682 (= e!879134 e!879133)))

(declare-fun bm!92328 () Bool)

(declare-fun c!226580 () Bool)

(assert (=> bm!92328 (= call!92334 (derivativeStep!958 (ite c!226577 (regOne!7955 (regex!2407 (rule!4164 t2!34))) (ite c!226580 (regTwo!7954 (regex!2407 (rule!4164 t2!34))) (regOne!7954 (regex!2407 (rule!4164 t2!34))))) (head!2475 lt!456133)))))

(declare-fun bm!92329 () Bool)

(assert (=> bm!92329 (= call!92332 call!92334)))

(declare-fun b!1375683 () Bool)

(assert (=> b!1375683 (= e!879135 (Union!3721 (Concat!6219 call!92332 (regTwo!7954 (regex!2407 (rule!4164 t2!34)))) EmptyLang!3721))))

(declare-fun bm!92330 () Bool)

(declare-fun c!226581 () Bool)

(assert (=> bm!92330 (= call!92335 (derivativeStep!958 (ite c!226577 (regTwo!7955 (regex!2407 (rule!4164 t2!34))) (ite c!226581 (reg!4050 (regex!2407 (rule!4164 t2!34))) (regOne!7954 (regex!2407 (rule!4164 t2!34))))) (head!2475 lt!456133)))))

(declare-fun b!1375684 () Bool)

(assert (=> b!1375684 (= e!879133 e!879136)))

(assert (=> b!1375684 (= c!226581 ((_ is Star!3721) (regex!2407 (rule!4164 t2!34))))))

(declare-fun b!1375685 () Bool)

(assert (=> b!1375685 (= e!879134 (ite (= (head!2475 lt!456133) (c!226061 (regex!2407 (rule!4164 t2!34)))) EmptyExpr!3721 EmptyLang!3721))))

(declare-fun b!1375686 () Bool)

(assert (=> b!1375686 (= c!226580 (nullable!1201 (regOne!7954 (regex!2407 (rule!4164 t2!34)))))))

(assert (=> b!1375686 (= e!879136 e!879135)))

(assert (= (and d!393264 c!226579) b!1375677))

(assert (= (and d!393264 (not c!226579)) b!1375680))

(assert (= (and b!1375680 c!226578) b!1375685))

(assert (= (and b!1375680 (not c!226578)) b!1375682))

(assert (= (and b!1375682 c!226577) b!1375679))

(assert (= (and b!1375682 (not c!226577)) b!1375684))

(assert (= (and b!1375684 c!226581) b!1375678))

(assert (= (and b!1375684 (not c!226581)) b!1375686))

(assert (= (and b!1375686 c!226580) b!1375681))

(assert (= (and b!1375686 (not c!226580)) b!1375683))

(assert (= (or b!1375681 b!1375683) bm!92329))

(assert (= (or b!1375678 b!1375681) bm!92327))

(assert (= (or b!1375679 bm!92329) bm!92328))

(assert (= (or b!1375679 bm!92327) bm!92330))

(declare-fun m!1548263 () Bool)

(assert (=> d!393264 m!1548263))

(assert (=> d!393264 m!1545717))

(assert (=> bm!92328 m!1545723))

(declare-fun m!1548265 () Bool)

(assert (=> bm!92328 m!1548265))

(assert (=> bm!92330 m!1545723))

(declare-fun m!1548267 () Bool)

(assert (=> bm!92330 m!1548267))

(declare-fun m!1548269 () Bool)

(assert (=> b!1375686 m!1548269))

(assert (=> b!1374096 d!393264))

(assert (=> b!1374096 d!393172))

(assert (=> b!1374096 d!392672))

(declare-fun d!393266 () Bool)

(declare-fun c!226582 () Bool)

(assert (=> d!393266 (= c!226582 ((_ is Empty!4576) (c!226060 lt!456124)))))

(declare-fun e!879138 () List!13969)

(assert (=> d!393266 (= (list!5366 (c!226060 lt!456124)) e!879138)))

(declare-fun b!1375690 () Bool)

(declare-fun e!879139 () List!13969)

(assert (=> b!1375690 (= e!879139 (++!3598 (list!5366 (left!11893 (c!226060 lt!456124))) (list!5366 (right!12223 (c!226060 lt!456124)))))))

(declare-fun b!1375689 () Bool)

(assert (=> b!1375689 (= e!879139 (list!5369 (xs!7303 (c!226060 lt!456124))))))

(declare-fun b!1375687 () Bool)

(assert (=> b!1375687 (= e!879138 Nil!13903)))

(declare-fun b!1375688 () Bool)

(assert (=> b!1375688 (= e!879138 e!879139)))

(declare-fun c!226583 () Bool)

(assert (=> b!1375688 (= c!226583 ((_ is Leaf!6976) (c!226060 lt!456124)))))

(assert (= (and d!393266 c!226582) b!1375687))

(assert (= (and d!393266 (not c!226582)) b!1375688))

(assert (= (and b!1375688 c!226583) b!1375689))

(assert (= (and b!1375688 (not c!226583)) b!1375690))

(declare-fun m!1548271 () Bool)

(assert (=> b!1375690 m!1548271))

(declare-fun m!1548273 () Bool)

(assert (=> b!1375690 m!1548273))

(assert (=> b!1375690 m!1548271))

(assert (=> b!1375690 m!1548273))

(declare-fun m!1548275 () Bool)

(assert (=> b!1375690 m!1548275))

(declare-fun m!1548277 () Bool)

(assert (=> b!1375689 m!1548277))

(assert (=> d!392434 d!393266))

(declare-fun b!1375693 () Bool)

(declare-fun res!619821 () Bool)

(declare-fun e!879140 () Bool)

(assert (=> b!1375693 (=> (not res!619821) (not e!879140))))

(declare-fun lt!457101 () List!13969)

(assert (=> b!1375693 (= res!619821 (= (size!11415 lt!457101) (+ (size!11415 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))) (size!11415 (_2!7641 (get!4350 lt!456400))))))))

(declare-fun b!1375694 () Bool)

(assert (=> b!1375694 (= e!879140 (or (not (= (_2!7641 (get!4350 lt!456400)) Nil!13903)) (= lt!457101 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400)))))))))

(declare-fun d!393268 () Bool)

(assert (=> d!393268 e!879140))

(declare-fun res!619820 () Bool)

(assert (=> d!393268 (=> (not res!619820) (not e!879140))))

(assert (=> d!393268 (= res!619820 (= (content!2037 lt!457101) ((_ map or) (content!2037 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))) (content!2037 (_2!7641 (get!4350 lt!456400))))))))

(declare-fun e!879141 () List!13969)

(assert (=> d!393268 (= lt!457101 e!879141)))

(declare-fun c!226584 () Bool)

(assert (=> d!393268 (= c!226584 ((_ is Nil!13903) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))))))

(assert (=> d!393268 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400)))) (_2!7641 (get!4350 lt!456400))) lt!457101)))

(declare-fun b!1375692 () Bool)

(assert (=> b!1375692 (= e!879141 (Cons!13903 (h!19304 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))) (++!3598 (t!121640 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))) (_2!7641 (get!4350 lt!456400)))))))

(declare-fun b!1375691 () Bool)

(assert (=> b!1375691 (= e!879141 (_2!7641 (get!4350 lt!456400)))))

(assert (= (and d!393268 c!226584) b!1375691))

(assert (= (and d!393268 (not c!226584)) b!1375692))

(assert (= (and d!393268 res!619820) b!1375693))

(assert (= (and b!1375693 res!619821) b!1375694))

(declare-fun m!1548279 () Bool)

(assert (=> b!1375693 m!1548279))

(assert (=> b!1375693 m!1545877))

(declare-fun m!1548281 () Bool)

(assert (=> b!1375693 m!1548281))

(assert (=> b!1375693 m!1545899))

(declare-fun m!1548283 () Bool)

(assert (=> d!393268 m!1548283))

(assert (=> d!393268 m!1545877))

(declare-fun m!1548285 () Bool)

(assert (=> d!393268 m!1548285))

(declare-fun m!1548287 () Bool)

(assert (=> d!393268 m!1548287))

(declare-fun m!1548289 () Bool)

(assert (=> b!1375692 m!1548289))

(assert (=> b!1374187 d!393268))

(assert (=> b!1374187 d!392748))

(assert (=> b!1374187 d!392750))

(assert (=> b!1374187 d!392660))

(declare-fun b!1375695 () Bool)

(declare-fun res!619824 () Bool)

(declare-fun e!879146 () Bool)

(assert (=> b!1375695 (=> (not res!619824) (not e!879146))))

(declare-fun call!92336 () Bool)

(assert (=> b!1375695 (= res!619824 (not call!92336))))

(declare-fun b!1375696 () Bool)

(declare-fun e!879145 () Bool)

(assert (=> b!1375696 (= e!879145 (not (= (head!2475 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))) (c!226061 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))))))))

(declare-fun b!1375697 () Bool)

(declare-fun e!879142 () Bool)

(declare-fun lt!457102 () Bool)

(assert (=> b!1375697 (= e!879142 (not lt!457102))))

(declare-fun b!1375698 () Bool)

(declare-fun res!619827 () Bool)

(assert (=> b!1375698 (=> res!619827 e!879145)))

(assert (=> b!1375698 (= res!619827 (not (isEmpty!8392 (tail!1987 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))))))))

(declare-fun b!1375699 () Bool)

(declare-fun e!879144 () Bool)

(assert (=> b!1375699 (= e!879144 (nullable!1201 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))))))

(declare-fun b!1375700 () Bool)

(assert (=> b!1375700 (= e!879144 (matchR!1714 (derivativeStep!958 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))) (head!2475 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377)))))) (tail!1987 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377)))))))))

(declare-fun b!1375701 () Bool)

(declare-fun e!879148 () Bool)

(assert (=> b!1375701 (= e!879148 e!879142)))

(declare-fun c!226585 () Bool)

(assert (=> b!1375701 (= c!226585 ((_ is EmptyLang!3721) (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))))))

(declare-fun b!1375702 () Bool)

(assert (=> b!1375702 (= e!879148 (= lt!457102 call!92336))))

(declare-fun bm!92331 () Bool)

(assert (=> bm!92331 (= call!92336 (isEmpty!8392 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))))))

(declare-fun b!1375703 () Bool)

(assert (=> b!1375703 (= e!879146 (= (head!2475 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))) (c!226061 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))))))

(declare-fun b!1375704 () Bool)

(declare-fun res!619828 () Bool)

(assert (=> b!1375704 (=> (not res!619828) (not e!879146))))

(assert (=> b!1375704 (= res!619828 (isEmpty!8392 (tail!1987 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377)))))))))

(declare-fun b!1375705 () Bool)

(declare-fun res!619829 () Bool)

(declare-fun e!879143 () Bool)

(assert (=> b!1375705 (=> res!619829 e!879143)))

(assert (=> b!1375705 (= res!619829 e!879146)))

(declare-fun res!619822 () Bool)

(assert (=> b!1375705 (=> (not res!619822) (not e!879146))))

(assert (=> b!1375705 (= res!619822 lt!457102)))

(declare-fun d!393270 () Bool)

(assert (=> d!393270 e!879148))

(declare-fun c!226586 () Bool)

(assert (=> d!393270 (= c!226586 ((_ is EmptyExpr!3721) (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377))))))))

(assert (=> d!393270 (= lt!457102 e!879144)))

(declare-fun c!226587 () Bool)

(assert (=> d!393270 (= c!226587 (isEmpty!8392 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))))))

(assert (=> d!393270 (validRegex!1621 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))))

(assert (=> d!393270 (= (matchR!1714 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456377))))) lt!457102)))

(declare-fun b!1375706 () Bool)

(declare-fun res!619825 () Bool)

(assert (=> b!1375706 (=> res!619825 e!879143)))

(assert (=> b!1375706 (= res!619825 (not ((_ is ElementMatch!3721) (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))))))

(assert (=> b!1375706 (= e!879142 e!879143)))

(declare-fun b!1375707 () Bool)

(declare-fun e!879147 () Bool)

(assert (=> b!1375707 (= e!879143 e!879147)))

(declare-fun res!619826 () Bool)

(assert (=> b!1375707 (=> (not res!619826) (not e!879147))))

(assert (=> b!1375707 (= res!619826 (not lt!457102))))

(declare-fun b!1375708 () Bool)

(assert (=> b!1375708 (= e!879147 e!879145)))

(declare-fun res!619823 () Bool)

(assert (=> b!1375708 (=> res!619823 e!879145)))

(assert (=> b!1375708 (= res!619823 call!92336)))

(assert (= (and d!393270 c!226587) b!1375699))

(assert (= (and d!393270 (not c!226587)) b!1375700))

(assert (= (and d!393270 c!226586) b!1375702))

(assert (= (and d!393270 (not c!226586)) b!1375701))

(assert (= (and b!1375701 c!226585) b!1375697))

(assert (= (and b!1375701 (not c!226585)) b!1375706))

(assert (= (and b!1375706 (not res!619825)) b!1375705))

(assert (= (and b!1375705 res!619822) b!1375695))

(assert (= (and b!1375695 res!619824) b!1375704))

(assert (= (and b!1375704 res!619828) b!1375703))

(assert (= (and b!1375705 (not res!619829)) b!1375707))

(assert (= (and b!1375707 res!619826) b!1375708))

(assert (= (and b!1375708 (not res!619823)) b!1375698))

(assert (= (and b!1375698 (not res!619827)) b!1375696))

(assert (= (or b!1375702 b!1375695 b!1375708) bm!92331))

(assert (=> d!393270 m!1545737))

(declare-fun m!1548291 () Bool)

(assert (=> d!393270 m!1548291))

(declare-fun m!1548293 () Bool)

(assert (=> d!393270 m!1548293))

(assert (=> b!1375698 m!1545737))

(declare-fun m!1548295 () Bool)

(assert (=> b!1375698 m!1548295))

(assert (=> b!1375698 m!1548295))

(declare-fun m!1548297 () Bool)

(assert (=> b!1375698 m!1548297))

(assert (=> b!1375696 m!1545737))

(declare-fun m!1548299 () Bool)

(assert (=> b!1375696 m!1548299))

(assert (=> b!1375704 m!1545737))

(assert (=> b!1375704 m!1548295))

(assert (=> b!1375704 m!1548295))

(assert (=> b!1375704 m!1548297))

(assert (=> b!1375703 m!1545737))

(assert (=> b!1375703 m!1548299))

(declare-fun m!1548301 () Bool)

(assert (=> b!1375699 m!1548301))

(assert (=> b!1375700 m!1545737))

(assert (=> b!1375700 m!1548299))

(assert (=> b!1375700 m!1548299))

(declare-fun m!1548303 () Bool)

(assert (=> b!1375700 m!1548303))

(assert (=> b!1375700 m!1545737))

(assert (=> b!1375700 m!1548295))

(assert (=> b!1375700 m!1548303))

(assert (=> b!1375700 m!1548295))

(declare-fun m!1548305 () Bool)

(assert (=> b!1375700 m!1548305))

(assert (=> bm!92331 m!1545737))

(assert (=> bm!92331 m!1548291))

(assert (=> b!1374125 d!393270))

(assert (=> b!1374125 d!392640))

(assert (=> b!1374125 d!392690))

(assert (=> b!1374125 d!392692))

(declare-fun d!393272 () Bool)

(assert (=> d!393272 (= (list!5363 lt!456298) (list!5367 (c!226062 lt!456298)))))

(declare-fun bs!336270 () Bool)

(assert (= bs!336270 d!393272))

(declare-fun m!1548307 () Bool)

(assert (=> bs!336270 m!1548307))

(assert (=> d!392292 d!393272))

(declare-fun d!393274 () Bool)

(declare-fun e!879151 () Bool)

(assert (=> d!393274 e!879151))

(declare-fun res!619832 () Bool)

(assert (=> d!393274 (=> (not res!619832) (not e!879151))))

(declare-fun lt!457105 () BalanceConc!9094)

(assert (=> d!393274 (= res!619832 (= (list!5363 lt!457105) (Cons!13904 t1!34 Nil!13904)))))

(declare-fun choose!8463 (Token!4476) BalanceConc!9094)

(assert (=> d!393274 (= lt!457105 (choose!8463 t1!34))))

(assert (=> d!393274 (= (singleton!456 t1!34) lt!457105)))

(declare-fun b!1375711 () Bool)

(assert (=> b!1375711 (= e!879151 (isBalanced!1350 (c!226062 lt!457105)))))

(assert (= (and d!393274 res!619832) b!1375711))

(declare-fun m!1548309 () Bool)

(assert (=> d!393274 m!1548309))

(declare-fun m!1548311 () Bool)

(assert (=> d!393274 m!1548311))

(declare-fun m!1548313 () Bool)

(assert (=> b!1375711 m!1548313))

(assert (=> d!392292 d!393274))

(assert (=> d!392404 d!393168))

(declare-fun bm!92332 () Bool)

(declare-fun call!92338 () Bool)

(declare-fun call!92337 () Bool)

(assert (=> bm!92332 (= call!92338 call!92337)))

(declare-fun d!393276 () Bool)

(declare-fun res!619836 () Bool)

(declare-fun e!879157 () Bool)

(assert (=> d!393276 (=> res!619836 e!879157)))

(assert (=> d!393276 (= res!619836 ((_ is ElementMatch!3721) (regex!2407 (rule!4164 t1!34))))))

(assert (=> d!393276 (= (validRegex!1621 (regex!2407 (rule!4164 t1!34))) e!879157)))

(declare-fun b!1375712 () Bool)

(declare-fun e!879154 () Bool)

(declare-fun e!879155 () Bool)

(assert (=> b!1375712 (= e!879154 e!879155)))

(declare-fun c!226588 () Bool)

(assert (=> b!1375712 (= c!226588 ((_ is Union!3721) (regex!2407 (rule!4164 t1!34))))))

(declare-fun b!1375713 () Bool)

(declare-fun res!619835 () Bool)

(declare-fun e!879153 () Bool)

(assert (=> b!1375713 (=> (not res!619835) (not e!879153))))

(declare-fun call!92339 () Bool)

(assert (=> b!1375713 (= res!619835 call!92339)))

(assert (=> b!1375713 (= e!879155 e!879153)))

(declare-fun bm!92333 () Bool)

(assert (=> bm!92333 (= call!92339 (validRegex!1621 (ite c!226588 (regOne!7955 (regex!2407 (rule!4164 t1!34))) (regOne!7954 (regex!2407 (rule!4164 t1!34))))))))

(declare-fun b!1375714 () Bool)

(declare-fun e!879156 () Bool)

(declare-fun e!879152 () Bool)

(assert (=> b!1375714 (= e!879156 e!879152)))

(declare-fun res!619834 () Bool)

(assert (=> b!1375714 (=> (not res!619834) (not e!879152))))

(assert (=> b!1375714 (= res!619834 call!92339)))

(declare-fun b!1375715 () Bool)

(declare-fun e!879158 () Bool)

(assert (=> b!1375715 (= e!879158 call!92337)))

(declare-fun b!1375716 () Bool)

(assert (=> b!1375716 (= e!879157 e!879154)))

(declare-fun c!226589 () Bool)

(assert (=> b!1375716 (= c!226589 ((_ is Star!3721) (regex!2407 (rule!4164 t1!34))))))

(declare-fun b!1375717 () Bool)

(assert (=> b!1375717 (= e!879152 call!92338)))

(declare-fun b!1375718 () Bool)

(declare-fun res!619837 () Bool)

(assert (=> b!1375718 (=> res!619837 e!879156)))

(assert (=> b!1375718 (= res!619837 (not ((_ is Concat!6219) (regex!2407 (rule!4164 t1!34)))))))

(assert (=> b!1375718 (= e!879155 e!879156)))

(declare-fun b!1375719 () Bool)

(assert (=> b!1375719 (= e!879153 call!92338)))

(declare-fun b!1375720 () Bool)

(assert (=> b!1375720 (= e!879154 e!879158)))

(declare-fun res!619833 () Bool)

(assert (=> b!1375720 (= res!619833 (not (nullable!1201 (reg!4050 (regex!2407 (rule!4164 t1!34))))))))

(assert (=> b!1375720 (=> (not res!619833) (not e!879158))))

(declare-fun bm!92334 () Bool)

(assert (=> bm!92334 (= call!92337 (validRegex!1621 (ite c!226589 (reg!4050 (regex!2407 (rule!4164 t1!34))) (ite c!226588 (regTwo!7955 (regex!2407 (rule!4164 t1!34))) (regTwo!7954 (regex!2407 (rule!4164 t1!34)))))))))

(assert (= (and d!393276 (not res!619836)) b!1375716))

(assert (= (and b!1375716 c!226589) b!1375720))

(assert (= (and b!1375716 (not c!226589)) b!1375712))

(assert (= (and b!1375720 res!619833) b!1375715))

(assert (= (and b!1375712 c!226588) b!1375713))

(assert (= (and b!1375712 (not c!226588)) b!1375718))

(assert (= (and b!1375713 res!619835) b!1375719))

(assert (= (and b!1375718 (not res!619837)) b!1375714))

(assert (= (and b!1375714 res!619834) b!1375717))

(assert (= (or b!1375713 b!1375714) bm!92333))

(assert (= (or b!1375719 b!1375717) bm!92332))

(assert (= (or b!1375715 bm!92332) bm!92334))

(declare-fun m!1548315 () Bool)

(assert (=> bm!92333 m!1548315))

(declare-fun m!1548317 () Bool)

(assert (=> b!1375720 m!1548317))

(declare-fun m!1548319 () Bool)

(assert (=> bm!92334 m!1548319))

(assert (=> d!392404 d!393276))

(declare-fun d!393278 () Bool)

(declare-fun lt!457106 () Bool)

(assert (=> d!393278 (= lt!457106 (isEmpty!8392 (list!5362 (_2!7640 lt!456233))))))

(assert (=> d!393278 (= lt!457106 (isEmpty!8395 (c!226060 (_2!7640 lt!456233))))))

(assert (=> d!393278 (= (isEmpty!8389 (_2!7640 lt!456233)) lt!457106)))

(declare-fun bs!336271 () Bool)

(assert (= bs!336271 d!393278))

(declare-fun m!1548321 () Bool)

(assert (=> bs!336271 m!1548321))

(assert (=> bs!336271 m!1548321))

(declare-fun m!1548323 () Bool)

(assert (=> bs!336271 m!1548323))

(declare-fun m!1548325 () Bool)

(assert (=> bs!336271 m!1548325))

(assert (=> b!1373756 d!393278))

(declare-fun d!393280 () Bool)

(assert (=> d!393280 (= (list!5363 lt!456387) (list!5367 (c!226062 lt!456387)))))

(declare-fun bs!336272 () Bool)

(assert (= bs!336272 d!393280))

(declare-fun m!1548327 () Bool)

(assert (=> bs!336272 m!1548327))

(assert (=> d!392426 d!393280))

(declare-fun d!393282 () Bool)

(declare-fun e!879159 () Bool)

(assert (=> d!393282 e!879159))

(declare-fun res!619838 () Bool)

(assert (=> d!393282 (=> (not res!619838) (not e!879159))))

(declare-fun lt!457107 () BalanceConc!9094)

(assert (=> d!393282 (= res!619838 (= (list!5363 lt!457107) (Cons!13904 t2!34 Nil!13904)))))

(assert (=> d!393282 (= lt!457107 (choose!8463 t2!34))))

(assert (=> d!393282 (= (singleton!456 t2!34) lt!457107)))

(declare-fun b!1375721 () Bool)

(assert (=> b!1375721 (= e!879159 (isBalanced!1350 (c!226062 lt!457107)))))

(assert (= (and d!393282 res!619838) b!1375721))

(declare-fun m!1548329 () Bool)

(assert (=> d!393282 m!1548329))

(declare-fun m!1548331 () Bool)

(assert (=> d!393282 m!1548331))

(declare-fun m!1548333 () Bool)

(assert (=> b!1375721 m!1548333))

(assert (=> d!392426 d!393282))

(declare-fun d!393284 () Bool)

(declare-fun lt!457108 () Int)

(assert (=> d!393284 (>= lt!457108 0)))

(declare-fun e!879160 () Int)

(assert (=> d!393284 (= lt!457108 e!879160)))

(declare-fun c!226590 () Bool)

(assert (=> d!393284 (= c!226590 ((_ is Nil!13903) lt!456147))))

(assert (=> d!393284 (= (size!11415 lt!456147) lt!457108)))

(declare-fun b!1375722 () Bool)

(assert (=> b!1375722 (= e!879160 0)))

(declare-fun b!1375723 () Bool)

(assert (=> b!1375723 (= e!879160 (+ 1 (size!11415 (t!121640 lt!456147))))))

(assert (= (and d!393284 c!226590) b!1375722))

(assert (= (and d!393284 (not c!226590)) b!1375723))

(declare-fun m!1548335 () Bool)

(assert (=> b!1375723 m!1548335))

(assert (=> b!1373506 d!393284))

(assert (=> b!1373506 d!392986))

(declare-fun d!393286 () Bool)

(declare-fun lt!457109 () Int)

(assert (=> d!393286 (>= lt!457109 0)))

(declare-fun e!879161 () Int)

(assert (=> d!393286 (= lt!457109 e!879161)))

(declare-fun c!226591 () Bool)

(assert (=> d!393286 (= c!226591 ((_ is Nil!13903) (Cons!13903 lt!456136 Nil!13903)))))

(assert (=> d!393286 (= (size!11415 (Cons!13903 lt!456136 Nil!13903)) lt!457109)))

(declare-fun b!1375724 () Bool)

(assert (=> b!1375724 (= e!879161 0)))

(declare-fun b!1375725 () Bool)

(assert (=> b!1375725 (= e!879161 (+ 1 (size!11415 (t!121640 (Cons!13903 lt!456136 Nil!13903)))))))

(assert (= (and d!393286 c!226591) b!1375724))

(assert (= (and d!393286 (not c!226591)) b!1375725))

(declare-fun m!1548337 () Bool)

(assert (=> b!1375725 m!1548337))

(assert (=> b!1373506 d!393286))

(assert (=> b!1374092 d!393172))

(declare-fun d!393288 () Bool)

(declare-fun res!619843 () Bool)

(declare-fun e!879166 () Bool)

(assert (=> d!393288 (=> res!619843 e!879166)))

(assert (=> d!393288 (= res!619843 ((_ is Nil!13905) rules!2550))))

(assert (=> d!393288 (= (noDuplicateTag!898 thiss!19762 rules!2550 Nil!13907) e!879166)))

(declare-fun b!1375730 () Bool)

(declare-fun e!879167 () Bool)

(assert (=> b!1375730 (= e!879166 e!879167)))

(declare-fun res!619844 () Bool)

(assert (=> b!1375730 (=> (not res!619844) (not e!879167))))

(declare-fun contains!2611 (List!13973 String!16721) Bool)

(assert (=> b!1375730 (= res!619844 (not (contains!2611 Nil!13907 (tag!2669 (h!19306 rules!2550)))))))

(declare-fun b!1375731 () Bool)

(assert (=> b!1375731 (= e!879167 (noDuplicateTag!898 thiss!19762 (t!121642 rules!2550) (Cons!13907 (tag!2669 (h!19306 rules!2550)) Nil!13907)))))

(assert (= (and d!393288 (not res!619843)) b!1375730))

(assert (= (and b!1375730 res!619844) b!1375731))

(declare-fun m!1548339 () Bool)

(assert (=> b!1375730 m!1548339))

(declare-fun m!1548341 () Bool)

(assert (=> b!1375731 m!1548341))

(assert (=> b!1373743 d!393288))

(declare-fun d!393290 () Bool)

(declare-fun lt!457110 () Int)

(assert (=> d!393290 (= lt!457110 (size!11415 (list!5362 (_2!7640 lt!456282))))))

(assert (=> d!393290 (= lt!457110 (size!11422 (c!226060 (_2!7640 lt!456282))))))

(assert (=> d!393290 (= (size!11410 (_2!7640 lt!456282)) lt!457110)))

(declare-fun bs!336273 () Bool)

(assert (= bs!336273 d!393290))

(assert (=> bs!336273 m!1545393))

(assert (=> bs!336273 m!1545393))

(declare-fun m!1548343 () Bool)

(assert (=> bs!336273 m!1548343))

(declare-fun m!1548345 () Bool)

(assert (=> bs!336273 m!1548345))

(assert (=> b!1373867 d!393290))

(declare-fun d!393292 () Bool)

(declare-fun lt!457111 () Int)

(assert (=> d!393292 (= lt!457111 (size!11415 (list!5362 lt!456124)))))

(assert (=> d!393292 (= lt!457111 (size!11422 (c!226060 lt!456124)))))

(assert (=> d!393292 (= (size!11410 lt!456124) lt!457111)))

(declare-fun bs!336274 () Bool)

(assert (= bs!336274 d!393292))

(assert (=> bs!336274 m!1544837))

(assert (=> bs!336274 m!1544837))

(assert (=> bs!336274 m!1545863))

(declare-fun m!1548347 () Bool)

(assert (=> bs!336274 m!1548347))

(assert (=> b!1373867 d!393292))

(declare-fun b!1375732 () Bool)

(declare-fun res!619847 () Bool)

(declare-fun e!879172 () Bool)

(assert (=> b!1375732 (=> (not res!619847) (not e!879172))))

(declare-fun call!92340 () Bool)

(assert (=> b!1375732 (= res!619847 (not call!92340))))

(declare-fun b!1375733 () Bool)

(declare-fun e!879171 () Bool)

(assert (=> b!1375733 (= e!879171 (not (= (head!2475 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))) (c!226061 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))))))))

(declare-fun b!1375734 () Bool)

(declare-fun e!879168 () Bool)

(declare-fun lt!457112 () Bool)

(assert (=> b!1375734 (= e!879168 (not lt!457112))))

(declare-fun b!1375735 () Bool)

(declare-fun res!619850 () Bool)

(assert (=> b!1375735 (=> res!619850 e!879171)))

(assert (=> b!1375735 (= res!619850 (not (isEmpty!8392 (tail!1987 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))))))))

(declare-fun b!1375736 () Bool)

(declare-fun e!879170 () Bool)

(assert (=> b!1375736 (= e!879170 (nullable!1201 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))))))

(declare-fun b!1375737 () Bool)

(assert (=> b!1375737 (= e!879170 (matchR!1714 (derivativeStep!958 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))) (head!2475 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400)))))) (tail!1987 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400)))))))))

(declare-fun b!1375738 () Bool)

(declare-fun e!879174 () Bool)

(assert (=> b!1375738 (= e!879174 e!879168)))

(declare-fun c!226592 () Bool)

(assert (=> b!1375738 (= c!226592 ((_ is EmptyLang!3721) (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))))))

(declare-fun b!1375739 () Bool)

(assert (=> b!1375739 (= e!879174 (= lt!457112 call!92340))))

(declare-fun bm!92335 () Bool)

(assert (=> bm!92335 (= call!92340 (isEmpty!8392 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))))))

(declare-fun b!1375740 () Bool)

(assert (=> b!1375740 (= e!879172 (= (head!2475 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))) (c!226061 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))))))

(declare-fun b!1375741 () Bool)

(declare-fun res!619851 () Bool)

(assert (=> b!1375741 (=> (not res!619851) (not e!879172))))

(assert (=> b!1375741 (= res!619851 (isEmpty!8392 (tail!1987 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400)))))))))

(declare-fun b!1375742 () Bool)

(declare-fun res!619852 () Bool)

(declare-fun e!879169 () Bool)

(assert (=> b!1375742 (=> res!619852 e!879169)))

(assert (=> b!1375742 (= res!619852 e!879172)))

(declare-fun res!619845 () Bool)

(assert (=> b!1375742 (=> (not res!619845) (not e!879172))))

(assert (=> b!1375742 (= res!619845 lt!457112)))

(declare-fun d!393294 () Bool)

(assert (=> d!393294 e!879174))

(declare-fun c!226593 () Bool)

(assert (=> d!393294 (= c!226593 ((_ is EmptyExpr!3721) (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400))))))))

(assert (=> d!393294 (= lt!457112 e!879170)))

(declare-fun c!226594 () Bool)

(assert (=> d!393294 (= c!226594 (isEmpty!8392 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))))))

(assert (=> d!393294 (validRegex!1621 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))))

(assert (=> d!393294 (= (matchR!1714 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!456400))))) lt!457112)))

(declare-fun b!1375743 () Bool)

(declare-fun res!619848 () Bool)

(assert (=> b!1375743 (=> res!619848 e!879169)))

(assert (=> b!1375743 (= res!619848 (not ((_ is ElementMatch!3721) (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))))))

(assert (=> b!1375743 (= e!879168 e!879169)))

(declare-fun b!1375744 () Bool)

(declare-fun e!879173 () Bool)

(assert (=> b!1375744 (= e!879169 e!879173)))

(declare-fun res!619849 () Bool)

(assert (=> b!1375744 (=> (not res!619849) (not e!879173))))

(assert (=> b!1375744 (= res!619849 (not lt!457112))))

(declare-fun b!1375745 () Bool)

(assert (=> b!1375745 (= e!879173 e!879171)))

(declare-fun res!619846 () Bool)

(assert (=> b!1375745 (=> res!619846 e!879171)))

(assert (=> b!1375745 (= res!619846 call!92340)))

(assert (= (and d!393294 c!226594) b!1375736))

(assert (= (and d!393294 (not c!226594)) b!1375737))

(assert (= (and d!393294 c!226593) b!1375739))

(assert (= (and d!393294 (not c!226593)) b!1375738))

(assert (= (and b!1375738 c!226592) b!1375734))

(assert (= (and b!1375738 (not c!226592)) b!1375743))

(assert (= (and b!1375743 (not res!619848)) b!1375742))

(assert (= (and b!1375742 res!619845) b!1375732))

(assert (= (and b!1375732 res!619847) b!1375741))

(assert (= (and b!1375741 res!619851) b!1375740))

(assert (= (and b!1375742 (not res!619852)) b!1375744))

(assert (= (and b!1375744 res!619849) b!1375745))

(assert (= (and b!1375745 (not res!619846)) b!1375735))

(assert (= (and b!1375735 (not res!619850)) b!1375733))

(assert (= (or b!1375739 b!1375732 b!1375745) bm!92335))

(assert (=> d!393294 m!1545877))

(declare-fun m!1548349 () Bool)

(assert (=> d!393294 m!1548349))

(declare-fun m!1548351 () Bool)

(assert (=> d!393294 m!1548351))

(assert (=> b!1375735 m!1545877))

(declare-fun m!1548353 () Bool)

(assert (=> b!1375735 m!1548353))

(assert (=> b!1375735 m!1548353))

(declare-fun m!1548355 () Bool)

(assert (=> b!1375735 m!1548355))

(assert (=> b!1375733 m!1545877))

(declare-fun m!1548357 () Bool)

(assert (=> b!1375733 m!1548357))

(assert (=> b!1375741 m!1545877))

(assert (=> b!1375741 m!1548353))

(assert (=> b!1375741 m!1548353))

(assert (=> b!1375741 m!1548355))

(assert (=> b!1375740 m!1545877))

(assert (=> b!1375740 m!1548357))

(declare-fun m!1548359 () Bool)

(assert (=> b!1375736 m!1548359))

(assert (=> b!1375737 m!1545877))

(assert (=> b!1375737 m!1548357))

(assert (=> b!1375737 m!1548357))

(declare-fun m!1548361 () Bool)

(assert (=> b!1375737 m!1548361))

(assert (=> b!1375737 m!1545877))

(assert (=> b!1375737 m!1548353))

(assert (=> b!1375737 m!1548361))

(assert (=> b!1375737 m!1548353))

(declare-fun m!1548363 () Bool)

(assert (=> b!1375737 m!1548363))

(assert (=> bm!92335 m!1545877))

(assert (=> bm!92335 m!1548349))

(assert (=> b!1374183 d!393294))

(assert (=> b!1374183 d!392660))

(assert (=> b!1374183 d!392748))

(assert (=> b!1374183 d!392750))

(declare-fun d!393296 () Bool)

(declare-fun lt!457113 () Bool)

(assert (=> d!393296 (= lt!457113 (isEmpty!8397 (list!5363 (_1!7640 lt!456282))))))

(assert (=> d!393296 (= lt!457113 (isEmpty!8401 (c!226062 (_1!7640 lt!456282))))))

(assert (=> d!393296 (= (isEmpty!8396 (_1!7640 lt!456282)) lt!457113)))

(declare-fun bs!336275 () Bool)

(assert (= bs!336275 d!393296))

(assert (=> bs!336275 m!1545387))

(assert (=> bs!336275 m!1545387))

(declare-fun m!1548365 () Bool)

(assert (=> bs!336275 m!1548365))

(declare-fun m!1548367 () Bool)

(assert (=> bs!336275 m!1548367))

(assert (=> b!1373871 d!393296))

(declare-fun d!393298 () Bool)

(declare-fun lt!457114 () Bool)

(assert (=> d!393298 (= lt!457114 (select (content!2038 rules!2550) lt!456245))))

(declare-fun e!879175 () Bool)

(assert (=> d!393298 (= lt!457114 e!879175)))

(declare-fun res!619853 () Bool)

(assert (=> d!393298 (=> (not res!619853) (not e!879175))))

(assert (=> d!393298 (= res!619853 ((_ is Cons!13905) rules!2550))))

(assert (=> d!393298 (= (contains!2608 rules!2550 lt!456245) lt!457114)))

(declare-fun b!1375746 () Bool)

(declare-fun e!879176 () Bool)

(assert (=> b!1375746 (= e!879175 e!879176)))

(declare-fun res!619854 () Bool)

(assert (=> b!1375746 (=> res!619854 e!879176)))

(assert (=> b!1375746 (= res!619854 (= (h!19306 rules!2550) lt!456245))))

(declare-fun b!1375747 () Bool)

(assert (=> b!1375747 (= e!879176 (contains!2608 (t!121642 rules!2550) lt!456245))))

(assert (= (and d!393298 res!619853) b!1375746))

(assert (= (and b!1375746 (not res!619854)) b!1375747))

(assert (=> d!393298 m!1545215))

(declare-fun m!1548369 () Bool)

(assert (=> d!393298 m!1548369))

(declare-fun m!1548371 () Bool)

(assert (=> b!1375747 m!1548371))

(assert (=> b!1373776 d!393298))

(declare-fun d!393300 () Bool)

(declare-fun res!619855 () Bool)

(declare-fun e!879177 () Bool)

(assert (=> d!393300 (=> res!619855 e!879177)))

(assert (=> d!393300 (= res!619855 ((_ is Nil!13906) (map!3071 rules!2550 lambda!58378)))))

(assert (=> d!393300 (= (forall!3400 (map!3071 rules!2550 lambda!58378) lambda!58416) e!879177)))

(declare-fun b!1375748 () Bool)

(declare-fun e!879178 () Bool)

(assert (=> b!1375748 (= e!879177 e!879178)))

(declare-fun res!619856 () Bool)

(assert (=> b!1375748 (=> (not res!619856) (not e!879178))))

(assert (=> b!1375748 (= res!619856 (dynLambda!6341 lambda!58416 (h!19307 (map!3071 rules!2550 lambda!58378))))))

(declare-fun b!1375749 () Bool)

(assert (=> b!1375749 (= e!879178 (forall!3400 (t!121643 (map!3071 rules!2550 lambda!58378)) lambda!58416))))

(assert (= (and d!393300 (not res!619855)) b!1375748))

(assert (= (and b!1375748 res!619856) b!1375749))

(declare-fun b_lambda!42347 () Bool)

(assert (=> (not b_lambda!42347) (not b!1375748)))

(declare-fun m!1548373 () Bool)

(assert (=> b!1375748 m!1548373))

(declare-fun m!1548375 () Bool)

(assert (=> b!1375749 m!1548375))

(assert (=> d!392318 d!393300))

(assert (=> b!1373604 d!392636))

(assert (=> b!1373604 d!392638))

(declare-fun d!393302 () Bool)

(declare-fun res!619857 () Bool)

(declare-fun e!879179 () Bool)

(assert (=> d!393302 (=> res!619857 e!879179)))

(assert (=> d!393302 (= res!619857 (not ((_ is Cons!13905) (t!121642 rules!2550))))))

(assert (=> d!393302 (= (sepAndNonSepRulesDisjointChars!780 rules!2550 (t!121642 rules!2550)) e!879179)))

(declare-fun b!1375750 () Bool)

(declare-fun e!879180 () Bool)

(assert (=> b!1375750 (= e!879179 e!879180)))

(declare-fun res!619858 () Bool)

(assert (=> b!1375750 (=> (not res!619858) (not e!879180))))

(assert (=> b!1375750 (= res!619858 (ruleDisjointCharsFromAllFromOtherType!372 (h!19306 (t!121642 rules!2550)) rules!2550))))

(declare-fun b!1375751 () Bool)

(assert (=> b!1375751 (= e!879180 (sepAndNonSepRulesDisjointChars!780 rules!2550 (t!121642 (t!121642 rules!2550))))))

(assert (= (and d!393302 (not res!619857)) b!1375750))

(assert (= (and b!1375750 res!619858) b!1375751))

(declare-fun m!1548377 () Bool)

(assert (=> b!1375750 m!1548377))

(declare-fun m!1548379 () Bool)

(assert (=> b!1375751 m!1548379))

(assert (=> b!1374167 d!393302))

(declare-fun d!393304 () Bool)

(declare-fun lt!457115 () Bool)

(assert (=> d!393304 (= lt!457115 (select (content!2037 (t!121640 lt!456122)) lt!456121))))

(declare-fun e!879181 () Bool)

(assert (=> d!393304 (= lt!457115 e!879181)))

(declare-fun res!619860 () Bool)

(assert (=> d!393304 (=> (not res!619860) (not e!879181))))

(assert (=> d!393304 (= res!619860 ((_ is Cons!13903) (t!121640 lt!456122)))))

(assert (=> d!393304 (= (contains!2607 (t!121640 lt!456122) lt!456121) lt!457115)))

(declare-fun b!1375752 () Bool)

(declare-fun e!879182 () Bool)

(assert (=> b!1375752 (= e!879181 e!879182)))

(declare-fun res!619859 () Bool)

(assert (=> b!1375752 (=> res!619859 e!879182)))

(assert (=> b!1375752 (= res!619859 (= (h!19304 (t!121640 lt!456122)) lt!456121))))

(declare-fun b!1375753 () Bool)

(assert (=> b!1375753 (= e!879182 (contains!2607 (t!121640 (t!121640 lt!456122)) lt!456121))))

(assert (= (and d!393304 res!619860) b!1375752))

(assert (= (and b!1375752 (not res!619859)) b!1375753))

(assert (=> d!393304 m!1547521))

(declare-fun m!1548381 () Bool)

(assert (=> d!393304 m!1548381))

(declare-fun m!1548383 () Bool)

(assert (=> b!1375753 m!1548383))

(assert (=> b!1373761 d!393304))

(declare-fun d!393306 () Bool)

(assert (=> d!393306 (= (list!5362 (_2!7640 lt!456385)) (list!5366 (c!226060 (_2!7640 lt!456385))))))

(declare-fun bs!336276 () Bool)

(assert (= bs!336276 d!393306))

(declare-fun m!1548385 () Bool)

(assert (=> bs!336276 m!1548385))

(assert (=> b!1374169 d!393306))

(assert (=> b!1374169 d!392320))

(assert (=> b!1374169 d!392332))

(assert (=> d!392380 d!392318))

(declare-fun d!393308 () Bool)

(assert (=> d!393308 (dynLambda!6334 lambda!58381 (rule!4164 t2!34))))

(assert (=> d!393308 true))

(declare-fun _$7!734 () Unit!20133)

(assert (=> d!393308 (= (choose!8458 rules!2550 lambda!58381 (rule!4164 t2!34)) _$7!734)))

(declare-fun b_lambda!42349 () Bool)

(assert (=> (not b_lambda!42349) (not d!393308)))

(declare-fun bs!336277 () Bool)

(assert (= bs!336277 d!393308))

(assert (=> bs!336277 m!1545779))

(assert (=> d!392406 d!393308))

(assert (=> d!392406 d!392628))

(declare-fun d!393310 () Bool)

(declare-fun lt!457116 () Int)

(assert (=> d!393310 (>= lt!457116 0)))

(declare-fun e!879183 () Int)

(assert (=> d!393310 (= lt!457116 e!879183)))

(declare-fun c!226595 () Bool)

(assert (=> d!393310 (= c!226595 ((_ is Nil!13903) (_2!7639 lt!456322)))))

(assert (=> d!393310 (= (size!11415 (_2!7639 lt!456322)) lt!457116)))

(declare-fun b!1375754 () Bool)

(assert (=> b!1375754 (= e!879183 0)))

(declare-fun b!1375755 () Bool)

(assert (=> b!1375755 (= e!879183 (+ 1 (size!11415 (t!121640 (_2!7639 lt!456322)))))))

(assert (= (and d!393310 c!226595) b!1375754))

(assert (= (and d!393310 (not c!226595)) b!1375755))

(declare-fun m!1548387 () Bool)

(assert (=> b!1375755 m!1548387))

(assert (=> b!1373943 d!393310))

(declare-fun d!393312 () Bool)

(declare-fun lt!457117 () Int)

(assert (=> d!393312 (>= lt!457117 0)))

(declare-fun e!879184 () Int)

(assert (=> d!393312 (= lt!457117 e!879184)))

(declare-fun c!226596 () Bool)

(assert (=> d!393312 (= c!226596 ((_ is Nil!13903) (list!5362 lt!456142)))))

(assert (=> d!393312 (= (size!11415 (list!5362 lt!456142)) lt!457117)))

(declare-fun b!1375756 () Bool)

(assert (=> b!1375756 (= e!879184 0)))

(declare-fun b!1375757 () Bool)

(assert (=> b!1375757 (= e!879184 (+ 1 (size!11415 (t!121640 (list!5362 lt!456142)))))))

(assert (= (and d!393312 c!226596) b!1375756))

(assert (= (and d!393312 (not c!226596)) b!1375757))

(declare-fun m!1548389 () Bool)

(assert (=> b!1375757 m!1548389))

(assert (=> b!1373943 d!393312))

(declare-fun d!393314 () Bool)

(declare-fun c!226599 () Bool)

(assert (=> d!393314 (= c!226599 ((_ is Nil!13905) rules!2550))))

(declare-fun e!879187 () (InoxSet Rule!4614))

(assert (=> d!393314 (= (content!2038 rules!2550) e!879187)))

(declare-fun b!1375762 () Bool)

(assert (=> b!1375762 (= e!879187 ((as const (Array Rule!4614 Bool)) false))))

(declare-fun b!1375763 () Bool)

(assert (=> b!1375763 (= e!879187 ((_ map or) (store ((as const (Array Rule!4614 Bool)) false) (h!19306 rules!2550) true) (content!2038 (t!121642 rules!2550))))))

(assert (= (and d!393314 c!226599) b!1375762))

(assert (= (and d!393314 (not c!226599)) b!1375763))

(declare-fun m!1548391 () Bool)

(assert (=> b!1375763 m!1548391))

(assert (=> b!1375763 m!1547105))

(assert (=> d!392216 d!393314))

(declare-fun d!393316 () Bool)

(declare-fun lt!457118 () Int)

(assert (=> d!393316 (>= lt!457118 0)))

(declare-fun e!879188 () Int)

(assert (=> d!393316 (= lt!457118 e!879188)))

(declare-fun c!226600 () Bool)

(assert (=> d!393316 (= c!226600 ((_ is Nil!13903) (originalCharacters!3269 t1!34)))))

(assert (=> d!393316 (= (size!11415 (originalCharacters!3269 t1!34)) lt!457118)))

(declare-fun b!1375764 () Bool)

(assert (=> b!1375764 (= e!879188 0)))

(declare-fun b!1375765 () Bool)

(assert (=> b!1375765 (= e!879188 (+ 1 (size!11415 (t!121640 (originalCharacters!3269 t1!34)))))))

(assert (= (and d!393316 c!226600) b!1375764))

(assert (= (and d!393316 (not c!226600)) b!1375765))

(declare-fun m!1548393 () Bool)

(assert (=> b!1375765 m!1548393))

(assert (=> b!1374158 d!393316))

(declare-fun bs!336278 () Bool)

(declare-fun d!393318 () Bool)

(assert (= bs!336278 (and d!393318 b!1373448)))

(declare-fun lambda!58493 () Int)

(assert (=> bs!336278 (= lambda!58493 lambda!58381)))

(declare-fun bs!336279 () Bool)

(assert (= bs!336279 (and d!393318 d!392746)))

(assert (=> bs!336279 (= lambda!58493 lambda!58467)))

(declare-fun bs!336280 () Bool)

(assert (= bs!336280 (and d!393318 d!392754)))

(assert (=> bs!336280 (not (= lambda!58493 lambda!58472))))

(declare-fun bs!336281 () Bool)

(assert (= bs!336281 (and d!393318 d!392752)))

(assert (=> bs!336281 (not (= lambda!58493 lambda!58468))))

(declare-fun bs!336282 () Bool)

(assert (= bs!336282 (and d!393318 d!392344)))

(assert (=> bs!336282 (not (= lambda!58493 lambda!58422))))

(declare-fun bs!336283 () Bool)

(assert (= bs!336283 (and d!393318 d!392338)))

(assert (=> bs!336283 (not (= lambda!58493 lambda!58419))))

(declare-fun bs!336284 () Bool)

(assert (= bs!336284 (and d!393318 b!1373444)))

(assert (=> bs!336284 (not (= lambda!58493 lambda!58380))))

(assert (=> d!393318 true))

(declare-fun lt!457121 () Bool)

(assert (=> d!393318 (= lt!457121 (rulesValidInductive!772 thiss!19762 rules!2550))))

(assert (=> d!393318 (= lt!457121 (forall!3401 rules!2550 lambda!58493))))

(assert (=> d!393318 (= (rulesValid!898 thiss!19762 rules!2550) lt!457121)))

(declare-fun bs!336285 () Bool)

(assert (= bs!336285 d!393318))

(assert (=> bs!336285 m!1545759))

(declare-fun m!1548395 () Bool)

(assert (=> bs!336285 m!1548395))

(assert (=> d!392210 d!393318))

(declare-fun d!393320 () Bool)

(declare-fun lt!457122 () Int)

(assert (=> d!393320 (>= lt!457122 0)))

(declare-fun e!879189 () Int)

(assert (=> d!393320 (= lt!457122 e!879189)))

(declare-fun c!226601 () Bool)

(assert (=> d!393320 (= c!226601 ((_ is Nil!13903) (originalCharacters!3269 t2!34)))))

(assert (=> d!393320 (= (size!11415 (originalCharacters!3269 t2!34)) lt!457122)))

(declare-fun b!1375766 () Bool)

(assert (=> b!1375766 (= e!879189 0)))

(declare-fun b!1375767 () Bool)

(assert (=> b!1375767 (= e!879189 (+ 1 (size!11415 (t!121640 (originalCharacters!3269 t2!34)))))))

(assert (= (and d!393320 c!226601) b!1375766))

(assert (= (and d!393320 (not c!226601)) b!1375767))

(declare-fun m!1548397 () Bool)

(assert (=> b!1375767 m!1548397))

(assert (=> b!1374160 d!393320))

(declare-fun bm!92336 () Bool)

(declare-fun call!92342 () Bool)

(declare-fun call!92341 () Bool)

(assert (=> bm!92336 (= call!92342 call!92341)))

(declare-fun d!393322 () Bool)

(declare-fun res!619864 () Bool)

(declare-fun e!879195 () Bool)

(assert (=> d!393322 (=> res!619864 e!879195)))

(assert (=> d!393322 (= res!619864 ((_ is ElementMatch!3721) (h!19307 (map!3071 rules!2550 lambda!58378))))))

(assert (=> d!393322 (= (validRegex!1621 (h!19307 (map!3071 rules!2550 lambda!58378))) e!879195)))

(declare-fun b!1375768 () Bool)

(declare-fun e!879192 () Bool)

(declare-fun e!879193 () Bool)

(assert (=> b!1375768 (= e!879192 e!879193)))

(declare-fun c!226602 () Bool)

(assert (=> b!1375768 (= c!226602 ((_ is Union!3721) (h!19307 (map!3071 rules!2550 lambda!58378))))))

(declare-fun b!1375769 () Bool)

(declare-fun res!619863 () Bool)

(declare-fun e!879191 () Bool)

(assert (=> b!1375769 (=> (not res!619863) (not e!879191))))

(declare-fun call!92343 () Bool)

(assert (=> b!1375769 (= res!619863 call!92343)))

(assert (=> b!1375769 (= e!879193 e!879191)))

(declare-fun bm!92337 () Bool)

(assert (=> bm!92337 (= call!92343 (validRegex!1621 (ite c!226602 (regOne!7955 (h!19307 (map!3071 rules!2550 lambda!58378))) (regOne!7954 (h!19307 (map!3071 rules!2550 lambda!58378))))))))

(declare-fun b!1375770 () Bool)

(declare-fun e!879194 () Bool)

(declare-fun e!879190 () Bool)

(assert (=> b!1375770 (= e!879194 e!879190)))

(declare-fun res!619862 () Bool)

(assert (=> b!1375770 (=> (not res!619862) (not e!879190))))

(assert (=> b!1375770 (= res!619862 call!92343)))

(declare-fun b!1375771 () Bool)

(declare-fun e!879196 () Bool)

(assert (=> b!1375771 (= e!879196 call!92341)))

(declare-fun b!1375772 () Bool)

(assert (=> b!1375772 (= e!879195 e!879192)))

(declare-fun c!226603 () Bool)

(assert (=> b!1375772 (= c!226603 ((_ is Star!3721) (h!19307 (map!3071 rules!2550 lambda!58378))))))

(declare-fun b!1375773 () Bool)

(assert (=> b!1375773 (= e!879190 call!92342)))

(declare-fun b!1375774 () Bool)

(declare-fun res!619865 () Bool)

(assert (=> b!1375774 (=> res!619865 e!879194)))

(assert (=> b!1375774 (= res!619865 (not ((_ is Concat!6219) (h!19307 (map!3071 rules!2550 lambda!58378)))))))

(assert (=> b!1375774 (= e!879193 e!879194)))

(declare-fun b!1375775 () Bool)

(assert (=> b!1375775 (= e!879191 call!92342)))

(declare-fun b!1375776 () Bool)

(assert (=> b!1375776 (= e!879192 e!879196)))

(declare-fun res!619861 () Bool)

(assert (=> b!1375776 (= res!619861 (not (nullable!1201 (reg!4050 (h!19307 (map!3071 rules!2550 lambda!58378))))))))

(assert (=> b!1375776 (=> (not res!619861) (not e!879196))))

(declare-fun bm!92338 () Bool)

(assert (=> bm!92338 (= call!92341 (validRegex!1621 (ite c!226603 (reg!4050 (h!19307 (map!3071 rules!2550 lambda!58378))) (ite c!226602 (regTwo!7955 (h!19307 (map!3071 rules!2550 lambda!58378))) (regTwo!7954 (h!19307 (map!3071 rules!2550 lambda!58378)))))))))

(assert (= (and d!393322 (not res!619864)) b!1375772))

(assert (= (and b!1375772 c!226603) b!1375776))

(assert (= (and b!1375772 (not c!226603)) b!1375768))

(assert (= (and b!1375776 res!619861) b!1375771))

(assert (= (and b!1375768 c!226602) b!1375769))

(assert (= (and b!1375768 (not c!226602)) b!1375774))

(assert (= (and b!1375769 res!619863) b!1375775))

(assert (= (and b!1375774 (not res!619865)) b!1375770))

(assert (= (and b!1375770 res!619862) b!1375773))

(assert (= (or b!1375769 b!1375770) bm!92337))

(assert (= (or b!1375775 b!1375773) bm!92336))

(assert (= (or b!1375771 bm!92336) bm!92338))

(declare-fun m!1548399 () Bool)

(assert (=> bm!92337 m!1548399))

(declare-fun m!1548401 () Bool)

(assert (=> b!1375776 m!1548401))

(declare-fun m!1548403 () Bool)

(assert (=> bm!92338 m!1548403))

(assert (=> bs!336040 d!393322))

(declare-fun b!1375779 () Bool)

(declare-fun res!619867 () Bool)

(declare-fun e!879197 () Bool)

(assert (=> b!1375779 (=> (not res!619867) (not e!879197))))

(declare-fun lt!457123 () List!13969)

(assert (=> b!1375779 (= res!619867 (= (size!11415 lt!457123) (+ (size!11415 lt!456127) (size!11415 lt!456225))))))

(declare-fun b!1375780 () Bool)

(assert (=> b!1375780 (= e!879197 (or (not (= lt!456225 Nil!13903)) (= lt!457123 lt!456127)))))

(declare-fun d!393324 () Bool)

(assert (=> d!393324 e!879197))

(declare-fun res!619866 () Bool)

(assert (=> d!393324 (=> (not res!619866) (not e!879197))))

(assert (=> d!393324 (= res!619866 (= (content!2037 lt!457123) ((_ map or) (content!2037 lt!456127) (content!2037 lt!456225))))))

(declare-fun e!879198 () List!13969)

(assert (=> d!393324 (= lt!457123 e!879198)))

(declare-fun c!226604 () Bool)

(assert (=> d!393324 (= c!226604 ((_ is Nil!13903) lt!456127))))

(assert (=> d!393324 (= (++!3598 lt!456127 lt!456225) lt!457123)))

(declare-fun b!1375778 () Bool)

(assert (=> b!1375778 (= e!879198 (Cons!13903 (h!19304 lt!456127) (++!3598 (t!121640 lt!456127) lt!456225)))))

(declare-fun b!1375777 () Bool)

(assert (=> b!1375777 (= e!879198 lt!456225)))

(assert (= (and d!393324 c!226604) b!1375777))

(assert (= (and d!393324 (not c!226604)) b!1375778))

(assert (= (and d!393324 res!619866) b!1375779))

(assert (= (and b!1375779 res!619867) b!1375780))

(declare-fun m!1548405 () Bool)

(assert (=> b!1375779 m!1548405))

(assert (=> b!1375779 m!1545187))

(declare-fun m!1548407 () Bool)

(assert (=> b!1375779 m!1548407))

(declare-fun m!1548409 () Bool)

(assert (=> d!393324 m!1548409))

(assert (=> d!393324 m!1545173))

(declare-fun m!1548411 () Bool)

(assert (=> d!393324 m!1548411))

(declare-fun m!1548413 () Bool)

(assert (=> b!1375778 m!1548413))

(assert (=> d!392206 d!393324))

(declare-fun d!393326 () Bool)

(declare-fun lt!457124 () Int)

(assert (=> d!393326 (>= lt!457124 0)))

(declare-fun e!879199 () Int)

(assert (=> d!393326 (= lt!457124 e!879199)))

(declare-fun c!226605 () Bool)

(assert (=> d!393326 (= c!226605 ((_ is Nil!13903) lt!456122))))

(assert (=> d!393326 (= (size!11415 lt!456122) lt!457124)))

(declare-fun b!1375781 () Bool)

(assert (=> b!1375781 (= e!879199 0)))

(declare-fun b!1375782 () Bool)

(assert (=> b!1375782 (= e!879199 (+ 1 (size!11415 (t!121640 lt!456122))))))

(assert (= (and d!393326 c!226605) b!1375781))

(assert (= (and d!393326 (not c!226605)) b!1375782))

(declare-fun m!1548415 () Bool)

(assert (=> b!1375782 m!1548415))

(assert (=> d!392206 d!393326))

(assert (=> d!392206 d!392980))

(declare-fun d!393328 () Bool)

(declare-fun res!619868 () Bool)

(declare-fun e!879200 () Bool)

(assert (=> d!393328 (=> res!619868 e!879200)))

(assert (=> d!393328 (= res!619868 ((_ is Nil!13906) lt!456129))))

(assert (=> d!393328 (= (forall!3400 lt!456129 lambda!58415) e!879200)))

(declare-fun b!1375783 () Bool)

(declare-fun e!879201 () Bool)

(assert (=> b!1375783 (= e!879200 e!879201)))

(declare-fun res!619869 () Bool)

(assert (=> b!1375783 (=> (not res!619869) (not e!879201))))

(assert (=> b!1375783 (= res!619869 (dynLambda!6341 lambda!58415 (h!19307 lt!456129)))))

(declare-fun b!1375784 () Bool)

(assert (=> b!1375784 (= e!879201 (forall!3400 (t!121643 lt!456129) lambda!58415))))

(assert (= (and d!393328 (not res!619868)) b!1375783))

(assert (= (and b!1375783 res!619869) b!1375784))

(declare-fun b_lambda!42351 () Bool)

(assert (=> (not b_lambda!42351) (not b!1375783)))

(declare-fun m!1548417 () Bool)

(assert (=> b!1375783 m!1548417))

(declare-fun m!1548419 () Bool)

(assert (=> b!1375784 m!1548419))

(assert (=> d!392312 d!393328))

(assert (=> d!392198 d!393030))

(declare-fun d!393330 () Bool)

(assert (=> d!393330 (= (head!2475 lt!456128) (h!19304 lt!456128))))

(assert (=> b!1374140 d!393330))

(declare-fun d!393332 () Bool)

(declare-fun lt!457125 () Bool)

(assert (=> d!393332 (= lt!457125 (select (content!2038 (t!121642 rules!2550)) lt!456138))))

(declare-fun e!879202 () Bool)

(assert (=> d!393332 (= lt!457125 e!879202)))

(declare-fun res!619870 () Bool)

(assert (=> d!393332 (=> (not res!619870) (not e!879202))))

(assert (=> d!393332 (= res!619870 ((_ is Cons!13905) (t!121642 rules!2550)))))

(assert (=> d!393332 (= (contains!2608 (t!121642 rules!2550) lt!456138) lt!457125)))

(declare-fun b!1375785 () Bool)

(declare-fun e!879203 () Bool)

(assert (=> b!1375785 (= e!879202 e!879203)))

(declare-fun res!619871 () Bool)

(assert (=> b!1375785 (=> res!619871 e!879203)))

(assert (=> b!1375785 (= res!619871 (= (h!19306 (t!121642 rules!2550)) lt!456138))))

(declare-fun b!1375786 () Bool)

(assert (=> b!1375786 (= e!879203 (contains!2608 (t!121642 (t!121642 rules!2550)) lt!456138))))

(assert (= (and d!393332 res!619870) b!1375785))

(assert (= (and b!1375785 (not res!619871)) b!1375786))

(assert (=> d!393332 m!1547105))

(declare-fun m!1548421 () Bool)

(assert (=> d!393332 m!1548421))

(declare-fun m!1548423 () Bool)

(assert (=> b!1375786 m!1548423))

(assert (=> b!1373752 d!393332))

(declare-fun d!393334 () Bool)

(assert (=> d!393334 (= (list!5363 (_1!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34))))) (list!5367 (c!226062 (_1!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t2!34)))))))))

(declare-fun bs!336286 () Bool)

(assert (= bs!336286 d!393334))

(declare-fun m!1548425 () Bool)

(assert (=> bs!336286 m!1548425))

(assert (=> d!392220 d!393334))

(declare-fun d!393336 () Bool)

(declare-fun lt!457126 () Int)

(assert (=> d!393336 (= lt!457126 (size!11420 (list!5363 (_1!7640 lt!456233))))))

(assert (=> d!393336 (= lt!457126 (size!11423 (c!226062 (_1!7640 lt!456233))))))

(assert (=> d!393336 (= (size!11416 (_1!7640 lt!456233)) lt!457126)))

(declare-fun bs!336287 () Bool)

(assert (= bs!336287 d!393336))

(declare-fun m!1548427 () Bool)

(assert (=> bs!336287 m!1548427))

(assert (=> bs!336287 m!1548427))

(declare-fun m!1548429 () Bool)

(assert (=> bs!336287 m!1548429))

(declare-fun m!1548431 () Bool)

(assert (=> bs!336287 m!1548431))

(assert (=> d!392220 d!393336))

(assert (=> d!392220 d!392424))

(assert (=> d!392220 d!392426))

(assert (=> d!392220 d!392372))

(assert (=> d!392220 d!393040))

(assert (=> d!392220 d!392946))

(assert (=> b!1374148 d!392218))

(declare-fun d!393338 () Bool)

(assert (=> d!393338 (= (isEmpty!8397 (_1!7639 lt!456392)) ((_ is Nil!13904) (_1!7639 lt!456392)))))

(assert (=> b!1374176 d!393338))

(declare-fun d!393340 () Bool)

(declare-fun c!226606 () Bool)

(assert (=> d!393340 (= c!226606 ((_ is Node!4576) (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))))))

(declare-fun e!879204 () Bool)

(assert (=> d!393340 (= (inv!18263 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))) e!879204)))

(declare-fun b!1375787 () Bool)

(assert (=> b!1375787 (= e!879204 (inv!18269 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))))))

(declare-fun b!1375788 () Bool)

(declare-fun e!879205 () Bool)

(assert (=> b!1375788 (= e!879204 e!879205)))

(declare-fun res!619872 () Bool)

(assert (=> b!1375788 (= res!619872 (not ((_ is Leaf!6976) (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))))))))

(assert (=> b!1375788 (=> res!619872 e!879205)))

(declare-fun b!1375789 () Bool)

(assert (=> b!1375789 (= e!879205 (inv!18270 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))))))

(assert (= (and d!393340 c!226606) b!1375787))

(assert (= (and d!393340 (not c!226606)) b!1375788))

(assert (= (and b!1375788 (not res!619872)) b!1375789))

(declare-fun m!1548433 () Bool)

(assert (=> b!1375787 m!1548433))

(declare-fun m!1548435 () Bool)

(assert (=> b!1375789 m!1548435))

(assert (=> b!1373545 d!393340))

(assert (=> b!1374100 d!392670))

(assert (=> b!1374100 d!392672))

(assert (=> d!392436 d!393314))

(declare-fun d!393342 () Bool)

(declare-fun e!879208 () Bool)

(assert (=> d!393342 e!879208))

(declare-fun res!619874 () Bool)

(assert (=> d!393342 (=> res!619874 e!879208)))

(declare-fun lt!457127 () Bool)

(assert (=> d!393342 (= res!619874 (not lt!457127))))

(declare-fun e!879206 () Bool)

(assert (=> d!393342 (= lt!457127 e!879206)))

(declare-fun res!619875 () Bool)

(assert (=> d!393342 (=> res!619875 e!879206)))

(assert (=> d!393342 (= res!619875 ((_ is Nil!13903) lt!456127))))

(assert (=> d!393342 (= (isPrefix!1131 lt!456127 lt!456228) lt!457127)))

(declare-fun b!1375790 () Bool)

(declare-fun e!879207 () Bool)

(assert (=> b!1375790 (= e!879206 e!879207)))

(declare-fun res!619873 () Bool)

(assert (=> b!1375790 (=> (not res!619873) (not e!879207))))

(assert (=> b!1375790 (= res!619873 (not ((_ is Nil!13903) lt!456228)))))

(declare-fun b!1375793 () Bool)

(assert (=> b!1375793 (= e!879208 (>= (size!11415 lt!456228) (size!11415 lt!456127)))))

(declare-fun b!1375792 () Bool)

(assert (=> b!1375792 (= e!879207 (isPrefix!1131 (tail!1987 lt!456127) (tail!1987 lt!456228)))))

(declare-fun b!1375791 () Bool)

(declare-fun res!619876 () Bool)

(assert (=> b!1375791 (=> (not res!619876) (not e!879207))))

(assert (=> b!1375791 (= res!619876 (= (head!2475 lt!456127) (head!2475 lt!456228)))))

(assert (= (and d!393342 (not res!619875)) b!1375790))

(assert (= (and b!1375790 res!619873) b!1375791))

(assert (= (and b!1375791 res!619876) b!1375792))

(assert (= (and d!393342 (not res!619874)) b!1375793))

(declare-fun m!1548437 () Bool)

(assert (=> b!1375793 m!1548437))

(assert (=> b!1375793 m!1545187))

(assert (=> b!1375792 m!1544927))

(assert (=> b!1375792 m!1546375))

(assert (=> b!1375792 m!1544927))

(assert (=> b!1375792 m!1546375))

(declare-fun m!1548439 () Bool)

(assert (=> b!1375792 m!1548439))

(assert (=> b!1375791 m!1544923))

(assert (=> b!1375791 m!1546379))

(assert (=> b!1374229 d!393342))

(declare-fun d!393344 () Bool)

(assert (=> d!393344 (= (list!5362 lt!456162) (list!5366 (c!226060 lt!456162)))))

(declare-fun bs!336288 () Bool)

(assert (= bs!336288 d!393344))

(declare-fun m!1548441 () Bool)

(assert (=> bs!336288 m!1548441))

(assert (=> d!392160 d!393344))

(declare-fun d!393346 () Bool)

(declare-fun lt!457128 () Bool)

(assert (=> d!393346 (= lt!457128 (select (content!2037 (t!121640 lt!456122)) lt!456136))))

(declare-fun e!879209 () Bool)

(assert (=> d!393346 (= lt!457128 e!879209)))

(declare-fun res!619878 () Bool)

(assert (=> d!393346 (=> (not res!619878) (not e!879209))))

(assert (=> d!393346 (= res!619878 ((_ is Cons!13903) (t!121640 lt!456122)))))

(assert (=> d!393346 (= (contains!2607 (t!121640 lt!456122) lt!456136) lt!457128)))

(declare-fun b!1375794 () Bool)

(declare-fun e!879210 () Bool)

(assert (=> b!1375794 (= e!879209 e!879210)))

(declare-fun res!619877 () Bool)

(assert (=> b!1375794 (=> res!619877 e!879210)))

(assert (=> b!1375794 (= res!619877 (= (h!19304 (t!121640 lt!456122)) lt!456136))))

(declare-fun b!1375795 () Bool)

(assert (=> b!1375795 (= e!879210 (contains!2607 (t!121640 (t!121640 lt!456122)) lt!456136))))

(assert (= (and d!393346 res!619878) b!1375794))

(assert (= (and b!1375794 (not res!619877)) b!1375795))

(assert (=> d!393346 m!1547521))

(declare-fun m!1548443 () Bool)

(assert (=> d!393346 m!1548443))

(declare-fun m!1548445 () Bool)

(assert (=> b!1375795 m!1548445))

(assert (=> b!1373727 d!393346))

(declare-fun bs!336289 () Bool)

(declare-fun d!393348 () Bool)

(assert (= bs!336289 (and d!393348 d!392730)))

(declare-fun lambda!58494 () Int)

(assert (=> bs!336289 (= (= (toValue!3678 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (rule!4164 t1!34)))) (= lambda!58494 lambda!58464))))

(declare-fun bs!336290 () Bool)

(assert (= bs!336290 (and d!393348 d!393064)))

(assert (=> bs!336290 (= (= (toValue!3678 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (rule!4164 t2!34)))) (= lambda!58494 lambda!58486))))

(assert (=> d!393348 true))

(assert (=> d!393348 (< (dynLambda!6347 order!8511 (toValue!3678 (transformation!2407 (h!19306 rules!2550)))) (dynLambda!6350 order!8513 lambda!58494))))

(assert (=> d!393348 (= (equivClasses!889 (toChars!3537 (transformation!2407 (h!19306 rules!2550))) (toValue!3678 (transformation!2407 (h!19306 rules!2550)))) (Forall2!443 lambda!58494))))

(declare-fun bs!336291 () Bool)

(assert (= bs!336291 d!393348))

(declare-fun m!1548447 () Bool)

(assert (=> bs!336291 m!1548447))

(assert (=> b!1373759 d!393348))

(declare-fun b!1375814 () Bool)

(declare-fun res!619896 () Bool)

(declare-fun e!879221 () Bool)

(assert (=> b!1375814 (=> (not res!619896) (not e!879221))))

(declare-fun lt!457142 () Option!2672)

(assert (=> b!1375814 (= res!619896 (= (rule!4164 (_1!7641 (get!4350 lt!457142))) (h!19306 rules!2550)))))

(declare-fun d!393350 () Bool)

(declare-fun e!879222 () Bool)

(assert (=> d!393350 e!879222))

(declare-fun res!619897 () Bool)

(assert (=> d!393350 (=> res!619897 e!879222)))

(assert (=> d!393350 (= res!619897 (isEmpty!8399 lt!457142))))

(declare-fun e!879219 () Option!2672)

(assert (=> d!393350 (= lt!457142 e!879219)))

(declare-fun c!226609 () Bool)

(declare-datatypes ((tuple2!13518 0))(
  ( (tuple2!13519 (_1!7645 List!13969) (_2!7645 List!13969)) )
))
(declare-fun lt!457140 () tuple2!13518)

(assert (=> d!393350 (= c!226609 (isEmpty!8392 (_1!7645 lt!457140)))))

(declare-fun findLongestMatch!240 (Regex!3721 List!13969) tuple2!13518)

(assert (=> d!393350 (= lt!457140 (findLongestMatch!240 (regex!2407 (h!19306 rules!2550)) lt!456128))))

(assert (=> d!393350 (ruleValid!594 thiss!19762 (h!19306 rules!2550))))

(assert (=> d!393350 (= (maxPrefixOneRule!619 thiss!19762 (h!19306 rules!2550) lt!456128) lt!457142)))

(declare-fun b!1375815 () Bool)

(declare-fun e!879220 () Bool)

(declare-fun findLongestMatchInner!284 (Regex!3721 List!13969 Int List!13969 List!13969 Int) tuple2!13518)

(assert (=> b!1375815 (= e!879220 (matchR!1714 (regex!2407 (h!19306 rules!2550)) (_1!7645 (findLongestMatchInner!284 (regex!2407 (h!19306 rules!2550)) Nil!13903 (size!11415 Nil!13903) lt!456128 lt!456128 (size!11415 lt!456128)))))))

(declare-fun b!1375816 () Bool)

(assert (=> b!1375816 (= e!879219 None!2671)))

(declare-fun b!1375817 () Bool)

(assert (=> b!1375817 (= e!879221 (= (size!11409 (_1!7641 (get!4350 lt!457142))) (size!11415 (originalCharacters!3269 (_1!7641 (get!4350 lt!457142))))))))

(declare-fun b!1375818 () Bool)

(declare-fun res!619893 () Bool)

(assert (=> b!1375818 (=> (not res!619893) (not e!879221))))

(assert (=> b!1375818 (= res!619893 (< (size!11415 (_2!7641 (get!4350 lt!457142))) (size!11415 lt!456128)))))

(declare-fun b!1375819 () Bool)

(declare-fun res!619894 () Bool)

(assert (=> b!1375819 (=> (not res!619894) (not e!879221))))

(assert (=> b!1375819 (= res!619894 (= (value!78232 (_1!7641 (get!4350 lt!457142))) (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!457142)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!457142)))))))))

(declare-fun b!1375820 () Bool)

(assert (=> b!1375820 (= e!879219 (Some!2671 (tuple2!13511 (Token!4477 (apply!3431 (transformation!2407 (h!19306 rules!2550)) (seqFromList!1637 (_1!7645 lt!457140))) (h!19306 rules!2550) (size!11410 (seqFromList!1637 (_1!7645 lt!457140))) (_1!7645 lt!457140)) (_2!7645 lt!457140))))))

(declare-fun lt!457139 () Unit!20133)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!268 (Regex!3721 List!13969) Unit!20133)

(assert (=> b!1375820 (= lt!457139 (longestMatchIsAcceptedByMatchOrIsEmpty!268 (regex!2407 (h!19306 rules!2550)) lt!456128))))

(declare-fun res!619898 () Bool)

(assert (=> b!1375820 (= res!619898 (isEmpty!8392 (_1!7645 (findLongestMatchInner!284 (regex!2407 (h!19306 rules!2550)) Nil!13903 (size!11415 Nil!13903) lt!456128 lt!456128 (size!11415 lt!456128)))))))

(assert (=> b!1375820 (=> res!619898 e!879220)))

(assert (=> b!1375820 e!879220))

(declare-fun lt!457141 () Unit!20133)

(assert (=> b!1375820 (= lt!457141 lt!457139)))

(declare-fun lt!457143 () Unit!20133)

(declare-fun lemmaSemiInverse!338 (TokenValueInjection!4654 BalanceConc!9092) Unit!20133)

(assert (=> b!1375820 (= lt!457143 (lemmaSemiInverse!338 (transformation!2407 (h!19306 rules!2550)) (seqFromList!1637 (_1!7645 lt!457140))))))

(declare-fun b!1375821 () Bool)

(assert (=> b!1375821 (= e!879222 e!879221)))

(declare-fun res!619899 () Bool)

(assert (=> b!1375821 (=> (not res!619899) (not e!879221))))

(assert (=> b!1375821 (= res!619899 (matchR!1714 (regex!2407 (h!19306 rules!2550)) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457142))))))))

(declare-fun b!1375822 () Bool)

(declare-fun res!619895 () Bool)

(assert (=> b!1375822 (=> (not res!619895) (not e!879221))))

(assert (=> b!1375822 (= res!619895 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457142)))) (_2!7641 (get!4350 lt!457142))) lt!456128))))

(assert (= (and d!393350 c!226609) b!1375816))

(assert (= (and d!393350 (not c!226609)) b!1375820))

(assert (= (and b!1375820 (not res!619898)) b!1375815))

(assert (= (and d!393350 (not res!619897)) b!1375821))

(assert (= (and b!1375821 res!619899) b!1375822))

(assert (= (and b!1375822 res!619895) b!1375818))

(assert (= (and b!1375818 res!619893) b!1375814))

(assert (= (and b!1375814 res!619896) b!1375819))

(assert (= (and b!1375819 res!619894) b!1375817))

(declare-fun m!1548449 () Bool)

(assert (=> b!1375819 m!1548449))

(declare-fun m!1548451 () Bool)

(assert (=> b!1375819 m!1548451))

(assert (=> b!1375819 m!1548451))

(declare-fun m!1548453 () Bool)

(assert (=> b!1375819 m!1548453))

(declare-fun m!1548455 () Bool)

(assert (=> d!393350 m!1548455))

(declare-fun m!1548457 () Bool)

(assert (=> d!393350 m!1548457))

(declare-fun m!1548459 () Bool)

(assert (=> d!393350 m!1548459))

(assert (=> d!393350 m!1546577))

(assert (=> b!1375817 m!1548449))

(declare-fun m!1548461 () Bool)

(assert (=> b!1375817 m!1548461))

(declare-fun m!1548463 () Bool)

(assert (=> b!1375815 m!1548463))

(assert (=> b!1375815 m!1544933))

(assert (=> b!1375815 m!1548463))

(assert (=> b!1375815 m!1544933))

(declare-fun m!1548465 () Bool)

(assert (=> b!1375815 m!1548465))

(declare-fun m!1548467 () Bool)

(assert (=> b!1375815 m!1548467))

(assert (=> b!1375818 m!1548449))

(declare-fun m!1548469 () Bool)

(assert (=> b!1375818 m!1548469))

(assert (=> b!1375818 m!1544933))

(assert (=> b!1375821 m!1548449))

(declare-fun m!1548471 () Bool)

(assert (=> b!1375821 m!1548471))

(assert (=> b!1375821 m!1548471))

(declare-fun m!1548473 () Bool)

(assert (=> b!1375821 m!1548473))

(assert (=> b!1375821 m!1548473))

(declare-fun m!1548475 () Bool)

(assert (=> b!1375821 m!1548475))

(assert (=> b!1375820 m!1548463))

(assert (=> b!1375820 m!1544933))

(assert (=> b!1375820 m!1548465))

(declare-fun m!1548477 () Bool)

(assert (=> b!1375820 m!1548477))

(declare-fun m!1548479 () Bool)

(assert (=> b!1375820 m!1548479))

(assert (=> b!1375820 m!1548477))

(assert (=> b!1375820 m!1548463))

(assert (=> b!1375820 m!1548477))

(declare-fun m!1548481 () Bool)

(assert (=> b!1375820 m!1548481))

(assert (=> b!1375820 m!1548477))

(declare-fun m!1548483 () Bool)

(assert (=> b!1375820 m!1548483))

(declare-fun m!1548485 () Bool)

(assert (=> b!1375820 m!1548485))

(declare-fun m!1548487 () Bool)

(assert (=> b!1375820 m!1548487))

(assert (=> b!1375820 m!1544933))

(assert (=> b!1375814 m!1548449))

(assert (=> b!1375822 m!1548449))

(assert (=> b!1375822 m!1548471))

(assert (=> b!1375822 m!1548471))

(assert (=> b!1375822 m!1548473))

(assert (=> b!1375822 m!1548473))

(declare-fun m!1548489 () Bool)

(assert (=> b!1375822 m!1548489))

(assert (=> bm!92216 d!393350))

(declare-fun d!393352 () Bool)

(declare-fun lt!457144 () Bool)

(assert (=> d!393352 (= lt!457144 (isEmpty!8392 (list!5362 (_2!7640 lt!456215))))))

(assert (=> d!393352 (= lt!457144 (isEmpty!8395 (c!226060 (_2!7640 lt!456215))))))

(assert (=> d!393352 (= (isEmpty!8389 (_2!7640 lt!456215)) lt!457144)))

(declare-fun bs!336292 () Bool)

(assert (= bs!336292 d!393352))

(declare-fun m!1548491 () Bool)

(assert (=> bs!336292 m!1548491))

(assert (=> bs!336292 m!1548491))

(declare-fun m!1548493 () Bool)

(assert (=> bs!336292 m!1548493))

(declare-fun m!1548495 () Bool)

(assert (=> bs!336292 m!1548495))

(assert (=> b!1373720 d!393352))

(declare-fun lt!457145 () Bool)

(declare-fun d!393354 () Bool)

(assert (=> d!393354 (= lt!457145 (select (content!2039 (t!121643 (map!3071 rules!2550 lambda!58378))) lt!456134))))

(declare-fun e!879223 () Bool)

(assert (=> d!393354 (= lt!457145 e!879223)))

(declare-fun res!619900 () Bool)

(assert (=> d!393354 (=> (not res!619900) (not e!879223))))

(assert (=> d!393354 (= res!619900 ((_ is Cons!13906) (t!121643 (map!3071 rules!2550 lambda!58378))))))

(assert (=> d!393354 (= (contains!2609 (t!121643 (map!3071 rules!2550 lambda!58378)) lt!456134) lt!457145)))

(declare-fun b!1375823 () Bool)

(declare-fun e!879224 () Bool)

(assert (=> b!1375823 (= e!879223 e!879224)))

(declare-fun res!619901 () Bool)

(assert (=> b!1375823 (=> res!619901 e!879224)))

(assert (=> b!1375823 (= res!619901 (= (h!19307 (t!121643 (map!3071 rules!2550 lambda!58378))) lt!456134))))

(declare-fun b!1375824 () Bool)

(assert (=> b!1375824 (= e!879224 (contains!2609 (t!121643 (t!121643 (map!3071 rules!2550 lambda!58378))) lt!456134))))

(assert (= (and d!393354 res!619900) b!1375823))

(assert (= (and b!1375823 (not res!619901)) b!1375824))

(assert (=> d!393354 m!1547113))

(declare-fun m!1548497 () Bool)

(assert (=> d!393354 m!1548497))

(declare-fun m!1548499 () Bool)

(assert (=> b!1375824 m!1548499))

(assert (=> b!1374030 d!393354))

(declare-fun b!1375825 () Bool)

(declare-fun res!619904 () Bool)

(declare-fun e!879229 () Bool)

(assert (=> b!1375825 (=> (not res!619904) (not e!879229))))

(declare-fun call!92344 () Bool)

(assert (=> b!1375825 (= res!619904 (not call!92344))))

(declare-fun b!1375826 () Bool)

(declare-fun e!879228 () Bool)

(assert (=> b!1375826 (= e!879228 (not (= (head!2475 (tail!1987 lt!456128)) (c!226061 (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128))))))))

(declare-fun b!1375827 () Bool)

(declare-fun e!879225 () Bool)

(declare-fun lt!457146 () Bool)

(assert (=> b!1375827 (= e!879225 (not lt!457146))))

(declare-fun b!1375828 () Bool)

(declare-fun res!619907 () Bool)

(assert (=> b!1375828 (=> res!619907 e!879228)))

(assert (=> b!1375828 (= res!619907 (not (isEmpty!8392 (tail!1987 (tail!1987 lt!456128)))))))

(declare-fun b!1375829 () Bool)

(declare-fun e!879227 () Bool)

(assert (=> b!1375829 (= e!879227 (nullable!1201 (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128))))))

(declare-fun b!1375830 () Bool)

(assert (=> b!1375830 (= e!879227 (matchR!1714 (derivativeStep!958 (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128)) (head!2475 (tail!1987 lt!456128))) (tail!1987 (tail!1987 lt!456128))))))

(declare-fun b!1375831 () Bool)

(declare-fun e!879231 () Bool)

(assert (=> b!1375831 (= e!879231 e!879225)))

(declare-fun c!226610 () Bool)

(assert (=> b!1375831 (= c!226610 ((_ is EmptyLang!3721) (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128))))))

(declare-fun b!1375832 () Bool)

(assert (=> b!1375832 (= e!879231 (= lt!457146 call!92344))))

(declare-fun bm!92339 () Bool)

(assert (=> bm!92339 (= call!92344 (isEmpty!8392 (tail!1987 lt!456128)))))

(declare-fun b!1375833 () Bool)

(assert (=> b!1375833 (= e!879229 (= (head!2475 (tail!1987 lt!456128)) (c!226061 (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128)))))))

(declare-fun b!1375834 () Bool)

(declare-fun res!619908 () Bool)

(assert (=> b!1375834 (=> (not res!619908) (not e!879229))))

(assert (=> b!1375834 (= res!619908 (isEmpty!8392 (tail!1987 (tail!1987 lt!456128))))))

(declare-fun b!1375835 () Bool)

(declare-fun res!619909 () Bool)

(declare-fun e!879226 () Bool)

(assert (=> b!1375835 (=> res!619909 e!879226)))

(assert (=> b!1375835 (= res!619909 e!879229)))

(declare-fun res!619902 () Bool)

(assert (=> b!1375835 (=> (not res!619902) (not e!879229))))

(assert (=> b!1375835 (= res!619902 lt!457146)))

(declare-fun d!393356 () Bool)

(assert (=> d!393356 e!879231))

(declare-fun c!226611 () Bool)

(assert (=> d!393356 (= c!226611 ((_ is EmptyExpr!3721) (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128))))))

(assert (=> d!393356 (= lt!457146 e!879227)))

(declare-fun c!226612 () Bool)

(assert (=> d!393356 (= c!226612 (isEmpty!8392 (tail!1987 lt!456128)))))

(assert (=> d!393356 (validRegex!1621 (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128)))))

(assert (=> d!393356 (= (matchR!1714 (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128)) (tail!1987 lt!456128)) lt!457146)))

(declare-fun b!1375836 () Bool)

(declare-fun res!619905 () Bool)

(assert (=> b!1375836 (=> res!619905 e!879226)))

(assert (=> b!1375836 (= res!619905 (not ((_ is ElementMatch!3721) (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128)))))))

(assert (=> b!1375836 (= e!879225 e!879226)))

(declare-fun b!1375837 () Bool)

(declare-fun e!879230 () Bool)

(assert (=> b!1375837 (= e!879226 e!879230)))

(declare-fun res!619906 () Bool)

(assert (=> b!1375837 (=> (not res!619906) (not e!879230))))

(assert (=> b!1375837 (= res!619906 (not lt!457146))))

(declare-fun b!1375838 () Bool)

(assert (=> b!1375838 (= e!879230 e!879228)))

(declare-fun res!619903 () Bool)

(assert (=> b!1375838 (=> res!619903 e!879228)))

(assert (=> b!1375838 (= res!619903 call!92344)))

(assert (= (and d!393356 c!226612) b!1375829))

(assert (= (and d!393356 (not c!226612)) b!1375830))

(assert (= (and d!393356 c!226611) b!1375832))

(assert (= (and d!393356 (not c!226611)) b!1375831))

(assert (= (and b!1375831 c!226610) b!1375827))

(assert (= (and b!1375831 (not c!226610)) b!1375836))

(assert (= (and b!1375836 (not res!619905)) b!1375835))

(assert (= (and b!1375835 res!619902) b!1375825))

(assert (= (and b!1375825 res!619904) b!1375834))

(assert (= (and b!1375834 res!619908) b!1375833))

(assert (= (and b!1375835 (not res!619909)) b!1375837))

(assert (= (and b!1375837 res!619906) b!1375838))

(assert (= (and b!1375838 (not res!619903)) b!1375828))

(assert (= (and b!1375828 (not res!619907)) b!1375826))

(assert (= (or b!1375832 b!1375825 b!1375838) bm!92339))

(assert (=> d!393356 m!1545767))

(assert (=> d!393356 m!1545769))

(assert (=> d!393356 m!1545775))

(declare-fun m!1548501 () Bool)

(assert (=> d!393356 m!1548501))

(assert (=> b!1375828 m!1545767))

(declare-fun m!1548503 () Bool)

(assert (=> b!1375828 m!1548503))

(assert (=> b!1375828 m!1548503))

(declare-fun m!1548505 () Bool)

(assert (=> b!1375828 m!1548505))

(assert (=> b!1375826 m!1545767))

(declare-fun m!1548507 () Bool)

(assert (=> b!1375826 m!1548507))

(assert (=> b!1375834 m!1545767))

(assert (=> b!1375834 m!1548503))

(assert (=> b!1375834 m!1548503))

(assert (=> b!1375834 m!1548505))

(assert (=> b!1375833 m!1545767))

(assert (=> b!1375833 m!1548507))

(assert (=> b!1375829 m!1545775))

(declare-fun m!1548509 () Bool)

(assert (=> b!1375829 m!1548509))

(assert (=> b!1375830 m!1545767))

(assert (=> b!1375830 m!1548507))

(assert (=> b!1375830 m!1545775))

(assert (=> b!1375830 m!1548507))

(declare-fun m!1548511 () Bool)

(assert (=> b!1375830 m!1548511))

(assert (=> b!1375830 m!1545767))

(assert (=> b!1375830 m!1548503))

(assert (=> b!1375830 m!1548511))

(assert (=> b!1375830 m!1548503))

(declare-fun m!1548513 () Bool)

(assert (=> b!1375830 m!1548513))

(assert (=> bm!92339 m!1545767))

(assert (=> bm!92339 m!1545769))

(assert (=> b!1374137 d!393356))

(declare-fun d!393358 () Bool)

(declare-fun lt!457147 () Regex!3721)

(assert (=> d!393358 (validRegex!1621 lt!457147)))

(declare-fun e!879236 () Regex!3721)

(assert (=> d!393358 (= lt!457147 e!879236)))

(declare-fun c!226615 () Bool)

(assert (=> d!393358 (= c!226615 (or ((_ is EmptyExpr!3721) (regex!2407 (rule!4164 t1!34))) ((_ is EmptyLang!3721) (regex!2407 (rule!4164 t1!34)))))))

(assert (=> d!393358 (validRegex!1621 (regex!2407 (rule!4164 t1!34)))))

(assert (=> d!393358 (= (derivativeStep!958 (regex!2407 (rule!4164 t1!34)) (head!2475 lt!456128)) lt!457147)))

(declare-fun bm!92340 () Bool)

(declare-fun call!92346 () Regex!3721)

(declare-fun call!92348 () Regex!3721)

(assert (=> bm!92340 (= call!92346 call!92348)))

(declare-fun b!1375839 () Bool)

(assert (=> b!1375839 (= e!879236 EmptyLang!3721)))

(declare-fun b!1375840 () Bool)

(declare-fun e!879235 () Regex!3721)

(assert (=> b!1375840 (= e!879235 (Concat!6219 call!92346 (regex!2407 (rule!4164 t1!34))))))

(declare-fun b!1375841 () Bool)

(declare-fun e!879232 () Regex!3721)

(declare-fun call!92347 () Regex!3721)

(assert (=> b!1375841 (= e!879232 (Union!3721 call!92347 call!92348))))

(declare-fun b!1375842 () Bool)

(declare-fun e!879233 () Regex!3721)

(assert (=> b!1375842 (= e!879236 e!879233)))

(declare-fun c!226614 () Bool)

(assert (=> b!1375842 (= c!226614 ((_ is ElementMatch!3721) (regex!2407 (rule!4164 t1!34))))))

(declare-fun b!1375843 () Bool)

(declare-fun e!879234 () Regex!3721)

(declare-fun call!92345 () Regex!3721)

(assert (=> b!1375843 (= e!879234 (Union!3721 (Concat!6219 call!92346 (regTwo!7954 (regex!2407 (rule!4164 t1!34)))) call!92345))))

(declare-fun b!1375844 () Bool)

(declare-fun c!226613 () Bool)

(assert (=> b!1375844 (= c!226613 ((_ is Union!3721) (regex!2407 (rule!4164 t1!34))))))

(assert (=> b!1375844 (= e!879233 e!879232)))

(declare-fun c!226616 () Bool)

(declare-fun bm!92341 () Bool)

(assert (=> bm!92341 (= call!92347 (derivativeStep!958 (ite c!226613 (regOne!7955 (regex!2407 (rule!4164 t1!34))) (ite c!226616 (regTwo!7954 (regex!2407 (rule!4164 t1!34))) (regOne!7954 (regex!2407 (rule!4164 t1!34))))) (head!2475 lt!456128)))))

(declare-fun bm!92342 () Bool)

(assert (=> bm!92342 (= call!92345 call!92347)))

(declare-fun b!1375845 () Bool)

(assert (=> b!1375845 (= e!879234 (Union!3721 (Concat!6219 call!92345 (regTwo!7954 (regex!2407 (rule!4164 t1!34)))) EmptyLang!3721))))

(declare-fun bm!92343 () Bool)

(declare-fun c!226617 () Bool)

(assert (=> bm!92343 (= call!92348 (derivativeStep!958 (ite c!226613 (regTwo!7955 (regex!2407 (rule!4164 t1!34))) (ite c!226617 (reg!4050 (regex!2407 (rule!4164 t1!34))) (regOne!7954 (regex!2407 (rule!4164 t1!34))))) (head!2475 lt!456128)))))

(declare-fun b!1375846 () Bool)

(assert (=> b!1375846 (= e!879232 e!879235)))

(assert (=> b!1375846 (= c!226617 ((_ is Star!3721) (regex!2407 (rule!4164 t1!34))))))

(declare-fun b!1375847 () Bool)

(assert (=> b!1375847 (= e!879233 (ite (= (head!2475 lt!456128) (c!226061 (regex!2407 (rule!4164 t1!34)))) EmptyExpr!3721 EmptyLang!3721))))

(declare-fun b!1375848 () Bool)

(assert (=> b!1375848 (= c!226616 (nullable!1201 (regOne!7954 (regex!2407 (rule!4164 t1!34)))))))

(assert (=> b!1375848 (= e!879235 e!879234)))

(assert (= (and d!393358 c!226615) b!1375839))

(assert (= (and d!393358 (not c!226615)) b!1375842))

(assert (= (and b!1375842 c!226614) b!1375847))

(assert (= (and b!1375842 (not c!226614)) b!1375844))

(assert (= (and b!1375844 c!226613) b!1375841))

(assert (= (and b!1375844 (not c!226613)) b!1375846))

(assert (= (and b!1375846 c!226617) b!1375840))

(assert (= (and b!1375846 (not c!226617)) b!1375848))

(assert (= (and b!1375848 c!226616) b!1375843))

(assert (= (and b!1375848 (not c!226616)) b!1375845))

(assert (= (or b!1375843 b!1375845) bm!92342))

(assert (= (or b!1375840 b!1375843) bm!92340))

(assert (= (or b!1375841 bm!92342) bm!92341))

(assert (= (or b!1375841 bm!92340) bm!92343))

(declare-fun m!1548515 () Bool)

(assert (=> d!393358 m!1548515))

(assert (=> d!393358 m!1545765))

(assert (=> bm!92341 m!1545771))

(declare-fun m!1548517 () Bool)

(assert (=> bm!92341 m!1548517))

(assert (=> bm!92343 m!1545771))

(declare-fun m!1548519 () Bool)

(assert (=> bm!92343 m!1548519))

(declare-fun m!1548521 () Bool)

(assert (=> b!1375848 m!1548521))

(assert (=> b!1374137 d!393358))

(assert (=> b!1374137 d!393330))

(assert (=> b!1374137 d!392588))

(declare-fun d!393360 () Bool)

(assert (=> d!393360 (= (list!5362 lt!456391) (list!5366 (c!226060 lt!456391)))))

(declare-fun bs!336293 () Bool)

(assert (= bs!336293 d!393360))

(declare-fun m!1548523 () Bool)

(assert (=> bs!336293 m!1548523))

(assert (=> d!392430 d!393360))

(declare-fun b!1375849 () Bool)

(declare-fun res!619913 () Bool)

(declare-fun e!879239 () Bool)

(assert (=> b!1375849 (=> (not res!619913) (not e!879239))))

(declare-fun lt!457151 () Option!2672)

(assert (=> b!1375849 (= res!619913 (= (rule!4164 (_1!7641 (get!4350 lt!457151))) (h!19306 rules!2550)))))

(declare-fun d!393362 () Bool)

(declare-fun e!879240 () Bool)

(assert (=> d!393362 e!879240))

(declare-fun res!619914 () Bool)

(assert (=> d!393362 (=> res!619914 e!879240)))

(assert (=> d!393362 (= res!619914 (isEmpty!8399 lt!457151))))

(declare-fun e!879237 () Option!2672)

(assert (=> d!393362 (= lt!457151 e!879237)))

(declare-fun c!226618 () Bool)

(declare-fun lt!457149 () tuple2!13518)

(assert (=> d!393362 (= c!226618 (isEmpty!8392 (_1!7645 lt!457149)))))

(assert (=> d!393362 (= lt!457149 (findLongestMatch!240 (regex!2407 (h!19306 rules!2550)) lt!456133))))

(assert (=> d!393362 (ruleValid!594 thiss!19762 (h!19306 rules!2550))))

(assert (=> d!393362 (= (maxPrefixOneRule!619 thiss!19762 (h!19306 rules!2550) lt!456133) lt!457151)))

(declare-fun b!1375850 () Bool)

(declare-fun e!879238 () Bool)

(assert (=> b!1375850 (= e!879238 (matchR!1714 (regex!2407 (h!19306 rules!2550)) (_1!7645 (findLongestMatchInner!284 (regex!2407 (h!19306 rules!2550)) Nil!13903 (size!11415 Nil!13903) lt!456133 lt!456133 (size!11415 lt!456133)))))))

(declare-fun b!1375851 () Bool)

(assert (=> b!1375851 (= e!879237 None!2671)))

(declare-fun b!1375852 () Bool)

(assert (=> b!1375852 (= e!879239 (= (size!11409 (_1!7641 (get!4350 lt!457151))) (size!11415 (originalCharacters!3269 (_1!7641 (get!4350 lt!457151))))))))

(declare-fun b!1375853 () Bool)

(declare-fun res!619910 () Bool)

(assert (=> b!1375853 (=> (not res!619910) (not e!879239))))

(assert (=> b!1375853 (= res!619910 (< (size!11415 (_2!7641 (get!4350 lt!457151))) (size!11415 lt!456133)))))

(declare-fun b!1375854 () Bool)

(declare-fun res!619911 () Bool)

(assert (=> b!1375854 (=> (not res!619911) (not e!879239))))

(assert (=> b!1375854 (= res!619911 (= (value!78232 (_1!7641 (get!4350 lt!457151))) (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!457151)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!457151)))))))))

(declare-fun b!1375855 () Bool)

(assert (=> b!1375855 (= e!879237 (Some!2671 (tuple2!13511 (Token!4477 (apply!3431 (transformation!2407 (h!19306 rules!2550)) (seqFromList!1637 (_1!7645 lt!457149))) (h!19306 rules!2550) (size!11410 (seqFromList!1637 (_1!7645 lt!457149))) (_1!7645 lt!457149)) (_2!7645 lt!457149))))))

(declare-fun lt!457148 () Unit!20133)

(assert (=> b!1375855 (= lt!457148 (longestMatchIsAcceptedByMatchOrIsEmpty!268 (regex!2407 (h!19306 rules!2550)) lt!456133))))

(declare-fun res!619915 () Bool)

(assert (=> b!1375855 (= res!619915 (isEmpty!8392 (_1!7645 (findLongestMatchInner!284 (regex!2407 (h!19306 rules!2550)) Nil!13903 (size!11415 Nil!13903) lt!456133 lt!456133 (size!11415 lt!456133)))))))

(assert (=> b!1375855 (=> res!619915 e!879238)))

(assert (=> b!1375855 e!879238))

(declare-fun lt!457150 () Unit!20133)

(assert (=> b!1375855 (= lt!457150 lt!457148)))

(declare-fun lt!457152 () Unit!20133)

(assert (=> b!1375855 (= lt!457152 (lemmaSemiInverse!338 (transformation!2407 (h!19306 rules!2550)) (seqFromList!1637 (_1!7645 lt!457149))))))

(declare-fun b!1375856 () Bool)

(assert (=> b!1375856 (= e!879240 e!879239)))

(declare-fun res!619916 () Bool)

(assert (=> b!1375856 (=> (not res!619916) (not e!879239))))

(assert (=> b!1375856 (= res!619916 (matchR!1714 (regex!2407 (h!19306 rules!2550)) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457151))))))))

(declare-fun b!1375857 () Bool)

(declare-fun res!619912 () Bool)

(assert (=> b!1375857 (=> (not res!619912) (not e!879239))))

(assert (=> b!1375857 (= res!619912 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457151)))) (_2!7641 (get!4350 lt!457151))) lt!456133))))

(assert (= (and d!393362 c!226618) b!1375851))

(assert (= (and d!393362 (not c!226618)) b!1375855))

(assert (= (and b!1375855 (not res!619915)) b!1375850))

(assert (= (and d!393362 (not res!619914)) b!1375856))

(assert (= (and b!1375856 res!619916) b!1375857))

(assert (= (and b!1375857 res!619912) b!1375853))

(assert (= (and b!1375853 res!619910) b!1375849))

(assert (= (and b!1375849 res!619913) b!1375854))

(assert (= (and b!1375854 res!619911) b!1375852))

(declare-fun m!1548525 () Bool)

(assert (=> b!1375854 m!1548525))

(declare-fun m!1548527 () Bool)

(assert (=> b!1375854 m!1548527))

(assert (=> b!1375854 m!1548527))

(declare-fun m!1548529 () Bool)

(assert (=> b!1375854 m!1548529))

(declare-fun m!1548531 () Bool)

(assert (=> d!393362 m!1548531))

(declare-fun m!1548533 () Bool)

(assert (=> d!393362 m!1548533))

(declare-fun m!1548535 () Bool)

(assert (=> d!393362 m!1548535))

(assert (=> d!393362 m!1546577))

(assert (=> b!1375852 m!1548525))

(declare-fun m!1548537 () Bool)

(assert (=> b!1375852 m!1548537))

(assert (=> b!1375850 m!1548463))

(assert (=> b!1375850 m!1545901))

(assert (=> b!1375850 m!1548463))

(assert (=> b!1375850 m!1545901))

(declare-fun m!1548539 () Bool)

(assert (=> b!1375850 m!1548539))

(declare-fun m!1548541 () Bool)

(assert (=> b!1375850 m!1548541))

(assert (=> b!1375853 m!1548525))

(declare-fun m!1548543 () Bool)

(assert (=> b!1375853 m!1548543))

(assert (=> b!1375853 m!1545901))

(assert (=> b!1375856 m!1548525))

(declare-fun m!1548545 () Bool)

(assert (=> b!1375856 m!1548545))

(assert (=> b!1375856 m!1548545))

(declare-fun m!1548547 () Bool)

(assert (=> b!1375856 m!1548547))

(assert (=> b!1375856 m!1548547))

(declare-fun m!1548549 () Bool)

(assert (=> b!1375856 m!1548549))

(assert (=> b!1375855 m!1548463))

(assert (=> b!1375855 m!1545901))

(assert (=> b!1375855 m!1548539))

(declare-fun m!1548551 () Bool)

(assert (=> b!1375855 m!1548551))

(declare-fun m!1548553 () Bool)

(assert (=> b!1375855 m!1548553))

(assert (=> b!1375855 m!1548551))

(assert (=> b!1375855 m!1548463))

(assert (=> b!1375855 m!1548551))

(declare-fun m!1548555 () Bool)

(assert (=> b!1375855 m!1548555))

(assert (=> b!1375855 m!1548551))

(declare-fun m!1548557 () Bool)

(assert (=> b!1375855 m!1548557))

(declare-fun m!1548559 () Bool)

(assert (=> b!1375855 m!1548559))

(declare-fun m!1548561 () Bool)

(assert (=> b!1375855 m!1548561))

(assert (=> b!1375855 m!1545901))

(assert (=> b!1375849 m!1548525))

(assert (=> b!1375857 m!1548525))

(assert (=> b!1375857 m!1548545))

(assert (=> b!1375857 m!1548545))

(assert (=> b!1375857 m!1548547))

(assert (=> b!1375857 m!1548547))

(declare-fun m!1548563 () Bool)

(assert (=> b!1375857 m!1548563))

(assert (=> bm!92218 d!393362))

(declare-fun b!1375860 () Bool)

(declare-fun res!619918 () Bool)

(declare-fun e!879241 () Bool)

(assert (=> b!1375860 (=> (not res!619918) (not e!879241))))

(declare-fun lt!457153 () List!13969)

(assert (=> b!1375860 (= res!619918 (= (size!11415 lt!457153) (+ (size!11415 (t!121640 lt!456128)) (size!11415 (Cons!13903 lt!456136 Nil!13903)))))))

(declare-fun b!1375861 () Bool)

(assert (=> b!1375861 (= e!879241 (or (not (= (Cons!13903 lt!456136 Nil!13903) Nil!13903)) (= lt!457153 (t!121640 lt!456128))))))

(declare-fun d!393364 () Bool)

(assert (=> d!393364 e!879241))

(declare-fun res!619917 () Bool)

(assert (=> d!393364 (=> (not res!619917) (not e!879241))))

(assert (=> d!393364 (= res!619917 (= (content!2037 lt!457153) ((_ map or) (content!2037 (t!121640 lt!456128)) (content!2037 (Cons!13903 lt!456136 Nil!13903)))))))

(declare-fun e!879242 () List!13969)

(assert (=> d!393364 (= lt!457153 e!879242)))

(declare-fun c!226619 () Bool)

(assert (=> d!393364 (= c!226619 ((_ is Nil!13903) (t!121640 lt!456128)))))

(assert (=> d!393364 (= (++!3598 (t!121640 lt!456128) (Cons!13903 lt!456136 Nil!13903)) lt!457153)))

(declare-fun b!1375859 () Bool)

(assert (=> b!1375859 (= e!879242 (Cons!13903 (h!19304 (t!121640 lt!456128)) (++!3598 (t!121640 (t!121640 lt!456128)) (Cons!13903 lt!456136 Nil!13903))))))

(declare-fun b!1375858 () Bool)

(assert (=> b!1375858 (= e!879242 (Cons!13903 lt!456136 Nil!13903))))

(assert (= (and d!393364 c!226619) b!1375858))

(assert (= (and d!393364 (not c!226619)) b!1375859))

(assert (= (and d!393364 res!619917) b!1375860))

(assert (= (and b!1375860 res!619918) b!1375861))

(declare-fun m!1548565 () Bool)

(assert (=> b!1375860 m!1548565))

(assert (=> b!1375860 m!1547227))

(assert (=> b!1375860 m!1544935))

(declare-fun m!1548567 () Bool)

(assert (=> d!393364 m!1548567))

(declare-fun m!1548569 () Bool)

(assert (=> d!393364 m!1548569))

(assert (=> d!393364 m!1544941))

(declare-fun m!1548571 () Bool)

(assert (=> b!1375859 m!1548571))

(assert (=> b!1373505 d!393364))

(declare-fun b!1375862 () Bool)

(declare-fun res!619925 () Bool)

(declare-fun e!879243 () Bool)

(assert (=> b!1375862 (=> (not res!619925) (not e!879243))))

(declare-fun lt!457158 () Option!2672)

(assert (=> b!1375862 (= res!619925 (= (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457158)))) (originalCharacters!3269 (_1!7641 (get!4350 lt!457158)))))))

(declare-fun b!1375863 () Bool)

(assert (=> b!1375863 (= e!879243 (contains!2608 (t!121642 rules!2550) (rule!4164 (_1!7641 (get!4350 lt!457158)))))))

(declare-fun b!1375864 () Bool)

(declare-fun res!619922 () Bool)

(assert (=> b!1375864 (=> (not res!619922) (not e!879243))))

(assert (=> b!1375864 (= res!619922 (matchR!1714 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!457158)))) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457158))))))))

(declare-fun b!1375865 () Bool)

(declare-fun e!879245 () Option!2672)

(declare-fun lt!457154 () Option!2672)

(declare-fun lt!457156 () Option!2672)

(assert (=> b!1375865 (= e!879245 (ite (and ((_ is None!2671) lt!457154) ((_ is None!2671) lt!457156)) None!2671 (ite ((_ is None!2671) lt!457156) lt!457154 (ite ((_ is None!2671) lt!457154) lt!457156 (ite (>= (size!11409 (_1!7641 (v!21488 lt!457154))) (size!11409 (_1!7641 (v!21488 lt!457156)))) lt!457154 lt!457156)))))))

(declare-fun call!92349 () Option!2672)

(assert (=> b!1375865 (= lt!457154 call!92349)))

(assert (=> b!1375865 (= lt!457156 (maxPrefix!1084 thiss!19762 (t!121642 (t!121642 rules!2550)) lt!456128))))

(declare-fun b!1375866 () Bool)

(assert (=> b!1375866 (= e!879245 call!92349)))

(declare-fun b!1375868 () Bool)

(declare-fun res!619921 () Bool)

(assert (=> b!1375868 (=> (not res!619921) (not e!879243))))

(assert (=> b!1375868 (= res!619921 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457158)))) (_2!7641 (get!4350 lt!457158))) lt!456128))))

(declare-fun bm!92344 () Bool)

(assert (=> bm!92344 (= call!92349 (maxPrefixOneRule!619 thiss!19762 (h!19306 (t!121642 rules!2550)) lt!456128))))

(declare-fun b!1375869 () Bool)

(declare-fun res!619919 () Bool)

(assert (=> b!1375869 (=> (not res!619919) (not e!879243))))

(assert (=> b!1375869 (= res!619919 (= (value!78232 (_1!7641 (get!4350 lt!457158))) (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!457158)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!457158)))))))))

(declare-fun b!1375870 () Bool)

(declare-fun e!879244 () Bool)

(assert (=> b!1375870 (= e!879244 e!879243)))

(declare-fun res!619923 () Bool)

(assert (=> b!1375870 (=> (not res!619923) (not e!879243))))

(assert (=> b!1375870 (= res!619923 (isDefined!2221 lt!457158))))

(declare-fun b!1375867 () Bool)

(declare-fun res!619920 () Bool)

(assert (=> b!1375867 (=> (not res!619920) (not e!879243))))

(assert (=> b!1375867 (= res!619920 (< (size!11415 (_2!7641 (get!4350 lt!457158))) (size!11415 lt!456128)))))

(declare-fun d!393366 () Bool)

(assert (=> d!393366 e!879244))

(declare-fun res!619924 () Bool)

(assert (=> d!393366 (=> res!619924 e!879244)))

(assert (=> d!393366 (= res!619924 (isEmpty!8399 lt!457158))))

(assert (=> d!393366 (= lt!457158 e!879245)))

(declare-fun c!226620 () Bool)

(assert (=> d!393366 (= c!226620 (and ((_ is Cons!13905) (t!121642 rules!2550)) ((_ is Nil!13905) (t!121642 (t!121642 rules!2550)))))))

(declare-fun lt!457155 () Unit!20133)

(declare-fun lt!457157 () Unit!20133)

(assert (=> d!393366 (= lt!457155 lt!457157)))

(assert (=> d!393366 (isPrefix!1131 lt!456128 lt!456128)))

(assert (=> d!393366 (= lt!457157 (lemmaIsPrefixRefl!793 lt!456128 lt!456128))))

(assert (=> d!393366 (rulesValidInductive!772 thiss!19762 (t!121642 rules!2550))))

(assert (=> d!393366 (= (maxPrefix!1084 thiss!19762 (t!121642 rules!2550) lt!456128) lt!457158)))

(assert (= (and d!393366 c!226620) b!1375866))

(assert (= (and d!393366 (not c!226620)) b!1375865))

(assert (= (or b!1375866 b!1375865) bm!92344))

(assert (= (and d!393366 (not res!619924)) b!1375870))

(assert (= (and b!1375870 res!619923) b!1375862))

(assert (= (and b!1375862 res!619925) b!1375867))

(assert (= (and b!1375867 res!619920) b!1375868))

(assert (= (and b!1375868 res!619921) b!1375869))

(assert (= (and b!1375869 res!619919) b!1375864))

(assert (= (and b!1375864 res!619922) b!1375863))

(declare-fun m!1548573 () Bool)

(assert (=> b!1375863 m!1548573))

(declare-fun m!1548575 () Bool)

(assert (=> b!1375863 m!1548575))

(assert (=> b!1375868 m!1548573))

(declare-fun m!1548577 () Bool)

(assert (=> b!1375868 m!1548577))

(assert (=> b!1375868 m!1548577))

(declare-fun m!1548579 () Bool)

(assert (=> b!1375868 m!1548579))

(assert (=> b!1375868 m!1548579))

(declare-fun m!1548581 () Bool)

(assert (=> b!1375868 m!1548581))

(declare-fun m!1548583 () Bool)

(assert (=> bm!92344 m!1548583))

(assert (=> b!1375864 m!1548573))

(assert (=> b!1375864 m!1548577))

(assert (=> b!1375864 m!1548577))

(assert (=> b!1375864 m!1548579))

(assert (=> b!1375864 m!1548579))

(declare-fun m!1548585 () Bool)

(assert (=> b!1375864 m!1548585))

(assert (=> b!1375862 m!1548573))

(assert (=> b!1375862 m!1548577))

(assert (=> b!1375862 m!1548577))

(assert (=> b!1375862 m!1548579))

(declare-fun m!1548587 () Bool)

(assert (=> b!1375865 m!1548587))

(assert (=> b!1375869 m!1548573))

(declare-fun m!1548589 () Bool)

(assert (=> b!1375869 m!1548589))

(assert (=> b!1375869 m!1548589))

(declare-fun m!1548591 () Bool)

(assert (=> b!1375869 m!1548591))

(declare-fun m!1548593 () Bool)

(assert (=> b!1375870 m!1548593))

(declare-fun m!1548595 () Bool)

(assert (=> d!393366 m!1548595))

(assert (=> d!393366 m!1545755))

(assert (=> d!393366 m!1545757))

(assert (=> d!393366 m!1546579))

(assert (=> b!1375867 m!1548573))

(declare-fun m!1548597 () Bool)

(assert (=> b!1375867 m!1548597))

(assert (=> b!1375867 m!1544933))

(assert (=> b!1374126 d!393366))

(declare-fun d!393368 () Bool)

(declare-fun res!619926 () Bool)

(declare-fun e!879246 () Bool)

(assert (=> d!393368 (=> res!619926 e!879246)))

(assert (=> d!393368 (= res!619926 ((_ is Nil!13905) rules!2550))))

(assert (=> d!393368 (= (forall!3401 rules!2550 lambda!58419) e!879246)))

(declare-fun b!1375871 () Bool)

(declare-fun e!879247 () Bool)

(assert (=> b!1375871 (= e!879246 e!879247)))

(declare-fun res!619927 () Bool)

(assert (=> b!1375871 (=> (not res!619927) (not e!879247))))

(assert (=> b!1375871 (= res!619927 (dynLambda!6334 lambda!58419 (h!19306 rules!2550)))))

(declare-fun b!1375872 () Bool)

(assert (=> b!1375872 (= e!879247 (forall!3401 (t!121642 rules!2550) lambda!58419))))

(assert (= (and d!393368 (not res!619926)) b!1375871))

(assert (= (and b!1375871 res!619927) b!1375872))

(declare-fun b_lambda!42353 () Bool)

(assert (=> (not b_lambda!42353) (not b!1375871)))

(declare-fun m!1548599 () Bool)

(assert (=> b!1375871 m!1548599))

(declare-fun m!1548601 () Bool)

(assert (=> b!1375872 m!1548601))

(assert (=> d!392338 d!393368))

(declare-fun b!1375873 () Bool)

(declare-fun e!879248 () Regex!3721)

(assert (=> b!1375873 (= e!879248 (h!19307 (t!121643 (map!3071 rules!2550 lambda!58378))))))

(declare-fun d!393370 () Bool)

(declare-fun e!879250 () Bool)

(assert (=> d!393370 e!879250))

(declare-fun res!619928 () Bool)

(assert (=> d!393370 (=> (not res!619928) (not e!879250))))

(declare-fun lt!457160 () Regex!3721)

(assert (=> d!393370 (= res!619928 (dynLambda!6341 lambda!58379 lt!457160))))

(assert (=> d!393370 (= lt!457160 e!879248)))

(declare-fun c!226622 () Bool)

(declare-fun e!879251 () Bool)

(assert (=> d!393370 (= c!226622 e!879251)))

(declare-fun res!619929 () Bool)

(assert (=> d!393370 (=> (not res!619929) (not e!879251))))

(assert (=> d!393370 (= res!619929 ((_ is Cons!13906) (t!121643 (map!3071 rules!2550 lambda!58378))))))

(assert (=> d!393370 (exists!473 (t!121643 (map!3071 rules!2550 lambda!58378)) lambda!58379)))

(assert (=> d!393370 (= (getWitness!361 (t!121643 (map!3071 rules!2550 lambda!58378)) lambda!58379) lt!457160)))

(declare-fun b!1375874 () Bool)

(declare-fun e!879249 () Regex!3721)

(assert (=> b!1375874 (= e!879248 e!879249)))

(declare-fun c!226621 () Bool)

(assert (=> b!1375874 (= c!226621 ((_ is Cons!13906) (t!121643 (map!3071 rules!2550 lambda!58378))))))

(declare-fun b!1375875 () Bool)

(assert (=> b!1375875 (= e!879249 (getWitness!361 (t!121643 (t!121643 (map!3071 rules!2550 lambda!58378))) lambda!58379))))

(declare-fun b!1375876 () Bool)

(assert (=> b!1375876 (= e!879251 (dynLambda!6341 lambda!58379 (h!19307 (t!121643 (map!3071 rules!2550 lambda!58378)))))))

(declare-fun b!1375877 () Bool)

(declare-fun lt!457159 () Unit!20133)

(declare-fun Unit!20154 () Unit!20133)

(assert (=> b!1375877 (= lt!457159 Unit!20154)))

(assert (=> b!1375877 false))

(assert (=> b!1375877 (= e!879249 (head!2479 (t!121643 (map!3071 rules!2550 lambda!58378))))))

(declare-fun b!1375878 () Bool)

(assert (=> b!1375878 (= e!879250 (contains!2609 (t!121643 (map!3071 rules!2550 lambda!58378)) lt!457160))))

(assert (= (and d!393370 res!619929) b!1375876))

(assert (= (and d!393370 c!226622) b!1375873))

(assert (= (and d!393370 (not c!226622)) b!1375874))

(assert (= (and b!1375874 c!226621) b!1375875))

(assert (= (and b!1375874 (not c!226621)) b!1375877))

(assert (= (and d!393370 res!619928) b!1375878))

(declare-fun b_lambda!42355 () Bool)

(assert (=> (not b_lambda!42355) (not d!393370)))

(declare-fun b_lambda!42357 () Bool)

(assert (=> (not b_lambda!42357) (not b!1375876)))

(declare-fun m!1548603 () Bool)

(assert (=> b!1375875 m!1548603))

(declare-fun m!1548605 () Bool)

(assert (=> b!1375877 m!1548605))

(declare-fun m!1548607 () Bool)

(assert (=> d!393370 m!1548607))

(declare-fun m!1548609 () Bool)

(assert (=> d!393370 m!1548609))

(declare-fun m!1548611 () Bool)

(assert (=> b!1375878 m!1548611))

(declare-fun m!1548613 () Bool)

(assert (=> b!1375876 m!1548613))

(assert (=> b!1374084 d!393370))

(assert (=> b!1374133 d!393330))

(assert (=> d!392218 d!393314))

(declare-fun d!393372 () Bool)

(declare-fun lt!457161 () Token!4476)

(assert (=> d!393372 (= lt!457161 (apply!3432 (list!5363 (_1!7640 lt!456233)) 0))))

(assert (=> d!393372 (= lt!457161 (apply!3433 (c!226062 (_1!7640 lt!456233)) 0))))

(declare-fun e!879252 () Bool)

(assert (=> d!393372 e!879252))

(declare-fun res!619930 () Bool)

(assert (=> d!393372 (=> (not res!619930) (not e!879252))))

(assert (=> d!393372 (= res!619930 (<= 0 0))))

(assert (=> d!393372 (= (apply!3427 (_1!7640 lt!456233) 0) lt!457161)))

(declare-fun b!1375879 () Bool)

(assert (=> b!1375879 (= e!879252 (< 0 (size!11416 (_1!7640 lt!456233))))))

(assert (= (and d!393372 res!619930) b!1375879))

(assert (=> d!393372 m!1548427))

(assert (=> d!393372 m!1548427))

(declare-fun m!1548615 () Bool)

(assert (=> d!393372 m!1548615))

(declare-fun m!1548617 () Bool)

(assert (=> d!393372 m!1548617))

(assert (=> b!1375879 m!1545231))

(assert (=> b!1373755 d!393372))

(assert (=> d!392412 d!393108))

(declare-fun d!393374 () Bool)

(assert (=> d!393374 (= (isEmpty!8399 lt!456400) (not ((_ is Some!2671) lt!456400)))))

(assert (=> d!392438 d!393374))

(declare-fun d!393376 () Bool)

(declare-fun e!879255 () Bool)

(assert (=> d!393376 e!879255))

(declare-fun res!619932 () Bool)

(assert (=> d!393376 (=> res!619932 e!879255)))

(declare-fun lt!457162 () Bool)

(assert (=> d!393376 (= res!619932 (not lt!457162))))

(declare-fun e!879253 () Bool)

(assert (=> d!393376 (= lt!457162 e!879253)))

(declare-fun res!619933 () Bool)

(assert (=> d!393376 (=> res!619933 e!879253)))

(assert (=> d!393376 (= res!619933 ((_ is Nil!13903) lt!456133))))

(assert (=> d!393376 (= (isPrefix!1131 lt!456133 lt!456133) lt!457162)))

(declare-fun b!1375880 () Bool)

(declare-fun e!879254 () Bool)

(assert (=> b!1375880 (= e!879253 e!879254)))

(declare-fun res!619931 () Bool)

(assert (=> b!1375880 (=> (not res!619931) (not e!879254))))

(assert (=> b!1375880 (= res!619931 (not ((_ is Nil!13903) lt!456133)))))

(declare-fun b!1375883 () Bool)

(assert (=> b!1375883 (= e!879255 (>= (size!11415 lt!456133) (size!11415 lt!456133)))))

(declare-fun b!1375882 () Bool)

(assert (=> b!1375882 (= e!879254 (isPrefix!1131 (tail!1987 lt!456133) (tail!1987 lt!456133)))))

(declare-fun b!1375881 () Bool)

(declare-fun res!619934 () Bool)

(assert (=> b!1375881 (=> (not res!619934) (not e!879254))))

(assert (=> b!1375881 (= res!619934 (= (head!2475 lt!456133) (head!2475 lt!456133)))))

(assert (= (and d!393376 (not res!619933)) b!1375880))

(assert (= (and b!1375880 res!619931) b!1375881))

(assert (= (and b!1375881 res!619934) b!1375882))

(assert (= (and d!393376 (not res!619932)) b!1375883))

(assert (=> b!1375883 m!1545901))

(assert (=> b!1375883 m!1545901))

(assert (=> b!1375882 m!1545719))

(assert (=> b!1375882 m!1545719))

(assert (=> b!1375882 m!1545719))

(assert (=> b!1375882 m!1545719))

(declare-fun m!1548619 () Bool)

(assert (=> b!1375882 m!1548619))

(assert (=> b!1375881 m!1545723))

(assert (=> b!1375881 m!1545723))

(assert (=> d!392438 d!393376))

(declare-fun d!393378 () Bool)

(assert (=> d!393378 (isPrefix!1131 lt!456133 lt!456133)))

(declare-fun lt!457163 () Unit!20133)

(assert (=> d!393378 (= lt!457163 (choose!8462 lt!456133 lt!456133))))

(assert (=> d!393378 (= (lemmaIsPrefixRefl!793 lt!456133 lt!456133) lt!457163)))

(declare-fun bs!336294 () Bool)

(assert (= bs!336294 d!393378))

(assert (=> bs!336294 m!1545895))

(declare-fun m!1548621 () Bool)

(assert (=> bs!336294 m!1548621))

(assert (=> d!392438 d!393378))

(assert (=> d!392438 d!392746))

(declare-fun b!1375884 () Bool)

(declare-fun res!619941 () Bool)

(declare-fun e!879256 () Bool)

(assert (=> b!1375884 (=> (not res!619941) (not e!879256))))

(declare-fun lt!457168 () Option!2672)

(assert (=> b!1375884 (= res!619941 (= (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457168)))) (originalCharacters!3269 (_1!7641 (get!4350 lt!457168)))))))

(declare-fun b!1375885 () Bool)

(assert (=> b!1375885 (= e!879256 (contains!2608 (t!121642 rules!2550) (rule!4164 (_1!7641 (get!4350 lt!457168)))))))

(declare-fun b!1375886 () Bool)

(declare-fun res!619938 () Bool)

(assert (=> b!1375886 (=> (not res!619938) (not e!879256))))

(assert (=> b!1375886 (= res!619938 (matchR!1714 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!457168)))) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457168))))))))

(declare-fun b!1375887 () Bool)

(declare-fun e!879258 () Option!2672)

(declare-fun lt!457164 () Option!2672)

(declare-fun lt!457166 () Option!2672)

(assert (=> b!1375887 (= e!879258 (ite (and ((_ is None!2671) lt!457164) ((_ is None!2671) lt!457166)) None!2671 (ite ((_ is None!2671) lt!457166) lt!457164 (ite ((_ is None!2671) lt!457164) lt!457166 (ite (>= (size!11409 (_1!7641 (v!21488 lt!457164))) (size!11409 (_1!7641 (v!21488 lt!457166)))) lt!457164 lt!457166)))))))

(declare-fun call!92350 () Option!2672)

(assert (=> b!1375887 (= lt!457164 call!92350)))

(assert (=> b!1375887 (= lt!457166 (maxPrefix!1084 thiss!19762 (t!121642 (t!121642 rules!2550)) lt!456133))))

(declare-fun b!1375888 () Bool)

(assert (=> b!1375888 (= e!879258 call!92350)))

(declare-fun b!1375890 () Bool)

(declare-fun res!619937 () Bool)

(assert (=> b!1375890 (=> (not res!619937) (not e!879256))))

(assert (=> b!1375890 (= res!619937 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457168)))) (_2!7641 (get!4350 lt!457168))) lt!456133))))

(declare-fun bm!92345 () Bool)

(assert (=> bm!92345 (= call!92350 (maxPrefixOneRule!619 thiss!19762 (h!19306 (t!121642 rules!2550)) lt!456133))))

(declare-fun b!1375891 () Bool)

(declare-fun res!619935 () Bool)

(assert (=> b!1375891 (=> (not res!619935) (not e!879256))))

(assert (=> b!1375891 (= res!619935 (= (value!78232 (_1!7641 (get!4350 lt!457168))) (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!457168)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!457168)))))))))

(declare-fun b!1375892 () Bool)

(declare-fun e!879257 () Bool)

(assert (=> b!1375892 (= e!879257 e!879256)))

(declare-fun res!619939 () Bool)

(assert (=> b!1375892 (=> (not res!619939) (not e!879256))))

(assert (=> b!1375892 (= res!619939 (isDefined!2221 lt!457168))))

(declare-fun b!1375889 () Bool)

(declare-fun res!619936 () Bool)

(assert (=> b!1375889 (=> (not res!619936) (not e!879256))))

(assert (=> b!1375889 (= res!619936 (< (size!11415 (_2!7641 (get!4350 lt!457168))) (size!11415 lt!456133)))))

(declare-fun d!393380 () Bool)

(assert (=> d!393380 e!879257))

(declare-fun res!619940 () Bool)

(assert (=> d!393380 (=> res!619940 e!879257)))

(assert (=> d!393380 (= res!619940 (isEmpty!8399 lt!457168))))

(assert (=> d!393380 (= lt!457168 e!879258)))

(declare-fun c!226623 () Bool)

(assert (=> d!393380 (= c!226623 (and ((_ is Cons!13905) (t!121642 rules!2550)) ((_ is Nil!13905) (t!121642 (t!121642 rules!2550)))))))

(declare-fun lt!457165 () Unit!20133)

(declare-fun lt!457167 () Unit!20133)

(assert (=> d!393380 (= lt!457165 lt!457167)))

(assert (=> d!393380 (isPrefix!1131 lt!456133 lt!456133)))

(assert (=> d!393380 (= lt!457167 (lemmaIsPrefixRefl!793 lt!456133 lt!456133))))

(assert (=> d!393380 (rulesValidInductive!772 thiss!19762 (t!121642 rules!2550))))

(assert (=> d!393380 (= (maxPrefix!1084 thiss!19762 (t!121642 rules!2550) lt!456133) lt!457168)))

(assert (= (and d!393380 c!226623) b!1375888))

(assert (= (and d!393380 (not c!226623)) b!1375887))

(assert (= (or b!1375888 b!1375887) bm!92345))

(assert (= (and d!393380 (not res!619940)) b!1375892))

(assert (= (and b!1375892 res!619939) b!1375884))

(assert (= (and b!1375884 res!619941) b!1375889))

(assert (= (and b!1375889 res!619936) b!1375890))

(assert (= (and b!1375890 res!619937) b!1375891))

(assert (= (and b!1375891 res!619935) b!1375886))

(assert (= (and b!1375886 res!619938) b!1375885))

(declare-fun m!1548623 () Bool)

(assert (=> b!1375885 m!1548623))

(declare-fun m!1548625 () Bool)

(assert (=> b!1375885 m!1548625))

(assert (=> b!1375890 m!1548623))

(declare-fun m!1548627 () Bool)

(assert (=> b!1375890 m!1548627))

(assert (=> b!1375890 m!1548627))

(declare-fun m!1548629 () Bool)

(assert (=> b!1375890 m!1548629))

(assert (=> b!1375890 m!1548629))

(declare-fun m!1548631 () Bool)

(assert (=> b!1375890 m!1548631))

(declare-fun m!1548633 () Bool)

(assert (=> bm!92345 m!1548633))

(assert (=> b!1375886 m!1548623))

(assert (=> b!1375886 m!1548627))

(assert (=> b!1375886 m!1548627))

(assert (=> b!1375886 m!1548629))

(assert (=> b!1375886 m!1548629))

(declare-fun m!1548635 () Bool)

(assert (=> b!1375886 m!1548635))

(assert (=> b!1375884 m!1548623))

(assert (=> b!1375884 m!1548627))

(assert (=> b!1375884 m!1548627))

(assert (=> b!1375884 m!1548629))

(declare-fun m!1548637 () Bool)

(assert (=> b!1375887 m!1548637))

(assert (=> b!1375891 m!1548623))

(declare-fun m!1548639 () Bool)

(assert (=> b!1375891 m!1548639))

(assert (=> b!1375891 m!1548639))

(declare-fun m!1548641 () Bool)

(assert (=> b!1375891 m!1548641))

(declare-fun m!1548643 () Bool)

(assert (=> b!1375892 m!1548643))

(declare-fun m!1548645 () Bool)

(assert (=> d!393380 m!1548645))

(assert (=> d!393380 m!1545895))

(assert (=> d!393380 m!1545897))

(assert (=> d!393380 m!1546579))

(assert (=> b!1375889 m!1548623))

(declare-fun m!1548647 () Bool)

(assert (=> b!1375889 m!1548647))

(assert (=> b!1375889 m!1545901))

(assert (=> b!1374184 d!393380))

(declare-fun d!393382 () Bool)

(declare-fun c!226624 () Bool)

(assert (=> d!393382 (= c!226624 ((_ is Empty!4576) (c!226060 lt!456140)))))

(declare-fun e!879259 () List!13969)

(assert (=> d!393382 (= (list!5366 (c!226060 lt!456140)) e!879259)))

(declare-fun b!1375896 () Bool)

(declare-fun e!879260 () List!13969)

(assert (=> b!1375896 (= e!879260 (++!3598 (list!5366 (left!11893 (c!226060 lt!456140))) (list!5366 (right!12223 (c!226060 lt!456140)))))))

(declare-fun b!1375895 () Bool)

(assert (=> b!1375895 (= e!879260 (list!5369 (xs!7303 (c!226060 lt!456140))))))

(declare-fun b!1375893 () Bool)

(assert (=> b!1375893 (= e!879259 Nil!13903)))

(declare-fun b!1375894 () Bool)

(assert (=> b!1375894 (= e!879259 e!879260)))

(declare-fun c!226625 () Bool)

(assert (=> b!1375894 (= c!226625 ((_ is Leaf!6976) (c!226060 lt!456140)))))

(assert (= (and d!393382 c!226624) b!1375893))

(assert (= (and d!393382 (not c!226624)) b!1375894))

(assert (= (and b!1375894 c!226625) b!1375895))

(assert (= (and b!1375894 (not c!226625)) b!1375896))

(assert (=> b!1375896 m!1548153))

(assert (=> b!1375896 m!1548155))

(assert (=> b!1375896 m!1548153))

(assert (=> b!1375896 m!1548155))

(declare-fun m!1548649 () Bool)

(assert (=> b!1375896 m!1548649))

(declare-fun m!1548651 () Bool)

(assert (=> b!1375895 m!1548651))

(assert (=> d!392440 d!393382))

(assert (=> d!392200 d!393108))

(declare-fun d!393384 () Bool)

(declare-fun lt!457169 () Int)

(assert (=> d!393384 (>= lt!457169 0)))

(declare-fun e!879261 () Int)

(assert (=> d!393384 (= lt!457169 e!879261)))

(declare-fun c!226626 () Bool)

(assert (=> d!393384 (= c!226626 ((_ is Nil!13904) (_1!7639 lt!456392)))))

(assert (=> d!393384 (= (size!11420 (_1!7639 lt!456392)) lt!457169)))

(declare-fun b!1375897 () Bool)

(assert (=> b!1375897 (= e!879261 0)))

(declare-fun b!1375898 () Bool)

(assert (=> b!1375898 (= e!879261 (+ 1 (size!11420 (t!121641 (_1!7639 lt!456392)))))))

(assert (= (and d!393384 c!226626) b!1375897))

(assert (= (and d!393384 (not c!226626)) b!1375898))

(declare-fun m!1548653 () Bool)

(assert (=> b!1375898 m!1548653))

(assert (=> d!392432 d!393384))

(declare-fun b!1375899 () Bool)

(declare-fun res!619948 () Bool)

(declare-fun e!879262 () Bool)

(assert (=> b!1375899 (=> (not res!619948) (not e!879262))))

(declare-fun lt!457174 () Option!2672)

(assert (=> b!1375899 (= res!619948 (= (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457174)))) (originalCharacters!3269 (_1!7641 (get!4350 lt!457174)))))))

(declare-fun b!1375900 () Bool)

(assert (=> b!1375900 (= e!879262 (contains!2608 rules!2550 (rule!4164 (_1!7641 (get!4350 lt!457174)))))))

(declare-fun b!1375901 () Bool)

(declare-fun res!619945 () Bool)

(assert (=> b!1375901 (=> (not res!619945) (not e!879262))))

(assert (=> b!1375901 (= res!619945 (matchR!1714 (regex!2407 (rule!4164 (_1!7641 (get!4350 lt!457174)))) (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457174))))))))

(declare-fun b!1375902 () Bool)

(declare-fun e!879264 () Option!2672)

(declare-fun lt!457170 () Option!2672)

(declare-fun lt!457172 () Option!2672)

(assert (=> b!1375902 (= e!879264 (ite (and ((_ is None!2671) lt!457170) ((_ is None!2671) lt!457172)) None!2671 (ite ((_ is None!2671) lt!457172) lt!457170 (ite ((_ is None!2671) lt!457170) lt!457172 (ite (>= (size!11409 (_1!7641 (v!21488 lt!457170))) (size!11409 (_1!7641 (v!21488 lt!457172)))) lt!457170 lt!457172)))))))

(declare-fun call!92351 () Option!2672)

(assert (=> b!1375902 (= lt!457170 call!92351)))

(assert (=> b!1375902 (= lt!457172 (maxPrefix!1084 thiss!19762 (t!121642 rules!2550) (list!5362 lt!456124)))))

(declare-fun b!1375903 () Bool)

(assert (=> b!1375903 (= e!879264 call!92351)))

(declare-fun b!1375905 () Bool)

(declare-fun res!619944 () Bool)

(assert (=> b!1375905 (=> (not res!619944) (not e!879262))))

(assert (=> b!1375905 (= res!619944 (= (++!3598 (list!5362 (charsOf!1379 (_1!7641 (get!4350 lt!457174)))) (_2!7641 (get!4350 lt!457174))) (list!5362 lt!456124)))))

(declare-fun bm!92346 () Bool)

(assert (=> bm!92346 (= call!92351 (maxPrefixOneRule!619 thiss!19762 (h!19306 rules!2550) (list!5362 lt!456124)))))

(declare-fun b!1375906 () Bool)

(declare-fun res!619942 () Bool)

(assert (=> b!1375906 (=> (not res!619942) (not e!879262))))

(assert (=> b!1375906 (= res!619942 (= (value!78232 (_1!7641 (get!4350 lt!457174))) (apply!3431 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!457174)))) (seqFromList!1637 (originalCharacters!3269 (_1!7641 (get!4350 lt!457174)))))))))

(declare-fun b!1375907 () Bool)

(declare-fun e!879263 () Bool)

(assert (=> b!1375907 (= e!879263 e!879262)))

(declare-fun res!619946 () Bool)

(assert (=> b!1375907 (=> (not res!619946) (not e!879262))))

(assert (=> b!1375907 (= res!619946 (isDefined!2221 lt!457174))))

(declare-fun b!1375904 () Bool)

(declare-fun res!619943 () Bool)

(assert (=> b!1375904 (=> (not res!619943) (not e!879262))))

(assert (=> b!1375904 (= res!619943 (< (size!11415 (_2!7641 (get!4350 lt!457174))) (size!11415 (list!5362 lt!456124))))))

(declare-fun d!393386 () Bool)

(assert (=> d!393386 e!879263))

(declare-fun res!619947 () Bool)

(assert (=> d!393386 (=> res!619947 e!879263)))

(assert (=> d!393386 (= res!619947 (isEmpty!8399 lt!457174))))

(assert (=> d!393386 (= lt!457174 e!879264)))

(declare-fun c!226627 () Bool)

(assert (=> d!393386 (= c!226627 (and ((_ is Cons!13905) rules!2550) ((_ is Nil!13905) (t!121642 rules!2550))))))

(declare-fun lt!457171 () Unit!20133)

(declare-fun lt!457173 () Unit!20133)

(assert (=> d!393386 (= lt!457171 lt!457173)))

(assert (=> d!393386 (isPrefix!1131 (list!5362 lt!456124) (list!5362 lt!456124))))

(assert (=> d!393386 (= lt!457173 (lemmaIsPrefixRefl!793 (list!5362 lt!456124) (list!5362 lt!456124)))))

(assert (=> d!393386 (rulesValidInductive!772 thiss!19762 rules!2550)))

(assert (=> d!393386 (= (maxPrefix!1084 thiss!19762 rules!2550 (list!5362 lt!456124)) lt!457174)))

(assert (= (and d!393386 c!226627) b!1375903))

(assert (= (and d!393386 (not c!226627)) b!1375902))

(assert (= (or b!1375903 b!1375902) bm!92346))

(assert (= (and d!393386 (not res!619947)) b!1375907))

(assert (= (and b!1375907 res!619946) b!1375899))

(assert (= (and b!1375899 res!619948) b!1375904))

(assert (= (and b!1375904 res!619943) b!1375905))

(assert (= (and b!1375905 res!619944) b!1375906))

(assert (= (and b!1375906 res!619942) b!1375901))

(assert (= (and b!1375901 res!619945) b!1375900))

(declare-fun m!1548655 () Bool)

(assert (=> b!1375900 m!1548655))

(declare-fun m!1548657 () Bool)

(assert (=> b!1375900 m!1548657))

(assert (=> b!1375905 m!1548655))

(declare-fun m!1548659 () Bool)

(assert (=> b!1375905 m!1548659))

(assert (=> b!1375905 m!1548659))

(declare-fun m!1548661 () Bool)

(assert (=> b!1375905 m!1548661))

(assert (=> b!1375905 m!1548661))

(declare-fun m!1548663 () Bool)

(assert (=> b!1375905 m!1548663))

(assert (=> bm!92346 m!1544837))

(declare-fun m!1548665 () Bool)

(assert (=> bm!92346 m!1548665))

(assert (=> b!1375901 m!1548655))

(assert (=> b!1375901 m!1548659))

(assert (=> b!1375901 m!1548659))

(assert (=> b!1375901 m!1548661))

(assert (=> b!1375901 m!1548661))

(declare-fun m!1548667 () Bool)

(assert (=> b!1375901 m!1548667))

(assert (=> b!1375899 m!1548655))

(assert (=> b!1375899 m!1548659))

(assert (=> b!1375899 m!1548659))

(assert (=> b!1375899 m!1548661))

(assert (=> b!1375902 m!1544837))

(declare-fun m!1548669 () Bool)

(assert (=> b!1375902 m!1548669))

(assert (=> b!1375906 m!1548655))

(declare-fun m!1548671 () Bool)

(assert (=> b!1375906 m!1548671))

(assert (=> b!1375906 m!1548671))

(declare-fun m!1548673 () Bool)

(assert (=> b!1375906 m!1548673))

(declare-fun m!1548675 () Bool)

(assert (=> b!1375907 m!1548675))

(declare-fun m!1548677 () Bool)

(assert (=> d!393386 m!1548677))

(assert (=> d!393386 m!1544837))

(assert (=> d!393386 m!1544837))

(declare-fun m!1548679 () Bool)

(assert (=> d!393386 m!1548679))

(assert (=> d!393386 m!1544837))

(assert (=> d!393386 m!1544837))

(declare-fun m!1548681 () Bool)

(assert (=> d!393386 m!1548681))

(assert (=> d!393386 m!1545759))

(assert (=> b!1375904 m!1548655))

(declare-fun m!1548683 () Bool)

(assert (=> b!1375904 m!1548683))

(assert (=> b!1375904 m!1544837))

(assert (=> b!1375904 m!1545863))

(assert (=> d!392432 d!393386))

(declare-fun d!393388 () Bool)

(assert (=> d!393388 (= (head!2477 rules!2550) (h!19306 rules!2550))))

(assert (=> b!1373775 d!393388))

(declare-fun d!393390 () Bool)

(assert (=> d!393390 (= (inv!17 (value!78232 t2!34)) (= (charsToBigInt!1 (text!17927 (value!78232 t2!34))) (value!78224 (value!78232 t2!34))))))

(declare-fun bs!336295 () Bool)

(assert (= bs!336295 d!393390))

(declare-fun m!1548685 () Bool)

(assert (=> bs!336295 m!1548685))

(assert (=> b!1373962 d!393390))

(declare-fun d!393392 () Bool)

(assert (=> d!393392 (= (list!5363 (_1!7640 lt!456385)) (list!5367 (c!226062 (_1!7640 lt!456385))))))

(declare-fun bs!336296 () Bool)

(assert (= bs!336296 d!393392))

(declare-fun m!1548687 () Bool)

(assert (=> bs!336296 m!1548687))

(assert (=> b!1374170 d!393392))

(assert (=> b!1374170 d!392320))

(assert (=> b!1374170 d!392332))

(declare-fun d!393394 () Bool)

(declare-fun c!226628 () Bool)

(assert (=> d!393394 (= c!226628 ((_ is Nil!13903) lt!456147))))

(declare-fun e!879265 () (InoxSet C!7732))

(assert (=> d!393394 (= (content!2037 lt!456147) e!879265)))

(declare-fun b!1375908 () Bool)

(assert (=> b!1375908 (= e!879265 ((as const (Array C!7732 Bool)) false))))

(declare-fun b!1375909 () Bool)

(assert (=> b!1375909 (= e!879265 ((_ map or) (store ((as const (Array C!7732 Bool)) false) (h!19304 lt!456147) true) (content!2037 (t!121640 lt!456147))))))

(assert (= (and d!393394 c!226628) b!1375908))

(assert (= (and d!393394 (not c!226628)) b!1375909))

(declare-fun m!1548689 () Bool)

(assert (=> b!1375909 m!1548689))

(declare-fun m!1548691 () Bool)

(assert (=> b!1375909 m!1548691))

(assert (=> d!392150 d!393394))

(declare-fun d!393396 () Bool)

(declare-fun c!226629 () Bool)

(assert (=> d!393396 (= c!226629 ((_ is Nil!13903) lt!456128))))

(declare-fun e!879266 () (InoxSet C!7732))

(assert (=> d!393396 (= (content!2037 lt!456128) e!879266)))

(declare-fun b!1375910 () Bool)

(assert (=> b!1375910 (= e!879266 ((as const (Array C!7732 Bool)) false))))

(declare-fun b!1375911 () Bool)

(assert (=> b!1375911 (= e!879266 ((_ map or) (store ((as const (Array C!7732 Bool)) false) (h!19304 lt!456128) true) (content!2037 (t!121640 lt!456128))))))

(assert (= (and d!393396 c!226629) b!1375910))

(assert (= (and d!393396 (not c!226629)) b!1375911))

(declare-fun m!1548693 () Bool)

(assert (=> b!1375911 m!1548693))

(assert (=> b!1375911 m!1548569))

(assert (=> d!392150 d!393396))

(declare-fun d!393398 () Bool)

(declare-fun c!226630 () Bool)

(assert (=> d!393398 (= c!226630 ((_ is Nil!13903) (Cons!13903 lt!456136 Nil!13903)))))

(declare-fun e!879267 () (InoxSet C!7732))

(assert (=> d!393398 (= (content!2037 (Cons!13903 lt!456136 Nil!13903)) e!879267)))

(declare-fun b!1375912 () Bool)

(assert (=> b!1375912 (= e!879267 ((as const (Array C!7732 Bool)) false))))

(declare-fun b!1375913 () Bool)

(assert (=> b!1375913 (= e!879267 ((_ map or) (store ((as const (Array C!7732 Bool)) false) (h!19304 (Cons!13903 lt!456136 Nil!13903)) true) (content!2037 (t!121640 (Cons!13903 lt!456136 Nil!13903)))))))

(assert (= (and d!393398 c!226630) b!1375912))

(assert (= (and d!393398 (not c!226630)) b!1375913))

(declare-fun m!1548695 () Bool)

(assert (=> b!1375913 m!1548695))

(declare-fun m!1548697 () Bool)

(assert (=> b!1375913 m!1548697))

(assert (=> d!392150 d!393398))

(assert (=> b!1374150 d!392216))

(declare-fun d!393400 () Bool)

(assert (=> d!393400 (= (isEmpty!8392 (originalCharacters!3269 t1!34)) ((_ is Nil!13903) (originalCharacters!3269 t1!34)))))

(assert (=> d!392414 d!393400))

(declare-fun d!393402 () Bool)

(assert (=> d!393402 (= (isEmpty!8392 (list!5362 (_2!7640 lt!456126))) ((_ is Nil!13903) (list!5362 (_2!7640 lt!456126))))))

(assert (=> d!392224 d!393402))

(declare-fun d!393404 () Bool)

(assert (=> d!393404 (= (list!5362 (_2!7640 lt!456126)) (list!5366 (c!226060 (_2!7640 lt!456126))))))

(declare-fun bs!336297 () Bool)

(assert (= bs!336297 d!393404))

(declare-fun m!1548699 () Bool)

(assert (=> bs!336297 m!1548699))

(assert (=> d!392224 d!393404))

(declare-fun d!393406 () Bool)

(declare-fun lt!457175 () Bool)

(assert (=> d!393406 (= lt!457175 (isEmpty!8392 (list!5366 (c!226060 (_2!7640 lt!456126)))))))

(assert (=> d!393406 (= lt!457175 (= (size!11422 (c!226060 (_2!7640 lt!456126))) 0))))

(assert (=> d!393406 (= (isEmpty!8395 (c!226060 (_2!7640 lt!456126))) lt!457175)))

(declare-fun bs!336298 () Bool)

(assert (= bs!336298 d!393406))

(assert (=> bs!336298 m!1548699))

(assert (=> bs!336298 m!1548699))

(declare-fun m!1548701 () Bool)

(assert (=> bs!336298 m!1548701))

(declare-fun m!1548703 () Bool)

(assert (=> bs!336298 m!1548703))

(assert (=> d!392224 d!393406))

(assert (=> d!392180 d!393244))

(assert (=> d!392180 d!392282))

(declare-fun d!393408 () Bool)

(declare-fun lt!457176 () Int)

(assert (=> d!393408 (= lt!457176 (size!11420 (list!5363 (_1!7640 lt!456215))))))

(assert (=> d!393408 (= lt!457176 (size!11423 (c!226062 (_1!7640 lt!456215))))))

(assert (=> d!393408 (= (size!11416 (_1!7640 lt!456215)) lt!457176)))

(declare-fun bs!336299 () Bool)

(assert (= bs!336299 d!393408))

(assert (=> bs!336299 m!1546367))

(assert (=> bs!336299 m!1546367))

(declare-fun m!1548705 () Bool)

(assert (=> bs!336299 m!1548705))

(declare-fun m!1548707 () Bool)

(assert (=> bs!336299 m!1548707))

(assert (=> d!392180 d!393408))

(assert (=> d!392180 d!392292))

(declare-fun d!393410 () Bool)

(assert (=> d!393410 (= (list!5363 (_1!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34))))) (list!5367 (c!226062 (_1!7640 (lex!929 thiss!19762 rules!2550 (print!868 thiss!19762 (singletonSeq!1040 t1!34)))))))))

(declare-fun bs!336300 () Bool)

(assert (= bs!336300 d!393410))

(declare-fun m!1548709 () Bool)

(assert (=> bs!336300 m!1548709))

(assert (=> d!392180 d!393410))

(assert (=> d!392180 d!393256))

(assert (=> d!392180 d!392372))

(declare-fun d!393412 () Bool)

(assert (=> d!393412 (= (Exists!873 lambda!58425) (choose!8454 lambda!58425))))

(declare-fun bs!336301 () Bool)

(assert (= bs!336301 d!393412))

(declare-fun m!1548711 () Bool)

(assert (=> bs!336301 m!1548711))

(assert (=> d!392354 d!393412))

(declare-fun bs!336302 () Bool)

(declare-fun d!393414 () Bool)

(assert (= bs!336302 (and d!393414 b!1373443)))

(declare-fun lambda!58497 () Int)

(assert (=> bs!336302 (= lambda!58497 lambda!58377)))

(declare-fun bs!336303 () Bool)

(assert (= bs!336303 (and d!393414 d!392354)))

(assert (=> bs!336303 (= lambda!58497 lambda!58425)))

(assert (=> d!393414 true))

(assert (=> d!393414 true))

(assert (=> d!393414 (Exists!873 lambda!58497)))

(assert (=> d!393414 true))

(declare-fun _$103!143 () Unit!20133)

(assert (=> d!393414 (= (choose!8456 lt!456141 lt!456127) _$103!143)))

(declare-fun bs!336304 () Bool)

(assert (= bs!336304 d!393414))

(declare-fun m!1548713 () Bool)

(assert (=> bs!336304 m!1548713))

(assert (=> d!392354 d!393414))

(assert (=> d!392354 d!393164))

(declare-fun b!1375919 () Bool)

(declare-fun e!879270 () Bool)

(declare-fun tp!394398 () Bool)

(declare-fun tp!394395 () Bool)

(assert (=> b!1375919 (= e!879270 (and tp!394398 tp!394395))))

(declare-fun b!1375916 () Bool)

(assert (=> b!1375916 (= e!879270 tp_is_empty!6751)))

(declare-fun b!1375918 () Bool)

(declare-fun tp!394399 () Bool)

(assert (=> b!1375918 (= e!879270 tp!394399)))

(declare-fun b!1375917 () Bool)

(declare-fun tp!394397 () Bool)

(declare-fun tp!394396 () Bool)

(assert (=> b!1375917 (= e!879270 (and tp!394397 tp!394396))))

(assert (=> b!1374226 (= tp!394284 e!879270)))

(assert (= (and b!1374226 ((_ is ElementMatch!3721) (regOne!7954 (regex!2407 (rule!4164 t1!34))))) b!1375916))

(assert (= (and b!1374226 ((_ is Concat!6219) (regOne!7954 (regex!2407 (rule!4164 t1!34))))) b!1375917))

(assert (= (and b!1374226 ((_ is Star!3721) (regOne!7954 (regex!2407 (rule!4164 t1!34))))) b!1375918))

(assert (= (and b!1374226 ((_ is Union!3721) (regOne!7954 (regex!2407 (rule!4164 t1!34))))) b!1375919))

(declare-fun b!1375923 () Bool)

(declare-fun e!879271 () Bool)

(declare-fun tp!394403 () Bool)

(declare-fun tp!394400 () Bool)

(assert (=> b!1375923 (= e!879271 (and tp!394403 tp!394400))))

(declare-fun b!1375920 () Bool)

(assert (=> b!1375920 (= e!879271 tp_is_empty!6751)))

(declare-fun b!1375922 () Bool)

(declare-fun tp!394404 () Bool)

(assert (=> b!1375922 (= e!879271 tp!394404)))

(declare-fun b!1375921 () Bool)

(declare-fun tp!394402 () Bool)

(declare-fun tp!394401 () Bool)

(assert (=> b!1375921 (= e!879271 (and tp!394402 tp!394401))))

(assert (=> b!1374226 (= tp!394283 e!879271)))

(assert (= (and b!1374226 ((_ is ElementMatch!3721) (regTwo!7954 (regex!2407 (rule!4164 t1!34))))) b!1375920))

(assert (= (and b!1374226 ((_ is Concat!6219) (regTwo!7954 (regex!2407 (rule!4164 t1!34))))) b!1375921))

(assert (= (and b!1374226 ((_ is Star!3721) (regTwo!7954 (regex!2407 (rule!4164 t1!34))))) b!1375922))

(assert (= (and b!1374226 ((_ is Union!3721) (regTwo!7954 (regex!2407 (rule!4164 t1!34))))) b!1375923))

(declare-fun tp!394413 () Bool)

(declare-fun tp!394412 () Bool)

(declare-fun b!1375932 () Bool)

(declare-fun e!879276 () Bool)

(assert (=> b!1375932 (= e!879276 (and (inv!18263 (left!11893 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))))) tp!394413 (inv!18263 (right!12223 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))))) tp!394412))))

(declare-fun b!1375934 () Bool)

(declare-fun e!879277 () Bool)

(declare-fun tp!394411 () Bool)

(assert (=> b!1375934 (= e!879277 tp!394411)))

(declare-fun b!1375933 () Bool)

(declare-fun inv!18271 (IArray!9157) Bool)

(assert (=> b!1375933 (= e!879276 (and (inv!18271 (xs!7303 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))))) e!879277))))

(assert (=> b!1373545 (= tp!394199 (and (inv!18263 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34)))) e!879276))))

(assert (= (and b!1373545 ((_ is Node!4576) (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))))) b!1375932))

(assert (= b!1375933 b!1375934))

(assert (= (and b!1373545 ((_ is Leaf!6976) (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t1!34))) (value!78232 t1!34))))) b!1375933))

(declare-fun m!1548715 () Bool)

(assert (=> b!1375932 m!1548715))

(declare-fun m!1548717 () Bool)

(assert (=> b!1375932 m!1548717))

(declare-fun m!1548719 () Bool)

(assert (=> b!1375933 m!1548719))

(assert (=> b!1373545 m!1544971))

(declare-fun b!1375935 () Bool)

(declare-fun e!879278 () Bool)

(declare-fun tp!394414 () Bool)

(assert (=> b!1375935 (= e!879278 (and tp_is_empty!6751 tp!394414))))

(assert (=> b!1374194 (= tp!394248 e!879278)))

(assert (= (and b!1374194 ((_ is Cons!13903) (t!121640 (originalCharacters!3269 t2!34)))) b!1375935))

(declare-fun b!1375936 () Bool)

(declare-fun e!879279 () Bool)

(declare-fun tp!394415 () Bool)

(assert (=> b!1375936 (= e!879279 (and tp_is_empty!6751 tp!394415))))

(assert (=> b!1374213 (= tp!394269 e!879279)))

(assert (= (and b!1374213 ((_ is Cons!13903) (t!121640 (originalCharacters!3269 t1!34)))) b!1375936))

(declare-fun b!1375940 () Bool)

(declare-fun e!879280 () Bool)

(declare-fun tp!394419 () Bool)

(declare-fun tp!394416 () Bool)

(assert (=> b!1375940 (= e!879280 (and tp!394419 tp!394416))))

(declare-fun b!1375937 () Bool)

(assert (=> b!1375937 (= e!879280 tp_is_empty!6751)))

(declare-fun b!1375939 () Bool)

(declare-fun tp!394420 () Bool)

(assert (=> b!1375939 (= e!879280 tp!394420)))

(declare-fun b!1375938 () Bool)

(declare-fun tp!394418 () Bool)

(declare-fun tp!394417 () Bool)

(assert (=> b!1375938 (= e!879280 (and tp!394418 tp!394417))))

(assert (=> b!1374208 (= tp!394262 e!879280)))

(assert (= (and b!1374208 ((_ is ElementMatch!3721) (regOne!7955 (regex!2407 (rule!4164 t2!34))))) b!1375937))

(assert (= (and b!1374208 ((_ is Concat!6219) (regOne!7955 (regex!2407 (rule!4164 t2!34))))) b!1375938))

(assert (= (and b!1374208 ((_ is Star!3721) (regOne!7955 (regex!2407 (rule!4164 t2!34))))) b!1375939))

(assert (= (and b!1374208 ((_ is Union!3721) (regOne!7955 (regex!2407 (rule!4164 t2!34))))) b!1375940))

(declare-fun b!1375944 () Bool)

(declare-fun e!879281 () Bool)

(declare-fun tp!394424 () Bool)

(declare-fun tp!394421 () Bool)

(assert (=> b!1375944 (= e!879281 (and tp!394424 tp!394421))))

(declare-fun b!1375941 () Bool)

(assert (=> b!1375941 (= e!879281 tp_is_empty!6751)))

(declare-fun b!1375943 () Bool)

(declare-fun tp!394425 () Bool)

(assert (=> b!1375943 (= e!879281 tp!394425)))

(declare-fun b!1375942 () Bool)

(declare-fun tp!394423 () Bool)

(declare-fun tp!394422 () Bool)

(assert (=> b!1375942 (= e!879281 (and tp!394423 tp!394422))))

(assert (=> b!1374208 (= tp!394259 e!879281)))

(assert (= (and b!1374208 ((_ is ElementMatch!3721) (regTwo!7955 (regex!2407 (rule!4164 t2!34))))) b!1375941))

(assert (= (and b!1374208 ((_ is Concat!6219) (regTwo!7955 (regex!2407 (rule!4164 t2!34))))) b!1375942))

(assert (= (and b!1374208 ((_ is Star!3721) (regTwo!7955 (regex!2407 (rule!4164 t2!34))))) b!1375943))

(assert (= (and b!1374208 ((_ is Union!3721) (regTwo!7955 (regex!2407 (rule!4164 t2!34))))) b!1375944))

(declare-fun b!1375948 () Bool)

(declare-fun e!879282 () Bool)

(declare-fun tp!394429 () Bool)

(declare-fun tp!394426 () Bool)

(assert (=> b!1375948 (= e!879282 (and tp!394429 tp!394426))))

(declare-fun b!1375945 () Bool)

(assert (=> b!1375945 (= e!879282 tp_is_empty!6751)))

(declare-fun b!1375947 () Bool)

(declare-fun tp!394430 () Bool)

(assert (=> b!1375947 (= e!879282 tp!394430)))

(declare-fun b!1375946 () Bool)

(declare-fun tp!394428 () Bool)

(declare-fun tp!394427 () Bool)

(assert (=> b!1375946 (= e!879282 (and tp!394428 tp!394427))))

(assert (=> b!1374223 (= tp!394278 e!879282)))

(assert (= (and b!1374223 ((_ is ElementMatch!3721) (regex!2407 (h!19306 (t!121642 rules!2550))))) b!1375945))

(assert (= (and b!1374223 ((_ is Concat!6219) (regex!2407 (h!19306 (t!121642 rules!2550))))) b!1375946))

(assert (= (and b!1374223 ((_ is Star!3721) (regex!2407 (h!19306 (t!121642 rules!2550))))) b!1375947))

(assert (= (and b!1374223 ((_ is Union!3721) (regex!2407 (h!19306 (t!121642 rules!2550))))) b!1375948))

(declare-fun b!1375952 () Bool)

(declare-fun e!879283 () Bool)

(declare-fun tp!394434 () Bool)

(declare-fun tp!394431 () Bool)

(assert (=> b!1375952 (= e!879283 (and tp!394434 tp!394431))))

(declare-fun b!1375949 () Bool)

(assert (=> b!1375949 (= e!879283 tp_is_empty!6751)))

(declare-fun b!1375951 () Bool)

(declare-fun tp!394435 () Bool)

(assert (=> b!1375951 (= e!879283 tp!394435)))

(declare-fun b!1375950 () Bool)

(declare-fun tp!394433 () Bool)

(declare-fun tp!394432 () Bool)

(assert (=> b!1375950 (= e!879283 (and tp!394433 tp!394432))))

(assert (=> b!1374212 (= tp!394267 e!879283)))

(assert (= (and b!1374212 ((_ is ElementMatch!3721) (regOne!7955 (regex!2407 (h!19306 rules!2550))))) b!1375949))

(assert (= (and b!1374212 ((_ is Concat!6219) (regOne!7955 (regex!2407 (h!19306 rules!2550))))) b!1375950))

(assert (= (and b!1374212 ((_ is Star!3721) (regOne!7955 (regex!2407 (h!19306 rules!2550))))) b!1375951))

(assert (= (and b!1374212 ((_ is Union!3721) (regOne!7955 (regex!2407 (h!19306 rules!2550))))) b!1375952))

(declare-fun b!1375956 () Bool)

(declare-fun e!879284 () Bool)

(declare-fun tp!394439 () Bool)

(declare-fun tp!394436 () Bool)

(assert (=> b!1375956 (= e!879284 (and tp!394439 tp!394436))))

(declare-fun b!1375953 () Bool)

(assert (=> b!1375953 (= e!879284 tp_is_empty!6751)))

(declare-fun b!1375955 () Bool)

(declare-fun tp!394440 () Bool)

(assert (=> b!1375955 (= e!879284 tp!394440)))

(declare-fun b!1375954 () Bool)

(declare-fun tp!394438 () Bool)

(declare-fun tp!394437 () Bool)

(assert (=> b!1375954 (= e!879284 (and tp!394438 tp!394437))))

(assert (=> b!1374212 (= tp!394264 e!879284)))

(assert (= (and b!1374212 ((_ is ElementMatch!3721) (regTwo!7955 (regex!2407 (h!19306 rules!2550))))) b!1375953))

(assert (= (and b!1374212 ((_ is Concat!6219) (regTwo!7955 (regex!2407 (h!19306 rules!2550))))) b!1375954))

(assert (= (and b!1374212 ((_ is Star!3721) (regTwo!7955 (regex!2407 (h!19306 rules!2550))))) b!1375955))

(assert (= (and b!1374212 ((_ is Union!3721) (regTwo!7955 (regex!2407 (h!19306 rules!2550))))) b!1375956))

(declare-fun b!1375960 () Bool)

(declare-fun e!879285 () Bool)

(declare-fun tp!394444 () Bool)

(declare-fun tp!394441 () Bool)

(assert (=> b!1375960 (= e!879285 (and tp!394444 tp!394441))))

(declare-fun b!1375957 () Bool)

(assert (=> b!1375957 (= e!879285 tp_is_empty!6751)))

(declare-fun b!1375959 () Bool)

(declare-fun tp!394445 () Bool)

(assert (=> b!1375959 (= e!879285 tp!394445)))

(declare-fun b!1375958 () Bool)

(declare-fun tp!394443 () Bool)

(declare-fun tp!394442 () Bool)

(assert (=> b!1375958 (= e!879285 (and tp!394443 tp!394442))))

(assert (=> b!1374207 (= tp!394263 e!879285)))

(assert (= (and b!1374207 ((_ is ElementMatch!3721) (reg!4050 (regex!2407 (rule!4164 t2!34))))) b!1375957))

(assert (= (and b!1374207 ((_ is Concat!6219) (reg!4050 (regex!2407 (rule!4164 t2!34))))) b!1375958))

(assert (= (and b!1374207 ((_ is Star!3721) (reg!4050 (regex!2407 (rule!4164 t2!34))))) b!1375959))

(assert (= (and b!1374207 ((_ is Union!3721) (reg!4050 (regex!2407 (rule!4164 t2!34))))) b!1375960))

(declare-fun b!1375963 () Bool)

(declare-fun b_free!33283 () Bool)

(declare-fun b_next!33987 () Bool)

(assert (=> b!1375963 (= b_free!33283 (not b_next!33987))))

(declare-fun t!121777 () Bool)

(declare-fun tb!72429 () Bool)

(assert (=> (and b!1375963 (= (toValue!3678 (transformation!2407 (h!19306 (t!121642 (t!121642 rules!2550))))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121777) tb!72429))

(declare-fun result!87946 () Bool)

(assert (= result!87946 result!87888))

(assert (=> d!392646 t!121777))

(declare-fun tb!72431 () Bool)

(declare-fun t!121779 () Bool)

(assert (=> (and b!1375963 (= (toValue!3678 (transformation!2407 (h!19306 (t!121642 (t!121642 rules!2550))))) (toValue!3678 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121779) tb!72431))

(declare-fun result!87948 () Bool)

(assert (= result!87948 result!87898))

(assert (=> d!392662 t!121779))

(declare-fun b_and!92163 () Bool)

(declare-fun tp!394448 () Bool)

(assert (=> b!1375963 (= tp!394448 (and (=> t!121777 result!87946) (=> t!121779 result!87948) b_and!92163))))

(declare-fun b_free!33285 () Bool)

(declare-fun b_next!33989 () Bool)

(assert (=> b!1375963 (= b_free!33285 (not b_next!33989))))

(declare-fun tb!72433 () Bool)

(declare-fun t!121781 () Bool)

(assert (=> (and b!1375963 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 (t!121642 rules!2550))))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456400)))))) t!121781) tb!72433))

(declare-fun result!87950 () Bool)

(assert (= result!87950 result!87914))

(assert (=> d!392750 t!121781))

(declare-fun tb!72435 () Bool)

(declare-fun t!121783 () Bool)

(assert (=> (and b!1375963 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 (t!121642 rules!2550))))) (toChars!3537 (transformation!2407 (rule!4164 t1!34)))) t!121783) tb!72435))

(declare-fun result!87952 () Bool)

(assert (= result!87952 result!87814))

(assert (=> d!392160 t!121783))

(declare-fun t!121785 () Bool)

(declare-fun tb!72437 () Bool)

(assert (=> (and b!1375963 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 (t!121642 rules!2550))))) (toChars!3537 (transformation!2407 (rule!4164 t2!34)))) t!121785) tb!72437))

(declare-fun result!87954 () Bool)

(assert (= result!87954 result!87846))

(assert (=> b!1374159 t!121785))

(assert (=> d!392430 t!121785))

(declare-fun tb!72439 () Bool)

(declare-fun t!121787 () Bool)

(assert (=> (and b!1375963 (= (toChars!3537 (transformation!2407 (h!19306 (t!121642 (t!121642 rules!2550))))) (toChars!3537 (transformation!2407 (rule!4164 (_1!7641 (get!4350 lt!456377)))))) t!121787) tb!72439))

(declare-fun result!87956 () Bool)

(assert (= result!87956 result!87906))

(assert (=> d!392692 t!121787))

(assert (=> b!1374157 t!121783))

(declare-fun b_and!92165 () Bool)

(declare-fun tp!394449 () Bool)

(assert (=> b!1375963 (= tp!394449 (and (=> t!121785 result!87954) (=> t!121783 result!87952) (=> t!121787 result!87956) (=> t!121781 result!87950) b_and!92165))))

(declare-fun e!879289 () Bool)

(assert (=> b!1375963 (= e!879289 (and tp!394448 tp!394449))))

(declare-fun tp!394446 () Bool)

(declare-fun b!1375962 () Bool)

(declare-fun e!879288 () Bool)

(assert (=> b!1375962 (= e!879288 (and tp!394446 (inv!18258 (tag!2669 (h!19306 (t!121642 (t!121642 rules!2550))))) (inv!18262 (transformation!2407 (h!19306 (t!121642 (t!121642 rules!2550))))) e!879289))))

(declare-fun b!1375961 () Bool)

(declare-fun e!879287 () Bool)

(declare-fun tp!394447 () Bool)

(assert (=> b!1375961 (= e!879287 (and e!879288 tp!394447))))

(assert (=> b!1374222 (= tp!394279 e!879287)))

(assert (= b!1375962 b!1375963))

(assert (= b!1375961 b!1375962))

(assert (= (and b!1374222 ((_ is Cons!13905) (t!121642 (t!121642 rules!2550)))) b!1375961))

(declare-fun m!1548721 () Bool)

(assert (=> b!1375962 m!1548721))

(declare-fun m!1548723 () Bool)

(assert (=> b!1375962 m!1548723))

(declare-fun b!1375967 () Bool)

(declare-fun e!879290 () Bool)

(declare-fun tp!394453 () Bool)

(declare-fun tp!394450 () Bool)

(assert (=> b!1375967 (= e!879290 (and tp!394453 tp!394450))))

(declare-fun b!1375964 () Bool)

(assert (=> b!1375964 (= e!879290 tp_is_empty!6751)))

(declare-fun b!1375966 () Bool)

(declare-fun tp!394454 () Bool)

(assert (=> b!1375966 (= e!879290 tp!394454)))

(declare-fun b!1375965 () Bool)

(declare-fun tp!394452 () Bool)

(declare-fun tp!394451 () Bool)

(assert (=> b!1375965 (= e!879290 (and tp!394452 tp!394451))))

(assert (=> b!1374211 (= tp!394268 e!879290)))

(assert (= (and b!1374211 ((_ is ElementMatch!3721) (reg!4050 (regex!2407 (h!19306 rules!2550))))) b!1375964))

(assert (= (and b!1374211 ((_ is Concat!6219) (reg!4050 (regex!2407 (h!19306 rules!2550))))) b!1375965))

(assert (= (and b!1374211 ((_ is Star!3721) (reg!4050 (regex!2407 (h!19306 rules!2550))))) b!1375966))

(assert (= (and b!1374211 ((_ is Union!3721) (reg!4050 (regex!2407 (h!19306 rules!2550))))) b!1375967))

(declare-fun b!1375971 () Bool)

(declare-fun e!879291 () Bool)

(declare-fun tp!394458 () Bool)

(declare-fun tp!394455 () Bool)

(assert (=> b!1375971 (= e!879291 (and tp!394458 tp!394455))))

(declare-fun b!1375968 () Bool)

(assert (=> b!1375968 (= e!879291 tp_is_empty!6751)))

(declare-fun b!1375970 () Bool)

(declare-fun tp!394459 () Bool)

(assert (=> b!1375970 (= e!879291 tp!394459)))

(declare-fun b!1375969 () Bool)

(declare-fun tp!394457 () Bool)

(declare-fun tp!394456 () Bool)

(assert (=> b!1375969 (= e!879291 (and tp!394457 tp!394456))))

(assert (=> b!1374206 (= tp!394261 e!879291)))

(assert (= (and b!1374206 ((_ is ElementMatch!3721) (regOne!7954 (regex!2407 (rule!4164 t2!34))))) b!1375968))

(assert (= (and b!1374206 ((_ is Concat!6219) (regOne!7954 (regex!2407 (rule!4164 t2!34))))) b!1375969))

(assert (= (and b!1374206 ((_ is Star!3721) (regOne!7954 (regex!2407 (rule!4164 t2!34))))) b!1375970))

(assert (= (and b!1374206 ((_ is Union!3721) (regOne!7954 (regex!2407 (rule!4164 t2!34))))) b!1375971))

(declare-fun b!1375975 () Bool)

(declare-fun e!879292 () Bool)

(declare-fun tp!394463 () Bool)

(declare-fun tp!394460 () Bool)

(assert (=> b!1375975 (= e!879292 (and tp!394463 tp!394460))))

(declare-fun b!1375972 () Bool)

(assert (=> b!1375972 (= e!879292 tp_is_empty!6751)))

(declare-fun b!1375974 () Bool)

(declare-fun tp!394464 () Bool)

(assert (=> b!1375974 (= e!879292 tp!394464)))

(declare-fun b!1375973 () Bool)

(declare-fun tp!394462 () Bool)

(declare-fun tp!394461 () Bool)

(assert (=> b!1375973 (= e!879292 (and tp!394462 tp!394461))))

(assert (=> b!1374206 (= tp!394260 e!879292)))

(assert (= (and b!1374206 ((_ is ElementMatch!3721) (regTwo!7954 (regex!2407 (rule!4164 t2!34))))) b!1375972))

(assert (= (and b!1374206 ((_ is Concat!6219) (regTwo!7954 (regex!2407 (rule!4164 t2!34))))) b!1375973))

(assert (= (and b!1374206 ((_ is Star!3721) (regTwo!7954 (regex!2407 (rule!4164 t2!34))))) b!1375974))

(assert (= (and b!1374206 ((_ is Union!3721) (regTwo!7954 (regex!2407 (rule!4164 t2!34))))) b!1375975))

(declare-fun b!1375979 () Bool)

(declare-fun e!879293 () Bool)

(declare-fun tp!394468 () Bool)

(declare-fun tp!394465 () Bool)

(assert (=> b!1375979 (= e!879293 (and tp!394468 tp!394465))))

(declare-fun b!1375976 () Bool)

(assert (=> b!1375976 (= e!879293 tp_is_empty!6751)))

(declare-fun b!1375978 () Bool)

(declare-fun tp!394469 () Bool)

(assert (=> b!1375978 (= e!879293 tp!394469)))

(declare-fun b!1375977 () Bool)

(declare-fun tp!394467 () Bool)

(declare-fun tp!394466 () Bool)

(assert (=> b!1375977 (= e!879293 (and tp!394467 tp!394466))))

(assert (=> b!1374228 (= tp!394285 e!879293)))

(assert (= (and b!1374228 ((_ is ElementMatch!3721) (regOne!7955 (regex!2407 (rule!4164 t1!34))))) b!1375976))

(assert (= (and b!1374228 ((_ is Concat!6219) (regOne!7955 (regex!2407 (rule!4164 t1!34))))) b!1375977))

(assert (= (and b!1374228 ((_ is Star!3721) (regOne!7955 (regex!2407 (rule!4164 t1!34))))) b!1375978))

(assert (= (and b!1374228 ((_ is Union!3721) (regOne!7955 (regex!2407 (rule!4164 t1!34))))) b!1375979))

(declare-fun b!1375983 () Bool)

(declare-fun e!879294 () Bool)

(declare-fun tp!394473 () Bool)

(declare-fun tp!394470 () Bool)

(assert (=> b!1375983 (= e!879294 (and tp!394473 tp!394470))))

(declare-fun b!1375980 () Bool)

(assert (=> b!1375980 (= e!879294 tp_is_empty!6751)))

(declare-fun b!1375982 () Bool)

(declare-fun tp!394474 () Bool)

(assert (=> b!1375982 (= e!879294 tp!394474)))

(declare-fun b!1375981 () Bool)

(declare-fun tp!394472 () Bool)

(declare-fun tp!394471 () Bool)

(assert (=> b!1375981 (= e!879294 (and tp!394472 tp!394471))))

(assert (=> b!1374228 (= tp!394282 e!879294)))

(assert (= (and b!1374228 ((_ is ElementMatch!3721) (regTwo!7955 (regex!2407 (rule!4164 t1!34))))) b!1375980))

(assert (= (and b!1374228 ((_ is Concat!6219) (regTwo!7955 (regex!2407 (rule!4164 t1!34))))) b!1375981))

(assert (= (and b!1374228 ((_ is Star!3721) (regTwo!7955 (regex!2407 (rule!4164 t1!34))))) b!1375982))

(assert (= (and b!1374228 ((_ is Union!3721) (regTwo!7955 (regex!2407 (rule!4164 t1!34))))) b!1375983))

(declare-fun tp!394477 () Bool)

(declare-fun b!1375984 () Bool)

(declare-fun tp!394476 () Bool)

(declare-fun e!879295 () Bool)

(assert (=> b!1375984 (= e!879295 (and (inv!18263 (left!11893 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))))) tp!394477 (inv!18263 (right!12223 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))))) tp!394476))))

(declare-fun b!1375986 () Bool)

(declare-fun e!879296 () Bool)

(declare-fun tp!394475 () Bool)

(assert (=> b!1375986 (= e!879296 tp!394475)))

(declare-fun b!1375985 () Bool)

(assert (=> b!1375985 (= e!879295 (and (inv!18271 (xs!7303 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))))) e!879296))))

(assert (=> b!1374161 (= tp!394245 (and (inv!18263 (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34)))) e!879295))))

(assert (= (and b!1374161 ((_ is Node!4576) (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))))) b!1375984))

(assert (= b!1375985 b!1375986))

(assert (= (and b!1374161 ((_ is Leaf!6976) (c!226060 (dynLambda!6329 (toChars!3537 (transformation!2407 (rule!4164 t2!34))) (value!78232 t2!34))))) b!1375985))

(declare-fun m!1548725 () Bool)

(assert (=> b!1375984 m!1548725))

(declare-fun m!1548727 () Bool)

(assert (=> b!1375984 m!1548727))

(declare-fun m!1548729 () Bool)

(assert (=> b!1375985 m!1548729))

(assert (=> b!1374161 m!1545803))

(declare-fun b!1375990 () Bool)

(declare-fun e!879297 () Bool)

(declare-fun tp!394481 () Bool)

(declare-fun tp!394478 () Bool)

(assert (=> b!1375990 (= e!879297 (and tp!394481 tp!394478))))

(declare-fun b!1375987 () Bool)

(assert (=> b!1375987 (= e!879297 tp_is_empty!6751)))

(declare-fun b!1375989 () Bool)

(declare-fun tp!394482 () Bool)

(assert (=> b!1375989 (= e!879297 tp!394482)))

(declare-fun b!1375988 () Bool)

(declare-fun tp!394480 () Bool)

(declare-fun tp!394479 () Bool)

(assert (=> b!1375988 (= e!879297 (and tp!394480 tp!394479))))

(assert (=> b!1374210 (= tp!394266 e!879297)))

(assert (= (and b!1374210 ((_ is ElementMatch!3721) (regOne!7954 (regex!2407 (h!19306 rules!2550))))) b!1375987))

(assert (= (and b!1374210 ((_ is Concat!6219) (regOne!7954 (regex!2407 (h!19306 rules!2550))))) b!1375988))

(assert (= (and b!1374210 ((_ is Star!3721) (regOne!7954 (regex!2407 (h!19306 rules!2550))))) b!1375989))

(assert (= (and b!1374210 ((_ is Union!3721) (regOne!7954 (regex!2407 (h!19306 rules!2550))))) b!1375990))

(declare-fun b!1375994 () Bool)

(declare-fun e!879298 () Bool)

(declare-fun tp!394486 () Bool)

(declare-fun tp!394483 () Bool)

(assert (=> b!1375994 (= e!879298 (and tp!394486 tp!394483))))

(declare-fun b!1375991 () Bool)

(assert (=> b!1375991 (= e!879298 tp_is_empty!6751)))

(declare-fun b!1375993 () Bool)

(declare-fun tp!394487 () Bool)

(assert (=> b!1375993 (= e!879298 tp!394487)))

(declare-fun b!1375992 () Bool)

(declare-fun tp!394485 () Bool)

(declare-fun tp!394484 () Bool)

(assert (=> b!1375992 (= e!879298 (and tp!394485 tp!394484))))

(assert (=> b!1374210 (= tp!394265 e!879298)))

(assert (= (and b!1374210 ((_ is ElementMatch!3721) (regTwo!7954 (regex!2407 (h!19306 rules!2550))))) b!1375991))

(assert (= (and b!1374210 ((_ is Concat!6219) (regTwo!7954 (regex!2407 (h!19306 rules!2550))))) b!1375992))

(assert (= (and b!1374210 ((_ is Star!3721) (regTwo!7954 (regex!2407 (h!19306 rules!2550))))) b!1375993))

(assert (= (and b!1374210 ((_ is Union!3721) (regTwo!7954 (regex!2407 (h!19306 rules!2550))))) b!1375994))

(declare-fun b!1375998 () Bool)

(declare-fun e!879299 () Bool)

(declare-fun tp!394491 () Bool)

(declare-fun tp!394488 () Bool)

(assert (=> b!1375998 (= e!879299 (and tp!394491 tp!394488))))

(declare-fun b!1375995 () Bool)

(assert (=> b!1375995 (= e!879299 tp_is_empty!6751)))

(declare-fun b!1375997 () Bool)

(declare-fun tp!394492 () Bool)

(assert (=> b!1375997 (= e!879299 tp!394492)))

(declare-fun b!1375996 () Bool)

(declare-fun tp!394490 () Bool)

(declare-fun tp!394489 () Bool)

(assert (=> b!1375996 (= e!879299 (and tp!394490 tp!394489))))

(assert (=> b!1374227 (= tp!394286 e!879299)))

(assert (= (and b!1374227 ((_ is ElementMatch!3721) (reg!4050 (regex!2407 (rule!4164 t1!34))))) b!1375995))

(assert (= (and b!1374227 ((_ is Concat!6219) (reg!4050 (regex!2407 (rule!4164 t1!34))))) b!1375996))

(assert (= (and b!1374227 ((_ is Star!3721) (reg!4050 (regex!2407 (rule!4164 t1!34))))) b!1375997))

(assert (= (and b!1374227 ((_ is Union!3721) (reg!4050 (regex!2407 (rule!4164 t1!34))))) b!1375998))

(declare-fun b_lambda!42359 () Bool)

(assert (= b_lambda!42349 (or b!1373448 b_lambda!42359)))

(assert (=> d!393308 d!392446))

(declare-fun b_lambda!42361 () Bool)

(assert (= b_lambda!42279 (or b!1373448 b_lambda!42361)))

(assert (=> d!392718 d!392442))

(declare-fun b_lambda!42363 () Bool)

(assert (= b_lambda!42265 (or b!1373464 b_lambda!42363)))

(declare-fun bs!336305 () Bool)

(declare-fun d!393416 () Bool)

(assert (= bs!336305 (and d!393416 b!1373464)))

(assert (=> bs!336305 (= (dynLambda!6335 lambda!58378 (h!19306 (t!121642 rules!2550))) (regex!2407 (h!19306 (t!121642 rules!2550))))))

(assert (=> b!1374513 d!393416))

(declare-fun b_lambda!42365 () Bool)

(assert (= b_lambda!42267 (or b!1373448 b_lambda!42365)))

(assert (=> d!392620 d!392456))

(declare-fun b_lambda!42367 () Bool)

(assert (= b_lambda!42347 (or d!392318 b_lambda!42367)))

(declare-fun bs!336306 () Bool)

(declare-fun d!393418 () Bool)

(assert (= bs!336306 (and d!393418 d!392318)))

(assert (=> bs!336306 (= (dynLambda!6341 lambda!58416 (h!19307 (map!3071 rules!2550 lambda!58378))) (not (dynLambda!6341 lambda!58379 (h!19307 (map!3071 rules!2550 lambda!58378)))))))

(declare-fun b_lambda!42389 () Bool)

(assert (=> (not b_lambda!42389) (not bs!336306)))

(assert (=> bs!336306 m!1545705))

(assert (=> b!1375748 d!393418))

(declare-fun b_lambda!42369 () Bool)

(assert (= b_lambda!42307 (or b!1373444 b_lambda!42369)))

(declare-fun bs!336307 () Bool)

(declare-fun d!393420 () Bool)

(assert (= bs!336307 (and d!393420 b!1373444)))

(assert (=> bs!336307 (= (dynLambda!6334 lambda!58380 lt!456968) (= (regex!2407 lt!456968) lt!456134))))

(assert (=> d!393096 d!393420))

(declare-fun b_lambda!42371 () Bool)

(assert (= b_lambda!42301 (or b!1373443 b_lambda!42371)))

(declare-fun bs!336308 () Bool)

(declare-fun d!393422 () Bool)

(assert (= bs!336308 (and d!393422 b!1373443)))

(declare-fun res!619951 () Bool)

(declare-fun e!879300 () Bool)

(assert (=> bs!336308 (=> (not res!619951) (not e!879300))))

(assert (=> bs!336308 (= res!619951 (matchR!1714 lt!456141 res!619616))))

(assert (=> bs!336308 (= (dynLambda!6332 lambda!58377 res!619616) e!879300)))

(declare-fun b!1375999 () Bool)

(assert (=> b!1375999 (= e!879300 (isPrefix!1131 lt!456127 res!619616))))

(assert (= (and bs!336308 res!619951) b!1375999))

(declare-fun m!1548731 () Bool)

(assert (=> bs!336308 m!1548731))

(declare-fun m!1548733 () Bool)

(assert (=> b!1375999 m!1548733))

(assert (=> d!392974 d!393422))

(declare-fun b_lambda!42373 () Bool)

(assert (= b_lambda!42357 (or b!1373464 b_lambda!42373)))

(declare-fun bs!336309 () Bool)

(declare-fun d!393424 () Bool)

(assert (= bs!336309 (and d!393424 b!1373464)))

(declare-fun res!619952 () Bool)

(declare-fun e!879301 () Bool)

(assert (=> bs!336309 (=> (not res!619952) (not e!879301))))

(assert (=> bs!336309 (= res!619952 (validRegex!1621 (h!19307 (t!121643 (map!3071 rules!2550 lambda!58378)))))))

(assert (=> bs!336309 (= (dynLambda!6341 lambda!58379 (h!19307 (t!121643 (map!3071 rules!2550 lambda!58378)))) e!879301)))

(declare-fun b!1376000 () Bool)

(assert (=> b!1376000 (= e!879301 (matchR!1714 (h!19307 (t!121643 (map!3071 rules!2550 lambda!58378))) lt!456122))))

(assert (= (and bs!336309 res!619952) b!1376000))

(declare-fun m!1548735 () Bool)

(assert (=> bs!336309 m!1548735))

(declare-fun m!1548737 () Bool)

(assert (=> b!1376000 m!1548737))

(assert (=> b!1375876 d!393424))

(declare-fun b_lambda!42375 () Bool)

(assert (= b_lambda!42275 (or d!392168 b_lambda!42375)))

(declare-fun bs!336310 () Bool)

(declare-fun d!393426 () Bool)

(assert (= bs!336310 (and d!393426 d!392168)))

(assert (=> bs!336310 (= (dynLambda!6335 lambda!58384 (h!19306 rules!2550)) (regex!2407 (h!19306 rules!2550)))))

(assert (=> b!1374678 d!393426))

(declare-fun b_lambda!42377 () Bool)

(assert (= b_lambda!42351 (or d!392312 b_lambda!42377)))

(declare-fun bs!336311 () Bool)

(declare-fun d!393428 () Bool)

(assert (= bs!336311 (and d!393428 d!392312)))

(assert (=> bs!336311 (= (dynLambda!6341 lambda!58415 (h!19307 lt!456129)) (not (dynLambda!6341 lambda!58379 (h!19307 lt!456129))))))

(declare-fun b_lambda!42391 () Bool)

(assert (=> (not b_lambda!42391) (not bs!336311)))

(declare-fun m!1548739 () Bool)

(assert (=> bs!336311 m!1548739))

(assert (=> b!1375783 d!393428))

(declare-fun b_lambda!42379 () Bool)

(assert (= b_lambda!42305 (or b!1373444 b_lambda!42379)))

(declare-fun bs!336312 () Bool)

(declare-fun d!393430 () Bool)

(assert (= bs!336312 (and d!393430 b!1373444)))

(assert (=> bs!336312 (= (dynLambda!6334 lambda!58380 (h!19306 (t!121642 rules!2550))) (= (regex!2407 (h!19306 (t!121642 rules!2550))) lt!456134))))

(assert (=> b!1375376 d!393430))

(declare-fun b_lambda!42381 () Bool)

(assert (= b_lambda!42353 (or d!392338 b_lambda!42381)))

(declare-fun bs!336313 () Bool)

(declare-fun d!393432 () Bool)

(assert (= bs!336313 (and d!393432 d!392338)))

(assert (=> bs!336313 (= (dynLambda!6334 lambda!58419 (h!19306 rules!2550)) (not (dynLambda!6334 lambda!58380 (h!19306 rules!2550))))))

(declare-fun b_lambda!42393 () Bool)

(assert (=> (not b_lambda!42393) (not bs!336313)))

(assert (=> bs!336313 m!1545271))

(assert (=> b!1375871 d!393432))

(declare-fun b_lambda!42383 () Bool)

(assert (= b_lambda!42261 (or d!392310 b_lambda!42383)))

(declare-fun bs!336314 () Bool)

(declare-fun d!393434 () Bool)

(assert (= bs!336314 (and d!393434 d!392310)))

(assert (=> bs!336314 (= (dynLambda!6341 lambda!58410 (h!19307 lt!456129)) (validRegex!1621 (h!19307 lt!456129)))))

(declare-fun m!1548741 () Bool)

(assert (=> bs!336314 m!1548741))

(assert (=> b!1374505 d!393434))

(declare-fun b_lambda!42385 () Bool)

(assert (= b_lambda!42269 (or b!1373448 b_lambda!42385)))

(declare-fun bs!336315 () Bool)

(declare-fun d!393436 () Bool)

(assert (= bs!336315 (and d!393436 b!1373448)))

(assert (=> bs!336315 (= (dynLambda!6334 lambda!58381 (h!19306 rules!2550)) (ruleValid!594 thiss!19762 (h!19306 rules!2550)))))

(assert (=> bs!336315 m!1546577))

(assert (=> b!1374537 d!393436))

(declare-fun b_lambda!42387 () Bool)

(assert (= b_lambda!42355 (or b!1373464 b_lambda!42387)))

(declare-fun bs!336316 () Bool)

(declare-fun d!393438 () Bool)

(assert (= bs!336316 (and d!393438 b!1373464)))

(declare-fun res!619953 () Bool)

(declare-fun e!879302 () Bool)

(assert (=> bs!336316 (=> (not res!619953) (not e!879302))))

(assert (=> bs!336316 (= res!619953 (validRegex!1621 lt!457160))))

(assert (=> bs!336316 (= (dynLambda!6341 lambda!58379 lt!457160) e!879302)))

(declare-fun b!1376001 () Bool)

(assert (=> b!1376001 (= e!879302 (matchR!1714 lt!457160 lt!456122))))

(assert (= (and bs!336316 res!619953) b!1376001))

(declare-fun m!1548743 () Bool)

(assert (=> bs!336316 m!1548743))

(declare-fun m!1548745 () Bool)

(assert (=> b!1376001 m!1548745))

(assert (=> d!393370 d!393438))

(check-sat (not bm!92326) (not d!392928) (not bm!92324) (not b_lambda!42377) (not b!1375959) (not b!1375667) (not b!1375167) (not b!1375936) (not b_lambda!42373) (not d!393094) (not b!1375824) (not d!393378) (not d!392950) (not b!1375821) (not b_next!33969) (not d!393250) (not b!1375146) (not b!1375229) (not b!1375074) (not b!1374578) (not b!1374742) (not d!393228) (not b!1375791) (not b!1375814) (not bs!336316) (not b!1375779) (not d!392942) (not b!1375689) (not b!1375737) (not b!1375935) (not d!393038) (not b!1375649) (not b!1375879) (not b!1375891) (not b!1375820) (not b!1375473) (not b!1374729) (not d!392946) (not b!1375885) (not d!392750) (not b!1374575) (not b!1375151) (not b!1375492) (not d!393380) (not b!1375763) (not b!1375672) (not b!1375943) (not bm!92288) (not b!1375671) (not b_lambda!42245) (not b!1375643) (not d!392958) (not b!1375950) (not b!1375638) (not b!1375278) (not b!1374781) (not b_lambda!42233) (not b_lambda!42235) (not bm!92282) (not bm!92344) (not d!393066) (not b!1375424) (not d!393242) (not b_lambda!42363) (not b!1375370) (not d!392940) (not b!1375978) (not d!393354) (not b!1375882) (not b!1374627) (not b!1375996) (not b!1375981) (not b!1375946) (not b!1375917) (not bm!92333) (not b!1375898) (not b!1375157) (not b!1375375) (not b_lambda!42369) (not b!1375974) (not b!1375852) (not b!1375660) (not b!1375628) (not b!1375872) (not b!1375886) (not d!393050) (not d!393334) (not b_next!33971) (not d!393298) (not d!393176) (not b!1375497) (not d!393294) (not b!1375792) (not d!393188) (not b!1375896) (not b!1374606) (not bm!92339) (not b!1375720) (not d!393226) (not b!1375990) (not d!393096) (not d!392650) (not b!1375901) (not d!392728) (not b!1375830) (not b!1375862) (not bm!92330) (not b!1375875) (not d!392656) (not b_lambda!42361) (not tb!72401) (not b!1375129) (not b!1375723) (not b_lambda!42371) (not b!1375066) (not b!1375989) (not b!1375933) (not b!1375045) (not b!1375965) (not d!393232) (not b_lambda!42281) (not bm!92311) (not d!393360) (not b!1374577) (not d!393166) (not b!1375986) (not b!1375973) (not b!1375725) (not b!1375061) (not d!393064) (not b_lambda!42383) (not d!393236) (not b_lambda!42391) (not b!1374751) (not b!1375909) (not b_lambda!42243) (not d!393372) (not b!1375856) (not b!1375690) (not b_lambda!42359) (not d!393386) (not b!1375513) (not bm!92284) (not bs!336314) (not b!1374667) (not b!1375998) (not b!1375984) (not b!1375833) (not d!393170) (not b!1375966) (not b!1375868) (not b!1375666) (not b_lambda!42385) (not tb!72393) (not d!392590) (not b!1375850) b_and!92129 (not b_lambda!42381) (not b!1375970) (not b!1375887) (not d!393324) (not b!1375902) (not b!1375975) (not d!392632) (not d!393292) (not b!1375741) (not b!1375985) (not d!392690) (not b!1375731) (not b!1375944) (not b!1375206) (not b!1375653) (not b!1375256) (not b!1374746) (not b!1375932) (not d!392976) (not bm!92343) (not b!1375878) (not b!1375877) (not b!1375906) (not b!1374745) (not b!1375210) (not d!393278) (not b!1375864) (not d!393200) (not b!1375849) (not b!1374601) (not b!1375261) (not b!1375517) (not d!393356) (not b!1375934) (not b!1375482) b_and!92165 (not b!1375733) (not b!1375795) (not b!1375286) (not b!1375857) (not b!1375955) (not d!393034) (not bs!336315) (not b_lambda!42387) (not b!1375214) (not d!393370) (not b!1375952) (not d!393062) (not b!1375510) (not b!1375918) (not b!1374576) (not d!393260) (not b!1374513) (not b!1375657) (not b_lambda!42277) (not d!392688) b_and!92133 (not b!1375134) (not b!1375983) (not b!1375919) (not b!1375264) (not b!1375255) (not b_next!33965) (not b!1375050) (not bm!92320) (not d!392744) (not b!1374538) (not b!1374605) (not b!1375962) (not b!1374672) (not b!1375136) (not b!1375793) (not b!1375967) (not d!393262) (not b!1374678) (not d!393282) (not d!393256) tp_is_empty!6751 (not bm!92328) (not b!1375969) (not b!1375251) (not d!393336) (not b!1375373) (not b!1375692) (not b!1375126) (not d!392966) (not d!392698) (not d!393238) (not b!1375211) (not b!1374626) (not b!1374669) (not b!1375527) (not b!1375383) (not b!1375254) (not b!1375664) (not b!1375883) (not b!1375374) (not b!1375778) (not d!392678) (not d!392930) (not b!1375651) (not b!1375082) (not b!1375869) (not b!1375999) (not d!393010) (not b!1375438) (not b!1375993) (not b!1375789) (not b!1375819) (not b!1375120) (not b!1375629) (not d!393348) (not b!1374730) (not b_lambda!42227) (not d!393234) (not b!1375900) (not d!392724) (not b_next!33967) (not b!1375750) (not b!1375467) (not b!1375159) (not d!392676) (not b!1375863) (not b_lambda!42237) (not b!1375921) (not b!1375287) (not b!1375977) (not b!1375076) (not b!1375243) (not d!393364) (not b!1375048) (not bs!336308) (not b!1375646) (not b!1375776) (not b_lambda!42273) (not b!1375951) (not b!1375181) b_and!92149 (not bm!92301) (not b!1375693) (not b!1375253) (not b!1375133) (not b!1375633) (not bm!92337) (not b!1375938) (not d!392948) (not b!1375881) (not d!392760) (not b!1375782) (not b!1375081) (not d!393040) (not b!1375786) (not b!1375890) (not b!1375642) (not bm!92323) (not b!1375288) (not b!1374506) (not b!1374666) (not b!1375822) (not b!1375258) (not b!1375960) (not b!1375654) b_and!92131 (not d!392746) (not d!393352) (not b!1375997) (not bm!92341) (not b!1375355) (not b!1375292) (not d!393272) (not d!392730) (not d!393350) (not b!1375939) (not b!1375818) (not b!1375905) (not b_next!33963) (not b_lambda!42225) (not b!1375639) (not b!1375757) (not d!392960) (not bm!92331) (not b!1374607) (not b!1375747) (not b!1375625) (not b!1375892) (not b!1375495) (not b!1375208) (not d!393280) (not b!1375086) (not b!1375859) (not b!1375860) (not d!393012) (not bm!92345) (not d!392994) (not b!1375703) (not b!1375948) (not bm!92278) (not b!1375848) (not d!393412) (not b!1375655) (not b!1375911) (not b!1375165) (not b_next!33989) (not b!1375658) (not d!392968) (not d!393190) (not tb!72377) (not b!1375461) (not b!1375128) (not b_lambda!42241) (not b!1375884) (not bm!92325) (not b!1375784) (not d!392664) (not b!1375699) (not d!393048) (not b_lambda!42375) (not b!1375182) (not b!1375652) (not b!1375755) (not d!393406) b_and!92147 (not d!393052) b_and!92127 (not bm!92246) (not b!1375385) (not b!1375994) (not b!1374639) (not d!393346) (not b!1375047) (not d!392692) b_and!92163 (not b!1375053) (not d!393252) (not b!1375632) (not b_next!33981) (not b!1375231) (not b!1375940) (not b!1375711) (not b!1375979) (not d!393274) (not b!1375988) (not b_lambda!42221) (not bm!92253) (not b!1375078) (not b!1375829) (not d!393318) (not b!1375700) (not b!1375207) (not d!393132) (not d!393070) (not d!393044) (not b!1375765) (not b!1375971) (not b!1375275) (not d!393124) (not d!393230) (not d!393270) (not d!393244) (not bm!92346) (not b!1375922) (not b!1374603) (not d!392754) (not b_next!33979) (not bm!92280) (not d!393344) (not bm!92322) (not d!393410) (not b!1375815) (not b!1375982) (not bm!92287) (not d!393036) (not b!1375637) (not b_lambda!42379) (not d!392952) (not d!393290) (not b!1375080) (not b!1375865) (not d!393174) (not b!1374802) (not b_lambda!42367) (not b!1375992) (not b!1375889) (not d!392720) (not d!393268) (not b_lambda!42229) (not b_lambda!42271) (not b!1375085) (not bm!92268) (not b!1375751) (not d!393178) (not b!1375923) (not d!393414) (not d!393358) (not b!1375636) (not b!1375662) (not b!1375834) (not b!1375626) (not d!393296) (not d!392934) (not b!1375650) (not b!1375947) (not b!1374803) (not b!1375828) (not d!393248) (not d!393144) b_and!92145 (not d!392668) (not d!393362) (not b!1374610) (not b!1375730) (not b!1376000) (not b!1373545) (not b!1374804) (not d!393404) (not b!1375216) (not b!1375787) (not b!1375530) (not b!1375280) (not d!393332) (not d!392992) (not b!1375498) (not b!1375904) (not b!1375870) (not d!393128) (not d!393408) (not b!1374668) (not b_lambda!42365) (not b!1374580) (not b!1374752) (not b!1374611) (not b!1374674) (not b!1375284) (not b!1375396) (not b!1375218) (not d!393258) (not b!1375647) (not b_lambda!42239) (not b!1375855) (not b!1375059) (not d!393264) (not b_lambda!42231) (not d!393304) (not b!1374737) (not b!1375686) (not b!1374579) (not b!1375516) (not bm!92334) (not b!1374161) (not b_lambda!42223) (not d!393392) (not b!1374680) (not bm!92302) (not b!1375512) (not b!1375262) (not b!1375704) (not d!392658) (not d!393390) (not b!1375668) (not b!1375698) (not b!1375213) (not b!1375529) (not d!392762) (not b!1374671) (not b!1376001) (not d!393068) (not b!1375899) (not d!393160) b_and!92143 (not b!1375913) (not bm!92319) (not b!1374744) (not b!1375493) (not b!1374782) (not b!1375155) (not b!1375956) (not d!393184) (not b!1375245) (not d!392748) (not b!1375958) (not b!1375736) (not b!1375826) (not b!1375696) (not b!1375509) (not b!1375907) (not b!1375528) (not d!392612) (not b!1375895) (not bm!92338) (not b!1375749) (not b!1375740) (not b!1375942) (not b!1375817) (not b_next!33987) (not b!1375854) (not d!392990) (not b!1375961) (not d!393014) (not d!393154) (not d!392752) (not b!1375867) (not b!1375954) (not b!1375767) (not b!1375753) (not tb!72385) (not b!1375291) (not b!1375518) (not d!392596) (not b!1374783) (not b!1375135) (not b!1375180) (not b_lambda!42389) (not d!393306) (not b!1375515) (not bs!336309) (not b!1375644) (not bm!92335) (not b!1375735) (not b!1375721) (not b_next!33973) (not b!1375511) (not d!393366) (not b!1375648) (not b!1375853) (not b_lambda!42393) (not b!1375276) (not d!392988))
(check-sat (not b_next!33969) (not b_next!33971) b_and!92129 b_and!92165 b_and!92133 (not b_next!33965) (not b_next!33967) b_and!92149 (not b_next!33989) (not b_next!33979) b_and!92145 b_and!92143 (not b_next!33987) (not b_next!33973) b_and!92131 (not b_next!33963) b_and!92147 b_and!92127 b_and!92163 (not b_next!33981))
