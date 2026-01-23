; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!166516 () Bool)

(assert start!166516)

(declare-fun b!1706196 () Bool)

(declare-fun b_free!46087 () Bool)

(declare-fun b_next!46791 () Bool)

(assert (=> b!1706196 (= b_free!46087 (not b_next!46791))))

(declare-fun tp!487335 () Bool)

(declare-fun b_and!123325 () Bool)

(assert (=> b!1706196 (= tp!487335 b_and!123325)))

(declare-fun b_free!46089 () Bool)

(declare-fun b_next!46793 () Bool)

(assert (=> b!1706196 (= b_free!46089 (not b_next!46793))))

(declare-fun tp!487329 () Bool)

(declare-fun b_and!123327 () Bool)

(assert (=> b!1706196 (= tp!487329 b_and!123327)))

(declare-fun b!1706198 () Bool)

(declare-fun b_free!46091 () Bool)

(declare-fun b_next!46795 () Bool)

(assert (=> b!1706198 (= b_free!46091 (not b_next!46795))))

(declare-fun tp!487334 () Bool)

(declare-fun b_and!123329 () Bool)

(assert (=> b!1706198 (= tp!487334 b_and!123329)))

(declare-fun b_free!46093 () Bool)

(declare-fun b_next!46797 () Bool)

(assert (=> b!1706198 (= b_free!46093 (not b_next!46797))))

(declare-fun tp!487331 () Bool)

(declare-fun b_and!123331 () Bool)

(assert (=> b!1706198 (= tp!487331 b_and!123331)))

(declare-fun b!1706185 () Bool)

(declare-fun b_free!46095 () Bool)

(declare-fun b_next!46799 () Bool)

(assert (=> b!1706185 (= b_free!46095 (not b_next!46799))))

(declare-fun tp!487332 () Bool)

(declare-fun b_and!123333 () Bool)

(assert (=> b!1706185 (= tp!487332 b_and!123333)))

(declare-fun b_free!46097 () Bool)

(declare-fun b_next!46801 () Bool)

(assert (=> b!1706185 (= b_free!46097 (not b_next!46801))))

(declare-fun tp!487337 () Bool)

(declare-fun b_and!123335 () Bool)

(assert (=> b!1706185 (= tp!487337 b_and!123335)))

(declare-fun b!1706183 () Bool)

(declare-fun res!764778 () Bool)

(declare-fun e!1091294 () Bool)

(assert (=> b!1706183 (=> (not res!764778) (not e!1091294))))

(declare-datatypes ((List!18666 0))(
  ( (Nil!18596) (Cons!18596 (h!23997 (_ BitVec 16)) (t!157983 List!18666)) )
))
(declare-datatypes ((TokenValue!3370 0))(
  ( (FloatLiteralValue!6740 (text!24035 List!18666)) (TokenValueExt!3369 (__x!12042 Int)) (Broken!16850 (value!103128 List!18666)) (Object!3439) (End!3370) (Def!3370) (Underscore!3370) (Match!3370) (Else!3370) (Error!3370) (Case!3370) (If!3370) (Extends!3370) (Abstract!3370) (Class!3370) (Val!3370) (DelimiterValue!6740 (del!3430 List!18666)) (KeywordValue!3376 (value!103129 List!18666)) (CommentValue!6740 (value!103130 List!18666)) (WhitespaceValue!6740 (value!103131 List!18666)) (IndentationValue!3370 (value!103132 List!18666)) (String!21183) (Int32!3370) (Broken!16851 (value!103133 List!18666)) (Boolean!3371) (Unit!32437) (OperatorValue!3373 (op!3430 List!18666)) (IdentifierValue!6740 (value!103134 List!18666)) (IdentifierValue!6741 (value!103135 List!18666)) (WhitespaceValue!6741 (value!103136 List!18666)) (True!6740) (False!6740) (Broken!16852 (value!103137 List!18666)) (Broken!16853 (value!103138 List!18666)) (True!6741) (RightBrace!3370) (RightBracket!3370) (Colon!3370) (Null!3370) (Comma!3370) (LeftBracket!3370) (False!6741) (LeftBrace!3370) (ImaginaryLiteralValue!3370 (text!24036 List!18666)) (StringLiteralValue!10110 (value!103139 List!18666)) (EOFValue!3370 (value!103140 List!18666)) (IdentValue!3370 (value!103141 List!18666)) (DelimiterValue!6741 (value!103142 List!18666)) (DedentValue!3370 (value!103143 List!18666)) (NewLineValue!3370 (value!103144 List!18666)) (IntegerValue!10110 (value!103145 (_ BitVec 32)) (text!24037 List!18666)) (IntegerValue!10111 (value!103146 Int) (text!24038 List!18666)) (Times!3370) (Or!3370) (Equal!3370) (Minus!3370) (Broken!16854 (value!103147 List!18666)) (And!3370) (Div!3370) (LessEqual!3370) (Mod!3370) (Concat!7978) (Not!3370) (Plus!3370) (SpaceValue!3370 (value!103148 List!18666)) (IntegerValue!10112 (value!103149 Int) (text!24039 List!18666)) (StringLiteralValue!10111 (text!24040 List!18666)) (FloatLiteralValue!6741 (text!24041 List!18666)) (BytesLiteralValue!3370 (value!103150 List!18666)) (CommentValue!6741 (value!103151 List!18666)) (StringLiteralValue!10112 (value!103152 List!18666)) (ErrorTokenValue!3370 (msg!3431 List!18666)) )
))
(declare-datatypes ((C!9390 0))(
  ( (C!9391 (val!5291 Int)) )
))
(declare-datatypes ((Regex!4608 0))(
  ( (ElementMatch!4608 (c!279681 C!9390)) (Concat!7979 (regOne!9728 Regex!4608) (regTwo!9728 Regex!4608)) (EmptyExpr!4608) (Star!4608 (reg!4937 Regex!4608)) (EmptyLang!4608) (Union!4608 (regOne!9729 Regex!4608) (regTwo!9729 Regex!4608)) )
))
(declare-datatypes ((String!21184 0))(
  ( (String!21185 (value!103153 String)) )
))
(declare-datatypes ((List!18667 0))(
  ( (Nil!18597) (Cons!18597 (h!23998 C!9390) (t!157984 List!18667)) )
))
(declare-datatypes ((IArray!12385 0))(
  ( (IArray!12386 (innerList!6250 List!18667)) )
))
(declare-datatypes ((Conc!6190 0))(
  ( (Node!6190 (left!14848 Conc!6190) (right!15178 Conc!6190) (csize!12610 Int) (cheight!6401 Int)) (Leaf!9051 (xs!9066 IArray!12385) (csize!12611 Int)) (Empty!6190) )
))
(declare-datatypes ((BalanceConc!12324 0))(
  ( (BalanceConc!12325 (c!279682 Conc!6190)) )
))
(declare-datatypes ((TokenValueInjection!6400 0))(
  ( (TokenValueInjection!6401 (toValue!4775 Int) (toChars!4634 Int)) )
))
(declare-datatypes ((Rule!6360 0))(
  ( (Rule!6361 (regex!3280 Regex!4608) (tag!3576 String!21184) (isSeparator!3280 Bool) (transformation!3280 TokenValueInjection!6400)) )
))
(declare-datatypes ((List!18668 0))(
  ( (Nil!18598) (Cons!18598 (h!23999 Rule!6360) (t!157985 List!18668)) )
))
(declare-fun rules!3447 () List!18668)

(declare-fun rule!422 () Rule!6360)

(declare-fun contains!3296 (List!18668 Rule!6360) Bool)

(assert (=> b!1706183 (= res!764778 (contains!3296 rules!3447 rule!422))))

(declare-fun b!1706184 () Bool)

(declare-fun e!1091288 () Bool)

