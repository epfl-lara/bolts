; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!367642 () Bool)

(assert start!367642)

(declare-fun b!3921315 () Bool)

(declare-fun b_free!106673 () Bool)

(declare-fun b_next!107377 () Bool)

(assert (=> b!3921315 (= b_free!106673 (not b_next!107377))))

(declare-fun tp!1193677 () Bool)

(declare-fun b_and!298883 () Bool)

(assert (=> b!3921315 (= tp!1193677 b_and!298883)))

(declare-fun b_free!106675 () Bool)

(declare-fun b_next!107379 () Bool)

(assert (=> b!3921315 (= b_free!106675 (not b_next!107379))))

(declare-fun tp!1193666 () Bool)

(declare-fun b_and!298885 () Bool)

(assert (=> b!3921315 (= tp!1193666 b_and!298885)))

(declare-fun b!3921338 () Bool)

(declare-fun b_free!106677 () Bool)

(declare-fun b_next!107381 () Bool)

(assert (=> b!3921338 (= b_free!106677 (not b_next!107381))))

(declare-fun tp!1193668 () Bool)

(declare-fun b_and!298887 () Bool)

(assert (=> b!3921338 (= tp!1193668 b_and!298887)))

(declare-fun b_free!106679 () Bool)

(declare-fun b_next!107383 () Bool)

(assert (=> b!3921338 (= b_free!106679 (not b_next!107383))))

(declare-fun tp!1193665 () Bool)

(declare-fun b_and!298889 () Bool)

(assert (=> b!3921338 (= tp!1193665 b_and!298889)))

(declare-fun b!3921311 () Bool)

(declare-fun b_free!106681 () Bool)

(declare-fun b_next!107385 () Bool)

(assert (=> b!3921311 (= b_free!106681 (not b_next!107385))))

(declare-fun tp!1193675 () Bool)

(declare-fun b_and!298891 () Bool)

(assert (=> b!3921311 (= tp!1193675 b_and!298891)))

(declare-fun b_free!106683 () Bool)

(declare-fun b_next!107387 () Bool)

(assert (=> b!3921311 (= b_free!106683 (not b_next!107387))))

(declare-fun tp!1193674 () Bool)

(declare-fun b_and!298893 () Bool)

(assert (=> b!3921311 (= tp!1193674 b_and!298893)))

(declare-fun b!3921303 () Bool)

(declare-fun e!2424920 () Bool)

(declare-datatypes ((List!41707 0))(
  ( (Nil!41583) (Cons!41583 (h!47003 (_ BitVec 16)) (t!324554 List!41707)) )
))
(declare-datatypes ((TokenValue!6711 0))(
  ( (FloatLiteralValue!13422 (text!47422 List!41707)) (TokenValueExt!6710 (__x!25639 Int)) (Broken!33555 (value!205318 List!41707)) (Object!6834) (End!6711) (Def!6711) (Underscore!6711) (Match!6711) (Else!6711) (Error!6711) (Case!6711) (If!6711) (Extends!6711) (Abstract!6711) (Class!6711) (Val!6711) (DelimiterValue!13422 (del!6771 List!41707)) (KeywordValue!6717 (value!205319 List!41707)) (CommentValue!13422 (value!205320 List!41707)) (WhitespaceValue!13422 (value!205321 List!41707)) (IndentationValue!6711 (value!205322 List!41707)) (String!47274) (Int32!6711) (Broken!33556 (value!205323 List!41707)) (Boolean!6712) (Unit!59763) (OperatorValue!6714 (op!6771 List!41707)) (IdentifierValue!13422 (value!205324 List!41707)) (IdentifierValue!13423 (value!205325 List!41707)) (WhitespaceValue!13423 (value!205326 List!41707)) (True!13422) (False!13422) (Broken!33557 (value!205327 List!41707)) (Broken!33558 (value!205328 List!41707)) (True!13423) (RightBrace!6711) (RightBracket!6711) (Colon!6711) (Null!6711) (Comma!6711) (LeftBracket!6711) (False!13423) (LeftBrace!6711) (ImaginaryLiteralValue!6711 (text!47423 List!41707)) (StringLiteralValue!20133 (value!205329 List!41707)) (EOFValue!6711 (value!205330 List!41707)) (IdentValue!6711 (value!205331 List!41707)) (DelimiterValue!13423 (value!205332 List!41707)) (DedentValue!6711 (value!205333 List!41707)) (NewLineValue!6711 (value!205334 List!41707)) (IntegerValue!20133 (value!205335 (_ BitVec 32)) (text!47424 List!41707)) (IntegerValue!20134 (value!205336 Int) (text!47425 List!41707)) (Times!6711) (Or!6711) (Equal!6711) (Minus!6711) (Broken!33559 (value!205337 List!41707)) (And!6711) (Div!6711) (LessEqual!6711) (Mod!6711) (Concat!18097) (Not!6711) (Plus!6711) (SpaceValue!6711 (value!205338 List!41707)) (IntegerValue!20135 (value!205339 Int) (text!47426 List!41707)) (StringLiteralValue!20134 (text!47427 List!41707)) (FloatLiteralValue!13423 (text!47428 List!41707)) (BytesLiteralValue!6711 (value!205340 List!41707)) (CommentValue!13423 (value!205341 List!41707)) (StringLiteralValue!20135 (value!205342 List!41707)) (ErrorTokenValue!6711 (msg!6772 List!41707)) )
))
(declare-datatypes ((C!22958 0))(
  ( (C!22959 (val!13573 Int)) )
))
(declare-datatypes ((Regex!11386 0))(
  ( (ElementMatch!11386 (c!681453 C!22958)) (Concat!18098 (regOne!23284 Regex!11386) (regTwo!23284 Regex!11386)) (EmptyExpr!11386) (Star!11386 (reg!11715 Regex!11386)) (EmptyLang!11386) (Union!11386 (regOne!23285 Regex!11386) (regTwo!23285 Regex!11386)) )
))
(declare-datatypes ((String!47275 0))(
  ( (String!47276 (value!205343 String)) )
))
(declare-datatypes ((List!41708 0))(
  ( (Nil!41584) (Cons!41584 (h!47004 C!22958) (t!324555 List!41708)) )
))
(declare-datatypes ((IArray!25389 0))(
  ( (IArray!25390 (innerList!12752 List!41708)) )
))
(declare-datatypes ((Conc!12692 0))(
  ( (Node!12692 (left!31783 Conc!12692) (right!32113 Conc!12692) (csize!25614 Int) (cheight!12903 Int)) (Leaf!19640 (xs!15998 IArray!25389) (csize!25615 Int)) (Empty!12692) )
))
(declare-datatypes ((BalanceConc!24978 0))(
  ( (BalanceConc!24979 (c!681454 Conc!12692)) )
))
(declare-datatypes ((TokenValueInjection!12850 0))(
  ( (TokenValueInjection!12851 (toValue!8933 Int) (toChars!8792 Int)) )
))
(declare-datatypes ((Rule!12762 0))(
  ( (Rule!12763 (regex!6481 Regex!11386) (tag!7341 String!47275) (isSeparator!6481 Bool) (transformation!6481 TokenValueInjection!12850)) )
))
(declare-datatypes ((Token!12100 0))(
  ( (Token!12101 (value!205344 TokenValue!6711) (rule!9413 Rule!12762) (size!31215 Int) (originalCharacters!7081 List!41708)) )
))
(declare-datatypes ((List!41709 0))(
  ( (Nil!41585) (Cons!41585 (h!47005 Token!12100) (t!324556 List!41709)) )
))
(declare-fun prefixTokens!80 () List!41709)

(declare-datatypes ((tuple2!40846 0))(
  ( (tuple2!40847 (_1!23557 Token!12100) (_2!23557 List!41708)) )
))
(declare-datatypes ((Option!8901 0))(
  ( (None!8900) (Some!8900 (v!39226 tuple2!40846)) )
))
(declare-fun lt!1366912 () Option!8901)

(declare-fun head!8296 (List!41709) Token!12100)

(assert (=> b!3921303 (= e!2424920 (= (head!8296 prefixTokens!80) (_1!23557 (v!39226 lt!1366912))))))

(declare-fun b!3921304 () Bool)

(declare-fun e!2424910 () Bool)

(assert (=> b!3921304 (= e!2424910 e!2424920)))

(declare-fun res!1586255 () Bool)

(assert (=> b!3921304 (=> res!1586255 e!2424920)))

(declare-fun lt!1366894 () Int)

(declare-fun lt!1366897 () Int)

(assert (=> b!3921304 (= res!1586255 (<= lt!1366894 lt!1366897))))

(declare-datatypes ((Unit!59764 0))(
  ( (Unit!59765) )
))
(declare-fun lt!1366890 () Unit!59764)

(declare-fun e!2424916 () Unit!59764)

(assert (=> b!3921304 (= lt!1366890 e!2424916)))

(declare-fun c!681452 () Bool)

(assert (=> b!3921304 (= c!681452 (= lt!1366894 lt!1366897))))

(declare-fun lt!1366913 () Unit!59764)

(declare-fun e!2424913 () Unit!59764)

(assert (=> b!3921304 (= lt!1366913 e!2424913)))

(declare-fun c!681451 () Bool)

(assert (=> b!3921304 (= c!681451 (< lt!1366894 lt!1366897))))

(declare-fun suffix!1176 () List!41708)

(declare-fun size!31216 (List!41708) Int)

(assert (=> b!3921304 (= lt!1366897 (size!31216 suffix!1176))))

(assert (=> b!3921304 (= lt!1366894 (size!31216 (_2!23557 (v!39226 lt!1366912))))))

(declare-fun b!3921305 () Bool)

(declare-fun res!1586261 () Bool)

(declare-fun e!2424901 () Bool)

(assert (=> b!3921305 (=> (not res!1586261) (not e!2424901))))

(declare-datatypes ((LexerInterface!6070 0))(
  ( (LexerInterfaceExt!6067 (__x!25640 Int)) (Lexer!6068) )
))
(declare-fun thiss!20629 () LexerInterface!6070)

(declare-datatypes ((List!41710 0))(
  ( (Nil!41586) (Cons!41586 (h!47006 Rule!12762) (t!324557 List!41710)) )
))
(declare-fun rules!2768 () List!41710)

(declare-fun rulesInvariant!5413 (LexerInterface!6070 List!41710) Bool)

(assert (=> b!3921305 (= res!1586261 (rulesInvariant!5413 thiss!20629 rules!2768))))

(declare-fun b!3921306 () Bool)

(declare-fun e!2424922 () Bool)

(declare-fun tp!1193679 () Bool)

(declare-fun suffixTokens!72 () List!41709)

(declare-fun e!2424919 () Bool)

(declare-fun inv!55781 (Token!12100) Bool)

(assert (=> b!3921306 (= e!2424919 (and (inv!55781 (h!47005 suffixTokens!72)) e!2424922 tp!1193679))))

(declare-fun lt!1366892 () tuple2!40846)

(declare-fun bm!284624 () Bool)

(declare-datatypes ((tuple2!40848 0))(
  ( (tuple2!40849 (_1!23558 List!41709) (_2!23558 List!41708)) )
))
(declare-fun call!284629 () tuple2!40848)

(declare-fun lexList!1838 (LexerInterface!6070 List!41710 List!41708) tuple2!40848)

(assert (=> bm!284624 (= call!284629 (lexList!1838 thiss!20629 rules!2768 (_2!23557 lt!1366892)))))

(declare-fun b!3921307 () Bool)

(declare-fun e!2424915 () Bool)

(declare-fun tp!1193671 () Bool)

(declare-fun e!2424893 () Bool)

(declare-fun inv!55778 (String!47275) Bool)

(declare-fun inv!55782 (TokenValueInjection!12850) Bool)

(assert (=> b!3921307 (= e!2424915 (and tp!1193671 (inv!55778 (tag!7341 (rule!9413 (h!47005 prefixTokens!80)))) (inv!55782 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) e!2424893))))

(declare-fun e!2424907 () Bool)

(declare-fun tp!1193663 () Bool)

(declare-fun b!3921308 () Bool)

(declare-fun inv!21 (TokenValue!6711) Bool)

(assert (=> b!3921308 (= e!2424907 (and (inv!21 (value!205344 (h!47005 prefixTokens!80))) e!2424915 tp!1193663))))

(declare-fun b!3921309 () Bool)

(declare-fun e!2424905 () Bool)

(declare-fun e!2424898 () Bool)

(assert (=> b!3921309 (= e!2424905 e!2424898)))

(declare-fun res!1586260 () Bool)

(assert (=> b!3921309 (=> (not res!1586260) (not e!2424898))))

(declare-fun lt!1366909 () tuple2!40848)

(assert (=> b!3921309 (= res!1586260 (= (lexList!1838 thiss!20629 rules!2768 suffix!1176) lt!1366909))))

(declare-fun suffixResult!91 () List!41708)

(assert (=> b!3921309 (= lt!1366909 (tuple2!40849 suffixTokens!72 suffixResult!91))))

(declare-fun b!3921310 () Bool)

(assert (=> b!3921310 (= e!2424901 e!2424905)))

(declare-fun res!1586263 () Bool)

(assert (=> b!3921310 (=> (not res!1586263) (not e!2424905))))

(declare-fun lt!1366905 () tuple2!40848)

(declare-fun lt!1366919 () List!41709)

(assert (=> b!3921310 (= res!1586263 (= lt!1366905 (tuple2!40849 lt!1366919 suffixResult!91)))))

(declare-fun lt!1366895 () List!41708)

(assert (=> b!3921310 (= lt!1366905 (lexList!1838 thiss!20629 rules!2768 lt!1366895))))

(declare-fun ++!10719 (List!41709 List!41709) List!41709)

(assert (=> b!3921310 (= lt!1366919 (++!10719 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41708)

(declare-fun ++!10720 (List!41708 List!41708) List!41708)

(assert (=> b!3921310 (= lt!1366895 (++!10720 prefix!426 suffix!1176))))

(declare-fun e!2424894 () Bool)

(assert (=> b!3921311 (= e!2424894 (and tp!1193675 tp!1193674))))

(declare-fun tp!1193673 () Bool)

(declare-fun e!2424903 () Bool)

(declare-fun b!3921312 () Bool)

(assert (=> b!3921312 (= e!2424903 (and (inv!55781 (h!47005 prefixTokens!80)) e!2424907 tp!1193673))))

(declare-fun b!3921313 () Bool)

(declare-fun e!2424902 () Bool)

(declare-fun tp_is_empty!19743 () Bool)

(declare-fun tp!1193672 () Bool)

(assert (=> b!3921313 (= e!2424902 (and tp_is_empty!19743 tp!1193672))))

(declare-fun b!3921314 () Bool)

(declare-fun e!2424921 () Bool)

(assert (=> b!3921314 (= e!2424921 false)))

(declare-fun e!2424904 () Bool)

(assert (=> b!3921315 (= e!2424904 (and tp!1193677 tp!1193666))))

(declare-fun res!1586259 () Bool)

(assert (=> start!367642 (=> (not res!1586259) (not e!2424901))))

(assert (=> start!367642 (= res!1586259 (is-Lexer!6068 thiss!20629))))

(assert (=> start!367642 e!2424901))

(assert (=> start!367642 e!2424902))

(assert (=> start!367642 true))

(declare-fun e!2424897 () Bool)

(assert (=> start!367642 e!2424897))

(declare-fun e!2424906 () Bool)

(assert (=> start!367642 e!2424906))

(assert (=> start!367642 e!2424903))

(assert (=> start!367642 e!2424919))

(declare-fun e!2424917 () Bool)

(assert (=> start!367642 e!2424917))

(declare-fun b!3921316 () Bool)

(declare-fun Unit!59766 () Unit!59764)

(assert (=> b!3921316 (= e!2424916 Unit!59766)))

(declare-fun b!3921317 () Bool)

(declare-fun res!1586256 () Bool)

(assert (=> b!3921317 (=> (not res!1586256) (not e!2424901))))

(declare-fun isEmpty!24761 (List!41710) Bool)

(assert (=> b!3921317 (= res!1586256 (not (isEmpty!24761 rules!2768)))))

(declare-fun b!3921318 () Bool)

(declare-fun e!2424914 () Bool)

(assert (=> b!3921318 (= e!2424914 (= (size!31215 (_1!23557 (v!39226 lt!1366912))) (size!31216 (originalCharacters!7081 (_1!23557 (v!39226 lt!1366912))))))))

(declare-fun b!3921319 () Bool)

(declare-fun e!2424909 () Bool)

(declare-fun tp!1193678 () Bool)

(assert (=> b!3921319 (= e!2424906 (and e!2424909 tp!1193678))))

(declare-fun b!3921320 () Bool)

(declare-fun e!2424912 () Bool)

(assert (=> b!3921320 (= e!2424898 e!2424912)))

(declare-fun res!1586262 () Bool)

(assert (=> b!3921320 (=> (not res!1586262) (not e!2424912))))

(assert (=> b!3921320 (= res!1586262 (is-Some!8900 lt!1366912))))

(declare-fun maxPrefix!3374 (LexerInterface!6070 List!41710 List!41708) Option!8901)

(assert (=> b!3921320 (= lt!1366912 (maxPrefix!3374 thiss!20629 rules!2768 lt!1366895))))

(declare-fun e!2424908 () Bool)

(declare-fun b!3921321 () Bool)

(declare-fun tp!1193664 () Bool)

(assert (=> b!3921321 (= e!2424922 (and (inv!21 (value!205344 (h!47005 suffixTokens!72))) e!2424908 tp!1193664))))

(declare-fun b!3921322 () Bool)

(declare-fun Unit!59767 () Unit!59764)

(assert (=> b!3921322 (= e!2424913 Unit!59767)))

(declare-fun lt!1366899 () Int)

(assert (=> b!3921322 (= lt!1366899 (size!31216 lt!1366895))))

(declare-fun lt!1366904 () Unit!59764)

(declare-fun lt!1366901 () List!41708)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1312 (LexerInterface!6070 List!41710 List!41708 List!41708 List!41708 Rule!12762) Unit!59764)

(assert (=> b!3921322 (= lt!1366904 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1312 thiss!20629 rules!2768 lt!1366901 lt!1366895 (_2!23557 (v!39226 lt!1366912)) (rule!9413 (_1!23557 (v!39226 lt!1366912)))))))

(declare-fun lt!1366916 () Int)

(declare-fun lt!1366906 () TokenValue!6711)

(declare-fun maxPrefixOneRule!2444 (LexerInterface!6070 Rule!12762 List!41708) Option!8901)

(assert (=> b!3921322 (= (maxPrefixOneRule!2444 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))) lt!1366895) (Some!8900 (tuple2!40847 (Token!12101 lt!1366906 (rule!9413 (_1!23557 (v!39226 lt!1366912))) lt!1366916 lt!1366901) (_2!23557 (v!39226 lt!1366912)))))))

(declare-fun get!13742 (Option!8901) tuple2!40846)

(assert (=> b!3921322 (= lt!1366892 (get!13742 lt!1366912))))

(declare-fun c!681449 () Bool)

(assert (=> b!3921322 (= c!681449 (< (size!31216 (_2!23557 lt!1366892)) lt!1366897))))

(declare-fun lt!1366911 () Unit!59764)

(declare-fun e!2424891 () Unit!59764)

(assert (=> b!3921322 (= lt!1366911 e!2424891)))

(assert (=> b!3921322 false))

(declare-fun b!3921323 () Bool)

(declare-fun res!1586258 () Bool)

(assert (=> b!3921323 (=> res!1586258 e!2424910)))

(declare-fun lt!1366903 () tuple2!40848)

(assert (=> b!3921323 (= res!1586258 (not (= lt!1366905 (tuple2!40849 (++!10719 (Cons!41585 (_1!23557 (v!39226 lt!1366912)) Nil!41585) (_1!23558 lt!1366903)) (_2!23558 lt!1366903)))))))

(declare-fun b!3921324 () Bool)

(declare-fun tp!1193667 () Bool)

(assert (=> b!3921324 (= e!2424917 (and tp_is_empty!19743 tp!1193667))))

(declare-fun b!3921325 () Bool)

(declare-fun Unit!59768 () Unit!59764)

(assert (=> b!3921325 (= e!2424913 Unit!59768)))

