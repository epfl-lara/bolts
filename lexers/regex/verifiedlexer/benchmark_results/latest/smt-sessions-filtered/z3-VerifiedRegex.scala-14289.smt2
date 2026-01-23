; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746480 () Bool)

(assert start!746480)

(declare-fun b!7909096 () Bool)

(declare-fun b_free!135119 () Bool)

(declare-fun b_next!135909 () Bool)

(assert (=> b!7909096 (= b_free!135119 (not b_next!135909))))

(declare-fun tp!2356100 () Bool)

(declare-fun b_and!353363 () Bool)

(assert (=> b!7909096 (= tp!2356100 b_and!353363)))

(declare-fun b_free!135121 () Bool)

(declare-fun b_next!135911 () Bool)

(assert (=> b!7909096 (= b_free!135121 (not b_next!135911))))

(declare-fun tp!2356099 () Bool)

(declare-fun b_and!353365 () Bool)

(assert (=> b!7909096 (= tp!2356099 b_and!353365)))

(declare-fun e!4668707 () Bool)

(assert (=> b!7909096 (= e!4668707 (and tp!2356100 tp!2356099))))

(declare-fun b!7909097 () Bool)

(declare-fun res!3139061 () Bool)

(declare-fun e!4668708 () Bool)

(assert (=> b!7909097 (=> (not res!3139061) (not e!4668708))))

(assert (=> b!7909097 (= res!3139061 false)))

(declare-fun b!7909098 () Bool)

