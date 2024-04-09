; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130912 () Bool)

(assert start!130912)

(declare-fun b!1534906 () Bool)

(declare-fun res!1052134 () Bool)

(declare-fun e!854630 () Bool)

(assert (=> b!1534906 (=> (not res!1052134) (not e!854630))))

(declare-datatypes ((array!101937 0))(
  ( (array!101938 (arr!49180 (Array (_ BitVec 32) (_ BitVec 64))) (size!49731 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101937)

(declare-datatypes ((List!35834 0))(
  ( (Nil!35831) (Cons!35830 (h!37276 (_ BitVec 64)) (t!50535 List!35834)) )
))
(declare-fun arrayNoDuplicates!0 (array!101937 (_ BitVec 32) List!35834) Bool)

(assert (=> b!1534906 (= res!1052134 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35831))))

(declare-fun b!1534907 () Bool)

(declare-fun e!854629 () Bool)

(assert (=> b!1534907 (= e!854630 e!854629)))

(declare-fun res!1052138 () Bool)

(assert (=> b!1534907 (=> (not res!1052138) (not e!854629))))

(declare-fun lt!663900 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1534907 (= res!1052138 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663900 #b00000000000000000000000000000000) (bvslt lt!663900 (size!49731 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534907 (= lt!663900 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534908 () Bool)

(declare-fun res!1052130 () Bool)

(assert (=> b!1534908 (=> (not res!1052130) (not e!854630))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1534908 (= res!1052130 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49731 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49731 a!2792)) (= (select (arr!49180 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534909 () Bool)

(declare-fun res!1052131 () Bool)

(assert (=> b!1534909 (=> (not res!1052131) (not e!854630))))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13335 0))(
  ( (MissingZero!13335 (index!55734 (_ BitVec 32))) (Found!13335 (index!55735 (_ BitVec 32))) (Intermediate!13335 (undefined!14147 Bool) (index!55736 (_ BitVec 32)) (x!137492 (_ BitVec 32))) (Undefined!13335) (MissingVacant!13335 (index!55737 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101937 (_ BitVec 32)) SeekEntryResult!13335)

(assert (=> b!1534909 (= res!1052131 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49180 a!2792) j!64) a!2792 mask!2480) (Found!13335 j!64)))))

(declare-fun b!1534910 () Bool)

(declare-fun res!1052137 () Bool)

(assert (=> b!1534910 (=> (not res!1052137) (not e!854630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534910 (= res!1052137 (validKeyInArray!0 (select (arr!49180 a!2792) j!64)))))

(declare-fun res!1052132 () Bool)

(assert (=> start!130912 (=> (not res!1052132) (not e!854630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130912 (= res!1052132 (validMask!0 mask!2480))))

(assert (=> start!130912 e!854630))

(assert (=> start!130912 true))

(declare-fun array_inv!38125 (array!101937) Bool)

(assert (=> start!130912 (array_inv!38125 a!2792)))

(declare-fun b!1534911 () Bool)

(declare-fun res!1052135 () Bool)

(assert (=> b!1534911 (=> (not res!1052135) (not e!854630))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534911 (= res!1052135 (validKeyInArray!0 (select (arr!49180 a!2792) i!951)))))

(declare-fun b!1534912 () Bool)

(declare-fun res!1052133 () Bool)

(assert (=> b!1534912 (=> (not res!1052133) (not e!854630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101937 (_ BitVec 32)) Bool)

(assert (=> b!1534912 (= res!1052133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534913 () Bool)

(assert (=> b!1534913 (= e!854629 false)))

(declare-fun lt!663901 () SeekEntryResult!13335)

(assert (=> b!1534913 (= lt!663901 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663900 vacantIndex!5 (select (arr!49180 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534914 () Bool)

(declare-fun res!1052136 () Bool)

(assert (=> b!1534914 (=> (not res!1052136) (not e!854630))))

(assert (=> b!1534914 (= res!1052136 (not (= (select (arr!49180 a!2792) index!463) (select (arr!49180 a!2792) j!64))))))

(declare-fun b!1534915 () Bool)

(declare-fun res!1052139 () Bool)

(assert (=> b!1534915 (=> (not res!1052139) (not e!854630))))

(assert (=> b!1534915 (= res!1052139 (and (= (size!49731 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49731 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49731 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130912 res!1052132) b!1534915))

(assert (= (and b!1534915 res!1052139) b!1534911))

(assert (= (and b!1534911 res!1052135) b!1534910))

(assert (= (and b!1534910 res!1052137) b!1534912))

(assert (= (and b!1534912 res!1052133) b!1534906))

(assert (= (and b!1534906 res!1052134) b!1534908))

(assert (= (and b!1534908 res!1052130) b!1534909))

(assert (= (and b!1534909 res!1052131) b!1534914))

(assert (= (and b!1534914 res!1052136) b!1534907))

(assert (= (and b!1534907 res!1052138) b!1534913))

(declare-fun m!1417527 () Bool)

(assert (=> b!1534913 m!1417527))

(assert (=> b!1534913 m!1417527))

(declare-fun m!1417529 () Bool)

(assert (=> b!1534913 m!1417529))

(assert (=> b!1534910 m!1417527))

(assert (=> b!1534910 m!1417527))

(declare-fun m!1417531 () Bool)

(assert (=> b!1534910 m!1417531))

(declare-fun m!1417533 () Bool)

(assert (=> b!1534907 m!1417533))

(declare-fun m!1417535 () Bool)

(assert (=> b!1534914 m!1417535))

(assert (=> b!1534914 m!1417527))

(declare-fun m!1417537 () Bool)

(assert (=> b!1534908 m!1417537))

(declare-fun m!1417539 () Bool)

(assert (=> b!1534906 m!1417539))

(declare-fun m!1417541 () Bool)

(assert (=> b!1534911 m!1417541))

(assert (=> b!1534911 m!1417541))

(declare-fun m!1417543 () Bool)

(assert (=> b!1534911 m!1417543))

(declare-fun m!1417545 () Bool)

(assert (=> b!1534912 m!1417545))

(declare-fun m!1417547 () Bool)

(assert (=> start!130912 m!1417547))

(declare-fun m!1417549 () Bool)

(assert (=> start!130912 m!1417549))

(assert (=> b!1534909 m!1417527))

(assert (=> b!1534909 m!1417527))

(declare-fun m!1417551 () Bool)

(assert (=> b!1534909 m!1417551))

(push 1)

