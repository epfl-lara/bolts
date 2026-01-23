; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362184 () Bool)

(assert start!362184)

(declare-fun b!3862192 () Bool)

(declare-fun b_free!103909 () Bool)

(declare-fun b_next!104613 () Bool)

(assert (=> b!3862192 (= b_free!103909 (not b_next!104613))))

(declare-fun tp!1170849 () Bool)

(declare-fun b_and!289179 () Bool)

(assert (=> b!3862192 (= tp!1170849 b_and!289179)))

(declare-fun b_free!103911 () Bool)

(declare-fun b_next!104615 () Bool)

(assert (=> b!3862192 (= b_free!103911 (not b_next!104615))))

(declare-fun tp!1170846 () Bool)

(declare-fun b_and!289181 () Bool)

(assert (=> b!3862192 (= tp!1170846 b_and!289181)))

(declare-fun b!3862214 () Bool)

(declare-fun b_free!103913 () Bool)

(declare-fun b_next!104617 () Bool)

(assert (=> b!3862214 (= b_free!103913 (not b_next!104617))))

(declare-fun tp!1170853 () Bool)

(declare-fun b_and!289183 () Bool)

(assert (=> b!3862214 (= tp!1170853 b_and!289183)))

(declare-fun b_free!103915 () Bool)

(declare-fun b_next!104619 () Bool)

(assert (=> b!3862214 (= b_free!103915 (not b_next!104619))))

(declare-fun tp!1170858 () Bool)

(declare-fun b_and!289185 () Bool)

(assert (=> b!3862214 (= tp!1170858 b_and!289185)))

(declare-fun b!3862219 () Bool)

(declare-fun b_free!103917 () Bool)

(declare-fun b_next!104621 () Bool)

(assert (=> b!3862219 (= b_free!103917 (not b_next!104621))))

(declare-fun tp!1170842 () Bool)

(declare-fun b_and!289187 () Bool)

(assert (=> b!3862219 (= tp!1170842 b_and!289187)))

(declare-fun b_free!103919 () Bool)

(declare-fun b_next!104623 () Bool)

(assert (=> b!3862219 (= b_free!103919 (not b_next!104623))))

(declare-fun tp!1170852 () Bool)

(declare-fun b_and!289189 () Bool)

(assert (=> b!3862219 (= tp!1170852 b_and!289189)))

(declare-fun res!1563957 () Bool)

(declare-fun e!2387851 () Bool)

(assert (=> start!362184 (=> (not res!1563957) (not e!2387851))))

(declare-datatypes ((LexerInterface!5931 0))(
  ( (LexerInterfaceExt!5928 (__x!25361 Int)) (Lexer!5929) )
))
(declare-fun thiss!20629 () LexerInterface!5931)

(get-info :version)

(assert (=> start!362184 (= res!1563957 ((_ is Lexer!5929) thiss!20629))))

(assert (=> start!362184 e!2387851))

(declare-fun e!2387863 () Bool)

(assert (=> start!362184 e!2387863))

(assert (=> start!362184 true))

(declare-fun e!2387850 () Bool)

(assert (=> start!362184 e!2387850))

(declare-fun e!2387862 () Bool)

(assert (=> start!362184 e!2387862))

(declare-fun e!2387864 () Bool)

(assert (=> start!362184 e!2387864))

(declare-fun e!2387848 () Bool)

(assert (=> start!362184 e!2387848))

(declare-fun e!2387858 () Bool)

(assert (=> start!362184 e!2387858))

(declare-fun b!3862190 () Bool)

(declare-fun tp_is_empty!19465 () Bool)

(declare-fun tp!1170847 () Bool)

(assert (=> b!3862190 (= e!2387863 (and tp_is_empty!19465 tp!1170847))))

(declare-fun b!3862191 () Bool)

(declare-fun e!2387856 () Bool)

(declare-fun e!2387868 () Bool)

(assert (=> b!3862191 (= e!2387856 e!2387868)))

(declare-fun res!1563951 () Bool)

(assert (=> b!3862191 (=> res!1563951 e!2387868)))

