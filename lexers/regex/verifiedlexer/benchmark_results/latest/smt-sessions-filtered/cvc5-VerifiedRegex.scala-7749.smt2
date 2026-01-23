; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!407316 () Bool)

(assert start!407316)

(declare-fun b!4253088 () Bool)

(declare-fun b_free!126491 () Bool)

(declare-fun b_next!127195 () Bool)

(assert (=> b!4253088 (= b_free!126491 (not b_next!127195))))

(declare-fun tp!1305166 () Bool)

(declare-fun b_and!337269 () Bool)

(assert (=> b!4253088 (= tp!1305166 b_and!337269)))

(declare-fun b_free!126493 () Bool)

(declare-fun b_next!127197 () Bool)

(assert (=> b!4253088 (= b_free!126493 (not b_next!127197))))

(declare-fun tp!1305165 () Bool)

(declare-fun b_and!337271 () Bool)

(assert (=> b!4253088 (= tp!1305165 b_and!337271)))

(declare-fun b!4253085 () Bool)

(declare-fun b_free!126495 () Bool)

(declare-fun b_next!127199 () Bool)

(assert (=> b!4253085 (= b_free!126495 (not b_next!127199))))

(declare-fun tp!1305169 () Bool)

(declare-fun b_and!337273 () Bool)

(assert (=> b!4253085 (= tp!1305169 b_and!337273)))

(declare-fun b_free!126497 () Bool)

(declare-fun b_next!127201 () Bool)

(assert (=> b!4253085 (= b_free!126497 (not b_next!127201))))

(declare-fun tp!1305167 () Bool)

(declare-fun b_and!337275 () Bool)

(assert (=> b!4253085 (= tp!1305167 b_and!337275)))

(declare-fun b!4253077 () Bool)

(declare-fun res!1748380 () Bool)

(declare-fun e!2641686 () Bool)

(assert (=> b!4253077 (=> (not res!1748380) (not e!2641686))))

(declare-datatypes ((C!25970 0))(
  ( (C!25971 (val!15175 Int)) )
))
(declare-datatypes ((List!47261 0))(
  ( (Nil!47137) (Cons!47137 (h!52557 C!25970) (t!352692 List!47261)) )
))
(declare-fun longerInput!62 () List!47261)

(declare-fun shorterInput!62 () List!47261)

(declare-fun size!34504 (List!47261) Int)

(assert (=> b!4253077 (= res!1748380 (> (size!34504 longerInput!62) (size!34504 shorterInput!62)))))

(declare-fun b!4253078 () Bool)

(declare-fun res!1748372 () Bool)

(assert (=> b!4253078 (=> (not res!1748372) (not e!2641686))))

(declare-datatypes ((LexerInterface!7576 0))(
  ( (LexerInterfaceExt!7573 (__x!28645 Int)) (Lexer!7574) )
))
(declare-fun thiss!21641 () LexerInterface!7576)

(declare-datatypes ((List!47262 0))(
  ( (Nil!47138) (Cons!47138 (h!52558 (_ BitVec 16)) (t!352693 List!47262)) )
))
(declare-datatypes ((TokenValue!8211 0))(
  ( (FloatLiteralValue!16422 (text!57922 List!47262)) (TokenValueExt!8210 (__x!28646 Int)) (Broken!41055 (value!247970 List!47262)) (Object!8334) (End!8211) (Def!8211) (Underscore!8211) (Match!8211) (Else!8211) (Error!8211) (Case!8211) (If!8211) (Extends!8211) (Abstract!8211) (Class!8211) (Val!8211) (DelimiterValue!16422 (del!8271 List!47262)) (KeywordValue!8217 (value!247971 List!47262)) (CommentValue!16422 (value!247972 List!47262)) (WhitespaceValue!16422 (value!247973 List!47262)) (IndentationValue!8211 (value!247974 List!47262)) (String!54986) (Int32!8211) (Broken!41056 (value!247975 List!47262)) (Boolean!8212) (Unit!66089) (OperatorValue!8214 (op!8271 List!47262)) (IdentifierValue!16422 (value!247976 List!47262)) (IdentifierValue!16423 (value!247977 List!47262)) (WhitespaceValue!16423 (value!247978 List!47262)) (True!16422) (False!16422) (Broken!41057 (value!247979 List!47262)) (Broken!41058 (value!247980 List!47262)) (True!16423) (RightBrace!8211) (RightBracket!8211) (Colon!8211) (Null!8211) (Comma!8211) (LeftBracket!8211) (False!16423) (LeftBrace!8211) (ImaginaryLiteralValue!8211 (text!57923 List!47262)) (StringLiteralValue!24633 (value!247981 List!47262)) (EOFValue!8211 (value!247982 List!47262)) (IdentValue!8211 (value!247983 List!47262)) (DelimiterValue!16423 (value!247984 List!47262)) (DedentValue!8211 (value!247985 List!47262)) (NewLineValue!8211 (value!247986 List!47262)) (IntegerValue!24633 (value!247987 (_ BitVec 32)) (text!57924 List!47262)) (IntegerValue!24634 (value!247988 Int) (text!57925 List!47262)) (Times!8211) (Or!8211) (Equal!8211) (Minus!8211) (Broken!41059 (value!247989 List!47262)) (And!8211) (Div!8211) (LessEqual!8211) (Mod!8211) (Concat!21097) (Not!8211) (Plus!8211) (SpaceValue!8211 (value!247990 List!47262)) (IntegerValue!24635 (value!247991 Int) (text!57926 List!47262)) (StringLiteralValue!24634 (text!57927 List!47262)) (FloatLiteralValue!16423 (text!57928 List!47262)) (BytesLiteralValue!8211 (value!247992 List!47262)) (CommentValue!16423 (value!247993 List!47262)) (StringLiteralValue!24635 (value!247994 List!47262)) (ErrorTokenValue!8211 (msg!8272 List!47262)) )
))
(declare-datatypes ((IArray!28389 0))(
  ( (IArray!28390 (innerList!14252 List!47261)) )
))
(declare-datatypes ((Conc!14192 0))(
  ( (Node!14192 (left!34949 Conc!14192) (right!35279 Conc!14192) (csize!28614 Int) (cheight!14403 Int)) (Leaf!21942 (xs!17498 IArray!28389) (csize!28615 Int)) (Empty!14192) )
))
(declare-datatypes ((BalanceConc!27978 0))(
  ( (BalanceConc!27979 (c!722163 Conc!14192)) )
))
(declare-datatypes ((Regex!12886 0))(
  ( (ElementMatch!12886 (c!722164 C!25970)) (Concat!21098 (regOne!26284 Regex!12886) (regTwo!26284 Regex!12886)) (EmptyExpr!12886) (Star!12886 (reg!13215 Regex!12886)) (EmptyLang!12886) (Union!12886 (regOne!26285 Regex!12886) (regTwo!26285 Regex!12886)) )
))
(declare-datatypes ((String!54987 0))(
  ( (String!54988 (value!247995 String)) )
))
(declare-datatypes ((TokenValueInjection!15850 0))(
  ( (TokenValueInjection!15851 (toValue!10757 Int) (toChars!10616 Int)) )
))
(declare-datatypes ((Rule!15762 0))(
  ( (Rule!15763 (regex!7981 Regex!12886) (tag!8845 String!54987) (isSeparator!7981 Bool) (transformation!7981 TokenValueInjection!15850)) )
))
(declare-datatypes ((List!47263 0))(
  ( (Nil!47139) (Cons!47139 (h!52559 Rule!15762) (t!352694 List!47263)) )
))
(declare-fun rules!2971 () List!47263)

(declare-fun rulesInvariant!6687 (LexerInterface!7576 List!47263) Bool)

(assert (=> b!4253078 (= res!1748372 (rulesInvariant!6687 thiss!21641 rules!2971))))

(declare-fun b!4253079 () Bool)

(declare-fun res!1748379 () Bool)

(declare-fun e!2641694 () Bool)

(assert (=> b!4253079 (=> (not res!1748379) (not e!2641694))))

(declare-datatypes ((Token!14588 0))(
  ( (Token!14589 (value!247996 TokenValue!8211) (rule!11117 Rule!15762) (size!34505 Int) (originalCharacters!8325 List!47261)) )
))
(declare-datatypes ((tuple2!44694 0))(
  ( (tuple2!44695 (_1!25481 Token!14588) (_2!25481 List!47261)) )
))
(declare-datatypes ((Option!10115 0))(
  ( (None!10114) (Some!10114 (v!41074 tuple2!44694)) )
))
(declare-fun lt!1509180 () Option!10115)

(declare-fun lt!1509181 () Option!10115)

(assert (=> b!4253079 (= res!1748379 (not (= (_1!25481 (v!41074 lt!1509180)) (_1!25481 (v!41074 lt!1509181)))))))

(declare-fun tp!1305170 () Bool)

(declare-fun e!2641688 () Bool)

(declare-fun e!2641697 () Bool)

(declare-datatypes ((List!47264 0))(
  ( (Nil!47140) (Cons!47140 (h!52560 Token!14588) (t!352695 List!47264)) )
))
(declare-fun tokens!592 () List!47264)

(declare-fun b!4253080 () Bool)

(declare-fun inv!61921 (String!54987) Bool)

(declare-fun inv!61924 (TokenValueInjection!15850) Bool)

(assert (=> b!4253080 (= e!2641688 (and tp!1305170 (inv!61921 (tag!8845 (rule!11117 (h!52560 tokens!592)))) (inv!61924 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) e!2641697))))

(declare-fun b!4253081 () Bool)

(declare-fun res!1748378 () Bool)

(assert (=> b!4253081 (=> (not res!1748378) (not e!2641686))))

(declare-fun isEmpty!27895 (List!47261) Bool)

(assert (=> b!4253081 (= res!1748378 (not (isEmpty!27895 longerInput!62)))))

(declare-fun b!4253082 () Bool)

(declare-fun tp!1305168 () Bool)

(declare-fun e!2641685 () Bool)

(declare-fun inv!21 (TokenValue!8211) Bool)

(assert (=> b!4253082 (= e!2641685 (and (inv!21 (value!247996 (h!52560 tokens!592))) e!2641688 tp!1305168))))

(declare-fun b!4253083 () Bool)

(declare-fun tp!1305163 () Bool)

(declare-fun e!2641696 () Bool)

(declare-fun inv!61925 (Token!14588) Bool)

(assert (=> b!4253083 (= e!2641696 (and (inv!61925 (h!52560 tokens!592)) e!2641685 tp!1305163))))

