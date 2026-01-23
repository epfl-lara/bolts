; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517700 () Bool)

(assert start!517700)

(declare-fun b!4929859 () Bool)

(declare-fun e!3080013 () Bool)

(declare-fun e!3080014 () Bool)

(assert (=> b!4929859 (= e!3080013 (not e!3080014))))

(declare-fun res!2103746 () Bool)

(assert (=> b!4929859 (=> res!2103746 e!3080014)))

(declare-datatypes ((C!26976 0))(
  ( (C!26977 (val!22822 Int)) )
))
(declare-datatypes ((List!56832 0))(
  ( (Nil!56708) (Cons!56708 (h!63156 C!26976) (t!367308 List!56832)) )
))
(declare-fun testedP!110 () List!56832)

(declare-fun lt!2029266 () List!56832)

(declare-fun isPrefix!4971 (List!56832 List!56832) Bool)

(assert (=> b!4929859 (= res!2103746 (not (isPrefix!4971 testedP!110 lt!2029266)))))

(declare-fun lt!2029264 () List!56832)

(assert (=> b!4929859 (isPrefix!4971 testedP!110 lt!2029264)))

(declare-datatypes ((Unit!147329 0))(
  ( (Unit!147330) )
))
(declare-fun lt!2029265 () Unit!147329)

(declare-fun testedSuffix!70 () List!56832)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3195 (List!56832 List!56832) Unit!147329)

(assert (=> b!4929859 (= lt!2029265 (lemmaConcatTwoListThenFirstIsPrefix!3195 testedP!110 testedSuffix!70))))

(declare-fun b!4929860 () Bool)

(declare-fun e!3080012 () Bool)

(declare-datatypes ((IArray!29825 0))(
  ( (IArray!29826 (innerList!14970 List!56832)) )
))
(declare-datatypes ((Conc!14882 0))(
  ( (Node!14882 (left!41357 Conc!14882) (right!41687 Conc!14882) (csize!29994 Int) (cheight!15093 Int)) (Leaf!24756 (xs!18206 IArray!29825) (csize!29995 Int)) (Empty!14882) )
))
(declare-datatypes ((BalanceConc!29194 0))(
  ( (BalanceConc!29195 (c!840148 Conc!14882)) )
))
(declare-fun totalInput!685 () BalanceConc!29194)

(declare-fun tp!1383933 () Bool)

(declare-fun inv!73534 (Conc!14882) Bool)

(assert (=> b!4929860 (= e!3080012 (and (inv!73534 (c!840148 totalInput!685)) tp!1383933))))

(declare-fun b!4929861 () Bool)

(declare-fun res!2103744 () Bool)

(assert (=> b!4929861 (=> (not res!2103744) (not e!3080013))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37509 (BalanceConc!29194) Int)

(assert (=> b!4929861 (= res!2103744 (= totalInputSize!132 (size!37509 totalInput!685)))))

(declare-fun b!4929862 () Bool)

(declare-fun e!3080016 () Bool)

(declare-fun tp_is_empty!35923 () Bool)

(declare-fun tp!1383932 () Bool)

(assert (=> b!4929862 (= e!3080016 (and tp_is_empty!35923 tp!1383932))))

(declare-fun res!2103745 () Bool)

(assert (=> start!517700 (=> (not res!2103745) (not e!3080013))))

(assert (=> start!517700 (= res!2103745 (= lt!2029264 lt!2029266))))

(declare-fun list!17973 (BalanceConc!29194) List!56832)

(assert (=> start!517700 (= lt!2029266 (list!17973 totalInput!685))))

(declare-fun ++!12338 (List!56832 List!56832) List!56832)

(assert (=> start!517700 (= lt!2029264 (++!12338 testedP!110 testedSuffix!70))))

(assert (=> start!517700 e!3080013))

(assert (=> start!517700 e!3080016))

(assert (=> start!517700 true))

(declare-fun inv!73535 (BalanceConc!29194) Bool)

(assert (=> start!517700 (and (inv!73535 totalInput!685) e!3080012)))

(declare-fun e!3080015 () Bool)

(assert (=> start!517700 e!3080015))

(declare-fun b!4929863 () Bool)

(declare-fun res!2103743 () Bool)

(assert (=> b!4929863 (=> (not res!2103743) (not e!3080013))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37510 (List!56832) Int)

(assert (=> b!4929863 (= res!2103743 (= testedPSize!70 (size!37510 testedP!110)))))

(declare-fun b!4929864 () Bool)

(declare-fun tp!1383931 () Bool)

(assert (=> b!4929864 (= e!3080015 (and tp_is_empty!35923 tp!1383931))))

(declare-fun b!4929865 () Bool)

(assert (=> b!4929865 (= e!3080014 true)))

(declare-fun lt!2029267 () Int)

(assert (=> b!4929865 (= lt!2029267 (size!37510 lt!2029266))))

(assert (= (and start!517700 res!2103745) b!4929863))

(assert (= (and b!4929863 res!2103743) b!4929861))

(assert (= (and b!4929861 res!2103744) b!4929859))

(assert (= (and b!4929859 (not res!2103746)) b!4929865))

(get-info :version)

(assert (= (and start!517700 ((_ is Cons!56708) testedP!110)) b!4929862))

(assert (= start!517700 b!4929860))

(assert (= (and start!517700 ((_ is Cons!56708) testedSuffix!70)) b!4929864))

(declare-fun m!5949976 () Bool)

(assert (=> start!517700 m!5949976))

(declare-fun m!5949978 () Bool)

(assert (=> start!517700 m!5949978))

(declare-fun m!5949980 () Bool)

(assert (=> start!517700 m!5949980))

(declare-fun m!5949982 () Bool)

(assert (=> b!4929863 m!5949982))

(declare-fun m!5949984 () Bool)

(assert (=> b!4929861 m!5949984))

(declare-fun m!5949986 () Bool)

(assert (=> b!4929859 m!5949986))

(declare-fun m!5949988 () Bool)

(assert (=> b!4929859 m!5949988))

(declare-fun m!5949990 () Bool)

(assert (=> b!4929859 m!5949990))

(declare-fun m!5949992 () Bool)

(assert (=> b!4929860 m!5949992))

(declare-fun m!5949994 () Bool)

(assert (=> b!4929865 m!5949994))

(check-sat (not b!4929862) (not b!4929863) (not b!4929864) (not b!4929861) (not b!4929859) (not b!4929865) (not start!517700) tp_is_empty!35923 (not b!4929860))
(check-sat)
