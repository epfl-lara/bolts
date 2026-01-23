; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54064 () Bool)

(assert start!54064)

(declare-fun b!582897 () Bool)

(declare-fun b_free!16221 () Bool)

(declare-fun b_next!16237 () Bool)

(assert (=> b!582897 (= b_free!16221 (not b_next!16237))))

(declare-fun tp!181869 () Bool)

(declare-fun b_and!57403 () Bool)

(assert (=> b!582897 (= tp!181869 b_and!57403)))

(declare-fun b_free!16223 () Bool)

(declare-fun b_next!16239 () Bool)

(assert (=> b!582897 (= b_free!16223 (not b_next!16239))))

(declare-fun tp!181870 () Bool)

(declare-fun b_and!57405 () Bool)

(assert (=> b!582897 (= tp!181870 b_and!57405)))

(declare-fun b!582892 () Bool)

(declare-fun b_free!16225 () Bool)

(declare-fun b_next!16241 () Bool)

(assert (=> b!582892 (= b_free!16225 (not b_next!16241))))

(declare-fun tp!181868 () Bool)

(declare-fun b_and!57407 () Bool)

(assert (=> b!582892 (= tp!181868 b_and!57407)))

(declare-fun b_free!16227 () Bool)

(declare-fun b_next!16243 () Bool)

(assert (=> b!582892 (= b_free!16227 (not b_next!16243))))

(declare-fun tp!181874 () Bool)

(declare-fun b_and!57409 () Bool)

(assert (=> b!582892 (= tp!181874 b_and!57409)))

(declare-fun b!582883 () Bool)

(declare-fun e!352328 () Bool)

(declare-datatypes ((C!3820 0))(
  ( (C!3821 (val!2136 Int)) )
))
(declare-datatypes ((List!5734 0))(
  ( (Nil!5724) (Cons!5724 (h!11125 C!3820) (t!78247 List!5734)) )
))
(declare-fun lt!247424 () List!5734)

(declare-fun input!2705 () List!5734)

(declare-fun size!4554 (List!5734) Int)

(assert (=> b!582883 (= e!352328 (not (= (size!4554 lt!247424) (size!4554 input!2705))))))

(declare-fun b!582884 () Bool)

(declare-fun e!352330 () Bool)

(declare-fun e!352325 () Bool)

(assert (=> b!582884 (= e!352330 e!352325)))

(declare-fun res!251054 () Bool)

(assert (=> b!582884 (=> (not res!251054) (not e!352325))))

