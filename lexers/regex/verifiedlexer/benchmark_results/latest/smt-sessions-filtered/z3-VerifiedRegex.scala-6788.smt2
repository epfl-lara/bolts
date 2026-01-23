; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353956 () Bool)

(assert start!353956)

(declare-fun b!3767831 () Bool)

(declare-fun b_free!100957 () Bool)

(declare-fun b_next!101661 () Bool)

(assert (=> b!3767831 (= b_free!100957 (not b_next!101661))))

(declare-fun tp!1151055 () Bool)

(declare-fun b_and!279771 () Bool)

(assert (=> b!3767831 (= tp!1151055 b_and!279771)))

(declare-fun b_free!100959 () Bool)

(declare-fun b_next!101663 () Bool)

(assert (=> b!3767831 (= b_free!100959 (not b_next!101663))))

(declare-fun tp!1151052 () Bool)

(declare-fun b_and!279773 () Bool)

(assert (=> b!3767831 (= tp!1151052 b_and!279773)))

(declare-fun b!3767830 () Bool)

(declare-fun res!1525399 () Bool)

(declare-fun e!2330397 () Bool)

(assert (=> b!3767830 (=> (not res!1525399) (not e!2330397))))

(declare-datatypes ((LexerInterface!5771 0))(
  ( (LexerInterfaceExt!5768 (__x!25041 Int)) (Lexer!5769) )
))
(declare-fun thiss!11876 () LexerInterface!5771)

