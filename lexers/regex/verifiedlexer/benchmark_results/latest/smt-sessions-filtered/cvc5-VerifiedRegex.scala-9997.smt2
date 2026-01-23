; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522760 () Bool)

(assert start!522760)

(declare-fun b!4958778 () Bool)

(declare-fun b_free!132427 () Bool)

(declare-fun b_next!133217 () Bool)

(assert (=> b!4958778 (= b_free!132427 (not b_next!133217))))

(declare-fun tp!1390742 () Bool)

(declare-fun b_and!347279 () Bool)

(assert (=> b!4958778 (= tp!1390742 b_and!347279)))

(declare-fun b_free!132429 () Bool)

(declare-fun b_next!133219 () Bool)

(assert (=> b!4958778 (= b_free!132429 (not b_next!133219))))

(declare-fun tp!1390741 () Bool)

(declare-fun b_and!347281 () Bool)

(assert (=> b!4958778 (= tp!1390741 b_and!347281)))

(declare-fun b!4958771 () Bool)

(declare-fun res!2116159 () Bool)

(declare-fun e!3099052 () Bool)

(assert (=> b!4958771 (=> (not res!2116159) (not e!3099052))))

(declare-datatypes ((List!57421 0))(
  ( (Nil!57297) (Cons!57297 (h!63745 (_ BitVec 16)) (t!367987 List!57421)) )
))
(declare-datatypes ((TokenValue!8655 0))(
  ( (FloatLiteralValue!17310 (text!61030 List!57421)) (TokenValueExt!8654 (__x!34603 Int)) (Broken!43275 (value!267250 List!57421)) (Object!8778) (End!8655) (Def!8655) (Underscore!8655) (Match!8655) (Else!8655) (Error!8655) (Case!8655) (If!8655) (Extends!8655) (Abstract!8655) (Class!8655) (Val!8655) (DelimiterValue!17310 (del!8715 List!57421)) (KeywordValue!8661 (value!267251 List!57421)) (CommentValue!17310 (value!267252 List!57421)) (WhitespaceValue!17310 (value!267253 List!57421)) (IndentationValue!8655 (value!267254 List!57421)) (String!65150) (Int32!8655) (Broken!43276 (value!267255 List!57421)) (Boolean!8656) (Unit!148191) (OperatorValue!8658 (op!8715 List!57421)) (IdentifierValue!17310 (value!267256 List!57421)) (IdentifierValue!17311 (value!267257 List!57421)) (WhitespaceValue!17311 (value!267258 List!57421)) (True!17310) (False!17310) (Broken!43277 (value!267259 List!57421)) (Broken!43278 (value!267260 List!57421)) (True!17311) (RightBrace!8655) (RightBracket!8655) (Colon!8655) (Null!8655) (Comma!8655) (LeftBracket!8655) (False!17311) (LeftBrace!8655) (ImaginaryLiteralValue!8655 (text!61031 List!57421)) (StringLiteralValue!25965 (value!267261 List!57421)) (EOFValue!8655 (value!267262 List!57421)) (IdentValue!8655 (value!267263 List!57421)) (DelimiterValue!17311 (value!267264 List!57421)) (DedentValue!8655 (value!267265 List!57421)) (NewLineValue!8655 (value!267266 List!57421)) (IntegerValue!25965 (value!267267 (_ BitVec 32)) (text!61032 List!57421)) (IntegerValue!25966 (value!267268 Int) (text!61033 List!57421)) (Times!8655) (Or!8655) (Equal!8655) (Minus!8655) (Broken!43279 (value!267269 List!57421)) (And!8655) (Div!8655) (LessEqual!8655) (Mod!8655) (Concat!22233) (Not!8655) (Plus!8655) (SpaceValue!8655 (value!267270 List!57421)) (IntegerValue!25967 (value!267271 Int) (text!61034 List!57421)) (StringLiteralValue!25966 (text!61035 List!57421)) (FloatLiteralValue!17311 (text!61036 List!57421)) (BytesLiteralValue!8655 (value!267272 List!57421)) (CommentValue!17311 (value!267273 List!57421)) (StringLiteralValue!25967 (value!267274 List!57421)) (ErrorTokenValue!8655 (msg!8716 List!57421)) )
))
(declare-datatypes ((C!27406 0))(
  ( (C!27407 (val!23069 Int)) )
))
(declare-datatypes ((List!57422 0))(
  ( (Nil!57298) (Cons!57298 (h!63746 C!27406) (t!367988 List!57422)) )
))
(declare-datatypes ((IArray!30255 0))(
  ( (IArray!30256 (innerList!15185 List!57422)) )
))
(declare-datatypes ((Regex!13578 0))(
  ( (ElementMatch!13578 (c!846370 C!27406)) (Concat!22234 (regOne!27668 Regex!13578) (regTwo!27668 Regex!13578)) (EmptyExpr!13578) (Star!13578 (reg!13907 Regex!13578)) (EmptyLang!13578) (Union!13578 (regOne!27669 Regex!13578) (regTwo!27669 Regex!13578)) )
))
(declare-datatypes ((String!65151 0))(
  ( (String!65152 (value!267275 String)) )
))
(declare-datatypes ((Conc!15097 0))(
  ( (Node!15097 (left!41788 Conc!15097) (right!42118 Conc!15097) (csize!30424 Int) (cheight!15308 Int)) (Leaf!25095 (xs!18423 IArray!30255) (csize!30425 Int)) (Empty!15097) )
))
(declare-datatypes ((BalanceConc!29624 0))(
  ( (BalanceConc!29625 (c!846371 Conc!15097)) )
))
(declare-datatypes ((TokenValueInjection!16618 0))(
  ( (TokenValueInjection!16619 (toValue!11296 Int) (toChars!11155 Int)) )
))
(declare-datatypes ((Rule!16490 0))(
  ( (Rule!16491 (regex!8345 Regex!13578) (tag!9209 String!65151) (isSeparator!8345 Bool) (transformation!8345 TokenValueInjection!16618)) )
))
(declare-datatypes ((List!57423 0))(
  ( (Nil!57299) (Cons!57299 (h!63747 Rule!16490) (t!367989 List!57423)) )
))
(declare-fun rulesArg!259 () List!57423)