(declare-datatypes ((C!22680 0))(
  ( (C!22681 (val!13434 Int)) )
))
(declare-datatypes ((List!41086 0))(
  ( (Nil!40962) (Cons!40962 (h!46382 C!22680) (t!313577 List!41086)) )
))
(declare-datatypes ((IArray!25111 0))(
  ( (IArray!25112 (innerList!12613 List!41086)) )
))
(declare-datatypes ((Conc!12553 0))(
  ( (Node!12553 (left!31538 Conc!12553) (right!31868 Conc!12553) (csize!25336 Int) (cheight!12764 Int)) (Leaf!19431 (xs!15859 IArray!25111) (csize!25337 Int)) (Empty!12553) )
))
(declare-datatypes ((BalanceConc!24700 0))(
  ( (BalanceConc!24701 (c!672336 Conc!12553)) )
))
(declare-datatypes ((List!41087 0))(
  ( (Nil!40963) (Cons!40963 (h!46383 (_ BitVec 16)) (t!313578 List!41087)) )
))
(declare-datatypes ((TokenValue!6572 0))(
  ( (FloatLiteralValue!13144 (text!46449 List!41087)) (TokenValueExt!6571 (__x!25362 Int)) (Broken!32860 (value!201355 List!41087)) (Object!6695) (End!6572) (Def!6572) (Underscore!6572) (Match!6572) (Else!6572) (Error!6572) (Case!6572) (If!6572) (Extends!6572) (Abstract!6572) (Class!6572) (Val!6572) (DelimiterValue!13144 (del!6632 List!41087)) (KeywordValue!6578 (value!201356 List!41087)) (CommentValue!13144 (value!201357 List!41087)) (WhitespaceValue!13144 (value!201358 List!41087)) (IndentationValue!6572 (value!201359 List!41087)) (String!46577) (Int32!6572) (Broken!32861 (value!201360 List!41087)) (Boolean!6573) (Unit!58616) (OperatorValue!6575 (op!6632 List!41087)) (IdentifierValue!13144 (value!201361 List!41087)) (IdentifierValue!13145 (value!201362 List!41087)) (WhitespaceValue!13145 (value!201363 List!41087)) (True!13144) (False!13144) (Broken!32862 (value!201364 List!41087)) (Broken!32863 (value!201365 List!41087)) (True!13145) (RightBrace!6572) (RightBracket!6572) (Colon!6572) (Null!6572) (Comma!6572) (LeftBracket!6572) (False!13145) (LeftBrace!6572) (ImaginaryLiteralValue!6572 (text!46450 List!41087)) (StringLiteralValue!19716 (value!201366 List!41087)) (EOFValue!6572 (value!201367 List!41087)) (IdentValue!6572 (value!201368 List!41087)) (DelimiterValue!13145 (value!201369 List!41087)) (DedentValue!6572 (value!201370 List!41087)) (NewLineValue!6572 (value!201371 List!41087)) (IntegerValue!19716 (value!201372 (_ BitVec 32)) (text!46451 List!41087)) (IntegerValue!19717 (value!201373 Int) (text!46452 List!41087)) (Times!6572) (Or!6572) (Equal!6572) (Minus!6572) (Broken!32864 (value!201374 List!41087)) (And!6572) (Div!6572) (LessEqual!6572) (Mod!6572) (Concat!17819) (Not!6572) (Plus!6572) (SpaceValue!6572 (value!201375 List!41087)) (IntegerValue!19718 (value!201376 Int) (text!46453 List!41087)) (StringLiteralValue!19717 (text!46454 List!41087)) (FloatLiteralValue!13145 (text!46455 List!41087)) (BytesLiteralValue!6572 (value!201377 List!41087)) (CommentValue!13145 (value!201378 List!41087)) (StringLiteralValue!19718 (value!201379 List!41087)) (ErrorTokenValue!6572 (msg!6633 List!41087)) )
))
(declare-datatypes ((String!46578 0))(
  ( (String!46579 (value!201380 String)) )
))
(declare-datatypes ((Regex!11247 0))(
  ( (ElementMatch!11247 (c!672337 C!22680)) (Concat!17820 (regOne!23006 Regex!11247) (regTwo!23006 Regex!11247)) (EmptyExpr!11247) (Star!11247 (reg!11576 Regex!11247)) (EmptyLang!11247) (Union!11247 (regOne!23007 Regex!11247) (regTwo!23007 Regex!11247)) )
))
(declare-datatypes ((TokenValueInjection!12572 0))(
  ( (TokenValueInjection!12573 (toValue!8770 Int) (toChars!8629 Int)) )
))
(declare-datatypes ((Rule!12484 0))(
  ( (Rule!12485 (regex!6342 Regex!11247) (tag!7202 String!46578) (isSeparator!6342 Bool) (transformation!6342 TokenValueInjection!12572)) )
))
(declare-datatypes ((Token!11822 0))(
  ( (Token!11823 (value!201381 TokenValue!6572) (rule!9214 Rule!12484) (size!30805 Int) (originalCharacters!6942 List!41086)) )
))
(declare-datatypes ((tuple2!40170 0))(
  ( (tuple2!40171 (_1!23219 Token!11822) (_2!23219 List!41086)) )
))
(declare-fun lt!1342179 () tuple2!40170)

(declare-datatypes ((List!41088 0))(
  ( (Nil!40964) (Cons!40964 (h!46384 Token!11822) (t!313579 List!41088)) )
))
(declare-fun prefixTokens!80 () List!41088)

(declare-fun head!8150 (List!41088) Token!11822)

(assert (=> b!3862191 (= res!1563951 (not (= (_1!23219 lt!1342179) (head!8150 prefixTokens!80))))))

(declare-datatypes ((Option!8760 0))(
  ( (None!8759) (Some!8759 (v!39057 tuple2!40170)) )
))
(declare-fun lt!1342191 () Option!8760)

(declare-fun get!13553 (Option!8760) tuple2!40170)

