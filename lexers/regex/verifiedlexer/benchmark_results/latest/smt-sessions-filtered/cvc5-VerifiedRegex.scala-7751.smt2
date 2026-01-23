; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!407416 () Bool)

(assert start!407416)

(declare-fun b!4253925 () Bool)

(declare-fun b_free!126555 () Bool)

(declare-fun b_next!127259 () Bool)

(assert (=> b!4253925 (= b_free!126555 (not b_next!127259))))

(declare-fun tp!1305538 () Bool)

(declare-fun b_and!337365 () Bool)

(assert (=> b!4253925 (= tp!1305538 b_and!337365)))

(declare-fun b_free!126557 () Bool)

(declare-fun b_next!127261 () Bool)

(assert (=> b!4253925 (= b_free!126557 (not b_next!127261))))

(declare-fun tp!1305537 () Bool)

(declare-fun b_and!337367 () Bool)

(assert (=> b!4253925 (= tp!1305537 b_and!337367)))

(declare-fun b!4253933 () Bool)

(declare-fun b_free!126559 () Bool)

(declare-fun b_next!127263 () Bool)

(assert (=> b!4253933 (= b_free!126559 (not b_next!127263))))

(declare-fun tp!1305542 () Bool)

(declare-fun b_and!337369 () Bool)

(assert (=> b!4253933 (= tp!1305542 b_and!337369)))

(declare-fun b_free!126561 () Bool)

(declare-fun b_next!127265 () Bool)

(assert (=> b!4253933 (= b_free!126561 (not b_next!127265))))

(declare-fun tp!1305546 () Bool)

(declare-fun b_and!337371 () Bool)

(assert (=> b!4253933 (= tp!1305546 b_and!337371)))

(declare-fun b!4253921 () Bool)

(declare-fun tp!1305545 () Bool)

(declare-fun e!2642258 () Bool)

(declare-datatypes ((List!47280 0))(
  ( (Nil!47156) (Cons!47156 (h!52576 (_ BitVec 16)) (t!352775 List!47280)) )
))
(declare-datatypes ((TokenValue!8215 0))(
  ( (FloatLiteralValue!16430 (text!57950 List!47280)) (TokenValueExt!8214 (__x!28653 Int)) (Broken!41075 (value!248084 List!47280)) (Object!8338) (End!8215) (Def!8215) (Underscore!8215) (Match!8215) (Else!8215) (Error!8215) (Case!8215) (If!8215) (Extends!8215) (Abstract!8215) (Class!8215) (Val!8215) (DelimiterValue!16430 (del!8275 List!47280)) (KeywordValue!8221 (value!248085 List!47280)) (CommentValue!16430 (value!248086 List!47280)) (WhitespaceValue!16430 (value!248087 List!47280)) (IndentationValue!8215 (value!248088 List!47280)) (String!55006) (Int32!8215) (Broken!41076 (value!248089 List!47280)) (Boolean!8216) (Unit!66097) (OperatorValue!8218 (op!8275 List!47280)) (IdentifierValue!16430 (value!248090 List!47280)) (IdentifierValue!16431 (value!248091 List!47280)) (WhitespaceValue!16431 (value!248092 List!47280)) (True!16430) (False!16430) (Broken!41077 (value!248093 List!47280)) (Broken!41078 (value!248094 List!47280)) (True!16431) (RightBrace!8215) (RightBracket!8215) (Colon!8215) (Null!8215) (Comma!8215) (LeftBracket!8215) (False!16431) (LeftBrace!8215) (ImaginaryLiteralValue!8215 (text!57951 List!47280)) (StringLiteralValue!24645 (value!248095 List!47280)) (EOFValue!8215 (value!248096 List!47280)) (IdentValue!8215 (value!248097 List!47280)) (DelimiterValue!16431 (value!248098 List!47280)) (DedentValue!8215 (value!248099 List!47280)) (NewLineValue!8215 (value!248100 List!47280)) (IntegerValue!24645 (value!248101 (_ BitVec 32)) (text!57952 List!47280)) (IntegerValue!24646 (value!248102 Int) (text!57953 List!47280)) (Times!8215) (Or!8215) (Equal!8215) (Minus!8215) (Broken!41079 (value!248103 List!47280)) (And!8215) (Div!8215) (LessEqual!8215) (Mod!8215) (Concat!21105) (Not!8215) (Plus!8215) (SpaceValue!8215 (value!248104 List!47280)) (IntegerValue!24647 (value!248105 Int) (text!57954 List!47280)) (StringLiteralValue!24646 (text!57955 List!47280)) (FloatLiteralValue!16431 (text!57956 List!47280)) (BytesLiteralValue!8215 (value!248106 List!47280)) (CommentValue!16431 (value!248107 List!47280)) (StringLiteralValue!24647 (value!248108 List!47280)) (ErrorTokenValue!8215 (msg!8276 List!47280)) )
))
(declare-datatypes ((C!25978 0))(
  ( (C!25979 (val!15179 Int)) )
))
(declare-datatypes ((List!47281 0))(
  ( (Nil!47157) (Cons!47157 (h!52577 C!25978) (t!352776 List!47281)) )
))
(declare-datatypes ((IArray!28397 0))(
  ( (IArray!28398 (innerList!14256 List!47281)) )
))
(declare-datatypes ((Conc!14196 0))(
  ( (Node!14196 (left!34955 Conc!14196) (right!35285 Conc!14196) (csize!28622 Int) (cheight!14407 Int)) (Leaf!21948 (xs!17502 IArray!28397) (csize!28623 Int)) (Empty!14196) )
))
(declare-datatypes ((BalanceConc!27986 0))(
  ( (BalanceConc!27987 (c!722271 Conc!14196)) )
))
(declare-datatypes ((TokenValueInjection!15858 0))(
  ( (TokenValueInjection!15859 (toValue!10761 Int) (toChars!10620 Int)) )
))
(declare-datatypes ((Regex!12890 0))(
  ( (ElementMatch!12890 (c!722272 C!25978)) (Concat!21106 (regOne!26292 Regex!12890) (regTwo!26292 Regex!12890)) (EmptyExpr!12890) (Star!12890 (reg!13219 Regex!12890)) (EmptyLang!12890) (Union!12890 (regOne!26293 Regex!12890) (regTwo!26293 Regex!12890)) )
))
(declare-datatypes ((String!55007 0))(
  ( (String!55008 (value!248109 String)) )
))
(declare-datatypes ((Rule!15770 0))(
  ( (Rule!15771 (regex!7985 Regex!12890) (tag!8849 String!55007) (isSeparator!7985 Bool) (transformation!7985 TokenValueInjection!15858)) )
))
(declare-datatypes ((Token!14596 0))(
  ( (Token!14597 (value!248110 TokenValue!8215) (rule!11121 Rule!15770) (size!34515 Int) (originalCharacters!8329 List!47281)) )
))
(declare-datatypes ((List!47282 0))(
  ( (Nil!47158) (Cons!47158 (h!52578 Token!14596) (t!352777 List!47282)) )
))
(declare-fun tokens!592 () List!47282)

(declare-fun e!2642267 () Bool)

(declare-fun inv!21 (TokenValue!8215) Bool)

(assert (=> b!4253921 (= e!2642267 (and (inv!21 (value!248110 (h!52578 tokens!592))) e!2642258 tp!1305545))))

(declare-fun b!4253922 () Bool)

(declare-fun res!1748686 () Bool)

(declare-fun e!2642257 () Bool)

(assert (=> b!4253922 (=> (not res!1748686) (not e!2642257))))

(declare-fun longerInput!62 () List!47281)

(declare-fun shorterInput!62 () List!47281)

(declare-fun size!34516 (List!47281) Int)

(assert (=> b!4253922 (= res!1748686 (> (size!34516 longerInput!62) (size!34516 shorterInput!62)))))

(declare-fun e!2642261 () Bool)

(declare-datatypes ((List!47283 0))(
  ( (Nil!47159) (Cons!47159 (h!52579 Rule!15770) (t!352778 List!47283)) )
))
(declare-fun rules!2971 () List!47283)

(declare-fun tp!1305535 () Bool)

(declare-fun e!2642260 () Bool)

(declare-fun b!4253923 () Bool)

(declare-fun inv!61941 (String!55007) Bool)

(declare-fun inv!61944 (TokenValueInjection!15858) Bool)

(assert (=> b!4253923 (= e!2642261 (and tp!1305535 (inv!61941 (tag!8849 (h!52579 rules!2971))) (inv!61944 (transformation!7985 (h!52579 rules!2971))) e!2642260))))

