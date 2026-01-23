; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!348296 () Bool)

(assert start!348296)

(declare-fun b!3698000 () Bool)

(declare-fun b_free!98457 () Bool)

(declare-fun b_next!99161 () Bool)

(assert (=> b!3698000 (= b_free!98457 (not b_next!99161))))

(declare-fun tp!1124109 () Bool)

(declare-fun b_and!276443 () Bool)

(assert (=> b!3698000 (= tp!1124109 b_and!276443)))

(declare-fun b_free!98459 () Bool)

(declare-fun b_next!99163 () Bool)

(assert (=> b!3698000 (= b_free!98459 (not b_next!99163))))

(declare-fun tp!1124113 () Bool)

(declare-fun b_and!276445 () Bool)

(assert (=> b!3698000 (= tp!1124113 b_and!276445)))

(declare-fun b!3697985 () Bool)

(declare-fun b_free!98461 () Bool)

(declare-fun b_next!99165 () Bool)

(assert (=> b!3697985 (= b_free!98461 (not b_next!99165))))

(declare-fun tp!1124112 () Bool)

(declare-fun b_and!276447 () Bool)

(assert (=> b!3697985 (= tp!1124112 b_and!276447)))

(declare-fun b_free!98463 () Bool)

(declare-fun b_next!99167 () Bool)

(assert (=> b!3697985 (= b_free!98463 (not b_next!99167))))

(declare-fun tp!1124114 () Bool)

(declare-fun b_and!276449 () Bool)

(assert (=> b!3697985 (= tp!1124114 b_and!276449)))

(declare-fun b!3697983 () Bool)

(declare-fun res!1503937 () Bool)

(declare-fun e!2290145 () Bool)

(assert (=> b!3697983 (=> (not res!1503937) (not e!2290145))))

(declare-datatypes ((List!39397 0))(
  ( (Nil!39273) (Cons!39273 (h!44693 (_ BitVec 16)) (t!301792 List!39397)) )
))
(declare-datatypes ((TokenValue!6191 0))(
  ( (FloatLiteralValue!12382 (text!43782 List!39397)) (TokenValueExt!6190 (__x!24599 Int)) (Broken!30955 (value!190318 List!39397)) (Object!6314) (End!6191) (Def!6191) (Underscore!6191) (Match!6191) (Else!6191) (Error!6191) (Case!6191) (If!6191) (Extends!6191) (Abstract!6191) (Class!6191) (Val!6191) (DelimiterValue!12382 (del!6251 List!39397)) (KeywordValue!6197 (value!190319 List!39397)) (CommentValue!12382 (value!190320 List!39397)) (WhitespaceValue!12382 (value!190321 List!39397)) (IndentationValue!6191 (value!190322 List!39397)) (String!44290) (Int32!6191) (Broken!30956 (value!190323 List!39397)) (Boolean!6192) (Unit!57246) (OperatorValue!6194 (op!6251 List!39397)) (IdentifierValue!12382 (value!190324 List!39397)) (IdentifierValue!12383 (value!190325 List!39397)) (WhitespaceValue!12383 (value!190326 List!39397)) (True!12382) (False!12382) (Broken!30957 (value!190327 List!39397)) (Broken!30958 (value!190328 List!39397)) (True!12383) (RightBrace!6191) (RightBracket!6191) (Colon!6191) (Null!6191) (Comma!6191) (LeftBracket!6191) (False!12383) (LeftBrace!6191) (ImaginaryLiteralValue!6191 (text!43783 List!39397)) (StringLiteralValue!18573 (value!190329 List!39397)) (EOFValue!6191 (value!190330 List!39397)) (IdentValue!6191 (value!190331 List!39397)) (DelimiterValue!12383 (value!190332 List!39397)) (DedentValue!6191 (value!190333 List!39397)) (NewLineValue!6191 (value!190334 List!39397)) (IntegerValue!18573 (value!190335 (_ BitVec 32)) (text!43784 List!39397)) (IntegerValue!18574 (value!190336 Int) (text!43785 List!39397)) (Times!6191) (Or!6191) (Equal!6191) (Minus!6191) (Broken!30959 (value!190337 List!39397)) (And!6191) (Div!6191) (LessEqual!6191) (Mod!6191) (Concat!16911) (Not!6191) (Plus!6191) (SpaceValue!6191 (value!190338 List!39397)) (IntegerValue!18575 (value!190339 Int) (text!43786 List!39397)) (StringLiteralValue!18574 (text!43787 List!39397)) (FloatLiteralValue!12383 (text!43788 List!39397)) (BytesLiteralValue!6191 (value!190340 List!39397)) (CommentValue!12383 (value!190341 List!39397)) (StringLiteralValue!18575 (value!190342 List!39397)) (ErrorTokenValue!6191 (msg!6252 List!39397)) )
))
(declare-datatypes ((C!21626 0))(
  ( (C!21627 (val!12861 Int)) )
))
(declare-datatypes ((Regex!10720 0))(
  ( (ElementMatch!10720 (c!639097 C!21626)) (Concat!16912 (regOne!21952 Regex!10720) (regTwo!21952 Regex!10720)) (EmptyExpr!10720) (Star!10720 (reg!11049 Regex!10720)) (EmptyLang!10720) (Union!10720 (regOne!21953 Regex!10720) (regTwo!21953 Regex!10720)) )
))
(declare-datatypes ((String!44291 0))(
  ( (String!44292 (value!190343 String)) )
))
(declare-datatypes ((List!39398 0))(
  ( (Nil!39274) (Cons!39274 (h!44694 C!21626) (t!301793 List!39398)) )
))
(declare-datatypes ((IArray!24121 0))(
  ( (IArray!24122 (innerList!12118 List!39398)) )
))
(declare-datatypes ((Conc!12058 0))(
  ( (Node!12058 (left!30585 Conc!12058) (right!30915 Conc!12058) (csize!24346 Int) (cheight!12269 Int)) (Leaf!18650 (xs!15260 IArray!24121) (csize!24347 Int)) (Empty!12058) )
))
(declare-datatypes ((BalanceConc!23730 0))(
  ( (BalanceConc!23731 (c!639098 Conc!12058)) )
))
(declare-datatypes ((TokenValueInjection!11810 0))(
  ( (TokenValueInjection!11811 (toValue!8293 Int) (toChars!8152 Int)) )
))
(declare-datatypes ((Rule!11722 0))(
  ( (Rule!11723 (regex!5961 Regex!10720) (tag!6791 String!44291) (isSeparator!5961 Bool) (transformation!5961 TokenValueInjection!11810)) )
))
(declare-datatypes ((List!39399 0))(
  ( (Nil!39275) (Cons!39275 (h!44695 Rule!11722) (t!301794 List!39399)) )
))
(declare-fun rules!3598 () List!39399)

(declare-fun isEmpty!23405 (List!39399) Bool)

(assert (=> b!3697983 (= res!1503937 (not (isEmpty!23405 rules!3598)))))

(declare-fun b!3697984 () Bool)

(declare-fun e!2290147 () Bool)

(declare-fun e!2290153 () Bool)

(assert (=> b!3697984 (= e!2290147 e!2290153)))

(declare-fun res!1503945 () Bool)

(assert (=> b!3697984 (=> res!1503945 e!2290153)))

(declare-fun lt!1294181 () Rule!11722)

(declare-fun lt!1294177 () List!39398)

(declare-fun matchR!5257 (Regex!10720 List!39398) Bool)

(assert (=> b!3697984 (= res!1503945 (not (matchR!5257 (regex!5961 lt!1294181) lt!1294177)))))

(declare-datatypes ((Option!8495 0))(
  ( (None!8494) (Some!8494 (v!38452 Rule!11722)) )
))
(declare-fun lt!1294180 () Option!8495)

(declare-fun get!13063 (Option!8495) Rule!11722)

(assert (=> b!3697984 (= lt!1294181 (get!13063 lt!1294180))))

(declare-fun e!2290157 () Bool)

(assert (=> b!3697985 (= e!2290157 (and tp!1124112 tp!1124114))))

(declare-fun b!3697986 () Bool)

(declare-fun res!1503946 () Bool)

(declare-fun e!2290146 () Bool)

(assert (=> b!3697986 (=> (not res!1503946) (not e!2290146))))

(assert (=> b!3697986 (= res!1503946 (is-Cons!39275 rules!3598))))

(declare-fun tp!1124115 () Bool)

(declare-fun e!2290151 () Bool)

(declare-fun b!3697987 () Bool)

(declare-fun e!2290149 () Bool)

(declare-fun inv!52778 (String!44291) Bool)

(declare-fun inv!52781 (TokenValueInjection!11810) Bool)

(assert (=> b!3697987 (= e!2290149 (and tp!1124115 (inv!52778 (tag!6791 (h!44695 rules!3598))) (inv!52781 (transformation!5961 (h!44695 rules!3598))) e!2290151))))

(declare-fun b!3697988 () Bool)

(declare-fun res!1503943 () Bool)

(assert (=> b!3697988 (=> (not res!1503943) (not e!2290145))))

(declare-datatypes ((LexerInterface!5550 0))(
  ( (LexerInterfaceExt!5547 (__x!24600 Int)) (Lexer!5548) )
))
(declare-fun thiss!25322 () LexerInterface!5550)

(declare-fun rulesInvariant!4947 (LexerInterface!5550 List!39399) Bool)

(assert (=> b!3697988 (= res!1503943 (rulesInvariant!4947 thiss!25322 rules!3598))))

(declare-fun b!3697989 () Bool)

(assert (=> b!3697989 (= e!2290145 e!2290146)))

(declare-fun res!1503938 () Bool)

(assert (=> b!3697989 (=> (not res!1503938) (not e!2290146))))

(declare-datatypes ((Token!11276 0))(
  ( (Token!11277 (value!190344 TokenValue!6191) (rule!8821 Rule!11722) (size!29955 Int) (originalCharacters!6669 List!39398)) )
))
(declare-datatypes ((tuple2!39142 0))(
  ( (tuple2!39143 (_1!22705 Token!11276) (_2!22705 List!39398)) )
))
(declare-datatypes ((Option!8496 0))(
  ( (None!8495) (Some!8495 (v!38453 tuple2!39142)) )
))
(declare-fun lt!1294179 () Option!8496)

(declare-fun isDefined!6684 (Option!8496) Bool)

(assert (=> b!3697989 (= res!1503938 (isDefined!6684 lt!1294179))))

(declare-fun input!3172 () List!39398)

(declare-fun maxPrefix!3072 (LexerInterface!5550 List!39399 List!39398) Option!8496)

(assert (=> b!3697989 (= lt!1294179 (maxPrefix!3072 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3697990 () Bool)

(declare-fun res!1503947 () Bool)

(declare-fun e!2290159 () Bool)

(assert (=> b!3697990 (=> (not res!1503947) (not e!2290159))))

(declare-fun token!544 () Token!11276)

(assert (=> b!3697990 (= res!1503947 (= (h!44695 rules!3598) (rule!8821 token!544)))))

(declare-fun res!1503942 () Bool)

(assert (=> start!348296 (=> (not res!1503942) (not e!2290145))))

(assert (=> start!348296 (= res!1503942 (is-Lexer!5548 thiss!25322))))

(assert (=> start!348296 e!2290145))

(assert (=> start!348296 true))

(declare-fun e!2290156 () Bool)

(assert (=> start!348296 e!2290156))

(declare-fun e!2290158 () Bool)

(declare-fun inv!52782 (Token!11276) Bool)

(assert (=> start!348296 (and (inv!52782 token!544) e!2290158)))

(declare-fun e!2290155 () Bool)

(assert (=> start!348296 e!2290155))

(declare-fun e!2290160 () Bool)

(declare-fun tp!1124111 () Bool)

(declare-fun b!3697991 () Bool)

(assert (=> b!3697991 (= e!2290160 (and tp!1124111 (inv!52778 (tag!6791 (rule!8821 token!544))) (inv!52781 (transformation!5961 (rule!8821 token!544))) e!2290157))))

(declare-fun b!3697992 () Bool)

(declare-fun tp!1124116 () Bool)

(declare-fun inv!21 (TokenValue!6191) Bool)

(assert (=> b!3697992 (= e!2290158 (and (inv!21 (value!190344 token!544)) e!2290160 tp!1124116))))

(declare-fun b!3697993 () Bool)

(declare-fun res!1503941 () Bool)

(assert (=> b!3697993 (=> (not res!1503941) (not e!2290146))))

(declare-fun get!13064 (Option!8496) tuple2!39142)

(assert (=> b!3697993 (= res!1503941 (= (_1!22705 (get!13064 lt!1294179)) token!544))))

(declare-fun b!3697994 () Bool)

(declare-fun res!1503948 () Bool)

(assert (=> b!3697994 (=> (not res!1503948) (not e!2290159))))

(declare-fun lt!1294178 () Option!8496)

(assert (=> b!3697994 (= res!1503948 (= (_1!22705 (get!13064 lt!1294178)) token!544))))

(declare-fun b!3697995 () Bool)

(assert (=> b!3697995 (= e!2290146 e!2290159)))

(declare-fun res!1503944 () Bool)

(assert (=> b!3697995 (=> (not res!1503944) (not e!2290159))))

(assert (=> b!3697995 (= res!1503944 (isDefined!6684 lt!1294178))))

(declare-fun maxPrefixOneRule!2182 (LexerInterface!5550 Rule!11722 List!39398) Option!8496)

(assert (=> b!3697995 (= lt!1294178 (maxPrefixOneRule!2182 thiss!25322 (h!44695 rules!3598) input!3172))))

(declare-fun b!3697996 () Bool)

(assert (=> b!3697996 (= e!2290153 (not (= (rule!8821 token!544) lt!1294181)))))

(declare-fun b!3697997 () Bool)

(declare-fun e!2290154 () Bool)

(assert (=> b!3697997 (= e!2290154 e!2290147)))

(declare-fun res!1503939 () Bool)

(assert (=> b!3697997 (=> res!1503939 e!2290147)))

(declare-fun isDefined!6685 (Option!8495) Bool)

(assert (=> b!3697997 (= res!1503939 (not (isDefined!6685 lt!1294180)))))

(declare-fun getRuleFromTag!1511 (LexerInterface!5550 List!39399 String!44291) Option!8495)

(assert (=> b!3697997 (= lt!1294180 (getRuleFromTag!1511 thiss!25322 rules!3598 (tag!6791 (rule!8821 token!544))))))

(declare-fun b!3697998 () Bool)

(declare-fun tp!1124117 () Bool)

(assert (=> b!3697998 (= e!2290156 (and e!2290149 tp!1124117))))

(declare-fun b!3697999 () Bool)

(assert (=> b!3697999 (= e!2290159 e!2290154)))

(declare-fun res!1503940 () Bool)

(assert (=> b!3697999 (=> (not res!1503940) (not e!2290154))))

(assert (=> b!3697999 (= res!1503940 (matchR!5257 (regex!5961 (h!44695 rules!3598)) lt!1294177))))

(declare-fun list!14672 (BalanceConc!23730) List!39398)

(declare-fun charsOf!3954 (Token!11276) BalanceConc!23730)

(assert (=> b!3697999 (= lt!1294177 (list!14672 (charsOf!3954 token!544)))))

(assert (=> b!3698000 (= e!2290151 (and tp!1124109 tp!1124113))))

(declare-fun b!3698001 () Bool)

(declare-fun tp_is_empty!18515 () Bool)

(declare-fun tp!1124110 () Bool)

(assert (=> b!3698001 (= e!2290155 (and tp_is_empty!18515 tp!1124110))))

(assert (= (and start!348296 res!1503942) b!3697988))

(assert (= (and b!3697988 res!1503943) b!3697983))

(assert (= (and b!3697983 res!1503937) b!3697989))

(assert (= (and b!3697989 res!1503938) b!3697993))

(assert (= (and b!3697993 res!1503941) b!3697986))

(assert (= (and b!3697986 res!1503946) b!3697995))

(assert (= (and b!3697995 res!1503944) b!3697994))

(assert (= (and b!3697994 res!1503948) b!3697990))

(assert (= (and b!3697990 res!1503947) b!3697999))

(assert (= (and b!3697999 res!1503940) b!3697997))

(assert (= (and b!3697997 (not res!1503939)) b!3697984))

(assert (= (and b!3697984 (not res!1503945)) b!3697996))

(assert (= b!3697987 b!3698000))

(assert (= b!3697998 b!3697987))

(assert (= (and start!348296 (is-Cons!39275 rules!3598)) b!3697998))

(assert (= b!3697991 b!3697985))

(assert (= b!3697992 b!3697991))

(assert (= start!348296 b!3697992))

(assert (= (and start!348296 (is-Cons!39274 input!3172)) b!3698001))

(declare-fun m!4209309 () Bool)

(assert (=> b!3697989 m!4209309))

(declare-fun m!4209311 () Bool)

(assert (=> b!3697989 m!4209311))

(declare-fun m!4209313 () Bool)

(assert (=> b!3697993 m!4209313))

(declare-fun m!4209315 () Bool)

(assert (=> b!3697999 m!4209315))

(declare-fun m!4209317 () Bool)

(assert (=> b!3697999 m!4209317))

(assert (=> b!3697999 m!4209317))

(declare-fun m!4209319 () Bool)

(assert (=> b!3697999 m!4209319))

(declare-fun m!4209321 () Bool)

(assert (=> b!3697987 m!4209321))

(declare-fun m!4209323 () Bool)

(assert (=> b!3697987 m!4209323))

(declare-fun m!4209325 () Bool)

(assert (=> b!3697994 m!4209325))

(declare-fun m!4209327 () Bool)

(assert (=> start!348296 m!4209327))

(declare-fun m!4209329 () Bool)

(assert (=> b!3697984 m!4209329))

(declare-fun m!4209331 () Bool)

(assert (=> b!3697984 m!4209331))

(declare-fun m!4209333 () Bool)

(assert (=> b!3697983 m!4209333))

(declare-fun m!4209335 () Bool)

(assert (=> b!3697991 m!4209335))

(declare-fun m!4209337 () Bool)

(assert (=> b!3697991 m!4209337))

(declare-fun m!4209339 () Bool)

(assert (=> b!3697992 m!4209339))

(declare-fun m!4209341 () Bool)

(assert (=> b!3697997 m!4209341))

(declare-fun m!4209343 () Bool)

(assert (=> b!3697997 m!4209343))

(declare-fun m!4209345 () Bool)

(assert (=> b!3697988 m!4209345))

(declare-fun m!4209347 () Bool)

(assert (=> b!3697995 m!4209347))

(declare-fun m!4209349 () Bool)

(assert (=> b!3697995 m!4209349))

(push 1)

(assert b_and!276445)

(assert (not b_next!99167))

(assert (not b!3697987))

(assert (not b!3697998))

(assert (not b!3697984))

(assert (not b!3697988))

(assert (not b!3697993))

(assert (not b!3698001))

(assert (not start!348296))

(assert (not b!3697995))

(assert (not b!3697983))

(assert (not b_next!99165))

(assert (not b!3697991))

(assert b_and!276443)

(assert (not b!3697994))

(assert tp_is_empty!18515)

(assert b_and!276449)

(assert (not b_next!99163))

(assert (not b_next!99161))

(assert (not b!3697989))

(assert (not b!3697992))

(assert (not b!3697997))

(assert b_and!276447)

(assert (not b!3697999))

(check-sat)

(pop 1)

(push 1)

(assert b_and!276443)

(assert b_and!276445)

(assert (not b_next!99167))

(assert b_and!276449)

(assert b_and!276447)

(assert (not b_next!99165))

(assert (not b_next!99163))

(assert (not b_next!99161))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084494 () Bool)

(assert (=> d!1084494 (= (get!13064 lt!1294179) (v!38453 lt!1294179))))

(assert (=> b!3697993 d!1084494))

(declare-fun d!1084496 () Bool)

(assert (=> d!1084496 (= (isEmpty!23405 rules!3598) (is-Nil!39275 rules!3598))))

(assert (=> b!3697983 d!1084496))

(declare-fun d!1084498 () Bool)

(assert (=> d!1084498 (= (get!13064 lt!1294178) (v!38453 lt!1294178))))

(assert (=> b!3697994 d!1084498))

(declare-fun d!1084500 () Bool)

(declare-fun e!2290224 () Bool)

(assert (=> d!1084500 e!2290224))

(declare-fun c!639108 () Bool)

(assert (=> d!1084500 (= c!639108 (is-EmptyExpr!10720 (regex!5961 lt!1294181)))))

(declare-fun lt!1294199 () Bool)

(declare-fun e!2290223 () Bool)

(assert (=> d!1084500 (= lt!1294199 e!2290223)))

(declare-fun c!639110 () Bool)

(declare-fun isEmpty!23407 (List!39398) Bool)

(assert (=> d!1084500 (= c!639110 (isEmpty!23407 lt!1294177))))

(declare-fun validRegex!4901 (Regex!10720) Bool)

(assert (=> d!1084500 (validRegex!4901 (regex!5961 lt!1294181))))

(assert (=> d!1084500 (= (matchR!5257 (regex!5961 lt!1294181) lt!1294177) lt!1294199)))

(declare-fun b!3698087 () Bool)

(declare-fun e!2290226 () Bool)

(assert (=> b!3698087 (= e!2290224 e!2290226)))

(declare-fun c!639109 () Bool)

(assert (=> b!3698087 (= c!639109 (is-EmptyLang!10720 (regex!5961 lt!1294181)))))

(declare-fun b!3698088 () Bool)

(declare-fun res!1504013 () Bool)

(declare-fun e!2290227 () Bool)

(assert (=> b!3698088 (=> res!1504013 e!2290227)))

(declare-fun e!2290229 () Bool)

(assert (=> b!3698088 (= res!1504013 e!2290229)))

(declare-fun res!1504009 () Bool)

(assert (=> b!3698088 (=> (not res!1504009) (not e!2290229))))

(assert (=> b!3698088 (= res!1504009 lt!1294199)))

(declare-fun b!3698089 () Bool)

(declare-fun res!1504014 () Bool)

(assert (=> b!3698089 (=> (not res!1504014) (not e!2290229))))

(declare-fun call!267215 () Bool)

(assert (=> b!3698089 (= res!1504014 (not call!267215))))

(declare-fun b!3698090 () Bool)

(declare-fun res!1504010 () Bool)

(declare-fun e!2290228 () Bool)

(assert (=> b!3698090 (=> res!1504010 e!2290228)))

(declare-fun tail!5729 (List!39398) List!39398)

(assert (=> b!3698090 (= res!1504010 (not (isEmpty!23407 (tail!5729 lt!1294177))))))

(declare-fun bm!267210 () Bool)

(assert (=> bm!267210 (= call!267215 (isEmpty!23407 lt!1294177))))

(declare-fun b!3698091 () Bool)

(declare-fun derivativeStep!3279 (Regex!10720 C!21626) Regex!10720)

(declare-fun head!7992 (List!39398) C!21626)

(assert (=> b!3698091 (= e!2290223 (matchR!5257 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177)) (tail!5729 lt!1294177)))))

(declare-fun b!3698092 () Bool)

(declare-fun e!2290225 () Bool)

(assert (=> b!3698092 (= e!2290225 e!2290228)))

(declare-fun res!1504015 () Bool)

(assert (=> b!3698092 (=> res!1504015 e!2290228)))

(assert (=> b!3698092 (= res!1504015 call!267215)))

(declare-fun b!3698093 () Bool)

(assert (=> b!3698093 (= e!2290229 (= (head!7992 lt!1294177) (c!639097 (regex!5961 lt!1294181))))))

(declare-fun b!3698094 () Bool)

(assert (=> b!3698094 (= e!2290228 (not (= (head!7992 lt!1294177) (c!639097 (regex!5961 lt!1294181)))))))

(declare-fun b!3698095 () Bool)

(declare-fun res!1504016 () Bool)

(assert (=> b!3698095 (=> (not res!1504016) (not e!2290229))))

(assert (=> b!3698095 (= res!1504016 (isEmpty!23407 (tail!5729 lt!1294177)))))

(declare-fun b!3698096 () Bool)

(assert (=> b!3698096 (= e!2290226 (not lt!1294199))))

(declare-fun b!3698097 () Bool)

(assert (=> b!3698097 (= e!2290227 e!2290225)))

(declare-fun res!1504012 () Bool)

(assert (=> b!3698097 (=> (not res!1504012) (not e!2290225))))

(assert (=> b!3698097 (= res!1504012 (not lt!1294199))))

(declare-fun b!3698098 () Bool)

(assert (=> b!3698098 (= e!2290224 (= lt!1294199 call!267215))))

(declare-fun b!3698099 () Bool)

(declare-fun nullable!3737 (Regex!10720) Bool)

(assert (=> b!3698099 (= e!2290223 (nullable!3737 (regex!5961 lt!1294181)))))

(declare-fun b!3698100 () Bool)

(declare-fun res!1504011 () Bool)

(assert (=> b!3698100 (=> res!1504011 e!2290227)))

(assert (=> b!3698100 (= res!1504011 (not (is-ElementMatch!10720 (regex!5961 lt!1294181))))))

(assert (=> b!3698100 (= e!2290226 e!2290227)))

(assert (= (and d!1084500 c!639110) b!3698099))

(assert (= (and d!1084500 (not c!639110)) b!3698091))

(assert (= (and d!1084500 c!639108) b!3698098))

(assert (= (and d!1084500 (not c!639108)) b!3698087))

(assert (= (and b!3698087 c!639109) b!3698096))

(assert (= (and b!3698087 (not c!639109)) b!3698100))

(assert (= (and b!3698100 (not res!1504011)) b!3698088))

(assert (= (and b!3698088 res!1504009) b!3698089))

(assert (= (and b!3698089 res!1504014) b!3698095))

(assert (= (and b!3698095 res!1504016) b!3698093))

(assert (= (and b!3698088 (not res!1504013)) b!3698097))

(assert (= (and b!3698097 res!1504012) b!3698092))

(assert (= (and b!3698092 (not res!1504015)) b!3698090))

(assert (= (and b!3698090 (not res!1504010)) b!3698094))

(assert (= (or b!3698098 b!3698089 b!3698092) bm!267210))

(declare-fun m!4209393 () Bool)

(assert (=> d!1084500 m!4209393))

(declare-fun m!4209395 () Bool)

(assert (=> d!1084500 m!4209395))

(declare-fun m!4209397 () Bool)

(assert (=> b!3698093 m!4209397))

(assert (=> b!3698091 m!4209397))

(assert (=> b!3698091 m!4209397))

(declare-fun m!4209399 () Bool)

(assert (=> b!3698091 m!4209399))

(declare-fun m!4209401 () Bool)

(assert (=> b!3698091 m!4209401))

(assert (=> b!3698091 m!4209399))

(assert (=> b!3698091 m!4209401))

(declare-fun m!4209403 () Bool)

(assert (=> b!3698091 m!4209403))

(assert (=> b!3698094 m!4209397))

(assert (=> bm!267210 m!4209393))

(assert (=> b!3698090 m!4209401))

(assert (=> b!3698090 m!4209401))

(declare-fun m!4209405 () Bool)

(assert (=> b!3698090 m!4209405))

(declare-fun m!4209407 () Bool)

(assert (=> b!3698099 m!4209407))

(assert (=> b!3698095 m!4209401))

(assert (=> b!3698095 m!4209401))

(assert (=> b!3698095 m!4209405))

(assert (=> b!3697984 d!1084500))

(declare-fun d!1084502 () Bool)

(assert (=> d!1084502 (= (get!13063 lt!1294180) (v!38452 lt!1294180))))

(assert (=> b!3697984 d!1084502))

(declare-fun d!1084504 () Bool)

(declare-fun isEmpty!23408 (Option!8496) Bool)

(assert (=> d!1084504 (= (isDefined!6684 lt!1294178) (not (isEmpty!23408 lt!1294178)))))

(declare-fun bs!574324 () Bool)

(assert (= bs!574324 d!1084504))

(declare-fun m!4209409 () Bool)

(assert (=> bs!574324 m!4209409))

(assert (=> b!3697995 d!1084504))

(declare-fun b!3698161 () Bool)

(declare-fun e!2290259 () Bool)

(declare-datatypes ((tuple2!39146 0))(
  ( (tuple2!39147 (_1!22707 List!39398) (_2!22707 List!39398)) )
))
(declare-fun findLongestMatchInner!1117 (Regex!10720 List!39398 Int List!39398 List!39398 Int) tuple2!39146)

(declare-fun size!29957 (List!39398) Int)

(assert (=> b!3698161 (= e!2290259 (matchR!5257 (regex!5961 (h!44695 rules!3598)) (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))))))

(declare-fun b!3698162 () Bool)

(declare-fun e!2290260 () Bool)

(declare-fun lt!1294217 () Option!8496)

(assert (=> b!3698162 (= e!2290260 (= (size!29955 (_1!22705 (get!13064 lt!1294217))) (size!29957 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217))))))))

(declare-fun b!3698163 () Bool)

(declare-fun res!1504056 () Bool)

(assert (=> b!3698163 (=> (not res!1504056) (not e!2290260))))

(declare-fun apply!9397 (TokenValueInjection!11810 BalanceConc!23730) TokenValue!6191)

(declare-fun seqFromList!4476 (List!39398) BalanceConc!23730)

(assert (=> b!3698163 (= res!1504056 (= (value!190344 (_1!22705 (get!13064 lt!1294217))) (apply!9397 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217)))))))))

(declare-fun b!3698164 () Bool)

(declare-fun res!1504060 () Bool)

(assert (=> b!3698164 (=> (not res!1504060) (not e!2290260))))

(assert (=> b!3698164 (= res!1504060 (= (rule!8821 (_1!22705 (get!13064 lt!1294217))) (h!44695 rules!3598)))))

(declare-fun b!3698165 () Bool)

(declare-fun e!2290261 () Option!8496)

(assert (=> b!3698165 (= e!2290261 None!8495)))

(declare-fun b!3698166 () Bool)

(declare-fun res!1504059 () Bool)

(assert (=> b!3698166 (=> (not res!1504059) (not e!2290260))))

(declare-fun ++!9757 (List!39398 List!39398) List!39398)

(assert (=> b!3698166 (= res!1504059 (= (++!9757 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217)))) (_2!22705 (get!13064 lt!1294217))) input!3172))))

(declare-fun b!3698167 () Bool)

(declare-fun res!1504058 () Bool)

(assert (=> b!3698167 (=> (not res!1504058) (not e!2290260))))

(assert (=> b!3698167 (= res!1504058 (< (size!29957 (_2!22705 (get!13064 lt!1294217))) (size!29957 input!3172)))))

(declare-fun d!1084506 () Bool)

(declare-fun e!2290262 () Bool)

(assert (=> d!1084506 e!2290262))

(declare-fun res!1504057 () Bool)

(assert (=> d!1084506 (=> res!1504057 e!2290262)))

(assert (=> d!1084506 (= res!1504057 (isEmpty!23408 lt!1294217))))

(assert (=> d!1084506 (= lt!1294217 e!2290261)))

(declare-fun c!639122 () Bool)

(declare-fun lt!1294215 () tuple2!39146)

(assert (=> d!1084506 (= c!639122 (isEmpty!23407 (_1!22707 lt!1294215)))))

(declare-fun findLongestMatch!1032 (Regex!10720 List!39398) tuple2!39146)

(assert (=> d!1084506 (= lt!1294215 (findLongestMatch!1032 (regex!5961 (h!44695 rules!3598)) input!3172))))

(declare-fun ruleValid!2155 (LexerInterface!5550 Rule!11722) Bool)

(assert (=> d!1084506 (ruleValid!2155 thiss!25322 (h!44695 rules!3598))))

(assert (=> d!1084506 (= (maxPrefixOneRule!2182 thiss!25322 (h!44695 rules!3598) input!3172) lt!1294217)))

(declare-fun b!3698168 () Bool)

(assert (=> b!3698168 (= e!2290262 e!2290260)))

(declare-fun res!1504055 () Bool)

(assert (=> b!3698168 (=> (not res!1504055) (not e!2290260))))

(assert (=> b!3698168 (= res!1504055 (matchR!5257 (regex!5961 (h!44695 rules!3598)) (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))))))

(declare-fun b!3698169 () Bool)

(declare-fun size!29958 (BalanceConc!23730) Int)

(assert (=> b!3698169 (= e!2290261 (Some!8495 (tuple2!39143 (Token!11277 (apply!9397 (transformation!5961 (h!44695 rules!3598)) (seqFromList!4476 (_1!22707 lt!1294215))) (h!44695 rules!3598) (size!29958 (seqFromList!4476 (_1!22707 lt!1294215))) (_1!22707 lt!1294215)) (_2!22707 lt!1294215))))))

(declare-datatypes ((Unit!57248 0))(
  ( (Unit!57249) )
))
(declare-fun lt!1294216 () Unit!57248)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1090 (Regex!10720 List!39398) Unit!57248)

