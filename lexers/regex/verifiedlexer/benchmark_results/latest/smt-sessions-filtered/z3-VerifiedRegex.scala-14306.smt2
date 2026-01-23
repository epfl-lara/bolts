; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747248 () Bool)

(assert start!747248)

(declare-fun b!7913234 () Bool)

(declare-fun b_free!135255 () Bool)

(declare-fun b_next!136045 () Bool)

(assert (=> b!7913234 (= b_free!135255 (not b_next!136045))))

(declare-fun tp!2356970 () Bool)

(declare-fun b_and!353635 () Bool)

(assert (=> b!7913234 (= tp!2356970 b_and!353635)))

(declare-fun b_free!135257 () Bool)

(declare-fun b_next!136047 () Bool)

(assert (=> b!7913234 (= b_free!135257 (not b_next!136047))))

(declare-fun tp!2356972 () Bool)

(declare-fun b_and!353637 () Bool)

(assert (=> b!7913234 (= tp!2356972 b_and!353637)))

(declare-fun e!4671168 () Bool)

(assert (=> b!7913234 (= e!4671168 (and tp!2356970 tp!2356972))))

(declare-fun res!3140843 () Bool)

(declare-fun e!4671160 () Bool)

(assert (=> start!747248 (=> (not res!3140843) (not e!4671160))))

(declare-datatypes ((LexerInterface!8270 0))(
  ( (LexerInterfaceExt!8267 (__x!35275 Int)) (Lexer!8268) )
))
(declare-fun thiss!15815 () LexerInterface!8270)

(get-info :version)

(assert (=> start!747248 (= res!3140843 ((_ is Lexer!8268) thiss!15815))))

(assert (=> start!747248 e!4671160))

(assert (=> start!747248 true))

(declare-fun e!4671165 () Bool)

(assert (=> start!747248 e!4671165))

(declare-fun e!4671161 () Bool)

(assert (=> start!747248 e!4671161))

(declare-fun b!7913235 () Bool)

(declare-fun tp_is_empty!53137 () Bool)

(declare-fun tp!2356969 () Bool)

(assert (=> b!7913235 (= e!4671161 (and tp_is_empty!53137 tp!2356969))))

(declare-fun b!7913236 () Bool)

(declare-fun e!4671163 () Bool)

(declare-fun e!4671167 () Bool)

(assert (=> b!7913236 (= e!4671163 (not e!4671167))))

(declare-fun res!3140842 () Bool)

(assert (=> b!7913236 (=> res!3140842 e!4671167)))

(declare-datatypes ((String!83391 0))(
  ( (String!83392 (value!289272 String)) )
))
(declare-datatypes ((List!74517 0))(
  ( (Nil!74393) (Cons!74393 (h!80841 (_ BitVec 16)) (t!389968 List!74517)) )
))
(declare-datatypes ((TokenValue!8994 0))(
  ( (FloatLiteralValue!17988 (text!63403 List!74517)) (TokenValueExt!8993 (__x!35276 Int)) (Broken!44970 (value!289273 List!74517)) (Object!9117) (End!8994) (Def!8994) (Underscore!8994) (Match!8994) (Else!8994) (Error!8994) (Case!8994) (If!8994) (Extends!8994) (Abstract!8994) (Class!8994) (Val!8994) (DelimiterValue!17988 (del!9054 List!74517)) (KeywordValue!9000 (value!289274 List!74517)) (CommentValue!17988 (value!289275 List!74517)) (WhitespaceValue!17988 (value!289276 List!74517)) (IndentationValue!8994 (value!289277 List!74517)) (String!83393) (Int32!8994) (Broken!44971 (value!289278 List!74517)) (Boolean!8995) (Unit!169490) (OperatorValue!8997 (op!9054 List!74517)) (IdentifierValue!17988 (value!289279 List!74517)) (IdentifierValue!17989 (value!289280 List!74517)) (WhitespaceValue!17989 (value!289281 List!74517)) (True!17988) (False!17988) (Broken!44972 (value!289282 List!74517)) (Broken!44973 (value!289283 List!74517)) (True!17989) (RightBrace!8994) (RightBracket!8994) (Colon!8994) (Null!8994) (Comma!8994) (LeftBracket!8994) (False!17989) (LeftBrace!8994) (ImaginaryLiteralValue!8994 (text!63404 List!74517)) (StringLiteralValue!26982 (value!289284 List!74517)) (EOFValue!8994 (value!289285 List!74517)) (IdentValue!8994 (value!289286 List!74517)) (DelimiterValue!17989 (value!289287 List!74517)) (DedentValue!8994 (value!289288 List!74517)) (NewLineValue!8994 (value!289289 List!74517)) (IntegerValue!26982 (value!289290 (_ BitVec 32)) (text!63405 List!74517)) (IntegerValue!26983 (value!289291 Int) (text!63406 List!74517)) (Times!8994) (Or!8994) (Equal!8994) (Minus!8994) (Broken!44974 (value!289292 List!74517)) (And!8994) (Div!8994) (LessEqual!8994) (Mod!8994) (Concat!30375) (Not!8994) (Plus!8994) (SpaceValue!8994 (value!289293 List!74517)) (IntegerValue!26984 (value!289294 Int) (text!63407 List!74517)) (StringLiteralValue!26983 (text!63408 List!74517)) (FloatLiteralValue!17989 (text!63409 List!74517)) (BytesLiteralValue!8994 (value!289295 List!74517)) (CommentValue!17989 (value!289296 List!74517)) (StringLiteralValue!26984 (value!289297 List!74517)) (ErrorTokenValue!8994 (msg!9055 List!74517)) )
))
(declare-datatypes ((C!43092 0))(
  ( (C!43093 (val!32010 Int)) )
))
(declare-datatypes ((Regex!21381 0))(
  ( (ElementMatch!21381 (c!1451877 C!43092)) (Concat!30376 (regOne!43274 Regex!21381) (regTwo!43274 Regex!21381)) (EmptyExpr!21381) (Star!21381 (reg!21710 Regex!21381)) (EmptyLang!21381) (Union!21381 (regOne!43275 Regex!21381) (regTwo!43275 Regex!21381)) )
))
(declare-datatypes ((List!74518 0))(
  ( (Nil!74394) (Cons!74394 (h!80842 C!43092) (t!389969 List!74518)) )
))
(declare-datatypes ((IArray!31765 0))(
  ( (IArray!31766 (innerList!15940 List!74518)) )
))
(declare-datatypes ((Conc!15852 0))(
  ( (Node!15852 (left!56786 Conc!15852) (right!57116 Conc!15852) (csize!31934 Int) (cheight!16063 Int)) (Leaf!30159 (xs!19234 IArray!31765) (csize!31935 Int)) (Empty!15852) )
))
(declare-datatypes ((BalanceConc!30822 0))(
  ( (BalanceConc!30823 (c!1451878 Conc!15852)) )
))
(declare-datatypes ((TokenValueInjection!17296 0))(
  ( (TokenValueInjection!17297 (toValue!11739 Int) (toChars!11598 Int)) )
))
(declare-datatypes ((Rule!17156 0))(
  ( (Rule!17157 (regex!8678 Regex!21381) (tag!9542 String!83391) (isSeparator!8678 Bool) (transformation!8678 TokenValueInjection!17296)) )
))
(declare-datatypes ((Token!15764 0))(
  ( (Token!15765 (value!289298 TokenValue!8994) (rule!11976 Rule!17156) (size!43181 Int) (originalCharacters!8913 List!74518)) )
))
(declare-datatypes ((tuple2!70470 0))(
  ( (tuple2!70471 (_1!38538 Token!15764) (_2!38538 List!74518)) )
))
(declare-datatypes ((Option!17952 0))(
  ( (None!17951) (Some!17951 (v!55108 tuple2!70470)) )
))
(declare-fun lt!2688789 () Option!17952)

(declare-fun isEmpty!42720 (Option!17952) Bool)

(assert (=> b!7913236 (= res!3140842 (isEmpty!42720 lt!2688789))))

(declare-fun rule!156 () Rule!17156)

(declare-fun lt!2688788 () BalanceConc!30822)

(declare-datatypes ((tuple2!70472 0))(
  ( (tuple2!70473 (_1!38539 List!74518) (_2!38539 List!74518)) )
))
(declare-fun lt!2688791 () tuple2!70472)

(declare-fun apply!14385 (TokenValueInjection!17296 BalanceConc!30822) TokenValue!8994)

(declare-fun size!43182 (BalanceConc!30822) Int)

(assert (=> b!7913236 (= lt!2688789 (Some!17951 (tuple2!70471 (Token!15765 (apply!14385 (transformation!8678 rule!156) lt!2688788) rule!156 (size!43182 lt!2688788) (_1!38539 lt!2688791)) (_2!38539 lt!2688791))))))

(declare-datatypes ((Unit!169491 0))(
  ( (Unit!169492) )
))
(declare-fun lt!2688785 () Unit!169491)

(declare-fun lemmaSemiInverse!2694 (TokenValueInjection!17296 BalanceConc!30822) Unit!169491)

(assert (=> b!7913236 (= lt!2688785 (lemmaSemiInverse!2694 (transformation!8678 rule!156) lt!2688788))))

(declare-fun seqFromList!6203 (List!74518) BalanceConc!30822)

(assert (=> b!7913236 (= lt!2688788 (seqFromList!6203 (_1!38539 lt!2688791)))))

(declare-fun e!4671164 () Bool)

(assert (=> b!7913236 e!4671164))

(declare-fun res!3140846 () Bool)

(assert (=> b!7913236 (=> res!3140846 e!4671164)))

(declare-fun lt!2688787 () tuple2!70472)

(declare-fun isEmpty!42721 (List!74518) Bool)

(assert (=> b!7913236 (= res!3140846 (isEmpty!42721 (_1!38539 lt!2688787)))))

(declare-fun lt!2688786 () Int)

(declare-fun input!1480 () List!74518)

(declare-fun lt!2688790 () Int)

(declare-fun findLongestMatchInner!2186 (Regex!21381 List!74518 Int List!74518 List!74518 Int) tuple2!70472)

(assert (=> b!7913236 (= lt!2688787 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 lt!2688790 input!1480 input!1480 lt!2688786))))

(declare-fun size!43183 (List!74518) Int)

(assert (=> b!7913236 (= lt!2688786 (size!43183 input!1480))))

(assert (=> b!7913236 (= lt!2688790 (size!43183 Nil!74394))))

(declare-fun lt!2688792 () Unit!169491)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2147 (Regex!21381 List!74518) Unit!169491)

(assert (=> b!7913236 (= lt!2688792 (longestMatchIsAcceptedByMatchOrIsEmpty!2147 (regex!8678 rule!156) input!1480))))

(declare-fun b!7913237 () Bool)

(declare-fun matchR!10700 (Regex!21381 List!74518) Bool)

(assert (=> b!7913237 (= e!4671164 (matchR!10700 (regex!8678 rule!156) (_1!38539 lt!2688787)))))

(declare-fun b!7913238 () Bool)

(declare-fun tp!2356971 () Bool)

(declare-fun inv!95475 (String!83391) Bool)

(declare-fun inv!95477 (TokenValueInjection!17296) Bool)

(assert (=> b!7913238 (= e!4671165 (and tp!2356971 (inv!95475 (tag!9542 rule!156)) (inv!95477 (transformation!8678 rule!156)) e!4671168))))

(declare-fun b!7913239 () Bool)

(declare-fun e!4671166 () Bool)

(declare-fun lt!2688784 () tuple2!70470)

(assert (=> b!7913239 (= e!4671166 (= (size!43181 (_1!38538 lt!2688784)) (size!43183 (originalCharacters!8913 (_1!38538 lt!2688784)))))))

(declare-fun b!7913240 () Bool)

(declare-fun res!3140844 () Bool)

(assert (=> b!7913240 (=> (not res!3140844) (not e!4671160))))

(declare-fun ruleValid!3989 (LexerInterface!8270 Rule!17156) Bool)

(assert (=> b!7913240 (= res!3140844 (ruleValid!3989 thiss!15815 rule!156))))

(declare-fun b!7913241 () Bool)

(declare-fun res!3140839 () Bool)

(assert (=> b!7913241 (=> (not res!3140839) (not e!4671166))))

(assert (=> b!7913241 (= res!3140839 (< (size!43183 (_2!38538 lt!2688784)) lt!2688786))))

(declare-fun b!7913242 () Bool)

(declare-fun res!3140841 () Bool)

(assert (=> b!7913242 (=> (not res!3140841) (not e!4671166))))

(assert (=> b!7913242 (= res!3140841 (= (value!289298 (_1!38538 lt!2688784)) (apply!14385 (transformation!8678 (rule!11976 (_1!38538 lt!2688784))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))))))))

(declare-fun b!7913243 () Bool)

(assert (=> b!7913243 (= e!4671160 e!4671163)))

(declare-fun res!3140838 () Bool)

(assert (=> b!7913243 (=> (not res!3140838) (not e!4671163))))

(assert (=> b!7913243 (= res!3140838 (not (isEmpty!42721 (_1!38539 lt!2688791))))))

(declare-fun findLongestMatch!1971 (Regex!21381 List!74518) tuple2!70472)

(assert (=> b!7913243 (= lt!2688791 (findLongestMatch!1971 (regex!8678 rule!156) input!1480))))

(declare-fun b!7913244 () Bool)

(declare-fun res!3140840 () Bool)

(assert (=> b!7913244 (=> (not res!3140840) (not e!4671166))))

(declare-fun lt!2688783 () List!74518)

(declare-fun ++!18224 (List!74518 List!74518) List!74518)

(assert (=> b!7913244 (= res!3140840 (= (++!18224 lt!2688783 (_2!38538 lt!2688784)) input!1480))))

(declare-fun b!7913245 () Bool)

(declare-fun res!3140837 () Bool)

(assert (=> b!7913245 (=> (not res!3140837) (not e!4671166))))

(assert (=> b!7913245 (= res!3140837 (= (rule!11976 (_1!38538 lt!2688784)) rule!156))))

(declare-fun b!7913246 () Bool)

(assert (=> b!7913246 (= e!4671167 e!4671166)))

(declare-fun res!3140845 () Bool)

(assert (=> b!7913246 (=> (not res!3140845) (not e!4671166))))

(assert (=> b!7913246 (= res!3140845 (matchR!10700 (regex!8678 rule!156) lt!2688783))))

(declare-fun list!19333 (BalanceConc!30822) List!74518)

(declare-fun charsOf!5612 (Token!15764) BalanceConc!30822)

(assert (=> b!7913246 (= lt!2688783 (list!19333 (charsOf!5612 (_1!38538 lt!2688784))))))

(declare-fun get!26761 (Option!17952) tuple2!70470)

(assert (=> b!7913246 (= lt!2688784 (get!26761 lt!2688789))))

(assert (= (and start!747248 res!3140843) b!7913240))

(assert (= (and b!7913240 res!3140844) b!7913243))

(assert (= (and b!7913243 res!3140838) b!7913236))

(assert (= (and b!7913236 (not res!3140846)) b!7913237))

(assert (= (and b!7913236 (not res!3140842)) b!7913246))

(assert (= (and b!7913246 res!3140845) b!7913244))

(assert (= (and b!7913244 res!3140840) b!7913241))

(assert (= (and b!7913241 res!3140839) b!7913245))

(assert (= (and b!7913245 res!3140837) b!7913242))

(assert (= (and b!7913242 res!3140841) b!7913239))

(assert (= b!7913238 b!7913234))

(assert (= start!747248 b!7913238))

(assert (= (and start!747248 ((_ is Cons!74394) input!1480)) b!7913235))

(declare-fun m!8286838 () Bool)

(assert (=> b!7913243 m!8286838))

(declare-fun m!8286840 () Bool)

(assert (=> b!7913243 m!8286840))

(declare-fun m!8286842 () Bool)

(assert (=> b!7913246 m!8286842))

(declare-fun m!8286844 () Bool)

(assert (=> b!7913246 m!8286844))

(assert (=> b!7913246 m!8286844))

(declare-fun m!8286846 () Bool)

(assert (=> b!7913246 m!8286846))

(declare-fun m!8286848 () Bool)

(assert (=> b!7913246 m!8286848))

(declare-fun m!8286850 () Bool)

(assert (=> b!7913240 m!8286850))

(declare-fun m!8286852 () Bool)

(assert (=> b!7913236 m!8286852))

(declare-fun m!8286854 () Bool)

(assert (=> b!7913236 m!8286854))

(declare-fun m!8286856 () Bool)

(assert (=> b!7913236 m!8286856))

(declare-fun m!8286858 () Bool)

(assert (=> b!7913236 m!8286858))

(declare-fun m!8286860 () Bool)

(assert (=> b!7913236 m!8286860))

(declare-fun m!8286862 () Bool)

(assert (=> b!7913236 m!8286862))

(declare-fun m!8286864 () Bool)

(assert (=> b!7913236 m!8286864))

(declare-fun m!8286866 () Bool)

(assert (=> b!7913236 m!8286866))

(declare-fun m!8286868 () Bool)

(assert (=> b!7913236 m!8286868))

(declare-fun m!8286870 () Bool)

(assert (=> b!7913236 m!8286870))

(declare-fun m!8286872 () Bool)

(assert (=> b!7913239 m!8286872))

(declare-fun m!8286874 () Bool)

(assert (=> b!7913244 m!8286874))

(declare-fun m!8286876 () Bool)

(assert (=> b!7913238 m!8286876))

(declare-fun m!8286878 () Bool)

(assert (=> b!7913238 m!8286878))

(declare-fun m!8286880 () Bool)

(assert (=> b!7913237 m!8286880))

(declare-fun m!8286882 () Bool)

(assert (=> b!7913242 m!8286882))

(assert (=> b!7913242 m!8286882))

(declare-fun m!8286884 () Bool)

(assert (=> b!7913242 m!8286884))

(declare-fun m!8286886 () Bool)

(assert (=> b!7913241 m!8286886))

(check-sat (not b_next!136047) b_and!353637 (not b!7913241) (not b!7913242) (not b!7913236) b_and!353635 (not b!7913240) tp_is_empty!53137 (not b!7913244) (not b!7913237) (not b!7913239) (not b_next!136045) (not b!7913238) (not b!7913243) (not b!7913246) (not b!7913235))
(check-sat b_and!353635 b_and!353637 (not b_next!136045) (not b_next!136047))
(get-model)

(declare-fun e!4671173 () Bool)

(declare-fun b!7913258 () Bool)

(declare-fun lt!2688795 () List!74518)

(assert (=> b!7913258 (= e!4671173 (or (not (= (_2!38538 lt!2688784) Nil!74394)) (= lt!2688795 lt!2688783)))))

(declare-fun b!7913257 () Bool)

(declare-fun res!3140856 () Bool)

(assert (=> b!7913257 (=> (not res!3140856) (not e!4671173))))

(assert (=> b!7913257 (= res!3140856 (= (size!43183 lt!2688795) (+ (size!43183 lt!2688783) (size!43183 (_2!38538 lt!2688784)))))))

(declare-fun b!7913256 () Bool)

(declare-fun e!4671174 () List!74518)

(assert (=> b!7913256 (= e!4671174 (Cons!74394 (h!80842 lt!2688783) (++!18224 (t!389969 lt!2688783) (_2!38538 lt!2688784))))))

(declare-fun d!2360831 () Bool)

(assert (=> d!2360831 e!4671173))

(declare-fun res!3140855 () Bool)

(assert (=> d!2360831 (=> (not res!3140855) (not e!4671173))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15755 (List!74518) (InoxSet C!43092))

(assert (=> d!2360831 (= res!3140855 (= (content!15755 lt!2688795) ((_ map or) (content!15755 lt!2688783) (content!15755 (_2!38538 lt!2688784)))))))

(assert (=> d!2360831 (= lt!2688795 e!4671174)))

(declare-fun c!1451881 () Bool)

(assert (=> d!2360831 (= c!1451881 ((_ is Nil!74394) lt!2688783))))

(assert (=> d!2360831 (= (++!18224 lt!2688783 (_2!38538 lt!2688784)) lt!2688795)))

(declare-fun b!7913255 () Bool)

(assert (=> b!7913255 (= e!4671174 (_2!38538 lt!2688784))))

(assert (= (and d!2360831 c!1451881) b!7913255))

(assert (= (and d!2360831 (not c!1451881)) b!7913256))

(assert (= (and d!2360831 res!3140855) b!7913257))

(assert (= (and b!7913257 res!3140856) b!7913258))

(declare-fun m!8286888 () Bool)

(assert (=> b!7913257 m!8286888))

(declare-fun m!8286890 () Bool)

(assert (=> b!7913257 m!8286890))

(assert (=> b!7913257 m!8286886))

(declare-fun m!8286892 () Bool)

(assert (=> b!7913256 m!8286892))

(declare-fun m!8286894 () Bool)

(assert (=> d!2360831 m!8286894))

(declare-fun m!8286896 () Bool)

(assert (=> d!2360831 m!8286896))

(declare-fun m!8286898 () Bool)

(assert (=> d!2360831 m!8286898))

(assert (=> b!7913244 d!2360831))

(declare-fun d!2360833 () Bool)

(assert (=> d!2360833 (= (inv!95475 (tag!9542 rule!156)) (= (mod (str.len (value!289272 (tag!9542 rule!156))) 2) 0))))

(assert (=> b!7913238 d!2360833))

(declare-fun d!2360835 () Bool)

(declare-fun res!3140859 () Bool)

(declare-fun e!4671177 () Bool)

(assert (=> d!2360835 (=> (not res!3140859) (not e!4671177))))

(declare-fun semiInverseModEq!3847 (Int Int) Bool)

(assert (=> d!2360835 (= res!3140859 (semiInverseModEq!3847 (toChars!11598 (transformation!8678 rule!156)) (toValue!11739 (transformation!8678 rule!156))))))

(assert (=> d!2360835 (= (inv!95477 (transformation!8678 rule!156)) e!4671177)))

(declare-fun b!7913261 () Bool)

(declare-fun equivClasses!3662 (Int Int) Bool)

(assert (=> b!7913261 (= e!4671177 (equivClasses!3662 (toChars!11598 (transformation!8678 rule!156)) (toValue!11739 (transformation!8678 rule!156))))))

(assert (= (and d!2360835 res!3140859) b!7913261))

(declare-fun m!8286900 () Bool)

(assert (=> d!2360835 m!8286900))

(declare-fun m!8286902 () Bool)

(assert (=> b!7913261 m!8286902))

(assert (=> b!7913238 d!2360835))

(declare-fun d!2360837 () Bool)

(assert (=> d!2360837 (= (isEmpty!42721 (_1!38539 lt!2688791)) ((_ is Nil!74394) (_1!38539 lt!2688791)))))

(assert (=> b!7913243 d!2360837))

(declare-fun d!2360839 () Bool)

(declare-fun lt!2688815 () tuple2!70472)

(assert (=> d!2360839 (= (++!18224 (_1!38539 lt!2688815) (_2!38539 lt!2688815)) input!1480)))

(declare-fun sizeTr!472 (List!74518 Int) Int)

(assert (=> d!2360839 (= lt!2688815 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 0 input!1480 input!1480 (sizeTr!472 input!1480 0)))))

(declare-fun lt!2688819 () Unit!169491)

(declare-fun lt!2688813 () Unit!169491)

(assert (=> d!2360839 (= lt!2688819 lt!2688813)))

(declare-fun lt!2688817 () List!74518)

(declare-fun lt!2688818 () Int)

(assert (=> d!2360839 (= (sizeTr!472 lt!2688817 lt!2688818) (+ (size!43183 lt!2688817) lt!2688818))))

(declare-fun lemmaSizeTrEqualsSize!471 (List!74518 Int) Unit!169491)

(assert (=> d!2360839 (= lt!2688813 (lemmaSizeTrEqualsSize!471 lt!2688817 lt!2688818))))

(assert (=> d!2360839 (= lt!2688818 0)))

(assert (=> d!2360839 (= lt!2688817 Nil!74394)))

(declare-fun lt!2688812 () Unit!169491)

(declare-fun lt!2688816 () Unit!169491)

(assert (=> d!2360839 (= lt!2688812 lt!2688816)))

(declare-fun lt!2688814 () Int)

(assert (=> d!2360839 (= (sizeTr!472 input!1480 lt!2688814) (+ (size!43183 input!1480) lt!2688814))))

(assert (=> d!2360839 (= lt!2688816 (lemmaSizeTrEqualsSize!471 input!1480 lt!2688814))))

(assert (=> d!2360839 (= lt!2688814 0)))

(declare-fun validRegex!11684 (Regex!21381) Bool)

(assert (=> d!2360839 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2360839 (= (findLongestMatch!1971 (regex!8678 rule!156) input!1480) lt!2688815)))

(declare-fun bs!1968348 () Bool)

(assert (= bs!1968348 d!2360839))

(assert (=> bs!1968348 m!8286862))

(declare-fun m!8286904 () Bool)

(assert (=> bs!1968348 m!8286904))

(declare-fun m!8286906 () Bool)

(assert (=> bs!1968348 m!8286906))

(declare-fun m!8286908 () Bool)

(assert (=> bs!1968348 m!8286908))

(declare-fun m!8286910 () Bool)

(assert (=> bs!1968348 m!8286910))

(declare-fun m!8286912 () Bool)

(assert (=> bs!1968348 m!8286912))

(declare-fun m!8286914 () Bool)

(assert (=> bs!1968348 m!8286914))

(declare-fun m!8286916 () Bool)

(assert (=> bs!1968348 m!8286916))

(declare-fun m!8286918 () Bool)

(assert (=> bs!1968348 m!8286918))

(declare-fun m!8286920 () Bool)

(assert (=> bs!1968348 m!8286920))

(assert (=> bs!1968348 m!8286910))

(assert (=> b!7913243 d!2360839))

(declare-fun d!2360841 () Bool)

(declare-fun res!3140865 () Bool)

(declare-fun e!4671180 () Bool)

(assert (=> d!2360841 (=> (not res!3140865) (not e!4671180))))

(assert (=> d!2360841 (= res!3140865 (validRegex!11684 (regex!8678 rule!156)))))

(assert (=> d!2360841 (= (ruleValid!3989 thiss!15815 rule!156) e!4671180)))

(declare-fun b!7913266 () Bool)

(declare-fun res!3140866 () Bool)

(assert (=> b!7913266 (=> (not res!3140866) (not e!4671180))))

(declare-fun nullable!9519 (Regex!21381) Bool)

(assert (=> b!7913266 (= res!3140866 (not (nullable!9519 (regex!8678 rule!156))))))

(declare-fun b!7913267 () Bool)

(assert (=> b!7913267 (= e!4671180 (not (= (tag!9542 rule!156) (String!83392 ""))))))

(assert (= (and d!2360841 res!3140865) b!7913266))

(assert (= (and b!7913266 res!3140866) b!7913267))

(assert (=> d!2360841 m!8286914))

(declare-fun m!8286922 () Bool)

(assert (=> b!7913266 m!8286922))

(assert (=> b!7913240 d!2360841))

(declare-fun d!2360843 () Bool)

(declare-fun lt!2688822 () Int)

(assert (=> d!2360843 (>= lt!2688822 0)))

(declare-fun e!4671183 () Int)

(assert (=> d!2360843 (= lt!2688822 e!4671183)))

(declare-fun c!1451884 () Bool)

(assert (=> d!2360843 (= c!1451884 ((_ is Nil!74394) (originalCharacters!8913 (_1!38538 lt!2688784))))))

(assert (=> d!2360843 (= (size!43183 (originalCharacters!8913 (_1!38538 lt!2688784))) lt!2688822)))

(declare-fun b!7913272 () Bool)

(assert (=> b!7913272 (= e!4671183 0)))

(declare-fun b!7913273 () Bool)

(assert (=> b!7913273 (= e!4671183 (+ 1 (size!43183 (t!389969 (originalCharacters!8913 (_1!38538 lt!2688784))))))))

(assert (= (and d!2360843 c!1451884) b!7913272))

(assert (= (and d!2360843 (not c!1451884)) b!7913273))

(declare-fun m!8286924 () Bool)

(assert (=> b!7913273 m!8286924))

(assert (=> b!7913239 d!2360843))

(declare-fun d!2360845 () Bool)

(declare-fun lt!2688823 () Int)

(assert (=> d!2360845 (>= lt!2688823 0)))

(declare-fun e!4671184 () Int)

(assert (=> d!2360845 (= lt!2688823 e!4671184)))

(declare-fun c!1451885 () Bool)

(assert (=> d!2360845 (= c!1451885 ((_ is Nil!74394) input!1480))))

(assert (=> d!2360845 (= (size!43183 input!1480) lt!2688823)))

(declare-fun b!7913274 () Bool)

(assert (=> b!7913274 (= e!4671184 0)))

(declare-fun b!7913275 () Bool)

(assert (=> b!7913275 (= e!4671184 (+ 1 (size!43183 (t!389969 input!1480))))))

(assert (= (and d!2360845 c!1451885) b!7913274))

(assert (= (and d!2360845 (not c!1451885)) b!7913275))

(declare-fun m!8286926 () Bool)

(assert (=> b!7913275 m!8286926))

(assert (=> b!7913236 d!2360845))

(declare-fun d!2360847 () Bool)

(declare-fun lt!2688824 () Int)

(assert (=> d!2360847 (>= lt!2688824 0)))

(declare-fun e!4671185 () Int)

(assert (=> d!2360847 (= lt!2688824 e!4671185)))

(declare-fun c!1451886 () Bool)

(assert (=> d!2360847 (= c!1451886 ((_ is Nil!74394) Nil!74394))))

(assert (=> d!2360847 (= (size!43183 Nil!74394) lt!2688824)))

(declare-fun b!7913276 () Bool)

(assert (=> b!7913276 (= e!4671185 0)))

(declare-fun b!7913277 () Bool)

(assert (=> b!7913277 (= e!4671185 (+ 1 (size!43183 (t!389969 Nil!74394))))))

(assert (= (and d!2360847 c!1451886) b!7913276))

(assert (= (and d!2360847 (not c!1451886)) b!7913277))

(declare-fun m!8286928 () Bool)

(assert (=> b!7913277 m!8286928))

(assert (=> b!7913236 d!2360847))

(declare-fun d!2360849 () Bool)

(assert (=> d!2360849 (= (isEmpty!42721 (_1!38539 lt!2688787)) ((_ is Nil!74394) (_1!38539 lt!2688787)))))

(assert (=> b!7913236 d!2360849))

(declare-fun d!2360851 () Bool)

(declare-fun dynLambda!30189 (Int BalanceConc!30822) TokenValue!8994)

(assert (=> d!2360851 (= (apply!14385 (transformation!8678 rule!156) lt!2688788) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))))

(declare-fun b_lambda!290175 () Bool)

(assert (=> (not b_lambda!290175) (not d!2360851)))

(declare-fun t!389971 () Bool)

(declare-fun tb!263287 () Bool)

(assert (=> (and b!7913234 (= (toValue!11739 (transformation!8678 rule!156)) (toValue!11739 (transformation!8678 rule!156))) t!389971) tb!263287))

(declare-fun result!360690 () Bool)

(declare-fun inv!21 (TokenValue!8994) Bool)

