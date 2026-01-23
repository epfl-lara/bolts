; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!406572 () Bool)

(assert start!406572)

(declare-fun b!4247283 () Bool)

(declare-fun b_free!126155 () Bool)

(declare-fun b_next!126859 () Bool)

(assert (=> b!4247283 (= b_free!126155 (not b_next!126859))))

(declare-fun tp!1302976 () Bool)

(declare-fun b_and!336525 () Bool)

(assert (=> b!4247283 (= tp!1302976 b_and!336525)))

(declare-fun b_free!126157 () Bool)

(declare-fun b_next!126861 () Bool)

(assert (=> b!4247283 (= b_free!126157 (not b_next!126861))))

(declare-fun tp!1302983 () Bool)

(declare-fun b_and!336527 () Bool)

(assert (=> b!4247283 (= tp!1302983 b_and!336527)))

(declare-fun b!4247276 () Bool)

(declare-fun b_free!126159 () Bool)

(declare-fun b_next!126863 () Bool)

(assert (=> b!4247276 (= b_free!126159 (not b_next!126863))))

(declare-fun tp!1302977 () Bool)

(declare-fun b_and!336529 () Bool)

(assert (=> b!4247276 (= tp!1302977 b_and!336529)))

(declare-fun b_free!126161 () Bool)

(declare-fun b_next!126865 () Bool)

(assert (=> b!4247276 (= b_free!126161 (not b_next!126865))))

(declare-fun tp!1302986 () Bool)

(declare-fun b_and!336531 () Bool)

(assert (=> b!4247276 (= tp!1302986 b_and!336531)))

(declare-datatypes ((List!47165 0))(
  ( (Nil!47041) (Cons!47041 (h!52461 (_ BitVec 16)) (t!351830 List!47165)) )
))
(declare-datatypes ((TokenValue!8191 0))(
  ( (FloatLiteralValue!16382 (text!57782 List!47165)) (TokenValueExt!8190 (__x!28605 Int)) (Broken!40955 (value!247400 List!47165)) (Object!8314) (End!8191) (Def!8191) (Underscore!8191) (Match!8191) (Else!8191) (Error!8191) (Case!8191) (If!8191) (Extends!8191) (Abstract!8191) (Class!8191) (Val!8191) (DelimiterValue!16382 (del!8251 List!47165)) (KeywordValue!8197 (value!247401 List!47165)) (CommentValue!16382 (value!247402 List!47165)) (WhitespaceValue!16382 (value!247403 List!47165)) (IndentationValue!8191 (value!247404 List!47165)) (String!54886) (Int32!8191) (Broken!40956 (value!247405 List!47165)) (Boolean!8192) (Unit!66041) (OperatorValue!8194 (op!8251 List!47165)) (IdentifierValue!16382 (value!247406 List!47165)) (IdentifierValue!16383 (value!247407 List!47165)) (WhitespaceValue!16383 (value!247408 List!47165)) (True!16382) (False!16382) (Broken!40957 (value!247409 List!47165)) (Broken!40958 (value!247410 List!47165)) (True!16383) (RightBrace!8191) (RightBracket!8191) (Colon!8191) (Null!8191) (Comma!8191) (LeftBracket!8191) (False!16383) (LeftBrace!8191) (ImaginaryLiteralValue!8191 (text!57783 List!47165)) (StringLiteralValue!24573 (value!247411 List!47165)) (EOFValue!8191 (value!247412 List!47165)) (IdentValue!8191 (value!247413 List!47165)) (DelimiterValue!16383 (value!247414 List!47165)) (DedentValue!8191 (value!247415 List!47165)) (NewLineValue!8191 (value!247416 List!47165)) (IntegerValue!24573 (value!247417 (_ BitVec 32)) (text!57784 List!47165)) (IntegerValue!24574 (value!247418 Int) (text!57785 List!47165)) (Times!8191) (Or!8191) (Equal!8191) (Minus!8191) (Broken!40959 (value!247419 List!47165)) (And!8191) (Div!8191) (LessEqual!8191) (Mod!8191) (Concat!21057) (Not!8191) (Plus!8191) (SpaceValue!8191 (value!247420 List!47165)) (IntegerValue!24575 (value!247421 Int) (text!57786 List!47165)) (StringLiteralValue!24574 (text!57787 List!47165)) (FloatLiteralValue!16383 (text!57788 List!47165)) (BytesLiteralValue!8191 (value!247422 List!47165)) (CommentValue!16383 (value!247423 List!47165)) (StringLiteralValue!24575 (value!247424 List!47165)) (ErrorTokenValue!8191 (msg!8252 List!47165)) )
))
(declare-datatypes ((C!25930 0))(
  ( (C!25931 (val!15155 Int)) )
))
(declare-datatypes ((List!47166 0))(
  ( (Nil!47042) (Cons!47042 (h!52462 C!25930) (t!351831 List!47166)) )
))
(declare-datatypes ((IArray!28349 0))(
  ( (IArray!28350 (innerList!14232 List!47166)) )
))
(declare-datatypes ((Conc!14172 0))(
  ( (Node!14172 (left!34907 Conc!14172) (right!35237 Conc!14172) (csize!28574 Int) (cheight!14383 Int)) (Leaf!21912 (xs!17478 IArray!28349) (csize!28575 Int)) (Empty!14172) )
))
(declare-datatypes ((BalanceConc!27938 0))(
  ( (BalanceConc!27939 (c!721335 Conc!14172)) )
))
(declare-datatypes ((TokenValueInjection!15810 0))(
  ( (TokenValueInjection!15811 (toValue!10725 Int) (toChars!10584 Int)) )
))
(declare-datatypes ((Regex!12866 0))(
  ( (ElementMatch!12866 (c!721336 C!25930)) (Concat!21058 (regOne!26244 Regex!12866) (regTwo!26244 Regex!12866)) (EmptyExpr!12866) (Star!12866 (reg!13195 Regex!12866)) (EmptyLang!12866) (Union!12866 (regOne!26245 Regex!12866) (regTwo!26245 Regex!12866)) )
))
(declare-datatypes ((String!54887 0))(
  ( (String!54888 (value!247425 String)) )
))
(declare-datatypes ((Rule!15722 0))(
  ( (Rule!15723 (regex!7961 Regex!12866) (tag!8825 String!54887) (isSeparator!7961 Bool) (transformation!7961 TokenValueInjection!15810)) )
))
(declare-datatypes ((Token!14548 0))(
  ( (Token!14549 (value!247426 TokenValue!8191) (rule!11091 Rule!15722) (size!34442 Int) (originalCharacters!8305 List!47166)) )
))
(declare-datatypes ((List!47167 0))(
  ( (Nil!47043) (Cons!47043 (h!52463 Token!14548) (t!351832 List!47167)) )
))
(declare-fun tokens!592 () List!47167)

(declare-fun e!2638012 () Bool)

(declare-fun b!4247275 () Bool)

(declare-fun e!2638019 () Bool)

(declare-fun tp!1302985 () Bool)

(declare-fun inv!61802 (String!54887) Bool)

(declare-fun inv!61805 (TokenValueInjection!15810) Bool)

(assert (=> b!4247275 (= e!2638019 (and tp!1302985 (inv!61802 (tag!8825 (rule!11091 (h!52463 tokens!592)))) (inv!61805 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) e!2638012))))

(declare-fun e!2638014 () Bool)

(assert (=> b!4247276 (= e!2638014 (and tp!1302977 tp!1302986))))

(declare-fun b!4247277 () Bool)

(declare-fun e!2638024 () Bool)

(declare-fun tp_is_empty!22723 () Bool)

(declare-fun tp!1302980 () Bool)

(assert (=> b!4247277 (= e!2638024 (and tp_is_empty!22723 tp!1302980))))

(declare-fun b!4247278 () Bool)

(declare-fun e!2638025 () Bool)

(declare-fun e!2638021 () Bool)

(declare-fun tp!1302984 () Bool)

(assert (=> b!4247278 (= e!2638025 (and e!2638021 tp!1302984))))

(declare-fun b!4247279 () Bool)

(declare-fun e!2638013 () Bool)

(declare-fun e!2638017 () Bool)

(assert (=> b!4247279 (= e!2638013 e!2638017)))

(declare-fun res!1746105 () Bool)

(assert (=> b!4247279 (=> (not res!1746105) (not e!2638017))))

(declare-datatypes ((tuple2!44602 0))(
  ( (tuple2!44603 (_1!25435 Token!14548) (_2!25435 List!47166)) )
))
(declare-datatypes ((Option!10095 0))(
  ( (None!10094) (Some!10094 (v!41048 tuple2!44602)) )
))
(declare-fun lt!1507812 () Option!10095)

(declare-fun lt!1507811 () Option!10095)

(assert (=> b!4247279 (= res!1746105 (and (is-Some!10094 lt!1507812) (is-Some!10094 lt!1507811)))))

(declare-datatypes ((LexerInterface!7556 0))(
  ( (LexerInterfaceExt!7553 (__x!28606 Int)) (Lexer!7554) )
))
(declare-fun thiss!21641 () LexerInterface!7556)

(declare-datatypes ((List!47168 0))(
  ( (Nil!47044) (Cons!47044 (h!52464 Rule!15722) (t!351833 List!47168)) )
))
(declare-fun rules!2971 () List!47168)

(declare-fun shorterInput!62 () List!47166)

(declare-fun maxPrefix!4512 (LexerInterface!7556 List!47168 List!47166) Option!10095)

(assert (=> b!4247279 (= lt!1507811 (maxPrefix!4512 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47166)

(assert (=> b!4247279 (= lt!1507812 (maxPrefix!4512 thiss!21641 rules!2971 longerInput!62))))

(declare-fun tp!1302978 () Bool)

(declare-fun e!2638016 () Bool)

(declare-fun e!2638015 () Bool)

(declare-fun b!4247280 () Bool)

(declare-fun inv!61806 (Token!14548) Bool)

(assert (=> b!4247280 (= e!2638015 (and (inv!61806 (h!52463 tokens!592)) e!2638016 tp!1302978))))

(declare-fun b!4247281 () Bool)

(declare-fun tp!1302975 () Bool)

(declare-fun inv!21 (TokenValue!8191) Bool)

(assert (=> b!4247281 (= e!2638016 (and (inv!21 (value!247426 (h!52463 tokens!592))) e!2638019 tp!1302975))))

(declare-fun res!1746104 () Bool)

(assert (=> start!406572 (=> (not res!1746104) (not e!2638013))))

(assert (=> start!406572 (= res!1746104 (is-Lexer!7554 thiss!21641))))

(assert (=> start!406572 e!2638013))

(assert (=> start!406572 true))

(declare-fun e!2638022 () Bool)

(assert (=> start!406572 e!2638022))

(declare-fun e!2638018 () Bool)

(assert (=> start!406572 e!2638018))

(assert (=> start!406572 e!2638015))

(assert (=> start!406572 e!2638025))

(assert (=> start!406572 e!2638024))

(declare-fun b!4247282 () Bool)

(declare-fun tp!1302979 () Bool)

(assert (=> b!4247282 (= e!2638022 (and tp_is_empty!22723 tp!1302979))))

(assert (=> b!4247283 (= e!2638012 (and tp!1302976 tp!1302983))))

(declare-fun b!4247284 () Bool)

(declare-fun res!1746101 () Bool)

(assert (=> b!4247284 (=> (not res!1746101) (not e!2638013))))

(declare-fun size!34443 (List!47166) Int)

(assert (=> b!4247284 (= res!1746101 (> (size!34443 longerInput!62) (size!34443 shorterInput!62)))))

(declare-fun b!4247285 () Bool)

(declare-fun res!1746103 () Bool)

(assert (=> b!4247285 (=> (not res!1746103) (not e!2638013))))

(declare-fun suffix!1284 () List!47166)

(declare-datatypes ((tuple2!44604 0))(
  ( (tuple2!44605 (_1!25436 List!47167) (_2!25436 List!47166)) )
))
(declare-fun lexList!2062 (LexerInterface!7556 List!47168 List!47166) tuple2!44604)

(assert (=> b!4247285 (= res!1746103 (= (lexList!2062 thiss!21641 rules!2971 longerInput!62) (tuple2!44605 tokens!592 suffix!1284)))))

(declare-fun b!4247286 () Bool)

(declare-fun ++!11972 (List!47166 List!47166) List!47166)

(declare-fun list!16945 (BalanceConc!27938) List!47166)

(declare-fun charsOf!5303 (Token!14548) BalanceConc!27938)

(assert (=> b!4247286 (= e!2638017 (not (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))) (_2!25435 (v!41048 lt!1507812))) longerInput!62)))))

(declare-fun b!4247287 () Bool)

(declare-fun res!1746102 () Bool)

(assert (=> b!4247287 (=> (not res!1746102) (not e!2638013))))

(declare-fun rulesInvariant!6667 (LexerInterface!7556 List!47168) Bool)

(assert (=> b!4247287 (= res!1746102 (rulesInvariant!6667 thiss!21641 rules!2971))))

(declare-fun tp!1302981 () Bool)

(declare-fun b!4247288 () Bool)

(assert (=> b!4247288 (= e!2638021 (and tp!1302981 (inv!61802 (tag!8825 (h!52464 rules!2971))) (inv!61805 (transformation!7961 (h!52464 rules!2971))) e!2638014))))

(declare-fun b!4247289 () Bool)

(declare-fun res!1746106 () Bool)

(assert (=> b!4247289 (=> (not res!1746106) (not e!2638013))))

(declare-fun isEmpty!27826 (List!47168) Bool)

(assert (=> b!4247289 (= res!1746106 (not (isEmpty!27826 rules!2971)))))

(declare-fun b!4247290 () Bool)

(declare-fun res!1746107 () Bool)

(assert (=> b!4247290 (=> (not res!1746107) (not e!2638013))))

(declare-fun isEmpty!27827 (List!47166) Bool)

(assert (=> b!4247290 (= res!1746107 (not (isEmpty!27827 longerInput!62)))))

(declare-fun b!4247291 () Bool)

(declare-fun tp!1302982 () Bool)

(assert (=> b!4247291 (= e!2638018 (and tp_is_empty!22723 tp!1302982))))

(assert (= (and start!406572 res!1746104) b!4247289))

(assert (= (and b!4247289 res!1746106) b!4247287))

(assert (= (and b!4247287 res!1746102) b!4247290))

(assert (= (and b!4247290 res!1746107) b!4247284))

(assert (= (and b!4247284 res!1746101) b!4247285))

(assert (= (and b!4247285 res!1746103) b!4247279))

(assert (= (and b!4247279 res!1746105) b!4247286))

(assert (= (and start!406572 (is-Cons!47042 suffix!1284)) b!4247282))

(assert (= (and start!406572 (is-Cons!47042 longerInput!62)) b!4247291))

(assert (= b!4247275 b!4247283))

(assert (= b!4247281 b!4247275))

(assert (= b!4247280 b!4247281))

(assert (= (and start!406572 (is-Cons!47043 tokens!592)) b!4247280))

(assert (= b!4247288 b!4247276))

(assert (= b!4247278 b!4247288))

(assert (= (and start!406572 (is-Cons!47044 rules!2971)) b!4247278))

(assert (= (and start!406572 (is-Cons!47042 shorterInput!62)) b!4247277))

(declare-fun m!4832031 () Bool)

(assert (=> b!4247280 m!4832031))

(declare-fun m!4832033 () Bool)

(assert (=> b!4247290 m!4832033))

(declare-fun m!4832035 () Bool)

(assert (=> b!4247284 m!4832035))

(declare-fun m!4832037 () Bool)

(assert (=> b!4247284 m!4832037))

(declare-fun m!4832039 () Bool)

(assert (=> b!4247275 m!4832039))

(declare-fun m!4832041 () Bool)

(assert (=> b!4247275 m!4832041))

(declare-fun m!4832043 () Bool)

(assert (=> b!4247279 m!4832043))

(declare-fun m!4832045 () Bool)

(assert (=> b!4247279 m!4832045))

(declare-fun m!4832047 () Bool)

(assert (=> b!4247287 m!4832047))

(declare-fun m!4832049 () Bool)

(assert (=> b!4247289 m!4832049))

(declare-fun m!4832051 () Bool)

(assert (=> b!4247281 m!4832051))

(declare-fun m!4832053 () Bool)

(assert (=> b!4247285 m!4832053))

(declare-fun m!4832055 () Bool)

(assert (=> b!4247286 m!4832055))

(assert (=> b!4247286 m!4832055))

(declare-fun m!4832057 () Bool)

(assert (=> b!4247286 m!4832057))

(assert (=> b!4247286 m!4832057))

(declare-fun m!4832059 () Bool)

(assert (=> b!4247286 m!4832059))

(declare-fun m!4832061 () Bool)

(assert (=> b!4247288 m!4832061))

(declare-fun m!4832063 () Bool)

(assert (=> b!4247288 m!4832063))

(push 1)

(assert (not b_next!126863))

(assert (not b!4247285))

(assert (not b!4247284))

(assert (not b!4247289))

(assert (not b!4247277))

(assert b_and!336529)

(assert (not b!4247288))

(assert (not b!4247291))

(assert (not b_next!126865))

(assert (not b!4247282))

(assert (not b!4247275))

(assert b_and!336527)

(assert (not b_next!126861))

(assert (not b!4247281))

(assert (not b_next!126859))

(assert (not b!4247280))

(assert (not b!4247287))

(assert b_and!336525)

(assert (not b!4247278))

(assert b_and!336531)

(assert (not b!4247286))

(assert (not b!4247279))

(assert (not b!4247290))

(assert tp_is_empty!22723)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126863))

(assert b_and!336529)

(assert (not b_next!126861))

(assert (not b_next!126859))

(assert (not b_next!126865))

(assert b_and!336525)

(assert b_and!336531)

(assert b_and!336527)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4247353 () Bool)

(declare-fun e!2638079 () Bool)

(declare-fun lt!1507826 () tuple2!44604)

(declare-fun isEmpty!27830 (List!47167) Bool)

(assert (=> b!4247353 (= e!2638079 (not (isEmpty!27830 (_1!25436 lt!1507826))))))

(declare-fun b!4247354 () Bool)

(declare-fun e!2638077 () tuple2!44604)

(assert (=> b!4247354 (= e!2638077 (tuple2!44605 Nil!47043 longerInput!62))))

(declare-fun b!4247355 () Bool)

(declare-fun e!2638078 () Bool)

(assert (=> b!4247355 (= e!2638078 e!2638079)))

(declare-fun res!1746137 () Bool)

(assert (=> b!4247355 (= res!1746137 (< (size!34443 (_2!25436 lt!1507826)) (size!34443 longerInput!62)))))

(assert (=> b!4247355 (=> (not res!1746137) (not e!2638079))))

(declare-fun b!4247356 () Bool)

(assert (=> b!4247356 (= e!2638078 (= (_2!25436 lt!1507826) longerInput!62))))

(declare-fun d!1249052 () Bool)

(assert (=> d!1249052 e!2638078))

(declare-fun c!721344 () Bool)

(declare-fun size!34446 (List!47167) Int)

(assert (=> d!1249052 (= c!721344 (> (size!34446 (_1!25436 lt!1507826)) 0))))

(assert (=> d!1249052 (= lt!1507826 e!2638077)))

(declare-fun c!721345 () Bool)

(declare-fun lt!1507825 () Option!10095)

(assert (=> d!1249052 (= c!721345 (is-Some!10094 lt!1507825))))

(assert (=> d!1249052 (= lt!1507825 (maxPrefix!4512 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1249052 (= (lexList!2062 thiss!21641 rules!2971 longerInput!62) lt!1507826)))

(declare-fun b!4247357 () Bool)

(declare-fun lt!1507827 () tuple2!44604)

(assert (=> b!4247357 (= e!2638077 (tuple2!44605 (Cons!47043 (_1!25435 (v!41048 lt!1507825)) (_1!25436 lt!1507827)) (_2!25436 lt!1507827)))))

(assert (=> b!4247357 (= lt!1507827 (lexList!2062 thiss!21641 rules!2971 (_2!25435 (v!41048 lt!1507825))))))

(assert (= (and d!1249052 c!721345) b!4247357))

(assert (= (and d!1249052 (not c!721345)) b!4247354))

(assert (= (and d!1249052 c!721344) b!4247355))

(assert (= (and d!1249052 (not c!721344)) b!4247356))

(assert (= (and b!4247355 res!1746137) b!4247353))

(declare-fun m!4832099 () Bool)

(assert (=> b!4247353 m!4832099))

(declare-fun m!4832101 () Bool)

(assert (=> b!4247355 m!4832101))

(assert (=> b!4247355 m!4832035))

(declare-fun m!4832103 () Bool)

(assert (=> d!1249052 m!4832103))

(assert (=> d!1249052 m!4832045))

(declare-fun m!4832105 () Bool)

(assert (=> b!4247357 m!4832105))

(assert (=> b!4247285 d!1249052))

(declare-fun d!1249054 () Bool)

(assert (=> d!1249054 (= (isEmpty!27827 longerInput!62) (is-Nil!47042 longerInput!62))))

(assert (=> b!4247290 d!1249054))

(declare-fun b!4247376 () Bool)

(declare-fun e!2638087 () Option!10095)

(declare-fun lt!1507842 () Option!10095)

(declare-fun lt!1507841 () Option!10095)

(assert (=> b!4247376 (= e!2638087 (ite (and (is-None!10094 lt!1507842) (is-None!10094 lt!1507841)) None!10094 (ite (is-None!10094 lt!1507841) lt!1507842 (ite (is-None!10094 lt!1507842) lt!1507841 (ite (>= (size!34442 (_1!25435 (v!41048 lt!1507842))) (size!34442 (_1!25435 (v!41048 lt!1507841)))) lt!1507842 lt!1507841)))))))

(declare-fun call!293915 () Option!10095)

(assert (=> b!4247376 (= lt!1507842 call!293915)))

(assert (=> b!4247376 (= lt!1507841 (maxPrefix!4512 thiss!21641 (t!351833 rules!2971) shorterInput!62))))

(declare-fun b!4247377 () Bool)

(declare-fun res!1746154 () Bool)

(declare-fun e!2638088 () Bool)

(assert (=> b!4247377 (=> (not res!1746154) (not e!2638088))))

(declare-fun lt!1507838 () Option!10095)

(declare-fun get!15278 (Option!10095) tuple2!44602)

(assert (=> b!4247377 (= res!1746154 (< (size!34443 (_2!25435 (get!15278 lt!1507838))) (size!34443 shorterInput!62)))))

(declare-fun b!4247378 () Bool)

(declare-fun contains!9748 (List!47168 Rule!15722) Bool)

(assert (=> b!4247378 (= e!2638088 (contains!9748 rules!2971 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))))

(declare-fun b!4247379 () Bool)

(declare-fun res!1746158 () Bool)

(assert (=> b!4247379 (=> (not res!1746158) (not e!2638088))))

(assert (=> b!4247379 (= res!1746158 (= (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838)))) (originalCharacters!8305 (_1!25435 (get!15278 lt!1507838)))))))

(declare-fun b!4247380 () Bool)

(declare-fun res!1746153 () Bool)

(assert (=> b!4247380 (=> (not res!1746153) (not e!2638088))))

(declare-fun apply!10767 (TokenValueInjection!15810 BalanceConc!27938) TokenValue!8191)

(declare-fun seqFromList!5827 (List!47166) BalanceConc!27938)

(assert (=> b!4247380 (= res!1746153 (= (value!247426 (_1!25435 (get!15278 lt!1507838))) (apply!10767 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507838)))))))))

(declare-fun b!4247381 () Bool)

(declare-fun res!1746155 () Bool)

(assert (=> b!4247381 (=> (not res!1746155) (not e!2638088))))

(declare-fun matchR!6462 (Regex!12866 List!47166) Bool)

(assert (=> b!4247381 (= res!1746155 (matchR!6462 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))) (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))))))

(declare-fun b!4247382 () Bool)

(declare-fun res!1746152 () Bool)

(assert (=> b!4247382 (=> (not res!1746152) (not e!2638088))))

(assert (=> b!4247382 (= res!1746152 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838)))) (_2!25435 (get!15278 lt!1507838))) shorterInput!62))))

(declare-fun d!1249056 () Bool)

(declare-fun e!2638086 () Bool)

(assert (=> d!1249056 e!2638086))

(declare-fun res!1746156 () Bool)

(assert (=> d!1249056 (=> res!1746156 e!2638086)))

(declare-fun isEmpty!27831 (Option!10095) Bool)

(assert (=> d!1249056 (= res!1746156 (isEmpty!27831 lt!1507838))))

(assert (=> d!1249056 (= lt!1507838 e!2638087)))

(declare-fun c!721348 () Bool)

(assert (=> d!1249056 (= c!721348 (and (is-Cons!47044 rules!2971) (is-Nil!47044 (t!351833 rules!2971))))))

(declare-datatypes ((Unit!66043 0))(
  ( (Unit!66044) )
))
(declare-fun lt!1507840 () Unit!66043)

(declare-fun lt!1507839 () Unit!66043)

(assert (=> d!1249056 (= lt!1507840 lt!1507839)))

(declare-fun isPrefix!4740 (List!47166 List!47166) Bool)

(assert (=> d!1249056 (isPrefix!4740 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3137 (List!47166 List!47166) Unit!66043)

(assert (=> d!1249056 (= lt!1507839 (lemmaIsPrefixRefl!3137 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!2991 (LexerInterface!7556 List!47168) Bool)

(assert (=> d!1249056 (rulesValidInductive!2991 thiss!21641 rules!2971)))

(assert (=> d!1249056 (= (maxPrefix!4512 thiss!21641 rules!2971 shorterInput!62) lt!1507838)))

(declare-fun b!4247383 () Bool)

(assert (=> b!4247383 (= e!2638087 call!293915)))

(declare-fun b!4247384 () Bool)

(assert (=> b!4247384 (= e!2638086 e!2638088)))

(declare-fun res!1746157 () Bool)

(assert (=> b!4247384 (=> (not res!1746157) (not e!2638088))))

(declare-fun isDefined!7455 (Option!10095) Bool)

(assert (=> b!4247384 (= res!1746157 (isDefined!7455 lt!1507838))))

(declare-fun bm!293910 () Bool)

(declare-fun maxPrefixOneRule!3465 (LexerInterface!7556 Rule!15722 List!47166) Option!10095)

(assert (=> bm!293910 (= call!293915 (maxPrefixOneRule!3465 thiss!21641 (h!52464 rules!2971) shorterInput!62))))

(assert (= (and d!1249056 c!721348) b!4247383))

(assert (= (and d!1249056 (not c!721348)) b!4247376))

(assert (= (or b!4247383 b!4247376) bm!293910))

(assert (= (and d!1249056 (not res!1746156)) b!4247384))

(assert (= (and b!4247384 res!1746157) b!4247379))

(assert (= (and b!4247379 res!1746158) b!4247377))

(assert (= (and b!4247377 res!1746154) b!4247382))

(assert (= (and b!4247382 res!1746152) b!4247380))

(assert (= (and b!4247380 res!1746153) b!4247381))

(assert (= (and b!4247381 res!1746155) b!4247378))

(declare-fun m!4832107 () Bool)

(assert (=> b!4247377 m!4832107))

(declare-fun m!4832109 () Bool)

(assert (=> b!4247377 m!4832109))

(assert (=> b!4247377 m!4832037))

(assert (=> b!4247381 m!4832107))

(declare-fun m!4832111 () Bool)

(assert (=> b!4247381 m!4832111))

(assert (=> b!4247381 m!4832111))

(declare-fun m!4832113 () Bool)

(assert (=> b!4247381 m!4832113))

(assert (=> b!4247381 m!4832113))

(declare-fun m!4832115 () Bool)

(assert (=> b!4247381 m!4832115))

(declare-fun m!4832117 () Bool)

(assert (=> bm!293910 m!4832117))

(assert (=> b!4247378 m!4832107))

(declare-fun m!4832119 () Bool)

(assert (=> b!4247378 m!4832119))

(assert (=> b!4247379 m!4832107))

(assert (=> b!4247379 m!4832111))

(assert (=> b!4247379 m!4832111))

(assert (=> b!4247379 m!4832113))

(assert (=> b!4247380 m!4832107))

(declare-fun m!4832121 () Bool)

(assert (=> b!4247380 m!4832121))

(assert (=> b!4247380 m!4832121))

(declare-fun m!4832123 () Bool)

(assert (=> b!4247380 m!4832123))

(assert (=> b!4247382 m!4832107))

(assert (=> b!4247382 m!4832111))

(assert (=> b!4247382 m!4832111))

(assert (=> b!4247382 m!4832113))

(assert (=> b!4247382 m!4832113))

(declare-fun m!4832125 () Bool)

(assert (=> b!4247382 m!4832125))

(declare-fun m!4832127 () Bool)

(assert (=> b!4247384 m!4832127))

(declare-fun m!4832129 () Bool)

(assert (=> b!4247376 m!4832129))

(declare-fun m!4832131 () Bool)

(assert (=> d!1249056 m!4832131))

(declare-fun m!4832133 () Bool)

(assert (=> d!1249056 m!4832133))

(declare-fun m!4832135 () Bool)

(assert (=> d!1249056 m!4832135))

(declare-fun m!4832137 () Bool)

(assert (=> d!1249056 m!4832137))

(assert (=> b!4247279 d!1249056))

(declare-fun b!4247385 () Bool)

(declare-fun e!2638090 () Option!10095)

(declare-fun lt!1507847 () Option!10095)

(declare-fun lt!1507846 () Option!10095)

(assert (=> b!4247385 (= e!2638090 (ite (and (is-None!10094 lt!1507847) (is-None!10094 lt!1507846)) None!10094 (ite (is-None!10094 lt!1507846) lt!1507847 (ite (is-None!10094 lt!1507847) lt!1507846 (ite (>= (size!34442 (_1!25435 (v!41048 lt!1507847))) (size!34442 (_1!25435 (v!41048 lt!1507846)))) lt!1507847 lt!1507846)))))))

(declare-fun call!293916 () Option!10095)

(assert (=> b!4247385 (= lt!1507847 call!293916)))

(assert (=> b!4247385 (= lt!1507846 (maxPrefix!4512 thiss!21641 (t!351833 rules!2971) longerInput!62))))

(declare-fun b!4247386 () Bool)

(declare-fun res!1746161 () Bool)

(declare-fun e!2638091 () Bool)

(assert (=> b!4247386 (=> (not res!1746161) (not e!2638091))))

(declare-fun lt!1507843 () Option!10095)

(assert (=> b!4247386 (= res!1746161 (< (size!34443 (_2!25435 (get!15278 lt!1507843))) (size!34443 longerInput!62)))))

(declare-fun b!4247387 () Bool)

(assert (=> b!4247387 (= e!2638091 (contains!9748 rules!2971 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))))

(declare-fun b!4247388 () Bool)

(declare-fun res!1746165 () Bool)

(assert (=> b!4247388 (=> (not res!1746165) (not e!2638091))))

(assert (=> b!4247388 (= res!1746165 (= (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843)))) (originalCharacters!8305 (_1!25435 (get!15278 lt!1507843)))))))

(declare-fun b!4247389 () Bool)

(declare-fun res!1746160 () Bool)

(assert (=> b!4247389 (=> (not res!1746160) (not e!2638091))))

(assert (=> b!4247389 (= res!1746160 (= (value!247426 (_1!25435 (get!15278 lt!1507843))) (apply!10767 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507843)))))))))

