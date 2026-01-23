; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!263922 () Bool)

(assert start!263922)

(declare-fun b!2719492 () Bool)

(declare-fun b_free!76629 () Bool)

(declare-fun b_next!77333 () Bool)

(assert (=> b!2719492 (= b_free!76629 (not b_next!77333))))

(declare-fun tp!858301 () Bool)

(declare-fun b_and!200381 () Bool)

(assert (=> b!2719492 (= tp!858301 b_and!200381)))

(declare-fun b_free!76631 () Bool)

(declare-fun b_next!77335 () Bool)

(assert (=> b!2719492 (= b_free!76631 (not b_next!77335))))

(declare-fun tp!858306 () Bool)

(declare-fun b_and!200383 () Bool)

(assert (=> b!2719492 (= tp!858306 b_and!200383)))

(declare-fun b!2719478 () Bool)

(declare-fun res!1142222 () Bool)

(declare-fun e!1713997 () Bool)

(assert (=> b!2719478 (=> (not res!1142222) (not e!1713997))))

(declare-datatypes ((LexerInterface!4398 0))(
  ( (LexerInterfaceExt!4395 (__x!20183 Int)) (Lexer!4396) )
))
(declare-fun thiss!11556 () LexerInterface!4398)

(declare-datatypes ((List!31475 0))(
  ( (Nil!31375) (Cons!31375 (h!36795 (_ BitVec 16)) (t!226339 List!31475)) )
))
(declare-datatypes ((TokenValue!5024 0))(
  ( (FloatLiteralValue!10048 (text!35613 List!31475)) (TokenValueExt!5023 (__x!20184 Int)) (Broken!25120 (value!154445 List!31475)) (Object!5123) (End!5024) (Def!5024) (Underscore!5024) (Match!5024) (Else!5024) (Error!5024) (Case!5024) (If!5024) (Extends!5024) (Abstract!5024) (Class!5024) (Val!5024) (DelimiterValue!10048 (del!5084 List!31475)) (KeywordValue!5030 (value!154446 List!31475)) (CommentValue!10048 (value!154447 List!31475)) (WhitespaceValue!10048 (value!154448 List!31475)) (IndentationValue!5024 (value!154449 List!31475)) (String!35021) (Int32!5024) (Broken!25121 (value!154450 List!31475)) (Boolean!5025) (Unit!45388) (OperatorValue!5027 (op!5084 List!31475)) (IdentifierValue!10048 (value!154451 List!31475)) (IdentifierValue!10049 (value!154452 List!31475)) (WhitespaceValue!10049 (value!154453 List!31475)) (True!10048) (False!10048) (Broken!25122 (value!154454 List!31475)) (Broken!25123 (value!154455 List!31475)) (True!10049) (RightBrace!5024) (RightBracket!5024) (Colon!5024) (Null!5024) (Comma!5024) (LeftBracket!5024) (False!10049) (LeftBrace!5024) (ImaginaryLiteralValue!5024 (text!35614 List!31475)) (StringLiteralValue!15072 (value!154456 List!31475)) (EOFValue!5024 (value!154457 List!31475)) (IdentValue!5024 (value!154458 List!31475)) (DelimiterValue!10049 (value!154459 List!31475)) (DedentValue!5024 (value!154460 List!31475)) (NewLineValue!5024 (value!154461 List!31475)) (IntegerValue!15072 (value!154462 (_ BitVec 32)) (text!35615 List!31475)) (IntegerValue!15073 (value!154463 Int) (text!35616 List!31475)) (Times!5024) (Or!5024) (Equal!5024) (Minus!5024) (Broken!25124 (value!154464 List!31475)) (And!5024) (Div!5024) (LessEqual!5024) (Mod!5024) (Concat!12978) (Not!5024) (Plus!5024) (SpaceValue!5024 (value!154465 List!31475)) (IntegerValue!15074 (value!154466 Int) (text!35617 List!31475)) (StringLiteralValue!15073 (text!35618 List!31475)) (FloatLiteralValue!10049 (text!35619 List!31475)) (BytesLiteralValue!5024 (value!154467 List!31475)) (CommentValue!10049 (value!154468 List!31475)) (StringLiteralValue!15074 (value!154469 List!31475)) (ErrorTokenValue!5024 (msg!5085 List!31475)) )
))
(declare-datatypes ((C!16066 0))(
  ( (C!16067 (val!9967 Int)) )
))
(declare-datatypes ((List!31476 0))(
  ( (Nil!31376) (Cons!31376 (h!36796 C!16066) (t!226340 List!31476)) )
))
(declare-datatypes ((IArray!19667 0))(
  ( (IArray!19668 (innerList!9891 List!31476)) )
))
(declare-datatypes ((Conc!9831 0))(
  ( (Node!9831 (left!24122 Conc!9831) (right!24452 Conc!9831) (csize!19892 Int) (cheight!10042 Int)) (Leaf!14977 (xs!12906 IArray!19667) (csize!19893 Int)) (Empty!9831) )
))
(declare-datatypes ((BalanceConc!19276 0))(
  ( (BalanceConc!19277 (c!439466 Conc!9831)) )
))
(declare-datatypes ((Regex!7954 0))(
  ( (ElementMatch!7954 (c!439467 C!16066)) (Concat!12979 (regOne!16420 Regex!7954) (regTwo!16420 Regex!7954)) (EmptyExpr!7954) (Star!7954 (reg!8283 Regex!7954)) (EmptyLang!7954) (Union!7954 (regOne!16421 Regex!7954) (regTwo!16421 Regex!7954)) )
))
(declare-datatypes ((String!35022 0))(
  ( (String!35023 (value!154470 String)) )
))
(declare-datatypes ((TokenValueInjection!9488 0))(
  ( (TokenValueInjection!9489 (toValue!6780 Int) (toChars!6639 Int)) )
))
(declare-datatypes ((Rule!9404 0))(
  ( (Rule!9405 (regex!4802 Regex!7954) (tag!5306 String!35022) (isSeparator!4802 Bool) (transformation!4802 TokenValueInjection!9488)) )
))
(declare-datatypes ((List!31477 0))(
  ( (Nil!31377) (Cons!31377 (h!36797 Rule!9404) (t!226341 List!31477)) )
))
(declare-fun rules!1182 () List!31477)

(declare-fun rulesInvariant!3883 (LexerInterface!4398 List!31477) Bool)

(assert (=> b!2719478 (= res!1142222 (rulesInvariant!3883 thiss!11556 rules!1182))))

(declare-fun b!2719479 () Bool)

(declare-fun res!1142228 () Bool)

(declare-fun e!1713998 () Bool)

(assert (=> b!2719479 (=> (not res!1142228) (not e!1713998))))

(declare-datatypes ((Token!9066 0))(
  ( (Token!9067 (value!154471 TokenValue!5024) (rule!7230 Rule!9404) (size!24201 Int) (originalCharacters!5564 List!31476)) )
))
(declare-datatypes ((List!31478 0))(
  ( (Nil!31378) (Cons!31378 (h!36798 Token!9066) (t!226342 List!31478)) )
))
(declare-datatypes ((IArray!19669 0))(
  ( (IArray!19670 (innerList!9892 List!31478)) )
))
(declare-datatypes ((Conc!9832 0))(
  ( (Node!9832 (left!24123 Conc!9832) (right!24453 Conc!9832) (csize!19894 Int) (cheight!10043 Int)) (Leaf!14978 (xs!12907 IArray!19669) (csize!19895 Int)) (Empty!9832) )
))
(declare-datatypes ((BalanceConc!19278 0))(
  ( (BalanceConc!19279 (c!439468 Conc!9832)) )
))
(declare-datatypes ((tuple2!31068 0))(
  ( (tuple2!31069 (_1!18166 BalanceConc!19278) (_2!18166 BalanceConc!19276)) )
))
(declare-fun lt!962470 () tuple2!31068)

(declare-fun lt!962466 () tuple2!31068)

(declare-fun list!11894 (BalanceConc!19276) List!31476)

(assert (=> b!2719479 (= res!1142228 (= (list!11894 (_2!18166 lt!962470)) (list!11894 (_2!18166 lt!962466))))))

(declare-fun b!2719480 () Bool)

(declare-fun e!1714008 () Bool)

(assert (=> b!2719480 (= e!1714008 e!1713998)))

(declare-fun res!1142226 () Bool)

(assert (=> b!2719480 (=> (not res!1142226) (not e!1713998))))

(declare-fun acc!331 () BalanceConc!19278)

(declare-fun list!11895 (BalanceConc!19278) List!31478)

(declare-fun ++!7814 (BalanceConc!19278 BalanceConc!19278) BalanceConc!19278)

(assert (=> b!2719480 (= res!1142226 (= (list!11895 (_1!18166 lt!962470)) (list!11895 (++!7814 acc!331 (_1!18166 lt!962466)))))))

(declare-fun input!603 () BalanceConc!19276)

(declare-fun lexRec!658 (LexerInterface!4398 List!31477 BalanceConc!19276) tuple2!31068)

(assert (=> b!2719480 (= lt!962466 (lexRec!658 thiss!11556 rules!1182 input!603))))

(declare-fun totalInput!328 () BalanceConc!19276)

(assert (=> b!2719480 (= lt!962470 (lexRec!658 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2719481 () Bool)

(declare-fun e!1713999 () Bool)

(assert (=> b!2719481 (= e!1713999 e!1714008)))

(declare-fun res!1142230 () Bool)

(assert (=> b!2719481 (=> (not res!1142230) (not e!1714008))))

(declare-fun lt!962462 () List!31478)

(declare-fun lt!962457 () List!31478)

(assert (=> b!2719481 (= res!1142230 (= lt!962462 lt!962457))))

(assert (=> b!2719481 (= lt!962457 (list!11895 acc!331))))

(declare-fun lt!962455 () tuple2!31068)

(assert (=> b!2719481 (= lt!962462 (list!11895 (_1!18166 lt!962455)))))

(declare-fun treated!9 () BalanceConc!19276)

(assert (=> b!2719481 (= lt!962455 (lexRec!658 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2719482 () Bool)

(declare-fun e!1714005 () Bool)

(declare-fun tp!858304 () Bool)

(declare-fun inv!42615 (Conc!9832) Bool)

(assert (=> b!2719482 (= e!1714005 (and (inv!42615 (c!439468 acc!331)) tp!858304))))

(declare-fun e!1714000 () Bool)

(declare-fun lt!962465 () tuple2!31068)

(declare-fun b!2719483 () Bool)

(declare-datatypes ((tuple2!31070 0))(
  ( (tuple2!31071 (_1!18167 Token!9066) (_2!18167 BalanceConc!19276)) )
))
(declare-datatypes ((Option!6198 0))(
  ( (None!6197) (Some!6197 (v!33039 tuple2!31070)) )
))
(declare-fun lt!962467 () Option!6198)

(declare-fun prepend!1132 (BalanceConc!19278 Token!9066) BalanceConc!19278)

(assert (=> b!2719483 (= e!1714000 (= lt!962466 (tuple2!31069 (prepend!1132 (_1!18166 lt!962465) (_1!18167 (v!33039 lt!962467))) (_2!18166 lt!962465))))))

(declare-fun b!2719484 () Bool)

(declare-fun res!1142223 () Bool)

(assert (=> b!2719484 (=> (not res!1142223) (not e!1713997))))

(declare-fun isEmpty!17901 (List!31477) Bool)

(assert (=> b!2719484 (= res!1142223 (not (isEmpty!17901 rules!1182)))))

(declare-fun b!2719485 () Bool)

(declare-fun e!1714009 () Bool)

(declare-fun tp!858303 () Bool)

(declare-fun inv!42616 (Conc!9831) Bool)

(assert (=> b!2719485 (= e!1714009 (and (inv!42616 (c!439466 input!603)) tp!858303))))

(declare-fun b!2719486 () Bool)

(declare-fun res!1142225 () Bool)

(assert (=> b!2719486 (=> (not res!1142225) (not e!1714008))))

(declare-fun isEmpty!17902 (List!31476) Bool)

(assert (=> b!2719486 (= res!1142225 (isEmpty!17902 (list!11894 (_2!18166 lt!962455))))))

(declare-fun b!2719487 () Bool)

(declare-fun e!1714001 () Bool)

(declare-fun e!1714004 () Bool)

(declare-fun tp!858302 () Bool)

(assert (=> b!2719487 (= e!1714001 (and e!1714004 tp!858302))))

(declare-fun b!2719488 () Bool)

(declare-fun e!1714006 () Bool)

(declare-fun tp!858305 () Bool)

(assert (=> b!2719488 (= e!1714006 (and (inv!42616 (c!439466 treated!9)) tp!858305))))

(declare-fun b!2719489 () Bool)

(declare-fun e!1714002 () Bool)

(declare-fun tp!858300 () Bool)

(assert (=> b!2719489 (= e!1714002 (and (inv!42616 (c!439466 totalInput!328)) tp!858300))))

(declare-fun b!2719490 () Bool)

(declare-fun e!1714007 () Bool)

(assert (=> b!2719490 (= e!1713998 e!1714007)))

(declare-fun res!1142221 () Bool)

(assert (=> b!2719490 (=> (not res!1142221) (not e!1714007))))

(assert (=> b!2719490 (= res!1142221 (is-Some!6197 lt!962467))))

(declare-fun maxPrefixZipperSequence!1046 (LexerInterface!4398 List!31477 BalanceConc!19276) Option!6198)

(assert (=> b!2719490 (= lt!962467 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 input!603))))

(declare-fun b!2719491 () Bool)

(declare-fun lt!962456 () List!31478)

(declare-fun isEmpty!17903 (List!31478) Bool)

(assert (=> b!2719491 (= e!1714007 (not (not (isEmpty!17903 lt!962456))))))

(declare-fun lt!962461 () List!31476)

(assert (=> b!2719491 (= lt!962461 (list!11894 (_2!18166 lt!962465)))))

(declare-fun append!820 (BalanceConc!19278 Token!9066) BalanceConc!19278)

(assert (=> b!2719491 (= lt!962456 (list!11895 (append!820 acc!331 (_1!18167 (v!33039 lt!962467)))))))

(declare-fun lt!962468 () List!31478)

(declare-fun lt!962460 () List!31478)

(declare-fun ++!7815 (List!31478 List!31478) List!31478)

(assert (=> b!2719491 (= (++!7815 (++!7815 lt!962457 lt!962468) lt!962460) (++!7815 lt!962457 (++!7815 lt!962468 lt!962460)))))

(declare-datatypes ((Unit!45389 0))(
  ( (Unit!45390) )
))
(declare-fun lt!962469 () Unit!45389)

(declare-fun lemmaConcatAssociativity!1621 (List!31478 List!31478 List!31478) Unit!45389)

(assert (=> b!2719491 (= lt!962469 (lemmaConcatAssociativity!1621 lt!962457 lt!962468 lt!962460))))

(assert (=> b!2719491 (= lt!962460 (list!11895 (_1!18166 lt!962465)))))

(assert (=> b!2719491 (= lt!962468 (Cons!31378 (_1!18167 (v!33039 lt!962467)) Nil!31378))))

(assert (=> b!2719491 e!1714000))

(declare-fun res!1142229 () Bool)

(assert (=> b!2719491 (=> (not res!1142229) (not e!1714000))))

(declare-fun lt!962459 () List!31476)

(declare-fun lt!962464 () List!31476)

(declare-fun lt!962458 () List!31476)

(declare-fun ++!7816 (List!31476 List!31476) List!31476)

(assert (=> b!2719491 (= res!1142229 (= (++!7816 (++!7816 lt!962458 lt!962464) lt!962459) (++!7816 lt!962458 (++!7816 lt!962464 lt!962459))))))

(declare-fun lt!962463 () Unit!45389)

(declare-fun lemmaConcatAssociativity!1622 (List!31476 List!31476 List!31476) Unit!45389)

(assert (=> b!2719491 (= lt!962463 (lemmaConcatAssociativity!1622 lt!962458 lt!962464 lt!962459))))

(assert (=> b!2719491 (= lt!962459 (list!11894 (_2!18167 (v!33039 lt!962467))))))

(declare-fun charsOf!3023 (Token!9066) BalanceConc!19276)

(assert (=> b!2719491 (= lt!962464 (list!11894 (charsOf!3023 (_1!18167 (v!33039 lt!962467)))))))

(assert (=> b!2719491 (= lt!962465 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962467))))))

(declare-fun res!1142227 () Bool)

(assert (=> start!263922 (=> (not res!1142227) (not e!1713997))))

(assert (=> start!263922 (= res!1142227 (is-Lexer!4396 thiss!11556))))

(assert (=> start!263922 e!1713997))

(declare-fun inv!42617 (BalanceConc!19276) Bool)

(assert (=> start!263922 (and (inv!42617 treated!9) e!1714006)))

(assert (=> start!263922 (and (inv!42617 input!603) e!1714009)))

(assert (=> start!263922 true))

(assert (=> start!263922 e!1714001))

(assert (=> start!263922 (and (inv!42617 totalInput!328) e!1714002)))

(declare-fun inv!42618 (BalanceConc!19278) Bool)

(assert (=> start!263922 (and (inv!42618 acc!331) e!1714005)))

(declare-fun e!1713996 () Bool)

(assert (=> b!2719492 (= e!1713996 (and tp!858301 tp!858306))))

(declare-fun b!2719493 () Bool)

(assert (=> b!2719493 (= e!1713997 e!1713999)))

(declare-fun res!1142224 () Bool)

(assert (=> b!2719493 (=> (not res!1142224) (not e!1713999))))

(assert (=> b!2719493 (= res!1142224 (= (list!11894 totalInput!328) (++!7816 lt!962458 (list!11894 input!603))))))

(assert (=> b!2719493 (= lt!962458 (list!11894 treated!9))))

(declare-fun b!2719494 () Bool)

(declare-fun tp!858307 () Bool)

(declare-fun inv!42612 (String!35022) Bool)

(declare-fun inv!42619 (TokenValueInjection!9488) Bool)

(assert (=> b!2719494 (= e!1714004 (and tp!858307 (inv!42612 (tag!5306 (h!36797 rules!1182))) (inv!42619 (transformation!4802 (h!36797 rules!1182))) e!1713996))))

(assert (= (and start!263922 res!1142227) b!2719484))

(assert (= (and b!2719484 res!1142223) b!2719478))

(assert (= (and b!2719478 res!1142222) b!2719493))

(assert (= (and b!2719493 res!1142224) b!2719481))

(assert (= (and b!2719481 res!1142230) b!2719486))

(assert (= (and b!2719486 res!1142225) b!2719480))

(assert (= (and b!2719480 res!1142226) b!2719479))

(assert (= (and b!2719479 res!1142228) b!2719490))

(assert (= (and b!2719490 res!1142221) b!2719491))

(assert (= (and b!2719491 res!1142229) b!2719483))

(assert (= start!263922 b!2719488))

(assert (= start!263922 b!2719485))

(assert (= b!2719494 b!2719492))

(assert (= b!2719487 b!2719494))

(assert (= (and start!263922 (is-Cons!31377 rules!1182)) b!2719487))

(assert (= start!263922 b!2719489))

(assert (= start!263922 b!2719482))

(declare-fun m!3119233 () Bool)

(assert (=> b!2719489 m!3119233))

(declare-fun m!3119235 () Bool)

(assert (=> b!2719494 m!3119235))

(declare-fun m!3119237 () Bool)

(assert (=> b!2719494 m!3119237))

(declare-fun m!3119239 () Bool)

(assert (=> b!2719479 m!3119239))

(declare-fun m!3119241 () Bool)

(assert (=> b!2719479 m!3119241))

(declare-fun m!3119243 () Bool)

(assert (=> b!2719478 m!3119243))

(declare-fun m!3119245 () Bool)

(assert (=> b!2719481 m!3119245))

(declare-fun m!3119247 () Bool)

(assert (=> b!2719481 m!3119247))

(declare-fun m!3119249 () Bool)

(assert (=> b!2719481 m!3119249))

(declare-fun m!3119251 () Bool)

(assert (=> b!2719484 m!3119251))

(declare-fun m!3119253 () Bool)

(assert (=> b!2719480 m!3119253))

(declare-fun m!3119255 () Bool)

(assert (=> b!2719480 m!3119255))

(declare-fun m!3119257 () Bool)

(assert (=> b!2719480 m!3119257))

(declare-fun m!3119259 () Bool)

(assert (=> b!2719480 m!3119259))

(assert (=> b!2719480 m!3119257))

(declare-fun m!3119261 () Bool)

(assert (=> b!2719480 m!3119261))

(declare-fun m!3119263 () Bool)

(assert (=> b!2719482 m!3119263))

(declare-fun m!3119265 () Bool)

(assert (=> b!2719488 m!3119265))

(declare-fun m!3119267 () Bool)

(assert (=> b!2719490 m!3119267))

(declare-fun m!3119269 () Bool)

(assert (=> start!263922 m!3119269))

(declare-fun m!3119271 () Bool)

(assert (=> start!263922 m!3119271))

(declare-fun m!3119273 () Bool)

(assert (=> start!263922 m!3119273))

(declare-fun m!3119275 () Bool)

(assert (=> start!263922 m!3119275))

(declare-fun m!3119277 () Bool)

(assert (=> b!2719486 m!3119277))

(assert (=> b!2719486 m!3119277))

(declare-fun m!3119279 () Bool)

(assert (=> b!2719486 m!3119279))

(declare-fun m!3119281 () Bool)

(assert (=> b!2719483 m!3119281))

(declare-fun m!3119283 () Bool)

(assert (=> b!2719491 m!3119283))

(declare-fun m!3119285 () Bool)

(assert (=> b!2719491 m!3119285))

(declare-fun m!3119287 () Bool)

(assert (=> b!2719491 m!3119287))

(declare-fun m!3119289 () Bool)

(assert (=> b!2719491 m!3119289))

(declare-fun m!3119291 () Bool)

(assert (=> b!2719491 m!3119291))

(declare-fun m!3119293 () Bool)

(assert (=> b!2719491 m!3119293))

(declare-fun m!3119295 () Bool)

(assert (=> b!2719491 m!3119295))

(declare-fun m!3119297 () Bool)

(assert (=> b!2719491 m!3119297))

(assert (=> b!2719491 m!3119295))

(declare-fun m!3119299 () Bool)

(assert (=> b!2719491 m!3119299))

(declare-fun m!3119301 () Bool)

(assert (=> b!2719491 m!3119301))

(assert (=> b!2719491 m!3119287))

(assert (=> b!2719491 m!3119301))

(declare-fun m!3119303 () Bool)

(assert (=> b!2719491 m!3119303))

(declare-fun m!3119305 () Bool)

(assert (=> b!2719491 m!3119305))

(declare-fun m!3119307 () Bool)

(assert (=> b!2719491 m!3119307))

(declare-fun m!3119309 () Bool)

(assert (=> b!2719491 m!3119309))

(declare-fun m!3119311 () Bool)

(assert (=> b!2719491 m!3119311))

(assert (=> b!2719491 m!3119293))

(declare-fun m!3119313 () Bool)

(assert (=> b!2719491 m!3119313))

(assert (=> b!2719491 m!3119291))

(declare-fun m!3119315 () Bool)

(assert (=> b!2719491 m!3119315))

(declare-fun m!3119317 () Bool)

(assert (=> b!2719491 m!3119317))

(assert (=> b!2719491 m!3119305))

(declare-fun m!3119319 () Bool)

(assert (=> b!2719491 m!3119319))

(declare-fun m!3119321 () Bool)

(assert (=> b!2719485 m!3119321))

(declare-fun m!3119323 () Bool)

(assert (=> b!2719493 m!3119323))

(declare-fun m!3119325 () Bool)

(assert (=> b!2719493 m!3119325))

(assert (=> b!2719493 m!3119325))

(declare-fun m!3119327 () Bool)

(assert (=> b!2719493 m!3119327))

(declare-fun m!3119329 () Bool)

(assert (=> b!2719493 m!3119329))

(push 1)

(assert (not b!2719488))

(assert b_and!200383)

(assert (not b!2719480))

(assert (not b!2719493))

(assert (not b!2719487))

(assert (not b!2719478))

(assert (not b!2719483))

(assert (not b_next!77333))

(assert (not b!2719494))

(assert (not b!2719486))

(assert (not b!2719484))

(assert (not b!2719485))

(assert (not b!2719489))

(assert (not b_next!77335))

(assert (not b!2719490))

(assert (not b!2719482))

(assert (not b!2719481))

(assert b_and!200381)

(assert (not b!2719491))

(assert (not b!2719479))

(assert (not start!263922))

(check-sat)

(pop 1)

(push 1)

(assert b_and!200383)

(assert b_and!200381)

(assert (not b_next!77335))

(assert (not b_next!77333))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!783454 () Bool)

(declare-fun res!1142265 () Bool)

(declare-fun e!1714054 () Bool)

(assert (=> d!783454 (=> (not res!1142265) (not e!1714054))))

(declare-fun rulesValid!1785 (LexerInterface!4398 List!31477) Bool)

(assert (=> d!783454 (= res!1142265 (rulesValid!1785 thiss!11556 rules!1182))))

(assert (=> d!783454 (= (rulesInvariant!3883 thiss!11556 rules!1182) e!1714054)))

(declare-fun b!2719548 () Bool)

(declare-datatypes ((List!31483 0))(
  ( (Nil!31383) (Cons!31383 (h!36803 String!35022) (t!226351 List!31483)) )
))
(declare-fun noDuplicateTag!1781 (LexerInterface!4398 List!31477 List!31483) Bool)

(assert (=> b!2719548 (= e!1714054 (noDuplicateTag!1781 thiss!11556 rules!1182 Nil!31383))))

(assert (= (and d!783454 res!1142265) b!2719548))

(declare-fun m!3119429 () Bool)

(assert (=> d!783454 m!3119429))

(declare-fun m!3119431 () Bool)

(assert (=> b!2719548 m!3119431))

(assert (=> b!2719478 d!783454))

(declare-fun d!783456 () Bool)

(declare-fun c!439474 () Bool)

(assert (=> d!783456 (= c!439474 (is-Node!9831 (c!439466 totalInput!328)))))

(declare-fun e!1714059 () Bool)

(assert (=> d!783456 (= (inv!42616 (c!439466 totalInput!328)) e!1714059)))

(declare-fun b!2719555 () Bool)

(declare-fun inv!42625 (Conc!9831) Bool)

(assert (=> b!2719555 (= e!1714059 (inv!42625 (c!439466 totalInput!328)))))

(declare-fun b!2719556 () Bool)

(declare-fun e!1714060 () Bool)

(assert (=> b!2719556 (= e!1714059 e!1714060)))

(declare-fun res!1142268 () Bool)

(assert (=> b!2719556 (= res!1142268 (not (is-Leaf!14977 (c!439466 totalInput!328))))))

(assert (=> b!2719556 (=> res!1142268 e!1714060)))

(declare-fun b!2719557 () Bool)

(declare-fun inv!42626 (Conc!9831) Bool)

(assert (=> b!2719557 (= e!1714060 (inv!42626 (c!439466 totalInput!328)))))

(assert (= (and d!783456 c!439474) b!2719555))

(assert (= (and d!783456 (not c!439474)) b!2719556))

(assert (= (and b!2719556 (not res!1142268)) b!2719557))

(declare-fun m!3119433 () Bool)

(assert (=> b!2719555 m!3119433))

(declare-fun m!3119435 () Bool)

(assert (=> b!2719557 m!3119435))

(assert (=> b!2719489 d!783456))

(declare-fun d!783458 () Bool)

(declare-fun list!11898 (Conc!9831) List!31476)

(assert (=> d!783458 (= (list!11894 (_2!18166 lt!962470)) (list!11898 (c!439466 (_2!18166 lt!962470))))))

(declare-fun bs!488338 () Bool)

(assert (= bs!488338 d!783458))

(declare-fun m!3119437 () Bool)

(assert (=> bs!488338 m!3119437))

(assert (=> b!2719479 d!783458))

(declare-fun d!783460 () Bool)

(assert (=> d!783460 (= (list!11894 (_2!18166 lt!962466)) (list!11898 (c!439466 (_2!18166 lt!962466))))))

(declare-fun bs!488339 () Bool)

(assert (= bs!488339 d!783460))

(declare-fun m!3119439 () Bool)

(assert (=> bs!488339 m!3119439))

(assert (=> b!2719479 d!783460))

(declare-fun b!2719582 () Bool)

(declare-fun res!1142289 () Bool)

(declare-fun e!1714080 () Bool)

(assert (=> b!2719582 (=> (not res!1142289) (not e!1714080))))

(declare-fun e!1714077 () Bool)

(assert (=> b!2719582 (= res!1142289 e!1714077)))

(declare-fun res!1142292 () Bool)

(assert (=> b!2719582 (=> res!1142292 e!1714077)))

(declare-fun lt!962541 () Option!6198)

(declare-fun isDefined!4899 (Option!6198) Bool)

(assert (=> b!2719582 (= res!1142292 (not (isDefined!4899 lt!962541)))))

(declare-fun b!2719583 () Bool)

(declare-fun e!1714082 () Option!6198)

(declare-fun call!175475 () Option!6198)

(assert (=> b!2719583 (= e!1714082 call!175475)))

(declare-fun d!783462 () Bool)

(assert (=> d!783462 e!1714080))

(declare-fun res!1142291 () Bool)

(assert (=> d!783462 (=> (not res!1142291) (not e!1714080))))

(declare-datatypes ((tuple2!31076 0))(
  ( (tuple2!31077 (_1!18170 Token!9066) (_2!18170 List!31476)) )
))
(declare-datatypes ((Option!6200 0))(
  ( (None!6199) (Some!6199 (v!33044 tuple2!31076)) )
))
(declare-fun isDefined!4900 (Option!6200) Bool)

(declare-fun maxPrefixZipper!473 (LexerInterface!4398 List!31477 List!31476) Option!6200)

(assert (=> d!783462 (= res!1142291 (= (isDefined!4899 lt!962541) (isDefined!4900 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 input!603)))))))

(assert (=> d!783462 (= lt!962541 e!1714082)))

(declare-fun c!439480 () Bool)

(assert (=> d!783462 (= c!439480 (and (is-Cons!31377 rules!1182) (is-Nil!31377 (t!226341 rules!1182))))))

(declare-fun lt!962539 () Unit!45389)

(declare-fun lt!962535 () Unit!45389)

(assert (=> d!783462 (= lt!962539 lt!962535)))

(declare-fun lt!962536 () List!31476)

(declare-fun lt!962537 () List!31476)

(declare-fun isPrefix!2486 (List!31476 List!31476) Bool)

(assert (=> d!783462 (isPrefix!2486 lt!962536 lt!962537)))

(declare-fun lemmaIsPrefixRefl!1612 (List!31476 List!31476) Unit!45389)

(assert (=> d!783462 (= lt!962535 (lemmaIsPrefixRefl!1612 lt!962536 lt!962537))))

(assert (=> d!783462 (= lt!962537 (list!11894 input!603))))

(assert (=> d!783462 (= lt!962536 (list!11894 input!603))))

(declare-fun rulesValidInductive!1670 (LexerInterface!4398 List!31477) Bool)

(assert (=> d!783462 (rulesValidInductive!1670 thiss!11556 rules!1182)))

(assert (=> d!783462 (= (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 input!603) lt!962541)))

(declare-fun e!1714079 () Bool)

(declare-fun b!2719584 () Bool)

(declare-fun get!9788 (Option!6198) tuple2!31070)

(declare-fun get!9789 (Option!6200) tuple2!31076)

(assert (=> b!2719584 (= e!1714079 (= (list!11894 (_2!18167 (get!9788 lt!962541))) (_2!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 input!603))))))))

(declare-fun bm!175470 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!482 (LexerInterface!4398 Rule!9404 BalanceConc!19276) Option!6198)

(assert (=> bm!175470 (= call!175475 (maxPrefixOneRuleZipperSequence!482 thiss!11556 (h!36797 rules!1182) input!603))))

(declare-fun b!2719585 () Bool)

(declare-fun e!1714078 () Bool)

(declare-fun e!1714081 () Bool)

(assert (=> b!2719585 (= e!1714078 e!1714081)))

(declare-fun res!1142288 () Bool)

(assert (=> b!2719585 (=> (not res!1142288) (not e!1714081))))

(declare-fun maxPrefix!2369 (LexerInterface!4398 List!31477 List!31476) Option!6200)

(assert (=> b!2719585 (= res!1142288 (= (_1!18167 (get!9788 lt!962541)) (_1!18170 (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 input!603))))))))

(declare-fun b!2719586 () Bool)

(assert (=> b!2719586 (= e!1714081 (= (list!11894 (_2!18167 (get!9788 lt!962541))) (_2!18170 (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 input!603))))))))

(declare-fun b!2719587 () Bool)

(declare-fun lt!962540 () Option!6198)

(declare-fun lt!962538 () Option!6198)

(assert (=> b!2719587 (= e!1714082 (ite (and (is-None!6197 lt!962540) (is-None!6197 lt!962538)) None!6197 (ite (is-None!6197 lt!962538) lt!962540 (ite (is-None!6197 lt!962540) lt!962538 (ite (>= (size!24201 (_1!18167 (v!33039 lt!962540))) (size!24201 (_1!18167 (v!33039 lt!962538)))) lt!962540 lt!962538)))))))

(assert (=> b!2719587 (= lt!962540 call!175475)))

(assert (=> b!2719587 (= lt!962538 (maxPrefixZipperSequence!1046 thiss!11556 (t!226341 rules!1182) input!603))))

(declare-fun b!2719588 () Bool)

(assert (=> b!2719588 (= e!1714080 e!1714078)))

(declare-fun res!1142290 () Bool)

(assert (=> b!2719588 (=> res!1142290 e!1714078)))

(assert (=> b!2719588 (= res!1142290 (not (isDefined!4899 lt!962541)))))

(declare-fun b!2719589 () Bool)

(assert (=> b!2719589 (= e!1714077 e!1714079)))

(declare-fun res!1142287 () Bool)

(assert (=> b!2719589 (=> (not res!1142287) (not e!1714079))))

(assert (=> b!2719589 (= res!1142287 (= (_1!18167 (get!9788 lt!962541)) (_1!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 input!603))))))))

(assert (= (and d!783462 c!439480) b!2719583))

(assert (= (and d!783462 (not c!439480)) b!2719587))

(assert (= (or b!2719583 b!2719587) bm!175470))

(assert (= (and d!783462 res!1142291) b!2719582))

(assert (= (and b!2719582 (not res!1142292)) b!2719589))

(assert (= (and b!2719589 res!1142287) b!2719584))

(assert (= (and b!2719582 res!1142289) b!2719588))

(assert (= (and b!2719588 (not res!1142290)) b!2719585))

(assert (= (and b!2719585 res!1142288) b!2719586))

(declare-fun m!3119443 () Bool)

(assert (=> b!2719587 m!3119443))

(declare-fun m!3119445 () Bool)

(assert (=> d!783462 m!3119445))

(declare-fun m!3119447 () Bool)

(assert (=> d!783462 m!3119447))

(assert (=> d!783462 m!3119325))

(declare-fun m!3119449 () Bool)

(assert (=> d!783462 m!3119449))

(declare-fun m!3119451 () Bool)

(assert (=> d!783462 m!3119451))

(assert (=> d!783462 m!3119325))

(declare-fun m!3119453 () Bool)

(assert (=> d!783462 m!3119453))

(assert (=> d!783462 m!3119453))

(declare-fun m!3119455 () Bool)

(assert (=> d!783462 m!3119455))

(assert (=> b!2719588 m!3119447))

(assert (=> b!2719584 m!3119453))

(declare-fun m!3119457 () Bool)

(assert (=> b!2719584 m!3119457))

(declare-fun m!3119459 () Bool)

(assert (=> b!2719584 m!3119459))

(assert (=> b!2719584 m!3119325))

(declare-fun m!3119461 () Bool)

(assert (=> b!2719584 m!3119461))

(assert (=> b!2719584 m!3119325))

(assert (=> b!2719584 m!3119453))

(assert (=> b!2719586 m!3119459))

(assert (=> b!2719586 m!3119325))

(assert (=> b!2719586 m!3119461))

(assert (=> b!2719586 m!3119325))

(declare-fun m!3119463 () Bool)

(assert (=> b!2719586 m!3119463))

(assert (=> b!2719586 m!3119463))

(declare-fun m!3119465 () Bool)

(assert (=> b!2719586 m!3119465))

(declare-fun m!3119467 () Bool)

(assert (=> bm!175470 m!3119467))

(assert (=> b!2719589 m!3119459))

(assert (=> b!2719589 m!3119325))

(assert (=> b!2719589 m!3119325))

(assert (=> b!2719589 m!3119453))

(assert (=> b!2719589 m!3119453))

(assert (=> b!2719589 m!3119457))

(assert (=> b!2719585 m!3119459))

(assert (=> b!2719585 m!3119325))

(assert (=> b!2719585 m!3119325))

(assert (=> b!2719585 m!3119463))

(assert (=> b!2719585 m!3119463))

(assert (=> b!2719585 m!3119465))

(assert (=> b!2719582 m!3119447))

(assert (=> b!2719490 d!783462))

(declare-fun d!783468 () Bool)

(declare-fun list!11899 (Conc!9832) List!31478)

(assert (=> d!783468 (= (list!11895 (_1!18166 lt!962470)) (list!11899 (c!439468 (_1!18166 lt!962470))))))

(declare-fun bs!488341 () Bool)

(assert (= bs!488341 d!783468))

(declare-fun m!3119469 () Bool)

(assert (=> bs!488341 m!3119469))

(assert (=> b!2719480 d!783468))

(declare-fun d!783470 () Bool)

(assert (=> d!783470 (= (list!11895 (++!7814 acc!331 (_1!18166 lt!962466))) (list!11899 (c!439468 (++!7814 acc!331 (_1!18166 lt!962466)))))))

(declare-fun bs!488342 () Bool)

(assert (= bs!488342 d!783470))

(declare-fun m!3119471 () Bool)

(assert (=> bs!488342 m!3119471))

(assert (=> b!2719480 d!783470))

(declare-fun b!2719628 () Bool)

(declare-fun res!1142315 () Bool)

(declare-fun e!1714104 () Bool)

(assert (=> b!2719628 (=> (not res!1142315) (not e!1714104))))

(declare-fun lt!962556 () tuple2!31068)

(declare-datatypes ((tuple2!31078 0))(
  ( (tuple2!31079 (_1!18171 List!31478) (_2!18171 List!31476)) )
))
(declare-fun lexList!1227 (LexerInterface!4398 List!31477 List!31476) tuple2!31078)

(assert (=> b!2719628 (= res!1142315 (= (list!11895 (_1!18166 lt!962556)) (_1!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 input!603)))))))

(declare-fun b!2719629 () Bool)

(declare-fun e!1714107 () tuple2!31068)

(declare-fun lt!962555 () tuple2!31068)

(declare-fun lt!962554 () Option!6198)

(assert (=> b!2719629 (= e!1714107 (tuple2!31069 (prepend!1132 (_1!18166 lt!962555) (_1!18167 (v!33039 lt!962554))) (_2!18166 lt!962555)))))

(assert (=> b!2719629 (= lt!962555 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962554))))))

(declare-fun b!2719630 () Bool)

(declare-fun e!1714106 () Bool)

(declare-fun isEmpty!17907 (BalanceConc!19278) Bool)

(assert (=> b!2719630 (= e!1714106 (not (isEmpty!17907 (_1!18166 lt!962556))))))

(declare-fun b!2719631 () Bool)

(assert (=> b!2719631 (= e!1714104 (= (list!11894 (_2!18166 lt!962556)) (_2!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 input!603)))))))

(declare-fun b!2719632 () Bool)

(assert (=> b!2719632 (= e!1714107 (tuple2!31069 (BalanceConc!19279 Empty!9832) input!603))))

(declare-fun b!2719633 () Bool)

(declare-fun e!1714105 () Bool)

(assert (=> b!2719633 (= e!1714105 (= (list!11894 (_2!18166 lt!962556)) (list!11894 input!603)))))

(declare-fun b!2719634 () Bool)

(assert (=> b!2719634 (= e!1714105 e!1714106)))

(declare-fun res!1142317 () Bool)

(declare-fun size!24203 (BalanceConc!19276) Int)

(assert (=> b!2719634 (= res!1142317 (< (size!24203 (_2!18166 lt!962556)) (size!24203 input!603)))))

(assert (=> b!2719634 (=> (not res!1142317) (not e!1714106))))

(declare-fun d!783472 () Bool)

(assert (=> d!783472 e!1714104))

(declare-fun res!1142316 () Bool)

(assert (=> d!783472 (=> (not res!1142316) (not e!1714104))))

(assert (=> d!783472 (= res!1142316 e!1714105)))

(declare-fun c!439494 () Bool)

(declare-fun size!24204 (BalanceConc!19278) Int)

(assert (=> d!783472 (= c!439494 (> (size!24204 (_1!18166 lt!962556)) 0))))

(assert (=> d!783472 (= lt!962556 e!1714107)))

(declare-fun c!439493 () Bool)

(assert (=> d!783472 (= c!439493 (is-Some!6197 lt!962554))))

(assert (=> d!783472 (= lt!962554 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 input!603))))

(assert (=> d!783472 (= (lexRec!658 thiss!11556 rules!1182 input!603) lt!962556)))

(assert (= (and d!783472 c!439493) b!2719629))

(assert (= (and d!783472 (not c!439493)) b!2719632))

(assert (= (and d!783472 c!439494) b!2719634))

(assert (= (and d!783472 (not c!439494)) b!2719633))

(assert (= (and b!2719634 res!1142317) b!2719630))

(assert (= (and d!783472 res!1142316) b!2719628))

(assert (= (and b!2719628 res!1142315) b!2719631))

(declare-fun m!3119501 () Bool)

(assert (=> b!2719634 m!3119501))

(declare-fun m!3119503 () Bool)

(assert (=> b!2719634 m!3119503))

(declare-fun m!3119505 () Bool)

(assert (=> b!2719633 m!3119505))

(assert (=> b!2719633 m!3119325))

(declare-fun m!3119507 () Bool)

(assert (=> b!2719630 m!3119507))

(declare-fun m!3119509 () Bool)

(assert (=> d!783472 m!3119509))

(assert (=> d!783472 m!3119267))

(declare-fun m!3119511 () Bool)

(assert (=> b!2719628 m!3119511))

(assert (=> b!2719628 m!3119325))

(assert (=> b!2719628 m!3119325))

(declare-fun m!3119513 () Bool)

(assert (=> b!2719628 m!3119513))

(declare-fun m!3119515 () Bool)

(assert (=> b!2719629 m!3119515))

(declare-fun m!3119517 () Bool)

(assert (=> b!2719629 m!3119517))

(assert (=> b!2719631 m!3119505))

(assert (=> b!2719631 m!3119325))

(assert (=> b!2719631 m!3119325))

(assert (=> b!2719631 m!3119513))

(assert (=> b!2719480 d!783472))

(declare-fun b!2719635 () Bool)

(declare-fun res!1142318 () Bool)

(declare-fun e!1714108 () Bool)

(assert (=> b!2719635 (=> (not res!1142318) (not e!1714108))))

(declare-fun lt!962559 () tuple2!31068)

(assert (=> b!2719635 (= res!1142318 (= (list!11895 (_1!18166 lt!962559)) (_1!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 totalInput!328)))))))

(declare-fun b!2719636 () Bool)

(declare-fun e!1714111 () tuple2!31068)

(declare-fun lt!962558 () tuple2!31068)

(declare-fun lt!962557 () Option!6198)

(assert (=> b!2719636 (= e!1714111 (tuple2!31069 (prepend!1132 (_1!18166 lt!962558) (_1!18167 (v!33039 lt!962557))) (_2!18166 lt!962558)))))

(assert (=> b!2719636 (= lt!962558 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962557))))))

(declare-fun b!2719637 () Bool)

(declare-fun e!1714110 () Bool)

(assert (=> b!2719637 (= e!1714110 (not (isEmpty!17907 (_1!18166 lt!962559))))))

(declare-fun b!2719638 () Bool)

(assert (=> b!2719638 (= e!1714108 (= (list!11894 (_2!18166 lt!962559)) (_2!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 totalInput!328)))))))

(declare-fun b!2719639 () Bool)

(assert (=> b!2719639 (= e!1714111 (tuple2!31069 (BalanceConc!19279 Empty!9832) totalInput!328))))

(declare-fun b!2719640 () Bool)

(declare-fun e!1714109 () Bool)

(assert (=> b!2719640 (= e!1714109 (= (list!11894 (_2!18166 lt!962559)) (list!11894 totalInput!328)))))

(declare-fun b!2719641 () Bool)

(assert (=> b!2719641 (= e!1714109 e!1714110)))

(declare-fun res!1142320 () Bool)

(assert (=> b!2719641 (= res!1142320 (< (size!24203 (_2!18166 lt!962559)) (size!24203 totalInput!328)))))

(assert (=> b!2719641 (=> (not res!1142320) (not e!1714110))))

(declare-fun d!783484 () Bool)

(assert (=> d!783484 e!1714108))

(declare-fun res!1142319 () Bool)

(assert (=> d!783484 (=> (not res!1142319) (not e!1714108))))

(assert (=> d!783484 (= res!1142319 e!1714109)))

(declare-fun c!439496 () Bool)

(assert (=> d!783484 (= c!439496 (> (size!24204 (_1!18166 lt!962559)) 0))))

(assert (=> d!783484 (= lt!962559 e!1714111)))

(declare-fun c!439495 () Bool)

(assert (=> d!783484 (= c!439495 (is-Some!6197 lt!962557))))

(assert (=> d!783484 (= lt!962557 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!783484 (= (lexRec!658 thiss!11556 rules!1182 totalInput!328) lt!962559)))

(assert (= (and d!783484 c!439495) b!2719636))

(assert (= (and d!783484 (not c!439495)) b!2719639))

(assert (= (and d!783484 c!439496) b!2719641))

(assert (= (and d!783484 (not c!439496)) b!2719640))

(assert (= (and b!2719641 res!1142320) b!2719637))

(assert (= (and d!783484 res!1142319) b!2719635))

(assert (= (and b!2719635 res!1142318) b!2719638))

(declare-fun m!3119519 () Bool)

(assert (=> b!2719641 m!3119519))

(declare-fun m!3119521 () Bool)

(assert (=> b!2719641 m!3119521))

(declare-fun m!3119523 () Bool)

(assert (=> b!2719640 m!3119523))

(assert (=> b!2719640 m!3119323))

(declare-fun m!3119525 () Bool)

(assert (=> b!2719637 m!3119525))

(declare-fun m!3119527 () Bool)

(assert (=> d!783484 m!3119527))

(declare-fun m!3119529 () Bool)

(assert (=> d!783484 m!3119529))

(declare-fun m!3119531 () Bool)

(assert (=> b!2719635 m!3119531))

(assert (=> b!2719635 m!3119323))

(assert (=> b!2719635 m!3119323))

(declare-fun m!3119533 () Bool)

(assert (=> b!2719635 m!3119533))

(declare-fun m!3119535 () Bool)

(assert (=> b!2719636 m!3119535))

(declare-fun m!3119537 () Bool)

(assert (=> b!2719636 m!3119537))

(assert (=> b!2719638 m!3119523))

(assert (=> b!2719638 m!3119323))

(assert (=> b!2719638 m!3119323))

(assert (=> b!2719638 m!3119533))

(assert (=> b!2719480 d!783484))

(declare-fun b!2719655 () Bool)

(declare-fun res!1142334 () Bool)

(declare-fun e!1714115 () Bool)

(assert (=> b!2719655 (=> (not res!1142334) (not e!1714115))))

(declare-fun height!1457 (Conc!9832) Int)

(declare-fun ++!7820 (Conc!9832 Conc!9832) Conc!9832)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2719655 (= res!1142334 (<= (height!1457 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))) (+ (max!0 (height!1457 (c!439468 acc!331)) (height!1457 (c!439468 (_1!18166 lt!962466)))) 1)))))

(declare-fun b!2719656 () Bool)

(declare-fun res!1142336 () Bool)

(assert (=> b!2719656 (=> (not res!1142336) (not e!1714115))))

(assert (=> b!2719656 (= res!1142336 (>= (height!1457 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))) (max!0 (height!1457 (c!439468 acc!331)) (height!1457 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun lt!962563 () BalanceConc!19278)

(declare-fun b!2719657 () Bool)

(assert (=> b!2719657 (= e!1714115 (= (list!11895 lt!962563) (++!7815 (list!11895 acc!331) (list!11895 (_1!18166 lt!962466)))))))

(declare-fun b!2719654 () Bool)

(declare-fun res!1142333 () Bool)

(assert (=> b!2719654 (=> (not res!1142333) (not e!1714115))))

(declare-fun isBalanced!2977 (Conc!9832) Bool)

(assert (=> b!2719654 (= res!1142333 (isBalanced!2977 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))))))

(declare-fun d!783486 () Bool)

(assert (=> d!783486 e!1714115))

(declare-fun res!1142335 () Bool)

(assert (=> d!783486 (=> (not res!1142335) (not e!1714115))))

(declare-fun appendAssocInst!692 (Conc!9832 Conc!9832) Bool)

(assert (=> d!783486 (= res!1142335 (appendAssocInst!692 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))))))

(assert (=> d!783486 (= lt!962563 (BalanceConc!19279 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))))))

(assert (=> d!783486 (= (++!7814 acc!331 (_1!18166 lt!962466)) lt!962563)))

(assert (= (and d!783486 res!1142335) b!2719654))

(assert (= (and b!2719654 res!1142333) b!2719655))

(assert (= (and b!2719655 res!1142334) b!2719656))

(assert (= (and b!2719656 res!1142336) b!2719657))

(declare-fun m!3119561 () Bool)

(assert (=> d!783486 m!3119561))

(declare-fun m!3119563 () Bool)

(assert (=> d!783486 m!3119563))

(declare-fun m!3119565 () Bool)

(assert (=> b!2719657 m!3119565))

(assert (=> b!2719657 m!3119245))

(declare-fun m!3119567 () Bool)

(assert (=> b!2719657 m!3119567))

(assert (=> b!2719657 m!3119245))

(assert (=> b!2719657 m!3119567))

(declare-fun m!3119569 () Bool)

(assert (=> b!2719657 m!3119569))

(declare-fun m!3119571 () Bool)

(assert (=> b!2719656 m!3119571))

(declare-fun m!3119573 () Bool)

(assert (=> b!2719656 m!3119573))

(assert (=> b!2719656 m!3119571))

(assert (=> b!2719656 m!3119573))

(declare-fun m!3119575 () Bool)

(assert (=> b!2719656 m!3119575))

(assert (=> b!2719656 m!3119563))

(declare-fun m!3119577 () Bool)

(assert (=> b!2719656 m!3119577))

(assert (=> b!2719656 m!3119563))

(assert (=> b!2719654 m!3119563))

(assert (=> b!2719654 m!3119563))

(declare-fun m!3119579 () Bool)

(assert (=> b!2719654 m!3119579))

(assert (=> b!2719655 m!3119571))

(assert (=> b!2719655 m!3119573))

(assert (=> b!2719655 m!3119571))

(assert (=> b!2719655 m!3119573))

(assert (=> b!2719655 m!3119575))

(assert (=> b!2719655 m!3119563))

(assert (=> b!2719655 m!3119577))

(assert (=> b!2719655 m!3119563))

(assert (=> b!2719480 d!783486))

(declare-fun d!783492 () Bool)

(declare-fun lt!962566 () BalanceConc!19276)

(assert (=> d!783492 (= (list!11894 lt!962566) (originalCharacters!5564 (_1!18167 (v!33039 lt!962467))))))

(declare-fun dynLambda!13511 (Int TokenValue!5024) BalanceConc!19276)

(assert (=> d!783492 (= lt!962566 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467)))))))

(assert (=> d!783492 (= (charsOf!3023 (_1!18167 (v!33039 lt!962467))) lt!962566)))

(declare-fun b_lambda!82535 () Bool)

(assert (=> (not b_lambda!82535) (not d!783492)))

(declare-fun t!226348 () Bool)

(declare-fun tb!151845 () Bool)

(assert (=> (and b!2719492 (= (toChars!6639 (transformation!4802 (h!36797 rules!1182))) (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467)))))) t!226348) tb!151845))

(declare-fun b!2719662 () Bool)

(declare-fun e!1714118 () Bool)

(declare-fun tp!858334 () Bool)

(assert (=> b!2719662 (= e!1714118 (and (inv!42616 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467)))))) tp!858334))))

(declare-fun result!187622 () Bool)

(assert (=> tb!151845 (= result!187622 (and (inv!42617 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467))))) e!1714118))))

(assert (= tb!151845 b!2719662))

(declare-fun m!3119581 () Bool)

(assert (=> b!2719662 m!3119581))

(declare-fun m!3119583 () Bool)

(assert (=> tb!151845 m!3119583))

(assert (=> d!783492 t!226348))

(declare-fun b_and!200389 () Bool)

(assert (= b_and!200383 (and (=> t!226348 result!187622) b_and!200389)))

(declare-fun m!3119585 () Bool)

(assert (=> d!783492 m!3119585))

(declare-fun m!3119587 () Bool)

(assert (=> d!783492 m!3119587))

(assert (=> b!2719491 d!783492))

(declare-fun d!783494 () Bool)

(assert (=> d!783494 (= (isEmpty!17903 lt!962456) (is-Nil!31378 lt!962456))))

(assert (=> b!2719491 d!783494))

(declare-fun d!783496 () Bool)

(assert (=> d!783496 (= (++!7815 (++!7815 lt!962457 lt!962468) lt!962460) (++!7815 lt!962457 (++!7815 lt!962468 lt!962460)))))

(declare-fun lt!962569 () Unit!45389)

(declare-fun choose!15974 (List!31478 List!31478 List!31478) Unit!45389)

(assert (=> d!783496 (= lt!962569 (choose!15974 lt!962457 lt!962468 lt!962460))))

(assert (=> d!783496 (= (lemmaConcatAssociativity!1621 lt!962457 lt!962468 lt!962460) lt!962569)))

(declare-fun bs!488346 () Bool)

(assert (= bs!488346 d!783496))

(assert (=> bs!488346 m!3119293))

(declare-fun m!3119589 () Bool)

(assert (=> bs!488346 m!3119589))

(assert (=> bs!488346 m!3119293))

(assert (=> bs!488346 m!3119313))

(assert (=> bs!488346 m!3119291))

(assert (=> bs!488346 m!3119315))

(assert (=> bs!488346 m!3119291))

(assert (=> b!2719491 d!783496))

(declare-fun b!2719671 () Bool)

(declare-fun e!1714124 () List!31476)

(assert (=> b!2719671 (= e!1714124 (++!7816 lt!962464 lt!962459))))

(declare-fun b!2719673 () Bool)

(declare-fun res!1142341 () Bool)

(declare-fun e!1714123 () Bool)

(assert (=> b!2719673 (=> (not res!1142341) (not e!1714123))))

(declare-fun lt!962572 () List!31476)

(declare-fun size!24205 (List!31476) Int)

(assert (=> b!2719673 (= res!1142341 (= (size!24205 lt!962572) (+ (size!24205 lt!962458) (size!24205 (++!7816 lt!962464 lt!962459)))))))

(declare-fun d!783498 () Bool)

(assert (=> d!783498 e!1714123))

(declare-fun res!1142342 () Bool)

(assert (=> d!783498 (=> (not res!1142342) (not e!1714123))))

(declare-fun content!4444 (List!31476) (Set C!16066))

(assert (=> d!783498 (= res!1142342 (= (content!4444 lt!962572) (set.union (content!4444 lt!962458) (content!4444 (++!7816 lt!962464 lt!962459)))))))

(assert (=> d!783498 (= lt!962572 e!1714124)))

(declare-fun c!439502 () Bool)

(assert (=> d!783498 (= c!439502 (is-Nil!31376 lt!962458))))

(assert (=> d!783498 (= (++!7816 lt!962458 (++!7816 lt!962464 lt!962459)) lt!962572)))

(declare-fun b!2719674 () Bool)

(assert (=> b!2719674 (= e!1714123 (or (not (= (++!7816 lt!962464 lt!962459) Nil!31376)) (= lt!962572 lt!962458)))))

(declare-fun b!2719672 () Bool)

(assert (=> b!2719672 (= e!1714124 (Cons!31376 (h!36796 lt!962458) (++!7816 (t!226340 lt!962458) (++!7816 lt!962464 lt!962459))))))

(assert (= (and d!783498 c!439502) b!2719671))

(assert (= (and d!783498 (not c!439502)) b!2719672))

(assert (= (and d!783498 res!1142342) b!2719673))

(assert (= (and b!2719673 res!1142341) b!2719674))

(declare-fun m!3119591 () Bool)

(assert (=> b!2719673 m!3119591))

(declare-fun m!3119593 () Bool)

(assert (=> b!2719673 m!3119593))

(assert (=> b!2719673 m!3119287))

(declare-fun m!3119595 () Bool)

(assert (=> b!2719673 m!3119595))

(declare-fun m!3119597 () Bool)

(assert (=> d!783498 m!3119597))

(declare-fun m!3119599 () Bool)

(assert (=> d!783498 m!3119599))

(assert (=> d!783498 m!3119287))

(declare-fun m!3119601 () Bool)

(assert (=> d!783498 m!3119601))

(assert (=> b!2719672 m!3119287))

(declare-fun m!3119603 () Bool)

(assert (=> b!2719672 m!3119603))

(assert (=> b!2719491 d!783498))

(declare-fun d!783500 () Bool)

(assert (=> d!783500 (= (list!11894 (_2!18166 lt!962465)) (list!11898 (c!439466 (_2!18166 lt!962465))))))

(declare-fun bs!488347 () Bool)

(assert (= bs!488347 d!783500))

(declare-fun m!3119605 () Bool)

(assert (=> bs!488347 m!3119605))

(assert (=> b!2719491 d!783500))

(declare-fun d!783502 () Bool)

(assert (=> d!783502 (= (list!11894 (charsOf!3023 (_1!18167 (v!33039 lt!962467)))) (list!11898 (c!439466 (charsOf!3023 (_1!18167 (v!33039 lt!962467))))))))

(declare-fun bs!488348 () Bool)

(assert (= bs!488348 d!783502))

(declare-fun m!3119607 () Bool)

(assert (=> bs!488348 m!3119607))

(assert (=> b!2719491 d!783502))

(declare-fun d!783504 () Bool)

(assert (=> d!783504 (= (++!7816 (++!7816 lt!962458 lt!962464) lt!962459) (++!7816 lt!962458 (++!7816 lt!962464 lt!962459)))))

(declare-fun lt!962575 () Unit!45389)

(declare-fun choose!15975 (List!31476 List!31476 List!31476) Unit!45389)

(assert (=> d!783504 (= lt!962575 (choose!15975 lt!962458 lt!962464 lt!962459))))

(assert (=> d!783504 (= (lemmaConcatAssociativity!1622 lt!962458 lt!962464 lt!962459) lt!962575)))

(declare-fun bs!488349 () Bool)

(assert (= bs!488349 d!783504))

(assert (=> bs!488349 m!3119287))

(assert (=> bs!488349 m!3119301))

(declare-fun m!3119609 () Bool)

(assert (=> bs!488349 m!3119609))

(assert (=> bs!488349 m!3119287))

(assert (=> bs!488349 m!3119289))

(assert (=> bs!488349 m!3119301))

(assert (=> bs!488349 m!3119303))

(assert (=> b!2719491 d!783504))

(declare-fun b!2719684 () Bool)

(declare-fun e!1714129 () List!31478)

(assert (=> b!2719684 (= e!1714129 (Cons!31378 (h!36798 lt!962457) (++!7815 (t!226342 lt!962457) lt!962468)))))

(declare-fun b!2719683 () Bool)

(assert (=> b!2719683 (= e!1714129 lt!962468)))

(declare-fun d!783506 () Bool)

(declare-fun e!1714130 () Bool)

(assert (=> d!783506 e!1714130))

(declare-fun res!1142347 () Bool)

(assert (=> d!783506 (=> (not res!1142347) (not e!1714130))))

(declare-fun lt!962578 () List!31478)

(declare-fun content!4445 (List!31478) (Set Token!9066))

(assert (=> d!783506 (= res!1142347 (= (content!4445 lt!962578) (set.union (content!4445 lt!962457) (content!4445 lt!962468))))))

(assert (=> d!783506 (= lt!962578 e!1714129)))

(declare-fun c!439505 () Bool)

(assert (=> d!783506 (= c!439505 (is-Nil!31378 lt!962457))))

(assert (=> d!783506 (= (++!7815 lt!962457 lt!962468) lt!962578)))

(declare-fun b!2719685 () Bool)

(declare-fun res!1142348 () Bool)

(assert (=> b!2719685 (=> (not res!1142348) (not e!1714130))))

(declare-fun size!24206 (List!31478) Int)

(assert (=> b!2719685 (= res!1142348 (= (size!24206 lt!962578) (+ (size!24206 lt!962457) (size!24206 lt!962468))))))

(declare-fun b!2719686 () Bool)

(assert (=> b!2719686 (= e!1714130 (or (not (= lt!962468 Nil!31378)) (= lt!962578 lt!962457)))))

(assert (= (and d!783506 c!439505) b!2719683))

(assert (= (and d!783506 (not c!439505)) b!2719684))

(assert (= (and d!783506 res!1142347) b!2719685))

(assert (= (and b!2719685 res!1142348) b!2719686))

(declare-fun m!3119611 () Bool)

(assert (=> b!2719684 m!3119611))

(declare-fun m!3119613 () Bool)

(assert (=> d!783506 m!3119613))

(declare-fun m!3119615 () Bool)

(assert (=> d!783506 m!3119615))

(declare-fun m!3119617 () Bool)

(assert (=> d!783506 m!3119617))

(declare-fun m!3119619 () Bool)

(assert (=> b!2719685 m!3119619))

(declare-fun m!3119621 () Bool)

(assert (=> b!2719685 m!3119621))

(declare-fun m!3119623 () Bool)

(assert (=> b!2719685 m!3119623))

(assert (=> b!2719491 d!783506))

(declare-fun d!783508 () Bool)

(declare-fun e!1714133 () Bool)

(assert (=> d!783508 e!1714133))

(declare-fun res!1142351 () Bool)

(assert (=> d!783508 (=> (not res!1142351) (not e!1714133))))

(declare-fun append!822 (Conc!9832 Token!9066) Conc!9832)

(assert (=> d!783508 (= res!1142351 (isBalanced!2977 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467)))))))

(declare-fun lt!962581 () BalanceConc!19278)

(assert (=> d!783508 (= lt!962581 (BalanceConc!19279 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467)))))))

(assert (=> d!783508 (= (append!820 acc!331 (_1!18167 (v!33039 lt!962467))) lt!962581)))

(declare-fun b!2719689 () Bool)

(declare-fun $colon+!180 (List!31478 Token!9066) List!31478)

(assert (=> b!2719689 (= e!1714133 (= (list!11895 lt!962581) ($colon+!180 (list!11895 acc!331) (_1!18167 (v!33039 lt!962467)))))))

(assert (= (and d!783508 res!1142351) b!2719689))

(declare-fun m!3119625 () Bool)

(assert (=> d!783508 m!3119625))

(assert (=> d!783508 m!3119625))

(declare-fun m!3119627 () Bool)

(assert (=> d!783508 m!3119627))

(declare-fun m!3119629 () Bool)

(assert (=> b!2719689 m!3119629))

(assert (=> b!2719689 m!3119245))

(assert (=> b!2719689 m!3119245))

(declare-fun m!3119631 () Bool)

(assert (=> b!2719689 m!3119631))

(assert (=> b!2719491 d!783508))

(declare-fun d!783510 () Bool)

(assert (=> d!783510 (= (list!11895 (append!820 acc!331 (_1!18167 (v!33039 lt!962467)))) (list!11899 (c!439468 (append!820 acc!331 (_1!18167 (v!33039 lt!962467))))))))

(declare-fun bs!488350 () Bool)

(assert (= bs!488350 d!783510))

(declare-fun m!3119633 () Bool)

(assert (=> bs!488350 m!3119633))

(assert (=> b!2719491 d!783510))

(declare-fun b!2719690 () Bool)

(declare-fun e!1714135 () List!31476)

(assert (=> b!2719690 (= e!1714135 lt!962459)))

(declare-fun b!2719692 () Bool)

(declare-fun res!1142352 () Bool)

(declare-fun e!1714134 () Bool)

(assert (=> b!2719692 (=> (not res!1142352) (not e!1714134))))

(declare-fun lt!962582 () List!31476)

(assert (=> b!2719692 (= res!1142352 (= (size!24205 lt!962582) (+ (size!24205 (++!7816 lt!962458 lt!962464)) (size!24205 lt!962459))))))

(declare-fun d!783512 () Bool)

(assert (=> d!783512 e!1714134))

(declare-fun res!1142353 () Bool)

(assert (=> d!783512 (=> (not res!1142353) (not e!1714134))))

(assert (=> d!783512 (= res!1142353 (= (content!4444 lt!962582) (set.union (content!4444 (++!7816 lt!962458 lt!962464)) (content!4444 lt!962459))))))

(assert (=> d!783512 (= lt!962582 e!1714135)))

(declare-fun c!439507 () Bool)

(assert (=> d!783512 (= c!439507 (is-Nil!31376 (++!7816 lt!962458 lt!962464)))))

(assert (=> d!783512 (= (++!7816 (++!7816 lt!962458 lt!962464) lt!962459) lt!962582)))

(declare-fun b!2719693 () Bool)

(assert (=> b!2719693 (= e!1714134 (or (not (= lt!962459 Nil!31376)) (= lt!962582 (++!7816 lt!962458 lt!962464))))))

(declare-fun b!2719691 () Bool)

(assert (=> b!2719691 (= e!1714135 (Cons!31376 (h!36796 (++!7816 lt!962458 lt!962464)) (++!7816 (t!226340 (++!7816 lt!962458 lt!962464)) lt!962459)))))

(assert (= (and d!783512 c!439507) b!2719690))

(assert (= (and d!783512 (not c!439507)) b!2719691))

(assert (= (and d!783512 res!1142353) b!2719692))

(assert (= (and b!2719692 res!1142352) b!2719693))

(declare-fun m!3119635 () Bool)

(assert (=> b!2719692 m!3119635))

(assert (=> b!2719692 m!3119301))

(declare-fun m!3119637 () Bool)

(assert (=> b!2719692 m!3119637))

(declare-fun m!3119639 () Bool)

(assert (=> b!2719692 m!3119639))

(declare-fun m!3119641 () Bool)

(assert (=> d!783512 m!3119641))

(assert (=> d!783512 m!3119301))

(declare-fun m!3119643 () Bool)

(assert (=> d!783512 m!3119643))

(declare-fun m!3119645 () Bool)

(assert (=> d!783512 m!3119645))

(declare-fun m!3119647 () Bool)

(assert (=> b!2719691 m!3119647))

(assert (=> b!2719491 d!783512))

(declare-fun d!783514 () Bool)

(assert (=> d!783514 (= (list!11895 (_1!18166 lt!962465)) (list!11899 (c!439468 (_1!18166 lt!962465))))))

(declare-fun bs!488351 () Bool)

(assert (= bs!488351 d!783514))

(declare-fun m!3119649 () Bool)

(assert (=> bs!488351 m!3119649))

(assert (=> b!2719491 d!783514))

(declare-fun b!2719695 () Bool)

(declare-fun e!1714136 () List!31478)

(assert (=> b!2719695 (= e!1714136 (Cons!31378 (h!36798 lt!962457) (++!7815 (t!226342 lt!962457) (++!7815 lt!962468 lt!962460))))))

(declare-fun b!2719694 () Bool)

(assert (=> b!2719694 (= e!1714136 (++!7815 lt!962468 lt!962460))))

(declare-fun d!783516 () Bool)

(declare-fun e!1714137 () Bool)

(assert (=> d!783516 e!1714137))

(declare-fun res!1142354 () Bool)

(assert (=> d!783516 (=> (not res!1142354) (not e!1714137))))

(declare-fun lt!962583 () List!31478)

(assert (=> d!783516 (= res!1142354 (= (content!4445 lt!962583) (set.union (content!4445 lt!962457) (content!4445 (++!7815 lt!962468 lt!962460)))))))

(assert (=> d!783516 (= lt!962583 e!1714136)))

(declare-fun c!439508 () Bool)

(assert (=> d!783516 (= c!439508 (is-Nil!31378 lt!962457))))

(assert (=> d!783516 (= (++!7815 lt!962457 (++!7815 lt!962468 lt!962460)) lt!962583)))

(declare-fun b!2719696 () Bool)

(declare-fun res!1142355 () Bool)

(assert (=> b!2719696 (=> (not res!1142355) (not e!1714137))))

(assert (=> b!2719696 (= res!1142355 (= (size!24206 lt!962583) (+ (size!24206 lt!962457) (size!24206 (++!7815 lt!962468 lt!962460)))))))

(declare-fun b!2719697 () Bool)

(assert (=> b!2719697 (= e!1714137 (or (not (= (++!7815 lt!962468 lt!962460) Nil!31378)) (= lt!962583 lt!962457)))))

(assert (= (and d!783516 c!439508) b!2719694))

(assert (= (and d!783516 (not c!439508)) b!2719695))

(assert (= (and d!783516 res!1142354) b!2719696))

(assert (= (and b!2719696 res!1142355) b!2719697))

(assert (=> b!2719695 m!3119291))

(declare-fun m!3119651 () Bool)

(assert (=> b!2719695 m!3119651))

(declare-fun m!3119653 () Bool)

(assert (=> d!783516 m!3119653))

(assert (=> d!783516 m!3119615))

(assert (=> d!783516 m!3119291))

(declare-fun m!3119655 () Bool)

(assert (=> d!783516 m!3119655))

(declare-fun m!3119657 () Bool)

(assert (=> b!2719696 m!3119657))

(assert (=> b!2719696 m!3119621))

(assert (=> b!2719696 m!3119291))

(declare-fun m!3119659 () Bool)

(assert (=> b!2719696 m!3119659))

(assert (=> b!2719491 d!783516))

(declare-fun b!2719698 () Bool)

(declare-fun res!1142356 () Bool)

(declare-fun e!1714138 () Bool)

(assert (=> b!2719698 (=> (not res!1142356) (not e!1714138))))

(declare-fun lt!962586 () tuple2!31068)

(assert (=> b!2719698 (= res!1142356 (= (list!11895 (_1!18166 lt!962586)) (_1!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2719699 () Bool)

(declare-fun e!1714141 () tuple2!31068)

(declare-fun lt!962585 () tuple2!31068)

(declare-fun lt!962584 () Option!6198)

(assert (=> b!2719699 (= e!1714141 (tuple2!31069 (prepend!1132 (_1!18166 lt!962585) (_1!18167 (v!33039 lt!962584))) (_2!18166 lt!962585)))))

(assert (=> b!2719699 (= lt!962585 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962584))))))

(declare-fun b!2719700 () Bool)

(declare-fun e!1714140 () Bool)

(assert (=> b!2719700 (= e!1714140 (not (isEmpty!17907 (_1!18166 lt!962586))))))

(declare-fun b!2719701 () Bool)

(assert (=> b!2719701 (= e!1714138 (= (list!11894 (_2!18166 lt!962586)) (_2!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2719702 () Bool)

(assert (=> b!2719702 (= e!1714141 (tuple2!31069 (BalanceConc!19279 Empty!9832) (_2!18167 (v!33039 lt!962467))))))

(declare-fun b!2719703 () Bool)

(declare-fun e!1714139 () Bool)

(assert (=> b!2719703 (= e!1714139 (= (list!11894 (_2!18166 lt!962586)) (list!11894 (_2!18167 (v!33039 lt!962467)))))))

(declare-fun b!2719704 () Bool)

(assert (=> b!2719704 (= e!1714139 e!1714140)))

(declare-fun res!1142358 () Bool)

(assert (=> b!2719704 (= res!1142358 (< (size!24203 (_2!18166 lt!962586)) (size!24203 (_2!18167 (v!33039 lt!962467)))))))

(assert (=> b!2719704 (=> (not res!1142358) (not e!1714140))))

(declare-fun d!783518 () Bool)

(assert (=> d!783518 e!1714138))

(declare-fun res!1142357 () Bool)

(assert (=> d!783518 (=> (not res!1142357) (not e!1714138))))

(assert (=> d!783518 (= res!1142357 e!1714139)))

(declare-fun c!439510 () Bool)

(assert (=> d!783518 (= c!439510 (> (size!24204 (_1!18166 lt!962586)) 0))))

(assert (=> d!783518 (= lt!962586 e!1714141)))

(declare-fun c!439509 () Bool)

(assert (=> d!783518 (= c!439509 (is-Some!6197 lt!962584))))

(assert (=> d!783518 (= lt!962584 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962467))))))

(assert (=> d!783518 (= (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962467))) lt!962586)))

(assert (= (and d!783518 c!439509) b!2719699))

(assert (= (and d!783518 (not c!439509)) b!2719702))

(assert (= (and d!783518 c!439510) b!2719704))

(assert (= (and d!783518 (not c!439510)) b!2719703))

(assert (= (and b!2719704 res!1142358) b!2719700))

(assert (= (and d!783518 res!1142357) b!2719698))

(assert (= (and b!2719698 res!1142356) b!2719701))

(declare-fun m!3119661 () Bool)

(assert (=> b!2719704 m!3119661))

(declare-fun m!3119663 () Bool)

(assert (=> b!2719704 m!3119663))

(declare-fun m!3119665 () Bool)

(assert (=> b!2719703 m!3119665))

(assert (=> b!2719703 m!3119319))

(declare-fun m!3119667 () Bool)

(assert (=> b!2719700 m!3119667))

(declare-fun m!3119669 () Bool)

(assert (=> d!783518 m!3119669))

(declare-fun m!3119671 () Bool)

(assert (=> d!783518 m!3119671))

(declare-fun m!3119673 () Bool)

(assert (=> b!2719698 m!3119673))

(assert (=> b!2719698 m!3119319))

(assert (=> b!2719698 m!3119319))

(declare-fun m!3119675 () Bool)

(assert (=> b!2719698 m!3119675))

(declare-fun m!3119677 () Bool)

(assert (=> b!2719699 m!3119677))

(declare-fun m!3119679 () Bool)

(assert (=> b!2719699 m!3119679))

(assert (=> b!2719701 m!3119665))

(assert (=> b!2719701 m!3119319))

(assert (=> b!2719701 m!3119319))

(assert (=> b!2719701 m!3119675))

(assert (=> b!2719491 d!783518))

(declare-fun b!2719705 () Bool)

(declare-fun e!1714143 () List!31476)

(assert (=> b!2719705 (= e!1714143 lt!962459)))

(declare-fun b!2719707 () Bool)

(declare-fun res!1142359 () Bool)

(declare-fun e!1714142 () Bool)

(assert (=> b!2719707 (=> (not res!1142359) (not e!1714142))))

(declare-fun lt!962587 () List!31476)

(assert (=> b!2719707 (= res!1142359 (= (size!24205 lt!962587) (+ (size!24205 lt!962464) (size!24205 lt!962459))))))

(declare-fun d!783520 () Bool)

(assert (=> d!783520 e!1714142))

(declare-fun res!1142360 () Bool)

(assert (=> d!783520 (=> (not res!1142360) (not e!1714142))))

(assert (=> d!783520 (= res!1142360 (= (content!4444 lt!962587) (set.union (content!4444 lt!962464) (content!4444 lt!962459))))))

(assert (=> d!783520 (= lt!962587 e!1714143)))

(declare-fun c!439511 () Bool)

(assert (=> d!783520 (= c!439511 (is-Nil!31376 lt!962464))))

(assert (=> d!783520 (= (++!7816 lt!962464 lt!962459) lt!962587)))

(declare-fun b!2719708 () Bool)

(assert (=> b!2719708 (= e!1714142 (or (not (= lt!962459 Nil!31376)) (= lt!962587 lt!962464)))))

(declare-fun b!2719706 () Bool)

(assert (=> b!2719706 (= e!1714143 (Cons!31376 (h!36796 lt!962464) (++!7816 (t!226340 lt!962464) lt!962459)))))

(assert (= (and d!783520 c!439511) b!2719705))

(assert (= (and d!783520 (not c!439511)) b!2719706))

(assert (= (and d!783520 res!1142360) b!2719707))

(assert (= (and b!2719707 res!1142359) b!2719708))

(declare-fun m!3119681 () Bool)

(assert (=> b!2719707 m!3119681))

(declare-fun m!3119683 () Bool)

(assert (=> b!2719707 m!3119683))

(assert (=> b!2719707 m!3119639))

(declare-fun m!3119685 () Bool)

(assert (=> d!783520 m!3119685))

(declare-fun m!3119687 () Bool)

(assert (=> d!783520 m!3119687))

(assert (=> d!783520 m!3119645))

(declare-fun m!3119689 () Bool)

(assert (=> b!2719706 m!3119689))

(assert (=> b!2719491 d!783520))

(declare-fun e!1714144 () List!31478)

(declare-fun b!2719710 () Bool)

(assert (=> b!2719710 (= e!1714144 (Cons!31378 (h!36798 (++!7815 lt!962457 lt!962468)) (++!7815 (t!226342 (++!7815 lt!962457 lt!962468)) lt!962460)))))

(declare-fun b!2719709 () Bool)

(assert (=> b!2719709 (= e!1714144 lt!962460)))

(declare-fun d!783522 () Bool)

(declare-fun e!1714145 () Bool)

(assert (=> d!783522 e!1714145))

(declare-fun res!1142361 () Bool)

(assert (=> d!783522 (=> (not res!1142361) (not e!1714145))))

(declare-fun lt!962588 () List!31478)

(assert (=> d!783522 (= res!1142361 (= (content!4445 lt!962588) (set.union (content!4445 (++!7815 lt!962457 lt!962468)) (content!4445 lt!962460))))))

(assert (=> d!783522 (= lt!962588 e!1714144)))

(declare-fun c!439512 () Bool)

(assert (=> d!783522 (= c!439512 (is-Nil!31378 (++!7815 lt!962457 lt!962468)))))

(assert (=> d!783522 (= (++!7815 (++!7815 lt!962457 lt!962468) lt!962460) lt!962588)))

(declare-fun b!2719711 () Bool)

(declare-fun res!1142362 () Bool)

(assert (=> b!2719711 (=> (not res!1142362) (not e!1714145))))

(assert (=> b!2719711 (= res!1142362 (= (size!24206 lt!962588) (+ (size!24206 (++!7815 lt!962457 lt!962468)) (size!24206 lt!962460))))))

(declare-fun b!2719712 () Bool)

(assert (=> b!2719712 (= e!1714145 (or (not (= lt!962460 Nil!31378)) (= lt!962588 (++!7815 lt!962457 lt!962468))))))

(assert (= (and d!783522 c!439512) b!2719709))

(assert (= (and d!783522 (not c!439512)) b!2719710))

(assert (= (and d!783522 res!1142361) b!2719711))

(assert (= (and b!2719711 res!1142362) b!2719712))

(declare-fun m!3119691 () Bool)

(assert (=> b!2719710 m!3119691))

(declare-fun m!3119693 () Bool)

(assert (=> d!783522 m!3119693))

(assert (=> d!783522 m!3119293))

(declare-fun m!3119695 () Bool)

(assert (=> d!783522 m!3119695))

(declare-fun m!3119697 () Bool)

(assert (=> d!783522 m!3119697))

(declare-fun m!3119699 () Bool)

(assert (=> b!2719711 m!3119699))

(assert (=> b!2719711 m!3119293))

(declare-fun m!3119701 () Bool)

(assert (=> b!2719711 m!3119701))

(declare-fun m!3119703 () Bool)

(assert (=> b!2719711 m!3119703))

(assert (=> b!2719491 d!783522))

(declare-fun b!2719713 () Bool)

(declare-fun e!1714147 () List!31476)

(assert (=> b!2719713 (= e!1714147 lt!962464)))

(declare-fun b!2719715 () Bool)

(declare-fun res!1142363 () Bool)

(declare-fun e!1714146 () Bool)

(assert (=> b!2719715 (=> (not res!1142363) (not e!1714146))))

(declare-fun lt!962589 () List!31476)

(assert (=> b!2719715 (= res!1142363 (= (size!24205 lt!962589) (+ (size!24205 lt!962458) (size!24205 lt!962464))))))

(declare-fun d!783524 () Bool)

(assert (=> d!783524 e!1714146))

(declare-fun res!1142364 () Bool)

(assert (=> d!783524 (=> (not res!1142364) (not e!1714146))))

(assert (=> d!783524 (= res!1142364 (= (content!4444 lt!962589) (set.union (content!4444 lt!962458) (content!4444 lt!962464))))))

(assert (=> d!783524 (= lt!962589 e!1714147)))

(declare-fun c!439513 () Bool)

(assert (=> d!783524 (= c!439513 (is-Nil!31376 lt!962458))))

(assert (=> d!783524 (= (++!7816 lt!962458 lt!962464) lt!962589)))

(declare-fun b!2719716 () Bool)

(assert (=> b!2719716 (= e!1714146 (or (not (= lt!962464 Nil!31376)) (= lt!962589 lt!962458)))))

(declare-fun b!2719714 () Bool)

(assert (=> b!2719714 (= e!1714147 (Cons!31376 (h!36796 lt!962458) (++!7816 (t!226340 lt!962458) lt!962464)))))

(assert (= (and d!783524 c!439513) b!2719713))

(assert (= (and d!783524 (not c!439513)) b!2719714))

(assert (= (and d!783524 res!1142364) b!2719715))

(assert (= (and b!2719715 res!1142363) b!2719716))

(declare-fun m!3119705 () Bool)

(assert (=> b!2719715 m!3119705))

(assert (=> b!2719715 m!3119593))

(assert (=> b!2719715 m!3119683))

(declare-fun m!3119707 () Bool)

(assert (=> d!783524 m!3119707))

(assert (=> d!783524 m!3119599))

(assert (=> d!783524 m!3119687))

(declare-fun m!3119709 () Bool)

(assert (=> b!2719714 m!3119709))

(assert (=> b!2719491 d!783524))

(declare-fun d!783526 () Bool)

(assert (=> d!783526 (= (list!11894 (_2!18167 (v!33039 lt!962467))) (list!11898 (c!439466 (_2!18167 (v!33039 lt!962467)))))))

(declare-fun bs!488352 () Bool)

(assert (= bs!488352 d!783526))

(declare-fun m!3119711 () Bool)

(assert (=> bs!488352 m!3119711))

(assert (=> b!2719491 d!783526))

(declare-fun b!2719718 () Bool)

(declare-fun e!1714148 () List!31478)

(assert (=> b!2719718 (= e!1714148 (Cons!31378 (h!36798 lt!962468) (++!7815 (t!226342 lt!962468) lt!962460)))))

(declare-fun b!2719717 () Bool)

(assert (=> b!2719717 (= e!1714148 lt!962460)))

(declare-fun d!783528 () Bool)

(declare-fun e!1714149 () Bool)

(assert (=> d!783528 e!1714149))

(declare-fun res!1142365 () Bool)

(assert (=> d!783528 (=> (not res!1142365) (not e!1714149))))

(declare-fun lt!962590 () List!31478)

(assert (=> d!783528 (= res!1142365 (= (content!4445 lt!962590) (set.union (content!4445 lt!962468) (content!4445 lt!962460))))))

(assert (=> d!783528 (= lt!962590 e!1714148)))

(declare-fun c!439514 () Bool)

(assert (=> d!783528 (= c!439514 (is-Nil!31378 lt!962468))))

(assert (=> d!783528 (= (++!7815 lt!962468 lt!962460) lt!962590)))

(declare-fun b!2719719 () Bool)

(declare-fun res!1142366 () Bool)

(assert (=> b!2719719 (=> (not res!1142366) (not e!1714149))))

(assert (=> b!2719719 (= res!1142366 (= (size!24206 lt!962590) (+ (size!24206 lt!962468) (size!24206 lt!962460))))))

(declare-fun b!2719720 () Bool)

(assert (=> b!2719720 (= e!1714149 (or (not (= lt!962460 Nil!31378)) (= lt!962590 lt!962468)))))

(assert (= (and d!783528 c!439514) b!2719717))

(assert (= (and d!783528 (not c!439514)) b!2719718))

(assert (= (and d!783528 res!1142365) b!2719719))

(assert (= (and b!2719719 res!1142366) b!2719720))

(declare-fun m!3119713 () Bool)

(assert (=> b!2719718 m!3119713))

(declare-fun m!3119715 () Bool)

(assert (=> d!783528 m!3119715))

(assert (=> d!783528 m!3119617))

(assert (=> d!783528 m!3119697))

(declare-fun m!3119717 () Bool)

(assert (=> b!2719719 m!3119717))

(assert (=> b!2719719 m!3119623))

(assert (=> b!2719719 m!3119703))

(assert (=> b!2719491 d!783528))

(declare-fun d!783530 () Bool)

(declare-fun isBalanced!2978 (Conc!9831) Bool)

(assert (=> d!783530 (= (inv!42617 treated!9) (isBalanced!2978 (c!439466 treated!9)))))

(declare-fun bs!488353 () Bool)

(assert (= bs!488353 d!783530))

(declare-fun m!3119719 () Bool)

(assert (=> bs!488353 m!3119719))

(assert (=> start!263922 d!783530))

(declare-fun d!783532 () Bool)

(assert (=> d!783532 (= (inv!42617 input!603) (isBalanced!2978 (c!439466 input!603)))))

(declare-fun bs!488354 () Bool)

(assert (= bs!488354 d!783532))

(declare-fun m!3119721 () Bool)

(assert (=> bs!488354 m!3119721))

(assert (=> start!263922 d!783532))

(declare-fun d!783534 () Bool)

(assert (=> d!783534 (= (inv!42617 totalInput!328) (isBalanced!2978 (c!439466 totalInput!328)))))

(declare-fun bs!488355 () Bool)

(assert (= bs!488355 d!783534))

(declare-fun m!3119723 () Bool)

(assert (=> bs!488355 m!3119723))

(assert (=> start!263922 d!783534))

(declare-fun d!783536 () Bool)

(assert (=> d!783536 (= (inv!42618 acc!331) (isBalanced!2977 (c!439468 acc!331)))))

(declare-fun bs!488356 () Bool)

(assert (= bs!488356 d!783536))

(declare-fun m!3119725 () Bool)

(assert (=> bs!488356 m!3119725))

(assert (=> start!263922 d!783536))

(declare-fun d!783538 () Bool)

(assert (=> d!783538 (= (isEmpty!17902 (list!11894 (_2!18166 lt!962455))) (is-Nil!31376 (list!11894 (_2!18166 lt!962455))))))

(assert (=> b!2719486 d!783538))

(declare-fun d!783540 () Bool)

(assert (=> d!783540 (= (list!11894 (_2!18166 lt!962455)) (list!11898 (c!439466 (_2!18166 lt!962455))))))

(declare-fun bs!488357 () Bool)

(assert (= bs!488357 d!783540))

(declare-fun m!3119727 () Bool)

(assert (=> bs!488357 m!3119727))

(assert (=> b!2719486 d!783540))

(declare-fun d!783542 () Bool)

(declare-fun c!439515 () Bool)

(assert (=> d!783542 (= c!439515 (is-Node!9831 (c!439466 treated!9)))))

(declare-fun e!1714150 () Bool)

(assert (=> d!783542 (= (inv!42616 (c!439466 treated!9)) e!1714150)))

(declare-fun b!2719721 () Bool)

(assert (=> b!2719721 (= e!1714150 (inv!42625 (c!439466 treated!9)))))

(declare-fun b!2719722 () Bool)

(declare-fun e!1714151 () Bool)

(assert (=> b!2719722 (= e!1714150 e!1714151)))

(declare-fun res!1142367 () Bool)

(assert (=> b!2719722 (= res!1142367 (not (is-Leaf!14977 (c!439466 treated!9))))))

(assert (=> b!2719722 (=> res!1142367 e!1714151)))

(declare-fun b!2719723 () Bool)

(assert (=> b!2719723 (= e!1714151 (inv!42626 (c!439466 treated!9)))))

(assert (= (and d!783542 c!439515) b!2719721))

(assert (= (and d!783542 (not c!439515)) b!2719722))

(assert (= (and b!2719722 (not res!1142367)) b!2719723))

(declare-fun m!3119729 () Bool)

(assert (=> b!2719721 m!3119729))

(declare-fun m!3119731 () Bool)

(assert (=> b!2719723 m!3119731))

(assert (=> b!2719488 d!783542))

(declare-fun d!783544 () Bool)

(assert (=> d!783544 (= (inv!42612 (tag!5306 (h!36797 rules!1182))) (= (mod (str.len (value!154470 (tag!5306 (h!36797 rules!1182)))) 2) 0))))

(assert (=> b!2719494 d!783544))

(declare-fun d!783546 () Bool)

(declare-fun res!1142370 () Bool)

(declare-fun e!1714154 () Bool)

(assert (=> d!783546 (=> (not res!1142370) (not e!1714154))))

(declare-fun semiInverseModEq!1978 (Int Int) Bool)

(assert (=> d!783546 (= res!1142370 (semiInverseModEq!1978 (toChars!6639 (transformation!4802 (h!36797 rules!1182))) (toValue!6780 (transformation!4802 (h!36797 rules!1182)))))))

(assert (=> d!783546 (= (inv!42619 (transformation!4802 (h!36797 rules!1182))) e!1714154)))

(declare-fun b!2719726 () Bool)

(declare-fun equivClasses!1879 (Int Int) Bool)

(assert (=> b!2719726 (= e!1714154 (equivClasses!1879 (toChars!6639 (transformation!4802 (h!36797 rules!1182))) (toValue!6780 (transformation!4802 (h!36797 rules!1182)))))))

(assert (= (and d!783546 res!1142370) b!2719726))

(declare-fun m!3119733 () Bool)

(assert (=> d!783546 m!3119733))

(declare-fun m!3119735 () Bool)

(assert (=> b!2719726 m!3119735))

(assert (=> b!2719494 d!783546))

(declare-fun d!783548 () Bool)

(assert (=> d!783548 (= (isEmpty!17901 rules!1182) (is-Nil!31377 rules!1182))))

(assert (=> b!2719484 d!783548))

(declare-fun d!783550 () Bool)

(declare-fun c!439516 () Bool)

(assert (=> d!783550 (= c!439516 (is-Node!9831 (c!439466 input!603)))))

(declare-fun e!1714155 () Bool)

(assert (=> d!783550 (= (inv!42616 (c!439466 input!603)) e!1714155)))

(declare-fun b!2719727 () Bool)

(assert (=> b!2719727 (= e!1714155 (inv!42625 (c!439466 input!603)))))

(declare-fun b!2719728 () Bool)

(declare-fun e!1714156 () Bool)

(assert (=> b!2719728 (= e!1714155 e!1714156)))

(declare-fun res!1142371 () Bool)

(assert (=> b!2719728 (= res!1142371 (not (is-Leaf!14977 (c!439466 input!603))))))

(assert (=> b!2719728 (=> res!1142371 e!1714156)))

(declare-fun b!2719729 () Bool)

(assert (=> b!2719729 (= e!1714156 (inv!42626 (c!439466 input!603)))))

(assert (= (and d!783550 c!439516) b!2719727))

(assert (= (and d!783550 (not c!439516)) b!2719728))

(assert (= (and b!2719728 (not res!1142371)) b!2719729))

(declare-fun m!3119737 () Bool)

(assert (=> b!2719727 m!3119737))

(declare-fun m!3119739 () Bool)

(assert (=> b!2719729 m!3119739))

(assert (=> b!2719485 d!783550))

(declare-fun d!783552 () Bool)

(assert (=> d!783552 (= (list!11895 acc!331) (list!11899 (c!439468 acc!331)))))

(declare-fun bs!488358 () Bool)

(assert (= bs!488358 d!783552))

(declare-fun m!3119741 () Bool)

(assert (=> bs!488358 m!3119741))

(assert (=> b!2719481 d!783552))

(declare-fun d!783554 () Bool)

(assert (=> d!783554 (= (list!11895 (_1!18166 lt!962455)) (list!11899 (c!439468 (_1!18166 lt!962455))))))

(declare-fun bs!488359 () Bool)

(assert (= bs!488359 d!783554))

(declare-fun m!3119743 () Bool)

(assert (=> bs!488359 m!3119743))

(assert (=> b!2719481 d!783554))

(declare-fun b!2719730 () Bool)

(declare-fun res!1142372 () Bool)

(declare-fun e!1714157 () Bool)

(assert (=> b!2719730 (=> (not res!1142372) (not e!1714157))))

(declare-fun lt!962593 () tuple2!31068)

(assert (=> b!2719730 (= res!1142372 (= (list!11895 (_1!18166 lt!962593)) (_1!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 treated!9)))))))

(declare-fun b!2719731 () Bool)

(declare-fun e!1714160 () tuple2!31068)

(declare-fun lt!962592 () tuple2!31068)

(declare-fun lt!962591 () Option!6198)

(assert (=> b!2719731 (= e!1714160 (tuple2!31069 (prepend!1132 (_1!18166 lt!962592) (_1!18167 (v!33039 lt!962591))) (_2!18166 lt!962592)))))

(assert (=> b!2719731 (= lt!962592 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962591))))))

(declare-fun b!2719732 () Bool)

(declare-fun e!1714159 () Bool)

(assert (=> b!2719732 (= e!1714159 (not (isEmpty!17907 (_1!18166 lt!962593))))))

(declare-fun b!2719733 () Bool)

(assert (=> b!2719733 (= e!1714157 (= (list!11894 (_2!18166 lt!962593)) (_2!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 treated!9)))))))

(declare-fun b!2719734 () Bool)

(assert (=> b!2719734 (= e!1714160 (tuple2!31069 (BalanceConc!19279 Empty!9832) treated!9))))

(declare-fun b!2719735 () Bool)

(declare-fun e!1714158 () Bool)

(assert (=> b!2719735 (= e!1714158 (= (list!11894 (_2!18166 lt!962593)) (list!11894 treated!9)))))

(declare-fun b!2719736 () Bool)

(assert (=> b!2719736 (= e!1714158 e!1714159)))

(declare-fun res!1142374 () Bool)

(assert (=> b!2719736 (= res!1142374 (< (size!24203 (_2!18166 lt!962593)) (size!24203 treated!9)))))

(assert (=> b!2719736 (=> (not res!1142374) (not e!1714159))))

(declare-fun d!783556 () Bool)

(assert (=> d!783556 e!1714157))

(declare-fun res!1142373 () Bool)

(assert (=> d!783556 (=> (not res!1142373) (not e!1714157))))

(assert (=> d!783556 (= res!1142373 e!1714158)))

(declare-fun c!439518 () Bool)

(assert (=> d!783556 (= c!439518 (> (size!24204 (_1!18166 lt!962593)) 0))))

(assert (=> d!783556 (= lt!962593 e!1714160)))

(declare-fun c!439517 () Bool)

(assert (=> d!783556 (= c!439517 (is-Some!6197 lt!962591))))

(assert (=> d!783556 (= lt!962591 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 treated!9))))

(assert (=> d!783556 (= (lexRec!658 thiss!11556 rules!1182 treated!9) lt!962593)))

(assert (= (and d!783556 c!439517) b!2719731))

(assert (= (and d!783556 (not c!439517)) b!2719734))

(assert (= (and d!783556 c!439518) b!2719736))

(assert (= (and d!783556 (not c!439518)) b!2719735))

(assert (= (and b!2719736 res!1142374) b!2719732))

(assert (= (and d!783556 res!1142373) b!2719730))

(assert (= (and b!2719730 res!1142372) b!2719733))

(declare-fun m!3119745 () Bool)

(assert (=> b!2719736 m!3119745))

(declare-fun m!3119747 () Bool)

(assert (=> b!2719736 m!3119747))

(declare-fun m!3119749 () Bool)

(assert (=> b!2719735 m!3119749))

(assert (=> b!2719735 m!3119329))

(declare-fun m!3119751 () Bool)

(assert (=> b!2719732 m!3119751))

(declare-fun m!3119753 () Bool)

(assert (=> d!783556 m!3119753))

(declare-fun m!3119755 () Bool)

(assert (=> d!783556 m!3119755))

(declare-fun m!3119757 () Bool)

(assert (=> b!2719730 m!3119757))

(assert (=> b!2719730 m!3119329))

(assert (=> b!2719730 m!3119329))

(declare-fun m!3119759 () Bool)

(assert (=> b!2719730 m!3119759))

(declare-fun m!3119761 () Bool)

(assert (=> b!2719731 m!3119761))

(declare-fun m!3119763 () Bool)

(assert (=> b!2719731 m!3119763))

(assert (=> b!2719733 m!3119749))

(assert (=> b!2719733 m!3119329))

(assert (=> b!2719733 m!3119329))

(assert (=> b!2719733 m!3119759))

(assert (=> b!2719481 d!783556))

(declare-fun d!783558 () Bool)

(declare-fun c!439521 () Bool)

(assert (=> d!783558 (= c!439521 (is-Node!9832 (c!439468 acc!331)))))

(declare-fun e!1714165 () Bool)

(assert (=> d!783558 (= (inv!42615 (c!439468 acc!331)) e!1714165)))

(declare-fun b!2719743 () Bool)

(declare-fun inv!42627 (Conc!9832) Bool)

(assert (=> b!2719743 (= e!1714165 (inv!42627 (c!439468 acc!331)))))

(declare-fun b!2719744 () Bool)

(declare-fun e!1714166 () Bool)

(assert (=> b!2719744 (= e!1714165 e!1714166)))

(declare-fun res!1142377 () Bool)

(assert (=> b!2719744 (= res!1142377 (not (is-Leaf!14978 (c!439468 acc!331))))))

(assert (=> b!2719744 (=> res!1142377 e!1714166)))

(declare-fun b!2719745 () Bool)

(declare-fun inv!42628 (Conc!9832) Bool)

(assert (=> b!2719745 (= e!1714166 (inv!42628 (c!439468 acc!331)))))

(assert (= (and d!783558 c!439521) b!2719743))

(assert (= (and d!783558 (not c!439521)) b!2719744))

(assert (= (and b!2719744 (not res!1142377)) b!2719745))

(declare-fun m!3119765 () Bool)

(assert (=> b!2719743 m!3119765))

(declare-fun m!3119767 () Bool)

(assert (=> b!2719745 m!3119767))

(assert (=> b!2719482 d!783558))

(declare-fun d!783560 () Bool)

(assert (=> d!783560 (= (list!11894 totalInput!328) (list!11898 (c!439466 totalInput!328)))))

(declare-fun bs!488360 () Bool)

(assert (= bs!488360 d!783560))

(declare-fun m!3119769 () Bool)

(assert (=> bs!488360 m!3119769))

(assert (=> b!2719493 d!783560))

(declare-fun b!2719746 () Bool)

(declare-fun e!1714168 () List!31476)

(assert (=> b!2719746 (= e!1714168 (list!11894 input!603))))

(declare-fun b!2719748 () Bool)

(declare-fun res!1142378 () Bool)

(declare-fun e!1714167 () Bool)

(assert (=> b!2719748 (=> (not res!1142378) (not e!1714167))))

(declare-fun lt!962594 () List!31476)

(assert (=> b!2719748 (= res!1142378 (= (size!24205 lt!962594) (+ (size!24205 lt!962458) (size!24205 (list!11894 input!603)))))))

(declare-fun d!783562 () Bool)

(assert (=> d!783562 e!1714167))

(declare-fun res!1142379 () Bool)

(assert (=> d!783562 (=> (not res!1142379) (not e!1714167))))

(assert (=> d!783562 (= res!1142379 (= (content!4444 lt!962594) (set.union (content!4444 lt!962458) (content!4444 (list!11894 input!603)))))))

(assert (=> d!783562 (= lt!962594 e!1714168)))

(declare-fun c!439522 () Bool)

(assert (=> d!783562 (= c!439522 (is-Nil!31376 lt!962458))))

(assert (=> d!783562 (= (++!7816 lt!962458 (list!11894 input!603)) lt!962594)))

(declare-fun b!2719749 () Bool)

(assert (=> b!2719749 (= e!1714167 (or (not (= (list!11894 input!603) Nil!31376)) (= lt!962594 lt!962458)))))

(declare-fun b!2719747 () Bool)

(assert (=> b!2719747 (= e!1714168 (Cons!31376 (h!36796 lt!962458) (++!7816 (t!226340 lt!962458) (list!11894 input!603))))))

(assert (= (and d!783562 c!439522) b!2719746))

(assert (= (and d!783562 (not c!439522)) b!2719747))

(assert (= (and d!783562 res!1142379) b!2719748))

(assert (= (and b!2719748 res!1142378) b!2719749))

(declare-fun m!3119771 () Bool)

(assert (=> b!2719748 m!3119771))

(assert (=> b!2719748 m!3119593))

(assert (=> b!2719748 m!3119325))

(declare-fun m!3119773 () Bool)

(assert (=> b!2719748 m!3119773))

(declare-fun m!3119775 () Bool)

(assert (=> d!783562 m!3119775))

(assert (=> d!783562 m!3119599))

(assert (=> d!783562 m!3119325))

(declare-fun m!3119777 () Bool)

(assert (=> d!783562 m!3119777))

(assert (=> b!2719747 m!3119325))

(declare-fun m!3119779 () Bool)

(assert (=> b!2719747 m!3119779))

(assert (=> b!2719493 d!783562))

(declare-fun d!783564 () Bool)

(assert (=> d!783564 (= (list!11894 input!603) (list!11898 (c!439466 input!603)))))

(declare-fun bs!488361 () Bool)

(assert (= bs!488361 d!783564))

(declare-fun m!3119781 () Bool)

(assert (=> bs!488361 m!3119781))

(assert (=> b!2719493 d!783564))

(declare-fun d!783566 () Bool)

(assert (=> d!783566 (= (list!11894 treated!9) (list!11898 (c!439466 treated!9)))))

(declare-fun bs!488362 () Bool)

(assert (= bs!488362 d!783566))

(declare-fun m!3119783 () Bool)

(assert (=> bs!488362 m!3119783))

(assert (=> b!2719493 d!783566))

(declare-fun d!783568 () Bool)

(declare-fun e!1714171 () Bool)

(assert (=> d!783568 e!1714171))

(declare-fun res!1142382 () Bool)

(assert (=> d!783568 (=> (not res!1142382) (not e!1714171))))

(declare-fun prepend!1134 (Conc!9832 Token!9066) Conc!9832)

(assert (=> d!783568 (= res!1142382 (isBalanced!2977 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467)))))))

(declare-fun lt!962597 () BalanceConc!19278)

(assert (=> d!783568 (= lt!962597 (BalanceConc!19279 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467)))))))

(assert (=> d!783568 (= (prepend!1132 (_1!18166 lt!962465) (_1!18167 (v!33039 lt!962467))) lt!962597)))

(declare-fun b!2719752 () Bool)

(assert (=> b!2719752 (= e!1714171 (= (list!11895 lt!962597) (Cons!31378 (_1!18167 (v!33039 lt!962467)) (list!11895 (_1!18166 lt!962465)))))))

(assert (= (and d!783568 res!1142382) b!2719752))

(declare-fun m!3119785 () Bool)

(assert (=> d!783568 m!3119785))

(assert (=> d!783568 m!3119785))

(declare-fun m!3119787 () Bool)

(assert (=> d!783568 m!3119787))

(declare-fun m!3119789 () Bool)

(assert (=> b!2719752 m!3119789))

(assert (=> b!2719752 m!3119309))

(assert (=> b!2719483 d!783568))

(declare-fun b!2719765 () Bool)

(declare-fun e!1714174 () Bool)

(declare-fun tp!858347 () Bool)

(assert (=> b!2719765 (= e!1714174 tp!858347)))

(declare-fun b!2719766 () Bool)

(declare-fun tp!858349 () Bool)

(declare-fun tp!858348 () Bool)

(assert (=> b!2719766 (= e!1714174 (and tp!858349 tp!858348))))

(declare-fun b!2719763 () Bool)

(declare-fun tp_is_empty!13887 () Bool)

(assert (=> b!2719763 (= e!1714174 tp_is_empty!13887)))

(declare-fun b!2719764 () Bool)

(declare-fun tp!858346 () Bool)

(declare-fun tp!858345 () Bool)

(assert (=> b!2719764 (= e!1714174 (and tp!858346 tp!858345))))

(assert (=> b!2719494 (= tp!858307 e!1714174)))

(assert (= (and b!2719494 (is-ElementMatch!7954 (regex!4802 (h!36797 rules!1182)))) b!2719763))

(assert (= (and b!2719494 (is-Concat!12979 (regex!4802 (h!36797 rules!1182)))) b!2719764))

(assert (= (and b!2719494 (is-Star!7954 (regex!4802 (h!36797 rules!1182)))) b!2719765))

(assert (= (and b!2719494 (is-Union!7954 (regex!4802 (h!36797 rules!1182)))) b!2719766))

(declare-fun e!1714179 () Bool)

(declare-fun b!2719775 () Bool)

(declare-fun tp!858357 () Bool)

(declare-fun tp!858358 () Bool)

(assert (=> b!2719775 (= e!1714179 (and (inv!42616 (left!24122 (c!439466 totalInput!328))) tp!858357 (inv!42616 (right!24452 (c!439466 totalInput!328))) tp!858358))))

(declare-fun b!2719777 () Bool)

(declare-fun e!1714180 () Bool)

(declare-fun tp!858356 () Bool)

(assert (=> b!2719777 (= e!1714180 tp!858356)))

(declare-fun b!2719776 () Bool)

(declare-fun inv!42629 (IArray!19667) Bool)

(assert (=> b!2719776 (= e!1714179 (and (inv!42629 (xs!12906 (c!439466 totalInput!328))) e!1714180))))

(assert (=> b!2719489 (= tp!858300 (and (inv!42616 (c!439466 totalInput!328)) e!1714179))))

(assert (= (and b!2719489 (is-Node!9831 (c!439466 totalInput!328))) b!2719775))

(assert (= b!2719776 b!2719777))

(assert (= (and b!2719489 (is-Leaf!14977 (c!439466 totalInput!328))) b!2719776))

(declare-fun m!3119791 () Bool)

(assert (=> b!2719775 m!3119791))

(declare-fun m!3119793 () Bool)

(assert (=> b!2719775 m!3119793))

(declare-fun m!3119795 () Bool)

(assert (=> b!2719776 m!3119795))

(assert (=> b!2719489 m!3119233))

(declare-fun e!1714181 () Bool)

(declare-fun b!2719778 () Bool)

(declare-fun tp!858360 () Bool)

(declare-fun tp!858361 () Bool)

(assert (=> b!2719778 (= e!1714181 (and (inv!42616 (left!24122 (c!439466 input!603))) tp!858360 (inv!42616 (right!24452 (c!439466 input!603))) tp!858361))))

(declare-fun b!2719780 () Bool)

(declare-fun e!1714182 () Bool)

(declare-fun tp!858359 () Bool)

(assert (=> b!2719780 (= e!1714182 tp!858359)))

(declare-fun b!2719779 () Bool)

(assert (=> b!2719779 (= e!1714181 (and (inv!42629 (xs!12906 (c!439466 input!603))) e!1714182))))

(assert (=> b!2719485 (= tp!858303 (and (inv!42616 (c!439466 input!603)) e!1714181))))

(assert (= (and b!2719485 (is-Node!9831 (c!439466 input!603))) b!2719778))

(assert (= b!2719779 b!2719780))

(assert (= (and b!2719485 (is-Leaf!14977 (c!439466 input!603))) b!2719779))

(declare-fun m!3119797 () Bool)

(assert (=> b!2719778 m!3119797))

(declare-fun m!3119799 () Bool)

(assert (=> b!2719778 m!3119799))

(declare-fun m!3119801 () Bool)

(assert (=> b!2719779 m!3119801))

(assert (=> b!2719485 m!3119321))

(declare-fun b!2719791 () Bool)

(declare-fun b_free!76637 () Bool)

(declare-fun b_next!77341 () Bool)

(assert (=> b!2719791 (= b_free!76637 (not b_next!77341))))

(declare-fun tp!858370 () Bool)

(declare-fun b_and!200391 () Bool)

(assert (=> b!2719791 (= tp!858370 b_and!200391)))

(declare-fun b_free!76639 () Bool)

(declare-fun b_next!77343 () Bool)

(assert (=> b!2719791 (= b_free!76639 (not b_next!77343))))

(declare-fun tb!151847 () Bool)

(declare-fun t!226350 () Bool)

(assert (=> (and b!2719791 (= (toChars!6639 (transformation!4802 (h!36797 (t!226341 rules!1182)))) (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467)))))) t!226350) tb!151847))

(declare-fun result!187632 () Bool)

(assert (= result!187632 result!187622))

(assert (=> d!783492 t!226350))

(declare-fun b_and!200393 () Bool)

(declare-fun tp!858373 () Bool)

(assert (=> b!2719791 (= tp!858373 (and (=> t!226350 result!187632) b_and!200393))))

(declare-fun e!1714192 () Bool)

(assert (=> b!2719791 (= e!1714192 (and tp!858370 tp!858373))))

(declare-fun tp!858372 () Bool)

(declare-fun b!2719790 () Bool)

(declare-fun e!1714193 () Bool)

(assert (=> b!2719790 (= e!1714193 (and tp!858372 (inv!42612 (tag!5306 (h!36797 (t!226341 rules!1182)))) (inv!42619 (transformation!4802 (h!36797 (t!226341 rules!1182)))) e!1714192))))

(declare-fun b!2719789 () Bool)

(declare-fun e!1714191 () Bool)

(declare-fun tp!858371 () Bool)

(assert (=> b!2719789 (= e!1714191 (and e!1714193 tp!858371))))

(assert (=> b!2719487 (= tp!858302 e!1714191)))

(assert (= b!2719790 b!2719791))

(assert (= b!2719789 b!2719790))

(assert (= (and b!2719487 (is-Cons!31377 (t!226341 rules!1182))) b!2719789))

(declare-fun m!3119803 () Bool)

(assert (=> b!2719790 m!3119803))

(declare-fun m!3119805 () Bool)

(assert (=> b!2719790 m!3119805))

(declare-fun tp!858380 () Bool)

(declare-fun e!1714199 () Bool)

(declare-fun tp!858382 () Bool)

(declare-fun b!2719800 () Bool)

(assert (=> b!2719800 (= e!1714199 (and (inv!42615 (left!24123 (c!439468 acc!331))) tp!858382 (inv!42615 (right!24453 (c!439468 acc!331))) tp!858380))))

(declare-fun b!2719802 () Bool)

(declare-fun e!1714200 () Bool)

(declare-fun tp!858381 () Bool)

(assert (=> b!2719802 (= e!1714200 tp!858381)))

(declare-fun b!2719801 () Bool)

(declare-fun inv!42632 (IArray!19669) Bool)

(assert (=> b!2719801 (= e!1714199 (and (inv!42632 (xs!12907 (c!439468 acc!331))) e!1714200))))

(assert (=> b!2719482 (= tp!858304 (and (inv!42615 (c!439468 acc!331)) e!1714199))))

(assert (= (and b!2719482 (is-Node!9832 (c!439468 acc!331))) b!2719800))

(assert (= b!2719801 b!2719802))

(assert (= (and b!2719482 (is-Leaf!14978 (c!439468 acc!331))) b!2719801))

(declare-fun m!3119807 () Bool)

(assert (=> b!2719800 m!3119807))

(declare-fun m!3119809 () Bool)

(assert (=> b!2719800 m!3119809))

(declare-fun m!3119811 () Bool)

(assert (=> b!2719801 m!3119811))

(assert (=> b!2719482 m!3119263))

(declare-fun tp!858385 () Bool)

(declare-fun tp!858384 () Bool)

(declare-fun b!2719803 () Bool)

(declare-fun e!1714201 () Bool)

(assert (=> b!2719803 (= e!1714201 (and (inv!42616 (left!24122 (c!439466 treated!9))) tp!858384 (inv!42616 (right!24452 (c!439466 treated!9))) tp!858385))))

(declare-fun b!2719805 () Bool)

(declare-fun e!1714202 () Bool)

(declare-fun tp!858383 () Bool)

(assert (=> b!2719805 (= e!1714202 tp!858383)))

(declare-fun b!2719804 () Bool)

(assert (=> b!2719804 (= e!1714201 (and (inv!42629 (xs!12906 (c!439466 treated!9))) e!1714202))))

(assert (=> b!2719488 (= tp!858305 (and (inv!42616 (c!439466 treated!9)) e!1714201))))

(assert (= (and b!2719488 (is-Node!9831 (c!439466 treated!9))) b!2719803))

(assert (= b!2719804 b!2719805))

(assert (= (and b!2719488 (is-Leaf!14977 (c!439466 treated!9))) b!2719804))

(declare-fun m!3119813 () Bool)

(assert (=> b!2719803 m!3119813))

(declare-fun m!3119815 () Bool)

(assert (=> b!2719803 m!3119815))

(declare-fun m!3119817 () Bool)

(assert (=> b!2719804 m!3119817))

(assert (=> b!2719488 m!3119265))

(push 1)

(assert (not d!783492))

(assert (not d!783468))

(assert (not b!2719710))

(assert (not b!2719743))

(assert (not b!2719726))

(assert (not b!2719657))

(assert (not b!2719704))

(assert (not d!783458))

(assert (not b!2719729))

(assert (not b!2719685))

(assert (not b!2719777))

(assert (not d!783502))

(assert (not b!2719703))

(assert (not b!2719803))

(assert (not bm!175470))

(assert tp_is_empty!13887)

(assert (not b!2719776))

(assert b_and!200391)

(assert (not b!2719719))

(assert (not d!783472))

(assert (not d!783528))

(assert (not d!783504))

(assert (not d!783508))

(assert (not b!2719584))

(assert (not d!783546))

(assert (not b!2719714))

(assert (not tb!151845))

(assert (not b!2719555))

(assert (not b!2719633))

(assert (not b_next!77333))

(assert (not b!2719778))

(assert (not b!2719711))

(assert (not b_next!77341))

(assert (not b!2719748))

(assert (not b_lambda!82535))

(assert (not b!2719715))

(assert (not b!2719673))

(assert (not b!2719488))

(assert (not b!2719736))

(assert (not d!783470))

(assert (not d!783534))

(assert (not b!2719629))

(assert (not b!2719731))

(assert (not b!2719775))

(assert (not b!2719641))

(assert (not d!783496))

(assert (not b!2719735))

(assert (not b!2719804))

(assert b_and!200389)

(assert (not b!2719656))

(assert (not b!2719765))

(assert (not d!783506))

(assert b_and!200393)

(assert (not d!783540))

(assert (not b!2719730))

(assert (not b!2719805))

(assert (not b!2719485))

(assert (not b!2719489))

(assert (not b!2719587))

(assert (not b_next!77335))

(assert (not b!2719588))

(assert (not b!2719638))

(assert (not b!2719790))

(assert (not b!2719689))

(assert (not b!2719654))

(assert (not d!783526))

(assert (not b!2719747))

(assert (not b!2719718))

(assert (not b!2719586))

(assert (not d!783564))

(assert (not b!2719636))

(assert (not d!783568))

(assert (not d!783560))

(assert (not d!783536))

(assert (not d!783486))

(assert (not d!783514))

(assert (not d!783552))

(assert (not d!783520))

(assert (not b!2719732))

(assert (not b_next!77343))

(assert (not d!783524))

(assert (not b!2719482))

(assert (not d!783562))

(assert (not d!783498))

(assert (not b!2719631))

(assert (not b!2719695))

(assert (not b!2719684))

(assert (not b!2719548))

(assert (not b!2719764))

(assert (not d!783532))

(assert (not b!2719582))

(assert (not b!2719727))

(assert (not b!2719635))

(assert (not b!2719662))

(assert (not b!2719779))

(assert (not b!2719789))

(assert (not b!2719640))

(assert (not d!783530))

(assert (not b!2719745))

(assert (not d!783522))

(assert (not b!2719707))

(assert (not b!2719701))

(assert (not d!783500))

(assert (not b!2719672))

(assert (not b!2719723))

(assert (not d!783484))

(assert (not d!783516))

(assert (not b!2719630))

(assert (not b!2719752))

(assert (not b!2719698))

(assert (not b!2719733))

(assert (not b!2719802))

(assert (not b!2719766))

(assert b_and!200381)

(assert (not b!2719800))

(assert (not b!2719699))

(assert (not b!2719557))

(assert (not d!783554))

(assert (not d!783512))

(assert (not d!783510))

(assert (not d!783566))

(assert (not b!2719589))

(assert (not b!2719634))

(assert (not b!2719691))

(assert (not b!2719801))

(assert (not d!783556))

(assert (not b!2719780))

(assert (not d!783460))

(assert (not b!2719692))

(assert (not b!2719721))

(assert (not b!2719696))

(assert (not b!2719700))

(assert (not b!2719585))

(assert (not b!2719628))

(assert (not b!2719706))

(assert (not d!783454))

(assert (not d!783462))

(assert (not d!783518))

(assert (not b!2719655))

(assert (not b!2719637))

(check-sat)

(pop 1)

(push 1)

(assert b_and!200391)

(assert (not b_next!77333))

(assert (not b_next!77341))

(assert (not b_next!77335))

(assert (not b_next!77343))

(assert b_and!200381)

(assert b_and!200393)

(assert b_and!200389)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!783650 () Bool)

(declare-fun isEmpty!17909 (Option!6198) Bool)

(assert (=> d!783650 (= (isDefined!4899 lt!962541) (not (isEmpty!17909 lt!962541)))))

(declare-fun bs!488380 () Bool)

(assert (= bs!488380 d!783650))

(declare-fun m!3120105 () Bool)

(assert (=> bs!488380 m!3120105))

(assert (=> b!2719588 d!783650))

(declare-fun d!783652 () Bool)

(assert (=> d!783652 (= (list!11895 (_1!18166 lt!962556)) (list!11899 (c!439468 (_1!18166 lt!962556))))))

(declare-fun bs!488381 () Bool)

(assert (= bs!488381 d!783652))

(declare-fun m!3120107 () Bool)

(assert (=> bs!488381 m!3120107))

(assert (=> b!2719628 d!783652))

(declare-fun b!2720004 () Bool)

(declare-fun e!1714326 () Bool)

(declare-fun e!1714324 () Bool)

(assert (=> b!2720004 (= e!1714326 e!1714324)))

(declare-fun res!1142458 () Bool)

(declare-fun lt!962666 () tuple2!31078)

(assert (=> b!2720004 (= res!1142458 (< (size!24205 (_2!18171 lt!962666)) (size!24205 (list!11894 input!603))))))

(assert (=> b!2720004 (=> (not res!1142458) (not e!1714324))))

(declare-fun b!2720005 () Bool)

(declare-fun e!1714325 () tuple2!31078)

(assert (=> b!2720005 (= e!1714325 (tuple2!31079 Nil!31378 (list!11894 input!603)))))

(declare-fun b!2720006 () Bool)

(assert (=> b!2720006 (= e!1714324 (not (isEmpty!17903 (_1!18171 lt!962666))))))

(declare-fun b!2720007 () Bool)

(assert (=> b!2720007 (= e!1714326 (= (_2!18171 lt!962666) (list!11894 input!603)))))

(declare-fun d!783654 () Bool)

(assert (=> d!783654 e!1714326))

(declare-fun c!439561 () Bool)

(assert (=> d!783654 (= c!439561 (> (size!24206 (_1!18171 lt!962666)) 0))))

(assert (=> d!783654 (= lt!962666 e!1714325)))

(declare-fun c!439560 () Bool)

(declare-fun lt!962665 () Option!6200)

(assert (=> d!783654 (= c!439560 (is-Some!6199 lt!962665))))

(assert (=> d!783654 (= lt!962665 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 input!603)))))

(assert (=> d!783654 (= (lexList!1227 thiss!11556 rules!1182 (list!11894 input!603)) lt!962666)))

(declare-fun b!2720008 () Bool)

(declare-fun lt!962667 () tuple2!31078)

(assert (=> b!2720008 (= e!1714325 (tuple2!31079 (Cons!31378 (_1!18170 (v!33044 lt!962665)) (_1!18171 lt!962667)) (_2!18171 lt!962667)))))

(assert (=> b!2720008 (= lt!962667 (lexList!1227 thiss!11556 rules!1182 (_2!18170 (v!33044 lt!962665))))))

(assert (= (and d!783654 c!439560) b!2720008))

(assert (= (and d!783654 (not c!439560)) b!2720005))

(assert (= (and d!783654 c!439561) b!2720004))

(assert (= (and d!783654 (not c!439561)) b!2720007))

(assert (= (and b!2720004 res!1142458) b!2720006))

(declare-fun m!3120109 () Bool)

(assert (=> b!2720004 m!3120109))

(assert (=> b!2720004 m!3119325))

(assert (=> b!2720004 m!3119773))

(declare-fun m!3120111 () Bool)

(assert (=> b!2720006 m!3120111))

(declare-fun m!3120113 () Bool)

(assert (=> d!783654 m!3120113))

(assert (=> d!783654 m!3119325))

(assert (=> d!783654 m!3119463))

(declare-fun m!3120115 () Bool)

(assert (=> b!2720008 m!3120115))

(assert (=> b!2719628 d!783654))

(assert (=> b!2719628 d!783564))

(declare-fun b!2720009 () Bool)

(declare-fun e!1714328 () List!31476)

(assert (=> b!2720009 (= e!1714328 (list!11894 input!603))))

(declare-fun b!2720011 () Bool)

(declare-fun res!1142459 () Bool)

(declare-fun e!1714327 () Bool)

(assert (=> b!2720011 (=> (not res!1142459) (not e!1714327))))

(declare-fun lt!962668 () List!31476)

(assert (=> b!2720011 (= res!1142459 (= (size!24205 lt!962668) (+ (size!24205 (t!226340 lt!962458)) (size!24205 (list!11894 input!603)))))))

(declare-fun d!783656 () Bool)

(assert (=> d!783656 e!1714327))

(declare-fun res!1142460 () Bool)

(assert (=> d!783656 (=> (not res!1142460) (not e!1714327))))

(assert (=> d!783656 (= res!1142460 (= (content!4444 lt!962668) (set.union (content!4444 (t!226340 lt!962458)) (content!4444 (list!11894 input!603)))))))

(assert (=> d!783656 (= lt!962668 e!1714328)))

(declare-fun c!439562 () Bool)

(assert (=> d!783656 (= c!439562 (is-Nil!31376 (t!226340 lt!962458)))))

(assert (=> d!783656 (= (++!7816 (t!226340 lt!962458) (list!11894 input!603)) lt!962668)))

(declare-fun b!2720012 () Bool)

(assert (=> b!2720012 (= e!1714327 (or (not (= (list!11894 input!603) Nil!31376)) (= lt!962668 (t!226340 lt!962458))))))

(declare-fun b!2720010 () Bool)

(assert (=> b!2720010 (= e!1714328 (Cons!31376 (h!36796 (t!226340 lt!962458)) (++!7816 (t!226340 (t!226340 lt!962458)) (list!11894 input!603))))))

(assert (= (and d!783656 c!439562) b!2720009))

(assert (= (and d!783656 (not c!439562)) b!2720010))

(assert (= (and d!783656 res!1142460) b!2720011))

(assert (= (and b!2720011 res!1142459) b!2720012))

(declare-fun m!3120117 () Bool)

(assert (=> b!2720011 m!3120117))

(declare-fun m!3120119 () Bool)

(assert (=> b!2720011 m!3120119))

(assert (=> b!2720011 m!3119325))

(assert (=> b!2720011 m!3119773))

(declare-fun m!3120121 () Bool)

(assert (=> d!783656 m!3120121))

(declare-fun m!3120123 () Bool)

(assert (=> d!783656 m!3120123))

(assert (=> d!783656 m!3119325))

(assert (=> d!783656 m!3119777))

(assert (=> b!2720010 m!3119325))

(declare-fun m!3120125 () Bool)

(assert (=> b!2720010 m!3120125))

(assert (=> b!2719747 d!783656))

(declare-fun d!783658 () Bool)

(assert (=> d!783658 (= (list!11894 (_2!18166 lt!962559)) (list!11898 (c!439466 (_2!18166 lt!962559))))))

(declare-fun bs!488382 () Bool)

(assert (= bs!488382 d!783658))

(declare-fun m!3120127 () Bool)

(assert (=> bs!488382 m!3120127))

(assert (=> b!2719638 d!783658))

(declare-fun b!2720013 () Bool)

(declare-fun e!1714331 () Bool)

(declare-fun e!1714329 () Bool)

(assert (=> b!2720013 (= e!1714331 e!1714329)))

(declare-fun res!1142461 () Bool)

(declare-fun lt!962670 () tuple2!31078)

(assert (=> b!2720013 (= res!1142461 (< (size!24205 (_2!18171 lt!962670)) (size!24205 (list!11894 totalInput!328))))))

(assert (=> b!2720013 (=> (not res!1142461) (not e!1714329))))

(declare-fun b!2720014 () Bool)

(declare-fun e!1714330 () tuple2!31078)

(assert (=> b!2720014 (= e!1714330 (tuple2!31079 Nil!31378 (list!11894 totalInput!328)))))

(declare-fun b!2720015 () Bool)

(assert (=> b!2720015 (= e!1714329 (not (isEmpty!17903 (_1!18171 lt!962670))))))

(declare-fun b!2720016 () Bool)

(assert (=> b!2720016 (= e!1714331 (= (_2!18171 lt!962670) (list!11894 totalInput!328)))))

(declare-fun d!783660 () Bool)

(assert (=> d!783660 e!1714331))

(declare-fun c!439564 () Bool)

(assert (=> d!783660 (= c!439564 (> (size!24206 (_1!18171 lt!962670)) 0))))

(assert (=> d!783660 (= lt!962670 e!1714330)))

(declare-fun c!439563 () Bool)

(declare-fun lt!962669 () Option!6200)

(assert (=> d!783660 (= c!439563 (is-Some!6199 lt!962669))))

(assert (=> d!783660 (= lt!962669 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 totalInput!328)))))

(assert (=> d!783660 (= (lexList!1227 thiss!11556 rules!1182 (list!11894 totalInput!328)) lt!962670)))

(declare-fun b!2720017 () Bool)

(declare-fun lt!962671 () tuple2!31078)

(assert (=> b!2720017 (= e!1714330 (tuple2!31079 (Cons!31378 (_1!18170 (v!33044 lt!962669)) (_1!18171 lt!962671)) (_2!18171 lt!962671)))))

(assert (=> b!2720017 (= lt!962671 (lexList!1227 thiss!11556 rules!1182 (_2!18170 (v!33044 lt!962669))))))

(assert (= (and d!783660 c!439563) b!2720017))

(assert (= (and d!783660 (not c!439563)) b!2720014))

(assert (= (and d!783660 c!439564) b!2720013))

(assert (= (and d!783660 (not c!439564)) b!2720016))

(assert (= (and b!2720013 res!1142461) b!2720015))

(declare-fun m!3120129 () Bool)

(assert (=> b!2720013 m!3120129))

(assert (=> b!2720013 m!3119323))

(declare-fun m!3120131 () Bool)

(assert (=> b!2720013 m!3120131))

(declare-fun m!3120133 () Bool)

(assert (=> b!2720015 m!3120133))

(declare-fun m!3120135 () Bool)

(assert (=> d!783660 m!3120135))

(assert (=> d!783660 m!3119323))

(declare-fun m!3120137 () Bool)

(assert (=> d!783660 m!3120137))

(declare-fun m!3120139 () Bool)

(assert (=> b!2720017 m!3120139))

(assert (=> b!2719638 d!783660))

(assert (=> b!2719638 d!783560))

(declare-fun d!783662 () Bool)

(declare-fun lt!962674 () Int)

(assert (=> d!783662 (>= lt!962674 0)))

(declare-fun e!1714334 () Int)

(assert (=> d!783662 (= lt!962674 e!1714334)))

(declare-fun c!439567 () Bool)

(assert (=> d!783662 (= c!439567 (is-Nil!31378 lt!962590))))

(assert (=> d!783662 (= (size!24206 lt!962590) lt!962674)))

(declare-fun b!2720022 () Bool)

(assert (=> b!2720022 (= e!1714334 0)))

(declare-fun b!2720023 () Bool)

(assert (=> b!2720023 (= e!1714334 (+ 1 (size!24206 (t!226342 lt!962590))))))

(assert (= (and d!783662 c!439567) b!2720022))

(assert (= (and d!783662 (not c!439567)) b!2720023))

(declare-fun m!3120141 () Bool)

(assert (=> b!2720023 m!3120141))

(assert (=> b!2719719 d!783662))

(declare-fun d!783664 () Bool)

(declare-fun lt!962675 () Int)

(assert (=> d!783664 (>= lt!962675 0)))

(declare-fun e!1714335 () Int)

(assert (=> d!783664 (= lt!962675 e!1714335)))

(declare-fun c!439568 () Bool)

(assert (=> d!783664 (= c!439568 (is-Nil!31378 lt!962468))))

(assert (=> d!783664 (= (size!24206 lt!962468) lt!962675)))

(declare-fun b!2720024 () Bool)

(assert (=> b!2720024 (= e!1714335 0)))

(declare-fun b!2720025 () Bool)

(assert (=> b!2720025 (= e!1714335 (+ 1 (size!24206 (t!226342 lt!962468))))))

(assert (= (and d!783664 c!439568) b!2720024))

(assert (= (and d!783664 (not c!439568)) b!2720025))

(declare-fun m!3120143 () Bool)

(assert (=> b!2720025 m!3120143))

(assert (=> b!2719719 d!783664))

(declare-fun d!783666 () Bool)

(declare-fun lt!962676 () Int)

(assert (=> d!783666 (>= lt!962676 0)))

(declare-fun e!1714336 () Int)

(assert (=> d!783666 (= lt!962676 e!1714336)))

(declare-fun c!439569 () Bool)

(assert (=> d!783666 (= c!439569 (is-Nil!31378 lt!962460))))

(assert (=> d!783666 (= (size!24206 lt!962460) lt!962676)))

(declare-fun b!2720026 () Bool)

(assert (=> b!2720026 (= e!1714336 0)))

(declare-fun b!2720027 () Bool)

(assert (=> b!2720027 (= e!1714336 (+ 1 (size!24206 (t!226342 lt!962460))))))

(assert (= (and d!783666 c!439569) b!2720026))

(assert (= (and d!783666 (not c!439569)) b!2720027))

(declare-fun m!3120145 () Bool)

(assert (=> b!2720027 m!3120145))

(assert (=> b!2719719 d!783666))

(declare-fun d!783668 () Bool)

(declare-fun c!439572 () Bool)

(assert (=> d!783668 (= c!439572 (is-Nil!31378 lt!962578))))

(declare-fun e!1714339 () (Set Token!9066))

(assert (=> d!783668 (= (content!4445 lt!962578) e!1714339)))

(declare-fun b!2720032 () Bool)

(assert (=> b!2720032 (= e!1714339 (as set.empty (Set Token!9066)))))

(declare-fun b!2720033 () Bool)

(assert (=> b!2720033 (= e!1714339 (set.union (set.insert (h!36798 lt!962578) (as set.empty (Set Token!9066))) (content!4445 (t!226342 lt!962578))))))

(assert (= (and d!783668 c!439572) b!2720032))

(assert (= (and d!783668 (not c!439572)) b!2720033))

(declare-fun m!3120147 () Bool)

(assert (=> b!2720033 m!3120147))

(declare-fun m!3120149 () Bool)

(assert (=> b!2720033 m!3120149))

(assert (=> d!783506 d!783668))

(declare-fun d!783670 () Bool)

(declare-fun c!439573 () Bool)

(assert (=> d!783670 (= c!439573 (is-Nil!31378 lt!962457))))

(declare-fun e!1714340 () (Set Token!9066))

(assert (=> d!783670 (= (content!4445 lt!962457) e!1714340)))

(declare-fun b!2720034 () Bool)

(assert (=> b!2720034 (= e!1714340 (as set.empty (Set Token!9066)))))

(declare-fun b!2720035 () Bool)

(assert (=> b!2720035 (= e!1714340 (set.union (set.insert (h!36798 lt!962457) (as set.empty (Set Token!9066))) (content!4445 (t!226342 lt!962457))))))

(assert (= (and d!783670 c!439573) b!2720034))

(assert (= (and d!783670 (not c!439573)) b!2720035))

(declare-fun m!3120151 () Bool)

(assert (=> b!2720035 m!3120151))

(declare-fun m!3120153 () Bool)

(assert (=> b!2720035 m!3120153))

(assert (=> d!783506 d!783670))

(declare-fun d!783672 () Bool)

(declare-fun c!439574 () Bool)

(assert (=> d!783672 (= c!439574 (is-Nil!31378 lt!962468))))

(declare-fun e!1714341 () (Set Token!9066))

(assert (=> d!783672 (= (content!4445 lt!962468) e!1714341)))

(declare-fun b!2720036 () Bool)

(assert (=> b!2720036 (= e!1714341 (as set.empty (Set Token!9066)))))

(declare-fun b!2720037 () Bool)

(assert (=> b!2720037 (= e!1714341 (set.union (set.insert (h!36798 lt!962468) (as set.empty (Set Token!9066))) (content!4445 (t!226342 lt!962468))))))

(assert (= (and d!783672 c!439574) b!2720036))

(assert (= (and d!783672 (not c!439574)) b!2720037))

(declare-fun m!3120155 () Bool)

(assert (=> b!2720037 m!3120155))

(declare-fun m!3120157 () Bool)

(assert (=> b!2720037 m!3120157))

(assert (=> d!783506 d!783672))

(declare-fun d!783674 () Bool)

(assert (=> d!783674 true))

(declare-fun order!17143 () Int)

(declare-fun order!17141 () Int)

(declare-fun lambda!100592 () Int)

(declare-fun dynLambda!13513 (Int Int) Int)

(declare-fun dynLambda!13514 (Int Int) Int)

(assert (=> d!783674 (< (dynLambda!13513 order!17141 (toChars!6639 (transformation!4802 (h!36797 rules!1182)))) (dynLambda!13514 order!17143 lambda!100592))))

(assert (=> d!783674 true))

(declare-fun order!17145 () Int)

(declare-fun dynLambda!13515 (Int Int) Int)

(assert (=> d!783674 (< (dynLambda!13515 order!17145 (toValue!6780 (transformation!4802 (h!36797 rules!1182)))) (dynLambda!13514 order!17143 lambda!100592))))

(declare-fun Forall!1211 (Int) Bool)

(assert (=> d!783674 (= (semiInverseModEq!1978 (toChars!6639 (transformation!4802 (h!36797 rules!1182))) (toValue!6780 (transformation!4802 (h!36797 rules!1182)))) (Forall!1211 lambda!100592))))

(declare-fun bs!488383 () Bool)

(assert (= bs!488383 d!783674))

(declare-fun m!3120159 () Bool)

(assert (=> bs!488383 m!3120159))

(assert (=> d!783546 d!783674))

(declare-fun e!1714342 () List!31478)

(declare-fun b!2720043 () Bool)

(assert (=> b!2720043 (= e!1714342 (Cons!31378 (h!36798 (t!226342 (++!7815 lt!962457 lt!962468))) (++!7815 (t!226342 (t!226342 (++!7815 lt!962457 lt!962468))) lt!962460)))))

(declare-fun b!2720042 () Bool)

(assert (=> b!2720042 (= e!1714342 lt!962460)))

(declare-fun d!783676 () Bool)

(declare-fun e!1714343 () Bool)

(assert (=> d!783676 e!1714343))

(declare-fun res!1142471 () Bool)

(assert (=> d!783676 (=> (not res!1142471) (not e!1714343))))

(declare-fun lt!962677 () List!31478)

(assert (=> d!783676 (= res!1142471 (= (content!4445 lt!962677) (set.union (content!4445 (t!226342 (++!7815 lt!962457 lt!962468))) (content!4445 lt!962460))))))

(assert (=> d!783676 (= lt!962677 e!1714342)))

(declare-fun c!439575 () Bool)

(assert (=> d!783676 (= c!439575 (is-Nil!31378 (t!226342 (++!7815 lt!962457 lt!962468))))))

(assert (=> d!783676 (= (++!7815 (t!226342 (++!7815 lt!962457 lt!962468)) lt!962460) lt!962677)))

(declare-fun b!2720044 () Bool)

(declare-fun res!1142472 () Bool)

(assert (=> b!2720044 (=> (not res!1142472) (not e!1714343))))

(assert (=> b!2720044 (= res!1142472 (= (size!24206 lt!962677) (+ (size!24206 (t!226342 (++!7815 lt!962457 lt!962468))) (size!24206 lt!962460))))))

(declare-fun b!2720045 () Bool)

(assert (=> b!2720045 (= e!1714343 (or (not (= lt!962460 Nil!31378)) (= lt!962677 (t!226342 (++!7815 lt!962457 lt!962468)))))))

(assert (= (and d!783676 c!439575) b!2720042))

(assert (= (and d!783676 (not c!439575)) b!2720043))

(assert (= (and d!783676 res!1142471) b!2720044))

(assert (= (and b!2720044 res!1142472) b!2720045))

(declare-fun m!3120161 () Bool)

(assert (=> b!2720043 m!3120161))

(declare-fun m!3120163 () Bool)

(assert (=> d!783676 m!3120163))

(declare-fun m!3120165 () Bool)

(assert (=> d!783676 m!3120165))

(assert (=> d!783676 m!3119697))

(declare-fun m!3120167 () Bool)

(assert (=> b!2720044 m!3120167))

(declare-fun m!3120169 () Bool)

(assert (=> b!2720044 m!3120169))

(assert (=> b!2720044 m!3119703))

(assert (=> b!2719710 d!783676))

(declare-fun d!783678 () Bool)

(declare-fun lt!962680 () Int)

(assert (=> d!783678 (>= lt!962680 0)))

(declare-fun e!1714346 () Int)

(assert (=> d!783678 (= lt!962680 e!1714346)))

(declare-fun c!439578 () Bool)

(assert (=> d!783678 (= c!439578 (is-Nil!31376 lt!962587))))

(assert (=> d!783678 (= (size!24205 lt!962587) lt!962680)))

(declare-fun b!2720050 () Bool)

(assert (=> b!2720050 (= e!1714346 0)))

(declare-fun b!2720051 () Bool)

(assert (=> b!2720051 (= e!1714346 (+ 1 (size!24205 (t!226340 lt!962587))))))

(assert (= (and d!783678 c!439578) b!2720050))

(assert (= (and d!783678 (not c!439578)) b!2720051))

(declare-fun m!3120171 () Bool)

(assert (=> b!2720051 m!3120171))

(assert (=> b!2719707 d!783678))

(declare-fun d!783680 () Bool)

(declare-fun lt!962681 () Int)

(assert (=> d!783680 (>= lt!962681 0)))

(declare-fun e!1714347 () Int)

(assert (=> d!783680 (= lt!962681 e!1714347)))

(declare-fun c!439579 () Bool)

(assert (=> d!783680 (= c!439579 (is-Nil!31376 lt!962464))))

(assert (=> d!783680 (= (size!24205 lt!962464) lt!962681)))

(declare-fun b!2720052 () Bool)

(assert (=> b!2720052 (= e!1714347 0)))

(declare-fun b!2720053 () Bool)

(assert (=> b!2720053 (= e!1714347 (+ 1 (size!24205 (t!226340 lt!962464))))))

(assert (= (and d!783680 c!439579) b!2720052))

(assert (= (and d!783680 (not c!439579)) b!2720053))

(declare-fun m!3120173 () Bool)

(assert (=> b!2720053 m!3120173))

(assert (=> b!2719707 d!783680))

(declare-fun d!783682 () Bool)

(declare-fun lt!962682 () Int)

(assert (=> d!783682 (>= lt!962682 0)))

(declare-fun e!1714348 () Int)

(assert (=> d!783682 (= lt!962682 e!1714348)))

(declare-fun c!439580 () Bool)

(assert (=> d!783682 (= c!439580 (is-Nil!31376 lt!962459))))

(assert (=> d!783682 (= (size!24205 lt!962459) lt!962682)))

(declare-fun b!2720054 () Bool)

(assert (=> b!2720054 (= e!1714348 0)))

(declare-fun b!2720055 () Bool)

(assert (=> b!2720055 (= e!1714348 (+ 1 (size!24205 (t!226340 lt!962459))))))

(assert (= (and d!783682 c!439580) b!2720054))

(assert (= (and d!783682 (not c!439580)) b!2720055))

(declare-fun m!3120175 () Bool)

(assert (=> b!2720055 m!3120175))

(assert (=> b!2719707 d!783682))

(declare-fun d!783684 () Bool)

(declare-fun c!439583 () Bool)

(assert (=> d!783684 (= c!439583 (is-Nil!31376 lt!962594))))

(declare-fun e!1714351 () (Set C!16066))

(assert (=> d!783684 (= (content!4444 lt!962594) e!1714351)))

(declare-fun b!2720060 () Bool)

(assert (=> b!2720060 (= e!1714351 (as set.empty (Set C!16066)))))

(declare-fun b!2720061 () Bool)

(assert (=> b!2720061 (= e!1714351 (set.union (set.insert (h!36796 lt!962594) (as set.empty (Set C!16066))) (content!4444 (t!226340 lt!962594))))))

(assert (= (and d!783684 c!439583) b!2720060))

(assert (= (and d!783684 (not c!439583)) b!2720061))

(declare-fun m!3120177 () Bool)

(assert (=> b!2720061 m!3120177))

(declare-fun m!3120179 () Bool)

(assert (=> b!2720061 m!3120179))

(assert (=> d!783562 d!783684))

(declare-fun d!783686 () Bool)

(declare-fun c!439584 () Bool)

(assert (=> d!783686 (= c!439584 (is-Nil!31376 lt!962458))))

(declare-fun e!1714352 () (Set C!16066))

(assert (=> d!783686 (= (content!4444 lt!962458) e!1714352)))

(declare-fun b!2720062 () Bool)

(assert (=> b!2720062 (= e!1714352 (as set.empty (Set C!16066)))))

(declare-fun b!2720063 () Bool)

(assert (=> b!2720063 (= e!1714352 (set.union (set.insert (h!36796 lt!962458) (as set.empty (Set C!16066))) (content!4444 (t!226340 lt!962458))))))

(assert (= (and d!783686 c!439584) b!2720062))

(assert (= (and d!783686 (not c!439584)) b!2720063))

(declare-fun m!3120181 () Bool)

(assert (=> b!2720063 m!3120181))

(assert (=> b!2720063 m!3120123))

(assert (=> d!783562 d!783686))

(declare-fun d!783688 () Bool)

(declare-fun c!439585 () Bool)

(assert (=> d!783688 (= c!439585 (is-Nil!31376 (list!11894 input!603)))))

(declare-fun e!1714353 () (Set C!16066))

(assert (=> d!783688 (= (content!4444 (list!11894 input!603)) e!1714353)))

(declare-fun b!2720064 () Bool)

(assert (=> b!2720064 (= e!1714353 (as set.empty (Set C!16066)))))

(declare-fun b!2720065 () Bool)

(assert (=> b!2720065 (= e!1714353 (set.union (set.insert (h!36796 (list!11894 input!603)) (as set.empty (Set C!16066))) (content!4444 (t!226340 (list!11894 input!603)))))))

(assert (= (and d!783688 c!439585) b!2720064))

(assert (= (and d!783688 (not c!439585)) b!2720065))

(declare-fun m!3120183 () Bool)

(assert (=> b!2720065 m!3120183))

(declare-fun m!3120185 () Bool)

(assert (=> b!2720065 m!3120185))

(assert (=> d!783562 d!783688))

(declare-fun bs!488384 () Bool)

(declare-fun b!2720082 () Bool)

(assert (= bs!488384 (and b!2720082 d!783674)))

(declare-fun lambda!100597 () Int)

(assert (=> bs!488384 (= lambda!100597 lambda!100592)))

(declare-fun b!2720091 () Bool)

(declare-fun e!1714374 () Bool)

(assert (=> b!2720091 (= e!1714374 true)))

(declare-fun b!2720090 () Bool)

(declare-fun e!1714373 () Bool)

(assert (=> b!2720090 (= e!1714373 e!1714374)))

(assert (=> b!2720082 e!1714373))

(assert (= b!2720090 b!2720091))

(assert (= b!2720082 b!2720090))

(assert (=> b!2720091 (< (dynLambda!13515 order!17145 (toValue!6780 (transformation!4802 (h!36797 rules!1182)))) (dynLambda!13514 order!17143 lambda!100597))))

(assert (=> b!2720091 (< (dynLambda!13513 order!17141 (toChars!6639 (transformation!4802 (h!36797 rules!1182)))) (dynLambda!13514 order!17143 lambda!100597))))

(declare-fun b!2720078 () Bool)

(declare-fun lt!962707 () Option!6198)

(declare-fun e!1714364 () Bool)

(declare-fun maxPrefixOneRule!1498 (LexerInterface!4398 Rule!9404 List!31476) Option!6200)

(assert (=> b!2720078 (= e!1714364 (= (list!11894 (_2!18167 (get!9788 lt!962707))) (_2!18170 (get!9789 (maxPrefixOneRule!1498 thiss!11556 (h!36797 rules!1182) (list!11894 input!603))))))))

(declare-fun b!2720079 () Bool)

(declare-fun e!1714366 () Bool)

(assert (=> b!2720079 (= e!1714366 e!1714364)))

(declare-fun res!1142484 () Bool)

(assert (=> b!2720079 (=> (not res!1142484) (not e!1714364))))

(assert (=> b!2720079 (= res!1142484 (= (_1!18167 (get!9788 lt!962707)) (_1!18170 (get!9789 (maxPrefixOneRule!1498 thiss!11556 (h!36797 rules!1182) (list!11894 input!603))))))))

(declare-fun b!2720080 () Bool)

(declare-fun e!1714368 () Option!6198)

(assert (=> b!2720080 (= e!1714368 None!6197)))

(declare-fun b!2720081 () Bool)

(declare-fun e!1714365 () Bool)

(assert (=> b!2720081 (= e!1714365 e!1714366)))

(declare-fun res!1142483 () Bool)

(assert (=> b!2720081 (=> res!1142483 e!1714366)))

(assert (=> b!2720081 (= res!1142483 (not (isDefined!4899 lt!962707)))))

(declare-datatypes ((tuple2!31084 0))(
  ( (tuple2!31085 (_1!18174 BalanceConc!19276) (_2!18174 BalanceConc!19276)) )
))
(declare-fun lt!962703 () tuple2!31084)

(declare-fun apply!7412 (TokenValueInjection!9488 BalanceConc!19276) TokenValue!5024)

(assert (=> b!2720082 (= e!1714368 (Some!6197 (tuple2!31071 (Token!9067 (apply!7412 (transformation!4802 (h!36797 rules!1182)) (_1!18174 lt!962703)) (h!36797 rules!1182) (size!24203 (_1!18174 lt!962703)) (list!11894 (_1!18174 lt!962703))) (_2!18174 lt!962703))))))

(declare-fun lt!962706 () List!31476)

(assert (=> b!2720082 (= lt!962706 (list!11894 input!603))))

(declare-fun lt!962705 () Unit!45389)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!760 (Regex!7954 List!31476) Unit!45389)

(assert (=> b!2720082 (= lt!962705 (longestMatchIsAcceptedByMatchOrIsEmpty!760 (regex!4802 (h!36797 rules!1182)) lt!962706))))

(declare-fun res!1142482 () Bool)

(declare-datatypes ((tuple2!31086 0))(
  ( (tuple2!31087 (_1!18175 List!31476) (_2!18175 List!31476)) )
))
(declare-fun findLongestMatchInner!787 (Regex!7954 List!31476 Int List!31476 List!31476 Int) tuple2!31086)

(assert (=> b!2720082 (= res!1142482 (isEmpty!17902 (_1!18175 (findLongestMatchInner!787 (regex!4802 (h!36797 rules!1182)) Nil!31376 (size!24205 Nil!31376) lt!962706 lt!962706 (size!24205 lt!962706)))))))

(declare-fun e!1714367 () Bool)

(assert (=> b!2720082 (=> res!1142482 e!1714367)))

(assert (=> b!2720082 e!1714367))

(declare-fun lt!962709 () Unit!45389)

(assert (=> b!2720082 (= lt!962709 lt!962705)))

(declare-fun lt!962708 () Unit!45389)

(declare-fun lemmaInv!827 (TokenValueInjection!9488) Unit!45389)

(assert (=> b!2720082 (= lt!962708 (lemmaInv!827 (transformation!4802 (h!36797 rules!1182))))))

(declare-fun lt!962711 () Unit!45389)

(declare-fun ForallOf!531 (Int BalanceConc!19276) Unit!45389)

(assert (=> b!2720082 (= lt!962711 (ForallOf!531 lambda!100597 (_1!18174 lt!962703)))))

(declare-fun lt!962710 () Unit!45389)

(declare-fun seqFromList!3217 (List!31476) BalanceConc!19276)

(assert (=> b!2720082 (= lt!962710 (ForallOf!531 lambda!100597 (seqFromList!3217 (list!11894 (_1!18174 lt!962703)))))))

(declare-fun lt!962704 () Option!6198)

(assert (=> b!2720082 (= lt!962704 (Some!6197 (tuple2!31071 (Token!9067 (apply!7412 (transformation!4802 (h!36797 rules!1182)) (_1!18174 lt!962703)) (h!36797 rules!1182) (size!24203 (_1!18174 lt!962703)) (list!11894 (_1!18174 lt!962703))) (_2!18174 lt!962703))))))

(declare-fun lt!962712 () Unit!45389)

(declare-fun lemmaEqSameImage!733 (TokenValueInjection!9488 BalanceConc!19276 BalanceConc!19276) Unit!45389)

(assert (=> b!2720082 (= lt!962712 (lemmaEqSameImage!733 (transformation!4802 (h!36797 rules!1182)) (_1!18174 lt!962703) (seqFromList!3217 (list!11894 (_1!18174 lt!962703)))))))

(declare-fun d!783690 () Bool)

(assert (=> d!783690 e!1714365))

(declare-fun res!1142481 () Bool)

(assert (=> d!783690 (=> (not res!1142481) (not e!1714365))))

(assert (=> d!783690 (= res!1142481 (= (isDefined!4899 lt!962707) (isDefined!4900 (maxPrefixOneRule!1498 thiss!11556 (h!36797 rules!1182) (list!11894 input!603)))))))

(assert (=> d!783690 (= lt!962707 e!1714368)))

(declare-fun c!439588 () Bool)

(declare-fun isEmpty!17910 (BalanceConc!19276) Bool)

(assert (=> d!783690 (= c!439588 (isEmpty!17910 (_1!18174 lt!962703)))))

(declare-fun findLongestMatchWithZipperSequence!180 (Regex!7954 BalanceConc!19276) tuple2!31084)

(assert (=> d!783690 (= lt!962703 (findLongestMatchWithZipperSequence!180 (regex!4802 (h!36797 rules!1182)) input!603))))

(declare-fun ruleValid!1568 (LexerInterface!4398 Rule!9404) Bool)

(assert (=> d!783690 (ruleValid!1568 thiss!11556 (h!36797 rules!1182))))

(assert (=> d!783690 (= (maxPrefixOneRuleZipperSequence!482 thiss!11556 (h!36797 rules!1182) input!603) lt!962707)))

(declare-fun b!2720083 () Bool)

(declare-fun matchR!3640 (Regex!7954 List!31476) Bool)

(assert (=> b!2720083 (= e!1714367 (matchR!3640 (regex!4802 (h!36797 rules!1182)) (_1!18175 (findLongestMatchInner!787 (regex!4802 (h!36797 rules!1182)) Nil!31376 (size!24205 Nil!31376) lt!962706 lt!962706 (size!24205 lt!962706)))))))

(assert (= (and d!783690 c!439588) b!2720080))

(assert (= (and d!783690 (not c!439588)) b!2720082))

(assert (= (and b!2720082 (not res!1142482)) b!2720083))

(assert (= (and d!783690 res!1142481) b!2720081))

(assert (= (and b!2720081 (not res!1142483)) b!2720079))

(assert (= (and b!2720079 res!1142484) b!2720078))

(declare-fun m!3120187 () Bool)

(assert (=> b!2720081 m!3120187))

(assert (=> b!2720078 m!3119325))

(declare-fun m!3120189 () Bool)

(assert (=> b!2720078 m!3120189))

(assert (=> b!2720078 m!3119325))

(declare-fun m!3120191 () Bool)

(assert (=> b!2720078 m!3120191))

(declare-fun m!3120193 () Bool)

(assert (=> b!2720078 m!3120193))

(assert (=> b!2720078 m!3120191))

(declare-fun m!3120195 () Bool)

(assert (=> b!2720078 m!3120195))

(assert (=> d!783690 m!3120187))

(assert (=> d!783690 m!3119325))

(declare-fun m!3120197 () Bool)

(assert (=> d!783690 m!3120197))

(assert (=> d!783690 m!3120191))

(declare-fun m!3120199 () Bool)

(assert (=> d!783690 m!3120199))

(assert (=> d!783690 m!3119325))

(assert (=> d!783690 m!3120191))

(declare-fun m!3120201 () Bool)

(assert (=> d!783690 m!3120201))

(declare-fun m!3120203 () Bool)

(assert (=> d!783690 m!3120203))

(declare-fun m!3120205 () Bool)

(assert (=> b!2720082 m!3120205))

(declare-fun m!3120207 () Bool)

(assert (=> b!2720082 m!3120207))

(declare-fun m!3120209 () Bool)

(assert (=> b!2720082 m!3120209))

(assert (=> b!2720082 m!3119325))

(assert (=> b!2720082 m!3120207))

(declare-fun m!3120211 () Bool)

(assert (=> b!2720082 m!3120211))

(declare-fun m!3120213 () Bool)

(assert (=> b!2720082 m!3120213))

(declare-fun m!3120215 () Bool)

(assert (=> b!2720082 m!3120215))

(declare-fun m!3120217 () Bool)

(assert (=> b!2720082 m!3120217))

(declare-fun m!3120219 () Bool)

(assert (=> b!2720082 m!3120219))

(declare-fun m!3120221 () Bool)

(assert (=> b!2720082 m!3120221))

(assert (=> b!2720082 m!3120211))

(declare-fun m!3120223 () Bool)

(assert (=> b!2720082 m!3120223))

(declare-fun m!3120225 () Bool)

(assert (=> b!2720082 m!3120225))

(assert (=> b!2720082 m!3120215))

(assert (=> b!2720082 m!3120213))

(assert (=> b!2720082 m!3120211))

(declare-fun m!3120227 () Bool)

(assert (=> b!2720082 m!3120227))

(declare-fun m!3120229 () Bool)

(assert (=> b!2720082 m!3120229))

(assert (=> b!2720079 m!3120189))

(assert (=> b!2720079 m!3119325))

(assert (=> b!2720079 m!3119325))

(assert (=> b!2720079 m!3120191))

(assert (=> b!2720079 m!3120191))

(assert (=> b!2720079 m!3120195))

(assert (=> b!2720083 m!3120213))

(assert (=> b!2720083 m!3120215))

(assert (=> b!2720083 m!3120213))

(assert (=> b!2720083 m!3120215))

(assert (=> b!2720083 m!3120217))

(declare-fun m!3120231 () Bool)

(assert (=> b!2720083 m!3120231))

(assert (=> bm!175470 d!783690))

(declare-fun b!2720102 () Bool)

(declare-fun e!1714380 () List!31476)

(declare-fun list!11902 (IArray!19667) List!31476)

(assert (=> b!2720102 (= e!1714380 (list!11902 (xs!12906 (c!439466 (_2!18166 lt!962466)))))))

(declare-fun b!2720103 () Bool)

(assert (=> b!2720103 (= e!1714380 (++!7816 (list!11898 (left!24122 (c!439466 (_2!18166 lt!962466)))) (list!11898 (right!24452 (c!439466 (_2!18166 lt!962466))))))))

(declare-fun b!2720100 () Bool)

(declare-fun e!1714379 () List!31476)

(assert (=> b!2720100 (= e!1714379 Nil!31376)))

(declare-fun b!2720101 () Bool)

(assert (=> b!2720101 (= e!1714379 e!1714380)))

(declare-fun c!439594 () Bool)

(assert (=> b!2720101 (= c!439594 (is-Leaf!14977 (c!439466 (_2!18166 lt!962466))))))

(declare-fun d!783692 () Bool)

(declare-fun c!439593 () Bool)

(assert (=> d!783692 (= c!439593 (is-Empty!9831 (c!439466 (_2!18166 lt!962466))))))

(assert (=> d!783692 (= (list!11898 (c!439466 (_2!18166 lt!962466))) e!1714379)))

(assert (= (and d!783692 c!439593) b!2720100))

(assert (= (and d!783692 (not c!439593)) b!2720101))

(assert (= (and b!2720101 c!439594) b!2720102))

(assert (= (and b!2720101 (not c!439594)) b!2720103))

(declare-fun m!3120233 () Bool)

(assert (=> b!2720102 m!3120233))

(declare-fun m!3120235 () Bool)

(assert (=> b!2720103 m!3120235))

(declare-fun m!3120237 () Bool)

(assert (=> b!2720103 m!3120237))

(assert (=> b!2720103 m!3120235))

(assert (=> b!2720103 m!3120237))

(declare-fun m!3120239 () Bool)

(assert (=> b!2720103 m!3120239))

(assert (=> d!783460 d!783692))

(declare-fun d!783694 () Bool)

(declare-fun res!1142500 () Bool)

(declare-fun e!1714385 () Bool)

(assert (=> d!783694 (=> res!1142500 e!1714385)))

(assert (=> d!783694 (= res!1142500 (not (is-Node!9831 (c!439466 input!603))))))

(assert (=> d!783694 (= (isBalanced!2978 (c!439466 input!603)) e!1714385)))

(declare-fun b!2720116 () Bool)

(declare-fun res!1142498 () Bool)

(declare-fun e!1714386 () Bool)

(assert (=> b!2720116 (=> (not res!1142498) (not e!1714386))))

(assert (=> b!2720116 (= res!1142498 (isBalanced!2978 (left!24122 (c!439466 input!603))))))

(declare-fun b!2720117 () Bool)

(declare-fun res!1142499 () Bool)

(assert (=> b!2720117 (=> (not res!1142499) (not e!1714386))))

(declare-fun isEmpty!17911 (Conc!9831) Bool)

(assert (=> b!2720117 (= res!1142499 (not (isEmpty!17911 (left!24122 (c!439466 input!603)))))))

(declare-fun b!2720118 () Bool)

(declare-fun res!1142502 () Bool)

(assert (=> b!2720118 (=> (not res!1142502) (not e!1714386))))

(declare-fun height!1459 (Conc!9831) Int)

(assert (=> b!2720118 (= res!1142502 (<= (- (height!1459 (left!24122 (c!439466 input!603))) (height!1459 (right!24452 (c!439466 input!603)))) 1))))

(declare-fun b!2720119 () Bool)

(assert (=> b!2720119 (= e!1714385 e!1714386)))

(declare-fun res!1142497 () Bool)

(assert (=> b!2720119 (=> (not res!1142497) (not e!1714386))))

(assert (=> b!2720119 (= res!1142497 (<= (- 1) (- (height!1459 (left!24122 (c!439466 input!603))) (height!1459 (right!24452 (c!439466 input!603))))))))

(declare-fun b!2720120 () Bool)

(declare-fun res!1142501 () Bool)

(assert (=> b!2720120 (=> (not res!1142501) (not e!1714386))))

(assert (=> b!2720120 (= res!1142501 (isBalanced!2978 (right!24452 (c!439466 input!603))))))

(declare-fun b!2720121 () Bool)

(assert (=> b!2720121 (= e!1714386 (not (isEmpty!17911 (right!24452 (c!439466 input!603)))))))

(assert (= (and d!783694 (not res!1142500)) b!2720119))

(assert (= (and b!2720119 res!1142497) b!2720118))

(assert (= (and b!2720118 res!1142502) b!2720116))

(assert (= (and b!2720116 res!1142498) b!2720120))

(assert (= (and b!2720120 res!1142501) b!2720117))

(assert (= (and b!2720117 res!1142499) b!2720121))

(declare-fun m!3120241 () Bool)

(assert (=> b!2720117 m!3120241))

(declare-fun m!3120243 () Bool)

(assert (=> b!2720116 m!3120243))

(declare-fun m!3120245 () Bool)

(assert (=> b!2720120 m!3120245))

(declare-fun m!3120247 () Bool)

(assert (=> b!2720119 m!3120247))

(declare-fun m!3120249 () Bool)

(assert (=> b!2720119 m!3120249))

(assert (=> b!2720118 m!3120247))

(assert (=> b!2720118 m!3120249))

(declare-fun m!3120251 () Bool)

(assert (=> b!2720121 m!3120251))

(assert (=> d!783532 d!783694))

(declare-fun d!783696 () Bool)

(declare-fun lt!962713 () Int)

(assert (=> d!783696 (>= lt!962713 0)))

(declare-fun e!1714387 () Int)

(assert (=> d!783696 (= lt!962713 e!1714387)))

(declare-fun c!439595 () Bool)

(assert (=> d!783696 (= c!439595 (is-Nil!31378 lt!962583))))

(assert (=> d!783696 (= (size!24206 lt!962583) lt!962713)))

(declare-fun b!2720122 () Bool)

(assert (=> b!2720122 (= e!1714387 0)))

(declare-fun b!2720123 () Bool)

(assert (=> b!2720123 (= e!1714387 (+ 1 (size!24206 (t!226342 lt!962583))))))

(assert (= (and d!783696 c!439595) b!2720122))

(assert (= (and d!783696 (not c!439595)) b!2720123))

(declare-fun m!3120253 () Bool)

(assert (=> b!2720123 m!3120253))

(assert (=> b!2719696 d!783696))

(declare-fun d!783698 () Bool)

(declare-fun lt!962714 () Int)

(assert (=> d!783698 (>= lt!962714 0)))

(declare-fun e!1714388 () Int)

(assert (=> d!783698 (= lt!962714 e!1714388)))

(declare-fun c!439596 () Bool)

(assert (=> d!783698 (= c!439596 (is-Nil!31378 lt!962457))))

(assert (=> d!783698 (= (size!24206 lt!962457) lt!962714)))

(declare-fun b!2720124 () Bool)

(assert (=> b!2720124 (= e!1714388 0)))

(declare-fun b!2720125 () Bool)

(assert (=> b!2720125 (= e!1714388 (+ 1 (size!24206 (t!226342 lt!962457))))))

(assert (= (and d!783698 c!439596) b!2720124))

(assert (= (and d!783698 (not c!439596)) b!2720125))

(declare-fun m!3120255 () Bool)

(assert (=> b!2720125 m!3120255))

(assert (=> b!2719696 d!783698))

(declare-fun d!783700 () Bool)

(declare-fun lt!962715 () Int)

(assert (=> d!783700 (>= lt!962715 0)))

(declare-fun e!1714389 () Int)

(assert (=> d!783700 (= lt!962715 e!1714389)))

(declare-fun c!439597 () Bool)

(assert (=> d!783700 (= c!439597 (is-Nil!31378 (++!7815 lt!962468 lt!962460)))))

(assert (=> d!783700 (= (size!24206 (++!7815 lt!962468 lt!962460)) lt!962715)))

(declare-fun b!2720126 () Bool)

(assert (=> b!2720126 (= e!1714389 0)))

(declare-fun b!2720127 () Bool)

(assert (=> b!2720127 (= e!1714389 (+ 1 (size!24206 (t!226342 (++!7815 lt!962468 lt!962460)))))))

(assert (= (and d!783700 c!439597) b!2720126))

(assert (= (and d!783700 (not c!439597)) b!2720127))

(declare-fun m!3120257 () Bool)

(assert (=> b!2720127 m!3120257))

(assert (=> b!2719696 d!783700))

(declare-fun d!783702 () Bool)

(assert (=> d!783702 (= (list!11895 (_1!18166 lt!962593)) (list!11899 (c!439468 (_1!18166 lt!962593))))))

(declare-fun bs!488385 () Bool)

(assert (= bs!488385 d!783702))

(declare-fun m!3120259 () Bool)

(assert (=> bs!488385 m!3120259))

(assert (=> b!2719730 d!783702))

(declare-fun b!2720128 () Bool)

(declare-fun e!1714392 () Bool)

(declare-fun e!1714390 () Bool)

(assert (=> b!2720128 (= e!1714392 e!1714390)))

(declare-fun res!1142503 () Bool)

(declare-fun lt!962717 () tuple2!31078)

(assert (=> b!2720128 (= res!1142503 (< (size!24205 (_2!18171 lt!962717)) (size!24205 (list!11894 treated!9))))))

(assert (=> b!2720128 (=> (not res!1142503) (not e!1714390))))

(declare-fun b!2720129 () Bool)

(declare-fun e!1714391 () tuple2!31078)

(assert (=> b!2720129 (= e!1714391 (tuple2!31079 Nil!31378 (list!11894 treated!9)))))

(declare-fun b!2720130 () Bool)

(assert (=> b!2720130 (= e!1714390 (not (isEmpty!17903 (_1!18171 lt!962717))))))

(declare-fun b!2720131 () Bool)

(assert (=> b!2720131 (= e!1714392 (= (_2!18171 lt!962717) (list!11894 treated!9)))))

(declare-fun d!783704 () Bool)

(assert (=> d!783704 e!1714392))

(declare-fun c!439599 () Bool)

(assert (=> d!783704 (= c!439599 (> (size!24206 (_1!18171 lt!962717)) 0))))

(assert (=> d!783704 (= lt!962717 e!1714391)))

(declare-fun c!439598 () Bool)

(declare-fun lt!962716 () Option!6200)

(assert (=> d!783704 (= c!439598 (is-Some!6199 lt!962716))))

(assert (=> d!783704 (= lt!962716 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 treated!9)))))

(assert (=> d!783704 (= (lexList!1227 thiss!11556 rules!1182 (list!11894 treated!9)) lt!962717)))

(declare-fun b!2720132 () Bool)

(declare-fun lt!962718 () tuple2!31078)

(assert (=> b!2720132 (= e!1714391 (tuple2!31079 (Cons!31378 (_1!18170 (v!33044 lt!962716)) (_1!18171 lt!962718)) (_2!18171 lt!962718)))))

(assert (=> b!2720132 (= lt!962718 (lexList!1227 thiss!11556 rules!1182 (_2!18170 (v!33044 lt!962716))))))

(assert (= (and d!783704 c!439598) b!2720132))

(assert (= (and d!783704 (not c!439598)) b!2720129))

(assert (= (and d!783704 c!439599) b!2720128))

(assert (= (and d!783704 (not c!439599)) b!2720131))

(assert (= (and b!2720128 res!1142503) b!2720130))

(declare-fun m!3120261 () Bool)

(assert (=> b!2720128 m!3120261))

(assert (=> b!2720128 m!3119329))

(declare-fun m!3120263 () Bool)

(assert (=> b!2720128 m!3120263))

(declare-fun m!3120265 () Bool)

(assert (=> b!2720130 m!3120265))

(declare-fun m!3120267 () Bool)

(assert (=> d!783704 m!3120267))

(assert (=> d!783704 m!3119329))

(declare-fun m!3120269 () Bool)

(assert (=> d!783704 m!3120269))

(declare-fun m!3120271 () Bool)

(assert (=> b!2720132 m!3120271))

(assert (=> b!2719730 d!783704))

(assert (=> b!2719730 d!783566))

(declare-fun b!2720199 () Bool)

(declare-fun c!439633 () Bool)

(declare-fun call!175515 () Int)

(declare-fun call!175519 () Int)

(assert (=> b!2720199 (= c!439633 (>= call!175515 call!175519))))

(declare-fun e!1714428 () Conc!9832)

(declare-fun e!1714434 () Conc!9832)

(assert (=> b!2720199 (= e!1714428 e!1714434)))

(declare-fun bm!175506 () Bool)

(declare-fun c!439629 () Bool)

(assert (=> bm!175506 (= call!175519 (height!1457 (ite c!439629 (right!24453 (c!439468 acc!331)) (left!24123 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun lt!962728 () Conc!9832)

(declare-fun call!175512 () Conc!9832)

(declare-fun c!439631 () Bool)

(declare-fun bm!175507 () Bool)

(declare-fun call!175521 () Conc!9832)

(declare-fun lt!962727 () Conc!9832)

(declare-fun c!439630 () Bool)

(declare-fun call!175522 () Conc!9832)

(declare-fun c!439635 () Bool)

(declare-fun <>!258 (Conc!9832 Conc!9832) Conc!9832)

(assert (=> bm!175507 (= call!175521 (<>!258 (ite c!439635 (c!439468 acc!331) (ite c!439629 (ite c!439630 (left!24123 (right!24453 (c!439468 acc!331))) (left!24123 (c!439468 acc!331))) (ite c!439633 call!175512 (ite c!439631 call!175522 lt!962728)))) (ite c!439635 (c!439468 (_1!18166 lt!962466)) (ite c!439629 (ite c!439630 lt!962727 (left!24123 (right!24453 (c!439468 acc!331)))) (ite (or c!439633 c!439631) (right!24453 (c!439468 (_1!18166 lt!962466))) call!175522)))))))

(declare-fun b!2720200 () Bool)

(declare-fun e!1714429 () Conc!9832)

(assert (=> b!2720200 (= e!1714429 (c!439468 acc!331))))

(declare-fun bm!175508 () Bool)

(declare-fun call!175526 () Conc!9832)

(assert (=> bm!175508 (= call!175526 call!175521)))

(declare-fun b!2720201 () Bool)

(declare-fun e!1714430 () Conc!9832)

(declare-fun call!175517 () Conc!9832)

(assert (=> b!2720201 (= e!1714430 call!175517)))

(declare-fun b!2720202 () Bool)

(declare-fun e!1714427 () Conc!9832)

(declare-fun e!1714426 () Conc!9832)

(assert (=> b!2720202 (= e!1714427 e!1714426)))

(declare-fun call!175511 () Conc!9832)

(assert (=> b!2720202 (= lt!962727 call!175511)))

(declare-fun call!175518 () Int)

(declare-fun call!175516 () Int)

(assert (=> b!2720202 (= c!439630 (= call!175518 (- call!175516 3)))))

(declare-fun b!2720203 () Bool)

(declare-fun call!175520 () Conc!9832)

(assert (=> b!2720203 (= e!1714426 call!175520)))

(declare-fun b!2720204 () Bool)

(declare-fun e!1714431 () Conc!9832)

(assert (=> b!2720204 (= e!1714431 (c!439468 (_1!18166 lt!962466)))))

(declare-fun b!2720205 () Bool)

(declare-fun e!1714433 () Conc!9832)

(assert (=> b!2720205 (= e!1714433 call!175521)))

(declare-fun d!783706 () Bool)

(declare-fun e!1714432 () Bool)

(assert (=> d!783706 e!1714432))

(declare-fun res!1142517 () Bool)

(assert (=> d!783706 (=> (not res!1142517) (not e!1714432))))

(assert (=> d!783706 (= res!1142517 (appendAssocInst!692 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))))))

(declare-fun lt!962730 () Conc!9832)

(assert (=> d!783706 (= lt!962730 e!1714431)))

(declare-fun c!439628 () Bool)

(assert (=> d!783706 (= c!439628 (= (c!439468 acc!331) Empty!9832))))

(declare-fun e!1714425 () Bool)

(assert (=> d!783706 e!1714425))

(declare-fun res!1142516 () Bool)

(assert (=> d!783706 (=> (not res!1142516) (not e!1714425))))

(assert (=> d!783706 (= res!1142516 (isBalanced!2977 (c!439468 acc!331)))))

(assert (=> d!783706 (= (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))) lt!962730)))

(declare-fun bm!175509 () Bool)

(declare-fun call!175514 () Conc!9832)

(assert (=> bm!175509 (= call!175522 call!175514)))

(declare-fun b!2720206 () Bool)

(declare-fun call!175523 () Conc!9832)

(assert (=> b!2720206 (= e!1714427 call!175523)))

(declare-fun b!2720207 () Bool)

(declare-fun call!175513 () Conc!9832)

(assert (=> b!2720207 (= e!1714434 call!175513)))

(declare-fun b!2720208 () Bool)

(declare-fun res!1142515 () Bool)

(assert (=> b!2720208 (=> (not res!1142515) (not e!1714432))))

(assert (=> b!2720208 (= res!1142515 (<= (height!1457 lt!962730) (+ (max!0 (height!1457 (c!439468 acc!331)) (height!1457 (c!439468 (_1!18166 lt!962466)))) 1)))))

(declare-fun bm!175510 () Bool)

(declare-fun call!175524 () Conc!9832)

(declare-fun c!439634 () Bool)

(assert (=> bm!175510 (= call!175514 (<>!258 (ite c!439629 (ite (or c!439634 c!439630) (left!24123 (c!439468 acc!331)) call!175524) (ite c!439631 lt!962728 (right!24453 (left!24123 (c!439468 (_1!18166 lt!962466)))))) (ite c!439629 (ite c!439634 call!175511 (ite c!439630 call!175524 lt!962727)) (ite c!439631 (right!24453 (left!24123 (c!439468 (_1!18166 lt!962466)))) (right!24453 (c!439468 (_1!18166 lt!962466)))))))))

(declare-fun bm!175511 () Bool)

(declare-fun call!175525 () Conc!9832)

(assert (=> bm!175511 (= call!175511 call!175525)))

(declare-fun b!2720209 () Bool)

(assert (=> b!2720209 (= c!439634 (>= call!175515 call!175519))))

(assert (=> b!2720209 (= e!1714428 e!1714427)))

(declare-fun bm!175512 () Bool)

(assert (=> bm!175512 (= call!175523 call!175514)))

(declare-fun bm!175513 () Bool)

(assert (=> bm!175513 (= call!175515 (height!1457 (ite c!439629 (left!24123 (c!439468 acc!331)) (right!24453 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun bm!175514 () Bool)

(assert (=> bm!175514 (= call!175517 call!175513)))

(declare-fun b!2720210 () Bool)

(assert (=> b!2720210 (= e!1714434 e!1714430)))

(assert (=> b!2720210 (= lt!962728 call!175512)))

(assert (=> b!2720210 (= c!439631 (= call!175516 (- call!175518 3)))))

(declare-fun bm!175515 () Bool)

(assert (=> bm!175515 (= call!175525 (++!7820 (ite c!439629 (ite c!439634 (right!24453 (c!439468 acc!331)) (right!24453 (right!24453 (c!439468 acc!331)))) (c!439468 acc!331)) (ite c!439629 (c!439468 (_1!18166 lt!962466)) (ite c!439633 (left!24123 (c!439468 (_1!18166 lt!962466))) (left!24123 (left!24123 (c!439468 (_1!18166 lt!962466))))))))))

(declare-fun b!2720211 () Bool)

(assert (=> b!2720211 (= e!1714430 call!175517)))

(declare-fun bm!175516 () Bool)

(assert (=> bm!175516 (= call!175520 call!175523)))

(declare-fun b!2720212 () Bool)

(assert (=> b!2720212 (= e!1714425 (isBalanced!2977 (c!439468 (_1!18166 lt!962466))))))

(declare-fun bm!175517 () Bool)

(assert (=> bm!175517 (= call!175513 call!175526)))

(declare-fun b!2720213 () Bool)

(assert (=> b!2720213 (= e!1714431 e!1714429)))

(declare-fun c!439632 () Bool)

(assert (=> b!2720213 (= c!439632 (= (c!439468 (_1!18166 lt!962466)) Empty!9832))))

(declare-fun b!2720214 () Bool)

(declare-fun lt!962729 () Int)

(assert (=> b!2720214 (= c!439635 (and (<= (- 1) lt!962729) (<= lt!962729 1)))))

(assert (=> b!2720214 (= lt!962729 (- (height!1457 (c!439468 (_1!18166 lt!962466))) (height!1457 (c!439468 acc!331))))))

(assert (=> b!2720214 (= e!1714429 e!1714433)))

(declare-fun bm!175518 () Bool)

(assert (=> bm!175518 (= call!175512 call!175525)))

(declare-fun b!2720215 () Bool)

(assert (=> b!2720215 (= e!1714433 e!1714428)))

(assert (=> b!2720215 (= c!439629 (< lt!962729 (- 1)))))

(declare-fun b!2720216 () Bool)

(declare-fun res!1142518 () Bool)

(assert (=> b!2720216 (=> (not res!1142518) (not e!1714432))))

(assert (=> b!2720216 (= res!1142518 (isBalanced!2977 lt!962730))))

(declare-fun b!2720217 () Bool)

(assert (=> b!2720217 (= e!1714432 (= (list!11899 lt!962730) (++!7815 (list!11899 (c!439468 acc!331)) (list!11899 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun bm!175519 () Bool)

(assert (=> bm!175519 (= call!175518 (height!1457 (ite c!439629 lt!962727 (c!439468 (_1!18166 lt!962466)))))))

(declare-fun b!2720218 () Bool)

(declare-fun res!1142514 () Bool)

(assert (=> b!2720218 (=> (not res!1142514) (not e!1714432))))

(assert (=> b!2720218 (= res!1142514 (>= (height!1457 lt!962730) (max!0 (height!1457 (c!439468 acc!331)) (height!1457 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun bm!175520 () Bool)

(assert (=> bm!175520 (= call!175524 call!175526)))

(declare-fun bm!175521 () Bool)

(assert (=> bm!175521 (= call!175516 (height!1457 (ite c!439629 (c!439468 acc!331) lt!962728)))))

(declare-fun b!2720219 () Bool)

(assert (=> b!2720219 (= e!1714426 call!175520)))

(assert (= (and d!783706 res!1142516) b!2720212))

(assert (= (and d!783706 c!439628) b!2720204))

(assert (= (and d!783706 (not c!439628)) b!2720213))

(assert (= (and b!2720213 c!439632) b!2720200))

(assert (= (and b!2720213 (not c!439632)) b!2720214))

(assert (= (and b!2720214 c!439635) b!2720205))

(assert (= (and b!2720214 (not c!439635)) b!2720215))

(assert (= (and b!2720215 c!439629) b!2720209))

(assert (= (and b!2720215 (not c!439629)) b!2720199))

(assert (= (and b!2720209 c!439634) b!2720206))

(assert (= (and b!2720209 (not c!439634)) b!2720202))

(assert (= (and b!2720202 c!439630) b!2720203))

(assert (= (and b!2720202 (not c!439630)) b!2720219))

(assert (= (or b!2720203 b!2720219) bm!175520))

(assert (= (or b!2720203 b!2720219) bm!175516))

(assert (= (or b!2720206 b!2720202) bm!175511))

(assert (= (or b!2720206 bm!175516) bm!175512))

(assert (= (and b!2720199 c!439633) b!2720207))

(assert (= (and b!2720199 (not c!439633)) b!2720210))

(assert (= (and b!2720210 c!439631) b!2720211))

(assert (= (and b!2720210 (not c!439631)) b!2720201))

(assert (= (or b!2720211 b!2720201) bm!175509))

(assert (= (or b!2720211 b!2720201) bm!175514))

(assert (= (or b!2720207 b!2720210) bm!175518))

(assert (= (or b!2720207 bm!175514) bm!175517))

(assert (= (or bm!175512 bm!175509) bm!175510))

(assert (= (or b!2720209 b!2720199) bm!175513))

(assert (= (or b!2720202 b!2720210) bm!175521))

(assert (= (or bm!175511 bm!175518) bm!175515))

(assert (= (or b!2720209 b!2720199) bm!175506))

(assert (= (or bm!175520 bm!175517) bm!175508))

(assert (= (or b!2720202 b!2720210) bm!175519))

(assert (= (or b!2720205 bm!175508) bm!175507))

(assert (= (and d!783706 res!1142517) b!2720216))

(assert (= (and b!2720216 res!1142518) b!2720208))

(assert (= (and b!2720208 res!1142515) b!2720218))

(assert (= (and b!2720218 res!1142514) b!2720217))

(declare-fun m!3120291 () Bool)

(assert (=> bm!175506 m!3120291))

(declare-fun m!3120293 () Bool)

(assert (=> b!2720216 m!3120293))

(declare-fun m!3120295 () Bool)

(assert (=> b!2720218 m!3120295))

(assert (=> b!2720218 m!3119571))

(assert (=> b!2720218 m!3119573))

(assert (=> b!2720218 m!3119571))

(assert (=> b!2720218 m!3119573))

(assert (=> b!2720218 m!3119575))

(assert (=> d!783706 m!3119561))

(assert (=> d!783706 m!3119725))

(declare-fun m!3120297 () Bool)

(assert (=> b!2720217 m!3120297))

(assert (=> b!2720217 m!3119741))

(declare-fun m!3120299 () Bool)

(assert (=> b!2720217 m!3120299))

(assert (=> b!2720217 m!3119741))

(assert (=> b!2720217 m!3120299))

(declare-fun m!3120301 () Bool)

(assert (=> b!2720217 m!3120301))

(declare-fun m!3120303 () Bool)

(assert (=> bm!175513 m!3120303))

(declare-fun m!3120305 () Bool)

(assert (=> bm!175515 m!3120305))

(declare-fun m!3120307 () Bool)

(assert (=> bm!175510 m!3120307))

(declare-fun m!3120309 () Bool)

(assert (=> b!2720212 m!3120309))

(declare-fun m!3120311 () Bool)

(assert (=> bm!175519 m!3120311))

(declare-fun m!3120313 () Bool)

(assert (=> bm!175521 m!3120313))

(assert (=> b!2720214 m!3119573))

(assert (=> b!2720214 m!3119571))

(declare-fun m!3120315 () Bool)

(assert (=> bm!175507 m!3120315))

(assert (=> b!2720208 m!3120295))

(assert (=> b!2720208 m!3119571))

(assert (=> b!2720208 m!3119573))

(assert (=> b!2720208 m!3119571))

(assert (=> b!2720208 m!3119573))

(assert (=> b!2720208 m!3119575))

(assert (=> b!2719656 d!783706))

(declare-fun d!783716 () Bool)

(assert (=> d!783716 (= (height!1457 (c!439468 acc!331)) (ite (is-Empty!9832 (c!439468 acc!331)) 0 (ite (is-Leaf!14978 (c!439468 acc!331)) 1 (cheight!10043 (c!439468 acc!331)))))))

(assert (=> b!2719656 d!783716))

(declare-fun d!783718 () Bool)

(assert (=> d!783718 (= (height!1457 (c!439468 (_1!18166 lt!962466))) (ite (is-Empty!9832 (c!439468 (_1!18166 lt!962466))) 0 (ite (is-Leaf!14978 (c!439468 (_1!18166 lt!962466))) 1 (cheight!10043 (c!439468 (_1!18166 lt!962466))))))))

(assert (=> b!2719656 d!783718))

(declare-fun d!783720 () Bool)

(assert (=> d!783720 (= (max!0 (height!1457 (c!439468 acc!331)) (height!1457 (c!439468 (_1!18166 lt!962466)))) (ite (< (height!1457 (c!439468 acc!331)) (height!1457 (c!439468 (_1!18166 lt!962466)))) (height!1457 (c!439468 (_1!18166 lt!962466))) (height!1457 (c!439468 acc!331))))))

(assert (=> b!2719656 d!783720))

(declare-fun d!783722 () Bool)

(assert (=> d!783722 (= (height!1457 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))) (ite (is-Empty!9832 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))) 0 (ite (is-Leaf!14978 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))) 1 (cheight!10043 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))))))))

(assert (=> b!2719656 d!783722))

(assert (=> d!783504 d!783498))

(assert (=> d!783504 d!783512))

(assert (=> d!783504 d!783520))

(assert (=> d!783504 d!783524))

(declare-fun d!783724 () Bool)

(assert (=> d!783724 (= (++!7816 (++!7816 lt!962458 lt!962464) lt!962459) (++!7816 lt!962458 (++!7816 lt!962464 lt!962459)))))

(assert (=> d!783724 true))

(declare-fun _$52!1439 () Unit!45389)

(assert (=> d!783724 (= (choose!15975 lt!962458 lt!962464 lt!962459) _$52!1439)))

(declare-fun bs!488387 () Bool)

(assert (= bs!488387 d!783724))

(assert (=> bs!488387 m!3119301))

(assert (=> bs!488387 m!3119301))

(assert (=> bs!488387 m!3119303))

(assert (=> bs!488387 m!3119287))

(assert (=> bs!488387 m!3119287))

(assert (=> bs!488387 m!3119289))

(assert (=> d!783504 d!783724))

(declare-fun b!2720232 () Bool)

(declare-fun res!1142532 () Bool)

(declare-fun e!1714440 () Bool)

(assert (=> b!2720232 (=> (not res!1142532) (not e!1714440))))

(assert (=> b!2720232 (= res!1142532 (isBalanced!2977 (right!24453 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467))))))))

(declare-fun b!2720233 () Bool)

(declare-fun res!1142531 () Bool)

(assert (=> b!2720233 (=> (not res!1142531) (not e!1714440))))

(declare-fun isEmpty!17912 (Conc!9832) Bool)

(assert (=> b!2720233 (= res!1142531 (not (isEmpty!17912 (left!24123 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2720234 () Bool)

(declare-fun res!1142536 () Bool)

(assert (=> b!2720234 (=> (not res!1142536) (not e!1714440))))

(assert (=> b!2720234 (= res!1142536 (<= (- (height!1457 (left!24123 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467))))) (height!1457 (right!24453 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467)))))) 1))))

(declare-fun b!2720235 () Bool)

(assert (=> b!2720235 (= e!1714440 (not (isEmpty!17912 (right!24453 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2720236 () Bool)

(declare-fun e!1714439 () Bool)

(assert (=> b!2720236 (= e!1714439 e!1714440)))

(declare-fun res!1142534 () Bool)

(assert (=> b!2720236 (=> (not res!1142534) (not e!1714440))))

(assert (=> b!2720236 (= res!1142534 (<= (- 1) (- (height!1457 (left!24123 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467))))) (height!1457 (right!24453 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467))))))))))

(declare-fun d!783726 () Bool)

(declare-fun res!1142535 () Bool)

(assert (=> d!783726 (=> res!1142535 e!1714439)))

(assert (=> d!783726 (= res!1142535 (not (is-Node!9832 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467))))))))

(assert (=> d!783726 (= (isBalanced!2977 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467)))) e!1714439)))

(declare-fun b!2720237 () Bool)

(declare-fun res!1142533 () Bool)

(assert (=> b!2720237 (=> (not res!1142533) (not e!1714440))))

(assert (=> b!2720237 (= res!1142533 (isBalanced!2977 (left!24123 (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467))))))))

(assert (= (and d!783726 (not res!1142535)) b!2720236))

(assert (= (and b!2720236 res!1142534) b!2720234))

(assert (= (and b!2720234 res!1142536) b!2720237))

(assert (= (and b!2720237 res!1142533) b!2720232))

(assert (= (and b!2720232 res!1142532) b!2720233))

(assert (= (and b!2720233 res!1142531) b!2720235))

(declare-fun m!3120317 () Bool)

(assert (=> b!2720236 m!3120317))

(declare-fun m!3120319 () Bool)

(assert (=> b!2720236 m!3120319))

(declare-fun m!3120321 () Bool)

(assert (=> b!2720233 m!3120321))

(assert (=> b!2720234 m!3120317))

(assert (=> b!2720234 m!3120319))

(declare-fun m!3120323 () Bool)

(assert (=> b!2720232 m!3120323))

(declare-fun m!3120325 () Bool)

(assert (=> b!2720235 m!3120325))

(declare-fun m!3120327 () Bool)

(assert (=> b!2720237 m!3120327))

(assert (=> d!783508 d!783726))

(declare-fun c!439653 () Bool)

(declare-fun lt!962786 () List!31478)

(declare-fun call!175553 () List!31478)

(declare-fun lt!962780 () List!31478)

(declare-fun call!175554 () List!31478)

(declare-fun lt!962794 () List!31478)

(declare-fun bm!175542 () Bool)

(assert (=> bm!175542 (= call!175554 (++!7815 (ite c!439653 call!175553 lt!962780) (ite c!439653 lt!962786 lt!962794)))))

(declare-fun call!175550 () List!31478)

(declare-fun lt!962788 () List!31478)

(declare-fun lt!962781 () List!31478)

(declare-fun lt!962778 () List!31478)

(declare-fun bm!175543 () Bool)

(assert (=> bm!175543 (= call!175550 (++!7815 (ite c!439653 lt!962778 lt!962788) (ite c!439653 lt!962786 lt!962781)))))

(declare-fun call!175551 () List!31478)

(declare-fun lt!962792 () List!31478)

(declare-fun lt!962783 () List!31478)

(declare-fun bm!175544 () Bool)

(assert (=> bm!175544 (= call!175551 (++!7815 (ite c!439653 lt!962792 lt!962781) (ite c!439653 call!175550 lt!962783)))))

(declare-fun b!2720297 () Bool)

(declare-fun lt!962785 () Conc!9832)

(assert (=> b!2720297 (= c!439653 (<= (height!1457 lt!962785) (+ (height!1457 (left!24123 (c!439468 acc!331))) 1)))))

(assert (=> b!2720297 (= lt!962785 (append!822 (right!24453 (c!439468 acc!331)) (_1!18167 (v!33039 lt!962467))))))

(declare-fun e!1714470 () Conc!9832)

(declare-fun e!1714469 () Conc!9832)

(assert (=> b!2720297 (= e!1714470 e!1714469)))

(declare-fun bm!175545 () Bool)

(declare-fun call!175549 () IArray!19669)

(declare-fun fill!144 (Int Token!9066) IArray!19669)

(assert (=> bm!175545 (= call!175549 (fill!144 1 (_1!18167 (v!33039 lt!962467))))))

(declare-fun b!2720298 () Bool)

(declare-fun res!1142564 () Bool)

(declare-fun e!1714471 () Bool)

(assert (=> b!2720298 (=> (not res!1142564) (not e!1714471))))

(declare-fun lt!962787 () Conc!9832)

(assert (=> b!2720298 (= res!1142564 (<= (height!1457 (c!439468 acc!331)) (height!1457 lt!962787)))))

(declare-fun b!2720299 () Bool)

(declare-fun e!1714473 () Conc!9832)

(assert (=> b!2720299 (= e!1714473 (right!24453 lt!962785))))

(declare-fun bm!175546 () Bool)

(declare-fun call!175555 () List!31478)

(assert (=> bm!175546 (= call!175555 (list!11899 (ite c!439653 (left!24123 (c!439468 acc!331)) (left!24123 lt!962785))))))

(declare-fun b!2720300 () Bool)

(declare-fun res!1142565 () Bool)

(assert (=> b!2720300 (=> (not res!1142565) (not e!1714471))))

(assert (=> b!2720300 (= res!1142565 (<= (height!1457 lt!962787) (+ (height!1457 (c!439468 acc!331)) 1)))))

(declare-fun d!783728 () Bool)

(assert (=> d!783728 e!1714471))

(declare-fun res!1142566 () Bool)

(assert (=> d!783728 (=> (not res!1142566) (not e!1714471))))

(assert (=> d!783728 (= res!1142566 (isBalanced!2977 lt!962787))))

(declare-fun e!1714468 () Conc!9832)

(assert (=> d!783728 (= lt!962787 e!1714468)))

(declare-fun c!439656 () Bool)

(assert (=> d!783728 (= c!439656 (is-Empty!9832 (c!439468 acc!331)))))

(assert (=> d!783728 (isBalanced!2977 (c!439468 acc!331))))

(assert (=> d!783728 (= (append!822 (c!439468 acc!331) (_1!18167 (v!33039 lt!962467))) lt!962787)))

(declare-fun call!175556 () Unit!45389)

(declare-fun lt!962795 () List!31478)

(declare-fun bm!175547 () Bool)

(declare-fun lemmaConcatAssociativity!1625 (List!31478 List!31478 List!31478) Unit!45389)

(assert (=> bm!175547 (= call!175556 (lemmaConcatAssociativity!1625 (ite c!439653 lt!962792 lt!962795) (ite c!439653 lt!962778 lt!962780) (ite c!439653 lt!962786 lt!962794)))))

(declare-fun b!2720301 () Bool)

(assert (=> b!2720301 (= e!1714471 (= (list!11899 lt!962787) ($colon+!180 (list!11899 (c!439468 acc!331)) (_1!18167 (v!33039 lt!962467)))))))

(declare-fun b!2720302 () Bool)

(declare-fun e!1714472 () Conc!9832)

(declare-fun call!175548 () Conc!9832)

(assert (=> b!2720302 (= e!1714472 call!175548)))

(declare-fun bm!175548 () Bool)

(declare-fun c!439654 () Bool)

(declare-fun c!439655 () Bool)

(assert (=> bm!175548 (= c!439654 c!439655)))

(declare-fun call!175552 () Conc!9832)

(assert (=> bm!175548 (= call!175548 (<>!258 (ite c!439655 call!175552 (c!439468 acc!331)) e!1714473))))

(declare-fun bm!175549 () Bool)

(declare-fun call!175547 () List!31478)

(assert (=> bm!175549 (= call!175547 (list!11899 (ite c!439653 (right!24453 (c!439468 acc!331)) (left!24123 (c!439468 acc!331)))))))

(declare-fun b!2720303 () Bool)

(declare-fun append!824 (IArray!19669 Token!9066) IArray!19669)

(assert (=> b!2720303 (= e!1714472 (Leaf!14978 (append!824 (xs!12907 (c!439468 acc!331)) (_1!18167 (v!33039 lt!962467))) (+ (csize!19895 (c!439468 acc!331)) 1)))))

(declare-fun lt!962793 () List!31478)

(declare-fun list!11903 (IArray!19669) List!31478)

(assert (=> b!2720303 (= lt!962793 ($colon+!180 (list!11903 (xs!12907 (c!439468 acc!331))) (_1!18167 (v!33039 lt!962467))))))

(declare-fun bm!175550 () Bool)

(assert (=> bm!175550 (= call!175552 (<>!258 (left!24123 (c!439468 acc!331)) (ite c!439653 lt!962785 (left!24123 lt!962785))))))

(declare-fun b!2720304 () Bool)

(assert (=> b!2720304 (= e!1714468 e!1714470)))

(assert (=> b!2720304 (= c!439655 (is-Node!9832 (c!439468 acc!331)))))

(declare-fun b!2720305 () Bool)

(assert (=> b!2720305 (= e!1714469 call!175552)))

(assert (=> b!2720305 (= lt!962792 call!175555)))

(assert (=> b!2720305 (= lt!962778 call!175547)))

(assert (=> b!2720305 (= lt!962786 (Cons!31378 (_1!18167 (v!33039 lt!962467)) Nil!31378))))

(declare-fun lt!962791 () Unit!45389)

(assert (=> b!2720305 (= lt!962791 call!175556)))

(assert (=> b!2720305 (= call!175554 call!175551)))

(declare-fun lt!962790 () Unit!45389)

(assert (=> b!2720305 (= lt!962790 lt!962791)))

(declare-fun b!2720306 () Bool)

(assert (=> b!2720306 (= e!1714473 (Leaf!14978 call!175549 1))))

(declare-fun bm!175551 () Bool)

(assert (=> bm!175551 (= call!175553 (++!7815 (ite c!439653 lt!962792 lt!962795) (ite c!439653 lt!962778 lt!962780)))))

(declare-fun b!2720307 () Bool)

(declare-fun c!439652 () Bool)

(assert (=> b!2720307 (= c!439652 (< (csize!19895 (c!439468 acc!331)) 512))))

(assert (=> b!2720307 (= e!1714470 e!1714472)))

(declare-fun b!2720308 () Bool)

(assert (=> b!2720308 (= e!1714469 call!175548)))

(assert (=> b!2720308 (= lt!962795 call!175547)))

(assert (=> b!2720308 (= lt!962780 call!175555)))

(assert (=> b!2720308 (= lt!962794 (list!11899 (right!24453 lt!962785)))))

(declare-fun lt!962784 () Unit!45389)

(assert (=> b!2720308 (= lt!962784 call!175556)))

(assert (=> b!2720308 (= (++!7815 call!175553 lt!962794) (++!7815 lt!962795 call!175554))))

(declare-fun lt!962779 () Unit!45389)

(assert (=> b!2720308 (= lt!962779 lt!962784)))

(assert (=> b!2720308 (= lt!962788 call!175547)))

(assert (=> b!2720308 (= lt!962781 (list!11899 (right!24453 (c!439468 acc!331))))))

(assert (=> b!2720308 (= lt!962783 (Cons!31378 (_1!18167 (v!33039 lt!962467)) Nil!31378))))

(declare-fun lt!962782 () Unit!45389)

(assert (=> b!2720308 (= lt!962782 (lemmaConcatAssociativity!1625 lt!962788 lt!962781 lt!962783))))

(assert (=> b!2720308 (= (++!7815 call!175550 lt!962783) (++!7815 lt!962788 call!175551))))

(declare-fun lt!962789 () Unit!45389)

(assert (=> b!2720308 (= lt!962789 lt!962782)))

(declare-fun b!2720309 () Bool)

(assert (=> b!2720309 (= e!1714468 (Leaf!14978 call!175549 1))))

(assert (= (and d!783728 c!439656) b!2720309))

(assert (= (and d!783728 (not c!439656)) b!2720304))

(assert (= (and b!2720304 c!439655) b!2720297))

(assert (= (and b!2720304 (not c!439655)) b!2720307))

(assert (= (and b!2720297 c!439653) b!2720305))

(assert (= (and b!2720297 (not c!439653)) b!2720308))

(assert (= (or b!2720305 b!2720308) bm!175550))

(assert (= (or b!2720305 b!2720308) bm!175549))

(assert (= (or b!2720305 b!2720308) bm!175547))

(assert (= (or b!2720305 b!2720308) bm!175551))

(assert (= (or b!2720305 b!2720308) bm!175546))

(assert (= (or b!2720305 b!2720308) bm!175543))

(assert (= (or b!2720305 b!2720308) bm!175542))

(assert (= (or b!2720305 b!2720308) bm!175544))

(assert (= (and b!2720307 c!439652) b!2720303))

(assert (= (and b!2720307 (not c!439652)) b!2720302))

(assert (= (or b!2720308 b!2720302) bm!175548))

(assert (= (and bm!175548 c!439654) b!2720299))

(assert (= (and bm!175548 (not c!439654)) b!2720306))

(assert (= (or b!2720309 b!2720306) bm!175545))

(assert (= (and d!783728 res!1142566) b!2720298))

(assert (= (and b!2720298 res!1142564) b!2720300))

(assert (= (and b!2720300 res!1142565) b!2720301))

(declare-fun m!3120353 () Bool)

(assert (=> bm!175543 m!3120353))

(declare-fun m!3120355 () Bool)

(assert (=> b!2720303 m!3120355))

(declare-fun m!3120357 () Bool)

(assert (=> b!2720303 m!3120357))

(assert (=> b!2720303 m!3120357))

(declare-fun m!3120359 () Bool)

(assert (=> b!2720303 m!3120359))

(declare-fun m!3120361 () Bool)

(assert (=> bm!175542 m!3120361))

(declare-fun m!3120363 () Bool)

(assert (=> bm!175544 m!3120363))

(declare-fun m!3120365 () Bool)

(assert (=> b!2720300 m!3120365))

(assert (=> b!2720300 m!3119571))

(declare-fun m!3120367 () Bool)

(assert (=> bm!175551 m!3120367))

(declare-fun m!3120369 () Bool)

(assert (=> bm!175548 m!3120369))

(declare-fun m!3120371 () Bool)

(assert (=> bm!175545 m!3120371))

(declare-fun m!3120373 () Bool)

(assert (=> b!2720297 m!3120373))

(declare-fun m!3120375 () Bool)

(assert (=> b!2720297 m!3120375))

(declare-fun m!3120377 () Bool)

(assert (=> b!2720297 m!3120377))

(declare-fun m!3120379 () Bool)

(assert (=> bm!175547 m!3120379))

(assert (=> b!2720298 m!3119571))

(assert (=> b!2720298 m!3120365))

(declare-fun m!3120381 () Bool)

(assert (=> d!783728 m!3120381))

(assert (=> d!783728 m!3119725))

(declare-fun m!3120383 () Bool)

(assert (=> bm!175550 m!3120383))

(declare-fun m!3120385 () Bool)

(assert (=> b!2720301 m!3120385))

(assert (=> b!2720301 m!3119741))

(assert (=> b!2720301 m!3119741))

(declare-fun m!3120387 () Bool)

(assert (=> b!2720301 m!3120387))

(declare-fun m!3120389 () Bool)

(assert (=> bm!175546 m!3120389))

(declare-fun m!3120391 () Bool)

(assert (=> b!2720308 m!3120391))

(declare-fun m!3120393 () Bool)

(assert (=> b!2720308 m!3120393))

(declare-fun m!3120395 () Bool)

(assert (=> b!2720308 m!3120395))

(declare-fun m!3120397 () Bool)

(assert (=> b!2720308 m!3120397))

(declare-fun m!3120399 () Bool)

(assert (=> b!2720308 m!3120399))

(declare-fun m!3120401 () Bool)

(assert (=> b!2720308 m!3120401))

(declare-fun m!3120403 () Bool)

(assert (=> b!2720308 m!3120403))

(declare-fun m!3120405 () Bool)

(assert (=> bm!175549 m!3120405))

(assert (=> d!783508 d!783728))

(declare-fun d!783734 () Bool)

(declare-fun res!1142573 () Bool)

(declare-fun e!1714476 () Bool)

(assert (=> d!783734 (=> (not res!1142573) (not e!1714476))))

(declare-fun size!24211 (Conc!9831) Int)

(assert (=> d!783734 (= res!1142573 (= (csize!19892 (c!439466 treated!9)) (+ (size!24211 (left!24122 (c!439466 treated!9))) (size!24211 (right!24452 (c!439466 treated!9))))))))

(assert (=> d!783734 (= (inv!42625 (c!439466 treated!9)) e!1714476)))

(declare-fun b!2720316 () Bool)

(declare-fun res!1142574 () Bool)

(assert (=> b!2720316 (=> (not res!1142574) (not e!1714476))))

(assert (=> b!2720316 (= res!1142574 (and (not (= (left!24122 (c!439466 treated!9)) Empty!9831)) (not (= (right!24452 (c!439466 treated!9)) Empty!9831))))))

(declare-fun b!2720317 () Bool)

(declare-fun res!1142575 () Bool)

(assert (=> b!2720317 (=> (not res!1142575) (not e!1714476))))

(assert (=> b!2720317 (= res!1142575 (= (cheight!10042 (c!439466 treated!9)) (+ (max!0 (height!1459 (left!24122 (c!439466 treated!9))) (height!1459 (right!24452 (c!439466 treated!9)))) 1)))))

(declare-fun b!2720318 () Bool)

(assert (=> b!2720318 (= e!1714476 (<= 0 (cheight!10042 (c!439466 treated!9))))))

(assert (= (and d!783734 res!1142573) b!2720316))

(assert (= (and b!2720316 res!1142574) b!2720317))

(assert (= (and b!2720317 res!1142575) b!2720318))

(declare-fun m!3120407 () Bool)

(assert (=> d!783734 m!3120407))

(declare-fun m!3120409 () Bool)

(assert (=> d!783734 m!3120409))

(declare-fun m!3120411 () Bool)

(assert (=> b!2720317 m!3120411))

(declare-fun m!3120413 () Bool)

(assert (=> b!2720317 m!3120413))

(assert (=> b!2720317 m!3120411))

(assert (=> b!2720317 m!3120413))

(declare-fun m!3120415 () Bool)

(assert (=> b!2720317 m!3120415))

(assert (=> b!2719721 d!783734))

(declare-fun d!783736 () Bool)

(declare-fun c!439657 () Bool)

(assert (=> d!783736 (= c!439657 (is-Node!9831 (left!24122 (c!439466 totalInput!328))))))

(declare-fun e!1714477 () Bool)

(assert (=> d!783736 (= (inv!42616 (left!24122 (c!439466 totalInput!328))) e!1714477)))

(declare-fun b!2720319 () Bool)

(assert (=> b!2720319 (= e!1714477 (inv!42625 (left!24122 (c!439466 totalInput!328))))))

(declare-fun b!2720320 () Bool)

(declare-fun e!1714478 () Bool)

(assert (=> b!2720320 (= e!1714477 e!1714478)))

(declare-fun res!1142576 () Bool)

(assert (=> b!2720320 (= res!1142576 (not (is-Leaf!14977 (left!24122 (c!439466 totalInput!328)))))))

(assert (=> b!2720320 (=> res!1142576 e!1714478)))

(declare-fun b!2720321 () Bool)

(assert (=> b!2720321 (= e!1714478 (inv!42626 (left!24122 (c!439466 totalInput!328))))))

(assert (= (and d!783736 c!439657) b!2720319))

(assert (= (and d!783736 (not c!439657)) b!2720320))

(assert (= (and b!2720320 (not res!1142576)) b!2720321))

(declare-fun m!3120417 () Bool)

(assert (=> b!2720319 m!3120417))

(declare-fun m!3120419 () Bool)

(assert (=> b!2720321 m!3120419))

(assert (=> b!2719775 d!783736))

(declare-fun d!783738 () Bool)

(declare-fun c!439658 () Bool)

(assert (=> d!783738 (= c!439658 (is-Node!9831 (right!24452 (c!439466 totalInput!328))))))

(declare-fun e!1714479 () Bool)

(assert (=> d!783738 (= (inv!42616 (right!24452 (c!439466 totalInput!328))) e!1714479)))

(declare-fun b!2720322 () Bool)

(assert (=> b!2720322 (= e!1714479 (inv!42625 (right!24452 (c!439466 totalInput!328))))))

(declare-fun b!2720323 () Bool)

(declare-fun e!1714480 () Bool)

(assert (=> b!2720323 (= e!1714479 e!1714480)))

(declare-fun res!1142577 () Bool)

(assert (=> b!2720323 (= res!1142577 (not (is-Leaf!14977 (right!24452 (c!439466 totalInput!328)))))))

(assert (=> b!2720323 (=> res!1142577 e!1714480)))

(declare-fun b!2720324 () Bool)

(assert (=> b!2720324 (= e!1714480 (inv!42626 (right!24452 (c!439466 totalInput!328))))))

(assert (= (and d!783738 c!439658) b!2720322))

(assert (= (and d!783738 (not c!439658)) b!2720323))

(assert (= (and b!2720323 (not res!1142577)) b!2720324))

(declare-fun m!3120421 () Bool)

(assert (=> b!2720322 m!3120421))

(declare-fun m!3120423 () Bool)

(assert (=> b!2720324 m!3120423))

(assert (=> b!2719775 d!783738))

(declare-fun b!2720333 () Bool)

(declare-fun e!1714485 () List!31478)

(assert (=> b!2720333 (= e!1714485 Nil!31378)))

(declare-fun d!783740 () Bool)

(declare-fun c!439663 () Bool)

(assert (=> d!783740 (= c!439663 (is-Empty!9832 (c!439468 (++!7814 acc!331 (_1!18166 lt!962466)))))))

(assert (=> d!783740 (= (list!11899 (c!439468 (++!7814 acc!331 (_1!18166 lt!962466)))) e!1714485)))

(declare-fun b!2720336 () Bool)

(declare-fun e!1714486 () List!31478)

(assert (=> b!2720336 (= e!1714486 (++!7815 (list!11899 (left!24123 (c!439468 (++!7814 acc!331 (_1!18166 lt!962466))))) (list!11899 (right!24453 (c!439468 (++!7814 acc!331 (_1!18166 lt!962466)))))))))

(declare-fun b!2720334 () Bool)

(assert (=> b!2720334 (= e!1714485 e!1714486)))

(declare-fun c!439664 () Bool)

(assert (=> b!2720334 (= c!439664 (is-Leaf!14978 (c!439468 (++!7814 acc!331 (_1!18166 lt!962466)))))))

(declare-fun b!2720335 () Bool)

(assert (=> b!2720335 (= e!1714486 (list!11903 (xs!12907 (c!439468 (++!7814 acc!331 (_1!18166 lt!962466))))))))

(assert (= (and d!783740 c!439663) b!2720333))

(assert (= (and d!783740 (not c!439663)) b!2720334))

(assert (= (and b!2720334 c!439664) b!2720335))

(assert (= (and b!2720334 (not c!439664)) b!2720336))

(declare-fun m!3120425 () Bool)

(assert (=> b!2720336 m!3120425))

(declare-fun m!3120427 () Bool)

(assert (=> b!2720336 m!3120427))

(assert (=> b!2720336 m!3120425))

(assert (=> b!2720336 m!3120427))

(declare-fun m!3120429 () Bool)

(assert (=> b!2720336 m!3120429))

(declare-fun m!3120431 () Bool)

(assert (=> b!2720335 m!3120431))

(assert (=> d!783470 d!783740))

(declare-fun d!783742 () Bool)

(declare-fun lt!962796 () Int)

(assert (=> d!783742 (>= lt!962796 0)))

(declare-fun e!1714487 () Int)

(assert (=> d!783742 (= lt!962796 e!1714487)))

(declare-fun c!439665 () Bool)

(assert (=> d!783742 (= c!439665 (is-Nil!31378 lt!962578))))

(assert (=> d!783742 (= (size!24206 lt!962578) lt!962796)))

(declare-fun b!2720337 () Bool)

(assert (=> b!2720337 (= e!1714487 0)))

(declare-fun b!2720338 () Bool)

(assert (=> b!2720338 (= e!1714487 (+ 1 (size!24206 (t!226342 lt!962578))))))

(assert (= (and d!783742 c!439665) b!2720337))

(assert (= (and d!783742 (not c!439665)) b!2720338))

(declare-fun m!3120433 () Bool)

(assert (=> b!2720338 m!3120433))

(assert (=> b!2719685 d!783742))

(assert (=> b!2719685 d!783698))

(assert (=> b!2719685 d!783664))

(declare-fun d!783744 () Bool)

(assert (=> d!783744 true))

(declare-fun order!17147 () Int)

(declare-fun lambda!100600 () Int)

(declare-fun dynLambda!13516 (Int Int) Int)

(assert (=> d!783744 (< (dynLambda!13515 order!17145 (toValue!6780 (transformation!4802 (h!36797 rules!1182)))) (dynLambda!13516 order!17147 lambda!100600))))

(declare-fun Forall2!810 (Int) Bool)

(assert (=> d!783744 (= (equivClasses!1879 (toChars!6639 (transformation!4802 (h!36797 rules!1182))) (toValue!6780 (transformation!4802 (h!36797 rules!1182)))) (Forall2!810 lambda!100600))))

(declare-fun bs!488388 () Bool)

(assert (= bs!488388 d!783744))

(declare-fun m!3120435 () Bool)

(assert (=> bs!488388 m!3120435))

(assert (=> b!2719726 d!783744))

(declare-fun b!2720345 () Bool)

(declare-fun e!1714491 () List!31476)

(assert (=> b!2720345 (= e!1714491 (list!11902 (xs!12906 (c!439466 totalInput!328))))))

(declare-fun b!2720346 () Bool)

(assert (=> b!2720346 (= e!1714491 (++!7816 (list!11898 (left!24122 (c!439466 totalInput!328))) (list!11898 (right!24452 (c!439466 totalInput!328)))))))

(declare-fun b!2720343 () Bool)

(declare-fun e!1714490 () List!31476)

(assert (=> b!2720343 (= e!1714490 Nil!31376)))

(declare-fun b!2720344 () Bool)

(assert (=> b!2720344 (= e!1714490 e!1714491)))

(declare-fun c!439667 () Bool)

(assert (=> b!2720344 (= c!439667 (is-Leaf!14977 (c!439466 totalInput!328)))))

(declare-fun d!783746 () Bool)

(declare-fun c!439666 () Bool)

(assert (=> d!783746 (= c!439666 (is-Empty!9831 (c!439466 totalInput!328)))))

(assert (=> d!783746 (= (list!11898 (c!439466 totalInput!328)) e!1714490)))

(assert (= (and d!783746 c!439666) b!2720343))

(assert (= (and d!783746 (not c!439666)) b!2720344))

(assert (= (and b!2720344 c!439667) b!2720345))

(assert (= (and b!2720344 (not c!439667)) b!2720346))

(declare-fun m!3120437 () Bool)

(assert (=> b!2720345 m!3120437))

(declare-fun m!3120439 () Bool)

(assert (=> b!2720346 m!3120439))

(declare-fun m!3120441 () Bool)

(assert (=> b!2720346 m!3120441))

(assert (=> b!2720346 m!3120439))

(assert (=> b!2720346 m!3120441))

(declare-fun m!3120443 () Bool)

(assert (=> b!2720346 m!3120443))

(assert (=> d!783560 d!783746))

(declare-fun b!2720347 () Bool)

(declare-fun e!1714492 () List!31478)

(assert (=> b!2720347 (= e!1714492 Nil!31378)))

(declare-fun d!783748 () Bool)

(declare-fun c!439668 () Bool)

(assert (=> d!783748 (= c!439668 (is-Empty!9832 (c!439468 (_1!18166 lt!962470))))))

(assert (=> d!783748 (= (list!11899 (c!439468 (_1!18166 lt!962470))) e!1714492)))

(declare-fun b!2720350 () Bool)

(declare-fun e!1714493 () List!31478)

(assert (=> b!2720350 (= e!1714493 (++!7815 (list!11899 (left!24123 (c!439468 (_1!18166 lt!962470)))) (list!11899 (right!24453 (c!439468 (_1!18166 lt!962470))))))))

(declare-fun b!2720348 () Bool)

(assert (=> b!2720348 (= e!1714492 e!1714493)))

(declare-fun c!439669 () Bool)

(assert (=> b!2720348 (= c!439669 (is-Leaf!14978 (c!439468 (_1!18166 lt!962470))))))

(declare-fun b!2720349 () Bool)

(assert (=> b!2720349 (= e!1714493 (list!11903 (xs!12907 (c!439468 (_1!18166 lt!962470)))))))

(assert (= (and d!783748 c!439668) b!2720347))

(assert (= (and d!783748 (not c!439668)) b!2720348))

(assert (= (and b!2720348 c!439669) b!2720349))

(assert (= (and b!2720348 (not c!439669)) b!2720350))

(declare-fun m!3120445 () Bool)

(assert (=> b!2720350 m!3120445))

(declare-fun m!3120447 () Bool)

(assert (=> b!2720350 m!3120447))

(assert (=> b!2720350 m!3120445))

(assert (=> b!2720350 m!3120447))

(declare-fun m!3120449 () Bool)

(assert (=> b!2720350 m!3120449))

(declare-fun m!3120451 () Bool)

(assert (=> b!2720349 m!3120451))

(assert (=> d!783468 d!783748))

(declare-fun d!783750 () Bool)

(assert (=> d!783750 (= (list!11895 lt!962581) (list!11899 (c!439468 lt!962581)))))

(declare-fun bs!488389 () Bool)

(assert (= bs!488389 d!783750))

(declare-fun m!3120453 () Bool)

(assert (=> bs!488389 m!3120453))

(assert (=> b!2719689 d!783750))

(declare-fun d!783752 () Bool)

(declare-fun e!1714501 () Bool)

(assert (=> d!783752 e!1714501))

(declare-fun res!1142591 () Bool)

(assert (=> d!783752 (=> (not res!1142591) (not e!1714501))))

(declare-fun lt!962799 () List!31478)

(assert (=> d!783752 (= res!1142591 (is-Cons!31378 lt!962799))))

(declare-fun e!1714502 () List!31478)

(assert (=> d!783752 (= lt!962799 e!1714502)))

(declare-fun c!439675 () Bool)

(assert (=> d!783752 (= c!439675 (is-Nil!31378 (list!11895 acc!331)))))

(assert (=> d!783752 (= ($colon+!180 (list!11895 acc!331) (_1!18167 (v!33039 lt!962467))) lt!962799)))

(declare-fun b!2720367 () Bool)

(declare-fun res!1142589 () Bool)

(assert (=> b!2720367 (=> (not res!1142589) (not e!1714501))))

(declare-fun e!1714500 () Bool)

(assert (=> b!2720367 (= res!1142589 e!1714500)))

(declare-fun c!439674 () Bool)

(declare-fun isize!53 (List!31478) (_ BitVec 32))

(assert (=> b!2720367 (= c!439674 (bvslt (isize!53 (list!11895 acc!331)) #b01111111111111111111111111111111))))

(declare-fun bm!175556 () Bool)

(declare-fun call!175562 () (_ BitVec 32))

(assert (=> bm!175556 (= call!175562 (isize!53 lt!962799))))

(declare-fun b!2720368 () Bool)

(declare-fun res!1142588 () Bool)

(assert (=> b!2720368 (=> (not res!1142588) (not e!1714501))))

(assert (=> b!2720368 (= res!1142588 (= (size!24206 lt!962799) (+ (size!24206 (list!11895 acc!331)) 1)))))

(declare-fun bm!175557 () Bool)

(declare-fun call!175561 () (_ BitVec 32))

(assert (=> bm!175557 (= call!175561 (isize!53 (list!11895 acc!331)))))

(declare-fun b!2720369 () Bool)

(assert (=> b!2720369 (= e!1714500 (= call!175562 (bvadd call!175561 #b00000000000000000000000000000001)))))

(declare-fun b!2720370 () Bool)

(assert (=> b!2720370 (= e!1714500 (= call!175562 call!175561))))

(declare-fun b!2720371 () Bool)

(declare-fun res!1142590 () Bool)

(assert (=> b!2720371 (=> (not res!1142590) (not e!1714501))))

(assert (=> b!2720371 (= res!1142590 (= (content!4445 lt!962799) (set.union (content!4445 (list!11895 acc!331)) (set.insert (_1!18167 (v!33039 lt!962467)) (as set.empty (Set Token!9066))))))))

(declare-fun b!2720372 () Bool)

(assert (=> b!2720372 (= e!1714502 (Cons!31378 (h!36798 (list!11895 acc!331)) ($colon+!180 (t!226342 (list!11895 acc!331)) (_1!18167 (v!33039 lt!962467)))))))

(declare-fun b!2720373 () Bool)

(assert (=> b!2720373 (= e!1714501 (= lt!962799 (++!7815 (list!11895 acc!331) (Cons!31378 (_1!18167 (v!33039 lt!962467)) Nil!31378))))))

(declare-fun b!2720374 () Bool)

(assert (=> b!2720374 (= e!1714502 (Cons!31378 (_1!18167 (v!33039 lt!962467)) (list!11895 acc!331)))))

(assert (= (and d!783752 c!439675) b!2720374))

(assert (= (and d!783752 (not c!439675)) b!2720372))

(assert (= (and d!783752 res!1142591) b!2720368))

(assert (= (and b!2720368 res!1142588) b!2720367))

(assert (= (and b!2720367 c!439674) b!2720369))

(assert (= (and b!2720367 (not c!439674)) b!2720370))

(assert (= (or b!2720369 b!2720370) bm!175556))

(assert (= (or b!2720369 b!2720370) bm!175557))

(assert (= (and b!2720367 res!1142589) b!2720371))

(assert (= (and b!2720371 res!1142590) b!2720373))

(assert (=> b!2720367 m!3119245))

(declare-fun m!3120455 () Bool)

(assert (=> b!2720367 m!3120455))

(declare-fun m!3120457 () Bool)

(assert (=> bm!175556 m!3120457))

(assert (=> b!2720373 m!3119245))

(declare-fun m!3120459 () Bool)

(assert (=> b!2720373 m!3120459))

(declare-fun m!3120461 () Bool)

(assert (=> b!2720371 m!3120461))

(assert (=> b!2720371 m!3119245))

(declare-fun m!3120463 () Bool)

(assert (=> b!2720371 m!3120463))

(declare-fun m!3120465 () Bool)

(assert (=> b!2720371 m!3120465))

(declare-fun m!3120467 () Bool)

(assert (=> b!2720372 m!3120467))

(declare-fun m!3120469 () Bool)

(assert (=> b!2720368 m!3120469))

(assert (=> b!2720368 m!3119245))

(declare-fun m!3120471 () Bool)

(assert (=> b!2720368 m!3120471))

(assert (=> bm!175557 m!3119245))

(assert (=> bm!175557 m!3120455))

(assert (=> b!2719689 d!783752))

(assert (=> b!2719689 d!783552))

(declare-fun d!783754 () Bool)

(declare-fun lt!962802 () Int)

(assert (=> d!783754 (= lt!962802 (size!24206 (list!11895 (_1!18166 lt!962593))))))

(declare-fun size!24212 (Conc!9832) Int)

(assert (=> d!783754 (= lt!962802 (size!24212 (c!439468 (_1!18166 lt!962593))))))

(assert (=> d!783754 (= (size!24204 (_1!18166 lt!962593)) lt!962802)))

(declare-fun bs!488390 () Bool)

(assert (= bs!488390 d!783754))

(assert (=> bs!488390 m!3119757))

(assert (=> bs!488390 m!3119757))

(declare-fun m!3120473 () Bool)

(assert (=> bs!488390 m!3120473))

(declare-fun m!3120475 () Bool)

(assert (=> bs!488390 m!3120475))

(assert (=> d!783556 d!783754))

(declare-fun b!2720375 () Bool)

(declare-fun res!1142594 () Bool)

(declare-fun e!1714506 () Bool)

(assert (=> b!2720375 (=> (not res!1142594) (not e!1714506))))

(declare-fun e!1714503 () Bool)

(assert (=> b!2720375 (= res!1142594 e!1714503)))

(declare-fun res!1142597 () Bool)

(assert (=> b!2720375 (=> res!1142597 e!1714503)))

(declare-fun lt!962809 () Option!6198)

(assert (=> b!2720375 (= res!1142597 (not (isDefined!4899 lt!962809)))))

(declare-fun b!2720376 () Bool)

(declare-fun e!1714508 () Option!6198)

(declare-fun call!175563 () Option!6198)

(assert (=> b!2720376 (= e!1714508 call!175563)))

(declare-fun d!783756 () Bool)

(assert (=> d!783756 e!1714506))

(declare-fun res!1142596 () Bool)

(assert (=> d!783756 (=> (not res!1142596) (not e!1714506))))

(assert (=> d!783756 (= res!1142596 (= (isDefined!4899 lt!962809) (isDefined!4900 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 treated!9)))))))

(assert (=> d!783756 (= lt!962809 e!1714508)))

(declare-fun c!439676 () Bool)

(assert (=> d!783756 (= c!439676 (and (is-Cons!31377 rules!1182) (is-Nil!31377 (t!226341 rules!1182))))))

(declare-fun lt!962807 () Unit!45389)

(declare-fun lt!962803 () Unit!45389)

(assert (=> d!783756 (= lt!962807 lt!962803)))

(declare-fun lt!962804 () List!31476)

(declare-fun lt!962805 () List!31476)

(assert (=> d!783756 (isPrefix!2486 lt!962804 lt!962805)))

(assert (=> d!783756 (= lt!962803 (lemmaIsPrefixRefl!1612 lt!962804 lt!962805))))

(assert (=> d!783756 (= lt!962805 (list!11894 treated!9))))

(assert (=> d!783756 (= lt!962804 (list!11894 treated!9))))

(assert (=> d!783756 (rulesValidInductive!1670 thiss!11556 rules!1182)))

(assert (=> d!783756 (= (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 treated!9) lt!962809)))

(declare-fun b!2720377 () Bool)

(declare-fun e!1714505 () Bool)

(assert (=> b!2720377 (= e!1714505 (= (list!11894 (_2!18167 (get!9788 lt!962809))) (_2!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 treated!9))))))))

(declare-fun bm!175558 () Bool)

(assert (=> bm!175558 (= call!175563 (maxPrefixOneRuleZipperSequence!482 thiss!11556 (h!36797 rules!1182) treated!9))))

(declare-fun b!2720378 () Bool)

(declare-fun e!1714504 () Bool)

(declare-fun e!1714507 () Bool)

(assert (=> b!2720378 (= e!1714504 e!1714507)))

(declare-fun res!1142593 () Bool)

(assert (=> b!2720378 (=> (not res!1142593) (not e!1714507))))

(assert (=> b!2720378 (= res!1142593 (= (_1!18167 (get!9788 lt!962809)) (_1!18170 (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 treated!9))))))))

(declare-fun b!2720379 () Bool)

(assert (=> b!2720379 (= e!1714507 (= (list!11894 (_2!18167 (get!9788 lt!962809))) (_2!18170 (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 treated!9))))))))

(declare-fun b!2720380 () Bool)

(declare-fun lt!962808 () Option!6198)

(declare-fun lt!962806 () Option!6198)

(assert (=> b!2720380 (= e!1714508 (ite (and (is-None!6197 lt!962808) (is-None!6197 lt!962806)) None!6197 (ite (is-None!6197 lt!962806) lt!962808 (ite (is-None!6197 lt!962808) lt!962806 (ite (>= (size!24201 (_1!18167 (v!33039 lt!962808))) (size!24201 (_1!18167 (v!33039 lt!962806)))) lt!962808 lt!962806)))))))

(assert (=> b!2720380 (= lt!962808 call!175563)))

(assert (=> b!2720380 (= lt!962806 (maxPrefixZipperSequence!1046 thiss!11556 (t!226341 rules!1182) treated!9))))

(declare-fun b!2720381 () Bool)

(assert (=> b!2720381 (= e!1714506 e!1714504)))

(declare-fun res!1142595 () Bool)

(assert (=> b!2720381 (=> res!1142595 e!1714504)))

(assert (=> b!2720381 (= res!1142595 (not (isDefined!4899 lt!962809)))))

(declare-fun b!2720382 () Bool)

(assert (=> b!2720382 (= e!1714503 e!1714505)))

(declare-fun res!1142592 () Bool)

(assert (=> b!2720382 (=> (not res!1142592) (not e!1714505))))

(assert (=> b!2720382 (= res!1142592 (= (_1!18167 (get!9788 lt!962809)) (_1!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 treated!9))))))))

(assert (= (and d!783756 c!439676) b!2720376))

(assert (= (and d!783756 (not c!439676)) b!2720380))

(assert (= (or b!2720376 b!2720380) bm!175558))

(assert (= (and d!783756 res!1142596) b!2720375))

(assert (= (and b!2720375 (not res!1142597)) b!2720382))

(assert (= (and b!2720382 res!1142592) b!2720377))

(assert (= (and b!2720375 res!1142594) b!2720381))

(assert (= (and b!2720381 (not res!1142595)) b!2720378))

(assert (= (and b!2720378 res!1142593) b!2720379))

(declare-fun m!3120477 () Bool)

(assert (=> b!2720380 m!3120477))

(assert (=> d!783756 m!3119445))

(declare-fun m!3120479 () Bool)

(assert (=> d!783756 m!3120479))

(assert (=> d!783756 m!3119329))

(declare-fun m!3120481 () Bool)

(assert (=> d!783756 m!3120481))

(declare-fun m!3120483 () Bool)

(assert (=> d!783756 m!3120483))

(assert (=> d!783756 m!3119329))

(declare-fun m!3120485 () Bool)

(assert (=> d!783756 m!3120485))

(assert (=> d!783756 m!3120485))

(declare-fun m!3120487 () Bool)

(assert (=> d!783756 m!3120487))

(assert (=> b!2720381 m!3120479))

(assert (=> b!2720377 m!3120485))

(declare-fun m!3120489 () Bool)

(assert (=> b!2720377 m!3120489))

(declare-fun m!3120491 () Bool)

(assert (=> b!2720377 m!3120491))

(assert (=> b!2720377 m!3119329))

(declare-fun m!3120493 () Bool)

(assert (=> b!2720377 m!3120493))

(assert (=> b!2720377 m!3119329))

(assert (=> b!2720377 m!3120485))

(assert (=> b!2720379 m!3120491))

(assert (=> b!2720379 m!3119329))

(assert (=> b!2720379 m!3120493))

(assert (=> b!2720379 m!3119329))

(assert (=> b!2720379 m!3120269))

(assert (=> b!2720379 m!3120269))

(declare-fun m!3120495 () Bool)

(assert (=> b!2720379 m!3120495))

(declare-fun m!3120497 () Bool)

(assert (=> bm!175558 m!3120497))

(assert (=> b!2720382 m!3120491))

(assert (=> b!2720382 m!3119329))

(assert (=> b!2720382 m!3119329))

(assert (=> b!2720382 m!3120485))

(assert (=> b!2720382 m!3120485))

(assert (=> b!2720382 m!3120489))

(assert (=> b!2720378 m!3120491))

(assert (=> b!2720378 m!3119329))

(assert (=> b!2720378 m!3119329))

(assert (=> b!2720378 m!3120269))

(assert (=> b!2720378 m!3120269))

(assert (=> b!2720378 m!3120495))

(assert (=> b!2720375 m!3120479))

(assert (=> d!783556 d!783756))

(declare-fun d!783758 () Bool)

(declare-fun res!1142604 () Bool)

(declare-fun e!1714511 () Bool)

(assert (=> d!783758 (=> (not res!1142604) (not e!1714511))))

(assert (=> d!783758 (= res!1142604 (= (csize!19894 (c!439468 acc!331)) (+ (size!24212 (left!24123 (c!439468 acc!331))) (size!24212 (right!24453 (c!439468 acc!331))))))))

(assert (=> d!783758 (= (inv!42627 (c!439468 acc!331)) e!1714511)))

(declare-fun b!2720389 () Bool)

(declare-fun res!1142605 () Bool)

(assert (=> b!2720389 (=> (not res!1142605) (not e!1714511))))

(assert (=> b!2720389 (= res!1142605 (and (not (= (left!24123 (c!439468 acc!331)) Empty!9832)) (not (= (right!24453 (c!439468 acc!331)) Empty!9832))))))

(declare-fun b!2720390 () Bool)

(declare-fun res!1142606 () Bool)

(assert (=> b!2720390 (=> (not res!1142606) (not e!1714511))))

(assert (=> b!2720390 (= res!1142606 (= (cheight!10043 (c!439468 acc!331)) (+ (max!0 (height!1457 (left!24123 (c!439468 acc!331))) (height!1457 (right!24453 (c!439468 acc!331)))) 1)))))

(declare-fun b!2720391 () Bool)

(assert (=> b!2720391 (= e!1714511 (<= 0 (cheight!10043 (c!439468 acc!331))))))

(assert (= (and d!783758 res!1142604) b!2720389))

(assert (= (and b!2720389 res!1142605) b!2720390))

(assert (= (and b!2720390 res!1142606) b!2720391))

(declare-fun m!3120499 () Bool)

(assert (=> d!783758 m!3120499))

(declare-fun m!3120501 () Bool)

(assert (=> d!783758 m!3120501))

(assert (=> b!2720390 m!3120375))

(declare-fun m!3120503 () Bool)

(assert (=> b!2720390 m!3120503))

(assert (=> b!2720390 m!3120375))

(assert (=> b!2720390 m!3120503))

(declare-fun m!3120505 () Bool)

(assert (=> b!2720390 m!3120505))

(assert (=> b!2719743 d!783758))

(declare-fun d!783760 () Bool)

(assert (=> d!783760 (= (list!11894 (_2!18166 lt!962586)) (list!11898 (c!439466 (_2!18166 lt!962586))))))

(declare-fun bs!488391 () Bool)

(assert (= bs!488391 d!783760))

(declare-fun m!3120507 () Bool)

(assert (=> bs!488391 m!3120507))

(assert (=> b!2719701 d!783760))

(declare-fun b!2720392 () Bool)

(declare-fun e!1714514 () Bool)

(declare-fun e!1714512 () Bool)

(assert (=> b!2720392 (= e!1714514 e!1714512)))

(declare-fun res!1142607 () Bool)

(declare-fun lt!962811 () tuple2!31078)

(assert (=> b!2720392 (= res!1142607 (< (size!24205 (_2!18171 lt!962811)) (size!24205 (list!11894 (_2!18167 (v!33039 lt!962467))))))))

(assert (=> b!2720392 (=> (not res!1142607) (not e!1714512))))

(declare-fun b!2720393 () Bool)

(declare-fun e!1714513 () tuple2!31078)

(assert (=> b!2720393 (= e!1714513 (tuple2!31079 Nil!31378 (list!11894 (_2!18167 (v!33039 lt!962467)))))))

(declare-fun b!2720394 () Bool)

(assert (=> b!2720394 (= e!1714512 (not (isEmpty!17903 (_1!18171 lt!962811))))))

(declare-fun b!2720395 () Bool)

(assert (=> b!2720395 (= e!1714514 (= (_2!18171 lt!962811) (list!11894 (_2!18167 (v!33039 lt!962467)))))))

(declare-fun d!783762 () Bool)

(assert (=> d!783762 e!1714514))

(declare-fun c!439678 () Bool)

(assert (=> d!783762 (= c!439678 (> (size!24206 (_1!18171 lt!962811)) 0))))

(assert (=> d!783762 (= lt!962811 e!1714513)))

(declare-fun c!439677 () Bool)

(declare-fun lt!962810 () Option!6200)

(assert (=> d!783762 (= c!439677 (is-Some!6199 lt!962810))))

(assert (=> d!783762 (= lt!962810 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467)))))))

(assert (=> d!783762 (= (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467)))) lt!962811)))

(declare-fun b!2720396 () Bool)

(declare-fun lt!962812 () tuple2!31078)

(assert (=> b!2720396 (= e!1714513 (tuple2!31079 (Cons!31378 (_1!18170 (v!33044 lt!962810)) (_1!18171 lt!962812)) (_2!18171 lt!962812)))))

(assert (=> b!2720396 (= lt!962812 (lexList!1227 thiss!11556 rules!1182 (_2!18170 (v!33044 lt!962810))))))

(assert (= (and d!783762 c!439677) b!2720396))

(assert (= (and d!783762 (not c!439677)) b!2720393))

(assert (= (and d!783762 c!439678) b!2720392))

(assert (= (and d!783762 (not c!439678)) b!2720395))

(assert (= (and b!2720392 res!1142607) b!2720394))

(declare-fun m!3120509 () Bool)

(assert (=> b!2720392 m!3120509))

(assert (=> b!2720392 m!3119319))

(declare-fun m!3120511 () Bool)

(assert (=> b!2720392 m!3120511))

(declare-fun m!3120513 () Bool)

(assert (=> b!2720394 m!3120513))

(declare-fun m!3120515 () Bool)

(assert (=> d!783762 m!3120515))

(assert (=> d!783762 m!3119319))

(declare-fun m!3120517 () Bool)

(assert (=> d!783762 m!3120517))

(declare-fun m!3120519 () Bool)

(assert (=> b!2720396 m!3120519))

(assert (=> b!2719701 d!783762))

(assert (=> b!2719701 d!783526))

(declare-fun d!783764 () Bool)

(declare-fun c!439679 () Bool)

(assert (=> d!783764 (= c!439679 (is-Nil!31378 lt!962583))))

(declare-fun e!1714515 () (Set Token!9066))

(assert (=> d!783764 (= (content!4445 lt!962583) e!1714515)))

(declare-fun b!2720397 () Bool)

(assert (=> b!2720397 (= e!1714515 (as set.empty (Set Token!9066)))))

(declare-fun b!2720398 () Bool)

(assert (=> b!2720398 (= e!1714515 (set.union (set.insert (h!36798 lt!962583) (as set.empty (Set Token!9066))) (content!4445 (t!226342 lt!962583))))))

(assert (= (and d!783764 c!439679) b!2720397))

(assert (= (and d!783764 (not c!439679)) b!2720398))

(declare-fun m!3120521 () Bool)

(assert (=> b!2720398 m!3120521))

(declare-fun m!3120523 () Bool)

(assert (=> b!2720398 m!3120523))

(assert (=> d!783516 d!783764))

(assert (=> d!783516 d!783670))

(declare-fun d!783766 () Bool)

(declare-fun c!439680 () Bool)

(assert (=> d!783766 (= c!439680 (is-Nil!31378 (++!7815 lt!962468 lt!962460)))))

(declare-fun e!1714516 () (Set Token!9066))

(assert (=> d!783766 (= (content!4445 (++!7815 lt!962468 lt!962460)) e!1714516)))

(declare-fun b!2720399 () Bool)

(assert (=> b!2720399 (= e!1714516 (as set.empty (Set Token!9066)))))

(declare-fun b!2720400 () Bool)

(assert (=> b!2720400 (= e!1714516 (set.union (set.insert (h!36798 (++!7815 lt!962468 lt!962460)) (as set.empty (Set Token!9066))) (content!4445 (t!226342 (++!7815 lt!962468 lt!962460)))))))

(assert (= (and d!783766 c!439680) b!2720399))

(assert (= (and d!783766 (not c!439680)) b!2720400))

(declare-fun m!3120525 () Bool)

(assert (=> b!2720400 m!3120525))

(declare-fun m!3120527 () Bool)

(assert (=> b!2720400 m!3120527))

(assert (=> d!783516 d!783766))

(declare-fun d!783768 () Bool)

(assert (=> d!783768 (= (inv!42629 (xs!12906 (c!439466 treated!9))) (<= (size!24205 (innerList!9891 (xs!12906 (c!439466 treated!9)))) 2147483647))))

(declare-fun bs!488392 () Bool)

(assert (= bs!488392 d!783768))

(declare-fun m!3120529 () Bool)

(assert (=> bs!488392 m!3120529))

(assert (=> b!2719804 d!783768))

(declare-fun d!783770 () Bool)

(declare-fun c!439681 () Bool)

(assert (=> d!783770 (= c!439681 (is-Nil!31376 lt!962587))))

(declare-fun e!1714517 () (Set C!16066))

(assert (=> d!783770 (= (content!4444 lt!962587) e!1714517)))

(declare-fun b!2720401 () Bool)

(assert (=> b!2720401 (= e!1714517 (as set.empty (Set C!16066)))))

(declare-fun b!2720402 () Bool)

(assert (=> b!2720402 (= e!1714517 (set.union (set.insert (h!36796 lt!962587) (as set.empty (Set C!16066))) (content!4444 (t!226340 lt!962587))))))

(assert (= (and d!783770 c!439681) b!2720401))

(assert (= (and d!783770 (not c!439681)) b!2720402))

(declare-fun m!3120531 () Bool)

(assert (=> b!2720402 m!3120531))

(declare-fun m!3120533 () Bool)

(assert (=> b!2720402 m!3120533))

(assert (=> d!783520 d!783770))

(declare-fun d!783772 () Bool)

(declare-fun c!439682 () Bool)

(assert (=> d!783772 (= c!439682 (is-Nil!31376 lt!962464))))

(declare-fun e!1714518 () (Set C!16066))

(assert (=> d!783772 (= (content!4444 lt!962464) e!1714518)))

(declare-fun b!2720403 () Bool)

(assert (=> b!2720403 (= e!1714518 (as set.empty (Set C!16066)))))

(declare-fun b!2720404 () Bool)

(assert (=> b!2720404 (= e!1714518 (set.union (set.insert (h!36796 lt!962464) (as set.empty (Set C!16066))) (content!4444 (t!226340 lt!962464))))))

(assert (= (and d!783772 c!439682) b!2720403))

(assert (= (and d!783772 (not c!439682)) b!2720404))

(declare-fun m!3120535 () Bool)

(assert (=> b!2720404 m!3120535))

(declare-fun m!3120537 () Bool)

(assert (=> b!2720404 m!3120537))

(assert (=> d!783520 d!783772))

(declare-fun d!783774 () Bool)

(declare-fun c!439683 () Bool)

(assert (=> d!783774 (= c!439683 (is-Nil!31376 lt!962459))))

(declare-fun e!1714519 () (Set C!16066))

(assert (=> d!783774 (= (content!4444 lt!962459) e!1714519)))

(declare-fun b!2720405 () Bool)

(assert (=> b!2720405 (= e!1714519 (as set.empty (Set C!16066)))))

(declare-fun b!2720406 () Bool)

(assert (=> b!2720406 (= e!1714519 (set.union (set.insert (h!36796 lt!962459) (as set.empty (Set C!16066))) (content!4444 (t!226340 lt!962459))))))

(assert (= (and d!783774 c!439683) b!2720405))

(assert (= (and d!783774 (not c!439683)) b!2720406))

(declare-fun m!3120539 () Bool)

(assert (=> b!2720406 m!3120539))

(declare-fun m!3120541 () Bool)

(assert (=> b!2720406 m!3120541))

(assert (=> d!783520 d!783774))

(assert (=> b!2719482 d!783558))

(declare-fun b!2720407 () Bool)

(declare-fun e!1714520 () List!31478)

(assert (=> b!2720407 (= e!1714520 Nil!31378)))

(declare-fun d!783776 () Bool)

(declare-fun c!439684 () Bool)

(assert (=> d!783776 (= c!439684 (is-Empty!9832 (c!439468 (_1!18166 lt!962455))))))

(assert (=> d!783776 (= (list!11899 (c!439468 (_1!18166 lt!962455))) e!1714520)))

(declare-fun b!2720410 () Bool)

(declare-fun e!1714521 () List!31478)

(assert (=> b!2720410 (= e!1714521 (++!7815 (list!11899 (left!24123 (c!439468 (_1!18166 lt!962455)))) (list!11899 (right!24453 (c!439468 (_1!18166 lt!962455))))))))

(declare-fun b!2720408 () Bool)

(assert (=> b!2720408 (= e!1714520 e!1714521)))

(declare-fun c!439685 () Bool)

(assert (=> b!2720408 (= c!439685 (is-Leaf!14978 (c!439468 (_1!18166 lt!962455))))))

(declare-fun b!2720409 () Bool)

(assert (=> b!2720409 (= e!1714521 (list!11903 (xs!12907 (c!439468 (_1!18166 lt!962455)))))))

(assert (= (and d!783776 c!439684) b!2720407))

(assert (= (and d!783776 (not c!439684)) b!2720408))

(assert (= (and b!2720408 c!439685) b!2720409))

(assert (= (and b!2720408 (not c!439685)) b!2720410))

(declare-fun m!3120543 () Bool)

(assert (=> b!2720410 m!3120543))

(declare-fun m!3120545 () Bool)

(assert (=> b!2720410 m!3120545))

(assert (=> b!2720410 m!3120543))

(assert (=> b!2720410 m!3120545))

(declare-fun m!3120547 () Bool)

(assert (=> b!2720410 m!3120547))

(declare-fun m!3120549 () Bool)

(assert (=> b!2720409 m!3120549))

(assert (=> d!783554 d!783776))

(declare-fun d!783778 () Bool)

(assert (=> d!783778 (= (list!11894 (_2!18166 lt!962593)) (list!11898 (c!439466 (_2!18166 lt!962593))))))

(declare-fun bs!488393 () Bool)

(assert (= bs!488393 d!783778))

(declare-fun m!3120551 () Bool)

(assert (=> bs!488393 m!3120551))

(assert (=> b!2719733 d!783778))

(assert (=> b!2719733 d!783704))

(assert (=> b!2719733 d!783566))

(declare-fun d!783780 () Bool)

(declare-fun lt!962815 () Bool)

(assert (=> d!783780 (= lt!962815 (isEmpty!17903 (list!11895 (_1!18166 lt!962586))))))

(assert (=> d!783780 (= lt!962815 (isEmpty!17912 (c!439468 (_1!18166 lt!962586))))))

(assert (=> d!783780 (= (isEmpty!17907 (_1!18166 lt!962586)) lt!962815)))

(declare-fun bs!488394 () Bool)

(assert (= bs!488394 d!783780))

(assert (=> bs!488394 m!3119673))

(assert (=> bs!488394 m!3119673))

(declare-fun m!3120553 () Bool)

(assert (=> bs!488394 m!3120553))

(declare-fun m!3120555 () Bool)

(assert (=> bs!488394 m!3120555))

(assert (=> b!2719700 d!783780))

(declare-fun d!783782 () Bool)

(assert (=> d!783782 (= (list!11895 lt!962597) (list!11899 (c!439468 lt!962597)))))

(declare-fun bs!488395 () Bool)

(assert (= bs!488395 d!783782))

(declare-fun m!3120557 () Bool)

(assert (=> bs!488395 m!3120557))

(assert (=> b!2719752 d!783782))

(assert (=> b!2719752 d!783514))

(declare-fun d!783784 () Bool)

(declare-fun res!1142612 () Bool)

(declare-fun e!1714524 () Bool)

(assert (=> d!783784 (=> (not res!1142612) (not e!1714524))))

(assert (=> d!783784 (= res!1142612 (<= (size!24205 (list!11902 (xs!12906 (c!439466 totalInput!328)))) 512))))

(assert (=> d!783784 (= (inv!42626 (c!439466 totalInput!328)) e!1714524)))

(declare-fun b!2720415 () Bool)

(declare-fun res!1142613 () Bool)

(assert (=> b!2720415 (=> (not res!1142613) (not e!1714524))))

(assert (=> b!2720415 (= res!1142613 (= (csize!19893 (c!439466 totalInput!328)) (size!24205 (list!11902 (xs!12906 (c!439466 totalInput!328))))))))

(declare-fun b!2720416 () Bool)

(assert (=> b!2720416 (= e!1714524 (and (> (csize!19893 (c!439466 totalInput!328)) 0) (<= (csize!19893 (c!439466 totalInput!328)) 512)))))

(assert (= (and d!783784 res!1142612) b!2720415))

(assert (= (and b!2720415 res!1142613) b!2720416))

(assert (=> d!783784 m!3120437))

(assert (=> d!783784 m!3120437))

(declare-fun m!3120559 () Bool)

(assert (=> d!783784 m!3120559))

(assert (=> b!2720415 m!3120437))

(assert (=> b!2720415 m!3120437))

(assert (=> b!2720415 m!3120559))

(assert (=> b!2719557 d!783784))

(declare-fun d!783786 () Bool)

(declare-fun lt!962816 () Bool)

(assert (=> d!783786 (= lt!962816 (isEmpty!17903 (list!11895 (_1!18166 lt!962559))))))

(assert (=> d!783786 (= lt!962816 (isEmpty!17912 (c!439468 (_1!18166 lt!962559))))))

(assert (=> d!783786 (= (isEmpty!17907 (_1!18166 lt!962559)) lt!962816)))

(declare-fun bs!488396 () Bool)

(assert (= bs!488396 d!783786))

(assert (=> bs!488396 m!3119531))

(assert (=> bs!488396 m!3119531))

(declare-fun m!3120561 () Bool)

(assert (=> bs!488396 m!3120561))

(declare-fun m!3120563 () Bool)

(assert (=> bs!488396 m!3120563))

(assert (=> b!2719637 d!783786))

(declare-fun b!2720418 () Bool)

(declare-fun e!1714525 () List!31478)

(assert (=> b!2720418 (= e!1714525 (Cons!31378 (h!36798 (t!226342 lt!962468)) (++!7815 (t!226342 (t!226342 lt!962468)) lt!962460)))))

(declare-fun b!2720417 () Bool)

(assert (=> b!2720417 (= e!1714525 lt!962460)))

(declare-fun d!783788 () Bool)

(declare-fun e!1714526 () Bool)

(assert (=> d!783788 e!1714526))

(declare-fun res!1142614 () Bool)

(assert (=> d!783788 (=> (not res!1142614) (not e!1714526))))

(declare-fun lt!962817 () List!31478)

(assert (=> d!783788 (= res!1142614 (= (content!4445 lt!962817) (set.union (content!4445 (t!226342 lt!962468)) (content!4445 lt!962460))))))

(assert (=> d!783788 (= lt!962817 e!1714525)))

(declare-fun c!439686 () Bool)

(assert (=> d!783788 (= c!439686 (is-Nil!31378 (t!226342 lt!962468)))))

(assert (=> d!783788 (= (++!7815 (t!226342 lt!962468) lt!962460) lt!962817)))

(declare-fun b!2720419 () Bool)

(declare-fun res!1142615 () Bool)

(assert (=> b!2720419 (=> (not res!1142615) (not e!1714526))))

(assert (=> b!2720419 (= res!1142615 (= (size!24206 lt!962817) (+ (size!24206 (t!226342 lt!962468)) (size!24206 lt!962460))))))

(declare-fun b!2720420 () Bool)

(assert (=> b!2720420 (= e!1714526 (or (not (= lt!962460 Nil!31378)) (= lt!962817 (t!226342 lt!962468))))))

(assert (= (and d!783788 c!439686) b!2720417))

(assert (= (and d!783788 (not c!439686)) b!2720418))

(assert (= (and d!783788 res!1142614) b!2720419))

(assert (= (and b!2720419 res!1142615) b!2720420))

(declare-fun m!3120565 () Bool)

(assert (=> b!2720418 m!3120565))

(declare-fun m!3120567 () Bool)

(assert (=> d!783788 m!3120567))

(assert (=> d!783788 m!3120157))

(assert (=> d!783788 m!3119697))

(declare-fun m!3120569 () Bool)

(assert (=> b!2720419 m!3120569))

(assert (=> b!2720419 m!3120143))

(assert (=> b!2720419 m!3119703))

(assert (=> b!2719718 d!783788))

(declare-fun e!1714527 () List!31478)

(declare-fun b!2720422 () Bool)

(assert (=> b!2720422 (= e!1714527 (Cons!31378 (h!36798 (t!226342 lt!962457)) (++!7815 (t!226342 (t!226342 lt!962457)) (++!7815 lt!962468 lt!962460))))))

(declare-fun b!2720421 () Bool)

(assert (=> b!2720421 (= e!1714527 (++!7815 lt!962468 lt!962460))))

(declare-fun d!783790 () Bool)

(declare-fun e!1714528 () Bool)

(assert (=> d!783790 e!1714528))

(declare-fun res!1142616 () Bool)

(assert (=> d!783790 (=> (not res!1142616) (not e!1714528))))

(declare-fun lt!962818 () List!31478)

(assert (=> d!783790 (= res!1142616 (= (content!4445 lt!962818) (set.union (content!4445 (t!226342 lt!962457)) (content!4445 (++!7815 lt!962468 lt!962460)))))))

(assert (=> d!783790 (= lt!962818 e!1714527)))

(declare-fun c!439687 () Bool)

(assert (=> d!783790 (= c!439687 (is-Nil!31378 (t!226342 lt!962457)))))

(assert (=> d!783790 (= (++!7815 (t!226342 lt!962457) (++!7815 lt!962468 lt!962460)) lt!962818)))

(declare-fun b!2720423 () Bool)

(declare-fun res!1142617 () Bool)

(assert (=> b!2720423 (=> (not res!1142617) (not e!1714528))))

(assert (=> b!2720423 (= res!1142617 (= (size!24206 lt!962818) (+ (size!24206 (t!226342 lt!962457)) (size!24206 (++!7815 lt!962468 lt!962460)))))))

(declare-fun b!2720424 () Bool)

(assert (=> b!2720424 (= e!1714528 (or (not (= (++!7815 lt!962468 lt!962460) Nil!31378)) (= lt!962818 (t!226342 lt!962457))))))

(assert (= (and d!783790 c!439687) b!2720421))

(assert (= (and d!783790 (not c!439687)) b!2720422))

(assert (= (and d!783790 res!1142616) b!2720423))

(assert (= (and b!2720423 res!1142617) b!2720424))

(assert (=> b!2720422 m!3119291))

(declare-fun m!3120571 () Bool)

(assert (=> b!2720422 m!3120571))

(declare-fun m!3120573 () Bool)

(assert (=> d!783790 m!3120573))

(assert (=> d!783790 m!3120153))

(assert (=> d!783790 m!3119291))

(assert (=> d!783790 m!3119655))

(declare-fun m!3120575 () Bool)

(assert (=> b!2720423 m!3120575))

(assert (=> b!2720423 m!3120255))

(assert (=> b!2720423 m!3119291))

(assert (=> b!2720423 m!3119659))

(assert (=> b!2719695 d!783790))

(declare-fun b!2720425 () Bool)

(declare-fun e!1714530 () List!31476)

(assert (=> b!2720425 (= e!1714530 lt!962459)))

(declare-fun b!2720427 () Bool)

(declare-fun res!1142618 () Bool)

(declare-fun e!1714529 () Bool)

(assert (=> b!2720427 (=> (not res!1142618) (not e!1714529))))

(declare-fun lt!962819 () List!31476)

(assert (=> b!2720427 (= res!1142618 (= (size!24205 lt!962819) (+ (size!24205 (t!226340 lt!962464)) (size!24205 lt!962459))))))

(declare-fun d!783792 () Bool)

(assert (=> d!783792 e!1714529))

(declare-fun res!1142619 () Bool)

(assert (=> d!783792 (=> (not res!1142619) (not e!1714529))))

(assert (=> d!783792 (= res!1142619 (= (content!4444 lt!962819) (set.union (content!4444 (t!226340 lt!962464)) (content!4444 lt!962459))))))

(assert (=> d!783792 (= lt!962819 e!1714530)))

(declare-fun c!439688 () Bool)

(assert (=> d!783792 (= c!439688 (is-Nil!31376 (t!226340 lt!962464)))))

(assert (=> d!783792 (= (++!7816 (t!226340 lt!962464) lt!962459) lt!962819)))

(declare-fun b!2720428 () Bool)

(assert (=> b!2720428 (= e!1714529 (or (not (= lt!962459 Nil!31376)) (= lt!962819 (t!226340 lt!962464))))))

(declare-fun b!2720426 () Bool)

(assert (=> b!2720426 (= e!1714530 (Cons!31376 (h!36796 (t!226340 lt!962464)) (++!7816 (t!226340 (t!226340 lt!962464)) lt!962459)))))

(assert (= (and d!783792 c!439688) b!2720425))

(assert (= (and d!783792 (not c!439688)) b!2720426))

(assert (= (and d!783792 res!1142619) b!2720427))

(assert (= (and b!2720427 res!1142618) b!2720428))

(declare-fun m!3120577 () Bool)

(assert (=> b!2720427 m!3120577))

(assert (=> b!2720427 m!3120173))

(assert (=> b!2720427 m!3119639))

(declare-fun m!3120579 () Bool)

(assert (=> d!783792 m!3120579))

(assert (=> d!783792 m!3120537))

(assert (=> d!783792 m!3119645))

(declare-fun m!3120581 () Bool)

(assert (=> b!2720426 m!3120581))

(assert (=> b!2719706 d!783792))

(declare-fun d!783794 () Bool)

(assert (=> d!783794 (= (get!9788 lt!962541) (v!33039 lt!962541))))

(assert (=> b!2719584 d!783794))

(declare-fun d!783796 () Bool)

(assert (=> d!783796 (= (list!11894 (_2!18167 (get!9788 lt!962541))) (list!11898 (c!439466 (_2!18167 (get!9788 lt!962541)))))))

(declare-fun bs!488397 () Bool)

(assert (= bs!488397 d!783796))

(declare-fun m!3120583 () Bool)

(assert (=> bs!488397 m!3120583))

(assert (=> b!2719584 d!783796))

(declare-fun d!783798 () Bool)

(assert (=> d!783798 (= (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 input!603))) (v!33044 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 input!603))))))

(assert (=> b!2719584 d!783798))

(assert (=> b!2719584 d!783564))

(declare-fun d!783800 () Bool)

(declare-fun lt!962831 () Option!6200)

(assert (=> d!783800 (= lt!962831 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 input!603)))))

(declare-fun e!1714533 () Option!6200)

(assert (=> d!783800 (= lt!962831 e!1714533)))

(declare-fun c!439691 () Bool)

(assert (=> d!783800 (= c!439691 (and (is-Cons!31377 rules!1182) (is-Nil!31377 (t!226341 rules!1182))))))

(declare-fun lt!962832 () Unit!45389)

(declare-fun lt!962834 () Unit!45389)

(assert (=> d!783800 (= lt!962832 lt!962834)))

(assert (=> d!783800 (isPrefix!2486 (list!11894 input!603) (list!11894 input!603))))

(assert (=> d!783800 (= lt!962834 (lemmaIsPrefixRefl!1612 (list!11894 input!603) (list!11894 input!603)))))

(assert (=> d!783800 (rulesValidInductive!1670 thiss!11556 rules!1182)))

(assert (=> d!783800 (= (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 input!603)) lt!962831)))

(declare-fun bm!175561 () Bool)

(declare-fun call!175566 () Option!6200)

(declare-fun maxPrefixOneRuleZipper!180 (LexerInterface!4398 Rule!9404 List!31476) Option!6200)

(assert (=> bm!175561 (= call!175566 (maxPrefixOneRuleZipper!180 thiss!11556 (h!36797 rules!1182) (list!11894 input!603)))))

(declare-fun b!2720433 () Bool)

(assert (=> b!2720433 (= e!1714533 call!175566)))

(declare-fun b!2720434 () Bool)

(declare-fun lt!962830 () Option!6200)

(declare-fun lt!962833 () Option!6200)

(assert (=> b!2720434 (= e!1714533 (ite (and (is-None!6199 lt!962830) (is-None!6199 lt!962833)) None!6199 (ite (is-None!6199 lt!962833) lt!962830 (ite (is-None!6199 lt!962830) lt!962833 (ite (>= (size!24201 (_1!18170 (v!33044 lt!962830))) (size!24201 (_1!18170 (v!33044 lt!962833)))) lt!962830 lt!962833)))))))

(assert (=> b!2720434 (= lt!962830 call!175566)))

(assert (=> b!2720434 (= lt!962833 (maxPrefixZipper!473 thiss!11556 (t!226341 rules!1182) (list!11894 input!603)))))

(assert (= (and d!783800 c!439691) b!2720433))

(assert (= (and d!783800 (not c!439691)) b!2720434))

(assert (= (or b!2720433 b!2720434) bm!175561))

(assert (=> d!783800 m!3119325))

(assert (=> d!783800 m!3119463))

(assert (=> d!783800 m!3119325))

(assert (=> d!783800 m!3119325))

(declare-fun m!3120585 () Bool)

(assert (=> d!783800 m!3120585))

(assert (=> d!783800 m!3119325))

(assert (=> d!783800 m!3119325))

(declare-fun m!3120587 () Bool)

(assert (=> d!783800 m!3120587))

(assert (=> d!783800 m!3119445))

(assert (=> bm!175561 m!3119325))

(declare-fun m!3120589 () Bool)

(assert (=> bm!175561 m!3120589))

(assert (=> b!2720434 m!3119325))

(declare-fun m!3120591 () Bool)

(assert (=> b!2720434 m!3120591))

(assert (=> b!2719584 d!783800))

(declare-fun d!783802 () Bool)

(declare-fun c!439692 () Bool)

(assert (=> d!783802 (= c!439692 (is-Nil!31378 lt!962590))))

(declare-fun e!1714534 () (Set Token!9066))

(assert (=> d!783802 (= (content!4445 lt!962590) e!1714534)))

(declare-fun b!2720435 () Bool)

(assert (=> b!2720435 (= e!1714534 (as set.empty (Set Token!9066)))))

(declare-fun b!2720436 () Bool)

(assert (=> b!2720436 (= e!1714534 (set.union (set.insert (h!36798 lt!962590) (as set.empty (Set Token!9066))) (content!4445 (t!226342 lt!962590))))))

(assert (= (and d!783802 c!439692) b!2720435))

(assert (= (and d!783802 (not c!439692)) b!2720436))

(declare-fun m!3120593 () Bool)

(assert (=> b!2720436 m!3120593))

(declare-fun m!3120595 () Bool)

(assert (=> b!2720436 m!3120595))

(assert (=> d!783528 d!783802))

(assert (=> d!783528 d!783672))

(declare-fun d!783804 () Bool)

(declare-fun c!439693 () Bool)

(assert (=> d!783804 (= c!439693 (is-Nil!31378 lt!962460))))

(declare-fun e!1714535 () (Set Token!9066))

(assert (=> d!783804 (= (content!4445 lt!962460) e!1714535)))

(declare-fun b!2720437 () Bool)

(assert (=> b!2720437 (= e!1714535 (as set.empty (Set Token!9066)))))

(declare-fun b!2720438 () Bool)

(assert (=> b!2720438 (= e!1714535 (set.union (set.insert (h!36798 lt!962460) (as set.empty (Set Token!9066))) (content!4445 (t!226342 lt!962460))))))

(assert (= (and d!783804 c!439693) b!2720437))

(assert (= (and d!783804 (not c!439693)) b!2720438))

(declare-fun m!3120597 () Bool)

(assert (=> b!2720438 m!3120597))

(declare-fun m!3120599 () Bool)

(assert (=> b!2720438 m!3120599))

(assert (=> d!783528 d!783804))

(declare-fun b!2720439 () Bool)

(declare-fun res!1142622 () Bool)

(declare-fun e!1714539 () Bool)

(assert (=> b!2720439 (=> (not res!1142622) (not e!1714539))))

(declare-fun e!1714536 () Bool)

(assert (=> b!2720439 (= res!1142622 e!1714536)))

(declare-fun res!1142625 () Bool)

(assert (=> b!2720439 (=> res!1142625 e!1714536)))

(declare-fun lt!962841 () Option!6198)

(assert (=> b!2720439 (= res!1142625 (not (isDefined!4899 lt!962841)))))

(declare-fun b!2720440 () Bool)

(declare-fun e!1714541 () Option!6198)

(declare-fun call!175567 () Option!6198)

(assert (=> b!2720440 (= e!1714541 call!175567)))

(declare-fun d!783806 () Bool)

(assert (=> d!783806 e!1714539))

(declare-fun res!1142624 () Bool)

(assert (=> d!783806 (=> (not res!1142624) (not e!1714539))))

(assert (=> d!783806 (= res!1142624 (= (isDefined!4899 lt!962841) (isDefined!4900 (maxPrefixZipper!473 thiss!11556 (t!226341 rules!1182) (list!11894 input!603)))))))

(assert (=> d!783806 (= lt!962841 e!1714541)))

(declare-fun c!439694 () Bool)

(assert (=> d!783806 (= c!439694 (and (is-Cons!31377 (t!226341 rules!1182)) (is-Nil!31377 (t!226341 (t!226341 rules!1182)))))))

(declare-fun lt!962839 () Unit!45389)

(declare-fun lt!962835 () Unit!45389)

(assert (=> d!783806 (= lt!962839 lt!962835)))

(declare-fun lt!962836 () List!31476)

(declare-fun lt!962837 () List!31476)

(assert (=> d!783806 (isPrefix!2486 lt!962836 lt!962837)))

(assert (=> d!783806 (= lt!962835 (lemmaIsPrefixRefl!1612 lt!962836 lt!962837))))

(assert (=> d!783806 (= lt!962837 (list!11894 input!603))))

(assert (=> d!783806 (= lt!962836 (list!11894 input!603))))

(assert (=> d!783806 (rulesValidInductive!1670 thiss!11556 (t!226341 rules!1182))))

(assert (=> d!783806 (= (maxPrefixZipperSequence!1046 thiss!11556 (t!226341 rules!1182) input!603) lt!962841)))

(declare-fun e!1714538 () Bool)

(declare-fun b!2720441 () Bool)

(assert (=> b!2720441 (= e!1714538 (= (list!11894 (_2!18167 (get!9788 lt!962841))) (_2!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 (t!226341 rules!1182) (list!11894 input!603))))))))

(declare-fun bm!175562 () Bool)

(assert (=> bm!175562 (= call!175567 (maxPrefixOneRuleZipperSequence!482 thiss!11556 (h!36797 (t!226341 rules!1182)) input!603))))

(declare-fun b!2720442 () Bool)

(declare-fun e!1714537 () Bool)

(declare-fun e!1714540 () Bool)

(assert (=> b!2720442 (= e!1714537 e!1714540)))

(declare-fun res!1142621 () Bool)

(assert (=> b!2720442 (=> (not res!1142621) (not e!1714540))))

(assert (=> b!2720442 (= res!1142621 (= (_1!18167 (get!9788 lt!962841)) (_1!18170 (get!9789 (maxPrefix!2369 thiss!11556 (t!226341 rules!1182) (list!11894 input!603))))))))

(declare-fun b!2720443 () Bool)

(assert (=> b!2720443 (= e!1714540 (= (list!11894 (_2!18167 (get!9788 lt!962841))) (_2!18170 (get!9789 (maxPrefix!2369 thiss!11556 (t!226341 rules!1182) (list!11894 input!603))))))))

(declare-fun b!2720444 () Bool)

(declare-fun lt!962840 () Option!6198)

(declare-fun lt!962838 () Option!6198)

(assert (=> b!2720444 (= e!1714541 (ite (and (is-None!6197 lt!962840) (is-None!6197 lt!962838)) None!6197 (ite (is-None!6197 lt!962838) lt!962840 (ite (is-None!6197 lt!962840) lt!962838 (ite (>= (size!24201 (_1!18167 (v!33039 lt!962840))) (size!24201 (_1!18167 (v!33039 lt!962838)))) lt!962840 lt!962838)))))))

(assert (=> b!2720444 (= lt!962840 call!175567)))

(assert (=> b!2720444 (= lt!962838 (maxPrefixZipperSequence!1046 thiss!11556 (t!226341 (t!226341 rules!1182)) input!603))))

(declare-fun b!2720445 () Bool)

(assert (=> b!2720445 (= e!1714539 e!1714537)))

(declare-fun res!1142623 () Bool)

(assert (=> b!2720445 (=> res!1142623 e!1714537)))

(assert (=> b!2720445 (= res!1142623 (not (isDefined!4899 lt!962841)))))

(declare-fun b!2720446 () Bool)

(assert (=> b!2720446 (= e!1714536 e!1714538)))

(declare-fun res!1142620 () Bool)

(assert (=> b!2720446 (=> (not res!1142620) (not e!1714538))))

(assert (=> b!2720446 (= res!1142620 (= (_1!18167 (get!9788 lt!962841)) (_1!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 (t!226341 rules!1182) (list!11894 input!603))))))))

(assert (= (and d!783806 c!439694) b!2720440))

(assert (= (and d!783806 (not c!439694)) b!2720444))

(assert (= (or b!2720440 b!2720444) bm!175562))

(assert (= (and d!783806 res!1142624) b!2720439))

(assert (= (and b!2720439 (not res!1142625)) b!2720446))

(assert (= (and b!2720446 res!1142620) b!2720441))

(assert (= (and b!2720439 res!1142622) b!2720445))

(assert (= (and b!2720445 (not res!1142623)) b!2720442))

(assert (= (and b!2720442 res!1142621) b!2720443))

(declare-fun m!3120601 () Bool)

(assert (=> b!2720444 m!3120601))

(declare-fun m!3120603 () Bool)

(assert (=> d!783806 m!3120603))

(declare-fun m!3120605 () Bool)

(assert (=> d!783806 m!3120605))

(assert (=> d!783806 m!3119325))

(declare-fun m!3120607 () Bool)

(assert (=> d!783806 m!3120607))

(declare-fun m!3120609 () Bool)

(assert (=> d!783806 m!3120609))

(assert (=> d!783806 m!3119325))

(assert (=> d!783806 m!3120591))

(assert (=> d!783806 m!3120591))

(declare-fun m!3120611 () Bool)

(assert (=> d!783806 m!3120611))

(assert (=> b!2720445 m!3120605))

(assert (=> b!2720441 m!3120591))

(declare-fun m!3120613 () Bool)

(assert (=> b!2720441 m!3120613))

(declare-fun m!3120615 () Bool)

(assert (=> b!2720441 m!3120615))

(assert (=> b!2720441 m!3119325))

(declare-fun m!3120617 () Bool)

(assert (=> b!2720441 m!3120617))

(assert (=> b!2720441 m!3119325))

(assert (=> b!2720441 m!3120591))

(assert (=> b!2720443 m!3120615))

(assert (=> b!2720443 m!3119325))

(assert (=> b!2720443 m!3120617))

(assert (=> b!2720443 m!3119325))

(declare-fun m!3120619 () Bool)

(assert (=> b!2720443 m!3120619))

(assert (=> b!2720443 m!3120619))

(declare-fun m!3120621 () Bool)

(assert (=> b!2720443 m!3120621))

(declare-fun m!3120623 () Bool)

(assert (=> bm!175562 m!3120623))

(assert (=> b!2720446 m!3120615))

(assert (=> b!2720446 m!3119325))

(assert (=> b!2720446 m!3119325))

(assert (=> b!2720446 m!3120591))

(assert (=> b!2720446 m!3120591))

(assert (=> b!2720446 m!3120613))

(assert (=> b!2720442 m!3120615))

(assert (=> b!2720442 m!3119325))

(assert (=> b!2720442 m!3119325))

(assert (=> b!2720442 m!3120619))

(assert (=> b!2720442 m!3120619))

(assert (=> b!2720442 m!3120621))

(assert (=> b!2720439 m!3120605))

(assert (=> b!2719587 d!783806))

(assert (=> b!2719655 d!783706))

(assert (=> b!2719655 d!783716))

(assert (=> b!2719655 d!783718))

(assert (=> b!2719655 d!783720))

(assert (=> b!2719655 d!783722))

(assert (=> b!2719489 d!783456))

(declare-fun b!2720449 () Bool)

(declare-fun e!1714543 () List!31476)

(assert (=> b!2720449 (= e!1714543 (list!11902 (xs!12906 (c!439466 (_2!18167 (v!33039 lt!962467))))))))

(declare-fun b!2720450 () Bool)

(assert (=> b!2720450 (= e!1714543 (++!7816 (list!11898 (left!24122 (c!439466 (_2!18167 (v!33039 lt!962467))))) (list!11898 (right!24452 (c!439466 (_2!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2720447 () Bool)

(declare-fun e!1714542 () List!31476)

(assert (=> b!2720447 (= e!1714542 Nil!31376)))

(declare-fun b!2720448 () Bool)

(assert (=> b!2720448 (= e!1714542 e!1714543)))

(declare-fun c!439696 () Bool)

(assert (=> b!2720448 (= c!439696 (is-Leaf!14977 (c!439466 (_2!18167 (v!33039 lt!962467)))))))

(declare-fun d!783808 () Bool)

(declare-fun c!439695 () Bool)

(assert (=> d!783808 (= c!439695 (is-Empty!9831 (c!439466 (_2!18167 (v!33039 lt!962467)))))))

(assert (=> d!783808 (= (list!11898 (c!439466 (_2!18167 (v!33039 lt!962467)))) e!1714542)))

(assert (= (and d!783808 c!439695) b!2720447))

(assert (= (and d!783808 (not c!439695)) b!2720448))

(assert (= (and b!2720448 c!439696) b!2720449))

(assert (= (and b!2720448 (not c!439696)) b!2720450))

(declare-fun m!3120625 () Bool)

(assert (=> b!2720449 m!3120625))

(declare-fun m!3120627 () Bool)

(assert (=> b!2720450 m!3120627))

(declare-fun m!3120629 () Bool)

(assert (=> b!2720450 m!3120629))

(assert (=> b!2720450 m!3120627))

(assert (=> b!2720450 m!3120629))

(declare-fun m!3120631 () Bool)

(assert (=> b!2720450 m!3120631))

(assert (=> d!783526 d!783808))

(declare-fun d!783810 () Bool)

(declare-fun res!1142630 () Bool)

(declare-fun e!1714548 () Bool)

(assert (=> d!783810 (=> res!1142630 e!1714548)))

(assert (=> d!783810 (= res!1142630 (is-Nil!31377 rules!1182))))

(assert (=> d!783810 (= (noDuplicateTag!1781 thiss!11556 rules!1182 Nil!31383) e!1714548)))

(declare-fun b!2720455 () Bool)

(declare-fun e!1714549 () Bool)

(assert (=> b!2720455 (= e!1714548 e!1714549)))

(declare-fun res!1142631 () Bool)

(assert (=> b!2720455 (=> (not res!1142631) (not e!1714549))))

(declare-fun contains!5959 (List!31483 String!35022) Bool)

(assert (=> b!2720455 (= res!1142631 (not (contains!5959 Nil!31383 (tag!5306 (h!36797 rules!1182)))))))

(declare-fun b!2720456 () Bool)

(assert (=> b!2720456 (= e!1714549 (noDuplicateTag!1781 thiss!11556 (t!226341 rules!1182) (Cons!31383 (tag!5306 (h!36797 rules!1182)) Nil!31383)))))

(assert (= (and d!783810 (not res!1142630)) b!2720455))

(assert (= (and b!2720455 res!1142631) b!2720456))

(declare-fun m!3120633 () Bool)

(assert (=> b!2720455 m!3120633))

(declare-fun m!3120635 () Bool)

(assert (=> b!2720456 m!3120635))

(assert (=> b!2719548 d!783810))

(declare-fun b!2720458 () Bool)

(declare-fun e!1714550 () List!31478)

(assert (=> b!2720458 (= e!1714550 (Cons!31378 (h!36798 (t!226342 lt!962457)) (++!7815 (t!226342 (t!226342 lt!962457)) lt!962468)))))

(declare-fun b!2720457 () Bool)

(assert (=> b!2720457 (= e!1714550 lt!962468)))

(declare-fun d!783812 () Bool)

(declare-fun e!1714551 () Bool)

(assert (=> d!783812 e!1714551))

(declare-fun res!1142632 () Bool)

(assert (=> d!783812 (=> (not res!1142632) (not e!1714551))))

(declare-fun lt!962842 () List!31478)

(assert (=> d!783812 (= res!1142632 (= (content!4445 lt!962842) (set.union (content!4445 (t!226342 lt!962457)) (content!4445 lt!962468))))))

(assert (=> d!783812 (= lt!962842 e!1714550)))

(declare-fun c!439697 () Bool)

(assert (=> d!783812 (= c!439697 (is-Nil!31378 (t!226342 lt!962457)))))

(assert (=> d!783812 (= (++!7815 (t!226342 lt!962457) lt!962468) lt!962842)))

(declare-fun b!2720459 () Bool)

(declare-fun res!1142633 () Bool)

(assert (=> b!2720459 (=> (not res!1142633) (not e!1714551))))

(assert (=> b!2720459 (= res!1142633 (= (size!24206 lt!962842) (+ (size!24206 (t!226342 lt!962457)) (size!24206 lt!962468))))))

(declare-fun b!2720460 () Bool)

(assert (=> b!2720460 (= e!1714551 (or (not (= lt!962468 Nil!31378)) (= lt!962842 (t!226342 lt!962457))))))

(assert (= (and d!783812 c!439697) b!2720457))

(assert (= (and d!783812 (not c!439697)) b!2720458))

(assert (= (and d!783812 res!1142632) b!2720459))

(assert (= (and b!2720459 res!1142633) b!2720460))

(declare-fun m!3120637 () Bool)

(assert (=> b!2720458 m!3120637))

(declare-fun m!3120639 () Bool)

(assert (=> d!783812 m!3120639))

(assert (=> d!783812 m!3120153))

(assert (=> d!783812 m!3119617))

(declare-fun m!3120641 () Bool)

(assert (=> b!2720459 m!3120641))

(assert (=> b!2720459 m!3120255))

(assert (=> b!2720459 m!3119623))

(assert (=> b!2719684 d!783812))

(declare-fun b!2720463 () Bool)

(declare-fun e!1714553 () List!31476)

(assert (=> b!2720463 (= e!1714553 (list!11902 (xs!12906 (c!439466 (charsOf!3023 (_1!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2720464 () Bool)

(assert (=> b!2720464 (= e!1714553 (++!7816 (list!11898 (left!24122 (c!439466 (charsOf!3023 (_1!18167 (v!33039 lt!962467)))))) (list!11898 (right!24452 (c!439466 (charsOf!3023 (_1!18167 (v!33039 lt!962467))))))))))

(declare-fun b!2720461 () Bool)

(declare-fun e!1714552 () List!31476)

(assert (=> b!2720461 (= e!1714552 Nil!31376)))

(declare-fun b!2720462 () Bool)

(assert (=> b!2720462 (= e!1714552 e!1714553)))

(declare-fun c!439699 () Bool)

(assert (=> b!2720462 (= c!439699 (is-Leaf!14977 (c!439466 (charsOf!3023 (_1!18167 (v!33039 lt!962467))))))))

(declare-fun d!783814 () Bool)

(declare-fun c!439698 () Bool)

(assert (=> d!783814 (= c!439698 (is-Empty!9831 (c!439466 (charsOf!3023 (_1!18167 (v!33039 lt!962467))))))))

(assert (=> d!783814 (= (list!11898 (c!439466 (charsOf!3023 (_1!18167 (v!33039 lt!962467))))) e!1714552)))

(assert (= (and d!783814 c!439698) b!2720461))

(assert (= (and d!783814 (not c!439698)) b!2720462))

(assert (= (and b!2720462 c!439699) b!2720463))

(assert (= (and b!2720462 (not c!439699)) b!2720464))

(declare-fun m!3120643 () Bool)

(assert (=> b!2720463 m!3120643))

(declare-fun m!3120645 () Bool)

(assert (=> b!2720464 m!3120645))

(declare-fun m!3120647 () Bool)

(assert (=> b!2720464 m!3120647))

(assert (=> b!2720464 m!3120645))

(assert (=> b!2720464 m!3120647))

(declare-fun m!3120649 () Bool)

(assert (=> b!2720464 m!3120649))

(assert (=> d!783502 d!783814))

(declare-fun d!783816 () Bool)

(assert (=> d!783816 (= (list!11894 (_2!18166 lt!962556)) (list!11898 (c!439466 (_2!18166 lt!962556))))))

(declare-fun bs!488398 () Bool)

(assert (= bs!488398 d!783816))

(declare-fun m!3120651 () Bool)

(assert (=> bs!488398 m!3120651))

(assert (=> b!2719631 d!783816))

(assert (=> b!2719631 d!783654))

(assert (=> b!2719631 d!783564))

(declare-fun b!2720465 () Bool)

(declare-fun res!1142635 () Bool)

(declare-fun e!1714555 () Bool)

(assert (=> b!2720465 (=> (not res!1142635) (not e!1714555))))

(assert (=> b!2720465 (= res!1142635 (isBalanced!2977 (right!24453 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467))))))))

(declare-fun b!2720466 () Bool)

(declare-fun res!1142634 () Bool)

(assert (=> b!2720466 (=> (not res!1142634) (not e!1714555))))

(assert (=> b!2720466 (= res!1142634 (not (isEmpty!17912 (left!24123 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2720467 () Bool)

(declare-fun res!1142639 () Bool)

(assert (=> b!2720467 (=> (not res!1142639) (not e!1714555))))

(assert (=> b!2720467 (= res!1142639 (<= (- (height!1457 (left!24123 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467))))) (height!1457 (right!24453 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467)))))) 1))))

(declare-fun b!2720468 () Bool)

(assert (=> b!2720468 (= e!1714555 (not (isEmpty!17912 (right!24453 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2720469 () Bool)

(declare-fun e!1714554 () Bool)

(assert (=> b!2720469 (= e!1714554 e!1714555)))

(declare-fun res!1142637 () Bool)

(assert (=> b!2720469 (=> (not res!1142637) (not e!1714555))))

(assert (=> b!2720469 (= res!1142637 (<= (- 1) (- (height!1457 (left!24123 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467))))) (height!1457 (right!24453 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467))))))))))

(declare-fun d!783818 () Bool)

(declare-fun res!1142638 () Bool)

(assert (=> d!783818 (=> res!1142638 e!1714554)))

(assert (=> d!783818 (= res!1142638 (not (is-Node!9832 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467))))))))

(assert (=> d!783818 (= (isBalanced!2977 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467)))) e!1714554)))

(declare-fun b!2720470 () Bool)

(declare-fun res!1142636 () Bool)

(assert (=> b!2720470 (=> (not res!1142636) (not e!1714555))))

(assert (=> b!2720470 (= res!1142636 (isBalanced!2977 (left!24123 (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467))))))))

(assert (= (and d!783818 (not res!1142638)) b!2720469))

(assert (= (and b!2720469 res!1142637) b!2720467))

(assert (= (and b!2720467 res!1142639) b!2720470))

(assert (= (and b!2720470 res!1142636) b!2720465))

(assert (= (and b!2720465 res!1142635) b!2720466))

(assert (= (and b!2720466 res!1142634) b!2720468))

(declare-fun m!3120653 () Bool)

(assert (=> b!2720469 m!3120653))

(declare-fun m!3120655 () Bool)

(assert (=> b!2720469 m!3120655))

(declare-fun m!3120657 () Bool)

(assert (=> b!2720466 m!3120657))

(assert (=> b!2720467 m!3120653))

(assert (=> b!2720467 m!3120655))

(declare-fun m!3120659 () Bool)

(assert (=> b!2720465 m!3120659))

(declare-fun m!3120661 () Bool)

(assert (=> b!2720468 m!3120661))

(declare-fun m!3120663 () Bool)

(assert (=> b!2720470 m!3120663))

(assert (=> d!783568 d!783818))

(declare-fun d!783820 () Bool)

(declare-fun e!1714558 () Bool)

(assert (=> d!783820 e!1714558))

(declare-fun res!1142642 () Bool)

(assert (=> d!783820 (=> (not res!1142642) (not e!1714558))))

(declare-fun lt!962845 () Conc!9832)

(assert (=> d!783820 (= res!1142642 (isBalanced!2977 lt!962845))))

(assert (=> d!783820 (= lt!962845 (++!7820 (Leaf!14978 (fill!144 1 (_1!18167 (v!33039 lt!962467))) 1) (c!439468 (_1!18166 lt!962465))))))

(assert (=> d!783820 (isBalanced!2977 (c!439468 (_1!18166 lt!962465)))))

(assert (=> d!783820 (= (prepend!1134 (c!439468 (_1!18166 lt!962465)) (_1!18167 (v!33039 lt!962467))) lt!962845)))

(declare-fun b!2720473 () Bool)

(assert (=> b!2720473 (= e!1714558 (= (list!11899 lt!962845) (Cons!31378 (_1!18167 (v!33039 lt!962467)) (list!11899 (c!439468 (_1!18166 lt!962465))))))))

(assert (= (and d!783820 res!1142642) b!2720473))

(declare-fun m!3120665 () Bool)

(assert (=> d!783820 m!3120665))

(assert (=> d!783820 m!3120371))

(declare-fun m!3120667 () Bool)

(assert (=> d!783820 m!3120667))

(declare-fun m!3120669 () Bool)

(assert (=> d!783820 m!3120669))

(declare-fun m!3120671 () Bool)

(assert (=> b!2720473 m!3120671))

(assert (=> b!2720473 m!3119649))

(assert (=> d!783568 d!783820))

(declare-fun d!783822 () Bool)

(declare-fun lt!962848 () Int)

(assert (=> d!783822 (= lt!962848 (size!24205 (list!11894 (_2!18166 lt!962559))))))

(assert (=> d!783822 (= lt!962848 (size!24211 (c!439466 (_2!18166 lt!962559))))))

(assert (=> d!783822 (= (size!24203 (_2!18166 lt!962559)) lt!962848)))

(declare-fun bs!488399 () Bool)

(assert (= bs!488399 d!783822))

(assert (=> bs!488399 m!3119523))

(assert (=> bs!488399 m!3119523))

(declare-fun m!3120673 () Bool)

(assert (=> bs!488399 m!3120673))

(declare-fun m!3120675 () Bool)

(assert (=> bs!488399 m!3120675))

(assert (=> b!2719641 d!783822))

(declare-fun d!783824 () Bool)

(declare-fun lt!962849 () Int)

(assert (=> d!783824 (= lt!962849 (size!24205 (list!11894 totalInput!328)))))

(assert (=> d!783824 (= lt!962849 (size!24211 (c!439466 totalInput!328)))))

(assert (=> d!783824 (= (size!24203 totalInput!328) lt!962849)))

(declare-fun bs!488400 () Bool)

(assert (= bs!488400 d!783824))

(assert (=> bs!488400 m!3119323))

(assert (=> bs!488400 m!3119323))

(assert (=> bs!488400 m!3120131))

(declare-fun m!3120677 () Bool)

(assert (=> bs!488400 m!3120677))

(assert (=> b!2719641 d!783824))

(assert (=> b!2719485 d!783550))

(declare-fun b!2720474 () Bool)

(declare-fun e!1714559 () List!31478)

(assert (=> b!2720474 (= e!1714559 Nil!31378)))

(declare-fun d!783826 () Bool)

(declare-fun c!439700 () Bool)

(assert (=> d!783826 (= c!439700 (is-Empty!9832 (c!439468 (_1!18166 lt!962465))))))

(assert (=> d!783826 (= (list!11899 (c!439468 (_1!18166 lt!962465))) e!1714559)))

(declare-fun b!2720477 () Bool)

(declare-fun e!1714560 () List!31478)

(assert (=> b!2720477 (= e!1714560 (++!7815 (list!11899 (left!24123 (c!439468 (_1!18166 lt!962465)))) (list!11899 (right!24453 (c!439468 (_1!18166 lt!962465))))))))

(declare-fun b!2720475 () Bool)

(assert (=> b!2720475 (= e!1714559 e!1714560)))

(declare-fun c!439701 () Bool)

(assert (=> b!2720475 (= c!439701 (is-Leaf!14978 (c!439468 (_1!18166 lt!962465))))))

(declare-fun b!2720476 () Bool)

(assert (=> b!2720476 (= e!1714560 (list!11903 (xs!12907 (c!439468 (_1!18166 lt!962465)))))))

(assert (= (and d!783826 c!439700) b!2720474))

(assert (= (and d!783826 (not c!439700)) b!2720475))

(assert (= (and b!2720475 c!439701) b!2720476))

(assert (= (and b!2720475 (not c!439701)) b!2720477))

(declare-fun m!3120679 () Bool)

(assert (=> b!2720477 m!3120679))

(declare-fun m!3120681 () Bool)

(assert (=> b!2720477 m!3120681))

(assert (=> b!2720477 m!3120679))

(assert (=> b!2720477 m!3120681))

(declare-fun m!3120683 () Bool)

(assert (=> b!2720477 m!3120683))

(declare-fun m!3120685 () Bool)

(assert (=> b!2720476 m!3120685))

(assert (=> d!783514 d!783826))

(declare-fun d!783828 () Bool)

(declare-fun lt!962850 () Int)

(assert (=> d!783828 (>= lt!962850 0)))

(declare-fun e!1714561 () Int)

(assert (=> d!783828 (= lt!962850 e!1714561)))

(declare-fun c!439702 () Bool)

(assert (=> d!783828 (= c!439702 (is-Nil!31376 lt!962582))))

(assert (=> d!783828 (= (size!24205 lt!962582) lt!962850)))

(declare-fun b!2720478 () Bool)

(assert (=> b!2720478 (= e!1714561 0)))

(declare-fun b!2720479 () Bool)

(assert (=> b!2720479 (= e!1714561 (+ 1 (size!24205 (t!226340 lt!962582))))))

(assert (= (and d!783828 c!439702) b!2720478))

(assert (= (and d!783828 (not c!439702)) b!2720479))

(declare-fun m!3120687 () Bool)

(assert (=> b!2720479 m!3120687))

(assert (=> b!2719692 d!783828))

(declare-fun d!783830 () Bool)

(declare-fun lt!962851 () Int)

(assert (=> d!783830 (>= lt!962851 0)))

(declare-fun e!1714562 () Int)

(assert (=> d!783830 (= lt!962851 e!1714562)))

(declare-fun c!439703 () Bool)

(assert (=> d!783830 (= c!439703 (is-Nil!31376 (++!7816 lt!962458 lt!962464)))))

(assert (=> d!783830 (= (size!24205 (++!7816 lt!962458 lt!962464)) lt!962851)))

(declare-fun b!2720480 () Bool)

(assert (=> b!2720480 (= e!1714562 0)))

(declare-fun b!2720481 () Bool)

(assert (=> b!2720481 (= e!1714562 (+ 1 (size!24205 (t!226340 (++!7816 lt!962458 lt!962464)))))))

(assert (= (and d!783830 c!439703) b!2720480))

(assert (= (and d!783830 (not c!439703)) b!2720481))

(declare-fun m!3120689 () Bool)

(assert (=> b!2720481 m!3120689))

(assert (=> b!2719692 d!783830))

(assert (=> b!2719692 d!783682))

(declare-fun d!783832 () Bool)

(declare-fun res!1142643 () Bool)

(declare-fun e!1714563 () Bool)

(assert (=> d!783832 (=> (not res!1142643) (not e!1714563))))

(assert (=> d!783832 (= res!1142643 (= (csize!19892 (c!439466 input!603)) (+ (size!24211 (left!24122 (c!439466 input!603))) (size!24211 (right!24452 (c!439466 input!603))))))))

(assert (=> d!783832 (= (inv!42625 (c!439466 input!603)) e!1714563)))

(declare-fun b!2720482 () Bool)

(declare-fun res!1142644 () Bool)

(assert (=> b!2720482 (=> (not res!1142644) (not e!1714563))))

(assert (=> b!2720482 (= res!1142644 (and (not (= (left!24122 (c!439466 input!603)) Empty!9831)) (not (= (right!24452 (c!439466 input!603)) Empty!9831))))))

(declare-fun b!2720483 () Bool)

(declare-fun res!1142645 () Bool)

(assert (=> b!2720483 (=> (not res!1142645) (not e!1714563))))

(assert (=> b!2720483 (= res!1142645 (= (cheight!10042 (c!439466 input!603)) (+ (max!0 (height!1459 (left!24122 (c!439466 input!603))) (height!1459 (right!24452 (c!439466 input!603)))) 1)))))

(declare-fun b!2720484 () Bool)

(assert (=> b!2720484 (= e!1714563 (<= 0 (cheight!10042 (c!439466 input!603))))))

(assert (= (and d!783832 res!1142643) b!2720482))

(assert (= (and b!2720482 res!1142644) b!2720483))

(assert (= (and b!2720483 res!1142645) b!2720484))

(declare-fun m!3120691 () Bool)

(assert (=> d!783832 m!3120691))

(declare-fun m!3120693 () Bool)

(assert (=> d!783832 m!3120693))

(assert (=> b!2720483 m!3120247))

(assert (=> b!2720483 m!3120249))

(assert (=> b!2720483 m!3120247))

(assert (=> b!2720483 m!3120249))

(declare-fun m!3120695 () Bool)

(assert (=> b!2720483 m!3120695))

(assert (=> b!2719727 d!783832))

(declare-fun d!783834 () Bool)

(declare-fun lt!962852 () Int)

(assert (=> d!783834 (= lt!962852 (size!24205 (list!11894 (_2!18166 lt!962586))))))

(assert (=> d!783834 (= lt!962852 (size!24211 (c!439466 (_2!18166 lt!962586))))))

(assert (=> d!783834 (= (size!24203 (_2!18166 lt!962586)) lt!962852)))

(declare-fun bs!488401 () Bool)

(assert (= bs!488401 d!783834))

(assert (=> bs!488401 m!3119665))

(assert (=> bs!488401 m!3119665))

(declare-fun m!3120697 () Bool)

(assert (=> bs!488401 m!3120697))

(declare-fun m!3120699 () Bool)

(assert (=> bs!488401 m!3120699))

(assert (=> b!2719704 d!783834))

(declare-fun d!783836 () Bool)

(declare-fun lt!962853 () Int)

(assert (=> d!783836 (= lt!962853 (size!24205 (list!11894 (_2!18167 (v!33039 lt!962467)))))))

(assert (=> d!783836 (= lt!962853 (size!24211 (c!439466 (_2!18167 (v!33039 lt!962467)))))))

(assert (=> d!783836 (= (size!24203 (_2!18167 (v!33039 lt!962467))) lt!962853)))

(declare-fun bs!488402 () Bool)

(assert (= bs!488402 d!783836))

(assert (=> bs!488402 m!3119319))

(assert (=> bs!488402 m!3119319))

(assert (=> bs!488402 m!3120511))

(declare-fun m!3120701 () Bool)

(assert (=> bs!488402 m!3120701))

(assert (=> b!2719704 d!783836))

(declare-fun d!783838 () Bool)

(declare-fun c!439704 () Bool)

(assert (=> d!783838 (= c!439704 (is-Node!9831 (left!24122 (c!439466 treated!9))))))

(declare-fun e!1714564 () Bool)

(assert (=> d!783838 (= (inv!42616 (left!24122 (c!439466 treated!9))) e!1714564)))

(declare-fun b!2720485 () Bool)

(assert (=> b!2720485 (= e!1714564 (inv!42625 (left!24122 (c!439466 treated!9))))))

(declare-fun b!2720486 () Bool)

(declare-fun e!1714565 () Bool)

(assert (=> b!2720486 (= e!1714564 e!1714565)))

(declare-fun res!1142646 () Bool)

(assert (=> b!2720486 (= res!1142646 (not (is-Leaf!14977 (left!24122 (c!439466 treated!9)))))))

(assert (=> b!2720486 (=> res!1142646 e!1714565)))

(declare-fun b!2720487 () Bool)

(assert (=> b!2720487 (= e!1714565 (inv!42626 (left!24122 (c!439466 treated!9))))))

(assert (= (and d!783838 c!439704) b!2720485))

(assert (= (and d!783838 (not c!439704)) b!2720486))

(assert (= (and b!2720486 (not res!1142646)) b!2720487))

(declare-fun m!3120703 () Bool)

(assert (=> b!2720485 m!3120703))

(declare-fun m!3120705 () Bool)

(assert (=> b!2720487 m!3120705))

(assert (=> b!2719803 d!783838))

(declare-fun d!783840 () Bool)

(declare-fun c!439705 () Bool)

(assert (=> d!783840 (= c!439705 (is-Node!9831 (right!24452 (c!439466 treated!9))))))

(declare-fun e!1714566 () Bool)

(assert (=> d!783840 (= (inv!42616 (right!24452 (c!439466 treated!9))) e!1714566)))

(declare-fun b!2720488 () Bool)

(assert (=> b!2720488 (= e!1714566 (inv!42625 (right!24452 (c!439466 treated!9))))))

(declare-fun b!2720489 () Bool)

(declare-fun e!1714567 () Bool)

(assert (=> b!2720489 (= e!1714566 e!1714567)))

(declare-fun res!1142647 () Bool)

(assert (=> b!2720489 (= res!1142647 (not (is-Leaf!14977 (right!24452 (c!439466 treated!9)))))))

(assert (=> b!2720489 (=> res!1142647 e!1714567)))

(declare-fun b!2720490 () Bool)

(assert (=> b!2720490 (= e!1714567 (inv!42626 (right!24452 (c!439466 treated!9))))))

(assert (= (and d!783840 c!439705) b!2720488))

(assert (= (and d!783840 (not c!439705)) b!2720489))

(assert (= (and b!2720489 (not res!1142647)) b!2720490))

(declare-fun m!3120707 () Bool)

(assert (=> b!2720488 m!3120707))

(declare-fun m!3120709 () Bool)

(assert (=> b!2720490 m!3120709))

(assert (=> b!2719803 d!783840))

(declare-fun d!783842 () Bool)

(assert (=> d!783842 true))

(declare-fun lt!962856 () Bool)

(assert (=> d!783842 (= lt!962856 (rulesValidInductive!1670 thiss!11556 rules!1182))))

(declare-fun lambda!100603 () Int)

(declare-fun forall!6562 (List!31477 Int) Bool)

(assert (=> d!783842 (= lt!962856 (forall!6562 rules!1182 lambda!100603))))

(assert (=> d!783842 (= (rulesValid!1785 thiss!11556 rules!1182) lt!962856)))

(declare-fun bs!488403 () Bool)

(assert (= bs!488403 d!783842))

(assert (=> bs!488403 m!3119445))

(declare-fun m!3120711 () Bool)

(assert (=> bs!488403 m!3120711))

(assert (=> d!783454 d!783842))

(declare-fun d!783844 () Bool)

(declare-fun e!1714568 () Bool)

(assert (=> d!783844 e!1714568))

(declare-fun res!1142648 () Bool)

(assert (=> d!783844 (=> (not res!1142648) (not e!1714568))))

(assert (=> d!783844 (= res!1142648 (isBalanced!2977 (prepend!1134 (c!439468 (_1!18166 lt!962558)) (_1!18167 (v!33039 lt!962557)))))))

(declare-fun lt!962857 () BalanceConc!19278)

(assert (=> d!783844 (= lt!962857 (BalanceConc!19279 (prepend!1134 (c!439468 (_1!18166 lt!962558)) (_1!18167 (v!33039 lt!962557)))))))

(assert (=> d!783844 (= (prepend!1132 (_1!18166 lt!962558) (_1!18167 (v!33039 lt!962557))) lt!962857)))

(declare-fun b!2720493 () Bool)

(assert (=> b!2720493 (= e!1714568 (= (list!11895 lt!962857) (Cons!31378 (_1!18167 (v!33039 lt!962557)) (list!11895 (_1!18166 lt!962558)))))))

(assert (= (and d!783844 res!1142648) b!2720493))

(declare-fun m!3120713 () Bool)

(assert (=> d!783844 m!3120713))

(assert (=> d!783844 m!3120713))

(declare-fun m!3120715 () Bool)

(assert (=> d!783844 m!3120715))

(declare-fun m!3120717 () Bool)

(assert (=> b!2720493 m!3120717))

(declare-fun m!3120719 () Bool)

(assert (=> b!2720493 m!3120719))

(assert (=> b!2719636 d!783844))

(declare-fun b!2720494 () Bool)

(declare-fun res!1142649 () Bool)

(declare-fun e!1714569 () Bool)

(assert (=> b!2720494 (=> (not res!1142649) (not e!1714569))))

(declare-fun lt!962860 () tuple2!31068)

(assert (=> b!2720494 (= res!1142649 (= (list!11895 (_1!18166 lt!962860)) (_1!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962557)))))))))

(declare-fun b!2720495 () Bool)

(declare-fun e!1714572 () tuple2!31068)

(declare-fun lt!962859 () tuple2!31068)

(declare-fun lt!962858 () Option!6198)

(assert (=> b!2720495 (= e!1714572 (tuple2!31069 (prepend!1132 (_1!18166 lt!962859) (_1!18167 (v!33039 lt!962858))) (_2!18166 lt!962859)))))

(assert (=> b!2720495 (= lt!962859 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962858))))))

(declare-fun b!2720496 () Bool)

(declare-fun e!1714571 () Bool)

(assert (=> b!2720496 (= e!1714571 (not (isEmpty!17907 (_1!18166 lt!962860))))))

(declare-fun b!2720497 () Bool)

(assert (=> b!2720497 (= e!1714569 (= (list!11894 (_2!18166 lt!962860)) (_2!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962557)))))))))

(declare-fun b!2720498 () Bool)

(assert (=> b!2720498 (= e!1714572 (tuple2!31069 (BalanceConc!19279 Empty!9832) (_2!18167 (v!33039 lt!962557))))))

(declare-fun b!2720499 () Bool)

(declare-fun e!1714570 () Bool)

(assert (=> b!2720499 (= e!1714570 (= (list!11894 (_2!18166 lt!962860)) (list!11894 (_2!18167 (v!33039 lt!962557)))))))

(declare-fun b!2720500 () Bool)

(assert (=> b!2720500 (= e!1714570 e!1714571)))

(declare-fun res!1142651 () Bool)

(assert (=> b!2720500 (= res!1142651 (< (size!24203 (_2!18166 lt!962860)) (size!24203 (_2!18167 (v!33039 lt!962557)))))))

(assert (=> b!2720500 (=> (not res!1142651) (not e!1714571))))

(declare-fun d!783846 () Bool)

(assert (=> d!783846 e!1714569))

(declare-fun res!1142650 () Bool)

(assert (=> d!783846 (=> (not res!1142650) (not e!1714569))))

(assert (=> d!783846 (= res!1142650 e!1714570)))

(declare-fun c!439707 () Bool)

(assert (=> d!783846 (= c!439707 (> (size!24204 (_1!18166 lt!962860)) 0))))

(assert (=> d!783846 (= lt!962860 e!1714572)))

(declare-fun c!439706 () Bool)

(assert (=> d!783846 (= c!439706 (is-Some!6197 lt!962858))))

(assert (=> d!783846 (= lt!962858 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962557))))))

(assert (=> d!783846 (= (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962557))) lt!962860)))

(assert (= (and d!783846 c!439706) b!2720495))

(assert (= (and d!783846 (not c!439706)) b!2720498))

(assert (= (and d!783846 c!439707) b!2720500))

(assert (= (and d!783846 (not c!439707)) b!2720499))

(assert (= (and b!2720500 res!1142651) b!2720496))

(assert (= (and d!783846 res!1142650) b!2720494))

(assert (= (and b!2720494 res!1142649) b!2720497))

(declare-fun m!3120721 () Bool)

(assert (=> b!2720500 m!3120721))

(declare-fun m!3120723 () Bool)

(assert (=> b!2720500 m!3120723))

(declare-fun m!3120725 () Bool)

(assert (=> b!2720499 m!3120725))

(declare-fun m!3120727 () Bool)

(assert (=> b!2720499 m!3120727))

(declare-fun m!3120729 () Bool)

(assert (=> b!2720496 m!3120729))

(declare-fun m!3120731 () Bool)

(assert (=> d!783846 m!3120731))

(declare-fun m!3120733 () Bool)

(assert (=> d!783846 m!3120733))

(declare-fun m!3120735 () Bool)

(assert (=> b!2720494 m!3120735))

(assert (=> b!2720494 m!3120727))

(assert (=> b!2720494 m!3120727))

(declare-fun m!3120737 () Bool)

(assert (=> b!2720494 m!3120737))

(declare-fun m!3120739 () Bool)

(assert (=> b!2720495 m!3120739))

(declare-fun m!3120741 () Bool)

(assert (=> b!2720495 m!3120741))

(assert (=> b!2720497 m!3120725))

(assert (=> b!2720497 m!3120727))

(assert (=> b!2720497 m!3120727))

(assert (=> b!2720497 m!3120737))

(assert (=> b!2719636 d!783846))

(declare-fun b!2720503 () Bool)

(declare-fun e!1714574 () List!31476)

(assert (=> b!2720503 (= e!1714574 (list!11902 (xs!12906 (c!439466 (_2!18166 lt!962465)))))))

(declare-fun b!2720504 () Bool)

(assert (=> b!2720504 (= e!1714574 (++!7816 (list!11898 (left!24122 (c!439466 (_2!18166 lt!962465)))) (list!11898 (right!24452 (c!439466 (_2!18166 lt!962465))))))))

(declare-fun b!2720501 () Bool)

(declare-fun e!1714573 () List!31476)

(assert (=> b!2720501 (= e!1714573 Nil!31376)))

(declare-fun b!2720502 () Bool)

(assert (=> b!2720502 (= e!1714573 e!1714574)))

(declare-fun c!439709 () Bool)

(assert (=> b!2720502 (= c!439709 (is-Leaf!14977 (c!439466 (_2!18166 lt!962465))))))

(declare-fun d!783848 () Bool)

(declare-fun c!439708 () Bool)

(assert (=> d!783848 (= c!439708 (is-Empty!9831 (c!439466 (_2!18166 lt!962465))))))

(assert (=> d!783848 (= (list!11898 (c!439466 (_2!18166 lt!962465))) e!1714573)))

(assert (= (and d!783848 c!439708) b!2720501))

(assert (= (and d!783848 (not c!439708)) b!2720502))

(assert (= (and b!2720502 c!439709) b!2720503))

(assert (= (and b!2720502 (not c!439709)) b!2720504))

(declare-fun m!3120743 () Bool)

(assert (=> b!2720503 m!3120743))

(declare-fun m!3120745 () Bool)

(assert (=> b!2720504 m!3120745))

(declare-fun m!3120747 () Bool)

(assert (=> b!2720504 m!3120747))

(assert (=> b!2720504 m!3120745))

(assert (=> b!2720504 m!3120747))

(declare-fun m!3120749 () Bool)

(assert (=> b!2720504 m!3120749))

(assert (=> d!783500 d!783848))

(declare-fun d!783850 () Bool)

(declare-fun lt!962861 () Int)

(assert (=> d!783850 (>= lt!962861 0)))

(declare-fun e!1714575 () Int)

(assert (=> d!783850 (= lt!962861 e!1714575)))

(declare-fun c!439710 () Bool)

(assert (=> d!783850 (= c!439710 (is-Nil!31376 lt!962589))))

(assert (=> d!783850 (= (size!24205 lt!962589) lt!962861)))

(declare-fun b!2720505 () Bool)

(assert (=> b!2720505 (= e!1714575 0)))

(declare-fun b!2720506 () Bool)

(assert (=> b!2720506 (= e!1714575 (+ 1 (size!24205 (t!226340 lt!962589))))))

(assert (= (and d!783850 c!439710) b!2720505))

(assert (= (and d!783850 (not c!439710)) b!2720506))

(declare-fun m!3120751 () Bool)

(assert (=> b!2720506 m!3120751))

(assert (=> b!2719715 d!783850))

(declare-fun d!783852 () Bool)

(declare-fun lt!962862 () Int)

(assert (=> d!783852 (>= lt!962862 0)))

(declare-fun e!1714576 () Int)

(assert (=> d!783852 (= lt!962862 e!1714576)))

(declare-fun c!439711 () Bool)

(assert (=> d!783852 (= c!439711 (is-Nil!31376 lt!962458))))

(assert (=> d!783852 (= (size!24205 lt!962458) lt!962862)))

(declare-fun b!2720507 () Bool)

(assert (=> b!2720507 (= e!1714576 0)))

(declare-fun b!2720508 () Bool)

(assert (=> b!2720508 (= e!1714576 (+ 1 (size!24205 (t!226340 lt!962458))))))

(assert (= (and d!783852 c!439711) b!2720507))

(assert (= (and d!783852 (not c!439711)) b!2720508))

(assert (=> b!2720508 m!3120119))

(assert (=> b!2719715 d!783852))

(assert (=> b!2719715 d!783680))

(declare-fun b!2720511 () Bool)

(declare-fun e!1714578 () List!31476)

(assert (=> b!2720511 (= e!1714578 (list!11902 (xs!12906 (c!439466 (_2!18166 lt!962455)))))))

(declare-fun b!2720512 () Bool)

(assert (=> b!2720512 (= e!1714578 (++!7816 (list!11898 (left!24122 (c!439466 (_2!18166 lt!962455)))) (list!11898 (right!24452 (c!439466 (_2!18166 lt!962455))))))))

(declare-fun b!2720509 () Bool)

(declare-fun e!1714577 () List!31476)

(assert (=> b!2720509 (= e!1714577 Nil!31376)))

(declare-fun b!2720510 () Bool)

(assert (=> b!2720510 (= e!1714577 e!1714578)))

(declare-fun c!439713 () Bool)

(assert (=> b!2720510 (= c!439713 (is-Leaf!14977 (c!439466 (_2!18166 lt!962455))))))

(declare-fun d!783854 () Bool)

(declare-fun c!439712 () Bool)

(assert (=> d!783854 (= c!439712 (is-Empty!9831 (c!439466 (_2!18166 lt!962455))))))

(assert (=> d!783854 (= (list!11898 (c!439466 (_2!18166 lt!962455))) e!1714577)))

(assert (= (and d!783854 c!439712) b!2720509))

(assert (= (and d!783854 (not c!439712)) b!2720510))

(assert (= (and b!2720510 c!439713) b!2720511))

(assert (= (and b!2720510 (not c!439713)) b!2720512))

(declare-fun m!3120753 () Bool)

(assert (=> b!2720511 m!3120753))

(declare-fun m!3120755 () Bool)

(assert (=> b!2720512 m!3120755))

(declare-fun m!3120757 () Bool)

(assert (=> b!2720512 m!3120757))

(assert (=> b!2720512 m!3120755))

(assert (=> b!2720512 m!3120757))

(declare-fun m!3120759 () Bool)

(assert (=> b!2720512 m!3120759))

(assert (=> d!783540 d!783854))

(declare-fun d!783856 () Bool)

(declare-fun c!439714 () Bool)

(assert (=> d!783856 (= c!439714 (is-Nil!31376 lt!962582))))

(declare-fun e!1714579 () (Set C!16066))

(assert (=> d!783856 (= (content!4444 lt!962582) e!1714579)))

(declare-fun b!2720513 () Bool)

(assert (=> b!2720513 (= e!1714579 (as set.empty (Set C!16066)))))

(declare-fun b!2720514 () Bool)

(assert (=> b!2720514 (= e!1714579 (set.union (set.insert (h!36796 lt!962582) (as set.empty (Set C!16066))) (content!4444 (t!226340 lt!962582))))))

(assert (= (and d!783856 c!439714) b!2720513))

(assert (= (and d!783856 (not c!439714)) b!2720514))

(declare-fun m!3120761 () Bool)

(assert (=> b!2720514 m!3120761))

(declare-fun m!3120763 () Bool)

(assert (=> b!2720514 m!3120763))

(assert (=> d!783512 d!783856))

(declare-fun d!783858 () Bool)

(declare-fun c!439715 () Bool)

(assert (=> d!783858 (= c!439715 (is-Nil!31376 (++!7816 lt!962458 lt!962464)))))

(declare-fun e!1714580 () (Set C!16066))

(assert (=> d!783858 (= (content!4444 (++!7816 lt!962458 lt!962464)) e!1714580)))

(declare-fun b!2720515 () Bool)

(assert (=> b!2720515 (= e!1714580 (as set.empty (Set C!16066)))))

(declare-fun b!2720516 () Bool)

(assert (=> b!2720516 (= e!1714580 (set.union (set.insert (h!36796 (++!7816 lt!962458 lt!962464)) (as set.empty (Set C!16066))) (content!4444 (t!226340 (++!7816 lt!962458 lt!962464)))))))

(assert (= (and d!783858 c!439715) b!2720515))

(assert (= (and d!783858 (not c!439715)) b!2720516))

(declare-fun m!3120765 () Bool)

(assert (=> b!2720516 m!3120765))

(declare-fun m!3120767 () Bool)

(assert (=> b!2720516 m!3120767))

(assert (=> d!783512 d!783858))

(assert (=> d!783512 d!783774))

(declare-fun d!783860 () Bool)

(assert (=> d!783860 (= (list!11894 lt!962566) (list!11898 (c!439466 lt!962566)))))

(declare-fun bs!488404 () Bool)

(assert (= bs!488404 d!783860))

(declare-fun m!3120769 () Bool)

(assert (=> bs!488404 m!3120769))

(assert (=> d!783492 d!783860))

(declare-fun d!783862 () Bool)

(declare-fun lt!962863 () Bool)

(assert (=> d!783862 (= lt!962863 (isEmpty!17903 (list!11895 (_1!18166 lt!962593))))))

(assert (=> d!783862 (= lt!962863 (isEmpty!17912 (c!439468 (_1!18166 lt!962593))))))

(assert (=> d!783862 (= (isEmpty!17907 (_1!18166 lt!962593)) lt!962863)))

(declare-fun bs!488405 () Bool)

(assert (= bs!488405 d!783862))

(assert (=> bs!488405 m!3119757))

(assert (=> bs!488405 m!3119757))

(declare-fun m!3120771 () Bool)

(assert (=> bs!488405 m!3120771))

(declare-fun m!3120773 () Bool)

(assert (=> bs!488405 m!3120773))

(assert (=> b!2719732 d!783862))

(declare-fun d!783864 () Bool)

(declare-fun lt!962864 () Int)

(assert (=> d!783864 (= lt!962864 (size!24205 (list!11894 (_2!18166 lt!962593))))))

(assert (=> d!783864 (= lt!962864 (size!24211 (c!439466 (_2!18166 lt!962593))))))

(assert (=> d!783864 (= (size!24203 (_2!18166 lt!962593)) lt!962864)))

(declare-fun bs!488406 () Bool)

(assert (= bs!488406 d!783864))

(assert (=> bs!488406 m!3119749))

(assert (=> bs!488406 m!3119749))

(declare-fun m!3120775 () Bool)

(assert (=> bs!488406 m!3120775))

(declare-fun m!3120777 () Bool)

(assert (=> bs!488406 m!3120777))

(assert (=> b!2719736 d!783864))

(declare-fun d!783866 () Bool)

(declare-fun lt!962865 () Int)

(assert (=> d!783866 (= lt!962865 (size!24205 (list!11894 treated!9)))))

(assert (=> d!783866 (= lt!962865 (size!24211 (c!439466 treated!9)))))

(assert (=> d!783866 (= (size!24203 treated!9) lt!962865)))

(declare-fun bs!488407 () Bool)

(assert (= bs!488407 d!783866))

(assert (=> bs!488407 m!3119329))

(assert (=> bs!488407 m!3119329))

(assert (=> bs!488407 m!3120263))

(declare-fun m!3120779 () Bool)

(assert (=> bs!488407 m!3120779))

(assert (=> b!2719736 d!783866))

(declare-fun d!783868 () Bool)

(assert (=> d!783868 (= (inv!42629 (xs!12906 (c!439466 input!603))) (<= (size!24205 (innerList!9891 (xs!12906 (c!439466 input!603)))) 2147483647))))

(declare-fun bs!488408 () Bool)

(assert (= bs!488408 d!783868))

(declare-fun m!3120781 () Bool)

(assert (=> bs!488408 m!3120781))

(assert (=> b!2719779 d!783868))

(assert (=> d!783496 d!783516))

(assert (=> d!783496 d!783506))

(declare-fun d!783870 () Bool)

(assert (=> d!783870 (= (++!7815 (++!7815 lt!962457 lt!962468) lt!962460) (++!7815 lt!962457 (++!7815 lt!962468 lt!962460)))))

(assert (=> d!783870 true))

(declare-fun _$52!1442 () Unit!45389)

(assert (=> d!783870 (= (choose!15974 lt!962457 lt!962468 lt!962460) _$52!1442)))

(declare-fun bs!488409 () Bool)

(assert (= bs!488409 d!783870))

(assert (=> bs!488409 m!3119293))

(assert (=> bs!488409 m!3119293))

(assert (=> bs!488409 m!3119313))

(assert (=> bs!488409 m!3119291))

(assert (=> bs!488409 m!3119291))

(assert (=> bs!488409 m!3119315))

(assert (=> d!783496 d!783870))

(assert (=> d!783496 d!783522))

(assert (=> d!783496 d!783528))

(declare-fun d!783872 () Bool)

(declare-fun e!1714581 () Bool)

(assert (=> d!783872 e!1714581))

(declare-fun res!1142652 () Bool)

(assert (=> d!783872 (=> (not res!1142652) (not e!1714581))))

(assert (=> d!783872 (= res!1142652 (isBalanced!2977 (prepend!1134 (c!439468 (_1!18166 lt!962585)) (_1!18167 (v!33039 lt!962584)))))))

(declare-fun lt!962866 () BalanceConc!19278)

(assert (=> d!783872 (= lt!962866 (BalanceConc!19279 (prepend!1134 (c!439468 (_1!18166 lt!962585)) (_1!18167 (v!33039 lt!962584)))))))

(assert (=> d!783872 (= (prepend!1132 (_1!18166 lt!962585) (_1!18167 (v!33039 lt!962584))) lt!962866)))

(declare-fun b!2720517 () Bool)

(assert (=> b!2720517 (= e!1714581 (= (list!11895 lt!962866) (Cons!31378 (_1!18167 (v!33039 lt!962584)) (list!11895 (_1!18166 lt!962585)))))))

(assert (= (and d!783872 res!1142652) b!2720517))

(declare-fun m!3120783 () Bool)

(assert (=> d!783872 m!3120783))

(assert (=> d!783872 m!3120783))

(declare-fun m!3120785 () Bool)

(assert (=> d!783872 m!3120785))

(declare-fun m!3120787 () Bool)

(assert (=> b!2720517 m!3120787))

(declare-fun m!3120789 () Bool)

(assert (=> b!2720517 m!3120789))

(assert (=> b!2719699 d!783872))

(declare-fun b!2720518 () Bool)

(declare-fun res!1142653 () Bool)

(declare-fun e!1714582 () Bool)

(assert (=> b!2720518 (=> (not res!1142653) (not e!1714582))))

(declare-fun lt!962869 () tuple2!31068)

(assert (=> b!2720518 (= res!1142653 (= (list!11895 (_1!18166 lt!962869)) (_1!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962584)))))))))

(declare-fun b!2720519 () Bool)

(declare-fun e!1714585 () tuple2!31068)

(declare-fun lt!962868 () tuple2!31068)

(declare-fun lt!962867 () Option!6198)

(assert (=> b!2720519 (= e!1714585 (tuple2!31069 (prepend!1132 (_1!18166 lt!962868) (_1!18167 (v!33039 lt!962867))) (_2!18166 lt!962868)))))

(assert (=> b!2720519 (= lt!962868 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962867))))))

(declare-fun b!2720520 () Bool)

(declare-fun e!1714584 () Bool)

(assert (=> b!2720520 (= e!1714584 (not (isEmpty!17907 (_1!18166 lt!962869))))))

(declare-fun b!2720521 () Bool)

(assert (=> b!2720521 (= e!1714582 (= (list!11894 (_2!18166 lt!962869)) (_2!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962584)))))))))

(declare-fun b!2720522 () Bool)

(assert (=> b!2720522 (= e!1714585 (tuple2!31069 (BalanceConc!19279 Empty!9832) (_2!18167 (v!33039 lt!962584))))))

(declare-fun b!2720523 () Bool)

(declare-fun e!1714583 () Bool)

(assert (=> b!2720523 (= e!1714583 (= (list!11894 (_2!18166 lt!962869)) (list!11894 (_2!18167 (v!33039 lt!962584)))))))

(declare-fun b!2720524 () Bool)

(assert (=> b!2720524 (= e!1714583 e!1714584)))

(declare-fun res!1142655 () Bool)

(assert (=> b!2720524 (= res!1142655 (< (size!24203 (_2!18166 lt!962869)) (size!24203 (_2!18167 (v!33039 lt!962584)))))))

(assert (=> b!2720524 (=> (not res!1142655) (not e!1714584))))

(declare-fun d!783874 () Bool)

(assert (=> d!783874 e!1714582))

(declare-fun res!1142654 () Bool)

(assert (=> d!783874 (=> (not res!1142654) (not e!1714582))))

(assert (=> d!783874 (= res!1142654 e!1714583)))

(declare-fun c!439717 () Bool)

(assert (=> d!783874 (= c!439717 (> (size!24204 (_1!18166 lt!962869)) 0))))

(assert (=> d!783874 (= lt!962869 e!1714585)))

(declare-fun c!439716 () Bool)

(assert (=> d!783874 (= c!439716 (is-Some!6197 lt!962867))))

(assert (=> d!783874 (= lt!962867 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962584))))))

(assert (=> d!783874 (= (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962584))) lt!962869)))

(assert (= (and d!783874 c!439716) b!2720519))

(assert (= (and d!783874 (not c!439716)) b!2720522))

(assert (= (and d!783874 c!439717) b!2720524))

(assert (= (and d!783874 (not c!439717)) b!2720523))

(assert (= (and b!2720524 res!1142655) b!2720520))

(assert (= (and d!783874 res!1142654) b!2720518))

(assert (= (and b!2720518 res!1142653) b!2720521))

(declare-fun m!3120791 () Bool)

(assert (=> b!2720524 m!3120791))

(declare-fun m!3120793 () Bool)

(assert (=> b!2720524 m!3120793))

(declare-fun m!3120795 () Bool)

(assert (=> b!2720523 m!3120795))

(declare-fun m!3120797 () Bool)

(assert (=> b!2720523 m!3120797))

(declare-fun m!3120799 () Bool)

(assert (=> b!2720520 m!3120799))

(declare-fun m!3120801 () Bool)

(assert (=> d!783874 m!3120801))

(declare-fun m!3120803 () Bool)

(assert (=> d!783874 m!3120803))

(declare-fun m!3120805 () Bool)

(assert (=> b!2720518 m!3120805))

(assert (=> b!2720518 m!3120797))

(assert (=> b!2720518 m!3120797))

(declare-fun m!3120807 () Bool)

(assert (=> b!2720518 m!3120807))

(declare-fun m!3120809 () Bool)

(assert (=> b!2720519 m!3120809))

(declare-fun m!3120811 () Bool)

(assert (=> b!2720519 m!3120811))

(assert (=> b!2720521 m!3120795))

(assert (=> b!2720521 m!3120797))

(assert (=> b!2720521 m!3120797))

(assert (=> b!2720521 m!3120807))

(assert (=> b!2719699 d!783874))

(declare-fun b!2720527 () Bool)

(declare-fun e!1714587 () List!31476)

(assert (=> b!2720527 (= e!1714587 (list!11902 (xs!12906 (c!439466 treated!9))))))

(declare-fun b!2720528 () Bool)

(assert (=> b!2720528 (= e!1714587 (++!7816 (list!11898 (left!24122 (c!439466 treated!9))) (list!11898 (right!24452 (c!439466 treated!9)))))))

(declare-fun b!2720525 () Bool)

(declare-fun e!1714586 () List!31476)

(assert (=> b!2720525 (= e!1714586 Nil!31376)))

(declare-fun b!2720526 () Bool)

(assert (=> b!2720526 (= e!1714586 e!1714587)))

(declare-fun c!439719 () Bool)

(assert (=> b!2720526 (= c!439719 (is-Leaf!14977 (c!439466 treated!9)))))

(declare-fun d!783876 () Bool)

(declare-fun c!439718 () Bool)

(assert (=> d!783876 (= c!439718 (is-Empty!9831 (c!439466 treated!9)))))

(assert (=> d!783876 (= (list!11898 (c!439466 treated!9)) e!1714586)))

(assert (= (and d!783876 c!439718) b!2720525))

(assert (= (and d!783876 (not c!439718)) b!2720526))

(assert (= (and b!2720526 c!439719) b!2720527))

(assert (= (and b!2720526 (not c!439719)) b!2720528))

(declare-fun m!3120813 () Bool)

(assert (=> b!2720527 m!3120813))

(declare-fun m!3120815 () Bool)

(assert (=> b!2720528 m!3120815))

(declare-fun m!3120817 () Bool)

(assert (=> b!2720528 m!3120817))

(assert (=> b!2720528 m!3120815))

(assert (=> b!2720528 m!3120817))

(declare-fun m!3120819 () Bool)

(assert (=> b!2720528 m!3120819))

(assert (=> d!783566 d!783876))

(declare-fun b!2720529 () Bool)

(declare-fun res!1142657 () Bool)

(declare-fun e!1714589 () Bool)

(assert (=> b!2720529 (=> (not res!1142657) (not e!1714589))))

(assert (=> b!2720529 (= res!1142657 (isBalanced!2977 (right!24453 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))))))))

(declare-fun b!2720530 () Bool)

(declare-fun res!1142656 () Bool)

(assert (=> b!2720530 (=> (not res!1142656) (not e!1714589))))

(assert (=> b!2720530 (= res!1142656 (not (isEmpty!17912 (left!24123 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))))))))

(declare-fun b!2720531 () Bool)

(declare-fun res!1142661 () Bool)

(assert (=> b!2720531 (=> (not res!1142661) (not e!1714589))))

(assert (=> b!2720531 (= res!1142661 (<= (- (height!1457 (left!24123 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))))) (height!1457 (right!24453 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))))) 1))))

(declare-fun b!2720532 () Bool)

(assert (=> b!2720532 (= e!1714589 (not (isEmpty!17912 (right!24453 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))))))))

(declare-fun b!2720533 () Bool)

(declare-fun e!1714588 () Bool)

(assert (=> b!2720533 (= e!1714588 e!1714589)))

(declare-fun res!1142659 () Bool)

(assert (=> b!2720533 (=> (not res!1142659) (not e!1714589))))

(assert (=> b!2720533 (= res!1142659 (<= (- 1) (- (height!1457 (left!24123 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))))) (height!1457 (right!24453 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))))))))))

(declare-fun d!783878 () Bool)

(declare-fun res!1142660 () Bool)

(assert (=> d!783878 (=> res!1142660 e!1714588)))

(assert (=> d!783878 (= res!1142660 (not (is-Node!9832 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))))))))

(assert (=> d!783878 (= (isBalanced!2977 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466)))) e!1714588)))

(declare-fun b!2720534 () Bool)

(declare-fun res!1142658 () Bool)

(assert (=> b!2720534 (=> (not res!1142658) (not e!1714589))))

(assert (=> b!2720534 (= res!1142658 (isBalanced!2977 (left!24123 (++!7820 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))))))))

(assert (= (and d!783878 (not res!1142660)) b!2720533))

(assert (= (and b!2720533 res!1142659) b!2720531))

(assert (= (and b!2720531 res!1142661) b!2720534))

(assert (= (and b!2720534 res!1142658) b!2720529))

(assert (= (and b!2720529 res!1142657) b!2720530))

(assert (= (and b!2720530 res!1142656) b!2720532))

(declare-fun m!3120821 () Bool)

(assert (=> b!2720533 m!3120821))

(declare-fun m!3120823 () Bool)

(assert (=> b!2720533 m!3120823))

(declare-fun m!3120825 () Bool)

(assert (=> b!2720530 m!3120825))

(assert (=> b!2720531 m!3120821))

(assert (=> b!2720531 m!3120823))

(declare-fun m!3120827 () Bool)

(assert (=> b!2720529 m!3120827))

(declare-fun m!3120829 () Bool)

(assert (=> b!2720532 m!3120829))

(declare-fun m!3120831 () Bool)

(assert (=> b!2720534 m!3120831))

(assert (=> b!2719654 d!783878))

(assert (=> b!2719654 d!783706))

(declare-fun b!2720535 () Bool)

(declare-fun e!1714590 () List!31478)

(assert (=> b!2720535 (= e!1714590 Nil!31378)))

(declare-fun d!783880 () Bool)

(declare-fun c!439720 () Bool)

(assert (=> d!783880 (= c!439720 (is-Empty!9832 (c!439468 acc!331)))))

(assert (=> d!783880 (= (list!11899 (c!439468 acc!331)) e!1714590)))

(declare-fun b!2720538 () Bool)

(declare-fun e!1714591 () List!31478)

(assert (=> b!2720538 (= e!1714591 (++!7815 (list!11899 (left!24123 (c!439468 acc!331))) (list!11899 (right!24453 (c!439468 acc!331)))))))

(declare-fun b!2720536 () Bool)

(assert (=> b!2720536 (= e!1714590 e!1714591)))

(declare-fun c!439721 () Bool)

(assert (=> b!2720536 (= c!439721 (is-Leaf!14978 (c!439468 acc!331)))))

(declare-fun b!2720537 () Bool)

(assert (=> b!2720537 (= e!1714591 (list!11903 (xs!12907 (c!439468 acc!331))))))

(assert (= (and d!783880 c!439720) b!2720535))

(assert (= (and d!783880 (not c!439720)) b!2720536))

(assert (= (and b!2720536 c!439721) b!2720537))

(assert (= (and b!2720536 (not c!439721)) b!2720538))

(declare-fun m!3120833 () Bool)

(assert (=> b!2720538 m!3120833))

(assert (=> b!2720538 m!3120395))

(assert (=> b!2720538 m!3120833))

(assert (=> b!2720538 m!3120395))

(declare-fun m!3120835 () Bool)

(assert (=> b!2720538 m!3120835))

(assert (=> b!2720537 m!3120357))

(assert (=> d!783552 d!783880))

(declare-fun d!783882 () Bool)

(declare-fun c!439722 () Bool)

(assert (=> d!783882 (= c!439722 (is-Nil!31376 lt!962572))))

(declare-fun e!1714592 () (Set C!16066))

(assert (=> d!783882 (= (content!4444 lt!962572) e!1714592)))

(declare-fun b!2720539 () Bool)

(assert (=> b!2720539 (= e!1714592 (as set.empty (Set C!16066)))))

(declare-fun b!2720540 () Bool)

(assert (=> b!2720540 (= e!1714592 (set.union (set.insert (h!36796 lt!962572) (as set.empty (Set C!16066))) (content!4444 (t!226340 lt!962572))))))

(assert (= (and d!783882 c!439722) b!2720539))

(assert (= (and d!783882 (not c!439722)) b!2720540))

(declare-fun m!3120837 () Bool)

(assert (=> b!2720540 m!3120837))

(declare-fun m!3120839 () Bool)

(assert (=> b!2720540 m!3120839))

(assert (=> d!783498 d!783882))

(assert (=> d!783498 d!783686))

(declare-fun d!783884 () Bool)

(declare-fun c!439723 () Bool)

(assert (=> d!783884 (= c!439723 (is-Nil!31376 (++!7816 lt!962464 lt!962459)))))

(declare-fun e!1714593 () (Set C!16066))

(assert (=> d!783884 (= (content!4444 (++!7816 lt!962464 lt!962459)) e!1714593)))

(declare-fun b!2720541 () Bool)

(assert (=> b!2720541 (= e!1714593 (as set.empty (Set C!16066)))))

(declare-fun b!2720542 () Bool)

(assert (=> b!2720542 (= e!1714593 (set.union (set.insert (h!36796 (++!7816 lt!962464 lt!962459)) (as set.empty (Set C!16066))) (content!4444 (t!226340 (++!7816 lt!962464 lt!962459)))))))

(assert (= (and d!783884 c!439723) b!2720541))

(assert (= (and d!783884 (not c!439723)) b!2720542))

(declare-fun m!3120841 () Bool)

(assert (=> b!2720542 m!3120841))

(declare-fun m!3120843 () Bool)

(assert (=> b!2720542 m!3120843))

(assert (=> d!783498 d!783884))

(declare-fun d!783886 () Bool)

(assert (=> d!783886 (= (inv!42632 (xs!12907 (c!439468 acc!331))) (<= (size!24206 (innerList!9892 (xs!12907 (c!439468 acc!331)))) 2147483647))))

(declare-fun bs!488410 () Bool)

(assert (= bs!488410 d!783886))

(declare-fun m!3120845 () Bool)

(assert (=> bs!488410 m!3120845))

(assert (=> b!2719801 d!783886))

(declare-fun b!2720561 () Bool)

(declare-fun res!1142679 () Bool)

(declare-fun e!1714600 () Bool)

(assert (=> b!2720561 (=> (not res!1142679) (not e!1714600))))

(declare-fun lt!962882 () Option!6200)

(assert (=> b!2720561 (= res!1142679 (matchR!3640 (regex!4802 (rule!7230 (_1!18170 (get!9789 lt!962882)))) (list!11894 (charsOf!3023 (_1!18170 (get!9789 lt!962882))))))))

(declare-fun b!2720562 () Bool)

(declare-fun e!1714601 () Option!6200)

(declare-fun lt!962880 () Option!6200)

(declare-fun lt!962883 () Option!6200)

(assert (=> b!2720562 (= e!1714601 (ite (and (is-None!6199 lt!962880) (is-None!6199 lt!962883)) None!6199 (ite (is-None!6199 lt!962883) lt!962880 (ite (is-None!6199 lt!962880) lt!962883 (ite (>= (size!24201 (_1!18170 (v!33044 lt!962880))) (size!24201 (_1!18170 (v!33044 lt!962883)))) lt!962880 lt!962883)))))))

(declare-fun call!175570 () Option!6200)

(assert (=> b!2720562 (= lt!962880 call!175570)))

(assert (=> b!2720562 (= lt!962883 (maxPrefix!2369 thiss!11556 (t!226341 rules!1182) (list!11894 input!603)))))

(declare-fun b!2720563 () Bool)

(declare-fun res!1142680 () Bool)

(assert (=> b!2720563 (=> (not res!1142680) (not e!1714600))))

(assert (=> b!2720563 (= res!1142680 (= (++!7816 (list!11894 (charsOf!3023 (_1!18170 (get!9789 lt!962882)))) (_2!18170 (get!9789 lt!962882))) (list!11894 input!603)))))

(declare-fun d!783888 () Bool)

(declare-fun e!1714602 () Bool)

(assert (=> d!783888 e!1714602))

(declare-fun res!1142682 () Bool)

(assert (=> d!783888 (=> res!1142682 e!1714602)))

(declare-fun isEmpty!17915 (Option!6200) Bool)

(assert (=> d!783888 (= res!1142682 (isEmpty!17915 lt!962882))))

(assert (=> d!783888 (= lt!962882 e!1714601)))

(declare-fun c!439726 () Bool)

(assert (=> d!783888 (= c!439726 (and (is-Cons!31377 rules!1182) (is-Nil!31377 (t!226341 rules!1182))))))

(declare-fun lt!962881 () Unit!45389)

(declare-fun lt!962884 () Unit!45389)

(assert (=> d!783888 (= lt!962881 lt!962884)))

(assert (=> d!783888 (isPrefix!2486 (list!11894 input!603) (list!11894 input!603))))

(assert (=> d!783888 (= lt!962884 (lemmaIsPrefixRefl!1612 (list!11894 input!603) (list!11894 input!603)))))

(assert (=> d!783888 (rulesValidInductive!1670 thiss!11556 rules!1182)))

(assert (=> d!783888 (= (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 input!603)) lt!962882)))

(declare-fun b!2720564 () Bool)

(declare-fun contains!5962 (List!31477 Rule!9404) Bool)

(assert (=> b!2720564 (= e!1714600 (contains!5962 rules!1182 (rule!7230 (_1!18170 (get!9789 lt!962882)))))))

(declare-fun b!2720565 () Bool)

(declare-fun res!1142677 () Bool)

(assert (=> b!2720565 (=> (not res!1142677) (not e!1714600))))

(assert (=> b!2720565 (= res!1142677 (= (list!11894 (charsOf!3023 (_1!18170 (get!9789 lt!962882)))) (originalCharacters!5564 (_1!18170 (get!9789 lt!962882)))))))

(declare-fun b!2720566 () Bool)

(assert (=> b!2720566 (= e!1714602 e!1714600)))

(declare-fun res!1142681 () Bool)

(assert (=> b!2720566 (=> (not res!1142681) (not e!1714600))))

(assert (=> b!2720566 (= res!1142681 (isDefined!4900 lt!962882))))

(declare-fun b!2720567 () Bool)

(assert (=> b!2720567 (= e!1714601 call!175570)))

(declare-fun b!2720568 () Bool)

(declare-fun res!1142678 () Bool)

(assert (=> b!2720568 (=> (not res!1142678) (not e!1714600))))

(assert (=> b!2720568 (= res!1142678 (< (size!24205 (_2!18170 (get!9789 lt!962882))) (size!24205 (list!11894 input!603))))))

(declare-fun b!2720569 () Bool)

(declare-fun res!1142676 () Bool)

(assert (=> b!2720569 (=> (not res!1142676) (not e!1714600))))

(assert (=> b!2720569 (= res!1142676 (= (value!154471 (_1!18170 (get!9789 lt!962882))) (apply!7412 (transformation!4802 (rule!7230 (_1!18170 (get!9789 lt!962882)))) (seqFromList!3217 (originalCharacters!5564 (_1!18170 (get!9789 lt!962882)))))))))

(declare-fun bm!175565 () Bool)

(assert (=> bm!175565 (= call!175570 (maxPrefixOneRule!1498 thiss!11556 (h!36797 rules!1182) (list!11894 input!603)))))

(assert (= (and d!783888 c!439726) b!2720567))

(assert (= (and d!783888 (not c!439726)) b!2720562))

(assert (= (or b!2720567 b!2720562) bm!175565))

(assert (= (and d!783888 (not res!1142682)) b!2720566))

(assert (= (and b!2720566 res!1142681) b!2720565))

(assert (= (and b!2720565 res!1142677) b!2720568))

(assert (= (and b!2720568 res!1142678) b!2720563))

(assert (= (and b!2720563 res!1142680) b!2720569))

(assert (= (and b!2720569 res!1142676) b!2720561))

(assert (= (and b!2720561 res!1142679) b!2720564))

(assert (=> bm!175565 m!3119325))

(assert (=> bm!175565 m!3120191))

(declare-fun m!3120847 () Bool)

(assert (=> d!783888 m!3120847))

(assert (=> d!783888 m!3119325))

(assert (=> d!783888 m!3119325))

(assert (=> d!783888 m!3120585))

(assert (=> d!783888 m!3119325))

(assert (=> d!783888 m!3119325))

(assert (=> d!783888 m!3120587))

(assert (=> d!783888 m!3119445))

(declare-fun m!3120849 () Bool)

(assert (=> b!2720564 m!3120849))

(declare-fun m!3120851 () Bool)

(assert (=> b!2720564 m!3120851))

(assert (=> b!2720569 m!3120849))

(declare-fun m!3120853 () Bool)

(assert (=> b!2720569 m!3120853))

(assert (=> b!2720569 m!3120853))

(declare-fun m!3120855 () Bool)

(assert (=> b!2720569 m!3120855))

(assert (=> b!2720568 m!3120849))

(declare-fun m!3120857 () Bool)

(assert (=> b!2720568 m!3120857))

(assert (=> b!2720568 m!3119325))

(assert (=> b!2720568 m!3119773))

(assert (=> b!2720565 m!3120849))

(declare-fun m!3120859 () Bool)

(assert (=> b!2720565 m!3120859))

(assert (=> b!2720565 m!3120859))

(declare-fun m!3120861 () Bool)

(assert (=> b!2720565 m!3120861))

(assert (=> b!2720563 m!3120849))

(assert (=> b!2720563 m!3120859))

(assert (=> b!2720563 m!3120859))

(assert (=> b!2720563 m!3120861))

(assert (=> b!2720563 m!3120861))

(declare-fun m!3120863 () Bool)

(assert (=> b!2720563 m!3120863))

(assert (=> b!2720561 m!3120849))

(assert (=> b!2720561 m!3120859))

(assert (=> b!2720561 m!3120859))

(assert (=> b!2720561 m!3120861))

(assert (=> b!2720561 m!3120861))

(declare-fun m!3120865 () Bool)

(assert (=> b!2720561 m!3120865))

(assert (=> b!2720562 m!3119325))

(assert (=> b!2720562 m!3120619))

(declare-fun m!3120867 () Bool)

(assert (=> b!2720566 m!3120867))

(assert (=> b!2719586 d!783888))

(assert (=> b!2719586 d!783794))

(assert (=> b!2719586 d!783796))

(declare-fun d!783890 () Bool)

(assert (=> d!783890 (= (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 input!603))) (v!33044 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 input!603))))))

(assert (=> b!2719586 d!783890))

(assert (=> b!2719586 d!783564))

(declare-fun d!783892 () Bool)

(assert (=> d!783892 (= (inv!42617 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467))))) (isBalanced!2978 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467)))))))))

(declare-fun bs!488411 () Bool)

(assert (= bs!488411 d!783892))

(declare-fun m!3120869 () Bool)

(assert (=> bs!488411 m!3120869))

(assert (=> tb!151845 d!783892))

(declare-fun d!783894 () Bool)

(declare-fun lt!962885 () Int)

(assert (=> d!783894 (= lt!962885 (size!24205 (list!11894 (_2!18166 lt!962556))))))

(assert (=> d!783894 (= lt!962885 (size!24211 (c!439466 (_2!18166 lt!962556))))))

(assert (=> d!783894 (= (size!24203 (_2!18166 lt!962556)) lt!962885)))

(declare-fun bs!488412 () Bool)

(assert (= bs!488412 d!783894))

(assert (=> bs!488412 m!3119505))

(assert (=> bs!488412 m!3119505))

(declare-fun m!3120871 () Bool)

(assert (=> bs!488412 m!3120871))

(declare-fun m!3120873 () Bool)

(assert (=> bs!488412 m!3120873))

(assert (=> b!2719634 d!783894))

(declare-fun d!783896 () Bool)

(declare-fun lt!962886 () Int)

(assert (=> d!783896 (= lt!962886 (size!24205 (list!11894 input!603)))))

(assert (=> d!783896 (= lt!962886 (size!24211 (c!439466 input!603)))))

(assert (=> d!783896 (= (size!24203 input!603) lt!962886)))

(declare-fun bs!488413 () Bool)

(assert (= bs!488413 d!783896))

(assert (=> bs!488413 m!3119325))

(assert (=> bs!488413 m!3119325))

(assert (=> bs!488413 m!3119773))

(declare-fun m!3120875 () Bool)

(assert (=> bs!488413 m!3120875))

(assert (=> b!2719634 d!783896))

(declare-fun d!783898 () Bool)

(declare-fun c!439727 () Bool)

(assert (=> d!783898 (= c!439727 (is-Nil!31376 lt!962589))))

(declare-fun e!1714603 () (Set C!16066))

(assert (=> d!783898 (= (content!4444 lt!962589) e!1714603)))

(declare-fun b!2720570 () Bool)

(assert (=> b!2720570 (= e!1714603 (as set.empty (Set C!16066)))))

(declare-fun b!2720571 () Bool)

(assert (=> b!2720571 (= e!1714603 (set.union (set.insert (h!36796 lt!962589) (as set.empty (Set C!16066))) (content!4444 (t!226340 lt!962589))))))

(assert (= (and d!783898 c!439727) b!2720570))

(assert (= (and d!783898 (not c!439727)) b!2720571))

(declare-fun m!3120877 () Bool)

(assert (=> b!2720571 m!3120877))

(declare-fun m!3120879 () Bool)

(assert (=> b!2720571 m!3120879))

(assert (=> d!783524 d!783898))

(assert (=> d!783524 d!783686))

(assert (=> d!783524 d!783772))

(declare-fun d!783900 () Bool)

(declare-fun c!439728 () Bool)

(assert (=> d!783900 (= c!439728 (is-Node!9832 (left!24123 (c!439468 acc!331))))))

(declare-fun e!1714604 () Bool)

(assert (=> d!783900 (= (inv!42615 (left!24123 (c!439468 acc!331))) e!1714604)))

(declare-fun b!2720572 () Bool)

(assert (=> b!2720572 (= e!1714604 (inv!42627 (left!24123 (c!439468 acc!331))))))

(declare-fun b!2720573 () Bool)

(declare-fun e!1714605 () Bool)

(assert (=> b!2720573 (= e!1714604 e!1714605)))

(declare-fun res!1142683 () Bool)

(assert (=> b!2720573 (= res!1142683 (not (is-Leaf!14978 (left!24123 (c!439468 acc!331)))))))

(assert (=> b!2720573 (=> res!1142683 e!1714605)))

(declare-fun b!2720574 () Bool)

(assert (=> b!2720574 (= e!1714605 (inv!42628 (left!24123 (c!439468 acc!331))))))

(assert (= (and d!783900 c!439728) b!2720572))

(assert (= (and d!783900 (not c!439728)) b!2720573))

(assert (= (and b!2720573 (not res!1142683)) b!2720574))

(declare-fun m!3120881 () Bool)

(assert (=> b!2720572 m!3120881))

(declare-fun m!3120883 () Bool)

(assert (=> b!2720574 m!3120883))

(assert (=> b!2719800 d!783900))

(declare-fun d!783902 () Bool)

(declare-fun c!439729 () Bool)

(assert (=> d!783902 (= c!439729 (is-Node!9832 (right!24453 (c!439468 acc!331))))))

(declare-fun e!1714606 () Bool)

(assert (=> d!783902 (= (inv!42615 (right!24453 (c!439468 acc!331))) e!1714606)))

(declare-fun b!2720575 () Bool)

(assert (=> b!2720575 (= e!1714606 (inv!42627 (right!24453 (c!439468 acc!331))))))

(declare-fun b!2720576 () Bool)

(declare-fun e!1714607 () Bool)

(assert (=> b!2720576 (= e!1714606 e!1714607)))

(declare-fun res!1142684 () Bool)

(assert (=> b!2720576 (= res!1142684 (not (is-Leaf!14978 (right!24453 (c!439468 acc!331)))))))

(assert (=> b!2720576 (=> res!1142684 e!1714607)))

(declare-fun b!2720577 () Bool)

(assert (=> b!2720577 (= e!1714607 (inv!42628 (right!24453 (c!439468 acc!331))))))

(assert (= (and d!783902 c!439729) b!2720575))

(assert (= (and d!783902 (not c!439729)) b!2720576))

(assert (= (and b!2720576 (not res!1142684)) b!2720577))

(declare-fun m!3120885 () Bool)

(assert (=> b!2720575 m!3120885))

(declare-fun m!3120887 () Bool)

(assert (=> b!2720577 m!3120887))

(assert (=> b!2719800 d!783902))

(assert (=> b!2719582 d!783650))

(assert (=> b!2719488 d!783542))

(declare-fun d!783904 () Bool)

(declare-fun res!1142685 () Bool)

(declare-fun e!1714608 () Bool)

(assert (=> d!783904 (=> (not res!1142685) (not e!1714608))))

(assert (=> d!783904 (= res!1142685 (<= (size!24205 (list!11902 (xs!12906 (c!439466 treated!9)))) 512))))

(assert (=> d!783904 (= (inv!42626 (c!439466 treated!9)) e!1714608)))

(declare-fun b!2720578 () Bool)

(declare-fun res!1142686 () Bool)

(assert (=> b!2720578 (=> (not res!1142686) (not e!1714608))))

(assert (=> b!2720578 (= res!1142686 (= (csize!19893 (c!439466 treated!9)) (size!24205 (list!11902 (xs!12906 (c!439466 treated!9))))))))

(declare-fun b!2720579 () Bool)

(assert (=> b!2720579 (= e!1714608 (and (> (csize!19893 (c!439466 treated!9)) 0) (<= (csize!19893 (c!439466 treated!9)) 512)))))

(assert (= (and d!783904 res!1142685) b!2720578))

(assert (= (and b!2720578 res!1142686) b!2720579))

(assert (=> d!783904 m!3120813))

(assert (=> d!783904 m!3120813))

(declare-fun m!3120889 () Bool)

(assert (=> d!783904 m!3120889))

(assert (=> b!2720578 m!3120813))

(assert (=> b!2720578 m!3120813))

(assert (=> b!2720578 m!3120889))

(assert (=> b!2719723 d!783904))

(declare-fun d!783906 () Bool)

(declare-fun res!1142691 () Bool)

(declare-fun e!1714611 () Bool)

(assert (=> d!783906 (=> (not res!1142691) (not e!1714611))))

(assert (=> d!783906 (= res!1142691 (<= (size!24206 (list!11903 (xs!12907 (c!439468 acc!331)))) 512))))

(assert (=> d!783906 (= (inv!42628 (c!439468 acc!331)) e!1714611)))

(declare-fun b!2720584 () Bool)

(declare-fun res!1142692 () Bool)

(assert (=> b!2720584 (=> (not res!1142692) (not e!1714611))))

(assert (=> b!2720584 (= res!1142692 (= (csize!19895 (c!439468 acc!331)) (size!24206 (list!11903 (xs!12907 (c!439468 acc!331))))))))

(declare-fun b!2720585 () Bool)

(assert (=> b!2720585 (= e!1714611 (and (> (csize!19895 (c!439468 acc!331)) 0) (<= (csize!19895 (c!439468 acc!331)) 512)))))

(assert (= (and d!783906 res!1142691) b!2720584))

(assert (= (and b!2720584 res!1142692) b!2720585))

(assert (=> d!783906 m!3120357))

(assert (=> d!783906 m!3120357))

(declare-fun m!3120891 () Bool)

(assert (=> d!783906 m!3120891))

(assert (=> b!2720584 m!3120357))

(assert (=> b!2720584 m!3120357))

(assert (=> b!2720584 m!3120891))

(assert (=> b!2719745 d!783906))

(declare-fun d!783908 () Bool)

(declare-fun c!439730 () Bool)

(assert (=> d!783908 (= c!439730 (is-Node!9831 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467)))))))))

(declare-fun e!1714612 () Bool)

(assert (=> d!783908 (= (inv!42616 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467)))))) e!1714612)))

(declare-fun b!2720586 () Bool)

(assert (=> b!2720586 (= e!1714612 (inv!42625 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467)))))))))

(declare-fun b!2720587 () Bool)

(declare-fun e!1714613 () Bool)

(assert (=> b!2720587 (= e!1714612 e!1714613)))

(declare-fun res!1142693 () Bool)

(assert (=> b!2720587 (= res!1142693 (not (is-Leaf!14977 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467))))))))))

(assert (=> b!2720587 (=> res!1142693 e!1714613)))

(declare-fun b!2720588 () Bool)

(assert (=> b!2720588 (= e!1714613 (inv!42626 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467)))))))))

(assert (= (and d!783908 c!439730) b!2720586))

(assert (= (and d!783908 (not c!439730)) b!2720587))

(assert (= (and b!2720587 (not res!1142693)) b!2720588))

(declare-fun m!3120893 () Bool)

(assert (=> b!2720586 m!3120893))

(declare-fun m!3120895 () Bool)

(assert (=> b!2720588 m!3120895))

(assert (=> b!2719662 d!783908))

(assert (=> b!2719703 d!783760))

(assert (=> b!2719703 d!783526))

(declare-fun d!783910 () Bool)

(declare-fun lt!962887 () Bool)

(assert (=> d!783910 (= lt!962887 (isEmpty!17903 (list!11895 (_1!18166 lt!962556))))))

(assert (=> d!783910 (= lt!962887 (isEmpty!17912 (c!439468 (_1!18166 lt!962556))))))

(assert (=> d!783910 (= (isEmpty!17907 (_1!18166 lt!962556)) lt!962887)))

(declare-fun bs!488414 () Bool)

(assert (= bs!488414 d!783910))

(assert (=> bs!488414 m!3119511))

(assert (=> bs!488414 m!3119511))

(declare-fun m!3120897 () Bool)

(assert (=> bs!488414 m!3120897))

(declare-fun m!3120899 () Bool)

(assert (=> bs!488414 m!3120899))

(assert (=> b!2719630 d!783910))

(declare-fun d!783912 () Bool)

(declare-fun lt!962888 () Int)

(assert (=> d!783912 (>= lt!962888 0)))

(declare-fun e!1714614 () Int)

(assert (=> d!783912 (= lt!962888 e!1714614)))

(declare-fun c!439731 () Bool)

(assert (=> d!783912 (= c!439731 (is-Nil!31376 lt!962572))))

(assert (=> d!783912 (= (size!24205 lt!962572) lt!962888)))

(declare-fun b!2720589 () Bool)

(assert (=> b!2720589 (= e!1714614 0)))

(declare-fun b!2720590 () Bool)

(assert (=> b!2720590 (= e!1714614 (+ 1 (size!24205 (t!226340 lt!962572))))))

(assert (= (and d!783912 c!439731) b!2720589))

(assert (= (and d!783912 (not c!439731)) b!2720590))

(declare-fun m!3120901 () Bool)

(assert (=> b!2720590 m!3120901))

(assert (=> b!2719673 d!783912))

(assert (=> b!2719673 d!783852))

(declare-fun d!783914 () Bool)

(declare-fun lt!962889 () Int)

(assert (=> d!783914 (>= lt!962889 0)))

(declare-fun e!1714615 () Int)

(assert (=> d!783914 (= lt!962889 e!1714615)))

(declare-fun c!439732 () Bool)

(assert (=> d!783914 (= c!439732 (is-Nil!31376 (++!7816 lt!962464 lt!962459)))))

(assert (=> d!783914 (= (size!24205 (++!7816 lt!962464 lt!962459)) lt!962889)))

(declare-fun b!2720591 () Bool)

(assert (=> b!2720591 (= e!1714615 0)))

(declare-fun b!2720592 () Bool)

(assert (=> b!2720592 (= e!1714615 (+ 1 (size!24205 (t!226340 (++!7816 lt!962464 lt!962459)))))))

(assert (= (and d!783914 c!439732) b!2720591))

(assert (= (and d!783914 (not c!439732)) b!2720592))

(declare-fun m!3120903 () Bool)

(assert (=> b!2720592 m!3120903))

(assert (=> b!2719673 d!783914))

(assert (=> b!2719640 d!783658))

(assert (=> b!2719640 d!783560))

(declare-fun d!783916 () Bool)

(declare-fun lt!962890 () Int)

(assert (=> d!783916 (= lt!962890 (size!24206 (list!11895 (_1!18166 lt!962556))))))

(assert (=> d!783916 (= lt!962890 (size!24212 (c!439468 (_1!18166 lt!962556))))))

(assert (=> d!783916 (= (size!24204 (_1!18166 lt!962556)) lt!962890)))

(declare-fun bs!488415 () Bool)

(assert (= bs!488415 d!783916))

(assert (=> bs!488415 m!3119511))

(assert (=> bs!488415 m!3119511))

(declare-fun m!3120905 () Bool)

(assert (=> bs!488415 m!3120905))

(declare-fun m!3120907 () Bool)

(assert (=> bs!488415 m!3120907))

(assert (=> d!783472 d!783916))

(assert (=> d!783472 d!783462))

(declare-fun b!2720593 () Bool)

(declare-fun res!1142695 () Bool)

(declare-fun e!1714617 () Bool)

(assert (=> b!2720593 (=> (not res!1142695) (not e!1714617))))

(assert (=> b!2720593 (= res!1142695 (isBalanced!2977 (right!24453 (c!439468 acc!331))))))

(declare-fun b!2720594 () Bool)

(declare-fun res!1142694 () Bool)

(assert (=> b!2720594 (=> (not res!1142694) (not e!1714617))))

(assert (=> b!2720594 (= res!1142694 (not (isEmpty!17912 (left!24123 (c!439468 acc!331)))))))

(declare-fun b!2720595 () Bool)

(declare-fun res!1142699 () Bool)

(assert (=> b!2720595 (=> (not res!1142699) (not e!1714617))))

(assert (=> b!2720595 (= res!1142699 (<= (- (height!1457 (left!24123 (c!439468 acc!331))) (height!1457 (right!24453 (c!439468 acc!331)))) 1))))

(declare-fun b!2720596 () Bool)

(assert (=> b!2720596 (= e!1714617 (not (isEmpty!17912 (right!24453 (c!439468 acc!331)))))))

(declare-fun b!2720597 () Bool)

(declare-fun e!1714616 () Bool)

(assert (=> b!2720597 (= e!1714616 e!1714617)))

(declare-fun res!1142697 () Bool)

(assert (=> b!2720597 (=> (not res!1142697) (not e!1714617))))

(assert (=> b!2720597 (= res!1142697 (<= (- 1) (- (height!1457 (left!24123 (c!439468 acc!331))) (height!1457 (right!24453 (c!439468 acc!331))))))))

(declare-fun d!783918 () Bool)

(declare-fun res!1142698 () Bool)

(assert (=> d!783918 (=> res!1142698 e!1714616)))

(assert (=> d!783918 (= res!1142698 (not (is-Node!9832 (c!439468 acc!331))))))

(assert (=> d!783918 (= (isBalanced!2977 (c!439468 acc!331)) e!1714616)))

(declare-fun b!2720598 () Bool)

(declare-fun res!1142696 () Bool)

(assert (=> b!2720598 (=> (not res!1142696) (not e!1714617))))

(assert (=> b!2720598 (= res!1142696 (isBalanced!2977 (left!24123 (c!439468 acc!331))))))

(assert (= (and d!783918 (not res!1142698)) b!2720597))

(assert (= (and b!2720597 res!1142697) b!2720595))

(assert (= (and b!2720595 res!1142699) b!2720598))

(assert (= (and b!2720598 res!1142696) b!2720593))

(assert (= (and b!2720593 res!1142695) b!2720594))

(assert (= (and b!2720594 res!1142694) b!2720596))

(assert (=> b!2720597 m!3120375))

(assert (=> b!2720597 m!3120503))

(declare-fun m!3120909 () Bool)

(assert (=> b!2720594 m!3120909))

(assert (=> b!2720595 m!3120375))

(assert (=> b!2720595 m!3120503))

(declare-fun m!3120911 () Bool)

(assert (=> b!2720593 m!3120911))

(declare-fun m!3120913 () Bool)

(assert (=> b!2720596 m!3120913))

(declare-fun m!3120915 () Bool)

(assert (=> b!2720598 m!3120915))

(assert (=> d!783536 d!783918))

(declare-fun b!2720599 () Bool)

(declare-fun e!1714619 () List!31476)

(assert (=> b!2720599 (= e!1714619 lt!962459)))

(declare-fun b!2720601 () Bool)

(declare-fun res!1142700 () Bool)

(declare-fun e!1714618 () Bool)

(assert (=> b!2720601 (=> (not res!1142700) (not e!1714618))))

(declare-fun lt!962891 () List!31476)

(assert (=> b!2720601 (= res!1142700 (= (size!24205 lt!962891) (+ (size!24205 (t!226340 (++!7816 lt!962458 lt!962464))) (size!24205 lt!962459))))))

(declare-fun d!783920 () Bool)

(assert (=> d!783920 e!1714618))

(declare-fun res!1142701 () Bool)

(assert (=> d!783920 (=> (not res!1142701) (not e!1714618))))

(assert (=> d!783920 (= res!1142701 (= (content!4444 lt!962891) (set.union (content!4444 (t!226340 (++!7816 lt!962458 lt!962464))) (content!4444 lt!962459))))))

(assert (=> d!783920 (= lt!962891 e!1714619)))

(declare-fun c!439733 () Bool)

(assert (=> d!783920 (= c!439733 (is-Nil!31376 (t!226340 (++!7816 lt!962458 lt!962464))))))

(assert (=> d!783920 (= (++!7816 (t!226340 (++!7816 lt!962458 lt!962464)) lt!962459) lt!962891)))

(declare-fun b!2720602 () Bool)

(assert (=> b!2720602 (= e!1714618 (or (not (= lt!962459 Nil!31376)) (= lt!962891 (t!226340 (++!7816 lt!962458 lt!962464)))))))

(declare-fun b!2720600 () Bool)

(assert (=> b!2720600 (= e!1714619 (Cons!31376 (h!36796 (t!226340 (++!7816 lt!962458 lt!962464))) (++!7816 (t!226340 (t!226340 (++!7816 lt!962458 lt!962464))) lt!962459)))))

(assert (= (and d!783920 c!439733) b!2720599))

(assert (= (and d!783920 (not c!439733)) b!2720600))

(assert (= (and d!783920 res!1142701) b!2720601))

(assert (= (and b!2720601 res!1142700) b!2720602))

(declare-fun m!3120917 () Bool)

(assert (=> b!2720601 m!3120917))

(assert (=> b!2720601 m!3120689))

(assert (=> b!2720601 m!3119639))

(declare-fun m!3120919 () Bool)

(assert (=> d!783920 m!3120919))

(assert (=> d!783920 m!3120767))

(assert (=> d!783920 m!3119645))

(declare-fun m!3120921 () Bool)

(assert (=> b!2720600 m!3120921))

(assert (=> b!2719691 d!783920))

(declare-fun b!2720603 () Bool)

(declare-fun e!1714621 () List!31476)

(assert (=> b!2720603 (= e!1714621 lt!962464)))

(declare-fun b!2720605 () Bool)

(declare-fun res!1142702 () Bool)

(declare-fun e!1714620 () Bool)

(assert (=> b!2720605 (=> (not res!1142702) (not e!1714620))))

(declare-fun lt!962892 () List!31476)

(assert (=> b!2720605 (= res!1142702 (= (size!24205 lt!962892) (+ (size!24205 (t!226340 lt!962458)) (size!24205 lt!962464))))))

(declare-fun d!783922 () Bool)

(assert (=> d!783922 e!1714620))

(declare-fun res!1142703 () Bool)

(assert (=> d!783922 (=> (not res!1142703) (not e!1714620))))

(assert (=> d!783922 (= res!1142703 (= (content!4444 lt!962892) (set.union (content!4444 (t!226340 lt!962458)) (content!4444 lt!962464))))))

(assert (=> d!783922 (= lt!962892 e!1714621)))

(declare-fun c!439734 () Bool)

(assert (=> d!783922 (= c!439734 (is-Nil!31376 (t!226340 lt!962458)))))

(assert (=> d!783922 (= (++!7816 (t!226340 lt!962458) lt!962464) lt!962892)))

(declare-fun b!2720606 () Bool)

(assert (=> b!2720606 (= e!1714620 (or (not (= lt!962464 Nil!31376)) (= lt!962892 (t!226340 lt!962458))))))

(declare-fun b!2720604 () Bool)

(assert (=> b!2720604 (= e!1714621 (Cons!31376 (h!36796 (t!226340 lt!962458)) (++!7816 (t!226340 (t!226340 lt!962458)) lt!962464)))))

(assert (= (and d!783922 c!439734) b!2720603))

(assert (= (and d!783922 (not c!439734)) b!2720604))

(assert (= (and d!783922 res!1142703) b!2720605))

(assert (= (and b!2720605 res!1142702) b!2720606))

(declare-fun m!3120923 () Bool)

(assert (=> b!2720605 m!3120923))

(assert (=> b!2720605 m!3120119))

(assert (=> b!2720605 m!3119683))

(declare-fun m!3120925 () Bool)

(assert (=> d!783922 m!3120925))

(assert (=> d!783922 m!3120123))

(assert (=> d!783922 m!3119687))

(declare-fun m!3120927 () Bool)

(assert (=> b!2720604 m!3120927))

(assert (=> b!2719714 d!783922))

(declare-fun d!783924 () Bool)

(declare-fun res!1142704 () Bool)

(declare-fun e!1714622 () Bool)

(assert (=> d!783924 (=> (not res!1142704) (not e!1714622))))

(assert (=> d!783924 (= res!1142704 (= (csize!19892 (c!439466 totalInput!328)) (+ (size!24211 (left!24122 (c!439466 totalInput!328))) (size!24211 (right!24452 (c!439466 totalInput!328))))))))

(assert (=> d!783924 (= (inv!42625 (c!439466 totalInput!328)) e!1714622)))

(declare-fun b!2720607 () Bool)

(declare-fun res!1142705 () Bool)

(assert (=> b!2720607 (=> (not res!1142705) (not e!1714622))))

(assert (=> b!2720607 (= res!1142705 (and (not (= (left!24122 (c!439466 totalInput!328)) Empty!9831)) (not (= (right!24452 (c!439466 totalInput!328)) Empty!9831))))))

(declare-fun b!2720608 () Bool)

(declare-fun res!1142706 () Bool)

(assert (=> b!2720608 (=> (not res!1142706) (not e!1714622))))

(assert (=> b!2720608 (= res!1142706 (= (cheight!10042 (c!439466 totalInput!328)) (+ (max!0 (height!1459 (left!24122 (c!439466 totalInput!328))) (height!1459 (right!24452 (c!439466 totalInput!328)))) 1)))))

(declare-fun b!2720609 () Bool)

(assert (=> b!2720609 (= e!1714622 (<= 0 (cheight!10042 (c!439466 totalInput!328))))))

(assert (= (and d!783924 res!1142704) b!2720607))

(assert (= (and b!2720607 res!1142705) b!2720608))

(assert (= (and b!2720608 res!1142706) b!2720609))

(declare-fun m!3120929 () Bool)

(assert (=> d!783924 m!3120929))

(declare-fun m!3120931 () Bool)

(assert (=> d!783924 m!3120931))

(declare-fun m!3120933 () Bool)

(assert (=> b!2720608 m!3120933))

(declare-fun m!3120935 () Bool)

(assert (=> b!2720608 m!3120935))

(assert (=> b!2720608 m!3120933))

(assert (=> b!2720608 m!3120935))

(declare-fun m!3120937 () Bool)

(assert (=> b!2720608 m!3120937))

(assert (=> b!2719555 d!783924))

(assert (=> b!2719589 d!783794))

(assert (=> b!2719589 d!783798))

(assert (=> b!2719589 d!783800))

(assert (=> b!2719589 d!783564))

(declare-fun d!783926 () Bool)

(assert (=> d!783926 (= (list!11895 (_1!18166 lt!962559)) (list!11899 (c!439468 (_1!18166 lt!962559))))))

(declare-fun bs!488416 () Bool)

(assert (= bs!488416 d!783926))

(declare-fun m!3120939 () Bool)

(assert (=> bs!488416 m!3120939))

(assert (=> b!2719635 d!783926))

(assert (=> b!2719635 d!783660))

(assert (=> b!2719635 d!783560))

(declare-fun d!783928 () Bool)

(assert (=> d!783928 (isPrefix!2486 lt!962536 lt!962537)))

(declare-fun lt!962895 () Unit!45389)

(declare-fun choose!15978 (List!31476 List!31476) Unit!45389)

(assert (=> d!783928 (= lt!962895 (choose!15978 lt!962536 lt!962537))))

(assert (=> d!783928 (= (lemmaIsPrefixRefl!1612 lt!962536 lt!962537) lt!962895)))

(declare-fun bs!488417 () Bool)

(assert (= bs!488417 d!783928))

(assert (=> bs!488417 m!3119449))

(declare-fun m!3120941 () Bool)

(assert (=> bs!488417 m!3120941))

(assert (=> d!783462 d!783928))

(declare-fun d!783930 () Bool)

(assert (=> d!783930 (= (isDefined!4900 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 input!603))) (not (isEmpty!17915 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 input!603)))))))

(declare-fun bs!488418 () Bool)

(assert (= bs!488418 d!783930))

(assert (=> bs!488418 m!3119453))

(declare-fun m!3120943 () Bool)

(assert (=> bs!488418 m!3120943))

(assert (=> d!783462 d!783930))

(declare-fun bs!488419 () Bool)

(declare-fun d!783932 () Bool)

(assert (= bs!488419 (and d!783932 d!783842)))

(declare-fun lambda!100606 () Int)

(assert (=> bs!488419 (= lambda!100606 lambda!100603)))

(assert (=> d!783932 true))

(declare-fun lt!962898 () Bool)

(assert (=> d!783932 (= lt!962898 (forall!6562 rules!1182 lambda!100606))))

(declare-fun e!1714627 () Bool)

(assert (=> d!783932 (= lt!962898 e!1714627)))

(declare-fun res!1142711 () Bool)

(assert (=> d!783932 (=> res!1142711 e!1714627)))

(assert (=> d!783932 (= res!1142711 (not (is-Cons!31377 rules!1182)))))

(assert (=> d!783932 (= (rulesValidInductive!1670 thiss!11556 rules!1182) lt!962898)))

(declare-fun b!2720614 () Bool)

(declare-fun e!1714628 () Bool)

(assert (=> b!2720614 (= e!1714627 e!1714628)))

(declare-fun res!1142712 () Bool)

(assert (=> b!2720614 (=> (not res!1142712) (not e!1714628))))

(assert (=> b!2720614 (= res!1142712 (ruleValid!1568 thiss!11556 (h!36797 rules!1182)))))

(declare-fun b!2720615 () Bool)

(assert (=> b!2720615 (= e!1714628 (rulesValidInductive!1670 thiss!11556 (t!226341 rules!1182)))))

(assert (= (and d!783932 (not res!1142711)) b!2720614))

(assert (= (and b!2720614 res!1142712) b!2720615))

(declare-fun m!3120945 () Bool)

(assert (=> d!783932 m!3120945))

(assert (=> b!2720614 m!3120203))

(assert (=> b!2720615 m!3120603))

(assert (=> d!783462 d!783932))

(assert (=> d!783462 d!783564))

(assert (=> d!783462 d!783800))

(declare-fun b!2720629 () Bool)

(declare-fun e!1714635 () Bool)

(assert (=> b!2720629 (= e!1714635 (>= (size!24205 lt!962537) (size!24205 lt!962536)))))

(declare-fun b!2720625 () Bool)

(declare-fun res!1142724 () Bool)

(declare-fun e!1714637 () Bool)

(assert (=> b!2720625 (=> (not res!1142724) (not e!1714637))))

(declare-fun head!6097 (List!31476) C!16066)

(assert (=> b!2720625 (= res!1142724 (= (head!6097 lt!962536) (head!6097 lt!962537)))))

(declare-fun d!783934 () Bool)

(assert (=> d!783934 e!1714635))

(declare-fun res!1142722 () Bool)

(assert (=> d!783934 (=> res!1142722 e!1714635)))

(declare-fun lt!962902 () Bool)

(assert (=> d!783934 (= res!1142722 (not lt!962902))))

(declare-fun e!1714636 () Bool)

(assert (=> d!783934 (= lt!962902 e!1714636)))

(declare-fun res!1142723 () Bool)

(assert (=> d!783934 (=> res!1142723 e!1714636)))

(assert (=> d!783934 (= res!1142723 (is-Nil!31376 lt!962536))))

(assert (=> d!783934 (= (isPrefix!2486 lt!962536 lt!962537) lt!962902)))

(declare-fun b!2720624 () Bool)

(assert (=> b!2720624 (= e!1714636 e!1714637)))

(declare-fun res!1142721 () Bool)

(assert (=> b!2720624 (=> (not res!1142721) (not e!1714637))))

(assert (=> b!2720624 (= res!1142721 (not (is-Nil!31376 lt!962537)))))

(declare-fun b!2720626 () Bool)

(declare-fun tail!4335 (List!31476) List!31476)

(assert (=> b!2720626 (= e!1714637 (isPrefix!2486 (tail!4335 lt!962536) (tail!4335 lt!962537)))))

(assert (= (and d!783934 (not res!1142723)) b!2720624))

(assert (= (and b!2720624 res!1142721) b!2720625))

(assert (= (and b!2720625 res!1142724) b!2720626))

(assert (= (and d!783934 (not res!1142722)) b!2720629))

(declare-fun m!3120947 () Bool)

(assert (=> b!2720629 m!3120947))

(declare-fun m!3120949 () Bool)

(assert (=> b!2720629 m!3120949))

(declare-fun m!3120951 () Bool)

(assert (=> b!2720625 m!3120951))

(declare-fun m!3120953 () Bool)

(assert (=> b!2720625 m!3120953))

(declare-fun m!3120955 () Bool)

(assert (=> b!2720626 m!3120955))

(declare-fun m!3120957 () Bool)

(assert (=> b!2720626 m!3120957))

(assert (=> b!2720626 m!3120955))

(assert (=> b!2720626 m!3120957))

(declare-fun m!3120961 () Bool)

(assert (=> b!2720626 m!3120961))

(assert (=> d!783462 d!783934))

(assert (=> d!783462 d!783650))

(declare-fun d!783938 () Bool)

(declare-fun res!1142728 () Bool)

(declare-fun e!1714638 () Bool)

(assert (=> d!783938 (=> res!1142728 e!1714638)))

(assert (=> d!783938 (= res!1142728 (not (is-Node!9831 (c!439466 totalInput!328))))))

(assert (=> d!783938 (= (isBalanced!2978 (c!439466 totalInput!328)) e!1714638)))

(declare-fun b!2720630 () Bool)

(declare-fun res!1142726 () Bool)

(declare-fun e!1714639 () Bool)

(assert (=> b!2720630 (=> (not res!1142726) (not e!1714639))))

(assert (=> b!2720630 (= res!1142726 (isBalanced!2978 (left!24122 (c!439466 totalInput!328))))))

(declare-fun b!2720631 () Bool)

(declare-fun res!1142727 () Bool)

(assert (=> b!2720631 (=> (not res!1142727) (not e!1714639))))

(assert (=> b!2720631 (= res!1142727 (not (isEmpty!17911 (left!24122 (c!439466 totalInput!328)))))))

(declare-fun b!2720632 () Bool)

(declare-fun res!1142730 () Bool)

(assert (=> b!2720632 (=> (not res!1142730) (not e!1714639))))

(assert (=> b!2720632 (= res!1142730 (<= (- (height!1459 (left!24122 (c!439466 totalInput!328))) (height!1459 (right!24452 (c!439466 totalInput!328)))) 1))))

(declare-fun b!2720633 () Bool)

(assert (=> b!2720633 (= e!1714638 e!1714639)))

(declare-fun res!1142725 () Bool)

(assert (=> b!2720633 (=> (not res!1142725) (not e!1714639))))

(assert (=> b!2720633 (= res!1142725 (<= (- 1) (- (height!1459 (left!24122 (c!439466 totalInput!328))) (height!1459 (right!24452 (c!439466 totalInput!328))))))))

(declare-fun b!2720634 () Bool)

(declare-fun res!1142729 () Bool)

(assert (=> b!2720634 (=> (not res!1142729) (not e!1714639))))

(assert (=> b!2720634 (= res!1142729 (isBalanced!2978 (right!24452 (c!439466 totalInput!328))))))

(declare-fun b!2720635 () Bool)

(assert (=> b!2720635 (= e!1714639 (not (isEmpty!17911 (right!24452 (c!439466 totalInput!328)))))))

(assert (= (and d!783938 (not res!1142728)) b!2720633))

(assert (= (and b!2720633 res!1142725) b!2720632))

(assert (= (and b!2720632 res!1142730) b!2720630))

(assert (= (and b!2720630 res!1142726) b!2720634))

(assert (= (and b!2720634 res!1142729) b!2720631))

(assert (= (and b!2720631 res!1142727) b!2720635))

(declare-fun m!3120963 () Bool)

(assert (=> b!2720631 m!3120963))

(declare-fun m!3120965 () Bool)

(assert (=> b!2720630 m!3120965))

(declare-fun m!3120967 () Bool)

(assert (=> b!2720634 m!3120967))

(assert (=> b!2720633 m!3120933))

(assert (=> b!2720633 m!3120935))

(assert (=> b!2720632 m!3120933))

(assert (=> b!2720632 m!3120935))

(declare-fun m!3120969 () Bool)

(assert (=> b!2720635 m!3120969))

(assert (=> d!783534 d!783938))

(declare-fun d!783940 () Bool)

(declare-fun c!439735 () Bool)

(assert (=> d!783940 (= c!439735 (is-Node!9831 (left!24122 (c!439466 input!603))))))

(declare-fun e!1714640 () Bool)

(assert (=> d!783940 (= (inv!42616 (left!24122 (c!439466 input!603))) e!1714640)))

(declare-fun b!2720636 () Bool)

(assert (=> b!2720636 (= e!1714640 (inv!42625 (left!24122 (c!439466 input!603))))))

(declare-fun b!2720637 () Bool)

(declare-fun e!1714641 () Bool)

(assert (=> b!2720637 (= e!1714640 e!1714641)))

(declare-fun res!1142731 () Bool)

(assert (=> b!2720637 (= res!1142731 (not (is-Leaf!14977 (left!24122 (c!439466 input!603)))))))

(assert (=> b!2720637 (=> res!1142731 e!1714641)))

(declare-fun b!2720638 () Bool)

(assert (=> b!2720638 (= e!1714641 (inv!42626 (left!24122 (c!439466 input!603))))))

(assert (= (and d!783940 c!439735) b!2720636))

(assert (= (and d!783940 (not c!439735)) b!2720637))

(assert (= (and b!2720637 (not res!1142731)) b!2720638))

(declare-fun m!3120971 () Bool)

(assert (=> b!2720636 m!3120971))

(declare-fun m!3120973 () Bool)

(assert (=> b!2720638 m!3120973))

(assert (=> b!2719778 d!783940))

(declare-fun d!783942 () Bool)

(declare-fun c!439736 () Bool)

(assert (=> d!783942 (= c!439736 (is-Node!9831 (right!24452 (c!439466 input!603))))))

(declare-fun e!1714642 () Bool)

(assert (=> d!783942 (= (inv!42616 (right!24452 (c!439466 input!603))) e!1714642)))

(declare-fun b!2720639 () Bool)

(assert (=> b!2720639 (= e!1714642 (inv!42625 (right!24452 (c!439466 input!603))))))

(declare-fun b!2720640 () Bool)

(declare-fun e!1714643 () Bool)

(assert (=> b!2720640 (= e!1714642 e!1714643)))

(declare-fun res!1142732 () Bool)

(assert (=> b!2720640 (= res!1142732 (not (is-Leaf!14977 (right!24452 (c!439466 input!603)))))))

(assert (=> b!2720640 (=> res!1142732 e!1714643)))

(declare-fun b!2720641 () Bool)

(assert (=> b!2720641 (= e!1714643 (inv!42626 (right!24452 (c!439466 input!603))))))

(assert (= (and d!783942 c!439736) b!2720639))

(assert (= (and d!783942 (not c!439736)) b!2720640))

(assert (= (and b!2720640 (not res!1142732)) b!2720641))

(declare-fun m!3120975 () Bool)

(assert (=> b!2720639 m!3120975))

(declare-fun m!3120977 () Bool)

(assert (=> b!2720641 m!3120977))

(assert (=> b!2719778 d!783942))

(declare-fun d!783944 () Bool)

(assert (=> d!783944 (= (list!11895 (_1!18166 lt!962586)) (list!11899 (c!439468 (_1!18166 lt!962586))))))

(declare-fun bs!488421 () Bool)

(assert (= bs!488421 d!783944))

(declare-fun m!3120979 () Bool)

(assert (=> bs!488421 m!3120979))

(assert (=> b!2719698 d!783944))

(assert (=> b!2719698 d!783762))

(assert (=> b!2719698 d!783526))

(assert (=> b!2719735 d!783778))

(assert (=> b!2719735 d!783566))

(assert (=> b!2719585 d!783794))

(assert (=> b!2719585 d!783890))

(assert (=> b!2719585 d!783888))

(assert (=> b!2719585 d!783564))

(declare-fun d!783946 () Bool)

(declare-fun e!1714687 () Bool)

(assert (=> d!783946 e!1714687))

(declare-fun res!1142763 () Bool)

(assert (=> d!783946 (=> (not res!1142763) (not e!1714687))))

(declare-fun e!1714691 () Bool)

(assert (=> d!783946 (= res!1142763 e!1714691)))

(declare-fun res!1142770 () Bool)

(assert (=> d!783946 (=> res!1142770 e!1714691)))

(assert (=> d!783946 (= res!1142770 (not (is-Node!9832 (c!439468 acc!331))))))

(assert (=> d!783946 (= (appendAssocInst!692 (c!439468 acc!331) (c!439468 (_1!18166 lt!962466))) true)))

(declare-fun b!2720698 () Bool)

(declare-fun e!1714690 () Bool)

(declare-fun appendAssoc!200 (List!31478 List!31478 List!31478) Bool)

(assert (=> b!2720698 (= e!1714690 (appendAssoc!200 (list!11899 (left!24123 (c!439468 acc!331))) (list!11899 (left!24123 (right!24453 (c!439468 acc!331)))) (++!7815 (list!11899 (right!24453 (right!24453 (c!439468 acc!331)))) (list!11899 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun b!2720699 () Bool)

(declare-fun e!1714684 () Bool)

(declare-fun e!1714685 () Bool)

(assert (=> b!2720699 (= e!1714684 e!1714685)))

(declare-fun res!1142769 () Bool)

(assert (=> b!2720699 (=> (not res!1142769) (not e!1714685))))

(assert (=> b!2720699 (= res!1142769 (appendAssoc!200 (list!11899 (c!439468 acc!331)) (list!11899 (left!24123 (c!439468 (_1!18166 lt!962466)))) (list!11899 (right!24453 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun b!2720700 () Bool)

(declare-fun e!1714688 () Bool)

(declare-fun e!1714689 () Bool)

(assert (=> b!2720700 (= e!1714688 e!1714689)))

(declare-fun res!1142771 () Bool)

(assert (=> b!2720700 (=> (not res!1142771) (not e!1714689))))

(assert (=> b!2720700 (= res!1142771 (appendAssoc!200 (list!11899 (c!439468 acc!331)) (list!11899 (left!24123 (left!24123 (c!439468 (_1!18166 lt!962466))))) (list!11899 (right!24453 (left!24123 (c!439468 (_1!18166 lt!962466)))))))))

(declare-fun b!2720701 () Bool)

(assert (=> b!2720701 (= e!1714685 e!1714688)))

(declare-fun res!1142764 () Bool)

(assert (=> b!2720701 (=> res!1142764 e!1714688)))

(assert (=> b!2720701 (= res!1142764 (not (is-Node!9832 (left!24123 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun b!2720702 () Bool)

(assert (=> b!2720702 (= e!1714689 (appendAssoc!200 (++!7815 (list!11899 (c!439468 acc!331)) (list!11899 (left!24123 (left!24123 (c!439468 (_1!18166 lt!962466)))))) (list!11899 (right!24453 (left!24123 (c!439468 (_1!18166 lt!962466))))) (list!11899 (right!24453 (c!439468 (_1!18166 lt!962466))))))))

(declare-fun b!2720703 () Bool)

(declare-fun e!1714692 () Bool)

(assert (=> b!2720703 (= e!1714692 e!1714690)))

(declare-fun res!1142768 () Bool)

(assert (=> b!2720703 (=> (not res!1142768) (not e!1714690))))

(assert (=> b!2720703 (= res!1142768 (appendAssoc!200 (list!11899 (left!24123 (right!24453 (c!439468 acc!331)))) (list!11899 (right!24453 (right!24453 (c!439468 acc!331)))) (list!11899 (c!439468 (_1!18166 lt!962466)))))))

(declare-fun b!2720704 () Bool)

(assert (=> b!2720704 (= e!1714687 e!1714684)))

(declare-fun res!1142766 () Bool)

(assert (=> b!2720704 (=> res!1142766 e!1714684)))

(assert (=> b!2720704 (= res!1142766 (not (is-Node!9832 (c!439468 (_1!18166 lt!962466)))))))

(declare-fun b!2720705 () Bool)

(declare-fun e!1714686 () Bool)

(assert (=> b!2720705 (= e!1714686 e!1714692)))

(declare-fun res!1142767 () Bool)

(assert (=> b!2720705 (=> res!1142767 e!1714692)))

(assert (=> b!2720705 (= res!1142767 (not (is-Node!9832 (right!24453 (c!439468 acc!331)))))))

(declare-fun b!2720706 () Bool)

(assert (=> b!2720706 (= e!1714691 e!1714686)))

(declare-fun res!1142765 () Bool)

(assert (=> b!2720706 (=> (not res!1142765) (not e!1714686))))

(assert (=> b!2720706 (= res!1142765 (appendAssoc!200 (list!11899 (left!24123 (c!439468 acc!331))) (list!11899 (right!24453 (c!439468 acc!331))) (list!11899 (c!439468 (_1!18166 lt!962466)))))))

(assert (= (and d!783946 (not res!1142770)) b!2720706))

(assert (= (and b!2720706 res!1142765) b!2720705))

(assert (= (and b!2720705 (not res!1142767)) b!2720703))

(assert (= (and b!2720703 res!1142768) b!2720698))

(assert (= (and d!783946 res!1142763) b!2720704))

(assert (= (and b!2720704 (not res!1142766)) b!2720699))

(assert (= (and b!2720699 res!1142769) b!2720701))

(assert (= (and b!2720701 (not res!1142764)) b!2720700))

(assert (= (and b!2720700 res!1142771) b!2720702))

(assert (=> b!2720700 m!3119741))

(declare-fun m!3121039 () Bool)

(assert (=> b!2720700 m!3121039))

(declare-fun m!3121041 () Bool)

(assert (=> b!2720700 m!3121041))

(assert (=> b!2720700 m!3119741))

(assert (=> b!2720700 m!3121039))

(assert (=> b!2720700 m!3121041))

(declare-fun m!3121043 () Bool)

(assert (=> b!2720700 m!3121043))

(assert (=> b!2720699 m!3119741))

(declare-fun m!3121045 () Bool)

(assert (=> b!2720699 m!3121045))

(declare-fun m!3121047 () Bool)

(assert (=> b!2720699 m!3121047))

(assert (=> b!2720699 m!3119741))

(assert (=> b!2720699 m!3121045))

(assert (=> b!2720699 m!3121047))

(declare-fun m!3121049 () Bool)

(assert (=> b!2720699 m!3121049))

(declare-fun m!3121051 () Bool)

(assert (=> b!2720703 m!3121051))

(declare-fun m!3121053 () Bool)

(assert (=> b!2720703 m!3121053))

(assert (=> b!2720703 m!3120299))

(assert (=> b!2720703 m!3121051))

(assert (=> b!2720703 m!3121053))

(assert (=> b!2720703 m!3120299))

(declare-fun m!3121055 () Bool)

(assert (=> b!2720703 m!3121055))

(assert (=> b!2720702 m!3121039))

(assert (=> b!2720702 m!3121047))

(assert (=> b!2720702 m!3119741))

(assert (=> b!2720702 m!3121041))

(declare-fun m!3121057 () Bool)

(assert (=> b!2720702 m!3121057))

(assert (=> b!2720702 m!3121041))

(assert (=> b!2720702 m!3121047))

(declare-fun m!3121059 () Bool)

(assert (=> b!2720702 m!3121059))

(assert (=> b!2720702 m!3119741))

(assert (=> b!2720702 m!3121039))

(assert (=> b!2720702 m!3121057))

(assert (=> b!2720698 m!3121053))

(assert (=> b!2720698 m!3121053))

(assert (=> b!2720698 m!3120299))

(declare-fun m!3121061 () Bool)

(assert (=> b!2720698 m!3121061))

(assert (=> b!2720698 m!3120299))

(assert (=> b!2720698 m!3120833))

(assert (=> b!2720698 m!3120833))

(assert (=> b!2720698 m!3121051))

(assert (=> b!2720698 m!3121061))

(declare-fun m!3121063 () Bool)

(assert (=> b!2720698 m!3121063))

(assert (=> b!2720698 m!3121051))

(assert (=> b!2720706 m!3120833))

(assert (=> b!2720706 m!3120395))

(assert (=> b!2720706 m!3120299))

(assert (=> b!2720706 m!3120833))

(assert (=> b!2720706 m!3120395))

(assert (=> b!2720706 m!3120299))

(declare-fun m!3121065 () Bool)

(assert (=> b!2720706 m!3121065))

(assert (=> d!783486 d!783946))

(assert (=> d!783486 d!783706))

(declare-fun b!2720715 () Bool)

(declare-fun e!1714695 () List!31478)

(assert (=> b!2720715 (= e!1714695 Nil!31378)))

(declare-fun d!783980 () Bool)

(declare-fun c!439749 () Bool)

(assert (=> d!783980 (= c!439749 (is-Empty!9832 (c!439468 (append!820 acc!331 (_1!18167 (v!33039 lt!962467))))))))

(assert (=> d!783980 (= (list!11899 (c!439468 (append!820 acc!331 (_1!18167 (v!33039 lt!962467))))) e!1714695)))

(declare-fun b!2720718 () Bool)

(declare-fun e!1714696 () List!31478)

(assert (=> b!2720718 (= e!1714696 (++!7815 (list!11899 (left!24123 (c!439468 (append!820 acc!331 (_1!18167 (v!33039 lt!962467)))))) (list!11899 (right!24453 (c!439468 (append!820 acc!331 (_1!18167 (v!33039 lt!962467))))))))))

(declare-fun b!2720716 () Bool)

(assert (=> b!2720716 (= e!1714695 e!1714696)))

(declare-fun c!439750 () Bool)

(assert (=> b!2720716 (= c!439750 (is-Leaf!14978 (c!439468 (append!820 acc!331 (_1!18167 (v!33039 lt!962467))))))))

(declare-fun b!2720717 () Bool)

(assert (=> b!2720717 (= e!1714696 (list!11903 (xs!12907 (c!439468 (append!820 acc!331 (_1!18167 (v!33039 lt!962467)))))))))

(assert (= (and d!783980 c!439749) b!2720715))

(assert (= (and d!783980 (not c!439749)) b!2720716))

(assert (= (and b!2720716 c!439750) b!2720717))

(assert (= (and b!2720716 (not c!439750)) b!2720718))

(declare-fun m!3121067 () Bool)

(assert (=> b!2720718 m!3121067))

(declare-fun m!3121069 () Bool)

(assert (=> b!2720718 m!3121069))

(assert (=> b!2720718 m!3121067))

(assert (=> b!2720718 m!3121069))

(declare-fun m!3121071 () Bool)

(assert (=> b!2720718 m!3121071))

(declare-fun m!3121073 () Bool)

(assert (=> b!2720717 m!3121073))

(assert (=> d!783510 d!783980))

(declare-fun d!783982 () Bool)

(assert (=> d!783982 (= (list!11895 lt!962563) (list!11899 (c!439468 lt!962563)))))

(declare-fun bs!488427 () Bool)

(assert (= bs!488427 d!783982))

(declare-fun m!3121075 () Bool)

(assert (=> bs!488427 m!3121075))

(assert (=> b!2719657 d!783982))

(declare-fun b!2720720 () Bool)

(declare-fun e!1714697 () List!31478)

(assert (=> b!2720720 (= e!1714697 (Cons!31378 (h!36798 (list!11895 acc!331)) (++!7815 (t!226342 (list!11895 acc!331)) (list!11895 (_1!18166 lt!962466)))))))

(declare-fun b!2720719 () Bool)

(assert (=> b!2720719 (= e!1714697 (list!11895 (_1!18166 lt!962466)))))

(declare-fun d!783984 () Bool)

(declare-fun e!1714698 () Bool)

(assert (=> d!783984 e!1714698))

(declare-fun res!1142778 () Bool)

(assert (=> d!783984 (=> (not res!1142778) (not e!1714698))))

(declare-fun lt!962913 () List!31478)

(assert (=> d!783984 (= res!1142778 (= (content!4445 lt!962913) (set.union (content!4445 (list!11895 acc!331)) (content!4445 (list!11895 (_1!18166 lt!962466))))))))

(assert (=> d!783984 (= lt!962913 e!1714697)))

(declare-fun c!439751 () Bool)

(assert (=> d!783984 (= c!439751 (is-Nil!31378 (list!11895 acc!331)))))

(assert (=> d!783984 (= (++!7815 (list!11895 acc!331) (list!11895 (_1!18166 lt!962466))) lt!962913)))

(declare-fun b!2720721 () Bool)

(declare-fun res!1142779 () Bool)

(assert (=> b!2720721 (=> (not res!1142779) (not e!1714698))))

(assert (=> b!2720721 (= res!1142779 (= (size!24206 lt!962913) (+ (size!24206 (list!11895 acc!331)) (size!24206 (list!11895 (_1!18166 lt!962466))))))))

(declare-fun b!2720722 () Bool)

(assert (=> b!2720722 (= e!1714698 (or (not (= (list!11895 (_1!18166 lt!962466)) Nil!31378)) (= lt!962913 (list!11895 acc!331))))))

(assert (= (and d!783984 c!439751) b!2720719))

(assert (= (and d!783984 (not c!439751)) b!2720720))

(assert (= (and d!783984 res!1142778) b!2720721))

(assert (= (and b!2720721 res!1142779) b!2720722))

(assert (=> b!2720720 m!3119567))

(declare-fun m!3121077 () Bool)

(assert (=> b!2720720 m!3121077))

(declare-fun m!3121079 () Bool)

(assert (=> d!783984 m!3121079))

(assert (=> d!783984 m!3119245))

(assert (=> d!783984 m!3120463))

(assert (=> d!783984 m!3119567))

(declare-fun m!3121083 () Bool)

(assert (=> d!783984 m!3121083))

(declare-fun m!3121087 () Bool)

(assert (=> b!2720721 m!3121087))

(assert (=> b!2720721 m!3119245))

(assert (=> b!2720721 m!3120471))

(assert (=> b!2720721 m!3119567))

(declare-fun m!3121089 () Bool)

(assert (=> b!2720721 m!3121089))

(assert (=> b!2719657 d!783984))

(assert (=> b!2719657 d!783552))

(declare-fun d!783986 () Bool)

(assert (=> d!783986 (= (list!11895 (_1!18166 lt!962466)) (list!11899 (c!439468 (_1!18166 lt!962466))))))

(declare-fun bs!488428 () Bool)

(assert (= bs!488428 d!783986))

(assert (=> bs!488428 m!3120299))

(assert (=> b!2719657 d!783986))

(declare-fun d!783990 () Bool)

(declare-fun e!1714700 () Bool)

(assert (=> d!783990 e!1714700))

(declare-fun res!1142783 () Bool)

(assert (=> d!783990 (=> (not res!1142783) (not e!1714700))))

(assert (=> d!783990 (= res!1142783 (isBalanced!2977 (prepend!1134 (c!439468 (_1!18166 lt!962592)) (_1!18167 (v!33039 lt!962591)))))))

(declare-fun lt!962914 () BalanceConc!19278)

(assert (=> d!783990 (= lt!962914 (BalanceConc!19279 (prepend!1134 (c!439468 (_1!18166 lt!962592)) (_1!18167 (v!33039 lt!962591)))))))

(assert (=> d!783990 (= (prepend!1132 (_1!18166 lt!962592) (_1!18167 (v!33039 lt!962591))) lt!962914)))

(declare-fun b!2720726 () Bool)

(assert (=> b!2720726 (= e!1714700 (= (list!11895 lt!962914) (Cons!31378 (_1!18167 (v!33039 lt!962591)) (list!11895 (_1!18166 lt!962592)))))))

(assert (= (and d!783990 res!1142783) b!2720726))

(declare-fun m!3121093 () Bool)

(assert (=> d!783990 m!3121093))

(assert (=> d!783990 m!3121093))

(declare-fun m!3121095 () Bool)

(assert (=> d!783990 m!3121095))

(declare-fun m!3121097 () Bool)

(assert (=> b!2720726 m!3121097))

(declare-fun m!3121099 () Bool)

(assert (=> b!2720726 m!3121099))

(assert (=> b!2719731 d!783990))

(declare-fun b!2720727 () Bool)

(declare-fun res!1142784 () Bool)

(declare-fun e!1714701 () Bool)

(assert (=> b!2720727 (=> (not res!1142784) (not e!1714701))))

(declare-fun lt!962917 () tuple2!31068)

(assert (=> b!2720727 (= res!1142784 (= (list!11895 (_1!18166 lt!962917)) (_1!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962591)))))))))

(declare-fun b!2720728 () Bool)

(declare-fun e!1714704 () tuple2!31068)

(declare-fun lt!962916 () tuple2!31068)

(declare-fun lt!962915 () Option!6198)

(assert (=> b!2720728 (= e!1714704 (tuple2!31069 (prepend!1132 (_1!18166 lt!962916) (_1!18167 (v!33039 lt!962915))) (_2!18166 lt!962916)))))

(assert (=> b!2720728 (= lt!962916 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962915))))))

(declare-fun b!2720729 () Bool)

(declare-fun e!1714703 () Bool)

(assert (=> b!2720729 (= e!1714703 (not (isEmpty!17907 (_1!18166 lt!962917))))))

(declare-fun b!2720730 () Bool)

(assert (=> b!2720730 (= e!1714701 (= (list!11894 (_2!18166 lt!962917)) (_2!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962591)))))))))

(declare-fun b!2720731 () Bool)

(assert (=> b!2720731 (= e!1714704 (tuple2!31069 (BalanceConc!19279 Empty!9832) (_2!18167 (v!33039 lt!962591))))))

(declare-fun b!2720732 () Bool)

(declare-fun e!1714702 () Bool)

(assert (=> b!2720732 (= e!1714702 (= (list!11894 (_2!18166 lt!962917)) (list!11894 (_2!18167 (v!33039 lt!962591)))))))

(declare-fun b!2720733 () Bool)

(assert (=> b!2720733 (= e!1714702 e!1714703)))

(declare-fun res!1142786 () Bool)

(assert (=> b!2720733 (= res!1142786 (< (size!24203 (_2!18166 lt!962917)) (size!24203 (_2!18167 (v!33039 lt!962591)))))))

(assert (=> b!2720733 (=> (not res!1142786) (not e!1714703))))

(declare-fun d!783994 () Bool)

(assert (=> d!783994 e!1714701))

(declare-fun res!1142785 () Bool)

(assert (=> d!783994 (=> (not res!1142785) (not e!1714701))))

(assert (=> d!783994 (= res!1142785 e!1714702)))

(declare-fun c!439753 () Bool)

(assert (=> d!783994 (= c!439753 (> (size!24204 (_1!18166 lt!962917)) 0))))

(assert (=> d!783994 (= lt!962917 e!1714704)))

(declare-fun c!439752 () Bool)

(assert (=> d!783994 (= c!439752 (is-Some!6197 lt!962915))))

(assert (=> d!783994 (= lt!962915 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962591))))))

(assert (=> d!783994 (= (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962591))) lt!962917)))

(assert (= (and d!783994 c!439752) b!2720728))

(assert (= (and d!783994 (not c!439752)) b!2720731))

(assert (= (and d!783994 c!439753) b!2720733))

(assert (= (and d!783994 (not c!439753)) b!2720732))

(assert (= (and b!2720733 res!1142786) b!2720729))

(assert (= (and d!783994 res!1142785) b!2720727))

(assert (= (and b!2720727 res!1142784) b!2720730))

(declare-fun m!3121101 () Bool)

(assert (=> b!2720733 m!3121101))

(declare-fun m!3121103 () Bool)

(assert (=> b!2720733 m!3121103))

(declare-fun m!3121105 () Bool)

(assert (=> b!2720732 m!3121105))

(declare-fun m!3121107 () Bool)

(assert (=> b!2720732 m!3121107))

(declare-fun m!3121109 () Bool)

(assert (=> b!2720729 m!3121109))

(declare-fun m!3121111 () Bool)

(assert (=> d!783994 m!3121111))

(declare-fun m!3121113 () Bool)

(assert (=> d!783994 m!3121113))

(declare-fun m!3121115 () Bool)

(assert (=> b!2720727 m!3121115))

(assert (=> b!2720727 m!3121107))

(assert (=> b!2720727 m!3121107))

(declare-fun m!3121117 () Bool)

(assert (=> b!2720727 m!3121117))

(declare-fun m!3121119 () Bool)

(assert (=> b!2720728 m!3121119))

(declare-fun m!3121121 () Bool)

(assert (=> b!2720728 m!3121121))

(assert (=> b!2720730 m!3121105))

(assert (=> b!2720730 m!3121107))

(assert (=> b!2720730 m!3121107))

(assert (=> b!2720730 m!3121117))

(assert (=> b!2719731 d!783994))

(declare-fun d!783998 () Bool)

(declare-fun lt!962918 () Int)

(assert (=> d!783998 (>= lt!962918 0)))

(declare-fun e!1714705 () Int)

(assert (=> d!783998 (= lt!962918 e!1714705)))

(declare-fun c!439754 () Bool)

(assert (=> d!783998 (= c!439754 (is-Nil!31378 lt!962588))))

(assert (=> d!783998 (= (size!24206 lt!962588) lt!962918)))

(declare-fun b!2720734 () Bool)

(assert (=> b!2720734 (= e!1714705 0)))

(declare-fun b!2720735 () Bool)

(assert (=> b!2720735 (= e!1714705 (+ 1 (size!24206 (t!226342 lt!962588))))))

(assert (= (and d!783998 c!439754) b!2720734))

(assert (= (and d!783998 (not c!439754)) b!2720735))

(declare-fun m!3121123 () Bool)

(assert (=> b!2720735 m!3121123))

(assert (=> b!2719711 d!783998))

(declare-fun d!784000 () Bool)

(declare-fun lt!962919 () Int)

(assert (=> d!784000 (>= lt!962919 0)))

(declare-fun e!1714706 () Int)

(assert (=> d!784000 (= lt!962919 e!1714706)))

(declare-fun c!439755 () Bool)

(assert (=> d!784000 (= c!439755 (is-Nil!31378 (++!7815 lt!962457 lt!962468)))))

(assert (=> d!784000 (= (size!24206 (++!7815 lt!962457 lt!962468)) lt!962919)))

(declare-fun b!2720736 () Bool)

(assert (=> b!2720736 (= e!1714706 0)))

(declare-fun b!2720737 () Bool)

(assert (=> b!2720737 (= e!1714706 (+ 1 (size!24206 (t!226342 (++!7815 lt!962457 lt!962468)))))))

(assert (= (and d!784000 c!439755) b!2720736))

(assert (= (and d!784000 (not c!439755)) b!2720737))

(assert (=> b!2720737 m!3120169))

(assert (=> b!2719711 d!784000))

(assert (=> b!2719711 d!783666))

(declare-fun b!2720740 () Bool)

(declare-fun e!1714708 () List!31476)

(assert (=> b!2720740 (= e!1714708 (list!11902 (xs!12906 (c!439466 input!603))))))

(declare-fun b!2720741 () Bool)

(assert (=> b!2720741 (= e!1714708 (++!7816 (list!11898 (left!24122 (c!439466 input!603))) (list!11898 (right!24452 (c!439466 input!603)))))))

(declare-fun b!2720738 () Bool)

(declare-fun e!1714707 () List!31476)

(assert (=> b!2720738 (= e!1714707 Nil!31376)))

(declare-fun b!2720739 () Bool)

(assert (=> b!2720739 (= e!1714707 e!1714708)))

(declare-fun c!439757 () Bool)

(assert (=> b!2720739 (= c!439757 (is-Leaf!14977 (c!439466 input!603)))))

(declare-fun d!784002 () Bool)

(declare-fun c!439756 () Bool)

(assert (=> d!784002 (= c!439756 (is-Empty!9831 (c!439466 input!603)))))

(assert (=> d!784002 (= (list!11898 (c!439466 input!603)) e!1714707)))

(assert (= (and d!784002 c!439756) b!2720738))

(assert (= (and d!784002 (not c!439756)) b!2720739))

(assert (= (and b!2720739 c!439757) b!2720740))

(assert (= (and b!2720739 (not c!439757)) b!2720741))

(declare-fun m!3121125 () Bool)

(assert (=> b!2720740 m!3121125))

(declare-fun m!3121127 () Bool)

(assert (=> b!2720741 m!3121127))

(declare-fun m!3121129 () Bool)

(assert (=> b!2720741 m!3121129))

(assert (=> b!2720741 m!3121127))

(assert (=> b!2720741 m!3121129))

(declare-fun m!3121131 () Bool)

(assert (=> b!2720741 m!3121131))

(assert (=> d!783564 d!784002))

(declare-fun d!784004 () Bool)

(assert (=> d!784004 (= (inv!42629 (xs!12906 (c!439466 totalInput!328))) (<= (size!24205 (innerList!9891 (xs!12906 (c!439466 totalInput!328)))) 2147483647))))

(declare-fun bs!488429 () Bool)

(assert (= bs!488429 d!784004))

(declare-fun m!3121133 () Bool)

(assert (=> bs!488429 m!3121133))

(assert (=> b!2719776 d!784004))

(declare-fun d!784006 () Bool)

(declare-fun res!1142790 () Bool)

(declare-fun e!1714709 () Bool)

(assert (=> d!784006 (=> res!1142790 e!1714709)))

(assert (=> d!784006 (= res!1142790 (not (is-Node!9831 (c!439466 treated!9))))))

(assert (=> d!784006 (= (isBalanced!2978 (c!439466 treated!9)) e!1714709)))

(declare-fun b!2720742 () Bool)

(declare-fun res!1142788 () Bool)

(declare-fun e!1714710 () Bool)

(assert (=> b!2720742 (=> (not res!1142788) (not e!1714710))))

(assert (=> b!2720742 (= res!1142788 (isBalanced!2978 (left!24122 (c!439466 treated!9))))))

(declare-fun b!2720743 () Bool)

(declare-fun res!1142789 () Bool)

(assert (=> b!2720743 (=> (not res!1142789) (not e!1714710))))

(assert (=> b!2720743 (= res!1142789 (not (isEmpty!17911 (left!24122 (c!439466 treated!9)))))))

(declare-fun b!2720744 () Bool)

(declare-fun res!1142792 () Bool)

(assert (=> b!2720744 (=> (not res!1142792) (not e!1714710))))

(assert (=> b!2720744 (= res!1142792 (<= (- (height!1459 (left!24122 (c!439466 treated!9))) (height!1459 (right!24452 (c!439466 treated!9)))) 1))))

(declare-fun b!2720745 () Bool)

(assert (=> b!2720745 (= e!1714709 e!1714710)))

(declare-fun res!1142787 () Bool)

(assert (=> b!2720745 (=> (not res!1142787) (not e!1714710))))

(assert (=> b!2720745 (= res!1142787 (<= (- 1) (- (height!1459 (left!24122 (c!439466 treated!9))) (height!1459 (right!24452 (c!439466 treated!9))))))))

(declare-fun b!2720746 () Bool)

(declare-fun res!1142791 () Bool)

(assert (=> b!2720746 (=> (not res!1142791) (not e!1714710))))

(assert (=> b!2720746 (= res!1142791 (isBalanced!2978 (right!24452 (c!439466 treated!9))))))

(declare-fun b!2720747 () Bool)

(assert (=> b!2720747 (= e!1714710 (not (isEmpty!17911 (right!24452 (c!439466 treated!9)))))))

(assert (= (and d!784006 (not res!1142790)) b!2720745))

(assert (= (and b!2720745 res!1142787) b!2720744))

(assert (= (and b!2720744 res!1142792) b!2720742))

(assert (= (and b!2720742 res!1142788) b!2720746))

(assert (= (and b!2720746 res!1142791) b!2720743))

(assert (= (and b!2720743 res!1142789) b!2720747))

(declare-fun m!3121135 () Bool)

(assert (=> b!2720743 m!3121135))

(declare-fun m!3121137 () Bool)

(assert (=> b!2720742 m!3121137))

(declare-fun m!3121139 () Bool)

(assert (=> b!2720746 m!3121139))

(assert (=> b!2720745 m!3120411))

(assert (=> b!2720745 m!3120413))

(assert (=> b!2720744 m!3120411))

(assert (=> b!2720744 m!3120413))

(declare-fun m!3121141 () Bool)

(assert (=> b!2720747 m!3121141))

(assert (=> d!783530 d!784006))

(declare-fun d!784008 () Bool)

(declare-fun res!1142793 () Bool)

(declare-fun e!1714711 () Bool)

(assert (=> d!784008 (=> (not res!1142793) (not e!1714711))))

(assert (=> d!784008 (= res!1142793 (<= (size!24205 (list!11902 (xs!12906 (c!439466 input!603)))) 512))))

(assert (=> d!784008 (= (inv!42626 (c!439466 input!603)) e!1714711)))

(declare-fun b!2720748 () Bool)

(declare-fun res!1142794 () Bool)

(assert (=> b!2720748 (=> (not res!1142794) (not e!1714711))))

(assert (=> b!2720748 (= res!1142794 (= (csize!19893 (c!439466 input!603)) (size!24205 (list!11902 (xs!12906 (c!439466 input!603))))))))

(declare-fun b!2720749 () Bool)

(assert (=> b!2720749 (= e!1714711 (and (> (csize!19893 (c!439466 input!603)) 0) (<= (csize!19893 (c!439466 input!603)) 512)))))

(assert (= (and d!784008 res!1142793) b!2720748))

(assert (= (and b!2720748 res!1142794) b!2720749))

(assert (=> d!784008 m!3121125))

(assert (=> d!784008 m!3121125))

(declare-fun m!3121143 () Bool)

(assert (=> d!784008 m!3121143))

(assert (=> b!2720748 m!3121125))

(assert (=> b!2720748 m!3121125))

(assert (=> b!2720748 m!3121143))

(assert (=> b!2719729 d!784008))

(declare-fun d!784010 () Bool)

(declare-fun lt!962920 () Int)

(assert (=> d!784010 (= lt!962920 (size!24206 (list!11895 (_1!18166 lt!962586))))))

(assert (=> d!784010 (= lt!962920 (size!24212 (c!439468 (_1!18166 lt!962586))))))

(assert (=> d!784010 (= (size!24204 (_1!18166 lt!962586)) lt!962920)))

(declare-fun bs!488430 () Bool)

(assert (= bs!488430 d!784010))

(assert (=> bs!488430 m!3119673))

(assert (=> bs!488430 m!3119673))

(declare-fun m!3121145 () Bool)

(assert (=> bs!488430 m!3121145))

(declare-fun m!3121147 () Bool)

(assert (=> bs!488430 m!3121147))

(assert (=> d!783518 d!784010))

(declare-fun b!2720750 () Bool)

(declare-fun res!1142797 () Bool)

(declare-fun e!1714715 () Bool)

(assert (=> b!2720750 (=> (not res!1142797) (not e!1714715))))

(declare-fun e!1714712 () Bool)

(assert (=> b!2720750 (= res!1142797 e!1714712)))

(declare-fun res!1142800 () Bool)

(assert (=> b!2720750 (=> res!1142800 e!1714712)))

(declare-fun lt!962927 () Option!6198)

(assert (=> b!2720750 (= res!1142800 (not (isDefined!4899 lt!962927)))))

(declare-fun b!2720751 () Bool)

(declare-fun e!1714717 () Option!6198)

(declare-fun call!175571 () Option!6198)

(assert (=> b!2720751 (= e!1714717 call!175571)))

(declare-fun d!784012 () Bool)

(assert (=> d!784012 e!1714715))

(declare-fun res!1142799 () Bool)

(assert (=> d!784012 (=> (not res!1142799) (not e!1714715))))

(assert (=> d!784012 (= res!1142799 (= (isDefined!4899 lt!962927) (isDefined!4900 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467)))))))))

(assert (=> d!784012 (= lt!962927 e!1714717)))

(declare-fun c!439758 () Bool)

(assert (=> d!784012 (= c!439758 (and (is-Cons!31377 rules!1182) (is-Nil!31377 (t!226341 rules!1182))))))

(declare-fun lt!962925 () Unit!45389)

(declare-fun lt!962921 () Unit!45389)

(assert (=> d!784012 (= lt!962925 lt!962921)))

(declare-fun lt!962922 () List!31476)

(declare-fun lt!962923 () List!31476)

(assert (=> d!784012 (isPrefix!2486 lt!962922 lt!962923)))

(assert (=> d!784012 (= lt!962921 (lemmaIsPrefixRefl!1612 lt!962922 lt!962923))))

(assert (=> d!784012 (= lt!962923 (list!11894 (_2!18167 (v!33039 lt!962467))))))

(assert (=> d!784012 (= lt!962922 (list!11894 (_2!18167 (v!33039 lt!962467))))))

(assert (=> d!784012 (rulesValidInductive!1670 thiss!11556 rules!1182)))

(assert (=> d!784012 (= (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962467))) lt!962927)))

(declare-fun e!1714714 () Bool)

(declare-fun b!2720752 () Bool)

(assert (=> b!2720752 (= e!1714714 (= (list!11894 (_2!18167 (get!9788 lt!962927))) (_2!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467))))))))))

(declare-fun bm!175566 () Bool)

(assert (=> bm!175566 (= call!175571 (maxPrefixOneRuleZipperSequence!482 thiss!11556 (h!36797 rules!1182) (_2!18167 (v!33039 lt!962467))))))

(declare-fun b!2720753 () Bool)

(declare-fun e!1714713 () Bool)

(declare-fun e!1714716 () Bool)

(assert (=> b!2720753 (= e!1714713 e!1714716)))

(declare-fun res!1142796 () Bool)

(assert (=> b!2720753 (=> (not res!1142796) (not e!1714716))))

(assert (=> b!2720753 (= res!1142796 (= (_1!18167 (get!9788 lt!962927)) (_1!18170 (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467))))))))))

(declare-fun b!2720754 () Bool)

(assert (=> b!2720754 (= e!1714716 (= (list!11894 (_2!18167 (get!9788 lt!962927))) (_2!18170 (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467))))))))))

(declare-fun b!2720755 () Bool)

(declare-fun lt!962926 () Option!6198)

(declare-fun lt!962924 () Option!6198)

(assert (=> b!2720755 (= e!1714717 (ite (and (is-None!6197 lt!962926) (is-None!6197 lt!962924)) None!6197 (ite (is-None!6197 lt!962924) lt!962926 (ite (is-None!6197 lt!962926) lt!962924 (ite (>= (size!24201 (_1!18167 (v!33039 lt!962926))) (size!24201 (_1!18167 (v!33039 lt!962924)))) lt!962926 lt!962924)))))))

(assert (=> b!2720755 (= lt!962926 call!175571)))

(assert (=> b!2720755 (= lt!962924 (maxPrefixZipperSequence!1046 thiss!11556 (t!226341 rules!1182) (_2!18167 (v!33039 lt!962467))))))

(declare-fun b!2720756 () Bool)

(assert (=> b!2720756 (= e!1714715 e!1714713)))

(declare-fun res!1142798 () Bool)

(assert (=> b!2720756 (=> res!1142798 e!1714713)))

(assert (=> b!2720756 (= res!1142798 (not (isDefined!4899 lt!962927)))))

(declare-fun b!2720757 () Bool)

(assert (=> b!2720757 (= e!1714712 e!1714714)))

(declare-fun res!1142795 () Bool)

(assert (=> b!2720757 (=> (not res!1142795) (not e!1714714))))

(assert (=> b!2720757 (= res!1142795 (= (_1!18167 (get!9788 lt!962927)) (_1!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962467))))))))))

(assert (= (and d!784012 c!439758) b!2720751))

(assert (= (and d!784012 (not c!439758)) b!2720755))

(assert (= (or b!2720751 b!2720755) bm!175566))

(assert (= (and d!784012 res!1142799) b!2720750))

(assert (= (and b!2720750 (not res!1142800)) b!2720757))

(assert (= (and b!2720757 res!1142795) b!2720752))

(assert (= (and b!2720750 res!1142797) b!2720756))

(assert (= (and b!2720756 (not res!1142798)) b!2720753))

(assert (= (and b!2720753 res!1142796) b!2720754))

(declare-fun m!3121149 () Bool)

(assert (=> b!2720755 m!3121149))

(assert (=> d!784012 m!3119445))

(declare-fun m!3121151 () Bool)

(assert (=> d!784012 m!3121151))

(assert (=> d!784012 m!3119319))

(declare-fun m!3121153 () Bool)

(assert (=> d!784012 m!3121153))

(declare-fun m!3121155 () Bool)

(assert (=> d!784012 m!3121155))

(assert (=> d!784012 m!3119319))

(declare-fun m!3121157 () Bool)

(assert (=> d!784012 m!3121157))

(assert (=> d!784012 m!3121157))

(declare-fun m!3121159 () Bool)

(assert (=> d!784012 m!3121159))

(assert (=> b!2720756 m!3121151))

(assert (=> b!2720752 m!3121157))

(declare-fun m!3121161 () Bool)

(assert (=> b!2720752 m!3121161))

(declare-fun m!3121163 () Bool)

(assert (=> b!2720752 m!3121163))

(assert (=> b!2720752 m!3119319))

(declare-fun m!3121165 () Bool)

(assert (=> b!2720752 m!3121165))

(assert (=> b!2720752 m!3119319))

(assert (=> b!2720752 m!3121157))

(assert (=> b!2720754 m!3121163))

(assert (=> b!2720754 m!3119319))

(assert (=> b!2720754 m!3121165))

(assert (=> b!2720754 m!3119319))

(assert (=> b!2720754 m!3120517))

(assert (=> b!2720754 m!3120517))

(declare-fun m!3121167 () Bool)

(assert (=> b!2720754 m!3121167))

(declare-fun m!3121169 () Bool)

(assert (=> bm!175566 m!3121169))

(assert (=> b!2720757 m!3121163))

(assert (=> b!2720757 m!3119319))

(assert (=> b!2720757 m!3119319))

(assert (=> b!2720757 m!3121157))

(assert (=> b!2720757 m!3121157))

(assert (=> b!2720757 m!3121161))

(assert (=> b!2720753 m!3121163))

(assert (=> b!2720753 m!3119319))

(assert (=> b!2720753 m!3119319))

(assert (=> b!2720753 m!3120517))

(assert (=> b!2720753 m!3120517))

(assert (=> b!2720753 m!3121167))

(assert (=> b!2720750 m!3121151))

(assert (=> d!783518 d!784012))

(declare-fun d!784014 () Bool)

(assert (=> d!784014 (= (inv!42612 (tag!5306 (h!36797 (t!226341 rules!1182)))) (= (mod (str.len (value!154470 (tag!5306 (h!36797 (t!226341 rules!1182))))) 2) 0))))

(assert (=> b!2719790 d!784014))

(declare-fun d!784016 () Bool)

(declare-fun res!1142801 () Bool)

(declare-fun e!1714718 () Bool)

(assert (=> d!784016 (=> (not res!1142801) (not e!1714718))))

(assert (=> d!784016 (= res!1142801 (semiInverseModEq!1978 (toChars!6639 (transformation!4802 (h!36797 (t!226341 rules!1182)))) (toValue!6780 (transformation!4802 (h!36797 (t!226341 rules!1182))))))))

(assert (=> d!784016 (= (inv!42619 (transformation!4802 (h!36797 (t!226341 rules!1182)))) e!1714718)))

(declare-fun b!2720758 () Bool)

(assert (=> b!2720758 (= e!1714718 (equivClasses!1879 (toChars!6639 (transformation!4802 (h!36797 (t!226341 rules!1182)))) (toValue!6780 (transformation!4802 (h!36797 (t!226341 rules!1182))))))))

(assert (= (and d!784016 res!1142801) b!2720758))

(declare-fun m!3121171 () Bool)

(assert (=> d!784016 m!3121171))

(declare-fun m!3121173 () Bool)

(assert (=> b!2720758 m!3121173))

(assert (=> b!2719790 d!784016))

(declare-fun d!784018 () Bool)

(declare-fun lt!962928 () Int)

(assert (=> d!784018 (>= lt!962928 0)))

(declare-fun e!1714719 () Int)

(assert (=> d!784018 (= lt!962928 e!1714719)))

(declare-fun c!439759 () Bool)

(assert (=> d!784018 (= c!439759 (is-Nil!31376 lt!962594))))

(assert (=> d!784018 (= (size!24205 lt!962594) lt!962928)))

(declare-fun b!2720759 () Bool)

(assert (=> b!2720759 (= e!1714719 0)))

(declare-fun b!2720760 () Bool)

(assert (=> b!2720760 (= e!1714719 (+ 1 (size!24205 (t!226340 lt!962594))))))

(assert (= (and d!784018 c!439759) b!2720759))

(assert (= (and d!784018 (not c!439759)) b!2720760))

(declare-fun m!3121175 () Bool)

(assert (=> b!2720760 m!3121175))

(assert (=> b!2719748 d!784018))

(assert (=> b!2719748 d!783852))

(declare-fun d!784020 () Bool)

(declare-fun lt!962929 () Int)

(assert (=> d!784020 (>= lt!962929 0)))

(declare-fun e!1714720 () Int)

(assert (=> d!784020 (= lt!962929 e!1714720)))

(declare-fun c!439760 () Bool)

(assert (=> d!784020 (= c!439760 (is-Nil!31376 (list!11894 input!603)))))

(assert (=> d!784020 (= (size!24205 (list!11894 input!603)) lt!962929)))

(declare-fun b!2720761 () Bool)

(assert (=> b!2720761 (= e!1714720 0)))

(declare-fun b!2720762 () Bool)

(assert (=> b!2720762 (= e!1714720 (+ 1 (size!24205 (t!226340 (list!11894 input!603)))))))

(assert (= (and d!784020 c!439760) b!2720761))

(assert (= (and d!784020 (not c!439760)) b!2720762))

(declare-fun m!3121177 () Bool)

(assert (=> b!2720762 m!3121177))

(assert (=> b!2719748 d!784020))

(declare-fun d!784022 () Bool)

(declare-fun e!1714721 () Bool)

(assert (=> d!784022 e!1714721))

(declare-fun res!1142802 () Bool)

(assert (=> d!784022 (=> (not res!1142802) (not e!1714721))))

(assert (=> d!784022 (= res!1142802 (isBalanced!2977 (prepend!1134 (c!439468 (_1!18166 lt!962555)) (_1!18167 (v!33039 lt!962554)))))))

(declare-fun lt!962930 () BalanceConc!19278)

(assert (=> d!784022 (= lt!962930 (BalanceConc!19279 (prepend!1134 (c!439468 (_1!18166 lt!962555)) (_1!18167 (v!33039 lt!962554)))))))

(assert (=> d!784022 (= (prepend!1132 (_1!18166 lt!962555) (_1!18167 (v!33039 lt!962554))) lt!962930)))

(declare-fun b!2720763 () Bool)

(assert (=> b!2720763 (= e!1714721 (= (list!11895 lt!962930) (Cons!31378 (_1!18167 (v!33039 lt!962554)) (list!11895 (_1!18166 lt!962555)))))))

(assert (= (and d!784022 res!1142802) b!2720763))

(declare-fun m!3121179 () Bool)

(assert (=> d!784022 m!3121179))

(assert (=> d!784022 m!3121179))

(declare-fun m!3121181 () Bool)

(assert (=> d!784022 m!3121181))

(declare-fun m!3121183 () Bool)

(assert (=> b!2720763 m!3121183))

(declare-fun m!3121185 () Bool)

(assert (=> b!2720763 m!3121185))

(assert (=> b!2719629 d!784022))

(declare-fun b!2720764 () Bool)

(declare-fun res!1142803 () Bool)

(declare-fun e!1714722 () Bool)

(assert (=> b!2720764 (=> (not res!1142803) (not e!1714722))))

(declare-fun lt!962933 () tuple2!31068)

(assert (=> b!2720764 (= res!1142803 (= (list!11895 (_1!18166 lt!962933)) (_1!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962554)))))))))

(declare-fun b!2720765 () Bool)

(declare-fun e!1714725 () tuple2!31068)

(declare-fun lt!962932 () tuple2!31068)

(declare-fun lt!962931 () Option!6198)

(assert (=> b!2720765 (= e!1714725 (tuple2!31069 (prepend!1132 (_1!18166 lt!962932) (_1!18167 (v!33039 lt!962931))) (_2!18166 lt!962932)))))

(assert (=> b!2720765 (= lt!962932 (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962931))))))

(declare-fun b!2720766 () Bool)

(declare-fun e!1714724 () Bool)

(assert (=> b!2720766 (= e!1714724 (not (isEmpty!17907 (_1!18166 lt!962933))))))

(declare-fun b!2720767 () Bool)

(assert (=> b!2720767 (= e!1714722 (= (list!11894 (_2!18166 lt!962933)) (_2!18171 (lexList!1227 thiss!11556 rules!1182 (list!11894 (_2!18167 (v!33039 lt!962554)))))))))

(declare-fun b!2720768 () Bool)

(assert (=> b!2720768 (= e!1714725 (tuple2!31069 (BalanceConc!19279 Empty!9832) (_2!18167 (v!33039 lt!962554))))))

(declare-fun b!2720769 () Bool)

(declare-fun e!1714723 () Bool)

(assert (=> b!2720769 (= e!1714723 (= (list!11894 (_2!18166 lt!962933)) (list!11894 (_2!18167 (v!33039 lt!962554)))))))

(declare-fun b!2720770 () Bool)

(assert (=> b!2720770 (= e!1714723 e!1714724)))

(declare-fun res!1142805 () Bool)

(assert (=> b!2720770 (= res!1142805 (< (size!24203 (_2!18166 lt!962933)) (size!24203 (_2!18167 (v!33039 lt!962554)))))))

(assert (=> b!2720770 (=> (not res!1142805) (not e!1714724))))

(declare-fun d!784024 () Bool)

(assert (=> d!784024 e!1714722))

(declare-fun res!1142804 () Bool)

(assert (=> d!784024 (=> (not res!1142804) (not e!1714722))))

(assert (=> d!784024 (= res!1142804 e!1714723)))

(declare-fun c!439762 () Bool)

(assert (=> d!784024 (= c!439762 (> (size!24204 (_1!18166 lt!962933)) 0))))

(assert (=> d!784024 (= lt!962933 e!1714725)))

(declare-fun c!439761 () Bool)

(assert (=> d!784024 (= c!439761 (is-Some!6197 lt!962931))))

(assert (=> d!784024 (= lt!962931 (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962554))))))

(assert (=> d!784024 (= (lexRec!658 thiss!11556 rules!1182 (_2!18167 (v!33039 lt!962554))) lt!962933)))

(assert (= (and d!784024 c!439761) b!2720765))

(assert (= (and d!784024 (not c!439761)) b!2720768))

(assert (= (and d!784024 c!439762) b!2720770))

(assert (= (and d!784024 (not c!439762)) b!2720769))

(assert (= (and b!2720770 res!1142805) b!2720766))

(assert (= (and d!784024 res!1142804) b!2720764))

(assert (= (and b!2720764 res!1142803) b!2720767))

(declare-fun m!3121187 () Bool)

(assert (=> b!2720770 m!3121187))

(declare-fun m!3121189 () Bool)

(assert (=> b!2720770 m!3121189))

(declare-fun m!3121191 () Bool)

(assert (=> b!2720769 m!3121191))

(declare-fun m!3121193 () Bool)

(assert (=> b!2720769 m!3121193))

(declare-fun m!3121195 () Bool)

(assert (=> b!2720766 m!3121195))

(declare-fun m!3121197 () Bool)

(assert (=> d!784024 m!3121197))

(declare-fun m!3121199 () Bool)

(assert (=> d!784024 m!3121199))

(declare-fun m!3121201 () Bool)

(assert (=> b!2720764 m!3121201))

(assert (=> b!2720764 m!3121193))

(assert (=> b!2720764 m!3121193))

(declare-fun m!3121203 () Bool)

(assert (=> b!2720764 m!3121203))

(declare-fun m!3121205 () Bool)

(assert (=> b!2720765 m!3121205))

(declare-fun m!3121207 () Bool)

(assert (=> b!2720765 m!3121207))

(assert (=> b!2720767 m!3121191))

(assert (=> b!2720767 m!3121193))

(assert (=> b!2720767 m!3121193))

(assert (=> b!2720767 m!3121203))

(assert (=> b!2719629 d!784024))

(declare-fun b!2720771 () Bool)

(declare-fun e!1714727 () List!31476)

(assert (=> b!2720771 (= e!1714727 (++!7816 lt!962464 lt!962459))))

(declare-fun b!2720773 () Bool)

(declare-fun res!1142806 () Bool)

(declare-fun e!1714726 () Bool)

(assert (=> b!2720773 (=> (not res!1142806) (not e!1714726))))

(declare-fun lt!962934 () List!31476)

(assert (=> b!2720773 (= res!1142806 (= (size!24205 lt!962934) (+ (size!24205 (t!226340 lt!962458)) (size!24205 (++!7816 lt!962464 lt!962459)))))))

(declare-fun d!784026 () Bool)

(assert (=> d!784026 e!1714726))

(declare-fun res!1142807 () Bool)

(assert (=> d!784026 (=> (not res!1142807) (not e!1714726))))

(assert (=> d!784026 (= res!1142807 (= (content!4444 lt!962934) (set.union (content!4444 (t!226340 lt!962458)) (content!4444 (++!7816 lt!962464 lt!962459)))))))

(assert (=> d!784026 (= lt!962934 e!1714727)))

(declare-fun c!439763 () Bool)

(assert (=> d!784026 (= c!439763 (is-Nil!31376 (t!226340 lt!962458)))))

(assert (=> d!784026 (= (++!7816 (t!226340 lt!962458) (++!7816 lt!962464 lt!962459)) lt!962934)))

(declare-fun b!2720774 () Bool)

(assert (=> b!2720774 (= e!1714726 (or (not (= (++!7816 lt!962464 lt!962459) Nil!31376)) (= lt!962934 (t!226340 lt!962458))))))

(declare-fun b!2720772 () Bool)

(assert (=> b!2720772 (= e!1714727 (Cons!31376 (h!36796 (t!226340 lt!962458)) (++!7816 (t!226340 (t!226340 lt!962458)) (++!7816 lt!962464 lt!962459))))))

(assert (= (and d!784026 c!439763) b!2720771))

(assert (= (and d!784026 (not c!439763)) b!2720772))

(assert (= (and d!784026 res!1142807) b!2720773))

(assert (= (and b!2720773 res!1142806) b!2720774))

(declare-fun m!3121209 () Bool)

(assert (=> b!2720773 m!3121209))

(assert (=> b!2720773 m!3120119))

(assert (=> b!2720773 m!3119287))

(assert (=> b!2720773 m!3119595))

(declare-fun m!3121211 () Bool)

(assert (=> d!784026 m!3121211))

(assert (=> d!784026 m!3120123))

(assert (=> d!784026 m!3119287))

(assert (=> d!784026 m!3119601))

(assert (=> b!2720772 m!3119287))

(declare-fun m!3121213 () Bool)

(assert (=> b!2720772 m!3121213))

(assert (=> b!2719672 d!784026))

(declare-fun d!784028 () Bool)

(declare-fun c!439764 () Bool)

(assert (=> d!784028 (= c!439764 (is-Nil!31378 lt!962588))))

(declare-fun e!1714728 () (Set Token!9066))

(assert (=> d!784028 (= (content!4445 lt!962588) e!1714728)))

(declare-fun b!2720775 () Bool)

(assert (=> b!2720775 (= e!1714728 (as set.empty (Set Token!9066)))))

(declare-fun b!2720776 () Bool)

(assert (=> b!2720776 (= e!1714728 (set.union (set.insert (h!36798 lt!962588) (as set.empty (Set Token!9066))) (content!4445 (t!226342 lt!962588))))))

(assert (= (and d!784028 c!439764) b!2720775))

(assert (= (and d!784028 (not c!439764)) b!2720776))

(declare-fun m!3121215 () Bool)

(assert (=> b!2720776 m!3121215))

(declare-fun m!3121217 () Bool)

(assert (=> b!2720776 m!3121217))

(assert (=> d!783522 d!784028))

(declare-fun d!784030 () Bool)

(declare-fun c!439765 () Bool)

(assert (=> d!784030 (= c!439765 (is-Nil!31378 (++!7815 lt!962457 lt!962468)))))

(declare-fun e!1714729 () (Set Token!9066))

(assert (=> d!784030 (= (content!4445 (++!7815 lt!962457 lt!962468)) e!1714729)))

(declare-fun b!2720777 () Bool)

(assert (=> b!2720777 (= e!1714729 (as set.empty (Set Token!9066)))))

(declare-fun b!2720778 () Bool)

(assert (=> b!2720778 (= e!1714729 (set.union (set.insert (h!36798 (++!7815 lt!962457 lt!962468)) (as set.empty (Set Token!9066))) (content!4445 (t!226342 (++!7815 lt!962457 lt!962468)))))))

(assert (= (and d!784030 c!439765) b!2720777))

(assert (= (and d!784030 (not c!439765)) b!2720778))

(declare-fun m!3121219 () Bool)

(assert (=> b!2720778 m!3121219))

(assert (=> b!2720778 m!3120165))

(assert (=> d!783522 d!784030))

(assert (=> d!783522 d!783804))

(declare-fun d!784032 () Bool)

(declare-fun lt!962935 () Int)

(assert (=> d!784032 (= lt!962935 (size!24206 (list!11895 (_1!18166 lt!962559))))))

(assert (=> d!784032 (= lt!962935 (size!24212 (c!439468 (_1!18166 lt!962559))))))

(assert (=> d!784032 (= (size!24204 (_1!18166 lt!962559)) lt!962935)))

(declare-fun bs!488431 () Bool)

(assert (= bs!488431 d!784032))

(assert (=> bs!488431 m!3119531))

(assert (=> bs!488431 m!3119531))

(declare-fun m!3121221 () Bool)

(assert (=> bs!488431 m!3121221))

(declare-fun m!3121223 () Bool)

(assert (=> bs!488431 m!3121223))

(assert (=> d!783484 d!784032))

(declare-fun b!2720779 () Bool)

(declare-fun res!1142810 () Bool)

(declare-fun e!1714733 () Bool)

(assert (=> b!2720779 (=> (not res!1142810) (not e!1714733))))

(declare-fun e!1714730 () Bool)

(assert (=> b!2720779 (= res!1142810 e!1714730)))

(declare-fun res!1142813 () Bool)

(assert (=> b!2720779 (=> res!1142813 e!1714730)))

(declare-fun lt!962942 () Option!6198)

(assert (=> b!2720779 (= res!1142813 (not (isDefined!4899 lt!962942)))))

(declare-fun b!2720780 () Bool)

(declare-fun e!1714735 () Option!6198)

(declare-fun call!175572 () Option!6198)

(assert (=> b!2720780 (= e!1714735 call!175572)))

(declare-fun d!784034 () Bool)

(assert (=> d!784034 e!1714733))

(declare-fun res!1142812 () Bool)

(assert (=> d!784034 (=> (not res!1142812) (not e!1714733))))

(assert (=> d!784034 (= res!1142812 (= (isDefined!4899 lt!962942) (isDefined!4900 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 totalInput!328)))))))

(assert (=> d!784034 (= lt!962942 e!1714735)))

(declare-fun c!439766 () Bool)

(assert (=> d!784034 (= c!439766 (and (is-Cons!31377 rules!1182) (is-Nil!31377 (t!226341 rules!1182))))))

(declare-fun lt!962940 () Unit!45389)

(declare-fun lt!962936 () Unit!45389)

(assert (=> d!784034 (= lt!962940 lt!962936)))

(declare-fun lt!962937 () List!31476)

(declare-fun lt!962938 () List!31476)

(assert (=> d!784034 (isPrefix!2486 lt!962937 lt!962938)))

(assert (=> d!784034 (= lt!962936 (lemmaIsPrefixRefl!1612 lt!962937 lt!962938))))

(assert (=> d!784034 (= lt!962938 (list!11894 totalInput!328))))

(assert (=> d!784034 (= lt!962937 (list!11894 totalInput!328))))

(assert (=> d!784034 (rulesValidInductive!1670 thiss!11556 rules!1182)))

(assert (=> d!784034 (= (maxPrefixZipperSequence!1046 thiss!11556 rules!1182 totalInput!328) lt!962942)))

(declare-fun b!2720781 () Bool)

(declare-fun e!1714732 () Bool)

(assert (=> b!2720781 (= e!1714732 (= (list!11894 (_2!18167 (get!9788 lt!962942))) (_2!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 totalInput!328))))))))

(declare-fun bm!175567 () Bool)

(assert (=> bm!175567 (= call!175572 (maxPrefixOneRuleZipperSequence!482 thiss!11556 (h!36797 rules!1182) totalInput!328))))

(declare-fun b!2720782 () Bool)

(declare-fun e!1714731 () Bool)

(declare-fun e!1714734 () Bool)

(assert (=> b!2720782 (= e!1714731 e!1714734)))

(declare-fun res!1142809 () Bool)

(assert (=> b!2720782 (=> (not res!1142809) (not e!1714734))))

(assert (=> b!2720782 (= res!1142809 (= (_1!18167 (get!9788 lt!962942)) (_1!18170 (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 totalInput!328))))))))

(declare-fun b!2720783 () Bool)

(assert (=> b!2720783 (= e!1714734 (= (list!11894 (_2!18167 (get!9788 lt!962942))) (_2!18170 (get!9789 (maxPrefix!2369 thiss!11556 rules!1182 (list!11894 totalInput!328))))))))

(declare-fun b!2720784 () Bool)

(declare-fun lt!962941 () Option!6198)

(declare-fun lt!962939 () Option!6198)

(assert (=> b!2720784 (= e!1714735 (ite (and (is-None!6197 lt!962941) (is-None!6197 lt!962939)) None!6197 (ite (is-None!6197 lt!962939) lt!962941 (ite (is-None!6197 lt!962941) lt!962939 (ite (>= (size!24201 (_1!18167 (v!33039 lt!962941))) (size!24201 (_1!18167 (v!33039 lt!962939)))) lt!962941 lt!962939)))))))

(assert (=> b!2720784 (= lt!962941 call!175572)))

(assert (=> b!2720784 (= lt!962939 (maxPrefixZipperSequence!1046 thiss!11556 (t!226341 rules!1182) totalInput!328))))

(declare-fun b!2720785 () Bool)

(assert (=> b!2720785 (= e!1714733 e!1714731)))

(declare-fun res!1142811 () Bool)

(assert (=> b!2720785 (=> res!1142811 e!1714731)))

(assert (=> b!2720785 (= res!1142811 (not (isDefined!4899 lt!962942)))))

(declare-fun b!2720786 () Bool)

(assert (=> b!2720786 (= e!1714730 e!1714732)))

(declare-fun res!1142808 () Bool)

(assert (=> b!2720786 (=> (not res!1142808) (not e!1714732))))

(assert (=> b!2720786 (= res!1142808 (= (_1!18167 (get!9788 lt!962942)) (_1!18170 (get!9789 (maxPrefixZipper!473 thiss!11556 rules!1182 (list!11894 totalInput!328))))))))

(assert (= (and d!784034 c!439766) b!2720780))

(assert (= (and d!784034 (not c!439766)) b!2720784))

(assert (= (or b!2720780 b!2720784) bm!175567))

(assert (= (and d!784034 res!1142812) b!2720779))

(assert (= (and b!2720779 (not res!1142813)) b!2720786))

(assert (= (and b!2720786 res!1142808) b!2720781))

(assert (= (and b!2720779 res!1142810) b!2720785))

(assert (= (and b!2720785 (not res!1142811)) b!2720782))

(assert (= (and b!2720782 res!1142809) b!2720783))

(declare-fun m!3121225 () Bool)

(assert (=> b!2720784 m!3121225))

(assert (=> d!784034 m!3119445))

(declare-fun m!3121227 () Bool)

(assert (=> d!784034 m!3121227))

(assert (=> d!784034 m!3119323))

(declare-fun m!3121229 () Bool)

(assert (=> d!784034 m!3121229))

(declare-fun m!3121231 () Bool)

(assert (=> d!784034 m!3121231))

(assert (=> d!784034 m!3119323))

(declare-fun m!3121233 () Bool)

(assert (=> d!784034 m!3121233))

(assert (=> d!784034 m!3121233))

(declare-fun m!3121235 () Bool)

(assert (=> d!784034 m!3121235))

(assert (=> b!2720785 m!3121227))

(assert (=> b!2720781 m!3121233))

(declare-fun m!3121237 () Bool)

(assert (=> b!2720781 m!3121237))

(declare-fun m!3121239 () Bool)

(assert (=> b!2720781 m!3121239))

(assert (=> b!2720781 m!3119323))

(declare-fun m!3121241 () Bool)

(assert (=> b!2720781 m!3121241))

(assert (=> b!2720781 m!3119323))

(assert (=> b!2720781 m!3121233))

(assert (=> b!2720783 m!3121239))

(assert (=> b!2720783 m!3119323))

(assert (=> b!2720783 m!3121241))

(assert (=> b!2720783 m!3119323))

(assert (=> b!2720783 m!3120137))

(assert (=> b!2720783 m!3120137))

(declare-fun m!3121243 () Bool)

(assert (=> b!2720783 m!3121243))

(declare-fun m!3121245 () Bool)

(assert (=> bm!175567 m!3121245))

(assert (=> b!2720786 m!3121239))

(assert (=> b!2720786 m!3119323))

(assert (=> b!2720786 m!3119323))

(assert (=> b!2720786 m!3121233))

(assert (=> b!2720786 m!3121233))

(assert (=> b!2720786 m!3121237))

(assert (=> b!2720782 m!3121239))

(assert (=> b!2720782 m!3119323))

(assert (=> b!2720782 m!3119323))

(assert (=> b!2720782 m!3120137))

(assert (=> b!2720782 m!3120137))

(assert (=> b!2720782 m!3121243))

(assert (=> b!2720779 m!3121227))

(assert (=> d!783484 d!784034))

(assert (=> b!2719633 d!783816))

(assert (=> b!2719633 d!783564))

(declare-fun b!2720789 () Bool)

(declare-fun e!1714737 () List!31476)

(assert (=> b!2720789 (= e!1714737 (list!11902 (xs!12906 (c!439466 (_2!18166 lt!962470)))))))

(declare-fun b!2720790 () Bool)

(assert (=> b!2720790 (= e!1714737 (++!7816 (list!11898 (left!24122 (c!439466 (_2!18166 lt!962470)))) (list!11898 (right!24452 (c!439466 (_2!18166 lt!962470))))))))

(declare-fun b!2720787 () Bool)

(declare-fun e!1714736 () List!31476)

(assert (=> b!2720787 (= e!1714736 Nil!31376)))

(declare-fun b!2720788 () Bool)

(assert (=> b!2720788 (= e!1714736 e!1714737)))

(declare-fun c!439768 () Bool)

(assert (=> b!2720788 (= c!439768 (is-Leaf!14977 (c!439466 (_2!18166 lt!962470))))))

(declare-fun d!784036 () Bool)

(declare-fun c!439767 () Bool)

(assert (=> d!784036 (= c!439767 (is-Empty!9831 (c!439466 (_2!18166 lt!962470))))))

(assert (=> d!784036 (= (list!11898 (c!439466 (_2!18166 lt!962470))) e!1714736)))

(assert (= (and d!784036 c!439767) b!2720787))

(assert (= (and d!784036 (not c!439767)) b!2720788))

(assert (= (and b!2720788 c!439768) b!2720789))

(assert (= (and b!2720788 (not c!439768)) b!2720790))

(declare-fun m!3121247 () Bool)

(assert (=> b!2720789 m!3121247))

(declare-fun m!3121249 () Bool)

(assert (=> b!2720790 m!3121249))

(declare-fun m!3121251 () Bool)

(assert (=> b!2720790 m!3121251))

(assert (=> b!2720790 m!3121249))

(assert (=> b!2720790 m!3121251))

(declare-fun m!3121253 () Bool)

(assert (=> b!2720790 m!3121253))

(assert (=> d!783458 d!784036))

(declare-fun tp!858441 () Bool)

(declare-fun tp!858442 () Bool)

(declare-fun e!1714738 () Bool)

(declare-fun b!2720791 () Bool)

(assert (=> b!2720791 (= e!1714738 (and (inv!42616 (left!24122 (left!24122 (c!439466 totalInput!328)))) tp!858441 (inv!42616 (right!24452 (left!24122 (c!439466 totalInput!328)))) tp!858442))))

(declare-fun b!2720793 () Bool)

(declare-fun e!1714739 () Bool)

(declare-fun tp!858440 () Bool)

(assert (=> b!2720793 (= e!1714739 tp!858440)))

(declare-fun b!2720792 () Bool)

(assert (=> b!2720792 (= e!1714738 (and (inv!42629 (xs!12906 (left!24122 (c!439466 totalInput!328)))) e!1714739))))

(assert (=> b!2719775 (= tp!858357 (and (inv!42616 (left!24122 (c!439466 totalInput!328))) e!1714738))))

(assert (= (and b!2719775 (is-Node!9831 (left!24122 (c!439466 totalInput!328)))) b!2720791))

(assert (= b!2720792 b!2720793))

(assert (= (and b!2719775 (is-Leaf!14977 (left!24122 (c!439466 totalInput!328)))) b!2720792))

(declare-fun m!3121255 () Bool)

(assert (=> b!2720791 m!3121255))

(declare-fun m!3121257 () Bool)

(assert (=> b!2720791 m!3121257))

(declare-fun m!3121259 () Bool)

(assert (=> b!2720792 m!3121259))

(assert (=> b!2719775 m!3119791))

(declare-fun e!1714740 () Bool)

(declare-fun b!2720794 () Bool)

(declare-fun tp!858444 () Bool)

(declare-fun tp!858445 () Bool)

(assert (=> b!2720794 (= e!1714740 (and (inv!42616 (left!24122 (right!24452 (c!439466 totalInput!328)))) tp!858444 (inv!42616 (right!24452 (right!24452 (c!439466 totalInput!328)))) tp!858445))))

(declare-fun b!2720796 () Bool)

(declare-fun e!1714741 () Bool)

(declare-fun tp!858443 () Bool)

(assert (=> b!2720796 (= e!1714741 tp!858443)))

(declare-fun b!2720795 () Bool)

(assert (=> b!2720795 (= e!1714740 (and (inv!42629 (xs!12906 (right!24452 (c!439466 totalInput!328)))) e!1714741))))

(assert (=> b!2719775 (= tp!858358 (and (inv!42616 (right!24452 (c!439466 totalInput!328))) e!1714740))))

(assert (= (and b!2719775 (is-Node!9831 (right!24452 (c!439466 totalInput!328)))) b!2720794))

(assert (= b!2720795 b!2720796))

(assert (= (and b!2719775 (is-Leaf!14977 (right!24452 (c!439466 totalInput!328)))) b!2720795))

(declare-fun m!3121261 () Bool)

(assert (=> b!2720794 m!3121261))

(declare-fun m!3121263 () Bool)

(assert (=> b!2720794 m!3121263))

(declare-fun m!3121265 () Bool)

(assert (=> b!2720795 m!3121265))

(assert (=> b!2719775 m!3119793))

(declare-fun tp!858447 () Bool)

(declare-fun e!1714742 () Bool)

(declare-fun b!2720797 () Bool)

(declare-fun tp!858448 () Bool)

(assert (=> b!2720797 (= e!1714742 (and (inv!42616 (left!24122 (left!24122 (c!439466 input!603)))) tp!858447 (inv!42616 (right!24452 (left!24122 (c!439466 input!603)))) tp!858448))))

(declare-fun b!2720799 () Bool)

(declare-fun e!1714743 () Bool)

(declare-fun tp!858446 () Bool)

(assert (=> b!2720799 (= e!1714743 tp!858446)))

(declare-fun b!2720798 () Bool)

(assert (=> b!2720798 (= e!1714742 (and (inv!42629 (xs!12906 (left!24122 (c!439466 input!603)))) e!1714743))))

(assert (=> b!2719778 (= tp!858360 (and (inv!42616 (left!24122 (c!439466 input!603))) e!1714742))))

(assert (= (and b!2719778 (is-Node!9831 (left!24122 (c!439466 input!603)))) b!2720797))

(assert (= b!2720798 b!2720799))

(assert (= (and b!2719778 (is-Leaf!14977 (left!24122 (c!439466 input!603)))) b!2720798))

(declare-fun m!3121267 () Bool)

(assert (=> b!2720797 m!3121267))

(declare-fun m!3121269 () Bool)

(assert (=> b!2720797 m!3121269))

(declare-fun m!3121271 () Bool)

(assert (=> b!2720798 m!3121271))

(assert (=> b!2719778 m!3119797))

(declare-fun tp!858451 () Bool)

(declare-fun e!1714744 () Bool)

(declare-fun b!2720800 () Bool)

(declare-fun tp!858450 () Bool)

(assert (=> b!2720800 (= e!1714744 (and (inv!42616 (left!24122 (right!24452 (c!439466 input!603)))) tp!858450 (inv!42616 (right!24452 (right!24452 (c!439466 input!603)))) tp!858451))))

(declare-fun b!2720802 () Bool)

(declare-fun e!1714745 () Bool)

(declare-fun tp!858449 () Bool)

(assert (=> b!2720802 (= e!1714745 tp!858449)))

(declare-fun b!2720801 () Bool)

(assert (=> b!2720801 (= e!1714744 (and (inv!42629 (xs!12906 (right!24452 (c!439466 input!603)))) e!1714745))))

(assert (=> b!2719778 (= tp!858361 (and (inv!42616 (right!24452 (c!439466 input!603))) e!1714744))))

(assert (= (and b!2719778 (is-Node!9831 (right!24452 (c!439466 input!603)))) b!2720800))

(assert (= b!2720801 b!2720802))

(assert (= (and b!2719778 (is-Leaf!14977 (right!24452 (c!439466 input!603)))) b!2720801))

(declare-fun m!3121273 () Bool)

(assert (=> b!2720800 m!3121273))

(declare-fun m!3121275 () Bool)

(assert (=> b!2720800 m!3121275))

(declare-fun m!3121277 () Bool)

(assert (=> b!2720801 m!3121277))

(assert (=> b!2719778 m!3119799))

(declare-fun tp!858454 () Bool)

(declare-fun b!2720803 () Bool)

(declare-fun tp!858452 () Bool)

(declare-fun e!1714746 () Bool)

(assert (=> b!2720803 (= e!1714746 (and (inv!42615 (left!24123 (left!24123 (c!439468 acc!331)))) tp!858454 (inv!42615 (right!24453 (left!24123 (c!439468 acc!331)))) tp!858452))))

(declare-fun b!2720805 () Bool)

(declare-fun e!1714747 () Bool)

(declare-fun tp!858453 () Bool)

(assert (=> b!2720805 (= e!1714747 tp!858453)))

(declare-fun b!2720804 () Bool)

(assert (=> b!2720804 (= e!1714746 (and (inv!42632 (xs!12907 (left!24123 (c!439468 acc!331)))) e!1714747))))

(assert (=> b!2719800 (= tp!858382 (and (inv!42615 (left!24123 (c!439468 acc!331))) e!1714746))))

(assert (= (and b!2719800 (is-Node!9832 (left!24123 (c!439468 acc!331)))) b!2720803))

(assert (= b!2720804 b!2720805))

(assert (= (and b!2719800 (is-Leaf!14978 (left!24123 (c!439468 acc!331)))) b!2720804))

(declare-fun m!3121279 () Bool)

(assert (=> b!2720803 m!3121279))

(declare-fun m!3121281 () Bool)

(assert (=> b!2720803 m!3121281))

(declare-fun m!3121283 () Bool)

(assert (=> b!2720804 m!3121283))

(assert (=> b!2719800 m!3119807))

(declare-fun tp!858455 () Bool)

(declare-fun tp!858457 () Bool)

(declare-fun b!2720806 () Bool)

(declare-fun e!1714748 () Bool)

(assert (=> b!2720806 (= e!1714748 (and (inv!42615 (left!24123 (right!24453 (c!439468 acc!331)))) tp!858457 (inv!42615 (right!24453 (right!24453 (c!439468 acc!331)))) tp!858455))))

(declare-fun b!2720808 () Bool)

(declare-fun e!1714749 () Bool)

(declare-fun tp!858456 () Bool)

(assert (=> b!2720808 (= e!1714749 tp!858456)))

(declare-fun b!2720807 () Bool)

(assert (=> b!2720807 (= e!1714748 (and (inv!42632 (xs!12907 (right!24453 (c!439468 acc!331)))) e!1714749))))

(assert (=> b!2719800 (= tp!858380 (and (inv!42615 (right!24453 (c!439468 acc!331))) e!1714748))))

(assert (= (and b!2719800 (is-Node!9832 (right!24453 (c!439468 acc!331)))) b!2720806))

(assert (= b!2720807 b!2720808))

(assert (= (and b!2719800 (is-Leaf!14978 (right!24453 (c!439468 acc!331)))) b!2720807))

(declare-fun m!3121285 () Bool)

(assert (=> b!2720806 m!3121285))

(declare-fun m!3121287 () Bool)

(assert (=> b!2720806 m!3121287))

(declare-fun m!3121289 () Bool)

(assert (=> b!2720807 m!3121289))

(assert (=> b!2719800 m!3119809))

(declare-fun b!2720811 () Bool)

(declare-fun e!1714750 () Bool)

(declare-fun tp!858460 () Bool)

(assert (=> b!2720811 (= e!1714750 tp!858460)))

(declare-fun b!2720812 () Bool)

(declare-fun tp!858462 () Bool)

(declare-fun tp!858461 () Bool)

(assert (=> b!2720812 (= e!1714750 (and tp!858462 tp!858461))))

(declare-fun b!2720809 () Bool)

(assert (=> b!2720809 (= e!1714750 tp_is_empty!13887)))

(declare-fun b!2720810 () Bool)

(declare-fun tp!858459 () Bool)

(declare-fun tp!858458 () Bool)

(assert (=> b!2720810 (= e!1714750 (and tp!858459 tp!858458))))

(assert (=> b!2719766 (= tp!858349 e!1714750)))

(assert (= (and b!2719766 (is-ElementMatch!7954 (regOne!16421 (regex!4802 (h!36797 rules!1182))))) b!2720809))

(assert (= (and b!2719766 (is-Concat!12979 (regOne!16421 (regex!4802 (h!36797 rules!1182))))) b!2720810))

(assert (= (and b!2719766 (is-Star!7954 (regOne!16421 (regex!4802 (h!36797 rules!1182))))) b!2720811))

(assert (= (and b!2719766 (is-Union!7954 (regOne!16421 (regex!4802 (h!36797 rules!1182))))) b!2720812))

(declare-fun b!2720815 () Bool)

(declare-fun e!1714751 () Bool)

(declare-fun tp!858465 () Bool)

(assert (=> b!2720815 (= e!1714751 tp!858465)))

(declare-fun b!2720816 () Bool)

(declare-fun tp!858467 () Bool)

(declare-fun tp!858466 () Bool)

(assert (=> b!2720816 (= e!1714751 (and tp!858467 tp!858466))))

(declare-fun b!2720813 () Bool)

(assert (=> b!2720813 (= e!1714751 tp_is_empty!13887)))

(declare-fun b!2720814 () Bool)

(declare-fun tp!858464 () Bool)

(declare-fun tp!858463 () Bool)

(assert (=> b!2720814 (= e!1714751 (and tp!858464 tp!858463))))

(assert (=> b!2719766 (= tp!858348 e!1714751)))

(assert (= (and b!2719766 (is-ElementMatch!7954 (regTwo!16421 (regex!4802 (h!36797 rules!1182))))) b!2720813))

(assert (= (and b!2719766 (is-Concat!12979 (regTwo!16421 (regex!4802 (h!36797 rules!1182))))) b!2720814))

(assert (= (and b!2719766 (is-Star!7954 (regTwo!16421 (regex!4802 (h!36797 rules!1182))))) b!2720815))

(assert (= (and b!2719766 (is-Union!7954 (regTwo!16421 (regex!4802 (h!36797 rules!1182))))) b!2720816))

(declare-fun b!2720821 () Bool)

(declare-fun e!1714754 () Bool)

(declare-fun tp!858470 () Bool)

(assert (=> b!2720821 (= e!1714754 (and tp_is_empty!13887 tp!858470))))

(assert (=> b!2719777 (= tp!858356 e!1714754)))

(assert (= (and b!2719777 (is-Cons!31376 (innerList!9891 (xs!12906 (c!439466 totalInput!328))))) b!2720821))

(declare-fun b!2720824 () Bool)

(declare-fun e!1714755 () Bool)

(declare-fun tp!858473 () Bool)

(assert (=> b!2720824 (= e!1714755 tp!858473)))

(declare-fun b!2720825 () Bool)

(declare-fun tp!858475 () Bool)

(declare-fun tp!858474 () Bool)

(assert (=> b!2720825 (= e!1714755 (and tp!858475 tp!858474))))

(declare-fun b!2720822 () Bool)

(assert (=> b!2720822 (= e!1714755 tp_is_empty!13887)))

(declare-fun b!2720823 () Bool)

(declare-fun tp!858472 () Bool)

(declare-fun tp!858471 () Bool)

(assert (=> b!2720823 (= e!1714755 (and tp!858472 tp!858471))))

(assert (=> b!2719764 (= tp!858346 e!1714755)))

(assert (= (and b!2719764 (is-ElementMatch!7954 (regOne!16420 (regex!4802 (h!36797 rules!1182))))) b!2720822))

(assert (= (and b!2719764 (is-Concat!12979 (regOne!16420 (regex!4802 (h!36797 rules!1182))))) b!2720823))

(assert (= (and b!2719764 (is-Star!7954 (regOne!16420 (regex!4802 (h!36797 rules!1182))))) b!2720824))

(assert (= (and b!2719764 (is-Union!7954 (regOne!16420 (regex!4802 (h!36797 rules!1182))))) b!2720825))

(declare-fun b!2720828 () Bool)

(declare-fun e!1714756 () Bool)

(declare-fun tp!858478 () Bool)

(assert (=> b!2720828 (= e!1714756 tp!858478)))

(declare-fun b!2720829 () Bool)

(declare-fun tp!858480 () Bool)

(declare-fun tp!858479 () Bool)

(assert (=> b!2720829 (= e!1714756 (and tp!858480 tp!858479))))

(declare-fun b!2720826 () Bool)

(assert (=> b!2720826 (= e!1714756 tp_is_empty!13887)))

(declare-fun b!2720827 () Bool)

(declare-fun tp!858477 () Bool)

(declare-fun tp!858476 () Bool)

(assert (=> b!2720827 (= e!1714756 (and tp!858477 tp!858476))))

(assert (=> b!2719764 (= tp!858345 e!1714756)))

(assert (= (and b!2719764 (is-ElementMatch!7954 (regTwo!16420 (regex!4802 (h!36797 rules!1182))))) b!2720826))

(assert (= (and b!2719764 (is-Concat!12979 (regTwo!16420 (regex!4802 (h!36797 rules!1182))))) b!2720827))

(assert (= (and b!2719764 (is-Star!7954 (regTwo!16420 (regex!4802 (h!36797 rules!1182))))) b!2720828))

(assert (= (and b!2719764 (is-Union!7954 (regTwo!16420 (regex!4802 (h!36797 rules!1182))))) b!2720829))

(declare-fun b!2720832 () Bool)

(declare-fun e!1714757 () Bool)

(declare-fun tp!858483 () Bool)

(assert (=> b!2720832 (= e!1714757 tp!858483)))

(declare-fun b!2720833 () Bool)

(declare-fun tp!858485 () Bool)

(declare-fun tp!858484 () Bool)

(assert (=> b!2720833 (= e!1714757 (and tp!858485 tp!858484))))

(declare-fun b!2720830 () Bool)

(assert (=> b!2720830 (= e!1714757 tp_is_empty!13887)))

(declare-fun b!2720831 () Bool)

(declare-fun tp!858482 () Bool)

(declare-fun tp!858481 () Bool)

(assert (=> b!2720831 (= e!1714757 (and tp!858482 tp!858481))))

(assert (=> b!2719765 (= tp!858347 e!1714757)))

(assert (= (and b!2719765 (is-ElementMatch!7954 (reg!8283 (regex!4802 (h!36797 rules!1182))))) b!2720830))

(assert (= (and b!2719765 (is-Concat!12979 (reg!8283 (regex!4802 (h!36797 rules!1182))))) b!2720831))

(assert (= (and b!2719765 (is-Star!7954 (reg!8283 (regex!4802 (h!36797 rules!1182))))) b!2720832))

(assert (= (and b!2719765 (is-Union!7954 (reg!8283 (regex!4802 (h!36797 rules!1182))))) b!2720833))

(declare-fun b!2720847 () Bool)

(declare-fun b_free!76645 () Bool)

(declare-fun b_next!77349 () Bool)

(assert (=> b!2720847 (= b_free!76645 (not b_next!77349))))

(declare-fun tp!858498 () Bool)

(declare-fun b_and!200401 () Bool)

(assert (=> b!2720847 (= tp!858498 b_and!200401)))

(declare-fun b_free!76647 () Bool)

(declare-fun b_next!77351 () Bool)

(assert (=> b!2720847 (= b_free!76647 (not b_next!77351))))

(declare-fun t!226369 () Bool)

(declare-fun tb!151853 () Bool)

(assert (=> (and b!2720847 (= (toChars!6639 (transformation!4802 (rule!7230 (h!36798 (innerList!9892 (xs!12907 (c!439468 acc!331))))))) (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467)))))) t!226369) tb!151853))

(declare-fun result!187654 () Bool)

(assert (= result!187654 result!187622))

(assert (=> d!783492 t!226369))

(declare-fun tp!858497 () Bool)

(declare-fun b_and!200403 () Bool)

(assert (=> b!2720847 (= tp!858497 (and (=> t!226369 result!187654) b_and!200403))))

(declare-fun tp!858500 () Bool)

(declare-fun b!2720846 () Bool)

(declare-fun e!1714772 () Bool)

(declare-fun e!1714771 () Bool)

(assert (=> b!2720846 (= e!1714771 (and tp!858500 (inv!42612 (tag!5306 (rule!7230 (h!36798 (innerList!9892 (xs!12907 (c!439468 acc!331))))))) (inv!42619 (transformation!4802 (rule!7230 (h!36798 (innerList!9892 (xs!12907 (c!439468 acc!331))))))) e!1714772))))

(declare-fun tp!858499 () Bool)

(declare-fun e!1714774 () Bool)

(declare-fun b!2720844 () Bool)

(declare-fun e!1714775 () Bool)

(declare-fun inv!42637 (Token!9066) Bool)

(assert (=> b!2720844 (= e!1714774 (and (inv!42637 (h!36798 (innerList!9892 (xs!12907 (c!439468 acc!331))))) e!1714775 tp!858499))))

(assert (=> b!2720847 (= e!1714772 (and tp!858498 tp!858497))))

(declare-fun tp!858496 () Bool)

(declare-fun b!2720845 () Bool)

(declare-fun inv!21 (TokenValue!5024) Bool)

(assert (=> b!2720845 (= e!1714775 (and (inv!21 (value!154471 (h!36798 (innerList!9892 (xs!12907 (c!439468 acc!331)))))) e!1714771 tp!858496))))

(assert (=> b!2719802 (= tp!858381 e!1714774)))

(assert (= b!2720846 b!2720847))

(assert (= b!2720845 b!2720846))

(assert (= b!2720844 b!2720845))

(assert (= (and b!2719802 (is-Cons!31378 (innerList!9892 (xs!12907 (c!439468 acc!331))))) b!2720844))

(declare-fun m!3121291 () Bool)

(assert (=> b!2720846 m!3121291))

(declare-fun m!3121293 () Bool)

(assert (=> b!2720846 m!3121293))

(declare-fun m!3121295 () Bool)

(assert (=> b!2720844 m!3121295))

(declare-fun m!3121297 () Bool)

(assert (=> b!2720845 m!3121297))

(declare-fun tp!858503 () Bool)

(declare-fun tp!858502 () Bool)

(declare-fun b!2720848 () Bool)

(declare-fun e!1714776 () Bool)

(assert (=> b!2720848 (= e!1714776 (and (inv!42616 (left!24122 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467))))))) tp!858502 (inv!42616 (right!24452 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467))))))) tp!858503))))

(declare-fun b!2720850 () Bool)

(declare-fun e!1714777 () Bool)

(declare-fun tp!858501 () Bool)

(assert (=> b!2720850 (= e!1714777 tp!858501)))

(declare-fun b!2720849 () Bool)

(assert (=> b!2720849 (= e!1714776 (and (inv!42629 (xs!12906 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467))))))) e!1714777))))

(assert (=> b!2719662 (= tp!858334 (and (inv!42616 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467)))))) e!1714776))))

(assert (= (and b!2719662 (is-Node!9831 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467))))))) b!2720848))

(assert (= b!2720849 b!2720850))

(assert (= (and b!2719662 (is-Leaf!14977 (c!439466 (dynLambda!13511 (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))) (value!154471 (_1!18167 (v!33039 lt!962467))))))) b!2720849))

(declare-fun m!3121299 () Bool)

(assert (=> b!2720848 m!3121299))

(declare-fun m!3121301 () Bool)

(assert (=> b!2720848 m!3121301))

(declare-fun m!3121303 () Bool)

(assert (=> b!2720849 m!3121303))

(assert (=> b!2719662 m!3119581))

(declare-fun b!2720853 () Bool)

(declare-fun e!1714778 () Bool)

(declare-fun tp!858506 () Bool)

(assert (=> b!2720853 (= e!1714778 tp!858506)))

(declare-fun b!2720854 () Bool)

(declare-fun tp!858508 () Bool)

(declare-fun tp!858507 () Bool)

(assert (=> b!2720854 (= e!1714778 (and tp!858508 tp!858507))))

(declare-fun b!2720851 () Bool)

(assert (=> b!2720851 (= e!1714778 tp_is_empty!13887)))

(declare-fun b!2720852 () Bool)

(declare-fun tp!858505 () Bool)

(declare-fun tp!858504 () Bool)

(assert (=> b!2720852 (= e!1714778 (and tp!858505 tp!858504))))

(assert (=> b!2719790 (= tp!858372 e!1714778)))

(assert (= (and b!2719790 (is-ElementMatch!7954 (regex!4802 (h!36797 (t!226341 rules!1182))))) b!2720851))

(assert (= (and b!2719790 (is-Concat!12979 (regex!4802 (h!36797 (t!226341 rules!1182))))) b!2720852))

(assert (= (and b!2719790 (is-Star!7954 (regex!4802 (h!36797 (t!226341 rules!1182))))) b!2720853))

(assert (= (and b!2719790 (is-Union!7954 (regex!4802 (h!36797 (t!226341 rules!1182))))) b!2720854))

(declare-fun b!2720857 () Bool)

(declare-fun b_free!76649 () Bool)

(declare-fun b_next!77353 () Bool)

(assert (=> b!2720857 (= b_free!76649 (not b_next!77353))))

(declare-fun tp!858509 () Bool)

(declare-fun b_and!200405 () Bool)

(assert (=> b!2720857 (= tp!858509 b_and!200405)))

(declare-fun b_free!76651 () Bool)

(declare-fun b_next!77355 () Bool)

(assert (=> b!2720857 (= b_free!76651 (not b_next!77355))))

(declare-fun t!226371 () Bool)

(declare-fun tb!151855 () Bool)

(assert (=> (and b!2720857 (= (toChars!6639 (transformation!4802 (h!36797 (t!226341 (t!226341 rules!1182))))) (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467)))))) t!226371) tb!151855))

(declare-fun result!187656 () Bool)

(assert (= result!187656 result!187622))

(assert (=> d!783492 t!226371))

(declare-fun tp!858512 () Bool)

(declare-fun b_and!200407 () Bool)

(assert (=> b!2720857 (= tp!858512 (and (=> t!226371 result!187656) b_and!200407))))

(declare-fun e!1714780 () Bool)

(assert (=> b!2720857 (= e!1714780 (and tp!858509 tp!858512))))

(declare-fun e!1714781 () Bool)

(declare-fun b!2720856 () Bool)

(declare-fun tp!858511 () Bool)

(assert (=> b!2720856 (= e!1714781 (and tp!858511 (inv!42612 (tag!5306 (h!36797 (t!226341 (t!226341 rules!1182))))) (inv!42619 (transformation!4802 (h!36797 (t!226341 (t!226341 rules!1182))))) e!1714780))))

(declare-fun b!2720855 () Bool)

(declare-fun e!1714779 () Bool)

(declare-fun tp!858510 () Bool)

(assert (=> b!2720855 (= e!1714779 (and e!1714781 tp!858510))))

(assert (=> b!2719789 (= tp!858371 e!1714779)))

(assert (= b!2720856 b!2720857))

(assert (= b!2720855 b!2720856))

(assert (= (and b!2719789 (is-Cons!31377 (t!226341 (t!226341 rules!1182)))) b!2720855))

(declare-fun m!3121305 () Bool)

(assert (=> b!2720856 m!3121305))

(declare-fun m!3121307 () Bool)

(assert (=> b!2720856 m!3121307))

(declare-fun b!2720858 () Bool)

(declare-fun e!1714783 () Bool)

(declare-fun tp!858513 () Bool)

(assert (=> b!2720858 (= e!1714783 (and tp_is_empty!13887 tp!858513))))

(assert (=> b!2719780 (= tp!858359 e!1714783)))

(assert (= (and b!2719780 (is-Cons!31376 (innerList!9891 (xs!12906 (c!439466 input!603))))) b!2720858))

(declare-fun b!2720859 () Bool)

(declare-fun e!1714784 () Bool)

(declare-fun tp!858514 () Bool)

(assert (=> b!2720859 (= e!1714784 (and tp_is_empty!13887 tp!858514))))

(assert (=> b!2719805 (= tp!858383 e!1714784)))

(assert (= (and b!2719805 (is-Cons!31376 (innerList!9891 (xs!12906 (c!439466 treated!9))))) b!2720859))

(declare-fun tp!858517 () Bool)

(declare-fun tp!858516 () Bool)

(declare-fun e!1714785 () Bool)

(declare-fun b!2720860 () Bool)

(assert (=> b!2720860 (= e!1714785 (and (inv!42616 (left!24122 (left!24122 (c!439466 treated!9)))) tp!858516 (inv!42616 (right!24452 (left!24122 (c!439466 treated!9)))) tp!858517))))

(declare-fun b!2720862 () Bool)

(declare-fun e!1714786 () Bool)

(declare-fun tp!858515 () Bool)

(assert (=> b!2720862 (= e!1714786 tp!858515)))

(declare-fun b!2720861 () Bool)

(assert (=> b!2720861 (= e!1714785 (and (inv!42629 (xs!12906 (left!24122 (c!439466 treated!9)))) e!1714786))))

(assert (=> b!2719803 (= tp!858384 (and (inv!42616 (left!24122 (c!439466 treated!9))) e!1714785))))

(assert (= (and b!2719803 (is-Node!9831 (left!24122 (c!439466 treated!9)))) b!2720860))

(assert (= b!2720861 b!2720862))

(assert (= (and b!2719803 (is-Leaf!14977 (left!24122 (c!439466 treated!9)))) b!2720861))

(declare-fun m!3121309 () Bool)

(assert (=> b!2720860 m!3121309))

(declare-fun m!3121311 () Bool)

(assert (=> b!2720860 m!3121311))

(declare-fun m!3121313 () Bool)

(assert (=> b!2720861 m!3121313))

(assert (=> b!2719803 m!3119813))

(declare-fun tp!858520 () Bool)

(declare-fun e!1714787 () Bool)

(declare-fun b!2720863 () Bool)

(declare-fun tp!858519 () Bool)

(assert (=> b!2720863 (= e!1714787 (and (inv!42616 (left!24122 (right!24452 (c!439466 treated!9)))) tp!858519 (inv!42616 (right!24452 (right!24452 (c!439466 treated!9)))) tp!858520))))

(declare-fun b!2720865 () Bool)

(declare-fun e!1714788 () Bool)

(declare-fun tp!858518 () Bool)

(assert (=> b!2720865 (= e!1714788 tp!858518)))

(declare-fun b!2720864 () Bool)

(assert (=> b!2720864 (= e!1714787 (and (inv!42629 (xs!12906 (right!24452 (c!439466 treated!9)))) e!1714788))))

(assert (=> b!2719803 (= tp!858385 (and (inv!42616 (right!24452 (c!439466 treated!9))) e!1714787))))

(assert (= (and b!2719803 (is-Node!9831 (right!24452 (c!439466 treated!9)))) b!2720863))

(assert (= b!2720864 b!2720865))

(assert (= (and b!2719803 (is-Leaf!14977 (right!24452 (c!439466 treated!9)))) b!2720864))

(declare-fun m!3121315 () Bool)

(assert (=> b!2720863 m!3121315))

(declare-fun m!3121317 () Bool)

(assert (=> b!2720863 m!3121317))

(declare-fun m!3121319 () Bool)

(assert (=> b!2720864 m!3121319))

(assert (=> b!2719803 m!3119815))

(declare-fun b_lambda!82539 () Bool)

(assert (= b_lambda!82535 (or (and b!2719492 b_free!76631 (= (toChars!6639 (transformation!4802 (h!36797 rules!1182))) (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))))) (and b!2719791 b_free!76639 (= (toChars!6639 (transformation!4802 (h!36797 (t!226341 rules!1182)))) (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))))) (and b!2720847 b_free!76647 (= (toChars!6639 (transformation!4802 (rule!7230 (h!36798 (innerList!9892 (xs!12907 (c!439468 acc!331))))))) (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))))) (and b!2720857 b_free!76651 (= (toChars!6639 (transformation!4802 (h!36797 (t!226341 (t!226341 rules!1182))))) (toChars!6639 (transformation!4802 (rule!7230 (_1!18167 (v!33039 lt!962467))))))) b_lambda!82539)))

(push 1)

(assert (not b!2720319))

(assert (not d!783862))

(assert (not d!783904))

(assert (not b!2720860))

(assert (not b!2720862))

(assert (not b!2720537))

(assert (not bm!175510))

(assert (not b!2720565))

(assert (not b!2720750))

(assert (not bm!175562))

(assert (not b!2720298))

(assert (not b!2720380))

(assert (not b!2720439))

(assert (not b!2720404))

(assert tp_is_empty!13887)

(assert b_and!200391)

(assert (not d!783654))

(assert (not b!2720534))

(assert (not b!2720438))

(assert (not b!2720717))

(assert (not b!2720013))

(assert (not b!2720853))

(assert (not b!2720427))

(assert (not b!2719803))

(assert (not b!2720595))

(assert (not d!783926))

(assert (not b!2720629))

(assert (not d!783994))

(assert (not b!2720699))

(assert (not b!2720078))

(assert (not b!2720799))

(assert (not d!783806))

(assert (not b!2720500))

(assert (not b!2720116))

(assert (not d!783924))

(assert (not b!2720783))

(assert (not d!783922))

(assert (not b!2720800))

(assert (not b!2720638))

(assert (not b!2720125))

(assert (not b!2720791))

(assert (not b!2720449))

(assert (not b!2720721))

(assert (not b!2720444))

(assert (not b!2720463))

(assert (not b!2720103))

(assert (not bm!175513))

(assert (not bm!175549))

(assert (not b!2720468))

(assert (not b!2720584))

(assert (not b!2720378))

(assert (not bm!175515))

(assert (not b!2720797))

(assert (not d!783928))

(assert (not b!2720728))

(assert (not b!2720065))

(assert (not d!783836))

(assert (not b!2720061))

(assert (not b!2720037))

(assert (not b!2720742))

(assert (not b!2720063))

(assert (not b!2720497))

(assert (not d!783762))

(assert (not b!2720778))

(assert (not b!2720766))

(assert (not b!2720598))

(assert (not b!2720789))

(assert (not d!783650))

(assert (not d!783800))

(assert (not b!2720782))

(assert (not b!2720784))

(assert (not b!2720767))

(assert (not b!2720308))

(assert (not b!2720487))

(assert b_and!200401)

(assert (not d!783784))

(assert (not d!784008))

(assert (not d!783778))

(assert (not d!783864))

(assert (not b_next!77333))

(assert (not b!2719778))

(assert (not bm!175556))

(assert (not b_next!77341))

(assert (not d!783750))

(assert (not b!2720798))

(assert (not b!2720233))

(assert (not b!2720770))

(assert (not b!2720392))

(assert (not d!783892))

(assert (not d!784004))

(assert (not d!783792))

(assert (not b!2720390))

(assert (not b!2720540))

(assert (not d!783944))

(assert (not b!2720373))

(assert (not b!2720467))

(assert (not b!2720762))

(assert (not d!783872))

(assert (not b!2720752))

(assert (not d!783910))

(assert (not b!2720528))

(assert (not b!2720829))

(assert (not bm!175506))

(assert (not b!2720634))

(assert (not b!2720852))

(assert (not b!2720845))

(assert (not bm!175545))

(assert (not b!2720083))

(assert (not b_next!77349))

(assert (not b!2720530))

(assert (not b!2720846))

(assert (not b!2720765))

(assert (not d!783702))

(assert (not b!2720527))

(assert (not b!2720754))

(assert (not b!2720733))

(assert (not b!2720458))

(assert (not b!2720796))

(assert (not d!783842))

(assert (not b!2720706))

(assert (not d!784012))

(assert (not b!2720563))

(assert (not b!2720832))

(assert (not b!2720508))

(assert (not b!2720794))

(assert (not b!2720382))

(assert (not b!2720772))

(assert (not b!2720396))

(assert (not b!2720816))

(assert (not b!2720212))

(assert (not b!2720861))

(assert (not d!783760))

(assert (not b!2720593))

(assert (not b!2720600))

(assert (not b!2719775))

(assert (not b_next!77355))

(assert (not b!2720821))

(assert (not b!2720422))

(assert (not d!783986))

(assert (not b!2720217))

(assert (not b!2720375))

(assert (not b!2720760))

(assert (not b!2720394))

(assert (not b!2720372))

(assert (not b!2720757))

(assert (not b!2720519))

(assert b_and!200393)

(assert (not b!2720132))

(assert (not b!2720825))

(assert (not d!783728))

(assert b_and!200389)

(assert (not b!2720511))

(assert (not d!783754))

(assert (not b!2720496))

(assert (not b!2720322))

(assert (not b!2720349))

(assert (not b!2720130))

(assert (not b!2720118))

(assert (not b!2720473))

(assert (not b!2720801))

(assert (not b_next!77335))

(assert (not b!2720464))

(assert (not b!2720596))

(assert (not b!2720455))

(assert (not b!2720632))

(assert (not b!2720718))

(assert (not d!783724))

(assert (not bm!175548))

(assert (not b!2720493))

(assert (not b!2720512))

(assert (not b_lambda!82539))

(assert (not d!783812))

(assert (not b!2720446))

(assert (not b!2720466))

(assert (not b!2720044))

(assert (not b!2720827))

(assert (not b!2720418))

(assert (not b!2720456))

(assert (not b!2720445))

(assert (not d!784026))

(assert (not b!2720635))

(assert (not b!2720483))

(assert (not b!2720398))

(assert (not b!2720745))

(assert (not b!2720823))

(assert (not b!2720806))

(assert (not b!2720082))

(assert (not b!2720443))

(assert (not b!2720812))

(assert (not b!2720301))

(assert (not b!2720035))

(assert (not d!783982))

(assert (not d!783690))

(assert (not b!2720419))

(assert (not b!2720727))

(assert (not d!783866))

(assert (not d!783816))

(assert (not b!2720119))

(assert (not b!2720017))

(assert (not b!2720011))

(assert (not b!2720127))

(assert (not b!2720516))

(assert (not d!783894))

(assert (not b!2720128))

(assert (not d!783990))

(assert (not bm!175557))

(assert (not bm!175544))

(assert (not b!2720469))

(assert (not b!2720741))

(assert (not b!2720410))

(assert (not b!2720517))

(assert (not b!2720436))

(assert (not b!2720764))

(assert (not bm!175542))

(assert (not b!2720214))

(assert (not d!783844))

(assert (not b!2720297))

(assert (not b!2720441))

(assert (not b!2720773))

(assert (not d!783768))

(assert (not d!783868))

(assert (not b!2720597))

(assert (not b!2720848))

(assert (not b!2720350))

(assert (not b!2720569))

(assert (not d!784034))

(assert (not b!2720081))

(assert (not d!783932))

(assert (not b!2720562))

(assert (not b!2720400))

(assert (not b!2720726))

(assert (not b!2720865))

(assert (not b!2720730))

(assert (not b!2720833))

(assert (not b!2720481))

(assert (not b!2720371))

(assert (not b!2720010))

(assert (not b!2720532))

(assert (not d!783870))

(assert (not d!783788))

(assert (not b!2720747))

(assert (not b!2720488))

(assert (not b!2720027))

(assert (not b_next!77351))

(assert b_and!200403)

(assert (not b!2720415))

(assert (not b!2720529))

(assert (not b!2720828))

(assert (not b!2720743))

(assert (not b!2720605))

(assert (not b!2720698))

(assert (not b_next!77353))

(assert (not b!2720703))

(assert (not b!2720120))

(assert (not b!2720577))

(assert (not bm!175519))

(assert (not b!2720808))

(assert (not b!2720381))

(assert (not d!783888))

(assert (not b!2720614))

(assert (not b!2720450))

(assert (not b!2720795))

(assert (not b!2720004))

(assert (not b!2720792))

(assert (not b!2720824))

(assert (not b!2720336))

(assert (not b!2720346))

(assert (not b!2720520))

(assert (not b_next!77343))

(assert (not b!2720849))

(assert (not d!783786))

(assert (not b!2720232))

(assert (not b!2720324))

(assert (not d!783706))

(assert (not b!2720781))

(assert (not d!783820))

(assert (not b!2720566))

(assert (not b!2720863))

(assert (not b!2720831))

(assert (not d!783886))

(assert (not b!2720117))

(assert (not b!2720615))

(assert (not b!2720470))

(assert (not d!783906))

(assert (not b!2720023))

(assert (not b!2720121))

(assert (not b!2720571))

(assert (not b!2720776))

(assert (not d!783832))

(assert (not b!2720805))

(assert (not b!2720636))

(assert (not b!2720786))

(assert (not b!2720568))

(assert (not d!784032))

(assert (not b!2720008))

(assert (not d!783796))

(assert (not b!2720367))

(assert (not b!2720737))

(assert (not d!783658))

(assert (not b!2720732))

(assert (not d!783846))

(assert (not b!2720459))

(assert (not b!2720494))

(assert (not d!783782))

(assert (not b!2720855))

(assert (not b!2720043))

(assert (not b!2720102))

(assert (not b!2720234))

(assert (not d!783790))

(assert (not d!783758))

(assert (not b!2720514))

(assert (not b!2720523))

(assert (not bm!175507))

(assert (not b!2720531))

(assert (not d!783660))

(assert (not b!2720499))

(assert (not b!2720858))

(assert (not b!2719662))

(assert (not b!2720477))

(assert (not b!2720490))

(assert (not b!2720746))

(assert (not b!2720804))

(assert (not b!2720802))

(assert (not b!2720015))

(assert (not d!784022))

(assert (not b!2720025))

(assert (not b!2720506))

(assert (not b!2720574))

(assert (not b!2720423))

(assert (not b!2720729))

(assert (not b!2720542))

(assert (not b!2720790))

(assert (not b!2720702))

(assert (not b!2720803))

(assert (not b!2720476))

(assert (not b!2720815))

(assert (not b!2720208))

(assert (not b!2720402))

(assert (not bm!175543))

(assert (not bm!175521))

(assert b_and!200381)

(assert (not bm!175566))

(assert (not b!2720864))

(assert (not b!2720735))

(assert (not b!2720779))

(assert (not b!2720055))

(assert (not b!2719800))

(assert (not b!2720006))

(assert (not b!2720406))

(assert (not b!2720518))

(assert (not d!783734))

(assert (not b!2720744))

(assert (not b!2720079))

(assert (not b!2720748))

(assert (not b!2720753))

(assert (not d!783780))

(assert (not b!2720854))

(assert (not b!2720626))

(assert (not b!2720379))

(assert (not b!2720524))

(assert (not d!783652))

(assert (not b!2720700))

(assert (not d!783676))

(assert (not bm!175546))

(assert (not d!783744))

(assert (not d!783834))

(assert (not b!2720521))

(assert (not b!2720720))

(assert (not d!783822))

(assert (not d!783824))

(assert (not bm!175558))

(assert (not b!2720335))

(assert (not b!2720755))

(assert (not d!783704))

(assert (not b!2720807))

(assert (not b!2720426))

(assert (not b!2720216))

(assert (not b!2720758))

(assert (not b!2720586))

(assert (not b!2720345))

(assert (not b!2720218))

(assert (not b!2720533))

(assert (not b!2720625))

(assert (not b!2720769))

(assert (not b!2720859))

(assert (not d!783984))

(assert (not b!2720303))

(assert (not d!783874))

(assert (not bm!175551))

(assert (not b!2720368))

(assert (not b!2720639))

(assert (not b!2720504))

(assert (not b!2720300))

(assert (not b!2720856))

(assert (not b!2720538))

(assert (not b!2720631))

(assert (not d!783860))

(assert (not b!2720123))

(assert (not b!2720785))

(assert (not b!2720740))

(assert b_and!200407)

(assert (not b!2720641))

(assert (not b!2720495))

(assert (not b!2720601))

(assert (not b!2720814))

(assert (not bm!175550))

(assert (not d!784016))

(assert (not bm!175565))

(assert (not b!2720575))

(assert (not bm!175567))

(assert (not b!2720051))

(assert (not b!2720338))

(assert (not b!2720572))

(assert (not b!2720561))

(assert (not b!2720793))

(assert (not b!2720810))

(assert (not b!2720763))

(assert (not b!2720409))

(assert (not b!2720850))

(assert (not b!2720485))

(assert (not b!2720594))

(assert (not b!2720465))

(assert (not bm!175547))

(assert (not b!2720053))

(assert (not b!2720608))

(assert (not b!2720236))

(assert (not b!2720630))

(assert (not b!2720811))

(assert (not d!783656))

(assert (not b!2720434))

(assert (not d!783916))

(assert (not b!2720588))

(assert (not bm!175561))

(assert (not d!784024))

(assert (not b!2720578))

(assert (not b!2720442))

(assert (not b!2720235))

(assert (not b!2720590))

(assert (not b!2720237))

(assert (not b!2720033))

(assert (not b!2720564))

(assert (not b!2720503))

(assert (not b!2720321))

(assert (not b!2720377))

(assert (not d!784010))

(assert (not b!2720479))

(assert (not d!783930))

(assert (not d!783896))

(assert (not b!2720317))

(assert (not b!2720604))

(assert b_and!200405)

(assert (not b!2720592))

(assert (not b!2720633))

(assert (not d!783674))

(assert (not b!2720756))

(assert (not d!783920))

(assert (not b!2720844))

(assert (not d!783756))

(check-sat)

(pop 1)

(push 1)

(assert b_and!200391)

(assert (not b_next!77341))

(assert (not b_next!77349))

(assert (not b_next!77355))

(assert (not b_next!77335))

(assert (not b_next!77343))

(assert b_and!200381)

(assert b_and!200407)

(assert b_and!200405)

(assert (not b_next!77333))

(assert b_and!200401)

(assert b_and!200393)

(assert b_and!200389)

(assert (not b_next!77351))

(assert (not b_next!77353))

(assert b_and!200403)

(check-sat)

(pop 1)

