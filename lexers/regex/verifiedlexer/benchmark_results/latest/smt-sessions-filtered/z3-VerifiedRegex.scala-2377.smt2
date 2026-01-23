; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118914 () Bool)

(assert start!118914)

(declare-fun b!1335630 () Bool)

(declare-fun b_free!32483 () Bool)

(declare-fun b_next!33187 () Bool)

(assert (=> b!1335630 (= b_free!32483 (not b_next!33187))))

(declare-fun tp!386427 () Bool)

(declare-fun b_and!89331 () Bool)

(assert (=> b!1335630 (= tp!386427 b_and!89331)))

(declare-fun b_free!32485 () Bool)

(declare-fun b_next!33189 () Bool)

(assert (=> b!1335630 (= b_free!32485 (not b_next!33189))))

(declare-fun tp!386435 () Bool)

(declare-fun b_and!89333 () Bool)

(assert (=> b!1335630 (= tp!386435 b_and!89333)))

(declare-fun b!1335632 () Bool)

(declare-fun b_free!32487 () Bool)

(declare-fun b_next!33191 () Bool)

(assert (=> b!1335632 (= b_free!32487 (not b_next!33191))))

(declare-fun tp!386425 () Bool)

(declare-fun b_and!89335 () Bool)

(assert (=> b!1335632 (= tp!386425 b_and!89335)))

(declare-fun b_free!32489 () Bool)

(declare-fun b_next!33193 () Bool)

(assert (=> b!1335632 (= b_free!32489 (not b_next!33193))))

(declare-fun tp!386433 () Bool)

(declare-fun b_and!89337 () Bool)

(assert (=> b!1335632 (= tp!386433 b_and!89337)))

(declare-fun b!1335639 () Bool)

(declare-fun b_free!32491 () Bool)

(declare-fun b_next!33195 () Bool)

(assert (=> b!1335639 (= b_free!32491 (not b_next!33195))))

(declare-fun tp!386426 () Bool)

(declare-fun b_and!89339 () Bool)

(assert (=> b!1335639 (= tp!386426 b_and!89339)))

(declare-fun b_free!32493 () Bool)

(declare-fun b_next!33197 () Bool)

(assert (=> b!1335639 (= b_free!32493 (not b_next!33197))))

(declare-fun tp!386428 () Bool)

(declare-fun b_and!89341 () Bool)

(assert (=> b!1335639 (= tp!386428 b_and!89341)))

(declare-fun b!1335625 () Bool)

(assert (=> b!1335625 true))

(assert (=> b!1335625 true))

(declare-fun b!1335623 () Bool)

(declare-fun e!855597 () Bool)

(declare-fun e!855601 () Bool)

(declare-fun tp!386436 () Bool)

(assert (=> b!1335623 (= e!855597 (and e!855601 tp!386436))))

(declare-fun b!1335624 () Bool)

(declare-fun res!602214 () Bool)

(declare-fun e!855603 () Bool)

(assert (=> b!1335624 (=> (not res!602214) (not e!855603))))