(declare-fun b!4253084 () Bool)

(declare-fun e!2641695 () Bool)

(assert (=> b!4253084 (= e!2641695 e!2641694)))

(declare-fun res!1748373 () Bool)

(assert (=> b!4253084 (=> (not res!1748373) (not e!2641694))))

(assert (=> b!4253084 (= res!1748373 (and (is-Some!10114 lt!1509180) (is-Some!10114 lt!1509181)))))

(declare-fun maxPrefix!4532 (LexerInterface!7576 List!47263 List!47261) Option!10115)

(assert (=> b!4253084 (= lt!1509181 (maxPrefix!4532 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> b!4253084 (= lt!1509180 (maxPrefix!4532 thiss!21641 rules!2971 longerInput!62))))

(declare-fun e!2641691 () Bool)

(assert (=> b!4253085 (= e!2641691 (and tp!1305169 tp!1305167))))

(declare-fun b!4253086 () Bool)

(declare-fun e!2641693 () Bool)

(declare-fun tp_is_empty!22763 () Bool)

(declare-fun tp!1305172 () Bool)

(assert (=> b!4253086 (= e!2641693 (and tp_is_empty!22763 tp!1305172))))

(declare-fun b!4253087 () Bool)

(declare-fun res!1748376 () Bool)

(assert (=> b!4253087 (=> (not res!1748376) (not e!2641686))))

(declare-fun isEmpty!27896 (List!47263) Bool)

(assert (=> b!4253087 (= res!1748376 (not (isEmpty!27896 rules!2971)))))

(assert (=> b!4253088 (= e!2641697 (and tp!1305166 tp!1305165))))

(declare-fun b!4253089 () Bool)

(declare-fun res!1748374 () Bool)

(assert (=> b!4253089 (=> (not res!1748374) (not e!2641694))))

(declare-fun ++!11990 (List!47261 List!47261) List!47261)

(declare-fun list!16985 (BalanceConc!27978) List!47261)

(declare-fun charsOf!5321 (Token!14588) BalanceConc!27978)

(assert (=> b!4253089 (= res!1748374 (= (++!11990 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181)))) (_2!25481 (v!41074 lt!1509181))) shorterInput!62))))

(declare-fun b!4253090 () Bool)

(declare-fun e!2641698 () Bool)

(declare-fun tp!1305174 () Bool)

(assert (=> b!4253090 (= e!2641698 (and tp_is_empty!22763 tp!1305174))))

(declare-fun res!1748375 () Bool)

(assert (=> start!407316 (=> (not res!1748375) (not e!2641686))))

(assert (=> start!407316 (= res!1748375 (is-Lexer!7574 thiss!21641))))

(assert (=> start!407316 e!2641686))

(assert (=> start!407316 true))

(assert (=> start!407316 e!2641693))

(assert (=> start!407316 e!2641698))

(assert (=> start!407316 e!2641696))

(declare-fun e!2641687 () Bool)

(assert (=> start!407316 e!2641687))

(declare-fun e!2641684 () Bool)

(assert (=> start!407316 e!2641684))

(declare-fun b!4253091 () Bool)

(declare-fun e!2641690 () Bool)

(declare-fun tp!1305171 () Bool)

(assert (=> b!4253091 (= e!2641687 (and e!2641690 tp!1305171))))

(declare-fun b!4253092 () Bool)

(declare-fun tp!1305164 () Bool)

(assert (=> b!4253092 (= e!2641690 (and tp!1305164 (inv!61921 (tag!8845 (h!52559 rules!2971))) (inv!61924 (transformation!7981 (h!52559 rules!2971))) e!2641691))))

(declare-fun b!4253093 () Bool)

(declare-fun res!1748377 () Bool)

(assert (=> b!4253093 (=> (not res!1748377) (not e!2641694))))

(assert (=> b!4253093 (= res!1748377 (= (++!11990 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180)))) (_2!25481 (v!41074 lt!1509180))) longerInput!62))))

(declare-fun b!4253094 () Bool)

(declare-datatypes ((tuple2!44696 0))(
  ( (tuple2!44697 (_1!25482 List!47264) (_2!25482 List!47261)) )
))
(declare-fun lt!1509179 () tuple2!44696)

(declare-fun lexList!2082 (LexerInterface!7576 List!47263 List!47261) tuple2!44696)

(assert (=> b!4253094 (= e!2641694 (= (lexList!2082 thiss!21641 rules!2971 shorterInput!62) lt!1509179))))

(declare-fun b!4253095 () Bool)

(assert (=> b!4253095 (= e!2641686 e!2641695)))

(declare-fun res!1748381 () Bool)

(assert (=> b!4253095 (=> (not res!1748381) (not e!2641695))))

(assert (=> b!4253095 (= res!1748381 (= (lexList!2082 thiss!21641 rules!2971 longerInput!62) lt!1509179))))

(declare-fun suffix!1284 () List!47261)

(assert (=> b!4253095 (= lt!1509179 (tuple2!44697 tokens!592 suffix!1284))))

(declare-fun b!4253096 () Bool)

(declare-fun tp!1305173 () Bool)

(assert (=> b!4253096 (= e!2641684 (and tp_is_empty!22763 tp!1305173))))

(assert (= (and start!407316 res!1748375) b!4253087))

(assert (= (and b!4253087 res!1748376) b!4253078))

(assert (= (and b!4253078 res!1748372) b!4253081))

(assert (= (and b!4253081 res!1748378) b!4253077))

(assert (= (and b!4253077 res!1748380) b!4253095))

(assert (= (and b!4253095 res!1748381) b!4253084))

(assert (= (and b!4253084 res!1748373) b!4253093))

(assert (= (and b!4253093 res!1748377) b!4253089))

(assert (= (and b!4253089 res!1748374) b!4253079))

(assert (= (and b!4253079 res!1748379) b!4253094))

(assert (= (and start!407316 (is-Cons!47137 suffix!1284)) b!4253086))

(assert (= (and start!407316 (is-Cons!47137 longerInput!62)) b!4253090))

(assert (= b!4253080 b!4253088))

(assert (= b!4253082 b!4253080))

(assert (= b!4253083 b!4253082))

(assert (= (and start!407316 (is-Cons!47140 tokens!592)) b!4253083))

(assert (= b!4253092 b!4253085))

(assert (= b!4253091 b!4253092))

(assert (= (and start!407316 (is-Cons!47139 rules!2971)) b!4253091))

(assert (= (and start!407316 (is-Cons!47137 shorterInput!62)) b!4253096))

(declare-fun m!4838011 () Bool)

(assert (=> b!4253092 m!4838011))

(declare-fun m!4838013 () Bool)

(assert (=> b!4253092 m!4838013))

(declare-fun m!4838015 () Bool)

(assert (=> b!4253087 m!4838015))

(declare-fun m!4838017 () Bool)

(assert (=> b!4253080 m!4838017))

(declare-fun m!4838019 () Bool)

(assert (=> b!4253080 m!4838019))

(declare-fun m!4838021 () Bool)

(assert (=> b!4253089 m!4838021))

(assert (=> b!4253089 m!4838021))

(declare-fun m!4838023 () Bool)

(assert (=> b!4253089 m!4838023))

(assert (=> b!4253089 m!4838023))

(declare-fun m!4838025 () Bool)

(assert (=> b!4253089 m!4838025))

(declare-fun m!4838027 () Bool)

(assert (=> b!4253094 m!4838027))

(declare-fun m!4838029 () Bool)

(assert (=> b!4253083 m!4838029))

(declare-fun m!4838031 () Bool)

(assert (=> b!4253081 m!4838031))

(declare-fun m!4838033 () Bool)

(assert (=> b!4253078 m!4838033))

(declare-fun m!4838035 () Bool)

(assert (=> b!4253082 m!4838035))

(declare-fun m!4838037 () Bool)

(assert (=> b!4253093 m!4838037))

(assert (=> b!4253093 m!4838037))

(declare-fun m!4838039 () Bool)

(assert (=> b!4253093 m!4838039))

(assert (=> b!4253093 m!4838039))

(declare-fun m!4838041 () Bool)

(assert (=> b!4253093 m!4838041))

(declare-fun m!4838043 () Bool)

(assert (=> b!4253095 m!4838043))

(declare-fun m!4838045 () Bool)

(assert (=> b!4253084 m!4838045))

(declare-fun m!4838047 () Bool)

(assert (=> b!4253084 m!4838047))

(declare-fun m!4838049 () Bool)

(assert (=> b!4253077 m!4838049))

(declare-fun m!4838051 () Bool)

(assert (=> b!4253077 m!4838051))

(push 1)

(assert (not b!4253086))

(assert (not b_next!127199))

(assert tp_is_empty!22763)

(assert (not b!4253080))

(assert (not b!4253082))

(assert (not b!4253083))

(assert (not b!4253091))

(assert b_and!337271)

(assert (not b!4253092))

(assert (not b!4253094))

(assert (not b!4253093))

(assert (not b_next!127195))

(assert (not b!4253095))

(assert (not b!4253077))

(assert (not b!4253090))

(assert (not b!4253096))

(assert (not b!4253081))

(assert (not b_next!127201))

(assert (not b!4253089))

(assert (not b_next!127197))

(assert b_and!337269)

(assert (not b!4253087))

(assert b_and!337273)

(assert (not b!4253078))

(assert (not b!4253084))

(assert b_and!337275)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!127199))

(assert (not b_next!127201))

(assert b_and!337271)

(assert (not b_next!127195))

(assert b_and!337273)

(assert b_and!337275)

(assert (not b_next!127197))

(assert b_and!337269)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1250674 () Bool)

(assert (=> d!1250674 (= (inv!61921 (tag!8845 (h!52559 rules!2971))) (= (mod (str.len (value!247995 (tag!8845 (h!52559 rules!2971)))) 2) 0))))

(assert (=> b!4253092 d!1250674))

(declare-fun d!1250676 () Bool)

(declare-fun res!1748420 () Bool)

(declare-fun e!2641749 () Bool)

(assert (=> d!1250676 (=> (not res!1748420) (not e!2641749))))

(declare-fun semiInverseModEq!3484 (Int Int) Bool)

(assert (=> d!1250676 (= res!1748420 (semiInverseModEq!3484 (toChars!10616 (transformation!7981 (h!52559 rules!2971))) (toValue!10757 (transformation!7981 (h!52559 rules!2971)))))))

(assert (=> d!1250676 (= (inv!61924 (transformation!7981 (h!52559 rules!2971))) e!2641749)))

