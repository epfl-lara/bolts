; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92316 () Bool)

(assert start!92316)

(declare-fun b!1048702 () Bool)

(declare-fun res!697937 () Bool)

(declare-fun e!594914 () Bool)

(assert (=> b!1048702 (=> (not res!697937) (not e!594914))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048702 (= res!697937 (validKeyInArray!0 k!2747))))

(declare-fun b!1048703 () Bool)

(declare-fun e!594910 () Bool)

(declare-fun e!594913 () Bool)

(assert (=> b!1048703 (= e!594910 e!594913)))

(declare-fun res!697938 () Bool)

(assert (=> b!1048703 (=> (not res!697938) (not e!594913))))

(declare-fun lt!463255 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048703 (= res!697938 (not (= lt!463255 i!1381)))))

(declare-datatypes ((array!66065 0))(
  ( (array!66066 (arr!31768 (Array (_ BitVec 32) (_ BitVec 64))) (size!32305 (_ BitVec 32))) )
))
(declare-fun lt!463254 () array!66065)

(declare-fun arrayScanForKey!0 (array!66065 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048703 (= lt!463255 (arrayScanForKey!0 lt!463254 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!697940 () Bool)

(assert (=> start!92316 (=> (not res!697940) (not e!594914))))

(declare-fun a!3488 () array!66065)

(assert (=> start!92316 (= res!697940 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32305 a!3488)) (bvslt (size!32305 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92316 e!594914))

(assert (=> start!92316 true))

(declare-fun array_inv!24390 (array!66065) Bool)

(assert (=> start!92316 (array_inv!24390 a!3488)))

(declare-fun b!1048704 () Bool)

(declare-fun res!697944 () Bool)

(assert (=> b!1048704 (=> (not res!697944) (not e!594914))))

(declare-datatypes ((List!22211 0))(
  ( (Nil!22208) (Cons!22207 (h!23416 (_ BitVec 64)) (t!31525 List!22211)) )
))
(declare-fun arrayNoDuplicates!0 (array!66065 (_ BitVec 32) List!22211) Bool)

(assert (=> b!1048704 (= res!697944 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22208))))

(declare-fun b!1048705 () Bool)

(assert (=> b!1048705 (= e!594913 (not true))))

(declare-fun e!594911 () Bool)

(assert (=> b!1048705 e!594911))

(declare-fun res!697942 () Bool)

(assert (=> b!1048705 (=> (not res!697942) (not e!594911))))

(assert (=> b!1048705 (= res!697942 (= (select (store (arr!31768 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463255) k!2747))))

(declare-fun b!1048706 () Bool)

(declare-fun res!697941 () Bool)

(assert (=> b!1048706 (=> (not res!697941) (not e!594914))))

(assert (=> b!1048706 (= res!697941 (= (select (arr!31768 a!3488) i!1381) k!2747))))

(declare-fun b!1048707 () Bool)

(declare-fun e!594912 () Bool)

(assert (=> b!1048707 (= e!594911 e!594912)))

(declare-fun res!697943 () Bool)

(assert (=> b!1048707 (=> res!697943 e!594912)))

(assert (=> b!1048707 (= res!697943 (bvsle lt!463255 i!1381))))

(declare-fun b!1048708 () Bool)

(declare-fun arrayContainsKey!0 (array!66065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048708 (= e!594912 (arrayContainsKey!0 a!3488 k!2747 lt!463255))))

(declare-fun b!1048709 () Bool)

(assert (=> b!1048709 (= e!594914 e!594910)))

(declare-fun res!697939 () Bool)

(assert (=> b!1048709 (=> (not res!697939) (not e!594910))))

(assert (=> b!1048709 (= res!697939 (arrayContainsKey!0 lt!463254 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048709 (= lt!463254 (array!66066 (store (arr!31768 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32305 a!3488)))))

(assert (= (and start!92316 res!697940) b!1048704))

(assert (= (and b!1048704 res!697944) b!1048702))

(assert (= (and b!1048702 res!697937) b!1048706))

(assert (= (and b!1048706 res!697941) b!1048709))

(assert (= (and b!1048709 res!697939) b!1048703))

(assert (= (and b!1048703 res!697938) b!1048705))

(assert (= (and b!1048705 res!697942) b!1048707))

(assert (= (and b!1048707 (not res!697943)) b!1048708))

(declare-fun m!969735 () Bool)

(assert (=> b!1048705 m!969735))

(declare-fun m!969737 () Bool)

(assert (=> b!1048705 m!969737))

(declare-fun m!969739 () Bool)

(assert (=> b!1048703 m!969739))

(declare-fun m!969741 () Bool)

(assert (=> b!1048706 m!969741))

(declare-fun m!969743 () Bool)

(assert (=> b!1048708 m!969743))

(declare-fun m!969745 () Bool)

(assert (=> b!1048709 m!969745))

(assert (=> b!1048709 m!969735))

(declare-fun m!969747 () Bool)

(assert (=> start!92316 m!969747))

(declare-fun m!969749 () Bool)

(assert (=> b!1048704 m!969749))

(declare-fun m!969751 () Bool)

(assert (=> b!1048702 m!969751))

(push 1)

