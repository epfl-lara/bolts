; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!348252 () Bool)

(assert start!348252)

(declare-fun b!3697706 () Bool)

(declare-fun b_free!98433 () Bool)

(declare-fun b_next!99137 () Bool)

(assert (=> b!3697706 (= b_free!98433 (not b_next!99137))))

(declare-fun tp!1123983 () Bool)

(declare-fun b_and!276411 () Bool)

(assert (=> b!3697706 (= tp!1123983 b_and!276411)))

(declare-fun b_free!98435 () Bool)

(declare-fun b_next!99139 () Bool)

(assert (=> b!3697706 (= b_free!98435 (not b_next!99139))))

(declare-fun tp!1123981 () Bool)

(declare-fun b_and!276413 () Bool)

(assert (=> b!3697706 (= tp!1123981 b_and!276413)))

(declare-fun b!3697701 () Bool)

(declare-fun b_free!98437 () Bool)

(declare-fun b_next!99141 () Bool)

(assert (=> b!3697701 (= b_free!98437 (not b_next!99141))))

(declare-fun tp!1123984 () Bool)

(declare-fun b_and!276415 () Bool)

(assert (=> b!3697701 (= tp!1123984 b_and!276415)))

(declare-fun b_free!98439 () Bool)

(declare-fun b_next!99143 () Bool)

(assert (=> b!3697701 (= b_free!98439 (not b_next!99143))))

(declare-fun tp!1123977 () Bool)

(declare-fun b_and!276417 () Bool)

(assert (=> b!3697701 (= tp!1123977 b_and!276417)))

(declare-fun e!2289964 () Bool)

(declare-fun tp!1123979 () Bool)

(declare-fun b!3697695 () Bool)

(declare-datatypes ((List!39389 0))(
  ( (Nil!39265) (Cons!39265 (h!44685 (_ BitVec 16)) (t!301772 List!39389)) )
))
(declare-datatypes ((TokenValue!6189 0))(
  ( (FloatLiteralValue!12378 (text!43768 List!39389)) (TokenValueExt!6188 (__x!24595 Int)) (Broken!30945 (value!190261 List!39389)) (Object!6312) (End!6189) (Def!6189) (Underscore!6189) (Match!6189) (Else!6189) (Error!6189) (Case!6189) (If!6189) (Extends!6189) (Abstract!6189) (Class!6189) (Val!6189) (DelimiterValue!12378 (del!6249 List!39389)) (KeywordValue!6195 (value!190262 List!39389)) (CommentValue!12378 (value!190263 List!39389)) (WhitespaceValue!12378 (value!190264 List!39389)) (IndentationValue!6189 (value!190265 List!39389)) (String!44280) (Int32!6189) (Broken!30946 (value!190266 List!39389)) (Boolean!6190) (Unit!57240) (OperatorValue!6192 (op!6249 List!39389)) (IdentifierValue!12378 (value!190267 List!39389)) (IdentifierValue!12379 (value!190268 List!39389)) (WhitespaceValue!12379 (value!190269 List!39389)) (True!12378) (False!12378) (Broken!30947 (value!190270 List!39389)) (Broken!30948 (value!190271 List!39389)) (True!12379) (RightBrace!6189) (RightBracket!6189) (Colon!6189) (Null!6189) (Comma!6189) (LeftBracket!6189) (False!12379) (LeftBrace!6189) (ImaginaryLiteralValue!6189 (text!43769 List!39389)) (StringLiteralValue!18567 (value!190272 List!39389)) (EOFValue!6189 (value!190273 List!39389)) (IdentValue!6189 (value!190274 List!39389)) (DelimiterValue!12379 (value!190275 List!39389)) (DedentValue!6189 (value!190276 List!39389)) (NewLineValue!6189 (value!190277 List!39389)) (IntegerValue!18567 (value!190278 (_ BitVec 32)) (text!43770 List!39389)) (IntegerValue!18568 (value!190279 Int) (text!43771 List!39389)) (Times!6189) (Or!6189) (Equal!6189) (Minus!6189) (Broken!30949 (value!190280 List!39389)) (And!6189) (Div!6189) (LessEqual!6189) (Mod!6189) (Concat!16907) (Not!6189) (Plus!6189) (SpaceValue!6189 (value!190281 List!39389)) (IntegerValue!18569 (value!190282 Int) (text!43772 List!39389)) (StringLiteralValue!18568 (text!43773 List!39389)) (FloatLiteralValue!12379 (text!43774 List!39389)) (BytesLiteralValue!6189 (value!190283 List!39389)) (CommentValue!12379 (value!190284 List!39389)) (StringLiteralValue!18569 (value!190285 List!39389)) (ErrorTokenValue!6189 (msg!6250 List!39389)) )
))
(declare-datatypes ((C!21622 0))(
  ( (C!21623 (val!12859 Int)) )
))
(declare-datatypes ((Regex!10718 0))(
  ( (ElementMatch!10718 (c!639067 C!21622)) (Concat!16908 (regOne!21948 Regex!10718) (regTwo!21948 Regex!10718)) (EmptyExpr!10718) (Star!10718 (reg!11047 Regex!10718)) (EmptyLang!10718) (Union!10718 (regOne!21949 Regex!10718) (regTwo!21949 Regex!10718)) )
))
(declare-datatypes ((String!44281 0))(
  ( (String!44282 (value!190286 String)) )
))
(declare-datatypes ((List!39390 0))(
  ( (Nil!39266) (Cons!39266 (h!44686 C!21622) (t!301773 List!39390)) )
))
(declare-datatypes ((IArray!24117 0))(
  ( (IArray!24118 (innerList!12116 List!39390)) )
))
(declare-datatypes ((Conc!12056 0))(
  ( (Node!12056 (left!30582 Conc!12056) (right!30912 Conc!12056) (csize!24342 Int) (cheight!12267 Int)) (Leaf!18647 (xs!15258 IArray!24117) (csize!24343 Int)) (Empty!12056) )
))
(declare-datatypes ((BalanceConc!23726 0))(
  ( (BalanceConc!23727 (c!639068 Conc!12056)) )
))
(declare-datatypes ((TokenValueInjection!11806 0))(
  ( (TokenValueInjection!11807 (toValue!8291 Int) (toChars!8150 Int)) )
))
(declare-datatypes ((Rule!11718 0))(
  ( (Rule!11719 (regex!5959 Regex!10718) (tag!6789 String!44281) (isSeparator!5959 Bool) (transformation!5959 TokenValueInjection!11806)) )
))
(declare-datatypes ((List!39391 0))(
  ( (Nil!39267) (Cons!39267 (h!44687 Rule!11718) (t!301774 List!39391)) )
))
(declare-fun rules!3598 () List!39391)