(declare-fun b!4253159 () Bool)

(declare-fun equivClasses!3383 (Int Int) Bool)

(assert (=> b!4253159 (= e!2641749 (equivClasses!3383 (toChars!10616 (transformation!7981 (h!52559 rules!2971))) (toValue!10757 (transformation!7981 (h!52559 rules!2971)))))))

(assert (= (and d!1250676 res!1748420) b!4253159))

(declare-fun m!4838095 () Bool)

(assert (=> d!1250676 m!4838095))

(declare-fun m!4838097 () Bool)

(assert (=> b!4253159 m!4838097))

(assert (=> b!4253092 d!1250676))

(declare-fun d!1250678 () Bool)

(assert (=> d!1250678 (= (isEmpty!27895 longerInput!62) (is-Nil!47137 longerInput!62))))

(assert (=> b!4253081 d!1250678))

(declare-fun b!4253170 () Bool)

(declare-fun e!2641758 () Bool)

(declare-fun inv!16 (TokenValue!8211) Bool)

(assert (=> b!4253170 (= e!2641758 (inv!16 (value!247996 (h!52560 tokens!592))))))

(declare-fun b!4253171 () Bool)

(declare-fun res!1748423 () Bool)

(declare-fun e!2641757 () Bool)

(assert (=> b!4253171 (=> res!1748423 e!2641757)))

(assert (=> b!4253171 (= res!1748423 (not (is-IntegerValue!24635 (value!247996 (h!52560 tokens!592)))))))

(declare-fun e!2641756 () Bool)

(assert (=> b!4253171 (= e!2641756 e!2641757)))

(declare-fun b!4253172 () Bool)

(declare-fun inv!17 (TokenValue!8211) Bool)

(assert (=> b!4253172 (= e!2641756 (inv!17 (value!247996 (h!52560 tokens!592))))))

(declare-fun d!1250680 () Bool)

(declare-fun c!722173 () Bool)

(assert (=> d!1250680 (= c!722173 (is-IntegerValue!24633 (value!247996 (h!52560 tokens!592))))))

(assert (=> d!1250680 (= (inv!21 (value!247996 (h!52560 tokens!592))) e!2641758)))

(declare-fun b!4253173 () Bool)

(assert (=> b!4253173 (= e!2641758 e!2641756)))

(declare-fun c!722172 () Bool)

(assert (=> b!4253173 (= c!722172 (is-IntegerValue!24634 (value!247996 (h!52560 tokens!592))))))

(declare-fun b!4253174 () Bool)

(declare-fun inv!15 (TokenValue!8211) Bool)

(assert (=> b!4253174 (= e!2641757 (inv!15 (value!247996 (h!52560 tokens!592))))))

(assert (= (and d!1250680 c!722173) b!4253170))

(assert (= (and d!1250680 (not c!722173)) b!4253173))

(assert (= (and b!4253173 c!722172) b!4253172))

(assert (= (and b!4253173 (not c!722172)) b!4253171))

(assert (= (and b!4253171 (not res!1748423)) b!4253174))

(declare-fun m!4838099 () Bool)

(assert (=> b!4253170 m!4838099))

(declare-fun m!4838101 () Bool)

(assert (=> b!4253172 m!4838101))

(declare-fun m!4838103 () Bool)

(assert (=> b!4253174 m!4838103))

(assert (=> b!4253082 d!1250680))

(declare-fun b!4253185 () Bool)

(declare-fun res!1748429 () Bool)

(declare-fun e!2641763 () Bool)

(assert (=> b!4253185 (=> (not res!1748429) (not e!2641763))))

(declare-fun lt!1509193 () List!47261)

(assert (=> b!4253185 (= res!1748429 (= (size!34504 lt!1509193) (+ (size!34504 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180))))) (size!34504 (_2!25481 (v!41074 lt!1509180))))))))

(declare-fun d!1250682 () Bool)

(assert (=> d!1250682 e!2641763))

(declare-fun res!1748428 () Bool)

(assert (=> d!1250682 (=> (not res!1748428) (not e!2641763))))

(declare-fun content!7411 (List!47261) (Set C!25970))

(assert (=> d!1250682 (= res!1748428 (= (content!7411 lt!1509193) (set.union (content!7411 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180))))) (content!7411 (_2!25481 (v!41074 lt!1509180))))))))

(declare-fun e!2641764 () List!47261)

(assert (=> d!1250682 (= lt!1509193 e!2641764)))

(declare-fun c!722176 () Bool)

(assert (=> d!1250682 (= c!722176 (is-Nil!47137 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180))))))))

(assert (=> d!1250682 (= (++!11990 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180)))) (_2!25481 (v!41074 lt!1509180))) lt!1509193)))

(declare-fun b!4253184 () Bool)

(assert (=> b!4253184 (= e!2641764 (Cons!47137 (h!52557 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180))))) (++!11990 (t!352692 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180))))) (_2!25481 (v!41074 lt!1509180)))))))

(declare-fun b!4253186 () Bool)

(assert (=> b!4253186 (= e!2641763 (or (not (= (_2!25481 (v!41074 lt!1509180)) Nil!47137)) (= lt!1509193 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180)))))))))

(declare-fun b!4253183 () Bool)

(assert (=> b!4253183 (= e!2641764 (_2!25481 (v!41074 lt!1509180)))))

(assert (= (and d!1250682 c!722176) b!4253183))

(assert (= (and d!1250682 (not c!722176)) b!4253184))

(assert (= (and d!1250682 res!1748428) b!4253185))

(assert (= (and b!4253185 res!1748429) b!4253186))

(declare-fun m!4838105 () Bool)

(assert (=> b!4253185 m!4838105))

(assert (=> b!4253185 m!4838039))

(declare-fun m!4838107 () Bool)

(assert (=> b!4253185 m!4838107))

(declare-fun m!4838109 () Bool)

(assert (=> b!4253185 m!4838109))

(declare-fun m!4838111 () Bool)

(assert (=> d!1250682 m!4838111))

(assert (=> d!1250682 m!4838039))

(declare-fun m!4838113 () Bool)

(assert (=> d!1250682 m!4838113))

(declare-fun m!4838115 () Bool)

(assert (=> d!1250682 m!4838115))

(declare-fun m!4838117 () Bool)

(assert (=> b!4253184 m!4838117))

(assert (=> b!4253093 d!1250682))

(declare-fun d!1250688 () Bool)

(declare-fun list!16987 (Conc!14192) List!47261)

(assert (=> d!1250688 (= (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509180)))) (list!16987 (c!722163 (charsOf!5321 (_1!25481 (v!41074 lt!1509180))))))))

(declare-fun bs!598718 () Bool)

(assert (= bs!598718 d!1250688))

(declare-fun m!4838119 () Bool)

(assert (=> bs!598718 m!4838119))

(assert (=> b!4253093 d!1250688))

(declare-fun d!1250690 () Bool)

(declare-fun lt!1509196 () BalanceConc!27978)

(assert (=> d!1250690 (= (list!16985 lt!1509196) (originalCharacters!8325 (_1!25481 (v!41074 lt!1509180))))))

(declare-fun dynLambda!20195 (Int TokenValue!8211) BalanceConc!27978)

(assert (=> d!1250690 (= lt!1509196 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509180))))) (value!247996 (_1!25481 (v!41074 lt!1509180)))))))

(assert (=> d!1250690 (= (charsOf!5321 (_1!25481 (v!41074 lt!1509180))) lt!1509196)))

(declare-fun b_lambda!125299 () Bool)

(assert (=> (not b_lambda!125299) (not d!1250690)))

(declare-fun tb!256611 () Bool)

(declare-fun t!352701 () Bool)

(assert (=> (and b!4253088 (= (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509180)))))) t!352701) tb!256611))

(declare-fun b!4253194 () Bool)

(declare-fun e!2641770 () Bool)

(declare-fun tp!1305213 () Bool)

(declare-fun inv!61928 (Conc!14192) Bool)

(assert (=> b!4253194 (= e!2641770 (and (inv!61928 (c!722163 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509180))))) (value!247996 (_1!25481 (v!41074 lt!1509180)))))) tp!1305213))))

(declare-fun result!312960 () Bool)

(declare-fun inv!61929 (BalanceConc!27978) Bool)

(assert (=> tb!256611 (= result!312960 (and (inv!61929 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509180))))) (value!247996 (_1!25481 (v!41074 lt!1509180))))) e!2641770))))

(assert (= tb!256611 b!4253194))

(declare-fun m!4838125 () Bool)

(assert (=> b!4253194 m!4838125))

(declare-fun m!4838127 () Bool)

(assert (=> tb!256611 m!4838127))

(assert (=> d!1250690 t!352701))

(declare-fun b_and!337285 () Bool)

(assert (= b_and!337271 (and (=> t!352701 result!312960) b_and!337285)))

(declare-fun tb!256613 () Bool)

(declare-fun t!352703 () Bool)

(assert (=> (and b!4253085 (= (toChars!10616 (transformation!7981 (h!52559 rules!2971))) (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509180)))))) t!352703) tb!256613))

(declare-fun result!312964 () Bool)

(assert (= result!312964 result!312960))

(assert (=> d!1250690 t!352703))

(declare-fun b_and!337287 () Bool)

(assert (= b_and!337275 (and (=> t!352703 result!312964) b_and!337287)))

(declare-fun m!4838129 () Bool)

(assert (=> d!1250690 m!4838129))

(declare-fun m!4838131 () Bool)

(assert (=> d!1250690 m!4838131))

(assert (=> b!4253093 d!1250690))

(declare-fun b!4253229 () Bool)

(declare-fun e!2641792 () tuple2!44696)

(assert (=> b!4253229 (= e!2641792 (tuple2!44697 Nil!47140 shorterInput!62))))

(declare-fun b!4253230 () Bool)

(declare-fun e!2641791 () Bool)

(declare-fun e!2641793 () Bool)

(assert (=> b!4253230 (= e!2641791 e!2641793)))

(declare-fun res!1748444 () Bool)

(declare-fun lt!1509213 () tuple2!44696)

(assert (=> b!4253230 (= res!1748444 (< (size!34504 (_2!25482 lt!1509213)) (size!34504 shorterInput!62)))))

(assert (=> b!4253230 (=> (not res!1748444) (not e!2641793))))

(declare-fun b!4253232 () Bool)

(declare-fun lt!1509211 () Option!10115)

(declare-fun lt!1509212 () tuple2!44696)