(declare-datatypes ((List!40352 0))(
  ( (Nil!40228) (Cons!40228 (h!45648 (_ BitVec 16)) (t!304389 List!40352)) )
))
(declare-datatypes ((TokenValue!6412 0))(
  ( (FloatLiteralValue!12824 (text!45329 List!40352)) (TokenValueExt!6411 (__x!25042 Int)) (Broken!32060 (value!196768 List!40352)) (Object!6535) (End!6412) (Def!6412) (Underscore!6412) (Match!6412) (Else!6412) (Error!6412) (Case!6412) (If!6412) (Extends!6412) (Abstract!6412) (Class!6412) (Val!6412) (DelimiterValue!12824 (del!6472 List!40352)) (KeywordValue!6418 (value!196769 List!40352)) (CommentValue!12824 (value!196770 List!40352)) (WhitespaceValue!12824 (value!196771 List!40352)) (IndentationValue!6412 (value!196772 List!40352)) (String!45741) (Int32!6412) (Broken!32061 (value!196773 List!40352)) (Boolean!6413) (Unit!57933) (OperatorValue!6415 (op!6472 List!40352)) (IdentifierValue!12824 (value!196774 List!40352)) (IdentifierValue!12825 (value!196775 List!40352)) (WhitespaceValue!12825 (value!196776 List!40352)) (True!12824) (False!12824) (Broken!32062 (value!196777 List!40352)) (Broken!32063 (value!196778 List!40352)) (True!12825) (RightBrace!6412) (RightBracket!6412) (Colon!6412) (Null!6412) (Comma!6412) (LeftBracket!6412) (False!12825) (LeftBrace!6412) (ImaginaryLiteralValue!6412 (text!45330 List!40352)) (StringLiteralValue!19236 (value!196779 List!40352)) (EOFValue!6412 (value!196780 List!40352)) (IdentValue!6412 (value!196781 List!40352)) (DelimiterValue!12825 (value!196782 List!40352)) (DedentValue!6412 (value!196783 List!40352)) (NewLineValue!6412 (value!196784 List!40352)) (IntegerValue!19236 (value!196785 (_ BitVec 32)) (text!45331 List!40352)) (IntegerValue!19237 (value!196786 Int) (text!45332 List!40352)) (Times!6412) (Or!6412) (Equal!6412) (Minus!6412) (Broken!32064 (value!196787 List!40352)) (And!6412) (Div!6412) (LessEqual!6412) (Mod!6412) (Concat!17499) (Not!6412) (Plus!6412) (SpaceValue!6412 (value!196788 List!40352)) (IntegerValue!19238 (value!196789 Int) (text!45333 List!40352)) (StringLiteralValue!19237 (text!45334 List!40352)) (FloatLiteralValue!12825 (text!45335 List!40352)) (BytesLiteralValue!6412 (value!196790 List!40352)) (CommentValue!12825 (value!196791 List!40352)) (StringLiteralValue!19238 (value!196792 List!40352)) (ErrorTokenValue!6412 (msg!6473 List!40352)) )
))
(declare-datatypes ((C!22360 0))(
  ( (C!22361 (val!13256 Int)) )
))
(declare-datatypes ((Regex!11087 0))(
  ( (ElementMatch!11087 (c!652703 C!22360)) (Concat!17500 (regOne!22686 Regex!11087) (regTwo!22686 Regex!11087)) (EmptyExpr!11087) (Star!11087 (reg!11416 Regex!11087)) (EmptyLang!11087) (Union!11087 (regOne!22687 Regex!11087) (regTwo!22687 Regex!11087)) )
))
(declare-datatypes ((String!45742 0))(
  ( (String!45743 (value!196793 String)) )
))
(declare-datatypes ((List!40353 0))(
  ( (Nil!40229) (Cons!40229 (h!45649 C!22360) (t!304390 List!40353)) )
))
(declare-datatypes ((IArray!24681 0))(
  ( (IArray!24682 (innerList!12398 List!40353)) )
))
(declare-datatypes ((Conc!12338 0))(
  ( (Node!12338 (left!31134 Conc!12338) (right!31464 Conc!12338) (csize!24906 Int) (cheight!12549 Int)) (Leaf!19127 (xs!15552 IArray!24681) (csize!24907 Int)) (Empty!12338) )
))
(declare-datatypes ((BalanceConc!24270 0))(
  ( (BalanceConc!24271 (c!652704 Conc!12338)) )
))
(declare-datatypes ((TokenValueInjection!12252 0))(
  ( (TokenValueInjection!12253 (toValue!8546 Int) (toChars!8405 Int)) )
))
(declare-datatypes ((Rule!12164 0))(
  ( (Rule!12165 (regex!6182 Regex!11087) (tag!7042 String!45742) (isSeparator!6182 Bool) (transformation!6182 TokenValueInjection!12252)) )
))
(declare-datatypes ((List!40354 0))(
  ( (Nil!40230) (Cons!40230 (h!45650 Rule!12164) (t!304391 List!40354)) )
))
(declare-fun rules!1265 () List!40354)

(declare-fun rulesInvariant!5114 (LexerInterface!5771 List!40354) Bool)

(assert (=> b!3767830 (= res!1525399 (rulesInvariant!5114 thiss!11876 rules!1265))))

(declare-fun e!2330394 () Bool)

(assert (=> b!3767831 (= e!2330394 (and tp!1151055 tp!1151052))))

(declare-fun b!3767832 () Bool)

(declare-fun e!2330406 () Bool)

(declare-datatypes ((Token!11502 0))(
  ( (Token!11503 (value!196794 TokenValue!6412) (rule!8946 Rule!12164) (size!30271 Int) (originalCharacters!6782 List!40353)) )
))
(declare-datatypes ((List!40355 0))(
  ( (Nil!40231) (Cons!40231 (h!45651 Token!11502) (t!304392 List!40355)) )
))
(declare-datatypes ((IArray!24683 0))(
  ( (IArray!24684 (innerList!12399 List!40355)) )
))
(declare-datatypes ((Conc!12339 0))(
  ( (Node!12339 (left!31135 Conc!12339) (right!31465 Conc!12339) (csize!24908 Int) (cheight!12550 Int)) (Leaf!19128 (xs!15553 IArray!24683) (csize!24909 Int)) (Empty!12339) )
))
(declare-datatypes ((BalanceConc!24272 0))(
  ( (BalanceConc!24273 (c!652705 Conc!12339)) )
))
(declare-fun acc!335 () BalanceConc!24272)

