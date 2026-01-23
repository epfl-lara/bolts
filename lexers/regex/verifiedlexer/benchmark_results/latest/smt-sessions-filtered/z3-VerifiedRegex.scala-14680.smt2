; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757448 () Bool)

(assert start!757448)

(declare-fun b!8044823 () Bool)

(declare-fun b_free!136235 () Bool)

(declare-fun b_next!137025 () Bool)

(assert (=> b!8044823 (= b_free!136235 (not b_next!137025))))

(declare-fun tp!2411063 () Bool)

(declare-fun b_and!354671 () Bool)

(assert (=> b!8044823 (= tp!2411063 b_and!354671)))

(declare-fun b_free!136237 () Bool)

(declare-fun b_next!137027 () Bool)

(assert (=> b!8044823 (= b_free!136237 (not b_next!137027))))

(declare-fun tp!2411067 () Bool)

(declare-fun b_and!354673 () Bool)

(assert (=> b!8044823 (= tp!2411067 b_and!354673)))

(declare-fun b!8044826 () Bool)

(declare-fun b_free!136239 () Bool)

(declare-fun b_next!137029 () Bool)

(assert (=> b!8044826 (= b_free!136239 (not b_next!137029))))

(declare-fun tp!2411061 () Bool)

(declare-fun b_and!354675 () Bool)

(assert (=> b!8044826 (= tp!2411061 b_and!354675)))

(declare-fun b_free!136241 () Bool)

(declare-fun b_next!137031 () Bool)

(assert (=> b!8044826 (= b_free!136241 (not b_next!137031))))

(declare-fun tp!2411064 () Bool)

(declare-fun b_and!354677 () Bool)

(assert (=> b!8044826 (= tp!2411064 b_and!354677)))

(declare-fun b!8044820 () Bool)

(declare-fun e!4739225 () Bool)

(declare-fun e!4739223 () Bool)

(declare-fun tp!2411062 () Bool)

(assert (=> b!8044820 (= e!4739225 (and e!4739223 tp!2411062))))

(declare-fun b!8044821 () Bool)

(declare-fun e!4739221 () Bool)

(assert (=> b!8044821 (= e!4739221 false)))

(declare-fun e!4739220 () Bool)