(assert (=> b!3862191 (= lt!1342179 (get!13553 lt!1342191))))

(declare-fun e!2387857 () Bool)

(assert (=> b!3862192 (= e!2387857 (and tp!1170849 tp!1170846))))

(declare-fun e!2387841 () Bool)

(declare-fun e!2387861 () Bool)

(declare-fun b!3862193 () Bool)

(declare-fun tp!1170844 () Bool)

(declare-fun inv!21 (TokenValue!6572) Bool)

(assert (=> b!3862193 (= e!2387861 (and (inv!21 (value!201381 (h!46384 prefixTokens!80))) e!2387841 tp!1170844))))

(declare-fun b!3862194 () Bool)

(declare-fun e!2387852 () Bool)

(declare-fun e!2387842 () Bool)

(assert (=> b!3862194 (= e!2387852 e!2387842)))

(declare-fun res!1563958 () Bool)

(assert (=> b!3862194 (=> (not res!1563958) (not e!2387842))))

(declare-fun suffix!1176 () List!41086)

(declare-datatypes ((List!41089 0))(
  ( (Nil!40965) (Cons!40965 (h!46385 Rule!12484) (t!313580 List!41089)) )
))
(declare-fun rules!2768 () List!41089)

(declare-datatypes ((tuple2!40172 0))(
  ( (tuple2!40173 (_1!23220 List!41088) (_2!23220 List!41086)) )
))
(declare-fun lt!1342187 () tuple2!40172)

(declare-fun lexList!1699 (LexerInterface!5931 List!41089 List!41086) tuple2!40172)

(assert (=> b!3862194 (= res!1563958 (= (lexList!1699 thiss!20629 rules!2768 suffix!1176) lt!1342187))))

(declare-fun suffixTokens!72 () List!41088)

(declare-fun suffixResult!91 () List!41086)

(assert (=> b!3862194 (= lt!1342187 (tuple2!40173 suffixTokens!72 suffixResult!91))))

(declare-fun b!3862195 () Bool)

(declare-fun e!2387849 () Bool)

(assert (=> b!3862195 e!2387849))

(declare-fun res!1563962 () Bool)

(assert (=> b!3862195 (=> (not res!1563962) (not e!2387849))))

(declare-fun lt!1342176 () List!41088)

(declare-fun call!282558 () tuple2!40172)

(declare-fun ++!10441 (List!41088 List!41088) List!41088)

(assert (=> b!3862195 (= res!1563962 (not (= call!282558 (tuple2!40173 (++!10441 lt!1342176 suffixTokens!72) suffixResult!91))))))

(declare-datatypes ((Unit!58617 0))(
  ( (Unit!58618) )
))
(declare-fun lt!1342175 () Unit!58617)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!2 (LexerInterface!5931 List!41089 List!41086 List!41086 List!41088 List!41086 List!41088) Unit!58617)

(assert (=> b!3862195 (= lt!1342175 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!2 thiss!20629 rules!2768 suffix!1176 (_2!23219 lt!1342179) suffixTokens!72 suffixResult!91 lt!1342176))))

(declare-fun e!2387866 () Unit!58617)

(declare-fun Unit!58619 () Unit!58617)

(assert (=> b!3862195 (= e!2387866 Unit!58619)))

(declare-fun tp!1170850 () Bool)

(declare-fun b!3862196 () Bool)

(declare-fun e!2387859 () Bool)

(declare-fun inv!55122 (String!46578) Bool)

(declare-fun inv!55125 (TokenValueInjection!12572) Bool)

(assert (=> b!3862196 (= e!2387859 (and tp!1170850 (inv!55122 (tag!7202 (h!46385 rules!2768))) (inv!55125 (transformation!6342 (h!46385 rules!2768))) e!2387857))))

(declare-fun b!3862197 () Bool)

(declare-fun res!1563949 () Bool)

(assert (=> b!3862197 (=> (not res!1563949) (not e!2387851))))

(declare-fun prefix!426 () List!41086)

(declare-fun isEmpty!24272 (List!41086) Bool)

(assert (=> b!3862197 (= res!1563949 (not (isEmpty!24272 prefix!426)))))

(declare-fun b!3862198 () Bool)

(declare-fun e!2387845 () Bool)

(assert (=> b!3862198 (= e!2387845 e!2387856)))

(declare-fun res!1563954 () Bool)

(assert (=> b!3862198 (=> res!1563954 e!2387856)))

(declare-fun lt!1342183 () List!41086)

(declare-fun matchR!5394 (Regex!11247 List!41086) Bool)

(assert (=> b!3862198 (= res!1563954 (not (matchR!5394 (regex!6342 (rule!9214 (_1!23219 (v!39057 lt!1342191)))) lt!1342183)))))

(declare-fun lt!1342166 () Int)

(declare-fun lt!1342170 () TokenValue!6572)

(declare-fun lt!1342180 () List!41086)

(declare-fun maxPrefixOneRule!2317 (LexerInterface!5931 Rule!12484 List!41086) Option!8760)