(declare-fun b!3921326 () Bool)

(assert (=> b!3921326 (= e!2424912 (not e!2424910))))

(declare-fun res!1586267 () Bool)

(assert (=> b!3921326 (=> res!1586267 e!2424910)))

(declare-fun lt!1366902 () List!41708)

(assert (=> b!3921326 (= res!1586267 (not (= lt!1366902 lt!1366895)))))

(assert (=> b!3921326 (= lt!1366903 (lexList!1838 thiss!20629 rules!2768 (_2!23557 (v!39226 lt!1366912))))))

(declare-fun lt!1366893 () List!41708)

(assert (=> b!3921326 (and (= (size!31215 (_1!23557 (v!39226 lt!1366912))) lt!1366916) (= (originalCharacters!7081 (_1!23557 (v!39226 lt!1366912))) lt!1366901) (= (v!39226 lt!1366912) (tuple2!40847 (Token!12101 lt!1366906 (rule!9413 (_1!23557 (v!39226 lt!1366912))) lt!1366916 lt!1366901) lt!1366893)))))

(assert (=> b!3921326 (= lt!1366916 (size!31216 lt!1366901))))

(assert (=> b!3921326 e!2424914))

(declare-fun res!1586254 () Bool)

(assert (=> b!3921326 (=> (not res!1586254) (not e!2424914))))

(assert (=> b!3921326 (= res!1586254 (= (value!205344 (_1!23557 (v!39226 lt!1366912))) lt!1366906))))

(declare-fun apply!9720 (TokenValueInjection!12850 BalanceConc!24978) TokenValue!6711)

(declare-fun seqFromList!4748 (List!41708) BalanceConc!24978)

(assert (=> b!3921326 (= lt!1366906 (apply!9720 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) (seqFromList!4748 lt!1366901)))))

(assert (=> b!3921326 (= (_2!23557 (v!39226 lt!1366912)) lt!1366893)))

(declare-fun lt!1366896 () Unit!59764)

(declare-fun lemmaSamePrefixThenSameSuffix!1797 (List!41708 List!41708 List!41708 List!41708 List!41708) Unit!59764)

(assert (=> b!3921326 (= lt!1366896 (lemmaSamePrefixThenSameSuffix!1797 lt!1366901 (_2!23557 (v!39226 lt!1366912)) lt!1366901 lt!1366893 lt!1366895))))

(declare-fun getSuffix!2031 (List!41708 List!41708) List!41708)

(assert (=> b!3921326 (= lt!1366893 (getSuffix!2031 lt!1366895 lt!1366901))))

(declare-fun isPrefix!3576 (List!41708 List!41708) Bool)

(assert (=> b!3921326 (isPrefix!3576 lt!1366901 lt!1366902)))

(assert (=> b!3921326 (= lt!1366902 (++!10720 lt!1366901 (_2!23557 (v!39226 lt!1366912))))))

(declare-fun lt!1366908 () Unit!59764)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2439 (List!41708 List!41708) Unit!59764)

(assert (=> b!3921326 (= lt!1366908 (lemmaConcatTwoListThenFirstIsPrefix!2439 lt!1366901 (_2!23557 (v!39226 lt!1366912))))))

(declare-fun list!15458 (BalanceConc!24978) List!41708)

(declare-fun charsOf!4305 (Token!12100) BalanceConc!24978)

(assert (=> b!3921326 (= lt!1366901 (list!15458 (charsOf!4305 (_1!23557 (v!39226 lt!1366912)))))))

(declare-fun ruleValid!2429 (LexerInterface!6070 Rule!12762) Bool)

(assert (=> b!3921326 (ruleValid!2429 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))))))

(declare-fun lt!1366915 () Unit!59764)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1509 (LexerInterface!6070 Rule!12762 List!41710) Unit!59764)

(assert (=> b!3921326 (= lt!1366915 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1509 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))) rules!2768))))

(declare-fun lt!1366907 () Unit!59764)

(declare-fun lemmaCharactersSize!1138 (Token!12100) Unit!59764)

(assert (=> b!3921326 (= lt!1366907 (lemmaCharactersSize!1138 (_1!23557 (v!39226 lt!1366912))))))

(declare-fun b!3921327 () Bool)

(declare-fun c!681450 () Bool)

(declare-fun lt!1366917 () List!41709)

(declare-fun isEmpty!24762 (List!41709) Bool)

(assert (=> b!3921327 (= c!681450 (isEmpty!24762 lt!1366917))))

(declare-fun tail!6020 (List!41709) List!41709)

(assert (=> b!3921327 (= lt!1366917 (tail!6020 prefixTokens!80))))

(declare-fun e!2424900 () Unit!59764)

(assert (=> b!3921327 (= e!2424891 e!2424900)))

(declare-fun b!3921328 () Bool)

(declare-fun e!2424895 () Bool)

(assert (=> b!3921328 (= e!2424895 false)))

(declare-fun b!3921329 () Bool)

(declare-fun Unit!59769 () Unit!59764)

(assert (=> b!3921329 (= e!2424900 Unit!59769)))

(declare-fun lt!1366918 () Unit!59764)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!81 (LexerInterface!6070 List!41710 List!41708 List!41708 List!41709 List!41708 List!41709) Unit!59764)

(assert (=> b!3921329 (= lt!1366918 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!81 thiss!20629 rules!2768 suffix!1176 (_2!23557 lt!1366892) suffixTokens!72 suffixResult!91 lt!1366917))))

(declare-fun res!1586257 () Bool)

(assert (=> b!3921329 (= res!1586257 (not (= call!284629 (tuple2!40849 (++!10719 lt!1366917 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3921329 (=> (not res!1586257) (not e!2424895))))

(assert (=> b!3921329 e!2424895))

(declare-fun b!3921330 () Bool)

(declare-fun res!1586253 () Bool)

(assert (=> b!3921330 (=> (not res!1586253) (not e!2424901))))

(declare-fun isEmpty!24763 (List!41708) Bool)

(assert (=> b!3921330 (= res!1586253 (not (isEmpty!24763 prefix!426)))))

(declare-fun b!3921331 () Bool)

(declare-fun res!1586264 () Bool)

(assert (=> b!3921331 (=> res!1586264 e!2424910)))

(assert (=> b!3921331 (= res!1586264 (or (not (= lt!1366903 (tuple2!40849 (_1!23558 lt!1366903) (_2!23558 lt!1366903)))) (= (_2!23557 (v!39226 lt!1366912)) suffix!1176)))))

(declare-fun b!3921332 () Bool)

(declare-fun Unit!59770 () Unit!59764)

(assert (=> b!3921332 (= e!2424891 Unit!59770)))

(declare-fun b!3921333 () Bool)

(declare-fun tp!1193676 () Bool)

(assert (=> b!3921333 (= e!2424897 (and tp_is_empty!19743 tp!1193676))))

(declare-fun b!3921334 () Bool)

(declare-fun Unit!59771 () Unit!59764)

(assert (=> b!3921334 (= e!2424900 Unit!59771)))

(declare-fun lt!1366914 () Unit!59764)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!529 (List!41708 List!41708 List!41708 List!41708) Unit!59764)

(assert (=> b!3921334 (= lt!1366914 (lemmaConcatSameAndSameSizesThenSameLists!529 lt!1366901 (_2!23557 (v!39226 lt!1366912)) lt!1366901 (_2!23557 lt!1366892)))))

(assert (=> b!3921334 (= (_2!23557 (v!39226 lt!1366912)) (_2!23557 lt!1366892))))

(declare-fun lt!1366900 () Unit!59764)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!81 (LexerInterface!6070 List!41710 List!41708 List!41708 List!41709 List!41708) Unit!59764)

(assert (=> b!3921334 (= lt!1366900 (lemmaLexWithSmallerInputCannotProduceSameResults!81 thiss!20629 rules!2768 suffix!1176 (_2!23557 lt!1366892) suffixTokens!72 suffixResult!91))))

(declare-fun res!1586265 () Bool)

(assert (=> b!3921334 (= res!1586265 (not (= call!284629 lt!1366909)))))

(assert (=> b!3921334 (=> (not res!1586265) (not e!2424921))))

(assert (=> b!3921334 e!2424921))

(declare-fun b!3921335 () Bool)

(declare-fun tp!1193669 () Bool)

(assert (=> b!3921335 (= e!2424909 (and tp!1193669 (inv!55778 (tag!7341 (h!47006 rules!2768))) (inv!55782 (transformation!6481 (h!47006 rules!2768))) e!2424904))))

(declare-fun b!3921336 () Bool)

(declare-fun res!1586266 () Bool)

(assert (=> b!3921336 (=> (not res!1586266) (not e!2424901))))

(assert (=> b!3921336 (= res!1586266 (not (isEmpty!24762 prefixTokens!80)))))

(declare-fun tp!1193670 () Bool)

(declare-fun b!3921337 () Bool)

(assert (=> b!3921337 (= e!2424908 (and tp!1193670 (inv!55778 (tag!7341 (rule!9413 (h!47005 suffixTokens!72)))) (inv!55782 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) e!2424894))))

(assert (=> b!3921338 (= e!2424893 (and tp!1193668 tp!1193665))))

(declare-fun b!3921339 () Bool)

(declare-fun Unit!59772 () Unit!59764)

(assert (=> b!3921339 (= e!2424916 Unit!59772)))

(declare-fun lt!1366910 () Unit!59764)

(assert (=> b!3921339 (= lt!1366910 (lemmaConcatTwoListThenFirstIsPrefix!2439 prefix!426 suffix!1176))))

(assert (=> b!3921339 (isPrefix!3576 prefix!426 lt!1366895)))

(declare-fun lt!1366898 () Unit!59764)

(declare-fun lemmaIsPrefixSameLengthThenSameList!772 (List!41708 List!41708 List!41708) Unit!59764)

(assert (=> b!3921339 (= lt!1366898 (lemmaIsPrefixSameLengthThenSameList!772 lt!1366901 prefix!426 lt!1366895))))

(assert (=> b!3921339 (= lt!1366901 prefix!426)))

(declare-fun lt!1366891 () Unit!59764)

(assert (=> b!3921339 (= lt!1366891 (lemmaSamePrefixThenSameSuffix!1797 lt!1366901 (_2!23557 (v!39226 lt!1366912)) prefix!426 suffix!1176 lt!1366895))))

(assert (=> b!3921339 false))

(assert (= (and start!367642 res!1586259) b!3921317))

(assert (= (and b!3921317 res!1586256) b!3921305))

(assert (= (and b!3921305 res!1586261) b!3921336))

(assert (= (and b!3921336 res!1586266) b!3921330))

(assert (= (and b!3921330 res!1586253) b!3921310))

(assert (= (and b!3921310 res!1586263) b!3921309))

(assert (= (and b!3921309 res!1586260) b!3921320))

(assert (= (and b!3921320 res!1586262) b!3921326))

(assert (= (and b!3921326 res!1586254) b!3921318))

(assert (= (and b!3921326 (not res!1586267)) b!3921323))

(assert (= (and b!3921323 (not res!1586258)) b!3921331))

(assert (= (and b!3921331 (not res!1586264)) b!3921304))

(assert (= (and b!3921304 c!681451) b!3921322))

(assert (= (and b!3921304 (not c!681451)) b!3921325))

(assert (= (and b!3921322 c!681449) b!3921327))

(assert (= (and b!3921322 (not c!681449)) b!3921332))

(assert (= (and b!3921327 c!681450) b!3921334))

(assert (= (and b!3921327 (not c!681450)) b!3921329))

(assert (= (and b!3921334 res!1586265) b!3921314))

(assert (= (and b!3921329 res!1586257) b!3921328))

(assert (= (or b!3921334 b!3921329) bm!284624))

(assert (= (and b!3921304 c!681452) b!3921339))

(assert (= (and b!3921304 (not c!681452)) b!3921316))

(assert (= (and b!3921304 (not res!1586255)) b!3921303))

(assert (= (and start!367642 (is-Cons!41584 suffixResult!91)) b!3921313))

(assert (= (and start!367642 (is-Cons!41584 suffix!1176)) b!3921333))

(assert (= b!3921335 b!3921315))

(assert (= b!3921319 b!3921335))

(assert (= (and start!367642 (is-Cons!41586 rules!2768)) b!3921319))

(assert (= b!3921307 b!3921338))

(assert (= b!3921308 b!3921307))

(assert (= b!3921312 b!3921308))

(assert (= (and start!367642 (is-Cons!41585 prefixTokens!80)) b!3921312))

(assert (= b!3921337 b!3921311))

(assert (= b!3921321 b!3921337))

(assert (= b!3921306 b!3921321))

(assert (= (and start!367642 (is-Cons!41585 suffixTokens!72)) b!3921306))

(assert (= (and start!367642 (is-Cons!41584 prefix!426)) b!3921324))

(declare-fun m!4485013 () Bool)

(assert (=> b!3921337 m!4485013))

(declare-fun m!4485015 () Bool)

(assert (=> b!3921337 m!4485015))

(declare-fun m!4485017 () Bool)

(assert (=> b!3921321 m!4485017))

(declare-fun m!4485019 () Bool)

(assert (=> b!3921310 m!4485019))

(declare-fun m!4485021 () Bool)

(assert (=> b!3921310 m!4485021))

(declare-fun m!4485023 () Bool)

(assert (=> b!3921310 m!4485023))

(declare-fun m!4485025 () Bool)

(assert (=> b!3921312 m!4485025))

(declare-fun m!4485027 () Bool)

(assert (=> b!3921303 m!4485027))

(declare-fun m!4485029 () Bool)

(assert (=> b!3921304 m!4485029))

(declare-fun m!4485031 () Bool)

(assert (=> b!3921304 m!4485031))

(declare-fun m!4485033 () Bool)

(assert (=> b!3921323 m!4485033))

(declare-fun m!4485035 () Bool)

(assert (=> bm!284624 m!4485035))

(declare-fun m!4485037 () Bool)

(assert (=> b!3921308 m!4485037))

(declare-fun m!4485039 () Bool)

(assert (=> b!3921306 m!4485039))

(declare-fun m!4485041 () Bool)

(assert (=> b!3921305 m!4485041))

(declare-fun m!4485043 () Bool)

(assert (=> b!3921330 m!4485043))

(declare-fun m!4485045 () Bool)

(assert (=> b!3921309 m!4485045))

(declare-fun m!4485047 () Bool)

(assert (=> b!3921339 m!4485047))

(declare-fun m!4485049 () Bool)

(assert (=> b!3921339 m!4485049))

(declare-fun m!4485051 () Bool)

(assert (=> b!3921339 m!4485051))

(declare-fun m!4485053 () Bool)

(assert (=> b!3921339 m!4485053))

(declare-fun m!4485055 () Bool)

(assert (=> b!3921327 m!4485055))

(declare-fun m!4485057 () Bool)

(assert (=> b!3921327 m!4485057))

(declare-fun m!4485059 () Bool)

(assert (=> b!3921334 m!4485059))

(declare-fun m!4485061 () Bool)

(assert (=> b!3921334 m!4485061))

(declare-fun m!4485063 () Bool)

(assert (=> b!3921329 m!4485063))

(declare-fun m!4485065 () Bool)

(assert (=> b!3921329 m!4485065))

(declare-fun m!4485067 () Bool)

(assert (=> b!3921317 m!4485067))

(declare-fun m!4485069 () Bool)

(assert (=> b!3921336 m!4485069))

(declare-fun m!4485071 () Bool)

(assert (=> b!3921307 m!4485071))

(declare-fun m!4485073 () Bool)

(assert (=> b!3921307 m!4485073))

(declare-fun m!4485075 () Bool)

(assert (=> b!3921322 m!4485075))

(declare-fun m!4485077 () Bool)

(assert (=> b!3921322 m!4485077))

(declare-fun m!4485079 () Bool)

(assert (=> b!3921322 m!4485079))

(declare-fun m!4485081 () Bool)

(assert (=> b!3921322 m!4485081))

(declare-fun m!4485083 () Bool)

(assert (=> b!3921322 m!4485083))

(declare-fun m!4485085 () Bool)

(assert (=> b!3921318 m!4485085))

(declare-fun m!4485087 () Bool)

(assert (=> b!3921326 m!4485087))

(declare-fun m!4485089 () Bool)

(assert (=> b!3921326 m!4485089))

(declare-fun m!4485091 () Bool)

(assert (=> b!3921326 m!4485091))

(declare-fun m!4485093 () Bool)

(assert (=> b!3921326 m!4485093))

(declare-fun m!4485095 () Bool)

(assert (=> b!3921326 m!4485095))

(assert (=> b!3921326 m!4485093))

(declare-fun m!4485097 () Bool)

(assert (=> b!3921326 m!4485097))

(declare-fun m!4485099 () Bool)

(assert (=> b!3921326 m!4485099))

(declare-fun m!4485101 () Bool)

(assert (=> b!3921326 m!4485101))

(declare-fun m!4485103 () Bool)

(assert (=> b!3921326 m!4485103))

(declare-fun m!4485105 () Bool)

(assert (=> b!3921326 m!4485105))

(declare-fun m!4485107 () Bool)

(assert (=> b!3921326 m!4485107))

(declare-fun m!4485109 () Bool)

(assert (=> b!3921326 m!4485109))

(declare-fun m!4485111 () Bool)

(assert (=> b!3921326 m!4485111))

(declare-fun m!4485113 () Bool)

(assert (=> b!3921326 m!4485113))

(assert (=> b!3921326 m!4485107))

(declare-fun m!4485115 () Bool)

(assert (=> b!3921335 m!4485115))

(declare-fun m!4485117 () Bool)

(assert (=> b!3921335 m!4485117))

(declare-fun m!4485119 () Bool)

(assert (=> b!3921320 m!4485119))

(push 1)

(assert (not b_next!107385))

(assert b_and!298891)

(assert (not b!3921306))

(assert (not b!3921337))

(assert b_and!298889)

(assert (not b!3921333))

(assert (not b!3921329))

(assert (not b!3921313))

(assert (not b!3921303))

(assert (not b!3921326))

(assert (not b!3921304))

(assert (not b!3921305))

(assert (not b!3921324))

(assert (not b!3921318))

(assert (not b!3921339))

(assert (not b!3921321))

(assert (not b!3921334))

(assert (not b!3921317))

(assert b_and!298893)

(assert (not b!3921319))

(assert b_and!298885)

(assert (not b_next!107387))

(assert (not b!3921330))

(assert (not b!3921307))

(assert tp_is_empty!19743)

(assert (not b!3921309))

(assert b_and!298887)

(assert (not b!3921336))

(assert (not b!3921310))

(assert (not b!3921335))

(assert (not b_next!107381))

(assert b_and!298883)

(assert (not b!3921327))

(assert (not b_next!107377))

(assert (not b!3921320))

(assert (not b!3921312))

(assert (not bm!284624))

(assert (not b!3921323))

(assert (not b_next!107383))

(assert (not b_next!107379))

(assert (not b!3921308))

(assert (not b!3921322))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!107385))

(assert b_and!298891)

(assert b_and!298893)

(assert b_and!298887)

(assert b_and!298889)

(assert (not b_next!107381))

(assert b_and!298885)

(assert (not b_next!107387))

(assert b_and!298883)

(assert (not b_next!107377))

(assert (not b_next!107383))

(assert (not b_next!107379))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1162936 () Bool)

(assert (=> d!1162936 (= (isEmpty!24761 rules!2768) (is-Nil!41586 rules!2768))))

(assert (=> b!3921317 d!1162936))

(declare-fun d!1162938 () Bool)

(declare-fun lt!1367018 () Int)

(assert (=> d!1162938 (>= lt!1367018 0)))

(declare-fun e!2425030 () Int)

(assert (=> d!1162938 (= lt!1367018 e!2425030)))

(declare-fun c!681478 () Bool)

(assert (=> d!1162938 (= c!681478 (is-Nil!41584 (originalCharacters!7081 (_1!23557 (v!39226 lt!1366912)))))))

(assert (=> d!1162938 (= (size!31216 (originalCharacters!7081 (_1!23557 (v!39226 lt!1366912)))) lt!1367018)))

(declare-fun b!3921473 () Bool)

(assert (=> b!3921473 (= e!2425030 0)))

(declare-fun b!3921474 () Bool)