(declare-datatypes ((Regex!1449 0))(
  ( (ElementMatch!1449 (c!109065 C!3820)) (Concat!2588 (regOne!3410 Regex!1449) (regTwo!3410 Regex!1449)) (EmptyExpr!1449) (Star!1449 (reg!1778 Regex!1449)) (EmptyLang!1449) (Union!1449 (regOne!3411 Regex!1449) (regTwo!3411 Regex!1449)) )
))
(declare-datatypes ((List!5735 0))(
  ( (Nil!5725) (Cons!5725 (h!11126 (_ BitVec 16)) (t!78248 List!5735)) )
))
(declare-datatypes ((IArray!3665 0))(
  ( (IArray!3666 (innerList!1890 List!5734)) )
))
(declare-datatypes ((Conc!1832 0))(
  ( (Node!1832 (left!4670 Conc!1832) (right!5000 Conc!1832) (csize!3894 Int) (cheight!2043 Int)) (Leaf!2897 (xs!4469 IArray!3665) (csize!3895 Int)) (Empty!1832) )
))
(declare-datatypes ((BalanceConc!3672 0))(
  ( (BalanceConc!3673 (c!109066 Conc!1832)) )
))
(declare-datatypes ((TokenValue!1139 0))(
  ( (FloatLiteralValue!2278 (text!8418 List!5735)) (TokenValueExt!1138 (__x!4176 Int)) (Broken!5695 (value!36618 List!5735)) (Object!1148) (End!1139) (Def!1139) (Underscore!1139) (Match!1139) (Else!1139) (Error!1139) (Case!1139) (If!1139) (Extends!1139) (Abstract!1139) (Class!1139) (Val!1139) (DelimiterValue!2278 (del!1199 List!5735)) (KeywordValue!1145 (value!36619 List!5735)) (CommentValue!2278 (value!36620 List!5735)) (WhitespaceValue!2278 (value!36621 List!5735)) (IndentationValue!1139 (value!36622 List!5735)) (String!7438) (Int32!1139) (Broken!5696 (value!36623 List!5735)) (Boolean!1140) (Unit!10416) (OperatorValue!1142 (op!1199 List!5735)) (IdentifierValue!2278 (value!36624 List!5735)) (IdentifierValue!2279 (value!36625 List!5735)) (WhitespaceValue!2279 (value!36626 List!5735)) (True!2278) (False!2278) (Broken!5697 (value!36627 List!5735)) (Broken!5698 (value!36628 List!5735)) (True!2279) (RightBrace!1139) (RightBracket!1139) (Colon!1139) (Null!1139) (Comma!1139) (LeftBracket!1139) (False!2279) (LeftBrace!1139) (ImaginaryLiteralValue!1139 (text!8419 List!5735)) (StringLiteralValue!3417 (value!36629 List!5735)) (EOFValue!1139 (value!36630 List!5735)) (IdentValue!1139 (value!36631 List!5735)) (DelimiterValue!2279 (value!36632 List!5735)) (DedentValue!1139 (value!36633 List!5735)) (NewLineValue!1139 (value!36634 List!5735)) (IntegerValue!3417 (value!36635 (_ BitVec 32)) (text!8420 List!5735)) (IntegerValue!3418 (value!36636 Int) (text!8421 List!5735)) (Times!1139) (Or!1139) (Equal!1139) (Minus!1139) (Broken!5699 (value!36637 List!5735)) (And!1139) (Div!1139) (LessEqual!1139) (Mod!1139) (Concat!2589) (Not!1139) (Plus!1139) (SpaceValue!1139 (value!36638 List!5735)) (IntegerValue!3419 (value!36639 Int) (text!8422 List!5735)) (StringLiteralValue!3418 (text!8423 List!5735)) (FloatLiteralValue!2279 (text!8424 List!5735)) (BytesLiteralValue!1139 (value!36640 List!5735)) (CommentValue!2279 (value!36641 List!5735)) (StringLiteralValue!3419 (value!36642 List!5735)) (ErrorTokenValue!1139 (msg!1200 List!5735)) )
))
(declare-datatypes ((String!7439 0))(
  ( (String!7440 (value!36643 String)) )
))
(declare-datatypes ((TokenValueInjection!2046 0))(
  ( (TokenValueInjection!2047 (toValue!1982 Int) (toChars!1841 Int)) )
))
(declare-datatypes ((Rule!2030 0))(
  ( (Rule!2031 (regex!1115 Regex!1449) (tag!1377 String!7439) (isSeparator!1115 Bool) (transformation!1115 TokenValueInjection!2046)) )
))
(declare-datatypes ((Token!1966 0))(
  ( (Token!1967 (value!36644 TokenValue!1139) (rule!1873 Rule!2030) (size!4555 Int) (originalCharacters!1154 List!5734)) )
))
(declare-datatypes ((tuple2!6700 0))(
  ( (tuple2!6701 (_1!3614 Token!1966) (_2!3614 List!5734)) )
))
(declare-datatypes ((Option!1466 0))(
  ( (None!1465) (Some!1465 (v!16334 tuple2!6700)) )
))
(declare-fun lt!247423 () Option!1466)

(declare-fun isDefined!1277 (Option!1466) Bool)

(assert (=> b!582884 (= res!251054 (isDefined!1277 lt!247423))))

(declare-datatypes ((List!5736 0))(
  ( (Nil!5726) (Cons!5726 (h!11127 Rule!2030) (t!78249 List!5736)) )
))
(declare-fun rules!3103 () List!5736)

(declare-datatypes ((LexerInterface!1001 0))(
  ( (LexerInterfaceExt!998 (__x!4177 Int)) (Lexer!999) )
))
(declare-fun thiss!22590 () LexerInterface!1001)

(declare-fun lt!247426 () List!5734)

(declare-fun maxPrefix!699 (LexerInterface!1001 List!5736 List!5734) Option!1466)

(assert (=> b!582884 (= lt!247423 (maxPrefix!699 thiss!22590 rules!3103 lt!247426))))

(declare-fun suffix!1342 () List!5734)

(declare-fun ++!1603 (List!5734 List!5734) List!5734)

(assert (=> b!582884 (= lt!247426 (++!1603 input!2705 suffix!1342))))

(declare-fun e!352332 () Bool)

(declare-fun tp!181871 () Bool)

