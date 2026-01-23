; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404708 () Bool)

(assert start!404708)

(declare-fun b!4231556 () Bool)

(declare-fun b_free!124995 () Bool)

(declare-fun b_next!125699 () Bool)

(assert (=> b!4231556 (= b_free!124995 (not b_next!125699))))

(declare-fun tp!1296190 () Bool)

(declare-fun b_and!334305 () Bool)

(assert (=> b!4231556 (= tp!1296190 b_and!334305)))

(declare-fun b_free!124997 () Bool)

(declare-fun b_next!125701 () Bool)

(assert (=> b!4231556 (= b_free!124997 (not b_next!125701))))

(declare-fun tp!1296188 () Bool)

(declare-fun b_and!334307 () Bool)

(assert (=> b!4231556 (= tp!1296188 b_and!334307)))

(declare-fun b!4231551 () Bool)

(declare-fun e!2627513 () Bool)

(declare-datatypes ((C!25794 0))(
  ( (C!25795 (val!15059 Int)) )
))
(declare-datatypes ((List!46850 0))(
  ( (Nil!46726) (Cons!46726 (h!52146 C!25794) (t!349521 List!46850)) )
))
(declare-fun p!3018 () List!46850)

(declare-fun size!34246 (List!46850) Int)

(assert (=> b!4231551 (= e!2627513 (< (size!34246 p!3018) (size!34246 Nil!46726)))))

(declare-fun b!4231552 () Bool)

(declare-fun res!1740305 () Bool)

(assert (=> b!4231552 (=> (not res!1740305) (not e!2627513))))

(declare-fun input!3600 () List!46850)

(declare-fun isPrefix!4708 (List!46850 List!46850) Bool)

(assert (=> b!4231552 (= res!1740305 (isPrefix!4708 Nil!46726 input!3600))))

(declare-fun res!1740302 () Bool)

(assert (=> start!404708 (=> (not res!1740302) (not e!2627513))))

(declare-datatypes ((LexerInterface!7488 0))(
  ( (LexerInterfaceExt!7485 (__x!28469 Int)) (Lexer!7486) )
))
(declare-fun thiss!26814 () LexerInterface!7488)

(assert (=> start!404708 (= res!1740302 (is-Lexer!7486 thiss!26814))))

(assert (=> start!404708 e!2627513))

(assert (=> start!404708 true))

(declare-fun e!2627512 () Bool)

(assert (=> start!404708 e!2627512))

(declare-fun e!2627514 () Bool)

(assert (=> start!404708 e!2627514))

(declare-fun e!2627511 () Bool)

(assert (=> start!404708 e!2627511))

(declare-fun b!4231553 () Bool)

(declare-fun res!1740301 () Bool)

(assert (=> b!4231553 (=> (not res!1740301) (not e!2627513))))

(declare-datatypes ((List!46851 0))(
  ( (Nil!46727) (Cons!46727 (h!52147 (_ BitVec 16)) (t!349522 List!46851)) )
))
(declare-datatypes ((TokenValue!8123 0))(
  ( (FloatLiteralValue!16246 (text!57306 List!46851)) (TokenValueExt!8122 (__x!28470 Int)) (Broken!40615 (value!245422 List!46851)) (Object!8246) (End!8123) (Def!8123) (Underscore!8123) (Match!8123) (Else!8123) (Error!8123) (Case!8123) (If!8123) (Extends!8123) (Abstract!8123) (Class!8123) (Val!8123) (DelimiterValue!16246 (del!8183 List!46851)) (KeywordValue!8129 (value!245423 List!46851)) (CommentValue!16246 (value!245424 List!46851)) (WhitespaceValue!16246 (value!245425 List!46851)) (IndentationValue!8123 (value!245426 List!46851)) (String!54490) (Int32!8123) (Broken!40616 (value!245427 List!46851)) (Boolean!8124) (Unit!65853) (OperatorValue!8126 (op!8183 List!46851)) (IdentifierValue!16246 (value!245428 List!46851)) (IdentifierValue!16247 (value!245429 List!46851)) (WhitespaceValue!16247 (value!245430 List!46851)) (True!16246) (False!16246) (Broken!40617 (value!245431 List!46851)) (Broken!40618 (value!245432 List!46851)) (True!16247) (RightBrace!8123) (RightBracket!8123) (Colon!8123) (Null!8123) (Comma!8123) (LeftBracket!8123) (False!16247) (LeftBrace!8123) (ImaginaryLiteralValue!8123 (text!57307 List!46851)) (StringLiteralValue!24369 (value!245433 List!46851)) (EOFValue!8123 (value!245434 List!46851)) (IdentValue!8123 (value!245435 List!46851)) (DelimiterValue!16247 (value!245436 List!46851)) (DedentValue!8123 (value!245437 List!46851)) (NewLineValue!8123 (value!245438 List!46851)) (IntegerValue!24369 (value!245439 (_ BitVec 32)) (text!57308 List!46851)) (IntegerValue!24370 (value!245440 Int) (text!57309 List!46851)) (Times!8123) (Or!8123) (Equal!8123) (Minus!8123) (Broken!40619 (value!245441 List!46851)) (And!8123) (Div!8123) (LessEqual!8123) (Mod!8123) (Concat!20921) (Not!8123) (Plus!8123) (SpaceValue!8123 (value!245442 List!46851)) (IntegerValue!24371 (value!245443 Int) (text!57310 List!46851)) (StringLiteralValue!24370 (text!57311 List!46851)) (FloatLiteralValue!16247 (text!57312 List!46851)) (BytesLiteralValue!8123 (value!245444 List!46851)) (CommentValue!16247 (value!245445 List!46851)) (StringLiteralValue!24371 (value!245446 List!46851)) (ErrorTokenValue!8123 (msg!8184 List!46851)) )
))
(declare-datatypes ((String!54491 0))(
  ( (String!54492 (value!245447 String)) )
))
(declare-datatypes ((Regex!12798 0))(
  ( (ElementMatch!12798 (c!719204 C!25794)) (Concat!20922 (regOne!26108 Regex!12798) (regTwo!26108 Regex!12798)) (EmptyExpr!12798) (Star!12798 (reg!13127 Regex!12798)) (EmptyLang!12798) (Union!12798 (regOne!26109 Regex!12798) (regTwo!26109 Regex!12798)) )
))
(declare-datatypes ((IArray!28213 0))(
  ( (IArray!28214 (innerList!14164 List!46850)) )
))
(declare-datatypes ((Conc!14104 0))(
  ( (Node!14104 (left!34759 Conc!14104) (right!35089 Conc!14104) (csize!28438 Int) (cheight!14315 Int)) (Leaf!21796 (xs!17410 IArray!28213) (csize!28439 Int)) (Empty!14104) )
))
(declare-datatypes ((BalanceConc!27802 0))(
  ( (BalanceConc!27803 (c!719205 Conc!14104)) )
))
(declare-datatypes ((TokenValueInjection!15674 0))(
  ( (TokenValueInjection!15675 (toValue!10625 Int) (toChars!10484 Int)) )
))
(declare-datatypes ((Rule!15586 0))(
  ( (Rule!15587 (regex!7893 Regex!12798) (tag!8757 String!54491) (isSeparator!7893 Bool) (transformation!7893 TokenValueInjection!15674)) )
))
(declare-fun r!4353 () Rule!15586)