(assert (=> tb!263287 (= result!360690 (inv!21 (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))

(declare-fun m!8286930 () Bool)

(assert (=> tb!263287 m!8286930))

(assert (=> d!2360851 t!389971))

(declare-fun b_and!353639 () Bool)

(assert (= b_and!353635 (and (=> t!389971 result!360690) b_and!353639)))

(declare-fun m!8286932 () Bool)

(assert (=> d!2360851 m!8286932))

(assert (=> b!7913236 d!2360851))

(declare-fun b!7913332 () Bool)

(declare-fun e!4671219 () tuple2!70472)

(declare-fun call!734091 () tuple2!70472)

(assert (=> b!7913332 (= e!4671219 call!734091)))

(declare-fun b!7913333 () Bool)

(declare-fun c!1451912 () Bool)

(declare-fun call!734089 () Bool)

(assert (=> b!7913333 (= c!1451912 call!734089)))

(declare-fun lt!2688892 () Unit!169491)

(declare-fun lt!2688913 () Unit!169491)

(assert (=> b!7913333 (= lt!2688892 lt!2688913)))

(declare-fun lt!2688895 () C!43092)

(declare-fun lt!2688901 () List!74518)

(assert (=> b!7913333 (= (++!18224 (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394)) lt!2688901) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3488 (List!74518 C!43092 List!74518 List!74518) Unit!169491)

(assert (=> b!7913333 (= lt!2688913 (lemmaMoveElementToOtherListKeepsConcatEq!3488 Nil!74394 lt!2688895 lt!2688901 input!1480))))

(declare-fun tail!15723 (List!74518) List!74518)

(assert (=> b!7913333 (= lt!2688901 (tail!15723 input!1480))))

(declare-fun head!16180 (List!74518) C!43092)

(assert (=> b!7913333 (= lt!2688895 (head!16180 input!1480))))

(declare-fun lt!2688903 () Unit!169491)

(declare-fun lt!2688905 () Unit!169491)

(assert (=> b!7913333 (= lt!2688903 lt!2688905)))

(declare-fun isPrefix!6488 (List!74518 List!74518) Bool)

(declare-fun getSuffix!3701 (List!74518 List!74518) List!74518)

(assert (=> b!7913333 (isPrefix!6488 (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1266 (List!74518 List!74518) Unit!169491)

(assert (=> b!7913333 (= lt!2688905 (lemmaAddHeadSuffixToPrefixStillPrefix!1266 Nil!74394 input!1480))))

(declare-fun lt!2688904 () Unit!169491)

(declare-fun lt!2688900 () Unit!169491)

(assert (=> b!7913333 (= lt!2688904 lt!2688900)))

(assert (=> b!7913333 (= lt!2688900 (lemmaAddHeadSuffixToPrefixStillPrefix!1266 Nil!74394 input!1480))))

(declare-fun lt!2688906 () List!74518)

(assert (=> b!7913333 (= lt!2688906 (++!18224 Nil!74394 (Cons!74394 (head!16180 input!1480) Nil!74394)))))

(declare-fun lt!2688911 () Unit!169491)

(declare-fun e!4671217 () Unit!169491)

(assert (=> b!7913333 (= lt!2688911 e!4671217)))

(declare-fun c!1451908 () Bool)

(assert (=> b!7913333 (= c!1451908 (= (size!43183 Nil!74394) (size!43183 input!1480)))))

(declare-fun lt!2688893 () Unit!169491)

(declare-fun lt!2688896 () Unit!169491)

(assert (=> b!7913333 (= lt!2688893 lt!2688896)))

(assert (=> b!7913333 (<= (size!43183 Nil!74394) (size!43183 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1046 (List!74518 List!74518) Unit!169491)

(assert (=> b!7913333 (= lt!2688896 (lemmaIsPrefixThenSmallerEqSize!1046 Nil!74394 input!1480))))

(declare-fun e!4671223 () tuple2!70472)

(assert (=> b!7913333 (= e!4671223 e!4671219)))

(declare-fun d!2360853 () Bool)

(declare-fun e!4671221 () Bool)

(assert (=> d!2360853 e!4671221))

(declare-fun res!3140880 () Bool)

(assert (=> d!2360853 (=> (not res!3140880) (not e!4671221))))

(declare-fun lt!2688898 () tuple2!70472)

(assert (=> d!2360853 (= res!3140880 (= (++!18224 (_1!38539 lt!2688898) (_2!38539 lt!2688898)) input!1480))))

(declare-fun e!4671218 () tuple2!70472)

(assert (=> d!2360853 (= lt!2688898 e!4671218)))

(declare-fun c!1451913 () Bool)

(declare-fun lostCause!1932 (Regex!21381) Bool)

(assert (=> d!2360853 (= c!1451913 (lostCause!1932 (regex!8678 rule!156)))))

(declare-fun lt!2688899 () Unit!169491)

(declare-fun Unit!169493 () Unit!169491)

(assert (=> d!2360853 (= lt!2688899 Unit!169493)))

(assert (=> d!2360853 (= (getSuffix!3701 input!1480 Nil!74394) input!1480)))

(declare-fun lt!2688910 () Unit!169491)

(declare-fun lt!2688917 () Unit!169491)

(assert (=> d!2360853 (= lt!2688910 lt!2688917)))

(declare-fun lt!2688897 () List!74518)

(assert (=> d!2360853 (= input!1480 lt!2688897)))

(declare-fun lemmaSamePrefixThenSameSuffix!2948 (List!74518 List!74518 List!74518 List!74518 List!74518) Unit!169491)

(assert (=> d!2360853 (= lt!2688917 (lemmaSamePrefixThenSameSuffix!2948 Nil!74394 input!1480 Nil!74394 lt!2688897 input!1480))))

(assert (=> d!2360853 (= lt!2688897 (getSuffix!3701 input!1480 Nil!74394))))

(declare-fun lt!2688916 () Unit!169491)

(declare-fun lt!2688891 () Unit!169491)

(assert (=> d!2360853 (= lt!2688916 lt!2688891)))

(assert (=> d!2360853 (isPrefix!6488 Nil!74394 (++!18224 Nil!74394 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3810 (List!74518 List!74518) Unit!169491)

(assert (=> d!2360853 (= lt!2688891 (lemmaConcatTwoListThenFirstIsPrefix!3810 Nil!74394 input!1480))))

(assert (=> d!2360853 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2360853 (= (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 lt!2688790 input!1480 input!1480 lt!2688786) lt!2688898)))

(declare-fun bm!734080 () Bool)

(declare-fun call!734086 () Regex!21381)

(declare-fun call!734085 () C!43092)

(declare-fun derivativeStep!6459 (Regex!21381 C!43092) Regex!21381)

(assert (=> bm!734080 (= call!734086 (derivativeStep!6459 (regex!8678 rule!156) call!734085))))

(declare-fun bm!734081 () Bool)

(assert (=> bm!734081 (= call!734085 (head!16180 input!1480))))

(declare-fun bm!734082 () Bool)

(declare-fun call!734090 () Unit!169491)

(declare-fun lemmaIsPrefixRefl!3999 (List!74518 List!74518) Unit!169491)

(assert (=> bm!734082 (= call!734090 (lemmaIsPrefixRefl!3999 input!1480 input!1480))))

(declare-fun b!7913334 () Bool)

(declare-fun e!4671224 () tuple2!70472)

(assert (=> b!7913334 (= e!4671224 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun b!7913335 () Bool)

(assert (=> b!7913335 (= e!4671218 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun bm!734083 () Bool)

(declare-fun call!734088 () List!74518)

(assert (=> bm!734083 (= call!734091 (findLongestMatchInner!2186 call!734086 lt!2688906 (+ lt!2688790 1) call!734088 input!1480 lt!2688786))))

(declare-fun b!7913336 () Bool)

(declare-fun Unit!169494 () Unit!169491)

(assert (=> b!7913336 (= e!4671217 Unit!169494)))

(declare-fun lt!2688894 () Unit!169491)

(assert (=> b!7913336 (= lt!2688894 call!734090)))

(declare-fun call!734087 () Bool)

(assert (=> b!7913336 call!734087))

(declare-fun lt!2688890 () Unit!169491)

(assert (=> b!7913336 (= lt!2688890 lt!2688894)))

(declare-fun lt!2688912 () Unit!169491)

(declare-fun call!734092 () Unit!169491)

(assert (=> b!7913336 (= lt!2688912 call!734092)))

(assert (=> b!7913336 (= input!1480 Nil!74394)))

(declare-fun lt!2688908 () Unit!169491)

(assert (=> b!7913336 (= lt!2688908 lt!2688912)))

(assert (=> b!7913336 false))

(declare-fun b!7913337 () Bool)

(declare-fun Unit!169495 () Unit!169491)

(assert (=> b!7913337 (= e!4671217 Unit!169495)))

(declare-fun b!7913338 () Bool)

(declare-fun c!1451910 () Bool)

(assert (=> b!7913338 (= c!1451910 call!734089)))

(declare-fun lt!2688909 () Unit!169491)

(declare-fun lt!2688907 () Unit!169491)

(assert (=> b!7913338 (= lt!2688909 lt!2688907)))

(assert (=> b!7913338 (= input!1480 Nil!74394)))

(assert (=> b!7913338 (= lt!2688907 call!734092)))

(declare-fun lt!2688914 () Unit!169491)

(declare-fun lt!2688915 () Unit!169491)

(assert (=> b!7913338 (= lt!2688914 lt!2688915)))

(assert (=> b!7913338 call!734087))

(assert (=> b!7913338 (= lt!2688915 call!734090)))

(declare-fun e!4671222 () tuple2!70472)

(assert (=> b!7913338 (= e!4671223 e!4671222)))

(declare-fun b!7913339 () Bool)

(declare-fun lt!2688902 () tuple2!70472)

(assert (=> b!7913339 (= e!4671224 lt!2688902)))

(declare-fun b!7913340 () Bool)

(declare-fun e!4671220 () Bool)

(assert (=> b!7913340 (= e!4671221 e!4671220)))

(declare-fun res!3140879 () Bool)

(assert (=> b!7913340 (=> res!3140879 e!4671220)))

(assert (=> b!7913340 (= res!3140879 (isEmpty!42721 (_1!38539 lt!2688898)))))

(declare-fun bm!734084 () Bool)

(assert (=> bm!734084 (= call!734087 (isPrefix!6488 input!1480 input!1480))))

(declare-fun b!7913341 () Bool)

(assert (=> b!7913341 (= e!4671220 (>= (size!43183 (_1!38539 lt!2688898)) (size!43183 Nil!74394)))))

(declare-fun b!7913342 () Bool)

(assert (=> b!7913342 (= e!4671218 e!4671223)))

(declare-fun c!1451911 () Bool)

(assert (=> b!7913342 (= c!1451911 (= lt!2688790 lt!2688786))))

(declare-fun b!7913343 () Bool)

(assert (=> b!7913343 (= e!4671222 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun b!7913344 () Bool)

(assert (=> b!7913344 (= e!4671222 (tuple2!70473 Nil!74394 Nil!74394))))

(declare-fun bm!734085 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1581 (List!74518 List!74518 List!74518) Unit!169491)

(assert (=> bm!734085 (= call!734092 (lemmaIsPrefixSameLengthThenSameList!1581 input!1480 Nil!74394 input!1480))))

(declare-fun bm!734086 () Bool)

(assert (=> bm!734086 (= call!734089 (nullable!9519 (regex!8678 rule!156)))))

(declare-fun bm!734087 () Bool)

(assert (=> bm!734087 (= call!734088 (tail!15723 input!1480))))

(declare-fun b!7913345 () Bool)

(assert (=> b!7913345 (= e!4671219 e!4671224)))

(assert (=> b!7913345 (= lt!2688902 call!734091)))

(declare-fun c!1451909 () Bool)

(assert (=> b!7913345 (= c!1451909 (isEmpty!42721 (_1!38539 lt!2688902)))))

(assert (= (and d!2360853 c!1451913) b!7913335))

(assert (= (and d!2360853 (not c!1451913)) b!7913342))

(assert (= (and b!7913342 c!1451911) b!7913338))

(assert (= (and b!7913342 (not c!1451911)) b!7913333))

(assert (= (and b!7913338 c!1451910) b!7913344))

(assert (= (and b!7913338 (not c!1451910)) b!7913343))

(assert (= (and b!7913333 c!1451908) b!7913336))

(assert (= (and b!7913333 (not c!1451908)) b!7913337))

(assert (= (and b!7913333 c!1451912) b!7913345))

(assert (= (and b!7913333 (not c!1451912)) b!7913332))

(assert (= (and b!7913345 c!1451909) b!7913334))

(assert (= (and b!7913345 (not c!1451909)) b!7913339))

(assert (= (or b!7913345 b!7913332) bm!734081))

(assert (= (or b!7913345 b!7913332) bm!734087))

(assert (= (or b!7913345 b!7913332) bm!734080))

(assert (= (or b!7913345 b!7913332) bm!734083))

(assert (= (or b!7913338 b!7913333) bm!734086))

(assert (= (or b!7913338 b!7913336) bm!734084))

(assert (= (or b!7913338 b!7913336) bm!734082))

(assert (= (or b!7913338 b!7913336) bm!734085))

(assert (= (and d!2360853 res!3140880) b!7913340))

(assert (= (and b!7913340 (not res!3140879)) b!7913341))

(declare-fun m!8286954 () Bool)

(assert (=> bm!734085 m!8286954))

(declare-fun m!8286956 () Bool)

(assert (=> d!2360853 m!8286956))

(declare-fun m!8286958 () Bool)

(assert (=> d!2360853 m!8286958))

(declare-fun m!8286960 () Bool)

(assert (=> d!2360853 m!8286960))

(assert (=> d!2360853 m!8286958))

(declare-fun m!8286962 () Bool)

(assert (=> d!2360853 m!8286962))

(assert (=> d!2360853 m!8286914))

(declare-fun m!8286964 () Bool)

(assert (=> d!2360853 m!8286964))

(declare-fun m!8286966 () Bool)

(assert (=> d!2360853 m!8286966))

(declare-fun m!8286968 () Bool)

(assert (=> d!2360853 m!8286968))

(declare-fun m!8286970 () Bool)

(assert (=> b!7913333 m!8286970))

(assert (=> b!7913333 m!8286956))

(declare-fun m!8286972 () Bool)

(assert (=> b!7913333 m!8286972))

(assert (=> b!7913333 m!8286852))

(declare-fun m!8286974 () Bool)

(assert (=> b!7913333 m!8286974))

(declare-fun m!8286976 () Bool)

(assert (=> b!7913333 m!8286976))

(declare-fun m!8286978 () Bool)

(assert (=> b!7913333 m!8286978))

(declare-fun m!8286980 () Bool)

(assert (=> b!7913333 m!8286980))

(assert (=> b!7913333 m!8286862))

(assert (=> b!7913333 m!8286970))

(declare-fun m!8286982 () Bool)

(assert (=> b!7913333 m!8286982))

(declare-fun m!8286984 () Bool)

(assert (=> b!7913333 m!8286984))

(declare-fun m!8286986 () Bool)

(assert (=> b!7913333 m!8286986))

(assert (=> b!7913333 m!8286956))

(declare-fun m!8286988 () Bool)

(assert (=> b!7913333 m!8286988))

(assert (=> b!7913333 m!8286972))

(declare-fun m!8286990 () Bool)

(assert (=> b!7913333 m!8286990))

(declare-fun m!8286992 () Bool)

(assert (=> b!7913340 m!8286992))

(declare-fun m!8286994 () Bool)

(assert (=> bm!734080 m!8286994))

(assert (=> bm!734087 m!8286980))

(declare-fun m!8286996 () Bool)

(assert (=> bm!734083 m!8286996))

(declare-fun m!8286998 () Bool)

(assert (=> b!7913341 m!8286998))

(assert (=> b!7913341 m!8286852))

(declare-fun m!8287000 () Bool)

(assert (=> bm!734084 m!8287000))

(declare-fun m!8287002 () Bool)

(assert (=> b!7913345 m!8287002))

(assert (=> bm!734086 m!8286922))

(assert (=> bm!734081 m!8286974))

(declare-fun m!8287004 () Bool)

(assert (=> bm!734082 m!8287004))

(assert (=> b!7913236 d!2360853))

(declare-fun d!2360867 () Bool)

(declare-fun e!4671227 () Bool)

(assert (=> d!2360867 e!4671227))

(declare-fun res!3140883 () Bool)

(assert (=> d!2360867 (=> res!3140883 e!4671227)))

(assert (=> d!2360867 (= res!3140883 (isEmpty!42721 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))))))

(declare-fun lt!2688920 () Unit!169491)

(declare-fun choose!59768 (Regex!21381 List!74518) Unit!169491)

(assert (=> d!2360867 (= lt!2688920 (choose!59768 (regex!8678 rule!156) input!1480))))

(assert (=> d!2360867 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2360867 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2147 (regex!8678 rule!156) input!1480) lt!2688920)))

(declare-fun b!7913348 () Bool)

(assert (=> b!7913348 (= e!4671227 (matchR!10700 (regex!8678 rule!156) (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))))))

(assert (= (and d!2360867 (not res!3140883)) b!7913348))

(assert (=> d!2360867 m!8286852))

(assert (=> d!2360867 m!8286852))

(assert (=> d!2360867 m!8286862))

(declare-fun m!8287006 () Bool)

(assert (=> d!2360867 m!8287006))

(assert (=> d!2360867 m!8286914))

(assert (=> d!2360867 m!8286862))

(declare-fun m!8287008 () Bool)

(assert (=> d!2360867 m!8287008))

(declare-fun m!8287010 () Bool)

(assert (=> d!2360867 m!8287010))

(assert (=> b!7913348 m!8286852))

(assert (=> b!7913348 m!8286862))

(assert (=> b!7913348 m!8286852))

(assert (=> b!7913348 m!8286862))

(assert (=> b!7913348 m!8287006))

(declare-fun m!8287012 () Bool)

(assert (=> b!7913348 m!8287012))

(assert (=> b!7913236 d!2360867))

(declare-fun d!2360869 () Bool)

(declare-fun fromListB!2804 (List!74518) BalanceConc!30822)

(assert (=> d!2360869 (= (seqFromList!6203 (_1!38539 lt!2688791)) (fromListB!2804 (_1!38539 lt!2688791)))))

(declare-fun bs!1968349 () Bool)

(assert (= bs!1968349 d!2360869))

(declare-fun m!8287014 () Bool)

(assert (=> bs!1968349 m!8287014))

(assert (=> b!7913236 d!2360869))

(declare-fun d!2360871 () Bool)

(declare-fun lt!2688923 () Int)

(assert (=> d!2360871 (= lt!2688923 (size!43183 (list!19333 lt!2688788)))))

(declare-fun size!43184 (Conc!15852) Int)

(assert (=> d!2360871 (= lt!2688923 (size!43184 (c!1451878 lt!2688788)))))

(assert (=> d!2360871 (= (size!43182 lt!2688788) lt!2688923)))

(declare-fun bs!1968350 () Bool)

(assert (= bs!1968350 d!2360871))

(declare-fun m!8287016 () Bool)

(assert (=> bs!1968350 m!8287016))

(assert (=> bs!1968350 m!8287016))

(declare-fun m!8287018 () Bool)

(assert (=> bs!1968350 m!8287018))

(declare-fun m!8287020 () Bool)

(assert (=> bs!1968350 m!8287020))

(assert (=> b!7913236 d!2360871))

(declare-fun b!7913395 () Bool)

(declare-fun e!4671254 () Bool)

(assert (=> b!7913395 (= e!4671254 true)))

(declare-fun d!2360873 () Bool)

(assert (=> d!2360873 e!4671254))

(assert (= d!2360873 b!7913395))

(declare-fun lambda!472602 () Int)

(declare-fun order!29957 () Int)

(declare-fun order!29959 () Int)

(declare-fun dynLambda!30190 (Int Int) Int)

(declare-fun dynLambda!30191 (Int Int) Int)

(assert (=> b!7913395 (< (dynLambda!30190 order!29957 (toValue!11739 (transformation!8678 rule!156))) (dynLambda!30191 order!29959 lambda!472602))))

(declare-fun order!29961 () Int)

(declare-fun dynLambda!30192 (Int Int) Int)

(assert (=> b!7913395 (< (dynLambda!30192 order!29961 (toChars!11598 (transformation!8678 rule!156))) (dynLambda!30191 order!29959 lambda!472602))))

(declare-fun dynLambda!30193 (Int TokenValue!8994) BalanceConc!30822)

(assert (=> d!2360873 (= (list!19333 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))) (list!19333 lt!2688788))))

(declare-fun lt!2689015 () Unit!169491)

(declare-fun ForallOf!1318 (Int BalanceConc!30822) Unit!169491)

(assert (=> d!2360873 (= lt!2689015 (ForallOf!1318 lambda!472602 lt!2688788))))

(assert (=> d!2360873 (= (lemmaSemiInverse!2694 (transformation!8678 rule!156) lt!2688788) lt!2689015)))

(declare-fun b_lambda!290177 () Bool)

(assert (=> (not b_lambda!290177) (not d!2360873)))

(declare-fun t!389973 () Bool)

(declare-fun tb!263289 () Bool)

(assert (=> (and b!7913234 (= (toChars!11598 (transformation!8678 rule!156)) (toChars!11598 (transformation!8678 rule!156))) t!389973) tb!263289))

(declare-fun b!7913400 () Bool)

(declare-fun e!4671257 () Bool)

(declare-fun tp!2356975 () Bool)

(declare-fun inv!95478 (Conc!15852) Bool)

(assert (=> b!7913400 (= e!4671257 (and (inv!95478 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))) tp!2356975))))

(declare-fun result!360694 () Bool)

(declare-fun inv!95479 (BalanceConc!30822) Bool)

(assert (=> tb!263289 (= result!360694 (and (inv!95479 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))) e!4671257))))

(assert (= tb!263289 b!7913400))

(declare-fun m!8287086 () Bool)

(assert (=> b!7913400 m!8287086))

(declare-fun m!8287088 () Bool)

(assert (=> tb!263289 m!8287088))

(assert (=> d!2360873 t!389973))

(declare-fun b_and!353641 () Bool)

(assert (= b_and!353637 (and (=> t!389973 result!360694) b_and!353641)))

(declare-fun b_lambda!290179 () Bool)

(assert (=> (not b_lambda!290179) (not d!2360873)))

(assert (=> d!2360873 t!389971))

(declare-fun b_and!353643 () Bool)

(assert (= b_and!353639 (and (=> t!389971 result!360690) b_and!353643)))

(declare-fun m!8287090 () Bool)

(assert (=> d!2360873 m!8287090))

(declare-fun m!8287092 () Bool)

(assert (=> d!2360873 m!8287092))

(assert (=> d!2360873 m!8287016))

(assert (=> d!2360873 m!8286932))

(assert (=> d!2360873 m!8287090))

(declare-fun m!8287094 () Bool)

(assert (=> d!2360873 m!8287094))

(assert (=> d!2360873 m!8286932))

(assert (=> b!7913236 d!2360873))

(declare-fun d!2360883 () Bool)

(assert (=> d!2360883 (= (isEmpty!42720 lt!2688789) (not ((_ is Some!17951) lt!2688789)))))

(assert (=> b!7913236 d!2360883))

(declare-fun d!2360885 () Bool)

(declare-fun lt!2689016 () Int)

(assert (=> d!2360885 (>= lt!2689016 0)))

(declare-fun e!4671258 () Int)

(assert (=> d!2360885 (= lt!2689016 e!4671258)))

(declare-fun c!1451934 () Bool)

(assert (=> d!2360885 (= c!1451934 ((_ is Nil!74394) (_2!38538 lt!2688784)))))

(assert (=> d!2360885 (= (size!43183 (_2!38538 lt!2688784)) lt!2689016)))

(declare-fun b!7913401 () Bool)

(assert (=> b!7913401 (= e!4671258 0)))

(declare-fun b!7913402 () Bool)

(assert (=> b!7913402 (= e!4671258 (+ 1 (size!43183 (t!389969 (_2!38538 lt!2688784)))))))

(assert (= (and d!2360885 c!1451934) b!7913401))

(assert (= (and d!2360885 (not c!1451934)) b!7913402))

(declare-fun m!8287096 () Bool)

(assert (=> b!7913402 m!8287096))

(assert (=> b!7913241 d!2360885))

(declare-fun b!7913431 () Bool)

(declare-fun e!4671273 () Bool)

(assert (=> b!7913431 (= e!4671273 (not (= (head!16180 lt!2688783) (c!1451877 (regex!8678 rule!156)))))))

(declare-fun b!7913432 () Bool)

(declare-fun e!4671278 () Bool)

(assert (=> b!7913432 (= e!4671278 (matchR!10700 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783)) (tail!15723 lt!2688783)))))

(declare-fun b!7913433 () Bool)

(declare-fun res!3140909 () Bool)

(assert (=> b!7913433 (=> res!3140909 e!4671273)))

(assert (=> b!7913433 (= res!3140909 (not (isEmpty!42721 (tail!15723 lt!2688783))))))

(declare-fun b!7913434 () Bool)

(declare-fun e!4671277 () Bool)

(assert (=> b!7913434 (= e!4671277 (= (head!16180 lt!2688783) (c!1451877 (regex!8678 rule!156))))))

(declare-fun b!7913435 () Bool)

(declare-fun e!4671274 () Bool)

(declare-fun e!4671275 () Bool)

(assert (=> b!7913435 (= e!4671274 e!4671275)))

(declare-fun res!3140912 () Bool)

(assert (=> b!7913435 (=> (not res!3140912) (not e!4671275))))

(declare-fun lt!2689019 () Bool)

(assert (=> b!7913435 (= res!3140912 (not lt!2689019))))

(declare-fun b!7913436 () Bool)

(declare-fun res!3140906 () Bool)

(assert (=> b!7913436 (=> res!3140906 e!4671274)))

(assert (=> b!7913436 (= res!3140906 (not ((_ is ElementMatch!21381) (regex!8678 rule!156))))))

(declare-fun e!4671279 () Bool)

(assert (=> b!7913436 (= e!4671279 e!4671274)))

(declare-fun b!7913437 () Bool)

(declare-fun res!3140911 () Bool)

(assert (=> b!7913437 (=> res!3140911 e!4671274)))

(assert (=> b!7913437 (= res!3140911 e!4671277)))

(declare-fun res!3140910 () Bool)

(assert (=> b!7913437 (=> (not res!3140910) (not e!4671277))))

(assert (=> b!7913437 (= res!3140910 lt!2689019)))

(declare-fun b!7913439 () Bool)

(declare-fun res!3140913 () Bool)

(assert (=> b!7913439 (=> (not res!3140913) (not e!4671277))))

(assert (=> b!7913439 (= res!3140913 (isEmpty!42721 (tail!15723 lt!2688783)))))

(declare-fun b!7913440 () Bool)

(assert (=> b!7913440 (= e!4671278 (nullable!9519 (regex!8678 rule!156)))))

(declare-fun b!7913441 () Bool)

(declare-fun e!4671276 () Bool)

(declare-fun call!734119 () Bool)

(assert (=> b!7913441 (= e!4671276 (= lt!2689019 call!734119))))

(declare-fun b!7913442 () Bool)

(assert (=> b!7913442 (= e!4671275 e!4671273)))

(declare-fun res!3140908 () Bool)

(assert (=> b!7913442 (=> res!3140908 e!4671273)))

(assert (=> b!7913442 (= res!3140908 call!734119)))

(declare-fun b!7913443 () Bool)

(assert (=> b!7913443 (= e!4671279 (not lt!2689019))))

(declare-fun bm!734114 () Bool)

(assert (=> bm!734114 (= call!734119 (isEmpty!42721 lt!2688783))))

(declare-fun b!7913444 () Bool)

(declare-fun res!3140907 () Bool)

(assert (=> b!7913444 (=> (not res!3140907) (not e!4671277))))

(assert (=> b!7913444 (= res!3140907 (not call!734119))))

(declare-fun b!7913438 () Bool)

(assert (=> b!7913438 (= e!4671276 e!4671279)))

(declare-fun c!1451943 () Bool)

(assert (=> b!7913438 (= c!1451943 ((_ is EmptyLang!21381) (regex!8678 rule!156)))))

(declare-fun d!2360887 () Bool)

(assert (=> d!2360887 e!4671276))

(declare-fun c!1451941 () Bool)

(assert (=> d!2360887 (= c!1451941 ((_ is EmptyExpr!21381) (regex!8678 rule!156)))))

(assert (=> d!2360887 (= lt!2689019 e!4671278)))

(declare-fun c!1451942 () Bool)

(assert (=> d!2360887 (= c!1451942 (isEmpty!42721 lt!2688783))))

(assert (=> d!2360887 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2360887 (= (matchR!10700 (regex!8678 rule!156) lt!2688783) lt!2689019)))

(assert (= (and d!2360887 c!1451942) b!7913440))

(assert (= (and d!2360887 (not c!1451942)) b!7913432))

(assert (= (and d!2360887 c!1451941) b!7913441))

(assert (= (and d!2360887 (not c!1451941)) b!7913438))

(assert (= (and b!7913438 c!1451943) b!7913443))

(assert (= (and b!7913438 (not c!1451943)) b!7913436))

(assert (= (and b!7913436 (not res!3140906)) b!7913437))

(assert (= (and b!7913437 res!3140910) b!7913444))

(assert (= (and b!7913444 res!3140907) b!7913439))

(assert (= (and b!7913439 res!3140913) b!7913434))

(assert (= (and b!7913437 (not res!3140911)) b!7913435))

(assert (= (and b!7913435 res!3140912) b!7913442))

(assert (= (and b!7913442 (not res!3140908)) b!7913433))

(assert (= (and b!7913433 (not res!3140909)) b!7913431))

(assert (= (or b!7913441 b!7913444 b!7913442) bm!734114))

(declare-fun m!8287098 () Bool)

(assert (=> d!2360887 m!8287098))

(assert (=> d!2360887 m!8286914))

(declare-fun m!8287100 () Bool)

(assert (=> b!7913432 m!8287100))

(assert (=> b!7913432 m!8287100))

(declare-fun m!8287102 () Bool)

(assert (=> b!7913432 m!8287102))

(declare-fun m!8287104 () Bool)

(assert (=> b!7913432 m!8287104))

(assert (=> b!7913432 m!8287102))

(assert (=> b!7913432 m!8287104))

(declare-fun m!8287106 () Bool)

(assert (=> b!7913432 m!8287106))

(assert (=> b!7913434 m!8287100))

(assert (=> b!7913439 m!8287104))

(assert (=> b!7913439 m!8287104))

(declare-fun m!8287108 () Bool)

(assert (=> b!7913439 m!8287108))

(assert (=> bm!734114 m!8287098))

(assert (=> b!7913433 m!8287104))

(assert (=> b!7913433 m!8287104))

(assert (=> b!7913433 m!8287108))

(assert (=> b!7913431 m!8287100))

(assert (=> b!7913440 m!8286922))

(assert (=> b!7913246 d!2360887))

(declare-fun d!2360889 () Bool)

(declare-fun list!19334 (Conc!15852) List!74518)

(assert (=> d!2360889 (= (list!19333 (charsOf!5612 (_1!38538 lt!2688784))) (list!19334 (c!1451878 (charsOf!5612 (_1!38538 lt!2688784)))))))

(declare-fun bs!1968353 () Bool)

(assert (= bs!1968353 d!2360889))

(declare-fun m!8287110 () Bool)

(assert (=> bs!1968353 m!8287110))

(assert (=> b!7913246 d!2360889))

(declare-fun d!2360891 () Bool)

(declare-fun lt!2689022 () BalanceConc!30822)

(assert (=> d!2360891 (= (list!19333 lt!2689022) (originalCharacters!8913 (_1!38538 lt!2688784)))))

(assert (=> d!2360891 (= lt!2689022 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784))))))

(assert (=> d!2360891 (= (charsOf!5612 (_1!38538 lt!2688784)) lt!2689022)))

(declare-fun b_lambda!290181 () Bool)

(assert (=> (not b_lambda!290181) (not d!2360891)))

(declare-fun t!389975 () Bool)

(declare-fun tb!263291 () Bool)

(assert (=> (and b!7913234 (= (toChars!11598 (transformation!8678 rule!156)) (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784))))) t!389975) tb!263291))

(declare-fun b!7913445 () Bool)

(declare-fun e!4671280 () Bool)

(declare-fun tp!2356976 () Bool)

(assert (=> b!7913445 (= e!4671280 (and (inv!95478 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784))))) tp!2356976))))

(declare-fun result!360698 () Bool)

(assert (=> tb!263291 (= result!360698 (and (inv!95479 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784)))) e!4671280))))

(assert (= tb!263291 b!7913445))

(declare-fun m!8287112 () Bool)

(assert (=> b!7913445 m!8287112))

(declare-fun m!8287114 () Bool)

(assert (=> tb!263291 m!8287114))

(assert (=> d!2360891 t!389975))

(declare-fun b_and!353645 () Bool)

(assert (= b_and!353641 (and (=> t!389975 result!360698) b_and!353645)))

(declare-fun m!8287116 () Bool)

(assert (=> d!2360891 m!8287116))

(declare-fun m!8287118 () Bool)

(assert (=> d!2360891 m!8287118))

(assert (=> b!7913246 d!2360891))

(declare-fun d!2360893 () Bool)

(assert (=> d!2360893 (= (get!26761 lt!2688789) (v!55108 lt!2688789))))

(assert (=> b!7913246 d!2360893))

(declare-fun b!7913446 () Bool)

(declare-fun e!4671281 () Bool)

(assert (=> b!7913446 (= e!4671281 (not (= (head!16180 (_1!38539 lt!2688787)) (c!1451877 (regex!8678 rule!156)))))))

(declare-fun b!7913447 () Bool)

(declare-fun e!4671286 () Bool)

(assert (=> b!7913447 (= e!4671286 (matchR!10700 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787))) (tail!15723 (_1!38539 lt!2688787))))))

(declare-fun b!7913448 () Bool)