(declare-fun b!4253924 () Bool)

(declare-fun res!1748689 () Bool)

(assert (=> b!4253924 (=> (not res!1748689) (not e!2642257))))

(declare-fun isEmpty!27908 (List!47281) Bool)

(assert (=> b!4253924 (= res!1748689 (not (isEmpty!27908 longerInput!62)))))

(declare-fun e!2642255 () Bool)

(assert (=> b!4253925 (= e!2642255 (and tp!1305538 tp!1305537))))

(declare-fun b!4253926 () Bool)

(declare-fun e!2642268 () Bool)

(declare-fun tp!1305536 () Bool)

(assert (=> b!4253926 (= e!2642268 (and e!2642261 tp!1305536))))

(declare-fun b!4253927 () Bool)

(declare-fun e!2642262 () Bool)

(assert (=> b!4253927 (= e!2642257 e!2642262)))

(declare-fun res!1748688 () Bool)

(assert (=> b!4253927 (=> (not res!1748688) (not e!2642262))))

(declare-datatypes ((LexerInterface!7580 0))(
  ( (LexerInterfaceExt!7577 (__x!28654 Int)) (Lexer!7578) )
))
(declare-fun thiss!21641 () LexerInterface!7580)

(declare-datatypes ((tuple2!44710 0))(
  ( (tuple2!44711 (_1!25489 List!47282) (_2!25489 List!47281)) )
))
(declare-fun lt!1509376 () tuple2!44710)

(declare-fun lexList!2086 (LexerInterface!7580 List!47283 List!47281) tuple2!44710)

(assert (=> b!4253927 (= res!1748688 (= (lexList!2086 thiss!21641 rules!2971 longerInput!62) lt!1509376))))

(declare-fun suffix!1284 () List!47281)

(assert (=> b!4253927 (= lt!1509376 (tuple2!44711 tokens!592 suffix!1284))))

(declare-fun b!4253928 () Bool)

(declare-fun e!2642264 () Bool)

(assert (=> b!4253928 (= e!2642262 e!2642264)))

(declare-fun res!1748691 () Bool)

(assert (=> b!4253928 (=> (not res!1748691) (not e!2642264))))

(declare-datatypes ((tuple2!44712 0))(
  ( (tuple2!44713 (_1!25490 Token!14596) (_2!25490 List!47281)) )
))
(declare-datatypes ((Option!10119 0))(
  ( (None!10118) (Some!10118 (v!41078 tuple2!44712)) )
))
(declare-fun lt!1509377 () Option!10119)

(declare-fun lt!1509375 () Option!10119)

(assert (=> b!4253928 (= res!1748691 (and (or (not (is-Some!10118 lt!1509377)) (not (is-Some!10118 lt!1509375))) (or (not (is-Some!10118 lt!1509377)) (not (is-None!10118 lt!1509375))) (is-None!10118 lt!1509377) (is-Some!10118 lt!1509375)))))

(declare-fun maxPrefix!4536 (LexerInterface!7580 List!47283 List!47281) Option!10119)

(assert (=> b!4253928 (= lt!1509375 (maxPrefix!4536 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> b!4253928 (= lt!1509377 (maxPrefix!4536 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4253929 () Bool)

(declare-fun tp!1305544 () Bool)

(assert (=> b!4253929 (= e!2642258 (and tp!1305544 (inv!61941 (tag!8849 (rule!11121 (h!52578 tokens!592)))) (inv!61944 (transformation!7985 (rule!11121 (h!52578 tokens!592)))) e!2642255))))

(declare-fun b!4253930 () Bool)

(declare-fun res!1748690 () Bool)

(assert (=> b!4253930 (=> (not res!1748690) (not e!2642257))))

(declare-fun isEmpty!27909 (List!47283) Bool)

(assert (=> b!4253930 (= res!1748690 (not (isEmpty!27909 rules!2971)))))

(declare-fun b!4253931 () Bool)

(assert (=> b!4253931 (= e!2642264 (= (lexList!2086 thiss!21641 rules!2971 shorterInput!62) lt!1509376))))

(declare-fun res!1748687 () Bool)

(assert (=> start!407416 (=> (not res!1748687) (not e!2642257))))

(assert (=> start!407416 (= res!1748687 (is-Lexer!7578 thiss!21641))))

(assert (=> start!407416 e!2642257))

(assert (=> start!407416 true))

(declare-fun e!2642256 () Bool)

(assert (=> start!407416 e!2642256))

(declare-fun e!2642266 () Bool)

(assert (=> start!407416 e!2642266))

(declare-fun e!2642263 () Bool)

(assert (=> start!407416 e!2642263))

(assert (=> start!407416 e!2642268))

(declare-fun e!2642265 () Bool)

(assert (=> start!407416 e!2642265))

(declare-fun tp!1305543 () Bool)

(declare-fun b!4253932 () Bool)

(declare-fun inv!61945 (Token!14596) Bool)

(assert (=> b!4253932 (= e!2642263 (and (inv!61945 (h!52578 tokens!592)) e!2642267 tp!1305543))))

(assert (=> b!4253933 (= e!2642260 (and tp!1305542 tp!1305546))))

(declare-fun b!4253934 () Bool)

(declare-fun tp_is_empty!22771 () Bool)

(declare-fun tp!1305540 () Bool)

(assert (=> b!4253934 (= e!2642265 (and tp_is_empty!22771 tp!1305540))))

(declare-fun b!4253935 () Bool)

(declare-fun tp!1305539 () Bool)

(assert (=> b!4253935 (= e!2642256 (and tp_is_empty!22771 tp!1305539))))

(declare-fun b!4253936 () Bool)

(declare-fun res!1748692 () Bool)

(assert (=> b!4253936 (=> (not res!1748692) (not e!2642257))))

(declare-fun rulesInvariant!6691 (LexerInterface!7580 List!47283) Bool)

(assert (=> b!4253936 (= res!1748692 (rulesInvariant!6691 thiss!21641 rules!2971))))

(declare-fun b!4253937 () Bool)

(declare-fun tp!1305541 () Bool)

(assert (=> b!4253937 (= e!2642266 (and tp_is_empty!22771 tp!1305541))))

(assert (= (and start!407416 res!1748687) b!4253930))

(assert (= (and b!4253930 res!1748690) b!4253936))

(assert (= (and b!4253936 res!1748692) b!4253924))

(assert (= (and b!4253924 res!1748689) b!4253922))

(assert (= (and b!4253922 res!1748686) b!4253927))

(assert (= (and b!4253927 res!1748688) b!4253928))

(assert (= (and b!4253928 res!1748691) b!4253931))

(assert (= (and start!407416 (is-Cons!47157 suffix!1284)) b!4253935))

(assert (= (and start!407416 (is-Cons!47157 longerInput!62)) b!4253937))

(assert (= b!4253929 b!4253925))

(assert (= b!4253921 b!4253929))

(assert (= b!4253932 b!4253921))

(assert (= (and start!407416 (is-Cons!47158 tokens!592)) b!4253932))

(assert (= b!4253923 b!4253933))

(assert (= b!4253926 b!4253923))

(assert (= (and start!407416 (is-Cons!47159 rules!2971)) b!4253926))

(assert (= (and start!407416 (is-Cons!47157 shorterInput!62)) b!4253934))

(declare-fun m!4838747 () Bool)

(assert (=> b!4253936 m!4838747))

(declare-fun m!4838749 () Bool)

(assert (=> b!4253921 m!4838749))

(declare-fun m!4838751 () Bool)

(assert (=> b!4253923 m!4838751))

(declare-fun m!4838753 () Bool)

(assert (=> b!4253923 m!4838753))

(declare-fun m!4838755 () Bool)

(assert (=> b!4253927 m!4838755))

(declare-fun m!4838757 () Bool)

(assert (=> b!4253930 m!4838757))

(declare-fun m!4838759 () Bool)

(assert (=> b!4253932 m!4838759))

(declare-fun m!4838761 () Bool)

(assert (=> b!4253929 m!4838761))

(declare-fun m!4838763 () Bool)

(assert (=> b!4253929 m!4838763))

(declare-fun m!4838765 () Bool)

(assert (=> b!4253931 m!4838765))

(declare-fun m!4838767 () Bool)

(assert (=> b!4253922 m!4838767))

(declare-fun m!4838769 () Bool)

(assert (=> b!4253922 m!4838769))

(declare-fun m!4838771 () Bool)

(assert (=> b!4253928 m!4838771))

(declare-fun m!4838773 () Bool)

(assert (=> b!4253928 m!4838773))

(declare-fun m!4838775 () Bool)

(assert (=> b!4253924 m!4838775))

(push 1)

(assert (not b!4253935))

(assert (not b!4253923))

(assert (not b!4253926))

(assert b_and!337371)

(assert (not b!4253937))

(assert (not b!4253928))

(assert (not b!4253936))

(assert (not b!4253921))

(assert (not b_next!127259))

(assert (not b!4253932))

(assert (not b!4253931))

(assert b_and!337369)

(assert (not b_next!127265))

(assert b_and!337365)

(assert tp_is_empty!22771)

(assert (not b!4253924))

(assert (not b!4253929))

(assert b_and!337367)

(assert (not b!4253922))

(assert (not b!4253930))

(assert (not b!4253934))

(assert (not b_next!127261))

(assert (not b_next!127263))

(assert (not b!4253927))

(check-sat)

(pop 1)

(push 1)

(assert b_and!337371)

(assert b_and!337367)

(assert (not b_next!127261))

(assert (not b_next!127259))

(assert (not b_next!127263))

(assert b_and!337369)

(assert (not b_next!127265))

(assert b_and!337365)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1250826 () Bool)

(assert (=> d!1250826 (= (inv!61941 (tag!8849 (rule!11121 (h!52578 tokens!592)))) (= (mod (str.len (value!248109 (tag!8849 (rule!11121 (h!52578 tokens!592))))) 2) 0))))

(assert (=> b!4253929 d!1250826))

(declare-fun d!1250828 () Bool)

(declare-fun res!1748723 () Bool)

(declare-fun e!2642328 () Bool)

(assert (=> d!1250828 (=> (not res!1748723) (not e!2642328))))

(declare-fun semiInverseModEq!3487 (Int Int) Bool)

(assert (=> d!1250828 (= res!1748723 (semiInverseModEq!3487 (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))) (toValue!10761 (transformation!7985 (rule!11121 (h!52578 tokens!592))))))))

(assert (=> d!1250828 (= (inv!61944 (transformation!7985 (rule!11121 (h!52578 tokens!592)))) e!2642328)))

(declare-fun b!4254002 () Bool)

(declare-fun equivClasses!3386 (Int Int) Bool)

(assert (=> b!4254002 (= e!2642328 (equivClasses!3386 (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))) (toValue!10761 (transformation!7985 (rule!11121 (h!52578 tokens!592))))))))