(declare-datatypes ((Token!14416 0))(
  ( (Token!14417 (value!245448 TokenValue!8123) (rule!11013 Rule!15586) (size!34247 Int) (originalCharacters!8239 List!46850)) )
))
(declare-datatypes ((tuple2!44346 0))(
  ( (tuple2!44347 (_1!25307 Token!14416) (_2!25307 List!46850)) )
))
(declare-datatypes ((Option!10039 0))(
  ( (None!10038) (Some!10038 (v!40966 tuple2!44346)) )
))
(declare-fun maxPrefixOneRule!3433 (LexerInterface!7488 Rule!15586 List!46850) Option!10039)

(assert (=> b!4231553 (= res!1740301 (= (maxPrefixOneRule!3433 thiss!26814 r!4353 input!3600) None!10038))))

(declare-fun b!4231554 () Bool)

(declare-fun res!1740303 () Bool)

(assert (=> b!4231554 (=> (not res!1740303) (not e!2627513))))

(declare-fun ruleValid!3589 (LexerInterface!7488 Rule!15586) Bool)

(assert (=> b!4231554 (= res!1740303 (ruleValid!3589 thiss!26814 r!4353))))

(declare-fun b!4231555 () Bool)

(declare-fun res!1740306 () Bool)

(assert (=> b!4231555 (=> (not res!1740306) (not e!2627513))))

(declare-fun validRegex!5814 (Regex!12798) Bool)

(assert (=> b!4231555 (= res!1740306 (validRegex!5814 (regex!7893 r!4353)))))

(declare-fun e!2627516 () Bool)

(assert (=> b!4231556 (= e!2627516 (and tp!1296190 tp!1296188))))

(declare-fun b!4231557 () Bool)

(declare-fun res!1740304 () Bool)

(assert (=> b!4231557 (=> (not res!1740304) (not e!2627513))))

(assert (=> b!4231557 (= res!1740304 (isPrefix!4708 p!3018 input!3600))))

(declare-fun b!4231558 () Bool)

(declare-fun tp!1296191 () Bool)

(declare-fun inv!61429 (String!54491) Bool)

(declare-fun inv!61432 (TokenValueInjection!15674) Bool)

(assert (=> b!4231558 (= e!2627511 (and tp!1296191 (inv!61429 (tag!8757 r!4353)) (inv!61432 (transformation!7893 r!4353)) e!2627516))))

(declare-fun b!4231559 () Bool)

(declare-fun tp_is_empty!22531 () Bool)

(declare-fun tp!1296189 () Bool)

(assert (=> b!4231559 (= e!2627514 (and tp_is_empty!22531 tp!1296189))))

(declare-fun b!4231560 () Bool)

(declare-fun tp!1296187 () Bool)

(assert (=> b!4231560 (= e!2627512 (and tp_is_empty!22531 tp!1296187))))

(assert (= (and start!404708 res!1740302) b!4231557))

(assert (= (and b!4231557 res!1740304) b!4231554))

(assert (= (and b!4231554 res!1740303) b!4231553))

