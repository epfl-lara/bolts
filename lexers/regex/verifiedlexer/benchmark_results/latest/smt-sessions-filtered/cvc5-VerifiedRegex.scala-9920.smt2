; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!520274 () Bool)

(assert start!520274)

(declare-fun b!4943802 () Bool)

(declare-fun res!2109576 () Bool)

(declare-fun e!3088809 () Bool)

(assert (=> b!4943802 (=> (not res!2109576) (not e!3088809))))

(declare-fun testedPSize!70 () Int)

(declare-datatypes ((C!27162 0))(
  ( (C!27163 (val!22915 Int)) )
))
(declare-datatypes ((List!57045 0))(
  ( (Nil!56921) (Cons!56921 (h!63369 C!27162) (t!367581 List!57045)) )
))
(declare-fun testedP!110 () List!57045)

(declare-fun size!37739 (List!57045) Int)

(assert (=> b!4943802 (= res!2109576 (= testedPSize!70 (size!37739 testedP!110)))))

(declare-fun res!2109574 () Bool)

(assert (=> start!520274 (=> (not res!2109574) (not e!3088809))))

(declare-fun lt!2037855 () List!57045)

(declare-fun lt!2037857 () List!57045)

(assert (=> start!520274 (= res!2109574 (= lt!2037855 lt!2037857))))

(declare-datatypes ((IArray!30011 0))(
  ( (IArray!30012 (innerList!15063 List!57045)) )
))
(declare-datatypes ((Conc!14975 0))(
  ( (Node!14975 (left!41529 Conc!14975) (right!41859 Conc!14975) (csize!30180 Int) (cheight!15186 Int)) (Leaf!24896 (xs!18301 IArray!30011) (csize!30181 Int)) (Empty!14975) )
))
(declare-datatypes ((BalanceConc!29380 0))(
  ( (BalanceConc!29381 (c!843490 Conc!14975)) )
))
(declare-fun totalInput!685 () BalanceConc!29380)

(declare-fun list!18120 (BalanceConc!29380) List!57045)

(assert (=> start!520274 (= lt!2037857 (list!18120 totalInput!685))))

(declare-fun testedSuffix!70 () List!57045)

(declare-fun ++!12441 (List!57045 List!57045) List!57045)

(assert (=> start!520274 (= lt!2037855 (++!12441 testedP!110 testedSuffix!70))))

(assert (=> start!520274 e!3088809))

(declare-fun e!3088812 () Bool)

(assert (=> start!520274 e!3088812))

(assert (=> start!520274 true))

(declare-fun e!3088810 () Bool)

(declare-fun inv!74068 (BalanceConc!29380) Bool)

(assert (=> start!520274 (and (inv!74068 totalInput!685) e!3088810)))

(declare-fun e!3088811 () Bool)

(assert (=> start!520274 e!3088811))

(declare-fun b!4943803 () Bool)

(declare-fun tp_is_empty!36109 () Bool)

(declare-fun tp!1386764 () Bool)

(assert (=> b!4943803 (= e!3088812 (and tp_is_empty!36109 tp!1386764))))

(declare-fun b!4943804 () Bool)

(declare-fun e!3088808 () Bool)

(assert (=> b!4943804 (= e!3088808 true)))

(declare-fun lt!2037856 () List!57045)

(declare-fun getSuffix!3044 (List!57045 List!57045) List!57045)

(assert (=> b!4943804 (= lt!2037856 (getSuffix!3044 lt!2037857 testedP!110))))

(declare-fun b!4943805 () Bool)

(assert (=> b!4943805 (= e!3088809 (not e!3088808))))

(declare-fun res!2109575 () Bool)

(assert (=> b!4943805 (=> res!2109575 e!3088808)))

(declare-fun isPrefix!5062 (List!57045 List!57045) Bool)

(assert (=> b!4943805 (= res!2109575 (not (isPrefix!5062 testedP!110 lt!2037857)))))

(assert (=> b!4943805 (isPrefix!5062 testedP!110 lt!2037855)))

(declare-datatypes ((Unit!147679 0))(
  ( (Unit!147680) )
))
(declare-fun lt!2037854 () Unit!147679)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3286 (List!57045 List!57045) Unit!147679)

(assert (=> b!4943805 (= lt!2037854 (lemmaConcatTwoListThenFirstIsPrefix!3286 testedP!110 testedSuffix!70))))

(declare-fun b!4943806 () Bool)

(declare-fun tp!1386762 () Bool)

(assert (=> b!4943806 (= e!3088811 (and tp_is_empty!36109 tp!1386762))))

(declare-fun b!4943807 () Bool)

(declare-fun tp!1386763 () Bool)

(declare-fun inv!74069 (Conc!14975) Bool)

(assert (=> b!4943807 (= e!3088810 (and (inv!74069 (c!843490 totalInput!685)) tp!1386763))))

(declare-fun b!4943808 () Bool)

(declare-fun res!2109573 () Bool)

(assert (=> b!4943808 (=> (not res!2109573) (not e!3088809))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37740 (BalanceConc!29380) Int)

(assert (=> b!4943808 (= res!2109573 (= totalInputSize!132 (size!37740 totalInput!685)))))

(assert (= (and start!520274 res!2109574) b!4943802))

(assert (= (and b!4943802 res!2109576) b!4943808))

(assert (= (and b!4943808 res!2109573) b!4943805))

(assert (= (and b!4943805 (not res!2109575)) b!4943804))

(assert (= (and start!520274 (is-Cons!56921 testedP!110)) b!4943803))

(assert (= start!520274 b!4943807))

(assert (= (and start!520274 (is-Cons!56921 testedSuffix!70)) b!4943806))

(declare-fun m!5966828 () Bool)

(assert (=> start!520274 m!5966828))

(declare-fun m!5966830 () Bool)

(assert (=> start!520274 m!5966830))

(declare-fun m!5966832 () Bool)

(assert (=> start!520274 m!5966832))

(declare-fun m!5966834 () Bool)

(assert (=> b!4943802 m!5966834))

(declare-fun m!5966836 () Bool)

(assert (=> b!4943805 m!5966836))

(declare-fun m!5966838 () Bool)

(assert (=> b!4943805 m!5966838))

(declare-fun m!5966840 () Bool)

(assert (=> b!4943805 m!5966840))

(declare-fun m!5966842 () Bool)

(assert (=> b!4943807 m!5966842))

(declare-fun m!5966844 () Bool)

(assert (=> b!4943808 m!5966844))

(declare-fun m!5966846 () Bool)

(assert (=> b!4943804 m!5966846))

(push 1)

(assert (not b!4943808))

(assert (not b!4943802))

(assert (not b!4943807))

(assert tp_is_empty!36109)

(assert (not b!4943806))

(assert (not b!4943803))

(assert (not start!520274))

(assert (not b!4943805))

(assert (not b!4943804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