(assert (= (and d!1250828 res!1748723) b!4254002))

(declare-fun m!4838815 () Bool)

(assert (=> d!1250828 m!4838815))

(declare-fun m!4838817 () Bool)

(assert (=> b!4254002 m!4838817))

(assert (=> b!4253929 d!1250828))

(declare-fun d!1250834 () Bool)

(assert (=> d!1250834 (= (isEmpty!27908 longerInput!62) (is-Nil!47157 longerInput!62))))

(assert (=> b!4253924 d!1250834))

(declare-fun d!1250836 () Bool)

(declare-fun lt!1509393 () Int)

(assert (=> d!1250836 (>= lt!1509393 0)))

(declare-fun e!2642337 () Int)

(assert (=> d!1250836 (= lt!1509393 e!2642337)))

(declare-fun c!722286 () Bool)

(assert (=> d!1250836 (= c!722286 (is-Nil!47157 longerInput!62))))

(assert (=> d!1250836 (= (size!34516 longerInput!62) lt!1509393)))

(declare-fun b!4254017 () Bool)

(assert (=> b!4254017 (= e!2642337 0)))

(declare-fun b!4254018 () Bool)

(assert (=> b!4254018 (= e!2642337 (+ 1 (size!34516 (t!352776 longerInput!62))))))

(assert (= (and d!1250836 c!722286) b!4254017))

(assert (= (and d!1250836 (not c!722286)) b!4254018))

(declare-fun m!4838819 () Bool)

(assert (=> b!4254018 m!4838819))

(assert (=> b!4253922 d!1250836))

(declare-fun d!1250838 () Bool)

(declare-fun lt!1509394 () Int)

(assert (=> d!1250838 (>= lt!1509394 0)))

(declare-fun e!2642338 () Int)

(assert (=> d!1250838 (= lt!1509394 e!2642338)))

(declare-fun c!722287 () Bool)

(assert (=> d!1250838 (= c!722287 (is-Nil!47157 shorterInput!62))))

(assert (=> d!1250838 (= (size!34516 shorterInput!62) lt!1509394)))

(declare-fun b!4254019 () Bool)

(assert (=> b!4254019 (= e!2642338 0)))

(declare-fun b!4254020 () Bool)

(assert (=> b!4254020 (= e!2642338 (+ 1 (size!34516 (t!352776 shorterInput!62))))))

(assert (= (and d!1250838 c!722287) b!4254019))

(assert (= (and d!1250838 (not c!722287)) b!4254020))

(declare-fun m!4838821 () Bool)

(assert (=> b!4254020 m!4838821))

(assert (=> b!4253922 d!1250838))

(declare-fun b!4254059 () Bool)

(declare-fun e!2642358 () Option!10119)

(declare-fun call!294025 () Option!10119)

(assert (=> b!4254059 (= e!2642358 call!294025)))

(declare-fun b!4254060 () Bool)

(declare-fun res!1748745 () Bool)

(declare-fun e!2642359 () Bool)

(assert (=> b!4254060 (=> (not res!1748745) (not e!2642359))))

(declare-fun lt!1509417 () Option!10119)

(declare-fun matchR!6478 (Regex!12890 List!47281) Bool)

(declare-fun get!15306 (Option!10119) tuple2!44712)

(declare-fun list!16990 (BalanceConc!27986) List!47281)

(declare-fun charsOf!5324 (Token!14596) BalanceConc!27986)

(assert (=> b!4254060 (= res!1748745 (matchR!6478 (regex!7985 (rule!11121 (_1!25490 (get!15306 lt!1509417)))) (list!16990 (charsOf!5324 (_1!25490 (get!15306 lt!1509417))))))))

(declare-fun b!4254061 () Bool)

(declare-fun res!1748749 () Bool)

(assert (=> b!4254061 (=> (not res!1748749) (not e!2642359))))

(declare-fun ++!11993 (List!47281 List!47281) List!47281)

(assert (=> b!4254061 (= res!1748749 (= (++!11993 (list!16990 (charsOf!5324 (_1!25490 (get!15306 lt!1509417)))) (_2!25490 (get!15306 lt!1509417))) shorterInput!62))))

(declare-fun b!4254062 () Bool)

(declare-fun res!1748748 () Bool)

(assert (=> b!4254062 (=> (not res!1748748) (not e!2642359))))

(assert (=> b!4254062 (= res!1748748 (= (list!16990 (charsOf!5324 (_1!25490 (get!15306 lt!1509417)))) (originalCharacters!8329 (_1!25490 (get!15306 lt!1509417)))))))

(declare-fun b!4254063 () Bool)

(declare-fun e!2642357 () Bool)

(assert (=> b!4254063 (= e!2642357 e!2642359)))

(declare-fun res!1748744 () Bool)

(assert (=> b!4254063 (=> (not res!1748744) (not e!2642359))))

(declare-fun isDefined!7470 (Option!10119) Bool)

(assert (=> b!4254063 (= res!1748744 (isDefined!7470 lt!1509417))))

(declare-fun b!4254064 () Bool)

(declare-fun lt!1509414 () Option!10119)

(declare-fun lt!1509415 () Option!10119)

(assert (=> b!4254064 (= e!2642358 (ite (and (is-None!10118 lt!1509414) (is-None!10118 lt!1509415)) None!10118 (ite (is-None!10118 lt!1509415) lt!1509414 (ite (is-None!10118 lt!1509414) lt!1509415 (ite (>= (size!34515 (_1!25490 (v!41078 lt!1509414))) (size!34515 (_1!25490 (v!41078 lt!1509415)))) lt!1509414 lt!1509415)))))))

(assert (=> b!4254064 (= lt!1509414 call!294025)))

(assert (=> b!4254064 (= lt!1509415 (maxPrefix!4536 thiss!21641 (t!352778 rules!2971) shorterInput!62))))

(declare-fun d!1250840 () Bool)

(assert (=> d!1250840 e!2642357))

(declare-fun res!1748746 () Bool)

(assert (=> d!1250840 (=> res!1748746 e!2642357)))

(declare-fun isEmpty!27912 (Option!10119) Bool)

(assert (=> d!1250840 (= res!1748746 (isEmpty!27912 lt!1509417))))