(declare-fun e!2289958 () Bool)

(declare-fun inv!52767 (String!44281) Bool)

(declare-fun inv!52770 (TokenValueInjection!11806) Bool)

(assert (=> b!3697695 (= e!2289964 (and tp!1123979 (inv!52767 (tag!6789 (h!44687 rules!3598))) (inv!52770 (transformation!5959 (h!44687 rules!3598))) e!2289958))))

(declare-fun b!3697696 () Bool)

(declare-fun e!2289963 () Bool)

(declare-fun tp_is_empty!18511 () Bool)

(declare-fun tp!1123982 () Bool)

(assert (=> b!3697696 (= e!2289963 (and tp_is_empty!18511 tp!1123982))))

(declare-datatypes ((Token!11272 0))(
  ( (Token!11273 (value!190287 TokenValue!6189) (rule!8819 Rule!11718) (size!29951 Int) (originalCharacters!6667 List!39390)) )
))
(declare-fun token!544 () Token!11272)

(declare-fun b!3697697 () Bool)

(declare-fun e!2289967 () Bool)

(declare-fun e!2289961 () Bool)

(declare-fun tp!1123978 () Bool)

(declare-fun inv!21 (TokenValue!6189) Bool)

(assert (=> b!3697697 (= e!2289961 (and (inv!21 (value!190287 token!544)) e!2289967 tp!1123978))))

(declare-fun res!1503815 () Bool)

(declare-fun e!2289965 () Bool)

(assert (=> start!348252 (=> (not res!1503815) (not e!2289965))))

(declare-datatypes ((LexerInterface!5548 0))(
  ( (LexerInterfaceExt!5545 (__x!24596 Int)) (Lexer!5546) )
))
(declare-fun thiss!25322 () LexerInterface!5548)

(assert (=> start!348252 (= res!1503815 (is-Lexer!5546 thiss!25322))))

(assert (=> start!348252 e!2289965))

(assert (=> start!348252 true))

(declare-fun e!2289960 () Bool)

(assert (=> start!348252 e!2289960))

(declare-fun inv!52771 (Token!11272) Bool)

(assert (=> start!348252 (and (inv!52771 token!544) e!2289961)))

(assert (=> start!348252 e!2289963))

(declare-fun b!3697698 () Bool)

(declare-fun tp!1123980 () Bool)

(assert (=> b!3697698 (= e!2289960 (and e!2289964 tp!1123980))))

(declare-fun b!3697699 () Bool)

(declare-fun res!1503817 () Bool)

(assert (=> b!3697699 (=> (not res!1503817) (not e!2289965))))

(declare-fun rulesInvariant!4945 (LexerInterface!5548 List!39391) Bool)

(assert (=> b!3697699 (= res!1503817 (rulesInvariant!4945 thiss!25322 rules!3598))))

(declare-fun b!3697700 () Bool)

(declare-fun e!2289962 () Bool)

(declare-fun ListPrimitiveSize!242 (List!39391) Int)

(assert (=> b!3697700 (= e!2289962 (< (ListPrimitiveSize!242 rules!3598) 0))))

(declare-fun e!2289957 () Bool)

(assert (=> b!3697701 (= e!2289957 (and tp!1123984 tp!1123977))))

(declare-fun b!3697702 () Bool)

(assert (=> b!3697702 (= e!2289965 e!2289962)))

(declare-fun res!1503818 () Bool)

(assert (=> b!3697702 (=> (not res!1503818) (not e!2289962))))

(declare-datatypes ((tuple2!39138 0))(
  ( (tuple2!39139 (_1!22703 Token!11272) (_2!22703 List!39390)) )
))
(declare-datatypes ((Option!8493 0))(
  ( (None!8492) (Some!8492 (v!38450 tuple2!39138)) )
))
(declare-fun lt!1294127 () Option!8493)

(declare-fun isDefined!6682 (Option!8493) Bool)

(assert (=> b!3697702 (= res!1503818 (isDefined!6682 lt!1294127))))

(declare-fun input!3172 () List!39390)

(declare-fun maxPrefix!3070 (LexerInterface!5548 List!39391 List!39390) Option!8493)

(assert (=> b!3697702 (= lt!1294127 (maxPrefix!3070 thiss!25322 rules!3598 input!3172))))

(declare-fun tp!1123985 () Bool)

(declare-fun b!3697703 () Bool)

(assert (=> b!3697703 (= e!2289967 (and tp!1123985 (inv!52767 (tag!6789 (rule!8819 token!544))) (inv!52770 (transformation!5959 (rule!8819 token!544))) e!2289957))))