(declare-fun e!1091293 () Bool)

(assert (=> b!1706184 (= e!1091288 e!1091293)))

(declare-fun res!764776 () Bool)

(assert (=> b!1706184 (=> (not res!764776) (not e!1091293))))

(declare-datatypes ((Token!6126 0))(
  ( (Token!6127 (value!103154 TokenValue!3370) (rule!5212 Rule!6360) (size!14807 Int) (originalCharacters!4094 List!18667)) )
))
(declare-datatypes ((tuple2!18340 0))(
  ( (tuple2!18341 (_1!10572 Token!6126) (_2!10572 List!18667)) )
))
(declare-fun lt!652399 () tuple2!18340)

(declare-fun token!523 () Token!6126)

(assert (=> b!1706184 (= res!764776 (= (_1!10572 lt!652399) token!523))))

(declare-datatypes ((Option!3604 0))(
  ( (None!3603) (Some!3603 (v!24978 tuple2!18340)) )
))
(declare-fun lt!652398 () Option!3604)

(declare-fun get!5464 (Option!3604) tuple2!18340)

(assert (=> b!1706184 (= lt!652399 (get!5464 lt!652398))))

(declare-fun e!1091289 () Bool)

(assert (=> b!1706185 (= e!1091289 (and tp!487332 tp!487337))))

(declare-fun b!1706187 () Bool)

(declare-fun res!764781 () Bool)

(assert (=> b!1706187 (=> (not res!764781) (not e!1091293))))

(assert (=> b!1706187 (= res!764781 (= (rule!5212 token!523) rule!422))))

(declare-fun b!1706188 () Bool)

(declare-fun res!764779 () Bool)

(assert (=> b!1706188 (=> (not res!764779) (not e!1091294))))

(declare-fun isEmpty!11673 (List!18668) Bool)

(assert (=> b!1706188 (= res!764779 (not (isEmpty!11673 rules!3447)))))

(declare-fun tp!487330 () Bool)

(declare-fun e!1091296 () Bool)

(declare-fun e!1091301 () Bool)

(declare-fun b!1706189 () Bool)

(declare-fun inv!23992 (String!21184) Bool)

(declare-fun inv!23995 (TokenValueInjection!6400) Bool)

(assert (=> b!1706189 (= e!1091301 (and tp!487330 (inv!23992 (tag!3576 rule!422)) (inv!23995 (transformation!3280 rule!422)) e!1091296))))

(declare-fun b!1706190 () Bool)

(declare-fun e!1091295 () Bool)

(declare-fun e!1091297 () Bool)

(declare-fun tp!487338 () Bool)

(assert (=> b!1706190 (= e!1091295 (and e!1091297 tp!487338))))

(declare-fun b!1706191 () Bool)

(declare-fun tp!487339 () Bool)

(assert (=> b!1706191 (= e!1091297 (and tp!487339 (inv!23992 (tag!3576 (h!23999 rules!3447))) (inv!23995 (transformation!3280 (h!23999 rules!3447))) e!1091289))))

(declare-fun b!1706192 () Bool)

(declare-fun res!764777 () Bool)

(assert (=> b!1706192 (=> (not res!764777) (not e!1091293))))

(declare-fun isEmpty!11674 (List!18667) Bool)

(assert (=> b!1706192 (= res!764777 (isEmpty!11674 (_2!10572 lt!652399)))))

(declare-fun b!1706193 () Bool)

(declare-fun validRegex!1851 (Regex!4608) Bool)

(assert (=> b!1706193 (= e!1091293 (not (validRegex!1851 (regex!3280 rule!422))))))

(declare-datatypes ((LexerInterface!2909 0))(
  ( (LexerInterfaceExt!2906 (__x!12043 Int)) (Lexer!2907) )
))
(declare-fun thiss!24550 () LexerInterface!2909)

(declare-fun ruleValid!779 (LexerInterface!2909 Rule!6360) Bool)

(assert (=> b!1706193 (ruleValid!779 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32438 0))(
  ( (Unit!32439) )
))
(declare-fun lt!652397 () Unit!32438)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!303 (LexerInterface!2909 Rule!6360 List!18668) Unit!32438)

(assert (=> b!1706193 (= lt!652397 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!303 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1706194 () Bool)

(assert (=> b!1706194 (= e!1091294 e!1091288)))

(declare-fun res!764782 () Bool)

(assert (=> b!1706194 (=> (not res!764782) (not e!1091288))))

(declare-fun isDefined!2949 (Option!3604) Bool)

(assert (=> b!1706194 (= res!764782 (isDefined!2949 lt!652398))))

(declare-fun maxPrefix!1463 (LexerInterface!2909 List!18668 List!18667) Option!3604)

(declare-fun list!7497 (BalanceConc!12324) List!18667)

(declare-fun charsOf!1929 (Token!6126) BalanceConc!12324)

(assert (=> b!1706194 (= lt!652398 (maxPrefix!1463 thiss!24550 rules!3447 (list!7497 (charsOf!1929 token!523))))))

(declare-fun e!1091290 () Bool)

(declare-fun e!1091287 () Bool)

(declare-fun b!1706186 () Bool)

(declare-fun tp!487333 () Bool)

(assert (=> b!1706186 (= e!1091287 (and tp!487333 (inv!23992 (tag!3576 (rule!5212 token!523))) (inv!23995 (transformation!3280 (rule!5212 token!523))) e!1091290))))

(declare-fun res!764780 () Bool)

(assert (=> start!166516 (=> (not res!764780) (not e!1091294))))

(assert (=> start!166516 (= res!764780 (is-Lexer!2907 thiss!24550))))

(assert (=> start!166516 e!1091294))

(assert (=> start!166516 true))

(assert (=> start!166516 e!1091295))

(assert (=> start!166516 e!1091301))

(declare-fun e!1091292 () Bool)

(declare-fun inv!23996 (Token!6126) Bool)

(assert (=> start!166516 (and (inv!23996 token!523) e!1091292)))

(declare-fun tp!487336 () Bool)

(declare-fun b!1706195 () Bool)

(declare-fun inv!21 (TokenValue!3370) Bool)

(assert (=> b!1706195 (= e!1091292 (and (inv!21 (value!103154 token!523)) e!1091287 tp!487336))))

(assert (=> b!1706196 (= e!1091296 (and tp!487335 tp!487329))))

(declare-fun b!1706197 () Bool)

(declare-fun res!764783 () Bool)

(assert (=> b!1706197 (=> (not res!764783) (not e!1091294))))

(declare-fun rulesInvariant!2578 (LexerInterface!2909 List!18668) Bool)

(assert (=> b!1706197 (= res!764783 (rulesInvariant!2578 thiss!24550 rules!3447))))

(assert (=> b!1706198 (= e!1091290 (and tp!487334 tp!487331))))

(assert (= (and start!166516 res!764780) b!1706188))

(assert (= (and b!1706188 res!764779) b!1706197))

(assert (= (and b!1706197 res!764783) b!1706183))

(assert (= (and b!1706183 res!764778) b!1706194))

(assert (= (and b!1706194 res!764782) b!1706184))

(assert (= (and b!1706184 res!764776) b!1706192))

(assert (= (and b!1706192 res!764777) b!1706187))

(assert (= (and b!1706187 res!764781) b!1706193))

(assert (= b!1706191 b!1706185))

(assert (= b!1706190 b!1706191))

(assert (= (and start!166516 (is-Cons!18598 rules!3447)) b!1706190))

(assert (= b!1706189 b!1706196))

(assert (= start!166516 b!1706189))

(assert (= b!1706186 b!1706198))

(assert (= b!1706195 b!1706186))

(assert (= start!166516 b!1706195))

(declare-fun m!2109913 () Bool)

(assert (=> b!1706184 m!2109913))

(declare-fun m!2109915 () Bool)

(assert (=> b!1706183 m!2109915))

(declare-fun m!2109917 () Bool)

(assert (=> b!1706194 m!2109917))

(declare-fun m!2109919 () Bool)

(assert (=> b!1706194 m!2109919))

(assert (=> b!1706194 m!2109919))

(declare-fun m!2109921 () Bool)

(assert (=> b!1706194 m!2109921))

(assert (=> b!1706194 m!2109921))

(declare-fun m!2109923 () Bool)

(assert (=> b!1706194 m!2109923))

(declare-fun m!2109925 () Bool)

(assert (=> b!1706189 m!2109925))

(declare-fun m!2109927 () Bool)

(assert (=> b!1706189 m!2109927))

(declare-fun m!2109929 () Bool)

(assert (=> b!1706192 m!2109929))

(declare-fun m!2109931 () Bool)

(assert (=> b!1706188 m!2109931))

(declare-fun m!2109933 () Bool)

(assert (=> start!166516 m!2109933))

(declare-fun m!2109935 () Bool)

(assert (=> b!1706193 m!2109935))

(declare-fun m!2109937 () Bool)

(assert (=> b!1706193 m!2109937))

(declare-fun m!2109939 () Bool)

(assert (=> b!1706193 m!2109939))

(declare-fun m!2109941 () Bool)

(assert (=> b!1706197 m!2109941))

(declare-fun m!2109943 () Bool)

(assert (=> b!1706195 m!2109943))

(declare-fun m!2109945 () Bool)

(assert (=> b!1706191 m!2109945))

(declare-fun m!2109947 () Bool)

(assert (=> b!1706191 m!2109947))

(declare-fun m!2109949 () Bool)

(assert (=> b!1706186 m!2109949))

(declare-fun m!2109951 () Bool)

(assert (=> b!1706186 m!2109951))

(push 1)

(assert (not b_next!46795))

(assert (not b_next!46791))

(assert (not b!1706195))

(assert (not b!1706183))

(assert b_and!123329)

(assert (not b_next!46799))

(assert (not start!166516))

(assert (not b!1706186))

(assert (not b!1706190))

(assert b_and!123325)

(assert b_and!123331)

(assert (not b!1706188))

(assert (not b_next!46801))

(assert (not b!1706197))

(assert b_and!123335)

(assert (not b_next!46797))

(assert (not b!1706184))

(assert b_and!123333)

(assert (not b!1706192))

(assert b_and!123327)

(assert (not b!1706191))

(assert (not b!1706193))

(assert (not b!1706189))

(assert (not b!1706194))

(assert (not b_next!46793))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!46795))