(assert (=> b!3921474 (= e!2425030 (+ 1 (size!31216 (t!324555 (originalCharacters!7081 (_1!23557 (v!39226 lt!1366912)))))))))

(assert (= (and d!1162938 c!681478) b!3921473))

(assert (= (and d!1162938 (not c!681478)) b!3921474))

(declare-fun m!4485241 () Bool)

(assert (=> b!3921474 m!4485241))

(assert (=> b!3921318 d!1162938))

(declare-fun d!1162942 () Bool)

(assert (=> d!1162942 (isPrefix!3576 prefix!426 (++!10720 prefix!426 suffix!1176))))

(declare-fun lt!1367021 () Unit!59764)

(declare-fun choose!23237 (List!41708 List!41708) Unit!59764)

(assert (=> d!1162942 (= lt!1367021 (choose!23237 prefix!426 suffix!1176))))

(assert (=> d!1162942 (= (lemmaConcatTwoListThenFirstIsPrefix!2439 prefix!426 suffix!1176) lt!1367021)))

(declare-fun bs!585869 () Bool)

(assert (= bs!585869 d!1162942))

(assert (=> bs!585869 m!4485023))

(assert (=> bs!585869 m!4485023))

(declare-fun m!4485247 () Bool)

(assert (=> bs!585869 m!4485247))

(declare-fun m!4485249 () Bool)

(assert (=> bs!585869 m!4485249))

(assert (=> b!3921339 d!1162942))

(declare-fun b!3921486 () Bool)

(declare-fun res!1586335 () Bool)

(declare-fun e!2425042 () Bool)

(assert (=> b!3921486 (=> (not res!1586335) (not e!2425042))))

(declare-fun head!8298 (List!41708) C!22958)

(assert (=> b!3921486 (= res!1586335 (= (head!8298 prefix!426) (head!8298 lt!1366895)))))

(declare-fun b!3921485 () Bool)

(declare-fun e!2425041 () Bool)

(assert (=> b!3921485 (= e!2425041 e!2425042)))

(declare-fun res!1586334 () Bool)

(assert (=> b!3921485 (=> (not res!1586334) (not e!2425042))))

(assert (=> b!3921485 (= res!1586334 (not (is-Nil!41584 lt!1366895)))))

(declare-fun b!3921487 () Bool)

(declare-fun tail!6022 (List!41708) List!41708)

(assert (=> b!3921487 (= e!2425042 (isPrefix!3576 (tail!6022 prefix!426) (tail!6022 lt!1366895)))))

(declare-fun b!3921488 () Bool)

(declare-fun e!2425040 () Bool)

(assert (=> b!3921488 (= e!2425040 (>= (size!31216 lt!1366895) (size!31216 prefix!426)))))

(declare-fun d!1162946 () Bool)

(assert (=> d!1162946 e!2425040))

(declare-fun res!1586336 () Bool)

(assert (=> d!1162946 (=> res!1586336 e!2425040)))

(declare-fun lt!1367026 () Bool)

(assert (=> d!1162946 (= res!1586336 (not lt!1367026))))

(assert (=> d!1162946 (= lt!1367026 e!2425041)))

(declare-fun res!1586337 () Bool)

(assert (=> d!1162946 (=> res!1586337 e!2425041)))

(assert (=> d!1162946 (= res!1586337 (is-Nil!41584 prefix!426))))

(assert (=> d!1162946 (= (isPrefix!3576 prefix!426 lt!1366895) lt!1367026)))

(assert (= (and d!1162946 (not res!1586337)) b!3921485))

(assert (= (and b!3921485 res!1586334) b!3921486))

(assert (= (and b!3921486 res!1586335) b!3921487))

(assert (= (and d!1162946 (not res!1586336)) b!3921488))

(declare-fun m!4485253 () Bool)

(assert (=> b!3921486 m!4485253))

(declare-fun m!4485255 () Bool)

(assert (=> b!3921486 m!4485255))

(declare-fun m!4485257 () Bool)

(assert (=> b!3921487 m!4485257))

(declare-fun m!4485259 () Bool)

(assert (=> b!3921487 m!4485259))

(assert (=> b!3921487 m!4485257))

(assert (=> b!3921487 m!4485259))

(declare-fun m!4485261 () Bool)

(assert (=> b!3921487 m!4485261))

(assert (=> b!3921488 m!4485083))

(declare-fun m!4485263 () Bool)

(assert (=> b!3921488 m!4485263))

(assert (=> b!3921339 d!1162946))

(declare-fun d!1162950 () Bool)

(assert (=> d!1162950 (= lt!1366901 prefix!426)))

(declare-fun lt!1367030 () Unit!59764)

(declare-fun choose!23238 (List!41708 List!41708 List!41708) Unit!59764)

(assert (=> d!1162950 (= lt!1367030 (choose!23238 lt!1366901 prefix!426 lt!1366895))))

(assert (=> d!1162950 (isPrefix!3576 lt!1366901 lt!1366895)))

(assert (=> d!1162950 (= (lemmaIsPrefixSameLengthThenSameList!772 lt!1366901 prefix!426 lt!1366895) lt!1367030)))

(declare-fun bs!585872 () Bool)

(assert (= bs!585872 d!1162950))

(declare-fun m!4485269 () Bool)

(assert (=> bs!585872 m!4485269))

(declare-fun m!4485271 () Bool)

(assert (=> bs!585872 m!4485271))

(assert (=> b!3921339 d!1162950))

(declare-fun d!1162954 () Bool)

(assert (=> d!1162954 (= (_2!23557 (v!39226 lt!1366912)) suffix!1176)))

(declare-fun lt!1367035 () Unit!59764)

(declare-fun choose!23239 (List!41708 List!41708 List!41708 List!41708 List!41708) Unit!59764)

(assert (=> d!1162954 (= lt!1367035 (choose!23239 lt!1366901 (_2!23557 (v!39226 lt!1366912)) prefix!426 suffix!1176 lt!1366895))))

(assert (=> d!1162954 (isPrefix!3576 lt!1366901 lt!1366895)))

(assert (=> d!1162954 (= (lemmaSamePrefixThenSameSuffix!1797 lt!1366901 (_2!23557 (v!39226 lt!1366912)) prefix!426 suffix!1176 lt!1366895) lt!1367035)))

(declare-fun bs!585873 () Bool)

(assert (= bs!585873 d!1162954))

(declare-fun m!4485273 () Bool)

(assert (=> bs!585873 m!4485273))

(assert (=> bs!585873 m!4485271))

(assert (=> b!3921339 d!1162954))

(declare-fun d!1162956 () Bool)

(assert (=> d!1162956 (= (inv!55778 (tag!7341 (h!47006 rules!2768))) (= (mod (str.len (value!205343 (tag!7341 (h!47006 rules!2768)))) 2) 0))))

(assert (=> b!3921335 d!1162956))

(declare-fun d!1162960 () Bool)

(declare-fun res!1586340 () Bool)

(declare-fun e!2425045 () Bool)

(assert (=> d!1162960 (=> (not res!1586340) (not e!2425045))))

(declare-fun semiInverseModEq!2786 (Int Int) Bool)

(assert (=> d!1162960 (= res!1586340 (semiInverseModEq!2786 (toChars!8792 (transformation!6481 (h!47006 rules!2768))) (toValue!8933 (transformation!6481 (h!47006 rules!2768)))))))

(assert (=> d!1162960 (= (inv!55782 (transformation!6481 (h!47006 rules!2768))) e!2425045)))

(declare-fun b!3921491 () Bool)

(declare-fun equivClasses!2685 (Int Int) Bool)

(assert (=> b!3921491 (= e!2425045 (equivClasses!2685 (toChars!8792 (transformation!6481 (h!47006 rules!2768))) (toValue!8933 (transformation!6481 (h!47006 rules!2768)))))))

(assert (= (and d!1162960 res!1586340) b!3921491))

(declare-fun m!4485279 () Bool)

(assert (=> d!1162960 m!4485279))

(declare-fun m!4485281 () Bool)

(assert (=> b!3921491 m!4485281))

(assert (=> b!3921335 d!1162960))

(declare-fun d!1162962 () Bool)

(assert (=> d!1162962 (= (isEmpty!24762 prefixTokens!80) (is-Nil!41585 prefixTokens!80))))

(assert (=> b!3921336 d!1162962))

(declare-fun d!1162964 () Bool)

(assert (=> d!1162964 (= (inv!55778 (tag!7341 (rule!9413 (h!47005 suffixTokens!72)))) (= (mod (str.len (value!205343 (tag!7341 (rule!9413 (h!47005 suffixTokens!72))))) 2) 0))))

(assert (=> b!3921337 d!1162964))

(declare-fun d!1162966 () Bool)

(declare-fun res!1586341 () Bool)

(declare-fun e!2425046 () Bool)

(assert (=> d!1162966 (=> (not res!1586341) (not e!2425046))))

(assert (=> d!1162966 (= res!1586341 (semiInverseModEq!2786 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (toValue!8933 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72))))))))

(assert (=> d!1162966 (= (inv!55782 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) e!2425046)))

(declare-fun b!3921492 () Bool)

(assert (=> b!3921492 (= e!2425046 (equivClasses!2685 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (toValue!8933 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72))))))))

(assert (= (and d!1162966 res!1586341) b!3921492))

(declare-fun m!4485283 () Bool)

(assert (=> d!1162966 m!4485283))

(declare-fun m!4485285 () Bool)

(assert (=> b!3921492 m!4485285))

(assert (=> b!3921337 d!1162966))

(declare-fun d!1162968 () Bool)

(assert (=> d!1162968 (= (maxPrefixOneRule!2444 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))) lt!1366895) (Some!8900 (tuple2!40847 (Token!12101 (apply!9720 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) (seqFromList!4748 lt!1366901)) (rule!9413 (_1!23557 (v!39226 lt!1366912))) (size!31216 lt!1366901) lt!1366901) (_2!23557 (v!39226 lt!1366912)))))))

(declare-fun lt!1367045 () Unit!59764)

(declare-fun choose!23240 (LexerInterface!6070 List!41710 List!41708 List!41708 List!41708 Rule!12762) Unit!59764)

(assert (=> d!1162968 (= lt!1367045 (choose!23240 thiss!20629 rules!2768 lt!1366901 lt!1366895 (_2!23557 (v!39226 lt!1366912)) (rule!9413 (_1!23557 (v!39226 lt!1366912)))))))

(assert (=> d!1162968 (not (isEmpty!24761 rules!2768))))

(assert (=> d!1162968 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1312 thiss!20629 rules!2768 lt!1366901 lt!1366895 (_2!23557 (v!39226 lt!1366912)) (rule!9413 (_1!23557 (v!39226 lt!1366912)))) lt!1367045)))

(declare-fun bs!585875 () Bool)

(assert (= bs!585875 d!1162968))

(assert (=> bs!585875 m!4485067))

(assert (=> bs!585875 m!4485093))

(declare-fun m!4485307 () Bool)

(assert (=> bs!585875 m!4485307))

(assert (=> bs!585875 m!4485093))

(assert (=> bs!585875 m!4485095))

(assert (=> bs!585875 m!4485087))

(assert (=> bs!585875 m!4485081))

(assert (=> b!3921322 d!1162968))

(declare-fun d!1162974 () Bool)

(assert (=> d!1162974 (= (get!13742 lt!1366912) (v!39226 lt!1366912))))

(assert (=> b!3921322 d!1162974))

(declare-fun b!3921557 () Bool)

(declare-fun e!2425086 () Bool)

(declare-fun e!2425084 () Bool)

(assert (=> b!3921557 (= e!2425086 e!2425084)))

(declare-fun res!1586381 () Bool)

(assert (=> b!3921557 (=> (not res!1586381) (not e!2425084))))

(declare-fun lt!1367073 () Option!8901)

(declare-fun matchR!5467 (Regex!11386 List!41708) Bool)

(assert (=> b!3921557 (= res!1586381 (matchR!5467 (regex!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) (list!15458 (charsOf!4305 (_1!23557 (get!13742 lt!1367073))))))))

(declare-fun b!3921558 () Bool)

(declare-fun res!1586378 () Bool)

(assert (=> b!3921558 (=> (not res!1586378) (not e!2425084))))

(assert (=> b!3921558 (= res!1586378 (= (++!10720 (list!15458 (charsOf!4305 (_1!23557 (get!13742 lt!1367073)))) (_2!23557 (get!13742 lt!1367073))) lt!1366895))))

(declare-fun b!3921559 () Bool)

(declare-fun res!1586383 () Bool)

(assert (=> b!3921559 (=> (not res!1586383) (not e!2425084))))

(assert (=> b!3921559 (= res!1586383 (= (value!205344 (_1!23557 (get!13742 lt!1367073))) (apply!9720 (transformation!6481 (rule!9413 (_1!23557 (get!13742 lt!1367073)))) (seqFromList!4748 (originalCharacters!7081 (_1!23557 (get!13742 lt!1367073)))))))))

(declare-fun b!3921560 () Bool)

(declare-fun e!2425085 () Bool)

(declare-datatypes ((tuple2!40854 0))(
  ( (tuple2!40855 (_1!23561 List!41708) (_2!23561 List!41708)) )
))
(declare-fun findLongestMatchInner!1247 (Regex!11386 List!41708 Int List!41708 List!41708 Int) tuple2!40854)

(assert (=> b!3921560 (= e!2425085 (matchR!5467 (regex!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) (_1!23561 (findLongestMatchInner!1247 (regex!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) Nil!41584 (size!31216 Nil!41584) lt!1366895 lt!1366895 (size!31216 lt!1366895)))))))

(declare-fun b!3921561 () Bool)

(declare-fun res!1586380 () Bool)

(assert (=> b!3921561 (=> (not res!1586380) (not e!2425084))))

(assert (=> b!3921561 (= res!1586380 (= (rule!9413 (_1!23557 (get!13742 lt!1367073))) (rule!9413 (_1!23557 (v!39226 lt!1366912)))))))

(declare-fun b!3921562 () Bool)

(declare-fun res!1586377 () Bool)

(assert (=> b!3921562 (=> (not res!1586377) (not e!2425084))))

(assert (=> b!3921562 (= res!1586377 (< (size!31216 (_2!23557 (get!13742 lt!1367073))) (size!31216 lt!1366895)))))

(declare-fun b!3921563 () Bool)

(declare-fun e!2425083 () Option!8901)

(declare-fun lt!1367072 () tuple2!40854)

(declare-fun size!31219 (BalanceConc!24978) Int)

(assert (=> b!3921563 (= e!2425083 (Some!8900 (tuple2!40847 (Token!12101 (apply!9720 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) (seqFromList!4748 (_1!23561 lt!1367072))) (rule!9413 (_1!23557 (v!39226 lt!1366912))) (size!31219 (seqFromList!4748 (_1!23561 lt!1367072))) (_1!23561 lt!1367072)) (_2!23561 lt!1367072))))))

(declare-fun lt!1367076 () Unit!59764)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1220 (Regex!11386 List!41708) Unit!59764)

(assert (=> b!3921563 (= lt!1367076 (longestMatchIsAcceptedByMatchOrIsEmpty!1220 (regex!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) lt!1366895))))

(declare-fun res!1586382 () Bool)

(assert (=> b!3921563 (= res!1586382 (isEmpty!24763 (_1!23561 (findLongestMatchInner!1247 (regex!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) Nil!41584 (size!31216 Nil!41584) lt!1366895 lt!1366895 (size!31216 lt!1366895)))))))

(assert (=> b!3921563 (=> res!1586382 e!2425085)))

(assert (=> b!3921563 e!2425085))

(declare-fun lt!1367074 () Unit!59764)

(assert (=> b!3921563 (= lt!1367074 lt!1367076)))

(declare-fun lt!1367075 () Unit!59764)

(declare-fun lemmaSemiInverse!1753 (TokenValueInjection!12850 BalanceConc!24978) Unit!59764)

(assert (=> b!3921563 (= lt!1367075 (lemmaSemiInverse!1753 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) (seqFromList!4748 (_1!23561 lt!1367072))))))

(declare-fun d!1162976 () Bool)

(assert (=> d!1162976 e!2425086))

(declare-fun res!1586379 () Bool)

(assert (=> d!1162976 (=> res!1586379 e!2425086)))

(declare-fun isEmpty!24767 (Option!8901) Bool)

(assert (=> d!1162976 (= res!1586379 (isEmpty!24767 lt!1367073))))

(assert (=> d!1162976 (= lt!1367073 e!2425083)))

(declare-fun c!681491 () Bool)

(assert (=> d!1162976 (= c!681491 (isEmpty!24763 (_1!23561 lt!1367072)))))

(declare-fun findLongestMatch!1160 (Regex!11386 List!41708) tuple2!40854)

(assert (=> d!1162976 (= lt!1367072 (findLongestMatch!1160 (regex!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) lt!1366895))))

(assert (=> d!1162976 (ruleValid!2429 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))))))

(assert (=> d!1162976 (= (maxPrefixOneRule!2444 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))) lt!1366895) lt!1367073)))

(declare-fun b!3921564 () Bool)

(assert (=> b!3921564 (= e!2425083 None!8900)))

(declare-fun b!3921565 () Bool)

(assert (=> b!3921565 (= e!2425084 (= (size!31215 (_1!23557 (get!13742 lt!1367073))) (size!31216 (originalCharacters!7081 (_1!23557 (get!13742 lt!1367073))))))))

(assert (= (and d!1162976 c!681491) b!3921564))

(assert (= (and d!1162976 (not c!681491)) b!3921563))

(assert (= (and b!3921563 (not res!1586382)) b!3921560))

(assert (= (and d!1162976 (not res!1586379)) b!3921557))

(assert (= (and b!3921557 res!1586381) b!3921558))

(assert (= (and b!3921558 res!1586378) b!3921562))

(assert (= (and b!3921562 res!1586377) b!3921561))

(assert (= (and b!3921561 res!1586380) b!3921559))

(assert (= (and b!3921559 res!1586383) b!3921565))

(declare-fun m!4485335 () Bool)

(assert (=> b!3921559 m!4485335))

(declare-fun m!4485337 () Bool)

(assert (=> b!3921559 m!4485337))

(assert (=> b!3921559 m!4485337))

(declare-fun m!4485339 () Bool)

(assert (=> b!3921559 m!4485339))

(declare-fun m!4485341 () Bool)

(assert (=> b!3921560 m!4485341))

(assert (=> b!3921560 m!4485083))

(assert (=> b!3921560 m!4485341))

(assert (=> b!3921560 m!4485083))

(declare-fun m!4485343 () Bool)

(assert (=> b!3921560 m!4485343))

(declare-fun m!4485345 () Bool)

(assert (=> b!3921560 m!4485345))

(assert (=> b!3921558 m!4485335))

(declare-fun m!4485347 () Bool)

(assert (=> b!3921558 m!4485347))

(assert (=> b!3921558 m!4485347))

(declare-fun m!4485349 () Bool)

(assert (=> b!3921558 m!4485349))

(assert (=> b!3921558 m!4485349))

(declare-fun m!4485351 () Bool)

(assert (=> b!3921558 m!4485351))

(assert (=> b!3921565 m!4485335))

(declare-fun m!4485353 () Bool)

(assert (=> b!3921565 m!4485353))

(assert (=> b!3921562 m!4485335))

(declare-fun m!4485355 () Bool)

(assert (=> b!3921562 m!4485355))

(assert (=> b!3921562 m!4485083))

(declare-fun m!4485357 () Bool)

(assert (=> d!1162976 m!4485357))

(declare-fun m!4485359 () Bool)

(assert (=> d!1162976 m!4485359))

(declare-fun m!4485361 () Bool)

(assert (=> d!1162976 m!4485361))

(assert (=> d!1162976 m!4485099))

(assert (=> b!3921561 m!4485335))

(assert (=> b!3921557 m!4485335))

(assert (=> b!3921557 m!4485347))

(assert (=> b!3921557 m!4485347))

(assert (=> b!3921557 m!4485349))

(assert (=> b!3921557 m!4485349))

(declare-fun m!4485363 () Bool)

(assert (=> b!3921557 m!4485363))

(declare-fun m!4485365 () Bool)

(assert (=> b!3921563 m!4485365))

(declare-fun m!4485367 () Bool)

(assert (=> b!3921563 m!4485367))