(declare-fun b!4247390 () Bool)

(declare-fun res!1746162 () Bool)

(assert (=> b!4247390 (=> (not res!1746162) (not e!2638091))))

(assert (=> b!4247390 (= res!1746162 (matchR!6462 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))) (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))))))

(declare-fun b!4247391 () Bool)

(declare-fun res!1746159 () Bool)

(assert (=> b!4247391 (=> (not res!1746159) (not e!2638091))))

(assert (=> b!4247391 (= res!1746159 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843)))) (_2!25435 (get!15278 lt!1507843))) longerInput!62))))

(declare-fun d!1249060 () Bool)

(declare-fun e!2638089 () Bool)

(assert (=> d!1249060 e!2638089))

(declare-fun res!1746163 () Bool)

(assert (=> d!1249060 (=> res!1746163 e!2638089)))

(assert (=> d!1249060 (= res!1746163 (isEmpty!27831 lt!1507843))))

(assert (=> d!1249060 (= lt!1507843 e!2638090)))

(declare-fun c!721349 () Bool)

(assert (=> d!1249060 (= c!721349 (and (is-Cons!47044 rules!2971) (is-Nil!47044 (t!351833 rules!2971))))))

(declare-fun lt!1507845 () Unit!66043)

(declare-fun lt!1507844 () Unit!66043)

(assert (=> d!1249060 (= lt!1507845 lt!1507844)))

(assert (=> d!1249060 (isPrefix!4740 longerInput!62 longerInput!62)))

(assert (=> d!1249060 (= lt!1507844 (lemmaIsPrefixRefl!3137 longerInput!62 longerInput!62))))

(assert (=> d!1249060 (rulesValidInductive!2991 thiss!21641 rules!2971)))

(assert (=> d!1249060 (= (maxPrefix!4512 thiss!21641 rules!2971 longerInput!62) lt!1507843)))

(declare-fun b!4247392 () Bool)

(assert (=> b!4247392 (= e!2638090 call!293916)))

(declare-fun b!4247393 () Bool)

(assert (=> b!4247393 (= e!2638089 e!2638091)))

(declare-fun res!1746164 () Bool)

(assert (=> b!4247393 (=> (not res!1746164) (not e!2638091))))

(assert (=> b!4247393 (= res!1746164 (isDefined!7455 lt!1507843))))

(declare-fun bm!293911 () Bool)

(assert (=> bm!293911 (= call!293916 (maxPrefixOneRule!3465 thiss!21641 (h!52464 rules!2971) longerInput!62))))

(assert (= (and d!1249060 c!721349) b!4247392))

(assert (= (and d!1249060 (not c!721349)) b!4247385))

(assert (= (or b!4247392 b!4247385) bm!293911))

(assert (= (and d!1249060 (not res!1746163)) b!4247393))

(assert (= (and b!4247393 res!1746164) b!4247388))

(assert (= (and b!4247388 res!1746165) b!4247386))

(assert (= (and b!4247386 res!1746161) b!4247391))

(assert (= (and b!4247391 res!1746159) b!4247389))

(assert (= (and b!4247389 res!1746160) b!4247390))

(assert (= (and b!4247390 res!1746162) b!4247387))

(declare-fun m!4832139 () Bool)

(assert (=> b!4247386 m!4832139))

(declare-fun m!4832141 () Bool)

(assert (=> b!4247386 m!4832141))

(assert (=> b!4247386 m!4832035))

(assert (=> b!4247390 m!4832139))

(declare-fun m!4832143 () Bool)

(assert (=> b!4247390 m!4832143))

(assert (=> b!4247390 m!4832143))

(declare-fun m!4832145 () Bool)

(assert (=> b!4247390 m!4832145))

(assert (=> b!4247390 m!4832145))

(declare-fun m!4832147 () Bool)

(assert (=> b!4247390 m!4832147))

(declare-fun m!4832149 () Bool)

(assert (=> bm!293911 m!4832149))

(assert (=> b!4247387 m!4832139))

(declare-fun m!4832151 () Bool)

(assert (=> b!4247387 m!4832151))

(assert (=> b!4247388 m!4832139))

(assert (=> b!4247388 m!4832143))

(assert (=> b!4247388 m!4832143))

(assert (=> b!4247388 m!4832145))

(assert (=> b!4247389 m!4832139))

(declare-fun m!4832153 () Bool)

(assert (=> b!4247389 m!4832153))

(assert (=> b!4247389 m!4832153))

(declare-fun m!4832155 () Bool)

(assert (=> b!4247389 m!4832155))

(assert (=> b!4247391 m!4832139))

(assert (=> b!4247391 m!4832143))

(assert (=> b!4247391 m!4832143))

(assert (=> b!4247391 m!4832145))

(assert (=> b!4247391 m!4832145))

(declare-fun m!4832157 () Bool)

(assert (=> b!4247391 m!4832157))

(declare-fun m!4832159 () Bool)

(assert (=> b!4247393 m!4832159))

(declare-fun m!4832161 () Bool)

(assert (=> b!4247385 m!4832161))

(declare-fun m!4832163 () Bool)

(assert (=> d!1249060 m!4832163))

(declare-fun m!4832165 () Bool)

(assert (=> d!1249060 m!4832165))

(declare-fun m!4832167 () Bool)

(assert (=> d!1249060 m!4832167))

(assert (=> d!1249060 m!4832137))

(assert (=> b!4247279 d!1249060))

(declare-fun d!1249062 () Bool)

(declare-fun lt!1507850 () Int)

(assert (=> d!1249062 (>= lt!1507850 0)))

(declare-fun e!2638094 () Int)

(assert (=> d!1249062 (= lt!1507850 e!2638094)))

(declare-fun c!721352 () Bool)

(assert (=> d!1249062 (= c!721352 (is-Nil!47042 longerInput!62))))

(assert (=> d!1249062 (= (size!34443 longerInput!62) lt!1507850)))

(declare-fun b!4247398 () Bool)

(assert (=> b!4247398 (= e!2638094 0)))

(declare-fun b!4247399 () Bool)

(assert (=> b!4247399 (= e!2638094 (+ 1 (size!34443 (t!351831 longerInput!62))))))

(assert (= (and d!1249062 c!721352) b!4247398))

(assert (= (and d!1249062 (not c!721352)) b!4247399))

(declare-fun m!4832169 () Bool)

(assert (=> b!4247399 m!4832169))

(assert (=> b!4247284 d!1249062))

(declare-fun d!1249064 () Bool)

(declare-fun lt!1507851 () Int)

(assert (=> d!1249064 (>= lt!1507851 0)))

(declare-fun e!2638095 () Int)

(assert (=> d!1249064 (= lt!1507851 e!2638095)))

(declare-fun c!721353 () Bool)

(assert (=> d!1249064 (= c!721353 (is-Nil!47042 shorterInput!62))))

(assert (=> d!1249064 (= (size!34443 shorterInput!62) lt!1507851)))

(declare-fun b!4247400 () Bool)

(assert (=> b!4247400 (= e!2638095 0)))

(declare-fun b!4247401 () Bool)

(assert (=> b!4247401 (= e!2638095 (+ 1 (size!34443 (t!351831 shorterInput!62))))))

(assert (= (and d!1249064 c!721353) b!4247400))

(assert (= (and d!1249064 (not c!721353)) b!4247401))

(declare-fun m!4832171 () Bool)

(assert (=> b!4247401 m!4832171))

(assert (=> b!4247284 d!1249064))

(declare-fun b!4247412 () Bool)

(declare-fun e!2638103 () Bool)

(declare-fun inv!17 (TokenValue!8191) Bool)

(assert (=> b!4247412 (= e!2638103 (inv!17 (value!247426 (h!52463 tokens!592))))))

(declare-fun b!4247413 () Bool)

(declare-fun e!2638102 () Bool)

(assert (=> b!4247413 (= e!2638102 e!2638103)))

(declare-fun c!721359 () Bool)

(assert (=> b!4247413 (= c!721359 (is-IntegerValue!24574 (value!247426 (h!52463 tokens!592))))))

(declare-fun d!1249066 () Bool)

(declare-fun c!721358 () Bool)

(assert (=> d!1249066 (= c!721358 (is-IntegerValue!24573 (value!247426 (h!52463 tokens!592))))))

(assert (=> d!1249066 (= (inv!21 (value!247426 (h!52463 tokens!592))) e!2638102)))

(declare-fun b!4247414 () Bool)

(declare-fun e!2638104 () Bool)

(declare-fun inv!15 (TokenValue!8191) Bool)

(assert (=> b!4247414 (= e!2638104 (inv!15 (value!247426 (h!52463 tokens!592))))))

(declare-fun b!4247415 () Bool)

(declare-fun res!1746168 () Bool)

(assert (=> b!4247415 (=> res!1746168 e!2638104)))

(assert (=> b!4247415 (= res!1746168 (not (is-IntegerValue!24575 (value!247426 (h!52463 tokens!592)))))))

(assert (=> b!4247415 (= e!2638103 e!2638104)))

(declare-fun b!4247416 () Bool)

(declare-fun inv!16 (TokenValue!8191) Bool)

(assert (=> b!4247416 (= e!2638102 (inv!16 (value!247426 (h!52463 tokens!592))))))

(assert (= (and d!1249066 c!721358) b!4247416))

(assert (= (and d!1249066 (not c!721358)) b!4247413))

(assert (= (and b!4247413 c!721359) b!4247412))

(assert (= (and b!4247413 (not c!721359)) b!4247415))

(assert (= (and b!4247415 (not res!1746168)) b!4247414))

(declare-fun m!4832173 () Bool)

(assert (=> b!4247412 m!4832173))

(declare-fun m!4832175 () Bool)

(assert (=> b!4247414 m!4832175))

(declare-fun m!4832177 () Bool)

(assert (=> b!4247416 m!4832177))

(assert (=> b!4247281 d!1249066))

(declare-fun b!4247431 () Bool)

(declare-fun res!1746174 () Bool)

(declare-fun e!2638112 () Bool)

(assert (=> b!4247431 (=> (not res!1746174) (not e!2638112))))

(declare-fun lt!1507860 () List!47166)

(assert (=> b!4247431 (= res!1746174 (= (size!34443 lt!1507860) (+ (size!34443 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) (size!34443 (_2!25435 (v!41048 lt!1507812))))))))

(declare-fun d!1249068 () Bool)

(assert (=> d!1249068 e!2638112))

(declare-fun res!1746173 () Bool)

(assert (=> d!1249068 (=> (not res!1746173) (not e!2638112))))

(declare-fun content!7391 (List!47166) (Set C!25930))

(assert (=> d!1249068 (= res!1746173 (= (content!7391 lt!1507860) (set.union (content!7391 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) (content!7391 (_2!25435 (v!41048 lt!1507812))))))))

(declare-fun e!2638111 () List!47166)

(assert (=> d!1249068 (= lt!1507860 e!2638111)))

(declare-fun c!721364 () Bool)

(assert (=> d!1249068 (= c!721364 (is-Nil!47042 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))

(assert (=> d!1249068 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))) (_2!25435 (v!41048 lt!1507812))) lt!1507860)))

(declare-fun b!4247430 () Bool)

(assert (=> b!4247430 (= e!2638111 (Cons!47042 (h!52462 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) (++!11972 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) (_2!25435 (v!41048 lt!1507812)))))))

(declare-fun b!4247429 () Bool)

(assert (=> b!4247429 (= e!2638111 (_2!25435 (v!41048 lt!1507812)))))

(declare-fun b!4247432 () Bool)

(assert (=> b!4247432 (= e!2638112 (or (not (= (_2!25435 (v!41048 lt!1507812)) Nil!47042)) (= lt!1507860 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))))))))

(assert (= (and d!1249068 c!721364) b!4247429))

(assert (= (and d!1249068 (not c!721364)) b!4247430))

(assert (= (and d!1249068 res!1746173) b!4247431))

(assert (= (and b!4247431 res!1746174) b!4247432))

(declare-fun m!4832179 () Bool)

(assert (=> b!4247431 m!4832179))

(assert (=> b!4247431 m!4832057))

(declare-fun m!4832181 () Bool)

(assert (=> b!4247431 m!4832181))

(declare-fun m!4832183 () Bool)

(assert (=> b!4247431 m!4832183))

(declare-fun m!4832185 () Bool)

(assert (=> d!1249068 m!4832185))

(assert (=> d!1249068 m!4832057))

(declare-fun m!4832187 () Bool)

(assert (=> d!1249068 m!4832187))

(declare-fun m!4832189 () Bool)

(assert (=> d!1249068 m!4832189))

(declare-fun m!4832191 () Bool)

(assert (=> b!4247430 m!4832191))

(assert (=> b!4247286 d!1249068))

(declare-fun d!1249070 () Bool)

(declare-fun list!16947 (Conc!14172) List!47166)

(assert (=> d!1249070 (= (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))) (list!16947 (c!721335 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))

(declare-fun bs!598524 () Bool)

(assert (= bs!598524 d!1249070))

(declare-fun m!4832193 () Bool)

(assert (=> bs!598524 m!4832193))

(assert (=> b!4247286 d!1249070))

(declare-fun d!1249072 () Bool)

(declare-fun lt!1507863 () BalanceConc!27938)

(assert (=> d!1249072 (= (list!16945 lt!1507863) (originalCharacters!8305 (_1!25435 (v!41048 lt!1507812))))))

(declare-fun dynLambda!20149 (Int TokenValue!8191) BalanceConc!27938)

(assert (=> d!1249072 (= lt!1507863 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812)))))))

(assert (=> d!1249072 (= (charsOf!5303 (_1!25435 (v!41048 lt!1507812))) lt!1507863)))

(declare-fun b_lambda!125091 () Bool)

(assert (=> (not b_lambda!125091) (not d!1249072)))

(declare-fun tb!255851 () Bool)

(declare-fun t!351839 () Bool)

(assert (=> (and b!4247283 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812)))))) t!351839) tb!255851))

(declare-fun b!4247443 () Bool)

(declare-fun e!2638119 () Bool)

(declare-fun tp!1303025 () Bool)

(declare-fun inv!61809 (Conc!14172) Bool)

(assert (=> b!4247443 (= e!2638119 (and (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812)))))) tp!1303025))))

(declare-fun result!312016 () Bool)

(declare-fun inv!61810 (BalanceConc!27938) Bool)

(assert (=> tb!255851 (= result!312016 (and (inv!61810 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812))))) e!2638119))))

(assert (= tb!255851 b!4247443))

(declare-fun m!4832195 () Bool)

(assert (=> b!4247443 m!4832195))

(declare-fun m!4832197 () Bool)

(assert (=> tb!255851 m!4832197))

(assert (=> d!1249072 t!351839))

(declare-fun b_and!336541 () Bool)

(assert (= b_and!336527 (and (=> t!351839 result!312016) b_and!336541)))

(declare-fun tb!255853 () Bool)

(declare-fun t!351841 () Bool)

(assert (=> (and b!4247276 (= (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812)))))) t!351841) tb!255853))

(declare-fun result!312020 () Bool)

(assert (= result!312020 result!312016))

(assert (=> d!1249072 t!351841))

(declare-fun b_and!336543 () Bool)

(assert (= b_and!336531 (and (=> t!351841 result!312020) b_and!336543)))

(declare-fun m!4832199 () Bool)

(assert (=> d!1249072 m!4832199))

(declare-fun m!4832201 () Bool)

(assert (=> d!1249072 m!4832201))

(assert (=> b!4247286 d!1249072))

(declare-fun d!1249074 () Bool)

(assert (=> d!1249074 (= (inv!61802 (tag!8825 (rule!11091 (h!52463 tokens!592)))) (= (mod (str.len (value!247425 (tag!8825 (rule!11091 (h!52463 tokens!592))))) 2) 0))))

(assert (=> b!4247275 d!1249074))

(declare-fun d!1249076 () Bool)

(declare-fun res!1746180 () Bool)

(declare-fun e!2638125 () Bool)

(assert (=> d!1249076 (=> (not res!1746180) (not e!2638125))))

(declare-fun semiInverseModEq!3468 (Int Int) Bool)

(assert (=> d!1249076 (= res!1746180 (semiInverseModEq!3468 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592))))))))

(assert (=> d!1249076 (= (inv!61805 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) e!2638125)))

(declare-fun b!4247451 () Bool)

(declare-fun equivClasses!3367 (Int Int) Bool)

(assert (=> b!4247451 (= e!2638125 (equivClasses!3367 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592))))))))

(assert (= (and d!1249076 res!1746180) b!4247451))

(declare-fun m!4832211 () Bool)

(assert (=> d!1249076 m!4832211))

(declare-fun m!4832213 () Bool)

(assert (=> b!4247451 m!4832213))

(assert (=> b!4247275 d!1249076))

(declare-fun d!1249080 () Bool)

(declare-fun res!1746185 () Bool)

(declare-fun e!2638128 () Bool)

(assert (=> d!1249080 (=> (not res!1746185) (not e!2638128))))

(assert (=> d!1249080 (= res!1746185 (not (isEmpty!27827 (originalCharacters!8305 (h!52463 tokens!592)))))))

(assert (=> d!1249080 (= (inv!61806 (h!52463 tokens!592)) e!2638128)))

(declare-fun b!4247456 () Bool)

(declare-fun res!1746186 () Bool)

(assert (=> b!4247456 (=> (not res!1746186) (not e!2638128))))

(assert (=> b!4247456 (= res!1746186 (= (originalCharacters!8305 (h!52463 tokens!592)) (list!16945 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))))))

(declare-fun b!4247457 () Bool)

(assert (=> b!4247457 (= e!2638128 (= (size!34442 (h!52463 tokens!592)) (size!34443 (originalCharacters!8305 (h!52463 tokens!592)))))))

(assert (= (and d!1249080 res!1746185) b!4247456))

(assert (= (and b!4247456 res!1746186) b!4247457))

(declare-fun b_lambda!125093 () Bool)

(assert (=> (not b_lambda!125093) (not b!4247456)))

(declare-fun t!351843 () Bool)

(declare-fun tb!255855 () Bool)

(assert (=> (and b!4247283 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) t!351843) tb!255855))

(declare-fun b!4247458 () Bool)

(declare-fun e!2638129 () Bool)

(declare-fun tp!1303026 () Bool)

(assert (=> b!4247458 (= e!2638129 (and (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))) tp!1303026))))

(declare-fun result!312022 () Bool)

(assert (=> tb!255855 (= result!312022 (and (inv!61810 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))) e!2638129))))

(assert (= tb!255855 b!4247458))

(declare-fun m!4832215 () Bool)

(assert (=> b!4247458 m!4832215))

(declare-fun m!4832217 () Bool)

(assert (=> tb!255855 m!4832217))

(assert (=> b!4247456 t!351843))

(declare-fun b_and!336545 () Bool)

(assert (= b_and!336541 (and (=> t!351843 result!312022) b_and!336545)))

(declare-fun t!351845 () Bool)

(declare-fun tb!255857 () Bool)

(assert (=> (and b!4247276 (= (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) t!351845) tb!255857))

(declare-fun result!312024 () Bool)

(assert (= result!312024 result!312022))

(assert (=> b!4247456 t!351845))

(declare-fun b_and!336547 () Bool)

(assert (= b_and!336543 (and (=> t!351845 result!312024) b_and!336547)))

(declare-fun m!4832219 () Bool)

(assert (=> d!1249080 m!4832219))

(declare-fun m!4832221 () Bool)

(assert (=> b!4247456 m!4832221))

(assert (=> b!4247456 m!4832221))

(declare-fun m!4832223 () Bool)

(assert (=> b!4247456 m!4832223))

(declare-fun m!4832225 () Bool)

(assert (=> b!4247457 m!4832225))

(assert (=> b!4247280 d!1249080))

(declare-fun d!1249084 () Bool)

(declare-fun res!1746193 () Bool)

(declare-fun e!2638134 () Bool)

(assert (=> d!1249084 (=> (not res!1746193) (not e!2638134))))

(declare-fun rulesValid!3090 (LexerInterface!7556 List!47168) Bool)

(assert (=> d!1249084 (= res!1746193 (rulesValid!3090 thiss!21641 rules!2971))))

(assert (=> d!1249084 (= (rulesInvariant!6667 thiss!21641 rules!2971) e!2638134)))

(declare-fun b!4247465 () Bool)

(declare-datatypes ((List!47173 0))(
  ( (Nil!47049) (Cons!47049 (h!52469 String!54887) (t!351858 List!47173)) )
))
(declare-fun noDuplicateTag!3251 (LexerInterface!7556 List!47168 List!47173) Bool)

(assert (=> b!4247465 (= e!2638134 (noDuplicateTag!3251 thiss!21641 rules!2971 Nil!47049))))

(assert (= (and d!1249084 res!1746193) b!4247465))

(declare-fun m!4832227 () Bool)

(assert (=> d!1249084 m!4832227))

(declare-fun m!4832229 () Bool)

(assert (=> b!4247465 m!4832229))

(assert (=> b!4247287 d!1249084))

(declare-fun d!1249086 () Bool)

(assert (=> d!1249086 (= (isEmpty!27826 rules!2971) (is-Nil!47044 rules!2971))))

(assert (=> b!4247289 d!1249086))

(declare-fun d!1249088 () Bool)

(assert (=> d!1249088 (= (inv!61802 (tag!8825 (h!52464 rules!2971))) (= (mod (str.len (value!247425 (tag!8825 (h!52464 rules!2971)))) 2) 0))))

(assert (=> b!4247288 d!1249088))

(declare-fun d!1249090 () Bool)

(declare-fun res!1746194 () Bool)

(declare-fun e!2638135 () Bool)

(assert (=> d!1249090 (=> (not res!1746194) (not e!2638135))))

(assert (=> d!1249090 (= res!1746194 (semiInverseModEq!3468 (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toValue!10725 (transformation!7961 (h!52464 rules!2971)))))))

(assert (=> d!1249090 (= (inv!61805 (transformation!7961 (h!52464 rules!2971))) e!2638135)))

(declare-fun b!4247466 () Bool)

(assert (=> b!4247466 (= e!2638135 (equivClasses!3367 (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toValue!10725 (transformation!7961 (h!52464 rules!2971)))))))

(assert (= (and d!1249090 res!1746194) b!4247466))

(declare-fun m!4832231 () Bool)

(assert (=> d!1249090 m!4832231))

(declare-fun m!4832233 () Bool)

(assert (=> b!4247466 m!4832233))

(assert (=> b!4247288 d!1249090))

(declare-fun b!4247473 () Bool)

(declare-fun e!2638139 () Bool)

(declare-fun tp!1303029 () Bool)

(assert (=> b!4247473 (= e!2638139 (and tp_is_empty!22723 tp!1303029))))

(assert (=> b!4247281 (= tp!1302975 e!2638139)))

(assert (= (and b!4247281 (is-Cons!47042 (originalCharacters!8305 (h!52463 tokens!592)))) b!4247473))

(declare-fun b!4247474 () Bool)

(declare-fun e!2638140 () Bool)

(declare-fun tp!1303030 () Bool)

(assert (=> b!4247474 (= e!2638140 (and tp_is_empty!22723 tp!1303030))))

(assert (=> b!4247291 (= tp!1302982 e!2638140)))

(assert (= (and b!4247291 (is-Cons!47042 (t!351831 longerInput!62))) b!4247474))

(declare-fun b!4247492 () Bool)

(declare-fun e!2638145 () Bool)

(declare-fun tp!1303043 () Bool)

(declare-fun tp!1303045 () Bool)

(assert (=> b!4247492 (= e!2638145 (and tp!1303043 tp!1303045))))

(declare-fun b!4247489 () Bool)

(assert (=> b!4247489 (= e!2638145 tp_is_empty!22723)))

(declare-fun b!4247490 () Bool)

(declare-fun tp!1303046 () Bool)

(declare-fun tp!1303044 () Bool)

(assert (=> b!4247490 (= e!2638145 (and tp!1303046 tp!1303044))))

(assert (=> b!4247275 (= tp!1302985 e!2638145)))

(declare-fun b!4247491 () Bool)

(declare-fun tp!1303047 () Bool)

(assert (=> b!4247491 (= e!2638145 tp!1303047)))

(assert (= (and b!4247275 (is-ElementMatch!12866 (regex!7961 (rule!11091 (h!52463 tokens!592))))) b!4247489))

(assert (= (and b!4247275 (is-Concat!21058 (regex!7961 (rule!11091 (h!52463 tokens!592))))) b!4247490))

(assert (= (and b!4247275 (is-Star!12866 (regex!7961 (rule!11091 (h!52463 tokens!592))))) b!4247491))

(assert (= (and b!4247275 (is-Union!12866 (regex!7961 (rule!11091 (h!52463 tokens!592))))) b!4247492))

(declare-fun b!4247507 () Bool)

(declare-fun b_free!126171 () Bool)

(declare-fun b_next!126875 () Bool)

(assert (=> b!4247507 (= b_free!126171 (not b_next!126875))))

(declare-fun tp!1303063 () Bool)

(declare-fun b_and!336553 () Bool)

(assert (=> b!4247507 (= tp!1303063 b_and!336553)))

(declare-fun b_free!126173 () Bool)

(declare-fun b_next!126877 () Bool)

(assert (=> b!4247507 (= b_free!126173 (not b_next!126877))))

(declare-fun t!351851 () Bool)

(declare-fun tb!255863 () Bool)

(assert (=> (and b!4247507 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812)))))) t!351851) tb!255863))

(declare-fun result!312038 () Bool)

(assert (= result!312038 result!312016))

(assert (=> d!1249072 t!351851))

(declare-fun t!351853 () Bool)

(declare-fun tb!255865 () Bool)

(assert (=> (and b!4247507 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) t!351853) tb!255865))

(declare-fun result!312040 () Bool)

(assert (= result!312040 result!312022))

(assert (=> b!4247456 t!351853))

(declare-fun tp!1303060 () Bool)

(declare-fun b_and!336555 () Bool)

(assert (=> b!4247507 (= tp!1303060 (and (=> t!351851 result!312038) (=> t!351853 result!312040) b_and!336555))))

(declare-fun e!2638162 () Bool)

(assert (=> b!4247280 (= tp!1302978 e!2638162)))

(declare-fun b!4247504 () Bool)

(declare-fun tp!1303062 () Bool)

(declare-fun e!2638163 () Bool)