(declare-fun res!3140917 () Bool)

(assert (=> b!7913448 (=> res!3140917 e!4671281)))

(assert (=> b!7913448 (= res!3140917 (not (isEmpty!42721 (tail!15723 (_1!38539 lt!2688787)))))))

(declare-fun b!7913449 () Bool)

(declare-fun e!4671285 () Bool)

(assert (=> b!7913449 (= e!4671285 (= (head!16180 (_1!38539 lt!2688787)) (c!1451877 (regex!8678 rule!156))))))

(declare-fun b!7913450 () Bool)

(declare-fun e!4671282 () Bool)

(declare-fun e!4671283 () Bool)

(assert (=> b!7913450 (= e!4671282 e!4671283)))

(declare-fun res!3140920 () Bool)

(assert (=> b!7913450 (=> (not res!3140920) (not e!4671283))))

(declare-fun lt!2689023 () Bool)

(assert (=> b!7913450 (= res!3140920 (not lt!2689023))))

(declare-fun b!7913451 () Bool)

(declare-fun res!3140914 () Bool)

(assert (=> b!7913451 (=> res!3140914 e!4671282)))

(assert (=> b!7913451 (= res!3140914 (not ((_ is ElementMatch!21381) (regex!8678 rule!156))))))

(declare-fun e!4671287 () Bool)

(assert (=> b!7913451 (= e!4671287 e!4671282)))

(declare-fun b!7913452 () Bool)

(declare-fun res!3140919 () Bool)

(assert (=> b!7913452 (=> res!3140919 e!4671282)))

(assert (=> b!7913452 (= res!3140919 e!4671285)))

(declare-fun res!3140918 () Bool)

(assert (=> b!7913452 (=> (not res!3140918) (not e!4671285))))

(assert (=> b!7913452 (= res!3140918 lt!2689023)))

(declare-fun b!7913454 () Bool)

(declare-fun res!3140921 () Bool)

(assert (=> b!7913454 (=> (not res!3140921) (not e!4671285))))

(assert (=> b!7913454 (= res!3140921 (isEmpty!42721 (tail!15723 (_1!38539 lt!2688787))))))

(declare-fun b!7913455 () Bool)

(assert (=> b!7913455 (= e!4671286 (nullable!9519 (regex!8678 rule!156)))))

(declare-fun b!7913456 () Bool)

(declare-fun e!4671284 () Bool)

(declare-fun call!734120 () Bool)

(assert (=> b!7913456 (= e!4671284 (= lt!2689023 call!734120))))

(declare-fun b!7913457 () Bool)

(assert (=> b!7913457 (= e!4671283 e!4671281)))

(declare-fun res!3140916 () Bool)

(assert (=> b!7913457 (=> res!3140916 e!4671281)))

(assert (=> b!7913457 (= res!3140916 call!734120)))

(declare-fun b!7913458 () Bool)

(assert (=> b!7913458 (= e!4671287 (not lt!2689023))))

(declare-fun bm!734115 () Bool)

(assert (=> bm!734115 (= call!734120 (isEmpty!42721 (_1!38539 lt!2688787)))))

(declare-fun b!7913459 () Bool)

(declare-fun res!3140915 () Bool)

(assert (=> b!7913459 (=> (not res!3140915) (not e!4671285))))

(assert (=> b!7913459 (= res!3140915 (not call!734120))))

(declare-fun b!7913453 () Bool)

(assert (=> b!7913453 (= e!4671284 e!4671287)))

(declare-fun c!1451946 () Bool)

(assert (=> b!7913453 (= c!1451946 ((_ is EmptyLang!21381) (regex!8678 rule!156)))))

(declare-fun d!2360895 () Bool)

(assert (=> d!2360895 e!4671284))

(declare-fun c!1451944 () Bool)

(assert (=> d!2360895 (= c!1451944 ((_ is EmptyExpr!21381) (regex!8678 rule!156)))))

(assert (=> d!2360895 (= lt!2689023 e!4671286)))

(declare-fun c!1451945 () Bool)

(assert (=> d!2360895 (= c!1451945 (isEmpty!42721 (_1!38539 lt!2688787)))))

(assert (=> d!2360895 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2360895 (= (matchR!10700 (regex!8678 rule!156) (_1!38539 lt!2688787)) lt!2689023)))

(assert (= (and d!2360895 c!1451945) b!7913455))

(assert (= (and d!2360895 (not c!1451945)) b!7913447))

(assert (= (and d!2360895 c!1451944) b!7913456))

(assert (= (and d!2360895 (not c!1451944)) b!7913453))

(assert (= (and b!7913453 c!1451946) b!7913458))

(assert (= (and b!7913453 (not c!1451946)) b!7913451))

(assert (= (and b!7913451 (not res!3140914)) b!7913452))

(assert (= (and b!7913452 res!3140918) b!7913459))

(assert (= (and b!7913459 res!3140915) b!7913454))

(assert (= (and b!7913454 res!3140921) b!7913449))

(assert (= (and b!7913452 (not res!3140919)) b!7913450))

(assert (= (and b!7913450 res!3140920) b!7913457))

(assert (= (and b!7913457 (not res!3140916)) b!7913448))

(assert (= (and b!7913448 (not res!3140917)) b!7913446))

(assert (= (or b!7913456 b!7913459 b!7913457) bm!734115))

(assert (=> d!2360895 m!8286860))

(assert (=> d!2360895 m!8286914))

(declare-fun m!8287120 () Bool)

(assert (=> b!7913447 m!8287120))

(assert (=> b!7913447 m!8287120))

(declare-fun m!8287122 () Bool)

(assert (=> b!7913447 m!8287122))

(declare-fun m!8287124 () Bool)

(assert (=> b!7913447 m!8287124))

(assert (=> b!7913447 m!8287122))

(assert (=> b!7913447 m!8287124))

(declare-fun m!8287126 () Bool)

(assert (=> b!7913447 m!8287126))

(assert (=> b!7913449 m!8287120))

(assert (=> b!7913454 m!8287124))

(assert (=> b!7913454 m!8287124))

(declare-fun m!8287128 () Bool)

(assert (=> b!7913454 m!8287128))

(assert (=> bm!734115 m!8286860))

(assert (=> b!7913448 m!8287124))

(assert (=> b!7913448 m!8287124))

(assert (=> b!7913448 m!8287128))

(assert (=> b!7913446 m!8287120))

(assert (=> b!7913455 m!8286922))

(assert (=> b!7913237 d!2360895))

(declare-fun d!2360897 () Bool)

(assert (=> d!2360897 (= (apply!14385 (transformation!8678 (rule!11976 (_1!38538 lt!2688784))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784)))) (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784)))))))

(declare-fun b_lambda!290183 () Bool)

(assert (=> (not b_lambda!290183) (not d!2360897)))

(declare-fun tb!263293 () Bool)

(declare-fun t!389977 () Bool)

(assert (=> (and b!7913234 (= (toValue!11739 (transformation!8678 rule!156)) (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784))))) t!389977) tb!263293))

(declare-fun result!360700 () Bool)

(assert (=> tb!263293 (= result!360700 (inv!21 (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))))))))

(declare-fun m!8287130 () Bool)

(assert (=> tb!263293 m!8287130))

(assert (=> d!2360897 t!389977))

(declare-fun b_and!353647 () Bool)

(assert (= b_and!353643 (and (=> t!389977 result!360700) b_and!353647)))

(assert (=> d!2360897 m!8286882))

(declare-fun m!8287132 () Bool)

(assert (=> d!2360897 m!8287132))

(assert (=> b!7913242 d!2360897))

(declare-fun d!2360899 () Bool)

(assert (=> d!2360899 (= (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))) (fromListB!2804 (originalCharacters!8913 (_1!38538 lt!2688784))))))

(declare-fun bs!1968354 () Bool)

(assert (= bs!1968354 d!2360899))

(declare-fun m!8287134 () Bool)

(assert (=> bs!1968354 m!8287134))

(assert (=> b!7913242 d!2360899))

(declare-fun b!7913472 () Bool)

(declare-fun e!4671291 () Bool)

(declare-fun tp!2356989 () Bool)

(assert (=> b!7913472 (= e!4671291 tp!2356989)))

(declare-fun b!7913473 () Bool)

(declare-fun tp!2356990 () Bool)

(declare-fun tp!2356988 () Bool)

(assert (=> b!7913473 (= e!4671291 (and tp!2356990 tp!2356988))))

(declare-fun b!7913470 () Bool)

(assert (=> b!7913470 (= e!4671291 tp_is_empty!53137)))

(assert (=> b!7913238 (= tp!2356971 e!4671291)))

(declare-fun b!7913471 () Bool)

(declare-fun tp!2356991 () Bool)

(declare-fun tp!2356987 () Bool)

(assert (=> b!7913471 (= e!4671291 (and tp!2356991 tp!2356987))))

(assert (= (and b!7913238 ((_ is ElementMatch!21381) (regex!8678 rule!156))) b!7913470))

(assert (= (and b!7913238 ((_ is Concat!30376) (regex!8678 rule!156))) b!7913471))

(assert (= (and b!7913238 ((_ is Star!21381) (regex!8678 rule!156))) b!7913472))

(assert (= (and b!7913238 ((_ is Union!21381) (regex!8678 rule!156))) b!7913473))

(declare-fun b!7913478 () Bool)

(declare-fun e!4671294 () Bool)

(declare-fun tp!2356994 () Bool)

(assert (=> b!7913478 (= e!4671294 (and tp_is_empty!53137 tp!2356994))))

(assert (=> b!7913235 (= tp!2356969 e!4671294)))

(assert (= (and b!7913235 ((_ is Cons!74394) (t!389969 input!1480))) b!7913478))

(declare-fun b_lambda!290185 () Bool)

(assert (= b_lambda!290177 (or (and b!7913234 b_free!135257) b_lambda!290185)))

(declare-fun b_lambda!290187 () Bool)

(assert (= b_lambda!290175 (or (and b!7913234 b_free!135255) b_lambda!290187)))

(declare-fun b_lambda!290189 () Bool)

(assert (= b_lambda!290179 (or (and b!7913234 b_free!135255) b_lambda!290189)))

(check-sat (not b!7913341) (not d!2360887) (not d!2360839) (not tb!263287) (not b!7913447) (not b!7913445) (not b!7913473) (not b!7913402) (not b_lambda!290181) (not b_next!136047) (not d!2360869) (not b!7913257) (not b!7913273) (not b!7913400) (not b!7913434) (not bm!734087) (not d!2360841) (not b!7913432) (not tb!263289) (not b!7913433) (not b_lambda!290189) (not bm!734115) (not d!2360899) (not d!2360853) (not b!7913446) (not tb!263293) (not b!7913348) b_and!353645 b_and!353647 (not bm!734083) (not b!7913277) (not tb!263291) (not bm!734086) (not bm!734082) (not b!7913449) (not d!2360867) (not b_lambda!290187) (not b!7913440) (not b!7913261) (not b!7913256) (not b_lambda!290183) (not b!7913448) (not b_next!136045) (not b!7913454) (not d!2360873) (not b!7913266) (not d!2360831) (not b!7913478) tp_is_empty!53137 (not b!7913472) (not b!7913439) (not b!7913275) (not bm!734114) (not b_lambda!290185) (not b!7913455) (not b!7913471) (not b!7913431) (not b!7913345) (not b!7913333) (not bm!734080) (not d!2360835) (not d!2360871) (not d!2360895) (not bm!734081) (not bm!734085) (not d!2360891) (not d!2360889) (not b!7913340) (not bm!734084))
(check-sat b_and!353647 b_and!353645 (not b_next!136045) (not b_next!136047))
(get-model)

(declare-fun d!2360931 () Bool)

(assert (=> d!2360931 true))

(declare-fun order!29969 () Int)

(declare-fun lambda!472608 () Int)

(declare-fun dynLambda!30199 (Int Int) Int)

(assert (=> d!2360931 (< (dynLambda!30190 order!29957 (toValue!11739 (transformation!8678 rule!156))) (dynLambda!30199 order!29969 lambda!472608))))

(declare-fun Forall2!1320 (Int) Bool)

(assert (=> d!2360931 (= (equivClasses!3662 (toChars!11598 (transformation!8678 rule!156)) (toValue!11739 (transformation!8678 rule!156))) (Forall2!1320 lambda!472608))))

(declare-fun bs!1968358 () Bool)

(assert (= bs!1968358 d!2360931))

(declare-fun m!8287216 () Bool)

(assert (=> bs!1968358 m!8287216))

(assert (=> b!7913261 d!2360931))

(declare-fun d!2360933 () Bool)

(declare-fun lt!2689059 () Int)

(assert (=> d!2360933 (>= lt!2689059 0)))

(declare-fun e!4671351 () Int)

(assert (=> d!2360933 (= lt!2689059 e!4671351)))

(declare-fun c!1451959 () Bool)

(assert (=> d!2360933 (= c!1451959 ((_ is Nil!74394) (t!389969 input!1480)))))

(assert (=> d!2360933 (= (size!43183 (t!389969 input!1480)) lt!2689059)))

(declare-fun b!7913583 () Bool)

(assert (=> b!7913583 (= e!4671351 0)))

(declare-fun b!7913584 () Bool)

(assert (=> b!7913584 (= e!4671351 (+ 1 (size!43183 (t!389969 (t!389969 input!1480)))))))

(assert (= (and d!2360933 c!1451959) b!7913583))

(assert (= (and d!2360933 (not c!1451959)) b!7913584))

(declare-fun m!8287218 () Bool)

(assert (=> b!7913584 m!8287218))

(assert (=> b!7913275 d!2360933))

(declare-fun b!7913593 () Bool)

(declare-fun e!4671356 () List!74518)

(assert (=> b!7913593 (= e!4671356 Nil!74394)))

(declare-fun d!2360935 () Bool)

(declare-fun c!1451964 () Bool)

(assert (=> d!2360935 (= c!1451964 ((_ is Empty!15852) (c!1451878 (charsOf!5612 (_1!38538 lt!2688784)))))))

(assert (=> d!2360935 (= (list!19334 (c!1451878 (charsOf!5612 (_1!38538 lt!2688784)))) e!4671356)))

(declare-fun b!7913596 () Bool)

(declare-fun e!4671357 () List!74518)

(assert (=> b!7913596 (= e!4671357 (++!18224 (list!19334 (left!56786 (c!1451878 (charsOf!5612 (_1!38538 lt!2688784))))) (list!19334 (right!57116 (c!1451878 (charsOf!5612 (_1!38538 lt!2688784)))))))))

(declare-fun b!7913594 () Bool)

(assert (=> b!7913594 (= e!4671356 e!4671357)))

(declare-fun c!1451965 () Bool)

(assert (=> b!7913594 (= c!1451965 ((_ is Leaf!30159) (c!1451878 (charsOf!5612 (_1!38538 lt!2688784)))))))

(declare-fun b!7913595 () Bool)

(declare-fun list!19336 (IArray!31765) List!74518)

(assert (=> b!7913595 (= e!4671357 (list!19336 (xs!19234 (c!1451878 (charsOf!5612 (_1!38538 lt!2688784))))))))

(assert (= (and d!2360935 c!1451964) b!7913593))

(assert (= (and d!2360935 (not c!1451964)) b!7913594))

(assert (= (and b!7913594 c!1451965) b!7913595))

(assert (= (and b!7913594 (not c!1451965)) b!7913596))

(declare-fun m!8287220 () Bool)

(assert (=> b!7913596 m!8287220))

(declare-fun m!8287222 () Bool)

(assert (=> b!7913596 m!8287222))

(assert (=> b!7913596 m!8287220))

(assert (=> b!7913596 m!8287222))

(declare-fun m!8287224 () Bool)

(assert (=> b!7913596 m!8287224))

(declare-fun m!8287226 () Bool)

(assert (=> b!7913595 m!8287226))

(assert (=> d!2360889 d!2360935))

(declare-fun d!2360937 () Bool)

(assert (=> d!2360937 (= (head!16180 (_1!38539 lt!2688787)) (h!80842 (_1!38539 lt!2688787)))))

(assert (=> b!7913446 d!2360937))

(declare-fun d!2360939 () Bool)

(declare-fun c!1451968 () Bool)

(assert (=> d!2360939 (= c!1451968 ((_ is Nil!74394) lt!2688795))))

(declare-fun e!4671360 () (InoxSet C!43092))

(assert (=> d!2360939 (= (content!15755 lt!2688795) e!4671360)))

(declare-fun b!7913601 () Bool)

(assert (=> b!7913601 (= e!4671360 ((as const (Array C!43092 Bool)) false))))

(declare-fun b!7913602 () Bool)

(assert (=> b!7913602 (= e!4671360 ((_ map or) (store ((as const (Array C!43092 Bool)) false) (h!80842 lt!2688795) true) (content!15755 (t!389969 lt!2688795))))))

(assert (= (and d!2360939 c!1451968) b!7913601))

(assert (= (and d!2360939 (not c!1451968)) b!7913602))

(declare-fun m!8287228 () Bool)

(assert (=> b!7913602 m!8287228))

(declare-fun m!8287230 () Bool)

(assert (=> b!7913602 m!8287230))

(assert (=> d!2360831 d!2360939))

(declare-fun d!2360941 () Bool)

(declare-fun c!1451969 () Bool)

(assert (=> d!2360941 (= c!1451969 ((_ is Nil!74394) lt!2688783))))

(declare-fun e!4671361 () (InoxSet C!43092))

(assert (=> d!2360941 (= (content!15755 lt!2688783) e!4671361)))

(declare-fun b!7913603 () Bool)

(assert (=> b!7913603 (= e!4671361 ((as const (Array C!43092 Bool)) false))))

(declare-fun b!7913604 () Bool)

(assert (=> b!7913604 (= e!4671361 ((_ map or) (store ((as const (Array C!43092 Bool)) false) (h!80842 lt!2688783) true) (content!15755 (t!389969 lt!2688783))))))

(assert (= (and d!2360941 c!1451969) b!7913603))

(assert (= (and d!2360941 (not c!1451969)) b!7913604))

(declare-fun m!8287232 () Bool)

(assert (=> b!7913604 m!8287232))

(declare-fun m!8287234 () Bool)

(assert (=> b!7913604 m!8287234))

(assert (=> d!2360831 d!2360941))

(declare-fun d!2360943 () Bool)

(declare-fun c!1451970 () Bool)

(assert (=> d!2360943 (= c!1451970 ((_ is Nil!74394) (_2!38538 lt!2688784)))))

(declare-fun e!4671362 () (InoxSet C!43092))

(assert (=> d!2360943 (= (content!15755 (_2!38538 lt!2688784)) e!4671362)))

(declare-fun b!7913605 () Bool)

(assert (=> b!7913605 (= e!4671362 ((as const (Array C!43092 Bool)) false))))

(declare-fun b!7913606 () Bool)

(assert (=> b!7913606 (= e!4671362 ((_ map or) (store ((as const (Array C!43092 Bool)) false) (h!80842 (_2!38538 lt!2688784)) true) (content!15755 (t!389969 (_2!38538 lt!2688784)))))))

(assert (= (and d!2360943 c!1451970) b!7913605))

(assert (= (and d!2360943 (not c!1451970)) b!7913606))

(declare-fun m!8287236 () Bool)

(assert (=> b!7913606 m!8287236))

(declare-fun m!8287238 () Bool)

(assert (=> b!7913606 m!8287238))

(assert (=> d!2360831 d!2360943))

(assert (=> d!2360895 d!2360849))

(declare-fun bm!734126 () Bool)

(declare-fun call!734132 () Bool)

(declare-fun call!734133 () Bool)

(assert (=> bm!734126 (= call!734132 call!734133)))

(declare-fun bm!734127 () Bool)

(declare-fun call!734131 () Bool)

(declare-fun c!1451976 () Bool)

(assert (=> bm!734127 (= call!734131 (validRegex!11684 (ite c!1451976 (regTwo!43275 (regex!8678 rule!156)) (regTwo!43274 (regex!8678 rule!156)))))))

(declare-fun bm!734128 () Bool)

(declare-fun c!1451975 () Bool)

(assert (=> bm!734128 (= call!734133 (validRegex!11684 (ite c!1451975 (reg!21710 (regex!8678 rule!156)) (ite c!1451976 (regOne!43275 (regex!8678 rule!156)) (regOne!43274 (regex!8678 rule!156))))))))

(declare-fun b!7913625 () Bool)

(declare-fun e!4671383 () Bool)

(assert (=> b!7913625 (= e!4671383 call!734133)))

(declare-fun b!7913626 () Bool)

(declare-fun e!4671381 () Bool)

(declare-fun e!4671379 () Bool)

(assert (=> b!7913626 (= e!4671381 e!4671379)))

(assert (=> b!7913626 (= c!1451976 ((_ is Union!21381) (regex!8678 rule!156)))))

(declare-fun d!2360945 () Bool)

(declare-fun res!3140981 () Bool)

(declare-fun e!4671378 () Bool)

(assert (=> d!2360945 (=> res!3140981 e!4671378)))

(assert (=> d!2360945 (= res!3140981 ((_ is ElementMatch!21381) (regex!8678 rule!156)))))

(assert (=> d!2360945 (= (validRegex!11684 (regex!8678 rule!156)) e!4671378)))

(declare-fun b!7913627 () Bool)

(declare-fun e!4671382 () Bool)

(assert (=> b!7913627 (= e!4671382 call!734131)))

(declare-fun b!7913628 () Bool)

(declare-fun e!4671377 () Bool)

(assert (=> b!7913628 (= e!4671377 e!4671382)))

(declare-fun res!3140982 () Bool)

(assert (=> b!7913628 (=> (not res!3140982) (not e!4671382))))

(assert (=> b!7913628 (= res!3140982 call!734132)))

(declare-fun b!7913629 () Bool)

(declare-fun res!3140978 () Bool)

(declare-fun e!4671380 () Bool)

(assert (=> b!7913629 (=> (not res!3140978) (not e!4671380))))

(assert (=> b!7913629 (= res!3140978 call!734132)))

(assert (=> b!7913629 (= e!4671379 e!4671380)))

(declare-fun b!7913630 () Bool)

(declare-fun res!3140980 () Bool)

(assert (=> b!7913630 (=> res!3140980 e!4671377)))

(assert (=> b!7913630 (= res!3140980 (not ((_ is Concat!30376) (regex!8678 rule!156))))))

(assert (=> b!7913630 (= e!4671379 e!4671377)))

(declare-fun b!7913631 () Bool)

(assert (=> b!7913631 (= e!4671380 call!734131)))

(declare-fun b!7913632 () Bool)

(assert (=> b!7913632 (= e!4671381 e!4671383)))

(declare-fun res!3140979 () Bool)

(assert (=> b!7913632 (= res!3140979 (not (nullable!9519 (reg!21710 (regex!8678 rule!156)))))))

(assert (=> b!7913632 (=> (not res!3140979) (not e!4671383))))

(declare-fun b!7913633 () Bool)

(assert (=> b!7913633 (= e!4671378 e!4671381)))

(assert (=> b!7913633 (= c!1451975 ((_ is Star!21381) (regex!8678 rule!156)))))

(assert (= (and d!2360945 (not res!3140981)) b!7913633))

(assert (= (and b!7913633 c!1451975) b!7913632))

(assert (= (and b!7913633 (not c!1451975)) b!7913626))

(assert (= (and b!7913632 res!3140979) b!7913625))

(assert (= (and b!7913626 c!1451976) b!7913629))

(assert (= (and b!7913626 (not c!1451976)) b!7913630))

(assert (= (and b!7913629 res!3140978) b!7913631))

(assert (= (and b!7913630 (not res!3140980)) b!7913628))

(assert (= (and b!7913628 res!3140982) b!7913627))

(assert (= (or b!7913629 b!7913628) bm!734126))

(assert (= (or b!7913631 b!7913627) bm!734127))

(assert (= (or b!7913625 bm!734126) bm!734128))

(declare-fun m!8287240 () Bool)

(assert (=> bm!734127 m!8287240))

(declare-fun m!8287242 () Bool)

(assert (=> bm!734128 m!8287242))

(declare-fun m!8287244 () Bool)

(assert (=> b!7913632 m!8287244))

(assert (=> d!2360895 d!2360945))

(declare-fun d!2360947 () Bool)

(assert (=> d!2360947 (= (isEmpty!42721 (tail!15723 (_1!38539 lt!2688787))) ((_ is Nil!74394) (tail!15723 (_1!38539 lt!2688787))))))

(assert (=> b!7913448 d!2360947))

(declare-fun d!2360949 () Bool)

(assert (=> d!2360949 (= (tail!15723 (_1!38539 lt!2688787)) (t!389969 (_1!38539 lt!2688787)))))

(assert (=> b!7913448 d!2360949))

(assert (=> d!2360853 d!2360945))

(declare-fun d!2360951 () Bool)

(assert (=> d!2360951 (isPrefix!6488 Nil!74394 (++!18224 Nil!74394 input!1480))))

(declare-fun lt!2689062 () Unit!169491)

(declare-fun choose!59770 (List!74518 List!74518) Unit!169491)

(assert (=> d!2360951 (= lt!2689062 (choose!59770 Nil!74394 input!1480))))

(assert (=> d!2360951 (= (lemmaConcatTwoListThenFirstIsPrefix!3810 Nil!74394 input!1480) lt!2689062)))

(declare-fun bs!1968359 () Bool)

(assert (= bs!1968359 d!2360951))

(assert (=> bs!1968359 m!8286958))

(assert (=> bs!1968359 m!8286958))

(assert (=> bs!1968359 m!8286960))

(declare-fun m!8287246 () Bool)

(assert (=> bs!1968359 m!8287246))

(assert (=> d!2360853 d!2360951))

(declare-fun d!2360953 () Bool)

(declare-fun lostCauseFct!559 (Regex!21381) Bool)

(assert (=> d!2360953 (= (lostCause!1932 (regex!8678 rule!156)) (lostCauseFct!559 (regex!8678 rule!156)))))

(declare-fun bs!1968360 () Bool)

(assert (= bs!1968360 d!2360953))

(declare-fun m!8287248 () Bool)

(assert (=> bs!1968360 m!8287248))

(assert (=> d!2360853 d!2360953))

(declare-fun d!2360955 () Bool)

(declare-fun lt!2689065 () List!74518)

(assert (=> d!2360955 (= (++!18224 Nil!74394 lt!2689065) input!1480)))

(declare-fun e!4671386 () List!74518)

(assert (=> d!2360955 (= lt!2689065 e!4671386)))

(declare-fun c!1451979 () Bool)

(assert (=> d!2360955 (= c!1451979 ((_ is Cons!74394) Nil!74394))))

(assert (=> d!2360955 (>= (size!43183 input!1480) (size!43183 Nil!74394))))

(assert (=> d!2360955 (= (getSuffix!3701 input!1480 Nil!74394) lt!2689065)))

(declare-fun b!7913638 () Bool)

(assert (=> b!7913638 (= e!4671386 (getSuffix!3701 (tail!15723 input!1480) (t!389969 Nil!74394)))))

(declare-fun b!7913639 () Bool)

(assert (=> b!7913639 (= e!4671386 input!1480)))

(assert (= (and d!2360955 c!1451979) b!7913638))

(assert (= (and d!2360955 (not c!1451979)) b!7913639))

(declare-fun m!8287250 () Bool)

(assert (=> d!2360955 m!8287250))

(assert (=> d!2360955 m!8286862))

(assert (=> d!2360955 m!8286852))

(assert (=> b!7913638 m!8286980))

(assert (=> b!7913638 m!8286980))

(declare-fun m!8287252 () Bool)

(assert (=> b!7913638 m!8287252))

(assert (=> d!2360853 d!2360955))

(declare-fun b!7913643 () Bool)

(declare-fun e!4671387 () Bool)

(declare-fun lt!2689066 () List!74518)

(assert (=> b!7913643 (= e!4671387 (or (not (= (_2!38539 lt!2688898) Nil!74394)) (= lt!2689066 (_1!38539 lt!2688898))))))

(declare-fun b!7913642 () Bool)

(declare-fun res!3140984 () Bool)

(assert (=> b!7913642 (=> (not res!3140984) (not e!4671387))))

(assert (=> b!7913642 (= res!3140984 (= (size!43183 lt!2689066) (+ (size!43183 (_1!38539 lt!2688898)) (size!43183 (_2!38539 lt!2688898)))))))

(declare-fun b!7913641 () Bool)

(declare-fun e!4671388 () List!74518)

(assert (=> b!7913641 (= e!4671388 (Cons!74394 (h!80842 (_1!38539 lt!2688898)) (++!18224 (t!389969 (_1!38539 lt!2688898)) (_2!38539 lt!2688898))))))

(declare-fun d!2360957 () Bool)

(assert (=> d!2360957 e!4671387))

(declare-fun res!3140983 () Bool)

(assert (=> d!2360957 (=> (not res!3140983) (not e!4671387))))

(assert (=> d!2360957 (= res!3140983 (= (content!15755 lt!2689066) ((_ map or) (content!15755 (_1!38539 lt!2688898)) (content!15755 (_2!38539 lt!2688898)))))))

(assert (=> d!2360957 (= lt!2689066 e!4671388)))

(declare-fun c!1451980 () Bool)

(assert (=> d!2360957 (= c!1451980 ((_ is Nil!74394) (_1!38539 lt!2688898)))))

(assert (=> d!2360957 (= (++!18224 (_1!38539 lt!2688898) (_2!38539 lt!2688898)) lt!2689066)))

(declare-fun b!7913640 () Bool)

(assert (=> b!7913640 (= e!4671388 (_2!38539 lt!2688898))))

(assert (= (and d!2360957 c!1451980) b!7913640))

(assert (= (and d!2360957 (not c!1451980)) b!7913641))

(assert (= (and d!2360957 res!3140983) b!7913642))

(assert (= (and b!7913642 res!3140984) b!7913643))

(declare-fun m!8287254 () Bool)

(assert (=> b!7913642 m!8287254))

(assert (=> b!7913642 m!8286998))

(declare-fun m!8287256 () Bool)

(assert (=> b!7913642 m!8287256))

(declare-fun m!8287258 () Bool)

(assert (=> b!7913641 m!8287258))

(declare-fun m!8287260 () Bool)

(assert (=> d!2360957 m!8287260))

(declare-fun m!8287262 () Bool)

(assert (=> d!2360957 m!8287262))

(declare-fun m!8287264 () Bool)

(assert (=> d!2360957 m!8287264))

(assert (=> d!2360853 d!2360957))

(declare-fun d!2360959 () Bool)

(assert (=> d!2360959 (= input!1480 lt!2688897)))

(declare-fun lt!2689069 () Unit!169491)

(declare-fun choose!59771 (List!74518 List!74518 List!74518 List!74518 List!74518) Unit!169491)

(assert (=> d!2360959 (= lt!2689069 (choose!59771 Nil!74394 input!1480 Nil!74394 lt!2688897 input!1480))))

(assert (=> d!2360959 (isPrefix!6488 Nil!74394 input!1480)))

(assert (=> d!2360959 (= (lemmaSamePrefixThenSameSuffix!2948 Nil!74394 input!1480 Nil!74394 lt!2688897 input!1480) lt!2689069)))

(declare-fun bs!1968361 () Bool)

(assert (= bs!1968361 d!2360959))

(declare-fun m!8287266 () Bool)

(assert (=> bs!1968361 m!8287266))

(declare-fun m!8287268 () Bool)

(assert (=> bs!1968361 m!8287268))

(assert (=> d!2360853 d!2360959))

(declare-fun b!7913647 () Bool)

(declare-fun e!4671389 () Bool)

(declare-fun lt!2689070 () List!74518)

(assert (=> b!7913647 (= e!4671389 (or (not (= input!1480 Nil!74394)) (= lt!2689070 Nil!74394)))))

(declare-fun b!7913646 () Bool)

(declare-fun res!3140986 () Bool)

(assert (=> b!7913646 (=> (not res!3140986) (not e!4671389))))

(assert (=> b!7913646 (= res!3140986 (= (size!43183 lt!2689070) (+ (size!43183 Nil!74394) (size!43183 input!1480))))))

(declare-fun b!7913645 () Bool)

(declare-fun e!4671390 () List!74518)

(assert (=> b!7913645 (= e!4671390 (Cons!74394 (h!80842 Nil!74394) (++!18224 (t!389969 Nil!74394) input!1480)))))

(declare-fun d!2360961 () Bool)

(assert (=> d!2360961 e!4671389))

(declare-fun res!3140985 () Bool)

(assert (=> d!2360961 (=> (not res!3140985) (not e!4671389))))