(assert (=> b!3921563 m!4485365))

(assert (=> b!3921563 m!4485365))

(declare-fun m!4485369 () Bool)

(assert (=> b!3921563 m!4485369))

(assert (=> b!3921563 m!4485365))

(declare-fun m!4485371 () Bool)

(assert (=> b!3921563 m!4485371))

(declare-fun m!4485373 () Bool)

(assert (=> b!3921563 m!4485373))

(assert (=> b!3921563 m!4485341))

(assert (=> b!3921563 m!4485083))

(assert (=> b!3921563 m!4485343))

(assert (=> b!3921563 m!4485341))

(assert (=> b!3921563 m!4485083))

(declare-fun m!4485375 () Bool)

(assert (=> b!3921563 m!4485375))

(assert (=> b!3921322 d!1162976))

(declare-fun d!1162990 () Bool)

(declare-fun lt!1367077 () Int)

(assert (=> d!1162990 (>= lt!1367077 0)))

(declare-fun e!2425087 () Int)

(assert (=> d!1162990 (= lt!1367077 e!2425087)))

(declare-fun c!681492 () Bool)

(assert (=> d!1162990 (= c!681492 (is-Nil!41584 lt!1366895))))

(assert (=> d!1162990 (= (size!31216 lt!1366895) lt!1367077)))

(declare-fun b!3921566 () Bool)

(assert (=> b!3921566 (= e!2425087 0)))

(declare-fun b!3921567 () Bool)

(assert (=> b!3921567 (= e!2425087 (+ 1 (size!31216 (t!324555 lt!1366895))))))

(assert (= (and d!1162990 c!681492) b!3921566))

(assert (= (and d!1162990 (not c!681492)) b!3921567))

(declare-fun m!4485377 () Bool)

(assert (=> b!3921567 m!4485377))

(assert (=> b!3921322 d!1162990))

(declare-fun d!1162992 () Bool)

(declare-fun lt!1367078 () Int)

(assert (=> d!1162992 (>= lt!1367078 0)))

(declare-fun e!2425088 () Int)

(assert (=> d!1162992 (= lt!1367078 e!2425088)))

(declare-fun c!681493 () Bool)

(assert (=> d!1162992 (= c!681493 (is-Nil!41584 (_2!23557 lt!1366892)))))

(assert (=> d!1162992 (= (size!31216 (_2!23557 lt!1366892)) lt!1367078)))

(declare-fun b!3921568 () Bool)

(assert (=> b!3921568 (= e!2425088 0)))

(declare-fun b!3921569 () Bool)

(assert (=> b!3921569 (= e!2425088 (+ 1 (size!31216 (t!324555 (_2!23557 lt!1366892)))))))

(assert (= (and d!1162992 c!681493) b!3921568))

(assert (= (and d!1162992 (not c!681493)) b!3921569))

(declare-fun m!4485379 () Bool)

(assert (=> b!3921569 m!4485379))

(assert (=> b!3921322 d!1162992))

(declare-fun d!1162994 () Bool)

(assert (=> d!1162994 (= (head!8296 prefixTokens!80) (h!47005 prefixTokens!80))))

(assert (=> b!3921303 d!1162994))

(declare-fun d!1162996 () Bool)

(declare-fun e!2425097 () Bool)

(assert (=> d!1162996 e!2425097))

(declare-fun res!1586389 () Bool)

(assert (=> d!1162996 (=> (not res!1586389) (not e!2425097))))

(declare-fun lt!1367084 () List!41709)

(declare-fun content!6257 (List!41709) (Set Token!12100))

(assert (=> d!1162996 (= res!1586389 (= (content!6257 lt!1367084) (set.union (content!6257 (Cons!41585 (_1!23557 (v!39226 lt!1366912)) Nil!41585)) (content!6257 (_1!23558 lt!1366903)))))))

(declare-fun e!2425096 () List!41709)

(assert (=> d!1162996 (= lt!1367084 e!2425096)))

(declare-fun c!681498 () Bool)

(assert (=> d!1162996 (= c!681498 (is-Nil!41585 (Cons!41585 (_1!23557 (v!39226 lt!1366912)) Nil!41585)))))

(assert (=> d!1162996 (= (++!10719 (Cons!41585 (_1!23557 (v!39226 lt!1366912)) Nil!41585) (_1!23558 lt!1366903)) lt!1367084)))

(declare-fun b!3921584 () Bool)

(assert (=> b!3921584 (= e!2425096 (Cons!41585 (h!47005 (Cons!41585 (_1!23557 (v!39226 lt!1366912)) Nil!41585)) (++!10719 (t!324556 (Cons!41585 (_1!23557 (v!39226 lt!1366912)) Nil!41585)) (_1!23558 lt!1366903))))))

(declare-fun b!3921586 () Bool)

(assert (=> b!3921586 (= e!2425097 (or (not (= (_1!23558 lt!1366903) Nil!41585)) (= lt!1367084 (Cons!41585 (_1!23557 (v!39226 lt!1366912)) Nil!41585))))))

(declare-fun b!3921585 () Bool)

(declare-fun res!1586390 () Bool)

(assert (=> b!3921585 (=> (not res!1586390) (not e!2425097))))

(declare-fun size!31220 (List!41709) Int)

(assert (=> b!3921585 (= res!1586390 (= (size!31220 lt!1367084) (+ (size!31220 (Cons!41585 (_1!23557 (v!39226 lt!1366912)) Nil!41585)) (size!31220 (_1!23558 lt!1366903)))))))

(declare-fun b!3921583 () Bool)

(assert (=> b!3921583 (= e!2425096 (_1!23558 lt!1366903))))

(assert (= (and d!1162996 c!681498) b!3921583))

(assert (= (and d!1162996 (not c!681498)) b!3921584))

(assert (= (and d!1162996 res!1586389) b!3921585))

(assert (= (and b!3921585 res!1586390) b!3921586))

(declare-fun m!4485393 () Bool)

(assert (=> d!1162996 m!4485393))

(declare-fun m!4485395 () Bool)

(assert (=> d!1162996 m!4485395))

(declare-fun m!4485397 () Bool)

(assert (=> d!1162996 m!4485397))

(declare-fun m!4485399 () Bool)

(assert (=> b!3921584 m!4485399))

(declare-fun m!4485401 () Bool)

(assert (=> b!3921585 m!4485401))

(declare-fun m!4485403 () Bool)

(assert (=> b!3921585 m!4485403))

(declare-fun m!4485405 () Bool)

(assert (=> b!3921585 m!4485405))

(assert (=> b!3921323 d!1162996))

(declare-fun b!3921605 () Bool)

(declare-fun res!1586406 () Bool)

(declare-fun e!2425104 () Bool)

(assert (=> b!3921605 (=> (not res!1586406) (not e!2425104))))

(declare-fun lt!1367097 () Option!8901)

(assert (=> b!3921605 (= res!1586406 (= (++!10720 (list!15458 (charsOf!4305 (_1!23557 (get!13742 lt!1367097)))) (_2!23557 (get!13742 lt!1367097))) lt!1366895))))

(declare-fun b!3921606 () Bool)

(declare-fun e!2425106 () Option!8901)

(declare-fun call!284635 () Option!8901)

(assert (=> b!3921606 (= e!2425106 call!284635)))

(declare-fun b!3921607 () Bool)

(declare-fun res!1586411 () Bool)

(assert (=> b!3921607 (=> (not res!1586411) (not e!2425104))))

(assert (=> b!3921607 (= res!1586411 (= (value!205344 (_1!23557 (get!13742 lt!1367097))) (apply!9720 (transformation!6481 (rule!9413 (_1!23557 (get!13742 lt!1367097)))) (seqFromList!4748 (originalCharacters!7081 (_1!23557 (get!13742 lt!1367097)))))))))

(declare-fun d!1163002 () Bool)

(declare-fun e!2425105 () Bool)

(assert (=> d!1163002 e!2425105))

(declare-fun res!1586409 () Bool)

(assert (=> d!1163002 (=> res!1586409 e!2425105)))

(assert (=> d!1163002 (= res!1586409 (isEmpty!24767 lt!1367097))))

(assert (=> d!1163002 (= lt!1367097 e!2425106)))

(declare-fun c!681501 () Bool)

(assert (=> d!1163002 (= c!681501 (and (is-Cons!41586 rules!2768) (is-Nil!41586 (t!324557 rules!2768))))))

(declare-fun lt!1367095 () Unit!59764)

(declare-fun lt!1367099 () Unit!59764)

(assert (=> d!1163002 (= lt!1367095 lt!1367099)))

(assert (=> d!1163002 (isPrefix!3576 lt!1366895 lt!1366895)))

(declare-fun lemmaIsPrefixRefl!2265 (List!41708 List!41708) Unit!59764)

(assert (=> d!1163002 (= lt!1367099 (lemmaIsPrefixRefl!2265 lt!1366895 lt!1366895))))

(declare-fun rulesValidInductive!2335 (LexerInterface!6070 List!41710) Bool)

(assert (=> d!1163002 (rulesValidInductive!2335 thiss!20629 rules!2768)))

(assert (=> d!1163002 (= (maxPrefix!3374 thiss!20629 rules!2768 lt!1366895) lt!1367097)))

(declare-fun b!3921608 () Bool)

(declare-fun contains!8350 (List!41710 Rule!12762) Bool)

(assert (=> b!3921608 (= e!2425104 (contains!8350 rules!2768 (rule!9413 (_1!23557 (get!13742 lt!1367097)))))))

(declare-fun b!3921609 () Bool)

(declare-fun res!1586408 () Bool)

(assert (=> b!3921609 (=> (not res!1586408) (not e!2425104))))

(assert (=> b!3921609 (= res!1586408 (matchR!5467 (regex!6481 (rule!9413 (_1!23557 (get!13742 lt!1367097)))) (list!15458 (charsOf!4305 (_1!23557 (get!13742 lt!1367097))))))))

(declare-fun b!3921610 () Bool)

(declare-fun res!1586405 () Bool)

(assert (=> b!3921610 (=> (not res!1586405) (not e!2425104))))

(assert (=> b!3921610 (= res!1586405 (< (size!31216 (_2!23557 (get!13742 lt!1367097))) (size!31216 lt!1366895)))))

(declare-fun b!3921611 () Bool)

(declare-fun res!1586407 () Bool)

(assert (=> b!3921611 (=> (not res!1586407) (not e!2425104))))

(assert (=> b!3921611 (= res!1586407 (= (list!15458 (charsOf!4305 (_1!23557 (get!13742 lt!1367097)))) (originalCharacters!7081 (_1!23557 (get!13742 lt!1367097)))))))

(declare-fun bm!284630 () Bool)

(assert (=> bm!284630 (= call!284635 (maxPrefixOneRule!2444 thiss!20629 (h!47006 rules!2768) lt!1366895))))

(declare-fun b!3921612 () Bool)

(declare-fun lt!1367096 () Option!8901)

(declare-fun lt!1367098 () Option!8901)

(assert (=> b!3921612 (= e!2425106 (ite (and (is-None!8900 lt!1367096) (is-None!8900 lt!1367098)) None!8900 (ite (is-None!8900 lt!1367098) lt!1367096 (ite (is-None!8900 lt!1367096) lt!1367098 (ite (>= (size!31215 (_1!23557 (v!39226 lt!1367096))) (size!31215 (_1!23557 (v!39226 lt!1367098)))) lt!1367096 lt!1367098)))))))

(assert (=> b!3921612 (= lt!1367096 call!284635)))

(assert (=> b!3921612 (= lt!1367098 (maxPrefix!3374 thiss!20629 (t!324557 rules!2768) lt!1366895))))

(declare-fun b!3921613 () Bool)

(assert (=> b!3921613 (= e!2425105 e!2425104)))

(declare-fun res!1586410 () Bool)

(assert (=> b!3921613 (=> (not res!1586410) (not e!2425104))))

(declare-fun isDefined!6934 (Option!8901) Bool)

(assert (=> b!3921613 (= res!1586410 (isDefined!6934 lt!1367097))))

(assert (= (and d!1163002 c!681501) b!3921606))

(assert (= (and d!1163002 (not c!681501)) b!3921612))

(assert (= (or b!3921606 b!3921612) bm!284630))

(assert (= (and d!1163002 (not res!1586409)) b!3921613))

(assert (= (and b!3921613 res!1586410) b!3921611))

(assert (= (and b!3921611 res!1586407) b!3921610))

(assert (= (and b!3921610 res!1586405) b!3921605))

(assert (= (and b!3921605 res!1586406) b!3921607))

(assert (= (and b!3921607 res!1586411) b!3921609))

(assert (= (and b!3921609 res!1586408) b!3921608))

(declare-fun m!4485407 () Bool)

(assert (=> b!3921605 m!4485407))

(declare-fun m!4485409 () Bool)

(assert (=> b!3921605 m!4485409))

(assert (=> b!3921605 m!4485409))

(declare-fun m!4485411 () Bool)

(assert (=> b!3921605 m!4485411))

(assert (=> b!3921605 m!4485411))

(declare-fun m!4485413 () Bool)

(assert (=> b!3921605 m!4485413))

(assert (=> b!3921609 m!4485407))

(assert (=> b!3921609 m!4485409))

(assert (=> b!3921609 m!4485409))

(assert (=> b!3921609 m!4485411))

(assert (=> b!3921609 m!4485411))

(declare-fun m!4485415 () Bool)

(assert (=> b!3921609 m!4485415))

(assert (=> b!3921608 m!4485407))

(declare-fun m!4485417 () Bool)

(assert (=> b!3921608 m!4485417))

(declare-fun m!4485419 () Bool)

(assert (=> b!3921612 m!4485419))

(assert (=> b!3921607 m!4485407))

(declare-fun m!4485421 () Bool)

(assert (=> b!3921607 m!4485421))

(assert (=> b!3921607 m!4485421))

(declare-fun m!4485423 () Bool)

(assert (=> b!3921607 m!4485423))

(assert (=> b!3921611 m!4485407))

(assert (=> b!3921611 m!4485409))

(assert (=> b!3921611 m!4485409))

(assert (=> b!3921611 m!4485411))

(declare-fun m!4485425 () Bool)

(assert (=> bm!284630 m!4485425))

(declare-fun m!4485427 () Bool)

(assert (=> d!1163002 m!4485427))

(declare-fun m!4485429 () Bool)

(assert (=> d!1163002 m!4485429))

(declare-fun m!4485431 () Bool)

(assert (=> d!1163002 m!4485431))

(declare-fun m!4485433 () Bool)

(assert (=> d!1163002 m!4485433))

(assert (=> b!3921610 m!4485407))

(declare-fun m!4485435 () Bool)

(assert (=> b!3921610 m!4485435))

(assert (=> b!3921610 m!4485083))

(declare-fun m!4485437 () Bool)

(assert (=> b!3921613 m!4485437))

(assert (=> b!3921320 d!1163002))

(declare-fun b!3921624 () Bool)

(declare-fun e!2425114 () Bool)

(declare-fun inv!16 (TokenValue!6711) Bool)

(assert (=> b!3921624 (= e!2425114 (inv!16 (value!205344 (h!47005 suffixTokens!72))))))

(declare-fun d!1163004 () Bool)

(declare-fun c!681506 () Bool)

(assert (=> d!1163004 (= c!681506 (is-IntegerValue!20133 (value!205344 (h!47005 suffixTokens!72))))))

(assert (=> d!1163004 (= (inv!21 (value!205344 (h!47005 suffixTokens!72))) e!2425114)))

(declare-fun b!3921625 () Bool)

(declare-fun res!1586414 () Bool)

(declare-fun e!2425115 () Bool)

(assert (=> b!3921625 (=> res!1586414 e!2425115)))

(assert (=> b!3921625 (= res!1586414 (not (is-IntegerValue!20135 (value!205344 (h!47005 suffixTokens!72)))))))

(declare-fun e!2425113 () Bool)

(assert (=> b!3921625 (= e!2425113 e!2425115)))

(declare-fun b!3921626 () Bool)

(declare-fun inv!17 (TokenValue!6711) Bool)

(assert (=> b!3921626 (= e!2425113 (inv!17 (value!205344 (h!47005 suffixTokens!72))))))

(declare-fun b!3921627 () Bool)

(declare-fun inv!15 (TokenValue!6711) Bool)

(assert (=> b!3921627 (= e!2425115 (inv!15 (value!205344 (h!47005 suffixTokens!72))))))

(declare-fun b!3921628 () Bool)

(assert (=> b!3921628 (= e!2425114 e!2425113)))

(declare-fun c!681507 () Bool)

(assert (=> b!3921628 (= c!681507 (is-IntegerValue!20134 (value!205344 (h!47005 suffixTokens!72))))))

(assert (= (and d!1163004 c!681506) b!3921624))

(assert (= (and d!1163004 (not c!681506)) b!3921628))

(assert (= (and b!3921628 c!681507) b!3921626))

(assert (= (and b!3921628 (not c!681507)) b!3921625))

(assert (= (and b!3921625 (not res!1586414)) b!3921627))

(declare-fun m!4485439 () Bool)

(assert (=> b!3921624 m!4485439))

(declare-fun m!4485441 () Bool)

(assert (=> b!3921626 m!4485441))

(declare-fun m!4485443 () Bool)

(assert (=> b!3921627 m!4485443))

(assert (=> b!3921321 d!1163004))

(declare-fun b!3921666 () Bool)

(declare-fun e!2425132 () Bool)

(declare-fun lt!1367122 () tuple2!40848)

(assert (=> b!3921666 (= e!2425132 (= (_2!23558 lt!1367122) (_2!23557 lt!1366892)))))

(declare-fun d!1163006 () Bool)

(assert (=> d!1163006 e!2425132))

(declare-fun c!681516 () Bool)

(assert (=> d!1163006 (= c!681516 (> (size!31220 (_1!23558 lt!1367122)) 0))))

(declare-fun e!2425133 () tuple2!40848)

(assert (=> d!1163006 (= lt!1367122 e!2425133)))

(declare-fun c!681515 () Bool)

(declare-fun lt!1367123 () Option!8901)

(assert (=> d!1163006 (= c!681515 (is-Some!8900 lt!1367123))))

(assert (=> d!1163006 (= lt!1367123 (maxPrefix!3374 thiss!20629 rules!2768 (_2!23557 lt!1366892)))))

(assert (=> d!1163006 (= (lexList!1838 thiss!20629 rules!2768 (_2!23557 lt!1366892)) lt!1367122)))

(declare-fun b!3921667 () Bool)

(declare-fun lt!1367121 () tuple2!40848)

(assert (=> b!3921667 (= e!2425133 (tuple2!40849 (Cons!41585 (_1!23557 (v!39226 lt!1367123)) (_1!23558 lt!1367121)) (_2!23558 lt!1367121)))))

(assert (=> b!3921667 (= lt!1367121 (lexList!1838 thiss!20629 rules!2768 (_2!23557 (v!39226 lt!1367123))))))

(declare-fun b!3921668 () Bool)

(assert (=> b!3921668 (= e!2425133 (tuple2!40849 Nil!41585 (_2!23557 lt!1366892)))))

(declare-fun b!3921669 () Bool)

(declare-fun e!2425131 () Bool)

(assert (=> b!3921669 (= e!2425131 (not (isEmpty!24762 (_1!23558 lt!1367122))))))

(declare-fun b!3921670 () Bool)

(assert (=> b!3921670 (= e!2425132 e!2425131)))

(declare-fun res!1586438 () Bool)

(assert (=> b!3921670 (= res!1586438 (< (size!31216 (_2!23558 lt!1367122)) (size!31216 (_2!23557 lt!1366892))))))

(assert (=> b!3921670 (=> (not res!1586438) (not e!2425131))))

(assert (= (and d!1163006 c!681515) b!3921667))

(assert (= (and d!1163006 (not c!681515)) b!3921668))

(assert (= (and d!1163006 c!681516) b!3921670))

(assert (= (and d!1163006 (not c!681516)) b!3921666))

(assert (= (and b!3921670 res!1586438) b!3921669))

(declare-fun m!4485445 () Bool)

(assert (=> d!1163006 m!4485445))

(declare-fun m!4485447 () Bool)

(assert (=> d!1163006 m!4485447))

(declare-fun m!4485449 () Bool)

(assert (=> b!3921667 m!4485449))

