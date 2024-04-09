; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130964 () Bool)

(assert start!130964)

(declare-fun b!1535686 () Bool)

(declare-fun res!1052910 () Bool)

(declare-fun e!854864 () Bool)

(assert (=> b!1535686 (=> (not res!1052910) (not e!854864))))

(declare-datatypes ((array!101989 0))(
  ( (array!101990 (arr!49206 (Array (_ BitVec 32) (_ BitVec 64))) (size!49757 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101989)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535686 (= res!1052910 (validKeyInArray!0 (select (arr!49206 a!2792) j!64)))))

(declare-fun b!1535687 () Bool)

(declare-fun res!1052911 () Bool)

(assert (=> b!1535687 (=> (not res!1052911) (not e!854864))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535687 (= res!1052911 (validKeyInArray!0 (select (arr!49206 a!2792) i!951)))))

(declare-fun b!1535688 () Bool)

(declare-fun res!1052913 () Bool)

(assert (=> b!1535688 (=> (not res!1052913) (not e!854864))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13361 0))(
  ( (MissingZero!13361 (index!55838 (_ BitVec 32))) (Found!13361 (index!55839 (_ BitVec 32))) (Intermediate!13361 (undefined!14173 Bool) (index!55840 (_ BitVec 32)) (x!137582 (_ BitVec 32))) (Undefined!13361) (MissingVacant!13361 (index!55841 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101989 (_ BitVec 32)) SeekEntryResult!13361)

(assert (=> b!1535688 (= res!1052913 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49206 a!2792) j!64) a!2792 mask!2480) (Found!13361 j!64)))))

(declare-fun b!1535689 () Bool)

(declare-fun e!854862 () Bool)

(assert (=> b!1535689 (= e!854862 false)))

(declare-fun lt!664056 () (_ BitVec 32))

(declare-fun lt!664057 () SeekEntryResult!13361)

(assert (=> b!1535689 (= lt!664057 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664056 vacantIndex!5 (select (arr!49206 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1052915 () Bool)

(assert (=> start!130964 (=> (not res!1052915) (not e!854864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130964 (= res!1052915 (validMask!0 mask!2480))))

(assert (=> start!130964 e!854864))

(assert (=> start!130964 true))

(declare-fun array_inv!38151 (array!101989) Bool)

(assert (=> start!130964 (array_inv!38151 a!2792)))

(declare-fun b!1535690 () Bool)

(assert (=> b!1535690 (= e!854864 e!854862)))

(declare-fun res!1052918 () Bool)

(assert (=> b!1535690 (=> (not res!1052918) (not e!854862))))

(assert (=> b!1535690 (= res!1052918 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664056 #b00000000000000000000000000000000) (bvslt lt!664056 (size!49757 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535690 (= lt!664056 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535691 () Bool)

(declare-fun res!1052914 () Bool)

(assert (=> b!1535691 (=> (not res!1052914) (not e!854864))))

(assert (=> b!1535691 (= res!1052914 (not (= (select (arr!49206 a!2792) index!463) (select (arr!49206 a!2792) j!64))))))

(declare-fun b!1535692 () Bool)

(declare-fun res!1052916 () Bool)

(assert (=> b!1535692 (=> (not res!1052916) (not e!854864))))

(assert (=> b!1535692 (= res!1052916 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49757 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49757 a!2792)) (= (select (arr!49206 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535693 () Bool)

(declare-fun res!1052919 () Bool)

(assert (=> b!1535693 (=> (not res!1052919) (not e!854864))))

(assert (=> b!1535693 (= res!1052919 (and (= (size!49757 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49757 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49757 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535694 () Bool)

(declare-fun res!1052917 () Bool)

(assert (=> b!1535694 (=> (not res!1052917) (not e!854864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101989 (_ BitVec 32)) Bool)

(assert (=> b!1535694 (= res!1052917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535695 () Bool)

(declare-fun res!1052912 () Bool)

(assert (=> b!1535695 (=> (not res!1052912) (not e!854864))))

(declare-datatypes ((List!35860 0))(
  ( (Nil!35857) (Cons!35856 (h!37302 (_ BitVec 64)) (t!50561 List!35860)) )
))
(declare-fun arrayNoDuplicates!0 (array!101989 (_ BitVec 32) List!35860) Bool)

(assert (=> b!1535695 (= res!1052912 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35857))))

(assert (= (and start!130964 res!1052915) b!1535693))

(assert (= (and b!1535693 res!1052919) b!1535687))

(assert (= (and b!1535687 res!1052911) b!1535686))

(assert (= (and b!1535686 res!1052910) b!1535694))

(assert (= (and b!1535694 res!1052917) b!1535695))

(assert (= (and b!1535695 res!1052912) b!1535692))

(assert (= (and b!1535692 res!1052916) b!1535688))

(assert (= (and b!1535688 res!1052913) b!1535691))

(assert (= (and b!1535691 res!1052914) b!1535690))

(assert (= (and b!1535690 res!1052918) b!1535689))

(declare-fun m!1418203 () Bool)

(assert (=> b!1535691 m!1418203))

(declare-fun m!1418205 () Bool)

(assert (=> b!1535691 m!1418205))

(declare-fun m!1418207 () Bool)

(assert (=> b!1535694 m!1418207))

(declare-fun m!1418209 () Bool)

(assert (=> b!1535695 m!1418209))

(assert (=> b!1535688 m!1418205))

(assert (=> b!1535688 m!1418205))

(declare-fun m!1418211 () Bool)

(assert (=> b!1535688 m!1418211))

(declare-fun m!1418213 () Bool)

(assert (=> b!1535692 m!1418213))

(declare-fun m!1418215 () Bool)

(assert (=> b!1535690 m!1418215))

(assert (=> b!1535686 m!1418205))

(assert (=> b!1535686 m!1418205))

(declare-fun m!1418217 () Bool)

(assert (=> b!1535686 m!1418217))

(assert (=> b!1535689 m!1418205))

(assert (=> b!1535689 m!1418205))

(declare-fun m!1418219 () Bool)

(assert (=> b!1535689 m!1418219))

(declare-fun m!1418221 () Bool)

(assert (=> start!130964 m!1418221))

(declare-fun m!1418223 () Bool)

(assert (=> start!130964 m!1418223))

(declare-fun m!1418225 () Bool)

(assert (=> b!1535687 m!1418225))

(assert (=> b!1535687 m!1418225))

(declare-fun m!1418227 () Bool)

(assert (=> b!1535687 m!1418227))

(push 1)

(assert (not b!1535695))

(assert (not b!1535689))

(assert (not b!1535694))

(assert (not start!130964))

(assert (not b!1535688))

(assert (not b!1535687))

(assert (not b!1535686))

(assert (not b!1535690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