(declare-fun tp!1151057 () Bool)

(declare-fun inv!54037 (Conc!12339) Bool)

(assert (=> b!3767832 (= e!2330406 (and (inv!54037 (c!652705 acc!335)) tp!1151057))))

(declare-fun b!3767833 () Bool)

(declare-fun e!2330401 () Bool)

(declare-fun e!2330393 () Bool)

(declare-fun tp!1151058 () Bool)

(assert (=> b!3767833 (= e!2330401 (and e!2330393 tp!1151058))))

(declare-fun b!3767834 () Bool)

(declare-fun res!1525404 () Bool)

(assert (=> b!3767834 (=> (not res!1525404) (not e!2330397))))

(declare-fun isEmpty!23627 (List!40354) Bool)

(assert (=> b!3767834 (= res!1525404 (not (isEmpty!23627 rules!1265)))))

(declare-fun b!3767835 () Bool)

(declare-fun e!2330398 () Bool)

(declare-fun e!2330400 () Bool)

(assert (=> b!3767835 (= e!2330398 (not e!2330400))))

(declare-fun res!1525407 () Bool)

(assert (=> b!3767835 (=> res!1525407 e!2330400)))

(declare-fun lt!1303593 () List!40353)

(declare-fun lt!1303586 () List!40353)

(declare-fun isSuffix!956 (List!40353 List!40353) Bool)

(assert (=> b!3767835 (= res!1525407 (not (isSuffix!956 lt!1303593 lt!1303586)))))

(declare-fun lt!1303585 () List!40353)

(assert (=> b!3767835 (isSuffix!956 lt!1303593 lt!1303585)))

(declare-datatypes ((Unit!57934 0))(
  ( (Unit!57935) )
))
(declare-fun lt!1303589 () Unit!57934)

(declare-fun lt!1303590 () List!40353)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!641 (List!40353 List!40353) Unit!57934)

(assert (=> b!3767835 (= lt!1303589 (lemmaConcatTwoListThenFSndIsSuffix!641 lt!1303590 lt!1303593))))

(declare-fun b!3767836 () Bool)

(declare-fun e!2330404 () Bool)

(assert (=> b!3767836 (= e!2330404 true)))

(declare-fun lt!1303584 () List!40353)

(declare-fun lt!1303595 () List!40353)

(declare-fun ++!9999 (List!40353 List!40353) List!40353)

(assert (=> b!3767836 (= (++!9999 (++!9999 lt!1303590 lt!1303584) lt!1303595) (++!9999 lt!1303590 (++!9999 lt!1303584 lt!1303595)))))

(declare-fun lt!1303583 () Unit!57934)

(declare-fun lemmaConcatAssociativity!2116 (List!40353 List!40353 List!40353) Unit!57934)

(assert (=> b!3767836 (= lt!1303583 (lemmaConcatAssociativity!2116 lt!1303590 lt!1303584 lt!1303595))))

(declare-datatypes ((tuple2!39270 0))(
  ( (tuple2!39271 (_1!22769 Token!11502) (_2!22769 BalanceConc!24270)) )
))
(declare-datatypes ((Option!8582 0))(
  ( (None!8581) (Some!8581 (v!38747 tuple2!39270)) )
))
(declare-fun lt!1303591 () Option!8582)

(declare-fun list!14883 (BalanceConc!24270) List!40353)

(assert (=> b!3767836 (= lt!1303595 (list!14883 (_2!22769 (v!38747 lt!1303591))))))

(declare-fun charsOf!4024 (Token!11502) BalanceConc!24270)

(assert (=> b!3767836 (= lt!1303584 (list!14883 (charsOf!4024 (_1!22769 (v!38747 lt!1303591)))))))

(declare-datatypes ((tuple2!39272 0))(
  ( (tuple2!39273 (_1!22770 BalanceConc!24272) (_2!22770 BalanceConc!24270)) )
))
(declare-fun lt!1303594 () tuple2!39272)