(assert (=> b!3698169 (= lt!1294216 (longestMatchIsAcceptedByMatchOrIsEmpty!1090 (regex!5961 (h!44695 rules!3598)) input!3172))))

(declare-fun res!1504061 () Bool)

(assert (=> b!3698169 (= res!1504061 (isEmpty!23407 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))))))

(assert (=> b!3698169 (=> res!1504061 e!2290259)))

(assert (=> b!3698169 e!2290259))

(declare-fun lt!1294213 () Unit!57248)

(assert (=> b!3698169 (= lt!1294213 lt!1294216)))

(declare-fun lt!1294214 () Unit!57248)

(declare-fun lemmaSemiInverse!1623 (TokenValueInjection!11810 BalanceConc!23730) Unit!57248)

(assert (=> b!3698169 (= lt!1294214 (lemmaSemiInverse!1623 (transformation!5961 (h!44695 rules!3598)) (seqFromList!4476 (_1!22707 lt!1294215))))))

(assert (= (and d!1084506 c!639122) b!3698165))

(assert (= (and d!1084506 (not c!639122)) b!3698169))

(assert (= (and b!3698169 (not res!1504061)) b!3698161))

(assert (= (and d!1084506 (not res!1504057)) b!3698168))

(assert (= (and b!3698168 res!1504055) b!3698166))

(assert (= (and b!3698166 res!1504059) b!3698167))

(assert (= (and b!3698167 res!1504058) b!3698164))

(assert (= (and b!3698164 res!1504060) b!3698163))

(assert (= (and b!3698163 res!1504056) b!3698162))

(declare-fun m!4209421 () Bool)

(assert (=> b!3698161 m!4209421))

(declare-fun m!4209423 () Bool)

(assert (=> b!3698161 m!4209423))

(assert (=> b!3698161 m!4209421))

(assert (=> b!3698161 m!4209423))

(declare-fun m!4209427 () Bool)

(assert (=> b!3698161 m!4209427))

(declare-fun m!4209429 () Bool)

(assert (=> b!3698161 m!4209429))

(declare-fun m!4209431 () Bool)

(assert (=> b!3698162 m!4209431))

(declare-fun m!4209435 () Bool)

(assert (=> b!3698162 m!4209435))

(assert (=> b!3698164 m!4209431))

(assert (=> b!3698166 m!4209431))

(declare-fun m!4209437 () Bool)

(assert (=> b!3698166 m!4209437))

(assert (=> b!3698166 m!4209437))

(declare-fun m!4209441 () Bool)

(assert (=> b!3698166 m!4209441))

(assert (=> b!3698166 m!4209441))

(declare-fun m!4209443 () Bool)

(assert (=> b!3698166 m!4209443))

(declare-fun m!4209445 () Bool)

(assert (=> b!3698169 m!4209445))

(declare-fun m!4209447 () Bool)

(assert (=> b!3698169 m!4209447))

(assert (=> b!3698169 m!4209423))

(assert (=> b!3698169 m!4209445))

(assert (=> b!3698169 m!4209421))

(assert (=> b!3698169 m!4209423))

(assert (=> b!3698169 m!4209427))

(assert (=> b!3698169 m!4209445))

(declare-fun m!4209449 () Bool)

(assert (=> b!3698169 m!4209449))

(declare-fun m!4209451 () Bool)

(assert (=> b!3698169 m!4209451))

(assert (=> b!3698169 m!4209421))

(assert (=> b!3698169 m!4209445))

(declare-fun m!4209453 () Bool)

(assert (=> b!3698169 m!4209453))

(declare-fun m!4209455 () Bool)

(assert (=> b!3698169 m!4209455))

(assert (=> b!3698168 m!4209431))

(assert (=> b!3698168 m!4209437))

(assert (=> b!3698168 m!4209437))

(assert (=> b!3698168 m!4209441))

(assert (=> b!3698168 m!4209441))

(declare-fun m!4209457 () Bool)

(assert (=> b!3698168 m!4209457))

(declare-fun m!4209459 () Bool)

(assert (=> d!1084506 m!4209459))

(declare-fun m!4209461 () Bool)

(assert (=> d!1084506 m!4209461))

(declare-fun m!4209463 () Bool)

(assert (=> d!1084506 m!4209463))

(declare-fun m!4209465 () Bool)

(assert (=> d!1084506 m!4209465))

(assert (=> b!3698163 m!4209431))

(declare-fun m!4209467 () Bool)

(assert (=> b!3698163 m!4209467))

(assert (=> b!3698163 m!4209467))

(declare-fun m!4209469 () Bool)

(assert (=> b!3698163 m!4209469))

(assert (=> b!3698167 m!4209431))

(declare-fun m!4209471 () Bool)

(assert (=> b!3698167 m!4209471))

(assert (=> b!3698167 m!4209423))

(assert (=> b!3697995 d!1084506))

(declare-fun d!1084512 () Bool)

(declare-fun res!1504066 () Bool)

(declare-fun e!2290265 () Bool)

(assert (=> d!1084512 (=> (not res!1504066) (not e!2290265))))

(assert (=> d!1084512 (= res!1504066 (not (isEmpty!23407 (originalCharacters!6669 token!544))))))

(assert (=> d!1084512 (= (inv!52782 token!544) e!2290265)))

(declare-fun b!3698174 () Bool)

(declare-fun res!1504067 () Bool)

(assert (=> b!3698174 (=> (not res!1504067) (not e!2290265))))

(declare-fun dynLambda!17165 (Int TokenValue!6191) BalanceConc!23730)

(assert (=> b!3698174 (= res!1504067 (= (originalCharacters!6669 token!544) (list!14672 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))))))

(declare-fun b!3698175 () Bool)

(assert (=> b!3698175 (= e!2290265 (= (size!29955 token!544) (size!29957 (originalCharacters!6669 token!544))))))

(assert (= (and d!1084512 res!1504066) b!3698174))

(assert (= (and b!3698174 res!1504067) b!3698175))

(declare-fun b_lambda!109683 () Bool)

(assert (=> (not b_lambda!109683) (not b!3698174)))

(declare-fun t!301799 () Bool)

(declare-fun tb!214113 () Bool)

(assert (=> (and b!3698000 (= (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toChars!8152 (transformation!5961 (rule!8821 token!544)))) t!301799) tb!214113))

(declare-fun b!3698180 () Bool)

(declare-fun e!2290268 () Bool)

(declare-fun tp!1124147 () Bool)

(declare-fun inv!52785 (Conc!12058) Bool)

(assert (=> b!3698180 (= e!2290268 (and (inv!52785 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))) tp!1124147))))

(declare-fun result!260834 () Bool)

(declare-fun inv!52786 (BalanceConc!23730) Bool)

(assert (=> tb!214113 (= result!260834 (and (inv!52786 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))) e!2290268))))

(assert (= tb!214113 b!3698180))

(declare-fun m!4209473 () Bool)

(assert (=> b!3698180 m!4209473))

(declare-fun m!4209475 () Bool)

(assert (=> tb!214113 m!4209475))

(assert (=> b!3698174 t!301799))

(declare-fun b_and!276459 () Bool)

(assert (= b_and!276445 (and (=> t!301799 result!260834) b_and!276459)))

(declare-fun t!301801 () Bool)

(declare-fun tb!214115 () Bool)

(assert (=> (and b!3697985 (= (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toChars!8152 (transformation!5961 (rule!8821 token!544)))) t!301801) tb!214115))

(declare-fun result!260838 () Bool)

(assert (= result!260838 result!260834))

(assert (=> b!3698174 t!301801))

(declare-fun b_and!276461 () Bool)

(assert (= b_and!276449 (and (=> t!301801 result!260838) b_and!276461)))

(declare-fun m!4209477 () Bool)

(assert (=> d!1084512 m!4209477))

(declare-fun m!4209479 () Bool)

(assert (=> b!3698174 m!4209479))

(assert (=> b!3698174 m!4209479))

(declare-fun m!4209481 () Bool)

(assert (=> b!3698174 m!4209481))

(declare-fun m!4209483 () Bool)

(assert (=> b!3698175 m!4209483))

(assert (=> start!348296 d!1084512))

(declare-fun d!1084518 () Bool)

(declare-fun isEmpty!23409 (Option!8495) Bool)

(assert (=> d!1084518 (= (isDefined!6685 lt!1294180) (not (isEmpty!23409 lt!1294180)))))

(declare-fun bs!574325 () Bool)

(assert (= bs!574325 d!1084518))

(declare-fun m!4209485 () Bool)

(assert (=> bs!574325 m!4209485))

(assert (=> b!3697997 d!1084518))

(declare-fun d!1084520 () Bool)

(declare-fun e!2290283 () Bool)

(assert (=> d!1084520 e!2290283))

(declare-fun res!1504078 () Bool)

(assert (=> d!1084520 (=> res!1504078 e!2290283)))

(declare-fun lt!1294226 () Option!8495)

(assert (=> d!1084520 (= res!1504078 (isEmpty!23409 lt!1294226))))

(declare-fun e!2290282 () Option!8495)

(assert (=> d!1084520 (= lt!1294226 e!2290282)))

(declare-fun c!639128 () Bool)

(assert (=> d!1084520 (= c!639128 (and (is-Cons!39275 rules!3598) (= (tag!6791 (h!44695 rules!3598)) (tag!6791 (rule!8821 token!544)))))))

(assert (=> d!1084520 (rulesInvariant!4947 thiss!25322 rules!3598)))

(assert (=> d!1084520 (= (getRuleFromTag!1511 thiss!25322 rules!3598 (tag!6791 (rule!8821 token!544))) lt!1294226)))

(declare-fun b!3698198 () Bool)

(declare-fun e!2290285 () Bool)

(assert (=> b!3698198 (= e!2290283 e!2290285)))

(declare-fun res!1504077 () Bool)

(assert (=> b!3698198 (=> (not res!1504077) (not e!2290285))))

(declare-fun contains!7830 (List!39399 Rule!11722) Bool)

(assert (=> b!3698198 (= res!1504077 (contains!7830 rules!3598 (get!13063 lt!1294226)))))

(declare-fun b!3698199 () Bool)

(declare-fun e!2290284 () Option!8495)

(assert (=> b!3698199 (= e!2290284 None!8494)))

(declare-fun b!3698200 () Bool)

(assert (=> b!3698200 (= e!2290282 e!2290284)))

(declare-fun c!639127 () Bool)

(assert (=> b!3698200 (= c!639127 (and (is-Cons!39275 rules!3598) (not (= (tag!6791 (h!44695 rules!3598)) (tag!6791 (rule!8821 token!544))))))))

(declare-fun b!3698201 () Bool)

(assert (=> b!3698201 (= e!2290282 (Some!8494 (h!44695 rules!3598)))))

(declare-fun b!3698202 () Bool)

(assert (=> b!3698202 (= e!2290285 (= (tag!6791 (get!13063 lt!1294226)) (tag!6791 (rule!8821 token!544))))))

(declare-fun b!3698203 () Bool)

(declare-fun lt!1294225 () Unit!57248)

(declare-fun lt!1294224 () Unit!57248)

(assert (=> b!3698203 (= lt!1294225 lt!1294224)))

(assert (=> b!3698203 (rulesInvariant!4947 thiss!25322 (t!301794 rules!3598))))

(declare-fun lemmaInvariantOnRulesThenOnTail!659 (LexerInterface!5550 Rule!11722 List!39399) Unit!57248)

(assert (=> b!3698203 (= lt!1294224 (lemmaInvariantOnRulesThenOnTail!659 thiss!25322 (h!44695 rules!3598) (t!301794 rules!3598)))))

(assert (=> b!3698203 (= e!2290284 (getRuleFromTag!1511 thiss!25322 (t!301794 rules!3598) (tag!6791 (rule!8821 token!544))))))

(assert (= (and d!1084520 c!639128) b!3698201))

(assert (= (and d!1084520 (not c!639128)) b!3698200))

(assert (= (and b!3698200 c!639127) b!3698203))

(assert (= (and b!3698200 (not c!639127)) b!3698199))

(assert (= (and d!1084520 (not res!1504078)) b!3698198))

(assert (= (and b!3698198 res!1504077) b!3698202))

(declare-fun m!4209491 () Bool)

(assert (=> d!1084520 m!4209491))

(assert (=> d!1084520 m!4209345))

(declare-fun m!4209493 () Bool)

(assert (=> b!3698198 m!4209493))

(assert (=> b!3698198 m!4209493))

(declare-fun m!4209495 () Bool)

(assert (=> b!3698198 m!4209495))

(assert (=> b!3698202 m!4209493))

(declare-fun m!4209497 () Bool)

(assert (=> b!3698203 m!4209497))

(declare-fun m!4209499 () Bool)

(assert (=> b!3698203 m!4209499))

(declare-fun m!4209501 () Bool)

(assert (=> b!3698203 m!4209501))

(assert (=> b!3697997 d!1084520))

(declare-fun d!1084524 () Bool)

(assert (=> d!1084524 (= (inv!52778 (tag!6791 (h!44695 rules!3598))) (= (mod (str.len (value!190343 (tag!6791 (h!44695 rules!3598)))) 2) 0))))

(assert (=> b!3697987 d!1084524))

(declare-fun d!1084526 () Bool)

(declare-fun res!1504090 () Bool)

(declare-fun e!2290296 () Bool)

(assert (=> d!1084526 (=> (not res!1504090) (not e!2290296))))

(declare-fun semiInverseModEq!2545 (Int Int) Bool)

(assert (=> d!1084526 (= res!1504090 (semiInverseModEq!2545 (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (h!44695 rules!3598)))))))

(assert (=> d!1084526 (= (inv!52781 (transformation!5961 (h!44695 rules!3598))) e!2290296)))

(declare-fun b!3698221 () Bool)

(declare-fun equivClasses!2444 (Int Int) Bool)

(assert (=> b!3698221 (= e!2290296 (equivClasses!2444 (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (h!44695 rules!3598)))))))

(assert (= (and d!1084526 res!1504090) b!3698221))

(declare-fun m!4209513 () Bool)

(assert (=> d!1084526 m!4209513))

(declare-fun m!4209515 () Bool)

(assert (=> b!3698221 m!4209515))

(assert (=> b!3697987 d!1084526))

(declare-fun d!1084530 () Bool)

(declare-fun res!1504093 () Bool)

(declare-fun e!2290299 () Bool)

(assert (=> d!1084530 (=> (not res!1504093) (not e!2290299))))

(declare-fun rulesValid!2302 (LexerInterface!5550 List!39399) Bool)

(assert (=> d!1084530 (= res!1504093 (rulesValid!2302 thiss!25322 rules!3598))))

(assert (=> d!1084530 (= (rulesInvariant!4947 thiss!25322 rules!3598) e!2290299)))

(declare-fun b!3698224 () Bool)

(declare-datatypes ((List!39403 0))(
  ( (Nil!39279) (Cons!39279 (h!44699 String!44291) (t!301808 List!39403)) )
))
(declare-fun noDuplicateTag!2298 (LexerInterface!5550 List!39399 List!39403) Bool)

(assert (=> b!3698224 (= e!2290299 (noDuplicateTag!2298 thiss!25322 rules!3598 Nil!39279))))

(assert (= (and d!1084530 res!1504093) b!3698224))

(declare-fun m!4209519 () Bool)

(assert (=> d!1084530 m!4209519))

(declare-fun m!4209521 () Bool)

(assert (=> b!3698224 m!4209521))

(assert (=> b!3697988 d!1084530))

(declare-fun d!1084534 () Bool)

(declare-fun e!2290301 () Bool)

(assert (=> d!1084534 e!2290301))

(declare-fun c!639132 () Bool)

(assert (=> d!1084534 (= c!639132 (is-EmptyExpr!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun lt!1294228 () Bool)

(declare-fun e!2290300 () Bool)

(assert (=> d!1084534 (= lt!1294228 e!2290300)))

(declare-fun c!639134 () Bool)

(assert (=> d!1084534 (= c!639134 (isEmpty!23407 lt!1294177))))

(assert (=> d!1084534 (validRegex!4901 (regex!5961 (h!44695 rules!3598)))))

(assert (=> d!1084534 (= (matchR!5257 (regex!5961 (h!44695 rules!3598)) lt!1294177) lt!1294228)))

(declare-fun b!3698225 () Bool)

(declare-fun e!2290303 () Bool)

(assert (=> b!3698225 (= e!2290301 e!2290303)))

(declare-fun c!639133 () Bool)

(assert (=> b!3698225 (= c!639133 (is-EmptyLang!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698226 () Bool)

(declare-fun res!1504098 () Bool)

(declare-fun e!2290304 () Bool)

(assert (=> b!3698226 (=> res!1504098 e!2290304)))

(declare-fun e!2290306 () Bool)

(assert (=> b!3698226 (= res!1504098 e!2290306)))

(declare-fun res!1504094 () Bool)

(assert (=> b!3698226 (=> (not res!1504094) (not e!2290306))))

(assert (=> b!3698226 (= res!1504094 lt!1294228)))

(declare-fun b!3698227 () Bool)

(declare-fun res!1504099 () Bool)

(assert (=> b!3698227 (=> (not res!1504099) (not e!2290306))))

(declare-fun call!267220 () Bool)

(assert (=> b!3698227 (= res!1504099 (not call!267220))))

(declare-fun b!3698228 () Bool)

(declare-fun res!1504095 () Bool)

(declare-fun e!2290305 () Bool)

(assert (=> b!3698228 (=> res!1504095 e!2290305)))

(assert (=> b!3698228 (= res!1504095 (not (isEmpty!23407 (tail!5729 lt!1294177))))))

(declare-fun bm!267215 () Bool)

(assert (=> bm!267215 (= call!267220 (isEmpty!23407 lt!1294177))))

(declare-fun b!3698229 () Bool)

(assert (=> b!3698229 (= e!2290300 (matchR!5257 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177)) (tail!5729 lt!1294177)))))

(declare-fun b!3698230 () Bool)

(declare-fun e!2290302 () Bool)

(assert (=> b!3698230 (= e!2290302 e!2290305)))

(declare-fun res!1504100 () Bool)

(assert (=> b!3698230 (=> res!1504100 e!2290305)))

(assert (=> b!3698230 (= res!1504100 call!267220)))

(declare-fun b!3698231 () Bool)

(assert (=> b!3698231 (= e!2290306 (= (head!7992 lt!1294177) (c!639097 (regex!5961 (h!44695 rules!3598)))))))

(declare-fun b!3698232 () Bool)

(assert (=> b!3698232 (= e!2290305 (not (= (head!7992 lt!1294177) (c!639097 (regex!5961 (h!44695 rules!3598))))))))

(declare-fun b!3698233 () Bool)

(declare-fun res!1504101 () Bool)

(assert (=> b!3698233 (=> (not res!1504101) (not e!2290306))))

(assert (=> b!3698233 (= res!1504101 (isEmpty!23407 (tail!5729 lt!1294177)))))

(declare-fun b!3698234 () Bool)

(assert (=> b!3698234 (= e!2290303 (not lt!1294228))))

(declare-fun b!3698235 () Bool)

(assert (=> b!3698235 (= e!2290304 e!2290302)))

(declare-fun res!1504097 () Bool)

(assert (=> b!3698235 (=> (not res!1504097) (not e!2290302))))

(assert (=> b!3698235 (= res!1504097 (not lt!1294228))))

(declare-fun b!3698236 () Bool)

(assert (=> b!3698236 (= e!2290301 (= lt!1294228 call!267220))))

(declare-fun b!3698237 () Bool)

(assert (=> b!3698237 (= e!2290300 (nullable!3737 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698238 () Bool)

(declare-fun res!1504096 () Bool)

(assert (=> b!3698238 (=> res!1504096 e!2290304)))

(assert (=> b!3698238 (= res!1504096 (not (is-ElementMatch!10720 (regex!5961 (h!44695 rules!3598)))))))

(assert (=> b!3698238 (= e!2290303 e!2290304)))

(assert (= (and d!1084534 c!639134) b!3698237))

(assert (= (and d!1084534 (not c!639134)) b!3698229))

(assert (= (and d!1084534 c!639132) b!3698236))

(assert (= (and d!1084534 (not c!639132)) b!3698225))

(assert (= (and b!3698225 c!639133) b!3698234))

(assert (= (and b!3698225 (not c!639133)) b!3698238))

(assert (= (and b!3698238 (not res!1504096)) b!3698226))

(assert (= (and b!3698226 res!1504094) b!3698227))

(assert (= (and b!3698227 res!1504099) b!3698233))

(assert (= (and b!3698233 res!1504101) b!3698231))

(assert (= (and b!3698226 (not res!1504098)) b!3698235))

(assert (= (and b!3698235 res!1504097) b!3698230))

(assert (= (and b!3698230 (not res!1504100)) b!3698228))

(assert (= (and b!3698228 (not res!1504095)) b!3698232))

(assert (= (or b!3698236 b!3698227 b!3698230) bm!267215))

(assert (=> d!1084534 m!4209393))

(declare-fun m!4209525 () Bool)

(assert (=> d!1084534 m!4209525))

(assert (=> b!3698231 m!4209397))

(assert (=> b!3698229 m!4209397))

(assert (=> b!3698229 m!4209397))

(declare-fun m!4209527 () Bool)

(assert (=> b!3698229 m!4209527))

(assert (=> b!3698229 m!4209401))

(assert (=> b!3698229 m!4209527))

(assert (=> b!3698229 m!4209401))

(declare-fun m!4209529 () Bool)

(assert (=> b!3698229 m!4209529))

(assert (=> b!3698232 m!4209397))

(assert (=> bm!267215 m!4209393))

(assert (=> b!3698228 m!4209401))

(assert (=> b!3698228 m!4209401))

(assert (=> b!3698228 m!4209405))

(declare-fun m!4209531 () Bool)

(assert (=> b!3698237 m!4209531))

(assert (=> b!3698233 m!4209401))

(assert (=> b!3698233 m!4209401))

(assert (=> b!3698233 m!4209405))

(assert (=> b!3697999 d!1084534))

(declare-fun d!1084538 () Bool)

(declare-fun list!14674 (Conc!12058) List!39398)

(assert (=> d!1084538 (= (list!14672 (charsOf!3954 token!544)) (list!14674 (c!639098 (charsOf!3954 token!544))))))

(declare-fun bs!574327 () Bool)

(assert (= bs!574327 d!1084538))

(declare-fun m!4209533 () Bool)

(assert (=> bs!574327 m!4209533))

(assert (=> b!3697999 d!1084538))

(declare-fun d!1084540 () Bool)

(declare-fun lt!1294233 () BalanceConc!23730)

(assert (=> d!1084540 (= (list!14672 lt!1294233) (originalCharacters!6669 token!544))))

(assert (=> d!1084540 (= lt!1294233 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))))

(assert (=> d!1084540 (= (charsOf!3954 token!544) lt!1294233)))

(declare-fun b_lambda!109685 () Bool)

(assert (=> (not b_lambda!109685) (not d!1084540)))

(assert (=> d!1084540 t!301799))

(declare-fun b_and!276463 () Bool)

(assert (= b_and!276459 (and (=> t!301799 result!260834) b_and!276463)))

(assert (=> d!1084540 t!301801))

(declare-fun b_and!276465 () Bool)

(assert (= b_and!276461 (and (=> t!301801 result!260838) b_and!276465)))

(declare-fun m!4209535 () Bool)

(assert (=> d!1084540 m!4209535))

(assert (=> d!1084540 m!4209479))

(assert (=> b!3697999 d!1084540))

(declare-fun d!1084542 () Bool)

(assert (=> d!1084542 (= (isDefined!6684 lt!1294179) (not (isEmpty!23408 lt!1294179)))))

(declare-fun bs!574328 () Bool)

(assert (= bs!574328 d!1084542))

(declare-fun m!4209537 () Bool)

(assert (=> bs!574328 m!4209537))

(assert (=> b!3697989 d!1084542))

(declare-fun b!3698284 () Bool)

(declare-fun res!1504129 () Bool)

(declare-fun e!2290331 () Bool)

(assert (=> b!3698284 (=> (not res!1504129) (not e!2290331))))

(declare-fun lt!1294249 () Option!8496)

(assert (=> b!3698284 (= res!1504129 (= (value!190344 (_1!22705 (get!13064 lt!1294249))) (apply!9397 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294249)))))))))

(declare-fun b!3698285 () Bool)

(declare-fun e!2290330 () Option!8496)

(declare-fun call!267223 () Option!8496)

(assert (=> b!3698285 (= e!2290330 call!267223)))

(declare-fun b!3698286 () Bool)

(assert (=> b!3698286 (= e!2290331 (contains!7830 rules!3598 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))))

(declare-fun b!3698287 () Bool)

(declare-fun res!1504126 () Bool)

(assert (=> b!3698287 (=> (not res!1504126) (not e!2290331))))

(assert (=> b!3698287 (= res!1504126 (< (size!29957 (_2!22705 (get!13064 lt!1294249))) (size!29957 input!3172)))))

(declare-fun b!3698288 () Bool)

(declare-fun lt!1294248 () Option!8496)

(declare-fun lt!1294246 () Option!8496)

(assert (=> b!3698288 (= e!2290330 (ite (and (is-None!8495 lt!1294248) (is-None!8495 lt!1294246)) None!8495 (ite (is-None!8495 lt!1294246) lt!1294248 (ite (is-None!8495 lt!1294248) lt!1294246 (ite (>= (size!29955 (_1!22705 (v!38453 lt!1294248))) (size!29955 (_1!22705 (v!38453 lt!1294246)))) lt!1294248 lt!1294246)))))))

(assert (=> b!3698288 (= lt!1294248 call!267223)))

(assert (=> b!3698288 (= lt!1294246 (maxPrefix!3072 thiss!25322 (t!301794 rules!3598) input!3172))))

(declare-fun bm!267218 () Bool)

(assert (=> bm!267218 (= call!267223 (maxPrefixOneRule!2182 thiss!25322 (h!44695 rules!3598) input!3172))))

(declare-fun b!3698289 () Bool)

(declare-fun e!2290329 () Bool)

(assert (=> b!3698289 (= e!2290329 e!2290331)))

(declare-fun res!1504132 () Bool)

(assert (=> b!3698289 (=> (not res!1504132) (not e!2290331))))

(assert (=> b!3698289 (= res!1504132 (isDefined!6684 lt!1294249))))

(declare-fun d!1084544 () Bool)

(assert (=> d!1084544 e!2290329))

(declare-fun res!1504127 () Bool)

(assert (=> d!1084544 (=> res!1504127 e!2290329)))

(assert (=> d!1084544 (= res!1504127 (isEmpty!23408 lt!1294249))))

(assert (=> d!1084544 (= lt!1294249 e!2290330)))

(declare-fun c!639143 () Bool)

(assert (=> d!1084544 (= c!639143 (and (is-Cons!39275 rules!3598) (is-Nil!39275 (t!301794 rules!3598))))))

(declare-fun lt!1294247 () Unit!57248)

(declare-fun lt!1294245 () Unit!57248)

(assert (=> d!1084544 (= lt!1294247 lt!1294245)))

(declare-fun isPrefix!3278 (List!39398 List!39398) Bool)

(assert (=> d!1084544 (isPrefix!3278 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2063 (List!39398 List!39398) Unit!57248)

(assert (=> d!1084544 (= lt!1294245 (lemmaIsPrefixRefl!2063 input!3172 input!3172))))

(declare-fun rulesValidInductive!2144 (LexerInterface!5550 List!39399) Bool)

(assert (=> d!1084544 (rulesValidInductive!2144 thiss!25322 rules!3598)))

(assert (=> d!1084544 (= (maxPrefix!3072 thiss!25322 rules!3598 input!3172) lt!1294249)))

(declare-fun b!3698290 () Bool)

(declare-fun res!1504128 () Bool)

(assert (=> b!3698290 (=> (not res!1504128) (not e!2290331))))

(assert (=> b!3698290 (= res!1504128 (= (++!9757 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249)))) (_2!22705 (get!13064 lt!1294249))) input!3172))))

(declare-fun b!3698291 () Bool)

(declare-fun res!1504131 () Bool)

(assert (=> b!3698291 (=> (not res!1504131) (not e!2290331))))

(assert (=> b!3698291 (= res!1504131 (matchR!5257 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))) (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))))))

(declare-fun b!3698292 () Bool)

(declare-fun res!1504130 () Bool)

(assert (=> b!3698292 (=> (not res!1504130) (not e!2290331))))

(assert (=> b!3698292 (= res!1504130 (= (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249)))) (originalCharacters!6669 (_1!22705 (get!13064 lt!1294249)))))))

(assert (= (and d!1084544 c!639143) b!3698285))

(assert (= (and d!1084544 (not c!639143)) b!3698288))

(assert (= (or b!3698285 b!3698288) bm!267218))

(assert (= (and d!1084544 (not res!1504127)) b!3698289))

(assert (= (and b!3698289 res!1504132) b!3698292))

(assert (= (and b!3698292 res!1504130) b!3698287))

(assert (= (and b!3698287 res!1504126) b!3698290))

(assert (= (and b!3698290 res!1504128) b!3698284))

(assert (= (and b!3698284 res!1504129) b!3698291))

(assert (= (and b!3698291 res!1504131) b!3698286))

(declare-fun m!4209565 () Bool)

(assert (=> b!3698286 m!4209565))

(declare-fun m!4209567 () Bool)

(assert (=> b!3698286 m!4209567))

(assert (=> b!3698290 m!4209565))

(declare-fun m!4209569 () Bool)

(assert (=> b!3698290 m!4209569))

(assert (=> b!3698290 m!4209569))

(declare-fun m!4209571 () Bool)

(assert (=> b!3698290 m!4209571))

(assert (=> b!3698290 m!4209571))

(declare-fun m!4209573 () Bool)

(assert (=> b!3698290 m!4209573))

(assert (=> b!3698291 m!4209565))

(assert (=> b!3698291 m!4209569))

(assert (=> b!3698291 m!4209569))

(assert (=> b!3698291 m!4209571))

(assert (=> b!3698291 m!4209571))

(declare-fun m!4209575 () Bool)

(assert (=> b!3698291 m!4209575))

(declare-fun m!4209577 () Bool)

(assert (=> b!3698288 m!4209577))

(assert (=> b!3698292 m!4209565))

(assert (=> b!3698292 m!4209569))

(assert (=> b!3698292 m!4209569))

(assert (=> b!3698292 m!4209571))

(declare-fun m!4209579 () Bool)

(assert (=> d!1084544 m!4209579))

(declare-fun m!4209581 () Bool)

(assert (=> d!1084544 m!4209581))

(declare-fun m!4209583 () Bool)

(assert (=> d!1084544 m!4209583))

(declare-fun m!4209585 () Bool)

(assert (=> d!1084544 m!4209585))

(assert (=> bm!267218 m!4209349))

(declare-fun m!4209587 () Bool)

(assert (=> b!3698289 m!4209587))

(assert (=> b!3698284 m!4209565))

(declare-fun m!4209589 () Bool)

(assert (=> b!3698284 m!4209589))

(assert (=> b!3698284 m!4209589))

(declare-fun m!4209591 () Bool)

(assert (=> b!3698284 m!4209591))

(assert (=> b!3698287 m!4209565))

(declare-fun m!4209593 () Bool)

(assert (=> b!3698287 m!4209593))

(assert (=> b!3698287 m!4209423))

(assert (=> b!3697989 d!1084544))

(declare-fun d!1084560 () Bool)

(assert (=> d!1084560 (= (inv!52778 (tag!6791 (rule!8821 token!544))) (= (mod (str.len (value!190343 (tag!6791 (rule!8821 token!544)))) 2) 0))))

(assert (=> b!3697991 d!1084560))

(declare-fun d!1084562 () Bool)

(declare-fun res!1504133 () Bool)

(declare-fun e!2290332 () Bool)

(assert (=> d!1084562 (=> (not res!1504133) (not e!2290332))))

(assert (=> d!1084562 (= res!1504133 (semiInverseModEq!2545 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (rule!8821 token!544)))))))

(assert (=> d!1084562 (= (inv!52781 (transformation!5961 (rule!8821 token!544))) e!2290332)))

(declare-fun b!3698293 () Bool)

(assert (=> b!3698293 (= e!2290332 (equivClasses!2444 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (rule!8821 token!544)))))))

(assert (= (and d!1084562 res!1504133) b!3698293))

(declare-fun m!4209595 () Bool)

(assert (=> d!1084562 m!4209595))

(declare-fun m!4209597 () Bool)

(assert (=> b!3698293 m!4209597))

(assert (=> b!3697991 d!1084562))

(declare-fun b!3698304 () Bool)

(declare-fun e!2290341 () Bool)

(declare-fun inv!17 (TokenValue!6191) Bool)

