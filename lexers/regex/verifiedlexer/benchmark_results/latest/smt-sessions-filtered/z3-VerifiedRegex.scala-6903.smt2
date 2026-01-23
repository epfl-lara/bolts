; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363972 () Bool)

(assert start!363972)

(declare-fun b!3876320 () Bool)

(declare-fun b_free!104821 () Bool)

(declare-fun b_next!105525 () Bool)

(assert (=> b!3876320 (= b_free!104821 (not b_next!105525))))

(declare-fun tp!1175159 () Bool)

(declare-fun b_and!290667 () Bool)

(assert (=> b!3876320 (= tp!1175159 b_and!290667)))

(declare-fun b_free!104823 () Bool)

(declare-fun b_next!105527 () Bool)

(assert (=> b!3876320 (= b_free!104823 (not b_next!105527))))

(declare-fun tp!1175157 () Bool)

(declare-fun b_and!290669 () Bool)

(assert (=> b!3876320 (= tp!1175157 b_and!290669)))

(declare-fun b!3876304 () Bool)

(declare-fun b_free!104825 () Bool)

(declare-fun b_next!105529 () Bool)

(assert (=> b!3876304 (= b_free!104825 (not b_next!105529))))

(declare-fun tp!1175156 () Bool)

(declare-fun b_and!290671 () Bool)

(assert (=> b!3876304 (= tp!1175156 b_and!290671)))

(declare-fun b_free!104827 () Bool)

(declare-fun b_next!105531 () Bool)

(assert (=> b!3876304 (= b_free!104827 (not b_next!105531))))

(declare-fun tp!1175151 () Bool)

(declare-fun b_and!290673 () Bool)

(assert (=> b!3876304 (= tp!1175151 b_and!290673)))

(declare-fun b!3876330 () Bool)

(declare-fun b_free!104829 () Bool)

(declare-fun b_next!105533 () Bool)

(assert (=> b!3876330 (= b_free!104829 (not b_next!105533))))

(declare-fun tp!1175163 () Bool)

(declare-fun b_and!290675 () Bool)

(assert (=> b!3876330 (= tp!1175163 b_and!290675)))

(declare-fun b_free!104831 () Bool)

(declare-fun b_next!105535 () Bool)

(assert (=> b!3876330 (= b_free!104831 (not b_next!105535))))

(declare-fun tp!1175155 () Bool)

(declare-fun b_and!290677 () Bool)

(assert (=> b!3876330 (= tp!1175155 b_and!290677)))

(declare-fun b!3876295 () Bool)

(declare-datatypes ((List!41318 0))(
  ( (Nil!41194) (Cons!41194 (h!46614 (_ BitVec 16)) (t!314961 List!41318)) )
))
(declare-datatypes ((TokenValue!6624 0))(
  ( (FloatLiteralValue!13248 (text!46813 List!41318)) (TokenValueExt!6623 (__x!25465 Int)) (Broken!33120 (value!202837 List!41318)) (Object!6747) (End!6624) (Def!6624) (Underscore!6624) (Match!6624) (Else!6624) (Error!6624) (Case!6624) (If!6624) (Extends!6624) (Abstract!6624) (Class!6624) (Val!6624) (DelimiterValue!13248 (del!6684 List!41318)) (KeywordValue!6630 (value!202838 List!41318)) (CommentValue!13248 (value!202839 List!41318)) (WhitespaceValue!13248 (value!202840 List!41318)) (IndentationValue!6624 (value!202841 List!41318)) (String!46837) (Int32!6624) (Broken!33121 (value!202842 List!41318)) (Boolean!6625) (Unit!59158) (OperatorValue!6627 (op!6684 List!41318)) (IdentifierValue!13248 (value!202843 List!41318)) (IdentifierValue!13249 (value!202844 List!41318)) (WhitespaceValue!13249 (value!202845 List!41318)) (True!13248) (False!13248) (Broken!33122 (value!202846 List!41318)) (Broken!33123 (value!202847 List!41318)) (True!13249) (RightBrace!6624) (RightBracket!6624) (Colon!6624) (Null!6624) (Comma!6624) (LeftBracket!6624) (False!13249) (LeftBrace!6624) (ImaginaryLiteralValue!6624 (text!46814 List!41318)) (StringLiteralValue!19872 (value!202848 List!41318)) (EOFValue!6624 (value!202849 List!41318)) (IdentValue!6624 (value!202850 List!41318)) (DelimiterValue!13249 (value!202851 List!41318)) (DedentValue!6624 (value!202852 List!41318)) (NewLineValue!6624 (value!202853 List!41318)) (IntegerValue!19872 (value!202854 (_ BitVec 32)) (text!46815 List!41318)) (IntegerValue!19873 (value!202855 Int) (text!46816 List!41318)) (Times!6624) (Or!6624) (Equal!6624) (Minus!6624) (Broken!33124 (value!202856 List!41318)) (And!6624) (Div!6624) (LessEqual!6624) (Mod!6624) (Concat!17923) (Not!6624) (Plus!6624) (SpaceValue!6624 (value!202857 List!41318)) (IntegerValue!19874 (value!202858 Int) (text!46817 List!41318)) (StringLiteralValue!19873 (text!46818 List!41318)) (FloatLiteralValue!13249 (text!46819 List!41318)) (BytesLiteralValue!6624 (value!202859 List!41318)) (CommentValue!13249 (value!202860 List!41318)) (StringLiteralValue!19874 (value!202861 List!41318)) (ErrorTokenValue!6624 (msg!6685 List!41318)) )
))
(declare-datatypes ((C!22784 0))(
  ( (C!22785 (val!13486 Int)) )
))
(declare-datatypes ((Regex!11299 0))(
  ( (ElementMatch!11299 (c!674446 C!22784)) (Concat!17924 (regOne!23110 Regex!11299) (regTwo!23110 Regex!11299)) (EmptyExpr!11299) (Star!11299 (reg!11628 Regex!11299)) (EmptyLang!11299) (Union!11299 (regOne!23111 Regex!11299) (regTwo!23111 Regex!11299)) )
))
(declare-datatypes ((String!46838 0))(
  ( (String!46839 (value!202862 String)) )
))
(declare-datatypes ((List!41319 0))(
  ( (Nil!41195) (Cons!41195 (h!46615 C!22784) (t!314962 List!41319)) )
))
(declare-datatypes ((IArray!25215 0))(
  ( (IArray!25216 (innerList!12665 List!41319)) )
))
(declare-datatypes ((Conc!12605 0))(
  ( (Node!12605 (left!31624 Conc!12605) (right!31954 Conc!12605) (csize!25440 Int) (cheight!12816 Int)) (Leaf!19509 (xs!15911 IArray!25215) (csize!25441 Int)) (Empty!12605) )
))
(declare-datatypes ((BalanceConc!24804 0))(
  ( (BalanceConc!24805 (c!674447 Conc!12605)) )
))
(declare-datatypes ((TokenValueInjection!12676 0))(
  ( (TokenValueInjection!12677 (toValue!8822 Int) (toChars!8681 Int)) )
))
(declare-datatypes ((Rule!12588 0))(
  ( (Rule!12589 (regex!6394 Regex!11299) (tag!7254 String!46838) (isSeparator!6394 Bool) (transformation!6394 TokenValueInjection!12676)) )
))
(declare-datatypes ((Token!11926 0))(
  ( (Token!11927 (value!202863 TokenValue!6624) (rule!9290 Rule!12588) (size!30957 Int) (originalCharacters!6994 List!41319)) )
))
(declare-datatypes ((List!41320 0))(
  ( (Nil!41196) (Cons!41196 (h!46616 Token!11926) (t!314963 List!41320)) )
))
(declare-fun prefixTokens!80 () List!41320)