(assert (=> d!1250840 (= lt!1509417 e!2642358)))

(declare-fun c!722298 () Bool)

(assert (=> d!1250840 (= c!722298 (and (is-Cons!47159 rules!2971) (is-Nil!47159 (t!352778 rules!2971))))))

(declare-datatypes ((Unit!66099 0))(
  ( (Unit!66100) )
))
(declare-fun lt!1509416 () Unit!66099)

(declare-fun lt!1509418 () Unit!66099)

(assert (=> d!1250840 (= lt!1509416 lt!1509418)))

(declare-fun isPrefix!4755 (List!47281 List!47281) Bool)

(assert (=> d!1250840 (isPrefix!4755 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3152 (List!47281 List!47281) Unit!66099)

(assert (=> d!1250840 (= lt!1509418 (lemmaIsPrefixRefl!3152 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!3006 (LexerInterface!7580 List!47283) Bool)

(assert (=> d!1250840 (rulesValidInductive!3006 thiss!21641 rules!2971)))

(assert (=> d!1250840 (= (maxPrefix!4536 thiss!21641 rules!2971 shorterInput!62) lt!1509417)))

(declare-fun bm!294020 () Bool)

(declare-fun maxPrefixOneRule!3481 (LexerInterface!7580 Rule!15770 List!47281) Option!10119)

(assert (=> bm!294020 (= call!294025 (maxPrefixOneRule!3481 thiss!21641 (h!52579 rules!2971) shorterInput!62))))

(declare-fun b!4254065 () Bool)

(declare-fun res!1748750 () Bool)

(assert (=> b!4254065 (=> (not res!1748750) (not e!2642359))))

(declare-fun apply!10782 (TokenValueInjection!15858 BalanceConc!27986) TokenValue!8215)

(declare-fun seqFromList!5842 (List!47281) BalanceConc!27986)

(assert (=> b!4254065 (= res!1748750 (= (value!248110 (_1!25490 (get!15306 lt!1509417))) (apply!10782 (transformation!7985 (rule!11121 (_1!25490 (get!15306 lt!1509417)))) (seqFromList!5842 (originalCharacters!8329 (_1!25490 (get!15306 lt!1509417)))))))))

(declare-fun b!4254066 () Bool)

(declare-fun res!1748747 () Bool)

(assert (=> b!4254066 (=> (not res!1748747) (not e!2642359))))

(assert (=> b!4254066 (= res!1748747 (< (size!34516 (_2!25490 (get!15306 lt!1509417))) (size!34516 shorterInput!62)))))

(declare-fun b!4254067 () Bool)

(declare-fun contains!9769 (List!47283 Rule!15770) Bool)

(assert (=> b!4254067 (= e!2642359 (contains!9769 rules!2971 (rule!11121 (_1!25490 (get!15306 lt!1509417)))))))

(assert (= (and d!1250840 c!722298) b!4254059))

(assert (= (and d!1250840 (not c!722298)) b!4254064))

(assert (= (or b!4254059 b!4254064) bm!294020))

(assert (= (and d!1250840 (not res!1748746)) b!4254063))

(assert (= (and b!4254063 res!1748744) b!4254062))

(assert (= (and b!4254062 res!1748748) b!4254066))

(assert (= (and b!4254066 res!1748747) b!4254061))

(assert (= (and b!4254061 res!1748749) b!4254065))

(assert (= (and b!4254065 res!1748750) b!4254060))

(assert (= (and b!4254060 res!1748745) b!4254067))

(declare-fun m!4838841 () Bool)

(assert (=> b!4254065 m!4838841))

(declare-fun m!4838843 () Bool)

(assert (=> b!4254065 m!4838843))

(assert (=> b!4254065 m!4838843))

(declare-fun m!4838847 () Bool)

(assert (=> b!4254065 m!4838847))

(declare-fun m!4838851 () Bool)

(assert (=> b!4254063 m!4838851))

(assert (=> b!4254060 m!4838841))

(declare-fun m!4838853 () Bool)

(assert (=> b!4254060 m!4838853))

(assert (=> b!4254060 m!4838853))

(declare-fun m!4838855 () Bool)

(assert (=> b!4254060 m!4838855))

(assert (=> b!4254060 m!4838855))

(declare-fun m!4838857 () Bool)

(assert (=> b!4254060 m!4838857))

(assert (=> b!4254061 m!4838841))

(assert (=> b!4254061 m!4838853))

(assert (=> b!4254061 m!4838853))

(assert (=> b!4254061 m!4838855))

(assert (=> b!4254061 m!4838855))

(declare-fun m!4838859 () Bool)

(assert (=> b!4254061 m!4838859))

(assert (=> b!4254066 m!4838841))

(declare-fun m!4838861 () Bool)

(assert (=> b!4254066 m!4838861))

(assert (=> b!4254066 m!4838769))

(declare-fun m!4838863 () Bool)

(assert (=> b!4254064 m!4838863))

(assert (=> b!4254062 m!4838841))

(assert (=> b!4254062 m!4838853))

(assert (=> b!4254062 m!4838853))

(assert (=> b!4254062 m!4838855))

(assert (=> b!4254067 m!4838841))

(declare-fun m!4838865 () Bool)

(assert (=> b!4254067 m!4838865))

(declare-fun m!4838867 () Bool)

(assert (=> d!1250840 m!4838867))

(declare-fun m!4838869 () Bool)

(assert (=> d!1250840 m!4838869))

(declare-fun m!4838871 () Bool)

(assert (=> d!1250840 m!4838871))

(declare-fun m!4838873 () Bool)

(assert (=> d!1250840 m!4838873))

(declare-fun m!4838875 () Bool)

(assert (=> bm!294020 m!4838875))

(assert (=> b!4253928 d!1250840))

(declare-fun b!4254072 () Bool)

(declare-fun e!2642365 () Option!10119)

(declare-fun call!294026 () Option!10119)

(assert (=> b!4254072 (= e!2642365 call!294026)))

(declare-fun b!4254073 () Bool)

(declare-fun res!1748756 () Bool)

(declare-fun e!2642366 () Bool)

(assert (=> b!4254073 (=> (not res!1748756) (not e!2642366))))

(declare-fun lt!1509422 () Option!10119)

(assert (=> b!4254073 (= res!1748756 (matchR!6478 (regex!7985 (rule!11121 (_1!25490 (get!15306 lt!1509422)))) (list!16990 (charsOf!5324 (_1!25490 (get!15306 lt!1509422))))))))

(declare-fun b!4254074 () Bool)

(declare-fun res!1748760 () Bool)

(assert (=> b!4254074 (=> (not res!1748760) (not e!2642366))))

(assert (=> b!4254074 (= res!1748760 (= (++!11993 (list!16990 (charsOf!5324 (_1!25490 (get!15306 lt!1509422)))) (_2!25490 (get!15306 lt!1509422))) longerInput!62))))

(declare-fun b!4254075 () Bool)

(declare-fun res!1748759 () Bool)

(assert (=> b!4254075 (=> (not res!1748759) (not e!2642366))))

(assert (=> b!4254075 (= res!1748759 (= (list!16990 (charsOf!5324 (_1!25490 (get!15306 lt!1509422)))) (originalCharacters!8329 (_1!25490 (get!15306 lt!1509422)))))))

(declare-fun b!4254076 () Bool)

(declare-fun e!2642364 () Bool)

(assert (=> b!4254076 (= e!2642364 e!2642366)))

(declare-fun res!1748755 () Bool)

(assert (=> b!4254076 (=> (not res!1748755) (not e!2642366))))

(assert (=> b!4254076 (= res!1748755 (isDefined!7470 lt!1509422))))

(declare-fun b!4254077 () Bool)

(declare-fun lt!1509419 () Option!10119)

(declare-fun lt!1509420 () Option!10119)

(assert (=> b!4254077 (= e!2642365 (ite (and (is-None!10118 lt!1509419) (is-None!10118 lt!1509420)) None!10118 (ite (is-None!10118 lt!1509420) lt!1509419 (ite (is-None!10118 lt!1509419) lt!1509420 (ite (>= (size!34515 (_1!25490 (v!41078 lt!1509419))) (size!34515 (_1!25490 (v!41078 lt!1509420)))) lt!1509419 lt!1509420)))))))

(assert (=> b!4254077 (= lt!1509419 call!294026)))

(assert (=> b!4254077 (= lt!1509420 (maxPrefix!4536 thiss!21641 (t!352778 rules!2971) longerInput!62))))

(declare-fun d!1250854 () Bool)

(assert (=> d!1250854 e!2642364))

(declare-fun res!1748757 () Bool)

(assert (=> d!1250854 (=> res!1748757 e!2642364)))

(assert (=> d!1250854 (= res!1748757 (isEmpty!27912 lt!1509422))))

(assert (=> d!1250854 (= lt!1509422 e!2642365)))

(declare-fun c!722299 () Bool)

(assert (=> d!1250854 (= c!722299 (and (is-Cons!47159 rules!2971) (is-Nil!47159 (t!352778 rules!2971))))))

(declare-fun lt!1509421 () Unit!66099)

(declare-fun lt!1509423 () Unit!66099)

(assert (=> d!1250854 (= lt!1509421 lt!1509423)))

(assert (=> d!1250854 (isPrefix!4755 longerInput!62 longerInput!62)))

(assert (=> d!1250854 (= lt!1509423 (lemmaIsPrefixRefl!3152 longerInput!62 longerInput!62))))

(assert (=> d!1250854 (rulesValidInductive!3006 thiss!21641 rules!2971)))

(assert (=> d!1250854 (= (maxPrefix!4536 thiss!21641 rules!2971 longerInput!62) lt!1509422)))

(declare-fun bm!294021 () Bool)

(assert (=> bm!294021 (= call!294026 (maxPrefixOneRule!3481 thiss!21641 (h!52579 rules!2971) longerInput!62))))

(declare-fun b!4254078 () Bool)

(declare-fun res!1748761 () Bool)

(assert (=> b!4254078 (=> (not res!1748761) (not e!2642366))))

(assert (=> b!4254078 (= res!1748761 (= (value!248110 (_1!25490 (get!15306 lt!1509422))) (apply!10782 (transformation!7985 (rule!11121 (_1!25490 (get!15306 lt!1509422)))) (seqFromList!5842 (originalCharacters!8329 (_1!25490 (get!15306 lt!1509422)))))))))

(declare-fun b!4254079 () Bool)

(declare-fun res!1748758 () Bool)

(assert (=> b!4254079 (=> (not res!1748758) (not e!2642366))))

(assert (=> b!4254079 (= res!1748758 (< (size!34516 (_2!25490 (get!15306 lt!1509422))) (size!34516 longerInput!62)))))

(declare-fun b!4254080 () Bool)

(assert (=> b!4254080 (= e!2642366 (contains!9769 rules!2971 (rule!11121 (_1!25490 (get!15306 lt!1509422)))))))

(assert (= (and d!1250854 c!722299) b!4254072))

(assert (= (and d!1250854 (not c!722299)) b!4254077))

(assert (= (or b!4254072 b!4254077) bm!294021))

(assert (= (and d!1250854 (not res!1748757)) b!4254076))

(assert (= (and b!4254076 res!1748755) b!4254075))

(assert (= (and b!4254075 res!1748759) b!4254079))

(assert (= (and b!4254079 res!1748758) b!4254074))

(assert (= (and b!4254074 res!1748760) b!4254078))

(assert (= (and b!4254078 res!1748761) b!4254073))

(assert (= (and b!4254073 res!1748756) b!4254080))

(declare-fun m!4838877 () Bool)

(assert (=> b!4254078 m!4838877))

(declare-fun m!4838879 () Bool)

(assert (=> b!4254078 m!4838879))

(assert (=> b!4254078 m!4838879))

(declare-fun m!4838881 () Bool)

(assert (=> b!4254078 m!4838881))

(declare-fun m!4838883 () Bool)

(assert (=> b!4254076 m!4838883))

(assert (=> b!4254073 m!4838877))

(declare-fun m!4838885 () Bool)

(assert (=> b!4254073 m!4838885))

(assert (=> b!4254073 m!4838885))

(declare-fun m!4838887 () Bool)

(assert (=> b!4254073 m!4838887))

(assert (=> b!4254073 m!4838887))

(declare-fun m!4838889 () Bool)

(assert (=> b!4254073 m!4838889))

(assert (=> b!4254074 m!4838877))

(assert (=> b!4254074 m!4838885))

(assert (=> b!4254074 m!4838885))

(assert (=> b!4254074 m!4838887))

(assert (=> b!4254074 m!4838887))

(declare-fun m!4838891 () Bool)

(assert (=> b!4254074 m!4838891))

(assert (=> b!4254079 m!4838877))

(declare-fun m!4838893 () Bool)

(assert (=> b!4254079 m!4838893))

(assert (=> b!4254079 m!4838767))

(declare-fun m!4838895 () Bool)

(assert (=> b!4254077 m!4838895))

(assert (=> b!4254075 m!4838877))

(assert (=> b!4254075 m!4838885))

(assert (=> b!4254075 m!4838885))

(assert (=> b!4254075 m!4838887))

(assert (=> b!4254080 m!4838877))

(declare-fun m!4838897 () Bool)

(assert (=> b!4254080 m!4838897))

(declare-fun m!4838899 () Bool)

(assert (=> d!1250854 m!4838899))

(declare-fun m!4838901 () Bool)

(assert (=> d!1250854 m!4838901))

(declare-fun m!4838903 () Bool)

(assert (=> d!1250854 m!4838903))

(assert (=> d!1250854 m!4838873))

(declare-fun m!4838905 () Bool)

(assert (=> bm!294021 m!4838905))

(assert (=> b!4253928 d!1250854))

(declare-fun d!1250856 () Bool)

(assert (=> d!1250856 (= (inv!61941 (tag!8849 (h!52579 rules!2971))) (= (mod (str.len (value!248109 (tag!8849 (h!52579 rules!2971)))) 2) 0))))

(assert (=> b!4253923 d!1250856))

(declare-fun d!1250858 () Bool)

(declare-fun res!1748762 () Bool)

(declare-fun e!2642367 () Bool)

(assert (=> d!1250858 (=> (not res!1748762) (not e!2642367))))

(assert (=> d!1250858 (= res!1748762 (semiInverseModEq!3487 (toChars!10620 (transformation!7985 (h!52579 rules!2971))) (toValue!10761 (transformation!7985 (h!52579 rules!2971)))))))

(assert (=> d!1250858 (= (inv!61944 (transformation!7985 (h!52579 rules!2971))) e!2642367)))

(declare-fun b!4254081 () Bool)

(assert (=> b!4254081 (= e!2642367 (equivClasses!3386 (toChars!10620 (transformation!7985 (h!52579 rules!2971))) (toValue!10761 (transformation!7985 (h!52579 rules!2971)))))))

(assert (= (and d!1250858 res!1748762) b!4254081))

(declare-fun m!4838907 () Bool)

(assert (=> d!1250858 m!4838907))

(declare-fun m!4838909 () Bool)

(assert (=> b!4254081 m!4838909))

(assert (=> b!4253923 d!1250858))

(declare-fun b!4254092 () Bool)

(declare-fun e!2642374 () Bool)

(declare-fun e!2642376 () Bool)

(assert (=> b!4254092 (= e!2642374 e!2642376)))

(declare-fun c!722305 () Bool)

(assert (=> b!4254092 (= c!722305 (is-IntegerValue!24646 (value!248110 (h!52578 tokens!592))))))

(declare-fun b!4254093 () Bool)

(declare-fun res!1748765 () Bool)

(declare-fun e!2642375 () Bool)

(assert (=> b!4254093 (=> res!1748765 e!2642375)))

(assert (=> b!4254093 (= res!1748765 (not (is-IntegerValue!24647 (value!248110 (h!52578 tokens!592)))))))

(assert (=> b!4254093 (= e!2642376 e!2642375)))

(declare-fun b!4254094 () Bool)

(declare-fun inv!16 (TokenValue!8215) Bool)

(assert (=> b!4254094 (= e!2642374 (inv!16 (value!248110 (h!52578 tokens!592))))))

(declare-fun b!4254095 () Bool)

(declare-fun inv!17 (TokenValue!8215) Bool)

(assert (=> b!4254095 (= e!2642376 (inv!17 (value!248110 (h!52578 tokens!592))))))

(declare-fun b!4254096 () Bool)

(declare-fun inv!15 (TokenValue!8215) Bool)

(assert (=> b!4254096 (= e!2642375 (inv!15 (value!248110 (h!52578 tokens!592))))))

(declare-fun d!1250860 () Bool)

(declare-fun c!722304 () Bool)

(assert (=> d!1250860 (= c!722304 (is-IntegerValue!24645 (value!248110 (h!52578 tokens!592))))))

(assert (=> d!1250860 (= (inv!21 (value!248110 (h!52578 tokens!592))) e!2642374)))

(assert (= (and d!1250860 c!722304) b!4254094))

(assert (= (and d!1250860 (not c!722304)) b!4254092))

(assert (= (and b!4254092 c!722305) b!4254095))

(assert (= (and b!4254092 (not c!722305)) b!4254093))

(assert (= (and b!4254093 (not res!1748765)) b!4254096))

(declare-fun m!4838911 () Bool)

(assert (=> b!4254094 m!4838911))

(declare-fun m!4838913 () Bool)

(assert (=> b!4254095 m!4838913))

(declare-fun m!4838915 () Bool)

(assert (=> b!4254096 m!4838915))

(assert (=> b!4253921 d!1250860))

(declare-fun d!1250862 () Bool)

(declare-fun res!1748770 () Bool)

(declare-fun e!2642379 () Bool)

(assert (=> d!1250862 (=> (not res!1748770) (not e!2642379))))

(assert (=> d!1250862 (= res!1748770 (not (isEmpty!27908 (originalCharacters!8329 (h!52578 tokens!592)))))))

(assert (=> d!1250862 (= (inv!61945 (h!52578 tokens!592)) e!2642379)))

(declare-fun b!4254101 () Bool)

(declare-fun res!1748771 () Bool)

(assert (=> b!4254101 (=> (not res!1748771) (not e!2642379))))

(declare-fun dynLambda!20198 (Int TokenValue!8215) BalanceConc!27986)

(assert (=> b!4254101 (= res!1748771 (= (originalCharacters!8329 (h!52578 tokens!592)) (list!16990 (dynLambda!20198 (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))) (value!248110 (h!52578 tokens!592))))))))

(declare-fun b!4254102 () Bool)

(assert (=> b!4254102 (= e!2642379 (= (size!34515 (h!52578 tokens!592)) (size!34516 (originalCharacters!8329 (h!52578 tokens!592)))))))

(assert (= (and d!1250862 res!1748770) b!4254101))

(assert (= (and b!4254101 res!1748771) b!4254102))

(declare-fun b_lambda!125323 () Bool)

(assert (=> (not b_lambda!125323) (not b!4254101)))

(declare-fun t!352784 () Bool)

(declare-fun tb!256675 () Bool)

(assert (=> (and b!4253925 (= (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))) (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592))))) t!352784) tb!256675))