(assert (=> b!3698304 (= e!2290341 (inv!17 (value!190344 token!544)))))

(declare-fun b!3698305 () Bool)

(declare-fun e!2290340 () Bool)

(declare-fun inv!15 (TokenValue!6191) Bool)

(assert (=> b!3698305 (= e!2290340 (inv!15 (value!190344 token!544)))))

(declare-fun d!1084564 () Bool)

(declare-fun c!639149 () Bool)

(assert (=> d!1084564 (= c!639149 (is-IntegerValue!18573 (value!190344 token!544)))))

(declare-fun e!2290339 () Bool)

(assert (=> d!1084564 (= (inv!21 (value!190344 token!544)) e!2290339)))

(declare-fun b!3698306 () Bool)

(declare-fun res!1504136 () Bool)

(assert (=> b!3698306 (=> res!1504136 e!2290340)))

(assert (=> b!3698306 (= res!1504136 (not (is-IntegerValue!18575 (value!190344 token!544))))))

(assert (=> b!3698306 (= e!2290341 e!2290340)))

(declare-fun b!3698307 () Bool)

(declare-fun inv!16 (TokenValue!6191) Bool)

(assert (=> b!3698307 (= e!2290339 (inv!16 (value!190344 token!544)))))

(declare-fun b!3698308 () Bool)

(assert (=> b!3698308 (= e!2290339 e!2290341)))

(declare-fun c!639148 () Bool)

(assert (=> b!3698308 (= c!639148 (is-IntegerValue!18574 (value!190344 token!544)))))

(assert (= (and d!1084564 c!639149) b!3698307))

(assert (= (and d!1084564 (not c!639149)) b!3698308))

(assert (= (and b!3698308 c!639148) b!3698304))

(assert (= (and b!3698308 (not c!639148)) b!3698306))

(assert (= (and b!3698306 (not res!1504136)) b!3698305))

(declare-fun m!4209599 () Bool)

(assert (=> b!3698304 m!4209599))

(declare-fun m!4209601 () Bool)

(assert (=> b!3698305 m!4209601))

(declare-fun m!4209603 () Bool)

(assert (=> b!3698307 m!4209603))

(assert (=> b!3697992 d!1084564))

(declare-fun b!3698319 () Bool)

(declare-fun b_free!98473 () Bool)

(declare-fun b_next!99177 () Bool)

(assert (=> b!3698319 (= b_free!98473 (not b_next!99177))))

(declare-fun tp!1124160 () Bool)

(declare-fun b_and!276475 () Bool)

(assert (=> b!3698319 (= tp!1124160 b_and!276475)))

(declare-fun b_free!98475 () Bool)

(declare-fun b_next!99179 () Bool)

(assert (=> b!3698319 (= b_free!98475 (not b_next!99179))))

(declare-fun t!301807 () Bool)

(declare-fun tb!214121 () Bool)

(assert (=> (and b!3698319 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toChars!8152 (transformation!5961 (rule!8821 token!544)))) t!301807) tb!214121))

(declare-fun result!260848 () Bool)

(assert (= result!260848 result!260834))

(assert (=> b!3698174 t!301807))

(assert (=> d!1084540 t!301807))

(declare-fun tp!1124162 () Bool)

(declare-fun b_and!276477 () Bool)

(assert (=> b!3698319 (= tp!1124162 (and (=> t!301807 result!260848) b_and!276477))))

(declare-fun e!2290352 () Bool)

(assert (=> b!3698319 (= e!2290352 (and tp!1124160 tp!1124162))))

(declare-fun tp!1124159 () Bool)

(declare-fun b!3698318 () Bool)

(declare-fun e!2290350 () Bool)

(assert (=> b!3698318 (= e!2290350 (and tp!1124159 (inv!52778 (tag!6791 (h!44695 (t!301794 rules!3598)))) (inv!52781 (transformation!5961 (h!44695 (t!301794 rules!3598)))) e!2290352))))

(declare-fun b!3698317 () Bool)

(declare-fun e!2290351 () Bool)

(declare-fun tp!1124161 () Bool)

(assert (=> b!3698317 (= e!2290351 (and e!2290350 tp!1124161))))

(assert (=> b!3697998 (= tp!1124117 e!2290351)))

(assert (= b!3698318 b!3698319))

(assert (= b!3698317 b!3698318))

(assert (= (and b!3697998 (is-Cons!39275 (t!301794 rules!3598))) b!3698317))

(declare-fun m!4209605 () Bool)

(assert (=> b!3698318 m!4209605))

(declare-fun m!4209607 () Bool)

(assert (=> b!3698318 m!4209607))

(declare-fun b!3698324 () Bool)

(declare-fun e!2290356 () Bool)

(declare-fun tp!1124165 () Bool)

(assert (=> b!3698324 (= e!2290356 (and tp_is_empty!18515 tp!1124165))))

(assert (=> b!3698001 (= tp!1124110 e!2290356)))

(assert (= (and b!3698001 (is-Cons!39274 (t!301793 input!3172))) b!3698324))

(declare-fun e!2290359 () Bool)

(assert (=> b!3697991 (= tp!1124111 e!2290359)))

(declare-fun b!3698336 () Bool)

(declare-fun tp!1124177 () Bool)

(declare-fun tp!1124179 () Bool)

(assert (=> b!3698336 (= e!2290359 (and tp!1124177 tp!1124179))))

(declare-fun b!3698338 () Bool)

(declare-fun tp!1124180 () Bool)

(declare-fun tp!1124178 () Bool)

(assert (=> b!3698338 (= e!2290359 (and tp!1124180 tp!1124178))))

(declare-fun b!3698335 () Bool)

(assert (=> b!3698335 (= e!2290359 tp_is_empty!18515)))

(declare-fun b!3698337 () Bool)

(declare-fun tp!1124176 () Bool)

(assert (=> b!3698337 (= e!2290359 tp!1124176)))

(assert (= (and b!3697991 (is-ElementMatch!10720 (regex!5961 (rule!8821 token!544)))) b!3698335))

(assert (= (and b!3697991 (is-Concat!16912 (regex!5961 (rule!8821 token!544)))) b!3698336))

(assert (= (and b!3697991 (is-Star!10720 (regex!5961 (rule!8821 token!544)))) b!3698337))

(assert (= (and b!3697991 (is-Union!10720 (regex!5961 (rule!8821 token!544)))) b!3698338))

(declare-fun b!3698339 () Bool)

(declare-fun e!2290360 () Bool)

(declare-fun tp!1124181 () Bool)

(assert (=> b!3698339 (= e!2290360 (and tp_is_empty!18515 tp!1124181))))

(assert (=> b!3697992 (= tp!1124116 e!2290360)))

(assert (= (and b!3697992 (is-Cons!39274 (originalCharacters!6669 token!544))) b!3698339))

(declare-fun e!2290361 () Bool)

(assert (=> b!3697987 (= tp!1124115 e!2290361)))

(declare-fun b!3698341 () Bool)

(declare-fun tp!1124183 () Bool)

(declare-fun tp!1124185 () Bool)

(assert (=> b!3698341 (= e!2290361 (and tp!1124183 tp!1124185))))

(declare-fun b!3698343 () Bool)

(declare-fun tp!1124186 () Bool)

(declare-fun tp!1124184 () Bool)

(assert (=> b!3698343 (= e!2290361 (and tp!1124186 tp!1124184))))

(declare-fun b!3698340 () Bool)

(assert (=> b!3698340 (= e!2290361 tp_is_empty!18515)))

(declare-fun b!3698342 () Bool)

(declare-fun tp!1124182 () Bool)

(assert (=> b!3698342 (= e!2290361 tp!1124182)))

(assert (= (and b!3697987 (is-ElementMatch!10720 (regex!5961 (h!44695 rules!3598)))) b!3698340))

(assert (= (and b!3697987 (is-Concat!16912 (regex!5961 (h!44695 rules!3598)))) b!3698341))

(assert (= (and b!3697987 (is-Star!10720 (regex!5961 (h!44695 rules!3598)))) b!3698342))

(assert (= (and b!3697987 (is-Union!10720 (regex!5961 (h!44695 rules!3598)))) b!3698343))

(declare-fun b_lambda!109691 () Bool)

(assert (= b_lambda!109683 (or (and b!3698000 b_free!98459 (= (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toChars!8152 (transformation!5961 (rule!8821 token!544))))) (and b!3697985 b_free!98463) (and b!3698319 b_free!98475 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toChars!8152 (transformation!5961 (rule!8821 token!544))))) b_lambda!109691)))

(declare-fun b_lambda!109693 () Bool)

(assert (= b_lambda!109685 (or (and b!3698000 b_free!98459 (= (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toChars!8152 (transformation!5961 (rule!8821 token!544))))) (and b!3697985 b_free!98463) (and b!3698319 b_free!98475 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toChars!8152 (transformation!5961 (rule!8821 token!544))))) b_lambda!109693)))

(push 1)

(assert tp_is_empty!18515)

(assert (not d!1084506))

(assert (not b!3698221))

(assert b_and!276465)

(assert (not d!1084526))

(assert (not b!3698093))

(assert (not b!3698342))

(assert (not b!3698292))

(assert (not b!3698337))

(assert b_and!276443)

(assert (not bm!267218))

(assert (not b!3698180))

(assert (not b!3698198))

(assert (not b!3698324))

(assert (not b!3698289))

(assert (not b!3698162))

(assert (not b!3698288))

(assert (not b!3698338))

(assert (not b_next!99167))

(assert (not b!3698343))

(assert (not b!3698094))

(assert (not b!3698090))

(assert (not b!3698202))

(assert (not b!3698229))

(assert (not b!3698224))

(assert b_and!276477)

(assert (not b_next!99163))

(assert (not b!3698228))

(assert (not b!3698203))

(assert (not b_next!99161))

(assert (not b!3698287))

(assert (not b!3698166))

(assert (not b!3698291))

(assert (not bm!267215))

(assert (not d!1084538))

(assert (not b!3698237))

(assert (not b!3698175))

(assert (not b!3698164))

(assert (not b!3698095))

(assert (not b_lambda!109691))

(assert (not d!1084504))

(assert (not b!3698339))

(assert (not b_lambda!109693))

(assert (not b!3698167))

(assert (not d!1084542))

(assert (not d!1084540))

(assert (not b!3698168))

(assert (not b!3698293))

(assert (not d!1084544))

(assert b_and!276475)

(assert (not b!3698091))

(assert (not b!3698233))

(assert (not b!3698336))

(assert (not bm!267210))

(assert (not d!1084500))

(assert b_and!276447)

(assert b_and!276463)

(assert (not b!3698318))

(assert (not b!3698174))

(assert (not d!1084530))

(assert (not b!3698284))

(assert (not d!1084512))

(assert (not b!3698304))

(assert (not b!3698341))

(assert (not b!3698286))

(assert (not b!3698163))

(assert (not b_next!99177))

(assert (not d!1084534))

(assert (not b!3698169))

(assert (not tb!214113))

(assert (not b!3698099))

(assert (not d!1084562))

(assert (not b!3698307))

(assert (not b!3698317))

(assert (not b!3698161))

(assert (not d!1084518))

(assert (not b_next!99165))

(assert (not b_next!99179))

(assert (not b!3698231))

(assert (not b!3698290))

(assert (not b!3698232))

(assert (not d!1084520))

(assert (not b!3698305))

(check-sat)

(pop 1)

(push 1)

(assert b_and!276443)

(assert (not b_next!99167))

(assert b_and!276465)

(assert b_and!276475)

(assert (not b_next!99177))

(assert b_and!276477)

(assert (not b_next!99163))

(assert (not b_next!99161))

(assert b_and!276447)

(assert b_and!276463)

(assert (not b_next!99165))

(assert (not b_next!99179))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084578 () Bool)

(assert (=> d!1084578 (= (isEmpty!23407 (originalCharacters!6669 token!544)) (is-Nil!39274 (originalCharacters!6669 token!544)))))

(assert (=> d!1084512 d!1084578))

(declare-fun d!1084580 () Bool)

(assert (=> d!1084580 (= (isEmpty!23407 lt!1294177) (is-Nil!39274 lt!1294177))))

(assert (=> d!1084534 d!1084580))

(declare-fun bm!267228 () Bool)

(declare-fun call!267234 () Bool)

(declare-fun c!639167 () Bool)

(declare-fun c!639166 () Bool)

(assert (=> bm!267228 (= call!267234 (validRegex!4901 (ite c!639167 (reg!11049 (regex!5961 (h!44695 rules!3598))) (ite c!639166 (regOne!21953 (regex!5961 (h!44695 rules!3598))) (regOne!21952 (regex!5961 (h!44695 rules!3598)))))))))

(declare-fun b!3698469 () Bool)

(declare-fun e!2290430 () Bool)

(declare-fun call!267233 () Bool)

(assert (=> b!3698469 (= e!2290430 call!267233)))

(declare-fun b!3698470 () Bool)

(declare-fun res!1504200 () Bool)

(declare-fun e!2290435 () Bool)

(assert (=> b!3698470 (=> res!1504200 e!2290435)))

(assert (=> b!3698470 (= res!1504200 (not (is-Concat!16912 (regex!5961 (h!44695 rules!3598)))))))

(declare-fun e!2290431 () Bool)

(assert (=> b!3698470 (= e!2290431 e!2290435)))

(declare-fun bm!267229 () Bool)

(declare-fun call!267235 () Bool)

(assert (=> bm!267229 (= call!267235 call!267234)))

(declare-fun b!3698472 () Bool)

(declare-fun e!2290433 () Bool)

(assert (=> b!3698472 (= e!2290433 call!267234)))

(declare-fun b!3698473 () Bool)

(assert (=> b!3698473 (= e!2290435 e!2290430)))

(declare-fun res!1504199 () Bool)

(assert (=> b!3698473 (=> (not res!1504199) (not e!2290430))))

(assert (=> b!3698473 (= res!1504199 call!267235)))

(declare-fun b!3698474 () Bool)

(declare-fun e!2290432 () Bool)

(assert (=> b!3698474 (= e!2290432 e!2290431)))

(assert (=> b!3698474 (= c!639166 (is-Union!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698475 () Bool)

(assert (=> b!3698475 (= e!2290432 e!2290433)))

(declare-fun res!1504197 () Bool)

(assert (=> b!3698475 (= res!1504197 (not (nullable!3737 (reg!11049 (regex!5961 (h!44695 rules!3598))))))))

(assert (=> b!3698475 (=> (not res!1504197) (not e!2290433))))

(declare-fun b!3698476 () Bool)

(declare-fun e!2290429 () Bool)

(assert (=> b!3698476 (= e!2290429 e!2290432)))

(assert (=> b!3698476 (= c!639167 (is-Star!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698477 () Bool)

(declare-fun e!2290434 () Bool)

(assert (=> b!3698477 (= e!2290434 call!267233)))

(declare-fun bm!267230 () Bool)

(assert (=> bm!267230 (= call!267233 (validRegex!4901 (ite c!639166 (regTwo!21953 (regex!5961 (h!44695 rules!3598))) (regTwo!21952 (regex!5961 (h!44695 rules!3598))))))))

(declare-fun d!1084582 () Bool)

(declare-fun res!1504201 () Bool)

(assert (=> d!1084582 (=> res!1504201 e!2290429)))

(assert (=> d!1084582 (= res!1504201 (is-ElementMatch!10720 (regex!5961 (h!44695 rules!3598))))))

(assert (=> d!1084582 (= (validRegex!4901 (regex!5961 (h!44695 rules!3598))) e!2290429)))

(declare-fun b!3698471 () Bool)

(declare-fun res!1504198 () Bool)

(assert (=> b!3698471 (=> (not res!1504198) (not e!2290434))))

(assert (=> b!3698471 (= res!1504198 call!267235)))

(assert (=> b!3698471 (= e!2290431 e!2290434)))

(assert (= (and d!1084582 (not res!1504201)) b!3698476))

(assert (= (and b!3698476 c!639167) b!3698475))

(assert (= (and b!3698476 (not c!639167)) b!3698474))

(assert (= (and b!3698475 res!1504197) b!3698472))

(assert (= (and b!3698474 c!639166) b!3698471))

(assert (= (and b!3698474 (not c!639166)) b!3698470))

(assert (= (and b!3698471 res!1504198) b!3698477))

(assert (= (and b!3698470 (not res!1504200)) b!3698473))

(assert (= (and b!3698473 res!1504199) b!3698469))

(assert (= (or b!3698477 b!3698469) bm!267230))

(assert (= (or b!3698471 b!3698473) bm!267229))

(assert (= (or b!3698472 bm!267229) bm!267228))

(declare-fun m!4209705 () Bool)

(assert (=> bm!267228 m!4209705))

(declare-fun m!4209707 () Bool)

(assert (=> b!3698475 m!4209707))

(declare-fun m!4209709 () Bool)

(assert (=> bm!267230 m!4209709))

(assert (=> d!1084534 d!1084582))

(assert (=> bm!267210 d!1084580))

(declare-fun d!1084584 () Bool)

(assert (=> d!1084584 (= (isEmpty!23408 lt!1294249) (not (is-Some!8495 lt!1294249)))))

(assert (=> d!1084544 d!1084584))

(declare-fun b!3698487 () Bool)

(declare-fun res!1504212 () Bool)

(declare-fun e!2290442 () Bool)

(assert (=> b!3698487 (=> (not res!1504212) (not e!2290442))))

(assert (=> b!3698487 (= res!1504212 (= (head!7992 input!3172) (head!7992 input!3172)))))

(declare-fun b!3698489 () Bool)

(declare-fun e!2290443 () Bool)

(assert (=> b!3698489 (= e!2290443 (>= (size!29957 input!3172) (size!29957 input!3172)))))

(declare-fun b!3698488 () Bool)

(assert (=> b!3698488 (= e!2290442 (isPrefix!3278 (tail!5729 input!3172) (tail!5729 input!3172)))))

(declare-fun d!1084586 () Bool)

(assert (=> d!1084586 e!2290443))

(declare-fun res!1504210 () Bool)

(assert (=> d!1084586 (=> res!1504210 e!2290443)))

(declare-fun lt!1294291 () Bool)

(assert (=> d!1084586 (= res!1504210 (not lt!1294291))))

(declare-fun e!2290444 () Bool)

(assert (=> d!1084586 (= lt!1294291 e!2290444)))

(declare-fun res!1504211 () Bool)

(assert (=> d!1084586 (=> res!1504211 e!2290444)))

(assert (=> d!1084586 (= res!1504211 (is-Nil!39274 input!3172))))

(assert (=> d!1084586 (= (isPrefix!3278 input!3172 input!3172) lt!1294291)))

(declare-fun b!3698486 () Bool)

(assert (=> b!3698486 (= e!2290444 e!2290442)))

(declare-fun res!1504213 () Bool)

(assert (=> b!3698486 (=> (not res!1504213) (not e!2290442))))

(assert (=> b!3698486 (= res!1504213 (not (is-Nil!39274 input!3172)))))

(assert (= (and d!1084586 (not res!1504211)) b!3698486))

(assert (= (and b!3698486 res!1504213) b!3698487))

(assert (= (and b!3698487 res!1504212) b!3698488))

(assert (= (and d!1084586 (not res!1504210)) b!3698489))

(declare-fun m!4209711 () Bool)

(assert (=> b!3698487 m!4209711))

(assert (=> b!3698487 m!4209711))

(assert (=> b!3698489 m!4209423))

(assert (=> b!3698489 m!4209423))

(declare-fun m!4209713 () Bool)

(assert (=> b!3698488 m!4209713))

(assert (=> b!3698488 m!4209713))

(assert (=> b!3698488 m!4209713))

(assert (=> b!3698488 m!4209713))

(declare-fun m!4209715 () Bool)

(assert (=> b!3698488 m!4209715))

(assert (=> d!1084544 d!1084586))

(declare-fun d!1084588 () Bool)

(assert (=> d!1084588 (isPrefix!3278 input!3172 input!3172)))

(declare-fun lt!1294294 () Unit!57248)

(declare-fun choose!22121 (List!39398 List!39398) Unit!57248)

(assert (=> d!1084588 (= lt!1294294 (choose!22121 input!3172 input!3172))))

(assert (=> d!1084588 (= (lemmaIsPrefixRefl!2063 input!3172 input!3172) lt!1294294)))

(declare-fun bs!574332 () Bool)

(assert (= bs!574332 d!1084588))

(assert (=> bs!574332 m!4209581))

(declare-fun m!4209717 () Bool)

(assert (=> bs!574332 m!4209717))

(assert (=> d!1084544 d!1084588))

(declare-fun d!1084590 () Bool)

(assert (=> d!1084590 true))

(declare-fun lt!1294297 () Bool)

(declare-fun lambda!125038 () Int)

(declare-fun forall!8182 (List!39399 Int) Bool)

(assert (=> d!1084590 (= lt!1294297 (forall!8182 rules!3598 lambda!125038))))

(declare-fun e!2290449 () Bool)

(assert (=> d!1084590 (= lt!1294297 e!2290449)))

(declare-fun res!1504222 () Bool)

(assert (=> d!1084590 (=> res!1504222 e!2290449)))

(assert (=> d!1084590 (= res!1504222 (not (is-Cons!39275 rules!3598)))))

(assert (=> d!1084590 (= (rulesValidInductive!2144 thiss!25322 rules!3598) lt!1294297)))

(declare-fun b!3698494 () Bool)

(declare-fun e!2290450 () Bool)

(assert (=> b!3698494 (= e!2290449 e!2290450)))

(declare-fun res!1504221 () Bool)

(assert (=> b!3698494 (=> (not res!1504221) (not e!2290450))))

(assert (=> b!3698494 (= res!1504221 (ruleValid!2155 thiss!25322 (h!44695 rules!3598)))))

(declare-fun b!3698495 () Bool)

(assert (=> b!3698495 (= e!2290450 (rulesValidInductive!2144 thiss!25322 (t!301794 rules!3598)))))

(assert (= (and d!1084590 (not res!1504222)) b!3698494))

(assert (= (and b!3698494 res!1504221) b!3698495))

(declare-fun m!4209719 () Bool)

(assert (=> d!1084590 m!4209719))

(assert (=> b!3698494 m!4209465))

(declare-fun m!4209721 () Bool)

(assert (=> b!3698495 m!4209721))

(assert (=> d!1084544 d!1084590))

(declare-fun b!3698508 () Bool)

(declare-fun e!2290456 () List!39398)

(declare-fun list!14676 (IArray!24121) List!39398)

(assert (=> b!3698508 (= e!2290456 (list!14676 (xs!15260 (c!639098 (charsOf!3954 token!544)))))))

(declare-fun b!3698507 () Bool)

(declare-fun e!2290455 () List!39398)

(assert (=> b!3698507 (= e!2290455 e!2290456)))

(declare-fun c!639173 () Bool)

(assert (=> b!3698507 (= c!639173 (is-Leaf!18650 (c!639098 (charsOf!3954 token!544))))))

(declare-fun b!3698506 () Bool)

(assert (=> b!3698506 (= e!2290455 Nil!39274)))

(declare-fun d!1084594 () Bool)

(declare-fun c!639172 () Bool)

(assert (=> d!1084594 (= c!639172 (is-Empty!12058 (c!639098 (charsOf!3954 token!544))))))

(assert (=> d!1084594 (= (list!14674 (c!639098 (charsOf!3954 token!544))) e!2290455)))

(declare-fun b!3698509 () Bool)

(assert (=> b!3698509 (= e!2290456 (++!9757 (list!14674 (left!30585 (c!639098 (charsOf!3954 token!544)))) (list!14674 (right!30915 (c!639098 (charsOf!3954 token!544))))))))

(assert (= (and d!1084594 c!639172) b!3698506))

(assert (= (and d!1084594 (not c!639172)) b!3698507))

(assert (= (and b!3698507 c!639173) b!3698508))

(assert (= (and b!3698507 (not c!639173)) b!3698509))

(declare-fun m!4209723 () Bool)

(assert (=> b!3698508 m!4209723))

(declare-fun m!4209725 () Bool)

(assert (=> b!3698509 m!4209725))

(declare-fun m!4209727 () Bool)

(assert (=> b!3698509 m!4209727))

(assert (=> b!3698509 m!4209725))

(assert (=> b!3698509 m!4209727))

(declare-fun m!4209729 () Bool)

(assert (=> b!3698509 m!4209729))

(assert (=> d!1084538 d!1084594))

(declare-fun d!1084596 () Bool)

(assert (=> d!1084596 true))

(declare-fun order!21683 () Int)

(declare-fun order!21685 () Int)

(declare-fun lambda!125041 () Int)

(declare-fun dynLambda!17167 (Int Int) Int)

(declare-fun dynLambda!17168 (Int Int) Int)

(assert (=> d!1084596 (< (dynLambda!17167 order!21683 (toChars!8152 (transformation!5961 (rule!8821 token!544)))) (dynLambda!17168 order!21685 lambda!125041))))

(assert (=> d!1084596 true))

(declare-fun order!21687 () Int)

(declare-fun dynLambda!17169 (Int Int) Int)

(assert (=> d!1084596 (< (dynLambda!17169 order!21687 (toValue!8293 (transformation!5961 (rule!8821 token!544)))) (dynLambda!17168 order!21685 lambda!125041))))

(declare-fun Forall!1389 (Int) Bool)

(assert (=> d!1084596 (= (semiInverseModEq!2545 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (rule!8821 token!544)))) (Forall!1389 lambda!125041))))

(declare-fun bs!574333 () Bool)

(assert (= bs!574333 d!1084596))

(declare-fun m!4209731 () Bool)

(assert (=> bs!574333 m!4209731))

(assert (=> d!1084562 d!1084596))

(declare-fun d!1084598 () Bool)

(declare-fun charsToBigInt!0 (List!39397 Int) Int)

(assert (=> d!1084598 (= (inv!15 (value!190344 token!544)) (= (charsToBigInt!0 (text!43786 (value!190344 token!544)) 0) (value!190339 (value!190344 token!544))))))

(declare-fun bs!574334 () Bool)

(assert (= bs!574334 d!1084598))

(declare-fun m!4209733 () Bool)

(assert (=> bs!574334 m!4209733))

(assert (=> b!3698305 d!1084598))

(declare-fun d!1084600 () Bool)

(declare-fun c!639176 () Bool)

(assert (=> d!1084600 (= c!639176 (is-Node!12058 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))))))

(declare-fun e!2290461 () Bool)

(assert (=> d!1084600 (= (inv!52785 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))) e!2290461)))

(declare-fun b!3698520 () Bool)

(declare-fun inv!52789 (Conc!12058) Bool)

(assert (=> b!3698520 (= e!2290461 (inv!52789 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))))))

(declare-fun b!3698521 () Bool)

(declare-fun e!2290462 () Bool)

(assert (=> b!3698521 (= e!2290461 e!2290462)))

(declare-fun res!1504225 () Bool)

(assert (=> b!3698521 (= res!1504225 (not (is-Leaf!18650 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))))))))

(assert (=> b!3698521 (=> res!1504225 e!2290462)))

(declare-fun b!3698522 () Bool)

(declare-fun inv!52790 (Conc!12058) Bool)

(assert (=> b!3698522 (= e!2290462 (inv!52790 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))))))

(assert (= (and d!1084600 c!639176) b!3698520))

(assert (= (and d!1084600 (not c!639176)) b!3698521))

(assert (= (and b!3698521 (not res!1504225)) b!3698522))

(declare-fun m!4209735 () Bool)

(assert (=> b!3698520 m!4209735))

(declare-fun m!4209737 () Bool)

(assert (=> b!3698522 m!4209737))

(assert (=> b!3698180 d!1084600))

(declare-fun d!1084602 () Bool)

(declare-fun lt!1294300 () Int)

(assert (=> d!1084602 (>= lt!1294300 0)))

(declare-fun e!2290465 () Int)

(assert (=> d!1084602 (= lt!1294300 e!2290465)))

(declare-fun c!639179 () Bool)

(assert (=> d!1084602 (= c!639179 (is-Nil!39274 (originalCharacters!6669 token!544)))))

(assert (=> d!1084602 (= (size!29957 (originalCharacters!6669 token!544)) lt!1294300)))

(declare-fun b!3698527 () Bool)

(assert (=> b!3698527 (= e!2290465 0)))

(declare-fun b!3698528 () Bool)

(assert (=> b!3698528 (= e!2290465 (+ 1 (size!29957 (t!301793 (originalCharacters!6669 token!544)))))))

(assert (= (and d!1084602 c!639179) b!3698527))

(assert (= (and d!1084602 (not c!639179)) b!3698528))

(declare-fun m!4209739 () Bool)

(assert (=> b!3698528 m!4209739))

(assert (=> b!3698175 d!1084602))

(assert (=> bm!267215 d!1084580))

(declare-fun d!1084604 () Bool)

(declare-fun nullableFct!1047 (Regex!10720) Bool)

(assert (=> d!1084604 (= (nullable!3737 (regex!5961 (h!44695 rules!3598))) (nullableFct!1047 (regex!5961 (h!44695 rules!3598))))))

(declare-fun bs!574335 () Bool)

(assert (= bs!574335 d!1084604))

(declare-fun m!4209741 () Bool)

(assert (=> bs!574335 m!4209741))

(assert (=> b!3698237 d!1084604))

(declare-fun d!1084606 () Bool)

(assert (=> d!1084606 (= (isDefined!6684 lt!1294249) (not (isEmpty!23408 lt!1294249)))))

(declare-fun bs!574336 () Bool)

(assert (= bs!574336 d!1084606))

(assert (=> bs!574336 m!4209579))

(assert (=> b!3698289 d!1084606))

(declare-fun d!1084608 () Bool)

(assert (=> d!1084608 (= (nullable!3737 (regex!5961 lt!1294181)) (nullableFct!1047 (regex!5961 lt!1294181)))))

(declare-fun bs!574337 () Bool)

(assert (= bs!574337 d!1084608))

(declare-fun m!4209743 () Bool)

(assert (=> bs!574337 m!4209743))

(assert (=> b!3698099 d!1084608))

(declare-fun d!1084610 () Bool)

(assert (=> d!1084610 (= (get!13064 lt!1294217) (v!38453 lt!1294217))))

(assert (=> b!3698163 d!1084610))

(declare-fun d!1084612 () Bool)

(declare-fun dynLambda!17170 (Int BalanceConc!23730) TokenValue!6191)

(assert (=> d!1084612 (= (apply!9397 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217))))) (dynLambda!17170 (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217))))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217))))))))

(declare-fun b_lambda!109699 () Bool)

(assert (=> (not b_lambda!109699) (not d!1084612)))

(declare-fun tb!214125 () Bool)

(declare-fun t!301814 () Bool)

(assert (=> (and b!3698000 (= (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))))) t!301814) tb!214125))

(declare-fun result!260862 () Bool)

(assert (=> tb!214125 (= result!260862 (inv!21 (dynLambda!17170 (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217))))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217)))))))))

(declare-fun m!4209745 () Bool)

(assert (=> tb!214125 m!4209745))

(assert (=> d!1084612 t!301814))

(declare-fun b_and!276483 () Bool)

(assert (= b_and!276443 (and (=> t!301814 result!260862) b_and!276483)))

(declare-fun tb!214127 () Bool)

(declare-fun t!301816 () Bool)

(assert (=> (and b!3697985 (= (toValue!8293 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))))) t!301816) tb!214127))

(declare-fun result!260866 () Bool)

(assert (= result!260866 result!260862))

(assert (=> d!1084612 t!301816))

(declare-fun b_and!276485 () Bool)

(assert (= b_and!276447 (and (=> t!301816 result!260866) b_and!276485)))

(declare-fun t!301818 () Bool)

(declare-fun tb!214129 () Bool)

(assert (=> (and b!3698319 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))))) t!301818) tb!214129))

(declare-fun result!260868 () Bool)

(assert (= result!260868 result!260862))

(assert (=> d!1084612 t!301818))

(declare-fun b_and!276487 () Bool)

(assert (= b_and!276475 (and (=> t!301818 result!260868) b_and!276487)))

(assert (=> d!1084612 m!4209467))

(declare-fun m!4209747 () Bool)

(assert (=> d!1084612 m!4209747))

(assert (=> b!3698163 d!1084612))

(declare-fun d!1084614 () Bool)

(declare-fun fromListB!2064 (List!39398) BalanceConc!23730)

(assert (=> d!1084614 (= (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217)))) (fromListB!2064 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217)))))))

(declare-fun bs!574338 () Bool)

(assert (= bs!574338 d!1084614))

(declare-fun m!4209749 () Bool)

(assert (=> bs!574338 m!4209749))

(assert (=> b!3698163 d!1084614))

(declare-fun b!3698531 () Bool)

(declare-fun res!1504229 () Bool)

(declare-fun e!2290471 () Bool)