(assert (=> b!4253232 (= e!2641792 (tuple2!44697 (Cons!47140 (_1!25481 (v!41074 lt!1509211)) (_1!25482 lt!1509212)) (_2!25482 lt!1509212)))))

(assert (=> b!4253232 (= lt!1509212 (lexList!2082 thiss!21641 rules!2971 (_2!25481 (v!41074 lt!1509211))))))

(declare-fun b!4253233 () Bool)

(assert (=> b!4253233 (= e!2641791 (= (_2!25482 lt!1509213) shorterInput!62))))

(declare-fun b!4253231 () Bool)

(declare-fun isEmpty!27899 (List!47264) Bool)

(assert (=> b!4253231 (= e!2641793 (not (isEmpty!27899 (_1!25482 lt!1509213))))))

(declare-fun d!1250694 () Bool)

(assert (=> d!1250694 e!2641791))

(declare-fun c!722187 () Bool)

(declare-fun size!34508 (List!47264) Int)

(assert (=> d!1250694 (= c!722187 (> (size!34508 (_1!25482 lt!1509213)) 0))))

(assert (=> d!1250694 (= lt!1509213 e!2641792)))

(declare-fun c!722186 () Bool)

(assert (=> d!1250694 (= c!722186 (is-Some!10114 lt!1509211))))

(assert (=> d!1250694 (= lt!1509211 (maxPrefix!4532 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> d!1250694 (= (lexList!2082 thiss!21641 rules!2971 shorterInput!62) lt!1509213)))

(assert (= (and d!1250694 c!722186) b!4253232))

(assert (= (and d!1250694 (not c!722186)) b!4253229))

(assert (= (and d!1250694 c!722187) b!4253230))

(assert (= (and d!1250694 (not c!722187)) b!4253233))

(assert (= (and b!4253230 res!1748444) b!4253231))

(declare-fun m!4838161 () Bool)

(assert (=> b!4253230 m!4838161))

(assert (=> b!4253230 m!4838051))

(declare-fun m!4838165 () Bool)

(assert (=> b!4253232 m!4838165))

(declare-fun m!4838167 () Bool)

(assert (=> b!4253231 m!4838167))

(declare-fun m!4838169 () Bool)

(assert (=> d!1250694 m!4838169))

(assert (=> d!1250694 m!4838045))

(assert (=> b!4253094 d!1250694))

(declare-fun d!1250706 () Bool)

(declare-fun res!1748449 () Bool)

(declare-fun e!2641798 () Bool)

(assert (=> d!1250706 (=> (not res!1748449) (not e!2641798))))

(assert (=> d!1250706 (= res!1748449 (not (isEmpty!27895 (originalCharacters!8325 (h!52560 tokens!592)))))))

(assert (=> d!1250706 (= (inv!61925 (h!52560 tokens!592)) e!2641798)))

(declare-fun b!4253242 () Bool)

(declare-fun res!1748450 () Bool)

(assert (=> b!4253242 (=> (not res!1748450) (not e!2641798))))

(assert (=> b!4253242 (= res!1748450 (= (originalCharacters!8325 (h!52560 tokens!592)) (list!16985 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) (value!247996 (h!52560 tokens!592))))))))

(declare-fun b!4253243 () Bool)

(assert (=> b!4253243 (= e!2641798 (= (size!34505 (h!52560 tokens!592)) (size!34504 (originalCharacters!8325 (h!52560 tokens!592)))))))

(assert (= (and d!1250706 res!1748449) b!4253242))

(assert (= (and b!4253242 res!1748450) b!4253243))

(declare-fun b_lambda!125303 () Bool)

(assert (=> (not b_lambda!125303) (not b!4253242)))

(declare-fun t!352709 () Bool)

(declare-fun tb!256619 () Bool)

(assert (=> (and b!4253088 (= (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592))))) t!352709) tb!256619))

(declare-fun b!4253244 () Bool)

(declare-fun e!2641799 () Bool)

(declare-fun tp!1305217 () Bool)

(assert (=> b!4253244 (= e!2641799 (and (inv!61928 (c!722163 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) (value!247996 (h!52560 tokens!592))))) tp!1305217))))

(declare-fun result!312972 () Bool)

(assert (=> tb!256619 (= result!312972 (and (inv!61929 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) (value!247996 (h!52560 tokens!592)))) e!2641799))))

(assert (= tb!256619 b!4253244))

(declare-fun m!4838173 () Bool)

(assert (=> b!4253244 m!4838173))

(declare-fun m!4838175 () Bool)

(assert (=> tb!256619 m!4838175))

(assert (=> b!4253242 t!352709))

(declare-fun b_and!337293 () Bool)

(assert (= b_and!337285 (and (=> t!352709 result!312972) b_and!337293)))

(declare-fun t!352711 () Bool)

(declare-fun tb!256621 () Bool)

(assert (=> (and b!4253085 (= (toChars!10616 (transformation!7981 (h!52559 rules!2971))) (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592))))) t!352711) tb!256621))

(declare-fun result!312974 () Bool)

(assert (= result!312974 result!312972))

(assert (=> b!4253242 t!352711))

(declare-fun b_and!337295 () Bool)

(assert (= b_and!337287 (and (=> t!352711 result!312974) b_and!337295)))

(declare-fun m!4838177 () Bool)

(assert (=> d!1250706 m!4838177))

(declare-fun m!4838179 () Bool)

(assert (=> b!4253242 m!4838179))

(assert (=> b!4253242 m!4838179))

(declare-fun m!4838181 () Bool)

(assert (=> b!4253242 m!4838181))

(declare-fun m!4838183 () Bool)

(assert (=> b!4253243 m!4838183))

(assert (=> b!4253083 d!1250706))

(declare-fun b!4253263 () Bool)

(declare-fun res!1748471 () Bool)

(declare-fun e!2641806 () Bool)

(assert (=> b!4253263 (=> (not res!1748471) (not e!2641806))))

(declare-fun lt!1509230 () Option!10115)

(declare-fun get!15301 (Option!10115) tuple2!44694)

(assert (=> b!4253263 (= res!1748471 (= (++!11990 (list!16985 (charsOf!5321 (_1!25481 (get!15301 lt!1509230)))) (_2!25481 (get!15301 lt!1509230))) shorterInput!62))))

(declare-fun b!4253264 () Bool)

(declare-fun contains!9767 (List!47263 Rule!15762) Bool)

(assert (=> b!4253264 (= e!2641806 (contains!9767 rules!2971 (rule!11117 (_1!25481 (get!15301 lt!1509230)))))))

(declare-fun b!4253265 () Bool)

(declare-fun res!1748465 () Bool)

(assert (=> b!4253265 (=> (not res!1748465) (not e!2641806))))

(assert (=> b!4253265 (= res!1748465 (= (list!16985 (charsOf!5321 (_1!25481 (get!15301 lt!1509230)))) (originalCharacters!8325 (_1!25481 (get!15301 lt!1509230)))))))

(declare-fun b!4253266 () Bool)

(declare-fun e!2641807 () Bool)

(assert (=> b!4253266 (= e!2641807 e!2641806)))

(declare-fun res!1748467 () Bool)

(assert (=> b!4253266 (=> (not res!1748467) (not e!2641806))))

(declare-fun isDefined!7468 (Option!10115) Bool)

(assert (=> b!4253266 (= res!1748467 (isDefined!7468 lt!1509230))))

(declare-fun b!4253267 () Bool)

(declare-fun e!2641808 () Option!10115)

(declare-fun lt!1509226 () Option!10115)

(declare-fun lt!1509229 () Option!10115)

(assert (=> b!4253267 (= e!2641808 (ite (and (is-None!10114 lt!1509226) (is-None!10114 lt!1509229)) None!10114 (ite (is-None!10114 lt!1509229) lt!1509226 (ite (is-None!10114 lt!1509226) lt!1509229 (ite (>= (size!34505 (_1!25481 (v!41074 lt!1509226))) (size!34505 (_1!25481 (v!41074 lt!1509229)))) lt!1509226 lt!1509229)))))))

(declare-fun call!294009 () Option!10115)

(assert (=> b!4253267 (= lt!1509226 call!294009)))

(assert (=> b!4253267 (= lt!1509229 (maxPrefix!4532 thiss!21641 (t!352694 rules!2971) shorterInput!62))))

(declare-fun bm!294004 () Bool)

(declare-fun maxPrefixOneRule!3478 (LexerInterface!7576 Rule!15762 List!47261) Option!10115)

(assert (=> bm!294004 (= call!294009 (maxPrefixOneRule!3478 thiss!21641 (h!52559 rules!2971) shorterInput!62))))

(declare-fun b!4253268 () Bool)

(declare-fun res!1748470 () Bool)

(assert (=> b!4253268 (=> (not res!1748470) (not e!2641806))))

(assert (=> b!4253268 (= res!1748470 (< (size!34504 (_2!25481 (get!15301 lt!1509230))) (size!34504 shorterInput!62)))))

(declare-fun b!4253269 () Bool)

(declare-fun res!1748469 () Bool)

(assert (=> b!4253269 (=> (not res!1748469) (not e!2641806))))

(declare-fun matchR!6475 (Regex!12886 List!47261) Bool)

(assert (=> b!4253269 (= res!1748469 (matchR!6475 (regex!7981 (rule!11117 (_1!25481 (get!15301 lt!1509230)))) (list!16985 (charsOf!5321 (_1!25481 (get!15301 lt!1509230))))))))

(declare-fun d!1250710 () Bool)

(assert (=> d!1250710 e!2641807))

(declare-fun res!1748466 () Bool)

(assert (=> d!1250710 (=> res!1748466 e!2641807)))

(declare-fun isEmpty!27900 (Option!10115) Bool)

(assert (=> d!1250710 (= res!1748466 (isEmpty!27900 lt!1509230))))

(assert (=> d!1250710 (= lt!1509230 e!2641808)))

(declare-fun c!722192 () Bool)

(assert (=> d!1250710 (= c!722192 (and (is-Cons!47139 rules!2971) (is-Nil!47139 (t!352694 rules!2971))))))

(declare-datatypes ((Unit!66091 0))(
  ( (Unit!66092) )
))
(declare-fun lt!1509227 () Unit!66091)

(declare-fun lt!1509228 () Unit!66091)

(assert (=> d!1250710 (= lt!1509227 lt!1509228)))

(declare-fun isPrefix!4753 (List!47261 List!47261) Bool)