(assert (=> b!3862198 (= (maxPrefixOneRule!2317 thiss!20629 (rule!9214 (_1!23219 (v!39057 lt!1342191))) lt!1342180) (Some!8759 (tuple2!40171 (Token!11823 lt!1342170 (rule!9214 (_1!23219 (v!39057 lt!1342191))) lt!1342166 lt!1342183) (_2!23219 (v!39057 lt!1342191)))))))

(declare-fun lt!1342171 () Unit!58617)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1215 (LexerInterface!5931 List!41089 List!41086 List!41086 List!41086 Rule!12484) Unit!58617)

(assert (=> b!3862198 (= lt!1342171 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1215 thiss!20629 rules!2768 lt!1342183 lt!1342180 (_2!23219 (v!39057 lt!1342191)) (rule!9214 (_1!23219 (v!39057 lt!1342191)))))))

(declare-fun bm!282553 () Bool)

(assert (=> bm!282553 (= call!282558 (lexList!1699 thiss!20629 rules!2768 (_2!23219 lt!1342179)))))

(declare-fun b!3862199 () Bool)

(declare-fun e!2387871 () Bool)

(declare-fun e!2387854 () Bool)

(assert (=> b!3862199 (= e!2387871 e!2387854)))

(declare-fun res!1563963 () Bool)

(assert (=> b!3862199 (=> res!1563963 e!2387854)))

(declare-fun lt!1342174 () Int)

(declare-fun lt!1342189 () Int)

(assert (=> b!3862199 (= res!1563963 (not (= (+ lt!1342166 lt!1342189) lt!1342174)))))

(declare-fun size!30806 (List!41086) Int)

(assert (=> b!3862199 (= lt!1342174 (size!30806 lt!1342180))))

(declare-fun e!2387855 () Bool)

(declare-fun tp!1170843 () Bool)

(declare-fun b!3862200 () Bool)

(assert (=> b!3862200 (= e!2387841 (and tp!1170843 (inv!55122 (tag!7202 (rule!9214 (h!46384 prefixTokens!80)))) (inv!55125 (transformation!6342 (rule!9214 (h!46384 prefixTokens!80)))) e!2387855))))

(declare-fun b!3862201 () Bool)

(declare-fun res!1563965 () Bool)

(declare-fun e!2387867 () Bool)

(assert (=> b!3862201 (=> res!1563965 e!2387867)))

(declare-fun lt!1342188 () tuple2!40172)

(assert (=> b!3862201 (= res!1563965 (or (not (= lt!1342188 (tuple2!40173 (_1!23220 lt!1342188) (_2!23220 lt!1342188)))) (= (_2!23219 (v!39057 lt!1342191)) suffix!1176)))))

(declare-fun b!3862202 () Bool)

(declare-fun res!1563950 () Bool)

(assert (=> b!3862202 (=> (not res!1563950) (not e!2387851))))

(declare-fun isEmpty!24273 (List!41089) Bool)

(assert (=> b!3862202 (= res!1563950 (not (isEmpty!24273 rules!2768)))))

(declare-fun b!3862203 () Bool)

(declare-fun e!2387865 () Unit!58617)

(declare-fun Unit!58620 () Unit!58617)

(assert (=> b!3862203 (= e!2387865 Unit!58620)))

(declare-fun b!3862204 () Bool)

(assert (=> b!3862204 (= e!2387851 e!2387852)))

(declare-fun res!1563953 () Bool)

(assert (=> b!3862204 (=> (not res!1563953) (not e!2387852))))

(declare-fun lt!1342167 () tuple2!40172)

(declare-fun lt!1342177 () List!41088)

(assert (=> b!3862204 (= res!1563953 (= lt!1342167 (tuple2!40173 lt!1342177 suffixResult!91)))))

(assert (=> b!3862204 (= lt!1342167 (lexList!1699 thiss!20629 rules!2768 lt!1342180))))