(assert (=> b!3698531 (=> (not res!1504229) (not e!2290471))))

(declare-fun lt!1294305 () Option!8496)

(assert (=> b!3698531 (= res!1504229 (= (value!190344 (_1!22705 (get!13064 lt!1294305))) (apply!9397 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294305)))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294305)))))))))

(declare-fun b!3698532 () Bool)

(declare-fun e!2290470 () Option!8496)

(declare-fun call!267236 () Option!8496)

(assert (=> b!3698532 (= e!2290470 call!267236)))

(declare-fun b!3698533 () Bool)

(assert (=> b!3698533 (= e!2290471 (contains!7830 (t!301794 rules!3598) (rule!8821 (_1!22705 (get!13064 lt!1294305)))))))

(declare-fun b!3698534 () Bool)

(declare-fun res!1504226 () Bool)

(assert (=> b!3698534 (=> (not res!1504226) (not e!2290471))))

(assert (=> b!3698534 (= res!1504226 (< (size!29957 (_2!22705 (get!13064 lt!1294305))) (size!29957 input!3172)))))

(declare-fun b!3698535 () Bool)

(declare-fun lt!1294304 () Option!8496)

(declare-fun lt!1294302 () Option!8496)

(assert (=> b!3698535 (= e!2290470 (ite (and (is-None!8495 lt!1294304) (is-None!8495 lt!1294302)) None!8495 (ite (is-None!8495 lt!1294302) lt!1294304 (ite (is-None!8495 lt!1294304) lt!1294302 (ite (>= (size!29955 (_1!22705 (v!38453 lt!1294304))) (size!29955 (_1!22705 (v!38453 lt!1294302)))) lt!1294304 lt!1294302)))))))

(assert (=> b!3698535 (= lt!1294304 call!267236)))

(assert (=> b!3698535 (= lt!1294302 (maxPrefix!3072 thiss!25322 (t!301794 (t!301794 rules!3598)) input!3172))))

(declare-fun bm!267231 () Bool)

(assert (=> bm!267231 (= call!267236 (maxPrefixOneRule!2182 thiss!25322 (h!44695 (t!301794 rules!3598)) input!3172))))

(declare-fun b!3698536 () Bool)

(declare-fun e!2290469 () Bool)

(assert (=> b!3698536 (= e!2290469 e!2290471)))

(declare-fun res!1504232 () Bool)

(assert (=> b!3698536 (=> (not res!1504232) (not e!2290471))))

(assert (=> b!3698536 (= res!1504232 (isDefined!6684 lt!1294305))))

(declare-fun d!1084616 () Bool)

(assert (=> d!1084616 e!2290469))

(declare-fun res!1504227 () Bool)

(assert (=> d!1084616 (=> res!1504227 e!2290469)))

(assert (=> d!1084616 (= res!1504227 (isEmpty!23408 lt!1294305))))

(assert (=> d!1084616 (= lt!1294305 e!2290470)))

(declare-fun c!639180 () Bool)

(assert (=> d!1084616 (= c!639180 (and (is-Cons!39275 (t!301794 rules!3598)) (is-Nil!39275 (t!301794 (t!301794 rules!3598)))))))

(declare-fun lt!1294303 () Unit!57248)

(declare-fun lt!1294301 () Unit!57248)

(assert (=> d!1084616 (= lt!1294303 lt!1294301)))

(assert (=> d!1084616 (isPrefix!3278 input!3172 input!3172)))

(assert (=> d!1084616 (= lt!1294301 (lemmaIsPrefixRefl!2063 input!3172 input!3172))))

(assert (=> d!1084616 (rulesValidInductive!2144 thiss!25322 (t!301794 rules!3598))))

(assert (=> d!1084616 (= (maxPrefix!3072 thiss!25322 (t!301794 rules!3598) input!3172) lt!1294305)))

(declare-fun b!3698537 () Bool)

(declare-fun res!1504228 () Bool)

(assert (=> b!3698537 (=> (not res!1504228) (not e!2290471))))

(assert (=> b!3698537 (= res!1504228 (= (++!9757 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294305)))) (_2!22705 (get!13064 lt!1294305))) input!3172))))

(declare-fun b!3698538 () Bool)

(declare-fun res!1504231 () Bool)

(assert (=> b!3698538 (=> (not res!1504231) (not e!2290471))))

(assert (=> b!3698538 (= res!1504231 (matchR!5257 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294305)))) (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294305))))))))

(declare-fun b!3698539 () Bool)

(declare-fun res!1504230 () Bool)

(assert (=> b!3698539 (=> (not res!1504230) (not e!2290471))))

(assert (=> b!3698539 (= res!1504230 (= (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294305)))) (originalCharacters!6669 (_1!22705 (get!13064 lt!1294305)))))))

(assert (= (and d!1084616 c!639180) b!3698532))

(assert (= (and d!1084616 (not c!639180)) b!3698535))

(assert (= (or b!3698532 b!3698535) bm!267231))

(assert (= (and d!1084616 (not res!1504227)) b!3698536))

(assert (= (and b!3698536 res!1504232) b!3698539))

(assert (= (and b!3698539 res!1504230) b!3698534))

(assert (= (and b!3698534 res!1504226) b!3698537))

(assert (= (and b!3698537 res!1504228) b!3698531))

(assert (= (and b!3698531 res!1504229) b!3698538))

(assert (= (and b!3698538 res!1504231) b!3698533))

(declare-fun m!4209751 () Bool)

(assert (=> b!3698533 m!4209751))

(declare-fun m!4209753 () Bool)

(assert (=> b!3698533 m!4209753))

(assert (=> b!3698537 m!4209751))

(declare-fun m!4209755 () Bool)

(assert (=> b!3698537 m!4209755))

(assert (=> b!3698537 m!4209755))

(declare-fun m!4209757 () Bool)

(assert (=> b!3698537 m!4209757))

(assert (=> b!3698537 m!4209757))

(declare-fun m!4209759 () Bool)

(assert (=> b!3698537 m!4209759))

(assert (=> b!3698538 m!4209751))

(assert (=> b!3698538 m!4209755))

(assert (=> b!3698538 m!4209755))

(assert (=> b!3698538 m!4209757))

(assert (=> b!3698538 m!4209757))

(declare-fun m!4209761 () Bool)

(assert (=> b!3698538 m!4209761))

(declare-fun m!4209763 () Bool)

(assert (=> b!3698535 m!4209763))

(assert (=> b!3698539 m!4209751))

(assert (=> b!3698539 m!4209755))

(assert (=> b!3698539 m!4209755))

(assert (=> b!3698539 m!4209757))

(declare-fun m!4209765 () Bool)

(assert (=> d!1084616 m!4209765))

(assert (=> d!1084616 m!4209581))

(assert (=> d!1084616 m!4209583))

(assert (=> d!1084616 m!4209721))

(declare-fun m!4209767 () Bool)

(assert (=> bm!267231 m!4209767))

(declare-fun m!4209769 () Bool)

(assert (=> b!3698536 m!4209769))

(assert (=> b!3698531 m!4209751))

(declare-fun m!4209771 () Bool)

(assert (=> b!3698531 m!4209771))

(assert (=> b!3698531 m!4209771))

(declare-fun m!4209773 () Bool)

(assert (=> b!3698531 m!4209773))

(assert (=> b!3698534 m!4209751))

(declare-fun m!4209775 () Bool)

(assert (=> b!3698534 m!4209775))

(assert (=> b!3698534 m!4209423))

(assert (=> b!3698288 d!1084616))

(declare-fun d!1084618 () Bool)

(assert (=> d!1084618 (= (inv!52778 (tag!6791 (h!44695 (t!301794 rules!3598)))) (= (mod (str.len (value!190343 (tag!6791 (h!44695 (t!301794 rules!3598))))) 2) 0))))

(assert (=> b!3698318 d!1084618))

(declare-fun d!1084620 () Bool)

(declare-fun res!1504233 () Bool)

(declare-fun e!2290472 () Bool)

(assert (=> d!1084620 (=> (not res!1504233) (not e!2290472))))

(assert (=> d!1084620 (= res!1504233 (semiInverseModEq!2545 (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toValue!8293 (transformation!5961 (h!44695 (t!301794 rules!3598))))))))

(assert (=> d!1084620 (= (inv!52781 (transformation!5961 (h!44695 (t!301794 rules!3598)))) e!2290472)))

(declare-fun b!3698540 () Bool)

(assert (=> b!3698540 (= e!2290472 (equivClasses!2444 (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toValue!8293 (transformation!5961 (h!44695 (t!301794 rules!3598))))))))

(assert (= (and d!1084620 res!1504233) b!3698540))

(declare-fun m!4209777 () Bool)

(assert (=> d!1084620 m!4209777))

(declare-fun m!4209779 () Bool)

(assert (=> b!3698540 m!4209779))

(assert (=> b!3698318 d!1084620))

(declare-fun d!1084622 () Bool)

(assert (=> d!1084622 true))

(declare-fun lambda!125044 () Int)

(declare-fun order!21689 () Int)

(declare-fun dynLambda!17171 (Int Int) Int)

(assert (=> d!1084622 (< (dynLambda!17169 order!21687 (toValue!8293 (transformation!5961 (rule!8821 token!544)))) (dynLambda!17171 order!21689 lambda!125044))))

(declare-fun Forall2!987 (Int) Bool)

(assert (=> d!1084622 (= (equivClasses!2444 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (rule!8821 token!544)))) (Forall2!987 lambda!125044))))

(declare-fun bs!574339 () Bool)

(assert (= bs!574339 d!1084622))

(declare-fun m!4209781 () Bool)

(assert (=> bs!574339 m!4209781))

(assert (=> b!3698293 d!1084622))

(declare-fun d!1084624 () Bool)

(declare-fun e!2290476 () Bool)

(assert (=> d!1084624 e!2290476))

(declare-fun c!639181 () Bool)

(assert (=> d!1084624 (= c!639181 (is-EmptyExpr!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun lt!1294306 () Bool)

(declare-fun e!2290475 () Bool)

(assert (=> d!1084624 (= lt!1294306 e!2290475)))

(declare-fun c!639183 () Bool)

(assert (=> d!1084624 (= c!639183 (isEmpty!23407 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))))))

(assert (=> d!1084624 (validRegex!4901 (regex!5961 (h!44695 rules!3598)))))

(assert (=> d!1084624 (= (matchR!5257 (regex!5961 (h!44695 rules!3598)) (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))) lt!1294306)))

(declare-fun b!3698545 () Bool)

(declare-fun e!2290478 () Bool)

(assert (=> b!3698545 (= e!2290476 e!2290478)))

(declare-fun c!639182 () Bool)

(assert (=> b!3698545 (= c!639182 (is-EmptyLang!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698546 () Bool)

(declare-fun res!1504240 () Bool)

(declare-fun e!2290479 () Bool)

(assert (=> b!3698546 (=> res!1504240 e!2290479)))

(declare-fun e!2290481 () Bool)

(assert (=> b!3698546 (= res!1504240 e!2290481)))

(declare-fun res!1504236 () Bool)

(assert (=> b!3698546 (=> (not res!1504236) (not e!2290481))))

(assert (=> b!3698546 (= res!1504236 lt!1294306)))

(declare-fun b!3698547 () Bool)

(declare-fun res!1504241 () Bool)

(assert (=> b!3698547 (=> (not res!1504241) (not e!2290481))))

(declare-fun call!267237 () Bool)

(assert (=> b!3698547 (= res!1504241 (not call!267237))))

(declare-fun b!3698548 () Bool)

(declare-fun res!1504237 () Bool)

(declare-fun e!2290480 () Bool)

(assert (=> b!3698548 (=> res!1504237 e!2290480)))

(assert (=> b!3698548 (= res!1504237 (not (isEmpty!23407 (tail!5729 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))))))))

(declare-fun bm!267232 () Bool)

(assert (=> bm!267232 (= call!267237 (isEmpty!23407 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))))))

(declare-fun b!3698549 () Bool)

(assert (=> b!3698549 (= e!2290475 (matchR!5257 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172))))) (tail!5729 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172))))))))

(declare-fun b!3698550 () Bool)

(declare-fun e!2290477 () Bool)

(assert (=> b!3698550 (= e!2290477 e!2290480)))

(declare-fun res!1504242 () Bool)

(assert (=> b!3698550 (=> res!1504242 e!2290480)))

(assert (=> b!3698550 (= res!1504242 call!267237)))

(declare-fun b!3698551 () Bool)

(assert (=> b!3698551 (= e!2290481 (= (head!7992 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))) (c!639097 (regex!5961 (h!44695 rules!3598)))))))

(declare-fun b!3698552 () Bool)

(assert (=> b!3698552 (= e!2290480 (not (= (head!7992 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))) (c!639097 (regex!5961 (h!44695 rules!3598))))))))

(declare-fun b!3698553 () Bool)

(declare-fun res!1504243 () Bool)

(assert (=> b!3698553 (=> (not res!1504243) (not e!2290481))))

(assert (=> b!3698553 (= res!1504243 (isEmpty!23407 (tail!5729 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172))))))))

(declare-fun b!3698554 () Bool)

(assert (=> b!3698554 (= e!2290478 (not lt!1294306))))

(declare-fun b!3698555 () Bool)

(assert (=> b!3698555 (= e!2290479 e!2290477)))

(declare-fun res!1504239 () Bool)

(assert (=> b!3698555 (=> (not res!1504239) (not e!2290477))))

(assert (=> b!3698555 (= res!1504239 (not lt!1294306))))

(declare-fun b!3698556 () Bool)

(assert (=> b!3698556 (= e!2290476 (= lt!1294306 call!267237))))

(declare-fun b!3698557 () Bool)