(declare-fun isEmpty!30817 (List!57423) Bool)

(assert (=> b!4958771 (= res!2116159 (not (isEmpty!30817 rulesArg!259)))))

(declare-fun b!4958772 () Bool)

(declare-fun e!3099051 () Bool)

(declare-fun tp!1390746 () Bool)

(declare-fun e!3099050 () Bool)

(declare-fun inv!74787 (String!65151) Bool)

(declare-fun inv!74790 (TokenValueInjection!16618) Bool)

(assert (=> b!4958772 (= e!3099051 (and tp!1390746 (inv!74787 (tag!9209 (h!63747 rulesArg!259))) (inv!74790 (transformation!8345 (h!63747 rulesArg!259))) e!3099050))))

(declare-fun b!4958773 () Bool)

(declare-fun e!3099056 () Bool)

(declare-fun input!1342 () BalanceConc!29624)

(declare-fun tp!1390744 () Bool)

(declare-fun inv!74791 (Conc!15097) Bool)

(assert (=> b!4958773 (= e!3099056 (and (inv!74791 (c!846371 input!1342)) tp!1390744))))

(declare-fun b!4958774 () Bool)

(declare-fun e!3099055 () Bool)

(declare-fun totalInput!464 () BalanceConc!29624)

(declare-fun tp!1390745 () Bool)

(assert (=> b!4958774 (= e!3099055 (and (inv!74791 (c!846371 totalInput!464)) tp!1390745))))

(declare-fun res!2116161 () Bool)

(assert (=> start!522760 (=> (not res!2116161) (not e!3099052))))

(declare-datatypes ((LexerInterface!7937 0))(
  ( (LexerInterfaceExt!7934 (__x!34604 Int)) (Lexer!7935) )
))
(declare-fun thiss!15247 () LexerInterface!7937)

(assert (=> start!522760 (= res!2116161 (is-Lexer!7935 thiss!15247))))

(assert (=> start!522760 e!3099052))

(assert (=> start!522760 true))

(declare-fun e!3099059 () Bool)

(assert (=> start!522760 e!3099059))

(declare-fun inv!74792 (BalanceConc!29624) Bool)

(assert (=> start!522760 (and (inv!74792 input!1342) e!3099056)))