(declare-fun token!491 () Token!1966)

(declare-fun e!352333 () Bool)

(declare-fun b!582885 () Bool)

(declare-fun inv!7212 (String!7439) Bool)

(declare-fun inv!7215 (TokenValueInjection!2046) Bool)

(assert (=> b!582885 (= e!352332 (and tp!181871 (inv!7212 (tag!1377 (rule!1873 token!491))) (inv!7215 (transformation!1115 (rule!1873 token!491))) e!352333))))

(declare-fun b!582886 () Bool)

(assert (=> b!582886 (= e!352325 e!352328)))

(declare-fun res!251056 () Bool)

(assert (=> b!582886 (=> (not res!251056) (not e!352328))))

(declare-fun lt!247425 () tuple2!6700)

(assert (=> b!582886 (= res!251056 (and (= (_1!3614 lt!247425) token!491) (= (_2!3614 lt!247425) suffix!1342)))))

(declare-fun get!2187 (Option!1466) tuple2!6700)

(assert (=> b!582886 (= lt!247425 (get!2187 lt!247423))))

(declare-fun b!582888 () Bool)

(declare-fun e!352329 () Bool)

(declare-fun tp_is_empty!3253 () Bool)

(declare-fun tp!181872 () Bool)

(assert (=> b!582888 (= e!352329 (and tp_is_empty!3253 tp!181872))))

(declare-fun b!582889 () Bool)

(declare-fun res!251061 () Bool)

(declare-fun e!352331 () Bool)

(assert (=> b!582889 (=> (not res!251061) (not e!352331))))

(declare-fun isEmpty!4133 (List!5736) Bool)

(assert (=> b!582889 (= res!251061 (not (isEmpty!4133 rules!3103)))))

(declare-fun b!582890 () Bool)

(declare-fun e!352335 () Bool)

(declare-fun tp!181875 () Bool)

(declare-fun inv!21 (TokenValue!1139) Bool)

(assert (=> b!582890 (= e!352335 (and (inv!21 (value!36644 token!491)) e!352332 tp!181875))))

(declare-fun b!582891 () Bool)

(declare-fun e!352323 () Bool)

(declare-fun e!352326 () Bool)

(declare-fun tp!181876 () Bool)

(assert (=> b!582891 (= e!352323 (and e!352326 tp!181876))))

(declare-fun e!352336 () Bool)

(assert (=> b!582892 (= e!352336 (and tp!181868 tp!181874))))

(declare-fun b!582893 () Bool)

(declare-fun res!251060 () Bool)

(assert (=> b!582893 (=> (not res!251060) (not e!352328))))

(assert (=> b!582893 (= res!251060 (= (++!1603 lt!247424 suffix!1342) lt!247426))))

(declare-fun res!251055 () Bool)

(assert (=> start!54064 (=> (not res!251055) (not e!352331))))

(get-info :version)

(assert (=> start!54064 (= res!251055 ((_ is Lexer!999) thiss!22590))))

(assert (=> start!54064 e!352331))

(declare-fun e!352334 () Bool)

(assert (=> start!54064 e!352334))

(assert (=> start!54064 e!352323))

(declare-fun inv!7216 (Token!1966) Bool)

(assert (=> start!54064 (and (inv!7216 token!491) e!352335)))

(assert (=> start!54064 true))

(assert (=> start!54064 e!352329))

(declare-fun b!582887 () Bool)

(declare-fun res!251057 () Bool)

(assert (=> b!582887 (=> (not res!251057) (not e!352331))))

(declare-fun isEmpty!4134 (List!5734) Bool)

(assert (=> b!582887 (= res!251057 (not (isEmpty!4134 input!2705)))))

(declare-fun b!582894 () Bool)

(assert (=> b!582894 (= e!352331 e!352330)))

(declare-fun res!251062 () Bool)

(assert (=> b!582894 (=> (not res!251062) (not e!352330))))

(assert (=> b!582894 (= res!251062 (= lt!247424 input!2705))))

(declare-fun list!2382 (BalanceConc!3672) List!5734)

(declare-fun charsOf!744 (Token!1966) BalanceConc!3672)

(assert (=> b!582894 (= lt!247424 (list!2382 (charsOf!744 token!491)))))

(declare-fun b!582895 () Bool)

(declare-fun res!251059 () Bool)

(assert (=> b!582895 (=> (not res!251059) (not e!352331))))