(assert (=> b!3698557 (= e!2290475 (nullable!3737 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698558 () Bool)

(declare-fun res!1504238 () Bool)

(assert (=> b!3698558 (=> res!1504238 e!2290479)))

(assert (=> b!3698558 (= res!1504238 (not (is-ElementMatch!10720 (regex!5961 (h!44695 rules!3598)))))))

(assert (=> b!3698558 (= e!2290478 e!2290479)))

(assert (= (and d!1084624 c!639183) b!3698557))

(assert (= (and d!1084624 (not c!639183)) b!3698549))

(assert (= (and d!1084624 c!639181) b!3698556))

(assert (= (and d!1084624 (not c!639181)) b!3698545))

(assert (= (and b!3698545 c!639182) b!3698554))

(assert (= (and b!3698545 (not c!639182)) b!3698558))

(assert (= (and b!3698558 (not res!1504238)) b!3698546))

(assert (= (and b!3698546 res!1504236) b!3698547))

(assert (= (and b!3698547 res!1504241) b!3698553))

(assert (= (and b!3698553 res!1504243) b!3698551))

(assert (= (and b!3698546 (not res!1504240)) b!3698555))

(assert (= (and b!3698555 res!1504239) b!3698550))

(assert (= (and b!3698550 (not res!1504242)) b!3698548))

(assert (= (and b!3698548 (not res!1504237)) b!3698552))

(assert (= (or b!3698556 b!3698547 b!3698550) bm!267232))

(assert (=> d!1084624 m!4209451))

(assert (=> d!1084624 m!4209525))

(declare-fun m!4209783 () Bool)

(assert (=> b!3698551 m!4209783))

(assert (=> b!3698549 m!4209783))

(assert (=> b!3698549 m!4209783))

(declare-fun m!4209785 () Bool)

(assert (=> b!3698549 m!4209785))

(declare-fun m!4209787 () Bool)

(assert (=> b!3698549 m!4209787))

(assert (=> b!3698549 m!4209785))

(assert (=> b!3698549 m!4209787))

(declare-fun m!4209789 () Bool)

(assert (=> b!3698549 m!4209789))

(assert (=> b!3698552 m!4209783))

(assert (=> bm!267232 m!4209451))

(assert (=> b!3698548 m!4209787))

(assert (=> b!3698548 m!4209787))

(declare-fun m!4209791 () Bool)

(assert (=> b!3698548 m!4209791))

(assert (=> b!3698557 m!4209531))

(assert (=> b!3698553 m!4209787))

(assert (=> b!3698553 m!4209787))

(assert (=> b!3698553 m!4209791))

(assert (=> b!3698161 d!1084624))

(declare-fun b!3698587 () Bool)

(declare-fun e!2290503 () tuple2!39146)

(assert (=> b!3698587 (= e!2290503 (tuple2!39147 Nil!39274 input!3172))))

(declare-fun b!3698588 () Bool)

(declare-fun e!2290502 () tuple2!39146)

(assert (=> b!3698588 (= e!2290502 (tuple2!39147 Nil!39274 input!3172))))

(declare-fun d!1084626 () Bool)

(declare-fun e!2290500 () Bool)

(assert (=> d!1084626 e!2290500))

(declare-fun res!1504249 () Bool)

(assert (=> d!1084626 (=> (not res!1504249) (not e!2290500))))

(declare-fun lt!1294374 () tuple2!39146)

(assert (=> d!1084626 (= res!1504249 (= (++!9757 (_1!22707 lt!1294374) (_2!22707 lt!1294374)) input!3172))))

(declare-fun e!2290504 () tuple2!39146)

(assert (=> d!1084626 (= lt!1294374 e!2290504)))

(declare-fun c!639197 () Bool)

(declare-fun lostCause!951 (Regex!10720) Bool)

(assert (=> d!1084626 (= c!639197 (lostCause!951 (regex!5961 (h!44695 rules!3598))))))

(declare-fun lt!1294371 () Unit!57248)

(declare-fun Unit!57252 () Unit!57248)

(assert (=> d!1084626 (= lt!1294371 Unit!57252)))

(declare-fun getSuffix!1769 (List!39398 List!39398) List!39398)

(assert (=> d!1084626 (= (getSuffix!1769 input!3172 Nil!39274) input!3172)))

(declare-fun lt!1294368 () Unit!57248)

(declare-fun lt!1294367 () Unit!57248)

(assert (=> d!1084626 (= lt!1294368 lt!1294367)))

(declare-fun lt!1294385 () List!39398)

(assert (=> d!1084626 (= input!3172 lt!1294385)))

(declare-fun lemmaSamePrefixThenSameSuffix!1543 (List!39398 List!39398 List!39398 List!39398 List!39398) Unit!57248)

(assert (=> d!1084626 (= lt!1294367 (lemmaSamePrefixThenSameSuffix!1543 Nil!39274 input!3172 Nil!39274 lt!1294385 input!3172))))

(assert (=> d!1084626 (= lt!1294385 (getSuffix!1769 input!3172 Nil!39274))))

(declare-fun lt!1294363 () Unit!57248)

(declare-fun lt!1294365 () Unit!57248)

(assert (=> d!1084626 (= lt!1294363 lt!1294365)))

(assert (=> d!1084626 (isPrefix!3278 Nil!39274 (++!9757 Nil!39274 input!3172))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2179 (List!39398 List!39398) Unit!57248)

(assert (=> d!1084626 (= lt!1294365 (lemmaConcatTwoListThenFirstIsPrefix!2179 Nil!39274 input!3172))))

(assert (=> d!1084626 (validRegex!4901 (regex!5961 (h!44695 rules!3598)))))

(assert (=> d!1084626 (= (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)) lt!1294374)))

(declare-fun b!3698589 () Bool)

(declare-fun e!2290498 () tuple2!39146)

(assert (=> b!3698589 (= e!2290504 e!2290498)))

(declare-fun c!639201 () Bool)

(assert (=> b!3698589 (= c!639201 (= (size!29957 Nil!39274) (size!29957 input!3172)))))

(declare-fun b!3698590 () Bool)

(declare-fun c!639200 () Bool)

(declare-fun call!267260 () Bool)

(assert (=> b!3698590 (= c!639200 call!267260)))

(declare-fun lt!1294364 () Unit!57248)

(declare-fun lt!1294388 () Unit!57248)

(assert (=> b!3698590 (= lt!1294364 lt!1294388)))

(declare-fun lt!1294382 () C!21626)

(declare-fun lt!1294381 () List!39398)

(assert (=> b!3698590 (= (++!9757 (++!9757 Nil!39274 (Cons!39274 lt!1294382 Nil!39274)) lt!1294381) input!3172)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1189 (List!39398 C!21626 List!39398 List!39398) Unit!57248)

(assert (=> b!3698590 (= lt!1294388 (lemmaMoveElementToOtherListKeepsConcatEq!1189 Nil!39274 lt!1294382 lt!1294381 input!3172))))

(assert (=> b!3698590 (= lt!1294381 (tail!5729 input!3172))))

(assert (=> b!3698590 (= lt!1294382 (head!7992 input!3172))))

(declare-fun lt!1294373 () Unit!57248)

(declare-fun lt!1294372 () Unit!57248)

(assert (=> b!3698590 (= lt!1294373 lt!1294372)))

(assert (=> b!3698590 (isPrefix!3278 (++!9757 Nil!39274 (Cons!39274 (head!7992 (getSuffix!1769 input!3172 Nil!39274)) Nil!39274)) input!3172)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!577 (List!39398 List!39398) Unit!57248)

(assert (=> b!3698590 (= lt!1294372 (lemmaAddHeadSuffixToPrefixStillPrefix!577 Nil!39274 input!3172))))

(declare-fun lt!1294376 () Unit!57248)

(declare-fun lt!1294384 () Unit!57248)

(assert (=> b!3698590 (= lt!1294376 lt!1294384)))

(assert (=> b!3698590 (= lt!1294384 (lemmaAddHeadSuffixToPrefixStillPrefix!577 Nil!39274 input!3172))))

(declare-fun lt!1294379 () List!39398)

(assert (=> b!3698590 (= lt!1294379 (++!9757 Nil!39274 (Cons!39274 (head!7992 input!3172) Nil!39274)))))

(declare-fun lt!1294390 () Unit!57248)

(declare-fun e!2290499 () Unit!57248)

(assert (=> b!3698590 (= lt!1294390 e!2290499)))

(declare-fun c!639199 () Bool)

(assert (=> b!3698590 (= c!639199 (= (size!29957 Nil!39274) (size!29957 input!3172)))))

(declare-fun lt!1294370 () Unit!57248)

(declare-fun lt!1294378 () Unit!57248)

(assert (=> b!3698590 (= lt!1294370 lt!1294378)))

(assert (=> b!3698590 (<= (size!29957 Nil!39274) (size!29957 input!3172))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!385 (List!39398 List!39398) Unit!57248)

(assert (=> b!3698590 (= lt!1294378 (lemmaIsPrefixThenSmallerEqSize!385 Nil!39274 input!3172))))

(declare-fun e!2290505 () tuple2!39146)

(assert (=> b!3698590 (= e!2290498 e!2290505)))

(declare-fun bm!267249 () Bool)

(declare-fun call!267257 () Regex!10720)

(declare-fun call!267256 () C!21626)

(assert (=> bm!267249 (= call!267257 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) call!267256))))

(declare-fun b!3698591 () Bool)

(assert (=> b!3698591 (= e!2290504 (tuple2!39147 Nil!39274 input!3172))))

(declare-fun bm!267250 () Bool)

(declare-fun call!267258 () Unit!57248)

(declare-fun lemmaIsPrefixSameLengthThenSameList!678 (List!39398 List!39398 List!39398) Unit!57248)

(assert (=> bm!267250 (= call!267258 (lemmaIsPrefixSameLengthThenSameList!678 input!3172 Nil!39274 input!3172))))

(declare-fun b!3698592 () Bool)

(assert (=> b!3698592 (= e!2290505 e!2290502)))

(declare-fun lt!1294386 () tuple2!39146)

(declare-fun call!267261 () tuple2!39146)

(assert (=> b!3698592 (= lt!1294386 call!267261)))

(declare-fun c!639196 () Bool)

(assert (=> b!3698592 (= c!639196 (isEmpty!23407 (_1!22707 lt!1294386)))))

(declare-fun b!3698593 () Bool)

(declare-fun c!639198 () Bool)

(assert (=> b!3698593 (= c!639198 call!267260)))

(declare-fun lt!1294369 () Unit!57248)

(declare-fun lt!1294380 () Unit!57248)

(assert (=> b!3698593 (= lt!1294369 lt!1294380)))

(assert (=> b!3698593 (= input!3172 Nil!39274)))

(assert (=> b!3698593 (= lt!1294380 call!267258)))

(declare-fun lt!1294366 () Unit!57248)

(declare-fun lt!1294375 () Unit!57248)

(assert (=> b!3698593 (= lt!1294366 lt!1294375)))

(declare-fun call!267255 () Bool)

(assert (=> b!3698593 call!267255))

(declare-fun call!267259 () Unit!57248)

(assert (=> b!3698593 (= lt!1294375 call!267259)))

(assert (=> b!3698593 (= e!2290498 e!2290503)))

(declare-fun b!3698594 () Bool)

(declare-fun e!2290501 () Bool)

(assert (=> b!3698594 (= e!2290500 e!2290501)))

(declare-fun res!1504248 () Bool)

(assert (=> b!3698594 (=> res!1504248 e!2290501)))

(assert (=> b!3698594 (= res!1504248 (isEmpty!23407 (_1!22707 lt!1294374)))))

(declare-fun b!3698595 () Bool)

(assert (=> b!3698595 (= e!2290503 (tuple2!39147 Nil!39274 Nil!39274))))

(declare-fun bm!267251 () Bool)

(assert (=> bm!267251 (= call!267260 (nullable!3737 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698596 () Bool)

(assert (=> b!3698596 (= e!2290505 call!267261)))

(declare-fun bm!267252 () Bool)

(assert (=> bm!267252 (= call!267259 (lemmaIsPrefixRefl!2063 input!3172 input!3172))))

(declare-fun bm!267253 () Bool)

(declare-fun call!267254 () List!39398)

(assert (=> bm!267253 (= call!267261 (findLongestMatchInner!1117 call!267257 lt!1294379 (+ (size!29957 Nil!39274) 1) call!267254 input!3172 (size!29957 input!3172)))))

(declare-fun b!3698597 () Bool)

(declare-fun Unit!57253 () Unit!57248)

(assert (=> b!3698597 (= e!2290499 Unit!57253)))

(declare-fun bm!267254 () Bool)

(assert (=> bm!267254 (= call!267255 (isPrefix!3278 input!3172 input!3172))))

(declare-fun b!3698598 () Bool)

(assert (=> b!3698598 (= e!2290502 lt!1294386)))

(declare-fun b!3698599 () Bool)

(declare-fun Unit!57254 () Unit!57248)

(assert (=> b!3698599 (= e!2290499 Unit!57254)))

(declare-fun lt!1294389 () Unit!57248)

(assert (=> b!3698599 (= lt!1294389 call!267259)))

(assert (=> b!3698599 call!267255))

(declare-fun lt!1294377 () Unit!57248)

(assert (=> b!3698599 (= lt!1294377 lt!1294389)))

(declare-fun lt!1294383 () Unit!57248)

(assert (=> b!3698599 (= lt!1294383 call!267258)))

(assert (=> b!3698599 (= input!3172 Nil!39274)))

(declare-fun lt!1294387 () Unit!57248)

(assert (=> b!3698599 (= lt!1294387 lt!1294383)))

(assert (=> b!3698599 false))

(declare-fun b!3698600 () Bool)

(assert (=> b!3698600 (= e!2290501 (>= (size!29957 (_1!22707 lt!1294374)) (size!29957 Nil!39274)))))

(declare-fun bm!267255 () Bool)

(assert (=> bm!267255 (= call!267256 (head!7992 input!3172))))

(declare-fun bm!267256 () Bool)

(assert (=> bm!267256 (= call!267254 (tail!5729 input!3172))))

(assert (= (and d!1084626 c!639197) b!3698591))

(assert (= (and d!1084626 (not c!639197)) b!3698589))

(assert (= (and b!3698589 c!639201) b!3698593))

(assert (= (and b!3698589 (not c!639201)) b!3698590))

(assert (= (and b!3698593 c!639198) b!3698595))

(assert (= (and b!3698593 (not c!639198)) b!3698587))

(assert (= (and b!3698590 c!639199) b!3698599))

(assert (= (and b!3698590 (not c!639199)) b!3698597))

(assert (= (and b!3698590 c!639200) b!3698592))

(assert (= (and b!3698590 (not c!639200)) b!3698596))

(assert (= (and b!3698592 c!639196) b!3698588))

(assert (= (and b!3698592 (not c!639196)) b!3698598))

(assert (= (or b!3698592 b!3698596) bm!267256))

(assert (= (or b!3698592 b!3698596) bm!267255))

(assert (= (or b!3698592 b!3698596) bm!267249))

(assert (= (or b!3698592 b!3698596) bm!267253))

(assert (= (or b!3698593 b!3698599) bm!267252))

(assert (= (or b!3698593 b!3698590) bm!267251))

(assert (= (or b!3698593 b!3698599) bm!267250))

(assert (= (or b!3698593 b!3698599) bm!267254))

(assert (= (and d!1084626 res!1504249) b!3698594))

(assert (= (and b!3698594 (not res!1504248)) b!3698600))

(declare-fun m!4209793 () Bool)

(assert (=> b!3698594 m!4209793))

(assert (=> bm!267255 m!4209711))

(assert (=> b!3698590 m!4209711))

(assert (=> b!3698590 m!4209713))

(declare-fun m!4209795 () Bool)

(assert (=> b!3698590 m!4209795))

(assert (=> b!3698590 m!4209795))

(declare-fun m!4209797 () Bool)

(assert (=> b!3698590 m!4209797))

(declare-fun m!4209799 () Bool)

(assert (=> b!3698590 m!4209799))

(assert (=> b!3698590 m!4209423))

(declare-fun m!4209801 () Bool)

(assert (=> b!3698590 m!4209801))

(assert (=> b!3698590 m!4209801))

(declare-fun m!4209803 () Bool)

(assert (=> b!3698590 m!4209803))

(declare-fun m!4209805 () Bool)

(assert (=> b!3698590 m!4209805))

(declare-fun m!4209807 () Bool)

(assert (=> b!3698590 m!4209807))

(declare-fun m!4209809 () Bool)

(assert (=> b!3698590 m!4209809))

(declare-fun m!4209811 () Bool)

(assert (=> b!3698590 m!4209811))

(assert (=> b!3698590 m!4209811))

(declare-fun m!4209813 () Bool)

(assert (=> b!3698590 m!4209813))

(assert (=> b!3698590 m!4209421))

(assert (=> bm!267253 m!4209423))

(declare-fun m!4209815 () Bool)

(assert (=> bm!267253 m!4209815))

(declare-fun m!4209817 () Bool)

(assert (=> bm!267249 m!4209817))

(assert (=> bm!267256 m!4209713))

(declare-fun m!4209819 () Bool)

(assert (=> d!1084626 m!4209819))

(declare-fun m!4209821 () Bool)

(assert (=> d!1084626 m!4209821))

(declare-fun m!4209823 () Bool)

(assert (=> d!1084626 m!4209823))

(assert (=> d!1084626 m!4209525))

(assert (=> d!1084626 m!4209801))

(declare-fun m!4209825 () Bool)

(assert (=> d!1084626 m!4209825))

(declare-fun m!4209827 () Bool)

(assert (=> d!1084626 m!4209827))

(assert (=> d!1084626 m!4209821))

(declare-fun m!4209829 () Bool)

(assert (=> d!1084626 m!4209829))

(declare-fun m!4209831 () Bool)

(assert (=> bm!267250 m!4209831))

(declare-fun m!4209833 () Bool)

(assert (=> b!3698592 m!4209833))

(assert (=> bm!267254 m!4209581))

(assert (=> bm!267252 m!4209583))

(assert (=> bm!267251 m!4209531))

(declare-fun m!4209835 () Bool)

(assert (=> b!3698600 m!4209835))

(assert (=> b!3698600 m!4209421))

(assert (=> b!3698161 d!1084626))

(declare-fun d!1084628 () Bool)

(declare-fun lt!1294391 () Int)

(assert (=> d!1084628 (>= lt!1294391 0)))

(declare-fun e!2290506 () Int)

(assert (=> d!1084628 (= lt!1294391 e!2290506)))

(declare-fun c!639202 () Bool)

(assert (=> d!1084628 (= c!639202 (is-Nil!39274 Nil!39274))))

(assert (=> d!1084628 (= (size!29957 Nil!39274) lt!1294391)))

(declare-fun b!3698601 () Bool)

(assert (=> b!3698601 (= e!2290506 0)))

(declare-fun b!3698602 () Bool)

(assert (=> b!3698602 (= e!2290506 (+ 1 (size!29957 (t!301793 Nil!39274))))))

(assert (= (and d!1084628 c!639202) b!3698601))

(assert (= (and d!1084628 (not c!639202)) b!3698602))

(declare-fun m!4209837 () Bool)

(assert (=> b!3698602 m!4209837))

(assert (=> b!3698161 d!1084628))

(declare-fun d!1084630 () Bool)

(declare-fun lt!1294392 () Int)

(assert (=> d!1084630 (>= lt!1294392 0)))

(declare-fun e!2290507 () Int)

(assert (=> d!1084630 (= lt!1294392 e!2290507)))

(declare-fun c!639203 () Bool)

(assert (=> d!1084630 (= c!639203 (is-Nil!39274 input!3172))))

(assert (=> d!1084630 (= (size!29957 input!3172) lt!1294392)))

(declare-fun b!3698603 () Bool)

(assert (=> b!3698603 (= e!2290507 0)))

(declare-fun b!3698604 () Bool)

(assert (=> b!3698604 (= e!2290507 (+ 1 (size!29957 (t!301793 input!3172))))))

(assert (= (and d!1084630 c!639203) b!3698603))

(assert (= (and d!1084630 (not c!639203)) b!3698604))

(declare-fun m!4209839 () Bool)

(assert (=> b!3698604 m!4209839))

(assert (=> b!3698161 d!1084630))

(declare-fun d!1084632 () Bool)

(assert (=> d!1084632 (= (isEmpty!23407 (tail!5729 lt!1294177)) (is-Nil!39274 (tail!5729 lt!1294177)))))

(assert (=> b!3698233 d!1084632))

(declare-fun d!1084634 () Bool)

(assert (=> d!1084634 (= (tail!5729 lt!1294177) (t!301793 lt!1294177))))

(assert (=> b!3698233 d!1084634))

(declare-fun d!1084636 () Bool)

(assert (=> d!1084636 (= (isEmpty!23409 lt!1294180) (not (is-Some!8494 lt!1294180)))))

(assert (=> d!1084518 d!1084636))

(declare-fun d!1084638 () Bool)

(declare-fun lt!1294395 () Bool)

(declare-fun content!5678 (List!39399) (Set Rule!11722))

(assert (=> d!1084638 (= lt!1294395 (set.member (rule!8821 (_1!22705 (get!13064 lt!1294249))) (content!5678 rules!3598)))))

(declare-fun e!2290513 () Bool)

(assert (=> d!1084638 (= lt!1294395 e!2290513)))

(declare-fun res!1504254 () Bool)

(assert (=> d!1084638 (=> (not res!1504254) (not e!2290513))))

(assert (=> d!1084638 (= res!1504254 (is-Cons!39275 rules!3598))))

(assert (=> d!1084638 (= (contains!7830 rules!3598 (rule!8821 (_1!22705 (get!13064 lt!1294249)))) lt!1294395)))

(declare-fun b!3698609 () Bool)

(declare-fun e!2290512 () Bool)

(assert (=> b!3698609 (= e!2290513 e!2290512)))

(declare-fun res!1504255 () Bool)

(assert (=> b!3698609 (=> res!1504255 e!2290512)))

(assert (=> b!3698609 (= res!1504255 (= (h!44695 rules!3598) (rule!8821 (_1!22705 (get!13064 lt!1294249)))))))

(declare-fun b!3698610 () Bool)

(assert (=> b!3698610 (= e!2290512 (contains!7830 (t!301794 rules!3598) (rule!8821 (_1!22705 (get!13064 lt!1294249)))))))

(assert (= (and d!1084638 res!1504254) b!3698609))

(assert (= (and b!3698609 (not res!1504255)) b!3698610))

(declare-fun m!4209841 () Bool)

(assert (=> d!1084638 m!4209841))

(declare-fun m!4209843 () Bool)

(assert (=> d!1084638 m!4209843))

(declare-fun m!4209845 () Bool)

(assert (=> b!3698610 m!4209845))

(assert (=> b!3698286 d!1084638))

(declare-fun d!1084640 () Bool)

(assert (=> d!1084640 (= (get!13064 lt!1294249) (v!38453 lt!1294249))))

(assert (=> b!3698286 d!1084640))

(declare-fun d!1084642 () Bool)

(assert (=> d!1084642 (= (head!7992 lt!1294177) (h!44694 lt!1294177))))

(assert (=> b!3698093 d!1084642))

(declare-fun d!1084644 () Bool)

(declare-fun e!2290516 () Bool)

(assert (=> d!1084644 e!2290516))

(declare-fun res!1504258 () Bool)

(assert (=> d!1084644 (=> res!1504258 e!2290516)))

(assert (=> d!1084644 (= res!1504258 (isEmpty!23407 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))))))

(declare-fun lt!1294398 () Unit!57248)

(declare-fun choose!22122 (Regex!10720 List!39398) Unit!57248)

(assert (=> d!1084644 (= lt!1294398 (choose!22122 (regex!5961 (h!44695 rules!3598)) input!3172))))

(assert (=> d!1084644 (validRegex!4901 (regex!5961 (h!44695 rules!3598)))))

(assert (=> d!1084644 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1090 (regex!5961 (h!44695 rules!3598)) input!3172) lt!1294398)))

(declare-fun b!3698613 () Bool)

(assert (=> b!3698613 (= e!2290516 (matchR!5257 (regex!5961 (h!44695 rules!3598)) (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))))))

(assert (= (and d!1084644 (not res!1504258)) b!3698613))

(assert (=> d!1084644 m!4209423))

(assert (=> d!1084644 m!4209451))

(assert (=> d!1084644 m!4209525))

(assert (=> d!1084644 m!4209421))

(assert (=> d!1084644 m!4209423))

(assert (=> d!1084644 m!4209427))

(declare-fun m!4209847 () Bool)

(assert (=> d!1084644 m!4209847))

(assert (=> d!1084644 m!4209421))

(assert (=> b!3698613 m!4209421))

(assert (=> b!3698613 m!4209423))

(assert (=> b!3698613 m!4209421))

(assert (=> b!3698613 m!4209423))

(assert (=> b!3698613 m!4209427))

(assert (=> b!3698613 m!4209429))

(assert (=> b!3698169 d!1084644))

(declare-fun bs!574340 () Bool)

(declare-fun d!1084646 () Bool)

(assert (= bs!574340 (and d!1084646 d!1084596)))

(declare-fun lambda!125047 () Int)

(assert (=> bs!574340 (= (and (= (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toChars!8152 (transformation!5961 (rule!8821 token!544)))) (= (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (rule!8821 token!544))))) (= lambda!125047 lambda!125041))))

(declare-fun b!3698618 () Bool)

(declare-fun e!2290519 () Bool)

(assert (=> b!3698618 (= e!2290519 true)))

(assert (=> d!1084646 e!2290519))

(assert (= d!1084646 b!3698618))

(assert (=> b!3698618 (< (dynLambda!17169 order!21687 (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) (dynLambda!17168 order!21685 lambda!125047))))

(assert (=> b!3698618 (< (dynLambda!17167 order!21683 (toChars!8152 (transformation!5961 (h!44695 rules!3598)))) (dynLambda!17168 order!21685 lambda!125047))))

(assert (=> d!1084646 (= (list!14672 (dynLambda!17165 (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (dynLambda!17170 (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (seqFromList!4476 (_1!22707 lt!1294215))))) (list!14672 (seqFromList!4476 (_1!22707 lt!1294215))))))

(declare-fun lt!1294401 () Unit!57248)

(declare-fun ForallOf!757 (Int BalanceConc!23730) Unit!57248)

(assert (=> d!1084646 (= lt!1294401 (ForallOf!757 lambda!125047 (seqFromList!4476 (_1!22707 lt!1294215))))))

(assert (=> d!1084646 (= (lemmaSemiInverse!1623 (transformation!5961 (h!44695 rules!3598)) (seqFromList!4476 (_1!22707 lt!1294215))) lt!1294401)))

(declare-fun b_lambda!109701 () Bool)

(assert (=> (not b_lambda!109701) (not d!1084646)))

(declare-fun t!301820 () Bool)

(declare-fun tb!214131 () Bool)

(assert (=> (and b!3698000 (= (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toChars!8152 (transformation!5961 (h!44695 rules!3598)))) t!301820) tb!214131))

(declare-fun b!3698619 () Bool)

(declare-fun tp!1124223 () Bool)

(declare-fun e!2290520 () Bool)

(assert (=> b!3698619 (= e!2290520 (and (inv!52785 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (dynLambda!17170 (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (seqFromList!4476 (_1!22707 lt!1294215)))))) tp!1124223))))

(declare-fun result!260870 () Bool)

(assert (=> tb!214131 (= result!260870 (and (inv!52786 (dynLambda!17165 (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (dynLambda!17170 (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (seqFromList!4476 (_1!22707 lt!1294215))))) e!2290520))))

(assert (= tb!214131 b!3698619))

(declare-fun m!4209849 () Bool)

(assert (=> b!3698619 m!4209849))

(declare-fun m!4209851 () Bool)

(assert (=> tb!214131 m!4209851))

(assert (=> d!1084646 t!301820))

(declare-fun b_and!276489 () Bool)

(assert (= b_and!276463 (and (=> t!301820 result!260870) b_and!276489)))

(declare-fun t!301822 () Bool)

(declare-fun tb!214133 () Bool)

(assert (=> (and b!3697985 (= (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toChars!8152 (transformation!5961 (h!44695 rules!3598)))) t!301822) tb!214133))

(declare-fun result!260872 () Bool)

(assert (= result!260872 result!260870))

(assert (=> d!1084646 t!301822))

(declare-fun b_and!276491 () Bool)

(assert (= b_and!276465 (and (=> t!301822 result!260872) b_and!276491)))

(declare-fun t!301824 () Bool)

(declare-fun tb!214135 () Bool)

(assert (=> (and b!3698319 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toChars!8152 (transformation!5961 (h!44695 rules!3598)))) t!301824) tb!214135))

(declare-fun result!260874 () Bool)

(assert (= result!260874 result!260870))

(assert (=> d!1084646 t!301824))

(declare-fun b_and!276493 () Bool)

(assert (= b_and!276477 (and (=> t!301824 result!260874) b_and!276493)))

(declare-fun b_lambda!109703 () Bool)

(assert (=> (not b_lambda!109703) (not d!1084646)))

(declare-fun t!301826 () Bool)

(declare-fun tb!214137 () Bool)

(assert (=> (and b!3698000 (= (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) t!301826) tb!214137))

(declare-fun result!260876 () Bool)

(assert (=> tb!214137 (= result!260876 (inv!21 (dynLambda!17170 (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (seqFromList!4476 (_1!22707 lt!1294215)))))))

(declare-fun m!4209853 () Bool)

(assert (=> tb!214137 m!4209853))

(assert (=> d!1084646 t!301826))

(declare-fun b_and!276495 () Bool)

(assert (= b_and!276483 (and (=> t!301826 result!260876) b_and!276495)))

(declare-fun t!301828 () Bool)

(declare-fun tb!214139 () Bool)

(assert (=> (and b!3697985 (= (toValue!8293 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) t!301828) tb!214139))

(declare-fun result!260878 () Bool)

(assert (= result!260878 result!260876))

(assert (=> d!1084646 t!301828))

(declare-fun b_and!276497 () Bool)

(assert (= b_and!276485 (and (=> t!301828 result!260878) b_and!276497)))

(declare-fun t!301830 () Bool)

(declare-fun tb!214141 () Bool)

(assert (=> (and b!3698319 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) t!301830) tb!214141))

(declare-fun result!260880 () Bool)

(assert (= result!260880 result!260876))

(assert (=> d!1084646 t!301830))

(declare-fun b_and!276499 () Bool)

(assert (= b_and!276487 (and (=> t!301830 result!260880) b_and!276499)))

(assert (=> d!1084646 m!4209445))

(declare-fun m!4209855 () Bool)

(assert (=> d!1084646 m!4209855))

(assert (=> d!1084646 m!4209445))

(declare-fun m!4209857 () Bool)

(assert (=> d!1084646 m!4209857))

(assert (=> d!1084646 m!4209857))

(declare-fun m!4209859 () Bool)

(assert (=> d!1084646 m!4209859))

(assert (=> d!1084646 m!4209859))

(declare-fun m!4209861 () Bool)

(assert (=> d!1084646 m!4209861))

(assert (=> d!1084646 m!4209445))

(declare-fun m!4209863 () Bool)

(assert (=> d!1084646 m!4209863))

(assert (=> b!3698169 d!1084646))

(assert (=> b!3698169 d!1084630))

(declare-fun d!1084648 () Bool)

(declare-fun lt!1294404 () Int)

(assert (=> d!1084648 (= lt!1294404 (size!29957 (list!14672 (seqFromList!4476 (_1!22707 lt!1294215)))))))

(declare-fun size!29961 (Conc!12058) Int)

(assert (=> d!1084648 (= lt!1294404 (size!29961 (c!639098 (seqFromList!4476 (_1!22707 lt!1294215)))))))

(assert (=> d!1084648 (= (size!29958 (seqFromList!4476 (_1!22707 lt!1294215))) lt!1294404)))

(declare-fun bs!574341 () Bool)

(assert (= bs!574341 d!1084648))

(assert (=> bs!574341 m!4209445))

(assert (=> bs!574341 m!4209855))

(assert (=> bs!574341 m!4209855))

(declare-fun m!4209865 () Bool)

(assert (=> bs!574341 m!4209865))

(declare-fun m!4209867 () Bool)

(assert (=> bs!574341 m!4209867))

(assert (=> b!3698169 d!1084648))

(declare-fun d!1084650 () Bool)

(assert (=> d!1084650 (= (isEmpty!23407 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))) (is-Nil!39274 (_1!22707 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 (size!29957 Nil!39274) input!3172 input!3172 (size!29957 input!3172)))))))

(assert (=> b!3698169 d!1084650))

(declare-fun d!1084652 () Bool)

(assert (=> d!1084652 (= (apply!9397 (transformation!5961 (h!44695 rules!3598)) (seqFromList!4476 (_1!22707 lt!1294215))) (dynLambda!17170 (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (seqFromList!4476 (_1!22707 lt!1294215))))))

(declare-fun b_lambda!109705 () Bool)

(assert (=> (not b_lambda!109705) (not d!1084652)))

(assert (=> d!1084652 t!301826))

(declare-fun b_and!276501 () Bool)

(assert (= b_and!276495 (and (=> t!301826 result!260876) b_and!276501)))

(assert (=> d!1084652 t!301828))

(declare-fun b_and!276503 () Bool)

(assert (= b_and!276497 (and (=> t!301828 result!260878) b_and!276503)))

(assert (=> d!1084652 t!301830))

(declare-fun b_and!276505 () Bool)

(assert (= b_and!276499 (and (=> t!301830 result!260880) b_and!276505)))

(assert (=> d!1084652 m!4209445))

(assert (=> d!1084652 m!4209857))

(assert (=> b!3698169 d!1084652))

(assert (=> b!3698169 d!1084628))

(declare-fun d!1084654 () Bool)

(assert (=> d!1084654 (= (seqFromList!4476 (_1!22707 lt!1294215)) (fromListB!2064 (_1!22707 lt!1294215)))))

(declare-fun bs!574342 () Bool)

(assert (= bs!574342 d!1084654))

(declare-fun m!4209869 () Bool)

(assert (=> bs!574342 m!4209869))

(assert (=> b!3698169 d!1084654))

(assert (=> b!3698169 d!1084626))

(declare-fun d!1084656 () Bool)

(assert (=> d!1084656 (= (isEmpty!23409 lt!1294226) (not (is-Some!8494 lt!1294226)))))

(assert (=> d!1084520 d!1084656))

(assert (=> d!1084520 d!1084530))

(declare-fun d!1084658 () Bool)

(declare-fun res!1504263 () Bool)

(declare-fun e!2290526 () Bool)

(assert (=> d!1084658 (=> res!1504263 e!2290526)))

(assert (=> d!1084658 (= res!1504263 (is-Nil!39275 rules!3598))))

(assert (=> d!1084658 (= (noDuplicateTag!2298 thiss!25322 rules!3598 Nil!39279) e!2290526)))

(declare-fun b!3698624 () Bool)

(declare-fun e!2290527 () Bool)

(assert (=> b!3698624 (= e!2290526 e!2290527)))

(declare-fun res!1504264 () Bool)

(assert (=> b!3698624 (=> (not res!1504264) (not e!2290527))))

(declare-fun contains!7832 (List!39403 String!44291) Bool)

(assert (=> b!3698624 (= res!1504264 (not (contains!7832 Nil!39279 (tag!6791 (h!44695 rules!3598)))))))

(declare-fun b!3698625 () Bool)

(assert (=> b!3698625 (= e!2290527 (noDuplicateTag!2298 thiss!25322 (t!301794 rules!3598) (Cons!39279 (tag!6791 (h!44695 rules!3598)) Nil!39279)))))

(assert (= (and d!1084658 (not res!1504263)) b!3698624))

(assert (= (and b!3698624 res!1504264) b!3698625))

(declare-fun m!4209871 () Bool)

(assert (=> b!3698624 m!4209871))

(declare-fun m!4209873 () Bool)

(assert (=> b!3698625 m!4209873))

(assert (=> b!3698224 d!1084658))

(assert (=> b!3698095 d!1084632))

(assert (=> b!3698095 d!1084634))

(declare-fun d!1084660 () Bool)

(declare-fun res!1504265 () Bool)

(declare-fun e!2290528 () Bool)

(assert (=> d!1084660 (=> (not res!1504265) (not e!2290528))))

(assert (=> d!1084660 (= res!1504265 (rulesValid!2302 thiss!25322 (t!301794 rules!3598)))))

(assert (=> d!1084660 (= (rulesInvariant!4947 thiss!25322 (t!301794 rules!3598)) e!2290528)))

(declare-fun b!3698626 () Bool)

(assert (=> b!3698626 (= e!2290528 (noDuplicateTag!2298 thiss!25322 (t!301794 rules!3598) Nil!39279))))

(assert (= (and d!1084660 res!1504265) b!3698626))

(declare-fun m!4209875 () Bool)

(assert (=> d!1084660 m!4209875))

(declare-fun m!4209877 () Bool)

(assert (=> b!3698626 m!4209877))

(assert (=> b!3698203 d!1084660))

(declare-fun d!1084662 () Bool)

(assert (=> d!1084662 (rulesInvariant!4947 thiss!25322 (t!301794 rules!3598))))

(declare-fun lt!1294407 () Unit!57248)

(declare-fun choose!22123 (LexerInterface!5550 Rule!11722 List!39399) Unit!57248)

(assert (=> d!1084662 (= lt!1294407 (choose!22123 thiss!25322 (h!44695 rules!3598) (t!301794 rules!3598)))))

(assert (=> d!1084662 (rulesInvariant!4947 thiss!25322 (Cons!39275 (h!44695 rules!3598) (t!301794 rules!3598)))))

(assert (=> d!1084662 (= (lemmaInvariantOnRulesThenOnTail!659 thiss!25322 (h!44695 rules!3598) (t!301794 rules!3598)) lt!1294407)))

(declare-fun bs!574343 () Bool)

(assert (= bs!574343 d!1084662))

(assert (=> bs!574343 m!4209497))

(declare-fun m!4209879 () Bool)

(assert (=> bs!574343 m!4209879))

(declare-fun m!4209881 () Bool)

(assert (=> bs!574343 m!4209881))

(assert (=> b!3698203 d!1084662))

(declare-fun d!1084664 () Bool)

(declare-fun e!2290530 () Bool)

(assert (=> d!1084664 e!2290530))

(declare-fun res!1504267 () Bool)

(assert (=> d!1084664 (=> res!1504267 e!2290530)))

(declare-fun lt!1294410 () Option!8495)

(assert (=> d!1084664 (= res!1504267 (isEmpty!23409 lt!1294410))))

(declare-fun e!2290529 () Option!8495)

(assert (=> d!1084664 (= lt!1294410 e!2290529)))

(declare-fun c!639206 () Bool)

(assert (=> d!1084664 (= c!639206 (and (is-Cons!39275 (t!301794 rules!3598)) (= (tag!6791 (h!44695 (t!301794 rules!3598))) (tag!6791 (rule!8821 token!544)))))))

(assert (=> d!1084664 (rulesInvariant!4947 thiss!25322 (t!301794 rules!3598))))

(assert (=> d!1084664 (= (getRuleFromTag!1511 thiss!25322 (t!301794 rules!3598) (tag!6791 (rule!8821 token!544))) lt!1294410)))

(declare-fun b!3698627 () Bool)

(declare-fun e!2290532 () Bool)

(assert (=> b!3698627 (= e!2290530 e!2290532)))

(declare-fun res!1504266 () Bool)

(assert (=> b!3698627 (=> (not res!1504266) (not e!2290532))))

(assert (=> b!3698627 (= res!1504266 (contains!7830 (t!301794 rules!3598) (get!13063 lt!1294410)))))

(declare-fun b!3698628 () Bool)

(declare-fun e!2290531 () Option!8495)

(assert (=> b!3698628 (= e!2290531 None!8494)))

(declare-fun b!3698629 () Bool)

(assert (=> b!3698629 (= e!2290529 e!2290531)))

(declare-fun c!639205 () Bool)

(assert (=> b!3698629 (= c!639205 (and (is-Cons!39275 (t!301794 rules!3598)) (not (= (tag!6791 (h!44695 (t!301794 rules!3598))) (tag!6791 (rule!8821 token!544))))))))

(declare-fun b!3698630 () Bool)

(assert (=> b!3698630 (= e!2290529 (Some!8494 (h!44695 (t!301794 rules!3598))))))

(declare-fun b!3698631 () Bool)

(assert (=> b!3698631 (= e!2290532 (= (tag!6791 (get!13063 lt!1294410)) (tag!6791 (rule!8821 token!544))))))

(declare-fun b!3698632 () Bool)

(declare-fun lt!1294409 () Unit!57248)

(declare-fun lt!1294408 () Unit!57248)

(assert (=> b!3698632 (= lt!1294409 lt!1294408)))

(assert (=> b!3698632 (rulesInvariant!4947 thiss!25322 (t!301794 (t!301794 rules!3598)))))

(assert (=> b!3698632 (= lt!1294408 (lemmaInvariantOnRulesThenOnTail!659 thiss!25322 (h!44695 (t!301794 rules!3598)) (t!301794 (t!301794 rules!3598))))))

(assert (=> b!3698632 (= e!2290531 (getRuleFromTag!1511 thiss!25322 (t!301794 (t!301794 rules!3598)) (tag!6791 (rule!8821 token!544))))))

(assert (= (and d!1084664 c!639206) b!3698630))

(assert (= (and d!1084664 (not c!639206)) b!3698629))

(assert (= (and b!3698629 c!639205) b!3698632))

(assert (= (and b!3698629 (not c!639205)) b!3698628))

(assert (= (and d!1084664 (not res!1504267)) b!3698627))

(assert (= (and b!3698627 res!1504266) b!3698631))

(declare-fun m!4209883 () Bool)

(assert (=> d!1084664 m!4209883))

(assert (=> d!1084664 m!4209497))

(declare-fun m!4209885 () Bool)

(assert (=> b!3698627 m!4209885))

(assert (=> b!3698627 m!4209885))

(declare-fun m!4209887 () Bool)

(assert (=> b!3698627 m!4209887))

(assert (=> b!3698631 m!4209885))

(declare-fun m!4209889 () Bool)

(assert (=> b!3698632 m!4209889))

(declare-fun m!4209891 () Bool)

(assert (=> b!3698632 m!4209891))

(declare-fun m!4209893 () Bool)

(assert (=> b!3698632 m!4209893))

(assert (=> b!3698203 d!1084664))

(declare-fun d!1084666 () Bool)

(declare-fun lt!1294411 () Int)

(assert (=> d!1084666 (>= lt!1294411 0)))

(declare-fun e!2290533 () Int)

(assert (=> d!1084666 (= lt!1294411 e!2290533)))

(declare-fun c!639207 () Bool)

(assert (=> d!1084666 (= c!639207 (is-Nil!39274 (_2!22705 (get!13064 lt!1294217))))))

(assert (=> d!1084666 (= (size!29957 (_2!22705 (get!13064 lt!1294217))) lt!1294411)))

(declare-fun b!3698633 () Bool)

(assert (=> b!3698633 (= e!2290533 0)))

(declare-fun b!3698634 () Bool)

(assert (=> b!3698634 (= e!2290533 (+ 1 (size!29957 (t!301793 (_2!22705 (get!13064 lt!1294217))))))))

(assert (= (and d!1084666 c!639207) b!3698633))

(assert (= (and d!1084666 (not c!639207)) b!3698634))

(declare-fun m!4209895 () Bool)

(assert (=> b!3698634 m!4209895))

(assert (=> b!3698167 d!1084666))

(assert (=> b!3698167 d!1084610))

(assert (=> b!3698167 d!1084630))

(declare-fun d!1084668 () Bool)

(declare-fun e!2290535 () Bool)

(assert (=> d!1084668 e!2290535))

(declare-fun c!639208 () Bool)

(assert (=> d!1084668 (= c!639208 (is-EmptyExpr!10720 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))))))

(declare-fun lt!1294412 () Bool)

(declare-fun e!2290534 () Bool)

(assert (=> d!1084668 (= lt!1294412 e!2290534)))

(declare-fun c!639210 () Bool)

(assert (=> d!1084668 (= c!639210 (isEmpty!23407 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))))))

(assert (=> d!1084668 (validRegex!4901 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))))

(assert (=> d!1084668 (= (matchR!5257 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))) (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))) lt!1294412)))

(declare-fun b!3698635 () Bool)

(declare-fun e!2290537 () Bool)

(assert (=> b!3698635 (= e!2290535 e!2290537)))

(declare-fun c!639209 () Bool)

(assert (=> b!3698635 (= c!639209 (is-EmptyLang!10720 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))))))

(declare-fun b!3698636 () Bool)

(declare-fun res!1504272 () Bool)

(declare-fun e!2290538 () Bool)

(assert (=> b!3698636 (=> res!1504272 e!2290538)))

(declare-fun e!2290540 () Bool)

(assert (=> b!3698636 (= res!1504272 e!2290540)))

(declare-fun res!1504268 () Bool)

(assert (=> b!3698636 (=> (not res!1504268) (not e!2290540))))

(assert (=> b!3698636 (= res!1504268 lt!1294412)))

(declare-fun b!3698637 () Bool)

(declare-fun res!1504273 () Bool)

(assert (=> b!3698637 (=> (not res!1504273) (not e!2290540))))

(declare-fun call!267262 () Bool)

(assert (=> b!3698637 (= res!1504273 (not call!267262))))

(declare-fun b!3698638 () Bool)

(declare-fun res!1504269 () Bool)

(declare-fun e!2290539 () Bool)

(assert (=> b!3698638 (=> res!1504269 e!2290539)))

(assert (=> b!3698638 (= res!1504269 (not (isEmpty!23407 (tail!5729 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))))))))

(declare-fun bm!267257 () Bool)

(assert (=> bm!267257 (= call!267262 (isEmpty!23407 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))))))

(declare-fun b!3698639 () Bool)

(assert (=> b!3698639 (= e!2290534 (matchR!5257 (derivativeStep!3279 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))) (head!7992 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249)))))) (tail!5729 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249)))))))))

(declare-fun b!3698640 () Bool)

(declare-fun e!2290536 () Bool)

(assert (=> b!3698640 (= e!2290536 e!2290539)))

(declare-fun res!1504274 () Bool)

(assert (=> b!3698640 (=> res!1504274 e!2290539)))

(assert (=> b!3698640 (= res!1504274 call!267262)))

(declare-fun b!3698641 () Bool)

(assert (=> b!3698641 (= e!2290540 (= (head!7992 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))) (c!639097 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))))))

(declare-fun b!3698642 () Bool)

(assert (=> b!3698642 (= e!2290539 (not (= (head!7992 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))) (c!639097 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))))))))

(declare-fun b!3698643 () Bool)

(declare-fun res!1504275 () Bool)

(assert (=> b!3698643 (=> (not res!1504275) (not e!2290540))))

(assert (=> b!3698643 (= res!1504275 (isEmpty!23407 (tail!5729 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249)))))))))

(declare-fun b!3698644 () Bool)

(assert (=> b!3698644 (= e!2290537 (not lt!1294412))))

(declare-fun b!3698645 () Bool)

(assert (=> b!3698645 (= e!2290538 e!2290536)))

(declare-fun res!1504271 () Bool)

(assert (=> b!3698645 (=> (not res!1504271) (not e!2290536))))

(assert (=> b!3698645 (= res!1504271 (not lt!1294412))))

(declare-fun b!3698646 () Bool)

(assert (=> b!3698646 (= e!2290535 (= lt!1294412 call!267262))))

(declare-fun b!3698647 () Bool)

(assert (=> b!3698647 (= e!2290534 (nullable!3737 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))))))

(declare-fun b!3698648 () Bool)

(declare-fun res!1504270 () Bool)

(assert (=> b!3698648 (=> res!1504270 e!2290538)))

(assert (=> b!3698648 (= res!1504270 (not (is-ElementMatch!10720 (regex!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))))))

(assert (=> b!3698648 (= e!2290537 e!2290538)))

(assert (= (and d!1084668 c!639210) b!3698647))

(assert (= (and d!1084668 (not c!639210)) b!3698639))

(assert (= (and d!1084668 c!639208) b!3698646))

(assert (= (and d!1084668 (not c!639208)) b!3698635))

(assert (= (and b!3698635 c!639209) b!3698644))

(assert (= (and b!3698635 (not c!639209)) b!3698648))

(assert (= (and b!3698648 (not res!1504270)) b!3698636))

(assert (= (and b!3698636 res!1504268) b!3698637))

(assert (= (and b!3698637 res!1504273) b!3698643))

(assert (= (and b!3698643 res!1504275) b!3698641))

(assert (= (and b!3698636 (not res!1504272)) b!3698645))

(assert (= (and b!3698645 res!1504271) b!3698640))

(assert (= (and b!3698640 (not res!1504274)) b!3698638))

(assert (= (and b!3698638 (not res!1504269)) b!3698642))

(assert (= (or b!3698646 b!3698637 b!3698640) bm!267257))

(assert (=> d!1084668 m!4209571))

(declare-fun m!4209897 () Bool)

(assert (=> d!1084668 m!4209897))

(declare-fun m!4209899 () Bool)

(assert (=> d!1084668 m!4209899))

(assert (=> b!3698641 m!4209571))

(declare-fun m!4209901 () Bool)

(assert (=> b!3698641 m!4209901))

(assert (=> b!3698639 m!4209571))

(assert (=> b!3698639 m!4209901))

(assert (=> b!3698639 m!4209901))

(declare-fun m!4209903 () Bool)

(assert (=> b!3698639 m!4209903))

(assert (=> b!3698639 m!4209571))

(declare-fun m!4209905 () Bool)

(assert (=> b!3698639 m!4209905))

(assert (=> b!3698639 m!4209903))

(assert (=> b!3698639 m!4209905))

(declare-fun m!4209907 () Bool)

(assert (=> b!3698639 m!4209907))

(assert (=> b!3698642 m!4209571))

(assert (=> b!3698642 m!4209901))

(assert (=> bm!267257 m!4209571))

(assert (=> bm!267257 m!4209897))

(assert (=> b!3698638 m!4209571))

(assert (=> b!3698638 m!4209905))

(assert (=> b!3698638 m!4209905))

(declare-fun m!4209909 () Bool)

(assert (=> b!3698638 m!4209909))

(declare-fun m!4209911 () Bool)

(assert (=> b!3698647 m!4209911))

(assert (=> b!3698643 m!4209571))

(assert (=> b!3698643 m!4209905))

(assert (=> b!3698643 m!4209905))

(assert (=> b!3698643 m!4209909))

(assert (=> b!3698291 d!1084668))

(assert (=> b!3698291 d!1084640))

(declare-fun d!1084670 () Bool)

(assert (=> d!1084670 (= (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249)))) (list!14674 (c!639098 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))))))

(declare-fun bs!574344 () Bool)

(assert (= bs!574344 d!1084670))

(declare-fun m!4209913 () Bool)

(assert (=> bs!574344 m!4209913))

(assert (=> b!3698291 d!1084670))

(declare-fun d!1084672 () Bool)

(declare-fun lt!1294413 () BalanceConc!23730)

(assert (=> d!1084672 (= (list!14672 lt!1294413) (originalCharacters!6669 (_1!22705 (get!13064 lt!1294249))))))

(assert (=> d!1084672 (= lt!1294413 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))) (value!190344 (_1!22705 (get!13064 lt!1294249)))))))

(assert (=> d!1084672 (= (charsOf!3954 (_1!22705 (get!13064 lt!1294249))) lt!1294413)))

(declare-fun b_lambda!109707 () Bool)

(assert (=> (not b_lambda!109707) (not d!1084672)))

(declare-fun t!301832 () Bool)

(declare-fun tb!214143 () Bool)

(assert (=> (and b!3698000 (= (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))) t!301832) tb!214143))

(declare-fun b!3698649 () Bool)

(declare-fun e!2290541 () Bool)