(assert (=> d!1250710 (isPrefix!4753 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3150 (List!47261 List!47261) Unit!66091)

(assert (=> d!1250710 (= lt!1509228 (lemmaIsPrefixRefl!3150 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!3004 (LexerInterface!7576 List!47263) Bool)

(assert (=> d!1250710 (rulesValidInductive!3004 thiss!21641 rules!2971)))

(assert (=> d!1250710 (= (maxPrefix!4532 thiss!21641 rules!2971 shorterInput!62) lt!1509230)))

(declare-fun b!4253270 () Bool)

(assert (=> b!4253270 (= e!2641808 call!294009)))

(declare-fun b!4253271 () Bool)

(declare-fun res!1748468 () Bool)

(assert (=> b!4253271 (=> (not res!1748468) (not e!2641806))))

(declare-fun apply!10780 (TokenValueInjection!15850 BalanceConc!27978) TokenValue!8211)

(declare-fun seqFromList!5840 (List!47261) BalanceConc!27978)

(assert (=> b!4253271 (= res!1748468 (= (value!247996 (_1!25481 (get!15301 lt!1509230))) (apply!10780 (transformation!7981 (rule!11117 (_1!25481 (get!15301 lt!1509230)))) (seqFromList!5840 (originalCharacters!8325 (_1!25481 (get!15301 lt!1509230)))))))))

(assert (= (and d!1250710 c!722192) b!4253270))

(assert (= (and d!1250710 (not c!722192)) b!4253267))

(assert (= (or b!4253270 b!4253267) bm!294004))

(assert (= (and d!1250710 (not res!1748466)) b!4253266))

(assert (= (and b!4253266 res!1748467) b!4253265))

(assert (= (and b!4253265 res!1748465) b!4253268))

(assert (= (and b!4253268 res!1748470) b!4253263))

(assert (= (and b!4253263 res!1748471) b!4253271))

(assert (= (and b!4253271 res!1748468) b!4253269))

(assert (= (and b!4253269 res!1748469) b!4253264))

(declare-fun m!4838185 () Bool)

(assert (=> b!4253263 m!4838185))

(declare-fun m!4838187 () Bool)

(assert (=> b!4253263 m!4838187))

(assert (=> b!4253263 m!4838187))

(declare-fun m!4838189 () Bool)

(assert (=> b!4253263 m!4838189))

(assert (=> b!4253263 m!4838189))

(declare-fun m!4838191 () Bool)

(assert (=> b!4253263 m!4838191))

(assert (=> b!4253269 m!4838185))

(assert (=> b!4253269 m!4838187))

(assert (=> b!4253269 m!4838187))

(assert (=> b!4253269 m!4838189))

(assert (=> b!4253269 m!4838189))

(declare-fun m!4838193 () Bool)

(assert (=> b!4253269 m!4838193))

(assert (=> b!4253271 m!4838185))

(declare-fun m!4838195 () Bool)

(assert (=> b!4253271 m!4838195))

(assert (=> b!4253271 m!4838195))

(declare-fun m!4838197 () Bool)

(assert (=> b!4253271 m!4838197))

(declare-fun m!4838199 () Bool)

(assert (=> bm!294004 m!4838199))

(declare-fun m!4838201 () Bool)

(assert (=> d!1250710 m!4838201))

(declare-fun m!4838203 () Bool)

(assert (=> d!1250710 m!4838203))

(declare-fun m!4838205 () Bool)

(assert (=> d!1250710 m!4838205))

(declare-fun m!4838207 () Bool)

(assert (=> d!1250710 m!4838207))

(assert (=> b!4253268 m!4838185))

(declare-fun m!4838209 () Bool)

(assert (=> b!4253268 m!4838209))

(assert (=> b!4253268 m!4838051))

(assert (=> b!4253265 m!4838185))

(assert (=> b!4253265 m!4838187))

(assert (=> b!4253265 m!4838187))

(assert (=> b!4253265 m!4838189))

(assert (=> b!4253264 m!4838185))

(declare-fun m!4838211 () Bool)

(assert (=> b!4253264 m!4838211))

(declare-fun m!4838213 () Bool)

(assert (=> b!4253266 m!4838213))

(declare-fun m!4838215 () Bool)

(assert (=> b!4253267 m!4838215))

(assert (=> b!4253084 d!1250710))

(declare-fun b!4253272 () Bool)

(declare-fun res!1748478 () Bool)

(declare-fun e!2641809 () Bool)

(assert (=> b!4253272 (=> (not res!1748478) (not e!2641809))))

(declare-fun lt!1509235 () Option!10115)

(assert (=> b!4253272 (= res!1748478 (= (++!11990 (list!16985 (charsOf!5321 (_1!25481 (get!15301 lt!1509235)))) (_2!25481 (get!15301 lt!1509235))) longerInput!62))))

(declare-fun b!4253273 () Bool)

(assert (=> b!4253273 (= e!2641809 (contains!9767 rules!2971 (rule!11117 (_1!25481 (get!15301 lt!1509235)))))))

(declare-fun b!4253274 () Bool)

(declare-fun res!1748472 () Bool)

(assert (=> b!4253274 (=> (not res!1748472) (not e!2641809))))

(assert (=> b!4253274 (= res!1748472 (= (list!16985 (charsOf!5321 (_1!25481 (get!15301 lt!1509235)))) (originalCharacters!8325 (_1!25481 (get!15301 lt!1509235)))))))

(declare-fun b!4253275 () Bool)

(declare-fun e!2641810 () Bool)

(assert (=> b!4253275 (= e!2641810 e!2641809)))

(declare-fun res!1748474 () Bool)

(assert (=> b!4253275 (=> (not res!1748474) (not e!2641809))))

(assert (=> b!4253275 (= res!1748474 (isDefined!7468 lt!1509235))))

(declare-fun b!4253276 () Bool)

(declare-fun e!2641811 () Option!10115)

(declare-fun lt!1509231 () Option!10115)

(declare-fun lt!1509234 () Option!10115)

(assert (=> b!4253276 (= e!2641811 (ite (and (is-None!10114 lt!1509231) (is-None!10114 lt!1509234)) None!10114 (ite (is-None!10114 lt!1509234) lt!1509231 (ite (is-None!10114 lt!1509231) lt!1509234 (ite (>= (size!34505 (_1!25481 (v!41074 lt!1509231))) (size!34505 (_1!25481 (v!41074 lt!1509234)))) lt!1509231 lt!1509234)))))))

(declare-fun call!294010 () Option!10115)

(assert (=> b!4253276 (= lt!1509231 call!294010)))

(assert (=> b!4253276 (= lt!1509234 (maxPrefix!4532 thiss!21641 (t!352694 rules!2971) longerInput!62))))

(declare-fun bm!294005 () Bool)

(assert (=> bm!294005 (= call!294010 (maxPrefixOneRule!3478 thiss!21641 (h!52559 rules!2971) longerInput!62))))

(declare-fun b!4253277 () Bool)

(declare-fun res!1748477 () Bool)

(assert (=> b!4253277 (=> (not res!1748477) (not e!2641809))))

(assert (=> b!4253277 (= res!1748477 (< (size!34504 (_2!25481 (get!15301 lt!1509235))) (size!34504 longerInput!62)))))

(declare-fun b!4253278 () Bool)

(declare-fun res!1748476 () Bool)

(assert (=> b!4253278 (=> (not res!1748476) (not e!2641809))))

(assert (=> b!4253278 (= res!1748476 (matchR!6475 (regex!7981 (rule!11117 (_1!25481 (get!15301 lt!1509235)))) (list!16985 (charsOf!5321 (_1!25481 (get!15301 lt!1509235))))))))

(declare-fun d!1250712 () Bool)

(assert (=> d!1250712 e!2641810))

(declare-fun res!1748473 () Bool)

(assert (=> d!1250712 (=> res!1748473 e!2641810)))

(assert (=> d!1250712 (= res!1748473 (isEmpty!27900 lt!1509235))))

(assert (=> d!1250712 (= lt!1509235 e!2641811)))

(declare-fun c!722193 () Bool)

(assert (=> d!1250712 (= c!722193 (and (is-Cons!47139 rules!2971) (is-Nil!47139 (t!352694 rules!2971))))))

(declare-fun lt!1509232 () Unit!66091)

(declare-fun lt!1509233 () Unit!66091)

(assert (=> d!1250712 (= lt!1509232 lt!1509233)))

(assert (=> d!1250712 (isPrefix!4753 longerInput!62 longerInput!62)))

(assert (=> d!1250712 (= lt!1509233 (lemmaIsPrefixRefl!3150 longerInput!62 longerInput!62))))

(assert (=> d!1250712 (rulesValidInductive!3004 thiss!21641 rules!2971)))

(assert (=> d!1250712 (= (maxPrefix!4532 thiss!21641 rules!2971 longerInput!62) lt!1509235)))

(declare-fun b!4253279 () Bool)

(assert (=> b!4253279 (= e!2641811 call!294010)))

(declare-fun b!4253280 () Bool)

(declare-fun res!1748475 () Bool)

(assert (=> b!4253280 (=> (not res!1748475) (not e!2641809))))

(assert (=> b!4253280 (= res!1748475 (= (value!247996 (_1!25481 (get!15301 lt!1509235))) (apply!10780 (transformation!7981 (rule!11117 (_1!25481 (get!15301 lt!1509235)))) (seqFromList!5840 (originalCharacters!8325 (_1!25481 (get!15301 lt!1509235)))))))))

(assert (= (and d!1250712 c!722193) b!4253279))

(assert (= (and d!1250712 (not c!722193)) b!4253276))

(assert (= (or b!4253279 b!4253276) bm!294005))

(assert (= (and d!1250712 (not res!1748473)) b!4253275))

(assert (= (and b!4253275 res!1748474) b!4253274))

(assert (= (and b!4253274 res!1748472) b!4253277))

(assert (= (and b!4253277 res!1748477) b!4253272))

(assert (= (and b!4253272 res!1748478) b!4253280))

(assert (= (and b!4253280 res!1748475) b!4253278))

(assert (= (and b!4253278 res!1748476) b!4253273))

(declare-fun m!4838217 () Bool)

(assert (=> b!4253272 m!4838217))

(declare-fun m!4838219 () Bool)

(assert (=> b!4253272 m!4838219))

(assert (=> b!4253272 m!4838219))

(declare-fun m!4838221 () Bool)

(assert (=> b!4253272 m!4838221))

(assert (=> b!4253272 m!4838221))

(declare-fun m!4838223 () Bool)

(assert (=> b!4253272 m!4838223))

(assert (=> b!4253278 m!4838217))

(assert (=> b!4253278 m!4838219))

(assert (=> b!4253278 m!4838219))

(assert (=> b!4253278 m!4838221))

(assert (=> b!4253278 m!4838221))

(declare-fun m!4838225 () Bool)

(assert (=> b!4253278 m!4838225))

(assert (=> b!4253280 m!4838217))

(declare-fun m!4838227 () Bool)

(assert (=> b!4253280 m!4838227))

(assert (=> b!4253280 m!4838227))

(declare-fun m!4838229 () Bool)

(assert (=> b!4253280 m!4838229))

(declare-fun m!4838231 () Bool)

(assert (=> bm!294005 m!4838231))

(declare-fun m!4838233 () Bool)

(assert (=> d!1250712 m!4838233))

(declare-fun m!4838235 () Bool)

(assert (=> d!1250712 m!4838235))

(declare-fun m!4838237 () Bool)

(assert (=> d!1250712 m!4838237))

(assert (=> d!1250712 m!4838207))

(assert (=> b!4253277 m!4838217))

(declare-fun m!4838239 () Bool)

(assert (=> b!4253277 m!4838239))

(assert (=> b!4253277 m!4838049))

(assert (=> b!4253274 m!4838217))

(assert (=> b!4253274 m!4838219))

(assert (=> b!4253274 m!4838219))

(assert (=> b!4253274 m!4838221))

(assert (=> b!4253273 m!4838217))

(declare-fun m!4838241 () Bool)

(assert (=> b!4253273 m!4838241))

(declare-fun m!4838243 () Bool)

(assert (=> b!4253275 m!4838243))

(declare-fun m!4838245 () Bool)

(assert (=> b!4253276 m!4838245))

(assert (=> b!4253084 d!1250712))

(declare-fun b!4253281 () Bool)

(declare-fun e!2641813 () tuple2!44696)

(assert (=> b!4253281 (= e!2641813 (tuple2!44697 Nil!47140 longerInput!62))))

(declare-fun b!4253282 () Bool)

(declare-fun e!2641812 () Bool)

(declare-fun e!2641814 () Bool)

(assert (=> b!4253282 (= e!2641812 e!2641814)))

(declare-fun res!1748479 () Bool)

(declare-fun lt!1509238 () tuple2!44696)

(assert (=> b!4253282 (= res!1748479 (< (size!34504 (_2!25482 lt!1509238)) (size!34504 longerInput!62)))))

(assert (=> b!4253282 (=> (not res!1748479) (not e!2641814))))

(declare-fun b!4253284 () Bool)

(declare-fun lt!1509236 () Option!10115)

(declare-fun lt!1509237 () tuple2!44696)

(assert (=> b!4253284 (= e!2641813 (tuple2!44697 (Cons!47140 (_1!25481 (v!41074 lt!1509236)) (_1!25482 lt!1509237)) (_2!25482 lt!1509237)))))

(assert (=> b!4253284 (= lt!1509237 (lexList!2082 thiss!21641 rules!2971 (_2!25481 (v!41074 lt!1509236))))))

(declare-fun b!4253285 () Bool)

(assert (=> b!4253285 (= e!2641812 (= (_2!25482 lt!1509238) longerInput!62))))

(declare-fun b!4253283 () Bool)

(assert (=> b!4253283 (= e!2641814 (not (isEmpty!27899 (_1!25482 lt!1509238))))))

(declare-fun d!1250714 () Bool)

(assert (=> d!1250714 e!2641812))

(declare-fun c!722195 () Bool)

(assert (=> d!1250714 (= c!722195 (> (size!34508 (_1!25482 lt!1509238)) 0))))

(assert (=> d!1250714 (= lt!1509238 e!2641813)))

(declare-fun c!722194 () Bool)

(assert (=> d!1250714 (= c!722194 (is-Some!10114 lt!1509236))))

(assert (=> d!1250714 (= lt!1509236 (maxPrefix!4532 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1250714 (= (lexList!2082 thiss!21641 rules!2971 longerInput!62) lt!1509238)))

(assert (= (and d!1250714 c!722194) b!4253284))

(assert (= (and d!1250714 (not c!722194)) b!4253281))

(assert (= (and d!1250714 c!722195) b!4253282))

(assert (= (and d!1250714 (not c!722195)) b!4253285))

(assert (= (and b!4253282 res!1748479) b!4253283))

(declare-fun m!4838247 () Bool)

(assert (=> b!4253282 m!4838247))

(assert (=> b!4253282 m!4838049))

(declare-fun m!4838249 () Bool)

(assert (=> b!4253284 m!4838249))

(declare-fun m!4838251 () Bool)

(assert (=> b!4253283 m!4838251))

(declare-fun m!4838253 () Bool)

(assert (=> d!1250714 m!4838253))

(assert (=> d!1250714 m!4838047))

(assert (=> b!4253095 d!1250714))

(declare-fun d!1250716 () Bool)

(assert (=> d!1250716 (= (isEmpty!27896 rules!2971) (is-Nil!47139 rules!2971))))

(assert (=> b!4253087 d!1250716))

(declare-fun d!1250718 () Bool)

(declare-fun lt!1509241 () Int)

(assert (=> d!1250718 (>= lt!1509241 0)))

(declare-fun e!2641817 () Int)

(assert (=> d!1250718 (= lt!1509241 e!2641817)))

(declare-fun c!722198 () Bool)

(assert (=> d!1250718 (= c!722198 (is-Nil!47137 longerInput!62))))

(assert (=> d!1250718 (= (size!34504 longerInput!62) lt!1509241)))

(declare-fun b!4253290 () Bool)

(assert (=> b!4253290 (= e!2641817 0)))

(declare-fun b!4253291 () Bool)

(assert (=> b!4253291 (= e!2641817 (+ 1 (size!34504 (t!352692 longerInput!62))))))

(assert (= (and d!1250718 c!722198) b!4253290))

(assert (= (and d!1250718 (not c!722198)) b!4253291))

(declare-fun m!4838255 () Bool)

(assert (=> b!4253291 m!4838255))

(assert (=> b!4253077 d!1250718))

(declare-fun d!1250720 () Bool)

(declare-fun lt!1509242 () Int)

(assert (=> d!1250720 (>= lt!1509242 0)))

(declare-fun e!2641818 () Int)

(assert (=> d!1250720 (= lt!1509242 e!2641818)))

(declare-fun c!722199 () Bool)

(assert (=> d!1250720 (= c!722199 (is-Nil!47137 shorterInput!62))))

(assert (=> d!1250720 (= (size!34504 shorterInput!62) lt!1509242)))

(declare-fun b!4253292 () Bool)

(assert (=> b!4253292 (= e!2641818 0)))

(declare-fun b!4253293 () Bool)

(assert (=> b!4253293 (= e!2641818 (+ 1 (size!34504 (t!352692 shorterInput!62))))))

(assert (= (and d!1250720 c!722199) b!4253292))

(assert (= (and d!1250720 (not c!722199)) b!4253293))

(declare-fun m!4838257 () Bool)

(assert (=> b!4253293 m!4838257))

(assert (=> b!4253077 d!1250720))

(declare-fun d!1250722 () Bool)

(declare-fun res!1748482 () Bool)

(declare-fun e!2641821 () Bool)

(assert (=> d!1250722 (=> (not res!1748482) (not e!2641821))))

(declare-fun rulesValid!3106 (LexerInterface!7576 List!47263) Bool)

(assert (=> d!1250722 (= res!1748482 (rulesValid!3106 thiss!21641 rules!2971))))

(assert (=> d!1250722 (= (rulesInvariant!6687 thiss!21641 rules!2971) e!2641821)))

(declare-fun b!4253296 () Bool)

(declare-datatypes ((List!47269 0))(
  ( (Nil!47145) (Cons!47145 (h!52565 String!54987) (t!352728 List!47269)) )
))
(declare-fun noDuplicateTag!3267 (LexerInterface!7576 List!47263 List!47269) Bool)

(assert (=> b!4253296 (= e!2641821 (noDuplicateTag!3267 thiss!21641 rules!2971 Nil!47145))))

(assert (= (and d!1250722 res!1748482) b!4253296))

(declare-fun m!4838259 () Bool)

(assert (=> d!1250722 m!4838259))

(declare-fun m!4838261 () Bool)

(assert (=> b!4253296 m!4838261))

(assert (=> b!4253078 d!1250722))

(declare-fun b!4253299 () Bool)

(declare-fun res!1748484 () Bool)

(declare-fun e!2641822 () Bool)

(assert (=> b!4253299 (=> (not res!1748484) (not e!2641822))))

(declare-fun lt!1509243 () List!47261)

(assert (=> b!4253299 (= res!1748484 (= (size!34504 lt!1509243) (+ (size!34504 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181))))) (size!34504 (_2!25481 (v!41074 lt!1509181))))))))

(declare-fun d!1250724 () Bool)

(assert (=> d!1250724 e!2641822))

(declare-fun res!1748483 () Bool)

(assert (=> d!1250724 (=> (not res!1748483) (not e!2641822))))

(assert (=> d!1250724 (= res!1748483 (= (content!7411 lt!1509243) (set.union (content!7411 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181))))) (content!7411 (_2!25481 (v!41074 lt!1509181))))))))