(assert (=> b!4247504 (= e!2638162 (and (inv!61806 (h!52463 (t!351832 tokens!592))) e!2638163 tp!1303062))))

(declare-fun e!2638159 () Bool)

(declare-fun e!2638161 () Bool)

(declare-fun tp!1303059 () Bool)

(declare-fun b!4247506 () Bool)

(assert (=> b!4247506 (= e!2638159 (and tp!1303059 (inv!61802 (tag!8825 (rule!11091 (h!52463 (t!351832 tokens!592))))) (inv!61805 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) e!2638161))))

(declare-fun b!4247505 () Bool)

(declare-fun tp!1303061 () Bool)

(assert (=> b!4247505 (= e!2638163 (and (inv!21 (value!247426 (h!52463 (t!351832 tokens!592)))) e!2638159 tp!1303061))))

(assert (=> b!4247507 (= e!2638161 (and tp!1303063 tp!1303060))))

(assert (= b!4247506 b!4247507))

(assert (= b!4247505 b!4247506))

(assert (= b!4247504 b!4247505))

(assert (= (and b!4247280 (is-Cons!47043 (t!351832 tokens!592))) b!4247504))

(declare-fun m!4832247 () Bool)

(assert (=> b!4247504 m!4832247))

(declare-fun m!4832249 () Bool)

(assert (=> b!4247506 m!4832249))

(declare-fun m!4832251 () Bool)

(assert (=> b!4247506 m!4832251))

(declare-fun m!4832253 () Bool)

(assert (=> b!4247505 m!4832253))

(declare-fun b!4247508 () Bool)

(declare-fun e!2638165 () Bool)

(declare-fun tp!1303064 () Bool)

(assert (=> b!4247508 (= e!2638165 (and tp_is_empty!22723 tp!1303064))))

(assert (=> b!4247277 (= tp!1302980 e!2638165)))

(assert (= (and b!4247277 (is-Cons!47042 (t!351831 shorterInput!62))) b!4247508))

(declare-fun b!4247509 () Bool)

(declare-fun e!2638166 () Bool)

(declare-fun tp!1303065 () Bool)

(assert (=> b!4247509 (= e!2638166 (and tp_is_empty!22723 tp!1303065))))

(assert (=> b!4247282 (= tp!1302979 e!2638166)))

(assert (= (and b!4247282 (is-Cons!47042 (t!351831 suffix!1284))) b!4247509))

(declare-fun b!4247520 () Bool)

(declare-fun b_free!126175 () Bool)

(declare-fun b_next!126879 () Bool)

(assert (=> b!4247520 (= b_free!126175 (not b_next!126879))))

(declare-fun tp!1303076 () Bool)

(declare-fun b_and!336557 () Bool)

(assert (=> b!4247520 (= tp!1303076 b_and!336557)))

(declare-fun b_free!126177 () Bool)

(declare-fun b_next!126881 () Bool)

(assert (=> b!4247520 (= b_free!126177 (not b_next!126881))))

(declare-fun t!351855 () Bool)

(declare-fun tb!255867 () Bool)

(assert (=> (and b!4247520 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812)))))) t!351855) tb!255867))

(declare-fun result!312044 () Bool)

(assert (= result!312044 result!312016))

(assert (=> d!1249072 t!351855))

(declare-fun tb!255869 () Bool)

(declare-fun t!351857 () Bool)

(assert (=> (and b!4247520 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) t!351857) tb!255869))

(declare-fun result!312046 () Bool)

(assert (= result!312046 result!312022))

(assert (=> b!4247456 t!351857))

(declare-fun tp!1303075 () Bool)

(declare-fun b_and!336559 () Bool)

(assert (=> b!4247520 (= tp!1303075 (and (=> t!351855 result!312044) (=> t!351857 result!312046) b_and!336559))))

(declare-fun e!2638176 () Bool)

(assert (=> b!4247520 (= e!2638176 (and tp!1303076 tp!1303075))))

(declare-fun e!2638177 () Bool)

(declare-fun b!4247519 () Bool)

(declare-fun tp!1303074 () Bool)

(assert (=> b!4247519 (= e!2638177 (and tp!1303074 (inv!61802 (tag!8825 (h!52464 (t!351833 rules!2971)))) (inv!61805 (transformation!7961 (h!52464 (t!351833 rules!2971)))) e!2638176))))

(declare-fun b!4247518 () Bool)

(declare-fun e!2638175 () Bool)

(declare-fun tp!1303077 () Bool)

(assert (=> b!4247518 (= e!2638175 (and e!2638177 tp!1303077))))

(assert (=> b!4247278 (= tp!1302984 e!2638175)))

(assert (= b!4247519 b!4247520))

(assert (= b!4247518 b!4247519))

(assert (= (and b!4247278 (is-Cons!47044 (t!351833 rules!2971))) b!4247518))

(declare-fun m!4832255 () Bool)

(assert (=> b!4247519 m!4832255))

(declare-fun m!4832257 () Bool)

(assert (=> b!4247519 m!4832257))

(declare-fun b!4247524 () Bool)

(declare-fun e!2638179 () Bool)

(declare-fun tp!1303078 () Bool)

(declare-fun tp!1303080 () Bool)

(assert (=> b!4247524 (= e!2638179 (and tp!1303078 tp!1303080))))

(declare-fun b!4247521 () Bool)

(assert (=> b!4247521 (= e!2638179 tp_is_empty!22723)))

(declare-fun b!4247522 () Bool)

(declare-fun tp!1303081 () Bool)

(declare-fun tp!1303079 () Bool)

(assert (=> b!4247522 (= e!2638179 (and tp!1303081 tp!1303079))))

(assert (=> b!4247288 (= tp!1302981 e!2638179)))

(declare-fun b!4247523 () Bool)

(declare-fun tp!1303082 () Bool)

(assert (=> b!4247523 (= e!2638179 tp!1303082)))

(assert (= (and b!4247288 (is-ElementMatch!12866 (regex!7961 (h!52464 rules!2971)))) b!4247521))

(assert (= (and b!4247288 (is-Concat!21058 (regex!7961 (h!52464 rules!2971)))) b!4247522))

(assert (= (and b!4247288 (is-Star!12866 (regex!7961 (h!52464 rules!2971)))) b!4247523))

(assert (= (and b!4247288 (is-Union!12866 (regex!7961 (h!52464 rules!2971)))) b!4247524))

(declare-fun b_lambda!125097 () Bool)

(assert (= b_lambda!125093 (or (and b!4247283 b_free!126157) (and b!4247276 b_free!126161 (= (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))))) (and b!4247507 b_free!126173 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))))) (and b!4247520 b_free!126177 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))))) b_lambda!125097)))

(push 1)

(assert (not b!4247378))

(assert (not tb!255855))

(assert (not b!4247386))

(assert (not b_next!126875))

(assert (not d!1249090))

(assert (not b!4247504))

(assert b_and!336547)

(assert (not b!4247390))

(assert (not b!4247443))

(assert (not b!4247353))

(assert (not b!4247451))

(assert (not b!4247458))

(assert (not b_next!126863))

(assert (not d!1249060))

(assert (not b_next!126877))

(assert (not b_next!126881))

(assert b_and!336553)

(assert (not b!4247376))

(assert (not d!1249070))

(assert (not b!4247381))

(assert (not d!1249068))

(assert (not b_lambda!125091))

(assert (not b_next!126879))

(assert (not b!4247523))

(assert (not b!4247384))

(assert (not b!4247518))

(assert (not d!1249072))

(assert (not b!4247519))

(assert (not b!4247389))

(assert (not b_lambda!125097))

(assert (not b!4247416))

(assert (not b!4247382))

(assert (not b!4247355))

(assert (not d!1249080))

(assert (not b!4247491))

(assert (not b!4247473))

(assert (not b!4247466))

(assert (not bm!293911))

(assert (not b!4247430))

(assert (not b!4247388))

(assert (not b!4247456))

(assert (not d!1249052))

(assert (not d!1249056))

(assert (not b!4247412))

(assert b_and!336557)

(assert b_and!336529)

(assert b_and!336545)

(assert (not b!4247457))

(assert (not b!4247431))

(assert (not b!4247508))

(assert (not bm!293910))

(assert b_and!336559)

(assert (not b!4247465))

(assert (not b!4247391))

(assert (not b!4247385))

(assert (not b!4247474))

(assert (not b!4247357))

(assert (not b!4247387))

(assert (not b_next!126861))

(assert (not b!4247379))

(assert (not b_next!126859))

(assert (not b!4247380))

(assert (not b!4247492))

(assert (not d!1249076))

(assert (not b!4247505))

(assert (not b_next!126865))

(assert (not b!4247490))

(assert (not b!4247506))

(assert b_and!336525)

(assert (not b!4247522))

(assert (not b!4247401))

(assert (not d!1249084))

(assert (not b!4247414))

(assert (not b!4247399))

(assert (not b!4247377))

(assert (not b!4247524))

(assert (not tb!255851))

(assert (not b!4247393))

(assert tp_is_empty!22723)

(assert (not b!4247509))

(assert b_and!336555)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126863))

(assert b_and!336553)

(assert (not b_next!126879))

(assert b_and!336545)

(assert b_and!336559)

(assert (not b_next!126861))

(assert (not b_next!126859))

(assert (not b_next!126865))

(assert b_and!336525)

(assert (not b_next!126875))

(assert b_and!336547)

(assert b_and!336555)

(assert (not b_next!126877))

(assert (not b_next!126881))

(assert b_and!336557)

(assert b_and!336529)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1249120 () Bool)

(assert (=> d!1249120 true))

(declare-fun lt!1507899 () Bool)

(assert (=> d!1249120 (= lt!1507899 (rulesValidInductive!2991 thiss!21641 rules!2971))))

(declare-fun lambda!130208 () Int)

(declare-fun forall!8541 (List!47168 Int) Bool)

(assert (=> d!1249120 (= lt!1507899 (forall!8541 rules!2971 lambda!130208))))

(assert (=> d!1249120 (= (rulesValid!3090 thiss!21641 rules!2971) lt!1507899)))

(declare-fun bs!598526 () Bool)

(assert (= bs!598526 d!1249120))

(assert (=> bs!598526 m!4832137))

(declare-fun m!4832379 () Bool)

(assert (=> bs!598526 m!4832379))

(assert (=> d!1249084 d!1249120))

(declare-fun d!1249122 () Bool)

(assert (=> d!1249122 true))

(declare-fun order!24725 () Int)

(declare-fun lambda!130211 () Int)

(declare-fun order!24723 () Int)

(declare-fun dynLambda!20151 (Int Int) Int)

(declare-fun dynLambda!20152 (Int Int) Int)

(assert (=> d!1249122 (< (dynLambda!20151 order!24723 (toValue!10725 (transformation!7961 (h!52464 rules!2971)))) (dynLambda!20152 order!24725 lambda!130211))))

(declare-fun Forall2!1200 (Int) Bool)

(assert (=> d!1249122 (= (equivClasses!3367 (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toValue!10725 (transformation!7961 (h!52464 rules!2971)))) (Forall2!1200 lambda!130211))))

(declare-fun bs!598527 () Bool)

(assert (= bs!598527 d!1249122))

(declare-fun m!4832381 () Bool)

(assert (=> bs!598527 m!4832381))

(assert (=> b!4247466 d!1249122))

(declare-fun b!4247661 () Bool)

(declare-fun e!2638262 () Option!10095)

(declare-fun lt!1507904 () Option!10095)

(declare-fun lt!1507903 () Option!10095)

(assert (=> b!4247661 (= e!2638262 (ite (and (is-None!10094 lt!1507904) (is-None!10094 lt!1507903)) None!10094 (ite (is-None!10094 lt!1507903) lt!1507904 (ite (is-None!10094 lt!1507904) lt!1507903 (ite (>= (size!34442 (_1!25435 (v!41048 lt!1507904))) (size!34442 (_1!25435 (v!41048 lt!1507903)))) lt!1507904 lt!1507903)))))))

(declare-fun call!293921 () Option!10095)

(assert (=> b!4247661 (= lt!1507904 call!293921)))

(assert (=> b!4247661 (= lt!1507903 (maxPrefix!4512 thiss!21641 (t!351833 (t!351833 rules!2971)) longerInput!62))))

(declare-fun b!4247662 () Bool)

(declare-fun res!1746248 () Bool)

(declare-fun e!2638263 () Bool)

(assert (=> b!4247662 (=> (not res!1746248) (not e!2638263))))

(declare-fun lt!1507900 () Option!10095)

(assert (=> b!4247662 (= res!1746248 (< (size!34443 (_2!25435 (get!15278 lt!1507900))) (size!34443 longerInput!62)))))

(declare-fun b!4247663 () Bool)

(assert (=> b!4247663 (= e!2638263 (contains!9748 (t!351833 rules!2971) (rule!11091 (_1!25435 (get!15278 lt!1507900)))))))

(declare-fun b!4247664 () Bool)

(declare-fun res!1746252 () Bool)

(assert (=> b!4247664 (=> (not res!1746252) (not e!2638263))))

(assert (=> b!4247664 (= res!1746252 (= (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507900)))) (originalCharacters!8305 (_1!25435 (get!15278 lt!1507900)))))))

(declare-fun b!4247665 () Bool)

(declare-fun res!1746247 () Bool)

(assert (=> b!4247665 (=> (not res!1746247) (not e!2638263))))

(assert (=> b!4247665 (= res!1746247 (= (value!247426 (_1!25435 (get!15278 lt!1507900))) (apply!10767 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507900)))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507900)))))))))

(declare-fun b!4247666 () Bool)

(declare-fun res!1746249 () Bool)

(assert (=> b!4247666 (=> (not res!1746249) (not e!2638263))))

(assert (=> b!4247666 (= res!1746249 (matchR!6462 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507900)))) (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507900))))))))

(declare-fun b!4247667 () Bool)

(declare-fun res!1746246 () Bool)

(assert (=> b!4247667 (=> (not res!1746246) (not e!2638263))))

(assert (=> b!4247667 (= res!1746246 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507900)))) (_2!25435 (get!15278 lt!1507900))) longerInput!62))))

(declare-fun d!1249124 () Bool)

(declare-fun e!2638261 () Bool)

(assert (=> d!1249124 e!2638261))

(declare-fun res!1746250 () Bool)

(assert (=> d!1249124 (=> res!1746250 e!2638261)))

(assert (=> d!1249124 (= res!1746250 (isEmpty!27831 lt!1507900))))

(assert (=> d!1249124 (= lt!1507900 e!2638262)))

(declare-fun c!721386 () Bool)

(assert (=> d!1249124 (= c!721386 (and (is-Cons!47044 (t!351833 rules!2971)) (is-Nil!47044 (t!351833 (t!351833 rules!2971)))))))

(declare-fun lt!1507902 () Unit!66043)

(declare-fun lt!1507901 () Unit!66043)

(assert (=> d!1249124 (= lt!1507902 lt!1507901)))

(assert (=> d!1249124 (isPrefix!4740 longerInput!62 longerInput!62)))

(assert (=> d!1249124 (= lt!1507901 (lemmaIsPrefixRefl!3137 longerInput!62 longerInput!62))))

(assert (=> d!1249124 (rulesValidInductive!2991 thiss!21641 (t!351833 rules!2971))))

(assert (=> d!1249124 (= (maxPrefix!4512 thiss!21641 (t!351833 rules!2971) longerInput!62) lt!1507900)))

(declare-fun b!4247668 () Bool)

(assert (=> b!4247668 (= e!2638262 call!293921)))

(declare-fun b!4247669 () Bool)

(assert (=> b!4247669 (= e!2638261 e!2638263)))

(declare-fun res!1746251 () Bool)

(assert (=> b!4247669 (=> (not res!1746251) (not e!2638263))))

(assert (=> b!4247669 (= res!1746251 (isDefined!7455 lt!1507900))))

(declare-fun bm!293916 () Bool)

(assert (=> bm!293916 (= call!293921 (maxPrefixOneRule!3465 thiss!21641 (h!52464 (t!351833 rules!2971)) longerInput!62))))

(assert (= (and d!1249124 c!721386) b!4247668))

(assert (= (and d!1249124 (not c!721386)) b!4247661))

(assert (= (or b!4247668 b!4247661) bm!293916))

(assert (= (and d!1249124 (not res!1746250)) b!4247669))

(assert (= (and b!4247669 res!1746251) b!4247664))

(assert (= (and b!4247664 res!1746252) b!4247662))

(assert (= (and b!4247662 res!1746248) b!4247667))

(assert (= (and b!4247667 res!1746246) b!4247665))

(assert (= (and b!4247665 res!1746247) b!4247666))

(assert (= (and b!4247666 res!1746249) b!4247663))

(declare-fun m!4832383 () Bool)

(assert (=> b!4247662 m!4832383))

(declare-fun m!4832385 () Bool)

(assert (=> b!4247662 m!4832385))

(assert (=> b!4247662 m!4832035))

(assert (=> b!4247666 m!4832383))

(declare-fun m!4832387 () Bool)

(assert (=> b!4247666 m!4832387))

(assert (=> b!4247666 m!4832387))

(declare-fun m!4832389 () Bool)

(assert (=> b!4247666 m!4832389))

(assert (=> b!4247666 m!4832389))

(declare-fun m!4832391 () Bool)

(assert (=> b!4247666 m!4832391))

(declare-fun m!4832393 () Bool)

(assert (=> bm!293916 m!4832393))

(assert (=> b!4247663 m!4832383))

(declare-fun m!4832395 () Bool)

(assert (=> b!4247663 m!4832395))

(assert (=> b!4247664 m!4832383))

(assert (=> b!4247664 m!4832387))

(assert (=> b!4247664 m!4832387))

(assert (=> b!4247664 m!4832389))

(assert (=> b!4247665 m!4832383))

(declare-fun m!4832397 () Bool)

(assert (=> b!4247665 m!4832397))

(assert (=> b!4247665 m!4832397))

(declare-fun m!4832399 () Bool)

(assert (=> b!4247665 m!4832399))

(assert (=> b!4247667 m!4832383))

(assert (=> b!4247667 m!4832387))

(assert (=> b!4247667 m!4832387))

(assert (=> b!4247667 m!4832389))

(assert (=> b!4247667 m!4832389))

(declare-fun m!4832401 () Bool)

(assert (=> b!4247667 m!4832401))

(declare-fun m!4832403 () Bool)

(assert (=> b!4247669 m!4832403))

(declare-fun m!4832405 () Bool)

(assert (=> b!4247661 m!4832405))

(declare-fun m!4832407 () Bool)

(assert (=> d!1249124 m!4832407))

(assert (=> d!1249124 m!4832165))

(assert (=> d!1249124 m!4832167))

(declare-fun m!4832409 () Bool)

(assert (=> d!1249124 m!4832409))

(assert (=> b!4247385 d!1249124))

(declare-fun d!1249126 () Bool)

(assert (=> d!1249126 (= (inv!61802 (tag!8825 (h!52464 (t!351833 rules!2971)))) (= (mod (str.len (value!247425 (tag!8825 (h!52464 (t!351833 rules!2971))))) 2) 0))))

(assert (=> b!4247519 d!1249126))

(declare-fun d!1249128 () Bool)

(declare-fun res!1746254 () Bool)

(declare-fun e!2638264 () Bool)

(assert (=> d!1249128 (=> (not res!1746254) (not e!2638264))))

(assert (=> d!1249128 (= res!1746254 (semiInverseModEq!3468 (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toValue!10725 (transformation!7961 (h!52464 (t!351833 rules!2971))))))))

(assert (=> d!1249128 (= (inv!61805 (transformation!7961 (h!52464 (t!351833 rules!2971)))) e!2638264)))

(declare-fun b!4247670 () Bool)

(assert (=> b!4247670 (= e!2638264 (equivClasses!3367 (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toValue!10725 (transformation!7961 (h!52464 (t!351833 rules!2971))))))))

(assert (= (and d!1249128 res!1746254) b!4247670))

(declare-fun m!4832411 () Bool)

(assert (=> d!1249128 m!4832411))

(declare-fun m!4832413 () Bool)

(assert (=> b!4247670 m!4832413))

(assert (=> b!4247519 d!1249128))

(declare-fun b!4247681 () Bool)

(declare-fun e!2638270 () List!47166)

(declare-fun list!16949 (IArray!28349) List!47166)

(assert (=> b!4247681 (= e!2638270 (list!16949 (xs!17478 (c!721335 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))))))))

(declare-fun b!4247682 () Bool)

(assert (=> b!4247682 (= e!2638270 (++!11972 (list!16947 (left!34907 (c!721335 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))))) (list!16947 (right!35237 (c!721335 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))))

(declare-fun b!4247679 () Bool)

(declare-fun e!2638269 () List!47166)

(assert (=> b!4247679 (= e!2638269 Nil!47042)))

(declare-fun b!4247680 () Bool)

(assert (=> b!4247680 (= e!2638269 e!2638270)))

(declare-fun c!721392 () Bool)

(assert (=> b!4247680 (= c!721392 (is-Leaf!21912 (c!721335 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))

(declare-fun d!1249130 () Bool)

(declare-fun c!721391 () Bool)

(assert (=> d!1249130 (= c!721391 (is-Empty!14172 (c!721335 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))

(assert (=> d!1249130 (= (list!16947 (c!721335 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) e!2638269)))

(assert (= (and d!1249130 c!721391) b!4247679))

(assert (= (and d!1249130 (not c!721391)) b!4247680))

(assert (= (and b!4247680 c!721392) b!4247681))

(assert (= (and b!4247680 (not c!721392)) b!4247682))

(declare-fun m!4832415 () Bool)

(assert (=> b!4247681 m!4832415))

(declare-fun m!4832417 () Bool)

(assert (=> b!4247682 m!4832417))

(declare-fun m!4832419 () Bool)

(assert (=> b!4247682 m!4832419))

(assert (=> b!4247682 m!4832417))

(assert (=> b!4247682 m!4832419))

(declare-fun m!4832421 () Bool)

(assert (=> b!4247682 m!4832421))

(assert (=> d!1249070 d!1249130))

(declare-fun d!1249132 () Bool)

(declare-fun lt!1507907 () Bool)

(declare-fun content!7393 (List!47168) (Set Rule!15722))

(assert (=> d!1249132 (= lt!1507907 (set.member (rule!11091 (_1!25435 (get!15278 lt!1507843))) (content!7393 rules!2971)))))

(declare-fun e!2638275 () Bool)

(assert (=> d!1249132 (= lt!1507907 e!2638275)))

(declare-fun res!1746260 () Bool)

(assert (=> d!1249132 (=> (not res!1746260) (not e!2638275))))

(assert (=> d!1249132 (= res!1746260 (is-Cons!47044 rules!2971))))

(assert (=> d!1249132 (= (contains!9748 rules!2971 (rule!11091 (_1!25435 (get!15278 lt!1507843)))) lt!1507907)))

(declare-fun b!4247687 () Bool)

(declare-fun e!2638276 () Bool)

(assert (=> b!4247687 (= e!2638275 e!2638276)))

(declare-fun res!1746261 () Bool)

(assert (=> b!4247687 (=> res!1746261 e!2638276)))

(assert (=> b!4247687 (= res!1746261 (= (h!52464 rules!2971) (rule!11091 (_1!25435 (get!15278 lt!1507843)))))))

(declare-fun b!4247688 () Bool)

(assert (=> b!4247688 (= e!2638276 (contains!9748 (t!351833 rules!2971) (rule!11091 (_1!25435 (get!15278 lt!1507843)))))))

(assert (= (and d!1249132 res!1746260) b!4247687))

(assert (= (and b!4247687 (not res!1746261)) b!4247688))

(declare-fun m!4832423 () Bool)

(assert (=> d!1249132 m!4832423))

(declare-fun m!4832425 () Bool)

(assert (=> d!1249132 m!4832425))

(declare-fun m!4832427 () Bool)

(assert (=> b!4247688 m!4832427))

(assert (=> b!4247387 d!1249132))

(declare-fun d!1249134 () Bool)

(assert (=> d!1249134 (= (get!15278 lt!1507843) (v!41048 lt!1507843))))

(assert (=> b!4247387 d!1249134))

(assert (=> b!4247389 d!1249134))

(declare-fun d!1249136 () Bool)

(declare-fun dynLambda!20153 (Int BalanceConc!27938) TokenValue!8191)

(assert (=> d!1249136 (= (apply!10767 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507843))))) (dynLambda!20153 (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507843))))))))

(declare-fun b_lambda!125103 () Bool)

(assert (=> (not b_lambda!125103) (not d!1249136)))

(declare-fun tb!255883 () Bool)

(declare-fun t!351874 () Bool)

(assert (=> (and b!4247283 (= (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351874) tb!255883))

(declare-fun result!312068 () Bool)

(assert (=> tb!255883 (= result!312068 (inv!21 (dynLambda!20153 (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507843)))))))))

(declare-fun m!4832429 () Bool)

(assert (=> tb!255883 m!4832429))

(assert (=> d!1249136 t!351874))

(declare-fun b_and!336573 () Bool)

(assert (= b_and!336525 (and (=> t!351874 result!312068) b_and!336573)))

(declare-fun t!351876 () Bool)

(declare-fun tb!255885 () Bool)

(assert (=> (and b!4247276 (= (toValue!10725 (transformation!7961 (h!52464 rules!2971))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351876) tb!255885))

(declare-fun result!312072 () Bool)

(assert (= result!312072 result!312068))

(assert (=> d!1249136 t!351876))

(declare-fun b_and!336575 () Bool)

(assert (= b_and!336529 (and (=> t!351876 result!312072) b_and!336575)))

(declare-fun tb!255887 () Bool)

(declare-fun t!351878 () Bool)

(assert (=> (and b!4247507 (= (toValue!10725 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351878) tb!255887))

(declare-fun result!312074 () Bool)

(assert (= result!312074 result!312068))

(assert (=> d!1249136 t!351878))

(declare-fun b_and!336577 () Bool)

(assert (= b_and!336553 (and (=> t!351878 result!312074) b_and!336577)))

(declare-fun tb!255889 () Bool)

(declare-fun t!351880 () Bool)

(assert (=> (and b!4247520 (= (toValue!10725 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351880) tb!255889))

(declare-fun result!312076 () Bool)

(assert (= result!312076 result!312068))

(assert (=> d!1249136 t!351880))

(declare-fun b_and!336579 () Bool)

(assert (= b_and!336557 (and (=> t!351880 result!312076) b_and!336579)))

(assert (=> d!1249136 m!4832153))

(declare-fun m!4832431 () Bool)

(assert (=> d!1249136 m!4832431))

(assert (=> b!4247389 d!1249136))

(declare-fun d!1249138 () Bool)

(declare-fun fromListB!2651 (List!47166) BalanceConc!27938)

(assert (=> d!1249138 (= (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507843)))) (fromListB!2651 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507843)))))))

(declare-fun bs!598528 () Bool)

(assert (= bs!598528 d!1249138))

(declare-fun m!4832433 () Bool)

(assert (=> bs!598528 m!4832433))

(assert (=> b!4247389 d!1249138))

(declare-fun b!4247691 () Bool)

(declare-fun e!2638281 () Option!10095)

(declare-fun lt!1507912 () Option!10095)

(declare-fun lt!1507911 () Option!10095)

(assert (=> b!4247691 (= e!2638281 (ite (and (is-None!10094 lt!1507912) (is-None!10094 lt!1507911)) None!10094 (ite (is-None!10094 lt!1507911) lt!1507912 (ite (is-None!10094 lt!1507912) lt!1507911 (ite (>= (size!34442 (_1!25435 (v!41048 lt!1507912))) (size!34442 (_1!25435 (v!41048 lt!1507911)))) lt!1507912 lt!1507911)))))))

(declare-fun call!293922 () Option!10095)

(assert (=> b!4247691 (= lt!1507912 call!293922)))

(assert (=> b!4247691 (= lt!1507911 (maxPrefix!4512 thiss!21641 (t!351833 (t!351833 rules!2971)) shorterInput!62))))

(declare-fun b!4247692 () Bool)

(declare-fun res!1746264 () Bool)

(declare-fun e!2638282 () Bool)

(assert (=> b!4247692 (=> (not res!1746264) (not e!2638282))))

(declare-fun lt!1507908 () Option!10095)

(assert (=> b!4247692 (= res!1746264 (< (size!34443 (_2!25435 (get!15278 lt!1507908))) (size!34443 shorterInput!62)))))

(declare-fun b!4247693 () Bool)

(assert (=> b!4247693 (= e!2638282 (contains!9748 (t!351833 rules!2971) (rule!11091 (_1!25435 (get!15278 lt!1507908)))))))

(declare-fun b!4247694 () Bool)

(declare-fun res!1746268 () Bool)

(assert (=> b!4247694 (=> (not res!1746268) (not e!2638282))))

(assert (=> b!4247694 (= res!1746268 (= (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507908)))) (originalCharacters!8305 (_1!25435 (get!15278 lt!1507908)))))))