(assert (not b_next!46791))

(assert (not b_next!46801))

(assert b_and!123333)

(assert b_and!123327)

(assert b_and!123329)

(assert (not b_next!46799))

(assert b_and!123325)

(assert b_and!123331)

(assert (not b_next!46793))

(assert b_and!123335)

(assert (not b_next!46797))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!523771 () Bool)

(assert (=> d!523771 (= (get!5464 lt!652398) (v!24978 lt!652398))))

(assert (=> b!1706184 d!523771))

(declare-fun d!523773 () Bool)

(declare-fun isEmpty!11677 (Option!3604) Bool)

(assert (=> d!523773 (= (isDefined!2949 lt!652398) (not (isEmpty!11677 lt!652398)))))

(declare-fun bs!401562 () Bool)

(assert (= bs!401562 d!523773))

(declare-fun m!2109993 () Bool)

(assert (=> bs!401562 m!2109993))

(assert (=> b!1706194 d!523773))

(declare-fun b!1706305 () Bool)

(declare-fun res!764855 () Bool)

(declare-fun e!1091383 () Bool)

(assert (=> b!1706305 (=> (not res!764855) (not e!1091383))))

(declare-fun lt!652422 () Option!3604)

(declare-fun size!14809 (List!18667) Int)

(assert (=> b!1706305 (= res!764855 (< (size!14809 (_2!10572 (get!5464 lt!652422))) (size!14809 (list!7497 (charsOf!1929 token!523)))))))

(declare-fun b!1706306 () Bool)

(declare-fun e!1091382 () Option!3604)

(declare-fun lt!652425 () Option!3604)

(declare-fun lt!652424 () Option!3604)

(assert (=> b!1706306 (= e!1091382 (ite (and (is-None!3603 lt!652425) (is-None!3603 lt!652424)) None!3603 (ite (is-None!3603 lt!652424) lt!652425 (ite (is-None!3603 lt!652425) lt!652424 (ite (>= (size!14807 (_1!10572 (v!24978 lt!652425))) (size!14807 (_1!10572 (v!24978 lt!652424)))) lt!652425 lt!652424)))))))

(declare-fun call!109249 () Option!3604)

(assert (=> b!1706306 (= lt!652425 call!109249)))

(assert (=> b!1706306 (= lt!652424 (maxPrefix!1463 thiss!24550 (t!157985 rules!3447) (list!7497 (charsOf!1929 token!523))))))

(declare-fun b!1706308 () Bool)

(declare-fun res!764851 () Bool)

(assert (=> b!1706308 (=> (not res!764851) (not e!1091383))))

(declare-fun apply!5099 (TokenValueInjection!6400 BalanceConc!12324) TokenValue!3370)

(declare-fun seqFromList!2264 (List!18667) BalanceConc!12324)

(assert (=> b!1706308 (= res!764851 (= (value!103154 (_1!10572 (get!5464 lt!652422))) (apply!5099 (transformation!3280 (rule!5212 (_1!10572 (get!5464 lt!652422)))) (seqFromList!2264 (originalCharacters!4094 (_1!10572 (get!5464 lt!652422)))))))))

(declare-fun bm!109244 () Bool)

(declare-fun maxPrefixOneRule!855 (LexerInterface!2909 Rule!6360 List!18667) Option!3604)

(assert (=> bm!109244 (= call!109249 (maxPrefixOneRule!855 thiss!24550 (h!23999 rules!3447) (list!7497 (charsOf!1929 token!523))))))

(declare-fun b!1706309 () Bool)

(assert (=> b!1706309 (= e!1091383 (contains!3296 rules!3447 (rule!5212 (_1!10572 (get!5464 lt!652422)))))))

(declare-fun b!1706310 () Bool)

(declare-fun e!1091384 () Bool)

(assert (=> b!1706310 (= e!1091384 e!1091383)))

(declare-fun res!764854 () Bool)

(assert (=> b!1706310 (=> (not res!764854) (not e!1091383))))

(assert (=> b!1706310 (= res!764854 (isDefined!2949 lt!652422))))

(declare-fun b!1706311 () Bool)

(declare-fun res!764853 () Bool)

(assert (=> b!1706311 (=> (not res!764853) (not e!1091383))))

(declare-fun ++!5103 (List!18667 List!18667) List!18667)

(assert (=> b!1706311 (= res!764853 (= (++!5103 (list!7497 (charsOf!1929 (_1!10572 (get!5464 lt!652422)))) (_2!10572 (get!5464 lt!652422))) (list!7497 (charsOf!1929 token!523))))))

(declare-fun b!1706307 () Bool)

(declare-fun res!764852 () Bool)

(assert (=> b!1706307 (=> (not res!764852) (not e!1091383))))

(declare-fun matchR!2082 (Regex!4608 List!18667) Bool)

(assert (=> b!1706307 (= res!764852 (matchR!2082 (regex!3280 (rule!5212 (_1!10572 (get!5464 lt!652422)))) (list!7497 (charsOf!1929 (_1!10572 (get!5464 lt!652422))))))))

(declare-fun d!523775 () Bool)

(assert (=> d!523775 e!1091384))

(declare-fun res!764849 () Bool)

(assert (=> d!523775 (=> res!764849 e!1091384)))