(assert (= (and b!4231553 res!1740301) b!4231555))

(assert (= (and b!4231555 res!1740306) b!4231552))

(assert (= (and b!4231552 res!1740305) b!4231551))

(assert (= (and start!404708 (is-Cons!46726 p!3018)) b!4231560))

(assert (= (and start!404708 (is-Cons!46726 input!3600)) b!4231559))

(assert (= b!4231558 b!4231556))

(assert (= start!404708 b!4231558))

(declare-fun m!4817935 () Bool)

(assert (=> b!4231551 m!4817935))

(declare-fun m!4817937 () Bool)

(assert (=> b!4231551 m!4817937))

(declare-fun m!4817939 () Bool)

(assert (=> b!4231553 m!4817939))

(declare-fun m!4817941 () Bool)

(assert (=> b!4231552 m!4817941))

(declare-fun m!4817943 () Bool)

(assert (=> b!4231558 m!4817943))

(declare-fun m!4817945 () Bool)

(assert (=> b!4231558 m!4817945))

(declare-fun m!4817947 () Bool)

(assert (=> b!4231554 m!4817947))

(declare-fun m!4817949 () Bool)

(assert (=> b!4231555 m!4817949))

(declare-fun m!4817951 () Bool)

(assert (=> b!4231557 m!4817951))

(push 1)

(assert (not b!4231557))

(assert (not b!4231552))

(assert (not b_next!125701))

(assert (not b!4231551))

(assert (not b!4231555))

(assert b_and!334305)

(assert (not b!4231559))

(assert (not b!4231558))

(assert (not b_next!125699))

(assert (not b!4231560))

(assert tp_is_empty!22531)

(assert (not b!4231554))

(assert (not b!4231553))

(assert b_and!334307)

(check-sat)

(pop 1)

(push 1)

(assert b_and!334305)

(assert b_and!334307)

(assert (not b_next!125701))

(assert (not b_next!125699))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4231618 () Bool)

(declare-fun res!1740349 () Bool)

(declare-fun e!2627557 () Bool)

(assert (=> b!4231618 (=> (not res!1740349) (not e!2627557))))

(declare-fun head!8970 (List!46850) C!25794)

(assert (=> b!4231618 (= res!1740349 (= (head!8970 p!3018) (head!8970 input!3600)))))

(declare-fun b!4231619 () Bool)

(declare-fun tail!6817 (List!46850) List!46850)

(assert (=> b!4231619 (= e!2627557 (isPrefix!4708 (tail!6817 p!3018) (tail!6817 input!3600)))))

(declare-fun b!4231617 () Bool)

(declare-fun e!2627556 () Bool)

(assert (=> b!4231617 (= e!2627556 e!2627557)))

(declare-fun res!1740347 () Bool)

(assert (=> b!4231617 (=> (not res!1740347) (not e!2627557))))

(assert (=> b!4231617 (= res!1740347 (not (is-Nil!46726 input!3600)))))

(declare-fun d!1245164 () Bool)

(declare-fun e!2627555 () Bool)

(assert (=> d!1245164 e!2627555))

(declare-fun res!1740348 () Bool)

(assert (=> d!1245164 (=> res!1740348 e!2627555)))

(declare-fun lt!1504237 () Bool)

(assert (=> d!1245164 (= res!1740348 (not lt!1504237))))

(assert (=> d!1245164 (= lt!1504237 e!2627556)))

(declare-fun res!1740350 () Bool)

(assert (=> d!1245164 (=> res!1740350 e!2627556)))

(assert (=> d!1245164 (= res!1740350 (is-Nil!46726 p!3018))))

(assert (=> d!1245164 (= (isPrefix!4708 p!3018 input!3600) lt!1504237)))

(declare-fun b!4231620 () Bool)

(assert (=> b!4231620 (= e!2627555 (>= (size!34246 input!3600) (size!34246 p!3018)))))

(assert (= (and d!1245164 (not res!1740350)) b!4231617))

(assert (= (and b!4231617 res!1740347) b!4231618))

(assert (= (and b!4231618 res!1740349) b!4231619))

(assert (= (and d!1245164 (not res!1740348)) b!4231620))

(declare-fun m!4817971 () Bool)

(assert (=> b!4231618 m!4817971))

(declare-fun m!4817973 () Bool)

(assert (=> b!4231618 m!4817973))

(declare-fun m!4817975 () Bool)

(assert (=> b!4231619 m!4817975))

(declare-fun m!4817977 () Bool)

(assert (=> b!4231619 m!4817977))

(assert (=> b!4231619 m!4817975))

(assert (=> b!4231619 m!4817977))

(declare-fun m!4817979 () Bool)

(assert (=> b!4231619 m!4817979))

(declare-fun m!4817981 () Bool)

(assert (=> b!4231620 m!4817981))

(assert (=> b!4231620 m!4817935))

(assert (=> b!4231557 d!1245164))

(declare-fun d!1245168 () Bool)

(declare-fun lt!1504240 () Int)

(assert (=> d!1245168 (>= lt!1504240 0)))

(declare-fun e!2627560 () Int)

(assert (=> d!1245168 (= lt!1504240 e!2627560)))

(declare-fun c!719214 () Bool)