(declare-fun b!4247695 () Bool)

(declare-fun res!1746263 () Bool)

(assert (=> b!4247695 (=> (not res!1746263) (not e!2638282))))

(assert (=> b!4247695 (= res!1746263 (= (value!247426 (_1!25435 (get!15278 lt!1507908))) (apply!10767 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507908)))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507908)))))))))

(declare-fun b!4247696 () Bool)

(declare-fun res!1746265 () Bool)

(assert (=> b!4247696 (=> (not res!1746265) (not e!2638282))))

(assert (=> b!4247696 (= res!1746265 (matchR!6462 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507908)))) (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507908))))))))

(declare-fun b!4247697 () Bool)

(declare-fun res!1746262 () Bool)

(assert (=> b!4247697 (=> (not res!1746262) (not e!2638282))))

(assert (=> b!4247697 (= res!1746262 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507908)))) (_2!25435 (get!15278 lt!1507908))) shorterInput!62))))

(declare-fun d!1249140 () Bool)

(declare-fun e!2638280 () Bool)

(assert (=> d!1249140 e!2638280))

(declare-fun res!1746266 () Bool)

(assert (=> d!1249140 (=> res!1746266 e!2638280)))

(assert (=> d!1249140 (= res!1746266 (isEmpty!27831 lt!1507908))))

(assert (=> d!1249140 (= lt!1507908 e!2638281)))

(declare-fun c!721393 () Bool)

(assert (=> d!1249140 (= c!721393 (and (is-Cons!47044 (t!351833 rules!2971)) (is-Nil!47044 (t!351833 (t!351833 rules!2971)))))))

(declare-fun lt!1507910 () Unit!66043)

(declare-fun lt!1507909 () Unit!66043)

(assert (=> d!1249140 (= lt!1507910 lt!1507909)))

(assert (=> d!1249140 (isPrefix!4740 shorterInput!62 shorterInput!62)))

(assert (=> d!1249140 (= lt!1507909 (lemmaIsPrefixRefl!3137 shorterInput!62 shorterInput!62))))

(assert (=> d!1249140 (rulesValidInductive!2991 thiss!21641 (t!351833 rules!2971))))

(assert (=> d!1249140 (= (maxPrefix!4512 thiss!21641 (t!351833 rules!2971) shorterInput!62) lt!1507908)))

(declare-fun b!4247698 () Bool)

(assert (=> b!4247698 (= e!2638281 call!293922)))

(declare-fun b!4247699 () Bool)

(assert (=> b!4247699 (= e!2638280 e!2638282)))

(declare-fun res!1746267 () Bool)

(assert (=> b!4247699 (=> (not res!1746267) (not e!2638282))))

(assert (=> b!4247699 (= res!1746267 (isDefined!7455 lt!1507908))))

(declare-fun bm!293917 () Bool)

(assert (=> bm!293917 (= call!293922 (maxPrefixOneRule!3465 thiss!21641 (h!52464 (t!351833 rules!2971)) shorterInput!62))))

(assert (= (and d!1249140 c!721393) b!4247698))

(assert (= (and d!1249140 (not c!721393)) b!4247691))

(assert (= (or b!4247698 b!4247691) bm!293917))

(assert (= (and d!1249140 (not res!1746266)) b!4247699))

(assert (= (and b!4247699 res!1746267) b!4247694))

(assert (= (and b!4247694 res!1746268) b!4247692))

(assert (= (and b!4247692 res!1746264) b!4247697))

(assert (= (and b!4247697 res!1746262) b!4247695))

(assert (= (and b!4247695 res!1746263) b!4247696))

(assert (= (and b!4247696 res!1746265) b!4247693))

(declare-fun m!4832435 () Bool)

(assert (=> b!4247692 m!4832435))

(declare-fun m!4832437 () Bool)

(assert (=> b!4247692 m!4832437))

(assert (=> b!4247692 m!4832037))

(assert (=> b!4247696 m!4832435))

(declare-fun m!4832439 () Bool)

(assert (=> b!4247696 m!4832439))

(assert (=> b!4247696 m!4832439))

(declare-fun m!4832441 () Bool)

(assert (=> b!4247696 m!4832441))

(assert (=> b!4247696 m!4832441))

(declare-fun m!4832443 () Bool)

(assert (=> b!4247696 m!4832443))

(declare-fun m!4832445 () Bool)

(assert (=> bm!293917 m!4832445))

(assert (=> b!4247693 m!4832435))

(declare-fun m!4832447 () Bool)

(assert (=> b!4247693 m!4832447))

(assert (=> b!4247694 m!4832435))

(assert (=> b!4247694 m!4832439))

(assert (=> b!4247694 m!4832439))

(assert (=> b!4247694 m!4832441))

(assert (=> b!4247695 m!4832435))

(declare-fun m!4832449 () Bool)

(assert (=> b!4247695 m!4832449))

(assert (=> b!4247695 m!4832449))

(declare-fun m!4832451 () Bool)

(assert (=> b!4247695 m!4832451))

(assert (=> b!4247697 m!4832435))

(assert (=> b!4247697 m!4832439))

(assert (=> b!4247697 m!4832439))

(assert (=> b!4247697 m!4832441))

(assert (=> b!4247697 m!4832441))

(declare-fun m!4832453 () Bool)

(assert (=> b!4247697 m!4832453))

(declare-fun m!4832455 () Bool)

(assert (=> b!4247699 m!4832455))

(declare-fun m!4832457 () Bool)

(assert (=> b!4247691 m!4832457))

(declare-fun m!4832459 () Bool)

(assert (=> d!1249140 m!4832459))

(assert (=> d!1249140 m!4832133))

(assert (=> d!1249140 m!4832135))

(assert (=> d!1249140 m!4832409))

(assert (=> b!4247376 d!1249140))

(declare-fun d!1249142 () Bool)

(assert (=> d!1249142 (= (list!16945 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))) (list!16947 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))))))

(declare-fun bs!598529 () Bool)

(assert (= bs!598529 d!1249142))

(declare-fun m!4832461 () Bool)

(assert (=> bs!598529 m!4832461))

(assert (=> b!4247456 d!1249142))

(declare-fun d!1249144 () Bool)

(declare-fun lt!1507913 () Bool)

(assert (=> d!1249144 (= lt!1507913 (set.member (rule!11091 (_1!25435 (get!15278 lt!1507838))) (content!7393 rules!2971)))))

(declare-fun e!2638283 () Bool)

(assert (=> d!1249144 (= lt!1507913 e!2638283)))

(declare-fun res!1746270 () Bool)

(assert (=> d!1249144 (=> (not res!1746270) (not e!2638283))))

(assert (=> d!1249144 (= res!1746270 (is-Cons!47044 rules!2971))))

(assert (=> d!1249144 (= (contains!9748 rules!2971 (rule!11091 (_1!25435 (get!15278 lt!1507838)))) lt!1507913)))

(declare-fun b!4247700 () Bool)

(declare-fun e!2638284 () Bool)

(assert (=> b!4247700 (= e!2638283 e!2638284)))

(declare-fun res!1746271 () Bool)

(assert (=> b!4247700 (=> res!1746271 e!2638284)))

(assert (=> b!4247700 (= res!1746271 (= (h!52464 rules!2971) (rule!11091 (_1!25435 (get!15278 lt!1507838)))))))

(declare-fun b!4247701 () Bool)

(assert (=> b!4247701 (= e!2638284 (contains!9748 (t!351833 rules!2971) (rule!11091 (_1!25435 (get!15278 lt!1507838)))))))

(assert (= (and d!1249144 res!1746270) b!4247700))

(assert (= (and b!4247700 (not res!1746271)) b!4247701))

(assert (=> d!1249144 m!4832423))

(declare-fun m!4832463 () Bool)

(assert (=> d!1249144 m!4832463))

(declare-fun m!4832465 () Bool)

(assert (=> b!4247701 m!4832465))

(assert (=> b!4247378 d!1249144))

(declare-fun d!1249146 () Bool)

(assert (=> d!1249146 (= (get!15278 lt!1507838) (v!41048 lt!1507838))))

(assert (=> b!4247378 d!1249146))

(declare-fun b!4247704 () Bool)

(declare-fun res!1746273 () Bool)

(declare-fun e!2638286 () Bool)

(assert (=> b!4247704 (=> (not res!1746273) (not e!2638286))))

(declare-fun lt!1507914 () List!47166)

(assert (=> b!4247704 (= res!1746273 (= (size!34443 lt!1507914) (+ (size!34443 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))) (size!34443 (_2!25435 (get!15278 lt!1507843))))))))

(declare-fun d!1249148 () Bool)

(assert (=> d!1249148 e!2638286))

(declare-fun res!1746272 () Bool)

(assert (=> d!1249148 (=> (not res!1746272) (not e!2638286))))

(assert (=> d!1249148 (= res!1746272 (= (content!7391 lt!1507914) (set.union (content!7391 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))) (content!7391 (_2!25435 (get!15278 lt!1507843))))))))

(declare-fun e!2638285 () List!47166)

(assert (=> d!1249148 (= lt!1507914 e!2638285)))

(declare-fun c!721394 () Bool)

(assert (=> d!1249148 (= c!721394 (is-Nil!47042 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))))))

(assert (=> d!1249148 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843)))) (_2!25435 (get!15278 lt!1507843))) lt!1507914)))

(declare-fun b!4247703 () Bool)

(assert (=> b!4247703 (= e!2638285 (Cons!47042 (h!52462 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))) (++!11972 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))) (_2!25435 (get!15278 lt!1507843)))))))

(declare-fun b!4247702 () Bool)

(assert (=> b!4247702 (= e!2638285 (_2!25435 (get!15278 lt!1507843)))))

(declare-fun b!4247705 () Bool)

(assert (=> b!4247705 (= e!2638286 (or (not (= (_2!25435 (get!15278 lt!1507843)) Nil!47042)) (= lt!1507914 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843)))))))))

(assert (= (and d!1249148 c!721394) b!4247702))

(assert (= (and d!1249148 (not c!721394)) b!4247703))

(assert (= (and d!1249148 res!1746272) b!4247704))

(assert (= (and b!4247704 res!1746273) b!4247705))

(declare-fun m!4832467 () Bool)

(assert (=> b!4247704 m!4832467))

(assert (=> b!4247704 m!4832145))

(declare-fun m!4832469 () Bool)

(assert (=> b!4247704 m!4832469))

(assert (=> b!4247704 m!4832141))

(declare-fun m!4832471 () Bool)

(assert (=> d!1249148 m!4832471))

(assert (=> d!1249148 m!4832145))

(declare-fun m!4832473 () Bool)

(assert (=> d!1249148 m!4832473))

(declare-fun m!4832475 () Bool)

(assert (=> d!1249148 m!4832475))

(declare-fun m!4832477 () Bool)

(assert (=> b!4247703 m!4832477))

(assert (=> b!4247391 d!1249148))

(declare-fun d!1249150 () Bool)

(assert (=> d!1249150 (= (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843)))) (list!16947 (c!721335 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))))))

(declare-fun bs!598530 () Bool)

(assert (= bs!598530 d!1249150))

(declare-fun m!4832479 () Bool)

(assert (=> bs!598530 m!4832479))

(assert (=> b!4247391 d!1249150))

(declare-fun d!1249152 () Bool)

(declare-fun lt!1507915 () BalanceConc!27938)

(assert (=> d!1249152 (= (list!16945 lt!1507915) (originalCharacters!8305 (_1!25435 (get!15278 lt!1507843))))))

(assert (=> d!1249152 (= lt!1507915 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))) (value!247426 (_1!25435 (get!15278 lt!1507843)))))))

(assert (=> d!1249152 (= (charsOf!5303 (_1!25435 (get!15278 lt!1507843))) lt!1507915)))

(declare-fun b_lambda!125105 () Bool)

(assert (=> (not b_lambda!125105) (not d!1249152)))

(declare-fun t!351882 () Bool)

(declare-fun tb!255891 () Bool)

(assert (=> (and b!4247283 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351882) tb!255891))

(declare-fun b!4247706 () Bool)

(declare-fun e!2638287 () Bool)

(declare-fun tp!1303137 () Bool)

(assert (=> b!4247706 (= e!2638287 (and (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))) (value!247426 (_1!25435 (get!15278 lt!1507843)))))) tp!1303137))))

(declare-fun result!312078 () Bool)

(assert (=> tb!255891 (= result!312078 (and (inv!61810 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))) (value!247426 (_1!25435 (get!15278 lt!1507843))))) e!2638287))))

(assert (= tb!255891 b!4247706))

(declare-fun m!4832481 () Bool)

(assert (=> b!4247706 m!4832481))

(declare-fun m!4832483 () Bool)

(assert (=> tb!255891 m!4832483))

(assert (=> d!1249152 t!351882))

(declare-fun b_and!336581 () Bool)

(assert (= b_and!336545 (and (=> t!351882 result!312078) b_and!336581)))

(declare-fun tb!255893 () Bool)

(declare-fun t!351884 () Bool)

(assert (=> (and b!4247276 (= (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351884) tb!255893))

(declare-fun result!312080 () Bool)

(assert (= result!312080 result!312078))

(assert (=> d!1249152 t!351884))

(declare-fun b_and!336583 () Bool)

(assert (= b_and!336547 (and (=> t!351884 result!312080) b_and!336583)))

(declare-fun t!351886 () Bool)

(declare-fun tb!255895 () Bool)

(assert (=> (and b!4247507 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351886) tb!255895))

(declare-fun result!312082 () Bool)

(assert (= result!312082 result!312078))

(assert (=> d!1249152 t!351886))

(declare-fun b_and!336585 () Bool)

(assert (= b_and!336555 (and (=> t!351886 result!312082) b_and!336585)))

(declare-fun tb!255897 () Bool)

(declare-fun t!351888 () Bool)

(assert (=> (and b!4247520 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351888) tb!255897))

(declare-fun result!312084 () Bool)

(assert (= result!312084 result!312078))

(assert (=> d!1249152 t!351888))

(declare-fun b_and!336587 () Bool)

(assert (= b_and!336559 (and (=> t!351888 result!312084) b_and!336587)))

(declare-fun m!4832485 () Bool)

(assert (=> d!1249152 m!4832485))

(declare-fun m!4832487 () Bool)

(assert (=> d!1249152 m!4832487))

(assert (=> b!4247391 d!1249152))

(assert (=> b!4247391 d!1249134))

(declare-fun d!1249154 () Bool)

(assert (=> d!1249154 (= (isDefined!7455 lt!1507843) (not (isEmpty!27831 lt!1507843)))))

(declare-fun bs!598531 () Bool)

(assert (= bs!598531 d!1249154))

(assert (=> bs!598531 m!4832163))

(assert (=> b!4247393 d!1249154))

(assert (=> b!4247380 d!1249146))

(declare-fun d!1249156 () Bool)

(assert (=> d!1249156 (= (apply!10767 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507838))))) (dynLambda!20153 (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507838))))))))

(declare-fun b_lambda!125107 () Bool)

(assert (=> (not b_lambda!125107) (not d!1249156)))

(declare-fun tb!255899 () Bool)

(declare-fun t!351890 () Bool)

(assert (=> (and b!4247283 (= (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351890) tb!255899))

(declare-fun result!312086 () Bool)

(assert (=> tb!255899 (= result!312086 (inv!21 (dynLambda!20153 (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507838)))))))))

(declare-fun m!4832489 () Bool)

(assert (=> tb!255899 m!4832489))

(assert (=> d!1249156 t!351890))

(declare-fun b_and!336589 () Bool)

(assert (= b_and!336573 (and (=> t!351890 result!312086) b_and!336589)))

(declare-fun t!351892 () Bool)

(declare-fun tb!255901 () Bool)

(assert (=> (and b!4247276 (= (toValue!10725 (transformation!7961 (h!52464 rules!2971))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351892) tb!255901))

(declare-fun result!312088 () Bool)

(assert (= result!312088 result!312086))

(assert (=> d!1249156 t!351892))

(declare-fun b_and!336591 () Bool)

(assert (= b_and!336575 (and (=> t!351892 result!312088) b_and!336591)))

(declare-fun tb!255903 () Bool)

(declare-fun t!351894 () Bool)

(assert (=> (and b!4247507 (= (toValue!10725 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351894) tb!255903))

(declare-fun result!312090 () Bool)

(assert (= result!312090 result!312086))

(assert (=> d!1249156 t!351894))

(declare-fun b_and!336593 () Bool)

(assert (= b_and!336577 (and (=> t!351894 result!312090) b_and!336593)))

(declare-fun t!351896 () Bool)

(declare-fun tb!255905 () Bool)

(assert (=> (and b!4247520 (= (toValue!10725 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351896) tb!255905))

(declare-fun result!312092 () Bool)

(assert (= result!312092 result!312086))

(assert (=> d!1249156 t!351896))

(declare-fun b_and!336595 () Bool)

(assert (= b_and!336579 (and (=> t!351896 result!312092) b_and!336595)))

(assert (=> d!1249156 m!4832121))

(declare-fun m!4832491 () Bool)

(assert (=> d!1249156 m!4832491))

(assert (=> b!4247380 d!1249156))

(declare-fun d!1249158 () Bool)

(assert (=> d!1249158 (= (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507838)))) (fromListB!2651 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507838)))))))

(declare-fun bs!598532 () Bool)

(assert (= bs!598532 d!1249158))

(declare-fun m!4832493 () Bool)

(assert (=> bs!598532 m!4832493))

(assert (=> b!4247380 d!1249158))

(declare-fun b!4247707 () Bool)

(declare-fun e!2638290 () Bool)

(assert (=> b!4247707 (= e!2638290 (inv!17 (value!247426 (h!52463 (t!351832 tokens!592)))))))

(declare-fun b!4247708 () Bool)

(declare-fun e!2638289 () Bool)

(assert (=> b!4247708 (= e!2638289 e!2638290)))

(declare-fun c!721396 () Bool)

(assert (=> b!4247708 (= c!721396 (is-IntegerValue!24574 (value!247426 (h!52463 (t!351832 tokens!592)))))))

(declare-fun d!1249160 () Bool)

(declare-fun c!721395 () Bool)

(assert (=> d!1249160 (= c!721395 (is-IntegerValue!24573 (value!247426 (h!52463 (t!351832 tokens!592)))))))

(assert (=> d!1249160 (= (inv!21 (value!247426 (h!52463 (t!351832 tokens!592)))) e!2638289)))

(declare-fun b!4247709 () Bool)

(declare-fun e!2638291 () Bool)

(assert (=> b!4247709 (= e!2638291 (inv!15 (value!247426 (h!52463 (t!351832 tokens!592)))))))

(declare-fun b!4247710 () Bool)

(declare-fun res!1746275 () Bool)

(assert (=> b!4247710 (=> res!1746275 e!2638291)))

(assert (=> b!4247710 (= res!1746275 (not (is-IntegerValue!24575 (value!247426 (h!52463 (t!351832 tokens!592))))))))

(assert (=> b!4247710 (= e!2638290 e!2638291)))

(declare-fun b!4247711 () Bool)

(assert (=> b!4247711 (= e!2638289 (inv!16 (value!247426 (h!52463 (t!351832 tokens!592)))))))

(assert (= (and d!1249160 c!721395) b!4247711))

(assert (= (and d!1249160 (not c!721395)) b!4247708))

(assert (= (and b!4247708 c!721396) b!4247707))

(assert (= (and b!4247708 (not c!721396)) b!4247710))

(assert (= (and b!4247710 (not res!1746275)) b!4247709))

(declare-fun m!4832495 () Bool)

(assert (=> b!4247707 m!4832495))

(declare-fun m!4832497 () Bool)

(assert (=> b!4247709 m!4832497))

(declare-fun m!4832499 () Bool)

(assert (=> b!4247711 m!4832499))

(assert (=> b!4247505 d!1249160))

(declare-fun b!4247714 () Bool)

(declare-fun res!1746277 () Bool)

(declare-fun e!2638293 () Bool)

(assert (=> b!4247714 (=> (not res!1746277) (not e!2638293))))

(declare-fun lt!1507916 () List!47166)

(assert (=> b!4247714 (= res!1746277 (= (size!34443 lt!1507916) (+ (size!34443 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))) (size!34443 (_2!25435 (get!15278 lt!1507838))))))))

(declare-fun d!1249162 () Bool)

(assert (=> d!1249162 e!2638293))

(declare-fun res!1746276 () Bool)

(assert (=> d!1249162 (=> (not res!1746276) (not e!2638293))))

(assert (=> d!1249162 (= res!1746276 (= (content!7391 lt!1507916) (set.union (content!7391 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))) (content!7391 (_2!25435 (get!15278 lt!1507838))))))))

(declare-fun e!2638292 () List!47166)

(assert (=> d!1249162 (= lt!1507916 e!2638292)))

(declare-fun c!721397 () Bool)

(assert (=> d!1249162 (= c!721397 (is-Nil!47042 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))))))

(assert (=> d!1249162 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838)))) (_2!25435 (get!15278 lt!1507838))) lt!1507916)))

(declare-fun b!4247713 () Bool)

(assert (=> b!4247713 (= e!2638292 (Cons!47042 (h!52462 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))) (++!11972 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))) (_2!25435 (get!15278 lt!1507838)))))))

(declare-fun b!4247712 () Bool)

(assert (=> b!4247712 (= e!2638292 (_2!25435 (get!15278 lt!1507838)))))

(declare-fun b!4247715 () Bool)

(assert (=> b!4247715 (= e!2638293 (or (not (= (_2!25435 (get!15278 lt!1507838)) Nil!47042)) (= lt!1507916 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838)))))))))

(assert (= (and d!1249162 c!721397) b!4247712))

(assert (= (and d!1249162 (not c!721397)) b!4247713))

(assert (= (and d!1249162 res!1746276) b!4247714))

(assert (= (and b!4247714 res!1746277) b!4247715))

(declare-fun m!4832501 () Bool)

(assert (=> b!4247714 m!4832501))

(assert (=> b!4247714 m!4832113))

(declare-fun m!4832503 () Bool)

(assert (=> b!4247714 m!4832503))

(assert (=> b!4247714 m!4832109))

(declare-fun m!4832505 () Bool)

(assert (=> d!1249162 m!4832505))

(assert (=> d!1249162 m!4832113))

(declare-fun m!4832507 () Bool)

(assert (=> d!1249162 m!4832507))

(declare-fun m!4832509 () Bool)

(assert (=> d!1249162 m!4832509))

(declare-fun m!4832511 () Bool)

(assert (=> b!4247713 m!4832511))

(assert (=> b!4247382 d!1249162))

(declare-fun d!1249164 () Bool)

(assert (=> d!1249164 (= (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838)))) (list!16947 (c!721335 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))))))

(declare-fun bs!598533 () Bool)

(assert (= bs!598533 d!1249164))

(declare-fun m!4832513 () Bool)

(assert (=> bs!598533 m!4832513))

(assert (=> b!4247382 d!1249164))

(declare-fun d!1249166 () Bool)

(declare-fun lt!1507917 () BalanceConc!27938)

(assert (=> d!1249166 (= (list!16945 lt!1507917) (originalCharacters!8305 (_1!25435 (get!15278 lt!1507838))))))

(assert (=> d!1249166 (= lt!1507917 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))) (value!247426 (_1!25435 (get!15278 lt!1507838)))))))

(assert (=> d!1249166 (= (charsOf!5303 (_1!25435 (get!15278 lt!1507838))) lt!1507917)))

(declare-fun b_lambda!125109 () Bool)

(assert (=> (not b_lambda!125109) (not d!1249166)))

(declare-fun t!351898 () Bool)

(declare-fun tb!255907 () Bool)

(assert (=> (and b!4247283 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351898) tb!255907))

(declare-fun b!4247716 () Bool)

(declare-fun e!2638294 () Bool)

(declare-fun tp!1303138 () Bool)

(assert (=> b!4247716 (= e!2638294 (and (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))) (value!247426 (_1!25435 (get!15278 lt!1507838)))))) tp!1303138))))

(declare-fun result!312094 () Bool)

(assert (=> tb!255907 (= result!312094 (and (inv!61810 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))) (value!247426 (_1!25435 (get!15278 lt!1507838))))) e!2638294))))

(assert (= tb!255907 b!4247716))

(declare-fun m!4832515 () Bool)

(assert (=> b!4247716 m!4832515))

(declare-fun m!4832517 () Bool)

(assert (=> tb!255907 m!4832517))

(assert (=> d!1249166 t!351898))

(declare-fun b_and!336597 () Bool)

(assert (= b_and!336581 (and (=> t!351898 result!312094) b_and!336597)))

(declare-fun t!351900 () Bool)

(declare-fun tb!255909 () Bool)

(assert (=> (and b!4247276 (= (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351900) tb!255909))

(declare-fun result!312096 () Bool)

(assert (= result!312096 result!312094))

(assert (=> d!1249166 t!351900))

(declare-fun b_and!336599 () Bool)

(assert (= b_and!336583 (and (=> t!351900 result!312096) b_and!336599)))

(declare-fun tb!255911 () Bool)

(declare-fun t!351902 () Bool)

(assert (=> (and b!4247507 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351902) tb!255911))

(declare-fun result!312098 () Bool)

(assert (= result!312098 result!312094))

(assert (=> d!1249166 t!351902))

(declare-fun b_and!336601 () Bool)

(assert (= b_and!336585 (and (=> t!351902 result!312098) b_and!336601)))

(declare-fun tb!255913 () Bool)

(declare-fun t!351904 () Bool)

(assert (=> (and b!4247520 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351904) tb!255913))

(declare-fun result!312100 () Bool)

(assert (= result!312100 result!312094))

(assert (=> d!1249166 t!351904))

(declare-fun b_and!336603 () Bool)

(assert (= b_and!336587 (and (=> t!351904 result!312100) b_and!336603)))

(declare-fun m!4832519 () Bool)

(assert (=> d!1249166 m!4832519))

(declare-fun m!4832521 () Bool)

(assert (=> d!1249166 m!4832521))

(assert (=> b!4247382 d!1249166))

(assert (=> b!4247382 d!1249146))

(declare-fun d!1249168 () Bool)

(assert (=> d!1249168 (= (isDefined!7455 lt!1507838) (not (isEmpty!27831 lt!1507838)))))

(declare-fun bs!598534 () Bool)

(assert (= bs!598534 d!1249168))

(assert (=> bs!598534 m!4832131))

(assert (=> b!4247384 d!1249168))

(declare-fun d!1249170 () Bool)

(declare-fun lt!1507920 () Int)

(assert (=> d!1249170 (>= lt!1507920 0)))

(declare-fun e!2638297 () Int)

(assert (=> d!1249170 (= lt!1507920 e!2638297)))

(declare-fun c!721400 () Bool)

(assert (=> d!1249170 (= c!721400 (is-Nil!47043 (_1!25436 lt!1507826)))))

(assert (=> d!1249170 (= (size!34446 (_1!25436 lt!1507826)) lt!1507920)))

(declare-fun b!4247721 () Bool)

(assert (=> b!4247721 (= e!2638297 0)))

(declare-fun b!4247722 () Bool)

(assert (=> b!4247722 (= e!2638297 (+ 1 (size!34446 (t!351832 (_1!25436 lt!1507826)))))))

(assert (= (and d!1249170 c!721400) b!4247721))

(assert (= (and d!1249170 (not c!721400)) b!4247722))

(declare-fun m!4832523 () Bool)

(assert (=> b!4247722 m!4832523))

(assert (=> d!1249052 d!1249170))

(assert (=> d!1249052 d!1249060))

(declare-fun d!1249172 () Bool)

(assert (=> d!1249172 true))

(declare-fun lambda!130214 () Int)

(declare-fun order!24727 () Int)

(declare-fun order!24729 () Int)

(declare-fun dynLambda!20154 (Int Int) Int)

(declare-fun dynLambda!20155 (Int Int) Int)

(assert (=> d!1249172 (< (dynLambda!20154 order!24727 (toChars!10584 (transformation!7961 (h!52464 rules!2971)))) (dynLambda!20155 order!24729 lambda!130214))))

(assert (=> d!1249172 true))

(assert (=> d!1249172 (< (dynLambda!20151 order!24723 (toValue!10725 (transformation!7961 (h!52464 rules!2971)))) (dynLambda!20155 order!24729 lambda!130214))))

(declare-fun Forall!1601 (Int) Bool)

(assert (=> d!1249172 (= (semiInverseModEq!3468 (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toValue!10725 (transformation!7961 (h!52464 rules!2971)))) (Forall!1601 lambda!130214))))

(declare-fun bs!598535 () Bool)

(assert (= bs!598535 d!1249172))

(declare-fun m!4832525 () Bool)

(assert (=> bs!598535 m!4832525))

(assert (=> d!1249090 d!1249172))

(declare-fun d!1249174 () Bool)

(assert (=> d!1249174 (= (list!16945 lt!1507863) (list!16947 (c!721335 lt!1507863)))))

(declare-fun bs!598536 () Bool)

(assert (= bs!598536 d!1249174))

(declare-fun m!4832527 () Bool)

(assert (=> bs!598536 m!4832527))

(assert (=> d!1249072 d!1249174))

(declare-fun d!1249176 () Bool)

(declare-fun c!721403 () Bool)

(assert (=> d!1249176 (= c!721403 (is-Node!14172 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))))))

