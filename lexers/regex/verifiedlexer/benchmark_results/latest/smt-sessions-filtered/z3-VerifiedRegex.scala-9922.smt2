; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520320 () Bool)

(assert start!520320)

(declare-fun b!4944047 () Bool)

(declare-fun e!3088971 () Bool)

(declare-fun e!3088969 () Bool)

(assert (=> b!4944047 (= e!3088971 (not e!3088969))))

(declare-fun res!2109687 () Bool)

(assert (=> b!4944047 (=> res!2109687 e!3088969)))

(declare-datatypes ((C!27172 0))(
  ( (C!27173 (val!22920 Int)) )
))
(declare-datatypes ((List!57050 0))(
  ( (Nil!56926) (Cons!56926 (h!63374 C!27172) (t!367586 List!57050)) )
))
(declare-fun testedP!110 () List!57050)

(declare-fun lt!2037954 () List!57050)

(declare-fun isPrefix!5067 (List!57050 List!57050) Bool)

(assert (=> b!4944047 (= res!2109687 (not (isPrefix!5067 testedP!110 lt!2037954)))))

(declare-fun lt!2037953 () List!57050)

(assert (=> b!4944047 (isPrefix!5067 testedP!110 lt!2037953)))

(declare-datatypes ((Unit!147689 0))(
  ( (Unit!147690) )
))
(declare-fun lt!2037957 () Unit!147689)

(declare-fun testedSuffix!70 () List!57050)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3291 (List!57050 List!57050) Unit!147689)

(assert (=> b!4944047 (= lt!2037957 (lemmaConcatTwoListThenFirstIsPrefix!3291 testedP!110 testedSuffix!70))))

(declare-fun b!4944048 () Bool)

(declare-fun res!2109688 () Bool)

(assert (=> b!4944048 (=> (not res!2109688) (not e!3088971))))

(declare-fun totalInputSize!132 () Int)

(declare-datatypes ((IArray!30021 0))(
  ( (IArray!30022 (innerList!15068 List!57050)) )
))
(declare-datatypes ((Conc!14980 0))(
  ( (Node!14980 (left!41536 Conc!14980) (right!41866 Conc!14980) (csize!30190 Int) (cheight!15191 Int)) (Leaf!24903 (xs!18306 IArray!30021) (csize!30191 Int)) (Empty!14980) )
))
(declare-datatypes ((BalanceConc!29390 0))(
  ( (BalanceConc!29391 (c!843521 Conc!14980)) )
))
(declare-fun totalInput!685 () BalanceConc!29390)

(declare-fun size!37751 (BalanceConc!29390) Int)

(assert (=> b!4944048 (= res!2109688 (= totalInputSize!132 (size!37751 totalInput!685)))))

(declare-fun res!2109689 () Bool)

(assert (=> start!520320 (=> (not res!2109689) (not e!3088971))))

(assert (=> start!520320 (= res!2109689 (= lt!2037953 lt!2037954))))

(declare-fun list!18127 (BalanceConc!29390) List!57050)

(assert (=> start!520320 (= lt!2037954 (list!18127 totalInput!685))))

(declare-fun ++!12446 (List!57050 List!57050) List!57050)

(assert (=> start!520320 (= lt!2037953 (++!12446 testedP!110 testedSuffix!70))))

(assert (=> start!520320 e!3088971))

(declare-fun e!3088967 () Bool)

(assert (=> start!520320 e!3088967))

(assert (=> start!520320 true))

(declare-fun e!3088970 () Bool)

(declare-fun inv!74090 (BalanceConc!29390) Bool)

(assert (=> start!520320 (and (inv!74090 totalInput!685) e!3088970)))

(declare-fun e!3088968 () Bool)

(assert (=> start!520320 e!3088968))

(declare-fun b!4944049 () Bool)

(declare-fun tp_is_empty!36119 () Bool)

(declare-fun tp!1386835 () Bool)

(assert (=> b!4944049 (= e!3088967 (and tp_is_empty!36119 tp!1386835))))

(declare-fun b!4944050 () Bool)

(declare-fun tp!1386833 () Bool)

(declare-fun inv!74091 (Conc!14980) Bool)

(assert (=> b!4944050 (= e!3088970 (and (inv!74091 (c!843521 totalInput!685)) tp!1386833))))

(declare-fun b!4944051 () Bool)

(declare-fun lt!2037955 () List!57050)

(assert (=> b!4944051 (= e!3088969 (= lt!2037955 testedSuffix!70))))

(assert (=> b!4944051 (= testedSuffix!70 lt!2037955)))

(declare-fun lt!2037956 () Unit!147689)

(declare-fun lemmaSamePrefixThenSameSuffix!2459 (List!57050 List!57050 List!57050 List!57050 List!57050) Unit!147689)

(assert (=> b!4944051 (= lt!2037956 (lemmaSamePrefixThenSameSuffix!2459 testedP!110 testedSuffix!70 testedP!110 lt!2037955 lt!2037954))))

(declare-fun getSuffix!3049 (List!57050 List!57050) List!57050)

(assert (=> b!4944051 (= lt!2037955 (getSuffix!3049 lt!2037954 testedP!110))))

(declare-fun b!4944052 () Bool)

(declare-fun tp!1386834 () Bool)

(assert (=> b!4944052 (= e!3088968 (and tp_is_empty!36119 tp!1386834))))

(declare-fun b!4944053 () Bool)

(declare-fun res!2109690 () Bool)

(assert (=> b!4944053 (=> (not res!2109690) (not e!3088971))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37752 (List!57050) Int)

(assert (=> b!4944053 (= res!2109690 (= testedPSize!70 (size!37752 testedP!110)))))

(assert (= (and start!520320 res!2109689) b!4944053))

(assert (= (and b!4944053 res!2109690) b!4944048))

(assert (= (and b!4944048 res!2109688) b!4944047))

(assert (= (and b!4944047 (not res!2109687)) b!4944051))

(get-info :version)

(assert (= (and start!520320 ((_ is Cons!56926) testedP!110)) b!4944049))

(assert (= start!520320 b!4944050))

(assert (= (and start!520320 ((_ is Cons!56926) testedSuffix!70)) b!4944052))

(declare-fun m!5967074 () Bool)

(assert (=> b!4944051 m!5967074))

(declare-fun m!5967076 () Bool)

(assert (=> b!4944051 m!5967076))

(declare-fun m!5967078 () Bool)

(assert (=> b!4944048 m!5967078))

(declare-fun m!5967080 () Bool)

(assert (=> b!4944053 m!5967080))

(declare-fun m!5967082 () Bool)

(assert (=> b!4944050 m!5967082))

(declare-fun m!5967084 () Bool)

(assert (=> b!4944047 m!5967084))

(declare-fun m!5967086 () Bool)

(assert (=> b!4944047 m!5967086))

(declare-fun m!5967088 () Bool)

(assert (=> b!4944047 m!5967088))

(declare-fun m!5967090 () Bool)

(assert (=> start!520320 m!5967090))

(declare-fun m!5967092 () Bool)

(assert (=> start!520320 m!5967092))

(declare-fun m!5967094 () Bool)

(assert (=> start!520320 m!5967094))

(check-sat tp_is_empty!36119 (not start!520320) (not b!4944052) (not b!4944047) (not b!4944051) (not b!4944050) (not b!4944053) (not b!4944049) (not b!4944048))
(check-sat)