(declare-fun m!4485451 () Bool)

(assert (=> b!3921669 m!4485451))

(declare-fun m!4485453 () Bool)

(assert (=> b!3921670 m!4485453))

(assert (=> b!3921670 m!4485075))

(assert (=> bm!284624 d!1163006))

(declare-fun d!1163008 () Bool)

(assert (=> d!1163008 (= (isEmpty!24762 lt!1366917) (is-Nil!41585 lt!1366917))))

(assert (=> b!3921327 d!1163008))

(declare-fun d!1163010 () Bool)

(assert (=> d!1163010 (= (tail!6020 prefixTokens!80) (t!324556 prefixTokens!80))))

(assert (=> b!3921327 d!1163010))

(declare-fun d!1163012 () Bool)

(assert (=> d!1163012 (= (inv!55778 (tag!7341 (rule!9413 (h!47005 prefixTokens!80)))) (= (mod (str.len (value!205343 (tag!7341 (rule!9413 (h!47005 prefixTokens!80))))) 2) 0))))

(assert (=> b!3921307 d!1163012))

(declare-fun d!1163014 () Bool)

(declare-fun res!1586439 () Bool)

(declare-fun e!2425134 () Bool)

(assert (=> d!1163014 (=> (not res!1586439) (not e!2425134))))

(assert (=> d!1163014 (= res!1586439 (semiInverseModEq!2786 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (toValue!8933 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80))))))))

(assert (=> d!1163014 (= (inv!55782 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) e!2425134)))

(declare-fun b!3921671 () Bool)

(assert (=> b!3921671 (= e!2425134 (equivClasses!2685 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (toValue!8933 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80))))))))

(assert (= (and d!1163014 res!1586439) b!3921671))

(declare-fun m!4485455 () Bool)

(assert (=> d!1163014 m!4485455))

(declare-fun m!4485457 () Bool)

(assert (=> b!3921671 m!4485457))

(assert (=> b!3921307 d!1163014))

(declare-fun b!3921672 () Bool)

(declare-fun e!2425136 () Bool)

(assert (=> b!3921672 (= e!2425136 (inv!16 (value!205344 (h!47005 prefixTokens!80))))))

(declare-fun d!1163016 () Bool)

(declare-fun c!681517 () Bool)

(assert (=> d!1163016 (= c!681517 (is-IntegerValue!20133 (value!205344 (h!47005 prefixTokens!80))))))

(assert (=> d!1163016 (= (inv!21 (value!205344 (h!47005 prefixTokens!80))) e!2425136)))

(declare-fun b!3921673 () Bool)

(declare-fun res!1586440 () Bool)

(declare-fun e!2425137 () Bool)

(assert (=> b!3921673 (=> res!1586440 e!2425137)))

(assert (=> b!3921673 (= res!1586440 (not (is-IntegerValue!20135 (value!205344 (h!47005 prefixTokens!80)))))))

(declare-fun e!2425135 () Bool)

(assert (=> b!3921673 (= e!2425135 e!2425137)))

(declare-fun b!3921674 () Bool)

(assert (=> b!3921674 (= e!2425135 (inv!17 (value!205344 (h!47005 prefixTokens!80))))))

(declare-fun b!3921675 () Bool)

(assert (=> b!3921675 (= e!2425137 (inv!15 (value!205344 (h!47005 prefixTokens!80))))))

(declare-fun b!3921676 () Bool)

(assert (=> b!3921676 (= e!2425136 e!2425135)))

(declare-fun c!681518 () Bool)

(assert (=> b!3921676 (= c!681518 (is-IntegerValue!20134 (value!205344 (h!47005 prefixTokens!80))))))

(assert (= (and d!1163016 c!681517) b!3921672))

(assert (= (and d!1163016 (not c!681517)) b!3921676))

(assert (= (and b!3921676 c!681518) b!3921674))

(assert (= (and b!3921676 (not c!681518)) b!3921673))

(assert (= (and b!3921673 (not res!1586440)) b!3921675))

(declare-fun m!4485459 () Bool)

(assert (=> b!3921672 m!4485459))

(declare-fun m!4485461 () Bool)

(assert (=> b!3921674 m!4485461))

(declare-fun m!4485463 () Bool)

(assert (=> b!3921675 m!4485463))

(assert (=> b!3921308 d!1163016))

(declare-fun d!1163018 () Bool)

(assert (=> d!1163018 (not (= (lexList!1838 thiss!20629 rules!2768 (_2!23557 lt!1366892)) (tuple2!40849 (++!10719 lt!1366917 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1367132 () Unit!59764)

(declare-fun choose!23241 (LexerInterface!6070 List!41710 List!41708 List!41708 List!41709 List!41708 List!41709) Unit!59764)

(assert (=> d!1163018 (= lt!1367132 (choose!23241 thiss!20629 rules!2768 suffix!1176 (_2!23557 lt!1366892) suffixTokens!72 suffixResult!91 lt!1366917))))

(assert (=> d!1163018 (not (isEmpty!24761 rules!2768))))

(assert (=> d!1163018 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!81 thiss!20629 rules!2768 suffix!1176 (_2!23557 lt!1366892) suffixTokens!72 suffixResult!91 lt!1366917) lt!1367132)))

(declare-fun bs!585879 () Bool)

(assert (= bs!585879 d!1163018))

(assert (=> bs!585879 m!4485035))

(assert (=> bs!585879 m!4485065))

(declare-fun m!4485519 () Bool)

(assert (=> bs!585879 m!4485519))

(assert (=> bs!585879 m!4485067))

(assert (=> b!3921329 d!1163018))

(declare-fun d!1163026 () Bool)

(declare-fun e!2425150 () Bool)

(assert (=> d!1163026 e!2425150))

(declare-fun res!1586450 () Bool)

(assert (=> d!1163026 (=> (not res!1586450) (not e!2425150))))

(declare-fun lt!1367134 () List!41709)

(assert (=> d!1163026 (= res!1586450 (= (content!6257 lt!1367134) (set.union (content!6257 lt!1366917) (content!6257 suffixTokens!72))))))

(declare-fun e!2425149 () List!41709)

(assert (=> d!1163026 (= lt!1367134 e!2425149)))

(declare-fun c!681525 () Bool)

(assert (=> d!1163026 (= c!681525 (is-Nil!41585 lt!1366917))))

(assert (=> d!1163026 (= (++!10719 lt!1366917 suffixTokens!72) lt!1367134)))

(declare-fun b!3921699 () Bool)

(assert (=> b!3921699 (= e!2425149 (Cons!41585 (h!47005 lt!1366917) (++!10719 (t!324556 lt!1366917) suffixTokens!72)))))

(declare-fun b!3921701 () Bool)

(assert (=> b!3921701 (= e!2425150 (or (not (= suffixTokens!72 Nil!41585)) (= lt!1367134 lt!1366917)))))

(declare-fun b!3921700 () Bool)

(declare-fun res!1586451 () Bool)

(assert (=> b!3921700 (=> (not res!1586451) (not e!2425150))))

(assert (=> b!3921700 (= res!1586451 (= (size!31220 lt!1367134) (+ (size!31220 lt!1366917) (size!31220 suffixTokens!72))))))

(declare-fun b!3921698 () Bool)

(assert (=> b!3921698 (= e!2425149 suffixTokens!72)))

(assert (= (and d!1163026 c!681525) b!3921698))

(assert (= (and d!1163026 (not c!681525)) b!3921699))

(assert (= (and d!1163026 res!1586450) b!3921700))

(assert (= (and b!3921700 res!1586451) b!3921701))

(declare-fun m!4485525 () Bool)

(assert (=> d!1163026 m!4485525))

(declare-fun m!4485529 () Bool)

(assert (=> d!1163026 m!4485529))

(declare-fun m!4485531 () Bool)

(assert (=> d!1163026 m!4485531))

(declare-fun m!4485533 () Bool)

(assert (=> b!3921699 m!4485533))

(declare-fun m!4485537 () Bool)

(assert (=> b!3921700 m!4485537))

(declare-fun m!4485541 () Bool)

(assert (=> b!3921700 m!4485541))

(declare-fun m!4485543 () Bool)

(assert (=> b!3921700 m!4485543))

(assert (=> b!3921329 d!1163026))

(declare-fun d!1163028 () Bool)

(declare-fun lt!1367135 () Int)

(assert (=> d!1163028 (>= lt!1367135 0)))

(declare-fun e!2425151 () Int)

(assert (=> d!1163028 (= lt!1367135 e!2425151)))

(declare-fun c!681526 () Bool)

(assert (=> d!1163028 (= c!681526 (is-Nil!41584 suffix!1176))))

(assert (=> d!1163028 (= (size!31216 suffix!1176) lt!1367135)))

(declare-fun b!3921702 () Bool)

(assert (=> b!3921702 (= e!2425151 0)))

(declare-fun b!3921703 () Bool)

(assert (=> b!3921703 (= e!2425151 (+ 1 (size!31216 (t!324555 suffix!1176))))))

(assert (= (and d!1163028 c!681526) b!3921702))

(assert (= (and d!1163028 (not c!681526)) b!3921703))

(declare-fun m!4485547 () Bool)

(assert (=> b!3921703 m!4485547))

(assert (=> b!3921304 d!1163028))

(declare-fun d!1163032 () Bool)

(declare-fun lt!1367137 () Int)

(assert (=> d!1163032 (>= lt!1367137 0)))

(declare-fun e!2425153 () Int)

(assert (=> d!1163032 (= lt!1367137 e!2425153)))

(declare-fun c!681528 () Bool)

(assert (=> d!1163032 (= c!681528 (is-Nil!41584 (_2!23557 (v!39226 lt!1366912))))))

(assert (=> d!1163032 (= (size!31216 (_2!23557 (v!39226 lt!1366912))) lt!1367137)))

(declare-fun b!3921706 () Bool)

(assert (=> b!3921706 (= e!2425153 0)))

(declare-fun b!3921707 () Bool)

(assert (=> b!3921707 (= e!2425153 (+ 1 (size!31216 (t!324555 (_2!23557 (v!39226 lt!1366912))))))))

(assert (= (and d!1163032 c!681528) b!3921706))

(assert (= (and d!1163032 (not c!681528)) b!3921707))

(declare-fun m!4485551 () Bool)

(assert (=> b!3921707 m!4485551))

(assert (=> b!3921304 d!1163032))

(declare-fun d!1163036 () Bool)

(declare-fun res!1586458 () Bool)

(declare-fun e!2425160 () Bool)

(assert (=> d!1163036 (=> (not res!1586458) (not e!2425160))))

(declare-fun rulesValid!2520 (LexerInterface!6070 List!41710) Bool)

(assert (=> d!1163036 (= res!1586458 (rulesValid!2520 thiss!20629 rules!2768))))

(assert (=> d!1163036 (= (rulesInvariant!5413 thiss!20629 rules!2768) e!2425160)))

(declare-fun b!3921716 () Bool)

(declare-datatypes ((List!41715 0))(
  ( (Nil!41591) (Cons!41591 (h!47011 String!47275) (t!324658 List!41715)) )
))
(declare-fun noDuplicateTag!2521 (LexerInterface!6070 List!41710 List!41715) Bool)

(assert (=> b!3921716 (= e!2425160 (noDuplicateTag!2521 thiss!20629 rules!2768 Nil!41591))))

(assert (= (and d!1163036 res!1586458) b!3921716))

(declare-fun m!4485567 () Bool)

(assert (=> d!1163036 m!4485567))

(declare-fun m!4485569 () Bool)

(assert (=> b!3921716 m!4485569))

(assert (=> b!3921305 d!1163036))

(declare-fun d!1163044 () Bool)

(declare-fun res!1586463 () Bool)

(declare-fun e!2425163 () Bool)

(assert (=> d!1163044 (=> (not res!1586463) (not e!2425163))))

(declare-fun validRegex!5185 (Regex!11386) Bool)

(assert (=> d!1163044 (= res!1586463 (validRegex!5185 (regex!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912))))))))

(assert (=> d!1163044 (= (ruleValid!2429 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) e!2425163)))

(declare-fun b!3921721 () Bool)

(declare-fun res!1586464 () Bool)

(assert (=> b!3921721 (=> (not res!1586464) (not e!2425163))))

(declare-fun nullable!3986 (Regex!11386) Bool)

(assert (=> b!3921721 (= res!1586464 (not (nullable!3986 (regex!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))))))

(declare-fun b!3921722 () Bool)

(assert (=> b!3921722 (= e!2425163 (not (= (tag!7341 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) (String!47276 ""))))))

(assert (= (and d!1163044 res!1586463) b!3921721))

(assert (= (and b!3921721 res!1586464) b!3921722))

(declare-fun m!4485575 () Bool)

(assert (=> d!1163044 m!4485575))

(declare-fun m!4485577 () Bool)

(assert (=> b!3921721 m!4485577))

(assert (=> b!3921326 d!1163044))

(declare-fun d!1163050 () Bool)

(assert (=> d!1163050 (= (_2!23557 (v!39226 lt!1366912)) lt!1366893)))

(declare-fun lt!1367145 () Unit!59764)

(assert (=> d!1163050 (= lt!1367145 (choose!23239 lt!1366901 (_2!23557 (v!39226 lt!1366912)) lt!1366901 lt!1366893 lt!1366895))))

(assert (=> d!1163050 (isPrefix!3576 lt!1366901 lt!1366895)))

(assert (=> d!1163050 (= (lemmaSamePrefixThenSameSuffix!1797 lt!1366901 (_2!23557 (v!39226 lt!1366912)) lt!1366901 lt!1366893 lt!1366895) lt!1367145)))

(declare-fun bs!585883 () Bool)

(assert (= bs!585883 d!1163050))

(declare-fun m!4485579 () Bool)

(assert (=> bs!585883 m!4485579))

(assert (=> bs!585883 m!4485271))

(assert (=> b!3921326 d!1163050))

(declare-fun d!1163052 () Bool)

(declare-fun lt!1367148 () BalanceConc!24978)

(assert (=> d!1163052 (= (list!15458 lt!1367148) (originalCharacters!7081 (_1!23557 (v!39226 lt!1366912))))))

(declare-fun dynLambda!17853 (Int TokenValue!6711) BalanceConc!24978)

(assert (=> d!1163052 (= lt!1367148 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912))))) (value!205344 (_1!23557 (v!39226 lt!1366912)))))))

(assert (=> d!1163052 (= (charsOf!4305 (_1!23557 (v!39226 lt!1366912))) lt!1367148)))

(declare-fun b_lambda!114803 () Bool)

(assert (=> (not b_lambda!114803) (not d!1163052)))

(declare-fun tb!234137 () Bool)

(declare-fun t!324575 () Bool)

(assert (=> (and b!3921315 (= (toChars!8792 (transformation!6481 (h!47006 rules!2768))) (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324575) tb!234137))

(declare-fun b!3921734 () Bool)

(declare-fun e!2425170 () Bool)

(declare-fun tp!1193737 () Bool)

(declare-fun inv!55787 (Conc!12692) Bool)

(assert (=> b!3921734 (= e!2425170 (and (inv!55787 (c!681454 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912))))) (value!205344 (_1!23557 (v!39226 lt!1366912)))))) tp!1193737))))

(declare-fun result!283718 () Bool)

(declare-fun inv!55788 (BalanceConc!24978) Bool)

(assert (=> tb!234137 (= result!283718 (and (inv!55788 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912))))) (value!205344 (_1!23557 (v!39226 lt!1366912))))) e!2425170))))

(assert (= tb!234137 b!3921734))

(declare-fun m!4485593 () Bool)

(assert (=> b!3921734 m!4485593))

(declare-fun m!4485595 () Bool)

(assert (=> tb!234137 m!4485595))

(assert (=> d!1163052 t!324575))

(declare-fun b_and!298925 () Bool)

(assert (= b_and!298885 (and (=> t!324575 result!283718) b_and!298925)))

(declare-fun t!324583 () Bool)

(declare-fun tb!234145 () Bool)

(assert (=> (and b!3921338 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324583) tb!234145))

(declare-fun result!283728 () Bool)

(assert (= result!283728 result!283718))

(assert (=> d!1163052 t!324583))

(declare-fun b_and!298927 () Bool)

(assert (= b_and!298889 (and (=> t!324583 result!283728) b_and!298927)))

(declare-fun tb!234147 () Bool)

(declare-fun t!324585 () Bool)

(assert (=> (and b!3921311 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324585) tb!234147))

(declare-fun result!283730 () Bool)

(assert (= result!283730 result!283718))

(assert (=> d!1163052 t!324585))

(declare-fun b_and!298929 () Bool)

(assert (= b_and!298893 (and (=> t!324585 result!283730) b_and!298929)))

(declare-fun m!4485597 () Bool)

(assert (=> d!1163052 m!4485597))

(declare-fun m!4485599 () Bool)

(assert (=> d!1163052 m!4485599))

(assert (=> b!3921326 d!1163052))

(declare-fun d!1163056 () Bool)

(declare-fun lt!1367149 () Int)

(assert (=> d!1163056 (>= lt!1367149 0)))

(declare-fun e!2425171 () Int)

(assert (=> d!1163056 (= lt!1367149 e!2425171)))

(declare-fun c!681530 () Bool)

(assert (=> d!1163056 (= c!681530 (is-Nil!41584 lt!1366901))))

(assert (=> d!1163056 (= (size!31216 lt!1366901) lt!1367149)))

(declare-fun b!3921735 () Bool)

(assert (=> b!3921735 (= e!2425171 0)))

(declare-fun b!3921736 () Bool)

(assert (=> b!3921736 (= e!2425171 (+ 1 (size!31216 (t!324555 lt!1366901))))))

(assert (= (and d!1163056 c!681530) b!3921735))

(assert (= (and d!1163056 (not c!681530)) b!3921736))

(declare-fun m!4485601 () Bool)

(assert (=> b!3921736 m!4485601))

(assert (=> b!3921326 d!1163056))

(declare-fun d!1163060 () Bool)

(declare-fun fromListB!2195 (List!41708) BalanceConc!24978)

(assert (=> d!1163060 (= (seqFromList!4748 lt!1366901) (fromListB!2195 lt!1366901))))

(declare-fun bs!585884 () Bool)

(assert (= bs!585884 d!1163060))

(declare-fun m!4485603 () Bool)

(assert (=> bs!585884 m!4485603))

(assert (=> b!3921326 d!1163060))

(declare-fun d!1163062 () Bool)

(declare-fun lt!1367152 () List!41708)

(assert (=> d!1163062 (= (++!10720 lt!1366901 lt!1367152) lt!1366895)))

(declare-fun e!2425179 () List!41708)

(assert (=> d!1163062 (= lt!1367152 e!2425179)))

(declare-fun c!681535 () Bool)

(assert (=> d!1163062 (= c!681535 (is-Cons!41584 lt!1366901))))

(assert (=> d!1163062 (>= (size!31216 lt!1366895) (size!31216 lt!1366901))))

(assert (=> d!1163062 (= (getSuffix!2031 lt!1366895 lt!1366901) lt!1367152)))

(declare-fun b!3921748 () Bool)

(assert (=> b!3921748 (= e!2425179 (getSuffix!2031 (tail!6022 lt!1366895) (t!324555 lt!1366901)))))

(declare-fun b!3921749 () Bool)

(assert (=> b!3921749 (= e!2425179 lt!1366895)))

(assert (= (and d!1163062 c!681535) b!3921748))

(assert (= (and d!1163062 (not c!681535)) b!3921749))

(declare-fun m!4485609 () Bool)

(assert (=> d!1163062 m!4485609))

(assert (=> d!1163062 m!4485083))

(assert (=> d!1163062 m!4485087))

(assert (=> b!3921748 m!4485259))

(assert (=> b!3921748 m!4485259))

(declare-fun m!4485611 () Bool)

(assert (=> b!3921748 m!4485611))

(assert (=> b!3921326 d!1163062))

(declare-fun d!1163066 () Bool)

(assert (=> d!1163066 (isPrefix!3576 lt!1366901 (++!10720 lt!1366901 (_2!23557 (v!39226 lt!1366912))))))

(declare-fun lt!1367153 () Unit!59764)

(assert (=> d!1163066 (= lt!1367153 (choose!23237 lt!1366901 (_2!23557 (v!39226 lt!1366912))))))