(declare-fun e!2638302 () Bool)

(assert (=> d!1249176 (= (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))) e!2638302)))

(declare-fun b!4247733 () Bool)

(declare-fun inv!61813 (Conc!14172) Bool)

(assert (=> b!4247733 (= e!2638302 (inv!61813 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))))))

(declare-fun b!4247734 () Bool)

(declare-fun e!2638303 () Bool)

(assert (=> b!4247734 (= e!2638302 e!2638303)))

(declare-fun res!1746281 () Bool)

(assert (=> b!4247734 (= res!1746281 (not (is-Leaf!21912 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))))))))

(assert (=> b!4247734 (=> res!1746281 e!2638303)))

(declare-fun b!4247735 () Bool)

(declare-fun inv!61814 (Conc!14172) Bool)

(assert (=> b!4247735 (= e!2638303 (inv!61814 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))))))

(assert (= (and d!1249176 c!721403) b!4247733))

(assert (= (and d!1249176 (not c!721403)) b!4247734))

(assert (= (and b!4247734 (not res!1746281)) b!4247735))

(declare-fun m!4832529 () Bool)

(assert (=> b!4247733 m!4832529))

(declare-fun m!4832531 () Bool)

(assert (=> b!4247735 m!4832531))

(assert (=> b!4247458 d!1249176))

(declare-fun d!1249178 () Bool)

(assert (=> d!1249178 (= (isEmpty!27831 lt!1507838) (not (is-Some!10094 lt!1507838)))))

(assert (=> d!1249056 d!1249178))

(declare-fun d!1249180 () Bool)

(declare-fun e!2638312 () Bool)

(assert (=> d!1249180 e!2638312))

(declare-fun res!1746291 () Bool)

(assert (=> d!1249180 (=> res!1746291 e!2638312)))

(declare-fun lt!1507923 () Bool)

(assert (=> d!1249180 (= res!1746291 (not lt!1507923))))

(declare-fun e!2638310 () Bool)

(assert (=> d!1249180 (= lt!1507923 e!2638310)))

(declare-fun res!1746293 () Bool)

(assert (=> d!1249180 (=> res!1746293 e!2638310)))

(assert (=> d!1249180 (= res!1746293 (is-Nil!47042 shorterInput!62))))

(assert (=> d!1249180 (= (isPrefix!4740 shorterInput!62 shorterInput!62) lt!1507923)))

(declare-fun b!4247746 () Bool)

(declare-fun e!2638311 () Bool)

(declare-fun tail!6849 (List!47166) List!47166)

(assert (=> b!4247746 (= e!2638311 (isPrefix!4740 (tail!6849 shorterInput!62) (tail!6849 shorterInput!62)))))

(declare-fun b!4247745 () Bool)

(declare-fun res!1746292 () Bool)

(assert (=> b!4247745 (=> (not res!1746292) (not e!2638311))))

(declare-fun head!8990 (List!47166) C!25930)

(assert (=> b!4247745 (= res!1746292 (= (head!8990 shorterInput!62) (head!8990 shorterInput!62)))))

(declare-fun b!4247747 () Bool)

(assert (=> b!4247747 (= e!2638312 (>= (size!34443 shorterInput!62) (size!34443 shorterInput!62)))))

(declare-fun b!4247744 () Bool)

(assert (=> b!4247744 (= e!2638310 e!2638311)))

(declare-fun res!1746290 () Bool)

(assert (=> b!4247744 (=> (not res!1746290) (not e!2638311))))

(assert (=> b!4247744 (= res!1746290 (not (is-Nil!47042 shorterInput!62)))))

(assert (= (and d!1249180 (not res!1746293)) b!4247744))

(assert (= (and b!4247744 res!1746290) b!4247745))

(assert (= (and b!4247745 res!1746292) b!4247746))

(assert (= (and d!1249180 (not res!1746291)) b!4247747))

(declare-fun m!4832533 () Bool)

(assert (=> b!4247746 m!4832533))

(assert (=> b!4247746 m!4832533))

(assert (=> b!4247746 m!4832533))

(assert (=> b!4247746 m!4832533))

(declare-fun m!4832535 () Bool)

(assert (=> b!4247746 m!4832535))

(declare-fun m!4832537 () Bool)

(assert (=> b!4247745 m!4832537))

(assert (=> b!4247745 m!4832537))

(assert (=> b!4247747 m!4832037))

(assert (=> b!4247747 m!4832037))

(assert (=> d!1249056 d!1249180))

(declare-fun d!1249182 () Bool)

(assert (=> d!1249182 (isPrefix!4740 shorterInput!62 shorterInput!62)))

(declare-fun lt!1507926 () Unit!66043)

(declare-fun choose!25953 (List!47166 List!47166) Unit!66043)

(assert (=> d!1249182 (= lt!1507926 (choose!25953 shorterInput!62 shorterInput!62))))

(assert (=> d!1249182 (= (lemmaIsPrefixRefl!3137 shorterInput!62 shorterInput!62) lt!1507926)))

(declare-fun bs!598537 () Bool)

(assert (= bs!598537 d!1249182))

(assert (=> bs!598537 m!4832133))

(declare-fun m!4832539 () Bool)

(assert (=> bs!598537 m!4832539))

(assert (=> d!1249056 d!1249182))

(declare-fun bs!598538 () Bool)

(declare-fun d!1249184 () Bool)

(assert (= bs!598538 (and d!1249184 d!1249120)))

(declare-fun lambda!130217 () Int)

(assert (=> bs!598538 (= lambda!130217 lambda!130208)))

(assert (=> d!1249184 true))

(declare-fun lt!1507929 () Bool)

(assert (=> d!1249184 (= lt!1507929 (forall!8541 rules!2971 lambda!130217))))

(declare-fun e!2638318 () Bool)

(assert (=> d!1249184 (= lt!1507929 e!2638318)))

(declare-fun res!1746299 () Bool)

(assert (=> d!1249184 (=> res!1746299 e!2638318)))

(assert (=> d!1249184 (= res!1746299 (not (is-Cons!47044 rules!2971)))))

(assert (=> d!1249184 (= (rulesValidInductive!2991 thiss!21641 rules!2971) lt!1507929)))

(declare-fun b!4247752 () Bool)

(declare-fun e!2638317 () Bool)

(assert (=> b!4247752 (= e!2638318 e!2638317)))

(declare-fun res!1746298 () Bool)

(assert (=> b!4247752 (=> (not res!1746298) (not e!2638317))))

(declare-fun ruleValid!3605 (LexerInterface!7556 Rule!15722) Bool)

(assert (=> b!4247752 (= res!1746298 (ruleValid!3605 thiss!21641 (h!52464 rules!2971)))))

(declare-fun b!4247753 () Bool)

(assert (=> b!4247753 (= e!2638317 (rulesValidInductive!2991 thiss!21641 (t!351833 rules!2971)))))

(assert (= (and d!1249184 (not res!1746299)) b!4247752))

(assert (= (and b!4247752 res!1746298) b!4247753))

(declare-fun m!4832541 () Bool)

(assert (=> d!1249184 m!4832541))

(declare-fun m!4832543 () Bool)

(assert (=> b!4247752 m!4832543))

(assert (=> b!4247753 m!4832409))

(assert (=> d!1249056 d!1249184))

(declare-fun d!1249186 () Bool)

(declare-fun charsToBigInt!1 (List!47165) Int)

(assert (=> d!1249186 (= (inv!17 (value!247426 (h!52463 tokens!592))) (= (charsToBigInt!1 (text!57785 (value!247426 (h!52463 tokens!592)))) (value!247418 (value!247426 (h!52463 tokens!592)))))))

(declare-fun bs!598539 () Bool)

(assert (= bs!598539 d!1249186))

(declare-fun m!4832545 () Bool)

(assert (=> bs!598539 m!4832545))

(assert (=> b!4247412 d!1249186))

(declare-fun b!4247756 () Bool)

(declare-fun res!1746301 () Bool)

(declare-fun e!2638320 () Bool)

(assert (=> b!4247756 (=> (not res!1746301) (not e!2638320))))

(declare-fun lt!1507930 () List!47166)

(assert (=> b!4247756 (= res!1746301 (= (size!34443 lt!1507930) (+ (size!34443 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))))) (size!34443 (_2!25435 (v!41048 lt!1507812))))))))

(declare-fun d!1249188 () Bool)

(assert (=> d!1249188 e!2638320))

(declare-fun res!1746300 () Bool)

(assert (=> d!1249188 (=> (not res!1746300) (not e!2638320))))

(assert (=> d!1249188 (= res!1746300 (= (content!7391 lt!1507930) (set.union (content!7391 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))))) (content!7391 (_2!25435 (v!41048 lt!1507812))))))))

(declare-fun e!2638319 () List!47166)

(assert (=> d!1249188 (= lt!1507930 e!2638319)))

(declare-fun c!721404 () Bool)

(assert (=> d!1249188 (= c!721404 (is-Nil!47042 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))))))))

(assert (=> d!1249188 (= (++!11972 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) (_2!25435 (v!41048 lt!1507812))) lt!1507930)))

(declare-fun b!4247755 () Bool)

(assert (=> b!4247755 (= e!2638319 (Cons!47042 (h!52462 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))))) (++!11972 (t!351831 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812)))))) (_2!25435 (v!41048 lt!1507812)))))))

(declare-fun b!4247754 () Bool)

(assert (=> b!4247754 (= e!2638319 (_2!25435 (v!41048 lt!1507812)))))

(declare-fun b!4247757 () Bool)

(assert (=> b!4247757 (= e!2638320 (or (not (= (_2!25435 (v!41048 lt!1507812)) Nil!47042)) (= lt!1507930 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))))

(assert (= (and d!1249188 c!721404) b!4247754))

(assert (= (and d!1249188 (not c!721404)) b!4247755))

(assert (= (and d!1249188 res!1746300) b!4247756))

(assert (= (and b!4247756 res!1746301) b!4247757))

(declare-fun m!4832547 () Bool)

(assert (=> b!4247756 m!4832547))

(declare-fun m!4832549 () Bool)

(assert (=> b!4247756 m!4832549))

(assert (=> b!4247756 m!4832183))

(declare-fun m!4832551 () Bool)

(assert (=> d!1249188 m!4832551))

(declare-fun m!4832553 () Bool)

(assert (=> d!1249188 m!4832553))

(assert (=> d!1249188 m!4832189))

(declare-fun m!4832555 () Bool)

(assert (=> b!4247755 m!4832555))

(assert (=> b!4247430 d!1249188))

(declare-fun bs!598540 () Bool)

(declare-fun d!1249190 () Bool)

(assert (= bs!598540 (and d!1249190 d!1249122)))

(declare-fun lambda!130218 () Int)

(assert (=> bs!598540 (= (= (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toValue!10725 (transformation!7961 (h!52464 rules!2971)))) (= lambda!130218 lambda!130211))))

(assert (=> d!1249190 true))

(assert (=> d!1249190 (< (dynLambda!20151 order!24723 (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) (dynLambda!20152 order!24725 lambda!130218))))

(assert (=> d!1249190 (= (equivClasses!3367 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) (Forall2!1200 lambda!130218))))

(declare-fun bs!598541 () Bool)

(assert (= bs!598541 d!1249190))

(declare-fun m!4832557 () Bool)

(assert (=> bs!598541 m!4832557))

(assert (=> b!4247451 d!1249190))

(declare-fun d!1249192 () Bool)

(assert (=> d!1249192 (= (isEmpty!27830 (_1!25436 lt!1507826)) (is-Nil!47043 (_1!25436 lt!1507826)))))

(assert (=> b!4247353 d!1249192))

(declare-fun d!1249194 () Bool)

(declare-fun lt!1507931 () Int)

(assert (=> d!1249194 (>= lt!1507931 0)))

(declare-fun e!2638321 () Int)

(assert (=> d!1249194 (= lt!1507931 e!2638321)))

(declare-fun c!721405 () Bool)

(assert (=> d!1249194 (= c!721405 (is-Nil!47042 (_2!25436 lt!1507826)))))

(assert (=> d!1249194 (= (size!34443 (_2!25436 lt!1507826)) lt!1507931)))

(declare-fun b!4247758 () Bool)

(assert (=> b!4247758 (= e!2638321 0)))

(declare-fun b!4247759 () Bool)

(assert (=> b!4247759 (= e!2638321 (+ 1 (size!34443 (t!351831 (_2!25436 lt!1507826)))))))

(assert (= (and d!1249194 c!721405) b!4247758))

(assert (= (and d!1249194 (not c!721405)) b!4247759))

(declare-fun m!4832559 () Bool)

(assert (=> b!4247759 m!4832559))

(assert (=> b!4247355 d!1249194))

(assert (=> b!4247355 d!1249062))

(declare-fun d!1249196 () Bool)

(declare-fun charsToBigInt!0 (List!47165 Int) Int)

(assert (=> d!1249196 (= (inv!15 (value!247426 (h!52463 tokens!592))) (= (charsToBigInt!0 (text!57786 (value!247426 (h!52463 tokens!592))) 0) (value!247421 (value!247426 (h!52463 tokens!592)))))))

(declare-fun bs!598542 () Bool)

(assert (= bs!598542 d!1249196))

(declare-fun m!4832561 () Bool)

(assert (=> bs!598542 m!4832561))

(assert (=> b!4247414 d!1249196))

(declare-fun d!1249198 () Bool)

(declare-fun lt!1507932 () Int)

(assert (=> d!1249198 (>= lt!1507932 0)))

(declare-fun e!2638322 () Int)

(assert (=> d!1249198 (= lt!1507932 e!2638322)))

(declare-fun c!721406 () Bool)

(assert (=> d!1249198 (= c!721406 (is-Nil!47042 (_2!25435 (get!15278 lt!1507843))))))

(assert (=> d!1249198 (= (size!34443 (_2!25435 (get!15278 lt!1507843))) lt!1507932)))

(declare-fun b!4247760 () Bool)

(assert (=> b!4247760 (= e!2638322 0)))

(declare-fun b!4247761 () Bool)

(assert (=> b!4247761 (= e!2638322 (+ 1 (size!34443 (t!351831 (_2!25435 (get!15278 lt!1507843))))))))

(assert (= (and d!1249198 c!721406) b!4247760))

(assert (= (and d!1249198 (not c!721406)) b!4247761))

(declare-fun m!4832563 () Bool)

(assert (=> b!4247761 m!4832563))

(assert (=> b!4247386 d!1249198))

(assert (=> b!4247386 d!1249134))

(assert (=> b!4247386 d!1249062))

(declare-fun d!1249200 () Bool)

(declare-fun c!721407 () Bool)

(assert (=> d!1249200 (= c!721407 (is-Node!14172 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812)))))))))

(declare-fun e!2638323 () Bool)

(assert (=> d!1249200 (= (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812)))))) e!2638323)))

(declare-fun b!4247762 () Bool)

(assert (=> b!4247762 (= e!2638323 (inv!61813 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812)))))))))

(declare-fun b!4247763 () Bool)

(declare-fun e!2638324 () Bool)

(assert (=> b!4247763 (= e!2638323 e!2638324)))

(declare-fun res!1746302 () Bool)

(assert (=> b!4247763 (= res!1746302 (not (is-Leaf!21912 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812))))))))))

(assert (=> b!4247763 (=> res!1746302 e!2638324)))

(declare-fun b!4247764 () Bool)

(assert (=> b!4247764 (= e!2638324 (inv!61814 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812)))))))))

(assert (= (and d!1249200 c!721407) b!4247762))

(assert (= (and d!1249200 (not c!721407)) b!4247763))

(assert (= (and b!4247763 (not res!1746302)) b!4247764))

(declare-fun m!4832565 () Bool)

(assert (=> b!4247762 m!4832565))

(declare-fun m!4832567 () Bool)

(assert (=> b!4247764 m!4832567))

(assert (=> b!4247443 d!1249200))

(declare-fun d!1249202 () Bool)

(declare-fun charsToInt!0 (List!47165) (_ BitVec 32))

(assert (=> d!1249202 (= (inv!16 (value!247426 (h!52463 tokens!592))) (= (charsToInt!0 (text!57784 (value!247426 (h!52463 tokens!592)))) (value!247417 (value!247426 (h!52463 tokens!592)))))))

(declare-fun bs!598543 () Bool)

(assert (= bs!598543 d!1249202))

(declare-fun m!4832569 () Bool)

(assert (=> bs!598543 m!4832569))

(assert (=> b!4247416 d!1249202))

(declare-fun b!4247765 () Bool)

(declare-fun e!2638327 () Bool)

(declare-fun lt!1507934 () tuple2!44604)

(assert (=> b!4247765 (= e!2638327 (not (isEmpty!27830 (_1!25436 lt!1507934))))))

(declare-fun b!4247766 () Bool)

(declare-fun e!2638325 () tuple2!44604)

(assert (=> b!4247766 (= e!2638325 (tuple2!44605 Nil!47043 (_2!25435 (v!41048 lt!1507825))))))

(declare-fun b!4247767 () Bool)

(declare-fun e!2638326 () Bool)

(assert (=> b!4247767 (= e!2638326 e!2638327)))

(declare-fun res!1746303 () Bool)

(assert (=> b!4247767 (= res!1746303 (< (size!34443 (_2!25436 lt!1507934)) (size!34443 (_2!25435 (v!41048 lt!1507825)))))))

(assert (=> b!4247767 (=> (not res!1746303) (not e!2638327))))

(declare-fun b!4247768 () Bool)

(assert (=> b!4247768 (= e!2638326 (= (_2!25436 lt!1507934) (_2!25435 (v!41048 lt!1507825))))))

(declare-fun d!1249204 () Bool)

(assert (=> d!1249204 e!2638326))

(declare-fun c!721408 () Bool)

(assert (=> d!1249204 (= c!721408 (> (size!34446 (_1!25436 lt!1507934)) 0))))

(assert (=> d!1249204 (= lt!1507934 e!2638325)))

(declare-fun c!721409 () Bool)

(declare-fun lt!1507933 () Option!10095)

(assert (=> d!1249204 (= c!721409 (is-Some!10094 lt!1507933))))

(assert (=> d!1249204 (= lt!1507933 (maxPrefix!4512 thiss!21641 rules!2971 (_2!25435 (v!41048 lt!1507825))))))

(assert (=> d!1249204 (= (lexList!2062 thiss!21641 rules!2971 (_2!25435 (v!41048 lt!1507825))) lt!1507934)))

(declare-fun b!4247769 () Bool)

(declare-fun lt!1507935 () tuple2!44604)

(assert (=> b!4247769 (= e!2638325 (tuple2!44605 (Cons!47043 (_1!25435 (v!41048 lt!1507933)) (_1!25436 lt!1507935)) (_2!25436 lt!1507935)))))

(assert (=> b!4247769 (= lt!1507935 (lexList!2062 thiss!21641 rules!2971 (_2!25435 (v!41048 lt!1507933))))))

(assert (= (and d!1249204 c!721409) b!4247769))

(assert (= (and d!1249204 (not c!721409)) b!4247766))

(assert (= (and d!1249204 c!721408) b!4247767))

(assert (= (and d!1249204 (not c!721408)) b!4247768))

(assert (= (and b!4247767 res!1746303) b!4247765))

(declare-fun m!4832571 () Bool)

(assert (=> b!4247765 m!4832571))

(declare-fun m!4832573 () Bool)

(assert (=> b!4247767 m!4832573))

(declare-fun m!4832575 () Bool)

(assert (=> b!4247767 m!4832575))

(declare-fun m!4832577 () Bool)

(assert (=> d!1249204 m!4832577))

(declare-fun m!4832579 () Bool)

(assert (=> d!1249204 m!4832579))

(declare-fun m!4832581 () Bool)

(assert (=> b!4247769 m!4832581))

(assert (=> b!4247357 d!1249204))

(declare-fun d!1249206 () Bool)

(declare-fun lt!1507936 () Int)

(assert (=> d!1249206 (>= lt!1507936 0)))

(declare-fun e!2638328 () Int)

(assert (=> d!1249206 (= lt!1507936 e!2638328)))

(declare-fun c!721410 () Bool)

(assert (=> d!1249206 (= c!721410 (is-Nil!47042 (_2!25435 (get!15278 lt!1507838))))))

(assert (=> d!1249206 (= (size!34443 (_2!25435 (get!15278 lt!1507838))) lt!1507936)))

(declare-fun b!4247770 () Bool)

(assert (=> b!4247770 (= e!2638328 0)))

(declare-fun b!4247771 () Bool)

(assert (=> b!4247771 (= e!2638328 (+ 1 (size!34443 (t!351831 (_2!25435 (get!15278 lt!1507838))))))))

(assert (= (and d!1249206 c!721410) b!4247770))

(assert (= (and d!1249206 (not c!721410)) b!4247771))

(declare-fun m!4832583 () Bool)

(assert (=> b!4247771 m!4832583))

(assert (=> b!4247377 d!1249206))

(assert (=> b!4247377 d!1249146))

(assert (=> b!4247377 d!1249064))

(declare-fun d!1249208 () Bool)

(declare-fun lt!1507937 () Int)

(assert (=> d!1249208 (>= lt!1507937 0)))

(declare-fun e!2638329 () Int)

(assert (=> d!1249208 (= lt!1507937 e!2638329)))

(declare-fun c!721411 () Bool)

(assert (=> d!1249208 (= c!721411 (is-Nil!47042 (t!351831 shorterInput!62)))))

(assert (=> d!1249208 (= (size!34443 (t!351831 shorterInput!62)) lt!1507937)))

(declare-fun b!4247772 () Bool)

(assert (=> b!4247772 (= e!2638329 0)))

(declare-fun b!4247773 () Bool)

(assert (=> b!4247773 (= e!2638329 (+ 1 (size!34443 (t!351831 (t!351831 shorterInput!62)))))))

(assert (= (and d!1249208 c!721411) b!4247772))

(assert (= (and d!1249208 (not c!721411)) b!4247773))

(declare-fun m!4832585 () Bool)

(assert (=> b!4247773 m!4832585))

(assert (=> b!4247401 d!1249208))

(declare-fun d!1249210 () Bool)

(declare-fun res!1746308 () Bool)

(declare-fun e!2638334 () Bool)

(assert (=> d!1249210 (=> res!1746308 e!2638334)))

(assert (=> d!1249210 (= res!1746308 (is-Nil!47044 rules!2971))))

(assert (=> d!1249210 (= (noDuplicateTag!3251 thiss!21641 rules!2971 Nil!47049) e!2638334)))

(declare-fun b!4247778 () Bool)

(declare-fun e!2638335 () Bool)

(assert (=> b!4247778 (= e!2638334 e!2638335)))

(declare-fun res!1746309 () Bool)

(assert (=> b!4247778 (=> (not res!1746309) (not e!2638335))))

(declare-fun contains!9750 (List!47173 String!54887) Bool)

(assert (=> b!4247778 (= res!1746309 (not (contains!9750 Nil!47049 (tag!8825 (h!52464 rules!2971)))))))

(declare-fun b!4247779 () Bool)

(assert (=> b!4247779 (= e!2638335 (noDuplicateTag!3251 thiss!21641 (t!351833 rules!2971) (Cons!47049 (tag!8825 (h!52464 rules!2971)) Nil!47049)))))

(assert (= (and d!1249210 (not res!1746308)) b!4247778))

(assert (= (and b!4247778 res!1746309) b!4247779))

(declare-fun m!4832587 () Bool)

(assert (=> b!4247778 m!4832587))

(declare-fun m!4832589 () Bool)

(assert (=> b!4247779 m!4832589))

(assert (=> b!4247465 d!1249210))

(assert (=> b!4247388 d!1249150))

(assert (=> b!4247388 d!1249152))

(assert (=> b!4247388 d!1249134))

(declare-fun d!1249212 () Bool)

(assert (=> d!1249212 (= (isEmpty!27831 lt!1507843) (not (is-Some!10094 lt!1507843)))))

(assert (=> d!1249060 d!1249212))

(declare-fun d!1249214 () Bool)

(declare-fun e!2638338 () Bool)

(assert (=> d!1249214 e!2638338))

(declare-fun res!1746311 () Bool)

(assert (=> d!1249214 (=> res!1746311 e!2638338)))

(declare-fun lt!1507938 () Bool)

(assert (=> d!1249214 (= res!1746311 (not lt!1507938))))

(declare-fun e!2638336 () Bool)

(assert (=> d!1249214 (= lt!1507938 e!2638336)))

(declare-fun res!1746313 () Bool)

(assert (=> d!1249214 (=> res!1746313 e!2638336)))

(assert (=> d!1249214 (= res!1746313 (is-Nil!47042 longerInput!62))))

(assert (=> d!1249214 (= (isPrefix!4740 longerInput!62 longerInput!62) lt!1507938)))

(declare-fun b!4247782 () Bool)

(declare-fun e!2638337 () Bool)

(assert (=> b!4247782 (= e!2638337 (isPrefix!4740 (tail!6849 longerInput!62) (tail!6849 longerInput!62)))))

(declare-fun b!4247781 () Bool)

(declare-fun res!1746312 () Bool)

(assert (=> b!4247781 (=> (not res!1746312) (not e!2638337))))

(assert (=> b!4247781 (= res!1746312 (= (head!8990 longerInput!62) (head!8990 longerInput!62)))))

(declare-fun b!4247783 () Bool)

(assert (=> b!4247783 (= e!2638338 (>= (size!34443 longerInput!62) (size!34443 longerInput!62)))))

(declare-fun b!4247780 () Bool)

(assert (=> b!4247780 (= e!2638336 e!2638337)))

(declare-fun res!1746310 () Bool)

(assert (=> b!4247780 (=> (not res!1746310) (not e!2638337))))

(assert (=> b!4247780 (= res!1746310 (not (is-Nil!47042 longerInput!62)))))

(assert (= (and d!1249214 (not res!1746313)) b!4247780))

(assert (= (and b!4247780 res!1746310) b!4247781))

(assert (= (and b!4247781 res!1746312) b!4247782))

(assert (= (and d!1249214 (not res!1746311)) b!4247783))

(declare-fun m!4832591 () Bool)

(assert (=> b!4247782 m!4832591))

(assert (=> b!4247782 m!4832591))

(assert (=> b!4247782 m!4832591))

(assert (=> b!4247782 m!4832591))

(declare-fun m!4832593 () Bool)

(assert (=> b!4247782 m!4832593))

(declare-fun m!4832595 () Bool)

(assert (=> b!4247781 m!4832595))

(assert (=> b!4247781 m!4832595))

(assert (=> b!4247783 m!4832035))

(assert (=> b!4247783 m!4832035))

(assert (=> d!1249060 d!1249214))

(declare-fun d!1249216 () Bool)

(assert (=> d!1249216 (isPrefix!4740 longerInput!62 longerInput!62)))

(declare-fun lt!1507939 () Unit!66043)

(assert (=> d!1249216 (= lt!1507939 (choose!25953 longerInput!62 longerInput!62))))

(assert (=> d!1249216 (= (lemmaIsPrefixRefl!3137 longerInput!62 longerInput!62) lt!1507939)))

(declare-fun bs!598544 () Bool)

(assert (= bs!598544 d!1249216))

(assert (=> bs!598544 m!4832165))

(declare-fun m!4832597 () Bool)

(assert (=> bs!598544 m!4832597))

(assert (=> d!1249060 d!1249216))

(assert (=> d!1249060 d!1249184))

(declare-fun bs!598545 () Bool)

(declare-fun d!1249218 () Bool)

(assert (= bs!598545 (and d!1249218 d!1249172)))

(declare-fun lambda!130219 () Int)

(assert (=> bs!598545 (= (and (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toChars!10584 (transformation!7961 (h!52464 rules!2971)))) (= (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toValue!10725 (transformation!7961 (h!52464 rules!2971))))) (= lambda!130219 lambda!130214))))

(assert (=> d!1249218 true))

(assert (=> d!1249218 (< (dynLambda!20154 order!24727 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) (dynLambda!20155 order!24729 lambda!130219))))

(assert (=> d!1249218 true))

(assert (=> d!1249218 (< (dynLambda!20151 order!24723 (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) (dynLambda!20155 order!24729 lambda!130219))))

(assert (=> d!1249218 (= (semiInverseModEq!3468 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toValue!10725 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) (Forall!1601 lambda!130219))))

(declare-fun bs!598546 () Bool)

(assert (= bs!598546 d!1249218))

(declare-fun m!4832599 () Bool)

(assert (=> bs!598546 m!4832599))

(assert (=> d!1249076 d!1249218))

(declare-fun b!4247812 () Bool)

(declare-fun e!2638355 () Bool)

(assert (=> b!4247812 (= e!2638355 (= (head!8990 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))) (c!721336 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))))))