(assert (=> start!522760 (and (inv!74792 totalInput!464) e!3099055)))

(declare-fun b!4958775 () Bool)

(declare-fun e!3099058 () Bool)

(declare-fun lt!2047042 () Bool)

(declare-fun lt!2047040 () Bool)

(assert (=> b!4958775 (= e!3099058 (or (not (= lt!2047042 lt!2047040)) (not lt!2047042) lt!2047040))))

(declare-fun lt!2047039 () List!57422)

(declare-datatypes ((Token!15190 0))(
  ( (Token!15191 (value!267276 TokenValue!8655) (rule!11569 Rule!16490) (size!37983 Int) (originalCharacters!8626 List!57422)) )
))
(declare-datatypes ((tuple2!61928 0))(
  ( (tuple2!61929 (_1!34267 Token!15190) (_2!34267 List!57422)) )
))
(declare-datatypes ((Option!14359 0))(
  ( (None!14358) (Some!14358 (v!50343 tuple2!61928)) )
))
(declare-fun isDefined!11278 (Option!14359) Bool)

(declare-fun maxPrefixZipper!742 (LexerInterface!7937 List!57423 List!57422) Option!14359)

(assert (=> b!4958775 (= lt!2047040 (isDefined!11278 (maxPrefixZipper!742 thiss!15247 rulesArg!259 lt!2047039)))))

(declare-datatypes ((tuple2!61930 0))(
  ( (tuple2!61931 (_1!34268 Token!15190) (_2!34268 BalanceConc!29624)) )
))
(declare-datatypes ((Option!14360 0))(
  ( (None!14359) (Some!14359 (v!50344 tuple2!61930)) )
))
(declare-fun lt!2047044 () Option!14360)

(declare-fun isDefined!11279 (Option!14360) Bool)

(assert (=> b!4958775 (= lt!2047042 (isDefined!11279 lt!2047044))))

(declare-fun b!4958776 () Bool)

(declare-fun e!3099054 () Bool)

(assert (=> b!4958776 (= e!3099052 e!3099054)))

(declare-fun res!2116160 () Bool)

(assert (=> b!4958776 (=> (not res!2116160) (not e!3099054))))

(declare-fun isSuffix!1144 (List!57422 List!57422) Bool)

(declare-fun list!18294 (BalanceConc!29624) List!57422)

(assert (=> b!4958776 (= res!2116160 (isSuffix!1144 lt!2047039 (list!18294 totalInput!464)))))

(assert (=> b!4958776 (= lt!2047039 (list!18294 input!1342))))

(declare-fun b!4958777 () Bool)

(declare-fun res!2116164 () Bool)

(assert (=> b!4958777 (=> (not res!2116164) (not e!3099052))))

(declare-fun rulesValidInductive!3248 (LexerInterface!7937 List!57423) Bool)

(assert (=> b!4958777 (= res!2116164 (rulesValidInductive!3248 thiss!15247 rulesArg!259))))

(assert (=> b!4958778 (= e!3099050 (and tp!1390742 tp!1390741))))

(declare-fun b!4958779 () Bool)

(declare-fun tp!1390743 () Bool)

(assert (=> b!4958779 (= e!3099059 (and e!3099051 tp!1390743))))

(declare-fun b!4958780 () Bool)

(declare-fun e!3099057 () Bool)

(assert (=> b!4958780 (= e!3099057 e!3099058)))

(declare-fun res!2116163 () Bool)

(assert (=> b!4958780 (=> res!2116163 e!3099058)))

(declare-fun lt!2047041 () Option!14360)

(assert (=> b!4958780 (= res!2116163 (or (and (is-None!14359 lt!2047044) (is-None!14359 lt!2047041)) (is-None!14359 lt!2047041) (is-None!14359 lt!2047044) (< (size!37983 (_1!34268 (v!50344 lt!2047044))) (size!37983 (_1!34268 (v!50344 lt!2047041))))))))

(declare-fun maxPrefixZipperSequenceV2!676 (LexerInterface!7937 List!57423 BalanceConc!29624 BalanceConc!29624) Option!14360)

