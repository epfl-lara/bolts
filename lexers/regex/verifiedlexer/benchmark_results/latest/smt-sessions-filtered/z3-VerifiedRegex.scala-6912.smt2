; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364164 () Bool)

(assert start!364164)

(declare-fun b!3879614 () Bool)

(declare-fun b_free!105061 () Bool)

(declare-fun b_next!105765 () Bool)

(assert (=> b!3879614 (= b_free!105061 (not b_next!105765))))

(declare-fun tp!1176212 () Bool)

(declare-fun b_and!290955 () Bool)

(assert (=> b!3879614 (= tp!1176212 b_and!290955)))

(declare-fun b_free!105063 () Bool)

(declare-fun b_next!105767 () Bool)

(assert (=> b!3879614 (= b_free!105063 (not b_next!105767))))

(declare-fun tp!1176218 () Bool)

(declare-fun b_and!290957 () Bool)

(assert (=> b!3879614 (= tp!1176218 b_and!290957)))

(declare-fun b!3879603 () Bool)

(declare-fun b_free!105065 () Bool)

(declare-fun b_next!105769 () Bool)

(assert (=> b!3879603 (= b_free!105065 (not b_next!105769))))

(declare-fun tp!1176210 () Bool)

(declare-fun b_and!290959 () Bool)

(assert (=> b!3879603 (= tp!1176210 b_and!290959)))

(declare-fun b_free!105067 () Bool)

(declare-fun b_next!105771 () Bool)

(assert (=> b!3879603 (= b_free!105067 (not b_next!105771))))

(declare-fun tp!1176208 () Bool)

(declare-fun b_and!290961 () Bool)

(assert (=> b!3879603 (= tp!1176208 b_and!290961)))

(declare-fun b!3879596 () Bool)

(declare-fun b_free!105069 () Bool)

(declare-fun b_next!105773 () Bool)

(assert (=> b!3879596 (= b_free!105069 (not b_next!105773))))

(declare-fun tp!1176216 () Bool)

(declare-fun b_and!290963 () Bool)

(assert (=> b!3879596 (= tp!1176216 b_and!290963)))

(declare-fun b_free!105071 () Bool)

(declare-fun b_next!105775 () Bool)

(assert (=> b!3879596 (= b_free!105071 (not b_next!105775))))

(declare-fun tp!1176214 () Bool)

(declare-fun b_and!290965 () Bool)

(assert (=> b!3879596 (= tp!1176214 b_and!290965)))

(declare-fun e!2400611 () Bool)

(assert (=> b!3879596 (= e!2400611 (and tp!1176216 tp!1176214))))

(declare-fun b!3879597 () Bool)

(declare-fun e!2400622 () Bool)

(declare-fun tp_is_empty!19605 () Bool)

(declare-fun tp!1176213 () Bool)

(assert (=> b!3879597 (= e!2400622 (and tp_is_empty!19605 tp!1176213))))

(declare-fun b!3879598 () Bool)

(declare-fun res!1572121 () Bool)

(declare-fun e!2400617 () Bool)

(assert (=> b!3879598 (=> (not res!1572121) (not e!2400617))))