(assert (=> d!2360961 (= res!3140985 (= (content!15755 lt!2689070) ((_ map or) (content!15755 Nil!74394) (content!15755 input!1480))))))

(assert (=> d!2360961 (= lt!2689070 e!4671390)))

(declare-fun c!1451981 () Bool)

(assert (=> d!2360961 (= c!1451981 ((_ is Nil!74394) Nil!74394))))

(assert (=> d!2360961 (= (++!18224 Nil!74394 input!1480) lt!2689070)))

(declare-fun b!7913644 () Bool)

(assert (=> b!7913644 (= e!4671390 input!1480)))

(assert (= (and d!2360961 c!1451981) b!7913644))

(assert (= (and d!2360961 (not c!1451981)) b!7913645))

(assert (= (and d!2360961 res!3140985) b!7913646))

(assert (= (and b!7913646 res!3140986) b!7913647))

(declare-fun m!8287270 () Bool)

(assert (=> b!7913646 m!8287270))

(assert (=> b!7913646 m!8286852))

(assert (=> b!7913646 m!8286862))

(declare-fun m!8287272 () Bool)

(assert (=> b!7913645 m!8287272))

(declare-fun m!8287274 () Bool)

(assert (=> d!2360961 m!8287274))

(declare-fun m!8287276 () Bool)

(assert (=> d!2360961 m!8287276))

(declare-fun m!8287278 () Bool)

(assert (=> d!2360961 m!8287278))

(assert (=> d!2360853 d!2360961))

(declare-fun b!7913657 () Bool)

(declare-fun res!3140997 () Bool)

(declare-fun e!4671398 () Bool)

(assert (=> b!7913657 (=> (not res!3140997) (not e!4671398))))

(assert (=> b!7913657 (= res!3140997 (= (head!16180 Nil!74394) (head!16180 (++!18224 Nil!74394 input!1480))))))

(declare-fun b!7913656 () Bool)

(declare-fun e!4671397 () Bool)

(assert (=> b!7913656 (= e!4671397 e!4671398)))

(declare-fun res!3140996 () Bool)

(assert (=> b!7913656 (=> (not res!3140996) (not e!4671398))))

(assert (=> b!7913656 (= res!3140996 (not ((_ is Nil!74394) (++!18224 Nil!74394 input!1480))))))

(declare-fun b!7913659 () Bool)

(declare-fun e!4671399 () Bool)

(assert (=> b!7913659 (= e!4671399 (>= (size!43183 (++!18224 Nil!74394 input!1480)) (size!43183 Nil!74394)))))

(declare-fun d!2360963 () Bool)

(assert (=> d!2360963 e!4671399))

(declare-fun res!3140995 () Bool)

(assert (=> d!2360963 (=> res!3140995 e!4671399)))

(declare-fun lt!2689073 () Bool)

(assert (=> d!2360963 (= res!3140995 (not lt!2689073))))

(assert (=> d!2360963 (= lt!2689073 e!4671397)))

(declare-fun res!3140998 () Bool)

(assert (=> d!2360963 (=> res!3140998 e!4671397)))

(assert (=> d!2360963 (= res!3140998 ((_ is Nil!74394) Nil!74394))))

(assert (=> d!2360963 (= (isPrefix!6488 Nil!74394 (++!18224 Nil!74394 input!1480)) lt!2689073)))

(declare-fun b!7913658 () Bool)

(assert (=> b!7913658 (= e!4671398 (isPrefix!6488 (tail!15723 Nil!74394) (tail!15723 (++!18224 Nil!74394 input!1480))))))

(assert (= (and d!2360963 (not res!3140998)) b!7913656))

(assert (= (and b!7913656 res!3140996) b!7913657))

(assert (= (and b!7913657 res!3140997) b!7913658))

(assert (= (and d!2360963 (not res!3140995)) b!7913659))

(declare-fun m!8287280 () Bool)

(assert (=> b!7913657 m!8287280))

(assert (=> b!7913657 m!8286958))

(declare-fun m!8287282 () Bool)

(assert (=> b!7913657 m!8287282))

(assert (=> b!7913659 m!8286958))

(declare-fun m!8287284 () Bool)

(assert (=> b!7913659 m!8287284))

(assert (=> b!7913659 m!8286852))

(declare-fun m!8287286 () Bool)

(assert (=> b!7913658 m!8287286))

(assert (=> b!7913658 m!8286958))

(declare-fun m!8287288 () Bool)

(assert (=> b!7913658 m!8287288))

(assert (=> b!7913658 m!8287286))

(assert (=> b!7913658 m!8287288))

(declare-fun m!8287290 () Bool)

(assert (=> b!7913658 m!8287290))

(assert (=> d!2360853 d!2360963))

(declare-fun d!2360965 () Bool)

(declare-fun nullableFct!3756 (Regex!21381) Bool)

(assert (=> d!2360965 (= (nullable!9519 (regex!8678 rule!156)) (nullableFct!3756 (regex!8678 rule!156)))))

(declare-fun bs!1968362 () Bool)

(assert (= bs!1968362 d!2360965))

(declare-fun m!8287292 () Bool)

(assert (=> bs!1968362 m!8287292))

(assert (=> b!7913440 d!2360965))

(declare-fun b!7913661 () Bool)

(declare-fun res!3141001 () Bool)

(declare-fun e!4671401 () Bool)

(assert (=> b!7913661 (=> (not res!3141001) (not e!4671401))))

(assert (=> b!7913661 (= res!3141001 (= (head!16180 input!1480) (head!16180 input!1480)))))

(declare-fun b!7913660 () Bool)

(declare-fun e!4671400 () Bool)

(assert (=> b!7913660 (= e!4671400 e!4671401)))

(declare-fun res!3141000 () Bool)

(assert (=> b!7913660 (=> (not res!3141000) (not e!4671401))))

(assert (=> b!7913660 (= res!3141000 (not ((_ is Nil!74394) input!1480)))))

(declare-fun b!7913663 () Bool)

(declare-fun e!4671402 () Bool)

(assert (=> b!7913663 (= e!4671402 (>= (size!43183 input!1480) (size!43183 input!1480)))))

(declare-fun d!2360967 () Bool)

(assert (=> d!2360967 e!4671402))

(declare-fun res!3140999 () Bool)

(assert (=> d!2360967 (=> res!3140999 e!4671402)))

(declare-fun lt!2689074 () Bool)

(assert (=> d!2360967 (= res!3140999 (not lt!2689074))))

(assert (=> d!2360967 (= lt!2689074 e!4671400)))

(declare-fun res!3141002 () Bool)

(assert (=> d!2360967 (=> res!3141002 e!4671400)))

(assert (=> d!2360967 (= res!3141002 ((_ is Nil!74394) input!1480))))

(assert (=> d!2360967 (= (isPrefix!6488 input!1480 input!1480) lt!2689074)))

(declare-fun b!7913662 () Bool)

(assert (=> b!7913662 (= e!4671401 (isPrefix!6488 (tail!15723 input!1480) (tail!15723 input!1480)))))

(assert (= (and d!2360967 (not res!3141002)) b!7913660))

(assert (= (and b!7913660 res!3141000) b!7913661))

(assert (= (and b!7913661 res!3141001) b!7913662))

(assert (= (and d!2360967 (not res!3140999)) b!7913663))

(assert (=> b!7913661 m!8286974))

(assert (=> b!7913661 m!8286974))

(assert (=> b!7913663 m!8286862))

(assert (=> b!7913663 m!8286862))

(assert (=> b!7913662 m!8286980))

(assert (=> b!7913662 m!8286980))

(assert (=> b!7913662 m!8286980))

(assert (=> b!7913662 m!8286980))

(declare-fun m!8287294 () Bool)

(assert (=> b!7913662 m!8287294))

(assert (=> bm!734084 d!2360967))

(declare-fun d!2360969 () Bool)

(declare-fun c!1451984 () Bool)

(assert (=> d!2360969 (= c!1451984 ((_ is Node!15852) (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784))))))))

(declare-fun e!4671407 () Bool)

(assert (=> d!2360969 (= (inv!95478 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784))))) e!4671407)))

(declare-fun b!7913670 () Bool)

(declare-fun inv!95482 (Conc!15852) Bool)

(assert (=> b!7913670 (= e!4671407 (inv!95482 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784))))))))

(declare-fun b!7913671 () Bool)

(declare-fun e!4671408 () Bool)

(assert (=> b!7913671 (= e!4671407 e!4671408)))

(declare-fun res!3141005 () Bool)

(assert (=> b!7913671 (= res!3141005 (not ((_ is Leaf!30159) (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784)))))))))

(assert (=> b!7913671 (=> res!3141005 e!4671408)))

(declare-fun b!7913672 () Bool)

(declare-fun inv!95483 (Conc!15852) Bool)

(assert (=> b!7913672 (= e!4671408 (inv!95483 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784))))))))

(assert (= (and d!2360969 c!1451984) b!7913670))

(assert (= (and d!2360969 (not c!1451984)) b!7913671))

(assert (= (and b!7913671 (not res!3141005)) b!7913672))

(declare-fun m!8287296 () Bool)

(assert (=> b!7913670 m!8287296))

(declare-fun m!8287298 () Bool)

(assert (=> b!7913672 m!8287298))

(assert (=> b!7913445 d!2360969))

(declare-fun b!7913683 () Bool)

(declare-fun e!4671415 () Bool)

(declare-fun e!4671416 () Bool)

(assert (=> b!7913683 (= e!4671415 e!4671416)))

(declare-fun c!1451990 () Bool)

(assert (=> b!7913683 (= c!1451990 ((_ is IntegerValue!26983) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))

(declare-fun b!7913684 () Bool)

(declare-fun inv!16 (TokenValue!8994) Bool)

(assert (=> b!7913684 (= e!4671415 (inv!16 (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))

(declare-fun d!2360971 () Bool)

(declare-fun c!1451989 () Bool)

(assert (=> d!2360971 (= c!1451989 ((_ is IntegerValue!26982) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))

(assert (=> d!2360971 (= (inv!21 (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)) e!4671415)))

(declare-fun b!7913685 () Bool)

(declare-fun res!3141008 () Bool)

(declare-fun e!4671417 () Bool)

(assert (=> b!7913685 (=> res!3141008 e!4671417)))

(assert (=> b!7913685 (= res!3141008 (not ((_ is IntegerValue!26984) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))))))

(assert (=> b!7913685 (= e!4671416 e!4671417)))

(declare-fun b!7913686 () Bool)

(declare-fun inv!17 (TokenValue!8994) Bool)

(assert (=> b!7913686 (= e!4671416 (inv!17 (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))

(declare-fun b!7913687 () Bool)

(declare-fun inv!15 (TokenValue!8994) Bool)

(assert (=> b!7913687 (= e!4671417 (inv!15 (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))

(assert (= (and d!2360971 c!1451989) b!7913684))

(assert (= (and d!2360971 (not c!1451989)) b!7913683))

(assert (= (and b!7913683 c!1451990) b!7913686))

(assert (= (and b!7913683 (not c!1451990)) b!7913685))

(assert (= (and b!7913685 (not res!3141008)) b!7913687))

(declare-fun m!8287300 () Bool)

(assert (=> b!7913684 m!8287300))

(declare-fun m!8287302 () Bool)

(assert (=> b!7913686 m!8287302))

(declare-fun m!8287304 () Bool)

(assert (=> b!7913687 m!8287304))

(assert (=> tb!263287 d!2360971))

(declare-fun d!2360973 () Bool)

(declare-fun e!4671420 () Bool)

(assert (=> d!2360973 e!4671420))

(declare-fun res!3141011 () Bool)

(assert (=> d!2360973 (=> (not res!3141011) (not e!4671420))))

(declare-fun lt!2689077 () BalanceConc!30822)

(assert (=> d!2360973 (= res!3141011 (= (list!19333 lt!2689077) (_1!38539 lt!2688791)))))

(declare-fun fromList!967 (List!74518) Conc!15852)

(assert (=> d!2360973 (= lt!2689077 (BalanceConc!30823 (fromList!967 (_1!38539 lt!2688791))))))

(assert (=> d!2360973 (= (fromListB!2804 (_1!38539 lt!2688791)) lt!2689077)))

(declare-fun b!7913690 () Bool)

(declare-fun isBalanced!4480 (Conc!15852) Bool)

(assert (=> b!7913690 (= e!4671420 (isBalanced!4480 (fromList!967 (_1!38539 lt!2688791))))))

(assert (= (and d!2360973 res!3141011) b!7913690))

(declare-fun m!8287306 () Bool)

(assert (=> d!2360973 m!8287306))

(declare-fun m!8287308 () Bool)

(assert (=> d!2360973 m!8287308))

(assert (=> b!7913690 m!8287308))

(assert (=> b!7913690 m!8287308))

(declare-fun m!8287310 () Bool)

(assert (=> b!7913690 m!8287310))

(assert (=> d!2360869 d!2360973))

(declare-fun d!2360975 () Bool)

(assert (=> d!2360975 (= (isEmpty!42721 lt!2688783) ((_ is Nil!74394) lt!2688783))))

(assert (=> bm!734114 d!2360975))

(declare-fun d!2360977 () Bool)

(assert (=> d!2360977 (= (list!19333 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))) (list!19334 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))))

(declare-fun bs!1968363 () Bool)

(assert (= bs!1968363 d!2360977))

(declare-fun m!8287312 () Bool)

(assert (=> bs!1968363 m!8287312))

(assert (=> d!2360873 d!2360977))

(declare-fun d!2360979 () Bool)

(assert (=> d!2360979 (= (list!19333 lt!2688788) (list!19334 (c!1451878 lt!2688788)))))

(declare-fun bs!1968364 () Bool)

(assert (= bs!1968364 d!2360979))

(declare-fun m!8287314 () Bool)

(assert (=> bs!1968364 m!8287314))

(assert (=> d!2360873 d!2360979))

(declare-fun d!2360981 () Bool)

(declare-fun dynLambda!30200 (Int BalanceConc!30822) Bool)

(assert (=> d!2360981 (dynLambda!30200 lambda!472602 lt!2688788)))

(declare-fun lt!2689080 () Unit!169491)

(declare-fun choose!59772 (Int BalanceConc!30822) Unit!169491)

(assert (=> d!2360981 (= lt!2689080 (choose!59772 lambda!472602 lt!2688788))))

(declare-fun Forall!1849 (Int) Bool)

(assert (=> d!2360981 (Forall!1849 lambda!472602)))

(assert (=> d!2360981 (= (ForallOf!1318 lambda!472602 lt!2688788) lt!2689080)))

(declare-fun b_lambda!290207 () Bool)

(assert (=> (not b_lambda!290207) (not d!2360981)))

(declare-fun bs!1968365 () Bool)

(assert (= bs!1968365 d!2360981))

(declare-fun m!8287316 () Bool)

(assert (=> bs!1968365 m!8287316))

(declare-fun m!8287318 () Bool)

(assert (=> bs!1968365 m!8287318))

(declare-fun m!8287320 () Bool)

(assert (=> bs!1968365 m!8287320))

(assert (=> d!2360873 d!2360981))

(declare-fun d!2360983 () Bool)

(assert (=> d!2360983 (= (list!19333 lt!2689022) (list!19334 (c!1451878 lt!2689022)))))

(declare-fun bs!1968366 () Bool)

(assert (= bs!1968366 d!2360983))

(declare-fun m!8287322 () Bool)

(assert (=> bs!1968366 m!8287322))

(assert (=> d!2360891 d!2360983))

(assert (=> b!7913454 d!2360947))

(assert (=> b!7913454 d!2360949))

(assert (=> bm!734086 d!2360965))

(declare-fun b!7913691 () Bool)

(declare-fun e!4671421 () Bool)

(declare-fun e!4671422 () Bool)

(assert (=> b!7913691 (= e!4671421 e!4671422)))

(declare-fun c!1451993 () Bool)

(assert (=> b!7913691 (= c!1451993 ((_ is IntegerValue!26983) (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))))))))

(declare-fun b!7913692 () Bool)

(assert (=> b!7913692 (= e!4671421 (inv!16 (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))))))))

(declare-fun d!2360985 () Bool)

(declare-fun c!1451992 () Bool)

(assert (=> d!2360985 (= c!1451992 ((_ is IntegerValue!26982) (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))))))))

(assert (=> d!2360985 (= (inv!21 (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))))) e!4671421)))

(declare-fun b!7913693 () Bool)

(declare-fun res!3141012 () Bool)

(declare-fun e!4671423 () Bool)

(assert (=> b!7913693 (=> res!3141012 e!4671423)))

(assert (=> b!7913693 (= res!3141012 (not ((_ is IntegerValue!26984) (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784)))))))))

(assert (=> b!7913693 (= e!4671422 e!4671423)))

(declare-fun b!7913694 () Bool)

(assert (=> b!7913694 (= e!4671422 (inv!17 (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))))))))

(declare-fun b!7913695 () Bool)

(assert (=> b!7913695 (= e!4671423 (inv!15 (dynLambda!30189 (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (seqFromList!6203 (originalCharacters!8913 (_1!38538 lt!2688784))))))))

(assert (= (and d!2360985 c!1451992) b!7913692))

(assert (= (and d!2360985 (not c!1451992)) b!7913691))

(assert (= (and b!7913691 c!1451993) b!7913694))

(assert (= (and b!7913691 (not c!1451993)) b!7913693))

(assert (= (and b!7913693 (not res!3141012)) b!7913695))

(declare-fun m!8287324 () Bool)

(assert (=> b!7913692 m!8287324))

(declare-fun m!8287326 () Bool)

(assert (=> b!7913694 m!8287326))

(declare-fun m!8287328 () Bool)

(assert (=> b!7913695 m!8287328))

(assert (=> tb!263293 d!2360985))

(declare-fun lt!2689081 () List!74518)

(declare-fun b!7913699 () Bool)

(declare-fun e!4671424 () Bool)

(assert (=> b!7913699 (= e!4671424 (or (not (= (_2!38538 lt!2688784) Nil!74394)) (= lt!2689081 (t!389969 lt!2688783))))))

(declare-fun b!7913698 () Bool)

(declare-fun res!3141014 () Bool)

(assert (=> b!7913698 (=> (not res!3141014) (not e!4671424))))

(assert (=> b!7913698 (= res!3141014 (= (size!43183 lt!2689081) (+ (size!43183 (t!389969 lt!2688783)) (size!43183 (_2!38538 lt!2688784)))))))

(declare-fun b!7913697 () Bool)

(declare-fun e!4671425 () List!74518)

(assert (=> b!7913697 (= e!4671425 (Cons!74394 (h!80842 (t!389969 lt!2688783)) (++!18224 (t!389969 (t!389969 lt!2688783)) (_2!38538 lt!2688784))))))

(declare-fun d!2360987 () Bool)

(assert (=> d!2360987 e!4671424))

(declare-fun res!3141013 () Bool)

(assert (=> d!2360987 (=> (not res!3141013) (not e!4671424))))

(assert (=> d!2360987 (= res!3141013 (= (content!15755 lt!2689081) ((_ map or) (content!15755 (t!389969 lt!2688783)) (content!15755 (_2!38538 lt!2688784)))))))

(assert (=> d!2360987 (= lt!2689081 e!4671425)))

(declare-fun c!1451994 () Bool)

(assert (=> d!2360987 (= c!1451994 ((_ is Nil!74394) (t!389969 lt!2688783)))))

(assert (=> d!2360987 (= (++!18224 (t!389969 lt!2688783) (_2!38538 lt!2688784)) lt!2689081)))

(declare-fun b!7913696 () Bool)

(assert (=> b!7913696 (= e!4671425 (_2!38538 lt!2688784))))

(assert (= (and d!2360987 c!1451994) b!7913696))

(assert (= (and d!2360987 (not c!1451994)) b!7913697))

(assert (= (and d!2360987 res!3141013) b!7913698))

(assert (= (and b!7913698 res!3141014) b!7913699))

(declare-fun m!8287330 () Bool)

(assert (=> b!7913698 m!8287330))

(declare-fun m!8287332 () Bool)

(assert (=> b!7913698 m!8287332))

(assert (=> b!7913698 m!8286886))

(declare-fun m!8287334 () Bool)

(assert (=> b!7913697 m!8287334))

(declare-fun m!8287336 () Bool)

(assert (=> d!2360987 m!8287336))

(assert (=> d!2360987 m!8287234))

(assert (=> d!2360987 m!8286898))

(assert (=> b!7913256 d!2360987))

(assert (=> b!7913333 d!2360845))

(declare-fun b!7913701 () Bool)

(declare-fun res!3141017 () Bool)

(declare-fun e!4671427 () Bool)

(assert (=> b!7913701 (=> (not res!3141017) (not e!4671427))))

(assert (=> b!7913701 (= res!3141017 (= (head!16180 (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394))) (head!16180 input!1480)))))

(declare-fun b!7913700 () Bool)

(declare-fun e!4671426 () Bool)

(assert (=> b!7913700 (= e!4671426 e!4671427)))

(declare-fun res!3141016 () Bool)

(assert (=> b!7913700 (=> (not res!3141016) (not e!4671427))))

(assert (=> b!7913700 (= res!3141016 (not ((_ is Nil!74394) input!1480)))))

(declare-fun b!7913703 () Bool)

(declare-fun e!4671428 () Bool)

(assert (=> b!7913703 (= e!4671428 (>= (size!43183 input!1480) (size!43183 (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)))))))

(declare-fun d!2360989 () Bool)

(assert (=> d!2360989 e!4671428))

(declare-fun res!3141015 () Bool)

(assert (=> d!2360989 (=> res!3141015 e!4671428)))

(declare-fun lt!2689082 () Bool)

(assert (=> d!2360989 (= res!3141015 (not lt!2689082))))

(assert (=> d!2360989 (= lt!2689082 e!4671426)))

(declare-fun res!3141018 () Bool)

(assert (=> d!2360989 (=> res!3141018 e!4671426)))

(assert (=> d!2360989 (= res!3141018 ((_ is Nil!74394) (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394))))))

(assert (=> d!2360989 (= (isPrefix!6488 (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)) input!1480) lt!2689082)))

(declare-fun b!7913702 () Bool)

(assert (=> b!7913702 (= e!4671427 (isPrefix!6488 (tail!15723 (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394))) (tail!15723 input!1480)))))

(assert (= (and d!2360989 (not res!3141018)) b!7913700))

(assert (= (and b!7913700 res!3141016) b!7913701))

(assert (= (and b!7913701 res!3141017) b!7913702))

(assert (= (and d!2360989 (not res!3141015)) b!7913703))

(assert (=> b!7913701 m!8286970))

(declare-fun m!8287338 () Bool)

(assert (=> b!7913701 m!8287338))

(assert (=> b!7913701 m!8286974))

(assert (=> b!7913703 m!8286862))

(assert (=> b!7913703 m!8286970))

(declare-fun m!8287340 () Bool)

(assert (=> b!7913703 m!8287340))

(assert (=> b!7913702 m!8286970))

(declare-fun m!8287342 () Bool)

(assert (=> b!7913702 m!8287342))

(assert (=> b!7913702 m!8286980))

(assert (=> b!7913702 m!8287342))

(assert (=> b!7913702 m!8286980))

(declare-fun m!8287344 () Bool)

(assert (=> b!7913702 m!8287344))

(assert (=> b!7913333 d!2360989))

(declare-fun b!7913707 () Bool)

(declare-fun e!4671429 () Bool)

(declare-fun lt!2689083 () List!74518)

(assert (=> b!7913707 (= e!4671429 (or (not (= (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394) Nil!74394)) (= lt!2689083 Nil!74394)))))

(declare-fun b!7913706 () Bool)

(declare-fun res!3141020 () Bool)

(assert (=> b!7913706 (=> (not res!3141020) (not e!4671429))))

(assert (=> b!7913706 (= res!3141020 (= (size!43183 lt!2689083) (+ (size!43183 Nil!74394) (size!43183 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)))))))

(declare-fun b!7913705 () Bool)

(declare-fun e!4671430 () List!74518)

(assert (=> b!7913705 (= e!4671430 (Cons!74394 (h!80842 Nil!74394) (++!18224 (t!389969 Nil!74394) (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394))))))

(declare-fun d!2360991 () Bool)

(assert (=> d!2360991 e!4671429))

(declare-fun res!3141019 () Bool)

(assert (=> d!2360991 (=> (not res!3141019) (not e!4671429))))

(assert (=> d!2360991 (= res!3141019 (= (content!15755 lt!2689083) ((_ map or) (content!15755 Nil!74394) (content!15755 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)))))))

(assert (=> d!2360991 (= lt!2689083 e!4671430)))

(declare-fun c!1451995 () Bool)

(assert (=> d!2360991 (= c!1451995 ((_ is Nil!74394) Nil!74394))))

(assert (=> d!2360991 (= (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)) lt!2689083)))

(declare-fun b!7913704 () Bool)

(assert (=> b!7913704 (= e!4671430 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394))))

(assert (= (and d!2360991 c!1451995) b!7913704))

(assert (= (and d!2360991 (not c!1451995)) b!7913705))

(assert (= (and d!2360991 res!3141019) b!7913706))

(assert (= (and b!7913706 res!3141020) b!7913707))

(declare-fun m!8287346 () Bool)

(assert (=> b!7913706 m!8287346))

(assert (=> b!7913706 m!8286852))

(declare-fun m!8287348 () Bool)

(assert (=> b!7913706 m!8287348))

(declare-fun m!8287350 () Bool)

(assert (=> b!7913705 m!8287350))

(declare-fun m!8287352 () Bool)

(assert (=> d!2360991 m!8287352))

(assert (=> d!2360991 m!8287276))

(declare-fun m!8287354 () Bool)

(assert (=> d!2360991 m!8287354))

(assert (=> b!7913333 d!2360991))

(declare-fun b!7913711 () Bool)

(declare-fun e!4671431 () Bool)

(declare-fun lt!2689084 () List!74518)

(assert (=> b!7913711 (= e!4671431 (or (not (= (Cons!74394 (head!16180 input!1480) Nil!74394) Nil!74394)) (= lt!2689084 Nil!74394)))))

(declare-fun b!7913710 () Bool)

(declare-fun res!3141022 () Bool)

(assert (=> b!7913710 (=> (not res!3141022) (not e!4671431))))

(assert (=> b!7913710 (= res!3141022 (= (size!43183 lt!2689084) (+ (size!43183 Nil!74394) (size!43183 (Cons!74394 (head!16180 input!1480) Nil!74394)))))))

(declare-fun b!7913709 () Bool)

(declare-fun e!4671432 () List!74518)

(assert (=> b!7913709 (= e!4671432 (Cons!74394 (h!80842 Nil!74394) (++!18224 (t!389969 Nil!74394) (Cons!74394 (head!16180 input!1480) Nil!74394))))))

(declare-fun d!2360993 () Bool)

(assert (=> d!2360993 e!4671431))

(declare-fun res!3141021 () Bool)

(assert (=> d!2360993 (=> (not res!3141021) (not e!4671431))))

(assert (=> d!2360993 (= res!3141021 (= (content!15755 lt!2689084) ((_ map or) (content!15755 Nil!74394) (content!15755 (Cons!74394 (head!16180 input!1480) Nil!74394)))))))

(assert (=> d!2360993 (= lt!2689084 e!4671432)))

(declare-fun c!1451996 () Bool)

(assert (=> d!2360993 (= c!1451996 ((_ is Nil!74394) Nil!74394))))

(assert (=> d!2360993 (= (++!18224 Nil!74394 (Cons!74394 (head!16180 input!1480) Nil!74394)) lt!2689084)))

(declare-fun b!7913708 () Bool)

(assert (=> b!7913708 (= e!4671432 (Cons!74394 (head!16180 input!1480) Nil!74394))))

(assert (= (and d!2360993 c!1451996) b!7913708))

(assert (= (and d!2360993 (not c!1451996)) b!7913709))

(assert (= (and d!2360993 res!3141021) b!7913710))

(assert (= (and b!7913710 res!3141022) b!7913711))

(declare-fun m!8287356 () Bool)

(assert (=> b!7913710 m!8287356))

(assert (=> b!7913710 m!8286852))

(declare-fun m!8287358 () Bool)

(assert (=> b!7913710 m!8287358))

(declare-fun m!8287360 () Bool)

(assert (=> b!7913709 m!8287360))

(declare-fun m!8287362 () Bool)

(assert (=> d!2360993 m!8287362))

(assert (=> d!2360993 m!8287276))

(declare-fun m!8287364 () Bool)

(assert (=> d!2360993 m!8287364))

(assert (=> b!7913333 d!2360993))

(declare-fun d!2360995 () Bool)

(assert (=> d!2360995 (= (tail!15723 input!1480) (t!389969 input!1480))))

(assert (=> b!7913333 d!2360995))

(declare-fun d!2360997 () Bool)

(assert (=> d!2360997 (= (head!16180 input!1480) (h!80842 input!1480))))

(assert (=> b!7913333 d!2360997))

(declare-fun d!2360999 () Bool)

(assert (=> d!2360999 (= (head!16180 (getSuffix!3701 input!1480 Nil!74394)) (h!80842 (getSuffix!3701 input!1480 Nil!74394)))))

(assert (=> b!7913333 d!2360999))

(assert (=> b!7913333 d!2360955))

(assert (=> b!7913333 d!2360847))

(declare-fun d!2361001 () Bool)

(assert (=> d!2361001 (= (++!18224 (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394)) lt!2688901) input!1480)))

(declare-fun lt!2689087 () Unit!169491)

(declare-fun choose!59773 (List!74518 C!43092 List!74518 List!74518) Unit!169491)

(assert (=> d!2361001 (= lt!2689087 (choose!59773 Nil!74394 lt!2688895 lt!2688901 input!1480))))

(assert (=> d!2361001 (= (++!18224 Nil!74394 (Cons!74394 lt!2688895 lt!2688901)) input!1480)))

(assert (=> d!2361001 (= (lemmaMoveElementToOtherListKeepsConcatEq!3488 Nil!74394 lt!2688895 lt!2688901 input!1480) lt!2689087)))

(declare-fun bs!1968367 () Bool)

(assert (= bs!1968367 d!2361001))

(assert (=> bs!1968367 m!8286972))

(assert (=> bs!1968367 m!8286972))

(assert (=> bs!1968367 m!8286990))

(declare-fun m!8287366 () Bool)

(assert (=> bs!1968367 m!8287366))

(declare-fun m!8287368 () Bool)

(assert (=> bs!1968367 m!8287368))

(assert (=> b!7913333 d!2361001))

(declare-fun e!4671433 () Bool)

(declare-fun lt!2689088 () List!74518)

(declare-fun b!7913715 () Bool)

(assert (=> b!7913715 (= e!4671433 (or (not (= lt!2688901 Nil!74394)) (= lt!2689088 (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394)))))))

(declare-fun b!7913714 () Bool)

(declare-fun res!3141024 () Bool)

(assert (=> b!7913714 (=> (not res!3141024) (not e!4671433))))

(assert (=> b!7913714 (= res!3141024 (= (size!43183 lt!2689088) (+ (size!43183 (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394))) (size!43183 lt!2688901))))))

(declare-fun b!7913713 () Bool)

(declare-fun e!4671434 () List!74518)

(assert (=> b!7913713 (= e!4671434 (Cons!74394 (h!80842 (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394))) (++!18224 (t!389969 (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394))) lt!2688901)))))

(declare-fun d!2361003 () Bool)

(assert (=> d!2361003 e!4671433))

(declare-fun res!3141023 () Bool)

(assert (=> d!2361003 (=> (not res!3141023) (not e!4671433))))

(assert (=> d!2361003 (= res!3141023 (= (content!15755 lt!2689088) ((_ map or) (content!15755 (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394))) (content!15755 lt!2688901))))))

(assert (=> d!2361003 (= lt!2689088 e!4671434)))

(declare-fun c!1451997 () Bool)

(assert (=> d!2361003 (= c!1451997 ((_ is Nil!74394) (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394))))))

(assert (=> d!2361003 (= (++!18224 (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394)) lt!2688901) lt!2689088)))

(declare-fun b!7913712 () Bool)

(assert (=> b!7913712 (= e!4671434 lt!2688901)))

(assert (= (and d!2361003 c!1451997) b!7913712))

(assert (= (and d!2361003 (not c!1451997)) b!7913713))

(assert (= (and d!2361003 res!3141023) b!7913714))

(assert (= (and b!7913714 res!3141024) b!7913715))

(declare-fun m!8287370 () Bool)

(assert (=> b!7913714 m!8287370))

(assert (=> b!7913714 m!8286972))

(declare-fun m!8287372 () Bool)

(assert (=> b!7913714 m!8287372))

(declare-fun m!8287374 () Bool)