(declare-fun b!3697704 () Bool)

(declare-fun res!1503819 () Bool)

(assert (=> b!3697704 (=> (not res!1503819) (not e!2289962))))

(declare-fun get!13060 (Option!8493) tuple2!39138)

(assert (=> b!3697704 (= res!1503819 (= (_1!22703 (get!13060 lt!1294127)) token!544))))

(declare-fun b!3697705 () Bool)

(declare-fun res!1503816 () Bool)

(assert (=> b!3697705 (=> (not res!1503816) (not e!2289965))))

(declare-fun isEmpty!23399 (List!39391) Bool)

(assert (=> b!3697705 (= res!1503816 (not (isEmpty!23399 rules!3598)))))

(assert (=> b!3697706 (= e!2289958 (and tp!1123983 tp!1123981))))

(assert (= (and start!348252 res!1503815) b!3697699))

(assert (= (and b!3697699 res!1503817) b!3697705))

(assert (= (and b!3697705 res!1503816) b!3697702))

(assert (= (and b!3697702 res!1503818) b!3697704))

(assert (= (and b!3697704 res!1503819) b!3697700))

(assert (= b!3697695 b!3697706))

(assert (= b!3697698 b!3697695))

(assert (= (and start!348252 (is-Cons!39267 rules!3598)) b!3697698))

(assert (= b!3697703 b!3697701))

(assert (= b!3697697 b!3697703))

(assert (= start!348252 b!3697697))

(assert (= (and start!348252 (is-Cons!39266 input!3172)) b!3697696))

(declare-fun m!4209117 () Bool)

(assert (=> b!3697704 m!4209117))

(declare-fun m!4209119 () Bool)

(assert (=> b!3697703 m!4209119))

(declare-fun m!4209121 () Bool)

(assert (=> b!3697703 m!4209121))

(declare-fun m!4209123 () Bool)

(assert (=> b!3697695 m!4209123))

(declare-fun m!4209125 () Bool)

(assert (=> b!3697695 m!4209125))

(declare-fun m!4209127 () Bool)

(assert (=> b!3697699 m!4209127))

(declare-fun m!4209129 () Bool)

(assert (=> start!348252 m!4209129))

(declare-fun m!4209131 () Bool)

(assert (=> b!3697700 m!4209131))

(declare-fun m!4209133 () Bool)

(assert (=> b!3697702 m!4209133))

(declare-fun m!4209135 () Bool)

(assert (=> b!3697702 m!4209135))

(declare-fun m!4209137 () Bool)

(assert (=> b!3697697 m!4209137))

(declare-fun m!4209139 () Bool)

(assert (=> b!3697705 m!4209139))

(push 1)

(assert (not b!3697697))

(assert (not b_next!99137))

(assert (not b_next!99139))

(assert (not b!3697702))

(assert (not b_next!99141))

(assert (not b!3697699))

(assert (not b!3697696))

(assert b_and!276411)

(assert (not b!3697698))

(assert (not b_next!99143))

(assert (not b!3697703))

(assert (not b!3697700))

(assert (not b!3697695))

(assert tp_is_empty!18511)

(assert b_and!276415)

(assert (not b!3697704))

(assert (not b!3697705))

(assert (not start!348252))

(assert b_and!276413)

(assert b_and!276417)

(check-sat)

(pop 1)

(push 1)

(assert b_and!276415)

(assert (not b_next!99137))

(assert (not b_next!99139))

(assert (not b_next!99141))

(assert b_and!276411)

(assert (not b_next!99143))

(assert b_and!276413)

(assert b_and!276417)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084449 () Bool)

(declare-fun lt!1294133 () Int)

(assert (=> d!1084449 (>= lt!1294133 0)))

(declare-fun e!2290009 () Int)

(assert (=> d!1084449 (= lt!1294133 e!2290009)))

(declare-fun c!639074 () Bool)

(assert (=> d!1084449 (= c!639074 (is-Nil!39267 rules!3598))))

(assert (=> d!1084449 (= (ListPrimitiveSize!242 rules!3598) lt!1294133)))

(declare-fun b!3697749 () Bool)

(assert (=> b!3697749 (= e!2290009 0)))

(declare-fun b!3697750 () Bool)

(assert (=> b!3697750 (= e!2290009 (+ 1 (ListPrimitiveSize!242 (t!301774 rules!3598))))))

(assert (= (and d!1084449 c!639074) b!3697749))

(assert (= (and d!1084449 (not c!639074)) b!3697750))

(declare-fun m!4209165 () Bool)

(assert (=> b!3697750 m!4209165))

(assert (=> b!3697700 d!1084449))

(declare-fun d!1084451 () Bool)

(assert (=> d!1084451 (= (inv!52767 (tag!6789 (h!44687 rules!3598))) (= (mod (str.len (value!190286 (tag!6789 (h!44687 rules!3598)))) 2) 0))))

(assert (=> b!3697695 d!1084451))

(declare-fun d!1084453 () Bool)

(declare-fun res!1503844 () Bool)

(declare-fun e!2290015 () Bool)

(assert (=> d!1084453 (=> (not res!1503844) (not e!2290015))))

(declare-fun semiInverseModEq!2543 (Int Int) Bool)

(assert (=> d!1084453 (= res!1503844 (semiInverseModEq!2543 (toChars!8150 (transformation!5959 (h!44687 rules!3598))) (toValue!8291 (transformation!5959 (h!44687 rules!3598)))))))

(assert (=> d!1084453 (= (inv!52770 (transformation!5959 (h!44687 rules!3598))) e!2290015)))

(declare-fun b!3697758 () Bool)

(declare-fun equivClasses!2442 (Int Int) Bool)