(assert (=> d!523775 (= res!764849 (isEmpty!11677 lt!652422))))

(assert (=> d!523775 (= lt!652422 e!1091382)))

(declare-fun c!279694 () Bool)

(assert (=> d!523775 (= c!279694 (and (is-Cons!18598 rules!3447) (is-Nil!18598 (t!157985 rules!3447))))))

(declare-fun lt!652423 () Unit!32438)

(declare-fun lt!652426 () Unit!32438)

(assert (=> d!523775 (= lt!652423 lt!652426)))

(declare-fun isPrefix!1523 (List!18667 List!18667) Bool)

(assert (=> d!523775 (isPrefix!1523 (list!7497 (charsOf!1929 token!523)) (list!7497 (charsOf!1929 token!523)))))

(declare-fun lemmaIsPrefixRefl!1040 (List!18667 List!18667) Unit!32438)

(assert (=> d!523775 (= lt!652426 (lemmaIsPrefixRefl!1040 (list!7497 (charsOf!1929 token!523)) (list!7497 (charsOf!1929 token!523))))))

(declare-fun rulesValidInductive!1073 (LexerInterface!2909 List!18668) Bool)

(assert (=> d!523775 (rulesValidInductive!1073 thiss!24550 rules!3447)))

(assert (=> d!523775 (= (maxPrefix!1463 thiss!24550 rules!3447 (list!7497 (charsOf!1929 token!523))) lt!652422)))

(declare-fun b!1706312 () Bool)

(assert (=> b!1706312 (= e!1091382 call!109249)))

(declare-fun b!1706313 () Bool)

(declare-fun res!764850 () Bool)

(assert (=> b!1706313 (=> (not res!764850) (not e!1091383))))

(assert (=> b!1706313 (= res!764850 (= (list!7497 (charsOf!1929 (_1!10572 (get!5464 lt!652422)))) (originalCharacters!4094 (_1!10572 (get!5464 lt!652422)))))))

(assert (= (and d!523775 c!279694) b!1706312))

(assert (= (and d!523775 (not c!279694)) b!1706306))

(assert (= (or b!1706312 b!1706306) bm!109244))

(assert (= (and d!523775 (not res!764849)) b!1706310))

(assert (= (and b!1706310 res!764854) b!1706313))

(assert (= (and b!1706313 res!764850) b!1706305))

(assert (= (and b!1706305 res!764855) b!1706311))

(assert (= (and b!1706311 res!764853) b!1706308))

(assert (= (and b!1706308 res!764851) b!1706307))

(assert (= (and b!1706307 res!764852) b!1706309))

(declare-fun m!2110035 () Bool)

(assert (=> b!1706310 m!2110035))

(declare-fun m!2110037 () Bool)

(assert (=> d!523775 m!2110037))

(assert (=> d!523775 m!2109921))

(assert (=> d!523775 m!2109921))

(declare-fun m!2110039 () Bool)

(assert (=> d!523775 m!2110039))

(assert (=> d!523775 m!2109921))

(assert (=> d!523775 m!2109921))

(declare-fun m!2110041 () Bool)

(assert (=> d!523775 m!2110041))

(declare-fun m!2110043 () Bool)

(assert (=> d!523775 m!2110043))

(declare-fun m!2110045 () Bool)

(assert (=> b!1706309 m!2110045))

(declare-fun m!2110047 () Bool)

(assert (=> b!1706309 m!2110047))

(assert (=> b!1706311 m!2110045))

(declare-fun m!2110049 () Bool)

(assert (=> b!1706311 m!2110049))

(assert (=> b!1706311 m!2110049))

(declare-fun m!2110051 () Bool)

(assert (=> b!1706311 m!2110051))

(assert (=> b!1706311 m!2110051))

(declare-fun m!2110053 () Bool)

(assert (=> b!1706311 m!2110053))

(assert (=> b!1706306 m!2109921))

(declare-fun m!2110055 () Bool)

(assert (=> b!1706306 m!2110055))

(assert (=> bm!109244 m!2109921))

(declare-fun m!2110057 () Bool)

(assert (=> bm!109244 m!2110057))

(assert (=> b!1706308 m!2110045))

(declare-fun m!2110059 () Bool)

(assert (=> b!1706308 m!2110059))

(assert (=> b!1706308 m!2110059))

(declare-fun m!2110061 () Bool)

(assert (=> b!1706308 m!2110061))

(assert (=> b!1706305 m!2110045))

(declare-fun m!2110063 () Bool)

(assert (=> b!1706305 m!2110063))

(assert (=> b!1706305 m!2109921))

(declare-fun m!2110065 () Bool)

(assert (=> b!1706305 m!2110065))

(assert (=> b!1706313 m!2110045))

(assert (=> b!1706313 m!2110049))

(assert (=> b!1706313 m!2110049))

(assert (=> b!1706313 m!2110051))

(assert (=> b!1706307 m!2110045))

(assert (=> b!1706307 m!2110049))

(assert (=> b!1706307 m!2110049))

(assert (=> b!1706307 m!2110051))

(assert (=> b!1706307 m!2110051))

(declare-fun m!2110067 () Bool)

(assert (=> b!1706307 m!2110067))

(assert (=> b!1706194 d!523775))

(declare-fun d!523803 () Bool)

(declare-fun list!7499 (Conc!6190) List!18667)

(assert (=> d!523803 (= (list!7497 (charsOf!1929 token!523)) (list!7499 (c!279682 (charsOf!1929 token!523))))))

(declare-fun bs!401563 () Bool)

(assert (= bs!401563 d!523803))

(declare-fun m!2110069 () Bool)

(assert (=> bs!401563 m!2110069))

(assert (=> b!1706194 d!523803))

(declare-fun d!523805 () Bool)

(declare-fun lt!652429 () BalanceConc!12324)

(assert (=> d!523805 (= (list!7497 lt!652429) (originalCharacters!4094 token!523))))

(declare-fun dynLambda!8462 (Int TokenValue!3370) BalanceConc!12324)

(assert (=> d!523805 (= lt!652429 (dynLambda!8462 (toChars!4634 (transformation!3280 (rule!5212 token!523))) (value!103154 token!523)))))

(assert (=> d!523805 (= (charsOf!1929 token!523) lt!652429)))

(declare-fun b_lambda!53855 () Bool)

(assert (=> (not b_lambda!53855) (not d!523805)))

(declare-fun tb!100769 () Bool)

(declare-fun t!157996 () Bool)

(assert (=> (and b!1706196 (= (toChars!4634 (transformation!3280 rule!422)) (toChars!4634 (transformation!3280 (rule!5212 token!523)))) t!157996) tb!100769))

(declare-fun b!1706336 () Bool)

(declare-fun e!1091401 () Bool)

(declare-fun tp!487378 () Bool)

(declare-fun inv!23999 (Conc!6190) Bool)

(assert (=> b!1706336 (= e!1091401 (and (inv!23999 (c!279682 (dynLambda!8462 (toChars!4634 (transformation!3280 (rule!5212 token!523))) (value!103154 token!523)))) tp!487378))))

(declare-fun result!121010 () Bool)

(declare-fun inv!24000 (BalanceConc!12324) Bool)

(assert (=> tb!100769 (= result!121010 (and (inv!24000 (dynLambda!8462 (toChars!4634 (transformation!3280 (rule!5212 token!523))) (value!103154 token!523))) e!1091401))))

(assert (= tb!100769 b!1706336))

(declare-fun m!2110071 () Bool)

(assert (=> b!1706336 m!2110071))

(declare-fun m!2110073 () Bool)

(assert (=> tb!100769 m!2110073))

(assert (=> d!523805 t!157996))

(declare-fun b_and!123355 () Bool)

(assert (= b_and!123327 (and (=> t!157996 result!121010) b_and!123355)))

(declare-fun t!157998 () Bool)