(declare-datatypes ((List!74449 0))(
  ( (Nil!74325) (Cons!74325 (h!80773 (_ BitVec 16)) (t!389802 List!74449)) )
))
(declare-datatypes ((C!43024 0))(
  ( (C!43025 (val!31976 Int)) )
))
(declare-datatypes ((List!74450 0))(
  ( (Nil!74326) (Cons!74326 (h!80774 C!43024) (t!389803 List!74450)) )
))
(declare-datatypes ((IArray!31697 0))(
  ( (IArray!31698 (innerList!15906 List!74450)) )
))
(declare-datatypes ((Regex!21347 0))(
  ( (ElementMatch!21347 (c!1451037 C!43024)) (Concat!30307 (regOne!43206 Regex!21347) (regTwo!43206 Regex!21347)) (EmptyExpr!21347) (Star!21347 (reg!21676 Regex!21347)) (EmptyLang!21347) (Union!21347 (regOne!43207 Regex!21347) (regTwo!43207 Regex!21347)) )
))
(declare-datatypes ((String!83221 0))(
  ( (String!83222 (value!288307 String)) )
))
(declare-datatypes ((TokenValue!8960 0))(
  ( (FloatLiteralValue!17920 (text!63165 List!74449)) (TokenValueExt!8959 (__x!35207 Int)) (Broken!44800 (value!288308 List!74449)) (Object!9083) (End!8960) (Def!8960) (Underscore!8960) (Match!8960) (Else!8960) (Error!8960) (Case!8960) (If!8960) (Extends!8960) (Abstract!8960) (Class!8960) (Val!8960) (DelimiterValue!17920 (del!9020 List!74449)) (KeywordValue!8966 (value!288309 List!74449)) (CommentValue!17920 (value!288310 List!74449)) (WhitespaceValue!17920 (value!288311 List!74449)) (IndentationValue!8960 (value!288312 List!74449)) (String!83223) (Int32!8960) (Broken!44801 (value!288313 List!74449)) (Boolean!8961) (Unit!169364) (OperatorValue!8963 (op!9020 List!74449)) (IdentifierValue!17920 (value!288314 List!74449)) (IdentifierValue!17921 (value!288315 List!74449)) (WhitespaceValue!17921 (value!288316 List!74449)) (True!17920) (False!17920) (Broken!44802 (value!288317 List!74449)) (Broken!44803 (value!288318 List!74449)) (True!17921) (RightBrace!8960) (RightBracket!8960) (Colon!8960) (Null!8960) (Comma!8960) (LeftBracket!8960) (False!17921) (LeftBrace!8960) (ImaginaryLiteralValue!8960 (text!63166 List!74449)) (StringLiteralValue!26880 (value!288319 List!74449)) (EOFValue!8960 (value!288320 List!74449)) (IdentValue!8960 (value!288321 List!74449)) (DelimiterValue!17921 (value!288322 List!74449)) (DedentValue!8960 (value!288323 List!74449)) (NewLineValue!8960 (value!288324 List!74449)) (IntegerValue!26880 (value!288325 (_ BitVec 32)) (text!63167 List!74449)) (IntegerValue!26881 (value!288326 Int) (text!63168 List!74449)) (Times!8960) (Or!8960) (Equal!8960) (Minus!8960) (Broken!44804 (value!288327 List!74449)) (And!8960) (Div!8960) (LessEqual!8960) (Mod!8960) (Concat!30308) (Not!8960) (Plus!8960) (SpaceValue!8960 (value!288328 List!74449)) (IntegerValue!26882 (value!288329 Int) (text!63169 List!74449)) (StringLiteralValue!26881 (text!63170 List!74449)) (FloatLiteralValue!17921 (text!63171 List!74449)) (BytesLiteralValue!8960 (value!288330 List!74449)) (CommentValue!17921 (value!288331 List!74449)) (StringLiteralValue!26882 (value!288332 List!74449)) (ErrorTokenValue!8960 (msg!9021 List!74449)) )
))
(declare-datatypes ((Conc!15818 0))(
  ( (Node!15818 (left!56703 Conc!15818) (right!57033 Conc!15818) (csize!31866 Int) (cheight!16029 Int)) (Leaf!30108 (xs!19200 IArray!31697) (csize!31867 Int)) (Empty!15818) )
))
(declare-datatypes ((BalanceConc!30754 0))(
  ( (BalanceConc!30755 (c!1451038 Conc!15818)) )
))
(declare-datatypes ((TokenValueInjection!17228 0))(
  ( (TokenValueInjection!17229 (toValue!11701 Int) (toChars!11560 Int)) )
))
(declare-datatypes ((Rule!17088 0))(
  ( (Rule!17089 (regex!8644 Regex!21347) (tag!9508 String!83221) (isSeparator!8644 Bool) (transformation!8644 TokenValueInjection!17228)) )
))
(declare-fun rule!156 () Rule!17088)

(declare-fun validRegex!11665 (Regex!21347) Bool)

(assert (=> b!7909098 (= e!4668708 (not (validRegex!11665 (regex!8644 rule!156))))))

(declare-fun lt!2685956 () List!74450)

(declare-fun list!19290 (BalanceConc!30754) List!74450)

(declare-datatypes ((Token!15704 0))(
  ( (Token!15705 (value!288333 TokenValue!8960) (rule!11946 Rule!17088) (size!43094 Int) (originalCharacters!8883 List!74450)) )
))
(declare-fun charsOf!5586 (Token!15704) BalanceConc!30754)

(declare-datatypes ((tuple2!70346 0))(
  ( (tuple2!70347 (_1!38476 Token!15704) (_2!38476 List!74450)) )
))
(declare-datatypes ((Option!17924 0))(
  ( (None!17923) (Some!17923 (v!55080 tuple2!70346)) )
))
(declare-fun get!26718 (Option!17924) tuple2!70346)

(assert (=> b!7909098 (= lt!2685956 (list!19290 (charsOf!5586 (_1!38476 (get!26718 None!17923)))))))

(declare-fun tp!2356101 () Bool)

(declare-fun b!7909099 () Bool)

(declare-fun e!4668704 () Bool)

(declare-fun inv!95352 (String!83221) Bool)

(declare-fun inv!95354 (TokenValueInjection!17228) Bool)