(declare-fun e!2641823 () List!47261)

(assert (=> d!1250724 (= lt!1509243 e!2641823)))

(declare-fun c!722200 () Bool)

(assert (=> d!1250724 (= c!722200 (is-Nil!47137 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181))))))))

(assert (=> d!1250724 (= (++!11990 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181)))) (_2!25481 (v!41074 lt!1509181))) lt!1509243)))

(declare-fun b!4253298 () Bool)

(assert (=> b!4253298 (= e!2641823 (Cons!47137 (h!52557 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181))))) (++!11990 (t!352692 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181))))) (_2!25481 (v!41074 lt!1509181)))))))

(declare-fun b!4253300 () Bool)

(assert (=> b!4253300 (= e!2641822 (or (not (= (_2!25481 (v!41074 lt!1509181)) Nil!47137)) (= lt!1509243 (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181)))))))))

(declare-fun b!4253297 () Bool)

(assert (=> b!4253297 (= e!2641823 (_2!25481 (v!41074 lt!1509181)))))

(assert (= (and d!1250724 c!722200) b!4253297))

(assert (= (and d!1250724 (not c!722200)) b!4253298))

(assert (= (and d!1250724 res!1748483) b!4253299))

(assert (= (and b!4253299 res!1748484) b!4253300))

(declare-fun m!4838263 () Bool)