(declare-fun b!4254107 () Bool)

(declare-fun e!2642382 () Bool)

(declare-fun tp!1305585 () Bool)

(declare-fun inv!61948 (Conc!14196) Bool)

(assert (=> b!4254107 (= e!2642382 (and (inv!61948 (c!722271 (dynLambda!20198 (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))) (value!248110 (h!52578 tokens!592))))) tp!1305585))))

(declare-fun result!313064 () Bool)

(declare-fun inv!61949 (BalanceConc!27986) Bool)

(assert (=> tb!256675 (= result!313064 (and (inv!61949 (dynLambda!20198 (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))) (value!248110 (h!52578 tokens!592)))) e!2642382))))

(assert (= tb!256675 b!4254107))

(declare-fun m!4838917 () Bool)

(assert (=> b!4254107 m!4838917))

(declare-fun m!4838919 () Bool)

(assert (=> tb!256675 m!4838919))

(assert (=> b!4254101 t!352784))

(declare-fun b_and!337381 () Bool)

(assert (= b_and!337367 (and (=> t!352784 result!313064) b_and!337381)))

(declare-fun t!352786 () Bool)

(declare-fun tb!256677 () Bool)

(assert (=> (and b!4253933 (= (toChars!10620 (transformation!7985 (h!52579 rules!2971))) (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592))))) t!352786) tb!256677))