(assert (=> b!3862204 (= lt!1342177 (++!10441 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10442 (List!41086 List!41086) List!41086)

(assert (=> b!3862204 (= lt!1342180 (++!10442 prefix!426 suffix!1176))))

(declare-fun b!3862205 () Bool)

(declare-fun e!2387853 () Bool)

(assert (=> b!3862205 e!2387853))

(declare-fun res!1563947 () Bool)

(assert (=> b!3862205 (=> (not res!1563947) (not e!2387853))))

(assert (=> b!3862205 (= res!1563947 (not (= call!282558 lt!1342187)))))

(declare-fun lt!1342186 () Unit!58617)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!2 (LexerInterface!5931 List!41089 List!41086 List!41086 List!41088 List!41086) Unit!58617)

(assert (=> b!3862205 (= lt!1342186 (lemmaLexWithSmallerInputCannotProduceSameResults!2 thiss!20629 rules!2768 suffix!1176 (_2!23219 lt!1342179) suffixTokens!72 suffixResult!91))))

(assert (=> b!3862205 (= (_2!23219 (v!39057 lt!1342191)) (_2!23219 lt!1342179))))

(declare-fun lt!1342181 () Unit!58617)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!426 (List!41086 List!41086 List!41086 List!41086) Unit!58617)

(assert (=> b!3862205 (= lt!1342181 (lemmaConcatSameAndSameSizesThenSameLists!426 lt!1342183 (_2!23219 (v!39057 lt!1342191)) lt!1342183 (_2!23219 lt!1342179)))))

(declare-fun Unit!58621 () Unit!58617)

(assert (=> b!3862205 (= e!2387866 Unit!58621)))

(declare-fun b!3862206 () Bool)

(assert (=> b!3862206 (= e!2387867 e!2387871)))

(declare-fun res!1563955 () Bool)

(assert (=> b!3862206 (=> res!1563955 e!2387871)))

(declare-fun lt!1342182 () Int)

(assert (=> b!3862206 (= res!1563955 (>= lt!1342189 lt!1342182))))

(assert (=> b!3862206 (= lt!1342182 (size!30806 suffix!1176))))

(assert (=> b!3862206 (= lt!1342189 (size!30806 (_2!23219 (v!39057 lt!1342191))))))

(declare-fun tp!1170851 () Bool)

(declare-fun b!3862207 () Bool)

(declare-fun inv!55126 (Token!11822) Bool)

(assert (=> b!3862207 (= e!2387864 (and (inv!55126 (h!46384 prefixTokens!80)) e!2387861 tp!1170851))))

(declare-fun b!3862208 () Bool)

(declare-fun e!2387860 () Bool)

(assert (=> b!3862208 (= e!2387842 e!2387860)))

(declare-fun res!1563960 () Bool)

(assert (=> b!3862208 (=> (not res!1563960) (not e!2387860))))

(assert (=> b!3862208 (= res!1563960 ((_ is Some!8759) lt!1342191))))

(declare-fun maxPrefix!3235 (LexerInterface!5931 List!41089 List!41086) Option!8760)

(assert (=> b!3862208 (= lt!1342191 (maxPrefix!3235 thiss!20629 rules!2768 lt!1342180))))

(declare-fun b!3862209 () Bool)

(declare-fun tp!1170855 () Bool)

(assert (=> b!3862209 (= e!2387858 (and tp_is_empty!19465 tp!1170855))))

(declare-fun b!3862210 () Bool)

(assert (=> b!3862210 (= e!2387860 (not e!2387867))))

(declare-fun res!1563964 () Bool)

(assert (=> b!3862210 (=> res!1563964 e!2387867)))

(declare-fun lt!1342184 () List!41086)

(assert (=> b!3862210 (= res!1563964 (not (= lt!1342184 lt!1342180)))))

(assert (=> b!3862210 (= lt!1342188 (lexList!1699 thiss!20629 rules!2768 (_2!23219 (v!39057 lt!1342191))))))

(declare-fun lt!1342168 () List!41086)

(assert (=> b!3862210 (and (= (size!30805 (_1!23219 (v!39057 lt!1342191))) lt!1342166) (= (originalCharacters!6942 (_1!23219 (v!39057 lt!1342191))) lt!1342183) (= (v!39057 lt!1342191) (tuple2!40171 (Token!11823 lt!1342170 (rule!9214 (_1!23219 (v!39057 lt!1342191))) lt!1342166 lt!1342183) lt!1342168)))))

(assert (=> b!3862210 (= lt!1342166 (size!30806 lt!1342183))))

(declare-fun e!2387846 () Bool)

(assert (=> b!3862210 e!2387846))

(declare-fun res!1563952 () Bool)

(assert (=> b!3862210 (=> (not res!1563952) (not e!2387846))))

(assert (=> b!3862210 (= res!1563952 (= (value!201381 (_1!23219 (v!39057 lt!1342191))) lt!1342170))))

(declare-fun apply!9585 (TokenValueInjection!12572 BalanceConc!24700) TokenValue!6572)

(declare-fun seqFromList!4613 (List!41086) BalanceConc!24700)

(assert (=> b!3862210 (= lt!1342170 (apply!9585 (transformation!6342 (rule!9214 (_1!23219 (v!39057 lt!1342191)))) (seqFromList!4613 lt!1342183)))))

(assert (=> b!3862210 (= (_2!23219 (v!39057 lt!1342191)) lt!1342168)))

(declare-fun lt!1342178 () Unit!58617)

(declare-fun lemmaSamePrefixThenSameSuffix!1662 (List!41086 List!41086 List!41086 List!41086 List!41086) Unit!58617)

(assert (=> b!3862210 (= lt!1342178 (lemmaSamePrefixThenSameSuffix!1662 lt!1342183 (_2!23219 (v!39057 lt!1342191)) lt!1342183 lt!1342168 lt!1342180))))

(declare-fun getSuffix!1896 (List!41086 List!41086) List!41086)

(assert (=> b!3862210 (= lt!1342168 (getSuffix!1896 lt!1342180 lt!1342183))))

(declare-fun isPrefix!3441 (List!41086 List!41086) Bool)

(assert (=> b!3862210 (isPrefix!3441 lt!1342183 lt!1342184)))

(assert (=> b!3862210 (= lt!1342184 (++!10442 lt!1342183 (_2!23219 (v!39057 lt!1342191))))))

(declare-fun lt!1342169 () Unit!58617)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2304 (List!41086 List!41086) Unit!58617)

