; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!517750 () Bool)

(assert start!517750)

(declare-fun b!4930100 () Bool)

(declare-fun e!3080176 () Bool)

(assert (=> b!4930100 (= e!3080176 true)))

(declare-fun lt!2029387 () Int)

(declare-datatypes ((C!26986 0))(
  ( (C!26987 (val!22827 Int)) )
))
(declare-datatypes ((List!56837 0))(
  ( (Nil!56713) (Cons!56713 (h!63161 C!26986) (t!367313 List!56837)) )
))
(declare-fun lt!2029390 () List!56837)

(declare-fun size!37521 (List!56837) Int)

(assert (=> b!4930100 (= lt!2029387 (size!37521 lt!2029390))))

(declare-fun testedSuffix!70 () List!56837)

(declare-fun lt!2029389 () List!56837)

(assert (=> b!4930100 (= testedSuffix!70 lt!2029389)))

(declare-fun testedP!110 () List!56837)

(declare-datatypes ((Unit!147339 0))(
  ( (Unit!147340) )
))
(declare-fun lt!2029388 () Unit!147339)

(declare-fun lemmaSamePrefixThenSameSuffix!2374 (List!56837 List!56837 List!56837 List!56837 List!56837) Unit!147339)

(assert (=> b!4930100 (= lt!2029388 (lemmaSamePrefixThenSameSuffix!2374 testedP!110 testedSuffix!70 testedP!110 lt!2029389 lt!2029390))))

(declare-fun getSuffix!2960 (List!56837 List!56837) List!56837)

(assert (=> b!4930100 (= lt!2029389 (getSuffix!2960 lt!2029390 testedP!110))))

(declare-fun b!4930101 () Bool)

(declare-fun e!3080178 () Bool)

(declare-fun tp_is_empty!35933 () Bool)

(declare-fun tp!1384003 () Bool)

(assert (=> b!4930101 (= e!3080178 (and tp_is_empty!35933 tp!1384003))))

(declare-fun b!4930102 () Bool)

(declare-fun res!2103853 () Bool)

(declare-fun e!3080177 () Bool)

(assert (=> b!4930102 (=> (not res!2103853) (not e!3080177))))

(declare-fun testedPSize!70 () Int)

(assert (=> b!4930102 (= res!2103853 (= testedPSize!70 (size!37521 testedP!110)))))

(declare-fun b!4930103 () Bool)

(declare-fun res!2103854 () Bool)

(assert (=> b!4930103 (=> (not res!2103854) (not e!3080177))))

(declare-fun totalInputSize!132 () Int)

(declare-datatypes ((IArray!29835 0))(
  ( (IArray!29836 (innerList!14975 List!56837)) )
))
(declare-datatypes ((Conc!14887 0))(
  ( (Node!14887 (left!41365 Conc!14887) (right!41695 Conc!14887) (csize!30004 Int) (cheight!15098 Int)) (Leaf!24764 (xs!18211 IArray!29835) (csize!30005 Int)) (Empty!14887) )
))
(declare-datatypes ((BalanceConc!29204 0))(
  ( (BalanceConc!29205 (c!840179 Conc!14887)) )
))
(declare-fun totalInput!685 () BalanceConc!29204)

(declare-fun size!37522 (BalanceConc!29204) Int)

(assert (=> b!4930103 (= res!2103854 (= totalInputSize!132 (size!37522 totalInput!685)))))

(declare-fun b!4930104 () Bool)

(declare-fun e!3080175 () Bool)

(declare-fun tp!1384004 () Bool)

(declare-fun inv!73559 (Conc!14887) Bool)

(assert (=> b!4930104 (= e!3080175 (and (inv!73559 (c!840179 totalInput!685)) tp!1384004))))

(declare-fun b!4930105 () Bool)

(assert (=> b!4930105 (= e!3080177 (not e!3080176))))

(declare-fun res!2103856 () Bool)

(assert (=> b!4930105 (=> res!2103856 e!3080176)))

(declare-fun isPrefix!4976 (List!56837 List!56837) Bool)

(assert (=> b!4930105 (= res!2103856 (not (isPrefix!4976 testedP!110 lt!2029390)))))

(declare-fun lt!2029386 () List!56837)

(assert (=> b!4930105 (isPrefix!4976 testedP!110 lt!2029386)))

(declare-fun lt!2029391 () Unit!147339)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3200 (List!56837 List!56837) Unit!147339)

(assert (=> b!4930105 (= lt!2029391 (lemmaConcatTwoListThenFirstIsPrefix!3200 testedP!110 testedSuffix!70))))

(declare-fun b!4930106 () Bool)

(declare-fun e!3080179 () Bool)

(declare-fun tp!1384002 () Bool)

(assert (=> b!4930106 (= e!3080179 (and tp_is_empty!35933 tp!1384002))))

(declare-fun res!2103855 () Bool)

(assert (=> start!517750 (=> (not res!2103855) (not e!3080177))))

(assert (=> start!517750 (= res!2103855 (= lt!2029386 lt!2029390))))

(declare-fun list!17980 (BalanceConc!29204) List!56837)

(assert (=> start!517750 (= lt!2029390 (list!17980 totalInput!685))))

(declare-fun ++!12343 (List!56837 List!56837) List!56837)

(assert (=> start!517750 (= lt!2029386 (++!12343 testedP!110 testedSuffix!70))))

(assert (=> start!517750 e!3080177))

(assert (=> start!517750 e!3080179))

(assert (=> start!517750 true))

(declare-fun inv!73560 (BalanceConc!29204) Bool)

(assert (=> start!517750 (and (inv!73560 totalInput!685) e!3080175)))

(assert (=> start!517750 e!3080178))

(assert (= (and start!517750 res!2103855) b!4930102))

(assert (= (and b!4930102 res!2103853) b!4930103))

(assert (= (and b!4930103 res!2103854) b!4930105))

(assert (= (and b!4930105 (not res!2103856)) b!4930100))

(assert (= (and start!517750 (is-Cons!56713 testedP!110)) b!4930106))

(assert (= start!517750 b!4930104))

(assert (= (and start!517750 (is-Cons!56713 testedSuffix!70)) b!4930101))

(declare-fun m!5950212 () Bool)

(assert (=> b!4930100 m!5950212))

(declare-fun m!5950214 () Bool)

(assert (=> b!4930100 m!5950214))

(declare-fun m!5950216 () Bool)

(assert (=> b!4930100 m!5950216))

(declare-fun m!5950218 () Bool)

(assert (=> b!4930104 m!5950218))

(declare-fun m!5950220 () Bool)

(assert (=> b!4930102 m!5950220))

(declare-fun m!5950222 () Bool)

(assert (=> b!4930105 m!5950222))

(declare-fun m!5950224 () Bool)

(assert (=> b!4930105 m!5950224))

(declare-fun m!5950226 () Bool)

(assert (=> b!4930105 m!5950226))

(declare-fun m!5950228 () Bool)

(assert (=> b!4930103 m!5950228))

(declare-fun m!5950230 () Bool)

(assert (=> start!517750 m!5950230))

(declare-fun m!5950232 () Bool)

(assert (=> start!517750 m!5950232))

(declare-fun m!5950234 () Bool)

(assert (=> start!517750 m!5950234))

(push 1)

(assert (not start!517750))

(assert (not b!4930106))

(assert (not b!4930101))

(assert (not b!4930105))

(assert (not b!4930103))

(assert tp_is_empty!35933)

(assert (not b!4930102))

(assert (not b!4930104))

(assert (not b!4930100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