(declare-fun result!313068 () Bool)

(assert (= result!313068 result!313064))

(assert (=> b!4254101 t!352786))

(declare-fun b_and!337383 () Bool)

(assert (= b_and!337371 (and (=> t!352786 result!313068) b_and!337383)))

(declare-fun m!4838921 () Bool)

(assert (=> d!1250862 m!4838921))

(declare-fun m!4838923 () Bool)

(assert (=> b!4254101 m!4838923))

(assert (=> b!4254101 m!4838923))

(declare-fun m!4838925 () Bool)

(assert (=> b!4254101 m!4838925))

(declare-fun m!4838927 () Bool)

(assert (=> b!4254102 m!4838927))

(assert (=> b!4253932 d!1250862))

(declare-fun b!4254118 () Bool)

(declare-fun e!2642389 () Bool)

(declare-fun lt!1509430 () tuple2!44710)

(declare-fun isEmpty!27913 (List!47282) Bool)

(assert (=> b!4254118 (= e!2642389 (not (isEmpty!27913 (_1!25489 lt!1509430))))))

(declare-fun b!4254119 () Bool)

(declare-fun e!2642391 () Bool)

(assert (=> b!4254119 (= e!2642391 (= (_2!25489 lt!1509430) longerInput!62))))

(declare-fun d!1250864 () Bool)

(assert (=> d!1250864 e!2642391))

(declare-fun c!722311 () Bool)

(declare-fun size!34519 (List!47282) Int)

(assert (=> d!1250864 (= c!722311 (> (size!34519 (_1!25489 lt!1509430)) 0))))

(declare-fun e!2642390 () tuple2!44710)

(assert (=> d!1250864 (= lt!1509430 e!2642390)))

(declare-fun c!722310 () Bool)

(declare-fun lt!1509431 () Option!10119)

(assert (=> d!1250864 (= c!722310 (is-Some!10118 lt!1509431))))