(assert (=> d!1245168 (= c!719214 (is-Nil!46726 p!3018))))

(assert (=> d!1245168 (= (size!34246 p!3018) lt!1504240)))

(declare-fun b!4231625 () Bool)

(assert (=> b!4231625 (= e!2627560 0)))

(declare-fun b!4231626 () Bool)

(assert (=> b!4231626 (= e!2627560 (+ 1 (size!34246 (t!349521 p!3018))))))

(assert (= (and d!1245168 c!719214) b!4231625))

(assert (= (and d!1245168 (not c!719214)) b!4231626))

(declare-fun m!4817983 () Bool)

(assert (=> b!4231626 m!4817983))

(assert (=> b!4231551 d!1245168))

(declare-fun d!1245170 () Bool)

(declare-fun lt!1504241 () Int)

(assert (=> d!1245170 (>= lt!1504241 0)))

(declare-fun e!2627568 () Int)

(assert (=> d!1245170 (= lt!1504241 e!2627568)))

(declare-fun c!719217 () Bool)

(assert (=> d!1245170 (= c!719217 (is-Nil!46726 Nil!46726))))

(assert (=> d!1245170 (= (size!34246 Nil!46726) lt!1504241)))

(declare-fun b!4231636 () Bool)

(assert (=> b!4231636 (= e!2627568 0)))

(declare-fun b!4231637 () Bool)

(assert (=> b!4231637 (= e!2627568 (+ 1 (size!34246 (t!349521 Nil!46726))))))

(assert (= (and d!1245170 c!719217) b!4231636))

(assert (= (and d!1245170 (not c!719217)) b!4231637))

(declare-fun m!4817985 () Bool)

(assert (=> b!4231637 m!4817985))

(assert (=> b!4231551 d!1245170))

(declare-fun d!1245172 () Bool)

(assert (=> d!1245172 (= (inv!61429 (tag!8757 r!4353)) (= (mod (str.len (value!245447 (tag!8757 r!4353))) 2) 0))))

(assert (=> b!4231558 d!1245172))

(declare-fun d!1245176 () Bool)

(declare-fun res!1740366 () Bool)

(declare-fun e!2627577 () Bool)

(assert (=> d!1245176 (=> (not res!1740366) (not e!2627577))))

(declare-fun semiInverseModEq!3432 (Int Int) Bool)

(assert (=> d!1245176 (= res!1740366 (semiInverseModEq!3432 (toChars!10484 (transformation!7893 r!4353)) (toValue!10625 (transformation!7893 r!4353))))))

(assert (=> d!1245176 (= (inv!61432 (transformation!7893 r!4353)) e!2627577)))

(declare-fun b!4231648 () Bool)

(declare-fun equivClasses!3331 (Int Int) Bool)

(assert (=> b!4231648 (= e!2627577 (equivClasses!3331 (toChars!10484 (transformation!7893 r!4353)) (toValue!10625 (transformation!7893 r!4353))))))

(assert (= (and d!1245176 res!1740366) b!4231648))

(declare-fun m!4817993 () Bool)

(assert (=> d!1245176 m!4817993))

(declare-fun m!4817995 () Bool)

(assert (=> b!4231648 m!4817995))

(assert (=> b!4231558 d!1245176))

(declare-fun b!4231685 () Bool)

(declare-fun res!1740391 () Bool)

(declare-fun e!2627598 () Bool)

(assert (=> b!4231685 (=> (not res!1740391) (not e!2627598))))

(declare-fun lt!1504260 () Option!10039)

(declare-fun get!15198 (Option!10039) tuple2!44346)

(declare-fun apply!10735 (TokenValueInjection!15674 BalanceConc!27802) TokenValue!8123)

(declare-fun seqFromList!5795 (List!46850) BalanceConc!27802)

(assert (=> b!4231685 (= res!1740391 (= (value!245448 (_1!25307 (get!15198 lt!1504260))) (apply!10735 (transformation!7893 (rule!11013 (_1!25307 (get!15198 lt!1504260)))) (seqFromList!5795 (originalCharacters!8239 (_1!25307 (get!15198 lt!1504260)))))))))

(declare-fun b!4231686 () Bool)

(declare-fun res!1740395 () Bool)

(assert (=> b!4231686 (=> (not res!1740395) (not e!2627598))))

(assert (=> b!4231686 (= res!1740395 (< (size!34246 (_2!25307 (get!15198 lt!1504260))) (size!34246 input!3600)))))

(declare-fun b!4231687 () Bool)

(declare-fun res!1740396 () Bool)

(assert (=> b!4231687 (=> (not res!1740396) (not e!2627598))))

(declare-fun ++!11914 (List!46850 List!46850) List!46850)

(declare-fun list!16868 (BalanceConc!27802) List!46850)

(declare-fun charsOf!5259 (Token!14416) BalanceConc!27802)

(assert (=> b!4231687 (= res!1740396 (= (++!11914 (list!16868 (charsOf!5259 (_1!25307 (get!15198 lt!1504260)))) (_2!25307 (get!15198 lt!1504260))) input!3600))))

(declare-fun b!4231688 () Bool)

(assert (=> b!4231688 (= e!2627598 (= (size!34247 (_1!25307 (get!15198 lt!1504260))) (size!34246 (originalCharacters!8239 (_1!25307 (get!15198 lt!1504260))))))))

