; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757632 () Bool)

(assert start!757632)

(declare-fun b!8046195 () Bool)

(declare-fun b_free!136407 () Bool)

(declare-fun b_next!137197 () Bool)

(assert (=> b!8046195 (= b_free!136407 (not b_next!137197))))

(declare-fun tp!2411961 () Bool)

(declare-fun b_and!354843 () Bool)

(assert (=> b!8046195 (= tp!2411961 b_and!354843)))

(declare-fun b_free!136409 () Bool)

(declare-fun b_next!137199 () Bool)

(assert (=> b!8046195 (= b_free!136409 (not b_next!137199))))

(declare-fun tp!2411960 () Bool)

(declare-fun b_and!354845 () Bool)

(assert (=> b!8046195 (= tp!2411960 b_and!354845)))

(declare-fun e!4740273 () Bool)

(assert (=> b!8046195 (= e!4740273 (and tp!2411961 tp!2411960))))

(declare-fun b!8046196 () Bool)

(declare-fun res!3180709 () Bool)

(declare-fun e!4740277 () Bool)

(assert (=> b!8046196 (=> (not res!3180709) (not e!4740277))))

(declare-datatypes ((List!75450 0))(
  ( (Nil!75324) (Cons!75324 (h!81772 (_ BitVec 16)) (t!391220 List!75450)) )
))
(declare-datatypes ((TokenValue!9078 0))(
  ( (FloatLiteralValue!18156 (text!63991 List!75450)) (TokenValueExt!9077 (__x!35437 Int)) (Broken!45390 (value!292616 List!75450)) (Object!9203) (End!9078) (Def!9078) (Underscore!9078) (Match!9078) (Else!9078) (Error!9078) (Case!9078) (If!9078) (Extends!9078) (Abstract!9078) (Class!9078) (Val!9078) (DelimiterValue!18156 (del!9138 List!75450)) (KeywordValue!9084 (value!292617 List!75450)) (CommentValue!18156 (value!292618 List!75450)) (WhitespaceValue!18156 (value!292619 List!75450)) (IndentationValue!9078 (value!292620 List!75450)) (String!85171) (Int32!9078) (Broken!45391 (value!292621 List!75450)) (Boolean!9079) (Unit!171129) (OperatorValue!9081 (op!9138 List!75450)) (IdentifierValue!18156 (value!292622 List!75450)) (IdentifierValue!18157 (value!292623 List!75450)) (WhitespaceValue!18157 (value!292624 List!75450)) (True!18156) (False!18156) (Broken!45392 (value!292625 List!75450)) (Broken!45393 (value!292626 List!75450)) (True!18157) (RightBrace!9078) (RightBracket!9078) (Colon!9078) (Null!9078) (Comma!9078) (LeftBracket!9078) (False!18157) (LeftBrace!9078) (ImaginaryLiteralValue!9078 (text!63992 List!75450)) (StringLiteralValue!27234 (value!292627 List!75450)) (EOFValue!9078 (value!292628 List!75450)) (IdentValue!9078 (value!292629 List!75450)) (DelimiterValue!18157 (value!292630 List!75450)) (DedentValue!9078 (value!292631 List!75450)) (NewLineValue!9078 (value!292632 List!75450)) (IntegerValue!27234 (value!292633 (_ BitVec 32)) (text!63993 List!75450)) (IntegerValue!27235 (value!292634 Int) (text!63994 List!75450)) (Times!9078) (Or!9078) (Equal!9078) (Minus!9078) (Broken!45394 (value!292635 List!75450)) (And!9078) (Div!9078) (LessEqual!9078) (Mod!9078) (Concat!30907) (Not!9078) (Plus!9078) (SpaceValue!9078 (value!292636 List!75450)) (IntegerValue!27236 (value!292637 Int) (text!63995 List!75450)) (StringLiteralValue!27235 (text!63996 List!75450)) (FloatLiteralValue!18157 (text!63997 List!75450)) (BytesLiteralValue!9078 (value!292638 List!75450)) (CommentValue!18157 (value!292639 List!75450)) (StringLiteralValue!27236 (value!292640 List!75450)) (ErrorTokenValue!9078 (msg!9139 List!75450)) )
))
(declare-datatypes ((C!43996 0))(
  ( (C!43997 (val!32774 Int)) )
))
(declare-datatypes ((Regex!21829 0))(
  ( (ElementMatch!21829 (c!1475429 C!43996)) (Concat!30908 (regOne!44170 Regex!21829) (regTwo!44170 Regex!21829)) (EmptyExpr!21829) (Star!21829 (reg!22158 Regex!21829)) (EmptyLang!21829) (Union!21829 (regOne!44171 Regex!21829) (regTwo!44171 Regex!21829)) )
))
(declare-datatypes ((String!85172 0))(
  ( (String!85173 (value!292641 String)) )
))
(declare-datatypes ((List!75451 0))(
  ( (Nil!75325) (Cons!75325 (h!81773 C!43996) (t!391221 List!75451)) )
))
(declare-datatypes ((IArray!32113 0))(
  ( (IArray!32114 (innerList!16114 List!75451)) )
))
(declare-datatypes ((Conc!16026 0))(
  ( (Node!16026 (left!57383 Conc!16026) (right!57713 Conc!16026) (csize!32282 Int) (cheight!16237 Int)) (Leaf!30716 (xs!19424 IArray!32113) (csize!32283 Int)) (Empty!16026) )
))
(declare-datatypes ((BalanceConc!31008 0))(
  ( (BalanceConc!31009 (c!1475430 Conc!16026)) )
))
(declare-datatypes ((TokenValueInjection!17464 0))(
  ( (TokenValueInjection!17465 (toValue!11841 Int) (toChars!11700 Int)) )
))
(declare-datatypes ((Rule!17316 0))(
  ( (Rule!17317 (regex!8758 Regex!21829) (tag!9622 String!85172) (isSeparator!8758 Bool) (transformation!8758 TokenValueInjection!17464)) )
))
(declare-datatypes ((List!75452 0))(
  ( (Nil!75326) (Cons!75326 (h!81774 Rule!17316) (t!391222 List!75452)) )
))
(declare-fun rules!4081 () List!75452)