(declare-fun b!4247813 () Bool)

(declare-fun res!1746333 () Bool)

(assert (=> b!4247813 (=> (not res!1746333) (not e!2638355))))

(assert (=> b!4247813 (= res!1746333 (isEmpty!27827 (tail!6849 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843)))))))))

(declare-fun b!4247814 () Bool)

(declare-fun res!1746336 () Bool)

(declare-fun e!2638353 () Bool)

(assert (=> b!4247814 (=> res!1746336 e!2638353)))

(assert (=> b!4247814 (= res!1746336 (not (isEmpty!27827 (tail!6849 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))))))))

(declare-fun bm!293920 () Bool)

(declare-fun call!293925 () Bool)

(assert (=> bm!293920 (= call!293925 (isEmpty!27827 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))))))

(declare-fun b!4247815 () Bool)

(assert (=> b!4247815 (= e!2638353 (not (= (head!8990 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))) (c!721336 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))))))))

(declare-fun b!4247817 () Bool)

(declare-fun e!2638356 () Bool)

(declare-fun nullable!4522 (Regex!12866) Bool)

(assert (=> b!4247817 (= e!2638356 (nullable!4522 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))))))

(declare-fun b!4247818 () Bool)

(declare-fun e!2638359 () Bool)

(assert (=> b!4247818 (= e!2638359 e!2638353)))

(declare-fun res!1746337 () Bool)

(assert (=> b!4247818 (=> res!1746337 e!2638353)))

(assert (=> b!4247818 (= res!1746337 call!293925)))

(declare-fun b!4247819 () Bool)

(declare-fun derivativeStep!3852 (Regex!12866 C!25930) Regex!12866)

(assert (=> b!4247819 (= e!2638356 (matchR!6462 (derivativeStep!3852 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))) (head!8990 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843)))))) (tail!6849 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843)))))))))

(declare-fun b!4247820 () Bool)

(declare-fun e!2638357 () Bool)

(declare-fun lt!1507942 () Bool)

(assert (=> b!4247820 (= e!2638357 (not lt!1507942))))

(declare-fun b!4247821 () Bool)

(declare-fun res!1746332 () Bool)

(assert (=> b!4247821 (=> (not res!1746332) (not e!2638355))))

(assert (=> b!4247821 (= res!1746332 (not call!293925))))

(declare-fun b!4247822 () Bool)

(declare-fun e!2638358 () Bool)

(assert (=> b!4247822 (= e!2638358 e!2638357)))

(declare-fun c!721420 () Bool)

(assert (=> b!4247822 (= c!721420 (is-EmptyLang!12866 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))))))

(declare-fun b!4247823 () Bool)

(declare-fun res!1746330 () Bool)

(declare-fun e!2638354 () Bool)

(assert (=> b!4247823 (=> res!1746330 e!2638354)))

(assert (=> b!4247823 (= res!1746330 (not (is-ElementMatch!12866 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))))))

(assert (=> b!4247823 (= e!2638357 e!2638354)))

(declare-fun d!1249220 () Bool)

(assert (=> d!1249220 e!2638358))

(declare-fun c!721419 () Bool)

(assert (=> d!1249220 (= c!721419 (is-EmptyExpr!12866 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843))))))))

(assert (=> d!1249220 (= lt!1507942 e!2638356)))

(declare-fun c!721418 () Bool)

(assert (=> d!1249220 (= c!721418 (isEmpty!27827 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))))))

(declare-fun validRegex!5829 (Regex!12866) Bool)

(assert (=> d!1249220 (validRegex!5829 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))))

(assert (=> d!1249220 (= (matchR!6462 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))) (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507843))))) lt!1507942)))

(declare-fun b!4247816 () Bool)

(declare-fun res!1746334 () Bool)

(assert (=> b!4247816 (=> res!1746334 e!2638354)))

(assert (=> b!4247816 (= res!1746334 e!2638355)))

(declare-fun res!1746331 () Bool)

(assert (=> b!4247816 (=> (not res!1746331) (not e!2638355))))

(assert (=> b!4247816 (= res!1746331 lt!1507942)))

(declare-fun b!4247824 () Bool)

(assert (=> b!4247824 (= e!2638358 (= lt!1507942 call!293925))))

(declare-fun b!4247825 () Bool)

(assert (=> b!4247825 (= e!2638354 e!2638359)))

(declare-fun res!1746335 () Bool)

(assert (=> b!4247825 (=> (not res!1746335) (not e!2638359))))

(assert (=> b!4247825 (= res!1746335 (not lt!1507942))))

(assert (= (and d!1249220 c!721418) b!4247817))

(assert (= (and d!1249220 (not c!721418)) b!4247819))

(assert (= (and d!1249220 c!721419) b!4247824))

(assert (= (and d!1249220 (not c!721419)) b!4247822))

(assert (= (and b!4247822 c!721420) b!4247820))

(assert (= (and b!4247822 (not c!721420)) b!4247823))

(assert (= (and b!4247823 (not res!1746330)) b!4247816))

(assert (= (and b!4247816 res!1746331) b!4247821))

(assert (= (and b!4247821 res!1746332) b!4247813))

(assert (= (and b!4247813 res!1746333) b!4247812))

(assert (= (and b!4247816 (not res!1746334)) b!4247825))

(assert (= (and b!4247825 res!1746335) b!4247818))

(assert (= (and b!4247818 (not res!1746337)) b!4247814))

(assert (= (and b!4247814 (not res!1746336)) b!4247815))

(assert (= (or b!4247824 b!4247818 b!4247821) bm!293920))

(assert (=> b!4247819 m!4832145))

(declare-fun m!4832601 () Bool)

(assert (=> b!4247819 m!4832601))

(assert (=> b!4247819 m!4832601))

(declare-fun m!4832603 () Bool)

(assert (=> b!4247819 m!4832603))

(assert (=> b!4247819 m!4832145))

(declare-fun m!4832605 () Bool)

(assert (=> b!4247819 m!4832605))

(assert (=> b!4247819 m!4832603))

(assert (=> b!4247819 m!4832605))

(declare-fun m!4832607 () Bool)

(assert (=> b!4247819 m!4832607))

(declare-fun m!4832609 () Bool)

(assert (=> b!4247817 m!4832609))

(assert (=> bm!293920 m!4832145))

(declare-fun m!4832611 () Bool)

(assert (=> bm!293920 m!4832611))

(assert (=> b!4247812 m!4832145))

(assert (=> b!4247812 m!4832601))

(assert (=> b!4247814 m!4832145))

(assert (=> b!4247814 m!4832605))

(assert (=> b!4247814 m!4832605))

(declare-fun m!4832613 () Bool)

(assert (=> b!4247814 m!4832613))

(assert (=> b!4247813 m!4832145))

(assert (=> b!4247813 m!4832605))

(assert (=> b!4247813 m!4832605))

(assert (=> b!4247813 m!4832613))

(assert (=> d!1249220 m!4832145))

(assert (=> d!1249220 m!4832611))

(declare-fun m!4832615 () Bool)

(assert (=> d!1249220 m!4832615))

(assert (=> b!4247815 m!4832145))

(assert (=> b!4247815 m!4832601))

(assert (=> b!4247390 d!1249220))

(assert (=> b!4247390 d!1249134))

(assert (=> b!4247390 d!1249150))

(assert (=> b!4247390 d!1249152))

(declare-fun d!1249222 () Bool)

(assert (=> d!1249222 (= (isEmpty!27827 (originalCharacters!8305 (h!52463 tokens!592))) (is-Nil!47042 (originalCharacters!8305 (h!52463 tokens!592))))))

(assert (=> d!1249080 d!1249222))

(declare-fun d!1249224 () Bool)

(declare-fun res!1746338 () Bool)

(declare-fun e!2638360 () Bool)

(assert (=> d!1249224 (=> (not res!1746338) (not e!2638360))))

(assert (=> d!1249224 (= res!1746338 (not (isEmpty!27827 (originalCharacters!8305 (h!52463 (t!351832 tokens!592))))))))

(assert (=> d!1249224 (= (inv!61806 (h!52463 (t!351832 tokens!592))) e!2638360)))

(declare-fun b!4247826 () Bool)

(declare-fun res!1746339 () Bool)

(assert (=> b!4247826 (=> (not res!1746339) (not e!2638360))))

(assert (=> b!4247826 (= res!1746339 (= (originalCharacters!8305 (h!52463 (t!351832 tokens!592))) (list!16945 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (value!247426 (h!52463 (t!351832 tokens!592)))))))))

(declare-fun b!4247827 () Bool)

(assert (=> b!4247827 (= e!2638360 (= (size!34442 (h!52463 (t!351832 tokens!592))) (size!34443 (originalCharacters!8305 (h!52463 (t!351832 tokens!592))))))))

(assert (= (and d!1249224 res!1746338) b!4247826))

(assert (= (and b!4247826 res!1746339) b!4247827))

(declare-fun b_lambda!125111 () Bool)

(assert (=> (not b_lambda!125111) (not b!4247826)))

(declare-fun t!351906 () Bool)

(declare-fun tb!255915 () Bool)

(assert (=> (and b!4247283 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) t!351906) tb!255915))

(declare-fun b!4247828 () Bool)

(declare-fun e!2638361 () Bool)

(declare-fun tp!1303139 () Bool)

(assert (=> b!4247828 (= e!2638361 (and (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (value!247426 (h!52463 (t!351832 tokens!592)))))) tp!1303139))))

(declare-fun result!312102 () Bool)

(assert (=> tb!255915 (= result!312102 (and (inv!61810 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (value!247426 (h!52463 (t!351832 tokens!592))))) e!2638361))))

(assert (= tb!255915 b!4247828))

(declare-fun m!4832617 () Bool)

(assert (=> b!4247828 m!4832617))

(declare-fun m!4832619 () Bool)

(assert (=> tb!255915 m!4832619))

(assert (=> b!4247826 t!351906))

(declare-fun b_and!336605 () Bool)

(assert (= b_and!336597 (and (=> t!351906 result!312102) b_and!336605)))

(declare-fun tb!255917 () Bool)

(declare-fun t!351908 () Bool)

(assert (=> (and b!4247276 (= (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) t!351908) tb!255917))

(declare-fun result!312104 () Bool)

(assert (= result!312104 result!312102))

(assert (=> b!4247826 t!351908))

(declare-fun b_and!336607 () Bool)

(assert (= b_and!336599 (and (=> t!351908 result!312104) b_and!336607)))

(declare-fun t!351910 () Bool)

(declare-fun tb!255919 () Bool)

(assert (=> (and b!4247507 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) t!351910) tb!255919))

(declare-fun result!312106 () Bool)

(assert (= result!312106 result!312102))

(assert (=> b!4247826 t!351910))

(declare-fun b_and!336609 () Bool)

(assert (= b_and!336601 (and (=> t!351910 result!312106) b_and!336609)))

(declare-fun tb!255921 () Bool)

(declare-fun t!351912 () Bool)

(assert (=> (and b!4247520 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) t!351912) tb!255921))

(declare-fun result!312108 () Bool)

(assert (= result!312108 result!312102))

(assert (=> b!4247826 t!351912))

(declare-fun b_and!336611 () Bool)

(assert (= b_and!336603 (and (=> t!351912 result!312108) b_and!336611)))

(declare-fun m!4832621 () Bool)

(assert (=> d!1249224 m!4832621))

(declare-fun m!4832623 () Bool)

(assert (=> b!4247826 m!4832623))

(assert (=> b!4247826 m!4832623))

(declare-fun m!4832625 () Bool)

(assert (=> b!4247826 m!4832625))

(declare-fun m!4832627 () Bool)

(assert (=> b!4247827 m!4832627))

(assert (=> b!4247504 d!1249224))

(declare-fun d!1249226 () Bool)

(declare-fun isBalanced!3763 (Conc!14172) Bool)

(assert (=> d!1249226 (= (inv!61810 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812))))) (isBalanced!3763 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812)))))))))

(declare-fun bs!598547 () Bool)

(assert (= bs!598547 d!1249226))

(declare-fun m!4832629 () Bool)

(assert (=> bs!598547 m!4832629))

(assert (=> tb!255851 d!1249226))

(declare-fun d!1249228 () Bool)

(declare-fun lt!1507943 () Int)

(assert (=> d!1249228 (>= lt!1507943 0)))

(declare-fun e!2638362 () Int)

(assert (=> d!1249228 (= lt!1507943 e!2638362)))

(declare-fun c!721421 () Bool)

(assert (=> d!1249228 (= c!721421 (is-Nil!47042 (originalCharacters!8305 (h!52463 tokens!592))))))

(assert (=> d!1249228 (= (size!34443 (originalCharacters!8305 (h!52463 tokens!592))) lt!1507943)))

(declare-fun b!4247829 () Bool)

(assert (=> b!4247829 (= e!2638362 0)))

(declare-fun b!4247830 () Bool)

(assert (=> b!4247830 (= e!2638362 (+ 1 (size!34443 (t!351831 (originalCharacters!8305 (h!52463 tokens!592))))))))

(assert (= (and d!1249228 c!721421) b!4247829))

(assert (= (and d!1249228 (not c!721421)) b!4247830))

(declare-fun m!4832631 () Bool)

(assert (=> b!4247830 m!4832631))

(assert (=> b!4247457 d!1249228))

(assert (=> b!4247379 d!1249164))

(assert (=> b!4247379 d!1249166))

(assert (=> b!4247379 d!1249146))

(declare-fun b!4247831 () Bool)

(declare-fun e!2638365 () Bool)

(assert (=> b!4247831 (= e!2638365 (= (head!8990 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))) (c!721336 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))))))

(declare-fun b!4247832 () Bool)

(declare-fun res!1746343 () Bool)

(assert (=> b!4247832 (=> (not res!1746343) (not e!2638365))))

(assert (=> b!4247832 (= res!1746343 (isEmpty!27827 (tail!6849 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838)))))))))

(declare-fun b!4247833 () Bool)

(declare-fun res!1746346 () Bool)

(declare-fun e!2638363 () Bool)

(assert (=> b!4247833 (=> res!1746346 e!2638363)))

(assert (=> b!4247833 (= res!1746346 (not (isEmpty!27827 (tail!6849 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))))))))

(declare-fun bm!293921 () Bool)

(declare-fun call!293926 () Bool)

(assert (=> bm!293921 (= call!293926 (isEmpty!27827 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))))))

(declare-fun b!4247834 () Bool)

(assert (=> b!4247834 (= e!2638363 (not (= (head!8990 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))) (c!721336 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))))))))

(declare-fun b!4247836 () Bool)

(declare-fun e!2638366 () Bool)

(assert (=> b!4247836 (= e!2638366 (nullable!4522 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))))))

(declare-fun b!4247837 () Bool)

(declare-fun e!2638369 () Bool)

(assert (=> b!4247837 (= e!2638369 e!2638363)))

(declare-fun res!1746347 () Bool)

(assert (=> b!4247837 (=> res!1746347 e!2638363)))

(assert (=> b!4247837 (= res!1746347 call!293926)))

(declare-fun b!4247838 () Bool)

(assert (=> b!4247838 (= e!2638366 (matchR!6462 (derivativeStep!3852 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))) (head!8990 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838)))))) (tail!6849 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838)))))))))

(declare-fun b!4247839 () Bool)

(declare-fun e!2638367 () Bool)

(declare-fun lt!1507944 () Bool)

(assert (=> b!4247839 (= e!2638367 (not lt!1507944))))

(declare-fun b!4247840 () Bool)

(declare-fun res!1746342 () Bool)

(assert (=> b!4247840 (=> (not res!1746342) (not e!2638365))))

(assert (=> b!4247840 (= res!1746342 (not call!293926))))

(declare-fun b!4247841 () Bool)

(declare-fun e!2638368 () Bool)

(assert (=> b!4247841 (= e!2638368 e!2638367)))

(declare-fun c!721424 () Bool)

(assert (=> b!4247841 (= c!721424 (is-EmptyLang!12866 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))))))

(declare-fun b!4247842 () Bool)

(declare-fun res!1746340 () Bool)

(declare-fun e!2638364 () Bool)

(assert (=> b!4247842 (=> res!1746340 e!2638364)))

(assert (=> b!4247842 (= res!1746340 (not (is-ElementMatch!12866 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))))))

(assert (=> b!4247842 (= e!2638367 e!2638364)))

(declare-fun d!1249230 () Bool)

(assert (=> d!1249230 e!2638368))

(declare-fun c!721423 () Bool)

(assert (=> d!1249230 (= c!721423 (is-EmptyExpr!12866 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838))))))))

(assert (=> d!1249230 (= lt!1507944 e!2638366)))

(declare-fun c!721422 () Bool)

(assert (=> d!1249230 (= c!721422 (isEmpty!27827 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))))))

(assert (=> d!1249230 (validRegex!5829 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))))

(assert (=> d!1249230 (= (matchR!6462 (regex!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))) (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507838))))) lt!1507944)))

(declare-fun b!4247835 () Bool)

(declare-fun res!1746344 () Bool)

(assert (=> b!4247835 (=> res!1746344 e!2638364)))

(assert (=> b!4247835 (= res!1746344 e!2638365)))

(declare-fun res!1746341 () Bool)

(assert (=> b!4247835 (=> (not res!1746341) (not e!2638365))))

(assert (=> b!4247835 (= res!1746341 lt!1507944)))

(declare-fun b!4247843 () Bool)

(assert (=> b!4247843 (= e!2638368 (= lt!1507944 call!293926))))

(declare-fun b!4247844 () Bool)

(assert (=> b!4247844 (= e!2638364 e!2638369)))

(declare-fun res!1746345 () Bool)

(assert (=> b!4247844 (=> (not res!1746345) (not e!2638369))))

(assert (=> b!4247844 (= res!1746345 (not lt!1507944))))

(assert (= (and d!1249230 c!721422) b!4247836))

(assert (= (and d!1249230 (not c!721422)) b!4247838))

(assert (= (and d!1249230 c!721423) b!4247843))

(assert (= (and d!1249230 (not c!721423)) b!4247841))

(assert (= (and b!4247841 c!721424) b!4247839))

(assert (= (and b!4247841 (not c!721424)) b!4247842))

(assert (= (and b!4247842 (not res!1746340)) b!4247835))

(assert (= (and b!4247835 res!1746341) b!4247840))

(assert (= (and b!4247840 res!1746342) b!4247832))

(assert (= (and b!4247832 res!1746343) b!4247831))

(assert (= (and b!4247835 (not res!1746344)) b!4247844))

(assert (= (and b!4247844 res!1746345) b!4247837))

(assert (= (and b!4247837 (not res!1746347)) b!4247833))

(assert (= (and b!4247833 (not res!1746346)) b!4247834))

(assert (= (or b!4247843 b!4247837 b!4247840) bm!293921))

(assert (=> b!4247838 m!4832113))

(declare-fun m!4832633 () Bool)

(assert (=> b!4247838 m!4832633))

(assert (=> b!4247838 m!4832633))

(declare-fun m!4832635 () Bool)

(assert (=> b!4247838 m!4832635))

(assert (=> b!4247838 m!4832113))

(declare-fun m!4832637 () Bool)

(assert (=> b!4247838 m!4832637))

(assert (=> b!4247838 m!4832635))

(assert (=> b!4247838 m!4832637))

(declare-fun m!4832639 () Bool)

(assert (=> b!4247838 m!4832639))

(declare-fun m!4832641 () Bool)

(assert (=> b!4247836 m!4832641))

(assert (=> bm!293921 m!4832113))

(declare-fun m!4832643 () Bool)

(assert (=> bm!293921 m!4832643))

(assert (=> b!4247831 m!4832113))

(assert (=> b!4247831 m!4832633))

(assert (=> b!4247833 m!4832113))

(assert (=> b!4247833 m!4832637))

(assert (=> b!4247833 m!4832637))

(declare-fun m!4832645 () Bool)

(assert (=> b!4247833 m!4832645))

(assert (=> b!4247832 m!4832113))

(assert (=> b!4247832 m!4832637))

(assert (=> b!4247832 m!4832637))

(assert (=> b!4247832 m!4832645))

(assert (=> d!1249230 m!4832113))

(assert (=> d!1249230 m!4832643))

(declare-fun m!4832647 () Bool)

(assert (=> d!1249230 m!4832647))

(assert (=> b!4247834 m!4832113))

(assert (=> b!4247834 m!4832633))

(assert (=> b!4247381 d!1249230))

(assert (=> b!4247381 d!1249146))

(assert (=> b!4247381 d!1249164))

(assert (=> b!4247381 d!1249166))

(declare-fun b!4247863 () Bool)

(declare-fun e!2638378 () Option!10095)

(assert (=> b!4247863 (= e!2638378 None!10094)))

(declare-fun d!1249232 () Bool)

(declare-fun e!2638379 () Bool)

(assert (=> d!1249232 e!2638379))

(declare-fun res!1746367 () Bool)

(assert (=> d!1249232 (=> res!1746367 e!2638379)))

(declare-fun lt!1507957 () Option!10095)

(assert (=> d!1249232 (= res!1746367 (isEmpty!27831 lt!1507957))))

(assert (=> d!1249232 (= lt!1507957 e!2638378)))

(declare-fun c!721427 () Bool)

(declare-datatypes ((tuple2!44610 0))(
  ( (tuple2!44611 (_1!25439 List!47166) (_2!25439 List!47166)) )
))
(declare-fun lt!1507955 () tuple2!44610)

(assert (=> d!1249232 (= c!721427 (isEmpty!27827 (_1!25439 lt!1507955)))))

(declare-fun findLongestMatch!1610 (Regex!12866 List!47166) tuple2!44610)

(assert (=> d!1249232 (= lt!1507955 (findLongestMatch!1610 (regex!7961 (h!52464 rules!2971)) longerInput!62))))

(assert (=> d!1249232 (ruleValid!3605 thiss!21641 (h!52464 rules!2971))))

(assert (=> d!1249232 (= (maxPrefixOneRule!3465 thiss!21641 (h!52464 rules!2971) longerInput!62) lt!1507957)))

(declare-fun b!4247864 () Bool)

(declare-fun res!1746365 () Bool)

(declare-fun e!2638381 () Bool)

(assert (=> b!4247864 (=> (not res!1746365) (not e!2638381))))

(assert (=> b!4247864 (= res!1746365 (= (value!247426 (_1!25435 (get!15278 lt!1507957))) (apply!10767 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507957)))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507957)))))))))

(declare-fun b!4247865 () Bool)

(assert (=> b!4247865 (= e!2638381 (= (size!34442 (_1!25435 (get!15278 lt!1507957))) (size!34443 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507957))))))))

(declare-fun b!4247866 () Bool)

(declare-fun size!34448 (BalanceConc!27938) Int)

(assert (=> b!4247866 (= e!2638378 (Some!10094 (tuple2!44603 (Token!14549 (apply!10767 (transformation!7961 (h!52464 rules!2971)) (seqFromList!5827 (_1!25439 lt!1507955))) (h!52464 rules!2971) (size!34448 (seqFromList!5827 (_1!25439 lt!1507955))) (_1!25439 lt!1507955)) (_2!25439 lt!1507955))))))

(declare-fun lt!1507959 () Unit!66043)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1670 (Regex!12866 List!47166) Unit!66043)

(assert (=> b!4247866 (= lt!1507959 (longestMatchIsAcceptedByMatchOrIsEmpty!1670 (regex!7961 (h!52464 rules!2971)) longerInput!62))))

(declare-fun res!1746366 () Bool)

(declare-fun findLongestMatchInner!1707 (Regex!12866 List!47166 Int List!47166 List!47166 Int) tuple2!44610)

(assert (=> b!4247866 (= res!1746366 (isEmpty!27827 (_1!25439 (findLongestMatchInner!1707 (regex!7961 (h!52464 rules!2971)) Nil!47042 (size!34443 Nil!47042) longerInput!62 longerInput!62 (size!34443 longerInput!62)))))))

(declare-fun e!2638380 () Bool)

(assert (=> b!4247866 (=> res!1746366 e!2638380)))

(assert (=> b!4247866 e!2638380))

(declare-fun lt!1507958 () Unit!66043)

(assert (=> b!4247866 (= lt!1507958 lt!1507959)))

(declare-fun lt!1507956 () Unit!66043)

(declare-fun lemmaSemiInverse!2538 (TokenValueInjection!15810 BalanceConc!27938) Unit!66043)

(assert (=> b!4247866 (= lt!1507956 (lemmaSemiInverse!2538 (transformation!7961 (h!52464 rules!2971)) (seqFromList!5827 (_1!25439 lt!1507955))))))

(declare-fun b!4247867 () Bool)

(assert (=> b!4247867 (= e!2638380 (matchR!6462 (regex!7961 (h!52464 rules!2971)) (_1!25439 (findLongestMatchInner!1707 (regex!7961 (h!52464 rules!2971)) Nil!47042 (size!34443 Nil!47042) longerInput!62 longerInput!62 (size!34443 longerInput!62)))))))

(declare-fun b!4247868 () Bool)

(assert (=> b!4247868 (= e!2638379 e!2638381)))

(declare-fun res!1746368 () Bool)

(assert (=> b!4247868 (=> (not res!1746368) (not e!2638381))))

(assert (=> b!4247868 (= res!1746368 (matchR!6462 (regex!7961 (h!52464 rules!2971)) (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507957))))))))

(declare-fun b!4247869 () Bool)

(declare-fun res!1746362 () Bool)

(assert (=> b!4247869 (=> (not res!1746362) (not e!2638381))))

(assert (=> b!4247869 (= res!1746362 (= (rule!11091 (_1!25435 (get!15278 lt!1507957))) (h!52464 rules!2971)))))

(declare-fun b!4247870 () Bool)

(declare-fun res!1746363 () Bool)

(assert (=> b!4247870 (=> (not res!1746363) (not e!2638381))))

(assert (=> b!4247870 (= res!1746363 (< (size!34443 (_2!25435 (get!15278 lt!1507957))) (size!34443 longerInput!62)))))

(declare-fun b!4247871 () Bool)

(declare-fun res!1746364 () Bool)

(assert (=> b!4247871 (=> (not res!1746364) (not e!2638381))))

(assert (=> b!4247871 (= res!1746364 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507957)))) (_2!25435 (get!15278 lt!1507957))) longerInput!62))))

(assert (= (and d!1249232 c!721427) b!4247863))

(assert (= (and d!1249232 (not c!721427)) b!4247866))

(assert (= (and b!4247866 (not res!1746366)) b!4247867))

(assert (= (and d!1249232 (not res!1746367)) b!4247868))

(assert (= (and b!4247868 res!1746368) b!4247871))

(assert (= (and b!4247871 res!1746364) b!4247870))

(assert (= (and b!4247870 res!1746363) b!4247869))

(assert (= (and b!4247869 res!1746362) b!4247864))

(assert (= (and b!4247864 res!1746365) b!4247865))

(declare-fun m!4832649 () Bool)

(assert (=> b!4247871 m!4832649))

(declare-fun m!4832651 () Bool)

(assert (=> b!4247871 m!4832651))

(assert (=> b!4247871 m!4832651))

(declare-fun m!4832653 () Bool)

(assert (=> b!4247871 m!4832653))

(assert (=> b!4247871 m!4832653))

(declare-fun m!4832655 () Bool)

(assert (=> b!4247871 m!4832655))

(assert (=> b!4247869 m!4832649))

(assert (=> b!4247864 m!4832649))

(declare-fun m!4832657 () Bool)

(assert (=> b!4247864 m!4832657))

(assert (=> b!4247864 m!4832657))

(declare-fun m!4832659 () Bool)

(assert (=> b!4247864 m!4832659))

(declare-fun m!4832661 () Bool)

(assert (=> b!4247866 m!4832661))

(declare-fun m!4832663 () Bool)

(assert (=> b!4247866 m!4832663))

(declare-fun m!4832665 () Bool)

(assert (=> b!4247866 m!4832665))

(assert (=> b!4247866 m!4832663))

(declare-fun m!4832667 () Bool)

(assert (=> b!4247866 m!4832667))

(declare-fun m!4832669 () Bool)

(assert (=> b!4247866 m!4832669))

(assert (=> b!4247866 m!4832663))

(declare-fun m!4832671 () Bool)

(assert (=> b!4247866 m!4832671))

(assert (=> b!4247866 m!4832663))

(declare-fun m!4832673 () Bool)

(assert (=> b!4247866 m!4832673))

(assert (=> b!4247866 m!4832035))

(assert (=> b!4247866 m!4832669))

(assert (=> b!4247866 m!4832035))

(declare-fun m!4832675 () Bool)

(assert (=> b!4247866 m!4832675))

(assert (=> b!4247867 m!4832669))

(assert (=> b!4247867 m!4832035))