(declare-fun rulesInvariant!964 (LexerInterface!1001 List!5736) Bool)

(assert (=> b!582895 (= res!251059 (rulesInvariant!964 thiss!22590 rules!3103))))

(declare-fun b!582896 () Bool)

(declare-fun res!251058 () Bool)

(assert (=> b!582896 (=> (not res!251058) (not e!352328))))

(assert (=> b!582896 (= res!251058 ((_ is Some!1465) (maxPrefix!699 thiss!22590 rules!3103 input!2705)))))

(assert (=> b!582897 (= e!352333 (and tp!181869 tp!181870))))

(declare-fun b!582898 () Bool)

(declare-fun tp!181873 () Bool)

(assert (=> b!582898 (= e!352334 (and tp_is_empty!3253 tp!181873))))

(declare-fun b!582899 () Bool)

(declare-fun tp!181867 () Bool)

(assert (=> b!582899 (= e!352326 (and tp!181867 (inv!7212 (tag!1377 (h!11127 rules!3103))) (inv!7215 (transformation!1115 (h!11127 rules!3103))) e!352336))))

(assert (= (and start!54064 res!251055) b!582889))

(assert (= (and b!582889 res!251061) b!582895))

(assert (= (and b!582895 res!251059) b!582887))

(assert (= (and b!582887 res!251057) b!582894))

(assert (= (and b!582894 res!251062) b!582884))

(assert (= (and b!582884 res!251054) b!582886))

(assert (= (and b!582886 res!251056) b!582896))

(assert (= (and b!582896 res!251058) b!582893))

(assert (= (and b!582893 res!251060) b!582883))

(assert (= (and start!54064 ((_ is Cons!5724) suffix!1342)) b!582898))

(assert (= b!582899 b!582892))

(assert (= b!582891 b!582899))

(assert (= (and start!54064 ((_ is Cons!5726) rules!3103)) b!582891))

(assert (= b!582885 b!582897))

(assert (= b!582890 b!582885))

(assert (= start!54064 b!582890))

(assert (= (and start!54064 ((_ is Cons!5724) input!2705)) b!582888))

(declare-fun m!842367 () Bool)

(assert (=> b!582883 m!842367))

(declare-fun m!842369 () Bool)

(assert (=> b!582883 m!842369))

(declare-fun m!842371 () Bool)

(assert (=> b!582899 m!842371))

(declare-fun m!842373 () Bool)

(assert (=> b!582899 m!842373))

(declare-fun m!842375 () Bool)

(assert (=> b!582885 m!842375))

(declare-fun m!842377 () Bool)

(assert (=> b!582885 m!842377))

(declare-fun m!842379 () Bool)

(assert (=> b!582886 m!842379))

(declare-fun m!842381 () Bool)

(assert (=> b!582896 m!842381))

(declare-fun m!842383 () Bool)

(assert (=> start!54064 m!842383))

(declare-fun m!842385 () Bool)

(assert (=> b!582893 m!842385))

(declare-fun m!842387 () Bool)

(assert (=> b!582884 m!842387))

(declare-fun m!842389 () Bool)

(assert (=> b!582884 m!842389))

(declare-fun m!842391 () Bool)

(assert (=> b!582884 m!842391))

(declare-fun m!842393 () Bool)

(assert (=> b!582895 m!842393))

(declare-fun m!842395 () Bool)

(assert (=> b!582890 m!842395))

(declare-fun m!842397 () Bool)

(assert (=> b!582887 m!842397))

(declare-fun m!842399 () Bool)

(assert (=> b!582889 m!842399))

(declare-fun m!842401 () Bool)

(assert (=> b!582894 m!842401))

(assert (=> b!582894 m!842401))

(declare-fun m!842403 () Bool)

(assert (=> b!582894 m!842403))

(check-sat (not b!582885) (not b!582883) tp_is_empty!3253 b_and!57403 b_and!57405 (not b_next!16237) (not b!582896) (not b!582899) (not b!582886) (not b!582894) b_and!57407 b_and!57409 (not b!582893) (not b!582888) (not b!582889) (not b!582895) (not b_next!16243) (not b!582898) (not b!582884) (not b!582887) (not b!582890) (not start!54064) (not b_next!16241) (not b!582891) (not b_next!16239))
(check-sat (not b_next!16243) b_and!57403 b_and!57405 (not b_next!16237) (not b_next!16241) b_and!57407 b_and!57409 (not b_next!16239))