(declare-fun tp!1124224 () Bool)

(assert (=> b!3698649 (= e!2290541 (and (inv!52785 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))) (value!190344 (_1!22705 (get!13064 lt!1294249)))))) tp!1124224))))

(declare-fun result!260882 () Bool)

(assert (=> tb!214143 (= result!260882 (and (inv!52786 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))) (value!190344 (_1!22705 (get!13064 lt!1294249))))) e!2290541))))

(assert (= tb!214143 b!3698649))

(declare-fun m!4209915 () Bool)

(assert (=> b!3698649 m!4209915))

(declare-fun m!4209917 () Bool)

(assert (=> tb!214143 m!4209917))

(assert (=> d!1084672 t!301832))

(declare-fun b_and!276507 () Bool)

(assert (= b_and!276489 (and (=> t!301832 result!260882) b_and!276507)))

(declare-fun t!301834 () Bool)

(declare-fun tb!214145 () Bool)

(assert (=> (and b!3697985 (= (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))) t!301834) tb!214145))

(declare-fun result!260884 () Bool)

(assert (= result!260884 result!260882))

(assert (=> d!1084672 t!301834))

(declare-fun b_and!276509 () Bool)

(assert (= b_and!276491 (and (=> t!301834 result!260884) b_and!276509)))

(declare-fun tb!214147 () Bool)

(declare-fun t!301836 () Bool)

(assert (=> (and b!3698319 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))) t!301836) tb!214147))

(declare-fun result!260886 () Bool)

(assert (= result!260886 result!260882))

(assert (=> d!1084672 t!301836))

(declare-fun b_and!276511 () Bool)

(assert (= b_and!276493 (and (=> t!301836 result!260886) b_and!276511)))

(declare-fun m!4209919 () Bool)

(assert (=> d!1084672 m!4209919))

(declare-fun m!4209921 () Bool)

(assert (=> d!1084672 m!4209921))

(assert (=> b!3698291 d!1084672))

(declare-fun d!1084674 () Bool)

(assert (=> d!1084674 (= (isEmpty!23408 lt!1294217) (not (is-Some!8495 lt!1294217)))))

(assert (=> d!1084506 d!1084674))

(declare-fun d!1084676 () Bool)

(assert (=> d!1084676 (= (isEmpty!23407 (_1!22707 lt!1294215)) (is-Nil!39274 (_1!22707 lt!1294215)))))

(assert (=> d!1084506 d!1084676))

(declare-fun d!1084678 () Bool)

(declare-fun lt!1294431 () tuple2!39146)

(assert (=> d!1084678 (= (++!9757 (_1!22707 lt!1294431) (_2!22707 lt!1294431)) input!3172)))

(declare-fun sizeTr!230 (List!39398 Int) Int)

(assert (=> d!1084678 (= lt!1294431 (findLongestMatchInner!1117 (regex!5961 (h!44695 rules!3598)) Nil!39274 0 input!3172 input!3172 (sizeTr!230 input!3172 0)))))

(declare-fun lt!1294435 () Unit!57248)

(declare-fun lt!1294433 () Unit!57248)

(assert (=> d!1084678 (= lt!1294435 lt!1294433)))

(declare-fun lt!1294434 () List!39398)

(declare-fun lt!1294432 () Int)

(assert (=> d!1084678 (= (sizeTr!230 lt!1294434 lt!1294432) (+ (size!29957 lt!1294434) lt!1294432))))

(declare-fun lemmaSizeTrEqualsSize!229 (List!39398 Int) Unit!57248)

(assert (=> d!1084678 (= lt!1294433 (lemmaSizeTrEqualsSize!229 lt!1294434 lt!1294432))))

(assert (=> d!1084678 (= lt!1294432 0)))

(assert (=> d!1084678 (= lt!1294434 Nil!39274)))

(declare-fun lt!1294436 () Unit!57248)

(declare-fun lt!1294437 () Unit!57248)

(assert (=> d!1084678 (= lt!1294436 lt!1294437)))

(declare-fun lt!1294430 () Int)

(assert (=> d!1084678 (= (sizeTr!230 input!3172 lt!1294430) (+ (size!29957 input!3172) lt!1294430))))

(assert (=> d!1084678 (= lt!1294437 (lemmaSizeTrEqualsSize!229 input!3172 lt!1294430))))

(assert (=> d!1084678 (= lt!1294430 0)))

(assert (=> d!1084678 (validRegex!4901 (regex!5961 (h!44695 rules!3598)))))

(assert (=> d!1084678 (= (findLongestMatch!1032 (regex!5961 (h!44695 rules!3598)) input!3172) lt!1294431)))

(declare-fun bs!574345 () Bool)

(assert (= bs!574345 d!1084678))

(declare-fun m!4209923 () Bool)

(assert (=> bs!574345 m!4209923))

(declare-fun m!4209925 () Bool)

(assert (=> bs!574345 m!4209925))

(assert (=> bs!574345 m!4209923))

(declare-fun m!4209927 () Bool)

(assert (=> bs!574345 m!4209927))

(assert (=> bs!574345 m!4209525))

(declare-fun m!4209929 () Bool)

(assert (=> bs!574345 m!4209929))

(declare-fun m!4209931 () Bool)

(assert (=> bs!574345 m!4209931))

(declare-fun m!4209933 () Bool)

(assert (=> bs!574345 m!4209933))

(assert (=> bs!574345 m!4209423))

(declare-fun m!4209935 () Bool)

(assert (=> bs!574345 m!4209935))

(declare-fun m!4209937 () Bool)

(assert (=> bs!574345 m!4209937))

(assert (=> d!1084506 d!1084678))

(declare-fun d!1084680 () Bool)

(declare-fun res!1504280 () Bool)

(declare-fun e!2290544 () Bool)

(assert (=> d!1084680 (=> (not res!1504280) (not e!2290544))))

(assert (=> d!1084680 (= res!1504280 (validRegex!4901 (regex!5961 (h!44695 rules!3598))))))

(assert (=> d!1084680 (= (ruleValid!2155 thiss!25322 (h!44695 rules!3598)) e!2290544)))

(declare-fun b!3698654 () Bool)

(declare-fun res!1504281 () Bool)

(assert (=> b!3698654 (=> (not res!1504281) (not e!2290544))))

(assert (=> b!3698654 (= res!1504281 (not (nullable!3737 (regex!5961 (h!44695 rules!3598)))))))

(declare-fun b!3698655 () Bool)

(assert (=> b!3698655 (= e!2290544 (not (= (tag!6791 (h!44695 rules!3598)) (String!44292 ""))))))

(assert (= (and d!1084680 res!1504280) b!3698654))

(assert (= (and b!3698654 res!1504281) b!3698655))

(assert (=> d!1084680 m!4209525))

(assert (=> b!3698654 m!4209531))

(assert (=> d!1084506 d!1084680))

(assert (=> b!3698090 d!1084632))

(assert (=> b!3698090 d!1084634))

(assert (=> d!1084500 d!1084580))

(declare-fun c!639212 () Bool)

(declare-fun bm!267258 () Bool)

(declare-fun call!267264 () Bool)

(declare-fun c!639211 () Bool)

(assert (=> bm!267258 (= call!267264 (validRegex!4901 (ite c!639212 (reg!11049 (regex!5961 lt!1294181)) (ite c!639211 (regOne!21953 (regex!5961 lt!1294181)) (regOne!21952 (regex!5961 lt!1294181))))))))

(declare-fun b!3698656 () Bool)

(declare-fun e!2290546 () Bool)

(declare-fun call!267263 () Bool)

(assert (=> b!3698656 (= e!2290546 call!267263)))

(declare-fun b!3698657 () Bool)

(declare-fun res!1504285 () Bool)

(declare-fun e!2290551 () Bool)

(assert (=> b!3698657 (=> res!1504285 e!2290551)))

(assert (=> b!3698657 (= res!1504285 (not (is-Concat!16912 (regex!5961 lt!1294181))))))

(declare-fun e!2290547 () Bool)

(assert (=> b!3698657 (= e!2290547 e!2290551)))

(declare-fun bm!267259 () Bool)

(declare-fun call!267265 () Bool)

(assert (=> bm!267259 (= call!267265 call!267264)))

(declare-fun b!3698659 () Bool)

(declare-fun e!2290549 () Bool)

(assert (=> b!3698659 (= e!2290549 call!267264)))

(declare-fun b!3698660 () Bool)

(assert (=> b!3698660 (= e!2290551 e!2290546)))

(declare-fun res!1504284 () Bool)

(assert (=> b!3698660 (=> (not res!1504284) (not e!2290546))))

(assert (=> b!3698660 (= res!1504284 call!267265)))

(declare-fun b!3698661 () Bool)

(declare-fun e!2290548 () Bool)

(assert (=> b!3698661 (= e!2290548 e!2290547)))

(assert (=> b!3698661 (= c!639211 (is-Union!10720 (regex!5961 lt!1294181)))))

(declare-fun b!3698662 () Bool)

(assert (=> b!3698662 (= e!2290548 e!2290549)))

(declare-fun res!1504282 () Bool)

(assert (=> b!3698662 (= res!1504282 (not (nullable!3737 (reg!11049 (regex!5961 lt!1294181)))))))

(assert (=> b!3698662 (=> (not res!1504282) (not e!2290549))))

(declare-fun b!3698663 () Bool)

(declare-fun e!2290545 () Bool)

(assert (=> b!3698663 (= e!2290545 e!2290548)))

(assert (=> b!3698663 (= c!639212 (is-Star!10720 (regex!5961 lt!1294181)))))

(declare-fun b!3698664 () Bool)

(declare-fun e!2290550 () Bool)

(assert (=> b!3698664 (= e!2290550 call!267263)))

(declare-fun bm!267260 () Bool)

(assert (=> bm!267260 (= call!267263 (validRegex!4901 (ite c!639211 (regTwo!21953 (regex!5961 lt!1294181)) (regTwo!21952 (regex!5961 lt!1294181)))))))

(declare-fun d!1084682 () Bool)

(declare-fun res!1504286 () Bool)

(assert (=> d!1084682 (=> res!1504286 e!2290545)))

(assert (=> d!1084682 (= res!1504286 (is-ElementMatch!10720 (regex!5961 lt!1294181)))))

(assert (=> d!1084682 (= (validRegex!4901 (regex!5961 lt!1294181)) e!2290545)))

(declare-fun b!3698658 () Bool)

(declare-fun res!1504283 () Bool)

(assert (=> b!3698658 (=> (not res!1504283) (not e!2290550))))

(assert (=> b!3698658 (= res!1504283 call!267265)))

(assert (=> b!3698658 (= e!2290547 e!2290550)))

(assert (= (and d!1084682 (not res!1504286)) b!3698663))

(assert (= (and b!3698663 c!639212) b!3698662))

(assert (= (and b!3698663 (not c!639212)) b!3698661))

(assert (= (and b!3698662 res!1504282) b!3698659))

(assert (= (and b!3698661 c!639211) b!3698658))

(assert (= (and b!3698661 (not c!639211)) b!3698657))

(assert (= (and b!3698658 res!1504283) b!3698664))

(assert (= (and b!3698657 (not res!1504285)) b!3698660))

(assert (= (and b!3698660 res!1504284) b!3698656))

(assert (= (or b!3698664 b!3698656) bm!267260))

(assert (= (or b!3698658 b!3698660) bm!267259))

(assert (= (or b!3698659 bm!267259) bm!267258))

(declare-fun m!4209939 () Bool)

(assert (=> bm!267258 m!4209939))

(declare-fun m!4209941 () Bool)

(assert (=> b!3698662 m!4209941))

(declare-fun m!4209943 () Bool)

(assert (=> bm!267260 m!4209943))

(assert (=> d!1084500 d!1084682))

(declare-fun d!1084684 () Bool)

(declare-fun e!2290553 () Bool)

(assert (=> d!1084684 e!2290553))

(declare-fun c!639213 () Bool)

(assert (=> d!1084684 (= c!639213 (is-EmptyExpr!10720 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177))))))

(declare-fun lt!1294438 () Bool)

(declare-fun e!2290552 () Bool)

(assert (=> d!1084684 (= lt!1294438 e!2290552)))

(declare-fun c!639215 () Bool)

(assert (=> d!1084684 (= c!639215 (isEmpty!23407 (tail!5729 lt!1294177)))))

(assert (=> d!1084684 (validRegex!4901 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177)))))

(assert (=> d!1084684 (= (matchR!5257 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177)) (tail!5729 lt!1294177)) lt!1294438)))

(declare-fun b!3698665 () Bool)

(declare-fun e!2290555 () Bool)

(assert (=> b!3698665 (= e!2290553 e!2290555)))

(declare-fun c!639214 () Bool)

(assert (=> b!3698665 (= c!639214 (is-EmptyLang!10720 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177))))))

(declare-fun b!3698666 () Bool)

(declare-fun res!1504291 () Bool)

(declare-fun e!2290556 () Bool)

(assert (=> b!3698666 (=> res!1504291 e!2290556)))

(declare-fun e!2290558 () Bool)

(assert (=> b!3698666 (= res!1504291 e!2290558)))

(declare-fun res!1504287 () Bool)

(assert (=> b!3698666 (=> (not res!1504287) (not e!2290558))))

(assert (=> b!3698666 (= res!1504287 lt!1294438)))

(declare-fun b!3698667 () Bool)

(declare-fun res!1504292 () Bool)

(assert (=> b!3698667 (=> (not res!1504292) (not e!2290558))))

(declare-fun call!267266 () Bool)

(assert (=> b!3698667 (= res!1504292 (not call!267266))))

(declare-fun b!3698668 () Bool)

(declare-fun res!1504288 () Bool)

(declare-fun e!2290557 () Bool)

(assert (=> b!3698668 (=> res!1504288 e!2290557)))

(assert (=> b!3698668 (= res!1504288 (not (isEmpty!23407 (tail!5729 (tail!5729 lt!1294177)))))))

(declare-fun bm!267261 () Bool)

(assert (=> bm!267261 (= call!267266 (isEmpty!23407 (tail!5729 lt!1294177)))))

(declare-fun b!3698669 () Bool)

(assert (=> b!3698669 (= e!2290552 (matchR!5257 (derivativeStep!3279 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177)) (head!7992 (tail!5729 lt!1294177))) (tail!5729 (tail!5729 lt!1294177))))))

(declare-fun b!3698670 () Bool)

(declare-fun e!2290554 () Bool)

(assert (=> b!3698670 (= e!2290554 e!2290557)))

(declare-fun res!1504293 () Bool)

(assert (=> b!3698670 (=> res!1504293 e!2290557)))

(assert (=> b!3698670 (= res!1504293 call!267266)))

(declare-fun b!3698671 () Bool)

(assert (=> b!3698671 (= e!2290558 (= (head!7992 (tail!5729 lt!1294177)) (c!639097 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177)))))))

(declare-fun b!3698672 () Bool)

(assert (=> b!3698672 (= e!2290557 (not (= (head!7992 (tail!5729 lt!1294177)) (c!639097 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177))))))))

(declare-fun b!3698673 () Bool)

(declare-fun res!1504294 () Bool)

(assert (=> b!3698673 (=> (not res!1504294) (not e!2290558))))

(assert (=> b!3698673 (= res!1504294 (isEmpty!23407 (tail!5729 (tail!5729 lt!1294177))))))

(declare-fun b!3698674 () Bool)

(assert (=> b!3698674 (= e!2290555 (not lt!1294438))))

(declare-fun b!3698675 () Bool)

(assert (=> b!3698675 (= e!2290556 e!2290554)))

(declare-fun res!1504290 () Bool)

(assert (=> b!3698675 (=> (not res!1504290) (not e!2290554))))

(assert (=> b!3698675 (= res!1504290 (not lt!1294438))))

(declare-fun b!3698676 () Bool)

(assert (=> b!3698676 (= e!2290553 (= lt!1294438 call!267266))))

(declare-fun b!3698677 () Bool)

(assert (=> b!3698677 (= e!2290552 (nullable!3737 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177))))))

(declare-fun b!3698678 () Bool)

(declare-fun res!1504289 () Bool)

(assert (=> b!3698678 (=> res!1504289 e!2290556)))

(assert (=> b!3698678 (= res!1504289 (not (is-ElementMatch!10720 (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177)))))))

(assert (=> b!3698678 (= e!2290555 e!2290556)))

(assert (= (and d!1084684 c!639215) b!3698677))

(assert (= (and d!1084684 (not c!639215)) b!3698669))

(assert (= (and d!1084684 c!639213) b!3698676))

(assert (= (and d!1084684 (not c!639213)) b!3698665))

(assert (= (and b!3698665 c!639214) b!3698674))

(assert (= (and b!3698665 (not c!639214)) b!3698678))

(assert (= (and b!3698678 (not res!1504289)) b!3698666))

(assert (= (and b!3698666 res!1504287) b!3698667))

(assert (= (and b!3698667 res!1504292) b!3698673))

(assert (= (and b!3698673 res!1504294) b!3698671))

(assert (= (and b!3698666 (not res!1504291)) b!3698675))

(assert (= (and b!3698675 res!1504290) b!3698670))

(assert (= (and b!3698670 (not res!1504293)) b!3698668))

(assert (= (and b!3698668 (not res!1504288)) b!3698672))

(assert (= (or b!3698676 b!3698667 b!3698670) bm!267261))

(assert (=> d!1084684 m!4209401))

(assert (=> d!1084684 m!4209405))

(assert (=> d!1084684 m!4209399))

(declare-fun m!4209945 () Bool)

(assert (=> d!1084684 m!4209945))

(assert (=> b!3698671 m!4209401))

(declare-fun m!4209947 () Bool)

(assert (=> b!3698671 m!4209947))

(assert (=> b!3698669 m!4209401))

(assert (=> b!3698669 m!4209947))

(assert (=> b!3698669 m!4209399))

(assert (=> b!3698669 m!4209947))

(declare-fun m!4209949 () Bool)

(assert (=> b!3698669 m!4209949))

(assert (=> b!3698669 m!4209401))

(declare-fun m!4209951 () Bool)

(assert (=> b!3698669 m!4209951))

(assert (=> b!3698669 m!4209949))

(assert (=> b!3698669 m!4209951))

(declare-fun m!4209953 () Bool)

(assert (=> b!3698669 m!4209953))

(assert (=> b!3698672 m!4209401))

(assert (=> b!3698672 m!4209947))

(assert (=> bm!267261 m!4209401))

(assert (=> bm!267261 m!4209405))

(assert (=> b!3698668 m!4209401))

(assert (=> b!3698668 m!4209951))

(assert (=> b!3698668 m!4209951))

(declare-fun m!4209955 () Bool)

(assert (=> b!3698668 m!4209955))

(assert (=> b!3698677 m!4209399))

(declare-fun m!4209957 () Bool)

(assert (=> b!3698677 m!4209957))

(assert (=> b!3698673 m!4209401))

(assert (=> b!3698673 m!4209951))

(assert (=> b!3698673 m!4209951))

(assert (=> b!3698673 m!4209955))

(assert (=> b!3698091 d!1084684))

(declare-fun bm!267270 () Bool)

(declare-fun call!267275 () Regex!10720)

(declare-fun call!267278 () Regex!10720)

(assert (=> bm!267270 (= call!267275 call!267278)))

(declare-fun b!3698699 () Bool)

(declare-fun e!2290569 () Regex!10720)

(assert (=> b!3698699 (= e!2290569 (Concat!16912 call!267275 (regex!5961 lt!1294181)))))

(declare-fun b!3698700 () Bool)

(declare-fun e!2290572 () Regex!10720)

(declare-fun call!267276 () Regex!10720)

(assert (=> b!3698700 (= e!2290572 (Union!10720 (Concat!16912 call!267276 (regTwo!21952 (regex!5961 lt!1294181))) EmptyLang!10720))))

(declare-fun b!3698701 () Bool)

(declare-fun e!2290573 () Regex!10720)

(declare-fun call!267277 () Regex!10720)

(assert (=> b!3698701 (= e!2290573 (Union!10720 call!267277 call!267278))))

(declare-fun b!3698702 () Bool)

(declare-fun e!2290570 () Regex!10720)

(assert (=> b!3698702 (= e!2290570 (ite (= (head!7992 lt!1294177) (c!639097 (regex!5961 lt!1294181))) EmptyExpr!10720 EmptyLang!10720))))

(declare-fun b!3698703 () Bool)

(assert (=> b!3698703 (= e!2290573 e!2290569)))

(declare-fun c!639230 () Bool)

(assert (=> b!3698703 (= c!639230 (is-Star!10720 (regex!5961 lt!1294181)))))

(declare-fun b!3698704 () Bool)

(declare-fun e!2290571 () Regex!10720)

(assert (=> b!3698704 (= e!2290571 EmptyLang!10720)))

(declare-fun b!3698705 () Bool)

(assert (=> b!3698705 (= e!2290571 e!2290570)))

(declare-fun c!639228 () Bool)

(assert (=> b!3698705 (= c!639228 (is-ElementMatch!10720 (regex!5961 lt!1294181)))))

(declare-fun bm!267272 () Bool)

(assert (=> bm!267272 (= call!267276 call!267275)))

(declare-fun c!639229 () Bool)

(declare-fun bm!267271 () Bool)

(declare-fun c!639226 () Bool)

(assert (=> bm!267271 (= call!267278 (derivativeStep!3279 (ite c!639226 (regTwo!21953 (regex!5961 lt!1294181)) (ite c!639230 (reg!11049 (regex!5961 lt!1294181)) (ite c!639229 (regTwo!21952 (regex!5961 lt!1294181)) (regOne!21952 (regex!5961 lt!1294181))))) (head!7992 lt!1294177)))))

(declare-fun d!1084686 () Bool)

(declare-fun lt!1294441 () Regex!10720)

(assert (=> d!1084686 (validRegex!4901 lt!1294441)))

(assert (=> d!1084686 (= lt!1294441 e!2290571)))

(declare-fun c!639227 () Bool)

(assert (=> d!1084686 (= c!639227 (or (is-EmptyExpr!10720 (regex!5961 lt!1294181)) (is-EmptyLang!10720 (regex!5961 lt!1294181))))))

(assert (=> d!1084686 (validRegex!4901 (regex!5961 lt!1294181))))

(assert (=> d!1084686 (= (derivativeStep!3279 (regex!5961 lt!1294181) (head!7992 lt!1294177)) lt!1294441)))

(declare-fun b!3698706 () Bool)

(assert (=> b!3698706 (= e!2290572 (Union!10720 (Concat!16912 call!267277 (regTwo!21952 (regex!5961 lt!1294181))) call!267276))))

(declare-fun bm!267273 () Bool)

(assert (=> bm!267273 (= call!267277 (derivativeStep!3279 (ite c!639226 (regOne!21953 (regex!5961 lt!1294181)) (regOne!21952 (regex!5961 lt!1294181))) (head!7992 lt!1294177)))))

(declare-fun b!3698707 () Bool)

(assert (=> b!3698707 (= c!639229 (nullable!3737 (regOne!21952 (regex!5961 lt!1294181))))))

(assert (=> b!3698707 (= e!2290569 e!2290572)))

(declare-fun b!3698708 () Bool)

(assert (=> b!3698708 (= c!639226 (is-Union!10720 (regex!5961 lt!1294181)))))

(assert (=> b!3698708 (= e!2290570 e!2290573)))

(assert (= (and d!1084686 c!639227) b!3698704))

(assert (= (and d!1084686 (not c!639227)) b!3698705))

(assert (= (and b!3698705 c!639228) b!3698702))

(assert (= (and b!3698705 (not c!639228)) b!3698708))

(assert (= (and b!3698708 c!639226) b!3698701))

(assert (= (and b!3698708 (not c!639226)) b!3698703))

(assert (= (and b!3698703 c!639230) b!3698699))

(assert (= (and b!3698703 (not c!639230)) b!3698707))

(assert (= (and b!3698707 c!639229) b!3698706))

(assert (= (and b!3698707 (not c!639229)) b!3698700))

(assert (= (or b!3698706 b!3698700) bm!267272))

(assert (= (or b!3698699 bm!267272) bm!267270))

(assert (= (or b!3698701 bm!267270) bm!267271))

(assert (= (or b!3698701 b!3698706) bm!267273))

(assert (=> bm!267271 m!4209397))

(declare-fun m!4209959 () Bool)

(assert (=> bm!267271 m!4209959))

(declare-fun m!4209961 () Bool)

(assert (=> d!1084686 m!4209961))

(assert (=> d!1084686 m!4209395))

(assert (=> bm!267273 m!4209397))

(declare-fun m!4209963 () Bool)

(assert (=> bm!267273 m!4209963))

(declare-fun m!4209965 () Bool)

(assert (=> b!3698707 m!4209965))

(assert (=> b!3698091 d!1084686))

(assert (=> b!3698091 d!1084642))

(assert (=> b!3698091 d!1084634))

(assert (=> b!3698231 d!1084642))

(assert (=> b!3698284 d!1084640))

(declare-fun d!1084688 () Bool)

(assert (=> d!1084688 (= (apply!9397 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294249))))) (dynLambda!17170 (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294249))))))))

(declare-fun b_lambda!109709 () Bool)

(assert (=> (not b_lambda!109709) (not d!1084688)))

(declare-fun tb!214149 () Bool)

(declare-fun t!301838 () Bool)

(assert (=> (and b!3698000 (= (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))) t!301838) tb!214149))

(declare-fun result!260888 () Bool)

(assert (=> tb!214149 (= result!260888 (inv!21 (dynLambda!17170 (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249))))) (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294249)))))))))

(declare-fun m!4209967 () Bool)

(assert (=> tb!214149 m!4209967))

(assert (=> d!1084688 t!301838))

(declare-fun b_and!276513 () Bool)

(assert (= b_and!276501 (and (=> t!301838 result!260888) b_and!276513)))

(declare-fun t!301840 () Bool)

(declare-fun tb!214151 () Bool)

(assert (=> (and b!3697985 (= (toValue!8293 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))) t!301840) tb!214151))

(declare-fun result!260890 () Bool)

(assert (= result!260890 result!260888))

(assert (=> d!1084688 t!301840))

(declare-fun b_and!276515 () Bool)

(assert (= b_and!276503 (and (=> t!301840 result!260890) b_and!276515)))

(declare-fun tb!214153 () Bool)

(declare-fun t!301842 () Bool)

(assert (=> (and b!3698319 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))) t!301842) tb!214153))

(declare-fun result!260892 () Bool)

(assert (= result!260892 result!260888))

(assert (=> d!1084688 t!301842))

(declare-fun b_and!276517 () Bool)

(assert (= b_and!276505 (and (=> t!301842 result!260892) b_and!276517)))

(assert (=> d!1084688 m!4209589))

(declare-fun m!4209969 () Bool)

(assert (=> d!1084688 m!4209969))

(assert (=> b!3698284 d!1084688))

(declare-fun d!1084690 () Bool)

(assert (=> d!1084690 (= (seqFromList!4476 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294249)))) (fromListB!2064 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294249)))))))

(declare-fun bs!574346 () Bool)

(assert (= bs!574346 d!1084690))

(declare-fun m!4209971 () Bool)

(assert (=> bs!574346 m!4209971))

(assert (=> b!3698284 d!1084690))

(declare-fun d!1084692 () Bool)

(declare-fun charsToBigInt!1 (List!39397) Int)

(assert (=> d!1084692 (= (inv!17 (value!190344 token!544)) (= (charsToBigInt!1 (text!43785 (value!190344 token!544))) (value!190336 (value!190344 token!544))))))

(declare-fun bs!574347 () Bool)

(assert (= bs!574347 d!1084692))

(declare-fun m!4209973 () Bool)

(assert (=> bs!574347 m!4209973))

(assert (=> b!3698304 d!1084692))

(declare-fun d!1084694 () Bool)

(declare-fun e!2290576 () Bool)

(assert (=> d!1084694 e!2290576))

(declare-fun c!639231 () Bool)

(assert (=> d!1084694 (= c!639231 (is-EmptyExpr!10720 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177))))))

(declare-fun lt!1294442 () Bool)

(declare-fun e!2290575 () Bool)

(assert (=> d!1084694 (= lt!1294442 e!2290575)))

(declare-fun c!639233 () Bool)

(assert (=> d!1084694 (= c!639233 (isEmpty!23407 (tail!5729 lt!1294177)))))

(assert (=> d!1084694 (validRegex!4901 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177)))))

(assert (=> d!1084694 (= (matchR!5257 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177)) (tail!5729 lt!1294177)) lt!1294442)))

(declare-fun b!3698709 () Bool)

(declare-fun e!2290578 () Bool)

(assert (=> b!3698709 (= e!2290576 e!2290578)))

(declare-fun c!639232 () Bool)

(assert (=> b!3698709 (= c!639232 (is-EmptyLang!10720 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177))))))

(declare-fun b!3698710 () Bool)

(declare-fun res!1504299 () Bool)

(declare-fun e!2290579 () Bool)

(assert (=> b!3698710 (=> res!1504299 e!2290579)))

(declare-fun e!2290581 () Bool)

(assert (=> b!3698710 (= res!1504299 e!2290581)))

(declare-fun res!1504295 () Bool)

(assert (=> b!3698710 (=> (not res!1504295) (not e!2290581))))

(assert (=> b!3698710 (= res!1504295 lt!1294442)))

(declare-fun b!3698711 () Bool)

(declare-fun res!1504300 () Bool)

(assert (=> b!3698711 (=> (not res!1504300) (not e!2290581))))

(declare-fun call!267279 () Bool)

(assert (=> b!3698711 (= res!1504300 (not call!267279))))

(declare-fun b!3698712 () Bool)

(declare-fun res!1504296 () Bool)

(declare-fun e!2290580 () Bool)

(assert (=> b!3698712 (=> res!1504296 e!2290580)))

(assert (=> b!3698712 (= res!1504296 (not (isEmpty!23407 (tail!5729 (tail!5729 lt!1294177)))))))

(declare-fun bm!267274 () Bool)

(assert (=> bm!267274 (= call!267279 (isEmpty!23407 (tail!5729 lt!1294177)))))

(declare-fun b!3698713 () Bool)

(assert (=> b!3698713 (= e!2290575 (matchR!5257 (derivativeStep!3279 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177)) (head!7992 (tail!5729 lt!1294177))) (tail!5729 (tail!5729 lt!1294177))))))

(declare-fun b!3698714 () Bool)

(declare-fun e!2290577 () Bool)

(assert (=> b!3698714 (= e!2290577 e!2290580)))

(declare-fun res!1504301 () Bool)

(assert (=> b!3698714 (=> res!1504301 e!2290580)))

(assert (=> b!3698714 (= res!1504301 call!267279)))

(declare-fun b!3698715 () Bool)

(assert (=> b!3698715 (= e!2290581 (= (head!7992 (tail!5729 lt!1294177)) (c!639097 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177)))))))

(declare-fun b!3698716 () Bool)

(assert (=> b!3698716 (= e!2290580 (not (= (head!7992 (tail!5729 lt!1294177)) (c!639097 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177))))))))

(declare-fun b!3698717 () Bool)

(declare-fun res!1504302 () Bool)

(assert (=> b!3698717 (=> (not res!1504302) (not e!2290581))))

(assert (=> b!3698717 (= res!1504302 (isEmpty!23407 (tail!5729 (tail!5729 lt!1294177))))))

(declare-fun b!3698718 () Bool)

(assert (=> b!3698718 (= e!2290578 (not lt!1294442))))

(declare-fun b!3698719 () Bool)

(assert (=> b!3698719 (= e!2290579 e!2290577)))

(declare-fun res!1504298 () Bool)

(assert (=> b!3698719 (=> (not res!1504298) (not e!2290577))))

(assert (=> b!3698719 (= res!1504298 (not lt!1294442))))

(declare-fun b!3698720 () Bool)

(assert (=> b!3698720 (= e!2290576 (= lt!1294442 call!267279))))

(declare-fun b!3698721 () Bool)

(assert (=> b!3698721 (= e!2290575 (nullable!3737 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177))))))

(declare-fun b!3698722 () Bool)

(declare-fun res!1504297 () Bool)

(assert (=> b!3698722 (=> res!1504297 e!2290579)))

(assert (=> b!3698722 (= res!1504297 (not (is-ElementMatch!10720 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177)))))))

(assert (=> b!3698722 (= e!2290578 e!2290579)))

(assert (= (and d!1084694 c!639233) b!3698721))

(assert (= (and d!1084694 (not c!639233)) b!3698713))

(assert (= (and d!1084694 c!639231) b!3698720))

(assert (= (and d!1084694 (not c!639231)) b!3698709))

(assert (= (and b!3698709 c!639232) b!3698718))

(assert (= (and b!3698709 (not c!639232)) b!3698722))

(assert (= (and b!3698722 (not res!1504297)) b!3698710))