(assert (=> b!4247867 m!4832669))

(assert (=> b!4247867 m!4832035))

(assert (=> b!4247867 m!4832675))

(declare-fun m!4832677 () Bool)

(assert (=> b!4247867 m!4832677))

(assert (=> b!4247868 m!4832649))

(assert (=> b!4247868 m!4832651))

(assert (=> b!4247868 m!4832651))

(assert (=> b!4247868 m!4832653))

(assert (=> b!4247868 m!4832653))

(declare-fun m!4832679 () Bool)

(assert (=> b!4247868 m!4832679))

(declare-fun m!4832681 () Bool)

(assert (=> d!1249232 m!4832681))

(declare-fun m!4832683 () Bool)

(assert (=> d!1249232 m!4832683))

(declare-fun m!4832685 () Bool)

(assert (=> d!1249232 m!4832685))

(assert (=> d!1249232 m!4832543))

(assert (=> b!4247865 m!4832649))

(declare-fun m!4832687 () Bool)

(assert (=> b!4247865 m!4832687))

(assert (=> b!4247870 m!4832649))

(declare-fun m!4832689 () Bool)

(assert (=> b!4247870 m!4832689))

(assert (=> b!4247870 m!4832035))

(assert (=> bm!293911 d!1249232))

(declare-fun d!1249234 () Bool)

(declare-fun c!721430 () Bool)

(assert (=> d!1249234 (= c!721430 (is-Nil!47042 lt!1507860))))

(declare-fun e!2638384 () (Set C!25930))

(assert (=> d!1249234 (= (content!7391 lt!1507860) e!2638384)))

(declare-fun b!4247876 () Bool)

(assert (=> b!4247876 (= e!2638384 (as set.empty (Set C!25930)))))

(declare-fun b!4247877 () Bool)

(assert (=> b!4247877 (= e!2638384 (set.union (set.insert (h!52462 lt!1507860) (as set.empty (Set C!25930))) (content!7391 (t!351831 lt!1507860))))))

(assert (= (and d!1249234 c!721430) b!4247876))

(assert (= (and d!1249234 (not c!721430)) b!4247877))

(declare-fun m!4832691 () Bool)

(assert (=> b!4247877 m!4832691))

(declare-fun m!4832693 () Bool)

(assert (=> b!4247877 m!4832693))

(assert (=> d!1249068 d!1249234))

(declare-fun d!1249236 () Bool)

(declare-fun c!721431 () Bool)

(assert (=> d!1249236 (= c!721431 (is-Nil!47042 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))

(declare-fun e!2638385 () (Set C!25930))

(assert (=> d!1249236 (= (content!7391 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) e!2638385)))

(declare-fun b!4247878 () Bool)

(assert (=> b!4247878 (= e!2638385 (as set.empty (Set C!25930)))))

(declare-fun b!4247879 () Bool)

(assert (=> b!4247879 (= e!2638385 (set.union (set.insert (h!52462 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) (as set.empty (Set C!25930))) (content!7391 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))))

(assert (= (and d!1249236 c!721431) b!4247878))

(assert (= (and d!1249236 (not c!721431)) b!4247879))

(declare-fun m!4832695 () Bool)

(assert (=> b!4247879 m!4832695))

(assert (=> b!4247879 m!4832553))

(assert (=> d!1249068 d!1249236))

(declare-fun d!1249238 () Bool)

(declare-fun c!721432 () Bool)

(assert (=> d!1249238 (= c!721432 (is-Nil!47042 (_2!25435 (v!41048 lt!1507812))))))

(declare-fun e!2638386 () (Set C!25930))

(assert (=> d!1249238 (= (content!7391 (_2!25435 (v!41048 lt!1507812))) e!2638386)))

(declare-fun b!4247880 () Bool)

(assert (=> b!4247880 (= e!2638386 (as set.empty (Set C!25930)))))

(declare-fun b!4247881 () Bool)

(assert (=> b!4247881 (= e!2638386 (set.union (set.insert (h!52462 (_2!25435 (v!41048 lt!1507812))) (as set.empty (Set C!25930))) (content!7391 (t!351831 (_2!25435 (v!41048 lt!1507812))))))))

(assert (= (and d!1249238 c!721432) b!4247880))

(assert (= (and d!1249238 (not c!721432)) b!4247881))

(declare-fun m!4832697 () Bool)

(assert (=> b!4247881 m!4832697))

(declare-fun m!4832699 () Bool)

(assert (=> b!4247881 m!4832699))

(assert (=> d!1249068 d!1249238))

(declare-fun d!1249240 () Bool)

(assert (=> d!1249240 (= (inv!61802 (tag!8825 (rule!11091 (h!52463 (t!351832 tokens!592))))) (= (mod (str.len (value!247425 (tag!8825 (rule!11091 (h!52463 (t!351832 tokens!592)))))) 2) 0))))

(assert (=> b!4247506 d!1249240))

(declare-fun d!1249242 () Bool)

(declare-fun res!1746369 () Bool)

(declare-fun e!2638387 () Bool)

(assert (=> d!1249242 (=> (not res!1746369) (not e!2638387))))

(assert (=> d!1249242 (= res!1746369 (semiInverseModEq!3468 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toValue!10725 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))))))

(assert (=> d!1249242 (= (inv!61805 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) e!2638387)))

(declare-fun b!4247882 () Bool)

(assert (=> b!4247882 (= e!2638387 (equivClasses!3367 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toValue!10725 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))))))

(assert (= (and d!1249242 res!1746369) b!4247882))

(declare-fun m!4832701 () Bool)

(assert (=> d!1249242 m!4832701))

(declare-fun m!4832703 () Bool)

(assert (=> b!4247882 m!4832703))

(assert (=> b!4247506 d!1249242))

(declare-fun d!1249244 () Bool)

(assert (=> d!1249244 (= (inv!61810 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))) (isBalanced!3763 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))))))

(declare-fun bs!598548 () Bool)

(assert (= bs!598548 d!1249244))

(declare-fun m!4832705 () Bool)

(assert (=> bs!598548 m!4832705))

(assert (=> tb!255855 d!1249244))

(declare-fun b!4247883 () Bool)

(declare-fun e!2638388 () Option!10095)

(assert (=> b!4247883 (= e!2638388 None!10094)))

(declare-fun d!1249246 () Bool)

(declare-fun e!2638389 () Bool)

(assert (=> d!1249246 e!2638389))

(declare-fun res!1746375 () Bool)

(assert (=> d!1249246 (=> res!1746375 e!2638389)))

(declare-fun lt!1507962 () Option!10095)

(assert (=> d!1249246 (= res!1746375 (isEmpty!27831 lt!1507962))))

(assert (=> d!1249246 (= lt!1507962 e!2638388)))

(declare-fun c!721433 () Bool)

(declare-fun lt!1507960 () tuple2!44610)

(assert (=> d!1249246 (= c!721433 (isEmpty!27827 (_1!25439 lt!1507960)))))

(assert (=> d!1249246 (= lt!1507960 (findLongestMatch!1610 (regex!7961 (h!52464 rules!2971)) shorterInput!62))))

(assert (=> d!1249246 (ruleValid!3605 thiss!21641 (h!52464 rules!2971))))

(assert (=> d!1249246 (= (maxPrefixOneRule!3465 thiss!21641 (h!52464 rules!2971) shorterInput!62) lt!1507962)))

(declare-fun b!4247884 () Bool)

(declare-fun res!1746373 () Bool)

(declare-fun e!2638391 () Bool)

(assert (=> b!4247884 (=> (not res!1746373) (not e!2638391))))

(assert (=> b!4247884 (= res!1746373 (= (value!247426 (_1!25435 (get!15278 lt!1507962))) (apply!10767 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507962)))) (seqFromList!5827 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507962)))))))))

(declare-fun b!4247885 () Bool)

(assert (=> b!4247885 (= e!2638391 (= (size!34442 (_1!25435 (get!15278 lt!1507962))) (size!34443 (originalCharacters!8305 (_1!25435 (get!15278 lt!1507962))))))))

(declare-fun b!4247886 () Bool)

(assert (=> b!4247886 (= e!2638388 (Some!10094 (tuple2!44603 (Token!14549 (apply!10767 (transformation!7961 (h!52464 rules!2971)) (seqFromList!5827 (_1!25439 lt!1507960))) (h!52464 rules!2971) (size!34448 (seqFromList!5827 (_1!25439 lt!1507960))) (_1!25439 lt!1507960)) (_2!25439 lt!1507960))))))

(declare-fun lt!1507964 () Unit!66043)

(assert (=> b!4247886 (= lt!1507964 (longestMatchIsAcceptedByMatchOrIsEmpty!1670 (regex!7961 (h!52464 rules!2971)) shorterInput!62))))

(declare-fun res!1746374 () Bool)

(assert (=> b!4247886 (= res!1746374 (isEmpty!27827 (_1!25439 (findLongestMatchInner!1707 (regex!7961 (h!52464 rules!2971)) Nil!47042 (size!34443 Nil!47042) shorterInput!62 shorterInput!62 (size!34443 shorterInput!62)))))))

(declare-fun e!2638390 () Bool)

(assert (=> b!4247886 (=> res!1746374 e!2638390)))

(assert (=> b!4247886 e!2638390))

(declare-fun lt!1507963 () Unit!66043)

(assert (=> b!4247886 (= lt!1507963 lt!1507964)))

(declare-fun lt!1507961 () Unit!66043)

(assert (=> b!4247886 (= lt!1507961 (lemmaSemiInverse!2538 (transformation!7961 (h!52464 rules!2971)) (seqFromList!5827 (_1!25439 lt!1507960))))))

(declare-fun b!4247887 () Bool)

(assert (=> b!4247887 (= e!2638390 (matchR!6462 (regex!7961 (h!52464 rules!2971)) (_1!25439 (findLongestMatchInner!1707 (regex!7961 (h!52464 rules!2971)) Nil!47042 (size!34443 Nil!47042) shorterInput!62 shorterInput!62 (size!34443 shorterInput!62)))))))

(declare-fun b!4247888 () Bool)

(assert (=> b!4247888 (= e!2638389 e!2638391)))

(declare-fun res!1746376 () Bool)

(assert (=> b!4247888 (=> (not res!1746376) (not e!2638391))))

(assert (=> b!4247888 (= res!1746376 (matchR!6462 (regex!7961 (h!52464 rules!2971)) (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507962))))))))

(declare-fun b!4247889 () Bool)

(declare-fun res!1746370 () Bool)

(assert (=> b!4247889 (=> (not res!1746370) (not e!2638391))))

(assert (=> b!4247889 (= res!1746370 (= (rule!11091 (_1!25435 (get!15278 lt!1507962))) (h!52464 rules!2971)))))

(declare-fun b!4247890 () Bool)

(declare-fun res!1746371 () Bool)

(assert (=> b!4247890 (=> (not res!1746371) (not e!2638391))))

(assert (=> b!4247890 (= res!1746371 (< (size!34443 (_2!25435 (get!15278 lt!1507962))) (size!34443 shorterInput!62)))))

(declare-fun b!4247891 () Bool)

(declare-fun res!1746372 () Bool)

(assert (=> b!4247891 (=> (not res!1746372) (not e!2638391))))

(assert (=> b!4247891 (= res!1746372 (= (++!11972 (list!16945 (charsOf!5303 (_1!25435 (get!15278 lt!1507962)))) (_2!25435 (get!15278 lt!1507962))) shorterInput!62))))

(assert (= (and d!1249246 c!721433) b!4247883))

(assert (= (and d!1249246 (not c!721433)) b!4247886))

(assert (= (and b!4247886 (not res!1746374)) b!4247887))

(assert (= (and d!1249246 (not res!1746375)) b!4247888))

(assert (= (and b!4247888 res!1746376) b!4247891))

(assert (= (and b!4247891 res!1746372) b!4247890))

(assert (= (and b!4247890 res!1746371) b!4247889))

(assert (= (and b!4247889 res!1746370) b!4247884))

(assert (= (and b!4247884 res!1746373) b!4247885))

(declare-fun m!4832707 () Bool)

(assert (=> b!4247891 m!4832707))

(declare-fun m!4832709 () Bool)

(assert (=> b!4247891 m!4832709))

(assert (=> b!4247891 m!4832709))

(declare-fun m!4832711 () Bool)

(assert (=> b!4247891 m!4832711))

(assert (=> b!4247891 m!4832711))

(declare-fun m!4832713 () Bool)

(assert (=> b!4247891 m!4832713))

(assert (=> b!4247889 m!4832707))

(assert (=> b!4247884 m!4832707))

(declare-fun m!4832715 () Bool)

(assert (=> b!4247884 m!4832715))

(assert (=> b!4247884 m!4832715))

(declare-fun m!4832717 () Bool)

(assert (=> b!4247884 m!4832717))

(declare-fun m!4832719 () Bool)

(assert (=> b!4247886 m!4832719))

(declare-fun m!4832721 () Bool)

(assert (=> b!4247886 m!4832721))

(declare-fun m!4832723 () Bool)

(assert (=> b!4247886 m!4832723))

(assert (=> b!4247886 m!4832721))

(declare-fun m!4832725 () Bool)

(assert (=> b!4247886 m!4832725))

(assert (=> b!4247886 m!4832669))

(assert (=> b!4247886 m!4832721))

(declare-fun m!4832727 () Bool)

(assert (=> b!4247886 m!4832727))

(assert (=> b!4247886 m!4832721))

(declare-fun m!4832729 () Bool)

(assert (=> b!4247886 m!4832729))

(assert (=> b!4247886 m!4832037))

(assert (=> b!4247886 m!4832669))

(assert (=> b!4247886 m!4832037))

(declare-fun m!4832731 () Bool)

(assert (=> b!4247886 m!4832731))

(assert (=> b!4247887 m!4832669))

(assert (=> b!4247887 m!4832037))

(assert (=> b!4247887 m!4832669))

(assert (=> b!4247887 m!4832037))

(assert (=> b!4247887 m!4832731))

(declare-fun m!4832733 () Bool)

(assert (=> b!4247887 m!4832733))

(assert (=> b!4247888 m!4832707))

(assert (=> b!4247888 m!4832709))

(assert (=> b!4247888 m!4832709))

(assert (=> b!4247888 m!4832711))

(assert (=> b!4247888 m!4832711))

(declare-fun m!4832735 () Bool)

(assert (=> b!4247888 m!4832735))

(declare-fun m!4832737 () Bool)

(assert (=> d!1249246 m!4832737))

(declare-fun m!4832739 () Bool)

(assert (=> d!1249246 m!4832739))

(declare-fun m!4832741 () Bool)

(assert (=> d!1249246 m!4832741))

(assert (=> d!1249246 m!4832543))

(assert (=> b!4247885 m!4832707))

(declare-fun m!4832743 () Bool)

(assert (=> b!4247885 m!4832743))

(assert (=> b!4247890 m!4832707))

(declare-fun m!4832745 () Bool)

(assert (=> b!4247890 m!4832745))

(assert (=> b!4247890 m!4832037))

(assert (=> bm!293910 d!1249246))

(declare-fun d!1249250 () Bool)

(declare-fun lt!1507965 () Int)

(assert (=> d!1249250 (>= lt!1507965 0)))

(declare-fun e!2638392 () Int)

(assert (=> d!1249250 (= lt!1507965 e!2638392)))

(declare-fun c!721434 () Bool)

(assert (=> d!1249250 (= c!721434 (is-Nil!47042 (t!351831 longerInput!62)))))

(assert (=> d!1249250 (= (size!34443 (t!351831 longerInput!62)) lt!1507965)))

(declare-fun b!4247892 () Bool)

(assert (=> b!4247892 (= e!2638392 0)))

(declare-fun b!4247893 () Bool)

(assert (=> b!4247893 (= e!2638392 (+ 1 (size!34443 (t!351831 (t!351831 longerInput!62)))))))

(assert (= (and d!1249250 c!721434) b!4247892))

(assert (= (and d!1249250 (not c!721434)) b!4247893))

(declare-fun m!4832747 () Bool)

(assert (=> b!4247893 m!4832747))

(assert (=> b!4247399 d!1249250))

(declare-fun d!1249252 () Bool)

(declare-fun lt!1507966 () Int)

(assert (=> d!1249252 (>= lt!1507966 0)))

(declare-fun e!2638393 () Int)

(assert (=> d!1249252 (= lt!1507966 e!2638393)))

(declare-fun c!721435 () Bool)

(assert (=> d!1249252 (= c!721435 (is-Nil!47042 lt!1507860))))

(assert (=> d!1249252 (= (size!34443 lt!1507860) lt!1507966)))

(declare-fun b!4247894 () Bool)

(assert (=> b!4247894 (= e!2638393 0)))

(declare-fun b!4247895 () Bool)

(assert (=> b!4247895 (= e!2638393 (+ 1 (size!34443 (t!351831 lt!1507860))))))

(assert (= (and d!1249252 c!721435) b!4247894))

(assert (= (and d!1249252 (not c!721435)) b!4247895))

(declare-fun m!4832751 () Bool)

(assert (=> b!4247895 m!4832751))

(assert (=> b!4247431 d!1249252))

(declare-fun d!1249254 () Bool)

(declare-fun lt!1507967 () Int)

(assert (=> d!1249254 (>= lt!1507967 0)))

(declare-fun e!2638394 () Int)

(assert (=> d!1249254 (= lt!1507967 e!2638394)))

(declare-fun c!721436 () Bool)

(assert (=> d!1249254 (= c!721436 (is-Nil!47042 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))

(assert (=> d!1249254 (= (size!34443 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))) lt!1507967)))

(declare-fun b!4247896 () Bool)

(assert (=> b!4247896 (= e!2638394 0)))

(declare-fun b!4247897 () Bool)

(assert (=> b!4247897 (= e!2638394 (+ 1 (size!34443 (t!351831 (list!16945 (charsOf!5303 (_1!25435 (v!41048 lt!1507812))))))))))

(assert (= (and d!1249254 c!721436) b!4247896))

(assert (= (and d!1249254 (not c!721436)) b!4247897))

(assert (=> b!4247897 m!4832549))

(assert (=> b!4247431 d!1249254))

(declare-fun d!1249258 () Bool)

(declare-fun lt!1507968 () Int)

(assert (=> d!1249258 (>= lt!1507968 0)))

(declare-fun e!2638395 () Int)

(assert (=> d!1249258 (= lt!1507968 e!2638395)))

(declare-fun c!721437 () Bool)

(assert (=> d!1249258 (= c!721437 (is-Nil!47042 (_2!25435 (v!41048 lt!1507812))))))

(assert (=> d!1249258 (= (size!34443 (_2!25435 (v!41048 lt!1507812))) lt!1507968)))

(declare-fun b!4247898 () Bool)

(assert (=> b!4247898 (= e!2638395 0)))

(declare-fun b!4247899 () Bool)

(assert (=> b!4247899 (= e!2638395 (+ 1 (size!34443 (t!351831 (_2!25435 (v!41048 lt!1507812))))))))

(assert (= (and d!1249258 c!721437) b!4247898))

(assert (= (and d!1249258 (not c!721437)) b!4247899))

(declare-fun m!4832753 () Bool)

(assert (=> b!4247899 m!4832753))

(assert (=> b!4247431 d!1249258))

(declare-fun b!4247903 () Bool)

(declare-fun e!2638396 () Bool)

(declare-fun tp!1303140 () Bool)

(declare-fun tp!1303142 () Bool)

(assert (=> b!4247903 (= e!2638396 (and tp!1303140 tp!1303142))))

(declare-fun b!4247900 () Bool)

(assert (=> b!4247900 (= e!2638396 tp_is_empty!22723)))

(declare-fun b!4247901 () Bool)

(declare-fun tp!1303143 () Bool)

(declare-fun tp!1303141 () Bool)

(assert (=> b!4247901 (= e!2638396 (and tp!1303143 tp!1303141))))

(assert (=> b!4247506 (= tp!1303059 e!2638396)))

(declare-fun b!4247902 () Bool)

(declare-fun tp!1303144 () Bool)

(assert (=> b!4247902 (= e!2638396 tp!1303144)))

(assert (= (and b!4247506 (is-ElementMatch!12866 (regex!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) b!4247900))

(assert (= (and b!4247506 (is-Concat!21058 (regex!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) b!4247901))

(assert (= (and b!4247506 (is-Star!12866 (regex!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) b!4247902))

(assert (= (and b!4247506 (is-Union!12866 (regex!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) b!4247903))

(declare-fun b!4247907 () Bool)

(declare-fun e!2638397 () Bool)

(declare-fun tp!1303145 () Bool)

(declare-fun tp!1303147 () Bool)

(assert (=> b!4247907 (= e!2638397 (and tp!1303145 tp!1303147))))

(declare-fun b!4247904 () Bool)

(assert (=> b!4247904 (= e!2638397 tp_is_empty!22723)))

(declare-fun b!4247905 () Bool)

(declare-fun tp!1303148 () Bool)

(declare-fun tp!1303146 () Bool)

(assert (=> b!4247905 (= e!2638397 (and tp!1303148 tp!1303146))))

(assert (=> b!4247519 (= tp!1303074 e!2638397)))

(declare-fun b!4247906 () Bool)

(declare-fun tp!1303149 () Bool)

(assert (=> b!4247906 (= e!2638397 tp!1303149)))

(assert (= (and b!4247519 (is-ElementMatch!12866 (regex!7961 (h!52464 (t!351833 rules!2971))))) b!4247904))

(assert (= (and b!4247519 (is-Concat!21058 (regex!7961 (h!52464 (t!351833 rules!2971))))) b!4247905))

(assert (= (and b!4247519 (is-Star!12866 (regex!7961 (h!52464 (t!351833 rules!2971))))) b!4247906))

(assert (= (and b!4247519 (is-Union!12866 (regex!7961 (h!52464 (t!351833 rules!2971))))) b!4247907))

(declare-fun b!4247910 () Bool)

(declare-fun b_free!126187 () Bool)

(declare-fun b_next!126891 () Bool)

(assert (=> b!4247910 (= b_free!126187 (not b_next!126891))))

(declare-fun t!351914 () Bool)

(declare-fun tb!255923 () Bool)

(assert (=> (and b!4247910 (= (toValue!10725 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351914) tb!255923))

(declare-fun result!312110 () Bool)

(assert (= result!312110 result!312068))

(assert (=> d!1249136 t!351914))

(declare-fun tb!255925 () Bool)

(declare-fun t!351916 () Bool)

(assert (=> (and b!4247910 (= (toValue!10725 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351916) tb!255925))

(declare-fun result!312112 () Bool)

(assert (= result!312112 result!312086))

(assert (=> d!1249156 t!351916))

(declare-fun tp!1303152 () Bool)

(declare-fun b_and!336613 () Bool)

(assert (=> b!4247910 (= tp!1303152 (and (=> t!351914 result!312110) (=> t!351916 result!312112) b_and!336613))))

(declare-fun b_free!126189 () Bool)

(declare-fun b_next!126893 () Bool)

(assert (=> b!4247910 (= b_free!126189 (not b_next!126893))))

(declare-fun t!351918 () Bool)

(declare-fun tb!255927 () Bool)

(assert (=> (and b!4247910 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812)))))) t!351918) tb!255927))

(declare-fun result!312114 () Bool)

(assert (= result!312114 result!312016))

(assert (=> d!1249072 t!351918))

(declare-fun t!351920 () Bool)

(declare-fun tb!255929 () Bool)

(assert (=> (and b!4247910 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) t!351920) tb!255929))

(declare-fun result!312116 () Bool)

(assert (= result!312116 result!312022))

(assert (=> b!4247456 t!351920))

(declare-fun tb!255931 () Bool)

(declare-fun t!351922 () Bool)

(assert (=> (and b!4247910 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) t!351922) tb!255931))

(declare-fun result!312118 () Bool)

(assert (= result!312118 result!312102))

(assert (=> b!4247826 t!351922))

(declare-fun t!351924 () Bool)

(declare-fun tb!255933 () Bool)

(assert (=> (and b!4247910 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351924) tb!255933))

(declare-fun result!312120 () Bool)

(assert (= result!312120 result!312078))

(assert (=> d!1249152 t!351924))

(declare-fun t!351926 () Bool)

(declare-fun tb!255935 () Bool)

(assert (=> (and b!4247910 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351926) tb!255935))

(declare-fun result!312122 () Bool)

(assert (= result!312122 result!312094))

(assert (=> d!1249166 t!351926))

(declare-fun tp!1303151 () Bool)

(declare-fun b_and!336615 () Bool)

(assert (=> b!4247910 (= tp!1303151 (and (=> t!351922 result!312118) (=> t!351918 result!312114) (=> t!351924 result!312120) (=> t!351920 result!312116) (=> t!351926 result!312122) b_and!336615))))

(declare-fun e!2638399 () Bool)

(assert (=> b!4247910 (= e!2638399 (and tp!1303152 tp!1303151))))

(declare-fun b!4247909 () Bool)

(declare-fun tp!1303150 () Bool)

(declare-fun e!2638400 () Bool)

(assert (=> b!4247909 (= e!2638400 (and tp!1303150 (inv!61802 (tag!8825 (h!52464 (t!351833 (t!351833 rules!2971))))) (inv!61805 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) e!2638399))))

(declare-fun b!4247908 () Bool)

(declare-fun e!2638398 () Bool)

(declare-fun tp!1303153 () Bool)

(assert (=> b!4247908 (= e!2638398 (and e!2638400 tp!1303153))))

(assert (=> b!4247518 (= tp!1303077 e!2638398)))

(assert (= b!4247909 b!4247910))

(assert (= b!4247908 b!4247909))

(assert (= (and b!4247518 (is-Cons!47044 (t!351833 (t!351833 rules!2971)))) b!4247908))

(declare-fun m!4832755 () Bool)

(assert (=> b!4247909 m!4832755))

(declare-fun m!4832757 () Bool)

(assert (=> b!4247909 m!4832757))

(declare-fun tp!1303160 () Bool)

(declare-fun b!4247925 () Bool)

(declare-fun tp!1303162 () Bool)

(declare-fun e!2638412 () Bool)

(assert (=> b!4247925 (= e!2638412 (and (inv!61809 (left!34907 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812))))))) tp!1303160 (inv!61809 (right!35237 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812))))))) tp!1303162))))

(declare-fun b!4247927 () Bool)

(declare-fun e!2638413 () Bool)

(declare-fun tp!1303161 () Bool)

(assert (=> b!4247927 (= e!2638413 tp!1303161)))

(declare-fun b!4247926 () Bool)

(declare-fun inv!61815 (IArray!28349) Bool)

(assert (=> b!4247926 (= e!2638412 (and (inv!61815 (xs!17478 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812))))))) e!2638413))))

(assert (=> b!4247443 (= tp!1303025 (and (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812)))))) e!2638412))))

(assert (= (and b!4247443 (is-Node!14172 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812))))))) b!4247925))

(assert (= b!4247926 b!4247927))

(assert (= (and b!4247443 (is-Leaf!21912 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))) (value!247426 (_1!25435 (v!41048 lt!1507812))))))) b!4247926))

(declare-fun m!4832765 () Bool)

(assert (=> b!4247925 m!4832765))

(declare-fun m!4832767 () Bool)

(assert (=> b!4247925 m!4832767))

(declare-fun m!4832769 () Bool)

(assert (=> b!4247926 m!4832769))

(assert (=> b!4247443 m!4832195))

(declare-fun b!4247928 () Bool)

(declare-fun e!2638414 () Bool)

(declare-fun tp!1303163 () Bool)

(assert (=> b!4247928 (= e!2638414 (and tp_is_empty!22723 tp!1303163))))

(assert (=> b!4247473 (= tp!1303029 e!2638414)))

(assert (= (and b!4247473 (is-Cons!47042 (t!351831 (originalCharacters!8305 (h!52463 tokens!592))))) b!4247928))

(declare-fun b!4247929 () Bool)

(declare-fun e!2638415 () Bool)

(declare-fun tp!1303164 () Bool)

(assert (=> b!4247929 (= e!2638415 (and tp_is_empty!22723 tp!1303164))))

(assert (=> b!4247508 (= tp!1303064 e!2638415)))

(assert (= (and b!4247508 (is-Cons!47042 (t!351831 (t!351831 shorterInput!62)))) b!4247929))

(declare-fun b!4247933 () Bool)

(declare-fun e!2638416 () Bool)

(declare-fun tp!1303165 () Bool)

(declare-fun tp!1303167 () Bool)

(assert (=> b!4247933 (= e!2638416 (and tp!1303165 tp!1303167))))

(declare-fun b!4247930 () Bool)

(assert (=> b!4247930 (= e!2638416 tp_is_empty!22723)))

(declare-fun b!4247931 () Bool)

(declare-fun tp!1303168 () Bool)

(declare-fun tp!1303166 () Bool)

(assert (=> b!4247931 (= e!2638416 (and tp!1303168 tp!1303166))))