(declare-fun tp!1175158 () Bool)

(declare-fun e!2398067 () Bool)

(declare-fun e!2398085 () Bool)

(declare-fun inv!55355 (Token!11926) Bool)

(assert (=> b!3876295 (= e!2398067 (and (inv!55355 (h!46616 prefixTokens!80)) e!2398085 tp!1175158))))

(declare-fun e!2398081 () Bool)

(declare-fun tp!1175154 () Bool)

(declare-fun b!3876296 () Bool)

(declare-fun inv!21 (TokenValue!6624) Bool)

(assert (=> b!3876296 (= e!2398085 (and (inv!21 (value!202863 (h!46616 prefixTokens!80))) e!2398081 tp!1175154))))

(declare-fun b!3876297 () Bool)

(declare-datatypes ((Unit!59159 0))(
  ( (Unit!59160) )
))
(declare-fun e!2398103 () Unit!59159)

(declare-fun Unit!59161 () Unit!59159)

(assert (=> b!3876297 (= e!2398103 Unit!59161)))

(declare-fun lt!1351188 () Int)

(declare-fun lt!1351202 () List!41319)

(declare-fun size!30958 (List!41319) Int)

(assert (=> b!3876297 (= lt!1351188 (size!30958 lt!1351202))))

(declare-fun lt!1351193 () Unit!59159)

(declare-datatypes ((LexerInterface!5983 0))(
  ( (LexerInterfaceExt!5980 (__x!25466 Int)) (Lexer!5981) )
))
(declare-fun thiss!20629 () LexerInterface!5983)

(declare-datatypes ((List!41321 0))(
  ( (Nil!41197) (Cons!41197 (h!46617 Rule!12588) (t!314964 List!41321)) )
))
(declare-fun rules!2768 () List!41321)

(declare-fun lt!1351184 () List!41319)

(declare-datatypes ((tuple2!40426 0))(
  ( (tuple2!40427 (_1!23347 Token!11926) (_2!23347 List!41319)) )
))
(declare-datatypes ((Option!8812 0))(
  ( (None!8811) (Some!8811 (v!39109 tuple2!40426)) )
))
(declare-fun lt!1351196 () Option!8812)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1267 (LexerInterface!5983 List!41321 List!41319 List!41319 List!41319 Rule!12588) Unit!59159)

(assert (=> b!3876297 (= lt!1351193 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1267 thiss!20629 rules!2768 lt!1351184 lt!1351202 (_2!23347 (v!39109 lt!1351196)) (rule!9290 (_1!23347 (v!39109 lt!1351196)))))))

(declare-fun lt!1351203 () TokenValue!6624)

(declare-fun lt!1351212 () Int)

(declare-fun maxPrefixOneRule!2369 (LexerInterface!5983 Rule!12588 List!41319) Option!8812)

(assert (=> b!3876297 (= (maxPrefixOneRule!2369 thiss!20629 (rule!9290 (_1!23347 (v!39109 lt!1351196))) lt!1351202) (Some!8811 (tuple2!40427 (Token!11927 lt!1351203 (rule!9290 (_1!23347 (v!39109 lt!1351196))) lt!1351212 lt!1351184) (_2!23347 (v!39109 lt!1351196)))))))

(declare-fun lt!1351210 () tuple2!40426)

(declare-fun get!13631 (Option!8812) tuple2!40426)

(assert (=> b!3876297 (= lt!1351210 (get!13631 lt!1351196))))

(declare-fun c!674445 () Bool)

(declare-fun lt!1351180 () Int)

(assert (=> b!3876297 (= c!674445 (< (size!30958 (_2!23347 lt!1351210)) lt!1351180))))

(declare-fun lt!1351181 () Unit!59159)

(declare-fun e!2398063 () Unit!59159)

(assert (=> b!3876297 (= lt!1351181 e!2398063)))

(assert (=> b!3876297 false))

(declare-fun b!3876298 () Bool)

(declare-fun e!2398074 () Bool)

(declare-fun e!2398086 () Bool)

(assert (=> b!3876298 (= e!2398074 e!2398086)))

(declare-fun res!1570415 () Bool)

(assert (=> b!3876298 (=> res!1570415 e!2398086)))

(declare-fun lt!1351195 () List!41320)

(declare-datatypes ((tuple2!40428 0))(
  ( (tuple2!40429 (_1!23348 List!41320) (_2!23348 List!41319)) )
))
(declare-fun lt!1351199 () tuple2!40428)

(declare-fun lt!1351173 () tuple2!40428)

(declare-fun ++!10545 (List!41320 List!41320) List!41320)

(assert (=> b!3876298 (= res!1570415 (not (= lt!1351199 (tuple2!40429 (++!10545 lt!1351195 (_1!23348 lt!1351173)) (_2!23348 lt!1351173)))))))

(assert (=> b!3876298 (= lt!1351195 (Cons!41196 (_1!23347 (v!39109 lt!1351196)) Nil!41196))))

(declare-fun b!3876299 () Bool)

(declare-fun e!2398100 () Bool)

(declare-fun e!2398064 () Bool)

(assert (=> b!3876299 (= e!2398100 e!2398064)))

(declare-fun res!1570396 () Bool)

(assert (=> b!3876299 (=> res!1570396 e!2398064)))

(declare-fun lt!1351198 () List!41320)

(declare-fun lt!1351183 () List!41320)

(assert (=> b!3876299 (= res!1570396 (not (= lt!1351198 lt!1351183)))))

(declare-fun lt!1351211 () List!41320)

(assert (=> b!3876299 (= lt!1351198 (++!10545 lt!1351195 lt!1351211))))

(declare-fun suffixTokens!72 () List!41320)

(declare-fun lt!1351208 () List!41320)

(assert (=> b!3876299 (= lt!1351198 (++!10545 (++!10545 lt!1351195 lt!1351208) suffixTokens!72))))

(declare-fun lt!1351213 () Unit!59159)

(declare-fun lemmaConcatAssociativity!2259 (List!41320 List!41320 List!41320) Unit!59159)

(assert (=> b!3876299 (= lt!1351213 (lemmaConcatAssociativity!2259 lt!1351195 lt!1351208 suffixTokens!72))))