(assert (=> d!1250864 (= lt!1509431 (maxPrefix!4536 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1250864 (= (lexList!2086 thiss!21641 rules!2971 longerInput!62) lt!1509430)))

(declare-fun b!4254120 () Bool)

(assert (=> b!4254120 (= e!2642390 (tuple2!44711 Nil!47158 longerInput!62))))

(declare-fun b!4254121 () Bool)

(declare-fun lt!1509432 () tuple2!44710)

(assert (=> b!4254121 (= e!2642390 (tuple2!44711 (Cons!47158 (_1!25490 (v!41078 lt!1509431)) (_1!25489 lt!1509432)) (_2!25489 lt!1509432)))))

(assert (=> b!4254121 (= lt!1509432 (lexList!2086 thiss!21641 rules!2971 (_2!25490 (v!41078 lt!1509431))))))

(declare-fun b!4254122 () Bool)

(assert (=> b!4254122 (= e!2642391 e!2642389)))

(declare-fun res!1748774 () Bool)

(assert (=> b!4254122 (= res!1748774 (< (size!34516 (_2!25489 lt!1509430)) (size!34516 longerInput!62)))))

(assert (=> b!4254122 (=> (not res!1748774) (not e!2642389))))

(assert (= (and d!1250864 c!722310) b!4254121))

(assert (= (and d!1250864 (not c!722310)) b!4254120))

(assert (= (and d!1250864 c!722311) b!4254122))

(assert (= (and d!1250864 (not c!722311)) b!4254119))

(assert (= (and b!4254122 res!1748774) b!4254118))

(declare-fun m!4838929 () Bool)

(assert (=> b!4254118 m!4838929))

(declare-fun m!4838931 () Bool)

(assert (=> d!1250864 m!4838931))

(assert (=> d!1250864 m!4838773))

(declare-fun m!4838933 () Bool)

(assert (=> b!4254121 m!4838933))

(declare-fun m!4838935 () Bool)

(assert (=> b!4254122 m!4838935))

(assert (=> b!4254122 m!4838767))

(assert (=> b!4253927 d!1250864))

(declare-fun d!1250866 () Bool)

(assert (=> d!1250866 (= (isEmpty!27909 rules!2971) (is-Nil!47159 rules!2971))))

(assert (=> b!4253930 d!1250866))

(declare-fun d!1250868 () Bool)

(declare-fun res!1748777 () Bool)

(declare-fun e!2642394 () Bool)

(assert (=> d!1250868 (=> (not res!1748777) (not e!2642394))))

(declare-fun rulesValid!3110 (LexerInterface!7580 List!47283) Bool)

(assert (=> d!1250868 (= res!1748777 (rulesValid!3110 thiss!21641 rules!2971))))

(assert (=> d!1250868 (= (rulesInvariant!6691 thiss!21641 rules!2971) e!2642394)))

(declare-fun b!4254125 () Bool)

(declare-datatypes ((List!47289 0))(
  ( (Nil!47165) (Cons!47165 (h!52585 String!55007) (t!352800 List!47289)) )
))
(declare-fun noDuplicateTag!3271 (LexerInterface!7580 List!47283 List!47289) Bool)

(assert (=> b!4254125 (= e!2642394 (noDuplicateTag!3271 thiss!21641 rules!2971 Nil!47165))))

(assert (= (and d!1250868 res!1748777) b!4254125))

(declare-fun m!4838937 () Bool)

(assert (=> d!1250868 m!4838937))

(declare-fun m!4838939 () Bool)

(assert (=> b!4254125 m!4838939))

(assert (=> b!4253936 d!1250868))

(declare-fun b!4254126 () Bool)

(declare-fun e!2642395 () Bool)

(declare-fun lt!1509433 () tuple2!44710)

(assert (=> b!4254126 (= e!2642395 (not (isEmpty!27913 (_1!25489 lt!1509433))))))

(declare-fun b!4254127 () Bool)

(declare-fun e!2642397 () Bool)

(assert (=> b!4254127 (= e!2642397 (= (_2!25489 lt!1509433) shorterInput!62))))

(declare-fun d!1250870 () Bool)

(assert (=> d!1250870 e!2642397))

(declare-fun c!722313 () Bool)

(assert (=> d!1250870 (= c!722313 (> (size!34519 (_1!25489 lt!1509433)) 0))))

(declare-fun e!2642396 () tuple2!44710)

(assert (=> d!1250870 (= lt!1509433 e!2642396)))

(declare-fun c!722312 () Bool)

(declare-fun lt!1509434 () Option!10119)

(assert (=> d!1250870 (= c!722312 (is-Some!10118 lt!1509434))))

(assert (=> d!1250870 (= lt!1509434 (maxPrefix!4536 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> d!1250870 (= (lexList!2086 thiss!21641 rules!2971 shorterInput!62) lt!1509433)))

(declare-fun b!4254128 () Bool)

(assert (=> b!4254128 (= e!2642396 (tuple2!44711 Nil!47158 shorterInput!62))))

(declare-fun b!4254129 () Bool)

(declare-fun lt!1509435 () tuple2!44710)

(assert (=> b!4254129 (= e!2642396 (tuple2!44711 (Cons!47158 (_1!25490 (v!41078 lt!1509434)) (_1!25489 lt!1509435)) (_2!25489 lt!1509435)))))

(assert (=> b!4254129 (= lt!1509435 (lexList!2086 thiss!21641 rules!2971 (_2!25490 (v!41078 lt!1509434))))))

(declare-fun b!4254130 () Bool)

(assert (=> b!4254130 (= e!2642397 e!2642395)))

(declare-fun res!1748778 () Bool)

(assert (=> b!4254130 (= res!1748778 (< (size!34516 (_2!25489 lt!1509433)) (size!34516 shorterInput!62)))))

(assert (=> b!4254130 (=> (not res!1748778) (not e!2642395))))

(assert (= (and d!1250870 c!722312) b!4254129))

(assert (= (and d!1250870 (not c!722312)) b!4254128))

(assert (= (and d!1250870 c!722313) b!4254130))

(assert (= (and d!1250870 (not c!722313)) b!4254127))

(assert (= (and b!4254130 res!1748778) b!4254126))

(declare-fun m!4838941 () Bool)

(assert (=> b!4254126 m!4838941))

(declare-fun m!4838943 () Bool)

(assert (=> d!1250870 m!4838943))

(assert (=> d!1250870 m!4838771))

(declare-fun m!4838945 () Bool)

(assert (=> b!4254129 m!4838945))

(declare-fun m!4838947 () Bool)

(assert (=> b!4254130 m!4838947))

(assert (=> b!4254130 m!4838769))

(assert (=> b!4253931 d!1250870))

(declare-fun b!4254135 () Bool)

(declare-fun e!2642400 () Bool)

(declare-fun tp!1305588 () Bool)

(assert (=> b!4254135 (= e!2642400 (and tp_is_empty!22771 tp!1305588))))

(assert (=> b!4253934 (= tp!1305540 e!2642400)))

(assert (= (and b!4253934 (is-Cons!47157 (t!352776 shorterInput!62))) b!4254135))

(declare-fun b!4254149 () Bool)

(declare-fun e!2642403 () Bool)

(declare-fun tp!1305599 () Bool)

(declare-fun tp!1305603 () Bool)

(assert (=> b!4254149 (= e!2642403 (and tp!1305599 tp!1305603))))

(assert (=> b!4253929 (= tp!1305544 e!2642403)))

(declare-fun b!4254147 () Bool)

(declare-fun tp!1305601 () Bool)

(declare-fun tp!1305600 () Bool)

(assert (=> b!4254147 (= e!2642403 (and tp!1305601 tp!1305600))))

(declare-fun b!4254148 () Bool)

(declare-fun tp!1305602 () Bool)

(assert (=> b!4254148 (= e!2642403 tp!1305602)))

(declare-fun b!4254146 () Bool)

(assert (=> b!4254146 (= e!2642403 tp_is_empty!22771)))

(assert (= (and b!4253929 (is-ElementMatch!12890 (regex!7985 (rule!11121 (h!52578 tokens!592))))) b!4254146))

(assert (= (and b!4253929 (is-Concat!21106 (regex!7985 (rule!11121 (h!52578 tokens!592))))) b!4254147))

(assert (= (and b!4253929 (is-Star!12890 (regex!7985 (rule!11121 (h!52578 tokens!592))))) b!4254148))

(assert (= (and b!4253929 (is-Union!12890 (regex!7985 (rule!11121 (h!52578 tokens!592))))) b!4254149))

(declare-fun b!4254150 () Bool)

(declare-fun e!2642404 () Bool)

(declare-fun tp!1305604 () Bool)

(assert (=> b!4254150 (= e!2642404 (and tp_is_empty!22771 tp!1305604))))

(assert (=> b!4253935 (= tp!1305539 e!2642404)))

(assert (= (and b!4253935 (is-Cons!47157 (t!352776 suffix!1284))) b!4254150))

(declare-fun b!4254154 () Bool)

(declare-fun e!2642405 () Bool)

(declare-fun tp!1305605 () Bool)

(declare-fun tp!1305609 () Bool)

(assert (=> b!4254154 (= e!2642405 (and tp!1305605 tp!1305609))))

(assert (=> b!4253923 (= tp!1305535 e!2642405)))

(declare-fun b!4254152 () Bool)

(declare-fun tp!1305607 () Bool)

(declare-fun tp!1305606 () Bool)

(assert (=> b!4254152 (= e!2642405 (and tp!1305607 tp!1305606))))

(declare-fun b!4254153 () Bool)

(declare-fun tp!1305608 () Bool)

(assert (=> b!4254153 (= e!2642405 tp!1305608)))

(declare-fun b!4254151 () Bool)

(assert (=> b!4254151 (= e!2642405 tp_is_empty!22771)))

(assert (= (and b!4253923 (is-ElementMatch!12890 (regex!7985 (h!52579 rules!2971)))) b!4254151))

(assert (= (and b!4253923 (is-Concat!21106 (regex!7985 (h!52579 rules!2971)))) b!4254152))

(assert (= (and b!4253923 (is-Star!12890 (regex!7985 (h!52579 rules!2971)))) b!4254153))

(assert (= (and b!4253923 (is-Union!12890 (regex!7985 (h!52579 rules!2971)))) b!4254154))

(declare-fun b!4254165 () Bool)

(declare-fun b_free!126571 () Bool)

(declare-fun b_next!127275 () Bool)

(assert (=> b!4254165 (= b_free!126571 (not b_next!127275))))

(declare-fun tp!1305618 () Bool)

(declare-fun b_and!337385 () Bool)

(assert (=> b!4254165 (= tp!1305618 b_and!337385)))

(declare-fun b_free!126573 () Bool)

(declare-fun b_next!127277 () Bool)

(assert (=> b!4254165 (= b_free!126573 (not b_next!127277))))

(declare-fun tb!256679 () Bool)

(declare-fun t!352788 () Bool)

(assert (=> (and b!4254165 (= (toChars!10620 (transformation!7985 (h!52579 (t!352778 rules!2971)))) (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592))))) t!352788) tb!256679))

(declare-fun result!313076 () Bool)

(assert (= result!313076 result!313064))

(assert (=> b!4254101 t!352788))

(declare-fun tp!1305621 () Bool)

(declare-fun b_and!337387 () Bool)

(assert (=> b!4254165 (= tp!1305621 (and (=> t!352788 result!313076) b_and!337387))))

(declare-fun e!2642415 () Bool)

(assert (=> b!4254165 (= e!2642415 (and tp!1305618 tp!1305621))))

(declare-fun tp!1305620 () Bool)

(declare-fun e!2642416 () Bool)

(declare-fun b!4254164 () Bool)

(assert (=> b!4254164 (= e!2642416 (and tp!1305620 (inv!61941 (tag!8849 (h!52579 (t!352778 rules!2971)))) (inv!61944 (transformation!7985 (h!52579 (t!352778 rules!2971)))) e!2642415))))

(declare-fun b!4254163 () Bool)

(declare-fun e!2642417 () Bool)

(declare-fun tp!1305619 () Bool)

(assert (=> b!4254163 (= e!2642417 (and e!2642416 tp!1305619))))

(assert (=> b!4253926 (= tp!1305536 e!2642417)))

(assert (= b!4254164 b!4254165))

(assert (= b!4254163 b!4254164))

(assert (= (and b!4253926 (is-Cons!47159 (t!352778 rules!2971))) b!4254163))

(declare-fun m!4838949 () Bool)

(assert (=> b!4254164 m!4838949))

(declare-fun m!4838951 () Bool)

(assert (=> b!4254164 m!4838951))

(declare-fun b!4254166 () Bool)

(declare-fun e!2642418 () Bool)

(declare-fun tp!1305622 () Bool)

(assert (=> b!4254166 (= e!2642418 (and tp_is_empty!22771 tp!1305622))))

(assert (=> b!4253937 (= tp!1305541 e!2642418)))

(assert (= (and b!4253937 (is-Cons!47157 (t!352776 longerInput!62))) b!4254166))

(declare-fun b!4254167 () Bool)

(declare-fun e!2642419 () Bool)

(declare-fun tp!1305623 () Bool)

(assert (=> b!4254167 (= e!2642419 (and tp_is_empty!22771 tp!1305623))))

(assert (=> b!4253921 (= tp!1305545 e!2642419)))

(assert (= (and b!4253921 (is-Cons!47157 (originalCharacters!8329 (h!52578 tokens!592)))) b!4254167))

(declare-fun b!4254181 () Bool)

(declare-fun b_free!126575 () Bool)

(declare-fun b_next!127279 () Bool)

(assert (=> b!4254181 (= b_free!126575 (not b_next!127279))))

(declare-fun tp!1305635 () Bool)

(declare-fun b_and!337389 () Bool)

(assert (=> b!4254181 (= tp!1305635 b_and!337389)))

(declare-fun b_free!126577 () Bool)

(declare-fun b_next!127281 () Bool)

(assert (=> b!4254181 (= b_free!126577 (not b_next!127281))))

(declare-fun t!352790 () Bool)

(declare-fun tb!256681 () Bool)

(assert (=> (and b!4254181 (= (toChars!10620 (transformation!7985 (rule!11121 (h!52578 (t!352777 tokens!592))))) (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592))))) t!352790) tb!256681))