(assert (=> b!3862210 (= lt!1342169 (lemmaConcatTwoListThenFirstIsPrefix!2304 lt!1342183 (_2!23219 (v!39057 lt!1342191))))))

(declare-fun list!15246 (BalanceConc!24700) List!41086)

(declare-fun charsOf!4170 (Token!11822) BalanceConc!24700)

(assert (=> b!3862210 (= lt!1342183 (list!15246 (charsOf!4170 (_1!23219 (v!39057 lt!1342191)))))))

(declare-fun ruleValid!2294 (LexerInterface!5931 Rule!12484) Bool)

(assert (=> b!3862210 (ruleValid!2294 thiss!20629 (rule!9214 (_1!23219 (v!39057 lt!1342191))))))

(declare-fun lt!1342190 () Unit!58617)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1374 (LexerInterface!5931 Rule!12484 List!41089) Unit!58617)

(assert (=> b!3862210 (= lt!1342190 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1374 thiss!20629 (rule!9214 (_1!23219 (v!39057 lt!1342191))) rules!2768))))

(declare-fun lt!1342185 () Unit!58617)

(declare-fun lemmaCharactersSize!1003 (Token!11822) Unit!58617)

(assert (=> b!3862210 (= lt!1342185 (lemmaCharactersSize!1003 (_1!23219 (v!39057 lt!1342191))))))

(declare-fun b!3862211 () Bool)

(declare-fun tp!1170854 () Bool)

(assert (=> b!3862211 (= e!2387850 (and tp_is_empty!19465 tp!1170854))))

(declare-fun b!3862212 () Bool)

(assert (=> b!3862212 (= e!2387865 e!2387866)))

(declare-fun tail!5861 (List!41088) List!41088)

(assert (=> b!3862212 (= lt!1342176 (tail!5861 prefixTokens!80))))

(declare-fun c!672335 () Bool)

(declare-fun isEmpty!24274 (List!41088) Bool)

(assert (=> b!3862212 (= c!672335 (isEmpty!24274 lt!1342176))))

(declare-fun e!2387872 () Bool)

(declare-fun b!3862213 () Bool)

(declare-fun tp!1170845 () Bool)

(assert (=> b!3862213 (= e!2387848 (and (inv!55126 (h!46384 suffixTokens!72)) e!2387872 tp!1170845))))

(assert (=> b!3862214 (= e!2387855 (and tp!1170853 tp!1170858))))

(declare-fun b!3862215 () Bool)

(assert (=> b!3862215 (= e!2387849 false)))

(declare-fun b!3862216 () Bool)

(assert (=> b!3862216 (= e!2387853 false)))

(declare-fun b!3862217 () Bool)

(assert (=> b!3862217 (= e!2387854 e!2387845)))

(declare-fun res!1563948 () Bool)

(assert (=> b!3862217 (=> res!1563948 e!2387845)))

(declare-fun lt!1342172 () Int)

(assert (=> b!3862217 (= res!1563948 (or (not (= (+ lt!1342172 lt!1342182) lt!1342174)) (<= lt!1342166 lt!1342172)))))

(assert (=> b!3862217 (= lt!1342172 (size!30806 prefix!426))))

(declare-fun b!3862218 () Bool)

(declare-fun res!1563961 () Bool)

(assert (=> b!3862218 (=> (not res!1563961) (not e!2387851))))

(assert (=> b!3862218 (= res!1563961 (not (isEmpty!24274 prefixTokens!80)))))

(declare-fun e!2387843 () Bool)

(assert (=> b!3862219 (= e!2387843 (and tp!1170842 tp!1170852))))

(declare-fun b!3862220 () Bool)

(assert (=> b!3862220 (= e!2387868 true)))

(declare-fun lt!1342173 () Unit!58617)

(assert (=> b!3862220 (= lt!1342173 e!2387865)))

(declare-fun c!672334 () Bool)

(assert (=> b!3862220 (= c!672334 (< (size!30806 (_2!23219 lt!1342179)) lt!1342182))))

(declare-fun b!3862221 () Bool)

(assert (=> b!3862221 (= e!2387846 (= (size!30805 (_1!23219 (v!39057 lt!1342191))) (size!30806 (originalCharacters!6942 (_1!23219 (v!39057 lt!1342191))))))))

(declare-fun e!2387840 () Bool)

(declare-fun b!3862222 () Bool)

(declare-fun tp!1170857 () Bool)

(assert (=> b!3862222 (= e!2387840 (and tp!1170857 (inv!55122 (tag!7202 (rule!9214 (h!46384 suffixTokens!72)))) (inv!55125 (transformation!6342 (rule!9214 (h!46384 suffixTokens!72)))) e!2387843))))