(assert (=> b!7913714 m!8287374))

(declare-fun m!8287376 () Bool)

(assert (=> b!7913713 m!8287376))

(declare-fun m!8287378 () Bool)

(assert (=> d!2361003 m!8287378))

(assert (=> d!2361003 m!8286972))

(declare-fun m!8287380 () Bool)

(assert (=> d!2361003 m!8287380))

(declare-fun m!8287382 () Bool)

(assert (=> d!2361003 m!8287382))

(assert (=> b!7913333 d!2361003))

(declare-fun d!2361005 () Bool)

(assert (=> d!2361005 (isPrefix!6488 (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)) input!1480)))

(declare-fun lt!2689091 () Unit!169491)

(declare-fun choose!59774 (List!74518 List!74518) Unit!169491)

(assert (=> d!2361005 (= lt!2689091 (choose!59774 Nil!74394 input!1480))))

(assert (=> d!2361005 (isPrefix!6488 Nil!74394 input!1480)))

(assert (=> d!2361005 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1266 Nil!74394 input!1480) lt!2689091)))

(declare-fun bs!1968368 () Bool)

(assert (= bs!1968368 d!2361005))

(assert (=> bs!1968368 m!8286956))

(assert (=> bs!1968368 m!8286988))

(declare-fun m!8287384 () Bool)

(assert (=> bs!1968368 m!8287384))

(assert (=> bs!1968368 m!8286956))

(assert (=> bs!1968368 m!8287268))

(assert (=> bs!1968368 m!8286970))

(assert (=> bs!1968368 m!8286982))

(assert (=> bs!1968368 m!8286970))

(assert (=> b!7913333 d!2361005))

(declare-fun d!2361007 () Bool)

(assert (=> d!2361007 (<= (size!43183 Nil!74394) (size!43183 input!1480))))

(declare-fun lt!2689094 () Unit!169491)

(declare-fun choose!59775 (List!74518 List!74518) Unit!169491)

(assert (=> d!2361007 (= lt!2689094 (choose!59775 Nil!74394 input!1480))))

(assert (=> d!2361007 (isPrefix!6488 Nil!74394 input!1480)))

(assert (=> d!2361007 (= (lemmaIsPrefixThenSmallerEqSize!1046 Nil!74394 input!1480) lt!2689094)))

(declare-fun bs!1968369 () Bool)

(assert (= bs!1968369 d!2361007))

(assert (=> bs!1968369 m!8286852))

(assert (=> bs!1968369 m!8286862))

(declare-fun m!8287386 () Bool)

(assert (=> bs!1968369 m!8287386))

(assert (=> bs!1968369 m!8287268))

(assert (=> b!7913333 d!2361007))

(declare-fun b!7913719 () Bool)

(declare-fun e!4671435 () Bool)

(declare-fun lt!2689095 () List!74518)

(assert (=> b!7913719 (= e!4671435 (or (not (= (Cons!74394 lt!2688895 Nil!74394) Nil!74394)) (= lt!2689095 Nil!74394)))))

(declare-fun b!7913718 () Bool)

(declare-fun res!3141026 () Bool)

(assert (=> b!7913718 (=> (not res!3141026) (not e!4671435))))

(assert (=> b!7913718 (= res!3141026 (= (size!43183 lt!2689095) (+ (size!43183 Nil!74394) (size!43183 (Cons!74394 lt!2688895 Nil!74394)))))))

(declare-fun b!7913717 () Bool)

(declare-fun e!4671436 () List!74518)

(assert (=> b!7913717 (= e!4671436 (Cons!74394 (h!80842 Nil!74394) (++!18224 (t!389969 Nil!74394) (Cons!74394 lt!2688895 Nil!74394))))))

(declare-fun d!2361009 () Bool)

(assert (=> d!2361009 e!4671435))

(declare-fun res!3141025 () Bool)

(assert (=> d!2361009 (=> (not res!3141025) (not e!4671435))))

(assert (=> d!2361009 (= res!3141025 (= (content!15755 lt!2689095) ((_ map or) (content!15755 Nil!74394) (content!15755 (Cons!74394 lt!2688895 Nil!74394)))))))

(assert (=> d!2361009 (= lt!2689095 e!4671436)))

(declare-fun c!1451998 () Bool)

(assert (=> d!2361009 (= c!1451998 ((_ is Nil!74394) Nil!74394))))

(assert (=> d!2361009 (= (++!18224 Nil!74394 (Cons!74394 lt!2688895 Nil!74394)) lt!2689095)))

(declare-fun b!7913716 () Bool)

(assert (=> b!7913716 (= e!4671436 (Cons!74394 lt!2688895 Nil!74394))))

(assert (= (and d!2361009 c!1451998) b!7913716))

(assert (= (and d!2361009 (not c!1451998)) b!7913717))

(assert (= (and d!2361009 res!3141025) b!7913718))

(assert (= (and b!7913718 res!3141026) b!7913719))

(declare-fun m!8287388 () Bool)

(assert (=> b!7913718 m!8287388))

(assert (=> b!7913718 m!8286852))

(declare-fun m!8287390 () Bool)

(assert (=> b!7913718 m!8287390))

(declare-fun m!8287392 () Bool)

(assert (=> b!7913717 m!8287392))

(declare-fun m!8287394 () Bool)

(assert (=> d!2361009 m!8287394))

(assert (=> d!2361009 m!8287276))

(declare-fun m!8287396 () Bool)

(assert (=> d!2361009 m!8287396))

(assert (=> b!7913333 d!2361009))

(assert (=> bm!734115 d!2360849))

(assert (=> d!2360839 d!2360845))

(declare-fun d!2361011 () Bool)

(assert (=> d!2361011 (= (sizeTr!472 input!1480 lt!2688814) (+ (size!43183 input!1480) lt!2688814))))

(declare-fun lt!2689098 () Unit!169491)

(declare-fun choose!59776 (List!74518 Int) Unit!169491)

(assert (=> d!2361011 (= lt!2689098 (choose!59776 input!1480 lt!2688814))))

(assert (=> d!2361011 (= (lemmaSizeTrEqualsSize!471 input!1480 lt!2688814) lt!2689098)))

(declare-fun bs!1968370 () Bool)

(assert (= bs!1968370 d!2361011))

(assert (=> bs!1968370 m!8286904))

(assert (=> bs!1968370 m!8286862))

(declare-fun m!8287398 () Bool)

(assert (=> bs!1968370 m!8287398))

(assert (=> d!2360839 d!2361011))

(declare-fun d!2361013 () Bool)

(declare-fun c!1452001 () Bool)

(assert (=> d!2361013 (= c!1452001 ((_ is Nil!74394) input!1480))))

(declare-fun e!4671439 () Int)

(assert (=> d!2361013 (= (sizeTr!472 input!1480 0) e!4671439)))

(declare-fun b!7913724 () Bool)

(assert (=> b!7913724 (= e!4671439 0)))

(declare-fun b!7913725 () Bool)

(assert (=> b!7913725 (= e!4671439 (sizeTr!472 (t!389969 input!1480) (+ 0 1)))))

(assert (= (and d!2361013 c!1452001) b!7913724))

(assert (= (and d!2361013 (not c!1452001)) b!7913725))

(declare-fun m!8287400 () Bool)

(assert (=> b!7913725 m!8287400))

(assert (=> d!2360839 d!2361013))

(declare-fun d!2361015 () Bool)

(declare-fun c!1452002 () Bool)

(assert (=> d!2361015 (= c!1452002 ((_ is Nil!74394) lt!2688817))))

(declare-fun e!4671440 () Int)

(assert (=> d!2361015 (= (sizeTr!472 lt!2688817 lt!2688818) e!4671440)))

(declare-fun b!7913726 () Bool)

(assert (=> b!7913726 (= e!4671440 lt!2688818)))

(declare-fun b!7913727 () Bool)

(assert (=> b!7913727 (= e!4671440 (sizeTr!472 (t!389969 lt!2688817) (+ lt!2688818 1)))))

(assert (= (and d!2361015 c!1452002) b!7913726))

(assert (= (and d!2361015 (not c!1452002)) b!7913727))

(declare-fun m!8287402 () Bool)

(assert (=> b!7913727 m!8287402))

(assert (=> d!2360839 d!2361015))

(declare-fun d!2361017 () Bool)

(declare-fun c!1452003 () Bool)

(assert (=> d!2361017 (= c!1452003 ((_ is Nil!74394) input!1480))))

(declare-fun e!4671441 () Int)

(assert (=> d!2361017 (= (sizeTr!472 input!1480 lt!2688814) e!4671441)))

(declare-fun b!7913728 () Bool)

(assert (=> b!7913728 (= e!4671441 lt!2688814)))

(declare-fun b!7913729 () Bool)

(assert (=> b!7913729 (= e!4671441 (sizeTr!472 (t!389969 input!1480) (+ lt!2688814 1)))))

(assert (= (and d!2361017 c!1452003) b!7913728))

(assert (= (and d!2361017 (not c!1452003)) b!7913729))

(declare-fun m!8287404 () Bool)

(assert (=> b!7913729 m!8287404))

(assert (=> d!2360839 d!2361017))

(declare-fun d!2361019 () Bool)

(declare-fun lt!2689099 () Int)

(assert (=> d!2361019 (>= lt!2689099 0)))

(declare-fun e!4671442 () Int)

(assert (=> d!2361019 (= lt!2689099 e!4671442)))

(declare-fun c!1452004 () Bool)

(assert (=> d!2361019 (= c!1452004 ((_ is Nil!74394) lt!2688817))))

(assert (=> d!2361019 (= (size!43183 lt!2688817) lt!2689099)))

(declare-fun b!7913730 () Bool)

(assert (=> b!7913730 (= e!4671442 0)))

(declare-fun b!7913731 () Bool)

(assert (=> b!7913731 (= e!4671442 (+ 1 (size!43183 (t!389969 lt!2688817))))))

(assert (= (and d!2361019 c!1452004) b!7913730))

(assert (= (and d!2361019 (not c!1452004)) b!7913731))

(declare-fun m!8287406 () Bool)

(assert (=> b!7913731 m!8287406))

(assert (=> d!2360839 d!2361019))

(declare-fun b!7913732 () Bool)

(declare-fun e!4671445 () tuple2!70472)

(declare-fun call!734140 () tuple2!70472)

(assert (=> b!7913732 (= e!4671445 call!734140)))

(declare-fun b!7913733 () Bool)

(declare-fun c!1452009 () Bool)

(declare-fun call!734138 () Bool)

(assert (=> b!7913733 (= c!1452009 call!734138)))

(declare-fun lt!2689102 () Unit!169491)

(declare-fun lt!2689123 () Unit!169491)

(assert (=> b!7913733 (= lt!2689102 lt!2689123)))

(declare-fun lt!2689105 () C!43092)

(declare-fun lt!2689111 () List!74518)

(assert (=> b!7913733 (= (++!18224 (++!18224 Nil!74394 (Cons!74394 lt!2689105 Nil!74394)) lt!2689111) input!1480)))

(assert (=> b!7913733 (= lt!2689123 (lemmaMoveElementToOtherListKeepsConcatEq!3488 Nil!74394 lt!2689105 lt!2689111 input!1480))))

(assert (=> b!7913733 (= lt!2689111 (tail!15723 input!1480))))

(assert (=> b!7913733 (= lt!2689105 (head!16180 input!1480))))

(declare-fun lt!2689113 () Unit!169491)

(declare-fun lt!2689115 () Unit!169491)

(assert (=> b!7913733 (= lt!2689113 lt!2689115)))

(assert (=> b!7913733 (isPrefix!6488 (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)) input!1480)))

(assert (=> b!7913733 (= lt!2689115 (lemmaAddHeadSuffixToPrefixStillPrefix!1266 Nil!74394 input!1480))))

(declare-fun lt!2689114 () Unit!169491)

(declare-fun lt!2689110 () Unit!169491)

(assert (=> b!7913733 (= lt!2689114 lt!2689110)))

(assert (=> b!7913733 (= lt!2689110 (lemmaAddHeadSuffixToPrefixStillPrefix!1266 Nil!74394 input!1480))))

(declare-fun lt!2689116 () List!74518)

(assert (=> b!7913733 (= lt!2689116 (++!18224 Nil!74394 (Cons!74394 (head!16180 input!1480) Nil!74394)))))

(declare-fun lt!2689121 () Unit!169491)

(declare-fun e!4671443 () Unit!169491)

(assert (=> b!7913733 (= lt!2689121 e!4671443)))

(declare-fun c!1452005 () Bool)

(assert (=> b!7913733 (= c!1452005 (= (size!43183 Nil!74394) (size!43183 input!1480)))))

(declare-fun lt!2689103 () Unit!169491)

(declare-fun lt!2689106 () Unit!169491)

(assert (=> b!7913733 (= lt!2689103 lt!2689106)))

(assert (=> b!7913733 (<= (size!43183 Nil!74394) (size!43183 input!1480))))

(assert (=> b!7913733 (= lt!2689106 (lemmaIsPrefixThenSmallerEqSize!1046 Nil!74394 input!1480))))

(declare-fun e!4671449 () tuple2!70472)

(assert (=> b!7913733 (= e!4671449 e!4671445)))

(declare-fun d!2361021 () Bool)

(declare-fun e!4671447 () Bool)

(assert (=> d!2361021 e!4671447))

(declare-fun res!3141028 () Bool)

(assert (=> d!2361021 (=> (not res!3141028) (not e!4671447))))

(declare-fun lt!2689108 () tuple2!70472)

(assert (=> d!2361021 (= res!3141028 (= (++!18224 (_1!38539 lt!2689108) (_2!38539 lt!2689108)) input!1480))))

(declare-fun e!4671444 () tuple2!70472)

(assert (=> d!2361021 (= lt!2689108 e!4671444)))

(declare-fun c!1452010 () Bool)

(assert (=> d!2361021 (= c!1452010 (lostCause!1932 (regex!8678 rule!156)))))

(declare-fun lt!2689109 () Unit!169491)

(declare-fun Unit!169499 () Unit!169491)

(assert (=> d!2361021 (= lt!2689109 Unit!169499)))

(assert (=> d!2361021 (= (getSuffix!3701 input!1480 Nil!74394) input!1480)))

(declare-fun lt!2689120 () Unit!169491)

(declare-fun lt!2689127 () Unit!169491)

(assert (=> d!2361021 (= lt!2689120 lt!2689127)))

(declare-fun lt!2689107 () List!74518)

(assert (=> d!2361021 (= input!1480 lt!2689107)))

(assert (=> d!2361021 (= lt!2689127 (lemmaSamePrefixThenSameSuffix!2948 Nil!74394 input!1480 Nil!74394 lt!2689107 input!1480))))

(assert (=> d!2361021 (= lt!2689107 (getSuffix!3701 input!1480 Nil!74394))))

(declare-fun lt!2689126 () Unit!169491)

(declare-fun lt!2689101 () Unit!169491)

(assert (=> d!2361021 (= lt!2689126 lt!2689101)))

(assert (=> d!2361021 (isPrefix!6488 Nil!74394 (++!18224 Nil!74394 input!1480))))

(assert (=> d!2361021 (= lt!2689101 (lemmaConcatTwoListThenFirstIsPrefix!3810 Nil!74394 input!1480))))

(assert (=> d!2361021 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2361021 (= (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 0 input!1480 input!1480 (sizeTr!472 input!1480 0)) lt!2689108)))

(declare-fun bm!734129 () Bool)

(declare-fun call!734135 () Regex!21381)

(declare-fun call!734134 () C!43092)

(assert (=> bm!734129 (= call!734135 (derivativeStep!6459 (regex!8678 rule!156) call!734134))))

(declare-fun bm!734130 () Bool)

(assert (=> bm!734130 (= call!734134 (head!16180 input!1480))))

(declare-fun bm!734131 () Bool)

(declare-fun call!734139 () Unit!169491)

(assert (=> bm!734131 (= call!734139 (lemmaIsPrefixRefl!3999 input!1480 input!1480))))

(declare-fun b!7913734 () Bool)

(declare-fun e!4671450 () tuple2!70472)

(assert (=> b!7913734 (= e!4671450 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun b!7913735 () Bool)

(assert (=> b!7913735 (= e!4671444 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun bm!734132 () Bool)

(declare-fun call!734137 () List!74518)

(assert (=> bm!734132 (= call!734140 (findLongestMatchInner!2186 call!734135 lt!2689116 (+ 0 1) call!734137 input!1480 (sizeTr!472 input!1480 0)))))

(declare-fun b!7913736 () Bool)

(declare-fun Unit!169500 () Unit!169491)

(assert (=> b!7913736 (= e!4671443 Unit!169500)))

(declare-fun lt!2689104 () Unit!169491)

(assert (=> b!7913736 (= lt!2689104 call!734139)))

(declare-fun call!734136 () Bool)

(assert (=> b!7913736 call!734136))

(declare-fun lt!2689100 () Unit!169491)

(assert (=> b!7913736 (= lt!2689100 lt!2689104)))

(declare-fun lt!2689122 () Unit!169491)

(declare-fun call!734141 () Unit!169491)

(assert (=> b!7913736 (= lt!2689122 call!734141)))

(assert (=> b!7913736 (= input!1480 Nil!74394)))

(declare-fun lt!2689118 () Unit!169491)

(assert (=> b!7913736 (= lt!2689118 lt!2689122)))

(assert (=> b!7913736 false))

(declare-fun b!7913737 () Bool)

(declare-fun Unit!169501 () Unit!169491)

(assert (=> b!7913737 (= e!4671443 Unit!169501)))

(declare-fun b!7913738 () Bool)

(declare-fun c!1452007 () Bool)

(assert (=> b!7913738 (= c!1452007 call!734138)))

(declare-fun lt!2689119 () Unit!169491)

(declare-fun lt!2689117 () Unit!169491)

(assert (=> b!7913738 (= lt!2689119 lt!2689117)))

(assert (=> b!7913738 (= input!1480 Nil!74394)))

(assert (=> b!7913738 (= lt!2689117 call!734141)))

(declare-fun lt!2689124 () Unit!169491)

(declare-fun lt!2689125 () Unit!169491)

(assert (=> b!7913738 (= lt!2689124 lt!2689125)))

(assert (=> b!7913738 call!734136))

(assert (=> b!7913738 (= lt!2689125 call!734139)))

(declare-fun e!4671448 () tuple2!70472)

(assert (=> b!7913738 (= e!4671449 e!4671448)))

(declare-fun b!7913739 () Bool)

(declare-fun lt!2689112 () tuple2!70472)

(assert (=> b!7913739 (= e!4671450 lt!2689112)))

(declare-fun b!7913740 () Bool)

(declare-fun e!4671446 () Bool)

(assert (=> b!7913740 (= e!4671447 e!4671446)))

(declare-fun res!3141027 () Bool)

(assert (=> b!7913740 (=> res!3141027 e!4671446)))

(assert (=> b!7913740 (= res!3141027 (isEmpty!42721 (_1!38539 lt!2689108)))))

(declare-fun bm!734133 () Bool)

(assert (=> bm!734133 (= call!734136 (isPrefix!6488 input!1480 input!1480))))

(declare-fun b!7913741 () Bool)

(assert (=> b!7913741 (= e!4671446 (>= (size!43183 (_1!38539 lt!2689108)) (size!43183 Nil!74394)))))

(declare-fun b!7913742 () Bool)

(assert (=> b!7913742 (= e!4671444 e!4671449)))

(declare-fun c!1452008 () Bool)

(assert (=> b!7913742 (= c!1452008 (= 0 (sizeTr!472 input!1480 0)))))

(declare-fun b!7913743 () Bool)

(assert (=> b!7913743 (= e!4671448 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun b!7913744 () Bool)

(assert (=> b!7913744 (= e!4671448 (tuple2!70473 Nil!74394 Nil!74394))))

(declare-fun bm!734134 () Bool)

(assert (=> bm!734134 (= call!734141 (lemmaIsPrefixSameLengthThenSameList!1581 input!1480 Nil!74394 input!1480))))

(declare-fun bm!734135 () Bool)

(assert (=> bm!734135 (= call!734138 (nullable!9519 (regex!8678 rule!156)))))

(declare-fun bm!734136 () Bool)

(assert (=> bm!734136 (= call!734137 (tail!15723 input!1480))))

(declare-fun b!7913745 () Bool)

(assert (=> b!7913745 (= e!4671445 e!4671450)))

(assert (=> b!7913745 (= lt!2689112 call!734140)))

(declare-fun c!1452006 () Bool)

(assert (=> b!7913745 (= c!1452006 (isEmpty!42721 (_1!38539 lt!2689112)))))

(assert (= (and d!2361021 c!1452010) b!7913735))

(assert (= (and d!2361021 (not c!1452010)) b!7913742))

(assert (= (and b!7913742 c!1452008) b!7913738))

(assert (= (and b!7913742 (not c!1452008)) b!7913733))

(assert (= (and b!7913738 c!1452007) b!7913744))

(assert (= (and b!7913738 (not c!1452007)) b!7913743))

(assert (= (and b!7913733 c!1452005) b!7913736))

(assert (= (and b!7913733 (not c!1452005)) b!7913737))

(assert (= (and b!7913733 c!1452009) b!7913745))

(assert (= (and b!7913733 (not c!1452009)) b!7913732))

(assert (= (and b!7913745 c!1452006) b!7913734))

(assert (= (and b!7913745 (not c!1452006)) b!7913739))

(assert (= (or b!7913745 b!7913732) bm!734130))

(assert (= (or b!7913745 b!7913732) bm!734136))

(assert (= (or b!7913745 b!7913732) bm!734129))

(assert (= (or b!7913745 b!7913732) bm!734132))

(assert (= (or b!7913738 b!7913733) bm!734135))

(assert (= (or b!7913738 b!7913736) bm!734133))

(assert (= (or b!7913738 b!7913736) bm!734131))

(assert (= (or b!7913738 b!7913736) bm!734134))

(assert (= (and d!2361021 res!3141028) b!7913740))

(assert (= (and b!7913740 (not res!3141027)) b!7913741))

(assert (=> bm!734134 m!8286954))

(assert (=> d!2361021 m!8286956))

(assert (=> d!2361021 m!8286958))

(assert (=> d!2361021 m!8286960))

(assert (=> d!2361021 m!8286958))

(declare-fun m!8287408 () Bool)

(assert (=> d!2361021 m!8287408))

(assert (=> d!2361021 m!8286914))

(declare-fun m!8287410 () Bool)

(assert (=> d!2361021 m!8287410))

(assert (=> d!2361021 m!8286966))

(assert (=> d!2361021 m!8286968))

(assert (=> b!7913733 m!8286970))

(assert (=> b!7913733 m!8286956))

(declare-fun m!8287412 () Bool)

(assert (=> b!7913733 m!8287412))

(assert (=> b!7913733 m!8286852))

(assert (=> b!7913733 m!8286974))

(assert (=> b!7913733 m!8286976))

(declare-fun m!8287414 () Bool)

(assert (=> b!7913733 m!8287414))

(assert (=> b!7913733 m!8286980))

(assert (=> b!7913733 m!8286862))

(assert (=> b!7913733 m!8286970))

(assert (=> b!7913733 m!8286982))

(assert (=> b!7913733 m!8286984))

(assert (=> b!7913733 m!8286986))

(assert (=> b!7913733 m!8286956))

(assert (=> b!7913733 m!8286988))

(assert (=> b!7913733 m!8287412))

(declare-fun m!8287416 () Bool)

(assert (=> b!7913733 m!8287416))

(declare-fun m!8287418 () Bool)

(assert (=> b!7913740 m!8287418))

(declare-fun m!8287420 () Bool)

(assert (=> bm!734129 m!8287420))

(assert (=> bm!734136 m!8286980))

(assert (=> bm!734132 m!8286910))

(declare-fun m!8287422 () Bool)

(assert (=> bm!734132 m!8287422))

(declare-fun m!8287424 () Bool)

(assert (=> b!7913741 m!8287424))

(assert (=> b!7913741 m!8286852))

(assert (=> bm!734133 m!8287000))

(declare-fun m!8287426 () Bool)

(assert (=> b!7913745 m!8287426))

(assert (=> bm!734135 m!8286922))

(assert (=> bm!734130 m!8286974))

(assert (=> bm!734131 m!8287004))

(assert (=> d!2360839 d!2361021))

(assert (=> d!2360839 d!2360945))

(declare-fun d!2361023 () Bool)

(assert (=> d!2361023 (= (sizeTr!472 lt!2688817 lt!2688818) (+ (size!43183 lt!2688817) lt!2688818))))

(declare-fun lt!2689128 () Unit!169491)

(assert (=> d!2361023 (= lt!2689128 (choose!59776 lt!2688817 lt!2688818))))

(assert (=> d!2361023 (= (lemmaSizeTrEqualsSize!471 lt!2688817 lt!2688818) lt!2689128)))

(declare-fun bs!1968371 () Bool)

(assert (= bs!1968371 d!2361023))

(assert (=> bs!1968371 m!8286920))

(assert (=> bs!1968371 m!8286906))

(declare-fun m!8287428 () Bool)

(assert (=> bs!1968371 m!8287428))

(assert (=> d!2360839 d!2361023))

(declare-fun b!7913749 () Bool)

(declare-fun e!4671451 () Bool)

(declare-fun lt!2689129 () List!74518)

(assert (=> b!7913749 (= e!4671451 (or (not (= (_2!38539 lt!2688815) Nil!74394)) (= lt!2689129 (_1!38539 lt!2688815))))))

(declare-fun b!7913748 () Bool)

(declare-fun res!3141030 () Bool)

(assert (=> b!7913748 (=> (not res!3141030) (not e!4671451))))

(assert (=> b!7913748 (= res!3141030 (= (size!43183 lt!2689129) (+ (size!43183 (_1!38539 lt!2688815)) (size!43183 (_2!38539 lt!2688815)))))))

(declare-fun b!7913747 () Bool)

(declare-fun e!4671452 () List!74518)

(assert (=> b!7913747 (= e!4671452 (Cons!74394 (h!80842 (_1!38539 lt!2688815)) (++!18224 (t!389969 (_1!38539 lt!2688815)) (_2!38539 lt!2688815))))))

(declare-fun d!2361025 () Bool)

(assert (=> d!2361025 e!4671451))

(declare-fun res!3141029 () Bool)

(assert (=> d!2361025 (=> (not res!3141029) (not e!4671451))))

(assert (=> d!2361025 (= res!3141029 (= (content!15755 lt!2689129) ((_ map or) (content!15755 (_1!38539 lt!2688815)) (content!15755 (_2!38539 lt!2688815)))))))

(assert (=> d!2361025 (= lt!2689129 e!4671452)))

(declare-fun c!1452011 () Bool)

(assert (=> d!2361025 (= c!1452011 ((_ is Nil!74394) (_1!38539 lt!2688815)))))

(assert (=> d!2361025 (= (++!18224 (_1!38539 lt!2688815) (_2!38539 lt!2688815)) lt!2689129)))

(declare-fun b!7913746 () Bool)

(assert (=> b!7913746 (= e!4671452 (_2!38539 lt!2688815))))

(assert (= (and d!2361025 c!1452011) b!7913746))

(assert (= (and d!2361025 (not c!1452011)) b!7913747))

(assert (= (and d!2361025 res!3141029) b!7913748))

(assert (= (and b!7913748 res!3141030) b!7913749))

(declare-fun m!8287430 () Bool)

(assert (=> b!7913748 m!8287430))

(declare-fun m!8287432 () Bool)

(assert (=> b!7913748 m!8287432))

(declare-fun m!8287434 () Bool)

(assert (=> b!7913748 m!8287434))

(declare-fun m!8287436 () Bool)

(assert (=> b!7913747 m!8287436))

(declare-fun m!8287438 () Bool)

(assert (=> d!2361025 m!8287438))

(declare-fun m!8287440 () Bool)

(assert (=> d!2361025 m!8287440))

(declare-fun m!8287442 () Bool)

(assert (=> d!2361025 m!8287442))

(assert (=> d!2360839 d!2361025))

(assert (=> bm!734081 d!2360997))

(declare-fun d!2361027 () Bool)

(declare-fun c!1452012 () Bool)

(assert (=> d!2361027 (= c!1452012 ((_ is Node!15852) (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))))

(declare-fun e!4671453 () Bool)

(assert (=> d!2361027 (= (inv!95478 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))) e!4671453)))

(declare-fun b!7913750 () Bool)

(assert (=> b!7913750 (= e!4671453 (inv!95482 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))))

(declare-fun b!7913751 () Bool)

(declare-fun e!4671454 () Bool)

(assert (=> b!7913751 (= e!4671453 e!4671454)))

(declare-fun res!3141031 () Bool)

(assert (=> b!7913751 (= res!3141031 (not ((_ is Leaf!30159) (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))))))))

(assert (=> b!7913751 (=> res!3141031 e!4671454)))

(declare-fun b!7913752 () Bool)

(assert (=> b!7913752 (= e!4671454 (inv!95483 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))))

(assert (= (and d!2361027 c!1452012) b!7913750))

(assert (= (and d!2361027 (not c!1452012)) b!7913751))

(assert (= (and b!7913751 (not res!3141031)) b!7913752))

(declare-fun m!8287444 () Bool)

(assert (=> b!7913750 m!8287444))

(declare-fun m!8287446 () Bool)

(assert (=> b!7913752 m!8287446))

(assert (=> b!7913400 d!2361027))

(declare-fun b!7913753 () Bool)

(declare-fun e!4671455 () Bool)

(assert (=> b!7913753 (= e!4671455 (not (= (head!16180 (tail!15723 lt!2688783)) (c!1451877 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783))))))))

(declare-fun b!7913754 () Bool)

(declare-fun e!4671460 () Bool)

(assert (=> b!7913754 (= e!4671460 (matchR!10700 (derivativeStep!6459 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783)) (head!16180 (tail!15723 lt!2688783))) (tail!15723 (tail!15723 lt!2688783))))))

(declare-fun b!7913755 () Bool)

(declare-fun res!3141035 () Bool)

(assert (=> b!7913755 (=> res!3141035 e!4671455)))

(assert (=> b!7913755 (= res!3141035 (not (isEmpty!42721 (tail!15723 (tail!15723 lt!2688783)))))))

(declare-fun b!7913756 () Bool)

(declare-fun e!4671459 () Bool)

(assert (=> b!7913756 (= e!4671459 (= (head!16180 (tail!15723 lt!2688783)) (c!1451877 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783)))))))

(declare-fun b!7913757 () Bool)

(declare-fun e!4671456 () Bool)

(declare-fun e!4671457 () Bool)

(assert (=> b!7913757 (= e!4671456 e!4671457)))

(declare-fun res!3141038 () Bool)

(assert (=> b!7913757 (=> (not res!3141038) (not e!4671457))))

(declare-fun lt!2689130 () Bool)

(assert (=> b!7913757 (= res!3141038 (not lt!2689130))))

(declare-fun b!7913758 () Bool)

(declare-fun res!3141032 () Bool)

(assert (=> b!7913758 (=> res!3141032 e!4671456)))

(assert (=> b!7913758 (= res!3141032 (not ((_ is ElementMatch!21381) (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783)))))))

(declare-fun e!4671461 () Bool)

(assert (=> b!7913758 (= e!4671461 e!4671456)))

(declare-fun b!7913759 () Bool)

(declare-fun res!3141037 () Bool)

(assert (=> b!7913759 (=> res!3141037 e!4671456)))

(assert (=> b!7913759 (= res!3141037 e!4671459)))

(declare-fun res!3141036 () Bool)

(assert (=> b!7913759 (=> (not res!3141036) (not e!4671459))))

(assert (=> b!7913759 (= res!3141036 lt!2689130)))

(declare-fun b!7913761 () Bool)

(declare-fun res!3141039 () Bool)

(assert (=> b!7913761 (=> (not res!3141039) (not e!4671459))))

(assert (=> b!7913761 (= res!3141039 (isEmpty!42721 (tail!15723 (tail!15723 lt!2688783))))))

(declare-fun b!7913762 () Bool)

(assert (=> b!7913762 (= e!4671460 (nullable!9519 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783))))))

(declare-fun b!7913763 () Bool)

(declare-fun e!4671458 () Bool)

(declare-fun call!734142 () Bool)

(assert (=> b!7913763 (= e!4671458 (= lt!2689130 call!734142))))

(declare-fun b!7913764 () Bool)

(assert (=> b!7913764 (= e!4671457 e!4671455)))

(declare-fun res!3141034 () Bool)

(assert (=> b!7913764 (=> res!3141034 e!4671455)))

(assert (=> b!7913764 (= res!3141034 call!734142)))

(declare-fun b!7913765 () Bool)