(assert (=> d!1163066 (= (lemmaConcatTwoListThenFirstIsPrefix!2439 lt!1366901 (_2!23557 (v!39226 lt!1366912))) lt!1367153)))

(declare-fun bs!585885 () Bool)

(assert (= bs!585885 d!1163066))

(assert (=> bs!585885 m!4485091))

(assert (=> bs!585885 m!4485091))

(declare-fun m!4485613 () Bool)

(assert (=> bs!585885 m!4485613))

(declare-fun m!4485615 () Bool)

(assert (=> bs!585885 m!4485615))

(assert (=> b!3921326 d!1163066))

(declare-fun d!1163068 () Bool)

(declare-fun list!15461 (Conc!12692) List!41708)

(assert (=> d!1163068 (= (list!15458 (charsOf!4305 (_1!23557 (v!39226 lt!1366912)))) (list!15461 (c!681454 (charsOf!4305 (_1!23557 (v!39226 lt!1366912))))))))

(declare-fun bs!585886 () Bool)

(assert (= bs!585886 d!1163068))

(declare-fun m!4485617 () Bool)

(assert (=> bs!585886 m!4485617))

(assert (=> b!3921326 d!1163068))

(declare-fun b!3921774 () Bool)

(declare-fun res!1586484 () Bool)

(declare-fun e!2425194 () Bool)

(assert (=> b!3921774 (=> (not res!1586484) (not e!2425194))))

(declare-fun lt!1367156 () List!41708)

(assert (=> b!3921774 (= res!1586484 (= (size!31216 lt!1367156) (+ (size!31216 lt!1366901) (size!31216 (_2!23557 (v!39226 lt!1366912))))))))

(declare-fun b!3921772 () Bool)

(declare-fun e!2425195 () List!41708)

(assert (=> b!3921772 (= e!2425195 (_2!23557 (v!39226 lt!1366912)))))

(declare-fun b!3921775 () Bool)

(assert (=> b!3921775 (= e!2425194 (or (not (= (_2!23557 (v!39226 lt!1366912)) Nil!41584)) (= lt!1367156 lt!1366901)))))

(declare-fun b!3921773 () Bool)

(assert (=> b!3921773 (= e!2425195 (Cons!41584 (h!47004 lt!1366901) (++!10720 (t!324555 lt!1366901) (_2!23557 (v!39226 lt!1366912)))))))

(declare-fun d!1163070 () Bool)

(assert (=> d!1163070 e!2425194))

(declare-fun res!1586485 () Bool)

(assert (=> d!1163070 (=> (not res!1586485) (not e!2425194))))

(declare-fun content!6259 (List!41708) (Set C!22958))

(assert (=> d!1163070 (= res!1586485 (= (content!6259 lt!1367156) (set.union (content!6259 lt!1366901) (content!6259 (_2!23557 (v!39226 lt!1366912))))))))

(assert (=> d!1163070 (= lt!1367156 e!2425195)))

(declare-fun c!681542 () Bool)

(assert (=> d!1163070 (= c!681542 (is-Nil!41584 lt!1366901))))

(assert (=> d!1163070 (= (++!10720 lt!1366901 (_2!23557 (v!39226 lt!1366912))) lt!1367156)))

(assert (= (and d!1163070 c!681542) b!3921772))

(assert (= (and d!1163070 (not c!681542)) b!3921773))

(assert (= (and d!1163070 res!1586485) b!3921774))

(assert (= (and b!3921774 res!1586484) b!3921775))

(declare-fun m!4485629 () Bool)

(assert (=> b!3921774 m!4485629))

(assert (=> b!3921774 m!4485087))

(assert (=> b!3921774 m!4485031))

(declare-fun m!4485631 () Bool)

(assert (=> b!3921773 m!4485631))

(declare-fun m!4485633 () Bool)

(assert (=> d!1163070 m!4485633))

(declare-fun m!4485635 () Bool)

(assert (=> d!1163070 m!4485635))

(declare-fun m!4485637 () Bool)

(assert (=> d!1163070 m!4485637))

(assert (=> b!3921326 d!1163070))

(declare-fun d!1163076 () Bool)

(declare-fun dynLambda!17854 (Int BalanceConc!24978) TokenValue!6711)

(assert (=> d!1163076 (= (apply!9720 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))) (seqFromList!4748 lt!1366901)) (dynLambda!17854 (toValue!8933 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912))))) (seqFromList!4748 lt!1366901)))))

(declare-fun b_lambda!114807 () Bool)

(assert (=> (not b_lambda!114807) (not d!1163076)))

(declare-fun tb!234149 () Bool)

(declare-fun t!324587 () Bool)

(assert (=> (and b!3921315 (= (toValue!8933 (transformation!6481 (h!47006 rules!2768))) (toValue!8933 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324587) tb!234149))

(declare-fun result!283732 () Bool)

(assert (=> tb!234149 (= result!283732 (inv!21 (dynLambda!17854 (toValue!8933 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912))))) (seqFromList!4748 lt!1366901))))))

(declare-fun m!4485639 () Bool)

(assert (=> tb!234149 m!4485639))

(assert (=> d!1163076 t!324587))

(declare-fun b_and!298931 () Bool)

(assert (= b_and!298883 (and (=> t!324587 result!283732) b_and!298931)))

(declare-fun tb!234151 () Bool)

(declare-fun t!324589 () Bool)

(assert (=> (and b!3921338 (= (toValue!8933 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (toValue!8933 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324589) tb!234151))

(declare-fun result!283736 () Bool)

(assert (= result!283736 result!283732))

(assert (=> d!1163076 t!324589))

(declare-fun b_and!298933 () Bool)

(assert (= b_and!298887 (and (=> t!324589 result!283736) b_and!298933)))

(declare-fun t!324591 () Bool)

(declare-fun tb!234153 () Bool)

(assert (=> (and b!3921311 (= (toValue!8933 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (toValue!8933 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324591) tb!234153))

(declare-fun result!283738 () Bool)

(assert (= result!283738 result!283732))

(assert (=> d!1163076 t!324591))

(declare-fun b_and!298935 () Bool)

(assert (= b_and!298891 (and (=> t!324591 result!283738) b_and!298935)))

(assert (=> d!1163076 m!4485093))

(declare-fun m!4485641 () Bool)

(assert (=> d!1163076 m!4485641))

(assert (=> b!3921326 d!1163076))

(declare-fun d!1163078 () Bool)

(assert (=> d!1163078 (= (size!31215 (_1!23557 (v!39226 lt!1366912))) (size!31216 (originalCharacters!7081 (_1!23557 (v!39226 lt!1366912)))))))

(declare-fun Unit!59784 () Unit!59764)

(assert (=> d!1163078 (= (lemmaCharactersSize!1138 (_1!23557 (v!39226 lt!1366912))) Unit!59784)))

(declare-fun bs!585887 () Bool)

(assert (= bs!585887 d!1163078))

(assert (=> bs!585887 m!4485085))

(assert (=> b!3921326 d!1163078))

(declare-fun b!3921779 () Bool)

(declare-fun res!1586487 () Bool)

(declare-fun e!2425201 () Bool)

(assert (=> b!3921779 (=> (not res!1586487) (not e!2425201))))

(assert (=> b!3921779 (= res!1586487 (= (head!8298 lt!1366901) (head!8298 lt!1366902)))))

(declare-fun b!3921778 () Bool)

(declare-fun e!2425200 () Bool)

(assert (=> b!3921778 (= e!2425200 e!2425201)))

(declare-fun res!1586486 () Bool)

(assert (=> b!3921778 (=> (not res!1586486) (not e!2425201))))

(assert (=> b!3921778 (= res!1586486 (not (is-Nil!41584 lt!1366902)))))

(declare-fun b!3921780 () Bool)

(assert (=> b!3921780 (= e!2425201 (isPrefix!3576 (tail!6022 lt!1366901) (tail!6022 lt!1366902)))))

(declare-fun b!3921781 () Bool)

(declare-fun e!2425199 () Bool)

(assert (=> b!3921781 (= e!2425199 (>= (size!31216 lt!1366902) (size!31216 lt!1366901)))))

(declare-fun d!1163080 () Bool)

(assert (=> d!1163080 e!2425199))

(declare-fun res!1586488 () Bool)

(assert (=> d!1163080 (=> res!1586488 e!2425199)))

(declare-fun lt!1367157 () Bool)

(assert (=> d!1163080 (= res!1586488 (not lt!1367157))))

(assert (=> d!1163080 (= lt!1367157 e!2425200)))

(declare-fun res!1586489 () Bool)

(assert (=> d!1163080 (=> res!1586489 e!2425200)))

(assert (=> d!1163080 (= res!1586489 (is-Nil!41584 lt!1366901))))

(assert (=> d!1163080 (= (isPrefix!3576 lt!1366901 lt!1366902) lt!1367157)))

(assert (= (and d!1163080 (not res!1586489)) b!3921778))

(assert (= (and b!3921778 res!1586486) b!3921779))

(assert (= (and b!3921779 res!1586487) b!3921780))

(assert (= (and d!1163080 (not res!1586488)) b!3921781))

(declare-fun m!4485643 () Bool)

(assert (=> b!3921779 m!4485643))

(declare-fun m!4485645 () Bool)

(assert (=> b!3921779 m!4485645))

(declare-fun m!4485647 () Bool)

(assert (=> b!3921780 m!4485647))

(declare-fun m!4485649 () Bool)

(assert (=> b!3921780 m!4485649))

(assert (=> b!3921780 m!4485647))

(assert (=> b!3921780 m!4485649))

(declare-fun m!4485651 () Bool)

(assert (=> b!3921780 m!4485651))

(declare-fun m!4485653 () Bool)

(assert (=> b!3921781 m!4485653))

(assert (=> b!3921781 m!4485087))

(assert (=> b!3921326 d!1163080))

(declare-fun b!3921782 () Bool)

(declare-fun e!2425203 () Bool)

(declare-fun lt!1367159 () tuple2!40848)

(assert (=> b!3921782 (= e!2425203 (= (_2!23558 lt!1367159) (_2!23557 (v!39226 lt!1366912))))))

(declare-fun d!1163082 () Bool)

(assert (=> d!1163082 e!2425203))

(declare-fun c!681544 () Bool)

(assert (=> d!1163082 (= c!681544 (> (size!31220 (_1!23558 lt!1367159)) 0))))

(declare-fun e!2425204 () tuple2!40848)

(assert (=> d!1163082 (= lt!1367159 e!2425204)))

(declare-fun c!681543 () Bool)

(declare-fun lt!1367160 () Option!8901)

(assert (=> d!1163082 (= c!681543 (is-Some!8900 lt!1367160))))

(assert (=> d!1163082 (= lt!1367160 (maxPrefix!3374 thiss!20629 rules!2768 (_2!23557 (v!39226 lt!1366912))))))

(assert (=> d!1163082 (= (lexList!1838 thiss!20629 rules!2768 (_2!23557 (v!39226 lt!1366912))) lt!1367159)))

(declare-fun b!3921783 () Bool)

(declare-fun lt!1367158 () tuple2!40848)

(assert (=> b!3921783 (= e!2425204 (tuple2!40849 (Cons!41585 (_1!23557 (v!39226 lt!1367160)) (_1!23558 lt!1367158)) (_2!23558 lt!1367158)))))

(assert (=> b!3921783 (= lt!1367158 (lexList!1838 thiss!20629 rules!2768 (_2!23557 (v!39226 lt!1367160))))))

(declare-fun b!3921784 () Bool)

(assert (=> b!3921784 (= e!2425204 (tuple2!40849 Nil!41585 (_2!23557 (v!39226 lt!1366912))))))

(declare-fun b!3921785 () Bool)

(declare-fun e!2425202 () Bool)

(assert (=> b!3921785 (= e!2425202 (not (isEmpty!24762 (_1!23558 lt!1367159))))))

(declare-fun b!3921786 () Bool)

(assert (=> b!3921786 (= e!2425203 e!2425202)))

(declare-fun res!1586490 () Bool)

(assert (=> b!3921786 (= res!1586490 (< (size!31216 (_2!23558 lt!1367159)) (size!31216 (_2!23557 (v!39226 lt!1366912)))))))

(assert (=> b!3921786 (=> (not res!1586490) (not e!2425202))))

(assert (= (and d!1163082 c!681543) b!3921783))

(assert (= (and d!1163082 (not c!681543)) b!3921784))

(assert (= (and d!1163082 c!681544) b!3921786))

(assert (= (and d!1163082 (not c!681544)) b!3921782))

(assert (= (and b!3921786 res!1586490) b!3921785))

(declare-fun m!4485655 () Bool)

(assert (=> d!1163082 m!4485655))

(declare-fun m!4485657 () Bool)

(assert (=> d!1163082 m!4485657))

(declare-fun m!4485659 () Bool)

(assert (=> b!3921783 m!4485659))

(declare-fun m!4485661 () Bool)

(assert (=> b!3921785 m!4485661))

(declare-fun m!4485663 () Bool)

(assert (=> b!3921786 m!4485663))

(assert (=> b!3921786 m!4485031))

(assert (=> b!3921326 d!1163082))

(declare-fun d!1163084 () Bool)

(assert (=> d!1163084 (ruleValid!2429 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))))))

(declare-fun lt!1367163 () Unit!59764)

(declare-fun choose!23245 (LexerInterface!6070 Rule!12762 List!41710) Unit!59764)

(assert (=> d!1163084 (= lt!1367163 (choose!23245 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))) rules!2768))))

(assert (=> d!1163084 (contains!8350 rules!2768 (rule!9413 (_1!23557 (v!39226 lt!1366912))))))

(assert (=> d!1163084 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1509 thiss!20629 (rule!9413 (_1!23557 (v!39226 lt!1366912))) rules!2768) lt!1367163)))

(declare-fun bs!585888 () Bool)

(assert (= bs!585888 d!1163084))

(assert (=> bs!585888 m!4485099))

(declare-fun m!4485665 () Bool)

(assert (=> bs!585888 m!4485665))

(declare-fun m!4485667 () Bool)

(assert (=> bs!585888 m!4485667))

(assert (=> b!3921326 d!1163084))

(declare-fun d!1163086 () Bool)

(declare-fun res!1586495 () Bool)

(declare-fun e!2425207 () Bool)

(assert (=> d!1163086 (=> (not res!1586495) (not e!2425207))))

(assert (=> d!1163086 (= res!1586495 (not (isEmpty!24763 (originalCharacters!7081 (h!47005 suffixTokens!72)))))))

(assert (=> d!1163086 (= (inv!55781 (h!47005 suffixTokens!72)) e!2425207)))

(declare-fun b!3921791 () Bool)

(declare-fun res!1586496 () Bool)

(assert (=> b!3921791 (=> (not res!1586496) (not e!2425207))))

(assert (=> b!3921791 (= res!1586496 (= (originalCharacters!7081 (h!47005 suffixTokens!72)) (list!15458 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (value!205344 (h!47005 suffixTokens!72))))))))

(declare-fun b!3921792 () Bool)

(assert (=> b!3921792 (= e!2425207 (= (size!31215 (h!47005 suffixTokens!72)) (size!31216 (originalCharacters!7081 (h!47005 suffixTokens!72)))))))

(assert (= (and d!1163086 res!1586495) b!3921791))

(assert (= (and b!3921791 res!1586496) b!3921792))

(declare-fun b_lambda!114809 () Bool)

(assert (=> (not b_lambda!114809) (not b!3921791)))

(declare-fun t!324593 () Bool)

(declare-fun tb!234155 () Bool)

(assert (=> (and b!3921315 (= (toChars!8792 (transformation!6481 (h!47006 rules!2768))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72))))) t!324593) tb!234155))

(declare-fun b!3921793 () Bool)

(declare-fun e!2425208 () Bool)

(declare-fun tp!1193738 () Bool)

(assert (=> b!3921793 (= e!2425208 (and (inv!55787 (c!681454 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (value!205344 (h!47005 suffixTokens!72))))) tp!1193738))))

(declare-fun result!283740 () Bool)

(assert (=> tb!234155 (= result!283740 (and (inv!55788 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (value!205344 (h!47005 suffixTokens!72)))) e!2425208))))

(assert (= tb!234155 b!3921793))

(declare-fun m!4485669 () Bool)

(assert (=> b!3921793 m!4485669))

(declare-fun m!4485671 () Bool)

(assert (=> tb!234155 m!4485671))

(assert (=> b!3921791 t!324593))

(declare-fun b_and!298937 () Bool)

(assert (= b_and!298925 (and (=> t!324593 result!283740) b_and!298937)))

(declare-fun t!324595 () Bool)

(declare-fun tb!234157 () Bool)

(assert (=> (and b!3921338 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72))))) t!324595) tb!234157))

(declare-fun result!283742 () Bool)

(assert (= result!283742 result!283740))

(assert (=> b!3921791 t!324595))

(declare-fun b_and!298939 () Bool)

(assert (= b_and!298927 (and (=> t!324595 result!283742) b_and!298939)))

(declare-fun t!324597 () Bool)

(declare-fun tb!234159 () Bool)

(assert (=> (and b!3921311 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72))))) t!324597) tb!234159))

(declare-fun result!283744 () Bool)

(assert (= result!283744 result!283740))

(assert (=> b!3921791 t!324597))

(declare-fun b_and!298941 () Bool)

(assert (= b_and!298929 (and (=> t!324597 result!283744) b_and!298941)))

(declare-fun m!4485673 () Bool)

(assert (=> d!1163086 m!4485673))

(declare-fun m!4485675 () Bool)

(assert (=> b!3921791 m!4485675))

(assert (=> b!3921791 m!4485675))

(declare-fun m!4485677 () Bool)

(assert (=> b!3921791 m!4485677))

(declare-fun m!4485679 () Bool)

(assert (=> b!3921792 m!4485679))

(assert (=> b!3921306 d!1163086))

(declare-fun d!1163088 () Bool)

(declare-fun res!1586497 () Bool)

(declare-fun e!2425209 () Bool)

(assert (=> d!1163088 (=> (not res!1586497) (not e!2425209))))

(assert (=> d!1163088 (= res!1586497 (not (isEmpty!24763 (originalCharacters!7081 (h!47005 prefixTokens!80)))))))

(assert (=> d!1163088 (= (inv!55781 (h!47005 prefixTokens!80)) e!2425209)))

(declare-fun b!3921794 () Bool)

(declare-fun res!1586498 () Bool)

(assert (=> b!3921794 (=> (not res!1586498) (not e!2425209))))

(assert (=> b!3921794 (= res!1586498 (= (originalCharacters!7081 (h!47005 prefixTokens!80)) (list!15458 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (value!205344 (h!47005 prefixTokens!80))))))))

(declare-fun b!3921795 () Bool)

(assert (=> b!3921795 (= e!2425209 (= (size!31215 (h!47005 prefixTokens!80)) (size!31216 (originalCharacters!7081 (h!47005 prefixTokens!80)))))))

(assert (= (and d!1163088 res!1586497) b!3921794))

(assert (= (and b!3921794 res!1586498) b!3921795))

(declare-fun b_lambda!114811 () Bool)

(assert (=> (not b_lambda!114811) (not b!3921794)))

(declare-fun t!324599 () Bool)

(declare-fun tb!234161 () Bool)

(assert (=> (and b!3921315 (= (toChars!8792 (transformation!6481 (h!47006 rules!2768))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80))))) t!324599) tb!234161))

(declare-fun b!3921796 () Bool)

(declare-fun e!2425210 () Bool)

(declare-fun tp!1193739 () Bool)

(assert (=> b!3921796 (= e!2425210 (and (inv!55787 (c!681454 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (value!205344 (h!47005 prefixTokens!80))))) tp!1193739))))

(declare-fun result!283746 () Bool)

(assert (=> tb!234161 (= result!283746 (and (inv!55788 (dynLambda!17853 (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (value!205344 (h!47005 prefixTokens!80)))) e!2425210))))

(assert (= tb!234161 b!3921796))

(declare-fun m!4485681 () Bool)

(assert (=> b!3921796 m!4485681))

(declare-fun m!4485683 () Bool)

(assert (=> tb!234161 m!4485683))

(assert (=> b!3921794 t!324599))

(declare-fun b_and!298943 () Bool)

(assert (= b_and!298937 (and (=> t!324599 result!283746) b_and!298943)))

(declare-fun t!324601 () Bool)

(declare-fun tb!234163 () Bool)

(assert (=> (and b!3921338 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80))))) t!324601) tb!234163))