(assert (= (and b!3698710 res!1504295) b!3698711))

(assert (= (and b!3698711 res!1504300) b!3698717))

(assert (= (and b!3698717 res!1504302) b!3698715))

(assert (= (and b!3698710 (not res!1504299)) b!3698719))

(assert (= (and b!3698719 res!1504298) b!3698714))

(assert (= (and b!3698714 (not res!1504301)) b!3698712))

(assert (= (and b!3698712 (not res!1504296)) b!3698716))

(assert (= (or b!3698720 b!3698711 b!3698714) bm!267274))

(assert (=> d!1084694 m!4209401))

(assert (=> d!1084694 m!4209405))

(assert (=> d!1084694 m!4209527))

(declare-fun m!4209975 () Bool)

(assert (=> d!1084694 m!4209975))

(assert (=> b!3698715 m!4209401))

(assert (=> b!3698715 m!4209947))

(assert (=> b!3698713 m!4209401))

(assert (=> b!3698713 m!4209947))

(assert (=> b!3698713 m!4209527))

(assert (=> b!3698713 m!4209947))

(declare-fun m!4209977 () Bool)

(assert (=> b!3698713 m!4209977))

(assert (=> b!3698713 m!4209401))

(assert (=> b!3698713 m!4209951))

(assert (=> b!3698713 m!4209977))

(assert (=> b!3698713 m!4209951))

(declare-fun m!4209979 () Bool)

(assert (=> b!3698713 m!4209979))

(assert (=> b!3698716 m!4209401))

(assert (=> b!3698716 m!4209947))

(assert (=> bm!267274 m!4209401))

(assert (=> bm!267274 m!4209405))

(assert (=> b!3698712 m!4209401))

(assert (=> b!3698712 m!4209951))

(assert (=> b!3698712 m!4209951))

(assert (=> b!3698712 m!4209955))

(assert (=> b!3698721 m!4209527))

(declare-fun m!4209981 () Bool)

(assert (=> b!3698721 m!4209981))

(assert (=> b!3698717 m!4209401))

(assert (=> b!3698717 m!4209951))

(assert (=> b!3698717 m!4209951))

(assert (=> b!3698717 m!4209955))

(assert (=> b!3698229 d!1084694))

(declare-fun bm!267275 () Bool)

(declare-fun call!267280 () Regex!10720)

(declare-fun call!267283 () Regex!10720)

(assert (=> bm!267275 (= call!267280 call!267283)))

(declare-fun b!3698723 () Bool)

(declare-fun e!2290582 () Regex!10720)

(assert (=> b!3698723 (= e!2290582 (Concat!16912 call!267280 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698724 () Bool)

(declare-fun e!2290585 () Regex!10720)

(declare-fun call!267281 () Regex!10720)

(assert (=> b!3698724 (= e!2290585 (Union!10720 (Concat!16912 call!267281 (regTwo!21952 (regex!5961 (h!44695 rules!3598)))) EmptyLang!10720))))

(declare-fun b!3698725 () Bool)

(declare-fun e!2290586 () Regex!10720)

(declare-fun call!267282 () Regex!10720)

(assert (=> b!3698725 (= e!2290586 (Union!10720 call!267282 call!267283))))

(declare-fun b!3698726 () Bool)

(declare-fun e!2290583 () Regex!10720)

(assert (=> b!3698726 (= e!2290583 (ite (= (head!7992 lt!1294177) (c!639097 (regex!5961 (h!44695 rules!3598)))) EmptyExpr!10720 EmptyLang!10720))))

(declare-fun b!3698727 () Bool)

(assert (=> b!3698727 (= e!2290586 e!2290582)))

(declare-fun c!639238 () Bool)

(assert (=> b!3698727 (= c!639238 (is-Star!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698728 () Bool)

(declare-fun e!2290584 () Regex!10720)

(assert (=> b!3698728 (= e!2290584 EmptyLang!10720)))

(declare-fun b!3698729 () Bool)

(assert (=> b!3698729 (= e!2290584 e!2290583)))

(declare-fun c!639236 () Bool)

(assert (=> b!3698729 (= c!639236 (is-ElementMatch!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun bm!267277 () Bool)

(assert (=> bm!267277 (= call!267281 call!267280)))

(declare-fun c!639234 () Bool)

(declare-fun bm!267276 () Bool)

(declare-fun c!639237 () Bool)

(assert (=> bm!267276 (= call!267283 (derivativeStep!3279 (ite c!639234 (regTwo!21953 (regex!5961 (h!44695 rules!3598))) (ite c!639238 (reg!11049 (regex!5961 (h!44695 rules!3598))) (ite c!639237 (regTwo!21952 (regex!5961 (h!44695 rules!3598))) (regOne!21952 (regex!5961 (h!44695 rules!3598)))))) (head!7992 lt!1294177)))))

(declare-fun d!1084696 () Bool)

(declare-fun lt!1294443 () Regex!10720)

(assert (=> d!1084696 (validRegex!4901 lt!1294443)))

(assert (=> d!1084696 (= lt!1294443 e!2290584)))

(declare-fun c!639235 () Bool)

(assert (=> d!1084696 (= c!639235 (or (is-EmptyExpr!10720 (regex!5961 (h!44695 rules!3598))) (is-EmptyLang!10720 (regex!5961 (h!44695 rules!3598)))))))

(assert (=> d!1084696 (validRegex!4901 (regex!5961 (h!44695 rules!3598)))))

(assert (=> d!1084696 (= (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 lt!1294177)) lt!1294443)))

(declare-fun b!3698730 () Bool)

(assert (=> b!3698730 (= e!2290585 (Union!10720 (Concat!16912 call!267282 (regTwo!21952 (regex!5961 (h!44695 rules!3598)))) call!267281))))

(declare-fun bm!267278 () Bool)

(assert (=> bm!267278 (= call!267282 (derivativeStep!3279 (ite c!639234 (regOne!21953 (regex!5961 (h!44695 rules!3598))) (regOne!21952 (regex!5961 (h!44695 rules!3598)))) (head!7992 lt!1294177)))))

(declare-fun b!3698731 () Bool)

(assert (=> b!3698731 (= c!639237 (nullable!3737 (regOne!21952 (regex!5961 (h!44695 rules!3598)))))))

(assert (=> b!3698731 (= e!2290582 e!2290585)))

(declare-fun b!3698732 () Bool)

(assert (=> b!3698732 (= c!639234 (is-Union!10720 (regex!5961 (h!44695 rules!3598))))))

(assert (=> b!3698732 (= e!2290583 e!2290586)))

(assert (= (and d!1084696 c!639235) b!3698728))

(assert (= (and d!1084696 (not c!639235)) b!3698729))

(assert (= (and b!3698729 c!639236) b!3698726))

(assert (= (and b!3698729 (not c!639236)) b!3698732))

(assert (= (and b!3698732 c!639234) b!3698725))

(assert (= (and b!3698732 (not c!639234)) b!3698727))

(assert (= (and b!3698727 c!639238) b!3698723))

(assert (= (and b!3698727 (not c!639238)) b!3698731))

(assert (= (and b!3698731 c!639237) b!3698730))

(assert (= (and b!3698731 (not c!639237)) b!3698724))

(assert (= (or b!3698730 b!3698724) bm!267277))

(assert (= (or b!3698723 bm!267277) bm!267275))

(assert (= (or b!3698725 bm!267275) bm!267276))

(assert (= (or b!3698725 b!3698730) bm!267278))

(assert (=> bm!267276 m!4209397))

(declare-fun m!4209983 () Bool)

(assert (=> bm!267276 m!4209983))

(declare-fun m!4209985 () Bool)

(assert (=> d!1084696 m!4209985))

(assert (=> d!1084696 m!4209525))

(assert (=> bm!267278 m!4209397))

(declare-fun m!4209987 () Bool)

(assert (=> bm!267278 m!4209987))

(declare-fun m!4209989 () Bool)

(assert (=> b!3698731 m!4209989))

(assert (=> b!3698229 d!1084696))

(assert (=> b!3698229 d!1084642))

(assert (=> b!3698229 d!1084634))

(declare-fun d!1084698 () Bool)

(assert (=> d!1084698 (= (list!14672 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))) (list!14674 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))))))

(declare-fun bs!574348 () Bool)

(assert (= bs!574348 d!1084698))

(declare-fun m!4209991 () Bool)

(assert (=> bs!574348 m!4209991))

(assert (=> b!3698174 d!1084698))

(assert (=> b!3698228 d!1084632))

(assert (=> b!3698228 d!1084634))

(assert (=> b!3698164 d!1084610))

(assert (=> bm!267218 d!1084506))

(declare-fun d!1084700 () Bool)

(declare-fun isBalanced!3520 (Conc!12058) Bool)

(assert (=> d!1084700 (= (inv!52786 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))) (isBalanced!3520 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))))))

(declare-fun bs!574349 () Bool)

(assert (= bs!574349 d!1084700))

(declare-fun m!4209993 () Bool)

(assert (=> bs!574349 m!4209993))

(assert (=> tb!214113 d!1084700))

(declare-fun d!1084702 () Bool)

(declare-fun lt!1294444 () Bool)

(assert (=> d!1084702 (= lt!1294444 (set.member (get!13063 lt!1294226) (content!5678 rules!3598)))))

(declare-fun e!2290588 () Bool)

(assert (=> d!1084702 (= lt!1294444 e!2290588)))

(declare-fun res!1504303 () Bool)

(assert (=> d!1084702 (=> (not res!1504303) (not e!2290588))))

(assert (=> d!1084702 (= res!1504303 (is-Cons!39275 rules!3598))))

(assert (=> d!1084702 (= (contains!7830 rules!3598 (get!13063 lt!1294226)) lt!1294444)))

(declare-fun b!3698733 () Bool)

(declare-fun e!2290587 () Bool)

(assert (=> b!3698733 (= e!2290588 e!2290587)))

(declare-fun res!1504304 () Bool)

(assert (=> b!3698733 (=> res!1504304 e!2290587)))

(assert (=> b!3698733 (= res!1504304 (= (h!44695 rules!3598) (get!13063 lt!1294226)))))

(declare-fun b!3698734 () Bool)

(assert (=> b!3698734 (= e!2290587 (contains!7830 (t!301794 rules!3598) (get!13063 lt!1294226)))))

(assert (= (and d!1084702 res!1504303) b!3698733))

(assert (= (and b!3698733 (not res!1504304)) b!3698734))

(assert (=> d!1084702 m!4209841))

(assert (=> d!1084702 m!4209493))

(declare-fun m!4209995 () Bool)

(assert (=> d!1084702 m!4209995))

(assert (=> b!3698734 m!4209493))

(declare-fun m!4209997 () Bool)

(assert (=> b!3698734 m!4209997))

(assert (=> b!3698198 d!1084702))

(declare-fun d!1084704 () Bool)

(assert (=> d!1084704 (= (get!13063 lt!1294226) (v!38452 lt!1294226))))

(assert (=> b!3698198 d!1084704))

(assert (=> b!3698162 d!1084610))

(declare-fun d!1084706 () Bool)

(declare-fun lt!1294445 () Int)

(assert (=> d!1084706 (>= lt!1294445 0)))

(declare-fun e!2290589 () Int)

(assert (=> d!1084706 (= lt!1294445 e!2290589)))

(declare-fun c!639239 () Bool)

(assert (=> d!1084706 (= c!639239 (is-Nil!39274 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217)))))))

(assert (=> d!1084706 (= (size!29957 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217)))) lt!1294445)))

(declare-fun b!3698735 () Bool)

(assert (=> b!3698735 (= e!2290589 0)))

(declare-fun b!3698736 () Bool)

(assert (=> b!3698736 (= e!2290589 (+ 1 (size!29957 (t!301793 (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217)))))))))

(assert (= (and d!1084706 c!639239) b!3698735))

(assert (= (and d!1084706 (not c!639239)) b!3698736))

(declare-fun m!4209999 () Bool)

(assert (=> b!3698736 m!4209999))

(assert (=> b!3698162 d!1084706))

(declare-fun d!1084708 () Bool)

(declare-fun lt!1294446 () Int)

(assert (=> d!1084708 (>= lt!1294446 0)))

(declare-fun e!2290590 () Int)

(assert (=> d!1084708 (= lt!1294446 e!2290590)))

(declare-fun c!639240 () Bool)

(assert (=> d!1084708 (= c!639240 (is-Nil!39274 (_2!22705 (get!13064 lt!1294249))))))

(assert (=> d!1084708 (= (size!29957 (_2!22705 (get!13064 lt!1294249))) lt!1294446)))

(declare-fun b!3698737 () Bool)

(assert (=> b!3698737 (= e!2290590 0)))

(declare-fun b!3698738 () Bool)

(assert (=> b!3698738 (= e!2290590 (+ 1 (size!29957 (t!301793 (_2!22705 (get!13064 lt!1294249))))))))

(assert (= (and d!1084708 c!639240) b!3698737))

(assert (= (and d!1084708 (not c!639240)) b!3698738))

(declare-fun m!4210001 () Bool)

(assert (=> b!3698738 m!4210001))

(assert (=> b!3698287 d!1084708))

(assert (=> b!3698287 d!1084640))

(assert (=> b!3698287 d!1084630))

(declare-fun bs!574350 () Bool)

(declare-fun d!1084710 () Bool)

(assert (= bs!574350 (and d!1084710 d!1084622)))

(declare-fun lambda!125048 () Int)

(assert (=> bs!574350 (= (= (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (rule!8821 token!544)))) (= lambda!125048 lambda!125044))))

(assert (=> d!1084710 true))

(assert (=> d!1084710 (< (dynLambda!17169 order!21687 (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) (dynLambda!17171 order!21689 lambda!125048))))

(assert (=> d!1084710 (= (equivClasses!2444 (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) (Forall2!987 lambda!125048))))

(declare-fun bs!574351 () Bool)

(assert (= bs!574351 d!1084710))

(declare-fun m!4210003 () Bool)

(assert (=> bs!574351 m!4210003))

(assert (=> b!3698221 d!1084710))

(declare-fun d!1084712 () Bool)

(assert (=> d!1084712 (= (isEmpty!23408 lt!1294178) (not (is-Some!8495 lt!1294178)))))

(assert (=> d!1084504 d!1084712))

(declare-fun d!1084714 () Bool)

(declare-fun charsToInt!0 (List!39397) (_ BitVec 32))

(assert (=> d!1084714 (= (inv!16 (value!190344 token!544)) (= (charsToInt!0 (text!43784 (value!190344 token!544))) (value!190335 (value!190344 token!544))))))

(declare-fun bs!574352 () Bool)

(assert (= bs!574352 d!1084714))

(declare-fun m!4210005 () Bool)

(assert (=> bs!574352 m!4210005))

(assert (=> b!3698307 d!1084714))

(assert (=> b!3698232 d!1084642))

(declare-fun bs!574353 () Bool)

(declare-fun d!1084716 () Bool)

(assert (= bs!574353 (and d!1084716 d!1084596)))

(declare-fun lambda!125049 () Int)

(assert (=> bs!574353 (= (and (= (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toChars!8152 (transformation!5961 (rule!8821 token!544)))) (= (toValue!8293 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (rule!8821 token!544))))) (= lambda!125049 lambda!125041))))

(declare-fun bs!574354 () Bool)

(assert (= bs!574354 (and d!1084716 d!1084646)))

(assert (=> bs!574354 (= lambda!125049 lambda!125047)))

(assert (=> d!1084716 true))

(assert (=> d!1084716 (< (dynLambda!17167 order!21683 (toChars!8152 (transformation!5961 (h!44695 rules!3598)))) (dynLambda!17168 order!21685 lambda!125049))))

(assert (=> d!1084716 true))

(assert (=> d!1084716 (< (dynLambda!17169 order!21687 (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) (dynLambda!17168 order!21685 lambda!125049))))

(assert (=> d!1084716 (= (semiInverseModEq!2545 (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) (Forall!1389 lambda!125049))))

(declare-fun bs!574355 () Bool)

(assert (= bs!574355 d!1084716))

(declare-fun m!4210007 () Bool)

(assert (=> bs!574355 m!4210007))

(assert (=> d!1084526 d!1084716))

(declare-fun bs!574356 () Bool)

(declare-fun d!1084718 () Bool)

(assert (= bs!574356 (and d!1084718 d!1084590)))

(declare-fun lambda!125052 () Int)

(assert (=> bs!574356 (= lambda!125052 lambda!125038)))

(assert (=> d!1084718 true))

(declare-fun lt!1294449 () Bool)

(assert (=> d!1084718 (= lt!1294449 (rulesValidInductive!2144 thiss!25322 rules!3598))))

(assert (=> d!1084718 (= lt!1294449 (forall!8182 rules!3598 lambda!125052))))

(assert (=> d!1084718 (= (rulesValid!2302 thiss!25322 rules!3598) lt!1294449)))

(declare-fun bs!574357 () Bool)

(assert (= bs!574357 d!1084718))

(assert (=> bs!574357 m!4209585))

(declare-fun m!4210009 () Bool)

(assert (=> bs!574357 m!4210009))

(assert (=> d!1084530 d!1084718))

(assert (=> b!3698094 d!1084642))

(declare-fun d!1084720 () Bool)

(declare-fun e!2290592 () Bool)

(assert (=> d!1084720 e!2290592))

(declare-fun c!639241 () Bool)

(assert (=> d!1084720 (= c!639241 (is-EmptyExpr!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun lt!1294450 () Bool)

(declare-fun e!2290591 () Bool)

(assert (=> d!1084720 (= lt!1294450 e!2290591)))

(declare-fun c!639243 () Bool)

(assert (=> d!1084720 (= c!639243 (isEmpty!23407 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))))))

(assert (=> d!1084720 (validRegex!4901 (regex!5961 (h!44695 rules!3598)))))

(assert (=> d!1084720 (= (matchR!5257 (regex!5961 (h!44695 rules!3598)) (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))) lt!1294450)))

(declare-fun b!3698739 () Bool)

(declare-fun e!2290594 () Bool)

(assert (=> b!3698739 (= e!2290592 e!2290594)))

(declare-fun c!639242 () Bool)

(assert (=> b!3698739 (= c!639242 (is-EmptyLang!10720 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698740 () Bool)

(declare-fun res!1504309 () Bool)

(declare-fun e!2290595 () Bool)

(assert (=> b!3698740 (=> res!1504309 e!2290595)))

(declare-fun e!2290597 () Bool)

(assert (=> b!3698740 (= res!1504309 e!2290597)))

(declare-fun res!1504305 () Bool)

(assert (=> b!3698740 (=> (not res!1504305) (not e!2290597))))

(assert (=> b!3698740 (= res!1504305 lt!1294450)))

(declare-fun b!3698741 () Bool)

(declare-fun res!1504310 () Bool)

(assert (=> b!3698741 (=> (not res!1504310) (not e!2290597))))

(declare-fun call!267284 () Bool)

(assert (=> b!3698741 (= res!1504310 (not call!267284))))

(declare-fun b!3698742 () Bool)

(declare-fun res!1504306 () Bool)

(declare-fun e!2290596 () Bool)

(assert (=> b!3698742 (=> res!1504306 e!2290596)))

(assert (=> b!3698742 (= res!1504306 (not (isEmpty!23407 (tail!5729 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))))))))

(declare-fun bm!267279 () Bool)

(assert (=> bm!267279 (= call!267284 (isEmpty!23407 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))))))

(declare-fun b!3698743 () Bool)

(assert (=> b!3698743 (= e!2290591 (matchR!5257 (derivativeStep!3279 (regex!5961 (h!44695 rules!3598)) (head!7992 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217)))))) (tail!5729 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217)))))))))

(declare-fun b!3698744 () Bool)

(declare-fun e!2290593 () Bool)

(assert (=> b!3698744 (= e!2290593 e!2290596)))

(declare-fun res!1504311 () Bool)

(assert (=> b!3698744 (=> res!1504311 e!2290596)))

(assert (=> b!3698744 (= res!1504311 call!267284)))

(declare-fun b!3698745 () Bool)

(assert (=> b!3698745 (= e!2290597 (= (head!7992 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))) (c!639097 (regex!5961 (h!44695 rules!3598)))))))

(declare-fun b!3698746 () Bool)

(assert (=> b!3698746 (= e!2290596 (not (= (head!7992 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))) (c!639097 (regex!5961 (h!44695 rules!3598))))))))

(declare-fun b!3698747 () Bool)

(declare-fun res!1504312 () Bool)

(assert (=> b!3698747 (=> (not res!1504312) (not e!2290597))))

(assert (=> b!3698747 (= res!1504312 (isEmpty!23407 (tail!5729 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217)))))))))

(declare-fun b!3698748 () Bool)

(assert (=> b!3698748 (= e!2290594 (not lt!1294450))))

(declare-fun b!3698749 () Bool)

(assert (=> b!3698749 (= e!2290595 e!2290593)))

(declare-fun res!1504308 () Bool)

(assert (=> b!3698749 (=> (not res!1504308) (not e!2290593))))

(assert (=> b!3698749 (= res!1504308 (not lt!1294450))))

(declare-fun b!3698750 () Bool)

(assert (=> b!3698750 (= e!2290592 (= lt!1294450 call!267284))))

(declare-fun b!3698751 () Bool)

(assert (=> b!3698751 (= e!2290591 (nullable!3737 (regex!5961 (h!44695 rules!3598))))))

(declare-fun b!3698752 () Bool)

(declare-fun res!1504307 () Bool)

(assert (=> b!3698752 (=> res!1504307 e!2290595)))

(assert (=> b!3698752 (= res!1504307 (not (is-ElementMatch!10720 (regex!5961 (h!44695 rules!3598)))))))

(assert (=> b!3698752 (= e!2290594 e!2290595)))

(assert (= (and d!1084720 c!639243) b!3698751))

(assert (= (and d!1084720 (not c!639243)) b!3698743))

(assert (= (and d!1084720 c!639241) b!3698750))

(assert (= (and d!1084720 (not c!639241)) b!3698739))

(assert (= (and b!3698739 c!639242) b!3698748))

(assert (= (and b!3698739 (not c!639242)) b!3698752))

(assert (= (and b!3698752 (not res!1504307)) b!3698740))

(assert (= (and b!3698740 res!1504305) b!3698741))

(assert (= (and b!3698741 res!1504310) b!3698747))

(assert (= (and b!3698747 res!1504312) b!3698745))

(assert (= (and b!3698740 (not res!1504309)) b!3698749))

(assert (= (and b!3698749 res!1504308) b!3698744))

(assert (= (and b!3698744 (not res!1504311)) b!3698742))

(assert (= (and b!3698742 (not res!1504306)) b!3698746))

(assert (= (or b!3698750 b!3698741 b!3698744) bm!267279))

(assert (=> d!1084720 m!4209441))

(declare-fun m!4210011 () Bool)

(assert (=> d!1084720 m!4210011))

(assert (=> d!1084720 m!4209525))

(assert (=> b!3698745 m!4209441))

(declare-fun m!4210013 () Bool)

(assert (=> b!3698745 m!4210013))

(assert (=> b!3698743 m!4209441))

(assert (=> b!3698743 m!4210013))

(assert (=> b!3698743 m!4210013))

(declare-fun m!4210015 () Bool)

(assert (=> b!3698743 m!4210015))

(assert (=> b!3698743 m!4209441))

(declare-fun m!4210017 () Bool)

(assert (=> b!3698743 m!4210017))

(assert (=> b!3698743 m!4210015))

(assert (=> b!3698743 m!4210017))

(declare-fun m!4210019 () Bool)

(assert (=> b!3698743 m!4210019))

(assert (=> b!3698746 m!4209441))

(assert (=> b!3698746 m!4210013))

(assert (=> bm!267279 m!4209441))

(assert (=> bm!267279 m!4210011))

(assert (=> b!3698742 m!4209441))

(assert (=> b!3698742 m!4210017))

(assert (=> b!3698742 m!4210017))

(declare-fun m!4210021 () Bool)

(assert (=> b!3698742 m!4210021))

(assert (=> b!3698751 m!4209531))

(assert (=> b!3698747 m!4209441))

(assert (=> b!3698747 m!4210017))

(assert (=> b!3698747 m!4210017))

(assert (=> b!3698747 m!4210021))

(assert (=> b!3698168 d!1084720))

(declare-fun d!1084722 () Bool)

(assert (=> d!1084722 (= (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217)))) (list!14674 (c!639098 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))))))

(declare-fun bs!574358 () Bool)

(assert (= bs!574358 d!1084722))

(declare-fun m!4210023 () Bool)

(assert (=> bs!574358 m!4210023))

(assert (=> b!3698168 d!1084722))

(declare-fun d!1084724 () Bool)

(declare-fun lt!1294451 () BalanceConc!23730)

(assert (=> d!1084724 (= (list!14672 lt!1294451) (originalCharacters!6669 (_1!22705 (get!13064 lt!1294217))))))

(assert (=> d!1084724 (= lt!1294451 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217))))) (value!190344 (_1!22705 (get!13064 lt!1294217)))))))

(assert (=> d!1084724 (= (charsOf!3954 (_1!22705 (get!13064 lt!1294217))) lt!1294451)))

(declare-fun b_lambda!109711 () Bool)

(assert (=> (not b_lambda!109711) (not d!1084724)))

(declare-fun tb!214155 () Bool)

(declare-fun t!301844 () Bool)

(assert (=> (and b!3698000 (= (toChars!8152 (transformation!5961 (h!44695 rules!3598))) (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))))) t!301844) tb!214155))

(declare-fun b!3698753 () Bool)

(declare-fun e!2290598 () Bool)

(declare-fun tp!1124225 () Bool)

(assert (=> b!3698753 (= e!2290598 (and (inv!52785 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217))))) (value!190344 (_1!22705 (get!13064 lt!1294217)))))) tp!1124225))))

(declare-fun result!260894 () Bool)

(assert (=> tb!214155 (= result!260894 (and (inv!52786 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217))))) (value!190344 (_1!22705 (get!13064 lt!1294217))))) e!2290598))))

(assert (= tb!214155 b!3698753))

(declare-fun m!4210025 () Bool)

(assert (=> b!3698753 m!4210025))

(declare-fun m!4210027 () Bool)

(assert (=> tb!214155 m!4210027))

(assert (=> d!1084724 t!301844))

(declare-fun b_and!276519 () Bool)

(assert (= b_and!276507 (and (=> t!301844 result!260894) b_and!276519)))

(declare-fun tb!214157 () Bool)

(declare-fun t!301846 () Bool)

(assert (=> (and b!3697985 (= (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))))) t!301846) tb!214157))

(declare-fun result!260896 () Bool)

(assert (= result!260896 result!260894))

(assert (=> d!1084724 t!301846))

(declare-fun b_and!276521 () Bool)

(assert (= b_and!276509 (and (=> t!301846 result!260896) b_and!276521)))

(declare-fun t!301848 () Bool)

(declare-fun tb!214159 () Bool)

(assert (=> (and b!3698319 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))))) t!301848) tb!214159))

(declare-fun result!260898 () Bool)

(assert (= result!260898 result!260894))

(assert (=> d!1084724 t!301848))

(declare-fun b_and!276523 () Bool)

(assert (= b_and!276511 (and (=> t!301848 result!260898) b_and!276523)))

(declare-fun m!4210029 () Bool)

(assert (=> d!1084724 m!4210029))

(declare-fun m!4210031 () Bool)

(assert (=> d!1084724 m!4210031))

(assert (=> b!3698168 d!1084724))

(assert (=> b!3698168 d!1084610))

(assert (=> b!3698292 d!1084670))

(assert (=> b!3698292 d!1084672))

(assert (=> b!3698292 d!1084640))

(declare-fun d!1084726 () Bool)

(assert (=> d!1084726 (= (list!14672 lt!1294233) (list!14674 (c!639098 lt!1294233)))))

(declare-fun bs!574359 () Bool)

(assert (= bs!574359 d!1084726))

(declare-fun m!4210033 () Bool)

(assert (=> bs!574359 m!4210033))

(assert (=> d!1084540 d!1084726))

(declare-fun d!1084728 () Bool)

(assert (=> d!1084728 (= (isEmpty!23408 lt!1294179) (not (is-Some!8495 lt!1294179)))))

(assert (=> d!1084542 d!1084728))

(assert (=> b!3698202 d!1084704))

(declare-fun b!3698765 () Bool)

(declare-fun e!2290604 () Bool)

(declare-fun lt!1294454 () List!39398)

(assert (=> b!3698765 (= e!2290604 (or (not (= (_2!22705 (get!13064 lt!1294217)) Nil!39274)) (= lt!1294454 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217)))))))))

(declare-fun b!3698764 () Bool)

(declare-fun res!1504318 () Bool)

(assert (=> b!3698764 (=> (not res!1504318) (not e!2290604))))

(assert (=> b!3698764 (= res!1504318 (= (size!29957 lt!1294454) (+ (size!29957 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))) (size!29957 (_2!22705 (get!13064 lt!1294217))))))))

(declare-fun b!3698763 () Bool)

(declare-fun e!2290603 () List!39398)

(assert (=> b!3698763 (= e!2290603 (Cons!39274 (h!44694 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))) (++!9757 (t!301793 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))) (_2!22705 (get!13064 lt!1294217)))))))

(declare-fun b!3698762 () Bool)

(assert (=> b!3698762 (= e!2290603 (_2!22705 (get!13064 lt!1294217)))))

(declare-fun d!1084730 () Bool)

(assert (=> d!1084730 e!2290604))

(declare-fun res!1504317 () Bool)

(assert (=> d!1084730 (=> (not res!1504317) (not e!2290604))))

(declare-fun content!5679 (List!39398) (Set C!21626))

(assert (=> d!1084730 (= res!1504317 (= (content!5679 lt!1294454) (set.union (content!5679 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))) (content!5679 (_2!22705 (get!13064 lt!1294217))))))))

(assert (=> d!1084730 (= lt!1294454 e!2290603)))

(declare-fun c!639246 () Bool)

(assert (=> d!1084730 (= c!639246 (is-Nil!39274 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217))))))))

(assert (=> d!1084730 (= (++!9757 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294217)))) (_2!22705 (get!13064 lt!1294217))) lt!1294454)))

(assert (= (and d!1084730 c!639246) b!3698762))

(assert (= (and d!1084730 (not c!639246)) b!3698763))

(assert (= (and d!1084730 res!1504317) b!3698764))

(assert (= (and b!3698764 res!1504318) b!3698765))

(declare-fun m!4210035 () Bool)

(assert (=> b!3698764 m!4210035))

(assert (=> b!3698764 m!4209441))

(declare-fun m!4210037 () Bool)

(assert (=> b!3698764 m!4210037))

(assert (=> b!3698764 m!4209471))

(declare-fun m!4210039 () Bool)

(assert (=> b!3698763 m!4210039))

(declare-fun m!4210041 () Bool)

(assert (=> d!1084730 m!4210041))

(assert (=> d!1084730 m!4209441))

(declare-fun m!4210043 () Bool)

(assert (=> d!1084730 m!4210043))

(declare-fun m!4210045 () Bool)

(assert (=> d!1084730 m!4210045))

(assert (=> b!3698166 d!1084730))

(assert (=> b!3698166 d!1084722))

(assert (=> b!3698166 d!1084724))

(assert (=> b!3698166 d!1084610))

(declare-fun b!3698769 () Bool)

(declare-fun e!2290606 () Bool)

(declare-fun lt!1294455 () List!39398)

(assert (=> b!3698769 (= e!2290606 (or (not (= (_2!22705 (get!13064 lt!1294249)) Nil!39274)) (= lt!1294455 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249)))))))))

(declare-fun b!3698768 () Bool)

(declare-fun res!1504320 () Bool)

(assert (=> b!3698768 (=> (not res!1504320) (not e!2290606))))

(assert (=> b!3698768 (= res!1504320 (= (size!29957 lt!1294455) (+ (size!29957 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))) (size!29957 (_2!22705 (get!13064 lt!1294249))))))))

(declare-fun b!3698767 () Bool)

(declare-fun e!2290605 () List!39398)

(assert (=> b!3698767 (= e!2290605 (Cons!39274 (h!44694 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))) (++!9757 (t!301793 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))) (_2!22705 (get!13064 lt!1294249)))))))

(declare-fun b!3698766 () Bool)

(assert (=> b!3698766 (= e!2290605 (_2!22705 (get!13064 lt!1294249)))))

(declare-fun d!1084732 () Bool)

(assert (=> d!1084732 e!2290606))

(declare-fun res!1504319 () Bool)

(assert (=> d!1084732 (=> (not res!1504319) (not e!2290606))))

(assert (=> d!1084732 (= res!1504319 (= (content!5679 lt!1294455) (set.union (content!5679 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))) (content!5679 (_2!22705 (get!13064 lt!1294249))))))))

(assert (=> d!1084732 (= lt!1294455 e!2290605)))