(declare-fun result!313080 () Bool)

(assert (= result!313080 result!313064))

(assert (=> b!4254101 t!352790))

(declare-fun tp!1305637 () Bool)

(declare-fun b_and!337391 () Bool)

(assert (=> b!4254181 (= tp!1305637 (and (=> t!352790 result!313080) b_and!337391))))

(declare-fun e!2642437 () Bool)

(declare-fun b!4254179 () Bool)

(declare-fun e!2642436 () Bool)

(declare-fun tp!1305636 () Bool)

(assert (=> b!4254179 (= e!2642437 (and (inv!21 (value!248110 (h!52578 (t!352777 tokens!592)))) e!2642436 tp!1305636))))

(declare-fun e!2642434 () Bool)

(assert (=> b!4254181 (= e!2642434 (and tp!1305635 tp!1305637))))

(declare-fun e!2642433 () Bool)

(declare-fun tp!1305638 () Bool)

(declare-fun b!4254178 () Bool)

(assert (=> b!4254178 (= e!2642433 (and (inv!61945 (h!52578 (t!352777 tokens!592))) e!2642437 tp!1305638))))

(declare-fun tp!1305634 () Bool)

(declare-fun b!4254180 () Bool)

(assert (=> b!4254180 (= e!2642436 (and tp!1305634 (inv!61941 (tag!8849 (rule!11121 (h!52578 (t!352777 tokens!592))))) (inv!61944 (transformation!7985 (rule!11121 (h!52578 (t!352777 tokens!592))))) e!2642434))))

(assert (=> b!4253932 (= tp!1305543 e!2642433)))

(assert (= b!4254180 b!4254181))

(assert (= b!4254179 b!4254180))

(assert (= b!4254178 b!4254179))

(assert (= (and b!4253932 (is-Cons!47158 (t!352777 tokens!592))) b!4254178))

(declare-fun m!4838953 () Bool)

(assert (=> b!4254179 m!4838953))

(declare-fun m!4838955 () Bool)

(assert (=> b!4254178 m!4838955))

(declare-fun m!4838957 () Bool)

(assert (=> b!4254180 m!4838957))

(declare-fun m!4838959 () Bool)

(assert (=> b!4254180 m!4838959))

(declare-fun b_lambda!125325 () Bool)

(assert (= b_lambda!125323 (or (and b!4253925 b_free!126557) (and b!4253933 b_free!126561 (= (toChars!10620 (transformation!7985 (h!52579 rules!2971))) (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))))) (and b!4254165 b_free!126573 (= (toChars!10620 (transformation!7985 (h!52579 (t!352778 rules!2971)))) (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))))) (and b!4254181 b_free!126577 (= (toChars!10620 (transformation!7985 (rule!11121 (h!52578 (t!352777 tokens!592))))) (toChars!10620 (transformation!7985 (rule!11121 (h!52578 tokens!592)))))) b_lambda!125325)))

(push 1)

(assert (not d!1250854))

(assert (not b!4254078))

(assert (not b!4254129))

(assert b_and!337383)

(assert (not b!4254073))

(assert (not b_next!127261))

(assert (not b!4254067))

(assert (not b!4254064))

(assert (not b_next!127281))

(assert (not b!4254066))

(assert (not b!4254018))

(assert (not b!4254102))

(assert (not b!4254178))

(assert (not b!4254080))

(assert (not b_next!127277))

(assert (not b!4254063))

(assert (not b!4254149))

(assert (not b!4254077))

(assert (not b!4254101))

(assert (not b!4254167))

(assert (not b!4254065))

(assert (not b_lambda!125325))

(assert b_and!337389)

(assert (not d!1250864))

(assert (not d!1250858))

(assert (not b!4254130))

(assert (not b!4254075))

(assert (not b!4254125))

(assert (not b_next!127265))

(assert (not d!1250862))

(assert b_and!337365)

(assert (not b!4254107))

(assert b_and!337381)

(assert tp_is_empty!22771)

(assert (not b_next!127275))

(assert (not bm!294020))

(assert (not b!4254164))

(assert (not b!4254081))

(assert (not tb!256675))

(assert (not b!4254148))

(assert (not d!1250870))

(assert (not b!4254166))

(assert (not d!1250840))

(assert (not b!4254002))

(assert (not d!1250868))

(assert (not bm!294021))

(assert (not b!4254163))

(assert b_and!337385)

(assert (not b!4254150))

(assert (not b!4254180))

(assert (not b!4254152))

(assert (not b!4254135))

(assert (not b!4254062))

(assert b_and!337391)

(assert (not b!4254118))

(assert (not b!4254094))

(assert (not b!4254079))

(assert (not b_next!127259))

(assert (not b!4254121))

(assert (not b!4254153))

(assert (not b!4254126))

(assert (not b!4254179))

(assert (not b_next!127263))

(assert (not b!4254020))

(assert (not b!4254074))

(assert (not b!4254096))

(assert (not b!4254122))

(assert (not b!4254076))

(assert (not b!4254147))

(assert (not b_next!127279))

(assert (not b!4254061))

(assert (not b!4254095))

(assert (not b!4254060))

(assert b_and!337387)

(assert (not d!1250828))

(assert (not b!4254154))

(assert b_and!337369)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!127277))

(assert b_and!337389)

(assert b_and!337381)

(assert (not b_next!127275))

(assert b_and!337383)

(assert b_and!337385)

(assert (not b_next!127261))

(assert (not b_next!127263))

(assert (not b_next!127279))

(assert (not b_next!127281))

(assert (not b_next!127265))

(assert b_and!337365)

(assert b_and!337391)

(assert (not b_next!127259))

(assert b_and!337387)

(assert b_and!337369)

(check-sat)

(pop 1)