(declare-datatypes ((C!22820 0))(
  ( (C!22821 (val!13504 Int)) )
))
(declare-datatypes ((List!41392 0))(
  ( (Nil!41268) (Cons!41268 (h!46688 C!22820) (t!315131 List!41392)) )
))
(declare-datatypes ((IArray!25251 0))(
  ( (IArray!25252 (innerList!12683 List!41392)) )
))
(declare-datatypes ((Conc!12623 0))(
  ( (Node!12623 (left!31655 Conc!12623) (right!31985 Conc!12623) (csize!25476 Int) (cheight!12834 Int)) (Leaf!19536 (xs!15929 IArray!25251) (csize!25477 Int)) (Empty!12623) )
))
(declare-datatypes ((BalanceConc!24840 0))(
  ( (BalanceConc!24841 (c!674838 Conc!12623)) )
))
(declare-datatypes ((List!41393 0))(
  ( (Nil!41269) (Cons!41269 (h!46689 (_ BitVec 16)) (t!315132 List!41393)) )
))
(declare-datatypes ((TokenValue!6642 0))(
  ( (FloatLiteralValue!13284 (text!46939 List!41393)) (TokenValueExt!6641 (__x!25501 Int)) (Broken!33210 (value!203350 List!41393)) (Object!6765) (End!6642) (Def!6642) (Underscore!6642) (Match!6642) (Else!6642) (Error!6642) (Case!6642) (If!6642) (Extends!6642) (Abstract!6642) (Class!6642) (Val!6642) (DelimiterValue!13284 (del!6702 List!41393)) (KeywordValue!6648 (value!203351 List!41393)) (CommentValue!13284 (value!203352 List!41393)) (WhitespaceValue!13284 (value!203353 List!41393)) (IndentationValue!6642 (value!203354 List!41393)) (String!46927) (Int32!6642) (Broken!33211 (value!203355 List!41393)) (Boolean!6643) (Unit!59343) (OperatorValue!6645 (op!6702 List!41393)) (IdentifierValue!13284 (value!203356 List!41393)) (IdentifierValue!13285 (value!203357 List!41393)) (WhitespaceValue!13285 (value!203358 List!41393)) (True!13284) (False!13284) (Broken!33212 (value!203359 List!41393)) (Broken!33213 (value!203360 List!41393)) (True!13285) (RightBrace!6642) (RightBracket!6642) (Colon!6642) (Null!6642) (Comma!6642) (LeftBracket!6642) (False!13285) (LeftBrace!6642) (ImaginaryLiteralValue!6642 (text!46940 List!41393)) (StringLiteralValue!19926 (value!203361 List!41393)) (EOFValue!6642 (value!203362 List!41393)) (IdentValue!6642 (value!203363 List!41393)) (DelimiterValue!13285 (value!203364 List!41393)) (DedentValue!6642 (value!203365 List!41393)) (NewLineValue!6642 (value!203366 List!41393)) (IntegerValue!19926 (value!203367 (_ BitVec 32)) (text!46941 List!41393)) (IntegerValue!19927 (value!203368 Int) (text!46942 List!41393)) (Times!6642) (Or!6642) (Equal!6642) (Minus!6642) (Broken!33214 (value!203369 List!41393)) (And!6642) (Div!6642) (LessEqual!6642) (Mod!6642) (Concat!17959) (Not!6642) (Plus!6642) (SpaceValue!6642 (value!203370 List!41393)) (IntegerValue!19928 (value!203371 Int) (text!46943 List!41393)) (StringLiteralValue!19927 (text!46944 List!41393)) (FloatLiteralValue!13285 (text!46945 List!41393)) (BytesLiteralValue!6642 (value!203372 List!41393)) (CommentValue!13285 (value!203373 List!41393)) (StringLiteralValue!19928 (value!203374 List!41393)) (ErrorTokenValue!6642 (msg!6703 List!41393)) )
))
(declare-datatypes ((Regex!11317 0))(
  ( (ElementMatch!11317 (c!674839 C!22820)) (Concat!17960 (regOne!23146 Regex!11317) (regTwo!23146 Regex!11317)) (EmptyExpr!11317) (Star!11317 (reg!11646 Regex!11317)) (EmptyLang!11317) (Union!11317 (regOne!23147 Regex!11317) (regTwo!23147 Regex!11317)) )
))
(declare-datatypes ((String!46928 0))(
  ( (String!46929 (value!203375 String)) )
))
(declare-datatypes ((TokenValueInjection!12712 0))(
  ( (TokenValueInjection!12713 (toValue!8840 Int) (toChars!8699 Int)) )
))
(declare-datatypes ((Rule!12624 0))(
  ( (Rule!12625 (regex!6412 Regex!11317) (tag!7272 String!46928) (isSeparator!6412 Bool) (transformation!6412 TokenValueInjection!12712)) )
))
(declare-datatypes ((List!41394 0))(
  ( (Nil!41270) (Cons!41270 (h!46690 Rule!12624) (t!315133 List!41394)) )
))
(declare-fun rules!2768 () List!41394)

(declare-fun isEmpty!24508 (List!41394) Bool)