(declare-fun tb!100771 () Bool)

(assert (=> (and b!1706198 (= (toChars!4634 (transformation!3280 (rule!5212 token!523))) (toChars!4634 (transformation!3280 (rule!5212 token!523)))) t!157998) tb!100771))

(declare-fun result!121014 () Bool)

(assert (= result!121014 result!121010))

(assert (=> d!523805 t!157998))

(declare-fun b_and!123357 () Bool)

(assert (= b_and!123331 (and (=> t!157998 result!121014) b_and!123357)))

(declare-fun tb!100773 () Bool)

(declare-fun t!158000 () Bool)

(assert (=> (and b!1706185 (= (toChars!4634 (transformation!3280 (h!23999 rules!3447))) (toChars!4634 (transformation!3280 (rule!5212 token!523)))) t!158000) tb!100773))

(declare-fun result!121016 () Bool)

(assert (= result!121016 result!121010))

(assert (=> d!523805 t!158000))

(declare-fun b_and!123359 () Bool)

(assert (= b_and!123335 (and (=> t!158000 result!121016) b_and!123359)))

(declare-fun m!2110075 () Bool)

(assert (=> d!523805 m!2110075))

(declare-fun m!2110077 () Bool)

(assert (=> d!523805 m!2110077))

(assert (=> b!1706194 d!523805))

(declare-fun d!523807 () Bool)

(declare-fun lt!652432 () Bool)

(declare-fun content!2637 (List!18668) (Set Rule!6360))

(assert (=> d!523807 (= lt!652432 (set.member rule!422 (content!2637 rules!3447)))))

(declare-fun e!1091416 () Bool)

(assert (=> d!523807 (= lt!652432 e!1091416)))

(declare-fun res!764880 () Bool)

(assert (=> d!523807 (=> (not res!764880) (not e!1091416))))

(assert (=> d!523807 (= res!764880 (is-Cons!18598 rules!3447))))

(assert (=> d!523807 (= (contains!3296 rules!3447 rule!422) lt!652432)))

(declare-fun b!1706354 () Bool)

(declare-fun e!1091415 () Bool)

(assert (=> b!1706354 (= e!1091416 e!1091415)))

(declare-fun res!764879 () Bool)

(assert (=> b!1706354 (=> res!764879 e!1091415)))

(assert (=> b!1706354 (= res!764879 (= (h!23999 rules!3447) rule!422))))

(declare-fun b!1706355 () Bool)

(assert (=> b!1706355 (= e!1091415 (contains!3296 (t!157985 rules!3447) rule!422))))

(assert (= (and d!523807 res!764880) b!1706354))

(assert (= (and b!1706354 (not res!764879)) b!1706355))

(declare-fun m!2110085 () Bool)

(assert (=> d!523807 m!2110085))

(declare-fun m!2110087 () Bool)

(assert (=> d!523807 m!2110087))

(declare-fun m!2110089 () Bool)

(assert (=> b!1706355 m!2110089))

(assert (=> b!1706183 d!523807))

(declare-fun b!1706368 () Bool)

(declare-fun res!764885 () Bool)

(declare-fun e!1091424 () Bool)

(assert (=> b!1706368 (=> res!764885 e!1091424)))

(assert (=> b!1706368 (= res!764885 (not (is-IntegerValue!10112 (value!103154 token!523))))))

(declare-fun e!1091426 () Bool)

(assert (=> b!1706368 (= e!1091426 e!1091424)))

(declare-fun d!523811 () Bool)

(declare-fun c!279705 () Bool)

(assert (=> d!523811 (= c!279705 (is-IntegerValue!10110 (value!103154 token!523)))))

(declare-fun e!1091425 () Bool)

(assert (=> d!523811 (= (inv!21 (value!103154 token!523)) e!1091425)))

(declare-fun b!1706369 () Bool)

(assert (=> b!1706369 (= e!1091425 e!1091426)))

(declare-fun c!279706 () Bool)

(assert (=> b!1706369 (= c!279706 (is-IntegerValue!10111 (value!103154 token!523)))))

(declare-fun b!1706370 () Bool)

(declare-fun inv!15 (TokenValue!3370) Bool)

(assert (=> b!1706370 (= e!1091424 (inv!15 (value!103154 token!523)))))

(declare-fun b!1706371 () Bool)

(declare-fun inv!17 (TokenValue!3370) Bool)

(assert (=> b!1706371 (= e!1091426 (inv!17 (value!103154 token!523)))))

(declare-fun b!1706372 () Bool)

(declare-fun inv!16 (TokenValue!3370) Bool)

(assert (=> b!1706372 (= e!1091425 (inv!16 (value!103154 token!523)))))

(assert (= (and d!523811 c!279705) b!1706372))

(assert (= (and d!523811 (not c!279705)) b!1706369))

(assert (= (and b!1706369 c!279706) b!1706371))

(assert (= (and b!1706369 (not c!279706)) b!1706368))

(assert (= (and b!1706368 (not res!764885)) b!1706370))

(declare-fun m!2110093 () Bool)

(assert (=> b!1706370 m!2110093))

(declare-fun m!2110095 () Bool)

(assert (=> b!1706371 m!2110095))

(declare-fun m!2110097 () Bool)

(assert (=> b!1706372 m!2110097))

(assert (=> b!1706195 d!523811))

(declare-fun d!523815 () Bool)

(assert (=> d!523815 (= (isEmpty!11674 (_2!10572 lt!652399)) (is-Nil!18597 (_2!10572 lt!652399)))))

(assert (=> b!1706192 d!523815))

(declare-fun d!523817 () Bool)

(assert (=> d!523817 (= (inv!23992 (tag!3576 (h!23999 rules!3447))) (= (mod (str.len (value!103153 (tag!3576 (h!23999 rules!3447)))) 2) 0))))

(assert (=> b!1706191 d!523817))

(declare-fun d!523819 () Bool)

(declare-fun res!764888 () Bool)

(declare-fun e!1091429 () Bool)

(assert (=> d!523819 (=> (not res!764888) (not e!1091429))))

(declare-fun semiInverseModEq!1290 (Int Int) Bool)

(assert (=> d!523819 (= res!764888 (semiInverseModEq!1290 (toChars!4634 (transformation!3280 (h!23999 rules!3447))) (toValue!4775 (transformation!3280 (h!23999 rules!3447)))))))

(assert (=> d!523819 (= (inv!23995 (transformation!3280 (h!23999 rules!3447))) e!1091429)))

(declare-fun b!1706375 () Bool)

(declare-fun equivClasses!1231 (Int Int) Bool)

(assert (=> b!1706375 (= e!1091429 (equivClasses!1231 (toChars!4634 (transformation!3280 (h!23999 rules!3447))) (toValue!4775 (transformation!3280 (h!23999 rules!3447)))))))

(assert (= (and d!523819 res!764888) b!1706375))

(declare-fun m!2110101 () Bool)

(assert (=> d!523819 m!2110101))

(declare-fun m!2110103 () Bool)

(assert (=> b!1706375 m!2110103))

(assert (=> b!1706191 d!523819))

(declare-fun b!1706394 () Bool)

(declare-fun e!1091450 () Bool)

(declare-fun e!1091449 () Bool)

(assert (=> b!1706394 (= e!1091450 e!1091449)))

(declare-fun res!764901 () Bool)

(declare-fun nullable!1377 (Regex!4608) Bool)

(assert (=> b!1706394 (= res!764901 (not (nullable!1377 (reg!4937 (regex!3280 rule!422)))))))

(assert (=> b!1706394 (=> (not res!764901) (not e!1091449))))

(declare-fun bm!109260 () Bool)

(declare-fun call!109266 () Bool)

(declare-fun c!279711 () Bool)