(declare-fun d!1245178 () Bool)

(declare-fun e!2627596 () Bool)

(assert (=> d!1245178 e!2627596))

(declare-fun res!1740393 () Bool)

(assert (=> d!1245178 (=> res!1740393 e!2627596)))

(declare-fun isEmpty!27616 (Option!10039) Bool)

(assert (=> d!1245178 (= res!1740393 (isEmpty!27616 lt!1504260))))

(declare-fun e!2627597 () Option!10039)

(assert (=> d!1245178 (= lt!1504260 e!2627597)))

(declare-fun c!719225 () Bool)

(declare-datatypes ((tuple2!44350 0))(
  ( (tuple2!44351 (_1!25309 List!46850) (_2!25309 List!46850)) )
))
(declare-fun lt!1504261 () tuple2!44350)

(declare-fun isEmpty!27617 (List!46850) Bool)

(assert (=> d!1245178 (= c!719225 (isEmpty!27617 (_1!25309 lt!1504261)))))

(declare-fun findLongestMatch!1598 (Regex!12798 List!46850) tuple2!44350)

(assert (=> d!1245178 (= lt!1504261 (findLongestMatch!1598 (regex!7893 r!4353) input!3600))))

(assert (=> d!1245178 (ruleValid!3589 thiss!26814 r!4353)))

(assert (=> d!1245178 (= (maxPrefixOneRule!3433 thiss!26814 r!4353 input!3600) lt!1504260)))

(declare-fun b!4231689 () Bool)

(assert (=> b!4231689 (= e!2627597 None!10038)))

(declare-fun b!4231690 () Bool)

(declare-fun res!1740394 () Bool)

(assert (=> b!4231690 (=> (not res!1740394) (not e!2627598))))

(assert (=> b!4231690 (= res!1740394 (= (rule!11013 (_1!25307 (get!15198 lt!1504260))) r!4353))))

(declare-fun b!4231691 () Bool)

(declare-fun size!34250 (BalanceConc!27802) Int)

(assert (=> b!4231691 (= e!2627597 (Some!10038 (tuple2!44347 (Token!14417 (apply!10735 (transformation!7893 r!4353) (seqFromList!5795 (_1!25309 lt!1504261))) r!4353 (size!34250 (seqFromList!5795 (_1!25309 lt!1504261))) (_1!25309 lt!1504261)) (_2!25309 lt!1504261))))))

(declare-datatypes ((Unit!65855 0))(
  ( (Unit!65856) )
))
(declare-fun lt!1504259 () Unit!65855)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1658 (Regex!12798 List!46850) Unit!65855)

(assert (=> b!4231691 (= lt!1504259 (longestMatchIsAcceptedByMatchOrIsEmpty!1658 (regex!7893 r!4353) input!3600))))

(declare-fun res!1740397 () Bool)

(declare-fun findLongestMatchInner!1695 (Regex!12798 List!46850 Int List!46850 List!46850 Int) tuple2!44350)

(assert (=> b!4231691 (= res!1740397 (isEmpty!27617 (_1!25309 (findLongestMatchInner!1695 (regex!7893 r!4353) Nil!46726 (size!34246 Nil!46726) input!3600 input!3600 (size!34246 input!3600)))))))

(declare-fun e!2627599 () Bool)

(assert (=> b!4231691 (=> res!1740397 e!2627599)))

(assert (=> b!4231691 e!2627599))

(declare-fun lt!1504263 () Unit!65855)

(assert (=> b!4231691 (= lt!1504263 lt!1504259)))

(declare-fun lt!1504262 () Unit!65855)

(declare-fun lemmaSemiInverse!2526 (TokenValueInjection!15674 BalanceConc!27802) Unit!65855)

(assert (=> b!4231691 (= lt!1504262 (lemmaSemiInverse!2526 (transformation!7893 r!4353) (seqFromList!5795 (_1!25309 lt!1504261))))))

(declare-fun b!4231692 () Bool)

(assert (=> b!4231692 (= e!2627596 e!2627598)))

(declare-fun res!1740392 () Bool)

(assert (=> b!4231692 (=> (not res!1740392) (not e!2627598))))

(declare-fun matchR!6430 (Regex!12798 List!46850) Bool)

(assert (=> b!4231692 (= res!1740392 (matchR!6430 (regex!7893 r!4353) (list!16868 (charsOf!5259 (_1!25307 (get!15198 lt!1504260))))))))

(declare-fun b!4231693 () Bool)

(assert (=> b!4231693 (= e!2627599 (matchR!6430 (regex!7893 r!4353) (_1!25309 (findLongestMatchInner!1695 (regex!7893 r!4353) Nil!46726 (size!34246 Nil!46726) input!3600 input!3600 (size!34246 input!3600)))))))

(assert (= (and d!1245178 c!719225) b!4231689))

(assert (= (and d!1245178 (not c!719225)) b!4231691))

(assert (= (and b!4231691 (not res!1740397)) b!4231693))

(assert (= (and d!1245178 (not res!1740393)) b!4231692))

(assert (= (and b!4231692 res!1740392) b!4231687))