(assert (=> b!3697758 (= e!2290015 (equivClasses!2442 (toChars!8150 (transformation!5959 (h!44687 rules!3598))) (toValue!8291 (transformation!5959 (h!44687 rules!3598)))))))

(assert (= (and d!1084453 res!1503844) b!3697758))

(declare-fun m!4209171 () Bool)

(assert (=> d!1084453 m!4209171))

(declare-fun m!4209173 () Bool)

(assert (=> b!3697758 m!4209173))

(assert (=> b!3697695 d!1084453))

(declare-fun d!1084457 () Bool)

(assert (=> d!1084457 (= (isEmpty!23399 rules!3598) (is-Nil!39267 rules!3598))))

(assert (=> b!3697705 d!1084457))

(declare-fun d!1084459 () Bool)

(assert (=> d!1084459 (= (inv!52767 (tag!6789 (rule!8819 token!544))) (= (mod (str.len (value!190286 (tag!6789 (rule!8819 token!544)))) 2) 0))))

(assert (=> b!3697703 d!1084459))

(declare-fun d!1084461 () Bool)

(declare-fun res!1503845 () Bool)

(declare-fun e!2290017 () Bool)

(assert (=> d!1084461 (=> (not res!1503845) (not e!2290017))))

(assert (=> d!1084461 (= res!1503845 (semiInverseModEq!2543 (toChars!8150 (transformation!5959 (rule!8819 token!544))) (toValue!8291 (transformation!5959 (rule!8819 token!544)))))))

(assert (=> d!1084461 (= (inv!52770 (transformation!5959 (rule!8819 token!544))) e!2290017)))

(declare-fun b!3697761 () Bool)

(assert (=> b!3697761 (= e!2290017 (equivClasses!2442 (toChars!8150 (transformation!5959 (rule!8819 token!544))) (toValue!8291 (transformation!5959 (rule!8819 token!544)))))))

(assert (= (and d!1084461 res!1503845) b!3697761))

(declare-fun m!4209177 () Bool)

(assert (=> d!1084461 m!4209177))

(declare-fun m!4209179 () Bool)

(assert (=> b!3697761 m!4209179))

(assert (=> b!3697703 d!1084461))

(declare-fun d!1084465 () Bool)

(declare-fun isEmpty!23401 (Option!8493) Bool)

(assert (=> d!1084465 (= (isDefined!6682 lt!1294127) (not (isEmpty!23401 lt!1294127)))))

(declare-fun bs!574320 () Bool)

(assert (= bs!574320 d!1084465))

(declare-fun m!4209181 () Bool)

(assert (=> bs!574320 m!4209181))

(assert (=> b!3697702 d!1084465))

(declare-fun b!3697792 () Bool)

(declare-fun res!1503868 () Bool)

(declare-fun e!2290031 () Bool)

(assert (=> b!3697792 (=> (not res!1503868) (not e!2290031))))

(declare-fun lt!1294151 () Option!8493)

(declare-fun ++!9755 (List!39390 List!39390) List!39390)

(declare-fun list!14670 (BalanceConc!23726) List!39390)

(declare-fun charsOf!3952 (Token!11272) BalanceConc!23726)

(assert (=> b!3697792 (= res!1503868 (= (++!9755 (list!14670 (charsOf!3952 (_1!22703 (get!13060 lt!1294151)))) (_2!22703 (get!13060 lt!1294151))) input!3172))))

(declare-fun call!267209 () Option!8493)

(declare-fun bm!267204 () Bool)

(declare-fun maxPrefixOneRule!2180 (LexerInterface!5548 Rule!11718 List!39390) Option!8493)

(assert (=> bm!267204 (= call!267209 (maxPrefixOneRule!2180 thiss!25322 (h!44687 rules!3598) input!3172))))

(declare-fun b!3697793 () Bool)

(declare-fun e!2290032 () Option!8493)

(declare-fun lt!1294147 () Option!8493)

(declare-fun lt!1294149 () Option!8493)

(assert (=> b!3697793 (= e!2290032 (ite (and (is-None!8492 lt!1294147) (is-None!8492 lt!1294149)) None!8492 (ite (is-None!8492 lt!1294149) lt!1294147 (ite (is-None!8492 lt!1294147) lt!1294149 (ite (>= (size!29951 (_1!22703 (v!38450 lt!1294147))) (size!29951 (_1!22703 (v!38450 lt!1294149)))) lt!1294147 lt!1294149)))))))

(assert (=> b!3697793 (= lt!1294147 call!267209)))

(assert (=> b!3697793 (= lt!1294149 (maxPrefix!3070 thiss!25322 (t!301774 rules!3598) input!3172))))

(declare-fun b!3697794 () Bool)

(declare-fun e!2290033 () Bool)

(assert (=> b!3697794 (= e!2290033 e!2290031)))

(declare-fun res!1503867 () Bool)

(assert (=> b!3697794 (=> (not res!1503867) (not e!2290031))))

(assert (=> b!3697794 (= res!1503867 (isDefined!6682 lt!1294151))))

(declare-fun b!3697795 () Bool)

(declare-fun res!1503869 () Bool)

(assert (=> b!3697795 (=> (not res!1503869) (not e!2290031))))

(assert (=> b!3697795 (= res!1503869 (= (list!14670 (charsOf!3952 (_1!22703 (get!13060 lt!1294151)))) (originalCharacters!6667 (_1!22703 (get!13060 lt!1294151)))))))

(declare-fun b!3697796 () Bool)

(declare-fun res!1503870 () Bool)

(assert (=> b!3697796 (=> (not res!1503870) (not e!2290031))))

(declare-fun size!29953 (List!39390) Int)