(declare-fun b!3862223 () Bool)

(declare-fun res!1563956 () Bool)

(assert (=> b!3862223 (=> res!1563956 e!2387867)))

(assert (=> b!3862223 (= res!1563956 (not (= lt!1342167 (tuple2!40173 (++!10441 (Cons!40964 (_1!23219 (v!39057 lt!1342191)) Nil!40964) (_1!23220 lt!1342188)) (_2!23220 lt!1342188)))))))

(declare-fun tp!1170848 () Bool)

(declare-fun b!3862224 () Bool)

(assert (=> b!3862224 (= e!2387872 (and (inv!21 (value!201381 (h!46384 suffixTokens!72))) e!2387840 tp!1170848))))

(declare-fun b!3862225 () Bool)

(declare-fun res!1563959 () Bool)

(assert (=> b!3862225 (=> (not res!1563959) (not e!2387851))))

(declare-fun rulesInvariant!5274 (LexerInterface!5931 List!41089) Bool)

(assert (=> b!3862225 (= res!1563959 (rulesInvariant!5274 thiss!20629 rules!2768))))

(declare-fun b!3862226 () Bool)

(declare-fun tp!1170856 () Bool)

(assert (=> b!3862226 (= e!2387862 (and e!2387859 tp!1170856))))

(assert (= (and start!362184 res!1563957) b!3862202))

(assert (= (and b!3862202 res!1563950) b!3862225))

(assert (= (and b!3862225 res!1563959) b!3862218))

(assert (= (and b!3862218 res!1563961) b!3862197))

(assert (= (and b!3862197 res!1563949) b!3862204))

(assert (= (and b!3862204 res!1563953) b!3862194))

(assert (= (and b!3862194 res!1563958) b!3862208))

(assert (= (and b!3862208 res!1563960) b!3862210))

(assert (= (and b!3862210 res!1563952) b!3862221))

(assert (= (and b!3862210 (not res!1563964)) b!3862223))

(assert (= (and b!3862223 (not res!1563956)) b!3862201))

(assert (= (and b!3862201 (not res!1563965)) b!3862206))

(assert (= (and b!3862206 (not res!1563955)) b!3862199))

(assert (= (and b!3862199 (not res!1563963)) b!3862217))

(assert (= (and b!3862217 (not res!1563948)) b!3862198))

(assert (= (and b!3862198 (not res!1563954)) b!3862191))

(assert (= (and b!3862191 (not res!1563951)) b!3862220))

(assert (= (and b!3862220 c!672334) b!3862212))

(assert (= (and b!3862220 (not c!672334)) b!3862203))

(assert (= (and b!3862212 c!672335) b!3862205))

(assert (= (and b!3862212 (not c!672335)) b!3862195))

(assert (= (and b!3862205 res!1563947) b!3862216))

(assert (= (and b!3862195 res!1563962) b!3862215))

(assert (= (or b!3862205 b!3862195) bm!282553))

(assert (= (and start!362184 ((_ is Cons!40962) suffixResult!91)) b!3862190))

(assert (= (and start!362184 ((_ is Cons!40962) suffix!1176)) b!3862211))

(assert (= b!3862196 b!3862192))

(assert (= b!3862226 b!3862196))

(assert (= (and start!362184 ((_ is Cons!40965) rules!2768)) b!3862226))

(assert (= b!3862200 b!3862214))

(assert (= b!3862193 b!3862200))

(assert (= b!3862207 b!3862193))

(assert (= (and start!362184 ((_ is Cons!40964) prefixTokens!80)) b!3862207))

(assert (= b!3862222 b!3862219))

(assert (= b!3862224 b!3862222))

(assert (= b!3862213 b!3862224))

(assert (= (and start!362184 ((_ is Cons!40964) suffixTokens!72)) b!3862213))

(assert (= (and start!362184 ((_ is Cons!40962) prefix!426)) b!3862209))

(declare-fun m!4417625 () Bool)

(assert (=> b!3862194 m!4417625))

(declare-fun m!4417627 () Bool)

(assert (=> b!3862193 m!4417627))

(declare-fun m!4417629 () Bool)

(assert (=> b!3862206 m!4417629))

(declare-fun m!4417631 () Bool)

(assert (=> b!3862206 m!4417631))

(declare-fun m!4417633 () Bool)

(assert (=> b!3862225 m!4417633))

(declare-fun m!4417635 () Bool)

(assert (=> bm!282553 m!4417635))

(declare-fun m!4417637 () Bool)

(assert (=> b!3862195 m!4417637))

(declare-fun m!4417639 () Bool)

(assert (=> b!3862195 m!4417639))

(declare-fun m!4417641 () Bool)

(assert (=> b!3862212 m!4417641))

(declare-fun m!4417643 () Bool)

(assert (=> b!3862212 m!4417643))

(declare-fun m!4417645 () Bool)

(assert (=> b!3862197 m!4417645))

(declare-fun m!4417647 () Bool)