(declare-fun c!639247 () Bool)

(assert (=> d!1084732 (= c!639247 (is-Nil!39274 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249))))))))

(assert (=> d!1084732 (= (++!9757 (list!14672 (charsOf!3954 (_1!22705 (get!13064 lt!1294249)))) (_2!22705 (get!13064 lt!1294249))) lt!1294455)))

(assert (= (and d!1084732 c!639247) b!3698766))

(assert (= (and d!1084732 (not c!639247)) b!3698767))

(assert (= (and d!1084732 res!1504319) b!3698768))

(assert (= (and b!3698768 res!1504320) b!3698769))

(declare-fun m!4210047 () Bool)

(assert (=> b!3698768 m!4210047))

(assert (=> b!3698768 m!4209571))

(declare-fun m!4210049 () Bool)

(assert (=> b!3698768 m!4210049))

(assert (=> b!3698768 m!4209593))

(declare-fun m!4210051 () Bool)

(assert (=> b!3698767 m!4210051))

(declare-fun m!4210053 () Bool)

(assert (=> d!1084732 m!4210053))

(assert (=> d!1084732 m!4209571))

(declare-fun m!4210055 () Bool)

(assert (=> d!1084732 m!4210055))

(declare-fun m!4210057 () Bool)

(assert (=> d!1084732 m!4210057))

(assert (=> b!3698290 d!1084732))

(assert (=> b!3698290 d!1084670))

(assert (=> b!3698290 d!1084672))

(assert (=> b!3698290 d!1084640))

(declare-fun b!3698770 () Bool)

(declare-fun e!2290607 () Bool)

(declare-fun tp!1124226 () Bool)

(assert (=> b!3698770 (= e!2290607 (and tp_is_empty!18515 tp!1124226))))

(assert (=> b!3698339 (= tp!1124181 e!2290607)))

(assert (= (and b!3698339 (is-Cons!39274 (t!301793 (originalCharacters!6669 token!544)))) b!3698770))

(declare-fun e!2290608 () Bool)

(assert (=> b!3698343 (= tp!1124186 e!2290608)))

(declare-fun b!3698772 () Bool)

(declare-fun tp!1124228 () Bool)

(declare-fun tp!1124230 () Bool)

(assert (=> b!3698772 (= e!2290608 (and tp!1124228 tp!1124230))))

(declare-fun b!3698774 () Bool)

(declare-fun tp!1124231 () Bool)

(declare-fun tp!1124229 () Bool)

(assert (=> b!3698774 (= e!2290608 (and tp!1124231 tp!1124229))))

(declare-fun b!3698771 () Bool)

(assert (=> b!3698771 (= e!2290608 tp_is_empty!18515)))

(declare-fun b!3698773 () Bool)

(declare-fun tp!1124227 () Bool)

(assert (=> b!3698773 (= e!2290608 tp!1124227)))

(assert (= (and b!3698343 (is-ElementMatch!10720 (regOne!21953 (regex!5961 (h!44695 rules!3598))))) b!3698771))

(assert (= (and b!3698343 (is-Concat!16912 (regOne!21953 (regex!5961 (h!44695 rules!3598))))) b!3698772))

(assert (= (and b!3698343 (is-Star!10720 (regOne!21953 (regex!5961 (h!44695 rules!3598))))) b!3698773))

(assert (= (and b!3698343 (is-Union!10720 (regOne!21953 (regex!5961 (h!44695 rules!3598))))) b!3698774))

(declare-fun e!2290609 () Bool)

(assert (=> b!3698343 (= tp!1124184 e!2290609)))

(declare-fun b!3698776 () Bool)

(declare-fun tp!1124233 () Bool)

(declare-fun tp!1124235 () Bool)

(assert (=> b!3698776 (= e!2290609 (and tp!1124233 tp!1124235))))

(declare-fun b!3698778 () Bool)

(declare-fun tp!1124236 () Bool)

(declare-fun tp!1124234 () Bool)

(assert (=> b!3698778 (= e!2290609 (and tp!1124236 tp!1124234))))

(declare-fun b!3698775 () Bool)

(assert (=> b!3698775 (= e!2290609 tp_is_empty!18515)))

(declare-fun b!3698777 () Bool)

(declare-fun tp!1124232 () Bool)

(assert (=> b!3698777 (= e!2290609 tp!1124232)))

(assert (= (and b!3698343 (is-ElementMatch!10720 (regTwo!21953 (regex!5961 (h!44695 rules!3598))))) b!3698775))

(assert (= (and b!3698343 (is-Concat!16912 (regTwo!21953 (regex!5961 (h!44695 rules!3598))))) b!3698776))

(assert (= (and b!3698343 (is-Star!10720 (regTwo!21953 (regex!5961 (h!44695 rules!3598))))) b!3698777))

(assert (= (and b!3698343 (is-Union!10720 (regTwo!21953 (regex!5961 (h!44695 rules!3598))))) b!3698778))

(declare-fun e!2290610 () Bool)

(assert (=> b!3698342 (= tp!1124182 e!2290610)))

(declare-fun b!3698780 () Bool)

(declare-fun tp!1124238 () Bool)

(declare-fun tp!1124240 () Bool)

(assert (=> b!3698780 (= e!2290610 (and tp!1124238 tp!1124240))))

(declare-fun b!3698782 () Bool)

(declare-fun tp!1124241 () Bool)

(declare-fun tp!1124239 () Bool)

(assert (=> b!3698782 (= e!2290610 (and tp!1124241 tp!1124239))))

(declare-fun b!3698779 () Bool)

(assert (=> b!3698779 (= e!2290610 tp_is_empty!18515)))

(declare-fun b!3698781 () Bool)

(declare-fun tp!1124237 () Bool)

(assert (=> b!3698781 (= e!2290610 tp!1124237)))

(assert (= (and b!3698342 (is-ElementMatch!10720 (reg!11049 (regex!5961 (h!44695 rules!3598))))) b!3698779))

(assert (= (and b!3698342 (is-Concat!16912 (reg!11049 (regex!5961 (h!44695 rules!3598))))) b!3698780))

(assert (= (and b!3698342 (is-Star!10720 (reg!11049 (regex!5961 (h!44695 rules!3598))))) b!3698781))

(assert (= (and b!3698342 (is-Union!10720 (reg!11049 (regex!5961 (h!44695 rules!3598))))) b!3698782))

(declare-fun e!2290611 () Bool)

(assert (=> b!3698318 (= tp!1124159 e!2290611)))

(declare-fun b!3698784 () Bool)

(declare-fun tp!1124243 () Bool)

(declare-fun tp!1124245 () Bool)

(assert (=> b!3698784 (= e!2290611 (and tp!1124243 tp!1124245))))

(declare-fun b!3698786 () Bool)

(declare-fun tp!1124246 () Bool)

(declare-fun tp!1124244 () Bool)

(assert (=> b!3698786 (= e!2290611 (and tp!1124246 tp!1124244))))

(declare-fun b!3698783 () Bool)

(assert (=> b!3698783 (= e!2290611 tp_is_empty!18515)))

(declare-fun b!3698785 () Bool)

(declare-fun tp!1124242 () Bool)

(assert (=> b!3698785 (= e!2290611 tp!1124242)))

(assert (= (and b!3698318 (is-ElementMatch!10720 (regex!5961 (h!44695 (t!301794 rules!3598))))) b!3698783))

(assert (= (and b!3698318 (is-Concat!16912 (regex!5961 (h!44695 (t!301794 rules!3598))))) b!3698784))

(assert (= (and b!3698318 (is-Star!10720 (regex!5961 (h!44695 (t!301794 rules!3598))))) b!3698785))

(assert (= (and b!3698318 (is-Union!10720 (regex!5961 (h!44695 (t!301794 rules!3598))))) b!3698786))

(declare-fun e!2290612 () Bool)

(assert (=> b!3698341 (= tp!1124183 e!2290612)))

(declare-fun b!3698790 () Bool)

(declare-fun tp!1124248 () Bool)

(declare-fun tp!1124250 () Bool)

(assert (=> b!3698790 (= e!2290612 (and tp!1124248 tp!1124250))))

(declare-fun b!3698792 () Bool)

(declare-fun tp!1124251 () Bool)

(declare-fun tp!1124249 () Bool)

(assert (=> b!3698792 (= e!2290612 (and tp!1124251 tp!1124249))))

(declare-fun b!3698789 () Bool)

(assert (=> b!3698789 (= e!2290612 tp_is_empty!18515)))

(declare-fun b!3698791 () Bool)

(declare-fun tp!1124247 () Bool)

(assert (=> b!3698791 (= e!2290612 tp!1124247)))

(assert (= (and b!3698341 (is-ElementMatch!10720 (regOne!21952 (regex!5961 (h!44695 rules!3598))))) b!3698789))

(assert (= (and b!3698341 (is-Concat!16912 (regOne!21952 (regex!5961 (h!44695 rules!3598))))) b!3698790))

(assert (= (and b!3698341 (is-Star!10720 (regOne!21952 (regex!5961 (h!44695 rules!3598))))) b!3698791))

(assert (= (and b!3698341 (is-Union!10720 (regOne!21952 (regex!5961 (h!44695 rules!3598))))) b!3698792))

(declare-fun e!2290613 () Bool)

(assert (=> b!3698341 (= tp!1124185 e!2290613)))

(declare-fun b!3698794 () Bool)

(declare-fun tp!1124253 () Bool)

(declare-fun tp!1124255 () Bool)

(assert (=> b!3698794 (= e!2290613 (and tp!1124253 tp!1124255))))

(declare-fun b!3698796 () Bool)

(declare-fun tp!1124256 () Bool)

(declare-fun tp!1124254 () Bool)

(assert (=> b!3698796 (= e!2290613 (and tp!1124256 tp!1124254))))

(declare-fun b!3698793 () Bool)

(assert (=> b!3698793 (= e!2290613 tp_is_empty!18515)))

(declare-fun b!3698795 () Bool)

(declare-fun tp!1124252 () Bool)

(assert (=> b!3698795 (= e!2290613 tp!1124252)))

(assert (= (and b!3698341 (is-ElementMatch!10720 (regTwo!21952 (regex!5961 (h!44695 rules!3598))))) b!3698793))

(assert (= (and b!3698341 (is-Concat!16912 (regTwo!21952 (regex!5961 (h!44695 rules!3598))))) b!3698794))

(assert (= (and b!3698341 (is-Star!10720 (regTwo!21952 (regex!5961 (h!44695 rules!3598))))) b!3698795))

(assert (= (and b!3698341 (is-Union!10720 (regTwo!21952 (regex!5961 (h!44695 rules!3598))))) b!3698796))

(declare-fun e!2290614 () Bool)

(assert (=> b!3698338 (= tp!1124180 e!2290614)))

(declare-fun b!3698800 () Bool)

(declare-fun tp!1124258 () Bool)

(declare-fun tp!1124260 () Bool)

(assert (=> b!3698800 (= e!2290614 (and tp!1124258 tp!1124260))))

(declare-fun b!3698802 () Bool)

(declare-fun tp!1124261 () Bool)

(declare-fun tp!1124259 () Bool)

(assert (=> b!3698802 (= e!2290614 (and tp!1124261 tp!1124259))))

(declare-fun b!3698799 () Bool)

(assert (=> b!3698799 (= e!2290614 tp_is_empty!18515)))

(declare-fun b!3698801 () Bool)

(declare-fun tp!1124257 () Bool)

(assert (=> b!3698801 (= e!2290614 tp!1124257)))

(assert (= (and b!3698338 (is-ElementMatch!10720 (regOne!21953 (regex!5961 (rule!8821 token!544))))) b!3698799))

(assert (= (and b!3698338 (is-Concat!16912 (regOne!21953 (regex!5961 (rule!8821 token!544))))) b!3698800))

(assert (= (and b!3698338 (is-Star!10720 (regOne!21953 (regex!5961 (rule!8821 token!544))))) b!3698801))

(assert (= (and b!3698338 (is-Union!10720 (regOne!21953 (regex!5961 (rule!8821 token!544))))) b!3698802))

(declare-fun e!2290615 () Bool)

(assert (=> b!3698338 (= tp!1124178 e!2290615)))

(declare-fun b!3698804 () Bool)

(declare-fun tp!1124263 () Bool)

(declare-fun tp!1124265 () Bool)

(assert (=> b!3698804 (= e!2290615 (and tp!1124263 tp!1124265))))

(declare-fun b!3698806 () Bool)

(declare-fun tp!1124266 () Bool)

(declare-fun tp!1124264 () Bool)

(assert (=> b!3698806 (= e!2290615 (and tp!1124266 tp!1124264))))

(declare-fun b!3698803 () Bool)

(assert (=> b!3698803 (= e!2290615 tp_is_empty!18515)))

(declare-fun b!3698805 () Bool)

(declare-fun tp!1124262 () Bool)

(assert (=> b!3698805 (= e!2290615 tp!1124262)))

(assert (= (and b!3698338 (is-ElementMatch!10720 (regTwo!21953 (regex!5961 (rule!8821 token!544))))) b!3698803))

(assert (= (and b!3698338 (is-Concat!16912 (regTwo!21953 (regex!5961 (rule!8821 token!544))))) b!3698804))

(assert (= (and b!3698338 (is-Star!10720 (regTwo!21953 (regex!5961 (rule!8821 token!544))))) b!3698805))

(assert (= (and b!3698338 (is-Union!10720 (regTwo!21953 (regex!5961 (rule!8821 token!544))))) b!3698806))

(declare-fun b!3698809 () Bool)

(declare-fun b_free!98481 () Bool)

(declare-fun b_next!99185 () Bool)

(assert (=> b!3698809 (= b_free!98481 (not b_next!99185))))

(declare-fun t!301850 () Bool)

(declare-fun tb!214161 () Bool)

(assert (=> (and b!3698809 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))))) t!301850) tb!214161))

(declare-fun result!260900 () Bool)

(assert (= result!260900 result!260862))

(assert (=> d!1084612 t!301850))

(declare-fun t!301852 () Bool)

(declare-fun tb!214163 () Bool)

(assert (=> (and b!3698809 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toValue!8293 (transformation!5961 (h!44695 rules!3598)))) t!301852) tb!214163))

(declare-fun result!260902 () Bool)

(assert (= result!260902 result!260876))

(assert (=> d!1084646 t!301852))

(assert (=> d!1084652 t!301852))

(declare-fun tb!214165 () Bool)

(declare-fun t!301854 () Bool)

(assert (=> (and b!3698809 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toValue!8293 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))) t!301854) tb!214165))

(declare-fun result!260904 () Bool)

(assert (= result!260904 result!260888))

(assert (=> d!1084688 t!301854))

(declare-fun b_and!276525 () Bool)

(declare-fun tp!1124268 () Bool)

(assert (=> b!3698809 (= tp!1124268 (and (=> t!301850 result!260900) (=> t!301852 result!260902) (=> t!301854 result!260904) b_and!276525))))

(declare-fun b_free!98483 () Bool)

(declare-fun b_next!99187 () Bool)

(assert (=> b!3698809 (= b_free!98483 (not b_next!99187))))

(declare-fun t!301856 () Bool)

(declare-fun tb!214167 () Bool)

(assert (=> (and b!3698809 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toChars!8152 (transformation!5961 (rule!8821 token!544)))) t!301856) tb!214167))

(declare-fun result!260906 () Bool)

(assert (= result!260906 result!260834))

(assert (=> b!3698174 t!301856))

(assert (=> d!1084540 t!301856))

(declare-fun t!301858 () Bool)

(declare-fun tb!214169 () Bool)

(assert (=> (and b!3698809 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294249)))))) t!301858) tb!214169))

(declare-fun result!260908 () Bool)

(assert (= result!260908 result!260882))

(assert (=> d!1084672 t!301858))

(declare-fun t!301860 () Bool)

(declare-fun tb!214171 () Bool)

(assert (=> (and b!3698809 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toChars!8152 (transformation!5961 (h!44695 rules!3598)))) t!301860) tb!214171))

(declare-fun result!260910 () Bool)

(assert (= result!260910 result!260870))

(assert (=> d!1084646 t!301860))

(declare-fun t!301862 () Bool)

(declare-fun tb!214173 () Bool)

(assert (=> (and b!3698809 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toChars!8152 (transformation!5961 (rule!8821 (_1!22705 (get!13064 lt!1294217)))))) t!301862) tb!214173))

(declare-fun result!260912 () Bool)

(assert (= result!260912 result!260894))

(assert (=> d!1084724 t!301862))

(declare-fun tp!1124270 () Bool)

(declare-fun b_and!276527 () Bool)

(assert (=> b!3698809 (= tp!1124270 (and (=> t!301860 result!260910) (=> t!301862 result!260912) (=> t!301856 result!260906) (=> t!301858 result!260908) b_and!276527))))

(declare-fun e!2290618 () Bool)

(assert (=> b!3698809 (= e!2290618 (and tp!1124268 tp!1124270))))

(declare-fun e!2290616 () Bool)

(declare-fun tp!1124267 () Bool)

(declare-fun b!3698808 () Bool)

(assert (=> b!3698808 (= e!2290616 (and tp!1124267 (inv!52778 (tag!6791 (h!44695 (t!301794 (t!301794 rules!3598))))) (inv!52781 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) e!2290618))))

(declare-fun b!3698807 () Bool)

(declare-fun e!2290617 () Bool)

(declare-fun tp!1124269 () Bool)

(assert (=> b!3698807 (= e!2290617 (and e!2290616 tp!1124269))))

(assert (=> b!3698317 (= tp!1124161 e!2290617)))

(assert (= b!3698808 b!3698809))

(assert (= b!3698807 b!3698808))

(assert (= (and b!3698317 (is-Cons!39275 (t!301794 (t!301794 rules!3598)))) b!3698807))

(declare-fun m!4210061 () Bool)

(assert (=> b!3698808 m!4210061))

(declare-fun m!4210063 () Bool)

(assert (=> b!3698808 m!4210063))

(declare-fun e!2290620 () Bool)

(assert (=> b!3698337 (= tp!1124176 e!2290620)))

(declare-fun b!3698811 () Bool)

(declare-fun tp!1124272 () Bool)

(declare-fun tp!1124274 () Bool)

(assert (=> b!3698811 (= e!2290620 (and tp!1124272 tp!1124274))))

(declare-fun b!3698813 () Bool)

(declare-fun tp!1124275 () Bool)

(declare-fun tp!1124273 () Bool)

(assert (=> b!3698813 (= e!2290620 (and tp!1124275 tp!1124273))))

(declare-fun b!3698810 () Bool)

(assert (=> b!3698810 (= e!2290620 tp_is_empty!18515)))

(declare-fun b!3698812 () Bool)

(declare-fun tp!1124271 () Bool)

(assert (=> b!3698812 (= e!2290620 tp!1124271)))

(assert (= (and b!3698337 (is-ElementMatch!10720 (reg!11049 (regex!5961 (rule!8821 token!544))))) b!3698810))

(assert (= (and b!3698337 (is-Concat!16912 (reg!11049 (regex!5961 (rule!8821 token!544))))) b!3698811))

(assert (= (and b!3698337 (is-Star!10720 (reg!11049 (regex!5961 (rule!8821 token!544))))) b!3698812))

(assert (= (and b!3698337 (is-Union!10720 (reg!11049 (regex!5961 (rule!8821 token!544))))) b!3698813))

(declare-fun e!2290621 () Bool)

(assert (=> b!3698336 (= tp!1124177 e!2290621)))

(declare-fun b!3698815 () Bool)

(declare-fun tp!1124277 () Bool)

(declare-fun tp!1124279 () Bool)

(assert (=> b!3698815 (= e!2290621 (and tp!1124277 tp!1124279))))

(declare-fun b!3698817 () Bool)

(declare-fun tp!1124280 () Bool)

(declare-fun tp!1124278 () Bool)

(assert (=> b!3698817 (= e!2290621 (and tp!1124280 tp!1124278))))

(declare-fun b!3698814 () Bool)

(assert (=> b!3698814 (= e!2290621 tp_is_empty!18515)))

(declare-fun b!3698816 () Bool)

(declare-fun tp!1124276 () Bool)

(assert (=> b!3698816 (= e!2290621 tp!1124276)))

(assert (= (and b!3698336 (is-ElementMatch!10720 (regOne!21952 (regex!5961 (rule!8821 token!544))))) b!3698814))

(assert (= (and b!3698336 (is-Concat!16912 (regOne!21952 (regex!5961 (rule!8821 token!544))))) b!3698815))

(assert (= (and b!3698336 (is-Star!10720 (regOne!21952 (regex!5961 (rule!8821 token!544))))) b!3698816))

(assert (= (and b!3698336 (is-Union!10720 (regOne!21952 (regex!5961 (rule!8821 token!544))))) b!3698817))

(declare-fun e!2290628 () Bool)

(assert (=> b!3698336 (= tp!1124179 e!2290628)))

(declare-fun b!3698821 () Bool)

(declare-fun tp!1124282 () Bool)

(declare-fun tp!1124284 () Bool)

(assert (=> b!3698821 (= e!2290628 (and tp!1124282 tp!1124284))))

(declare-fun b!3698825 () Bool)

(declare-fun tp!1124285 () Bool)

(declare-fun tp!1124283 () Bool)

(assert (=> b!3698825 (= e!2290628 (and tp!1124285 tp!1124283))))

(declare-fun b!3698819 () Bool)

(assert (=> b!3698819 (= e!2290628 tp_is_empty!18515)))

(declare-fun b!3698823 () Bool)

(declare-fun tp!1124281 () Bool)

(assert (=> b!3698823 (= e!2290628 tp!1124281)))

(assert (= (and b!3698336 (is-ElementMatch!10720 (regTwo!21952 (regex!5961 (rule!8821 token!544))))) b!3698819))

(assert (= (and b!3698336 (is-Concat!16912 (regTwo!21952 (regex!5961 (rule!8821 token!544))))) b!3698821))

(assert (= (and b!3698336 (is-Star!10720 (regTwo!21952 (regex!5961 (rule!8821 token!544))))) b!3698823))

(assert (= (and b!3698336 (is-Union!10720 (regTwo!21952 (regex!5961 (rule!8821 token!544))))) b!3698825))

(declare-fun e!2290635 () Bool)

(declare-fun b!3698844 () Bool)

(declare-fun tp!1124293 () Bool)

(declare-fun tp!1124292 () Bool)

(assert (=> b!3698844 (= e!2290635 (and (inv!52785 (left!30585 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))))) tp!1124293 (inv!52785 (right!30915 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))))) tp!1124292))))

(declare-fun b!3698846 () Bool)

(declare-fun e!2290634 () Bool)

(declare-fun tp!1124294 () Bool)

(assert (=> b!3698846 (= e!2290634 tp!1124294)))

(declare-fun b!3698845 () Bool)

(declare-fun inv!52791 (IArray!24121) Bool)

(assert (=> b!3698845 (= e!2290635 (and (inv!52791 (xs!15260 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))))) e!2290634))))

(assert (=> b!3698180 (= tp!1124147 (and (inv!52785 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544)))) e!2290635))))

(assert (= (and b!3698180 (is-Node!12058 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))))) b!3698844))

(assert (= b!3698845 b!3698846))

(assert (= (and b!3698180 (is-Leaf!18650 (c!639098 (dynLambda!17165 (toChars!8152 (transformation!5961 (rule!8821 token!544))) (value!190344 token!544))))) b!3698845))

(declare-fun m!4210081 () Bool)

(assert (=> b!3698844 m!4210081))

(declare-fun m!4210083 () Bool)

(assert (=> b!3698844 m!4210083))

(declare-fun m!4210085 () Bool)

(assert (=> b!3698845 m!4210085))

(assert (=> b!3698180 m!4209473))

(declare-fun b!3698847 () Bool)

(declare-fun e!2290636 () Bool)

(declare-fun tp!1124295 () Bool)

(assert (=> b!3698847 (= e!2290636 (and tp_is_empty!18515 tp!1124295))))

(assert (=> b!3698324 (= tp!1124165 e!2290636)))

(assert (= (and b!3698324 (is-Cons!39274 (t!301793 (t!301793 input!3172)))) b!3698847))

(declare-fun b_lambda!109713 () Bool)

(assert (= b_lambda!109703 (or (and b!3698000 b_free!98457) (and b!3697985 b_free!98461 (= (toValue!8293 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (h!44695 rules!3598))))) (and b!3698319 b_free!98473 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toValue!8293 (transformation!5961 (h!44695 rules!3598))))) (and b!3698809 b_free!98481 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toValue!8293 (transformation!5961 (h!44695 rules!3598))))) b_lambda!109713)))

(declare-fun b_lambda!109715 () Bool)

(assert (= b_lambda!109701 (or (and b!3698000 b_free!98459) (and b!3697985 b_free!98463 (= (toChars!8152 (transformation!5961 (rule!8821 token!544))) (toChars!8152 (transformation!5961 (h!44695 rules!3598))))) (and b!3698319 b_free!98475 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toChars!8152 (transformation!5961 (h!44695 rules!3598))))) (and b!3698809 b_free!98483 (= (toChars!8152 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toChars!8152 (transformation!5961 (h!44695 rules!3598))))) b_lambda!109715)))

(declare-fun b_lambda!109717 () Bool)

(assert (= b_lambda!109705 (or (and b!3698000 b_free!98457) (and b!3697985 b_free!98461 (= (toValue!8293 (transformation!5961 (rule!8821 token!544))) (toValue!8293 (transformation!5961 (h!44695 rules!3598))))) (and b!3698319 b_free!98473 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 rules!3598)))) (toValue!8293 (transformation!5961 (h!44695 rules!3598))))) (and b!3698809 b_free!98481 (= (toValue!8293 (transformation!5961 (h!44695 (t!301794 (t!301794 rules!3598))))) (toValue!8293 (transformation!5961 (h!44695 rules!3598))))) b_lambda!109717)))

(push 1)

(assert (not b!3698638))

(assert (not tb!214149))

(assert (not b!3698180))

(assert (not b!3698804))

(assert (not b!3698801))

(assert (not bm!267258))

(assert (not b!3698551))

(assert (not b!3698802))

(assert (not b!3698716))

(assert (not b!3698807))

(assert (not b!3698742))

(assert (not d!1084716))

(assert (not b!3698647))

(assert (not d!1084670))

(assert (not b_lambda!109717))

(assert (not b_next!99167))

(assert (not b!3698522))

(assert (not bm!267255))

(assert (not b!3698536))

(assert (not b!3698610))

(assert (not b!3698642))

(assert b_and!276525)

(assert (not b!3698649))

(assert (not b!3698816))

(assert (not b!3698494))

(assert (not bm!267230))

(assert (not b_lambda!109707))

(assert (not b!3698731))

(assert (not d!1084720))

(assert (not b!3698823))

(assert (not b!3698763))

(assert tp_is_empty!18515)

(assert (not d!1084714))

(assert b_and!276515)

(assert (not d!1084696))

(assert (not b!3698534))

(assert (not d!1084604))

(assert (not b!3698738))

(assert (not d!1084690))

(assert (not b!3698808))

(assert (not d!1084662))

(assert (not bm!267256))

(assert (not b!3698594))

(assert (not b!3698557))

(assert (not bm!267231))

(assert (not bm!267273))

(assert (not d!1084648))

(assert (not b!3698533))

(assert (not b!3698625))

(assert (not b!3698604))

(assert (not bm!267228))

(assert (not d!1084692))

(assert (not b!3698641))

(assert (not b!3698747))

(assert (not b!3698669))

(assert b_and!276513)

(assert (not b!3698632))

(assert (not b!3698746))

(assert (not bm!267251))

(assert (not b!3698654))

(assert (not b!3698643))

(assert (not b!3698600))

(assert (not b!3698531))

(assert (not bm!267261))

(assert (not b!3698627))

(assert (not tb!214125))

(assert (not d!1084624))

(assert (not d!1084694))

(assert (not b!3698736))

(assert (not b!3698811))

(assert (not b_next!99187))

(assert (not d!1084606))

(assert b_and!276521)

(assert (not b!3698715))

(assert (not b!3698777))

(assert (not b_next!99163))

(assert (not b!3698552))

(assert (not b_next!99161))

(assert (not bm!267249))

(assert (not b!3698751))

(assert (not b!3698548))

(assert (not d!1084598))

(assert (not b!3698495))

(assert (not bm!267252))

(assert (not b!3698805))

(assert (not b!3698792))

(assert (not b!3698745))

(assert (not bm!267250))

(assert (not b!3698707))

(assert (not d!1084596))

(assert (not d!1084724))

(assert (not b!3698790))

(assert (not b!3698631))

(assert (not b!3698535))

(assert (not b!3698592))

(assert (not d!1084684))

(assert (not d!1084672))

(assert (not d!1084644))

(assert (not d!1084700))

(assert (not b!3698662))

(assert (not d!1084718))

(assert (not b!3698489))

(assert (not b!3698712))

(assert (not b_next!99185))

(assert (not d!1084722))

(assert (not b!3698671))

(assert (not bm!267274))

(assert (not b!3698549))

(assert (not b!3698539))

(assert (not b!3698780))

(assert (not d!1084654))

(assert (not b!3698785))

(assert (not b!3698713))

(assert (not b_lambda!109691))

(assert (not tb!214143))

(assert (not b_lambda!109713))

(assert (not b_lambda!109693))

(assert (not d!1084588))

(assert (not b!3698821))

(assert (not b!3698764))

(assert (not b!3698553))

(assert (not b!3698538))

(assert (not d!1084614))

(assert (not d!1084732))

(assert (not b!3698791))

(assert (not tb!214137))

(assert (not d!1084686))

(assert (not b!3698817))

(assert (not b!3698520))

(assert (not b!3698845))

(assert (not b!3698602))

(assert (not d!1084660))

(assert (not b!3698619))

(assert (not b!3698796))

(assert (not b!3698806))

(assert (not b!3698509))

(assert (not tb!214131))

(assert (not d!1084638))

(assert (not b!3698613))

(assert (not bm!267278))

(assert (not b!3698781))

(assert (not d!1084702))

(assert (not b!3698784))

(assert (not b!3698847))

(assert (not b!3698786))

(assert (not b!3698770))

(assert b_and!276523)

(assert (not b_lambda!109699))

(assert (not d!1084626))

(assert (not b!3698794))

(assert (not b!3698813))

(assert (not d!1084620))

(assert (not b!3698721))

(assert (not bm!267254))

(assert (not bm!267260))

(assert (not b!3698812))

(assert (not b_lambda!109715))

(assert (not b!3698528))

(assert (not b!3698672))

(assert (not b!3698772))

(assert (not b!3698743))

(assert (not b!3698488))

(assert (not b!3698508))

(assert (not b_next!99177))

(assert (not b!3698540))

(assert (not d!1084698))

(assert (not bm!267271))

(assert (not d!1084680))

(assert (not b!3698668))

(assert b_and!276519)

(assert (not d!1084616))

(assert (not bm!267257))

(assert (not b!3698734))

(assert (not b!3698677))

(assert (not b!3698475))

(assert (not b!3698634))

(assert (not b!3698767))

(assert (not b!3698590))

(assert (not d!1084608))

(assert (not d!1084730))

(assert (not b!3698778))

(assert (not b!3698768))

(assert (not bm!267279))

(assert (not bm!267232))

(assert (not d!1084726))

(assert (not b!3698753))

(assert (not b_lambda!109711))

(assert (not b!3698487))

(assert (not b!3698825))

(assert (not b!3698717))

(assert (not b_lambda!109709))

(assert (not b!3698815))

(assert (not d!1084664))

(assert (not b!3698639))

(assert (not bm!267276))

(assert (not d!1084668))

(assert (not b_next!99165))

(assert (not d!1084646))

(assert (not b!3698624))

(assert (not b_next!99179))

(assert (not d!1084710))

(assert (not b!3698673))

(assert (not b!3698537))

(assert (not d!1084622))

(assert (not b!3698800))

(assert (not d!1084678))

(assert (not tb!214155))

(assert (not b!3698782))

(assert (not b!3698626))

(assert (not b!3698844))

(assert (not b!3698795))

(assert (not d!1084590))

(assert (not b!3698774))

(assert (not b!3698776))

(assert (not b!3698773))

(assert b_and!276517)

(assert (not b!3698846))

(assert b_and!276527)

(assert (not bm!267253))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99167))

(assert b_and!276525)

(assert b_and!276515)

(assert b_and!276513)

(assert (not b_next!99185))

(assert b_and!276523)

(assert (not b_next!99177))

(assert b_and!276519)

(assert (not b_next!99187))

(assert b_and!276521)

(assert (not b_next!99163))

(assert (not b_next!99161))

(assert (not b_next!99165))

(assert (not b_next!99179))

(assert b_and!276517)

(assert b_and!276527)

(check-sat)

(pop 1)