(assert (=> b!3697796 (= res!1503870 (< (size!29953 (_2!22703 (get!13060 lt!1294151))) (size!29953 input!3172)))))

(declare-fun d!1084467 () Bool)

(assert (=> d!1084467 e!2290033))

(declare-fun res!1503873 () Bool)

(assert (=> d!1084467 (=> res!1503873 e!2290033)))

(assert (=> d!1084467 (= res!1503873 (isEmpty!23401 lt!1294151))))

(assert (=> d!1084467 (= lt!1294151 e!2290032)))

(declare-fun c!639080 () Bool)

(assert (=> d!1084467 (= c!639080 (and (is-Cons!39267 rules!3598) (is-Nil!39267 (t!301774 rules!3598))))))

(declare-datatypes ((Unit!57242 0))(
  ( (Unit!57243) )
))
(declare-fun lt!1294150 () Unit!57242)

(declare-fun lt!1294148 () Unit!57242)

(assert (=> d!1084467 (= lt!1294150 lt!1294148)))

(declare-fun isPrefix!3276 (List!39390 List!39390) Bool)

(assert (=> d!1084467 (isPrefix!3276 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2061 (List!39390 List!39390) Unit!57242)

(assert (=> d!1084467 (= lt!1294148 (lemmaIsPrefixRefl!2061 input!3172 input!3172))))

(declare-fun rulesValidInductive!2142 (LexerInterface!5548 List!39391) Bool)

(assert (=> d!1084467 (rulesValidInductive!2142 thiss!25322 rules!3598)))

(assert (=> d!1084467 (= (maxPrefix!3070 thiss!25322 rules!3598 input!3172) lt!1294151)))

(declare-fun b!3697797 () Bool)

(assert (=> b!3697797 (= e!2290032 call!267209)))

(declare-fun b!3697798 () Bool)

(declare-fun res!1503872 () Bool)

(assert (=> b!3697798 (=> (not res!1503872) (not e!2290031))))

(declare-fun apply!9395 (TokenValueInjection!11806 BalanceConc!23726) TokenValue!6189)

(declare-fun seqFromList!4474 (List!39390) BalanceConc!23726)

(assert (=> b!3697798 (= res!1503872 (= (value!190287 (_1!22703 (get!13060 lt!1294151))) (apply!9395 (transformation!5959 (rule!8819 (_1!22703 (get!13060 lt!1294151)))) (seqFromList!4474 (originalCharacters!6667 (_1!22703 (get!13060 lt!1294151)))))))))

(declare-fun b!3697799 () Bool)

(declare-fun contains!7828 (List!39391 Rule!11718) Bool)

(assert (=> b!3697799 (= e!2290031 (contains!7828 rules!3598 (rule!8819 (_1!22703 (get!13060 lt!1294151)))))))

(declare-fun b!3697800 () Bool)

(declare-fun res!1503871 () Bool)

(assert (=> b!3697800 (=> (not res!1503871) (not e!2290031))))

(declare-fun matchR!5255 (Regex!10718 List!39390) Bool)

(assert (=> b!3697800 (= res!1503871 (matchR!5255 (regex!5959 (rule!8819 (_1!22703 (get!13060 lt!1294151)))) (list!14670 (charsOf!3952 (_1!22703 (get!13060 lt!1294151))))))))

(assert (= (and d!1084467 c!639080) b!3697797))

(assert (= (and d!1084467 (not c!639080)) b!3697793))

(assert (= (or b!3697797 b!3697793) bm!267204))

(assert (= (and d!1084467 (not res!1503873)) b!3697794))

(assert (= (and b!3697794 res!1503867) b!3697795))

(assert (= (and b!3697795 res!1503869) b!3697796))

(assert (= (and b!3697796 res!1503870) b!3697792))

(assert (= (and b!3697792 res!1503868) b!3697798))

(assert (= (and b!3697798 res!1503872) b!3697800))

(assert (= (and b!3697800 res!1503871) b!3697799))

(declare-fun m!4209201 () Bool)

(assert (=> bm!267204 m!4209201))

(declare-fun m!4209203 () Bool)

(assert (=> b!3697799 m!4209203))

(declare-fun m!4209205 () Bool)

(assert (=> b!3697799 m!4209205))

(assert (=> b!3697798 m!4209203))

(declare-fun m!4209207 () Bool)

(assert (=> b!3697798 m!4209207))

(assert (=> b!3697798 m!4209207))

(declare-fun m!4209209 () Bool)

(assert (=> b!3697798 m!4209209))

(assert (=> b!3697795 m!4209203))

(declare-fun m!4209211 () Bool)

(assert (=> b!3697795 m!4209211))

(assert (=> b!3697795 m!4209211))

(declare-fun m!4209213 () Bool)

(assert (=> b!3697795 m!4209213))

(declare-fun m!4209215 () Bool)

(assert (=> b!3697793 m!4209215))

(declare-fun m!4209217 () Bool)

(assert (=> d!1084467 m!4209217))

(declare-fun m!4209219 () Bool)

(assert (=> d!1084467 m!4209219))

(declare-fun m!4209221 () Bool)

(assert (=> d!1084467 m!4209221))

(declare-fun m!4209223 () Bool)

(assert (=> d!1084467 m!4209223))

(assert (=> b!3697792 m!4209203))

(assert (=> b!3697792 m!4209211))

(assert (=> b!3697792 m!4209211))

(assert (=> b!3697792 m!4209213))

(assert (=> b!3697792 m!4209213))

(declare-fun m!4209225 () Bool)

(assert (=> b!3697792 m!4209225))

(declare-fun m!4209227 () Bool)

(assert (=> b!3697794 m!4209227))

(assert (=> b!3697800 m!4209203))

(assert (=> b!3697800 m!4209211))

(assert (=> b!3697800 m!4209211))

(assert (=> b!3697800 m!4209213))

(assert (=> b!3697800 m!4209213))

(declare-fun m!4209229 () Bool)

(assert (=> b!3697800 m!4209229))

(assert (=> b!3697796 m!4209203))

(declare-fun m!4209231 () Bool)

(assert (=> b!3697796 m!4209231))

(declare-fun m!4209233 () Bool)

(assert (=> b!3697796 m!4209233))

(assert (=> b!3697702 d!1084467))

(declare-fun b!3697811 () Bool)

(declare-fun e!2290040 () Bool)

(declare-fun inv!16 (TokenValue!6189) Bool)

(assert (=> b!3697811 (= e!2290040 (inv!16 (value!190287 token!544)))))

(declare-fun b!3697812 () Bool)

(declare-fun e!2290042 () Bool)

(declare-fun inv!17 (TokenValue!6189) Bool)

(assert (=> b!3697812 (= e!2290042 (inv!17 (value!190287 token!544)))))

(declare-fun b!3697813 () Bool)

(declare-fun e!2290041 () Bool)

(declare-fun inv!15 (TokenValue!6189) Bool)

(assert (=> b!3697813 (= e!2290041 (inv!15 (value!190287 token!544)))))

(declare-fun b!3697814 () Bool)

(declare-fun res!1503876 () Bool)

(assert (=> b!3697814 (=> res!1503876 e!2290041)))

(assert (=> b!3697814 (= res!1503876 (not (is-IntegerValue!18569 (value!190287 token!544))))))

(assert (=> b!3697814 (= e!2290042 e!2290041)))

(declare-fun b!3697815 () Bool)

(assert (=> b!3697815 (= e!2290040 e!2290042)))

(declare-fun c!639086 () Bool)

(assert (=> b!3697815 (= c!639086 (is-IntegerValue!18568 (value!190287 token!544)))))

(declare-fun d!1084479 () Bool)

(declare-fun c!639085 () Bool)

(assert (=> d!1084479 (= c!639085 (is-IntegerValue!18567 (value!190287 token!544)))))

(assert (=> d!1084479 (= (inv!21 (value!190287 token!544)) e!2290040)))

(assert (= (and d!1084479 c!639085) b!3697811))

(assert (= (and d!1084479 (not c!639085)) b!3697815))

(assert (= (and b!3697815 c!639086) b!3697812))

(assert (= (and b!3697815 (not c!639086)) b!3697814))

(assert (= (and b!3697814 (not res!1503876)) b!3697813))

(declare-fun m!4209235 () Bool)

(assert (=> b!3697811 m!4209235))

(declare-fun m!4209237 () Bool)

(assert (=> b!3697812 m!4209237))

(declare-fun m!4209239 () Bool)

(assert (=> b!3697813 m!4209239))

(assert (=> b!3697697 d!1084479))

(declare-fun d!1084481 () Bool)

(assert (=> d!1084481 (= (get!13060 lt!1294127) (v!38450 lt!1294127))))

(assert (=> b!3697704 d!1084481))

(declare-fun d!1084483 () Bool)

(declare-fun res!1503879 () Bool)

(declare-fun e!2290045 () Bool)

(assert (=> d!1084483 (=> (not res!1503879) (not e!2290045))))

(declare-fun rulesValid!2300 (LexerInterface!5548 List!39391) Bool)

(assert (=> d!1084483 (= res!1503879 (rulesValid!2300 thiss!25322 rules!3598))))

(assert (=> d!1084483 (= (rulesInvariant!4945 thiss!25322 rules!3598) e!2290045)))

(declare-fun b!3697818 () Bool)

(declare-datatypes ((List!39395 0))(
  ( (Nil!39271) (Cons!39271 (h!44691 String!44281) (t!301788 List!39395)) )
))
(declare-fun noDuplicateTag!2296 (LexerInterface!5548 List!39391 List!39395) Bool)

(assert (=> b!3697818 (= e!2290045 (noDuplicateTag!2296 thiss!25322 rules!3598 Nil!39271))))

(assert (= (and d!1084483 res!1503879) b!3697818))

(declare-fun m!4209241 () Bool)

(assert (=> d!1084483 m!4209241))

(declare-fun m!4209243 () Bool)

(assert (=> b!3697818 m!4209243))

(assert (=> b!3697699 d!1084483))

(declare-fun d!1084485 () Bool)

(declare-fun res!1503884 () Bool)

(declare-fun e!2290050 () Bool)

(assert (=> d!1084485 (=> (not res!1503884) (not e!2290050))))

(declare-fun isEmpty!23402 (List!39390) Bool)

(assert (=> d!1084485 (= res!1503884 (not (isEmpty!23402 (originalCharacters!6667 token!544))))))

(assert (=> d!1084485 (= (inv!52771 token!544) e!2290050)))

(declare-fun b!3697827 () Bool)

(declare-fun res!1503885 () Bool)

(assert (=> b!3697827 (=> (not res!1503885) (not e!2290050))))

(declare-fun dynLambda!17163 (Int TokenValue!6189) BalanceConc!23726)

(assert (=> b!3697827 (= res!1503885 (= (originalCharacters!6667 token!544) (list!14670 (dynLambda!17163 (toChars!8150 (transformation!5959 (rule!8819 token!544))) (value!190287 token!544)))))))

(declare-fun b!3697828 () Bool)

(assert (=> b!3697828 (= e!2290050 (= (size!29951 token!544) (size!29953 (originalCharacters!6667 token!544))))))

(assert (= (and d!1084485 res!1503884) b!3697827))

(assert (= (and b!3697827 res!1503885) b!3697828))

(declare-fun b_lambda!109677 () Bool)

(assert (=> (not b_lambda!109677) (not b!3697827)))

(declare-fun t!301783 () Bool)

(declare-fun tb!214105 () Bool)

(assert (=> (and b!3697706 (= (toChars!8150 (transformation!5959 (h!44687 rules!3598))) (toChars!8150 (transformation!5959 (rule!8819 token!544)))) t!301783) tb!214105))

(declare-fun b!3697833 () Bool)

(declare-fun e!2290053 () Bool)

(declare-fun tp!1124018 () Bool)

(declare-fun inv!52774 (Conc!12056) Bool)

(assert (=> b!3697833 (= e!2290053 (and (inv!52774 (c!639068 (dynLambda!17163 (toChars!8150 (transformation!5959 (rule!8819 token!544))) (value!190287 token!544)))) tp!1124018))))

(declare-fun result!260812 () Bool)

(declare-fun inv!52775 (BalanceConc!23726) Bool)

(assert (=> tb!214105 (= result!260812 (and (inv!52775 (dynLambda!17163 (toChars!8150 (transformation!5959 (rule!8819 token!544))) (value!190287 token!544))) e!2290053))))

(assert (= tb!214105 b!3697833))

(declare-fun m!4209245 () Bool)

(assert (=> b!3697833 m!4209245))

(declare-fun m!4209247 () Bool)

(assert (=> tb!214105 m!4209247))

(assert (=> b!3697827 t!301783))

(declare-fun b_and!276431 () Bool)

(assert (= b_and!276413 (and (=> t!301783 result!260812) b_and!276431)))

(declare-fun t!301785 () Bool)

(declare-fun tb!214107 () Bool)

(assert (=> (and b!3697701 (= (toChars!8150 (transformation!5959 (rule!8819 token!544))) (toChars!8150 (transformation!5959 (rule!8819 token!544)))) t!301785) tb!214107))

(declare-fun result!260816 () Bool)

(assert (= result!260816 result!260812))

(assert (=> b!3697827 t!301785))

(declare-fun b_and!276433 () Bool)

(assert (= b_and!276417 (and (=> t!301785 result!260816) b_and!276433)))

(declare-fun m!4209249 () Bool)

(assert (=> d!1084485 m!4209249))

(declare-fun m!4209251 () Bool)

(assert (=> b!3697827 m!4209251))

(assert (=> b!3697827 m!4209251))

(declare-fun m!4209253 () Bool)

(assert (=> b!3697827 m!4209253))

(declare-fun m!4209255 () Bool)

(assert (=> b!3697828 m!4209255))

(assert (=> start!348252 d!1084485))

(declare-fun b!3697850 () Bool)

(declare-fun e!2290060 () Bool)

(declare-fun tp!1124031 () Bool)

(assert (=> b!3697850 (= e!2290060 tp!1124031)))

(assert (=> b!3697695 (= tp!1123979 e!2290060)))

(declare-fun b!3697851 () Bool)

(declare-fun tp!1124029 () Bool)

(declare-fun tp!1124030 () Bool)

(assert (=> b!3697851 (= e!2290060 (and tp!1124029 tp!1124030))))

(declare-fun b!3697848 () Bool)

(assert (=> b!3697848 (= e!2290060 tp_is_empty!18511)))

(declare-fun b!3697849 () Bool)

(declare-fun tp!1124033 () Bool)

(declare-fun tp!1124032 () Bool)

(assert (=> b!3697849 (= e!2290060 (and tp!1124033 tp!1124032))))

(assert (= (and b!3697695 (is-ElementMatch!10718 (regex!5959 (h!44687 rules!3598)))) b!3697848))

(assert (= (and b!3697695 (is-Concat!16908 (regex!5959 (h!44687 rules!3598)))) b!3697849))

(assert (= (and b!3697695 (is-Star!10718 (regex!5959 (h!44687 rules!3598)))) b!3697850))

(assert (= (and b!3697695 (is-Union!10718 (regex!5959 (h!44687 rules!3598)))) b!3697851))

(declare-fun b!3697862 () Bool)

(declare-fun e!2290063 () Bool)

(declare-fun tp!1124036 () Bool)

(assert (=> b!3697862 (= e!2290063 (and tp_is_empty!18511 tp!1124036))))

(assert (=> b!3697696 (= tp!1123982 e!2290063)))

(assert (= (and b!3697696 (is-Cons!39266 (t!301773 input!3172))) b!3697862))

(declare-fun b!3697867 () Bool)

(declare-fun e!2290064 () Bool)

(declare-fun tp!1124039 () Bool)

(assert (=> b!3697867 (= e!2290064 tp!1124039)))

(assert (=> b!3697703 (= tp!1123985 e!2290064)))

(declare-fun b!3697868 () Bool)

(declare-fun tp!1124037 () Bool)

(declare-fun tp!1124038 () Bool)

(assert (=> b!3697868 (= e!2290064 (and tp!1124037 tp!1124038))))

(declare-fun b!3697865 () Bool)

(assert (=> b!3697865 (= e!2290064 tp_is_empty!18511)))

(declare-fun b!3697866 () Bool)

(declare-fun tp!1124041 () Bool)

(declare-fun tp!1124040 () Bool)

(assert (=> b!3697866 (= e!2290064 (and tp!1124041 tp!1124040))))

(assert (= (and b!3697703 (is-ElementMatch!10718 (regex!5959 (rule!8819 token!544)))) b!3697865))

(assert (= (and b!3697703 (is-Concat!16908 (regex!5959 (rule!8819 token!544)))) b!3697866))

(assert (= (and b!3697703 (is-Star!10718 (regex!5959 (rule!8819 token!544)))) b!3697867))

(assert (= (and b!3697703 (is-Union!10718 (regex!5959 (rule!8819 token!544)))) b!3697868))

(declare-fun b!3697871 () Bool)

(declare-fun e!2290065 () Bool)

(declare-fun tp!1124042 () Bool)

(assert (=> b!3697871 (= e!2290065 (and tp_is_empty!18511 tp!1124042))))

(assert (=> b!3697697 (= tp!1123978 e!2290065)))

(assert (= (and b!3697697 (is-Cons!39266 (originalCharacters!6667 token!544))) b!3697871))

(declare-fun b!3697882 () Bool)

(declare-fun b_free!98449 () Bool)

(declare-fun b_next!99153 () Bool)

(assert (=> b!3697882 (= b_free!98449 (not b_next!99153))))

(declare-fun tp!1124053 () Bool)

(declare-fun b_and!276435 () Bool)

(assert (=> b!3697882 (= tp!1124053 b_and!276435)))

(declare-fun b_free!98451 () Bool)

(declare-fun b_next!99155 () Bool)

(assert (=> b!3697882 (= b_free!98451 (not b_next!99155))))

(declare-fun t!301787 () Bool)

(declare-fun tb!214109 () Bool)

(assert (=> (and b!3697882 (= (toChars!8150 (transformation!5959 (h!44687 (t!301774 rules!3598)))) (toChars!8150 (transformation!5959 (rule!8819 token!544)))) t!301787) tb!214109))

(declare-fun result!260824 () Bool)

(assert (= result!260824 result!260812))

(assert (=> b!3697827 t!301787))

(declare-fun b_and!276437 () Bool)

(declare-fun tp!1124054 () Bool)

(assert (=> b!3697882 (= tp!1124054 (and (=> t!301787 result!260824) b_and!276437))))

(declare-fun e!2290076 () Bool)

(assert (=> b!3697882 (= e!2290076 (and tp!1124053 tp!1124054))))

(declare-fun e!2290074 () Bool)

(declare-fun tp!1124051 () Bool)

(declare-fun b!3697881 () Bool)

(assert (=> b!3697881 (= e!2290074 (and tp!1124051 (inv!52767 (tag!6789 (h!44687 (t!301774 rules!3598)))) (inv!52770 (transformation!5959 (h!44687 (t!301774 rules!3598)))) e!2290076))))

(declare-fun b!3697880 () Bool)

(declare-fun e!2290077 () Bool)

(declare-fun tp!1124052 () Bool)

(assert (=> b!3697880 (= e!2290077 (and e!2290074 tp!1124052))))

(assert (=> b!3697698 (= tp!1123980 e!2290077)))

(assert (= b!3697881 b!3697882))

(assert (= b!3697880 b!3697881))

(assert (= (and b!3697698 (is-Cons!39267 (t!301774 rules!3598))) b!3697880))

(declare-fun m!4209257 () Bool)

(assert (=> b!3697881 m!4209257))

(declare-fun m!4209259 () Bool)

(assert (=> b!3697881 m!4209259))

(declare-fun b_lambda!109679 () Bool)

(assert (= b_lambda!109677 (or (and b!3697706 b_free!98435 (= (toChars!8150 (transformation!5959 (h!44687 rules!3598))) (toChars!8150 (transformation!5959 (rule!8819 token!544))))) (and b!3697701 b_free!98439) (and b!3697882 b_free!98451 (= (toChars!8150 (transformation!5959 (h!44687 (t!301774 rules!3598)))) (toChars!8150 (transformation!5959 (rule!8819 token!544))))) b_lambda!109679)))

(push 1)

(assert b_and!276415)

(assert b_and!276435)

(assert (not b!3697849))

(assert (not b!3697828))

(assert (not b!3697867))

(assert b_and!276437)

(assert (not d!1084483))

(assert (not b_next!99153))

(assert (not tb!214105))

(assert b_and!276433)

(assert (not b!3697827))

(assert (not b!3697795))

(assert (not b!3697881))

(assert (not b!3697799))

(assert (not b!3697871))

(assert (not b_next!99137))

(assert (not b!3697833))

(assert (not b!3697798))

(assert (not d!1084485))

(assert (not b_next!99139))

(assert (not d!1084461))

(assert (not b!3697818))

(assert (not b_lambda!109679))

(assert (not bm!267204))

(assert (not b!3697793))

(assert (not b!3697792))

(assert (not b!3697811))

(assert (not d!1084467))

(assert (not d!1084465))

(assert (not b!3697868))

(assert (not b_next!99155))

(assert (not b!3697812))

(assert (not b!3697813))

(assert (not b!3697758))

(assert (not d!1084453))

(assert (not b!3697880))

(assert (not b_next!99141))

(assert (not b!3697866))

(assert (not b!3697851))

(assert (not b!3697862))

(assert b_and!276411)

(assert (not b!3697750))

(assert (not b!3697850))

(assert (not b!3697761))

(assert (not b!3697794))

(assert (not b!3697800))

(assert (not b_next!99143))

(assert b_and!276431)

(assert (not b!3697796))

(assert tp_is_empty!18511)

(check-sat)

(pop 1)

(push 1)

(assert b_and!276415)

(assert b_and!276435)

(assert (not b_next!99137))

(assert (not b_next!99139))

(assert (not b_next!99155))

(assert b_and!276437)

(assert (not b_next!99141))

(assert b_and!276411)

(assert (not b_next!99143))

(assert (not b_next!99153))

(assert b_and!276433)

(assert b_and!276431)

(check-sat)

(pop 1)