(assert (= (and b!4231687 res!1740396) b!4231686))

(assert (= (and b!4231686 res!1740395) b!4231690))

(assert (= (and b!4231690 res!1740394) b!4231685))

(assert (= (and b!4231685 res!1740391) b!4231688))

(declare-fun m!4818015 () Bool)

(assert (=> b!4231692 m!4818015))

(declare-fun m!4818017 () Bool)

(assert (=> b!4231692 m!4818017))

(assert (=> b!4231692 m!4818017))

(declare-fun m!4818019 () Bool)

(assert (=> b!4231692 m!4818019))

(assert (=> b!4231692 m!4818019))

(declare-fun m!4818021 () Bool)

(assert (=> b!4231692 m!4818021))

(assert (=> b!4231685 m!4818015))

(declare-fun m!4818023 () Bool)

(assert (=> b!4231685 m!4818023))

(assert (=> b!4231685 m!4818023))

(declare-fun m!4818025 () Bool)

(assert (=> b!4231685 m!4818025))

(assert (=> b!4231687 m!4818015))

(assert (=> b!4231687 m!4818017))

(assert (=> b!4231687 m!4818017))

(assert (=> b!4231687 m!4818019))

(assert (=> b!4231687 m!4818019))

(declare-fun m!4818027 () Bool)

(assert (=> b!4231687 m!4818027))

(declare-fun m!4818029 () Bool)

(assert (=> d!1245178 m!4818029))

(declare-fun m!4818031 () Bool)

(assert (=> d!1245178 m!4818031))

(declare-fun m!4818033 () Bool)

(assert (=> d!1245178 m!4818033))

(assert (=> d!1245178 m!4817947))

(assert (=> b!4231688 m!4818015))

(declare-fun m!4818035 () Bool)

(assert (=> b!4231688 m!4818035))

(declare-fun m!4818037 () Bool)

(assert (=> b!4231691 m!4818037))

(declare-fun m!4818039 () Bool)

(assert (=> b!4231691 m!4818039))

(declare-fun m!4818041 () Bool)

(assert (=> b!4231691 m!4818041))

(assert (=> b!4231691 m!4817981))

(assert (=> b!4231691 m!4818039))

(declare-fun m!4818043 () Bool)

(assert (=> b!4231691 m!4818043))

(declare-fun m!4818045 () Bool)

(assert (=> b!4231691 m!4818045))

(assert (=> b!4231691 m!4817937))

(assert (=> b!4231691 m!4817981))

(declare-fun m!4818047 () Bool)

(assert (=> b!4231691 m!4818047))

(assert (=> b!4231691 m!4818039))

(assert (=> b!4231691 m!4817937))

(assert (=> b!4231691 m!4818039))

(declare-fun m!4818049 () Bool)

(assert (=> b!4231691 m!4818049))

(assert (=> b!4231690 m!4818015))

(assert (=> b!4231693 m!4817937))

(assert (=> b!4231693 m!4817981))

(assert (=> b!4231693 m!4817937))

(assert (=> b!4231693 m!4817981))

(assert (=> b!4231693 m!4818047))

(declare-fun m!4818051 () Bool)

(assert (=> b!4231693 m!4818051))

(assert (=> b!4231686 m!4818015))

(declare-fun m!4818053 () Bool)

(assert (=> b!4231686 m!4818053))

(assert (=> b!4231686 m!4817981))

(assert (=> b!4231553 d!1245178))

(declare-fun b!4231695 () Bool)

(declare-fun res!1740400 () Bool)

(declare-fun e!2627602 () Bool)

(assert (=> b!4231695 (=> (not res!1740400) (not e!2627602))))

(assert (=> b!4231695 (= res!1740400 (= (head!8970 Nil!46726) (head!8970 input!3600)))))

(declare-fun b!4231696 () Bool)

(assert (=> b!4231696 (= e!2627602 (isPrefix!4708 (tail!6817 Nil!46726) (tail!6817 input!3600)))))

(declare-fun b!4231694 () Bool)

(declare-fun e!2627601 () Bool)

(assert (=> b!4231694 (= e!2627601 e!2627602)))

(declare-fun res!1740398 () Bool)

(assert (=> b!4231694 (=> (not res!1740398) (not e!2627602))))

(assert (=> b!4231694 (= res!1740398 (not (is-Nil!46726 input!3600)))))

(declare-fun d!1245188 () Bool)

(declare-fun e!2627600 () Bool)

(assert (=> d!1245188 e!2627600))

(declare-fun res!1740399 () Bool)

(assert (=> d!1245188 (=> res!1740399 e!2627600)))

(declare-fun lt!1504264 () Bool)

(assert (=> d!1245188 (= res!1740399 (not lt!1504264))))

(assert (=> d!1245188 (= lt!1504264 e!2627601)))

(declare-fun res!1740401 () Bool)

(assert (=> d!1245188 (=> res!1740401 e!2627601)))

(assert (=> d!1245188 (= res!1740401 (is-Nil!46726 Nil!46726))))

(assert (=> d!1245188 (= (isPrefix!4708 Nil!46726 input!3600) lt!1504264)))

(declare-fun b!4231697 () Bool)

(assert (=> b!4231697 (= e!2627600 (>= (size!34246 input!3600) (size!34246 Nil!46726)))))