(assert (=> b!7913765 (= e!4671461 (not lt!2689130))))

(declare-fun bm!734137 () Bool)

(assert (=> bm!734137 (= call!734142 (isEmpty!42721 (tail!15723 lt!2688783)))))

(declare-fun b!7913766 () Bool)

(declare-fun res!3141033 () Bool)

(assert (=> b!7913766 (=> (not res!3141033) (not e!4671459))))

(assert (=> b!7913766 (= res!3141033 (not call!734142))))

(declare-fun b!7913760 () Bool)

(assert (=> b!7913760 (= e!4671458 e!4671461)))

(declare-fun c!1452015 () Bool)

(assert (=> b!7913760 (= c!1452015 ((_ is EmptyLang!21381) (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783))))))

(declare-fun d!2361029 () Bool)

(assert (=> d!2361029 e!4671458))

(declare-fun c!1452013 () Bool)

(assert (=> d!2361029 (= c!1452013 ((_ is EmptyExpr!21381) (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783))))))

(assert (=> d!2361029 (= lt!2689130 e!4671460)))

(declare-fun c!1452014 () Bool)

(assert (=> d!2361029 (= c!1452014 (isEmpty!42721 (tail!15723 lt!2688783)))))

(assert (=> d!2361029 (validRegex!11684 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783)))))

(assert (=> d!2361029 (= (matchR!10700 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783)) (tail!15723 lt!2688783)) lt!2689130)))

(assert (= (and d!2361029 c!1452014) b!7913762))

(assert (= (and d!2361029 (not c!1452014)) b!7913754))

(assert (= (and d!2361029 c!1452013) b!7913763))

(assert (= (and d!2361029 (not c!1452013)) b!7913760))

(assert (= (and b!7913760 c!1452015) b!7913765))

(assert (= (and b!7913760 (not c!1452015)) b!7913758))

(assert (= (and b!7913758 (not res!3141032)) b!7913759))

(assert (= (and b!7913759 res!3141036) b!7913766))

(assert (= (and b!7913766 res!3141033) b!7913761))

(assert (= (and b!7913761 res!3141039) b!7913756))

(assert (= (and b!7913759 (not res!3141037)) b!7913757))

(assert (= (and b!7913757 res!3141038) b!7913764))

(assert (= (and b!7913764 (not res!3141034)) b!7913755))

(assert (= (and b!7913755 (not res!3141035)) b!7913753))

(assert (= (or b!7913763 b!7913766 b!7913764) bm!734137))

(assert (=> d!2361029 m!8287104))

(assert (=> d!2361029 m!8287108))

(assert (=> d!2361029 m!8287102))

(declare-fun m!8287448 () Bool)

(assert (=> d!2361029 m!8287448))

(assert (=> b!7913754 m!8287104))

(declare-fun m!8287450 () Bool)

(assert (=> b!7913754 m!8287450))

(assert (=> b!7913754 m!8287102))

(assert (=> b!7913754 m!8287450))

(declare-fun m!8287452 () Bool)

(assert (=> b!7913754 m!8287452))

(assert (=> b!7913754 m!8287104))

(declare-fun m!8287454 () Bool)

(assert (=> b!7913754 m!8287454))

(assert (=> b!7913754 m!8287452))

(assert (=> b!7913754 m!8287454))

(declare-fun m!8287456 () Bool)

(assert (=> b!7913754 m!8287456))

(assert (=> b!7913756 m!8287104))

(assert (=> b!7913756 m!8287450))

(assert (=> b!7913761 m!8287104))

(assert (=> b!7913761 m!8287454))

(assert (=> b!7913761 m!8287454))

(declare-fun m!8287458 () Bool)

(assert (=> b!7913761 m!8287458))

(assert (=> bm!734137 m!8287104))

(assert (=> bm!734137 m!8287108))

(assert (=> b!7913755 m!8287104))

(assert (=> b!7913755 m!8287454))

(assert (=> b!7913755 m!8287454))

(assert (=> b!7913755 m!8287458))

(assert (=> b!7913753 m!8287104))

(assert (=> b!7913753 m!8287450))

(assert (=> b!7913762 m!8287102))

(declare-fun m!8287460 () Bool)

(assert (=> b!7913762 m!8287460))

(assert (=> b!7913432 d!2361029))

(declare-fun b!7913787 () Bool)

(declare-fun e!4671475 () Regex!21381)

(assert (=> b!7913787 (= e!4671475 (ite (= (head!16180 lt!2688783) (c!1451877 (regex!8678 rule!156))) EmptyExpr!21381 EmptyLang!21381))))

(declare-fun d!2361031 () Bool)

(declare-fun lt!2689133 () Regex!21381)

(assert (=> d!2361031 (validRegex!11684 lt!2689133)))

(declare-fun e!4671474 () Regex!21381)

(assert (=> d!2361031 (= lt!2689133 e!4671474)))

(declare-fun c!1452028 () Bool)

(assert (=> d!2361031 (= c!1452028 (or ((_ is EmptyExpr!21381) (regex!8678 rule!156)) ((_ is EmptyLang!21381) (regex!8678 rule!156))))))

(assert (=> d!2361031 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2361031 (= (derivativeStep!6459 (regex!8678 rule!156) (head!16180 lt!2688783)) lt!2689133)))

(declare-fun c!1452026 () Bool)

(declare-fun c!1452030 () Bool)

(declare-fun call!734154 () Regex!21381)

(declare-fun bm!734146 () Bool)

(assert (=> bm!734146 (= call!734154 (derivativeStep!6459 (ite c!1452030 (regOne!43275 (regex!8678 rule!156)) (ite c!1452026 (reg!21710 (regex!8678 rule!156)) (regOne!43274 (regex!8678 rule!156)))) (head!16180 lt!2688783)))))

(declare-fun b!7913788 () Bool)

(declare-fun c!1452029 () Bool)

(assert (=> b!7913788 (= c!1452029 (nullable!9519 (regOne!43274 (regex!8678 rule!156))))))

(declare-fun e!4671476 () Regex!21381)

(declare-fun e!4671473 () Regex!21381)

(assert (=> b!7913788 (= e!4671476 e!4671473)))

(declare-fun b!7913789 () Bool)

(assert (=> b!7913789 (= c!1452030 ((_ is Union!21381) (regex!8678 rule!156)))))

(declare-fun e!4671472 () Regex!21381)

(assert (=> b!7913789 (= e!4671475 e!4671472)))

(declare-fun bm!734147 () Bool)

(declare-fun call!734153 () Regex!21381)

(assert (=> bm!734147 (= call!734153 call!734154)))

(declare-fun b!7913790 () Bool)

(declare-fun call!734152 () Regex!21381)

(assert (=> b!7913790 (= e!4671472 (Union!21381 call!734154 call!734152))))

(declare-fun b!7913791 () Bool)

(assert (=> b!7913791 (= e!4671474 EmptyLang!21381)))

(declare-fun bm!734148 () Bool)

(declare-fun call!734151 () Regex!21381)

(assert (=> bm!734148 (= call!734151 call!734152)))

(declare-fun bm!734149 () Bool)

(assert (=> bm!734149 (= call!734152 (derivativeStep!6459 (ite c!1452030 (regTwo!43275 (regex!8678 rule!156)) (ite c!1452029 (regTwo!43274 (regex!8678 rule!156)) (regOne!43274 (regex!8678 rule!156)))) (head!16180 lt!2688783)))))

(declare-fun b!7913792 () Bool)

(assert (=> b!7913792 (= e!4671472 e!4671476)))

(assert (=> b!7913792 (= c!1452026 ((_ is Star!21381) (regex!8678 rule!156)))))

(declare-fun b!7913793 () Bool)

(assert (=> b!7913793 (= e!4671476 (Concat!30376 call!734153 (regex!8678 rule!156)))))

(declare-fun b!7913794 () Bool)

(assert (=> b!7913794 (= e!4671473 (Union!21381 (Concat!30376 call!734151 (regTwo!43274 (regex!8678 rule!156))) EmptyLang!21381))))

(declare-fun b!7913795 () Bool)

(assert (=> b!7913795 (= e!4671473 (Union!21381 (Concat!30376 call!734153 (regTwo!43274 (regex!8678 rule!156))) call!734151))))

(declare-fun b!7913796 () Bool)

(assert (=> b!7913796 (= e!4671474 e!4671475)))

(declare-fun c!1452027 () Bool)

(assert (=> b!7913796 (= c!1452027 ((_ is ElementMatch!21381) (regex!8678 rule!156)))))

(assert (= (and d!2361031 c!1452028) b!7913791))

(assert (= (and d!2361031 (not c!1452028)) b!7913796))

(assert (= (and b!7913796 c!1452027) b!7913787))

(assert (= (and b!7913796 (not c!1452027)) b!7913789))

(assert (= (and b!7913789 c!1452030) b!7913790))

(assert (= (and b!7913789 (not c!1452030)) b!7913792))

(assert (= (and b!7913792 c!1452026) b!7913793))

(assert (= (and b!7913792 (not c!1452026)) b!7913788))

(assert (= (and b!7913788 c!1452029) b!7913795))

(assert (= (and b!7913788 (not c!1452029)) b!7913794))

(assert (= (or b!7913795 b!7913794) bm!734148))

(assert (= (or b!7913793 b!7913795) bm!734147))

(assert (= (or b!7913790 bm!734147) bm!734146))

(assert (= (or b!7913790 bm!734148) bm!734149))

(declare-fun m!8287462 () Bool)

(assert (=> d!2361031 m!8287462))

(assert (=> d!2361031 m!8286914))

(assert (=> bm!734146 m!8287100))

(declare-fun m!8287464 () Bool)

(assert (=> bm!734146 m!8287464))

(declare-fun m!8287466 () Bool)

(assert (=> b!7913788 m!8287466))

(assert (=> bm!734149 m!8287100))

(declare-fun m!8287468 () Bool)

(assert (=> bm!734149 m!8287468))

(assert (=> b!7913432 d!2361031))

(declare-fun d!2361033 () Bool)

(assert (=> d!2361033 (= (head!16180 lt!2688783) (h!80842 lt!2688783))))

(assert (=> b!7913432 d!2361033))

(declare-fun d!2361035 () Bool)

(assert (=> d!2361035 (= (tail!15723 lt!2688783) (t!389969 lt!2688783))))

(assert (=> b!7913432 d!2361035))

(declare-fun b!7913797 () Bool)

(declare-fun e!4671477 () Bool)

(assert (=> b!7913797 (= e!4671477 (not (= (head!16180 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))) (c!1451877 (regex!8678 rule!156)))))))

(declare-fun b!7913798 () Bool)

(declare-fun e!4671482 () Bool)

(assert (=> b!7913798 (= e!4671482 (matchR!10700 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480))))) (tail!15723 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480))))))))

(declare-fun b!7913799 () Bool)

(declare-fun res!3141043 () Bool)

(assert (=> b!7913799 (=> res!3141043 e!4671477)))

(assert (=> b!7913799 (= res!3141043 (not (isEmpty!42721 (tail!15723 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))))))))

(declare-fun b!7913800 () Bool)

(declare-fun e!4671481 () Bool)

(assert (=> b!7913800 (= e!4671481 (= (head!16180 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))) (c!1451877 (regex!8678 rule!156))))))

(declare-fun b!7913801 () Bool)

(declare-fun e!4671478 () Bool)

(declare-fun e!4671479 () Bool)

(assert (=> b!7913801 (= e!4671478 e!4671479)))

(declare-fun res!3141046 () Bool)

(assert (=> b!7913801 (=> (not res!3141046) (not e!4671479))))

(declare-fun lt!2689134 () Bool)

(assert (=> b!7913801 (= res!3141046 (not lt!2689134))))

(declare-fun b!7913802 () Bool)

(declare-fun res!3141040 () Bool)

(assert (=> b!7913802 (=> res!3141040 e!4671478)))

(assert (=> b!7913802 (= res!3141040 (not ((_ is ElementMatch!21381) (regex!8678 rule!156))))))

(declare-fun e!4671483 () Bool)

(assert (=> b!7913802 (= e!4671483 e!4671478)))

(declare-fun b!7913803 () Bool)

(declare-fun res!3141045 () Bool)

(assert (=> b!7913803 (=> res!3141045 e!4671478)))

(assert (=> b!7913803 (= res!3141045 e!4671481)))

(declare-fun res!3141044 () Bool)

(assert (=> b!7913803 (=> (not res!3141044) (not e!4671481))))

(assert (=> b!7913803 (= res!3141044 lt!2689134)))

(declare-fun b!7913805 () Bool)

(declare-fun res!3141047 () Bool)

(assert (=> b!7913805 (=> (not res!3141047) (not e!4671481))))

(assert (=> b!7913805 (= res!3141047 (isEmpty!42721 (tail!15723 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480))))))))

(declare-fun b!7913806 () Bool)

(assert (=> b!7913806 (= e!4671482 (nullable!9519 (regex!8678 rule!156)))))

(declare-fun b!7913807 () Bool)

(declare-fun e!4671480 () Bool)

(declare-fun call!734155 () Bool)

(assert (=> b!7913807 (= e!4671480 (= lt!2689134 call!734155))))

(declare-fun b!7913808 () Bool)

(assert (=> b!7913808 (= e!4671479 e!4671477)))

(declare-fun res!3141042 () Bool)

(assert (=> b!7913808 (=> res!3141042 e!4671477)))

(assert (=> b!7913808 (= res!3141042 call!734155)))

(declare-fun b!7913809 () Bool)

(assert (=> b!7913809 (= e!4671483 (not lt!2689134))))

(declare-fun bm!734150 () Bool)

(assert (=> bm!734150 (= call!734155 (isEmpty!42721 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))))))

(declare-fun b!7913810 () Bool)

(declare-fun res!3141041 () Bool)

(assert (=> b!7913810 (=> (not res!3141041) (not e!4671481))))

(assert (=> b!7913810 (= res!3141041 (not call!734155))))

(declare-fun b!7913804 () Bool)

(assert (=> b!7913804 (= e!4671480 e!4671483)))

(declare-fun c!1452033 () Bool)

(assert (=> b!7913804 (= c!1452033 ((_ is EmptyLang!21381) (regex!8678 rule!156)))))

(declare-fun d!2361037 () Bool)

(assert (=> d!2361037 e!4671480))

(declare-fun c!1452031 () Bool)

(assert (=> d!2361037 (= c!1452031 ((_ is EmptyExpr!21381) (regex!8678 rule!156)))))

(assert (=> d!2361037 (= lt!2689134 e!4671482)))

(declare-fun c!1452032 () Bool)

(assert (=> d!2361037 (= c!1452032 (isEmpty!42721 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))))))

(assert (=> d!2361037 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2361037 (= (matchR!10700 (regex!8678 rule!156) (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))) lt!2689134)))

(assert (= (and d!2361037 c!1452032) b!7913806))

(assert (= (and d!2361037 (not c!1452032)) b!7913798))

(assert (= (and d!2361037 c!1452031) b!7913807))

(assert (= (and d!2361037 (not c!1452031)) b!7913804))

(assert (= (and b!7913804 c!1452033) b!7913809))

(assert (= (and b!7913804 (not c!1452033)) b!7913802))

(assert (= (and b!7913802 (not res!3141040)) b!7913803))

(assert (= (and b!7913803 res!3141044) b!7913810))

(assert (= (and b!7913810 res!3141041) b!7913805))

(assert (= (and b!7913805 res!3141047) b!7913800))

(assert (= (and b!7913803 (not res!3141045)) b!7913801))

(assert (= (and b!7913801 res!3141046) b!7913808))

(assert (= (and b!7913808 (not res!3141042)) b!7913799))

(assert (= (and b!7913799 (not res!3141043)) b!7913797))

(assert (= (or b!7913807 b!7913810 b!7913808) bm!734150))

(assert (=> d!2361037 m!8287010))

(assert (=> d!2361037 m!8286914))

(declare-fun m!8287470 () Bool)

(assert (=> b!7913798 m!8287470))

(assert (=> b!7913798 m!8287470))

(declare-fun m!8287472 () Bool)

(assert (=> b!7913798 m!8287472))

(declare-fun m!8287474 () Bool)

(assert (=> b!7913798 m!8287474))

(assert (=> b!7913798 m!8287472))

(assert (=> b!7913798 m!8287474))

(declare-fun m!8287476 () Bool)

(assert (=> b!7913798 m!8287476))

(assert (=> b!7913800 m!8287470))

(assert (=> b!7913805 m!8287474))

(assert (=> b!7913805 m!8287474))

(declare-fun m!8287478 () Bool)

(assert (=> b!7913805 m!8287478))

(assert (=> bm!734150 m!8287010))

(assert (=> b!7913799 m!8287474))

(assert (=> b!7913799 m!8287474))

(assert (=> b!7913799 m!8287478))

(assert (=> b!7913797 m!8287470))

(assert (=> b!7913806 m!8286922))

(assert (=> b!7913348 d!2361037))

(declare-fun b!7913811 () Bool)

(declare-fun e!4671486 () tuple2!70472)

(declare-fun call!734162 () tuple2!70472)

(assert (=> b!7913811 (= e!4671486 call!734162)))

(declare-fun b!7913812 () Bool)

(declare-fun c!1452038 () Bool)

(declare-fun call!734160 () Bool)

(assert (=> b!7913812 (= c!1452038 call!734160)))

(declare-fun lt!2689137 () Unit!169491)

(declare-fun lt!2689158 () Unit!169491)

(assert (=> b!7913812 (= lt!2689137 lt!2689158)))

(declare-fun lt!2689140 () C!43092)

(declare-fun lt!2689146 () List!74518)

(assert (=> b!7913812 (= (++!18224 (++!18224 Nil!74394 (Cons!74394 lt!2689140 Nil!74394)) lt!2689146) input!1480)))

(assert (=> b!7913812 (= lt!2689158 (lemmaMoveElementToOtherListKeepsConcatEq!3488 Nil!74394 lt!2689140 lt!2689146 input!1480))))

(assert (=> b!7913812 (= lt!2689146 (tail!15723 input!1480))))

(assert (=> b!7913812 (= lt!2689140 (head!16180 input!1480))))

(declare-fun lt!2689148 () Unit!169491)

(declare-fun lt!2689150 () Unit!169491)

(assert (=> b!7913812 (= lt!2689148 lt!2689150)))

(assert (=> b!7913812 (isPrefix!6488 (++!18224 Nil!74394 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 Nil!74394)) Nil!74394)) input!1480)))

(assert (=> b!7913812 (= lt!2689150 (lemmaAddHeadSuffixToPrefixStillPrefix!1266 Nil!74394 input!1480))))

(declare-fun lt!2689149 () Unit!169491)

(declare-fun lt!2689145 () Unit!169491)

(assert (=> b!7913812 (= lt!2689149 lt!2689145)))

(assert (=> b!7913812 (= lt!2689145 (lemmaAddHeadSuffixToPrefixStillPrefix!1266 Nil!74394 input!1480))))

(declare-fun lt!2689151 () List!74518)

(assert (=> b!7913812 (= lt!2689151 (++!18224 Nil!74394 (Cons!74394 (head!16180 input!1480) Nil!74394)))))

(declare-fun lt!2689156 () Unit!169491)

(declare-fun e!4671484 () Unit!169491)

(assert (=> b!7913812 (= lt!2689156 e!4671484)))

(declare-fun c!1452034 () Bool)

(assert (=> b!7913812 (= c!1452034 (= (size!43183 Nil!74394) (size!43183 input!1480)))))

(declare-fun lt!2689138 () Unit!169491)

(declare-fun lt!2689141 () Unit!169491)

(assert (=> b!7913812 (= lt!2689138 lt!2689141)))

(assert (=> b!7913812 (<= (size!43183 Nil!74394) (size!43183 input!1480))))

(assert (=> b!7913812 (= lt!2689141 (lemmaIsPrefixThenSmallerEqSize!1046 Nil!74394 input!1480))))

(declare-fun e!4671490 () tuple2!70472)

(assert (=> b!7913812 (= e!4671490 e!4671486)))

(declare-fun d!2361039 () Bool)

(declare-fun e!4671488 () Bool)

(assert (=> d!2361039 e!4671488))

(declare-fun res!3141049 () Bool)

(assert (=> d!2361039 (=> (not res!3141049) (not e!4671488))))

(declare-fun lt!2689143 () tuple2!70472)

(assert (=> d!2361039 (= res!3141049 (= (++!18224 (_1!38539 lt!2689143) (_2!38539 lt!2689143)) input!1480))))

(declare-fun e!4671485 () tuple2!70472)

(assert (=> d!2361039 (= lt!2689143 e!4671485)))

(declare-fun c!1452039 () Bool)

(assert (=> d!2361039 (= c!1452039 (lostCause!1932 (regex!8678 rule!156)))))

(declare-fun lt!2689144 () Unit!169491)

(declare-fun Unit!169502 () Unit!169491)

(assert (=> d!2361039 (= lt!2689144 Unit!169502)))

(assert (=> d!2361039 (= (getSuffix!3701 input!1480 Nil!74394) input!1480)))

(declare-fun lt!2689155 () Unit!169491)

(declare-fun lt!2689162 () Unit!169491)

(assert (=> d!2361039 (= lt!2689155 lt!2689162)))

(declare-fun lt!2689142 () List!74518)

(assert (=> d!2361039 (= input!1480 lt!2689142)))

(assert (=> d!2361039 (= lt!2689162 (lemmaSamePrefixThenSameSuffix!2948 Nil!74394 input!1480 Nil!74394 lt!2689142 input!1480))))

(assert (=> d!2361039 (= lt!2689142 (getSuffix!3701 input!1480 Nil!74394))))

(declare-fun lt!2689161 () Unit!169491)

(declare-fun lt!2689136 () Unit!169491)

(assert (=> d!2361039 (= lt!2689161 lt!2689136)))

(assert (=> d!2361039 (isPrefix!6488 Nil!74394 (++!18224 Nil!74394 input!1480))))

(assert (=> d!2361039 (= lt!2689136 (lemmaConcatTwoListThenFirstIsPrefix!3810 Nil!74394 input!1480))))

(assert (=> d!2361039 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2361039 (= (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)) lt!2689143)))

(declare-fun bm!734151 () Bool)

(declare-fun call!734157 () Regex!21381)

(declare-fun call!734156 () C!43092)

(assert (=> bm!734151 (= call!734157 (derivativeStep!6459 (regex!8678 rule!156) call!734156))))

(declare-fun bm!734152 () Bool)

(assert (=> bm!734152 (= call!734156 (head!16180 input!1480))))

(declare-fun bm!734153 () Bool)

(declare-fun call!734161 () Unit!169491)

(assert (=> bm!734153 (= call!734161 (lemmaIsPrefixRefl!3999 input!1480 input!1480))))

(declare-fun b!7913813 () Bool)

(declare-fun e!4671491 () tuple2!70472)