(declare-datatypes ((C!43964 0))(
  ( (C!43965 (val!32758 Int)) )
))
(declare-datatypes ((List!75384 0))(
  ( (Nil!75258) (Cons!75258 (h!81706 C!43964) (t!391154 List!75384)) )
))
(declare-datatypes ((IArray!32081 0))(
  ( (IArray!32082 (innerList!16098 List!75384)) )
))
(declare-datatypes ((Conc!16010 0))(
  ( (Node!16010 (left!57338 Conc!16010) (right!57668 Conc!16010) (csize!32250 Int) (cheight!16221 Int)) (Leaf!30691 (xs!19408 IArray!32081) (csize!32251 Int)) (Empty!16010) )
))
(declare-datatypes ((String!85083 0))(
  ( (String!85084 (value!292171 String)) )
))
(declare-datatypes ((List!75385 0))(
  ( (Nil!75259) (Cons!75259 (h!81707 (_ BitVec 16)) (t!391155 List!75385)) )
))
(declare-datatypes ((TokenValue!9062 0))(
  ( (FloatLiteralValue!18124 (text!63879 List!75385)) (TokenValueExt!9061 (__x!35405 Int)) (Broken!45310 (value!292172 List!75385)) (Object!9187) (End!9062) (Def!9062) (Underscore!9062) (Match!9062) (Else!9062) (Error!9062) (Case!9062) (If!9062) (Extends!9062) (Abstract!9062) (Class!9062) (Val!9062) (DelimiterValue!18124 (del!9122 List!75385)) (KeywordValue!9068 (value!292173 List!75385)) (CommentValue!18124 (value!292174 List!75385)) (WhitespaceValue!18124 (value!292175 List!75385)) (IndentationValue!9062 (value!292176 List!75385)) (String!85085) (Int32!9062) (Broken!45311 (value!292177 List!75385)) (Boolean!9063) (Unit!171105) (OperatorValue!9065 (op!9122 List!75385)) (IdentifierValue!18124 (value!292178 List!75385)) (IdentifierValue!18125 (value!292179 List!75385)) (WhitespaceValue!18125 (value!292180 List!75385)) (True!18124) (False!18124) (Broken!45312 (value!292181 List!75385)) (Broken!45313 (value!292182 List!75385)) (True!18125) (RightBrace!9062) (RightBracket!9062) (Colon!9062) (Null!9062) (Comma!9062) (LeftBracket!9062) (False!18125) (LeftBrace!9062) (ImaginaryLiteralValue!9062 (text!63880 List!75385)) (StringLiteralValue!27186 (value!292183 List!75385)) (EOFValue!9062 (value!292184 List!75385)) (IdentValue!9062 (value!292185 List!75385)) (DelimiterValue!18125 (value!292186 List!75385)) (DedentValue!9062 (value!292187 List!75385)) (NewLineValue!9062 (value!292188 List!75385)) (IntegerValue!27186 (value!292189 (_ BitVec 32)) (text!63881 List!75385)) (IntegerValue!27187 (value!292190 Int) (text!63882 List!75385)) (Times!9062) (Or!9062) (Equal!9062) (Minus!9062) (Broken!45314 (value!292191 List!75385)) (And!9062) (Div!9062) (LessEqual!9062) (Mod!9062) (Concat!30875) (Not!9062) (Plus!9062) (SpaceValue!9062 (value!292192 List!75385)) (IntegerValue!27188 (value!292193 Int) (text!63883 List!75385)) (StringLiteralValue!27187 (text!63884 List!75385)) (FloatLiteralValue!18125 (text!63885 List!75385)) (BytesLiteralValue!9062 (value!292194 List!75385)) (CommentValue!18125 (value!292195 List!75385)) (StringLiteralValue!27188 (value!292196 List!75385)) (ErrorTokenValue!9062 (msg!9123 List!75385)) )
))
(declare-datatypes ((BalanceConc!30976 0))(
  ( (BalanceConc!30977 (c!1475397 Conc!16010)) )
))
(declare-datatypes ((TokenValueInjection!17432 0))(
  ( (TokenValueInjection!17433 (toValue!11817 Int) (toChars!11676 Int)) )
))
(declare-datatypes ((Regex!21813 0))(
  ( (ElementMatch!21813 (c!1475398 C!43964)) (Concat!30876 (regOne!44138 Regex!21813) (regTwo!44138 Regex!21813)) (EmptyExpr!21813) (Star!21813 (reg!22142 Regex!21813)) (EmptyLang!21813) (Union!21813 (regOne!44139 Regex!21813) (regTwo!44139 Regex!21813)) )
))
(declare-datatypes ((Rule!17284 0))(
  ( (Rule!17285 (regex!8742 Regex!21813) (tag!9606 String!85083) (isSeparator!8742 Bool) (transformation!8742 TokenValueInjection!17432)) )
))
(declare-fun r!4387 () Rule!17284)

(declare-fun tp!2411065 () Bool)

(declare-fun b!8044822 () Bool)

(declare-fun e!4739217 () Bool)

(declare-fun inv!97022 (String!85083) Bool)

(declare-fun inv!97024 (TokenValueInjection!17432) Bool)

(assert (=> b!8044822 (= e!4739220 (and tp!2411065 (inv!97022 (tag!9606 r!4387)) (inv!97024 (transformation!8742 r!4387)) e!4739217))))

(assert (=> b!8044823 (= e!4739217 (and tp!2411063 tp!2411067))))

(declare-fun b!8044824 () Bool)

(declare-fun res!3180084 () Bool)

(assert (=> b!8044824 (=> (not res!3180084) (not e!4739221))))

(declare-datatypes ((LexerInterface!8332 0))(
  ( (LexerInterfaceExt!8329 (__x!35406 Int)) (Lexer!8330) )
))
(declare-fun thiss!26855 () LexerInterface!8332)

(declare-datatypes ((List!75386 0))(
  ( (Nil!75260) (Cons!75260 (h!81708 Rule!17284) (t!391156 List!75386)) )
))
(declare-fun rules!4030 () List!75386)

(declare-fun rulesValidInductive!3461 (LexerInterface!8332 List!75386) Bool)

(assert (=> b!8044824 (= res!3180084 (rulesValidInductive!3461 thiss!26855 rules!4030))))

(declare-fun b!8044825 () Bool)

(declare-fun res!3180085 () Bool)

(assert (=> b!8044825 (=> (not res!3180085) (not e!4739221))))

(declare-fun lt!2722606 () List!75386)

(declare-datatypes ((List!75387 0))(
  ( (Nil!75261) (Cons!75261 (h!81709 String!85083) (t!391157 List!75387)) )
))
(declare-fun noDuplicateTag!3320 (LexerInterface!8332 List!75386 List!75387) Bool)