(declare-datatypes ((List!13698 0))(
  ( (Nil!13632) (Cons!13632 (h!19033 (_ BitVec 16)) (t!119229 List!13698)) )
))
(declare-datatypes ((TokenValue!2453 0))(
  ( (FloatLiteralValue!4906 (text!17616 List!13698)) (TokenValueExt!2452 (__x!8735 Int)) (Broken!12265 (value!76952 List!13698)) (Object!2518) (End!2453) (Def!2453) (Underscore!2453) (Match!2453) (Else!2453) (Error!2453) (Case!2453) (If!2453) (Extends!2453) (Abstract!2453) (Class!2453) (Val!2453) (DelimiterValue!4906 (del!2513 List!13698)) (KeywordValue!2459 (value!76953 List!13698)) (CommentValue!4906 (value!76954 List!13698)) (WhitespaceValue!4906 (value!76955 List!13698)) (IndentationValue!2453 (value!76956 List!13698)) (String!16500) (Int32!2453) (Broken!12266 (value!76957 List!13698)) (Boolean!2454) (Unit!19768) (OperatorValue!2456 (op!2513 List!13698)) (IdentifierValue!4906 (value!76958 List!13698)) (IdentifierValue!4907 (value!76959 List!13698)) (WhitespaceValue!4907 (value!76960 List!13698)) (True!4906) (False!4906) (Broken!12267 (value!76961 List!13698)) (Broken!12268 (value!76962 List!13698)) (True!4907) (RightBrace!2453) (RightBracket!2453) (Colon!2453) (Null!2453) (Comma!2453) (LeftBracket!2453) (False!4907) (LeftBrace!2453) (ImaginaryLiteralValue!2453 (text!17617 List!13698)) (StringLiteralValue!7359 (value!76963 List!13698)) (EOFValue!2453 (value!76964 List!13698)) (IdentValue!2453 (value!76965 List!13698)) (DelimiterValue!4907 (value!76966 List!13698)) (DedentValue!2453 (value!76967 List!13698)) (NewLineValue!2453 (value!76968 List!13698)) (IntegerValue!7359 (value!76969 (_ BitVec 32)) (text!17618 List!13698)) (IntegerValue!7360 (value!76970 Int) (text!17619 List!13698)) (Times!2453) (Or!2453) (Equal!2453) (Minus!2453) (Broken!12269 (value!76971 List!13698)) (And!2453) (Div!2453) (LessEqual!2453) (Mod!2453) (Concat!6130) (Not!2453) (Plus!2453) (SpaceValue!2453 (value!76972 List!13698)) (IntegerValue!7361 (value!76973 Int) (text!17620 List!13698)) (StringLiteralValue!7360 (text!17621 List!13698)) (FloatLiteralValue!4907 (text!17622 List!13698)) (BytesLiteralValue!2453 (value!76974 List!13698)) (CommentValue!4907 (value!76975 List!13698)) (StringLiteralValue!7361 (value!76976 List!13698)) (ErrorTokenValue!2453 (msg!2514 List!13698)) )
))
(declare-datatypes ((C!7644 0))(
  ( (C!7645 (val!4382 Int)) )
))
(declare-datatypes ((List!13699 0))(
  ( (Nil!13633) (Cons!13633 (h!19034 C!7644) (t!119230 List!13699)) )
))
(declare-datatypes ((IArray!8991 0))(
  ( (IArray!8992 (innerList!4553 List!13699)) )
))
(declare-datatypes ((Conc!4493 0))(
  ( (Node!4493 (left!11700 Conc!4493) (right!12030 Conc!4493) (csize!9216 Int) (cheight!4704 Int)) (Leaf!6871 (xs!7208 IArray!8991) (csize!9217 Int)) (Empty!4493) )
))
(declare-datatypes ((BalanceConc!8926 0))(
  ( (BalanceConc!8927 (c!218719 Conc!4493)) )
))
(declare-datatypes ((Regex!3677 0))(
  ( (ElementMatch!3677 (c!218720 C!7644)) (Concat!6131 (regOne!7866 Regex!3677) (regTwo!7866 Regex!3677)) (EmptyExpr!3677) (Star!3677 (reg!4006 Regex!3677)) (EmptyLang!3677) (Union!3677 (regOne!7867 Regex!3677) (regTwo!7867 Regex!3677)) )
))
(declare-datatypes ((String!16501 0))(
  ( (String!16502 (value!76977 String)) )
))
(declare-datatypes ((TokenValueInjection!4566 0))(
  ( (TokenValueInjection!4567 (toValue!3598 Int) (toChars!3457 Int)) )
))
(declare-datatypes ((Rule!4526 0))(
  ( (Rule!4527 (regex!2363 Regex!3677) (tag!2625 String!16501) (isSeparator!2363 Bool) (transformation!2363 TokenValueInjection!4566)) )
))
(declare-datatypes ((Token!4388 0))(
  ( (Token!4389 (value!76978 TokenValue!2453) (rule!4108 Rule!4526) (size!11099 Int) (originalCharacters!3225 List!13699)) )
))
(declare-fun t1!34 () Token!4388)

(declare-datatypes ((LexerInterface!2058 0))(
  ( (LexerInterfaceExt!2055 (__x!8736 Int)) (Lexer!2056) )
))
(declare-fun thiss!19762 () LexerInterface!2058)