(assert (=> bm!109260 (= call!109266 (validRegex!1851 (ite c!279711 (regOne!9729 (regex!3280 rule!422)) (regTwo!9728 (regex!3280 rule!422)))))))

(declare-fun b!1706395 () Bool)

(declare-fun e!1091446 () Bool)

(declare-fun e!1091444 () Bool)

(assert (=> b!1706395 (= e!1091446 e!1091444)))

(declare-fun res!764902 () Bool)

(assert (=> b!1706395 (=> (not res!764902) (not e!1091444))))

(declare-fun call!109267 () Bool)

(assert (=> b!1706395 (= res!764902 call!109267)))

(declare-fun b!1706396 () Bool)

(declare-fun e!1091448 () Bool)

(assert (=> b!1706396 (= e!1091448 call!109267)))

(declare-fun bm!109261 () Bool)

(declare-fun call!109265 () Bool)

(assert (=> bm!109261 (= call!109267 call!109265)))

(declare-fun b!1706397 () Bool)

(declare-fun e!1091445 () Bool)

(assert (=> b!1706397 (= e!1091450 e!1091445)))

(assert (=> b!1706397 (= c!279711 (is-Union!4608 (regex!3280 rule!422)))))

(declare-fun b!1706398 () Bool)

(declare-fun res!764903 () Bool)

(assert (=> b!1706398 (=> (not res!764903) (not e!1091448))))

(assert (=> b!1706398 (= res!764903 call!109266)))

(assert (=> b!1706398 (= e!1091445 e!1091448)))

(declare-fun d!523825 () Bool)

(declare-fun res!764899 () Bool)

(declare-fun e!1091447 () Bool)

(assert (=> d!523825 (=> res!764899 e!1091447)))

(assert (=> d!523825 (= res!764899 (is-ElementMatch!4608 (regex!3280 rule!422)))))

(assert (=> d!523825 (= (validRegex!1851 (regex!3280 rule!422)) e!1091447)))

(declare-fun b!1706399 () Bool)

(assert (=> b!1706399 (= e!1091449 call!109265)))

(declare-fun b!1706400 () Bool)

(declare-fun res!764900 () Bool)

(assert (=> b!1706400 (=> res!764900 e!1091446)))

(assert (=> b!1706400 (= res!764900 (not (is-Concat!7979 (regex!3280 rule!422))))))

(assert (=> b!1706400 (= e!1091445 e!1091446)))

(declare-fun b!1706401 () Bool)

(assert (=> b!1706401 (= e!1091447 e!1091450)))

(declare-fun c!279712 () Bool)

(assert (=> b!1706401 (= c!279712 (is-Star!4608 (regex!3280 rule!422)))))

(declare-fun b!1706402 () Bool)

(assert (=> b!1706402 (= e!1091444 call!109266)))

(declare-fun bm!109262 () Bool)

(assert (=> bm!109262 (= call!109265 (validRegex!1851 (ite c!279712 (reg!4937 (regex!3280 rule!422)) (ite c!279711 (regTwo!9729 (regex!3280 rule!422)) (regOne!9728 (regex!3280 rule!422))))))))

(assert (= (and d!523825 (not res!764899)) b!1706401))

(assert (= (and b!1706401 c!279712) b!1706394))

(assert (= (and b!1706401 (not c!279712)) b!1706397))

(assert (= (and b!1706394 res!764901) b!1706399))

(assert (= (and b!1706397 c!279711) b!1706398))

(assert (= (and b!1706397 (not c!279711)) b!1706400))

(assert (= (and b!1706398 res!764903) b!1706396))

(assert (= (and b!1706400 (not res!764900)) b!1706395))

(assert (= (and b!1706395 res!764902) b!1706402))

(assert (= (or b!1706398 b!1706402) bm!109260))

(assert (= (or b!1706396 b!1706395) bm!109261))

(assert (= (or b!1706399 bm!109261) bm!109262))

(declare-fun m!2110107 () Bool)

(assert (=> b!1706394 m!2110107))

(declare-fun m!2110109 () Bool)

(assert (=> bm!109260 m!2110109))

(declare-fun m!2110111 () Bool)

(assert (=> bm!109262 m!2110111))

(assert (=> b!1706193 d!523825))

(declare-fun d!523829 () Bool)

(declare-fun res!764908 () Bool)

(declare-fun e!1091453 () Bool)

(assert (=> d!523829 (=> (not res!764908) (not e!1091453))))

(assert (=> d!523829 (= res!764908 (validRegex!1851 (regex!3280 rule!422)))))

(assert (=> d!523829 (= (ruleValid!779 thiss!24550 rule!422) e!1091453)))

(declare-fun b!1706407 () Bool)

(declare-fun res!764909 () Bool)

(assert (=> b!1706407 (=> (not res!764909) (not e!1091453))))

(assert (=> b!1706407 (= res!764909 (not (nullable!1377 (regex!3280 rule!422))))))

(declare-fun b!1706408 () Bool)

(assert (=> b!1706408 (= e!1091453 (not (= (tag!3576 rule!422) (String!21185 ""))))))

(assert (= (and d!523829 res!764908) b!1706407))

(assert (= (and b!1706407 res!764909) b!1706408))

(assert (=> d!523829 m!2109935))

(declare-fun m!2110113 () Bool)

(assert (=> b!1706407 m!2110113))

(assert (=> b!1706193 d!523829))

(declare-fun d!523831 () Bool)

(assert (=> d!523831 (ruleValid!779 thiss!24550 rule!422)))

(declare-fun lt!652438 () Unit!32438)

(declare-fun choose!10361 (LexerInterface!2909 Rule!6360 List!18668) Unit!32438)

(assert (=> d!523831 (= lt!652438 (choose!10361 thiss!24550 rule!422 rules!3447))))

(assert (=> d!523831 (contains!3296 rules!3447 rule!422)))

(assert (=> d!523831 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!303 thiss!24550 rule!422 rules!3447) lt!652438)))

(declare-fun bs!401566 () Bool)

(assert (= bs!401566 d!523831))

(assert (=> bs!401566 m!2109937))

(declare-fun m!2110115 () Bool)

(assert (=> bs!401566 m!2110115))

(assert (=> bs!401566 m!2109915))

(assert (=> b!1706193 d!523831))

(declare-fun d!523833 () Bool)

(assert (=> d!523833 (= (inv!23992 (tag!3576 rule!422)) (= (mod (str.len (value!103153 (tag!3576 rule!422))) 2) 0))))

(assert (=> b!1706189 d!523833))

(declare-fun d!523835 () Bool)

(declare-fun res!764910 () Bool)

(declare-fun e!1091454 () Bool)

(assert (=> d!523835 (=> (not res!764910) (not e!1091454))))

(assert (=> d!523835 (= res!764910 (semiInverseModEq!1290 (toChars!4634 (transformation!3280 rule!422)) (toValue!4775 (transformation!3280 rule!422))))))

(assert (=> d!523835 (= (inv!23995 (transformation!3280 rule!422)) e!1091454)))

(declare-fun b!1706409 () Bool)

(assert (=> b!1706409 (= e!1091454 (equivClasses!1231 (toChars!4634 (transformation!3280 rule!422)) (toValue!4775 (transformation!3280 rule!422))))))

(assert (= (and d!523835 res!764910) b!1706409))

(declare-fun m!2110117 () Bool)

(assert (=> d!523835 m!2110117))

(declare-fun m!2110119 () Bool)

(assert (=> b!1706409 m!2110119))

(assert (=> b!1706189 d!523835))

(declare-fun d!523837 () Bool)

(declare-fun res!764913 () Bool)

(declare-fun e!1091457 () Bool)

(assert (=> d!523837 (=> (not res!764913) (not e!1091457))))

(declare-fun rulesValid!1218 (LexerInterface!2909 List!18668) Bool)