(assert (=> b!4958780 (= lt!2047041 (maxPrefixZipperSequenceV2!676 thiss!15247 (t!367989 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!329 (LexerInterface!7937 Rule!16490 BalanceConc!29624 BalanceConc!29624) Option!14360)

(assert (=> b!4958780 (= lt!2047044 (maxPrefixOneRuleZipperSequenceV2!329 thiss!15247 (h!63747 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4958781 () Bool)

(assert (=> b!4958781 (= e!3099054 (not e!3099057))))

(declare-fun res!2116162 () Bool)

(assert (=> b!4958781 (=> res!2116162 e!3099057)))

(assert (=> b!4958781 (= res!2116162 (or (and (is-Cons!57299 rulesArg!259) (is-Nil!57299 (t!367989 rulesArg!259))) (not (is-Cons!57299 rulesArg!259))))))

(declare-fun isPrefix!5198 (List!57422 List!57422) Bool)

(assert (=> b!4958781 (isPrefix!5198 lt!2047039 lt!2047039)))

(declare-datatypes ((Unit!148192 0))(
  ( (Unit!148193) )
))
(declare-fun lt!2047043 () Unit!148192)

(declare-fun lemmaIsPrefixRefl!3522 (List!57422 List!57422) Unit!148192)

(assert (=> b!4958781 (= lt!2047043 (lemmaIsPrefixRefl!3522 lt!2047039 lt!2047039))))

(assert (= (and start!522760 res!2116161) b!4958777))

(assert (= (and b!4958777 res!2116164) b!4958771))

(assert (= (and b!4958771 res!2116159) b!4958776))

(assert (= (and b!4958776 res!2116160) b!4958781))

(assert (= (and b!4958781 (not res!2116162)) b!4958780))

(assert (= (and b!4958780 (not res!2116163)) b!4958775))

(assert (= b!4958772 b!4958778))

(assert (= b!4958779 b!4958772))

(assert (= (and start!522760 (is-Cons!57299 rulesArg!259)) b!4958779))

(assert (= start!522760 b!4958773))

(assert (= start!522760 b!4958774))

(declare-fun m!5983340 () Bool)

(assert (=> b!4958780 m!5983340))

(declare-fun m!5983342 () Bool)

(assert (=> b!4958780 m!5983342))

(declare-fun m!5983344 () Bool)

(assert (=> b!4958771 m!5983344))

(declare-fun m!5983346 () Bool)

(assert (=> b!4958776 m!5983346))

(assert (=> b!4958776 m!5983346))

(declare-fun m!5983348 () Bool)

(assert (=> b!4958776 m!5983348))

(declare-fun m!5983350 () Bool)

(assert (=> b!4958776 m!5983350))

(declare-fun m!5983352 () Bool)

(assert (=> b!4958777 m!5983352))

(declare-fun m!5983354 () Bool)

(assert (=> b!4958772 m!5983354))

(declare-fun m!5983356 () Bool)

(assert (=> b!4958772 m!5983356))

(declare-fun m!5983358 () Bool)

(assert (=> b!4958781 m!5983358))

(declare-fun m!5983360 () Bool)

(assert (=> b!4958781 m!5983360))

(declare-fun m!5983362 () Bool)

(assert (=> start!522760 m!5983362))

(declare-fun m!5983364 () Bool)

(assert (=> start!522760 m!5983364))

(declare-fun m!5983366 () Bool)

(assert (=> b!4958773 m!5983366))

(declare-fun m!5983368 () Bool)

(assert (=> b!4958774 m!5983368))

(declare-fun m!5983370 () Bool)

(assert (=> b!4958775 m!5983370))

(assert (=> b!4958775 m!5983370))

(declare-fun m!5983372 () Bool)

(assert (=> b!4958775 m!5983372))

(declare-fun m!5983374 () Bool)

(assert (=> b!4958775 m!5983374))

(push 1)

(assert (not b_next!133219))

(assert (not b!4958776))

(assert (not b_next!133217))

(assert (not b!4958781))

(assert (not b!4958777))

(assert b_and!347279)

(assert (not b!4958779))

(assert b_and!347281)

(assert (not b!4958771))

(assert (not start!522760))

(assert (not b!4958773))

(assert (not b!4958780))

(assert (not b!4958775))

(assert (not b!4958774))

(assert (not b!4958772))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347279)

(assert b_and!347281)

(assert (not b_next!133217))

(assert (not b_next!133219))

(check-sat)

(pop 1)