(assert (=> b!3862218 m!4417647))

(declare-fun m!4417649 () Bool)

(assert (=> b!3862207 m!4417649))

(declare-fun m!4417651 () Bool)

(assert (=> b!3862210 m!4417651))

(declare-fun m!4417653 () Bool)

(assert (=> b!3862210 m!4417653))

(declare-fun m!4417655 () Bool)

(assert (=> b!3862210 m!4417655))

(declare-fun m!4417657 () Bool)

(assert (=> b!3862210 m!4417657))

(declare-fun m!4417659 () Bool)

(assert (=> b!3862210 m!4417659))

(declare-fun m!4417661 () Bool)

(assert (=> b!3862210 m!4417661))

(declare-fun m!4417663 () Bool)

(assert (=> b!3862210 m!4417663))

(declare-fun m!4417665 () Bool)

(assert (=> b!3862210 m!4417665))

(declare-fun m!4417667 () Bool)

(assert (=> b!3862210 m!4417667))

(declare-fun m!4417669 () Bool)

(assert (=> b!3862210 m!4417669))

(declare-fun m!4417671 () Bool)

(assert (=> b!3862210 m!4417671))

(declare-fun m!4417673 () Bool)

(assert (=> b!3862210 m!4417673))

(assert (=> b!3862210 m!4417653))

(declare-fun m!4417675 () Bool)

(assert (=> b!3862210 m!4417675))

(declare-fun m!4417677 () Bool)

(assert (=> b!3862210 m!4417677))

(assert (=> b!3862210 m!4417669))

(declare-fun m!4417679 () Bool)

(assert (=> b!3862196 m!4417679))

(declare-fun m!4417681 () Bool)

(assert (=> b!3862196 m!4417681))

(declare-fun m!4417683 () Bool)

(assert (=> b!3862205 m!4417683))

(declare-fun m!4417685 () Bool)

(assert (=> b!3862205 m!4417685))

(declare-fun m!4417687 () Bool)

(assert (=> b!3862202 m!4417687))

(declare-fun m!4417689 () Bool)

(assert (=> b!3862213 m!4417689))

(declare-fun m!4417691 () Bool)

(assert (=> b!3862221 m!4417691))

(declare-fun m!4417693 () Bool)

(assert (=> b!3862222 m!4417693))

(declare-fun m!4417695 () Bool)

(assert (=> b!3862222 m!4417695))

(declare-fun m!4417697 () Bool)

(assert (=> b!3862223 m!4417697))

(declare-fun m!4417699 () Bool)

(assert (=> b!3862220 m!4417699))

(declare-fun m!4417701 () Bool)

(assert (=> b!3862191 m!4417701))

(declare-fun m!4417703 () Bool)

(assert (=> b!3862191 m!4417703))

(declare-fun m!4417705 () Bool)

(assert (=> b!3862204 m!4417705))

(declare-fun m!4417707 () Bool)

(assert (=> b!3862204 m!4417707))

(declare-fun m!4417709 () Bool)

(assert (=> b!3862204 m!4417709))

(declare-fun m!4417711 () Bool)

(assert (=> b!3862208 m!4417711))

(declare-fun m!4417713 () Bool)

(assert (=> b!3862224 m!4417713))

(declare-fun m!4417715 () Bool)

(assert (=> b!3862198 m!4417715))

(declare-fun m!4417717 () Bool)

(assert (=> b!3862198 m!4417717))

(declare-fun m!4417719 () Bool)

(assert (=> b!3862198 m!4417719))

(declare-fun m!4417721 () Bool)

(assert (=> b!3862200 m!4417721))

(declare-fun m!4417723 () Bool)

(assert (=> b!3862200 m!4417723))

(declare-fun m!4417725 () Bool)

(assert (=> b!3862217 m!4417725))

(declare-fun m!4417727 () Bool)

(assert (=> b!3862199 m!4417727))

(check-sat (not b!3862204) (not b!3862225) (not b!3862210) (not b_next!104619) (not b!3862223) (not b!3862218) tp_is_empty!19465 (not b!3862205) (not b!3862206) (not b!3862217) (not b!3862198) b_and!289179 (not b!3862194) (not b!3862220) (not b!3862222) (not b!3862190) (not b!3862207) (not b_next!104617) (not b!3862193) (not b!3862200) (not b!3862191) (not b_next!104621) (not b_next!104623) b_and!289189 b_and!289187 (not b!3862221) (not b!3862224) (not b!3862195) (not b!3862202) (not b!3862197) (not b!3862208) (not bm!282553) b_and!289181 b_and!289185 (not b!3862226) (not b!3862213) (not b!3862211) (not b!3862199) (not b!3862209) (not b!3862212) (not b!3862196) b_and!289183 (not b_next!104613) (not b_next!104615))
(check-sat b_and!289179 (not b_next!104617) b_and!289181 (not b_next!104619) b_and!289185 b_and!289183 (not b_next!104621) (not b_next!104623) b_and!289187 b_and!289189 (not b_next!104613) (not b_next!104615))