(assert (=> d!523837 (= res!764913 (rulesValid!1218 thiss!24550 rules!3447))))

(assert (=> d!523837 (= (rulesInvariant!2578 thiss!24550 rules!3447) e!1091457)))

(declare-fun b!1706412 () Bool)

(declare-datatypes ((List!18672 0))(
  ( (Nil!18602) (Cons!18602 (h!24003 String!21184) (t!158005 List!18672)) )
))
(declare-fun noDuplicateTag!1218 (LexerInterface!2909 List!18668 List!18672) Bool)

(assert (=> b!1706412 (= e!1091457 (noDuplicateTag!1218 thiss!24550 rules!3447 Nil!18602))))

(assert (= (and d!523837 res!764913) b!1706412))

(declare-fun m!2110121 () Bool)

(assert (=> d!523837 m!2110121))

(declare-fun m!2110123 () Bool)

(assert (=> b!1706412 m!2110123))

(assert (=> b!1706197 d!523837))

(declare-fun d!523839 () Bool)

(assert (=> d!523839 (= (inv!23992 (tag!3576 (rule!5212 token!523))) (= (mod (str.len (value!103153 (tag!3576 (rule!5212 token!523)))) 2) 0))))

(assert (=> b!1706186 d!523839))

(declare-fun d!523841 () Bool)

(declare-fun res!764914 () Bool)

(declare-fun e!1091458 () Bool)

(assert (=> d!523841 (=> (not res!764914) (not e!1091458))))

(assert (=> d!523841 (= res!764914 (semiInverseModEq!1290 (toChars!4634 (transformation!3280 (rule!5212 token!523))) (toValue!4775 (transformation!3280 (rule!5212 token!523)))))))

(assert (=> d!523841 (= (inv!23995 (transformation!3280 (rule!5212 token!523))) e!1091458)))

(declare-fun b!1706413 () Bool)

(assert (=> b!1706413 (= e!1091458 (equivClasses!1231 (toChars!4634 (transformation!3280 (rule!5212 token!523))) (toValue!4775 (transformation!3280 (rule!5212 token!523)))))))

(assert (= (and d!523841 res!764914) b!1706413))

(declare-fun m!2110125 () Bool)

(assert (=> d!523841 m!2110125))

(declare-fun m!2110127 () Bool)

(assert (=> b!1706413 m!2110127))

(assert (=> b!1706186 d!523841))

(declare-fun d!523843 () Bool)

(assert (=> d!523843 (= (isEmpty!11673 rules!3447) (is-Nil!18598 rules!3447))))

(assert (=> b!1706188 d!523843))

(declare-fun d!523845 () Bool)

(declare-fun res!764919 () Bool)

(declare-fun e!1091461 () Bool)

(assert (=> d!523845 (=> (not res!764919) (not e!1091461))))

(assert (=> d!523845 (= res!764919 (not (isEmpty!11674 (originalCharacters!4094 token!523))))))

(assert (=> d!523845 (= (inv!23996 token!523) e!1091461)))

(declare-fun b!1706418 () Bool)

(declare-fun res!764920 () Bool)

(assert (=> b!1706418 (=> (not res!764920) (not e!1091461))))

(assert (=> b!1706418 (= res!764920 (= (originalCharacters!4094 token!523) (list!7497 (dynLambda!8462 (toChars!4634 (transformation!3280 (rule!5212 token!523))) (value!103154 token!523)))))))

(declare-fun b!1706419 () Bool)

(assert (=> b!1706419 (= e!1091461 (= (size!14807 token!523) (size!14809 (originalCharacters!4094 token!523))))))

(assert (= (and d!523845 res!764919) b!1706418))

(assert (= (and b!1706418 res!764920) b!1706419))

(declare-fun b_lambda!53857 () Bool)

(assert (=> (not b_lambda!53857) (not b!1706418)))

(assert (=> b!1706418 t!157996))

(declare-fun b_and!123361 () Bool)

(assert (= b_and!123355 (and (=> t!157996 result!121010) b_and!123361)))

(assert (=> b!1706418 t!157998))

(declare-fun b_and!123363 () Bool)

(assert (= b_and!123357 (and (=> t!157998 result!121014) b_and!123363)))

(assert (=> b!1706418 t!158000))

(declare-fun b_and!123365 () Bool)

(assert (= b_and!123359 (and (=> t!158000 result!121016) b_and!123365)))

(declare-fun m!2110129 () Bool)

(assert (=> d!523845 m!2110129))

(assert (=> b!1706418 m!2110077))

(assert (=> b!1706418 m!2110077))

(declare-fun m!2110131 () Bool)

(assert (=> b!1706418 m!2110131))

(declare-fun m!2110133 () Bool)

(assert (=> b!1706419 m!2110133))

(assert (=> start!166516 d!523845))

(declare-fun b!1706433 () Bool)

(declare-fun e!1091464 () Bool)

(declare-fun tp!487392 () Bool)

(declare-fun tp!487391 () Bool)

(assert (=> b!1706433 (= e!1091464 (and tp!487392 tp!487391))))

(assert (=> b!1706189 (= tp!487330 e!1091464)))

(declare-fun b!1706431 () Bool)

(declare-fun tp!487389 () Bool)

(declare-fun tp!487390 () Bool)

(assert (=> b!1706431 (= e!1091464 (and tp!487389 tp!487390))))

(declare-fun b!1706432 () Bool)

(declare-fun tp!487393 () Bool)

(assert (=> b!1706432 (= e!1091464 tp!487393)))

(declare-fun b!1706430 () Bool)

(declare-fun tp_is_empty!7463 () Bool)

(assert (=> b!1706430 (= e!1091464 tp_is_empty!7463)))

(assert (= (and b!1706189 (is-ElementMatch!4608 (regex!3280 rule!422))) b!1706430))

(assert (= (and b!1706189 (is-Concat!7979 (regex!3280 rule!422))) b!1706431))

(assert (= (and b!1706189 (is-Star!4608 (regex!3280 rule!422))) b!1706432))

(assert (= (and b!1706189 (is-Union!4608 (regex!3280 rule!422))) b!1706433))

(declare-fun b!1706444 () Bool)

(declare-fun b_free!46111 () Bool)

(declare-fun b_next!46815 () Bool)

(assert (=> b!1706444 (= b_free!46111 (not b_next!46815))))

(declare-fun tp!487404 () Bool)

(declare-fun b_and!123367 () Bool)

(assert (=> b!1706444 (= tp!487404 b_and!123367)))

(declare-fun b_free!46113 () Bool)

(declare-fun b_next!46817 () Bool)

(assert (=> b!1706444 (= b_free!46113 (not b_next!46817))))

(declare-fun tb!100775 () Bool)

(declare-fun t!158002 () Bool)

(assert (=> (and b!1706444 (= (toChars!4634 (transformation!3280 (h!23999 (t!157985 rules!3447)))) (toChars!4634 (transformation!3280 (rule!5212 token!523)))) t!158002) tb!100775))

(declare-fun result!121022 () Bool)

(assert (= result!121022 result!121010))

(assert (=> d!523805 t!158002))

(assert (=> b!1706418 t!158002))

(declare-fun tp!487403 () Bool)

(declare-fun b_and!123369 () Bool)

(assert (=> b!1706444 (= tp!487403 (and (=> t!158002 result!121022) b_and!123369))))

(declare-fun e!1091476 () Bool)

(assert (=> b!1706444 (= e!1091476 (and tp!487404 tp!487403))))

(declare-fun b!1706443 () Bool)

(declare-fun tp!487405 () Bool)

(declare-fun e!1091473 () Bool)

(assert (=> b!1706443 (= e!1091473 (and tp!487405 (inv!23992 (tag!3576 (h!23999 (t!157985 rules!3447)))) (inv!23995 (transformation!3280 (h!23999 (t!157985 rules!3447)))) e!1091476))))