(assert (=> b!7913813 (= e!4671491 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun b!7913814 () Bool)

(assert (=> b!7913814 (= e!4671485 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun call!734159 () List!74518)

(declare-fun bm!734154 () Bool)

(assert (=> bm!734154 (= call!734162 (findLongestMatchInner!2186 call!734157 lt!2689151 (+ (size!43183 Nil!74394) 1) call!734159 input!1480 (size!43183 input!1480)))))

(declare-fun b!7913815 () Bool)

(declare-fun Unit!169503 () Unit!169491)

(assert (=> b!7913815 (= e!4671484 Unit!169503)))

(declare-fun lt!2689139 () Unit!169491)

(assert (=> b!7913815 (= lt!2689139 call!734161)))

(declare-fun call!734158 () Bool)

(assert (=> b!7913815 call!734158))

(declare-fun lt!2689135 () Unit!169491)

(assert (=> b!7913815 (= lt!2689135 lt!2689139)))

(declare-fun lt!2689157 () Unit!169491)

(declare-fun call!734163 () Unit!169491)

(assert (=> b!7913815 (= lt!2689157 call!734163)))

(assert (=> b!7913815 (= input!1480 Nil!74394)))

(declare-fun lt!2689153 () Unit!169491)

(assert (=> b!7913815 (= lt!2689153 lt!2689157)))

(assert (=> b!7913815 false))

(declare-fun b!7913816 () Bool)

(declare-fun Unit!169504 () Unit!169491)

(assert (=> b!7913816 (= e!4671484 Unit!169504)))

(declare-fun b!7913817 () Bool)

(declare-fun c!1452036 () Bool)

(assert (=> b!7913817 (= c!1452036 call!734160)))

(declare-fun lt!2689154 () Unit!169491)

(declare-fun lt!2689152 () Unit!169491)

(assert (=> b!7913817 (= lt!2689154 lt!2689152)))

(assert (=> b!7913817 (= input!1480 Nil!74394)))

(assert (=> b!7913817 (= lt!2689152 call!734163)))

(declare-fun lt!2689159 () Unit!169491)

(declare-fun lt!2689160 () Unit!169491)

(assert (=> b!7913817 (= lt!2689159 lt!2689160)))

(assert (=> b!7913817 call!734158))

(assert (=> b!7913817 (= lt!2689160 call!734161)))

(declare-fun e!4671489 () tuple2!70472)

(assert (=> b!7913817 (= e!4671490 e!4671489)))

(declare-fun b!7913818 () Bool)

(declare-fun lt!2689147 () tuple2!70472)

(assert (=> b!7913818 (= e!4671491 lt!2689147)))

(declare-fun b!7913819 () Bool)

(declare-fun e!4671487 () Bool)

(assert (=> b!7913819 (= e!4671488 e!4671487)))

(declare-fun res!3141048 () Bool)

(assert (=> b!7913819 (=> res!3141048 e!4671487)))

(assert (=> b!7913819 (= res!3141048 (isEmpty!42721 (_1!38539 lt!2689143)))))

(declare-fun bm!734155 () Bool)

(assert (=> bm!734155 (= call!734158 (isPrefix!6488 input!1480 input!1480))))

(declare-fun b!7913820 () Bool)

(assert (=> b!7913820 (= e!4671487 (>= (size!43183 (_1!38539 lt!2689143)) (size!43183 Nil!74394)))))

(declare-fun b!7913821 () Bool)

(assert (=> b!7913821 (= e!4671485 e!4671490)))

(declare-fun c!1452037 () Bool)

(assert (=> b!7913821 (= c!1452037 (= (size!43183 Nil!74394) (size!43183 input!1480)))))

(declare-fun b!7913822 () Bool)

(assert (=> b!7913822 (= e!4671489 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun b!7913823 () Bool)

(assert (=> b!7913823 (= e!4671489 (tuple2!70473 Nil!74394 Nil!74394))))

(declare-fun bm!734156 () Bool)

(assert (=> bm!734156 (= call!734163 (lemmaIsPrefixSameLengthThenSameList!1581 input!1480 Nil!74394 input!1480))))

(declare-fun bm!734157 () Bool)

(assert (=> bm!734157 (= call!734160 (nullable!9519 (regex!8678 rule!156)))))

(declare-fun bm!734158 () Bool)

(assert (=> bm!734158 (= call!734159 (tail!15723 input!1480))))

(declare-fun b!7913824 () Bool)

(assert (=> b!7913824 (= e!4671486 e!4671491)))

(assert (=> b!7913824 (= lt!2689147 call!734162)))

(declare-fun c!1452035 () Bool)

(assert (=> b!7913824 (= c!1452035 (isEmpty!42721 (_1!38539 lt!2689147)))))

(assert (= (and d!2361039 c!1452039) b!7913814))

(assert (= (and d!2361039 (not c!1452039)) b!7913821))

(assert (= (and b!7913821 c!1452037) b!7913817))

(assert (= (and b!7913821 (not c!1452037)) b!7913812))

(assert (= (and b!7913817 c!1452036) b!7913823))

(assert (= (and b!7913817 (not c!1452036)) b!7913822))

(assert (= (and b!7913812 c!1452034) b!7913815))

(assert (= (and b!7913812 (not c!1452034)) b!7913816))

(assert (= (and b!7913812 c!1452038) b!7913824))

(assert (= (and b!7913812 (not c!1452038)) b!7913811))

(assert (= (and b!7913824 c!1452035) b!7913813))

(assert (= (and b!7913824 (not c!1452035)) b!7913818))

(assert (= (or b!7913824 b!7913811) bm!734152))

(assert (= (or b!7913824 b!7913811) bm!734158))

(assert (= (or b!7913824 b!7913811) bm!734151))

(assert (= (or b!7913824 b!7913811) bm!734154))

(assert (= (or b!7913817 b!7913812) bm!734157))

(assert (= (or b!7913817 b!7913815) bm!734155))

(assert (= (or b!7913817 b!7913815) bm!734153))

(assert (= (or b!7913817 b!7913815) bm!734156))

(assert (= (and d!2361039 res!3141049) b!7913819))

(assert (= (and b!7913819 (not res!3141048)) b!7913820))

(assert (=> bm!734156 m!8286954))

(assert (=> d!2361039 m!8286956))

(assert (=> d!2361039 m!8286958))

(assert (=> d!2361039 m!8286960))

(assert (=> d!2361039 m!8286958))

(declare-fun m!8287480 () Bool)

(assert (=> d!2361039 m!8287480))

(assert (=> d!2361039 m!8286914))

(declare-fun m!8287482 () Bool)

(assert (=> d!2361039 m!8287482))

(assert (=> d!2361039 m!8286966))

(assert (=> d!2361039 m!8286968))

(assert (=> b!7913812 m!8286970))

(assert (=> b!7913812 m!8286956))

(declare-fun m!8287484 () Bool)

(assert (=> b!7913812 m!8287484))

(assert (=> b!7913812 m!8286852))

(assert (=> b!7913812 m!8286974))

(assert (=> b!7913812 m!8286976))

(declare-fun m!8287486 () Bool)

(assert (=> b!7913812 m!8287486))

(assert (=> b!7913812 m!8286980))

(assert (=> b!7913812 m!8286862))

(assert (=> b!7913812 m!8286970))

(assert (=> b!7913812 m!8286982))

(assert (=> b!7913812 m!8286984))

(assert (=> b!7913812 m!8286986))

(assert (=> b!7913812 m!8286956))

(assert (=> b!7913812 m!8286988))

(assert (=> b!7913812 m!8287484))

(declare-fun m!8287488 () Bool)

(assert (=> b!7913812 m!8287488))

(declare-fun m!8287490 () Bool)

(assert (=> b!7913819 m!8287490))

(declare-fun m!8287492 () Bool)

(assert (=> bm!734151 m!8287492))

(assert (=> bm!734158 m!8286980))

(assert (=> bm!734154 m!8286862))

(declare-fun m!8287494 () Bool)

(assert (=> bm!734154 m!8287494))

(declare-fun m!8287496 () Bool)

(assert (=> b!7913820 m!8287496))

(assert (=> b!7913820 m!8286852))

(assert (=> bm!734155 m!8287000))

(declare-fun m!8287498 () Bool)

(assert (=> b!7913824 m!8287498))

(assert (=> bm!734157 m!8286922))

(assert (=> bm!734152 m!8286974))

(assert (=> bm!734153 m!8287004))

(assert (=> b!7913348 d!2361039))

(assert (=> b!7913348 d!2360847))

(assert (=> b!7913348 d!2360845))

(assert (=> b!7913434 d!2361033))

(declare-fun b!7913825 () Bool)

(declare-fun e!4671494 () tuple2!70472)

(declare-fun call!734170 () tuple2!70472)

(assert (=> b!7913825 (= e!4671494 call!734170)))

(declare-fun b!7913826 () Bool)

(declare-fun c!1452044 () Bool)

(declare-fun call!734168 () Bool)

(assert (=> b!7913826 (= c!1452044 call!734168)))

(declare-fun lt!2689165 () Unit!169491)

(declare-fun lt!2689186 () Unit!169491)

(assert (=> b!7913826 (= lt!2689165 lt!2689186)))

(declare-fun lt!2689168 () C!43092)

(declare-fun lt!2689174 () List!74518)

(assert (=> b!7913826 (= (++!18224 (++!18224 lt!2688906 (Cons!74394 lt!2689168 Nil!74394)) lt!2689174) input!1480)))

(assert (=> b!7913826 (= lt!2689186 (lemmaMoveElementToOtherListKeepsConcatEq!3488 lt!2688906 lt!2689168 lt!2689174 input!1480))))

(assert (=> b!7913826 (= lt!2689174 (tail!15723 call!734088))))

(assert (=> b!7913826 (= lt!2689168 (head!16180 call!734088))))

(declare-fun lt!2689176 () Unit!169491)

(declare-fun lt!2689178 () Unit!169491)

(assert (=> b!7913826 (= lt!2689176 lt!2689178)))

(assert (=> b!7913826 (isPrefix!6488 (++!18224 lt!2688906 (Cons!74394 (head!16180 (getSuffix!3701 input!1480 lt!2688906)) Nil!74394)) input!1480)))

(assert (=> b!7913826 (= lt!2689178 (lemmaAddHeadSuffixToPrefixStillPrefix!1266 lt!2688906 input!1480))))

(declare-fun lt!2689177 () Unit!169491)

(declare-fun lt!2689173 () Unit!169491)

(assert (=> b!7913826 (= lt!2689177 lt!2689173)))

(assert (=> b!7913826 (= lt!2689173 (lemmaAddHeadSuffixToPrefixStillPrefix!1266 lt!2688906 input!1480))))

(declare-fun lt!2689179 () List!74518)

(assert (=> b!7913826 (= lt!2689179 (++!18224 lt!2688906 (Cons!74394 (head!16180 call!734088) Nil!74394)))))

(declare-fun lt!2689184 () Unit!169491)

(declare-fun e!4671492 () Unit!169491)

(assert (=> b!7913826 (= lt!2689184 e!4671492)))

(declare-fun c!1452040 () Bool)

(assert (=> b!7913826 (= c!1452040 (= (size!43183 lt!2688906) (size!43183 input!1480)))))

(declare-fun lt!2689166 () Unit!169491)

(declare-fun lt!2689169 () Unit!169491)

(assert (=> b!7913826 (= lt!2689166 lt!2689169)))

(assert (=> b!7913826 (<= (size!43183 lt!2688906) (size!43183 input!1480))))

(assert (=> b!7913826 (= lt!2689169 (lemmaIsPrefixThenSmallerEqSize!1046 lt!2688906 input!1480))))

(declare-fun e!4671498 () tuple2!70472)

(assert (=> b!7913826 (= e!4671498 e!4671494)))

(declare-fun d!2361041 () Bool)

(declare-fun e!4671496 () Bool)

(assert (=> d!2361041 e!4671496))

(declare-fun res!3141051 () Bool)

(assert (=> d!2361041 (=> (not res!3141051) (not e!4671496))))

(declare-fun lt!2689171 () tuple2!70472)

(assert (=> d!2361041 (= res!3141051 (= (++!18224 (_1!38539 lt!2689171) (_2!38539 lt!2689171)) input!1480))))

(declare-fun e!4671493 () tuple2!70472)

(assert (=> d!2361041 (= lt!2689171 e!4671493)))

(declare-fun c!1452045 () Bool)

(assert (=> d!2361041 (= c!1452045 (lostCause!1932 call!734086))))

(declare-fun lt!2689172 () Unit!169491)

(declare-fun Unit!169505 () Unit!169491)

(assert (=> d!2361041 (= lt!2689172 Unit!169505)))

(assert (=> d!2361041 (= (getSuffix!3701 input!1480 lt!2688906) call!734088)))

(declare-fun lt!2689183 () Unit!169491)

(declare-fun lt!2689190 () Unit!169491)

(assert (=> d!2361041 (= lt!2689183 lt!2689190)))

(declare-fun lt!2689170 () List!74518)

(assert (=> d!2361041 (= call!734088 lt!2689170)))

(assert (=> d!2361041 (= lt!2689190 (lemmaSamePrefixThenSameSuffix!2948 lt!2688906 call!734088 lt!2688906 lt!2689170 input!1480))))

(assert (=> d!2361041 (= lt!2689170 (getSuffix!3701 input!1480 lt!2688906))))

(declare-fun lt!2689189 () Unit!169491)

(declare-fun lt!2689164 () Unit!169491)

(assert (=> d!2361041 (= lt!2689189 lt!2689164)))

(assert (=> d!2361041 (isPrefix!6488 lt!2688906 (++!18224 lt!2688906 call!734088))))

(assert (=> d!2361041 (= lt!2689164 (lemmaConcatTwoListThenFirstIsPrefix!3810 lt!2688906 call!734088))))

(assert (=> d!2361041 (validRegex!11684 call!734086)))

(assert (=> d!2361041 (= (findLongestMatchInner!2186 call!734086 lt!2688906 (+ lt!2688790 1) call!734088 input!1480 lt!2688786) lt!2689171)))

(declare-fun bm!734159 () Bool)

(declare-fun call!734165 () Regex!21381)

(declare-fun call!734164 () C!43092)

(assert (=> bm!734159 (= call!734165 (derivativeStep!6459 call!734086 call!734164))))

(declare-fun bm!734160 () Bool)

(assert (=> bm!734160 (= call!734164 (head!16180 call!734088))))

(declare-fun bm!734161 () Bool)

(declare-fun call!734169 () Unit!169491)

(assert (=> bm!734161 (= call!734169 (lemmaIsPrefixRefl!3999 input!1480 input!1480))))

(declare-fun b!7913827 () Bool)

(declare-fun e!4671499 () tuple2!70472)

(assert (=> b!7913827 (= e!4671499 (tuple2!70473 lt!2688906 call!734088))))

(declare-fun b!7913828 () Bool)

(assert (=> b!7913828 (= e!4671493 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun bm!734162 () Bool)

(declare-fun call!734167 () List!74518)

(assert (=> bm!734162 (= call!734170 (findLongestMatchInner!2186 call!734165 lt!2689179 (+ lt!2688790 1 1) call!734167 input!1480 lt!2688786))))

(declare-fun b!7913829 () Bool)

(declare-fun Unit!169506 () Unit!169491)

(assert (=> b!7913829 (= e!4671492 Unit!169506)))

(declare-fun lt!2689167 () Unit!169491)

(assert (=> b!7913829 (= lt!2689167 call!734169)))

(declare-fun call!734166 () Bool)

(assert (=> b!7913829 call!734166))

(declare-fun lt!2689163 () Unit!169491)

(assert (=> b!7913829 (= lt!2689163 lt!2689167)))

(declare-fun lt!2689185 () Unit!169491)

(declare-fun call!734171 () Unit!169491)

(assert (=> b!7913829 (= lt!2689185 call!734171)))

(assert (=> b!7913829 (= input!1480 lt!2688906)))

(declare-fun lt!2689181 () Unit!169491)

(assert (=> b!7913829 (= lt!2689181 lt!2689185)))

(assert (=> b!7913829 false))

(declare-fun b!7913830 () Bool)

(declare-fun Unit!169507 () Unit!169491)

(assert (=> b!7913830 (= e!4671492 Unit!169507)))

(declare-fun b!7913831 () Bool)

(declare-fun c!1452042 () Bool)

(assert (=> b!7913831 (= c!1452042 call!734168)))

(declare-fun lt!2689182 () Unit!169491)

(declare-fun lt!2689180 () Unit!169491)

(assert (=> b!7913831 (= lt!2689182 lt!2689180)))

(assert (=> b!7913831 (= input!1480 lt!2688906)))

(assert (=> b!7913831 (= lt!2689180 call!734171)))

(declare-fun lt!2689187 () Unit!169491)

(declare-fun lt!2689188 () Unit!169491)

(assert (=> b!7913831 (= lt!2689187 lt!2689188)))

(assert (=> b!7913831 call!734166))

(assert (=> b!7913831 (= lt!2689188 call!734169)))

(declare-fun e!4671497 () tuple2!70472)

(assert (=> b!7913831 (= e!4671498 e!4671497)))

(declare-fun b!7913832 () Bool)

(declare-fun lt!2689175 () tuple2!70472)

(assert (=> b!7913832 (= e!4671499 lt!2689175)))

(declare-fun b!7913833 () Bool)

(declare-fun e!4671495 () Bool)

(assert (=> b!7913833 (= e!4671496 e!4671495)))

(declare-fun res!3141050 () Bool)

(assert (=> b!7913833 (=> res!3141050 e!4671495)))

(assert (=> b!7913833 (= res!3141050 (isEmpty!42721 (_1!38539 lt!2689171)))))

(declare-fun bm!734163 () Bool)

(assert (=> bm!734163 (= call!734166 (isPrefix!6488 input!1480 input!1480))))

(declare-fun b!7913834 () Bool)

(assert (=> b!7913834 (= e!4671495 (>= (size!43183 (_1!38539 lt!2689171)) (size!43183 lt!2688906)))))

(declare-fun b!7913835 () Bool)

(assert (=> b!7913835 (= e!4671493 e!4671498)))

(declare-fun c!1452043 () Bool)

(assert (=> b!7913835 (= c!1452043 (= (+ lt!2688790 1) lt!2688786))))

(declare-fun b!7913836 () Bool)

(assert (=> b!7913836 (= e!4671497 (tuple2!70473 Nil!74394 input!1480))))

(declare-fun b!7913837 () Bool)

(assert (=> b!7913837 (= e!4671497 (tuple2!70473 lt!2688906 Nil!74394))))

(declare-fun bm!734164 () Bool)

(assert (=> bm!734164 (= call!734171 (lemmaIsPrefixSameLengthThenSameList!1581 input!1480 lt!2688906 input!1480))))

(declare-fun bm!734165 () Bool)

(assert (=> bm!734165 (= call!734168 (nullable!9519 call!734086))))

(declare-fun bm!734166 () Bool)

(assert (=> bm!734166 (= call!734167 (tail!15723 call!734088))))

(declare-fun b!7913838 () Bool)

(assert (=> b!7913838 (= e!4671494 e!4671499)))

(assert (=> b!7913838 (= lt!2689175 call!734170)))

(declare-fun c!1452041 () Bool)

(assert (=> b!7913838 (= c!1452041 (isEmpty!42721 (_1!38539 lt!2689175)))))

(assert (= (and d!2361041 c!1452045) b!7913828))

(assert (= (and d!2361041 (not c!1452045)) b!7913835))

(assert (= (and b!7913835 c!1452043) b!7913831))

(assert (= (and b!7913835 (not c!1452043)) b!7913826))

(assert (= (and b!7913831 c!1452042) b!7913837))

(assert (= (and b!7913831 (not c!1452042)) b!7913836))

(assert (= (and b!7913826 c!1452040) b!7913829))

(assert (= (and b!7913826 (not c!1452040)) b!7913830))

(assert (= (and b!7913826 c!1452044) b!7913838))

(assert (= (and b!7913826 (not c!1452044)) b!7913825))

(assert (= (and b!7913838 c!1452041) b!7913827))

(assert (= (and b!7913838 (not c!1452041)) b!7913832))

(assert (= (or b!7913838 b!7913825) bm!734160))

(assert (= (or b!7913838 b!7913825) bm!734166))

(assert (= (or b!7913838 b!7913825) bm!734159))

(assert (= (or b!7913838 b!7913825) bm!734162))

(assert (= (or b!7913831 b!7913826) bm!734165))

(assert (= (or b!7913831 b!7913829) bm!734163))

(assert (= (or b!7913831 b!7913829) bm!734161))

(assert (= (or b!7913831 b!7913829) bm!734164))

(assert (= (and d!2361041 res!3141051) b!7913833))

(assert (= (and b!7913833 (not res!3141050)) b!7913834))

(declare-fun m!8287500 () Bool)

(assert (=> bm!734164 m!8287500))

(declare-fun m!8287502 () Bool)

(assert (=> d!2361041 m!8287502))

(declare-fun m!8287504 () Bool)

(assert (=> d!2361041 m!8287504))

(declare-fun m!8287506 () Bool)

(assert (=> d!2361041 m!8287506))

(assert (=> d!2361041 m!8287504))

(declare-fun m!8287508 () Bool)

(assert (=> d!2361041 m!8287508))

(declare-fun m!8287510 () Bool)

(assert (=> d!2361041 m!8287510))

(declare-fun m!8287512 () Bool)

(assert (=> d!2361041 m!8287512))

(declare-fun m!8287514 () Bool)

(assert (=> d!2361041 m!8287514))

(declare-fun m!8287516 () Bool)

(assert (=> d!2361041 m!8287516))

(declare-fun m!8287518 () Bool)

(assert (=> b!7913826 m!8287518))

(assert (=> b!7913826 m!8287502))

(declare-fun m!8287520 () Bool)

(assert (=> b!7913826 m!8287520))

(declare-fun m!8287522 () Bool)

(assert (=> b!7913826 m!8287522))

(declare-fun m!8287524 () Bool)

(assert (=> b!7913826 m!8287524))

(declare-fun m!8287526 () Bool)

(assert (=> b!7913826 m!8287526))

(declare-fun m!8287528 () Bool)

(assert (=> b!7913826 m!8287528))

(declare-fun m!8287530 () Bool)

(assert (=> b!7913826 m!8287530))

(assert (=> b!7913826 m!8286862))

(assert (=> b!7913826 m!8287518))

(declare-fun m!8287532 () Bool)

(assert (=> b!7913826 m!8287532))

(declare-fun m!8287534 () Bool)

(assert (=> b!7913826 m!8287534))

(declare-fun m!8287536 () Bool)

(assert (=> b!7913826 m!8287536))

(assert (=> b!7913826 m!8287502))

(declare-fun m!8287538 () Bool)

(assert (=> b!7913826 m!8287538))

(assert (=> b!7913826 m!8287520))

(declare-fun m!8287540 () Bool)

(assert (=> b!7913826 m!8287540))

(declare-fun m!8287542 () Bool)

(assert (=> b!7913833 m!8287542))

(declare-fun m!8287544 () Bool)

(assert (=> bm!734159 m!8287544))

(assert (=> bm!734166 m!8287530))

(declare-fun m!8287546 () Bool)

(assert (=> bm!734162 m!8287546))

(declare-fun m!8287548 () Bool)

(assert (=> b!7913834 m!8287548))

(assert (=> b!7913834 m!8287522))

(assert (=> bm!734163 m!8287000))

(declare-fun m!8287550 () Bool)

(assert (=> b!7913838 m!8287550))

(declare-fun m!8287552 () Bool)

(assert (=> bm!734165 m!8287552))

(assert (=> bm!734160 m!8287524))

(assert (=> bm!734161 m!8287004))

(assert (=> bm!734083 d!2361041))

(assert (=> b!7913266 d!2360965))

(declare-fun d!2361043 () Bool)

(assert (=> d!2361043 (= (inv!95479 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))) (isBalanced!4480 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))))))

(declare-fun bs!1968372 () Bool)

(assert (= bs!1968372 d!2361043))

(declare-fun m!8287554 () Bool)

(assert (=> bs!1968372 m!8287554))

(assert (=> tb!263289 d!2361043))

(declare-fun d!2361045 () Bool)

(declare-fun e!4671500 () Bool)

(assert (=> d!2361045 e!4671500))

(declare-fun res!3141052 () Bool)

(assert (=> d!2361045 (=> (not res!3141052) (not e!4671500))))

(declare-fun lt!2689191 () BalanceConc!30822)

(assert (=> d!2361045 (= res!3141052 (= (list!19333 lt!2689191) (originalCharacters!8913 (_1!38538 lt!2688784))))))

(assert (=> d!2361045 (= lt!2689191 (BalanceConc!30823 (fromList!967 (originalCharacters!8913 (_1!38538 lt!2688784)))))))

(assert (=> d!2361045 (= (fromListB!2804 (originalCharacters!8913 (_1!38538 lt!2688784))) lt!2689191)))

(declare-fun b!7913839 () Bool)

(assert (=> b!7913839 (= e!4671500 (isBalanced!4480 (fromList!967 (originalCharacters!8913 (_1!38538 lt!2688784)))))))

(assert (= (and d!2361045 res!3141052) b!7913839))

(declare-fun m!8287556 () Bool)

(assert (=> d!2361045 m!8287556))

(declare-fun m!8287558 () Bool)

(assert (=> d!2361045 m!8287558))

(assert (=> b!7913839 m!8287558))

(assert (=> b!7913839 m!8287558))

(declare-fun m!8287560 () Bool)

(assert (=> b!7913839 m!8287560))

(assert (=> d!2360899 d!2361045))

(declare-fun b!7913840 () Bool)

(declare-fun e!4671501 () Bool)

(assert (=> b!7913840 (= e!4671501 (not (= (head!16180 (tail!15723 (_1!38539 lt!2688787))) (c!1451877 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787)))))))))

(declare-fun b!7913841 () Bool)

(declare-fun e!4671506 () Bool)

(assert (=> b!7913841 (= e!4671506 (matchR!10700 (derivativeStep!6459 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787))) (head!16180 (tail!15723 (_1!38539 lt!2688787)))) (tail!15723 (tail!15723 (_1!38539 lt!2688787)))))))

(declare-fun b!7913842 () Bool)

(declare-fun res!3141056 () Bool)

(assert (=> b!7913842 (=> res!3141056 e!4671501)))

(assert (=> b!7913842 (= res!3141056 (not (isEmpty!42721 (tail!15723 (tail!15723 (_1!38539 lt!2688787))))))))

(declare-fun b!7913843 () Bool)

(declare-fun e!4671505 () Bool)

(assert (=> b!7913843 (= e!4671505 (= (head!16180 (tail!15723 (_1!38539 lt!2688787))) (c!1451877 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787))))))))

(declare-fun b!7913844 () Bool)

(declare-fun e!4671502 () Bool)

(declare-fun e!4671503 () Bool)

(assert (=> b!7913844 (= e!4671502 e!4671503)))

(declare-fun res!3141059 () Bool)

(assert (=> b!7913844 (=> (not res!3141059) (not e!4671503))))

(declare-fun lt!2689192 () Bool)

(assert (=> b!7913844 (= res!3141059 (not lt!2689192))))

(declare-fun b!7913845 () Bool)

(declare-fun res!3141053 () Bool)

(assert (=> b!7913845 (=> res!3141053 e!4671502)))

(assert (=> b!7913845 (= res!3141053 (not ((_ is ElementMatch!21381) (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787))))))))

(declare-fun e!4671507 () Bool)

(assert (=> b!7913845 (= e!4671507 e!4671502)))

(declare-fun b!7913846 () Bool)

(declare-fun res!3141058 () Bool)

(assert (=> b!7913846 (=> res!3141058 e!4671502)))

(assert (=> b!7913846 (= res!3141058 e!4671505)))

(declare-fun res!3141057 () Bool)

(assert (=> b!7913846 (=> (not res!3141057) (not e!4671505))))

(assert (=> b!7913846 (= res!3141057 lt!2689192)))

(declare-fun b!7913848 () Bool)

(declare-fun res!3141060 () Bool)

(assert (=> b!7913848 (=> (not res!3141060) (not e!4671505))))

(assert (=> b!7913848 (= res!3141060 (isEmpty!42721 (tail!15723 (tail!15723 (_1!38539 lt!2688787)))))))

(declare-fun b!7913849 () Bool)

(assert (=> b!7913849 (= e!4671506 (nullable!9519 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787)))))))

(declare-fun b!7913850 () Bool)

(declare-fun e!4671504 () Bool)

(declare-fun call!734172 () Bool)

(assert (=> b!7913850 (= e!4671504 (= lt!2689192 call!734172))))

(declare-fun b!7913851 () Bool)

(assert (=> b!7913851 (= e!4671503 e!4671501)))

(declare-fun res!3141055 () Bool)

(assert (=> b!7913851 (=> res!3141055 e!4671501)))

(assert (=> b!7913851 (= res!3141055 call!734172)))

(declare-fun b!7913852 () Bool)

(assert (=> b!7913852 (= e!4671507 (not lt!2689192))))

(declare-fun bm!734167 () Bool)

(assert (=> bm!734167 (= call!734172 (isEmpty!42721 (tail!15723 (_1!38539 lt!2688787))))))

(declare-fun b!7913853 () Bool)

(declare-fun res!3141054 () Bool)

(assert (=> b!7913853 (=> (not res!3141054) (not e!4671505))))

(assert (=> b!7913853 (= res!3141054 (not call!734172))))

(declare-fun b!7913847 () Bool)

(assert (=> b!7913847 (= e!4671504 e!4671507)))

(declare-fun c!1452048 () Bool)

(assert (=> b!7913847 (= c!1452048 ((_ is EmptyLang!21381) (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787)))))))

(declare-fun d!2361047 () Bool)

(assert (=> d!2361047 e!4671504))

(declare-fun c!1452046 () Bool)

(assert (=> d!2361047 (= c!1452046 ((_ is EmptyExpr!21381) (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787)))))))

(assert (=> d!2361047 (= lt!2689192 e!4671506)))

(declare-fun c!1452047 () Bool)

(assert (=> d!2361047 (= c!1452047 (isEmpty!42721 (tail!15723 (_1!38539 lt!2688787))))))

(assert (=> d!2361047 (validRegex!11684 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787))))))

(assert (=> d!2361047 (= (matchR!10700 (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787))) (tail!15723 (_1!38539 lt!2688787))) lt!2689192)))

(assert (= (and d!2361047 c!1452047) b!7913849))

(assert (= (and d!2361047 (not c!1452047)) b!7913841))

(assert (= (and d!2361047 c!1452046) b!7913850))

(assert (= (and d!2361047 (not c!1452046)) b!7913847))

(assert (= (and b!7913847 c!1452048) b!7913852))

(assert (= (and b!7913847 (not c!1452048)) b!7913845))

(assert (= (and b!7913845 (not res!3141053)) b!7913846))

(assert (= (and b!7913846 res!3141057) b!7913853))

(assert (= (and b!7913853 res!3141054) b!7913848))

(assert (= (and b!7913848 res!3141060) b!7913843))

(assert (= (and b!7913846 (not res!3141058)) b!7913844))

(assert (= (and b!7913844 res!3141059) b!7913851))

(assert (= (and b!7913851 (not res!3141055)) b!7913842))

(assert (= (and b!7913842 (not res!3141056)) b!7913840))

(assert (= (or b!7913850 b!7913853 b!7913851) bm!734167))

(assert (=> d!2361047 m!8287124))

(assert (=> d!2361047 m!8287128))

(assert (=> d!2361047 m!8287122))

(declare-fun m!8287562 () Bool)

(assert (=> d!2361047 m!8287562))

(assert (=> b!7913841 m!8287124))

(declare-fun m!8287564 () Bool)

(assert (=> b!7913841 m!8287564))

(assert (=> b!7913841 m!8287122))

(assert (=> b!7913841 m!8287564))

(declare-fun m!8287566 () Bool)

(assert (=> b!7913841 m!8287566))

(assert (=> b!7913841 m!8287124))

(declare-fun m!8287568 () Bool)

(assert (=> b!7913841 m!8287568))

(assert (=> b!7913841 m!8287566))

(assert (=> b!7913841 m!8287568))

(declare-fun m!8287570 () Bool)

(assert (=> b!7913841 m!8287570))

(assert (=> b!7913843 m!8287124))

(assert (=> b!7913843 m!8287564))

(assert (=> b!7913848 m!8287124))

(assert (=> b!7913848 m!8287568))

(assert (=> b!7913848 m!8287568))

(declare-fun m!8287572 () Bool)

(assert (=> b!7913848 m!8287572))

(assert (=> bm!734167 m!8287124))

(assert (=> bm!734167 m!8287128))

(assert (=> b!7913842 m!8287124))

(assert (=> b!7913842 m!8287568))

(assert (=> b!7913842 m!8287568))

(assert (=> b!7913842 m!8287572))

(assert (=> b!7913840 m!8287124))

(assert (=> b!7913840 m!8287564))

(assert (=> b!7913849 m!8287122))

(declare-fun m!8287574 () Bool)

(assert (=> b!7913849 m!8287574))

(assert (=> b!7913447 d!2361047))

(declare-fun b!7913854 () Bool)

(declare-fun e!4671511 () Regex!21381)

(assert (=> b!7913854 (= e!4671511 (ite (= (head!16180 (_1!38539 lt!2688787)) (c!1451877 (regex!8678 rule!156))) EmptyExpr!21381 EmptyLang!21381))))

(declare-fun d!2361049 () Bool)

(declare-fun lt!2689193 () Regex!21381)

(assert (=> d!2361049 (validRegex!11684 lt!2689193)))

(declare-fun e!4671510 () Regex!21381)

(assert (=> d!2361049 (= lt!2689193 e!4671510)))

(declare-fun c!1452051 () Bool)

(assert (=> d!2361049 (= c!1452051 (or ((_ is EmptyExpr!21381) (regex!8678 rule!156)) ((_ is EmptyLang!21381) (regex!8678 rule!156))))))

(assert (=> d!2361049 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2361049 (= (derivativeStep!6459 (regex!8678 rule!156) (head!16180 (_1!38539 lt!2688787))) lt!2689193)))

(declare-fun c!1452049 () Bool)

(declare-fun c!1452053 () Bool)

(declare-fun call!734176 () Regex!21381)

(declare-fun bm!734168 () Bool)

(assert (=> bm!734168 (= call!734176 (derivativeStep!6459 (ite c!1452053 (regOne!43275 (regex!8678 rule!156)) (ite c!1452049 (reg!21710 (regex!8678 rule!156)) (regOne!43274 (regex!8678 rule!156)))) (head!16180 (_1!38539 lt!2688787))))))

(declare-fun b!7913855 () Bool)

(declare-fun c!1452052 () Bool)

(assert (=> b!7913855 (= c!1452052 (nullable!9519 (regOne!43274 (regex!8678 rule!156))))))

(declare-fun e!4671512 () Regex!21381)

(declare-fun e!4671509 () Regex!21381)

(assert (=> b!7913855 (= e!4671512 e!4671509)))

(declare-fun b!7913856 () Bool)

(assert (=> b!7913856 (= c!1452053 ((_ is Union!21381) (regex!8678 rule!156)))))

(declare-fun e!4671508 () Regex!21381)

(assert (=> b!7913856 (= e!4671511 e!4671508)))

(declare-fun bm!734169 () Bool)

(declare-fun call!734175 () Regex!21381)

(assert (=> bm!734169 (= call!734175 call!734176)))

(declare-fun b!7913857 () Bool)

(declare-fun call!734174 () Regex!21381)

(assert (=> b!7913857 (= e!4671508 (Union!21381 call!734176 call!734174))))

(declare-fun b!7913858 () Bool)

(assert (=> b!7913858 (= e!4671510 EmptyLang!21381)))

(declare-fun bm!734170 () Bool)

(declare-fun call!734173 () Regex!21381)

(assert (=> bm!734170 (= call!734173 call!734174)))

(declare-fun bm!734171 () Bool)

(assert (=> bm!734171 (= call!734174 (derivativeStep!6459 (ite c!1452053 (regTwo!43275 (regex!8678 rule!156)) (ite c!1452052 (regTwo!43274 (regex!8678 rule!156)) (regOne!43274 (regex!8678 rule!156)))) (head!16180 (_1!38539 lt!2688787))))))

(declare-fun b!7913859 () Bool)

(assert (=> b!7913859 (= e!4671508 e!4671512)))

(assert (=> b!7913859 (= c!1452049 ((_ is Star!21381) (regex!8678 rule!156)))))

(declare-fun b!7913860 () Bool)

(assert (=> b!7913860 (= e!4671512 (Concat!30376 call!734175 (regex!8678 rule!156)))))

(declare-fun b!7913861 () Bool)

(assert (=> b!7913861 (= e!4671509 (Union!21381 (Concat!30376 call!734173 (regTwo!43274 (regex!8678 rule!156))) EmptyLang!21381))))

(declare-fun b!7913862 () Bool)

(assert (=> b!7913862 (= e!4671509 (Union!21381 (Concat!30376 call!734175 (regTwo!43274 (regex!8678 rule!156))) call!734173))))

(declare-fun b!7913863 () Bool)

(assert (=> b!7913863 (= e!4671510 e!4671511)))

(declare-fun c!1452050 () Bool)

(assert (=> b!7913863 (= c!1452050 ((_ is ElementMatch!21381) (regex!8678 rule!156)))))

(assert (= (and d!2361049 c!1452051) b!7913858))

(assert (= (and d!2361049 (not c!1452051)) b!7913863))

(assert (= (and b!7913863 c!1452050) b!7913854))

(assert (= (and b!7913863 (not c!1452050)) b!7913856))

(assert (= (and b!7913856 c!1452053) b!7913857))

(assert (= (and b!7913856 (not c!1452053)) b!7913859))

(assert (= (and b!7913859 c!1452049) b!7913860))

(assert (= (and b!7913859 (not c!1452049)) b!7913855))

(assert (= (and b!7913855 c!1452052) b!7913862))

(assert (= (and b!7913855 (not c!1452052)) b!7913861))

(assert (= (or b!7913862 b!7913861) bm!734170))

(assert (= (or b!7913860 b!7913862) bm!734169))

(assert (= (or b!7913857 bm!734169) bm!734168))

(assert (= (or b!7913857 bm!734170) bm!734171))

(declare-fun m!8287576 () Bool)

(assert (=> d!2361049 m!8287576))

(assert (=> d!2361049 m!8286914))

(assert (=> bm!734168 m!8287120))

(declare-fun m!8287578 () Bool)

(assert (=> bm!734168 m!8287578))

(assert (=> b!7913855 m!8287466))

(assert (=> bm!734171 m!8287120))

(declare-fun m!8287580 () Bool)

(assert (=> bm!734171 m!8287580))

(assert (=> b!7913447 d!2361049))

(assert (=> b!7913447 d!2360937))

(assert (=> b!7913447 d!2360949))

(declare-fun d!2361051 () Bool)

(declare-fun lt!2689194 () Int)

(assert (=> d!2361051 (>= lt!2689194 0)))

(declare-fun e!4671513 () Int)

(assert (=> d!2361051 (= lt!2689194 e!4671513)))

(declare-fun c!1452054 () Bool)

(assert (=> d!2361051 (= c!1452054 ((_ is Nil!74394) (t!389969 (_2!38538 lt!2688784))))))

(assert (=> d!2361051 (= (size!43183 (t!389969 (_2!38538 lt!2688784))) lt!2689194)))

(declare-fun b!7913864 () Bool)

(assert (=> b!7913864 (= e!4671513 0)))

(declare-fun b!7913865 () Bool)

(assert (=> b!7913865 (= e!4671513 (+ 1 (size!43183 (t!389969 (t!389969 (_2!38538 lt!2688784))))))))

(assert (= (and d!2361051 c!1452054) b!7913864))

(assert (= (and d!2361051 (not c!1452054)) b!7913865))

(declare-fun m!8287582 () Bool)

(assert (=> b!7913865 m!8287582))

(assert (=> b!7913402 d!2361051))

(declare-fun d!2361053 () Bool)

(assert (=> d!2361053 (= (isEmpty!42721 (tail!15723 lt!2688783)) ((_ is Nil!74394) (tail!15723 lt!2688783)))))

(assert (=> b!7913439 d!2361053))

(assert (=> b!7913439 d!2361035))

(declare-fun d!2361055 () Bool)

(assert (=> d!2361055 (= (isEmpty!42721 (_1!38539 lt!2688898)) ((_ is Nil!74394) (_1!38539 lt!2688898)))))

(assert (=> b!7913340 d!2361055))

(assert (=> d!2360867 d!2360945))

(assert (=> d!2360867 d!2360845))

(assert (=> d!2360867 d!2361039))

(declare-fun d!2361057 () Bool)

(assert (=> d!2361057 (= (isEmpty!42721 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))) ((_ is Nil!74394) (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))))))

(assert (=> d!2360867 d!2361057))

(declare-fun d!2361059 () Bool)

(declare-fun e!4671516 () Bool)

(assert (=> d!2361059 e!4671516))

(declare-fun res!3141063 () Bool)

(assert (=> d!2361059 (=> res!3141063 e!4671516)))

(assert (=> d!2361059 (= res!3141063 (isEmpty!42721 (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))))))

(assert (=> d!2361059 true))

(declare-fun _$92!596 () Unit!169491)

(assert (=> d!2361059 (= (choose!59768 (regex!8678 rule!156) input!1480) _$92!596)))

(declare-fun b!7913868 () Bool)

(assert (=> b!7913868 (= e!4671516 (matchR!10700 (regex!8678 rule!156) (_1!38539 (findLongestMatchInner!2186 (regex!8678 rule!156) Nil!74394 (size!43183 Nil!74394) input!1480 input!1480 (size!43183 input!1480)))))))

(assert (= (and d!2361059 (not res!3141063)) b!7913868))

(assert (=> d!2361059 m!8286852))

(assert (=> d!2361059 m!8286862))

(assert (=> d!2361059 m!8286852))

(assert (=> d!2361059 m!8286862))

(assert (=> d!2361059 m!8287006))

(assert (=> d!2361059 m!8287010))

(assert (=> b!7913868 m!8286852))

(assert (=> b!7913868 m!8286862))

(assert (=> b!7913868 m!8286852))

(assert (=> b!7913868 m!8286862))

(assert (=> b!7913868 m!8287006))

(assert (=> b!7913868 m!8287012))