(declare-fun lt!1351204 () Unit!59159)

(declare-fun e!2398079 () Unit!59159)

(assert (=> b!3876299 (= lt!1351204 e!2398079)))

(declare-fun c!674441 () Bool)

(declare-fun isEmpty!24452 (List!41320) Bool)

(assert (=> b!3876299 (= c!674441 (isEmpty!24452 lt!1351208))))

(declare-fun b!3876300 () Bool)

(declare-fun e!2398091 () Bool)

(assert (=> b!3876300 (= e!2398091 false)))

(declare-fun b!3876301 () Bool)

(declare-fun e!2398098 () Bool)

(declare-fun e!2398093 () Bool)

(assert (=> b!3876301 (= e!2398098 e!2398093)))

(declare-fun res!1570395 () Bool)

(assert (=> b!3876301 (=> res!1570395 e!2398093)))

(declare-fun lt!1351169 () List!41319)

(declare-fun prefix!426 () List!41319)

(assert (=> b!3876301 (= res!1570395 (not (= lt!1351169 prefix!426)))))

(declare-fun lt!1351214 () List!41319)

(declare-fun ++!10546 (List!41319 List!41319) List!41319)

(assert (=> b!3876301 (= lt!1351169 (++!10546 lt!1351184 lt!1351214))))

(declare-fun getSuffix!1948 (List!41319 List!41319) List!41319)

(assert (=> b!3876301 (= lt!1351214 (getSuffix!1948 prefix!426 lt!1351184))))

(declare-fun b!3876302 () Bool)

(declare-fun e!2398101 () Bool)

(declare-fun e!2398076 () Bool)

(assert (=> b!3876302 (= e!2398101 e!2398076)))

(declare-fun res!1570412 () Bool)

(assert (=> b!3876302 (=> res!1570412 e!2398076)))

(declare-fun lt!1351192 () List!41319)

(assert (=> b!3876302 (= res!1570412 (not (= lt!1351192 (_2!23347 (v!39109 lt!1351196)))))))

(assert (=> b!3876302 (= (_2!23347 (v!39109 lt!1351196)) lt!1351192)))

(declare-fun lt!1351201 () Unit!59159)

(declare-fun lemmaSamePrefixThenSameSuffix!1714 (List!41319 List!41319 List!41319 List!41319 List!41319) Unit!59159)

(assert (=> b!3876302 (= lt!1351201 (lemmaSamePrefixThenSameSuffix!1714 lt!1351184 (_2!23347 (v!39109 lt!1351196)) lt!1351184 lt!1351192 lt!1351202))))

(declare-fun lt!1351191 () List!41319)

(declare-fun isPrefix!3493 (List!41319 List!41319) Bool)

(assert (=> b!3876302 (isPrefix!3493 lt!1351184 lt!1351191)))

(declare-fun lt!1351197 () Unit!59159)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2356 (List!41319 List!41319) Unit!59159)

(assert (=> b!3876302 (= lt!1351197 (lemmaConcatTwoListThenFirstIsPrefix!2356 lt!1351184 lt!1351192))))

(declare-fun b!3876303 () Bool)

(declare-fun e!2398078 () Unit!59159)

(declare-fun Unit!59162 () Unit!59159)

(assert (=> b!3876303 (= e!2398078 Unit!59162)))

(declare-fun e!2398096 () Bool)

(assert (=> b!3876304 (= e!2398096 (and tp!1175156 tp!1175151))))

(declare-fun b!3876305 () Bool)

(declare-fun e!2398066 () Bool)

(declare-fun tp_is_empty!19569 () Bool)

(declare-fun tp!1175150 () Bool)

(assert (=> b!3876305 (= e!2398066 (and tp_is_empty!19569 tp!1175150))))

(declare-fun res!1570403 () Bool)

(declare-fun e!2398094 () Bool)

(assert (=> start!363972 (=> (not res!1570403) (not e!2398094))))

(get-info :version)

(assert (=> start!363972 (= res!1570403 ((_ is Lexer!5981) thiss!20629))))

(assert (=> start!363972 e!2398094))

(declare-fun e!2398095 () Bool)

(assert (=> start!363972 e!2398095))

(assert (=> start!363972 true))

(declare-fun e!2398090 () Bool)

(assert (=> start!363972 e!2398090))

(declare-fun e!2398092 () Bool)

(assert (=> start!363972 e!2398092))

(assert (=> start!363972 e!2398067))

(declare-fun e!2398073 () Bool)

(assert (=> start!363972 e!2398073))

(assert (=> start!363972 e!2398066))

(declare-fun b!3876306 () Bool)

(declare-fun res!1570411 () Bool)

(assert (=> b!3876306 (=> (not res!1570411) (not e!2398094))))

(assert (=> b!3876306 (= res!1570411 (not (isEmpty!24452 prefixTokens!80)))))

(declare-fun b!3876307 () Bool)

(declare-fun Unit!59163 () Unit!59159)

(assert (=> b!3876307 (= e!2398063 Unit!59163)))

(declare-fun b!3876308 () Bool)

(declare-fun res!1570391 () Bool)

(assert (=> b!3876308 (=> res!1570391 e!2398064)))

(declare-fun lt!1351174 () tuple2!40428)

(declare-fun lexList!1751 (LexerInterface!5983 List!41321 List!41319) tuple2!40428)

(assert (=> b!3876308 (= res!1570391 (not (= (lexList!1751 thiss!20629 rules!2768 lt!1351192) lt!1351174)))))

(declare-fun b!3876309 () Bool)

(declare-fun res!1570398 () Bool)

(assert (=> b!3876309 (=> (not res!1570398) (not e!2398094))))

(declare-fun isEmpty!24453 (List!41321) Bool)

(assert (=> b!3876309 (= res!1570398 (not (isEmpty!24453 rules!2768)))))

(declare-fun tp!1175152 () Bool)

(declare-fun e!2398087 () Bool)

(declare-fun b!3876310 () Bool)

(assert (=> b!3876310 (= e!2398073 (and (inv!55355 (h!46616 suffixTokens!72)) e!2398087 tp!1175152))))

(declare-fun b!3876311 () Bool)

(declare-fun res!1570400 () Bool)

(declare-fun e!2398069 () Bool)

(assert (=> b!3876311 (=> res!1570400 e!2398069)))

(declare-fun head!8220 (List!41320) Token!11926)

(assert (=> b!3876311 (= res!1570400 (not (= (head!8220 prefixTokens!80) (_1!23347 (v!39109 lt!1351196)))))))

(declare-fun b!3876312 () Bool)

(declare-fun Unit!59164 () Unit!59159)

(assert (=> b!3876312 (= e!2398103 Unit!59164)))

(declare-fun b!3876313 () Bool)

(declare-fun Unit!59165 () Unit!59159)

(assert (=> b!3876313 (= e!2398079 Unit!59165)))