(assert (=> b!3879598 (= res!1572121 (not (isEmpty!24508 rules!2768)))))

(declare-fun b!3879599 () Bool)

(declare-fun res!1572117 () Bool)

(assert (=> b!3879599 (=> (not res!1572117) (not e!2400617))))

(declare-fun prefix!426 () List!41392)

(declare-fun isEmpty!24509 (List!41392) Bool)

(assert (=> b!3879599 (= res!1572117 (not (isEmpty!24509 prefix!426)))))

(declare-fun b!3879600 () Bool)

(declare-fun e!2400615 () Bool)

(declare-fun tp!1176209 () Bool)

(assert (=> b!3879600 (= e!2400615 (and tp_is_empty!19605 tp!1176209))))

(declare-fun b!3879601 () Bool)

(declare-fun e!2400620 () Bool)

(declare-fun e!2400630 () Bool)

(declare-fun tp!1176222 () Bool)

(assert (=> b!3879601 (= e!2400620 (and e!2400630 tp!1176222))))

(declare-fun e!2400623 () Bool)

(declare-fun b!3879602 () Bool)

(declare-fun tp!1176211 () Bool)

(declare-fun inv!55419 (String!46928) Bool)

(declare-fun inv!55422 (TokenValueInjection!12712) Bool)

(assert (=> b!3879602 (= e!2400630 (and tp!1176211 (inv!55419 (tag!7272 (h!46690 rules!2768))) (inv!55422 (transformation!6412 (h!46690 rules!2768))) e!2400623))))

(assert (=> b!3879603 (= e!2400623 (and tp!1176210 tp!1176208))))

(declare-fun e!2400619 () Bool)

(declare-fun tp!1176219 () Bool)

(declare-fun b!3879604 () Bool)

(declare-datatypes ((Token!11962 0))(
  ( (Token!11963 (value!203376 TokenValue!6642) (rule!9310 Rule!12624) (size!30994 Int) (originalCharacters!7012 List!41392)) )
))
(declare-datatypes ((List!41395 0))(
  ( (Nil!41271) (Cons!41271 (h!46691 Token!11962) (t!315134 List!41395)) )
))
(declare-fun prefixTokens!80 () List!41395)

(assert (=> b!3879604 (= e!2400619 (and tp!1176219 (inv!55419 (tag!7272 (rule!9310 (h!46691 prefixTokens!80)))) (inv!55422 (transformation!6412 (rule!9310 (h!46691 prefixTokens!80)))) e!2400611))))

(declare-fun e!2400628 () Bool)

(declare-fun b!3879605 () Bool)

(declare-fun e!2400625 () Bool)

(declare-fun tp!1176221 () Bool)

(declare-fun suffixTokens!72 () List!41395)

(assert (=> b!3879605 (= e!2400625 (and tp!1176221 (inv!55419 (tag!7272 (rule!9310 (h!46691 suffixTokens!72)))) (inv!55422 (transformation!6412 (rule!9310 (h!46691 suffixTokens!72)))) e!2400628))))

(declare-fun b!3879606 () Bool)

(declare-fun e!2400616 () Bool)

(declare-fun tp!1176206 () Bool)

(declare-fun inv!21 (TokenValue!6642) Bool)

(assert (=> b!3879606 (= e!2400616 (and (inv!21 (value!203376 (h!46691 suffixTokens!72))) e!2400625 tp!1176206))))

(declare-fun b!3879607 () Bool)

(declare-fun res!1572116 () Bool)

(assert (=> b!3879607 (=> (not res!1572116) (not e!2400617))))

(declare-fun isEmpty!24510 (List!41395) Bool)

(assert (=> b!3879607 (= res!1572116 (not (isEmpty!24510 prefixTokens!80)))))

(declare-fun b!3879608 () Bool)

(declare-fun e!2400618 () Bool)

(declare-fun tp!1176217 () Bool)

(assert (=> b!3879608 (= e!2400618 (and tp_is_empty!19605 tp!1176217))))

(declare-fun b!3879609 () Bool)

(declare-fun tp!1176220 () Bool)

(declare-fun e!2400614 () Bool)

(declare-fun inv!55423 (Token!11962) Bool)