(assert (=> b!4247490 (= tp!1303046 e!2638416)))

(declare-fun b!4247932 () Bool)

(declare-fun tp!1303169 () Bool)

(assert (=> b!4247932 (= e!2638416 tp!1303169)))

(assert (= (and b!4247490 (is-ElementMatch!12866 (regOne!26244 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247930))

(assert (= (and b!4247490 (is-Concat!21058 (regOne!26244 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247931))

(assert (= (and b!4247490 (is-Star!12866 (regOne!26244 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247932))

(assert (= (and b!4247490 (is-Union!12866 (regOne!26244 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247933))

(declare-fun b!4247937 () Bool)

(declare-fun e!2638417 () Bool)

(declare-fun tp!1303170 () Bool)

(declare-fun tp!1303172 () Bool)

(assert (=> b!4247937 (= e!2638417 (and tp!1303170 tp!1303172))))

(declare-fun b!4247934 () Bool)

(assert (=> b!4247934 (= e!2638417 tp_is_empty!22723)))

(declare-fun b!4247935 () Bool)

(declare-fun tp!1303173 () Bool)

(declare-fun tp!1303171 () Bool)

(assert (=> b!4247935 (= e!2638417 (and tp!1303173 tp!1303171))))

(assert (=> b!4247490 (= tp!1303044 e!2638417)))

(declare-fun b!4247936 () Bool)

(declare-fun tp!1303174 () Bool)

(assert (=> b!4247936 (= e!2638417 tp!1303174)))

(assert (= (and b!4247490 (is-ElementMatch!12866 (regTwo!26244 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247934))

(assert (= (and b!4247490 (is-Concat!21058 (regTwo!26244 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247935))

(assert (= (and b!4247490 (is-Star!12866 (regTwo!26244 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247936))

(assert (= (and b!4247490 (is-Union!12866 (regTwo!26244 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247937))

(declare-fun b!4247938 () Bool)

(declare-fun e!2638418 () Bool)

(declare-fun tp!1303175 () Bool)

(assert (=> b!4247938 (= e!2638418 (and tp_is_empty!22723 tp!1303175))))

(assert (=> b!4247474 (= tp!1303030 e!2638418)))

(assert (= (and b!4247474 (is-Cons!47042 (t!351831 (t!351831 longerInput!62)))) b!4247938))

(declare-fun b!4247942 () Bool)

(declare-fun e!2638419 () Bool)

(declare-fun tp!1303176 () Bool)

(declare-fun tp!1303178 () Bool)

(assert (=> b!4247942 (= e!2638419 (and tp!1303176 tp!1303178))))

(declare-fun b!4247939 () Bool)

(assert (=> b!4247939 (= e!2638419 tp_is_empty!22723)))

(declare-fun b!4247940 () Bool)

(declare-fun tp!1303179 () Bool)

(declare-fun tp!1303177 () Bool)

(assert (=> b!4247940 (= e!2638419 (and tp!1303179 tp!1303177))))

(assert (=> b!4247522 (= tp!1303081 e!2638419)))

(declare-fun b!4247941 () Bool)

(declare-fun tp!1303180 () Bool)

(assert (=> b!4247941 (= e!2638419 tp!1303180)))

(assert (= (and b!4247522 (is-ElementMatch!12866 (regOne!26244 (regex!7961 (h!52464 rules!2971))))) b!4247939))

(assert (= (and b!4247522 (is-Concat!21058 (regOne!26244 (regex!7961 (h!52464 rules!2971))))) b!4247940))

(assert (= (and b!4247522 (is-Star!12866 (regOne!26244 (regex!7961 (h!52464 rules!2971))))) b!4247941))

(assert (= (and b!4247522 (is-Union!12866 (regOne!26244 (regex!7961 (h!52464 rules!2971))))) b!4247942))

(declare-fun b!4247946 () Bool)

(declare-fun e!2638420 () Bool)

(declare-fun tp!1303181 () Bool)

(declare-fun tp!1303183 () Bool)

(assert (=> b!4247946 (= e!2638420 (and tp!1303181 tp!1303183))))

(declare-fun b!4247943 () Bool)

(assert (=> b!4247943 (= e!2638420 tp_is_empty!22723)))

(declare-fun b!4247944 () Bool)

(declare-fun tp!1303184 () Bool)

(declare-fun tp!1303182 () Bool)

(assert (=> b!4247944 (= e!2638420 (and tp!1303184 tp!1303182))))

(assert (=> b!4247522 (= tp!1303079 e!2638420)))

(declare-fun b!4247945 () Bool)

(declare-fun tp!1303185 () Bool)

(assert (=> b!4247945 (= e!2638420 tp!1303185)))

(assert (= (and b!4247522 (is-ElementMatch!12866 (regTwo!26244 (regex!7961 (h!52464 rules!2971))))) b!4247943))

(assert (= (and b!4247522 (is-Concat!21058 (regTwo!26244 (regex!7961 (h!52464 rules!2971))))) b!4247944))

(assert (= (and b!4247522 (is-Star!12866 (regTwo!26244 (regex!7961 (h!52464 rules!2971))))) b!4247945))

(assert (= (and b!4247522 (is-Union!12866 (regTwo!26244 (regex!7961 (h!52464 rules!2971))))) b!4247946))

(declare-fun b!4247950 () Bool)

(declare-fun e!2638421 () Bool)

(declare-fun tp!1303186 () Bool)

(declare-fun tp!1303188 () Bool)

(assert (=> b!4247950 (= e!2638421 (and tp!1303186 tp!1303188))))

(declare-fun b!4247947 () Bool)

(assert (=> b!4247947 (= e!2638421 tp_is_empty!22723)))

(declare-fun b!4247948 () Bool)

(declare-fun tp!1303189 () Bool)

(declare-fun tp!1303187 () Bool)

(assert (=> b!4247948 (= e!2638421 (and tp!1303189 tp!1303187))))

(assert (=> b!4247491 (= tp!1303047 e!2638421)))

(declare-fun b!4247949 () Bool)

(declare-fun tp!1303190 () Bool)

(assert (=> b!4247949 (= e!2638421 tp!1303190)))

(assert (= (and b!4247491 (is-ElementMatch!12866 (reg!13195 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247947))

(assert (= (and b!4247491 (is-Concat!21058 (reg!13195 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247948))

(assert (= (and b!4247491 (is-Star!12866 (reg!13195 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247949))

(assert (= (and b!4247491 (is-Union!12866 (reg!13195 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247950))

(declare-fun b!4247955 () Bool)

(declare-fun e!2638424 () Bool)

(declare-fun tp!1303191 () Bool)

(assert (=> b!4247955 (= e!2638424 (and tp_is_empty!22723 tp!1303191))))

(assert (=> b!4247509 (= tp!1303065 e!2638424)))

(assert (= (and b!4247509 (is-Cons!47042 (t!351831 (t!351831 suffix!1284)))) b!4247955))

(declare-fun b!4247956 () Bool)

(declare-fun tp!1303194 () Bool)

(declare-fun e!2638425 () Bool)

(declare-fun tp!1303192 () Bool)

(assert (=> b!4247956 (= e!2638425 (and (inv!61809 (left!34907 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))))) tp!1303192 (inv!61809 (right!35237 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))))) tp!1303194))))

(declare-fun b!4247958 () Bool)

(declare-fun e!2638426 () Bool)

(declare-fun tp!1303193 () Bool)

(assert (=> b!4247958 (= e!2638426 tp!1303193)))

(declare-fun b!4247957 () Bool)

(assert (=> b!4247957 (= e!2638425 (and (inv!61815 (xs!17478 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))))) e!2638426))))

(assert (=> b!4247458 (= tp!1303026 (and (inv!61809 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592))))) e!2638425))))

(assert (= (and b!4247458 (is-Node!14172 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))))) b!4247956))

(assert (= b!4247957 b!4247958))

(assert (= (and b!4247458 (is-Leaf!21912 (c!721335 (dynLambda!20149 (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (value!247426 (h!52463 tokens!592)))))) b!4247957))

(declare-fun m!4832773 () Bool)

(assert (=> b!4247956 m!4832773))

(declare-fun m!4832775 () Bool)

(assert (=> b!4247956 m!4832775))

(declare-fun m!4832777 () Bool)

(assert (=> b!4247957 m!4832777))

(assert (=> b!4247458 m!4832215))

(declare-fun b!4247962 () Bool)

(declare-fun b_free!126191 () Bool)

(declare-fun b_next!126895 () Bool)

(assert (=> b!4247962 (= b_free!126191 (not b_next!126895))))

(declare-fun tb!255937 () Bool)

(declare-fun t!351928 () Bool)

(assert (=> (and b!4247962 (= (toValue!10725 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351928) tb!255937))

(declare-fun result!312126 () Bool)

(assert (= result!312126 result!312068))

(assert (=> d!1249136 t!351928))

(declare-fun t!351930 () Bool)

(declare-fun tb!255939 () Bool)

(assert (=> (and b!4247962 (= (toValue!10725 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toValue!10725 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351930) tb!255939))

(declare-fun result!312128 () Bool)

(assert (= result!312128 result!312086))

(assert (=> d!1249156 t!351930))

(declare-fun b_and!336617 () Bool)

(declare-fun tp!1303199 () Bool)

(assert (=> b!4247962 (= tp!1303199 (and (=> t!351928 result!312126) (=> t!351930 result!312128) b_and!336617))))

(declare-fun b_free!126193 () Bool)

(declare-fun b_next!126897 () Bool)

(assert (=> b!4247962 (= b_free!126193 (not b_next!126897))))

(declare-fun tb!255941 () Bool)

(declare-fun t!351932 () Bool)

(assert (=> (and b!4247962 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812)))))) t!351932) tb!255941))

(declare-fun result!312130 () Bool)

(assert (= result!312130 result!312016))

(assert (=> d!1249072 t!351932))

(declare-fun t!351934 () Bool)

(declare-fun tb!255943 () Bool)

(assert (=> (and b!4247962 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592))))) t!351934) tb!255943))

(declare-fun result!312132 () Bool)

(assert (= result!312132 result!312022))

(assert (=> b!4247456 t!351934))

(declare-fun t!351936 () Bool)

(declare-fun tb!255945 () Bool)

(assert (=> (and b!4247962 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592)))))) t!351936) tb!255945))

(declare-fun result!312134 () Bool)

(assert (= result!312134 result!312102))

(assert (=> b!4247826 t!351936))

(declare-fun tb!255947 () Bool)

(declare-fun t!351938 () Bool)

(assert (=> (and b!4247962 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507843)))))) t!351938) tb!255947))

(declare-fun result!312136 () Bool)

(assert (= result!312136 result!312078))

(assert (=> d!1249152 t!351938))

(declare-fun t!351940 () Bool)

(declare-fun tb!255949 () Bool)

(assert (=> (and b!4247962 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (get!15278 lt!1507838)))))) t!351940) tb!255949))

(declare-fun result!312138 () Bool)

(assert (= result!312138 result!312094))

(assert (=> d!1249166 t!351940))

(declare-fun tp!1303196 () Bool)

(declare-fun b_and!336619 () Bool)

(assert (=> b!4247962 (= tp!1303196 (and (=> t!351940 result!312138) (=> t!351936 result!312134) (=> t!351934 result!312132) (=> t!351938 result!312136) (=> t!351932 result!312130) b_and!336619))))

(declare-fun e!2638430 () Bool)

(assert (=> b!4247504 (= tp!1303062 e!2638430)))

(declare-fun b!4247959 () Bool)

(declare-fun tp!1303198 () Bool)

(declare-fun e!2638431 () Bool)

(assert (=> b!4247959 (= e!2638430 (and (inv!61806 (h!52463 (t!351832 (t!351832 tokens!592)))) e!2638431 tp!1303198))))

(declare-fun tp!1303195 () Bool)

(declare-fun e!2638427 () Bool)

(declare-fun e!2638429 () Bool)

(declare-fun b!4247961 () Bool)

(assert (=> b!4247961 (= e!2638427 (and tp!1303195 (inv!61802 (tag!8825 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (inv!61805 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) e!2638429))))

(declare-fun tp!1303197 () Bool)

(declare-fun b!4247960 () Bool)

(assert (=> b!4247960 (= e!2638431 (and (inv!21 (value!247426 (h!52463 (t!351832 (t!351832 tokens!592))))) e!2638427 tp!1303197))))

(assert (=> b!4247962 (= e!2638429 (and tp!1303199 tp!1303196))))

(assert (= b!4247961 b!4247962))

(assert (= b!4247960 b!4247961))

(assert (= b!4247959 b!4247960))

(assert (= (and b!4247504 (is-Cons!47043 (t!351832 (t!351832 tokens!592)))) b!4247959))

(declare-fun m!4832791 () Bool)

(assert (=> b!4247959 m!4832791))

(declare-fun m!4832793 () Bool)

(assert (=> b!4247961 m!4832793))

(declare-fun m!4832795 () Bool)

(assert (=> b!4247961 m!4832795))

(declare-fun m!4832797 () Bool)

(assert (=> b!4247960 m!4832797))

(declare-fun b!4247966 () Bool)

(declare-fun e!2638433 () Bool)

(declare-fun tp!1303200 () Bool)

(declare-fun tp!1303202 () Bool)

(assert (=> b!4247966 (= e!2638433 (and tp!1303200 tp!1303202))))

(declare-fun b!4247963 () Bool)

(assert (=> b!4247963 (= e!2638433 tp_is_empty!22723)))

(declare-fun b!4247964 () Bool)

(declare-fun tp!1303203 () Bool)

(declare-fun tp!1303201 () Bool)

(assert (=> b!4247964 (= e!2638433 (and tp!1303203 tp!1303201))))

(assert (=> b!4247523 (= tp!1303082 e!2638433)))

(declare-fun b!4247965 () Bool)

(declare-fun tp!1303204 () Bool)

(assert (=> b!4247965 (= e!2638433 tp!1303204)))

(assert (= (and b!4247523 (is-ElementMatch!12866 (reg!13195 (regex!7961 (h!52464 rules!2971))))) b!4247963))

(assert (= (and b!4247523 (is-Concat!21058 (reg!13195 (regex!7961 (h!52464 rules!2971))))) b!4247964))

(assert (= (and b!4247523 (is-Star!12866 (reg!13195 (regex!7961 (h!52464 rules!2971))))) b!4247965))

(assert (= (and b!4247523 (is-Union!12866 (reg!13195 (regex!7961 (h!52464 rules!2971))))) b!4247966))

(declare-fun b!4247970 () Bool)

(declare-fun e!2638434 () Bool)

(declare-fun tp!1303205 () Bool)

(declare-fun tp!1303207 () Bool)

(assert (=> b!4247970 (= e!2638434 (and tp!1303205 tp!1303207))))

(declare-fun b!4247967 () Bool)

(assert (=> b!4247967 (= e!2638434 tp_is_empty!22723)))

(declare-fun b!4247968 () Bool)

(declare-fun tp!1303208 () Bool)

(declare-fun tp!1303206 () Bool)

(assert (=> b!4247968 (= e!2638434 (and tp!1303208 tp!1303206))))

(assert (=> b!4247492 (= tp!1303043 e!2638434)))

(declare-fun b!4247969 () Bool)

(declare-fun tp!1303209 () Bool)

(assert (=> b!4247969 (= e!2638434 tp!1303209)))

(assert (= (and b!4247492 (is-ElementMatch!12866 (regOne!26245 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247967))

(assert (= (and b!4247492 (is-Concat!21058 (regOne!26245 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247968))

(assert (= (and b!4247492 (is-Star!12866 (regOne!26245 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247969))

(assert (= (and b!4247492 (is-Union!12866 (regOne!26245 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247970))

(declare-fun b!4247978 () Bool)

(declare-fun e!2638439 () Bool)

(declare-fun tp!1303210 () Bool)

(declare-fun tp!1303212 () Bool)

(assert (=> b!4247978 (= e!2638439 (and tp!1303210 tp!1303212))))

(declare-fun b!4247975 () Bool)

(assert (=> b!4247975 (= e!2638439 tp_is_empty!22723)))

(declare-fun b!4247976 () Bool)

(declare-fun tp!1303213 () Bool)

(declare-fun tp!1303211 () Bool)

(assert (=> b!4247976 (= e!2638439 (and tp!1303213 tp!1303211))))

(assert (=> b!4247492 (= tp!1303045 e!2638439)))

(declare-fun b!4247977 () Bool)

(declare-fun tp!1303214 () Bool)

(assert (=> b!4247977 (= e!2638439 tp!1303214)))

(assert (= (and b!4247492 (is-ElementMatch!12866 (regTwo!26245 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247975))

(assert (= (and b!4247492 (is-Concat!21058 (regTwo!26245 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247976))

(assert (= (and b!4247492 (is-Star!12866 (regTwo!26245 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247977))

(assert (= (and b!4247492 (is-Union!12866 (regTwo!26245 (regex!7961 (rule!11091 (h!52463 tokens!592)))))) b!4247978))

(declare-fun b!4247982 () Bool)

(declare-fun e!2638440 () Bool)

(declare-fun tp!1303215 () Bool)

(declare-fun tp!1303217 () Bool)

(assert (=> b!4247982 (= e!2638440 (and tp!1303215 tp!1303217))))

(declare-fun b!4247979 () Bool)

(assert (=> b!4247979 (= e!2638440 tp_is_empty!22723)))

(declare-fun b!4247980 () Bool)

(declare-fun tp!1303218 () Bool)

(declare-fun tp!1303216 () Bool)

(assert (=> b!4247980 (= e!2638440 (and tp!1303218 tp!1303216))))

(assert (=> b!4247524 (= tp!1303078 e!2638440)))

(declare-fun b!4247981 () Bool)

(declare-fun tp!1303219 () Bool)

(assert (=> b!4247981 (= e!2638440 tp!1303219)))

(assert (= (and b!4247524 (is-ElementMatch!12866 (regOne!26245 (regex!7961 (h!52464 rules!2971))))) b!4247979))

(assert (= (and b!4247524 (is-Concat!21058 (regOne!26245 (regex!7961 (h!52464 rules!2971))))) b!4247980))

(assert (= (and b!4247524 (is-Star!12866 (regOne!26245 (regex!7961 (h!52464 rules!2971))))) b!4247981))

(assert (= (and b!4247524 (is-Union!12866 (regOne!26245 (regex!7961 (h!52464 rules!2971))))) b!4247982))

(declare-fun b!4247986 () Bool)

(declare-fun e!2638441 () Bool)

(declare-fun tp!1303220 () Bool)

(declare-fun tp!1303222 () Bool)

(assert (=> b!4247986 (= e!2638441 (and tp!1303220 tp!1303222))))

(declare-fun b!4247983 () Bool)

(assert (=> b!4247983 (= e!2638441 tp_is_empty!22723)))

(declare-fun b!4247984 () Bool)

(declare-fun tp!1303223 () Bool)

(declare-fun tp!1303221 () Bool)

(assert (=> b!4247984 (= e!2638441 (and tp!1303223 tp!1303221))))

(assert (=> b!4247524 (= tp!1303080 e!2638441)))

(declare-fun b!4247985 () Bool)

(declare-fun tp!1303224 () Bool)

(assert (=> b!4247985 (= e!2638441 tp!1303224)))

(assert (= (and b!4247524 (is-ElementMatch!12866 (regTwo!26245 (regex!7961 (h!52464 rules!2971))))) b!4247983))

(assert (= (and b!4247524 (is-Concat!21058 (regTwo!26245 (regex!7961 (h!52464 rules!2971))))) b!4247984))

(assert (= (and b!4247524 (is-Star!12866 (regTwo!26245 (regex!7961 (h!52464 rules!2971))))) b!4247985))

(assert (= (and b!4247524 (is-Union!12866 (regTwo!26245 (regex!7961 (h!52464 rules!2971))))) b!4247986))

(declare-fun b!4247987 () Bool)

(declare-fun e!2638442 () Bool)

(declare-fun tp!1303225 () Bool)

(assert (=> b!4247987 (= e!2638442 (and tp_is_empty!22723 tp!1303225))))

(assert (=> b!4247505 (= tp!1303061 e!2638442)))

(assert (= (and b!4247505 (is-Cons!47042 (originalCharacters!8305 (h!52463 (t!351832 tokens!592))))) b!4247987))

(declare-fun b_lambda!125113 () Bool)

(assert (= b_lambda!125111 (or (and b!4247962 b_free!126193 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))))) (and b!4247283 b_free!126157 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))))) (and b!4247910 b_free!126189 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))))) (and b!4247276 b_free!126161 (= (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))))) (and b!4247507 b_free!126173) (and b!4247520 b_free!126177 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))))) b_lambda!125113)))

(declare-fun b_lambda!125115 () Bool)

(assert (= b_lambda!125091 (or (and b!4247962 b_free!126193 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 (t!351832 tokens!592)))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))))) (and b!4247283 b_free!126157 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 tokens!592)))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))))) (and b!4247507 b_free!126173 (= (toChars!10584 (transformation!7961 (rule!11091 (h!52463 (t!351832 tokens!592))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))))) (and b!4247520 b_free!126177 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 rules!2971)))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))))) (and b!4247910 b_free!126189 (= (toChars!10584 (transformation!7961 (h!52464 (t!351833 (t!351833 rules!2971))))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))))) (and b!4247276 b_free!126161 (= (toChars!10584 (transformation!7961 (h!52464 rules!2971))) (toChars!10584 (transformation!7961 (rule!11091 (_1!25435 (v!41048 lt!1507812))))))) b_lambda!125115)))

(push 1)

(assert (not b!4247864))

(assert (not b!4247783))

(assert (not b!4247759))

(assert (not b!4247458))

(assert (not d!1249144))

(assert (not b_next!126863))

(assert (not b!4247869))

(assert (not b!4247773))

(assert (not b!4247908))

(assert (not b!4247834))

(assert (not b_next!126877))

(assert (not b_lambda!125113))

(assert (not b!4247866))

(assert (not b_next!126881))

(assert (not b_next!126897))

(assert (not b!4247946))

(assert (not b!4247976))

(assert (not b!4247884))

(assert (not b!4247897))

(assert (not d!1249168))

(assert (not b!4247665))

(assert (not b!4247945))

(assert (not d!1249128))

(assert (not b!4247812))

(assert (not b!4247833))

(assert (not b!4247696))

(assert b_and!336617)

(assert (not b!4247887))

(assert (not d!1249202))

(assert (not b!4247706))

(assert (not b!4247987))

(assert (not b_next!126893))

(assert (not b!4247826))

(assert (not b!4247688))

(assert (not d!1249166))

(assert (not b!4247755))

(assert (not b!4247669))

(assert (not b!4247745))

(assert (not b!4247865))

(assert (not b!4247905))

(assert (not b!4247836))

(assert (not b!4247942))

(assert (not bm!293917))

(assert (not b!4247682))

(assert (not b!4247933))

(assert (not b!4247907))

(assert (not b_next!126879))

(assert (not b!4247981))

(assert (not b!4247890))

(assert (not d!1249132))

(assert (not d!1249218))

(assert (not b!4247978))

(assert (not b!4247871))

(assert (not b!4247701))

(assert (not b_lambda!125097))

(assert (not b!4247693))

(assert (not d!1249226))

(assert (not b!4247932))

(assert (not b!4247984))

(assert (not b!4247713))

(assert (not b!4247697))

(assert (not b!4247877))

(assert (not d!1249224))

(assert (not b!4247752))

(assert (not b!4247938))

(assert (not b!4247667))

(assert (not b!4247830))

(assert (not b!4247764))

(assert (not b!4247771))

(assert (not b!4247733))

(assert (not tb!255891))

(assert (not b!4247959))

(assert (not b!4247735))

(assert (not b!4247956))

(assert (not b!4247879))

(assert (not d!1249172))

(assert (not d!1249216))

(assert (not b_lambda!125115))

(assert (not b!4247886))

(assert (not b!4247885))

(assert b_and!336613)

(assert (not d!1249230))

(assert (not tb!255899))

(assert (not b!4247936))

(assert (not b!4247716))

(assert b_and!336591)

(assert (not b!4247711))

(assert (not b!4247888))

(assert (not b!4247895))

(assert (not d!1249242))

(assert (not b!4247909))

(assert (not b!4247691))

(assert (not d!1249148))

(assert (not b!4247699))

(assert (not b!4247703))

(assert (not d!1249124))

(assert (not b!4247762))

(assert (not b!4247925))

(assert (not d!1249122))

(assert (not b!4247707))

(assert (not b!4247977))

(assert (not d!1249182))

(assert (not b!4247692))

(assert (not b_lambda!125103))

(assert (not b!4247722))

(assert (not b!4247867))

(assert (not b!4247694))

(assert (not d!1249204))

(assert (not tb!255915))

(assert b_and!336619)

(assert (not d!1249188))

(assert (not d!1249220))

(assert (not b!4247950))

(assert (not b_lambda!125105))

(assert (not b!4247899))

(assert (not d!1249246))

(assert (not d!1249162))

(assert (not b!4247931))

(assert (not b!4247970))

(assert b_and!336589)

(assert (not b!4247827))

(assert (not b!4247926))

(assert (not b_next!126861))

(assert (not b!4247666))

(assert (not b!4247663))

(assert (not b!4247889))

(assert b_and!336609)

(assert (not b!4247832))

(assert (not d!1249196))

(assert (not b!4247746))

(assert (not d!1249158))

(assert (not b!4247828))

(assert (not d!1249184))

(assert (not b!4247980))

(assert (not b!4247782))

(assert (not b_next!126859))

(assert (not d!1249232))

(assert (not b!4247964))

(assert (not b!4247958))

(assert (not b!4247819))

(assert (not bm!293920))

(assert (not b!4247765))

(assert (not b!4247781))

(assert (not b_next!126865))

(assert (not d!1249150))

(assert (not b!4247960))

(assert (not b!4247957))

(assert (not b_lambda!125109))

(assert (not d!1249142))

(assert (not d!1249186))

(assert (not b!4247838))

(assert (not b_next!126891))

(assert b_and!336607)

(assert (not b!4247937))

(assert (not d!1249174))

(assert (not b!4247927))

(assert (not d!1249190))

(assert (not b!4247747))

(assert (not tb!255907))

(assert (not bm!293921))

(assert (not b!4247695))

(assert (not b!4247831))

(assert (not b!4247868))

(assert (not b!4247948))

(assert (not b_next!126875))

(assert b_and!336615)

(assert b_and!336605)

(assert (not b!4247961))

(assert (not b!4247756))

(assert (not b!4247817))

(assert (not b!4247893))

(assert (not b!4247982))

(assert (not d!1249244))

(assert (not b_lambda!125107))

(assert (not b!4247903))

(assert (not b!4247870))

(assert (not tb!255883))

(assert (not b!4247901))

(assert (not b!4247929))

(assert (not d!1249120))

(assert (not b!4247704))

(assert (not b!4247969))

(assert (not b!4247882))

(assert (not b!4247767))

(assert (not b!4247661))

(assert (not b!4247662))

(assert (not b!4247944))

(assert (not b!4247949))

(assert (not b!4247968))

(assert (not b!4247966))

(assert (not b!4247965))

(assert (not b!4247813))

(assert b_and!336595)

(assert (not b!4247986))

(assert (not b!4247985))

(assert (not b!4247941))

(assert (not b!4247753))

(assert (not d!1249164))

(assert (not b!4247815))

(assert (not b!4247935))

(assert (not b!4247940))

(assert (not b!4247681))

(assert (not b!4247761))

(assert (not b!4247906))

(assert (not d!1249154))

(assert (not d!1249138))

(assert (not b!4247778))

(assert (not b!4247881))

(assert (not b!4247779))

(assert (not bm!293916))

(assert (not b!4247928))

(assert tp_is_empty!22723)

(assert (not b!4247955))

(assert b_and!336593)

(assert (not b!4247709))

(assert (not b_next!126895))

(assert b_and!336611)

(assert (not b!4247670))

(assert (not b!4247443))

(assert (not b!4247664))

(assert (not b!4247814))

(assert (not b!4247714))

(assert (not b!4247902))

(assert (not d!1249140))

(assert (not d!1249152))

(assert (not b!4247891))

(assert (not b!4247769))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126863))

(assert b_and!336617)

(assert (not b_next!126893))

(assert (not b_next!126879))

(assert b_and!336619)

(assert b_and!336589)

(assert (not b_next!126859))

(assert (not b_next!126865))

(assert b_and!336595)

(assert b_and!336593)

(assert (not b_next!126877))

(assert (not b_next!126881))

(assert (not b_next!126897))

(assert b_and!336613)

(assert b_and!336591)

(assert (not b_next!126861))

(assert b_and!336609)

(assert (not b_next!126891))

(assert b_and!336607)

(assert (not b_next!126875))

(assert b_and!336615)

(assert b_and!336605)

(assert (not b_next!126895))

(assert b_and!336611)

(check-sat)

(pop 1)