(assert (=> b!8044825 (= res!3180085 (noDuplicateTag!3320 thiss!26855 lt!2722606 Nil!75261))))

(declare-fun e!4739218 () Bool)

(assert (=> b!8044826 (= e!4739218 (and tp!2411061 tp!2411064))))

(declare-fun b!8044827 () Bool)

(declare-fun res!3180081 () Bool)

(assert (=> b!8044827 (=> (not res!3180081) (not e!4739221))))

(assert (=> b!8044827 (= res!3180081 (rulesValidInductive!3461 thiss!26855 lt!2722606))))

(declare-fun res!3180082 () Bool)

(declare-fun e!4739222 () Bool)

(assert (=> start!757448 (=> (not res!3180082) (not e!4739222))))

(get-info :version)

(assert (=> start!757448 (= res!3180082 ((_ is Lexer!8330) thiss!26855))))

(assert (=> start!757448 e!4739222))

(assert (=> start!757448 true))

(assert (=> start!757448 e!4739220))

(assert (=> start!757448 e!4739225))

(declare-fun b!8044819 () Bool)

(declare-fun res!3180083 () Bool)

(assert (=> b!8044819 (=> (not res!3180083) (not e!4739221))))

(assert (=> b!8044819 (= res!3180083 (noDuplicateTag!3320 thiss!26855 rules!4030 (Cons!75261 (tag!9606 r!4387) Nil!75261)))))

(declare-fun b!8044828 () Bool)

(declare-fun tp!2411066 () Bool)

(assert (=> b!8044828 (= e!4739223 (and tp!2411066 (inv!97022 (tag!9606 (h!81708 rules!4030))) (inv!97024 (transformation!8742 (h!81708 rules!4030))) e!4739218))))

(declare-fun b!8044829 () Bool)

(assert (=> b!8044829 (= e!4739222 e!4739221)))

(declare-fun res!3180080 () Bool)

(assert (=> b!8044829 (=> (not res!3180080) (not e!4739221))))

(declare-fun rulesInvariant!6800 (LexerInterface!8332 List!75386) Bool)

(assert (=> b!8044829 (= res!3180080 (rulesInvariant!6800 thiss!26855 lt!2722606))))

(assert (=> b!8044829 (= lt!2722606 (Cons!75260 r!4387 rules!4030))))

(assert (= (and start!757448 res!3180082) b!8044829))

(assert (= (and b!8044829 res!3180080) b!8044827))

(assert (= (and b!8044827 res!3180081) b!8044825))

(assert (= (and b!8044825 res!3180085) b!8044824))

(assert (= (and b!8044824 res!3180084) b!8044819))

(assert (= (and b!8044819 res!3180083) b!8044821))

(assert (= b!8044822 b!8044823))

(assert (= start!757448 b!8044822))

(assert (= b!8044828 b!8044826))

(assert (= b!8044820 b!8044828))

(assert (= (and start!757448 ((_ is Cons!75260) rules!4030)) b!8044820))

(declare-fun m!8397624 () Bool)

(assert (=> b!8044829 m!8397624))

(declare-fun m!8397626 () Bool)

(assert (=> b!8044819 m!8397626))

(declare-fun m!8397628 () Bool)

(assert (=> b!8044825 m!8397628))

(declare-fun m!8397630 () Bool)

(assert (=> b!8044827 m!8397630))

(declare-fun m!8397632 () Bool)

(assert (=> b!8044822 m!8397632))

(declare-fun m!8397634 () Bool)

(assert (=> b!8044822 m!8397634))

(declare-fun m!8397636 () Bool)

(assert (=> b!8044828 m!8397636))

(declare-fun m!8397638 () Bool)

(assert (=> b!8044828 m!8397638))

(declare-fun m!8397640 () Bool)

(assert (=> b!8044824 m!8397640))

(check-sat (not b!8044828) (not b!8044822) (not b_next!137029) (not b!8044829) b_and!354671 (not b!8044819) (not b!8044824) (not b_next!137031) (not b_next!137027) b_and!354673 (not b!8044825) (not b_next!137025) (not b!8044820) b_and!354677 (not b!8044827) b_and!354675)
(check-sat (not b_next!137025) b_and!354677 (not b_next!137029) b_and!354671 b_and!354675 (not b_next!137031) (not b_next!137027) b_and!354673)