(assert (=> b!4253299 m!4838263))

(assert (=> b!4253299 m!4838023))

(declare-fun m!4838265 () Bool)

(assert (=> b!4253299 m!4838265))

(declare-fun m!4838267 () Bool)

(assert (=> b!4253299 m!4838267))

(declare-fun m!4838269 () Bool)

(assert (=> d!1250724 m!4838269))

(assert (=> d!1250724 m!4838023))

(declare-fun m!4838271 () Bool)

(assert (=> d!1250724 m!4838271))

(declare-fun m!4838273 () Bool)

(assert (=> d!1250724 m!4838273))

(declare-fun m!4838275 () Bool)

(assert (=> b!4253298 m!4838275))

(assert (=> b!4253089 d!1250724))

(declare-fun d!1250726 () Bool)

(assert (=> d!1250726 (= (list!16985 (charsOf!5321 (_1!25481 (v!41074 lt!1509181)))) (list!16987 (c!722163 (charsOf!5321 (_1!25481 (v!41074 lt!1509181))))))))

(declare-fun bs!598720 () Bool)

(assert (= bs!598720 d!1250726))

(declare-fun m!4838277 () Bool)

(assert (=> bs!598720 m!4838277))

(assert (=> b!4253089 d!1250726))

(declare-fun d!1250728 () Bool)

(declare-fun lt!1509244 () BalanceConc!27978)

(assert (=> d!1250728 (= (list!16985 lt!1509244) (originalCharacters!8325 (_1!25481 (v!41074 lt!1509181))))))

(assert (=> d!1250728 (= lt!1509244 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509181))))) (value!247996 (_1!25481 (v!41074 lt!1509181)))))))

(assert (=> d!1250728 (= (charsOf!5321 (_1!25481 (v!41074 lt!1509181))) lt!1509244)))

(declare-fun b_lambda!125305 () Bool)

(assert (=> (not b_lambda!125305) (not d!1250728)))

(declare-fun tb!256623 () Bool)

(declare-fun t!352713 () Bool)

(assert (=> (and b!4253088 (= (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509181)))))) t!352713) tb!256623))

(declare-fun b!4253301 () Bool)

(declare-fun e!2641824 () Bool)

(declare-fun tp!1305218 () Bool)

(assert (=> b!4253301 (= e!2641824 (and (inv!61928 (c!722163 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509181))))) (value!247996 (_1!25481 (v!41074 lt!1509181)))))) tp!1305218))))

(declare-fun result!312976 () Bool)

(assert (=> tb!256623 (= result!312976 (and (inv!61929 (dynLambda!20195 (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509181))))) (value!247996 (_1!25481 (v!41074 lt!1509181))))) e!2641824))))

(assert (= tb!256623 b!4253301))

(declare-fun m!4838279 () Bool)

(assert (=> b!4253301 m!4838279))

(declare-fun m!4838281 () Bool)

(assert (=> tb!256623 m!4838281))

(assert (=> d!1250728 t!352713))

(declare-fun b_and!337297 () Bool)

(assert (= b_and!337293 (and (=> t!352713 result!312976) b_and!337297)))

(declare-fun t!352715 () Bool)

(declare-fun tb!256625 () Bool)

(assert (=> (and b!4253085 (= (toChars!10616 (transformation!7981 (h!52559 rules!2971))) (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509181)))))) t!352715) tb!256625))

(declare-fun result!312978 () Bool)

(assert (= result!312978 result!312976))

(assert (=> d!1250728 t!352715))

(declare-fun b_and!337299 () Bool)

(assert (= b_and!337295 (and (=> t!352715 result!312978) b_and!337299)))

(declare-fun m!4838283 () Bool)

(assert (=> d!1250728 m!4838283))

(declare-fun m!4838285 () Bool)

(assert (=> d!1250728 m!4838285))

(assert (=> b!4253089 d!1250728))

(declare-fun d!1250730 () Bool)

(assert (=> d!1250730 (= (inv!61921 (tag!8845 (rule!11117 (h!52560 tokens!592)))) (= (mod (str.len (value!247995 (tag!8845 (rule!11117 (h!52560 tokens!592))))) 2) 0))))

(assert (=> b!4253080 d!1250730))

(declare-fun d!1250732 () Bool)

(declare-fun res!1748485 () Bool)

(declare-fun e!2641825 () Bool)

(assert (=> d!1250732 (=> (not res!1748485) (not e!2641825))))

(assert (=> d!1250732 (= res!1748485 (semiInverseModEq!3484 (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) (toValue!10757 (transformation!7981 (rule!11117 (h!52560 tokens!592))))))))

(assert (=> d!1250732 (= (inv!61924 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) e!2641825)))

(declare-fun b!4253302 () Bool)

(assert (=> b!4253302 (= e!2641825 (equivClasses!3383 (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))) (toValue!10757 (transformation!7981 (rule!11117 (h!52560 tokens!592))))))))

(assert (= (and d!1250732 res!1748485) b!4253302))

(declare-fun m!4838287 () Bool)

(assert (=> d!1250732 m!4838287))

(declare-fun m!4838289 () Bool)

(assert (=> b!4253302 m!4838289))

(assert (=> b!4253080 d!1250732))

(declare-fun e!2641828 () Bool)

(assert (=> b!4253092 (= tp!1305164 e!2641828)))

(declare-fun b!4253313 () Bool)

(assert (=> b!4253313 (= e!2641828 tp_is_empty!22763)))

(declare-fun b!4253315 () Bool)

(declare-fun tp!1305229 () Bool)

(assert (=> b!4253315 (= e!2641828 tp!1305229)))

(declare-fun b!4253314 () Bool)

(declare-fun tp!1305230 () Bool)

(declare-fun tp!1305231 () Bool)

(assert (=> b!4253314 (= e!2641828 (and tp!1305230 tp!1305231))))

(declare-fun b!4253316 () Bool)

(declare-fun tp!1305233 () Bool)

(declare-fun tp!1305232 () Bool)

(assert (=> b!4253316 (= e!2641828 (and tp!1305233 tp!1305232))))

(assert (= (and b!4253092 (is-ElementMatch!12886 (regex!7981 (h!52559 rules!2971)))) b!4253313))

(assert (= (and b!4253092 (is-Concat!21098 (regex!7981 (h!52559 rules!2971)))) b!4253314))

(assert (= (and b!4253092 (is-Star!12886 (regex!7981 (h!52559 rules!2971)))) b!4253315))

(assert (= (and b!4253092 (is-Union!12886 (regex!7981 (h!52559 rules!2971)))) b!4253316))

(declare-fun b!4253321 () Bool)

(declare-fun e!2641831 () Bool)

(declare-fun tp!1305236 () Bool)

(assert (=> b!4253321 (= e!2641831 (and tp_is_empty!22763 tp!1305236))))

(assert (=> b!4253082 (= tp!1305168 e!2641831)))

(assert (= (and b!4253082 (is-Cons!47137 (originalCharacters!8325 (h!52560 tokens!592)))) b!4253321))

(declare-fun b!4253335 () Bool)

(declare-fun b_free!126507 () Bool)

(declare-fun b_next!127211 () Bool)

(assert (=> b!4253335 (= b_free!126507 (not b_next!127211))))

(declare-fun tp!1305251 () Bool)

(declare-fun b_and!337301 () Bool)

(assert (=> b!4253335 (= tp!1305251 b_and!337301)))

(declare-fun b_free!126509 () Bool)

(declare-fun b_next!127213 () Bool)

(assert (=> b!4253335 (= b_free!126509 (not b_next!127213))))

(declare-fun t!352717 () Bool)

(declare-fun tb!256627 () Bool)

(assert (=> (and b!4253335 (= (toChars!10616 (transformation!7981 (rule!11117 (h!52560 (t!352695 tokens!592))))) (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509180)))))) t!352717) tb!256627))

(declare-fun result!312986 () Bool)

(assert (= result!312986 result!312960))

(assert (=> d!1250690 t!352717))

(declare-fun t!352719 () Bool)

(declare-fun tb!256629 () Bool)

(assert (=> (and b!4253335 (= (toChars!10616 (transformation!7981 (rule!11117 (h!52560 (t!352695 tokens!592))))) (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592))))) t!352719) tb!256629))

(declare-fun result!312988 () Bool)

(assert (= result!312988 result!312972))

(assert (=> b!4253242 t!352719))

(declare-fun t!352721 () Bool)

(declare-fun tb!256631 () Bool)

(assert (=> (and b!4253335 (= (toChars!10616 (transformation!7981 (rule!11117 (h!52560 (t!352695 tokens!592))))) (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509181)))))) t!352721) tb!256631))

(declare-fun result!312990 () Bool)

(assert (= result!312990 result!312976))

(assert (=> d!1250728 t!352721))

(declare-fun b_and!337303 () Bool)

(declare-fun tp!1305249 () Bool)

(assert (=> b!4253335 (= tp!1305249 (and (=> t!352717 result!312986) (=> t!352719 result!312988) (=> t!352721 result!312990) b_and!337303))))

(declare-fun tp!1305250 () Bool)

(declare-fun b!4253333 () Bool)

(declare-fun e!2641847 () Bool)

(declare-fun e!2641849 () Bool)

(assert (=> b!4253333 (= e!2641849 (and (inv!21 (value!247996 (h!52560 (t!352695 tokens!592)))) e!2641847 tp!1305250))))

(declare-fun tp!1305248 () Bool)

(declare-fun b!4253332 () Bool)

(declare-fun e!2641846 () Bool)

(assert (=> b!4253332 (= e!2641846 (and (inv!61925 (h!52560 (t!352695 tokens!592))) e!2641849 tp!1305248))))

(declare-fun b!4253334 () Bool)

(declare-fun tp!1305247 () Bool)

(declare-fun e!2641848 () Bool)

(assert (=> b!4253334 (= e!2641847 (and tp!1305247 (inv!61921 (tag!8845 (rule!11117 (h!52560 (t!352695 tokens!592))))) (inv!61924 (transformation!7981 (rule!11117 (h!52560 (t!352695 tokens!592))))) e!2641848))))

(assert (=> b!4253335 (= e!2641848 (and tp!1305251 tp!1305249))))

(assert (=> b!4253083 (= tp!1305163 e!2641846)))

(assert (= b!4253334 b!4253335))

(assert (= b!4253333 b!4253334))

(assert (= b!4253332 b!4253333))