(assert (=> b!3879609 (= e!2400614 (and (inv!55423 (h!46691 suffixTokens!72)) e!2400616 tp!1176220))))

(declare-fun b!3879610 () Bool)

(declare-fun res!1572119 () Bool)

(assert (=> b!3879610 (=> (not res!1572119) (not e!2400617))))

(declare-datatypes ((LexerInterface!6001 0))(
  ( (LexerInterfaceExt!5998 (__x!25502 Int)) (Lexer!5999) )
))
(declare-fun thiss!20629 () LexerInterface!6001)

(declare-fun rulesInvariant!5344 (LexerInterface!6001 List!41394) Bool)

(assert (=> b!3879610 (= res!1572119 (rulesInvariant!5344 thiss!20629 rules!2768))))

(declare-fun tp!1176207 () Bool)

(declare-fun b!3879611 () Bool)

(declare-fun e!2400613 () Bool)

(assert (=> b!3879611 (= e!2400613 (and (inv!21 (value!203376 (h!46691 prefixTokens!80))) e!2400619 tp!1176207))))

(declare-fun b!3879612 () Bool)

(declare-fun e!2400621 () Bool)

(assert (=> b!3879612 (= e!2400621 false)))

(declare-fun lt!1353811 () List!41392)

(declare-datatypes ((tuple2!40502 0))(
  ( (tuple2!40503 (_1!23385 Token!11962) (_2!23385 List!41392)) )
))
(declare-datatypes ((Option!8830 0))(
  ( (None!8829) (Some!8829 (v!39127 tuple2!40502)) )
))
(declare-fun lt!1353810 () Option!8830)

(declare-fun maxPrefix!3305 (LexerInterface!6001 List!41394 List!41392) Option!8830)

(assert (=> b!3879612 (= lt!1353810 (maxPrefix!3305 thiss!20629 rules!2768 lt!1353811))))

(declare-fun b!3879613 () Bool)

(declare-fun tp!1176215 () Bool)

(declare-fun e!2400624 () Bool)

(assert (=> b!3879613 (= e!2400624 (and (inv!55423 (h!46691 prefixTokens!80)) e!2400613 tp!1176215))))

(assert (=> b!3879614 (= e!2400628 (and tp!1176212 tp!1176218))))

(declare-fun b!3879615 () Bool)

(assert (=> b!3879615 (= e!2400617 e!2400621)))

(declare-fun res!1572118 () Bool)

(assert (=> b!3879615 (=> (not res!1572118) (not e!2400621))))

(declare-fun suffixResult!91 () List!41392)

(declare-datatypes ((tuple2!40504 0))(
  ( (tuple2!40505 (_1!23386 List!41395) (_2!23386 List!41392)) )
))
(declare-fun lexList!1769 (LexerInterface!6001 List!41394 List!41392) tuple2!40504)

(declare-fun ++!10581 (List!41395 List!41395) List!41395)