(assert (=> b!7909099 (= e!4668704 (and tp!2356101 (inv!95352 (tag!9508 rule!156)) (inv!95354 (transformation!8644 rule!156)) e!4668707))))

(declare-fun res!3139062 () Bool)

(assert (=> start!746480 (=> (not res!3139062) (not e!4668708))))

(declare-datatypes ((LexerInterface!8236 0))(
  ( (LexerInterfaceExt!8233 (__x!35208 Int)) (Lexer!8234) )
))
(declare-fun thiss!15815 () LexerInterface!8236)

(get-info :version)

(assert (=> start!746480 (= res!3139062 ((_ is Lexer!8234) thiss!15815))))

(assert (=> start!746480 e!4668708))

(assert (=> start!746480 true))

(assert (=> start!746480 e!4668704))

(declare-fun e!4668706 () Bool)

(assert (=> start!746480 e!4668706))

(declare-fun b!7909100 () Bool)

(declare-fun tp_is_empty!53069 () Bool)

(declare-fun tp!2356102 () Bool)

(assert (=> b!7909100 (= e!4668706 (and tp_is_empty!53069 tp!2356102))))

(declare-fun b!7909101 () Bool)

(declare-fun res!3139059 () Bool)

(assert (=> b!7909101 (=> (not res!3139059) (not e!4668708))))

(declare-fun input!1480 () List!74450)

(declare-fun isEmpty!42671 (List!74450) Bool)

(declare-datatypes ((tuple2!70348 0))(
  ( (tuple2!70349 (_1!38477 List!74450) (_2!38477 List!74450)) )
))
(declare-fun findLongestMatch!1937 (Regex!21347 List!74450) tuple2!70348)

(assert (=> b!7909101 (= res!3139059 (isEmpty!42671 (_1!38477 (findLongestMatch!1937 (regex!8644 rule!156) input!1480))))))

(declare-fun b!7909102 () Bool)

(declare-fun res!3139060 () Bool)

(assert (=> b!7909102 (=> (not res!3139060) (not e!4668708))))

(declare-fun ruleValid!3955 (LexerInterface!8236 Rule!17088) Bool)

(assert (=> b!7909102 (= res!3139060 (ruleValid!3955 thiss!15815 rule!156))))

(assert (= (and start!746480 res!3139062) b!7909102))

(assert (= (and b!7909102 res!3139060) b!7909101))

(assert (= (and b!7909101 res!3139059) b!7909097))

(assert (= (and b!7909097 res!3139061) b!7909098))

(assert (= b!7909099 b!7909096))

(assert (= start!746480 b!7909099))

(assert (= (and start!746480 ((_ is Cons!74326) input!1480)) b!7909100))

(declare-fun m!8282774 () Bool)

(assert (=> b!7909098 m!8282774))

(declare-fun m!8282776 () Bool)

(assert (=> b!7909098 m!8282776))

(declare-fun m!8282778 () Bool)

(assert (=> b!7909098 m!8282778))

(assert (=> b!7909098 m!8282778))

(declare-fun m!8282780 () Bool)

(assert (=> b!7909098 m!8282780))

(declare-fun m!8282782 () Bool)

(assert (=> b!7909099 m!8282782))

(declare-fun m!8282784 () Bool)

(assert (=> b!7909099 m!8282784))

(declare-fun m!8282786 () Bool)

(assert (=> b!7909101 m!8282786))

(declare-fun m!8282788 () Bool)

(assert (=> b!7909101 m!8282788))

(declare-fun m!8282790 () Bool)

(assert (=> b!7909102 m!8282790))

(check-sat b_and!353365 (not b!7909101) b_and!353363 (not b_next!135909) (not b_next!135911) (not b!7909100) (not b!7909099) tp_is_empty!53069 (not b!7909102) (not b!7909098))
(check-sat b_and!353363 b_and!353365 (not b_next!135909) (not b_next!135911))