(assert (= (and b!4253083 (is-Cons!47140 (t!352695 tokens!592))) b!4253332))

(declare-fun m!4838291 () Bool)

(assert (=> b!4253333 m!4838291))

(declare-fun m!4838293 () Bool)

(assert (=> b!4253332 m!4838293))

(declare-fun m!4838295 () Bool)

(assert (=> b!4253334 m!4838295))

(declare-fun m!4838297 () Bool)

(assert (=> b!4253334 m!4838297))

(declare-fun b!4253336 () Bool)

(declare-fun e!2641850 () Bool)

(declare-fun tp!1305252 () Bool)

(assert (=> b!4253336 (= e!2641850 (and tp_is_empty!22763 tp!1305252))))

(assert (=> b!4253090 (= tp!1305174 e!2641850)))

(assert (= (and b!4253090 (is-Cons!47137 (t!352692 longerInput!62))) b!4253336))

(declare-fun e!2641851 () Bool)

(assert (=> b!4253080 (= tp!1305170 e!2641851)))

(declare-fun b!4253337 () Bool)

(assert (=> b!4253337 (= e!2641851 tp_is_empty!22763)))

(declare-fun b!4253339 () Bool)

(declare-fun tp!1305253 () Bool)

(assert (=> b!4253339 (= e!2641851 tp!1305253)))

(declare-fun b!4253338 () Bool)

(declare-fun tp!1305254 () Bool)

(declare-fun tp!1305255 () Bool)

(assert (=> b!4253338 (= e!2641851 (and tp!1305254 tp!1305255))))

(declare-fun b!4253340 () Bool)

(declare-fun tp!1305257 () Bool)

(declare-fun tp!1305256 () Bool)

(assert (=> b!4253340 (= e!2641851 (and tp!1305257 tp!1305256))))

(assert (= (and b!4253080 (is-ElementMatch!12886 (regex!7981 (rule!11117 (h!52560 tokens!592))))) b!4253337))

(assert (= (and b!4253080 (is-Concat!21098 (regex!7981 (rule!11117 (h!52560 tokens!592))))) b!4253338))

(assert (= (and b!4253080 (is-Star!12886 (regex!7981 (rule!11117 (h!52560 tokens!592))))) b!4253339))

(assert (= (and b!4253080 (is-Union!12886 (regex!7981 (rule!11117 (h!52560 tokens!592))))) b!4253340))

(declare-fun b!4253341 () Bool)

(declare-fun e!2641852 () Bool)

(declare-fun tp!1305258 () Bool)

(assert (=> b!4253341 (= e!2641852 (and tp_is_empty!22763 tp!1305258))))

(assert (=> b!4253096 (= tp!1305173 e!2641852)))

(assert (= (and b!4253096 (is-Cons!47137 (t!352692 shorterInput!62))) b!4253341))

(declare-fun b!4253342 () Bool)

(declare-fun e!2641853 () Bool)

(declare-fun tp!1305259 () Bool)

(assert (=> b!4253342 (= e!2641853 (and tp_is_empty!22763 tp!1305259))))

(assert (=> b!4253086 (= tp!1305172 e!2641853)))

(assert (= (and b!4253086 (is-Cons!47137 (t!352692 suffix!1284))) b!4253342))

(declare-fun b!4253353 () Bool)

(declare-fun b_free!126511 () Bool)

(declare-fun b_next!127215 () Bool)

(assert (=> b!4253353 (= b_free!126511 (not b_next!127215))))

(declare-fun tp!1305271 () Bool)

(declare-fun b_and!337305 () Bool)

(assert (=> b!4253353 (= tp!1305271 b_and!337305)))

(declare-fun b_free!126513 () Bool)

(declare-fun b_next!127217 () Bool)

(assert (=> b!4253353 (= b_free!126513 (not b_next!127217))))

(declare-fun tb!256633 () Bool)

(declare-fun t!352723 () Bool)

(assert (=> (and b!4253353 (= (toChars!10616 (transformation!7981 (h!52559 (t!352694 rules!2971)))) (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509180)))))) t!352723) tb!256633))

(declare-fun result!312994 () Bool)

(assert (= result!312994 result!312960))

(assert (=> d!1250690 t!352723))

(declare-fun t!352725 () Bool)

(declare-fun tb!256635 () Bool)

(assert (=> (and b!4253353 (= (toChars!10616 (transformation!7981 (h!52559 (t!352694 rules!2971)))) (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592))))) t!352725) tb!256635))

(declare-fun result!312996 () Bool)

(assert (= result!312996 result!312972))

(assert (=> b!4253242 t!352725))

(declare-fun t!352727 () Bool)

(declare-fun tb!256637 () Bool)

(assert (=> (and b!4253353 (= (toChars!10616 (transformation!7981 (h!52559 (t!352694 rules!2971)))) (toChars!10616 (transformation!7981 (rule!11117 (_1!25481 (v!41074 lt!1509181)))))) t!352727) tb!256637))

(declare-fun result!312998 () Bool)

(assert (= result!312998 result!312976))

(assert (=> d!1250728 t!352727))

(declare-fun tp!1305270 () Bool)

(declare-fun b_and!337307 () Bool)

(assert (=> b!4253353 (= tp!1305270 (and (=> t!352723 result!312994) (=> t!352725 result!312996) (=> t!352727 result!312998) b_and!337307))))

(declare-fun e!2641862 () Bool)

(assert (=> b!4253353 (= e!2641862 (and tp!1305271 tp!1305270))))

(declare-fun b!4253352 () Bool)

(declare-fun e!2641865 () Bool)

(declare-fun tp!1305269 () Bool)

(assert (=> b!4253352 (= e!2641865 (and tp!1305269 (inv!61921 (tag!8845 (h!52559 (t!352694 rules!2971)))) (inv!61924 (transformation!7981 (h!52559 (t!352694 rules!2971)))) e!2641862))))

(declare-fun b!4253351 () Bool)

(declare-fun e!2641864 () Bool)

(declare-fun tp!1305268 () Bool)

(assert (=> b!4253351 (= e!2641864 (and e!2641865 tp!1305268))))

(assert (=> b!4253091 (= tp!1305171 e!2641864)))

(assert (= b!4253352 b!4253353))

(assert (= b!4253351 b!4253352))

(assert (= (and b!4253091 (is-Cons!47139 (t!352694 rules!2971))) b!4253351))

(declare-fun m!4838299 () Bool)

(assert (=> b!4253352 m!4838299))

(declare-fun m!4838301 () Bool)

(assert (=> b!4253352 m!4838301))

(declare-fun b_lambda!125307 () Bool)

(assert (= b_lambda!125303 (or (and b!4253088 b_free!126493) (and b!4253085 b_free!126497 (= (toChars!10616 (transformation!7981 (h!52559 rules!2971))) (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))))) (and b!4253335 b_free!126509 (= (toChars!10616 (transformation!7981 (rule!11117 (h!52560 (t!352695 tokens!592))))) (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))))) (and b!4253353 b_free!126513 (= (toChars!10616 (transformation!7981 (h!52559 (t!352694 rules!2971)))) (toChars!10616 (transformation!7981 (rule!11117 (h!52560 tokens!592)))))) b_lambda!125307)))

(push 1)

(assert (not b!4253172))

(assert (not d!1250712))

(assert (not b!4253194))

(assert (not bm!294005))

(assert (not b!4253283))

(assert b_and!337303)

(assert (not b!4253276))

(assert (not b!4253299))

(assert (not b!4253268))

(assert (not b!4253298))

(assert (not d!1250688))

(assert (not b!4253332))

(assert (not tb!256611))

(assert (not b!4253265))

(assert (not b!4253277))

(assert (not b!4253291))

(assert (not b!4253242))

(assert (not b_lambda!125299))

(assert (not b!4253244))

(assert b_and!337301)

(assert (not b!4253336))

(assert (not d!1250676))

(assert (not b_next!127217))

(assert (not d!1250724))

(assert (not b_next!127213))

(assert (not b_next!127199))

(assert (not b!4253314))

(assert (not b!4253174))

(assert (not d!1250710))

(assert (not b!4253301))

(assert tp_is_empty!22763)

(assert (not b!4253159))

(assert (not b!4253267))

(assert b_and!337305)

(assert (not b!4253230))

(assert (not b!4253280))

(assert (not b_lambda!125307))

(assert (not d!1250732))

(assert (not b!4253185))

(assert b_and!337299)

(assert (not b!4253315))

(assert (not b!4253302))

(assert (not d!1250690))

(assert (not b!4253293))

(assert (not d!1250694))

(assert (not b!4253272))

(assert (not b_next!127201))

(assert (not b!4253321))

(assert (not b!4253334))

(assert (not tb!256623))

(assert (not b!4253282))

(assert (not b_lambda!125305))

(assert (not b!4253243))

(assert (not b!4253273))

(assert (not b!4253266))

(assert b_and!337297)

(assert (not tb!256619))

(assert (not b!4253263))

(assert (not b!4253269))

(assert (not b!4253231))

(assert (not d!1250714))

(assert (not b!4253296))

(assert (not b!4253184))

(assert (not b!4253275))

(assert (not b!4253271))

(assert (not b!4253316))

(assert (not b!4253264))

(assert (not d!1250726))

(assert (not b!4253352))

(assert (not b!4253284))

(assert (not b_next!127215))

(assert (not b!4253340))

(assert (not b_next!127197))

(assert b_and!337269)

(assert (not b!4253338))

(assert (not d!1250728))

(assert (not b_next!127195))

(assert (not d!1250682))

(assert (not b!4253278))

(assert (not b_next!127211))

(assert (not bm!294004))

(assert b_and!337273)

(assert (not b!4253232))

(assert (not d!1250722))

(assert (not b!4253339))

(assert (not d!1250706))

(assert (not b!4253274))

(assert b_and!337307)

(assert (not b!4253170))

(assert (not b!4253342))

(assert (not b!4253341))

(assert (not b!4253351))

(assert (not b!4253333))

(check-sat)

(pop 1)

(push 1)

(assert b_and!337303)

(assert b_and!337301)

(assert b_and!337305)

(assert b_and!337299)

(assert (not b_next!127201))

(assert b_and!337297)

(assert (not b_next!127215))

(assert b_and!337273)

(assert b_and!337307)

(assert (not b_next!127217))

(assert (not b_next!127213))

(assert (not b_next!127199))

(assert (not b_next!127197))

(assert b_and!337269)

(assert (not b_next!127195))

(assert (not b_next!127211))

(check-sat)

(pop 1)