(declare-fun b!1706442 () Bool)

(declare-fun e!1091475 () Bool)

(declare-fun tp!487402 () Bool)

(assert (=> b!1706442 (= e!1091475 (and e!1091473 tp!487402))))

(assert (=> b!1706190 (= tp!487338 e!1091475)))

(assert (= b!1706443 b!1706444))

(assert (= b!1706442 b!1706443))

(assert (= (and b!1706190 (is-Cons!18598 (t!157985 rules!3447))) b!1706442))

(declare-fun m!2110135 () Bool)

(assert (=> b!1706443 m!2110135))

(declare-fun m!2110137 () Bool)

(assert (=> b!1706443 m!2110137))

(declare-fun b!1706449 () Bool)

(declare-fun e!1091479 () Bool)

(declare-fun tp!487408 () Bool)

(assert (=> b!1706449 (= e!1091479 (and tp_is_empty!7463 tp!487408))))

(assert (=> b!1706195 (= tp!487336 e!1091479)))

(assert (= (and b!1706195 (is-Cons!18597 (originalCharacters!4094 token!523))) b!1706449))

(declare-fun b!1706453 () Bool)

(declare-fun e!1091480 () Bool)

(declare-fun tp!487412 () Bool)

(declare-fun tp!487411 () Bool)

(assert (=> b!1706453 (= e!1091480 (and tp!487412 tp!487411))))

(assert (=> b!1706186 (= tp!487333 e!1091480)))

(declare-fun b!1706451 () Bool)

(declare-fun tp!487409 () Bool)

(declare-fun tp!487410 () Bool)

(assert (=> b!1706451 (= e!1091480 (and tp!487409 tp!487410))))

(declare-fun b!1706452 () Bool)

(declare-fun tp!487413 () Bool)

(assert (=> b!1706452 (= e!1091480 tp!487413)))

(declare-fun b!1706450 () Bool)

(assert (=> b!1706450 (= e!1091480 tp_is_empty!7463)))

(assert (= (and b!1706186 (is-ElementMatch!4608 (regex!3280 (rule!5212 token!523)))) b!1706450))

(assert (= (and b!1706186 (is-Concat!7979 (regex!3280 (rule!5212 token!523)))) b!1706451))

(assert (= (and b!1706186 (is-Star!4608 (regex!3280 (rule!5212 token!523)))) b!1706452))

(assert (= (and b!1706186 (is-Union!4608 (regex!3280 (rule!5212 token!523)))) b!1706453))

(declare-fun b!1706457 () Bool)

(declare-fun e!1091481 () Bool)

(declare-fun tp!487417 () Bool)

(declare-fun tp!487416 () Bool)

(assert (=> b!1706457 (= e!1091481 (and tp!487417 tp!487416))))

(assert (=> b!1706191 (= tp!487339 e!1091481)))

(declare-fun b!1706455 () Bool)

(declare-fun tp!487414 () Bool)

(declare-fun tp!487415 () Bool)

(assert (=> b!1706455 (= e!1091481 (and tp!487414 tp!487415))))

(declare-fun b!1706456 () Bool)

(declare-fun tp!487418 () Bool)

(assert (=> b!1706456 (= e!1091481 tp!487418)))

(declare-fun b!1706454 () Bool)

(assert (=> b!1706454 (= e!1091481 tp_is_empty!7463)))

(assert (= (and b!1706191 (is-ElementMatch!4608 (regex!3280 (h!23999 rules!3447)))) b!1706454))

(assert (= (and b!1706191 (is-Concat!7979 (regex!3280 (h!23999 rules!3447)))) b!1706455))

(assert (= (and b!1706191 (is-Star!4608 (regex!3280 (h!23999 rules!3447)))) b!1706456))

(assert (= (and b!1706191 (is-Union!4608 (regex!3280 (h!23999 rules!3447)))) b!1706457))

(declare-fun b_lambda!53859 () Bool)

(assert (= b_lambda!53857 (or (and b!1706196 b_free!46089 (= (toChars!4634 (transformation!3280 rule!422)) (toChars!4634 (transformation!3280 (rule!5212 token!523))))) (and b!1706198 b_free!46093) (and b!1706185 b_free!46097 (= (toChars!4634 (transformation!3280 (h!23999 rules!3447))) (toChars!4634 (transformation!3280 (rule!5212 token!523))))) (and b!1706444 b_free!46113 (= (toChars!4634 (transformation!3280 (h!23999 (t!157985 rules!3447)))) (toChars!4634 (transformation!3280 (rule!5212 token!523))))) b_lambda!53859)))

(declare-fun b_lambda!53861 () Bool)

(assert (= b_lambda!53855 (or (and b!1706196 b_free!46089 (= (toChars!4634 (transformation!3280 rule!422)) (toChars!4634 (transformation!3280 (rule!5212 token!523))))) (and b!1706198 b_free!46093) (and b!1706185 b_free!46097 (= (toChars!4634 (transformation!3280 (h!23999 rules!3447))) (toChars!4634 (transformation!3280 (rule!5212 token!523))))) (and b!1706444 b_free!46113 (= (toChars!4634 (transformation!3280 (h!23999 (t!157985 rules!3447)))) (toChars!4634 (transformation!3280 (rule!5212 token!523))))) b_lambda!53861)))

(push 1)

(assert (not b_next!46791))

(assert (not b!1706336))

(assert (not b!1706419))

(assert (not d!523775))

(assert (not b!1706433))

(assert (not bm!109260))

(assert (not b!1706455))

(assert (not b!1706394))

(assert (not b_next!46795))

(assert (not b!1706413))

(assert (not b!1706306))

(assert (not b!1706443))

(assert (not b!1706375))

(assert (not b!1706452))

(assert (not b_next!46801))

(assert b_and!123363)

(assert (not d!523807))

(assert (not b!1706372))

(assert (not d!523841))

(assert (not b_next!46797))

(assert (not b!1706412))

(assert b_and!123333)

(assert (not d!523829))

(assert (not b_next!46815))

(assert (not b_lambda!53861))

(assert (not d!523773))

(assert (not b!1706407))

(assert (not b!1706409))

(assert b_and!123361)

(assert (not b!1706313))

(assert b_and!123329)

(assert (not d!523805))

(assert (not b!1706418))

(assert (not b_next!46799))

(assert (not d!523803))

(assert (not b_lambda!53859))

(assert (not b!1706431))

(assert (not b!1706370))

(assert (not b!1706457))

(assert b_and!123365)

(assert (not b!1706308))

(assert (not tb!100769))

(assert b_and!123367)

(assert (not b!1706449))

(assert (not b!1706307))

(assert (not bm!109244))

(assert (not b!1706442))

(assert (not b!1706355))

(assert (not b!1706311))

(assert (not d!523831))

(assert (not d!523845))

(assert (not d!523835))

(assert (not d!523837))

(assert (not b!1706432))

(assert b_and!123325)

(assert (not b!1706371))

(assert (not bm!109262))

(assert (not b!1706305))

(assert b_and!123369)

(assert (not d!523819))

(assert (not b!1706456))

(assert (not b!1706453))

(assert tp_is_empty!7463)

(assert (not b!1706309))

(assert (not b!1706310))

(assert (not b_next!46817))

(assert (not b!1706451))

(assert (not b_next!46793))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!46795))

(assert (not b_next!46791))

(assert (not b_next!46797))

(assert b_and!123361)

(assert b_and!123329)

(assert (not b_next!46799))

(assert b_and!123365)

(assert b_and!123367)

(assert b_and!123325)

(assert b_and!123369)

(assert (not b_next!46801))

(assert b_and!123363)

(assert b_and!123333)

(assert (not b_next!46815))

(assert (not b_next!46817))

(assert (not b_next!46793))

(check-sat)

(pop 1)