(declare-fun result!283748 () Bool)

(assert (= result!283748 result!283746))

(assert (=> b!3921794 t!324601))

(declare-fun b_and!298945 () Bool)

(assert (= b_and!298939 (and (=> t!324601 result!283748) b_and!298945)))

(declare-fun t!324603 () Bool)

(declare-fun tb!234165 () Bool)

(assert (=> (and b!3921311 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80))))) t!324603) tb!234165))

(declare-fun result!283750 () Bool)

(assert (= result!283750 result!283746))

(assert (=> b!3921794 t!324603))

(declare-fun b_and!298947 () Bool)

(assert (= b_and!298941 (and (=> t!324603 result!283750) b_and!298947)))

(declare-fun m!4485685 () Bool)

(assert (=> d!1163088 m!4485685))

(declare-fun m!4485687 () Bool)

(assert (=> b!3921794 m!4485687))

(assert (=> b!3921794 m!4485687))

(declare-fun m!4485689 () Bool)

(assert (=> b!3921794 m!4485689))

(declare-fun m!4485691 () Bool)

(assert (=> b!3921795 m!4485691))

(assert (=> b!3921312 d!1163088))

(declare-fun d!1163090 () Bool)

(assert (=> d!1163090 (and (= lt!1366901 lt!1366901) (= (_2!23557 (v!39226 lt!1366912)) (_2!23557 lt!1366892)))))

(declare-fun lt!1367170 () Unit!59764)

(declare-fun choose!23246 (List!41708 List!41708 List!41708 List!41708) Unit!59764)

(assert (=> d!1163090 (= lt!1367170 (choose!23246 lt!1366901 (_2!23557 (v!39226 lt!1366912)) lt!1366901 (_2!23557 lt!1366892)))))

(assert (=> d!1163090 (= (++!10720 lt!1366901 (_2!23557 (v!39226 lt!1366912))) (++!10720 lt!1366901 (_2!23557 lt!1366892)))))

(assert (=> d!1163090 (= (lemmaConcatSameAndSameSizesThenSameLists!529 lt!1366901 (_2!23557 (v!39226 lt!1366912)) lt!1366901 (_2!23557 lt!1366892)) lt!1367170)))

(declare-fun bs!585890 () Bool)

(assert (= bs!585890 d!1163090))

(declare-fun m!4485705 () Bool)

(assert (=> bs!585890 m!4485705))

(assert (=> bs!585890 m!4485091))

(declare-fun m!4485707 () Bool)

(assert (=> bs!585890 m!4485707))

(assert (=> b!3921334 d!1163090))

(declare-fun d!1163100 () Bool)

(assert (=> d!1163100 (not (= (lexList!1838 thiss!20629 rules!2768 (_2!23557 lt!1366892)) (tuple2!40849 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1367176 () Unit!59764)

(declare-fun choose!23247 (LexerInterface!6070 List!41710 List!41708 List!41708 List!41709 List!41708) Unit!59764)

(assert (=> d!1163100 (= lt!1367176 (choose!23247 thiss!20629 rules!2768 suffix!1176 (_2!23557 lt!1366892) suffixTokens!72 suffixResult!91))))

(assert (=> d!1163100 (not (isEmpty!24761 rules!2768))))

(assert (=> d!1163100 (= (lemmaLexWithSmallerInputCannotProduceSameResults!81 thiss!20629 rules!2768 suffix!1176 (_2!23557 lt!1366892) suffixTokens!72 suffixResult!91) lt!1367176)))

(declare-fun bs!585891 () Bool)

(assert (= bs!585891 d!1163100))

(assert (=> bs!585891 m!4485035))

(declare-fun m!4485737 () Bool)

(assert (=> bs!585891 m!4485737))

(assert (=> bs!585891 m!4485067))

(assert (=> b!3921334 d!1163100))

(declare-fun d!1163122 () Bool)

(assert (=> d!1163122 (= (isEmpty!24763 prefix!426) (is-Nil!41584 prefix!426))))

(assert (=> b!3921330 d!1163122))

(declare-fun b!3921815 () Bool)

(declare-fun e!2425222 () Bool)

(declare-fun lt!1367178 () tuple2!40848)

(assert (=> b!3921815 (= e!2425222 (= (_2!23558 lt!1367178) suffix!1176))))

(declare-fun d!1163124 () Bool)

(assert (=> d!1163124 e!2425222))

(declare-fun c!681552 () Bool)

(assert (=> d!1163124 (= c!681552 (> (size!31220 (_1!23558 lt!1367178)) 0))))

(declare-fun e!2425223 () tuple2!40848)

(assert (=> d!1163124 (= lt!1367178 e!2425223)))

(declare-fun c!681551 () Bool)

(declare-fun lt!1367179 () Option!8901)

(assert (=> d!1163124 (= c!681551 (is-Some!8900 lt!1367179))))

(assert (=> d!1163124 (= lt!1367179 (maxPrefix!3374 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1163124 (= (lexList!1838 thiss!20629 rules!2768 suffix!1176) lt!1367178)))

(declare-fun b!3921816 () Bool)

(declare-fun lt!1367177 () tuple2!40848)

(assert (=> b!3921816 (= e!2425223 (tuple2!40849 (Cons!41585 (_1!23557 (v!39226 lt!1367179)) (_1!23558 lt!1367177)) (_2!23558 lt!1367177)))))

(assert (=> b!3921816 (= lt!1367177 (lexList!1838 thiss!20629 rules!2768 (_2!23557 (v!39226 lt!1367179))))))

(declare-fun b!3921817 () Bool)

(assert (=> b!3921817 (= e!2425223 (tuple2!40849 Nil!41585 suffix!1176))))

(declare-fun b!3921818 () Bool)

(declare-fun e!2425221 () Bool)

(assert (=> b!3921818 (= e!2425221 (not (isEmpty!24762 (_1!23558 lt!1367178))))))

(declare-fun b!3921819 () Bool)

(assert (=> b!3921819 (= e!2425222 e!2425221)))

(declare-fun res!1586505 () Bool)

(assert (=> b!3921819 (= res!1586505 (< (size!31216 (_2!23558 lt!1367178)) (size!31216 suffix!1176)))))

(assert (=> b!3921819 (=> (not res!1586505) (not e!2425221))))

(assert (= (and d!1163124 c!681551) b!3921816))

(assert (= (and d!1163124 (not c!681551)) b!3921817))

(assert (= (and d!1163124 c!681552) b!3921819))

(assert (= (and d!1163124 (not c!681552)) b!3921815))

(assert (= (and b!3921819 res!1586505) b!3921818))

(declare-fun m!4485739 () Bool)

(assert (=> d!1163124 m!4485739))

(declare-fun m!4485741 () Bool)

(assert (=> d!1163124 m!4485741))

(declare-fun m!4485743 () Bool)

(assert (=> b!3921816 m!4485743))

(declare-fun m!4485745 () Bool)

(assert (=> b!3921818 m!4485745))

(declare-fun m!4485747 () Bool)

(assert (=> b!3921819 m!4485747))

(assert (=> b!3921819 m!4485029))

(assert (=> b!3921309 d!1163124))

(declare-fun b!3921820 () Bool)

(declare-fun e!2425225 () Bool)

(declare-fun lt!1367181 () tuple2!40848)

(assert (=> b!3921820 (= e!2425225 (= (_2!23558 lt!1367181) lt!1366895))))

(declare-fun d!1163126 () Bool)

(assert (=> d!1163126 e!2425225))

(declare-fun c!681554 () Bool)

(assert (=> d!1163126 (= c!681554 (> (size!31220 (_1!23558 lt!1367181)) 0))))

(declare-fun e!2425226 () tuple2!40848)

(assert (=> d!1163126 (= lt!1367181 e!2425226)))

(declare-fun c!681553 () Bool)

(declare-fun lt!1367182 () Option!8901)

(assert (=> d!1163126 (= c!681553 (is-Some!8900 lt!1367182))))

(assert (=> d!1163126 (= lt!1367182 (maxPrefix!3374 thiss!20629 rules!2768 lt!1366895))))

(assert (=> d!1163126 (= (lexList!1838 thiss!20629 rules!2768 lt!1366895) lt!1367181)))

(declare-fun b!3921821 () Bool)

(declare-fun lt!1367180 () tuple2!40848)

(assert (=> b!3921821 (= e!2425226 (tuple2!40849 (Cons!41585 (_1!23557 (v!39226 lt!1367182)) (_1!23558 lt!1367180)) (_2!23558 lt!1367180)))))

(assert (=> b!3921821 (= lt!1367180 (lexList!1838 thiss!20629 rules!2768 (_2!23557 (v!39226 lt!1367182))))))

(declare-fun b!3921822 () Bool)

(assert (=> b!3921822 (= e!2425226 (tuple2!40849 Nil!41585 lt!1366895))))

(declare-fun b!3921823 () Bool)

(declare-fun e!2425224 () Bool)

(assert (=> b!3921823 (= e!2425224 (not (isEmpty!24762 (_1!23558 lt!1367181))))))

(declare-fun b!3921824 () Bool)

(assert (=> b!3921824 (= e!2425225 e!2425224)))

(declare-fun res!1586506 () Bool)

(assert (=> b!3921824 (= res!1586506 (< (size!31216 (_2!23558 lt!1367181)) (size!31216 lt!1366895)))))

(assert (=> b!3921824 (=> (not res!1586506) (not e!2425224))))

(assert (= (and d!1163126 c!681553) b!3921821))

(assert (= (and d!1163126 (not c!681553)) b!3921822))

(assert (= (and d!1163126 c!681554) b!3921824))

(assert (= (and d!1163126 (not c!681554)) b!3921820))

(assert (= (and b!3921824 res!1586506) b!3921823))

(declare-fun m!4485749 () Bool)

(assert (=> d!1163126 m!4485749))

(assert (=> d!1163126 m!4485119))

(declare-fun m!4485751 () Bool)

(assert (=> b!3921821 m!4485751))

(declare-fun m!4485753 () Bool)

(assert (=> b!3921823 m!4485753))

(declare-fun m!4485755 () Bool)

(assert (=> b!3921824 m!4485755))

(assert (=> b!3921824 m!4485083))

(assert (=> b!3921310 d!1163126))

(declare-fun d!1163128 () Bool)

(declare-fun e!2425228 () Bool)

(assert (=> d!1163128 e!2425228))

(declare-fun res!1586507 () Bool)

(assert (=> d!1163128 (=> (not res!1586507) (not e!2425228))))

(declare-fun lt!1367183 () List!41709)

(assert (=> d!1163128 (= res!1586507 (= (content!6257 lt!1367183) (set.union (content!6257 prefixTokens!80) (content!6257 suffixTokens!72))))))

(declare-fun e!2425227 () List!41709)

(assert (=> d!1163128 (= lt!1367183 e!2425227)))

(declare-fun c!681555 () Bool)

(assert (=> d!1163128 (= c!681555 (is-Nil!41585 prefixTokens!80))))

(assert (=> d!1163128 (= (++!10719 prefixTokens!80 suffixTokens!72) lt!1367183)))

(declare-fun b!3921826 () Bool)

(assert (=> b!3921826 (= e!2425227 (Cons!41585 (h!47005 prefixTokens!80) (++!10719 (t!324556 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3921828 () Bool)

(assert (=> b!3921828 (= e!2425228 (or (not (= suffixTokens!72 Nil!41585)) (= lt!1367183 prefixTokens!80)))))

(declare-fun b!3921827 () Bool)

(declare-fun res!1586508 () Bool)

(assert (=> b!3921827 (=> (not res!1586508) (not e!2425228))))

(assert (=> b!3921827 (= res!1586508 (= (size!31220 lt!1367183) (+ (size!31220 prefixTokens!80) (size!31220 suffixTokens!72))))))

(declare-fun b!3921825 () Bool)

(assert (=> b!3921825 (= e!2425227 suffixTokens!72)))

(assert (= (and d!1163128 c!681555) b!3921825))

(assert (= (and d!1163128 (not c!681555)) b!3921826))

(assert (= (and d!1163128 res!1586507) b!3921827))

(assert (= (and b!3921827 res!1586508) b!3921828))

(declare-fun m!4485757 () Bool)

(assert (=> d!1163128 m!4485757))

(declare-fun m!4485759 () Bool)

(assert (=> d!1163128 m!4485759))

(assert (=> d!1163128 m!4485531))

(declare-fun m!4485761 () Bool)

(assert (=> b!3921826 m!4485761))

(declare-fun m!4485763 () Bool)

(assert (=> b!3921827 m!4485763))

(declare-fun m!4485765 () Bool)

(assert (=> b!3921827 m!4485765))

(assert (=> b!3921827 m!4485543))

(assert (=> b!3921310 d!1163128))

(declare-fun b!3921831 () Bool)

(declare-fun res!1586509 () Bool)

(declare-fun e!2425229 () Bool)

(assert (=> b!3921831 (=> (not res!1586509) (not e!2425229))))

(declare-fun lt!1367184 () List!41708)

(assert (=> b!3921831 (= res!1586509 (= (size!31216 lt!1367184) (+ (size!31216 prefix!426) (size!31216 suffix!1176))))))

(declare-fun b!3921829 () Bool)

(declare-fun e!2425230 () List!41708)

(assert (=> b!3921829 (= e!2425230 suffix!1176)))

(declare-fun b!3921832 () Bool)

(assert (=> b!3921832 (= e!2425229 (or (not (= suffix!1176 Nil!41584)) (= lt!1367184 prefix!426)))))

(declare-fun b!3921830 () Bool)

(assert (=> b!3921830 (= e!2425230 (Cons!41584 (h!47004 prefix!426) (++!10720 (t!324555 prefix!426) suffix!1176)))))

(declare-fun d!1163130 () Bool)

(assert (=> d!1163130 e!2425229))

(declare-fun res!1586510 () Bool)

(assert (=> d!1163130 (=> (not res!1586510) (not e!2425229))))

(assert (=> d!1163130 (= res!1586510 (= (content!6259 lt!1367184) (set.union (content!6259 prefix!426) (content!6259 suffix!1176))))))

(assert (=> d!1163130 (= lt!1367184 e!2425230)))

(declare-fun c!681556 () Bool)

(assert (=> d!1163130 (= c!681556 (is-Nil!41584 prefix!426))))

(assert (=> d!1163130 (= (++!10720 prefix!426 suffix!1176) lt!1367184)))

(assert (= (and d!1163130 c!681556) b!3921829))

(assert (= (and d!1163130 (not c!681556)) b!3921830))

(assert (= (and d!1163130 res!1586510) b!3921831))

(assert (= (and b!3921831 res!1586509) b!3921832))

(declare-fun m!4485767 () Bool)

(assert (=> b!3921831 m!4485767))

(assert (=> b!3921831 m!4485263))

(assert (=> b!3921831 m!4485029))

(declare-fun m!4485769 () Bool)

(assert (=> b!3921830 m!4485769))

(declare-fun m!4485771 () Bool)

(assert (=> d!1163130 m!4485771))

(declare-fun m!4485773 () Bool)

(assert (=> d!1163130 m!4485773))

(declare-fun m!4485775 () Bool)

(assert (=> d!1163130 m!4485775))

(assert (=> b!3921310 d!1163130))

(declare-fun b!3921845 () Bool)

(declare-fun e!2425233 () Bool)

(declare-fun tp!1193753 () Bool)

(assert (=> b!3921845 (= e!2425233 tp!1193753)))

(declare-fun b!3921843 () Bool)

(assert (=> b!3921843 (= e!2425233 tp_is_empty!19743)))

(declare-fun b!3921844 () Bool)

(declare-fun tp!1193754 () Bool)

(declare-fun tp!1193752 () Bool)

(assert (=> b!3921844 (= e!2425233 (and tp!1193754 tp!1193752))))

(assert (=> b!3921307 (= tp!1193671 e!2425233)))

(declare-fun b!3921846 () Bool)

(declare-fun tp!1193751 () Bool)

(declare-fun tp!1193750 () Bool)

(assert (=> b!3921846 (= e!2425233 (and tp!1193751 tp!1193750))))

(assert (= (and b!3921307 (is-ElementMatch!11386 (regex!6481 (rule!9413 (h!47005 prefixTokens!80))))) b!3921843))

(assert (= (and b!3921307 (is-Concat!18098 (regex!6481 (rule!9413 (h!47005 prefixTokens!80))))) b!3921844))

(assert (= (and b!3921307 (is-Star!11386 (regex!6481 (rule!9413 (h!47005 prefixTokens!80))))) b!3921845))

(assert (= (and b!3921307 (is-Union!11386 (regex!6481 (rule!9413 (h!47005 prefixTokens!80))))) b!3921846))

(declare-fun b!3921851 () Bool)

(declare-fun e!2425236 () Bool)

(declare-fun tp!1193757 () Bool)

(assert (=> b!3921851 (= e!2425236 (and tp_is_empty!19743 tp!1193757))))

(assert (=> b!3921308 (= tp!1193663 e!2425236)))

(assert (= (and b!3921308 (is-Cons!41584 (originalCharacters!7081 (h!47005 prefixTokens!80)))) b!3921851))

(declare-fun b!3921854 () Bool)

(declare-fun e!2425237 () Bool)

(declare-fun tp!1193761 () Bool)

(assert (=> b!3921854 (= e!2425237 tp!1193761)))

(declare-fun b!3921852 () Bool)

(assert (=> b!3921852 (= e!2425237 tp_is_empty!19743)))

(declare-fun b!3921853 () Bool)

(declare-fun tp!1193762 () Bool)

(declare-fun tp!1193760 () Bool)

(assert (=> b!3921853 (= e!2425237 (and tp!1193762 tp!1193760))))

(assert (=> b!3921335 (= tp!1193669 e!2425237)))

(declare-fun b!3921855 () Bool)

(declare-fun tp!1193759 () Bool)

(declare-fun tp!1193758 () Bool)

(assert (=> b!3921855 (= e!2425237 (and tp!1193759 tp!1193758))))

(assert (= (and b!3921335 (is-ElementMatch!11386 (regex!6481 (h!47006 rules!2768)))) b!3921852))

(assert (= (and b!3921335 (is-Concat!18098 (regex!6481 (h!47006 rules!2768)))) b!3921853))

(assert (= (and b!3921335 (is-Star!11386 (regex!6481 (h!47006 rules!2768)))) b!3921854))

(assert (= (and b!3921335 (is-Union!11386 (regex!6481 (h!47006 rules!2768)))) b!3921855))

(declare-fun b!3921869 () Bool)

(declare-fun b_free!106697 () Bool)

(declare-fun b_next!107401 () Bool)

(assert (=> b!3921869 (= b_free!106697 (not b_next!107401))))

(declare-fun tb!234167 () Bool)

(declare-fun t!324605 () Bool)

(assert (=> (and b!3921869 (= (toValue!8933 (transformation!6481 (rule!9413 (h!47005 (t!324556 suffixTokens!72))))) (toValue!8933 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324605) tb!234167))

(declare-fun result!283758 () Bool)

(assert (= result!283758 result!283732))

(assert (=> d!1163076 t!324605))

(declare-fun tp!1193775 () Bool)

(declare-fun b_and!298949 () Bool)

(assert (=> b!3921869 (= tp!1193775 (and (=> t!324605 result!283758) b_and!298949))))

(declare-fun b_free!106699 () Bool)

(declare-fun b_next!107403 () Bool)

(assert (=> b!3921869 (= b_free!106699 (not b_next!107403))))

(declare-fun tb!234169 () Bool)

(declare-fun t!324607 () Bool)

(assert (=> (and b!3921869 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 suffixTokens!72))))) (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324607) tb!234169))

(declare-fun result!283760 () Bool)

(assert (= result!283760 result!283718))

(assert (=> d!1163052 t!324607))

(declare-fun t!324609 () Bool)

(declare-fun tb!234171 () Bool)

(assert (=> (and b!3921869 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 suffixTokens!72))))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72))))) t!324609) tb!234171))

(declare-fun result!283762 () Bool)

(assert (= result!283762 result!283740))

(assert (=> b!3921791 t!324609))