(declare-datatypes ((List!13700 0))(
  ( (Nil!13634) (Cons!13634 (h!19035 Rule!4526) (t!119231 List!13700)) )
))
(declare-fun rules!2550 () List!13700)

(declare-fun rulesProduceIndividualToken!1027 (LexerInterface!2058 List!13700 Token!4388) Bool)

(assert (=> b!1335624 (= res!602214 (rulesProduceIndividualToken!1027 thiss!19762 rules!2550 t1!34))))

(declare-fun res!602213 () Bool)

(assert (=> start!118914 (=> (not res!602213) (not e!855603))))

(get-info :version)

(assert (=> start!118914 (= res!602213 ((_ is Lexer!2056) thiss!19762))))

(assert (=> start!118914 e!855603))

(assert (=> start!118914 true))

(assert (=> start!118914 e!855597))

(declare-fun e!855590 () Bool)

(declare-fun inv!17969 (Token!4388) Bool)

(assert (=> start!118914 (and (inv!17969 t1!34) e!855590)))

(declare-fun t2!34 () Token!4388)

(declare-fun e!855605 () Bool)

(assert (=> start!118914 (and (inv!17969 t2!34) e!855605)))

(declare-fun e!855598 () Bool)

(declare-fun lambda!55967 () Int)

(declare-fun Exists!829 (Int) Bool)

(assert (=> b!1335625 (= e!855598 (not (Exists!829 lambda!55967)))))

(assert (=> b!1335625 (Exists!829 lambda!55967)))

(declare-datatypes ((Unit!19769 0))(
  ( (Unit!19770) )
))
(declare-fun lt!442208 () Unit!19769)

(declare-fun lt!442207 () Regex!3677)

(declare-fun lt!442209 () List!13699)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!147 (Regex!3677 List!13699) Unit!19769)

(assert (=> b!1335625 (= lt!442208 (lemmaPrefixMatchThenExistsStringThatMatches!147 lt!442207 lt!442209))))

(declare-fun b!1335626 () Bool)

(declare-fun res!602216 () Bool)

(assert (=> b!1335626 (=> (not res!602216) (not e!855603))))

(assert (=> b!1335626 (= res!602216 (not (= (isSeparator!2363 (rule!4108 t1!34)) (isSeparator!2363 (rule!4108 t2!34)))))))

(declare-fun b!1335627 () Bool)

(declare-fun res!602219 () Bool)

(assert (=> b!1335627 (=> (not res!602219) (not e!855603))))