(get-info :version)

(assert (=> b!8046196 (= res!3180709 ((_ is Cons!75326) rules!4081))))

(declare-fun b!8046197 () Bool)

(declare-fun res!3180712 () Bool)

(assert (=> b!8046197 (=> (not res!3180712) (not e!4740277))))

(declare-datatypes ((List!75453 0))(
  ( (Nil!75327) (Cons!75327 (h!81775 String!85172) (t!391223 List!75453)) )
))
(declare-fun acc!573 () List!75453)

(declare-datatypes ((LexerInterface!8348 0))(
  ( (LexerInterfaceExt!8345 (__x!35438 Int)) (Lexer!8346) )
))
(declare-fun thiss!26941 () LexerInterface!8348)

(declare-fun noDuplicateTag!3336 (LexerInterface!8348 List!75452 List!75453) Bool)

(assert (=> b!8046197 (= res!3180712 (noDuplicateTag!3336 thiss!26941 rules!4081 acc!573))))

(declare-fun b!8046198 () Bool)

(declare-fun res!3180711 () Bool)

(assert (=> b!8046198 (=> (not res!3180711) (not e!4740277))))

(declare-fun newAcc!87 () List!75453)

(declare-fun subseq!909 (List!75453 List!75453) Bool)

(assert (=> b!8046198 (= res!3180711 (subseq!909 newAcc!87 acc!573))))

(declare-fun tp!2411964 () Bool)

(declare-fun e!4740272 () Bool)

(declare-fun b!8046199 () Bool)

(declare-fun inv!97065 (String!85172) Bool)

(declare-fun inv!97067 (TokenValueInjection!17464) Bool)

(assert (=> b!8046199 (= e!4740272 (and tp!2411964 (inv!97065 (tag!9622 (h!81774 rules!4081))) (inv!97067 (transformation!8758 (h!81774 rules!4081))) e!4740273))))