(declare-fun t!324611 () Bool)

(declare-fun tb!234173 () Bool)

(assert (=> (and b!3921869 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 suffixTokens!72))))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80))))) t!324611) tb!234173))

(declare-fun result!283764 () Bool)

(assert (= result!283764 result!283746))

(assert (=> b!3921794 t!324611))

(declare-fun b_and!298951 () Bool)

(declare-fun tp!1193774 () Bool)

(assert (=> b!3921869 (= tp!1193774 (and (=> t!324607 result!283760) (=> t!324609 result!283762) (=> t!324611 result!283764) b_and!298951))))

(declare-fun e!2425250 () Bool)

(declare-fun b!3921867 () Bool)

(declare-fun e!2425251 () Bool)

(declare-fun tp!1193773 () Bool)

(assert (=> b!3921867 (= e!2425250 (and (inv!21 (value!205344 (h!47005 (t!324556 suffixTokens!72)))) e!2425251 tp!1193773))))

(declare-fun e!2425253 () Bool)

(assert (=> b!3921306 (= tp!1193679 e!2425253)))

(declare-fun tp!1193777 () Bool)

(declare-fun b!3921866 () Bool)

(assert (=> b!3921866 (= e!2425253 (and (inv!55781 (h!47005 (t!324556 suffixTokens!72))) e!2425250 tp!1193777))))

(declare-fun e!2425254 () Bool)

(assert (=> b!3921869 (= e!2425254 (and tp!1193775 tp!1193774))))

(declare-fun b!3921868 () Bool)

(declare-fun tp!1193776 () Bool)

(assert (=> b!3921868 (= e!2425251 (and tp!1193776 (inv!55778 (tag!7341 (rule!9413 (h!47005 (t!324556 suffixTokens!72))))) (inv!55782 (transformation!6481 (rule!9413 (h!47005 (t!324556 suffixTokens!72))))) e!2425254))))

(assert (= b!3921868 b!3921869))

(assert (= b!3921867 b!3921868))

(assert (= b!3921866 b!3921867))

(assert (= (and b!3921306 (is-Cons!41585 (t!324556 suffixTokens!72))) b!3921866))

(declare-fun m!4485777 () Bool)

(assert (=> b!3921867 m!4485777))

(declare-fun m!4485779 () Bool)

(assert (=> b!3921866 m!4485779))

(declare-fun m!4485781 () Bool)

(assert (=> b!3921868 m!4485781))

(declare-fun m!4485783 () Bool)

(assert (=> b!3921868 m!4485783))

(declare-fun b!3921872 () Bool)

(declare-fun e!2425256 () Bool)

(declare-fun tp!1193781 () Bool)

(assert (=> b!3921872 (= e!2425256 tp!1193781)))

(declare-fun b!3921870 () Bool)

(assert (=> b!3921870 (= e!2425256 tp_is_empty!19743)))

(declare-fun b!3921871 () Bool)

(declare-fun tp!1193782 () Bool)

(declare-fun tp!1193780 () Bool)

(assert (=> b!3921871 (= e!2425256 (and tp!1193782 tp!1193780))))

(assert (=> b!3921337 (= tp!1193670 e!2425256)))

(declare-fun b!3921873 () Bool)

(declare-fun tp!1193779 () Bool)

(declare-fun tp!1193778 () Bool)

(assert (=> b!3921873 (= e!2425256 (and tp!1193779 tp!1193778))))

(assert (= (and b!3921337 (is-ElementMatch!11386 (regex!6481 (rule!9413 (h!47005 suffixTokens!72))))) b!3921870))

(assert (= (and b!3921337 (is-Concat!18098 (regex!6481 (rule!9413 (h!47005 suffixTokens!72))))) b!3921871))

(assert (= (and b!3921337 (is-Star!11386 (regex!6481 (rule!9413 (h!47005 suffixTokens!72))))) b!3921872))

(assert (= (and b!3921337 (is-Union!11386 (regex!6481 (rule!9413 (h!47005 suffixTokens!72))))) b!3921873))

(declare-fun b!3921877 () Bool)

(declare-fun b_free!106701 () Bool)

(declare-fun b_next!107405 () Bool)

(assert (=> b!3921877 (= b_free!106701 (not b_next!107405))))

(declare-fun t!324613 () Bool)

(declare-fun tb!234175 () Bool)

(assert (=> (and b!3921877 (= (toValue!8933 (transformation!6481 (rule!9413 (h!47005 (t!324556 prefixTokens!80))))) (toValue!8933 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324613) tb!234175))

(declare-fun result!283766 () Bool)

(assert (= result!283766 result!283732))

(assert (=> d!1163076 t!324613))

(declare-fun b_and!298953 () Bool)

(declare-fun tp!1193785 () Bool)

(assert (=> b!3921877 (= tp!1193785 (and (=> t!324613 result!283766) b_and!298953))))

(declare-fun b_free!106703 () Bool)

(declare-fun b_next!107407 () Bool)

(assert (=> b!3921877 (= b_free!106703 (not b_next!107407))))

(declare-fun t!324615 () Bool)

(declare-fun tb!234177 () Bool)

(assert (=> (and b!3921877 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 prefixTokens!80))))) (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324615) tb!234177))

(declare-fun result!283768 () Bool)

(assert (= result!283768 result!283718))

(assert (=> d!1163052 t!324615))

(declare-fun tb!234179 () Bool)

(declare-fun t!324617 () Bool)

(assert (=> (and b!3921877 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 prefixTokens!80))))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72))))) t!324617) tb!234179))

(declare-fun result!283770 () Bool)

(assert (= result!283770 result!283740))

(assert (=> b!3921791 t!324617))

(declare-fun t!324619 () Bool)

(declare-fun tb!234181 () Bool)

(assert (=> (and b!3921877 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 prefixTokens!80))))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80))))) t!324619) tb!234181))

(declare-fun result!283772 () Bool)

(assert (= result!283772 result!283746))

(assert (=> b!3921794 t!324619))

(declare-fun b_and!298955 () Bool)

(declare-fun tp!1193784 () Bool)

(assert (=> b!3921877 (= tp!1193784 (and (=> t!324615 result!283768) (=> t!324617 result!283770) (=> t!324619 result!283772) b_and!298955))))

(declare-fun e!2425258 () Bool)

(declare-fun tp!1193783 () Bool)

(declare-fun b!3921875 () Bool)

(declare-fun e!2425257 () Bool)

(assert (=> b!3921875 (= e!2425257 (and (inv!21 (value!205344 (h!47005 (t!324556 prefixTokens!80)))) e!2425258 tp!1193783))))

(declare-fun e!2425260 () Bool)

(assert (=> b!3921312 (= tp!1193673 e!2425260)))

(declare-fun b!3921874 () Bool)

(declare-fun tp!1193787 () Bool)

(assert (=> b!3921874 (= e!2425260 (and (inv!55781 (h!47005 (t!324556 prefixTokens!80))) e!2425257 tp!1193787))))

(declare-fun e!2425261 () Bool)

(assert (=> b!3921877 (= e!2425261 (and tp!1193785 tp!1193784))))

(declare-fun tp!1193786 () Bool)

(declare-fun b!3921876 () Bool)

(assert (=> b!3921876 (= e!2425258 (and tp!1193786 (inv!55778 (tag!7341 (rule!9413 (h!47005 (t!324556 prefixTokens!80))))) (inv!55782 (transformation!6481 (rule!9413 (h!47005 (t!324556 prefixTokens!80))))) e!2425261))))

(assert (= b!3921876 b!3921877))

(assert (= b!3921875 b!3921876))

(assert (= b!3921874 b!3921875))

(assert (= (and b!3921312 (is-Cons!41585 (t!324556 prefixTokens!80))) b!3921874))

(declare-fun m!4485785 () Bool)

(assert (=> b!3921875 m!4485785))

(declare-fun m!4485787 () Bool)

(assert (=> b!3921874 m!4485787))

(declare-fun m!4485789 () Bool)

(assert (=> b!3921876 m!4485789))

(declare-fun m!4485791 () Bool)

(assert (=> b!3921876 m!4485791))

(declare-fun b!3921878 () Bool)

(declare-fun e!2425263 () Bool)

(declare-fun tp!1193788 () Bool)

(assert (=> b!3921878 (= e!2425263 (and tp_is_empty!19743 tp!1193788))))

(assert (=> b!3921333 (= tp!1193676 e!2425263)))

(assert (= (and b!3921333 (is-Cons!41584 (t!324555 suffix!1176))) b!3921878))

(declare-fun b!3921879 () Bool)

(declare-fun e!2425264 () Bool)

(declare-fun tp!1193789 () Bool)

(assert (=> b!3921879 (= e!2425264 (and tp_is_empty!19743 tp!1193789))))

(assert (=> b!3921324 (= tp!1193667 e!2425264)))

(assert (= (and b!3921324 (is-Cons!41584 (t!324555 prefix!426))) b!3921879))

(declare-fun b!3921880 () Bool)

(declare-fun e!2425265 () Bool)

(declare-fun tp!1193790 () Bool)

(assert (=> b!3921880 (= e!2425265 (and tp_is_empty!19743 tp!1193790))))

(assert (=> b!3921313 (= tp!1193672 e!2425265)))

(assert (= (and b!3921313 (is-Cons!41584 (t!324555 suffixResult!91))) b!3921880))

(declare-fun b!3921891 () Bool)

(declare-fun b_free!106705 () Bool)

(declare-fun b_next!107409 () Bool)

(assert (=> b!3921891 (= b_free!106705 (not b_next!107409))))

(declare-fun t!324621 () Bool)

(declare-fun tb!234183 () Bool)

(assert (=> (and b!3921891 (= (toValue!8933 (transformation!6481 (h!47006 (t!324557 rules!2768)))) (toValue!8933 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324621) tb!234183))

(declare-fun result!283776 () Bool)

(assert (= result!283776 result!283732))

(assert (=> d!1163076 t!324621))

(declare-fun tp!1193801 () Bool)

(declare-fun b_and!298957 () Bool)

(assert (=> b!3921891 (= tp!1193801 (and (=> t!324621 result!283776) b_and!298957))))

(declare-fun b_free!106707 () Bool)

(declare-fun b_next!107411 () Bool)

(assert (=> b!3921891 (= b_free!106707 (not b_next!107411))))

(declare-fun tb!234185 () Bool)

(declare-fun t!324623 () Bool)

(assert (=> (and b!3921891 (= (toChars!8792 (transformation!6481 (h!47006 (t!324557 rules!2768)))) (toChars!8792 (transformation!6481 (rule!9413 (_1!23557 (v!39226 lt!1366912)))))) t!324623) tb!234185))

(declare-fun result!283778 () Bool)

(assert (= result!283778 result!283718))

(assert (=> d!1163052 t!324623))

(declare-fun t!324625 () Bool)

(declare-fun tb!234187 () Bool)

(assert (=> (and b!3921891 (= (toChars!8792 (transformation!6481 (h!47006 (t!324557 rules!2768)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72))))) t!324625) tb!234187))

(declare-fun result!283780 () Bool)

(assert (= result!283780 result!283740))

(assert (=> b!3921791 t!324625))

(declare-fun tb!234189 () Bool)

(declare-fun t!324627 () Bool)

(assert (=> (and b!3921891 (= (toChars!8792 (transformation!6481 (h!47006 (t!324557 rules!2768)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80))))) t!324627) tb!234189))

(declare-fun result!283782 () Bool)

(assert (= result!283782 result!283746))

(assert (=> b!3921794 t!324627))

(declare-fun tp!1193799 () Bool)

(declare-fun b_and!298959 () Bool)

(assert (=> b!3921891 (= tp!1193799 (and (=> t!324623 result!283778) (=> t!324625 result!283780) (=> t!324627 result!283782) b_and!298959))))

(declare-fun e!2425275 () Bool)

(assert (=> b!3921891 (= e!2425275 (and tp!1193801 tp!1193799))))

(declare-fun e!2425277 () Bool)

(declare-fun tp!1193800 () Bool)

(declare-fun b!3921890 () Bool)

(assert (=> b!3921890 (= e!2425277 (and tp!1193800 (inv!55778 (tag!7341 (h!47006 (t!324557 rules!2768)))) (inv!55782 (transformation!6481 (h!47006 (t!324557 rules!2768)))) e!2425275))))

(declare-fun b!3921889 () Bool)

(declare-fun e!2425274 () Bool)

(declare-fun tp!1193802 () Bool)

(assert (=> b!3921889 (= e!2425274 (and e!2425277 tp!1193802))))

(assert (=> b!3921319 (= tp!1193678 e!2425274)))

(assert (= b!3921890 b!3921891))

(assert (= b!3921889 b!3921890))

(assert (= (and b!3921319 (is-Cons!41586 (t!324557 rules!2768))) b!3921889))

(declare-fun m!4485793 () Bool)

(assert (=> b!3921890 m!4485793))

(declare-fun m!4485795 () Bool)

(assert (=> b!3921890 m!4485795))

(declare-fun b!3921892 () Bool)

(declare-fun e!2425278 () Bool)

(declare-fun tp!1193803 () Bool)

(assert (=> b!3921892 (= e!2425278 (and tp_is_empty!19743 tp!1193803))))

(assert (=> b!3921321 (= tp!1193664 e!2425278)))

(assert (= (and b!3921321 (is-Cons!41584 (originalCharacters!7081 (h!47005 suffixTokens!72)))) b!3921892))

(declare-fun b_lambda!114813 () Bool)

(assert (= b_lambda!114811 (or (and b!3921877 b_free!106703 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 prefixTokens!80))))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))))) (and b!3921338 b_free!106679) (and b!3921891 b_free!106707 (= (toChars!8792 (transformation!6481 (h!47006 (t!324557 rules!2768)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))))) (and b!3921315 b_free!106675 (= (toChars!8792 (transformation!6481 (h!47006 rules!2768))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))))) (and b!3921869 b_free!106699 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 suffixTokens!72))))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))))) (and b!3921311 b_free!106683 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))))) b_lambda!114813)))

(declare-fun b_lambda!114815 () Bool)

(assert (= b_lambda!114809 (or (and b!3921877 b_free!106703 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 prefixTokens!80))))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))))) (and b!3921891 b_free!106707 (= (toChars!8792 (transformation!6481 (h!47006 (t!324557 rules!2768)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))))) (and b!3921315 b_free!106675 (= (toChars!8792 (transformation!6481 (h!47006 rules!2768))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))))) (and b!3921338 b_free!106679 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 prefixTokens!80)))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))))) (and b!3921311 b_free!106683) (and b!3921869 b_free!106699 (= (toChars!8792 (transformation!6481 (rule!9413 (h!47005 (t!324556 suffixTokens!72))))) (toChars!8792 (transformation!6481 (rule!9413 (h!47005 suffixTokens!72)))))) b_lambda!114815)))

(push 1)

(assert (not b!3921557))

(assert (not b!3921624))

(assert (not tb!234149))

(assert (not b!3921559))

(assert (not b!3921605))

(assert (not b!3921826))

(assert (not b!3921786))

(assert (not b!3921791))

(assert (not b!3921844))

(assert (not b!3921584))

(assert (not b!3921879))

(assert b_and!298945)

(assert (not d!1163068))

(assert (not b_next!107385))

(assert (not d!1163078))

(assert (not b_next!107403))

(assert (not tb!234161))

(assert (not b!3921818))

(assert (not b!3921785))

(assert (not d!1163044))

(assert (not tb!234137))

(assert (not b!3921699))

(assert (not b!3921796))

(assert (not b!3921491))

(assert (not b!3921558))

(assert (not b!3921821))

(assert (not b!3921773))

(assert (not d!1163060))

(assert (not d!1162942))

(assert (not b!3921674))

(assert (not b!3921824))

(assert (not b!3921890))

(assert (not d!1163124))

(assert (not d!1163052))

(assert b_and!298951)

(assert (not b!3921846))

(assert (not b!3921736))

(assert (not b_next!107401))

(assert b_and!298935)

(assert (not b!3921612))

(assert (not b_next!107407))

(assert (not b!3921871))

(assert (not b_next!107411))

(assert (not d!1163002))

(assert (not d!1163082))

(assert (not b!3921872))

(assert (not b!3921827))

(assert (not b!3921567))

(assert (not d!1163086))

(assert b_and!298953)

(assert (not b!3921795))

(assert (not b_next!107387))

(assert (not d!1163066))

(assert b_and!298955)

(assert (not b_lambda!114815))

(assert (not b!3921855))

(assert (not b!3921774))

(assert (not d!1163100))

(assert (not b!3921878))

(assert (not b!3921853))

(assert (not b!3921716))

(assert (not b!3921794))

(assert (not d!1162960))

(assert (not d!1163050))

(assert (not b!3921700))

(assert (not b!3921845))

(assert (not b!3921783))

(assert b_and!298957)

(assert (not b!3921889))

(assert (not b!3921792))

(assert (not b!3921670))

(assert tp_is_empty!19743)

(assert (not b!3921831))

(assert (not b!3921487))

(assert (not b_next!107409))

(assert (not b_lambda!114803))

(assert (not b_lambda!114807))

(assert b_and!298947)

(assert (not b!3921488))

(assert (not d!1163084))

(assert (not b!3921672))

(assert (not d!1162968))

(assert (not b!3921868))

(assert (not b!3921626))

(assert (not b!3921486))

(assert (not b!3921610))

(assert (not b!3921779))

(assert b_and!298931)

(assert (not b!3921492))

(assert (not d!1163128))

(assert (not b!3921781))

(assert (not b!3921721))

(assert (not b!3921819))

(assert (not b!3921780))

(assert (not b!3921830))

(assert (not b!3921608))

(assert (not d!1162996))

(assert (not d!1162950))

(assert (not b!3921823))

(assert (not b!3921892))

(assert (not d!1163006))

(assert (not b!3921873))

(assert (not tb!234155))

(assert (not b!3921703))

(assert b_and!298933)

(assert (not d!1163130))

(assert (not b!3921867))

(assert (not b!3921474))

(assert (not d!1163036))

(assert (not b!3921707))

(assert (not d!1163014))

(assert (not d!1163018))

(assert (not b!3921675))

(assert (not b!3921851))

(assert (not d!1162976))

(assert (not b!3921563))

(assert (not b_next!107381))

(assert (not b!3921565))

(assert (not d!1163090))

(assert (not b!3921569))

(assert (not b!3921585))

(assert (not b!3921874))

(assert (not d!1163070))

(assert b_and!298943)

(assert (not b!3921560))

(assert (not b!3921671))

(assert (not b!3921607))

(assert (not d!1163126))

(assert (not b!3921613))

(assert (not b!3921875))

(assert (not b!3921609))

(assert (not b!3921748))

(assert (not b!3921880))

(assert (not b!3921627))

(assert (not b!3921876))

(assert (not b!3921667))

(assert (not d!1163062))

(assert (not b_next!107377))

(assert (not b!3921854))

(assert (not b!3921669))

(assert (not b!3921611))

(assert (not bm!284630))

(assert b_and!298949)

(assert b_and!298959)

(assert (not b_next!107383))

(assert (not b_next!107405))

(assert (not d!1163026))

(assert (not b!3921816))

(assert (not d!1163088))

(assert (not b_next!107379))

(assert (not b_lambda!114813))

(assert (not b!3921562))

(assert (not d!1162966))

(assert (not b!3921734))

(assert (not b!3921561))

(assert (not b!3921793))

(assert (not d!1162954))

(assert (not b!3921866))

(check-sat)

(pop 1)

(push 1)

(assert b_and!298945)

(assert b_and!298951)

(assert (not b_next!107401))

(assert b_and!298957)

(assert (not b_next!107409))

(assert b_and!298947)

(assert b_and!298931)

(assert b_and!298933)

(assert (not b_next!107381))

(assert b_and!298943)

(assert (not b_next!107377))

(assert (not b_next!107385))

(assert (not b_next!107403))

(assert b_and!298935)

(assert (not b_next!107407))

(assert (not b_next!107411))

(assert b_and!298953)

(assert (not b_next!107387))

(assert b_and!298955)

(assert b_and!298949)

(assert b_and!298959)

(assert (not b_next!107383))

(assert (not b_next!107405))

(assert (not b_next!107379))

(check-sat)

(pop 1)