(declare-fun lexRec!795 (LexerInterface!5771 List!40354 BalanceConc!24270) tuple2!39272)

(assert (=> b!3767836 (= lt!1303594 (lexRec!795 thiss!11876 rules!1265 (_2!22769 (v!38747 lt!1303591))))))

(declare-fun b!3767837 () Bool)

(declare-fun e!2330395 () Bool)

(assert (=> b!3767837 (= e!2330395 e!2330398)))

(declare-fun res!1525405 () Bool)

(assert (=> b!3767837 (=> (not res!1525405) (not e!2330398))))

(declare-fun lt!1303588 () tuple2!39272)

(declare-fun lt!1303592 () tuple2!39272)

(declare-fun list!14884 (BalanceConc!24272) List!40355)

(declare-fun ++!10000 (BalanceConc!24272 BalanceConc!24272) BalanceConc!24272)

(assert (=> b!3767837 (= res!1525405 (= (list!14884 (_1!22770 lt!1303588)) (list!14884 (++!10000 acc!335 (_1!22770 lt!1303592)))))))

(declare-fun input!678 () BalanceConc!24270)

(assert (=> b!3767837 (= lt!1303592 (lexRec!795 thiss!11876 rules!1265 input!678))))

(declare-fun totalInput!335 () BalanceConc!24270)