(assert (=> b!1335627 (= res!602219 (rulesProduceIndividualToken!1027 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1335628 () Bool)

(declare-fun res!602220 () Bool)

(declare-fun e!855593 () Bool)

(assert (=> b!1335628 (=> (not res!602220) (not e!855593))))

(declare-fun sepAndNonSepRulesDisjointChars!736 (List!13700 List!13700) Bool)

(assert (=> b!1335628 (= res!602220 (sepAndNonSepRulesDisjointChars!736 rules!2550 rules!2550))))

(declare-fun e!855602 () Bool)

(declare-fun b!1335629 () Bool)

(declare-fun tp!386430 () Bool)

(declare-fun inv!21 (TokenValue!2453) Bool)

(assert (=> b!1335629 (= e!855605 (and (inv!21 (value!76978 t2!34)) e!855602 tp!386430))))

(declare-fun e!855600 () Bool)

(assert (=> b!1335630 (= e!855600 (and tp!386427 tp!386435))))

(declare-fun b!1335631 () Bool)

(declare-fun res!602215 () Bool)

(assert (=> b!1335631 (=> (not res!602215) (not e!855603))))

(declare-fun rulesInvariant!1928 (LexerInterface!2058 List!13700) Bool)

(assert (=> b!1335631 (= res!602215 (rulesInvariant!1928 thiss!19762 rules!2550))))

(declare-fun e!855599 () Bool)

(assert (=> b!1335632 (= e!855599 (and tp!386425 tp!386433))))

(declare-fun b!1335633 () Bool)

(declare-fun res!602221 () Bool)

(assert (=> b!1335633 (=> (not res!602221) (not e!855593))))

(declare-fun separableTokensPredicate!341 (LexerInterface!2058 Token!4388 Token!4388 List!13700) Bool)

(assert (=> b!1335633 (= res!602221 (not (separableTokensPredicate!341 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1335634 () Bool)

(declare-fun tp!386432 () Bool)

(declare-fun e!855594 () Bool)

(assert (=> b!1335634 (= e!855590 (and (inv!21 (value!76978 t1!34)) e!855594 tp!386432))))

(declare-fun tp!386434 () Bool)

(declare-fun b!1335635 () Bool)

(declare-fun e!855604 () Bool)

(declare-fun inv!17966 (String!16501) Bool)

(declare-fun inv!17970 (TokenValueInjection!4566) Bool)

(assert (=> b!1335635 (= e!855602 (and tp!386434 (inv!17966 (tag!2625 (rule!4108 t2!34))) (inv!17970 (transformation!2363 (rule!4108 t2!34))) e!855604))))

(declare-fun b!1335636 () Bool)

(declare-fun tp!386429 () Bool)

(assert (=> b!1335636 (= e!855594 (and tp!386429 (inv!17966 (tag!2625 (rule!4108 t1!34))) (inv!17970 (transformation!2363 (rule!4108 t1!34))) e!855599))))

(declare-fun b!1335637 () Bool)

(assert (=> b!1335637 (= e!855603 e!855593)))

(declare-fun res!602222 () Bool)

(assert (=> b!1335637 (=> (not res!602222) (not e!855593))))

(declare-fun lt!442210 () BalanceConc!8926)

(declare-fun size!11100 (BalanceConc!8926) Int)

(assert (=> b!1335637 (= res!602222 (> (size!11100 lt!442210) 0))))

(declare-fun charsOf!1335 (Token!4388) BalanceConc!8926)

(assert (=> b!1335637 (= lt!442210 (charsOf!1335 t2!34))))

(declare-fun b!1335638 () Bool)

(declare-fun res!602218 () Bool)

(assert (=> b!1335638 (=> (not res!602218) (not e!855603))))

(declare-fun isEmpty!8131 (List!13700) Bool)

(assert (=> b!1335638 (= res!602218 (not (isEmpty!8131 rules!2550)))))

(assert (=> b!1335639 (= e!855604 (and tp!386426 tp!386428))))

(declare-fun b!1335640 () Bool)

(assert (=> b!1335640 (= e!855593 e!855598)))

(declare-fun res!602217 () Bool)

(assert (=> b!1335640 (=> (not res!602217) (not e!855598))))

(declare-fun prefixMatch!186 (Regex!3677 List!13699) Bool)

(assert (=> b!1335640 (= res!602217 (prefixMatch!186 lt!442207 lt!442209))))

(declare-fun rulesRegex!246 (LexerInterface!2058 List!13700) Regex!3677)

(assert (=> b!1335640 (= lt!442207 (rulesRegex!246 thiss!19762 rules!2550))))

(declare-fun ++!3482 (List!13699 List!13699) List!13699)

(declare-fun list!5179 (BalanceConc!8926) List!13699)

(declare-fun apply!3185 (BalanceConc!8926 Int) C!7644)

(assert (=> b!1335640 (= lt!442209 (++!3482 (list!5179 (charsOf!1335 t1!34)) (Cons!13633 (apply!3185 lt!442210 0) Nil!13633)))))

(declare-fun tp!386431 () Bool)

(declare-fun b!1335641 () Bool)

(assert (=> b!1335641 (= e!855601 (and tp!386431 (inv!17966 (tag!2625 (h!19035 rules!2550))) (inv!17970 (transformation!2363 (h!19035 rules!2550))) e!855600))))

(assert (= (and start!118914 res!602213) b!1335638))

(assert (= (and b!1335638 res!602218) b!1335631))

(assert (= (and b!1335631 res!602215) b!1335624))

(assert (= (and b!1335624 res!602214) b!1335627))

(assert (= (and b!1335627 res!602219) b!1335626))

(assert (= (and b!1335626 res!602216) b!1335637))

(assert (= (and b!1335637 res!602222) b!1335628))

(assert (= (and b!1335628 res!602220) b!1335633))

(assert (= (and b!1335633 res!602221) b!1335640))

(assert (= (and b!1335640 res!602217) b!1335625))

(assert (= b!1335641 b!1335630))

(assert (= b!1335623 b!1335641))

(assert (= (and start!118914 ((_ is Cons!13634) rules!2550)) b!1335623))

(assert (= b!1335636 b!1335632))

(assert (= b!1335634 b!1335636))

(assert (= start!118914 b!1335634))

(assert (= b!1335635 b!1335639))

(assert (= b!1335629 b!1335635))

(assert (= start!118914 b!1335629))

(declare-fun m!1493091 () Bool)

(assert (=> b!1335637 m!1493091))

(declare-fun m!1493093 () Bool)

(assert (=> b!1335637 m!1493093))

(declare-fun m!1493095 () Bool)

(assert (=> b!1335633 m!1493095))

(declare-fun m!1493097 () Bool)

(assert (=> b!1335631 m!1493097))

(declare-fun m!1493099 () Bool)

(assert (=> b!1335640 m!1493099))

(declare-fun m!1493101 () Bool)

(assert (=> b!1335640 m!1493101))

(assert (=> b!1335640 m!1493099))

(declare-fun m!1493103 () Bool)

(assert (=> b!1335640 m!1493103))

(declare-fun m!1493105 () Bool)

(assert (=> b!1335640 m!1493105))

(assert (=> b!1335640 m!1493103))

(declare-fun m!1493107 () Bool)

(assert (=> b!1335640 m!1493107))

(declare-fun m!1493109 () Bool)

(assert (=> b!1335640 m!1493109))

(declare-fun m!1493111 () Bool)

(assert (=> b!1335634 m!1493111))

(declare-fun m!1493113 () Bool)

(assert (=> b!1335624 m!1493113))

(declare-fun m!1493115 () Bool)

(assert (=> b!1335628 m!1493115))

(declare-fun m!1493117 () Bool)

(assert (=> b!1335641 m!1493117))

(declare-fun m!1493119 () Bool)

(assert (=> b!1335641 m!1493119))

(declare-fun m!1493121 () Bool)

(assert (=> start!118914 m!1493121))

(declare-fun m!1493123 () Bool)

(assert (=> start!118914 m!1493123))

(declare-fun m!1493125 () Bool)

(assert (=> b!1335625 m!1493125))

(assert (=> b!1335625 m!1493125))

(declare-fun m!1493127 () Bool)

(assert (=> b!1335625 m!1493127))

(declare-fun m!1493129 () Bool)

(assert (=> b!1335636 m!1493129))

(declare-fun m!1493131 () Bool)

(assert (=> b!1335636 m!1493131))

(declare-fun m!1493133 () Bool)

(assert (=> b!1335638 m!1493133))

(declare-fun m!1493135 () Bool)

(assert (=> b!1335629 m!1493135))

(declare-fun m!1493137 () Bool)

(assert (=> b!1335635 m!1493137))

(declare-fun m!1493139 () Bool)

(assert (=> b!1335635 m!1493139))

(declare-fun m!1493141 () Bool)

(assert (=> b!1335627 m!1493141))

(check-sat (not b!1335627) (not b!1335623) b_and!89339 (not b!1335624) (not b!1335631) (not b!1335635) (not b_next!33193) (not b!1335638) (not b!1335628) (not b!1335634) (not b!1335640) b_and!89333 b_and!89337 (not b_next!33189) (not b_next!33187) (not b!1335641) (not b!1335633) b_and!89341 (not b_next!33197) (not b_next!33195) (not start!118914) (not b!1335629) (not b!1335637) (not b!1335636) b_and!89331 (not b!1335625) b_and!89335 (not b_next!33191))
(check-sat b_and!89339 (not b_next!33195) b_and!89331 (not b_next!33193) b_and!89333 b_and!89337 (not b_next!33189) (not b_next!33187) b_and!89341 (not b_next!33197) b_and!89335 (not b_next!33191))