(declare-fun b!3876314 () Bool)

(declare-fun e!2398065 () Bool)

(assert (=> b!3876314 (= e!2398094 e!2398065)))

(declare-fun res!1570399 () Bool)

(assert (=> b!3876314 (=> (not res!1570399) (not e!2398065))))

(declare-fun suffixResult!91 () List!41319)

(assert (=> b!3876314 (= res!1570399 (= lt!1351199 (tuple2!40429 lt!1351183 suffixResult!91)))))

(assert (=> b!3876314 (= lt!1351199 (lexList!1751 thiss!20629 rules!2768 lt!1351202))))

(assert (=> b!3876314 (= lt!1351183 (++!10545 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!41319)

(assert (=> b!3876314 (= lt!1351202 (++!10546 prefix!426 suffix!1176))))

(declare-fun b!3876315 () Bool)

(assert (=> b!3876315 (= e!2398086 e!2398069)))

(declare-fun res!1570410 () Bool)

(assert (=> b!3876315 (=> res!1570410 e!2398069)))

(declare-fun lt!1351182 () Int)

(assert (=> b!3876315 (= res!1570410 (<= lt!1351182 lt!1351180))))

(declare-fun lt!1351200 () Unit!59159)

(assert (=> b!3876315 (= lt!1351200 e!2398078)))

(declare-fun c!674444 () Bool)

(assert (=> b!3876315 (= c!674444 (= lt!1351182 lt!1351180))))

(declare-fun lt!1351168 () Unit!59159)

(assert (=> b!3876315 (= lt!1351168 e!2398103)))

(declare-fun c!674442 () Bool)

(assert (=> b!3876315 (= c!674442 (< lt!1351182 lt!1351180))))

(assert (=> b!3876315 (= lt!1351180 (size!30958 suffix!1176))))

(assert (=> b!3876315 (= lt!1351182 (size!30958 (_2!23347 (v!39109 lt!1351196))))))

(declare-fun b!3876316 () Bool)

(declare-fun res!1570388 () Bool)

(declare-fun e!2398071 () Bool)

(assert (=> b!3876316 (=> res!1570388 e!2398071)))

(declare-fun isEmpty!24454 (List!41319) Bool)

(assert (=> b!3876316 (= res!1570388 (not (isEmpty!24454 suffixResult!91)))))

(declare-fun b!3876317 () Bool)

(declare-fun tp!1175161 () Bool)

(assert (=> b!3876317 (= e!2398090 (and tp_is_empty!19569 tp!1175161))))

(declare-fun b!3876318 () Bool)

(assert (=> b!3876318 (= e!2398064 e!2398071)))

(declare-fun res!1570393 () Bool)

(assert (=> b!3876318 (=> res!1570393 e!2398071)))

(assert (=> b!3876318 (= res!1570393 (not (= lt!1351196 (Some!8811 (tuple2!40427 (_1!23347 (v!39109 lt!1351196)) (_2!23347 (v!39109 lt!1351196)))))))))

(assert (=> b!3876318 (= (lexList!1751 thiss!20629 rules!2768 lt!1351214) (tuple2!40429 lt!1351208 Nil!41195))))

(declare-fun lt!1351207 () Unit!59159)

(declare-fun lemmaLexThenLexPrefix!583 (LexerInterface!5983 List!41321 List!41319 List!41319 List!41320 List!41320 List!41319) Unit!59159)

(assert (=> b!3876318 (= lt!1351207 (lemmaLexThenLexPrefix!583 thiss!20629 rules!2768 lt!1351214 suffix!1176 lt!1351208 suffixTokens!72 suffixResult!91))))

(declare-fun bm!282799 () Bool)

(declare-fun call!282804 () tuple2!40428)

(assert (=> bm!282799 (= call!282804 (lexList!1751 thiss!20629 rules!2768 (_2!23347 lt!1351210)))))

(declare-fun e!2398075 () Bool)

(declare-fun tp!1175164 () Bool)

(declare-fun e!2398070 () Bool)

(declare-fun b!3876319 () Bool)

(declare-fun inv!55352 (String!46838) Bool)

(declare-fun inv!55356 (TokenValueInjection!12676) Bool)

(assert (=> b!3876319 (= e!2398070 (and tp!1175164 (inv!55352 (tag!7254 (h!46617 rules!2768))) (inv!55356 (transformation!6394 (h!46617 rules!2768))) e!2398075))))

(declare-fun e!2398089 () Bool)

(assert (=> b!3876320 (= e!2398089 (and tp!1175159 tp!1175157))))

(declare-fun b!3876321 () Bool)

(declare-fun res!1570390 () Bool)

(assert (=> b!3876321 (=> res!1570390 e!2398071)))

(assert (=> b!3876321 (= res!1570390 (not (isEmpty!24454 suffix!1176)))))

(declare-fun b!3876322 () Bool)

(declare-fun Unit!59166 () Unit!59159)

(assert (=> b!3876322 (= e!2398079 Unit!59166)))

(declare-fun lt!1351217 () Unit!59159)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!54 (LexerInterface!5983 List!41321 List!41319 List!41319 List!41320 List!41319) Unit!59159)

(assert (=> b!3876322 (= lt!1351217 (lemmaLexWithSmallerInputCannotProduceSameResults!54 thiss!20629 rules!2768 (_2!23347 (v!39109 lt!1351196)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3876322 false))

(declare-fun b!3876323 () Bool)

(declare-fun tp!1175160 () Bool)

(assert (=> b!3876323 (= e!2398081 (and tp!1175160 (inv!55352 (tag!7254 (rule!9290 (h!46616 prefixTokens!80)))) (inv!55356 (transformation!6394 (rule!9290 (h!46616 prefixTokens!80)))) e!2398096))))

(declare-fun tp!1175165 () Bool)

(declare-fun b!3876324 () Bool)

(declare-fun e!2398102 () Bool)

(assert (=> b!3876324 (= e!2398102 (and tp!1175165 (inv!55352 (tag!7254 (rule!9290 (h!46616 suffixTokens!72)))) (inv!55356 (transformation!6394 (rule!9290 (h!46616 suffixTokens!72)))) e!2398089))))

(declare-fun b!3876325 () Bool)

(declare-fun e!2398072 () Bool)

(assert (=> b!3876325 (= e!2398072 (not e!2398074))))

(declare-fun res!1570408 () Bool)

(assert (=> b!3876325 (=> res!1570408 e!2398074)))

(declare-fun lt!1351187 () List!41319)

(assert (=> b!3876325 (= res!1570408 (not (= lt!1351187 lt!1351202)))))

(assert (=> b!3876325 (= lt!1351173 (lexList!1751 thiss!20629 rules!2768 (_2!23347 (v!39109 lt!1351196))))))

(declare-fun lt!1351216 () List!41319)

(assert (=> b!3876325 (and (= (size!30957 (_1!23347 (v!39109 lt!1351196))) lt!1351212) (= (originalCharacters!6994 (_1!23347 (v!39109 lt!1351196))) lt!1351184) (= (tuple2!40427 (_1!23347 (v!39109 lt!1351196)) (_2!23347 (v!39109 lt!1351196))) (tuple2!40427 (Token!11927 lt!1351203 (rule!9290 (_1!23347 (v!39109 lt!1351196))) lt!1351212 lt!1351184) lt!1351216)))))

(assert (=> b!3876325 (= lt!1351212 (size!30958 lt!1351184))))

(declare-fun e!2398077 () Bool)

(assert (=> b!3876325 e!2398077))

(declare-fun res!1570397 () Bool)

(assert (=> b!3876325 (=> (not res!1570397) (not e!2398077))))

(assert (=> b!3876325 (= res!1570397 (= (value!202863 (_1!23347 (v!39109 lt!1351196))) lt!1351203))))

(declare-fun apply!9637 (TokenValueInjection!12676 BalanceConc!24804) TokenValue!6624)

(declare-fun seqFromList!4665 (List!41319) BalanceConc!24804)

(assert (=> b!3876325 (= lt!1351203 (apply!9637 (transformation!6394 (rule!9290 (_1!23347 (v!39109 lt!1351196)))) (seqFromList!4665 lt!1351184)))))

(assert (=> b!3876325 (= (_2!23347 (v!39109 lt!1351196)) lt!1351216)))

(declare-fun lt!1351194 () Unit!59159)

(assert (=> b!3876325 (= lt!1351194 (lemmaSamePrefixThenSameSuffix!1714 lt!1351184 (_2!23347 (v!39109 lt!1351196)) lt!1351184 lt!1351216 lt!1351202))))

(assert (=> b!3876325 (= lt!1351216 (getSuffix!1948 lt!1351202 lt!1351184))))

(assert (=> b!3876325 (isPrefix!3493 lt!1351184 lt!1351187)))

(assert (=> b!3876325 (= lt!1351187 (++!10546 lt!1351184 (_2!23347 (v!39109 lt!1351196))))))

(declare-fun lt!1351172 () Unit!59159)

(assert (=> b!3876325 (= lt!1351172 (lemmaConcatTwoListThenFirstIsPrefix!2356 lt!1351184 (_2!23347 (v!39109 lt!1351196))))))

(declare-fun list!15322 (BalanceConc!24804) List!41319)

(declare-fun charsOf!4222 (Token!11926) BalanceConc!24804)

(assert (=> b!3876325 (= lt!1351184 (list!15322 (charsOf!4222 (_1!23347 (v!39109 lt!1351196)))))))

(declare-fun ruleValid!2346 (LexerInterface!5983 Rule!12588) Bool)

(assert (=> b!3876325 (ruleValid!2346 thiss!20629 (rule!9290 (_1!23347 (v!39109 lt!1351196))))))

(declare-fun lt!1351206 () Unit!59159)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1426 (LexerInterface!5983 Rule!12588 List!41321) Unit!59159)

(assert (=> b!3876325 (= lt!1351206 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1426 thiss!20629 (rule!9290 (_1!23347 (v!39109 lt!1351196))) rules!2768))))

(declare-fun lt!1351171 () Unit!59159)

(declare-fun lemmaCharactersSize!1055 (Token!11926) Unit!59159)

(assert (=> b!3876325 (= lt!1351171 (lemmaCharactersSize!1055 (_1!23347 (v!39109 lt!1351196))))))

(declare-fun b!3876326 () Bool)

(declare-fun res!1570407 () Bool)

(assert (=> b!3876326 (=> res!1570407 e!2398071)))

(assert (=> b!3876326 (= res!1570407 (not (isEmpty!24452 suffixTokens!72)))))

(declare-fun b!3876327 () Bool)

(declare-fun e!2398088 () Bool)

(assert (=> b!3876327 (= e!2398088 e!2398072)))

(declare-fun res!1570389 () Bool)

(assert (=> b!3876327 (=> (not res!1570389) (not e!2398072))))

(assert (=> b!3876327 (= res!1570389 ((_ is Some!8811) lt!1351196))))

(declare-fun maxPrefix!3287 (LexerInterface!5983 List!41321 List!41319) Option!8812)

(assert (=> b!3876327 (= lt!1351196 (maxPrefix!3287 thiss!20629 rules!2768 lt!1351202))))

(declare-fun b!3876328 () Bool)

(declare-fun Unit!59167 () Unit!59159)

(assert (=> b!3876328 (= e!2398078 Unit!59167)))

(declare-fun lt!1351177 () Unit!59159)

(assert (=> b!3876328 (= lt!1351177 (lemmaConcatTwoListThenFirstIsPrefix!2356 prefix!426 suffix!1176))))

(assert (=> b!3876328 (isPrefix!3493 prefix!426 lt!1351202)))

(declare-fun lt!1351185 () Unit!59159)

(declare-fun lemmaIsPrefixSameLengthThenSameList!745 (List!41319 List!41319 List!41319) Unit!59159)

(assert (=> b!3876328 (= lt!1351185 (lemmaIsPrefixSameLengthThenSameList!745 lt!1351184 prefix!426 lt!1351202))))

(assert (=> b!3876328 (= lt!1351184 prefix!426)))

(declare-fun lt!1351189 () Unit!59159)

(assert (=> b!3876328 (= lt!1351189 (lemmaSamePrefixThenSameSuffix!1714 lt!1351184 (_2!23347 (v!39109 lt!1351196)) prefix!426 suffix!1176 lt!1351202))))

(assert (=> b!3876328 false))

(declare-fun b!3876329 () Bool)

(declare-fun res!1570394 () Bool)

(assert (=> b!3876329 (=> (not res!1570394) (not e!2398094))))

(assert (=> b!3876329 (= res!1570394 (not (isEmpty!24454 prefix!426)))))

(assert (=> b!3876330 (= e!2398075 (and tp!1175163 tp!1175155))))

(declare-fun b!3876331 () Bool)

(declare-fun tp!1175162 () Bool)

(assert (=> b!3876331 (= e!2398087 (and (inv!21 (value!202863 (h!46616 suffixTokens!72))) e!2398102 tp!1175162))))

(declare-fun b!3876332 () Bool)

(declare-fun e!2398080 () Unit!59159)

(declare-fun Unit!59168 () Unit!59159)

(assert (=> b!3876332 (= e!2398080 Unit!59168)))

(declare-fun lt!1351209 () Unit!59159)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!478 (List!41319 List!41319 List!41319 List!41319) Unit!59159)

(assert (=> b!3876332 (= lt!1351209 (lemmaConcatSameAndSameSizesThenSameLists!478 lt!1351184 (_2!23347 (v!39109 lt!1351196)) lt!1351184 (_2!23347 lt!1351210)))))

(assert (=> b!3876332 (= (_2!23347 (v!39109 lt!1351196)) (_2!23347 lt!1351210))))

(declare-fun lt!1351186 () Unit!59159)

(assert (=> b!3876332 (= lt!1351186 (lemmaLexWithSmallerInputCannotProduceSameResults!54 thiss!20629 rules!2768 suffix!1176 (_2!23347 lt!1351210) suffixTokens!72 suffixResult!91))))

(declare-fun res!1570402 () Bool)

(declare-fun lt!1351179 () tuple2!40428)

(assert (=> b!3876332 (= res!1570402 (not (= call!282804 lt!1351179)))))

(declare-fun e!2398099 () Bool)

(assert (=> b!3876332 (=> (not res!1570402) (not e!2398099))))

(assert (=> b!3876332 e!2398099))

(declare-fun b!3876333 () Bool)

(declare-fun Unit!59169 () Unit!59159)

(assert (=> b!3876333 (= e!2398080 Unit!59169)))

(declare-fun lt!1351178 () List!41320)

(declare-fun lt!1351190 () Unit!59159)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!54 (LexerInterface!5983 List!41321 List!41319 List!41319 List!41320 List!41319 List!41320) Unit!59159)

(assert (=> b!3876333 (= lt!1351190 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!54 thiss!20629 rules!2768 suffix!1176 (_2!23347 lt!1351210) suffixTokens!72 suffixResult!91 lt!1351178))))