(assert (=> b!3879615 (= res!1572118 (= (lexList!1769 thiss!20629 rules!2768 lt!1353811) (tuple2!40505 (++!10581 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!41392)

(declare-fun ++!10582 (List!41392 List!41392) List!41392)

(assert (=> b!3879615 (= lt!1353811 (++!10582 prefix!426 suffix!1176))))

(declare-fun res!1572120 () Bool)

(assert (=> start!364164 (=> (not res!1572120) (not e!2400617))))

(get-info :version)

(assert (=> start!364164 (= res!1572120 ((_ is Lexer!5999) thiss!20629))))

(assert (=> start!364164 e!2400617))

(assert (=> start!364164 e!2400622))

(assert (=> start!364164 true))

(assert (=> start!364164 e!2400615))

(assert (=> start!364164 e!2400620))

(assert (=> start!364164 e!2400624))

(assert (=> start!364164 e!2400614))

(assert (=> start!364164 e!2400618))

(declare-fun b!3879616 () Bool)

(declare-fun res!1572115 () Bool)

(assert (=> b!3879616 (=> (not res!1572115) (not e!2400621))))

(assert (=> b!3879616 (= res!1572115 (= (lexList!1769 thiss!20629 rules!2768 suffix!1176) (tuple2!40505 suffixTokens!72 suffixResult!91)))))

(assert (= (and start!364164 res!1572120) b!3879598))

(assert (= (and b!3879598 res!1572121) b!3879610))

(assert (= (and b!3879610 res!1572119) b!3879607))

(assert (= (and b!3879607 res!1572116) b!3879599))

(assert (= (and b!3879599 res!1572117) b!3879615))

(assert (= (and b!3879615 res!1572118) b!3879616))

(assert (= (and b!3879616 res!1572115) b!3879612))

(assert (= (and start!364164 ((_ is Cons!41268) suffixResult!91)) b!3879597))

(assert (= (and start!364164 ((_ is Cons!41268) suffix!1176)) b!3879600))

(assert (= b!3879602 b!3879603))

(assert (= b!3879601 b!3879602))

(assert (= (and start!364164 ((_ is Cons!41270) rules!2768)) b!3879601))

(assert (= b!3879604 b!3879596))

(assert (= b!3879611 b!3879604))

(assert (= b!3879613 b!3879611))

(assert (= (and start!364164 ((_ is Cons!41271) prefixTokens!80)) b!3879613))

(assert (= b!3879605 b!3879614))

(assert (= b!3879606 b!3879605))

(assert (= b!3879609 b!3879606))

(assert (= (and start!364164 ((_ is Cons!41271) suffixTokens!72)) b!3879609))

(assert (= (and start!364164 ((_ is Cons!41268) prefix!426)) b!3879608))

(declare-fun m!4438051 () Bool)

(assert (=> b!3879611 m!4438051))

(declare-fun m!4438053 () Bool)

(assert (=> b!3879612 m!4438053))

(declare-fun m!4438055 () Bool)

(assert (=> b!3879604 m!4438055))

(declare-fun m!4438057 () Bool)

(assert (=> b!3879604 m!4438057))

(declare-fun m!4438059 () Bool)

(assert (=> b!3879610 m!4438059))

(declare-fun m!4438061 () Bool)

(assert (=> b!3879606 m!4438061))

(declare-fun m!4438063 () Bool)

(assert (=> b!3879602 m!4438063))

(declare-fun m!4438065 () Bool)

(assert (=> b!3879602 m!4438065))

(declare-fun m!4438067 () Bool)

(assert (=> b!3879615 m!4438067))

(declare-fun m!4438069 () Bool)

(assert (=> b!3879615 m!4438069))

(declare-fun m!4438071 () Bool)

(assert (=> b!3879615 m!4438071))

(declare-fun m!4438073 () Bool)

(assert (=> b!3879609 m!4438073))

(declare-fun m!4438075 () Bool)

(assert (=> b!3879613 m!4438075))

(declare-fun m!4438077 () Bool)

(assert (=> b!3879605 m!4438077))

(declare-fun m!4438079 () Bool)

(assert (=> b!3879605 m!4438079))

(declare-fun m!4438081 () Bool)

(assert (=> b!3879616 m!4438081))

(declare-fun m!4438083 () Bool)

(assert (=> b!3879598 m!4438083))

(declare-fun m!4438085 () Bool)

(assert (=> b!3879599 m!4438085))

(declare-fun m!4438087 () Bool)

(assert (=> b!3879607 m!4438087))

(check-sat (not b!3879598) (not b!3879604) (not b!3879597) (not b!3879602) (not b!3879599) (not b_next!105771) (not b_next!105775) (not b!3879610) (not b!3879611) (not b!3879609) b_and!290955 (not b_next!105769) tp_is_empty!19605 (not b!3879612) b_and!290965 (not b_next!105765) (not b!3879607) (not b!3879600) b_and!290957 (not b!3879613) (not b_next!105767) (not b!3879606) (not b!3879608) b_and!290963 (not b!3879615) b_and!290959 (not b!3879616) b_and!290961 (not b!3879601) (not b_next!105773) (not b!3879605))
(check-sat b_and!290957 (not b_next!105767) (not b_next!105771) b_and!290963 (not b_next!105775) (not b_next!105773) b_and!290955 (not b_next!105769) b_and!290965 (not b_next!105765) b_and!290959 b_and!290961)