(assert (= (and d!1245188 (not res!1740401)) b!4231694))

(assert (= (and b!4231694 res!1740398) b!4231695))

(assert (= (and b!4231695 res!1740400) b!4231696))

(assert (= (and d!1245188 (not res!1740399)) b!4231697))

(declare-fun m!4818055 () Bool)

(assert (=> b!4231695 m!4818055))

(assert (=> b!4231695 m!4817973))

(declare-fun m!4818057 () Bool)

(assert (=> b!4231696 m!4818057))

(assert (=> b!4231696 m!4817977))

(assert (=> b!4231696 m!4818057))

(assert (=> b!4231696 m!4817977))

(declare-fun m!4818059 () Bool)

(assert (=> b!4231696 m!4818059))

(assert (=> b!4231697 m!4817981))

(assert (=> b!4231697 m!4817937))

(assert (=> b!4231552 d!1245188))

(declare-fun d!1245190 () Bool)

(declare-fun res!1740406 () Bool)

(declare-fun e!2627605 () Bool)

(assert (=> d!1245190 (=> (not res!1740406) (not e!2627605))))

(assert (=> d!1245190 (= res!1740406 (validRegex!5814 (regex!7893 r!4353)))))

(assert (=> d!1245190 (= (ruleValid!3589 thiss!26814 r!4353) e!2627605)))

(declare-fun b!4231702 () Bool)

(declare-fun res!1740407 () Bool)

(assert (=> b!4231702 (=> (not res!1740407) (not e!2627605))))

(declare-fun nullable!4507 (Regex!12798) Bool)

(assert (=> b!4231702 (= res!1740407 (not (nullable!4507 (regex!7893 r!4353))))))

(declare-fun b!4231703 () Bool)

(assert (=> b!4231703 (= e!2627605 (not (= (tag!8757 r!4353) (String!54492 ""))))))

(assert (= (and d!1245190 res!1740406) b!4231702))

(assert (= (and b!4231702 res!1740407) b!4231703))

(assert (=> d!1245190 m!4817949))

(declare-fun m!4818061 () Bool)

(assert (=> b!4231702 m!4818061))

(assert (=> b!4231554 d!1245190))

(declare-fun b!4231722 () Bool)

(declare-fun res!1740421 () Bool)

(declare-fun e!2627621 () Bool)

(assert (=> b!4231722 (=> (not res!1740421) (not e!2627621))))

(declare-fun call!293482 () Bool)

(assert (=> b!4231722 (= res!1740421 call!293482)))

(declare-fun e!2627623 () Bool)

(assert (=> b!4231722 (= e!2627623 e!2627621)))

(declare-fun call!293480 () Bool)

(declare-fun bm!293475 () Bool)

(declare-fun c!719231 () Bool)

(declare-fun c!719232 () Bool)

(assert (=> bm!293475 (= call!293480 (validRegex!5814 (ite c!719231 (reg!13127 (regex!7893 r!4353)) (ite c!719232 (regOne!26109 (regex!7893 r!4353)) (regTwo!26108 (regex!7893 r!4353))))))))

(declare-fun b!4231723 () Bool)

(declare-fun e!2627622 () Bool)

(declare-fun e!2627626 () Bool)

(assert (=> b!4231723 (= e!2627622 e!2627626)))

(declare-fun res!1740420 () Bool)

(assert (=> b!4231723 (= res!1740420 (not (nullable!4507 (reg!13127 (regex!7893 r!4353)))))))

(assert (=> b!4231723 (=> (not res!1740420) (not e!2627626))))

(declare-fun bm!293476 () Bool)

(assert (=> bm!293476 (= call!293482 call!293480)))

(declare-fun b!4231724 () Bool)

(assert (=> b!4231724 (= e!2627622 e!2627623)))

(assert (=> b!4231724 (= c!719232 (is-Union!12798 (regex!7893 r!4353)))))

(declare-fun b!4231725 () Bool)

(declare-fun e!2627624 () Bool)

(declare-fun e!2627620 () Bool)

(assert (=> b!4231725 (= e!2627624 e!2627620)))

(declare-fun res!1740418 () Bool)

(assert (=> b!4231725 (=> (not res!1740418) (not e!2627620))))

(declare-fun call!293481 () Bool)

(assert (=> b!4231725 (= res!1740418 call!293481)))

(declare-fun d!1245192 () Bool)

(declare-fun res!1740419 () Bool)

(declare-fun e!2627625 () Bool)

(assert (=> d!1245192 (=> res!1740419 e!2627625)))

(assert (=> d!1245192 (= res!1740419 (is-ElementMatch!12798 (regex!7893 r!4353)))))

(assert (=> d!1245192 (= (validRegex!5814 (regex!7893 r!4353)) e!2627625)))

(declare-fun b!4231726 () Bool)

(assert (=> b!4231726 (= e!2627625 e!2627622)))

(assert (=> b!4231726 (= c!719231 (is-Star!12798 (regex!7893 r!4353)))))

(declare-fun b!4231727 () Bool)

(declare-fun res!1740422 () Bool)

(assert (=> b!4231727 (=> res!1740422 e!2627624)))