(declare-fun res!1570414 () Bool)

(assert (=> b!3876333 (= res!1570414 (not (= call!282804 (tuple2!40429 (++!10545 lt!1351178 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3876333 (=> (not res!1570414) (not e!2398091))))

(assert (=> b!3876333 e!2398091))

(declare-fun b!3876334 () Bool)

(assert (=> b!3876334 (= e!2398099 false)))

(declare-fun b!3876335 () Bool)

(declare-fun res!1570405 () Bool)

(assert (=> b!3876335 (=> res!1570405 e!2398086)))

(assert (=> b!3876335 (= res!1570405 (or (not (= lt!1351173 (tuple2!40429 (_1!23348 lt!1351173) (_2!23348 lt!1351173)))) (= (_2!23347 (v!39109 lt!1351196)) suffix!1176)))))

(declare-fun b!3876336 () Bool)

(assert (=> b!3876336 (= e!2398071 true)))

(declare-fun lt!1351215 () tuple2!40428)

(assert (=> b!3876336 (= lt!1351215 (lexList!1751 thiss!20629 rules!2768 prefix!426))))

(declare-fun b!3876337 () Bool)

(declare-fun c!674443 () Bool)

(assert (=> b!3876337 (= c!674443 (isEmpty!24452 lt!1351178))))

(declare-fun tail!5937 (List!41320) List!41320)

(assert (=> b!3876337 (= lt!1351178 (tail!5937 prefixTokens!80))))

(assert (=> b!3876337 (= e!2398063 e!2398080)))

(declare-fun b!3876338 () Bool)

(assert (=> b!3876338 (= e!2398069 e!2398098)))

(declare-fun res!1570406 () Bool)

(assert (=> b!3876338 (=> res!1570406 e!2398098)))

(assert (=> b!3876338 (= res!1570406 (>= lt!1351212 (size!30958 prefix!426)))))

(assert (=> b!3876338 (isPrefix!3493 lt!1351184 prefix!426)))

(declare-fun lt!1351175 () Unit!59159)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!243 (List!41319 List!41319 List!41319) Unit!59159)

(assert (=> b!3876338 (= lt!1351175 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!243 prefix!426 lt!1351184 lt!1351202))))

(assert (=> b!3876338 (isPrefix!3493 prefix!426 lt!1351202)))

(declare-fun lt!1351205 () Unit!59159)

(assert (=> b!3876338 (= lt!1351205 (lemmaConcatTwoListThenFirstIsPrefix!2356 prefix!426 suffix!1176))))

(declare-fun b!3876339 () Bool)

(declare-fun res!1570413 () Bool)

(assert (=> b!3876339 (=> (not res!1570413) (not e!2398094))))

(declare-fun rulesInvariant!5326 (LexerInterface!5983 List!41321) Bool)

(assert (=> b!3876339 (= res!1570413 (rulesInvariant!5326 thiss!20629 rules!2768))))

(declare-fun b!3876340 () Bool)

(assert (=> b!3876340 (= e!2398077 (= (size!30957 (_1!23347 (v!39109 lt!1351196))) (size!30958 (originalCharacters!6994 (_1!23347 (v!39109 lt!1351196))))))))

(declare-fun b!3876341 () Bool)

(declare-fun e!2398097 () Bool)

(assert (=> b!3876341 (= e!2398093 e!2398097)))

(declare-fun res!1570404 () Bool)

(assert (=> b!3876341 (=> res!1570404 e!2398097)))

(declare-fun lt!1351176 () List!41319)

(assert (=> b!3876341 (= res!1570404 (or (not (= lt!1351176 lt!1351202)) (not (= lt!1351176 lt!1351187))))))

(assert (=> b!3876341 (= lt!1351176 (++!10546 lt!1351169 suffix!1176))))

(declare-fun b!3876342 () Bool)

(assert (=> b!3876342 (= e!2398076 e!2398100)))

(declare-fun res!1570401 () Bool)

(assert (=> b!3876342 (=> res!1570401 e!2398100)))

(assert (=> b!3876342 (= res!1570401 (not (= lt!1351173 lt!1351174)))))

(assert (=> b!3876342 (= lt!1351174 (tuple2!40429 lt!1351211 suffixResult!91))))

(assert (=> b!3876342 (= lt!1351211 (++!10545 lt!1351208 suffixTokens!72))))

(assert (=> b!3876342 (= lt!1351208 (tail!5937 prefixTokens!80))))

(assert (=> b!3876342 (isPrefix!3493 lt!1351214 lt!1351192)))

(declare-fun lt!1351170 () Unit!59159)

(assert (=> b!3876342 (= lt!1351170 (lemmaConcatTwoListThenFirstIsPrefix!2356 lt!1351214 suffix!1176))))

(declare-fun b!3876343 () Bool)

(declare-fun tp!1175153 () Bool)

(assert (=> b!3876343 (= e!2398095 (and tp_is_empty!19569 tp!1175153))))

(declare-fun b!3876344 () Bool)

(assert (=> b!3876344 (= e!2398097 e!2398101)))

(declare-fun res!1570409 () Bool)

(assert (=> b!3876344 (=> res!1570409 e!2398101)))

(assert (=> b!3876344 (= res!1570409 (or (not (= lt!1351202 lt!1351176)) (not (= lt!1351202 lt!1351191)) (not (= lt!1351187 lt!1351191))))))

(assert (=> b!3876344 (= lt!1351176 lt!1351191)))

(assert (=> b!3876344 (= lt!1351191 (++!10546 lt!1351184 lt!1351192))))

(assert (=> b!3876344 (= lt!1351192 (++!10546 lt!1351214 suffix!1176))))

(declare-fun lt!1351167 () Unit!59159)

(declare-fun lemmaConcatAssociativity!2260 (List!41319 List!41319 List!41319) Unit!59159)

(assert (=> b!3876344 (= lt!1351167 (lemmaConcatAssociativity!2260 lt!1351184 lt!1351214 suffix!1176))))

(declare-fun b!3876345 () Bool)

(assert (=> b!3876345 (= e!2398065 e!2398088)))

(declare-fun res!1570392 () Bool)

(assert (=> b!3876345 (=> (not res!1570392) (not e!2398088))))

(assert (=> b!3876345 (= res!1570392 (= (lexList!1751 thiss!20629 rules!2768 suffix!1176) lt!1351179))))

(assert (=> b!3876345 (= lt!1351179 (tuple2!40429 suffixTokens!72 suffixResult!91))))

(declare-fun b!3876346 () Bool)

(declare-fun tp!1175166 () Bool)

(assert (=> b!3876346 (= e!2398092 (and e!2398070 tp!1175166))))

(assert (= (and start!363972 res!1570403) b!3876309))

(assert (= (and b!3876309 res!1570398) b!3876339))

(assert (= (and b!3876339 res!1570413) b!3876306))

(assert (= (and b!3876306 res!1570411) b!3876329))

(assert (= (and b!3876329 res!1570394) b!3876314))

(assert (= (and b!3876314 res!1570399) b!3876345))

(assert (= (and b!3876345 res!1570392) b!3876327))

(assert (= (and b!3876327 res!1570389) b!3876325))

(assert (= (and b!3876325 res!1570397) b!3876340))

(assert (= (and b!3876325 (not res!1570408)) b!3876298))

(assert (= (and b!3876298 (not res!1570415)) b!3876335))

(assert (= (and b!3876335 (not res!1570405)) b!3876315))

(assert (= (and b!3876315 c!674442) b!3876297))

(assert (= (and b!3876315 (not c!674442)) b!3876312))

(assert (= (and b!3876297 c!674445) b!3876337))

(assert (= (and b!3876297 (not c!674445)) b!3876307))

(assert (= (and b!3876337 c!674443) b!3876332))

(assert (= (and b!3876337 (not c!674443)) b!3876333))

(assert (= (and b!3876332 res!1570402) b!3876334))

(assert (= (and b!3876333 res!1570414) b!3876300))

(assert (= (or b!3876332 b!3876333) bm!282799))

(assert (= (and b!3876315 c!674444) b!3876328))

(assert (= (and b!3876315 (not c!674444)) b!3876303))

(assert (= (and b!3876315 (not res!1570410)) b!3876311))

(assert (= (and b!3876311 (not res!1570400)) b!3876338))

(assert (= (and b!3876338 (not res!1570406)) b!3876301))

(assert (= (and b!3876301 (not res!1570395)) b!3876341))

(assert (= (and b!3876341 (not res!1570404)) b!3876344))

(assert (= (and b!3876344 (not res!1570409)) b!3876302))

(assert (= (and b!3876302 (not res!1570412)) b!3876342))

(assert (= (and b!3876342 (not res!1570401)) b!3876299))

(assert (= (and b!3876299 c!674441) b!3876322))

(assert (= (and b!3876299 (not c!674441)) b!3876313))

(assert (= (and b!3876299 (not res!1570396)) b!3876308))

(assert (= (and b!3876308 (not res!1570391)) b!3876318))

(assert (= (and b!3876318 (not res!1570393)) b!3876321))

(assert (= (and b!3876321 (not res!1570390)) b!3876326))

(assert (= (and b!3876326 (not res!1570407)) b!3876316))

(assert (= (and b!3876316 (not res!1570388)) b!3876336))

(assert (= (and start!363972 ((_ is Cons!41195) suffixResult!91)) b!3876343))

(assert (= (and start!363972 ((_ is Cons!41195) suffix!1176)) b!3876317))

(assert (= b!3876319 b!3876330))

(assert (= b!3876346 b!3876319))

(assert (= (and start!363972 ((_ is Cons!41197) rules!2768)) b!3876346))

(assert (= b!3876323 b!3876304))

(assert (= b!3876296 b!3876323))

(assert (= b!3876295 b!3876296))

(assert (= (and start!363972 ((_ is Cons!41196) prefixTokens!80)) b!3876295))

(assert (= b!3876324 b!3876320))

(assert (= b!3876331 b!3876324))

(assert (= b!3876310 b!3876331))

(assert (= (and start!363972 ((_ is Cons!41196) suffixTokens!72)) b!3876310))

(assert (= (and start!363972 ((_ is Cons!41195) prefix!426)) b!3876305))

(declare-fun m!4434221 () Bool)

(assert (=> b!3876301 m!4434221))

(declare-fun m!4434223 () Bool)

(assert (=> b!3876301 m!4434223))

(declare-fun m!4434225 () Bool)

(assert (=> b!3876299 m!4434225))

(declare-fun m!4434227 () Bool)

(assert (=> b!3876299 m!4434227))

(declare-fun m!4434229 () Bool)

(assert (=> b!3876299 m!4434229))

(declare-fun m!4434231 () Bool)

(assert (=> b!3876299 m!4434231))

(assert (=> b!3876299 m!4434225))

(declare-fun m!4434233 () Bool)

(assert (=> b!3876299 m!4434233))

(declare-fun m!4434235 () Bool)

(assert (=> b!3876341 m!4434235))

(declare-fun m!4434237 () Bool)

(assert (=> b!3876322 m!4434237))

(declare-fun m!4434239 () Bool)

(assert (=> b!3876325 m!4434239))

(declare-fun m!4434241 () Bool)

(assert (=> b!3876325 m!4434241))

(assert (=> b!3876325 m!4434239))

(declare-fun m!4434243 () Bool)

(assert (=> b!3876325 m!4434243))

(declare-fun m!4434245 () Bool)

(assert (=> b!3876325 m!4434245))

(declare-fun m!4434247 () Bool)

(assert (=> b!3876325 m!4434247))

(declare-fun m!4434249 () Bool)

(assert (=> b!3876325 m!4434249))

(declare-fun m!4434251 () Bool)

(assert (=> b!3876325 m!4434251))

(declare-fun m!4434253 () Bool)

(assert (=> b!3876325 m!4434253))

(declare-fun m!4434255 () Bool)

(assert (=> b!3876325 m!4434255))

(declare-fun m!4434257 () Bool)

(assert (=> b!3876325 m!4434257))

(assert (=> b!3876325 m!4434251))

(declare-fun m!4434259 () Bool)

(assert (=> b!3876325 m!4434259))

(declare-fun m!4434261 () Bool)

(assert (=> b!3876325 m!4434261))

(declare-fun m!4434263 () Bool)

(assert (=> b!3876325 m!4434263))

(declare-fun m!4434265 () Bool)

(assert (=> b!3876325 m!4434265))

(declare-fun m!4434267 () Bool)

(assert (=> b!3876326 m!4434267))

(declare-fun m!4434269 () Bool)

(assert (=> b!3876310 m!4434269))

(declare-fun m!4434271 () Bool)

(assert (=> b!3876315 m!4434271))

(declare-fun m!4434273 () Bool)

(assert (=> b!3876315 m!4434273))

(declare-fun m!4434275 () Bool)

(assert (=> b!3876344 m!4434275))

(declare-fun m!4434277 () Bool)

(assert (=> b!3876344 m!4434277))

(declare-fun m!4434279 () Bool)

(assert (=> b!3876344 m!4434279))

(declare-fun m!4434281 () Bool)

(assert (=> b!3876311 m!4434281))

(declare-fun m!4434283 () Bool)

(assert (=> b!3876298 m!4434283))

(declare-fun m!4434285 () Bool)

(assert (=> b!3876338 m!4434285))

(declare-fun m!4434287 () Bool)

(assert (=> b!3876338 m!4434287))

(declare-fun m!4434289 () Bool)

(assert (=> b!3876338 m!4434289))

(declare-fun m!4434291 () Bool)

(assert (=> b!3876338 m!4434291))

(declare-fun m!4434293 () Bool)

(assert (=> b!3876338 m!4434293))

(declare-fun m!4434295 () Bool)

(assert (=> b!3876323 m!4434295))

(declare-fun m!4434297 () Bool)

(assert (=> b!3876323 m!4434297))

(declare-fun m!4434299 () Bool)

(assert (=> b!3876329 m!4434299))

(declare-fun m!4434301 () Bool)

(assert (=> b!3876345 m!4434301))

(declare-fun m!4434303 () Bool)

(assert (=> b!3876321 m!4434303))

(declare-fun m!4434305 () Bool)

(assert (=> b!3876316 m!4434305))

(declare-fun m!4434307 () Bool)

(assert (=> b!3876324 m!4434307))

(declare-fun m!4434309 () Bool)

(assert (=> b!3876324 m!4434309))

(declare-fun m!4434311 () Bool)

(assert (=> b!3876308 m!4434311))

(declare-fun m!4434313 () Bool)

(assert (=> bm!282799 m!4434313))

(declare-fun m!4434315 () Bool)

(assert (=> b!3876318 m!4434315))

(declare-fun m!4434317 () Bool)

(assert (=> b!3876318 m!4434317))

(declare-fun m!4434319 () Bool)

(assert (=> b!3876302 m!4434319))

(declare-fun m!4434321 () Bool)

(assert (=> b!3876302 m!4434321))

(declare-fun m!4434323 () Bool)

(assert (=> b!3876302 m!4434323))

(declare-fun m!4434325 () Bool)

(assert (=> b!3876309 m!4434325))

(declare-fun m!4434327 () Bool)

(assert (=> b!3876332 m!4434327))

(declare-fun m!4434329 () Bool)

(assert (=> b!3876332 m!4434329))

(declare-fun m!4434331 () Bool)

(assert (=> b!3876295 m!4434331))

(declare-fun m!4434333 () Bool)

(assert (=> b!3876296 m!4434333))

(assert (=> b!3876328 m!4434287))

(assert (=> b!3876328 m!4434289))

(declare-fun m!4434335 () Bool)

(assert (=> b!3876328 m!4434335))

(declare-fun m!4434337 () Bool)

(assert (=> b!3876328 m!4434337))

(declare-fun m!4434339 () Bool)

(assert (=> b!3876327 m!4434339))

(declare-fun m!4434341 () Bool)

(assert (=> b!3876306 m!4434341))

(declare-fun m!4434343 () Bool)

(assert (=> b!3876336 m!4434343))

(declare-fun m!4434345 () Bool)

(assert (=> b!3876319 m!4434345))

(declare-fun m!4434347 () Bool)

(assert (=> b!3876319 m!4434347))

(declare-fun m!4434349 () Bool)

(assert (=> b!3876297 m!4434349))

(declare-fun m!4434351 () Bool)

(assert (=> b!3876297 m!4434351))

(declare-fun m!4434353 () Bool)

(assert (=> b!3876297 m!4434353))

(declare-fun m!4434355 () Bool)

(assert (=> b!3876297 m!4434355))

(declare-fun m!4434357 () Bool)

(assert (=> b!3876297 m!4434357))

(declare-fun m!4434359 () Bool)

(assert (=> b!3876339 m!4434359))

(declare-fun m!4434361 () Bool)

(assert (=> b!3876333 m!4434361))

(declare-fun m!4434363 () Bool)

(assert (=> b!3876333 m!4434363))

(declare-fun m!4434365 () Bool)

(assert (=> b!3876331 m!4434365))

(declare-fun m!4434367 () Bool)

(assert (=> b!3876342 m!4434367))

(declare-fun m!4434369 () Bool)

(assert (=> b!3876342 m!4434369))

(declare-fun m!4434371 () Bool)

(assert (=> b!3876342 m!4434371))

(declare-fun m!4434373 () Bool)

(assert (=> b!3876342 m!4434373))

(declare-fun m!4434375 () Bool)

(assert (=> b!3876340 m!4434375))

(declare-fun m!4434377 () Bool)

(assert (=> b!3876314 m!4434377))

(declare-fun m!4434379 () Bool)

(assert (=> b!3876314 m!4434379))

(declare-fun m!4434381 () Bool)

(assert (=> b!3876314 m!4434381))

(declare-fun m!4434383 () Bool)

(assert (=> b!3876337 m!4434383))

(assert (=> b!3876337 m!4434369))

(check-sat (not b!3876327) (not b_next!105527) (not b!3876298) (not b!3876325) (not b!3876332) b_and!290673 (not b!3876319) (not b!3876317) (not b!3876344) (not b!3876333) (not b!3876306) (not b_next!105529) (not b!3876299) (not b!3876326) (not b!3876340) (not b!3876341) b_and!290671 (not b!3876322) (not b_next!105535) (not b_next!105531) (not b!3876315) (not b!3876295) (not b!3876336) (not b!3876310) (not b!3876339) b_and!290677 (not b!3876345) (not b!3876296) (not b!3876321) (not b!3876308) b_and!290669 (not b!3876331) (not b!3876337) (not b!3876342) (not b_next!105533) (not b!3876318) (not b!3876329) b_and!290667 (not b!3876305) (not b!3876302) (not b_next!105525) (not b!3876316) (not b!3876328) (not b!3876301) (not b!3876323) (not bm!282799) tp_is_empty!19569 (not b!3876343) (not b!3876311) (not b!3876314) (not b!3876346) (not b!3876338) (not b!3876297) b_and!290675 (not b!3876309) (not b!3876324))
(check-sat (not b_next!105529) (not b_next!105527) b_and!290677 b_and!290669 (not b_next!105533) b_and!290667 (not b_next!105525) b_and!290673 b_and!290675 b_and!290671 (not b_next!105535) (not b_next!105531))