(assert (=> d!2360867 d!2361059))

(assert (=> d!2360867 d!2360847))

(assert (=> b!7913449 d!2360937))

(declare-fun d!2361061 () Bool)

(declare-fun lt!2689195 () Int)

(assert (=> d!2361061 (>= lt!2689195 0)))

(declare-fun e!4671517 () Int)

(assert (=> d!2361061 (= lt!2689195 e!4671517)))

(declare-fun c!1452055 () Bool)

(assert (=> d!2361061 (= c!1452055 ((_ is Nil!74394) (_1!38539 lt!2688898)))))

(assert (=> d!2361061 (= (size!43183 (_1!38539 lt!2688898)) lt!2689195)))

(declare-fun b!7913869 () Bool)

(assert (=> b!7913869 (= e!4671517 0)))

(declare-fun b!7913870 () Bool)

(assert (=> b!7913870 (= e!4671517 (+ 1 (size!43183 (t!389969 (_1!38539 lt!2688898)))))))

(assert (= (and d!2361061 c!1452055) b!7913869))

(assert (= (and d!2361061 (not c!1452055)) b!7913870))

(declare-fun m!8287584 () Bool)

(assert (=> b!7913870 m!8287584))

(assert (=> b!7913341 d!2361061))

(assert (=> b!7913341 d!2360847))

(assert (=> d!2360887 d!2360975))

(assert (=> d!2360887 d!2360945))

(assert (=> b!7913455 d!2360965))

(declare-fun d!2361063 () Bool)

(assert (=> d!2361063 (= input!1480 Nil!74394)))

(declare-fun lt!2689198 () Unit!169491)

(declare-fun choose!59777 (List!74518 List!74518 List!74518) Unit!169491)

(assert (=> d!2361063 (= lt!2689198 (choose!59777 input!1480 Nil!74394 input!1480))))

(assert (=> d!2361063 (isPrefix!6488 input!1480 input!1480)))

(assert (=> d!2361063 (= (lemmaIsPrefixSameLengthThenSameList!1581 input!1480 Nil!74394 input!1480) lt!2689198)))

(declare-fun bs!1968373 () Bool)

(assert (= bs!1968373 d!2361063))

(declare-fun m!8287586 () Bool)

(assert (=> bs!1968373 m!8287586))

(assert (=> bs!1968373 m!8287000))

(assert (=> bm!734085 d!2361063))

(declare-fun bs!1968374 () Bool)

(declare-fun d!2361065 () Bool)

(assert (= bs!1968374 (and d!2361065 d!2360873)))

(declare-fun lambda!472611 () Int)

(assert (=> bs!1968374 (= lambda!472611 lambda!472602)))

(assert (=> d!2361065 true))

(assert (=> d!2361065 (< (dynLambda!30192 order!29961 (toChars!11598 (transformation!8678 rule!156))) (dynLambda!30191 order!29959 lambda!472611))))

(assert (=> d!2361065 true))

(assert (=> d!2361065 (< (dynLambda!30190 order!29957 (toValue!11739 (transformation!8678 rule!156))) (dynLambda!30191 order!29959 lambda!472611))))

(assert (=> d!2361065 (= (semiInverseModEq!3847 (toChars!11598 (transformation!8678 rule!156)) (toValue!11739 (transformation!8678 rule!156))) (Forall!1849 lambda!472611))))

(declare-fun bs!1968375 () Bool)

(assert (= bs!1968375 d!2361065))

(declare-fun m!8287588 () Bool)

(assert (=> bs!1968375 m!8287588))

(assert (=> d!2360835 d!2361065))

(declare-fun d!2361067 () Bool)

(assert (not d!2361067))

(assert (=> b!7913277 d!2361067))

(assert (=> bm!734087 d!2360995))

(declare-fun d!2361069 () Bool)

(declare-fun lt!2689199 () Int)

(assert (=> d!2361069 (>= lt!2689199 0)))

(declare-fun e!4671518 () Int)

(assert (=> d!2361069 (= lt!2689199 e!4671518)))

(declare-fun c!1452056 () Bool)

(assert (=> d!2361069 (= c!1452056 ((_ is Nil!74394) lt!2688795))))

(assert (=> d!2361069 (= (size!43183 lt!2688795) lt!2689199)))

(declare-fun b!7913875 () Bool)

(assert (=> b!7913875 (= e!4671518 0)))

(declare-fun b!7913876 () Bool)

(assert (=> b!7913876 (= e!4671518 (+ 1 (size!43183 (t!389969 lt!2688795))))))

(assert (= (and d!2361069 c!1452056) b!7913875))

(assert (= (and d!2361069 (not c!1452056)) b!7913876))

(declare-fun m!8287590 () Bool)

(assert (=> b!7913876 m!8287590))

(assert (=> b!7913257 d!2361069))

(declare-fun d!2361071 () Bool)

(declare-fun lt!2689200 () Int)

(assert (=> d!2361071 (>= lt!2689200 0)))

(declare-fun e!4671519 () Int)

(assert (=> d!2361071 (= lt!2689200 e!4671519)))

(declare-fun c!1452057 () Bool)

(assert (=> d!2361071 (= c!1452057 ((_ is Nil!74394) lt!2688783))))

(assert (=> d!2361071 (= (size!43183 lt!2688783) lt!2689200)))

(declare-fun b!7913877 () Bool)

(assert (=> b!7913877 (= e!4671519 0)))

(declare-fun b!7913878 () Bool)

(assert (=> b!7913878 (= e!4671519 (+ 1 (size!43183 (t!389969 lt!2688783))))))

(assert (= (and d!2361071 c!1452057) b!7913877))

(assert (= (and d!2361071 (not c!1452057)) b!7913878))

(assert (=> b!7913878 m!8287332))

(assert (=> b!7913257 d!2361071))

(assert (=> b!7913257 d!2360885))

(declare-fun d!2361073 () Bool)

(assert (=> d!2361073 (= (isEmpty!42721 (_1!38539 lt!2688902)) ((_ is Nil!74394) (_1!38539 lt!2688902)))))

(assert (=> b!7913345 d!2361073))

(declare-fun d!2361075 () Bool)

(declare-fun lt!2689201 () Int)

(assert (=> d!2361075 (>= lt!2689201 0)))

(declare-fun e!4671520 () Int)

(assert (=> d!2361075 (= lt!2689201 e!4671520)))

(declare-fun c!1452058 () Bool)

(assert (=> d!2361075 (= c!1452058 ((_ is Nil!74394) (list!19333 lt!2688788)))))

(assert (=> d!2361075 (= (size!43183 (list!19333 lt!2688788)) lt!2689201)))

(declare-fun b!7913879 () Bool)

(assert (=> b!7913879 (= e!4671520 0)))

(declare-fun b!7913880 () Bool)

(assert (=> b!7913880 (= e!4671520 (+ 1 (size!43183 (t!389969 (list!19333 lt!2688788)))))))

(assert (= (and d!2361075 c!1452058) b!7913879))

(assert (= (and d!2361075 (not c!1452058)) b!7913880))

(declare-fun m!8287592 () Bool)

(assert (=> b!7913880 m!8287592))

(assert (=> d!2360871 d!2361075))

(assert (=> d!2360871 d!2360979))

(declare-fun d!2361077 () Bool)

(declare-fun lt!2689204 () Int)

(assert (=> d!2361077 (= lt!2689204 (size!43183 (list!19334 (c!1451878 lt!2688788))))))

(assert (=> d!2361077 (= lt!2689204 (ite ((_ is Empty!15852) (c!1451878 lt!2688788)) 0 (ite ((_ is Leaf!30159) (c!1451878 lt!2688788)) (csize!31935 (c!1451878 lt!2688788)) (csize!31934 (c!1451878 lt!2688788)))))))

(assert (=> d!2361077 (= (size!43184 (c!1451878 lt!2688788)) lt!2689204)))

(declare-fun bs!1968376 () Bool)

(assert (= bs!1968376 d!2361077))

(assert (=> bs!1968376 m!8287314))

(assert (=> bs!1968376 m!8287314))

(declare-fun m!8287594 () Bool)

(assert (=> bs!1968376 m!8287594))

(assert (=> d!2360871 d!2361077))

(declare-fun d!2361079 () Bool)

(declare-fun lt!2689205 () Int)

(assert (=> d!2361079 (>= lt!2689205 0)))

(declare-fun e!4671521 () Int)

(assert (=> d!2361079 (= lt!2689205 e!4671521)))

(declare-fun c!1452059 () Bool)

(assert (=> d!2361079 (= c!1452059 ((_ is Nil!74394) (t!389969 (originalCharacters!8913 (_1!38538 lt!2688784)))))))

(assert (=> d!2361079 (= (size!43183 (t!389969 (originalCharacters!8913 (_1!38538 lt!2688784)))) lt!2689205)))

(declare-fun b!7913881 () Bool)

(assert (=> b!7913881 (= e!4671521 0)))

(declare-fun b!7913882 () Bool)

(assert (=> b!7913882 (= e!4671521 (+ 1 (size!43183 (t!389969 (t!389969 (originalCharacters!8913 (_1!38538 lt!2688784)))))))))

(assert (= (and d!2361079 c!1452059) b!7913881))

(assert (= (and d!2361079 (not c!1452059)) b!7913882))

(declare-fun m!8287596 () Bool)

(assert (=> b!7913882 m!8287596))

(assert (=> b!7913273 d!2361079))

(declare-fun b!7913883 () Bool)

(declare-fun e!4671525 () Regex!21381)

(assert (=> b!7913883 (= e!4671525 (ite (= call!734085 (c!1451877 (regex!8678 rule!156))) EmptyExpr!21381 EmptyLang!21381))))

(declare-fun d!2361081 () Bool)

(declare-fun lt!2689206 () Regex!21381)

(assert (=> d!2361081 (validRegex!11684 lt!2689206)))

(declare-fun e!4671524 () Regex!21381)

(assert (=> d!2361081 (= lt!2689206 e!4671524)))

(declare-fun c!1452062 () Bool)

(assert (=> d!2361081 (= c!1452062 (or ((_ is EmptyExpr!21381) (regex!8678 rule!156)) ((_ is EmptyLang!21381) (regex!8678 rule!156))))))

(assert (=> d!2361081 (validRegex!11684 (regex!8678 rule!156))))

(assert (=> d!2361081 (= (derivativeStep!6459 (regex!8678 rule!156) call!734085) lt!2689206)))

(declare-fun c!1452060 () Bool)

(declare-fun bm!734172 () Bool)

(declare-fun call!734180 () Regex!21381)

(declare-fun c!1452064 () Bool)

(assert (=> bm!734172 (= call!734180 (derivativeStep!6459 (ite c!1452064 (regOne!43275 (regex!8678 rule!156)) (ite c!1452060 (reg!21710 (regex!8678 rule!156)) (regOne!43274 (regex!8678 rule!156)))) call!734085))))

(declare-fun b!7913884 () Bool)

(declare-fun c!1452063 () Bool)

(assert (=> b!7913884 (= c!1452063 (nullable!9519 (regOne!43274 (regex!8678 rule!156))))))

(declare-fun e!4671526 () Regex!21381)

(declare-fun e!4671523 () Regex!21381)

(assert (=> b!7913884 (= e!4671526 e!4671523)))

(declare-fun b!7913885 () Bool)

(assert (=> b!7913885 (= c!1452064 ((_ is Union!21381) (regex!8678 rule!156)))))

(declare-fun e!4671522 () Regex!21381)

(assert (=> b!7913885 (= e!4671525 e!4671522)))

(declare-fun bm!734173 () Bool)

(declare-fun call!734179 () Regex!21381)

(assert (=> bm!734173 (= call!734179 call!734180)))

(declare-fun b!7913886 () Bool)

(declare-fun call!734178 () Regex!21381)

(assert (=> b!7913886 (= e!4671522 (Union!21381 call!734180 call!734178))))

(declare-fun b!7913887 () Bool)

(assert (=> b!7913887 (= e!4671524 EmptyLang!21381)))

(declare-fun bm!734174 () Bool)

(declare-fun call!734177 () Regex!21381)

(assert (=> bm!734174 (= call!734177 call!734178)))

(declare-fun bm!734175 () Bool)

(assert (=> bm!734175 (= call!734178 (derivativeStep!6459 (ite c!1452064 (regTwo!43275 (regex!8678 rule!156)) (ite c!1452063 (regTwo!43274 (regex!8678 rule!156)) (regOne!43274 (regex!8678 rule!156)))) call!734085))))

(declare-fun b!7913888 () Bool)

(assert (=> b!7913888 (= e!4671522 e!4671526)))

(assert (=> b!7913888 (= c!1452060 ((_ is Star!21381) (regex!8678 rule!156)))))

(declare-fun b!7913889 () Bool)

(assert (=> b!7913889 (= e!4671526 (Concat!30376 call!734179 (regex!8678 rule!156)))))

(declare-fun b!7913890 () Bool)

(assert (=> b!7913890 (= e!4671523 (Union!21381 (Concat!30376 call!734177 (regTwo!43274 (regex!8678 rule!156))) EmptyLang!21381))))

(declare-fun b!7913891 () Bool)

(assert (=> b!7913891 (= e!4671523 (Union!21381 (Concat!30376 call!734179 (regTwo!43274 (regex!8678 rule!156))) call!734177))))

(declare-fun b!7913892 () Bool)

(assert (=> b!7913892 (= e!4671524 e!4671525)))

(declare-fun c!1452061 () Bool)

(assert (=> b!7913892 (= c!1452061 ((_ is ElementMatch!21381) (regex!8678 rule!156)))))

(assert (= (and d!2361081 c!1452062) b!7913887))

(assert (= (and d!2361081 (not c!1452062)) b!7913892))

(assert (= (and b!7913892 c!1452061) b!7913883))

(assert (= (and b!7913892 (not c!1452061)) b!7913885))

(assert (= (and b!7913885 c!1452064) b!7913886))

(assert (= (and b!7913885 (not c!1452064)) b!7913888))

(assert (= (and b!7913888 c!1452060) b!7913889))

(assert (= (and b!7913888 (not c!1452060)) b!7913884))

(assert (= (and b!7913884 c!1452063) b!7913891))

(assert (= (and b!7913884 (not c!1452063)) b!7913890))

(assert (= (or b!7913891 b!7913890) bm!734174))

(assert (= (or b!7913889 b!7913891) bm!734173))

(assert (= (or b!7913886 bm!734173) bm!734172))

(assert (= (or b!7913886 bm!734174) bm!734175))

(declare-fun m!8287598 () Bool)

(assert (=> d!2361081 m!8287598))

(assert (=> d!2361081 m!8286914))

(declare-fun m!8287600 () Bool)

(assert (=> bm!734172 m!8287600))

(assert (=> b!7913884 m!8287466))

(declare-fun m!8287602 () Bool)

(assert (=> bm!734175 m!8287602))

(assert (=> bm!734080 d!2361081))

(assert (=> b!7913431 d!2361033))

(declare-fun d!2361083 () Bool)

(assert (=> d!2361083 (isPrefix!6488 input!1480 input!1480)))

(declare-fun lt!2689209 () Unit!169491)

(declare-fun choose!59779 (List!74518 List!74518) Unit!169491)

(assert (=> d!2361083 (= lt!2689209 (choose!59779 input!1480 input!1480))))

(assert (=> d!2361083 (= (lemmaIsPrefixRefl!3999 input!1480 input!1480) lt!2689209)))

(declare-fun bs!1968377 () Bool)

(assert (= bs!1968377 d!2361083))

(assert (=> bs!1968377 m!8287000))

(declare-fun m!8287604 () Bool)

(assert (=> bs!1968377 m!8287604))

(assert (=> bm!734082 d!2361083))

(assert (=> d!2360841 d!2360945))

(assert (=> b!7913433 d!2361053))

(assert (=> b!7913433 d!2361035))

(declare-fun d!2361085 () Bool)

(assert (=> d!2361085 (= (inv!95479 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784)))) (isBalanced!4480 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784))))))))

(declare-fun bs!1968378 () Bool)

(assert (= bs!1968378 d!2361085))

(declare-fun m!8287606 () Bool)

(assert (=> bs!1968378 m!8287606))

(assert (=> tb!263291 d!2361085))

(declare-fun b!7913901 () Bool)

(declare-fun e!4671532 () Bool)

(declare-fun tp!2357024 () Bool)

(declare-fun tp!2357023 () Bool)

(assert (=> b!7913901 (= e!4671532 (and (inv!95478 (left!56786 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))))) tp!2357024 (inv!95478 (right!57116 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))))) tp!2357023))))

(declare-fun b!7913903 () Bool)

(declare-fun e!4671531 () Bool)

(declare-fun tp!2357025 () Bool)

(assert (=> b!7913903 (= e!4671531 tp!2357025)))

(declare-fun b!7913902 () Bool)

(declare-fun inv!95484 (IArray!31765) Bool)

(assert (=> b!7913902 (= e!4671532 (and (inv!95484 (xs!19234 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))))) e!4671531))))

(assert (=> b!7913400 (= tp!2356975 (and (inv!95478 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788)))) e!4671532))))

(assert (= (and b!7913400 ((_ is Node!15852) (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))))) b!7913901))

(assert (= b!7913902 b!7913903))

(assert (= (and b!7913400 ((_ is Leaf!30159) (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))))) b!7913902))

(declare-fun m!8287608 () Bool)

(assert (=> b!7913901 m!8287608))

(declare-fun m!8287610 () Bool)

(assert (=> b!7913901 m!8287610))

(declare-fun m!8287612 () Bool)

(assert (=> b!7913902 m!8287612))

(assert (=> b!7913400 m!8287086))

(declare-fun b!7913906 () Bool)

(declare-fun e!4671533 () Bool)

(declare-fun tp!2357028 () Bool)

(assert (=> b!7913906 (= e!4671533 tp!2357028)))

(declare-fun b!7913907 () Bool)

(declare-fun tp!2357029 () Bool)

(declare-fun tp!2357027 () Bool)

(assert (=> b!7913907 (= e!4671533 (and tp!2357029 tp!2357027))))

(declare-fun b!7913904 () Bool)

(assert (=> b!7913904 (= e!4671533 tp_is_empty!53137)))

(assert (=> b!7913471 (= tp!2356991 e!4671533)))

(declare-fun b!7913905 () Bool)

(declare-fun tp!2357030 () Bool)

(declare-fun tp!2357026 () Bool)

(assert (=> b!7913905 (= e!4671533 (and tp!2357030 tp!2357026))))

(assert (= (and b!7913471 ((_ is ElementMatch!21381) (regOne!43274 (regex!8678 rule!156)))) b!7913904))

(assert (= (and b!7913471 ((_ is Concat!30376) (regOne!43274 (regex!8678 rule!156)))) b!7913905))

(assert (= (and b!7913471 ((_ is Star!21381) (regOne!43274 (regex!8678 rule!156)))) b!7913906))

(assert (= (and b!7913471 ((_ is Union!21381) (regOne!43274 (regex!8678 rule!156)))) b!7913907))

(declare-fun b!7913910 () Bool)

(declare-fun e!4671534 () Bool)

(declare-fun tp!2357033 () Bool)

(assert (=> b!7913910 (= e!4671534 tp!2357033)))

(declare-fun b!7913911 () Bool)

(declare-fun tp!2357034 () Bool)

(declare-fun tp!2357032 () Bool)

(assert (=> b!7913911 (= e!4671534 (and tp!2357034 tp!2357032))))

(declare-fun b!7913908 () Bool)

(assert (=> b!7913908 (= e!4671534 tp_is_empty!53137)))

(assert (=> b!7913471 (= tp!2356987 e!4671534)))

(declare-fun b!7913909 () Bool)

(declare-fun tp!2357035 () Bool)

(declare-fun tp!2357031 () Bool)

(assert (=> b!7913909 (= e!4671534 (and tp!2357035 tp!2357031))))

(assert (= (and b!7913471 ((_ is ElementMatch!21381) (regTwo!43274 (regex!8678 rule!156)))) b!7913908))

(assert (= (and b!7913471 ((_ is Concat!30376) (regTwo!43274 (regex!8678 rule!156)))) b!7913909))

(assert (= (and b!7913471 ((_ is Star!21381) (regTwo!43274 (regex!8678 rule!156)))) b!7913910))

(assert (= (and b!7913471 ((_ is Union!21381) (regTwo!43274 (regex!8678 rule!156)))) b!7913911))

(declare-fun b!7913914 () Bool)

(declare-fun e!4671535 () Bool)

(declare-fun tp!2357038 () Bool)

(assert (=> b!7913914 (= e!4671535 tp!2357038)))

(declare-fun b!7913915 () Bool)

(declare-fun tp!2357039 () Bool)

(declare-fun tp!2357037 () Bool)

(assert (=> b!7913915 (= e!4671535 (and tp!2357039 tp!2357037))))

(declare-fun b!7913912 () Bool)

(assert (=> b!7913912 (= e!4671535 tp_is_empty!53137)))

(assert (=> b!7913472 (= tp!2356989 e!4671535)))

(declare-fun b!7913913 () Bool)

(declare-fun tp!2357040 () Bool)

(declare-fun tp!2357036 () Bool)

(assert (=> b!7913913 (= e!4671535 (and tp!2357040 tp!2357036))))

(assert (= (and b!7913472 ((_ is ElementMatch!21381) (reg!21710 (regex!8678 rule!156)))) b!7913912))

(assert (= (and b!7913472 ((_ is Concat!30376) (reg!21710 (regex!8678 rule!156)))) b!7913913))

(assert (= (and b!7913472 ((_ is Star!21381) (reg!21710 (regex!8678 rule!156)))) b!7913914))

(assert (= (and b!7913472 ((_ is Union!21381) (reg!21710 (regex!8678 rule!156)))) b!7913915))

(declare-fun b!7913918 () Bool)

(declare-fun e!4671536 () Bool)

(declare-fun tp!2357043 () Bool)

(assert (=> b!7913918 (= e!4671536 tp!2357043)))

(declare-fun b!7913919 () Bool)

(declare-fun tp!2357044 () Bool)

(declare-fun tp!2357042 () Bool)

(assert (=> b!7913919 (= e!4671536 (and tp!2357044 tp!2357042))))

(declare-fun b!7913916 () Bool)

(assert (=> b!7913916 (= e!4671536 tp_is_empty!53137)))

(assert (=> b!7913473 (= tp!2356990 e!4671536)))

(declare-fun b!7913917 () Bool)

(declare-fun tp!2357045 () Bool)

(declare-fun tp!2357041 () Bool)

(assert (=> b!7913917 (= e!4671536 (and tp!2357045 tp!2357041))))

(assert (= (and b!7913473 ((_ is ElementMatch!21381) (regOne!43275 (regex!8678 rule!156)))) b!7913916))

(assert (= (and b!7913473 ((_ is Concat!30376) (regOne!43275 (regex!8678 rule!156)))) b!7913917))

(assert (= (and b!7913473 ((_ is Star!21381) (regOne!43275 (regex!8678 rule!156)))) b!7913918))

(assert (= (and b!7913473 ((_ is Union!21381) (regOne!43275 (regex!8678 rule!156)))) b!7913919))

(declare-fun b!7913922 () Bool)

(declare-fun e!4671537 () Bool)

(declare-fun tp!2357048 () Bool)

(assert (=> b!7913922 (= e!4671537 tp!2357048)))

(declare-fun b!7913923 () Bool)

(declare-fun tp!2357049 () Bool)

(declare-fun tp!2357047 () Bool)

(assert (=> b!7913923 (= e!4671537 (and tp!2357049 tp!2357047))))

(declare-fun b!7913920 () Bool)

(assert (=> b!7913920 (= e!4671537 tp_is_empty!53137)))

(assert (=> b!7913473 (= tp!2356988 e!4671537)))

(declare-fun b!7913921 () Bool)

(declare-fun tp!2357050 () Bool)

(declare-fun tp!2357046 () Bool)

(assert (=> b!7913921 (= e!4671537 (and tp!2357050 tp!2357046))))

(assert (= (and b!7913473 ((_ is ElementMatch!21381) (regTwo!43275 (regex!8678 rule!156)))) b!7913920))

(assert (= (and b!7913473 ((_ is Concat!30376) (regTwo!43275 (regex!8678 rule!156)))) b!7913921))

(assert (= (and b!7913473 ((_ is Star!21381) (regTwo!43275 (regex!8678 rule!156)))) b!7913922))

(assert (= (and b!7913473 ((_ is Union!21381) (regTwo!43275 (regex!8678 rule!156)))) b!7913923))

(declare-fun b!7913924 () Bool)

(declare-fun e!4671538 () Bool)

(declare-fun tp!2357051 () Bool)

(assert (=> b!7913924 (= e!4671538 (and tp_is_empty!53137 tp!2357051))))

(assert (=> b!7913478 (= tp!2356994 e!4671538)))

(assert (= (and b!7913478 ((_ is Cons!74394) (t!389969 (t!389969 input!1480)))) b!7913924))

(declare-fun tp!2357053 () Bool)

(declare-fun e!4671540 () Bool)

(declare-fun tp!2357052 () Bool)

(declare-fun b!7913925 () Bool)

(assert (=> b!7913925 (= e!4671540 (and (inv!95478 (left!56786 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784)))))) tp!2357053 (inv!95478 (right!57116 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784)))))) tp!2357052))))

(declare-fun b!7913927 () Bool)

(declare-fun e!4671539 () Bool)

(declare-fun tp!2357054 () Bool)

(assert (=> b!7913927 (= e!4671539 tp!2357054)))

(declare-fun b!7913926 () Bool)

(assert (=> b!7913926 (= e!4671540 (and (inv!95484 (xs!19234 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784)))))) e!4671539))))

(assert (=> b!7913445 (= tp!2356976 (and (inv!95478 (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784))))) e!4671540))))

(assert (= (and b!7913445 ((_ is Node!15852) (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784)))))) b!7913925))

(assert (= b!7913926 b!7913927))

(assert (= (and b!7913445 ((_ is Leaf!30159) (c!1451878 (dynLambda!30193 (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))) (value!289298 (_1!38538 lt!2688784)))))) b!7913926))

(declare-fun m!8287614 () Bool)

(assert (=> b!7913925 m!8287614))

(declare-fun m!8287616 () Bool)

(assert (=> b!7913925 m!8287616))

(declare-fun m!8287618 () Bool)

(assert (=> b!7913926 m!8287618))

(assert (=> b!7913445 m!8287112))

(declare-fun b_lambda!290209 () Bool)

(assert (= b_lambda!290207 (or d!2360873 b_lambda!290209)))

(declare-fun bs!1968379 () Bool)

(declare-fun d!2361087 () Bool)

(assert (= bs!1968379 (and d!2361087 d!2360873)))

(assert (=> bs!1968379 (= (dynLambda!30200 lambda!472602 lt!2688788) (= (list!19333 (dynLambda!30193 (toChars!11598 (transformation!8678 rule!156)) (dynLambda!30189 (toValue!11739 (transformation!8678 rule!156)) lt!2688788))) (list!19333 lt!2688788)))))

(declare-fun b_lambda!290215 () Bool)

(assert (=> (not b_lambda!290215) (not bs!1968379)))

(assert (=> bs!1968379 t!389973))

(declare-fun b_and!353659 () Bool)

(assert (= b_and!353645 (and (=> t!389973 result!360694) b_and!353659)))

(declare-fun b_lambda!290217 () Bool)

(assert (=> (not b_lambda!290217) (not bs!1968379)))

(assert (=> bs!1968379 t!389971))

(declare-fun b_and!353661 () Bool)

(assert (= b_and!353647 (and (=> t!389971 result!360690) b_and!353661)))

(assert (=> bs!1968379 m!8287090))

(assert (=> bs!1968379 m!8287092))

(assert (=> bs!1968379 m!8287016))

(assert (=> bs!1968379 m!8286932))

(assert (=> bs!1968379 m!8286932))

(assert (=> bs!1968379 m!8287090))

(assert (=> d!2360981 d!2361087))

(declare-fun b_lambda!290211 () Bool)

(assert (= b_lambda!290183 (or (and b!7913234 b_free!135255 (= (toValue!11739 (transformation!8678 rule!156)) (toValue!11739 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))))) b_lambda!290211)))

(declare-fun b_lambda!290213 () Bool)

(assert (= b_lambda!290181 (or (and b!7913234 b_free!135257 (= (toChars!11598 (transformation!8678 rule!156)) (toChars!11598 (transformation!8678 (rule!11976 (_1!38538 lt!2688784)))))) b_lambda!290213)))

(check-sat (not b!7913606) (not b!7913703) (not b!7913878) (not b!7913923) b_and!353659 (not b!7913914) (not b!7913445) (not bm!734151) (not d!2360979) (not d!2361039) (not b!7913705) (not b!7913915) (not bm!734161) (not d!2361007) (not b!7913692) (not b!7913826) (not b!7913824) (not b!7913646) (not b!7913868) (not b_next!136047) (not d!2360961) (not b!7913918) (not b!7913901) (not b!7913690) (not b!7913842) (not b_lambda!290209) (not b!7913838) (not b!7913400) (not b!7913754) (not b_lambda!290217) (not d!2360953) (not d!2361023) (not bm!734154) (not b!7913642) (not b!7913694) (not b!7913755) (not d!2361083) (not b!7913884) (not bm!734171) b_and!353661 (not b!7913797) (not b!7913701) (not bm!734158) (not b_lambda!290189) (not b!7913800) (not b!7913672) (not bm!734127) (not b!7913697) (not d!2360965) (not d!2360977) (not bm!734156) (not b!7913911) (not b!7913710) (not d!2361043) (not bm!734136) (not d!2361085) (not b!7913849) (not b!7913906) (not b_lambda!290215) (not b!7913843) (not b!7913604) (not b!7913584) (not b!7913922) (not b!7913706) (not b!7913750) (not b!7913834) (not b!7913596) (not b!7913725) (not b!7913752) (not b!7913602) (not d!2361047) (not b!7913917) (not d!2361031) (not d!2360981) (not bm!734160) (not b_lambda!290187) (not bm!734166) (not b!7913819) (not d!2361041) (not b!7913921) (not bm!734157) (not bm!734175) (not b!7913702) (not d!2361021) (not bm!734168) (not b!7913761) (not bm!734165) (not b_next!136045) (not b!7913756) (not d!2361049) (not d!2360973) (not b!7913661) (not b!7913713) (not b!7913670) (not bm!734172) (not bm!734153) (not d!2360951) (not d!2361045) (not d!2361005) (not bm!734149) (not b!7913740) (not b!7913907) (not bm!734131) (not b!7913840) (not bm!734133) (not d!2360959) (not b_lambda!290211) (not b!7913833) (not d!2361065) (not b!7913799) (not b!7913927) (not bs!1968379) (not b!7913731) (not bm!734152) (not bm!734162) (not b!7913870) (not b!7913788) (not d!2361009) (not b!7913855) (not bm!734128) (not d!2360931) (not b!7913658) (not d!2361059) (not bm!734137) (not b!7913741) (not b!7913919) (not b!7913718) tp_is_empty!53137 (not d!2360957) (not b!7913848) (not b!7913909) (not b!7913745) (not b!7913910) (not b!7913798) (not b!7913762) (not b!7913717) (not d!2361025) (not b!7913903) (not b!7913733) (not b_lambda!290185) (not d!2361001) (not b!7913905) (not b!7913806) (not b!7913876) (not bm!734130) (not bm!734164) (not b!7913595) (not b!7913820) (not bm!734155) (not b!7913839) (not bm!734163) (not b!7913753) (not b!7913657) (not b!7913880) (not b!7913686) (not d!2361029) (not bm!734150) (not b!7913709) (not bm!734146) (not b!7913698) (not b!7913925) (not b_lambda!290213) (not b!7913902) (not b!7913882) (not d!2360955) (not b!7913663) (not bm!734134) (not d!2361011) (not d!2360993) (not b!7913748) (not d!2361081) (not bm!734167) (not b!7913812) (not b!7913632) (not b!7913684) (not b!7913645) (not d!2361077) (not d!2361003) (not b!7913687) (not bm!734159) (not b!7913924) (not b!7913638) (not bm!734129) (not b!7913747) (not d!2360987) (not b!7913641) (not b!7913913) (not b!7913714) (not b!7913926) (not b!7913659) (not b!7913841) (not b!7913662) (not d!2360991) (not bm!734135) (not b!7913727) (not d!2361037) (not d!2360983) (not b!7913729) (not d!2361063) (not b!7913865) (not b!7913695) (not b!7913805) (not bm!734132))
(check-sat b_and!353661 b_and!353659 (not b_next!136045) (not b_next!136047))