(assert (=> b!4231727 (= res!1740422 (not (is-Concat!20922 (regex!7893 r!4353))))))

(assert (=> b!4231727 (= e!2627623 e!2627624)))

(declare-fun b!4231728 () Bool)

(assert (=> b!4231728 (= e!2627620 call!293482)))

(declare-fun b!4231729 () Bool)

(assert (=> b!4231729 (= e!2627626 call!293480)))

(declare-fun b!4231730 () Bool)

(assert (=> b!4231730 (= e!2627621 call!293481)))

(declare-fun bm!293477 () Bool)

(assert (=> bm!293477 (= call!293481 (validRegex!5814 (ite c!719232 (regTwo!26109 (regex!7893 r!4353)) (regOne!26108 (regex!7893 r!4353)))))))

(assert (= (and d!1245192 (not res!1740419)) b!4231726))

(assert (= (and b!4231726 c!719231) b!4231723))

(assert (= (and b!4231726 (not c!719231)) b!4231724))

(assert (= (and b!4231723 res!1740420) b!4231729))

(assert (= (and b!4231724 c!719232) b!4231722))

(assert (= (and b!4231724 (not c!719232)) b!4231727))

(assert (= (and b!4231722 res!1740421) b!4231730))

(assert (= (and b!4231727 (not res!1740422)) b!4231725))

(assert (= (and b!4231725 res!1740418) b!4231728))

(assert (= (or b!4231730 b!4231725) bm!293477))

(assert (= (or b!4231722 b!4231728) bm!293476))

(assert (= (or b!4231729 bm!293476) bm!293475))

(declare-fun m!4818063 () Bool)

(assert (=> bm!293475 m!4818063))

(declare-fun m!4818065 () Bool)

(assert (=> b!4231723 m!4818065))

(declare-fun m!4818067 () Bool)

(assert (=> bm!293477 m!4818067))

(assert (=> b!4231555 d!1245192))

(declare-fun b!4231741 () Bool)

(declare-fun e!2627629 () Bool)

(assert (=> b!4231741 (= e!2627629 tp_is_empty!22531)))

(assert (=> b!4231558 (= tp!1296191 e!2627629)))

(declare-fun b!4231742 () Bool)

(declare-fun tp!1296217 () Bool)

(declare-fun tp!1296220 () Bool)

(assert (=> b!4231742 (= e!2627629 (and tp!1296217 tp!1296220))))

(declare-fun b!4231744 () Bool)

(declare-fun tp!1296221 () Bool)

(declare-fun tp!1296219 () Bool)

(assert (=> b!4231744 (= e!2627629 (and tp!1296221 tp!1296219))))

(declare-fun b!4231743 () Bool)

(declare-fun tp!1296218 () Bool)

(assert (=> b!4231743 (= e!2627629 tp!1296218)))

(assert (= (and b!4231558 (is-ElementMatch!12798 (regex!7893 r!4353))) b!4231741))

(assert (= (and b!4231558 (is-Concat!20922 (regex!7893 r!4353))) b!4231742))

(assert (= (and b!4231558 (is-Star!12798 (regex!7893 r!4353))) b!4231743))

(assert (= (and b!4231558 (is-Union!12798 (regex!7893 r!4353))) b!4231744))

(declare-fun b!4231749 () Bool)

(declare-fun e!2627632 () Bool)

(declare-fun tp!1296224 () Bool)

(assert (=> b!4231749 (= e!2627632 (and tp_is_empty!22531 tp!1296224))))

(assert (=> b!4231559 (= tp!1296189 e!2627632)))

(assert (= (and b!4231559 (is-Cons!46726 (t!349521 input!3600))) b!4231749))

(declare-fun b!4231750 () Bool)

(declare-fun e!2627633 () Bool)

(declare-fun tp!1296225 () Bool)

(assert (=> b!4231750 (= e!2627633 (and tp_is_empty!22531 tp!1296225))))

(assert (=> b!4231560 (= tp!1296187 e!2627633)))

(assert (= (and b!4231560 (is-Cons!46726 (t!349521 p!3018))) b!4231750))

(push 1)

(assert (not b!4231619))

(assert (not b!4231702))

(assert (not b!4231743))

(assert (not b!4231688))

(assert (not b!4231620))

(assert (not b!4231723))

(assert (not b!4231696))

(assert (not bm!293477))

(assert (not bm!293475))

(assert (not b!4231697))

(assert b_and!334307)

(assert (not b!4231626))

(assert (not b!4231690))

(assert (not b!4231695))

(assert (not b!4231687))

(assert (not b!4231685))

(assert (not b!4231749))

(assert (not b_next!125701))

(assert (not d!1245190))

(assert (not b!4231686))

(assert b_and!334305)

(assert (not b!4231693))

(assert (not d!1245176))

(assert (not b!4231750))

(assert (not b!4231744))

(assert (not b!4231742))

(assert (not b!4231618))

(assert (not b_next!125699))

(assert (not b!4231692))

(assert (not b!4231637))

(assert (not b!4231691))

(assert tp_is_empty!22531)

(assert (not b!4231648))

(assert (not d!1245178))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334305)

(assert b_and!334307)

(assert (not b_next!125701))

(assert (not b_next!125699))

(check-sat)

(pop 1)