(assert (=> b!3767837 (= lt!1303588 (lexRec!795 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3767838 () Bool)

(declare-fun e!2330402 () Bool)

(declare-fun tp!1151051 () Bool)

(declare-fun inv!54038 (Conc!12338) Bool)

(assert (=> b!3767838 (= e!2330402 (and (inv!54038 (c!652704 input!678)) tp!1151051))))

(declare-fun tp!1151056 () Bool)

(declare-fun b!3767839 () Bool)

(declare-fun inv!54031 (String!45742) Bool)

(declare-fun inv!54039 (TokenValueInjection!12252) Bool)

(assert (=> b!3767839 (= e!2330393 (and tp!1151056 (inv!54031 (tag!7042 (h!45650 rules!1265))) (inv!54039 (transformation!6182 (h!45650 rules!1265))) e!2330394))))

(declare-fun res!1525406 () Bool)

(assert (=> start!353956 (=> (not res!1525406) (not e!2330397))))

(get-info :version)

(assert (=> start!353956 (= res!1525406 ((_ is Lexer!5769) thiss!11876))))

(assert (=> start!353956 e!2330397))

(declare-fun inv!54040 (BalanceConc!24270) Bool)

(assert (=> start!353956 (and (inv!54040 input!678) e!2330402)))

(declare-fun inv!54041 (BalanceConc!24272) Bool)

(assert (=> start!353956 (and (inv!54041 acc!335) e!2330406)))

(declare-fun treated!13 () BalanceConc!24270)

(declare-fun e!2330396 () Bool)

(assert (=> start!353956 (and (inv!54040 treated!13) e!2330396)))

(assert (=> start!353956 e!2330401))

(assert (=> start!353956 true))

(declare-fun e!2330399 () Bool)

(assert (=> start!353956 (and (inv!54040 totalInput!335) e!2330399)))

(declare-fun b!3767840 () Bool)

(declare-fun e!2330405 () Bool)

(assert (=> b!3767840 (= e!2330405 e!2330395)))

(declare-fun res!1525408 () Bool)

(assert (=> b!3767840 (=> (not res!1525408) (not e!2330395))))

(declare-fun lt!1303587 () tuple2!39272)

(assert (=> b!3767840 (= res!1525408 (= (list!14884 (_1!22770 lt!1303587)) (list!14884 acc!335)))))

(assert (=> b!3767840 (= lt!1303587 (lexRec!795 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3767841 () Bool)

(declare-fun res!1525401 () Bool)

(assert (=> b!3767841 (=> (not res!1525401) (not e!2330395))))

(declare-fun isEmpty!23628 (List!40353) Bool)

(assert (=> b!3767841 (= res!1525401 (isEmpty!23628 (list!14883 (_2!22770 lt!1303587))))))

(declare-fun b!3767842 () Bool)

(declare-fun res!1525403 () Bool)

(assert (=> b!3767842 (=> (not res!1525403) (not e!2330398))))

(assert (=> b!3767842 (= res!1525403 (= (list!14883 (_2!22770 lt!1303588)) (list!14883 (_2!22770 lt!1303592))))))

(declare-fun b!3767843 () Bool)

(assert (=> b!3767843 (= e!2330400 e!2330404)))

(declare-fun res!1525400 () Bool)

(assert (=> b!3767843 (=> res!1525400 e!2330404)))

(assert (=> b!3767843 (= res!1525400 (not ((_ is Some!8581) lt!1303591)))))

(declare-fun maxPrefixZipperSequenceV2!575 (LexerInterface!5771 List!40354 BalanceConc!24270 BalanceConc!24270) Option!8582)

(assert (=> b!3767843 (= lt!1303591 (maxPrefixZipperSequenceV2!575 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3767844 () Bool)

(declare-fun tp!1151053 () Bool)

(assert (=> b!3767844 (= e!2330399 (and (inv!54038 (c!652704 totalInput!335)) tp!1151053))))

(declare-fun b!3767845 () Bool)

(assert (=> b!3767845 (= e!2330397 e!2330405)))

(declare-fun res!1525402 () Bool)

(assert (=> b!3767845 (=> (not res!1525402) (not e!2330405))))

(assert (=> b!3767845 (= res!1525402 (= lt!1303586 lt!1303585))))

(assert (=> b!3767845 (= lt!1303585 (++!9999 lt!1303590 lt!1303593))))

(assert (=> b!3767845 (= lt!1303586 (list!14883 totalInput!335))))

(assert (=> b!3767845 (= lt!1303593 (list!14883 input!678))))

(assert (=> b!3767845 (= lt!1303590 (list!14883 treated!13))))

(declare-fun b!3767846 () Bool)

(declare-fun tp!1151054 () Bool)

(assert (=> b!3767846 (= e!2330396 (and (inv!54038 (c!652704 treated!13)) tp!1151054))))

(assert (= (and start!353956 res!1525406) b!3767834))

(assert (= (and b!3767834 res!1525404) b!3767830))

(assert (= (and b!3767830 res!1525399) b!3767845))

(assert (= (and b!3767845 res!1525402) b!3767840))

(assert (= (and b!3767840 res!1525408) b!3767841))

(assert (= (and b!3767841 res!1525401) b!3767837))

(assert (= (and b!3767837 res!1525405) b!3767842))

(assert (= (and b!3767842 res!1525403) b!3767835))

(assert (= (and b!3767835 (not res!1525407)) b!3767843))

(assert (= (and b!3767843 (not res!1525400)) b!3767836))

(assert (= start!353956 b!3767838))

(assert (= start!353956 b!3767832))

(assert (= start!353956 b!3767846))

(assert (= b!3767839 b!3767831))

(assert (= b!3767833 b!3767839))

(assert (= (and start!353956 ((_ is Cons!40230) rules!1265)) b!3767833))

(assert (= start!353956 b!3767844))

(declare-fun m!4264355 () Bool)

(assert (=> b!3767841 m!4264355))

(assert (=> b!3767841 m!4264355))

(declare-fun m!4264357 () Bool)

(assert (=> b!3767841 m!4264357))

(declare-fun m!4264359 () Bool)

(assert (=> b!3767832 m!4264359))

(declare-fun m!4264361 () Bool)

(assert (=> b!3767830 m!4264361))

(declare-fun m!4264363 () Bool)

(assert (=> b!3767838 m!4264363))

(declare-fun m!4264365 () Bool)

(assert (=> b!3767834 m!4264365))

(declare-fun m!4264367 () Bool)

(assert (=> b!3767837 m!4264367))

(declare-fun m!4264369 () Bool)

(assert (=> b!3767837 m!4264369))

(declare-fun m!4264371 () Bool)

(assert (=> b!3767837 m!4264371))

(declare-fun m!4264373 () Bool)

(assert (=> b!3767837 m!4264373))

(assert (=> b!3767837 m!4264369))

(declare-fun m!4264375 () Bool)

(assert (=> b!3767837 m!4264375))

(declare-fun m!4264377 () Bool)

(assert (=> start!353956 m!4264377))

(declare-fun m!4264379 () Bool)

(assert (=> start!353956 m!4264379))

(declare-fun m!4264381 () Bool)

(assert (=> start!353956 m!4264381))

(declare-fun m!4264383 () Bool)

(assert (=> start!353956 m!4264383))

(declare-fun m!4264385 () Bool)

(assert (=> b!3767845 m!4264385))

(declare-fun m!4264387 () Bool)

(assert (=> b!3767845 m!4264387))

(declare-fun m!4264389 () Bool)

(assert (=> b!3767845 m!4264389))

(declare-fun m!4264391 () Bool)

(assert (=> b!3767845 m!4264391))

(declare-fun m!4264393 () Bool)

(assert (=> b!3767836 m!4264393))

(declare-fun m!4264395 () Bool)

(assert (=> b!3767836 m!4264395))

(declare-fun m!4264397 () Bool)

(assert (=> b!3767836 m!4264397))

(declare-fun m!4264399 () Bool)

(assert (=> b!3767836 m!4264399))

(declare-fun m!4264401 () Bool)

(assert (=> b!3767836 m!4264401))

(declare-fun m!4264403 () Bool)

(assert (=> b!3767836 m!4264403))

(assert (=> b!3767836 m!4264403))

(declare-fun m!4264405 () Bool)

(assert (=> b!3767836 m!4264405))

(declare-fun m!4264407 () Bool)

(assert (=> b!3767836 m!4264407))

(assert (=> b!3767836 m!4264401))

(declare-fun m!4264409 () Bool)

(assert (=> b!3767836 m!4264409))

(assert (=> b!3767836 m!4264397))

(declare-fun m!4264411 () Bool)

(assert (=> b!3767846 m!4264411))

(declare-fun m!4264413 () Bool)

(assert (=> b!3767843 m!4264413))

(declare-fun m!4264415 () Bool)

(assert (=> b!3767840 m!4264415))

(declare-fun m!4264417 () Bool)

(assert (=> b!3767840 m!4264417))

(declare-fun m!4264419 () Bool)

(assert (=> b!3767840 m!4264419))

(declare-fun m!4264421 () Bool)

(assert (=> b!3767844 m!4264421))

(declare-fun m!4264423 () Bool)

(assert (=> b!3767839 m!4264423))

(declare-fun m!4264425 () Bool)

(assert (=> b!3767839 m!4264425))

(declare-fun m!4264427 () Bool)

(assert (=> b!3767842 m!4264427))

(declare-fun m!4264429 () Bool)

(assert (=> b!3767842 m!4264429))

(declare-fun m!4264431 () Bool)

(assert (=> b!3767835 m!4264431))

(declare-fun m!4264433 () Bool)

(assert (=> b!3767835 m!4264433))

(declare-fun m!4264435 () Bool)

(assert (=> b!3767835 m!4264435))

(check-sat b_and!279773 (not b!3767842) (not b_next!101661) (not b_next!101663) (not b!3767837) (not b!3767839) b_and!279771 (not b!3767833) (not b!3767834) (not b!3767844) (not b!3767838) (not b!3767836) (not b!3767846) (not b!3767840) (not b!3767832) (not start!353956) (not b!3767845) (not b!3767830) (not b!3767835) (not b!3767841) (not b!3767843))
(check-sat b_and!279771 b_and!279773 (not b_next!101661) (not b_next!101663))