(declare-fun b!8046200 () Bool)

(declare-fun e!4740270 () Bool)

(assert (=> b!8046200 (= e!4740277 e!4740270)))

(declare-fun res!3180710 () Bool)

(assert (=> b!8046200 (=> (not res!3180710) (not e!4740270))))

(declare-fun lt!2722774 () List!75453)

(assert (=> b!8046200 (= res!3180710 (subseq!909 (Cons!75327 (tag!9622 (h!81774 rules!4081)) newAcc!87) lt!2722774))))

(assert (=> b!8046200 (= lt!2722774 (Cons!75327 (tag!9622 (h!81774 rules!4081)) acc!573))))

(declare-fun b!8046201 () Bool)

(declare-fun e!4740275 () Bool)

(declare-fun tp!2411965 () Bool)

(assert (=> b!8046201 (= e!4740275 (and (inv!97065 (h!81775 acc!573)) tp!2411965))))

(declare-fun res!3180713 () Bool)

(assert (=> start!757632 (=> (not res!3180713) (not e!4740277))))

(assert (=> start!757632 (= res!3180713 ((_ is Lexer!8346) thiss!26941))))

(assert (=> start!757632 e!4740277))

(assert (=> start!757632 true))

(declare-fun e!4740276 () Bool)

(assert (=> start!757632 e!4740276))

(assert (=> start!757632 e!4740275))

(declare-fun e!4740274 () Bool)

(assert (=> start!757632 e!4740274))

(declare-fun b!8046194 () Bool)

(declare-fun tp!2411963 () Bool)

(assert (=> b!8046194 (= e!4740276 (and (inv!97065 (h!81775 newAcc!87)) tp!2411963))))

(declare-fun b!8046202 () Bool)

(declare-fun tp!2411962 () Bool)

(assert (=> b!8046202 (= e!4740274 (and e!4740272 tp!2411962))))

(declare-fun b!8046203 () Bool)

(assert (=> b!8046203 (= e!4740270 false)))

(declare-fun lt!2722773 () Bool)

(assert (=> b!8046203 (= lt!2722773 (noDuplicateTag!3336 thiss!26941 (t!391222 rules!4081) lt!2722774))))

(assert (= (and start!757632 res!3180713) b!8046198))

(assert (= (and b!8046198 res!3180711) b!8046197))

(assert (= (and b!8046197 res!3180712) b!8046196))

(assert (= (and b!8046196 res!3180709) b!8046200))

(assert (= (and b!8046200 res!3180710) b!8046203))

(assert (= (and start!757632 ((_ is Cons!75327) newAcc!87)) b!8046194))

(assert (= (and start!757632 ((_ is Cons!75327) acc!573)) b!8046201))

(assert (= b!8046199 b!8046195))

(assert (= b!8046202 b!8046199))

(assert (= (and start!757632 ((_ is Cons!75326) rules!4081)) b!8046202))

(declare-fun m!8398446 () Bool)

(assert (=> b!8046200 m!8398446))

(declare-fun m!8398448 () Bool)

(assert (=> b!8046198 m!8398448))

(declare-fun m!8398450 () Bool)

(assert (=> b!8046201 m!8398450))

(declare-fun m!8398452 () Bool)

(assert (=> b!8046197 m!8398452))

(declare-fun m!8398454 () Bool)

(assert (=> b!8046203 m!8398454))

(declare-fun m!8398456 () Bool)

(assert (=> b!8046194 m!8398456))

(declare-fun m!8398458 () Bool)

(assert (=> b!8046199 m!8398458))

(declare-fun m!8398460 () Bool)

(assert (=> b!8046199 m!8398460))

(check-sat (not b!8046198) (not b!8046197) (not b_next!137197) (not b!8046201) b_and!354843 (not b_next!137199) (not b!8046200) (not b!8046199) b_and!354845 (not b!8046194) (not b!8046202) (not b!8046203))
(check-sat b_and!354845 b_and!354843 (not b_next!137199) (not b_next!137197))
