; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130960 () Bool)

(assert start!130960)

(declare-fun b!1535626 () Bool)

(declare-fun res!1052857 () Bool)

(declare-fun e!854844 () Bool)

(assert (=> b!1535626 (=> (not res!1052857) (not e!854844))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101985 0))(
  ( (array!101986 (arr!49204 (Array (_ BitVec 32) (_ BitVec 64))) (size!49755 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101985)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13359 0))(
  ( (MissingZero!13359 (index!55830 (_ BitVec 32))) (Found!13359 (index!55831 (_ BitVec 32))) (Intermediate!13359 (undefined!14171 Bool) (index!55832 (_ BitVec 32)) (x!137580 (_ BitVec 32))) (Undefined!13359) (MissingVacant!13359 (index!55833 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101985 (_ BitVec 32)) SeekEntryResult!13359)

(assert (=> b!1535626 (= res!1052857 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49204 a!2792) j!64) a!2792 mask!2480) (Found!13359 j!64)))))

(declare-fun b!1535627 () Bool)

(declare-fun res!1052858 () Bool)

(assert (=> b!1535627 (=> (not res!1052858) (not e!854844))))

(assert (=> b!1535627 (= res!1052858 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49755 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49755 a!2792)) (= (select (arr!49204 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535628 () Bool)

(declare-fun e!854845 () Bool)

(assert (=> b!1535628 (= e!854844 e!854845)))

(declare-fun res!1052852 () Bool)

(assert (=> b!1535628 (=> (not res!1052852) (not e!854845))))

(declare-fun lt!664045 () (_ BitVec 32))

(assert (=> b!1535628 (= res!1052852 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664045 #b00000000000000000000000000000000) (bvslt lt!664045 (size!49755 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535628 (= lt!664045 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535629 () Bool)

(declare-fun res!1052854 () Bool)

(assert (=> b!1535629 (=> (not res!1052854) (not e!854844))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535629 (= res!1052854 (validKeyInArray!0 (select (arr!49204 a!2792) i!951)))))

(declare-fun b!1535631 () Bool)

(declare-fun res!1052850 () Bool)

(assert (=> b!1535631 (=> (not res!1052850) (not e!854844))))

(declare-datatypes ((List!35858 0))(
  ( (Nil!35855) (Cons!35854 (h!37300 (_ BitVec 64)) (t!50559 List!35858)) )
))
(declare-fun arrayNoDuplicates!0 (array!101985 (_ BitVec 32) List!35858) Bool)

(assert (=> b!1535631 (= res!1052850 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35855))))

(declare-fun b!1535632 () Bool)

(declare-fun res!1052853 () Bool)

(assert (=> b!1535632 (=> (not res!1052853) (not e!854844))))

(assert (=> b!1535632 (= res!1052853 (and (= (size!49755 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49755 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49755 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535633 () Bool)

(declare-fun res!1052856 () Bool)

(assert (=> b!1535633 (=> (not res!1052856) (not e!854844))))

(assert (=> b!1535633 (= res!1052856 (not (= (select (arr!49204 a!2792) index!463) (select (arr!49204 a!2792) j!64))))))

(declare-fun b!1535634 () Bool)

(assert (=> b!1535634 (= e!854845 false)))

(declare-fun lt!664044 () SeekEntryResult!13359)

(assert (=> b!1535634 (= lt!664044 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664045 vacantIndex!5 (select (arr!49204 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535635 () Bool)

(declare-fun res!1052859 () Bool)

(assert (=> b!1535635 (=> (not res!1052859) (not e!854844))))

(assert (=> b!1535635 (= res!1052859 (validKeyInArray!0 (select (arr!49204 a!2792) j!64)))))

(declare-fun b!1535630 () Bool)

(declare-fun res!1052855 () Bool)

(assert (=> b!1535630 (=> (not res!1052855) (not e!854844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101985 (_ BitVec 32)) Bool)

(assert (=> b!1535630 (= res!1052855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1052851 () Bool)

(assert (=> start!130960 (=> (not res!1052851) (not e!854844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130960 (= res!1052851 (validMask!0 mask!2480))))

(assert (=> start!130960 e!854844))

(assert (=> start!130960 true))

(declare-fun array_inv!38149 (array!101985) Bool)

(assert (=> start!130960 (array_inv!38149 a!2792)))

(assert (= (and start!130960 res!1052851) b!1535632))

(assert (= (and b!1535632 res!1052853) b!1535629))

(assert (= (and b!1535629 res!1052854) b!1535635))

(assert (= (and b!1535635 res!1052859) b!1535630))

(assert (= (and b!1535630 res!1052855) b!1535631))

(assert (= (and b!1535631 res!1052850) b!1535627))

(assert (= (and b!1535627 res!1052858) b!1535626))

(assert (= (and b!1535626 res!1052857) b!1535633))

(assert (= (and b!1535633 res!1052856) b!1535628))

(assert (= (and b!1535628 res!1052852) b!1535634))

(declare-fun m!1418151 () Bool)

(assert (=> b!1535635 m!1418151))

(assert (=> b!1535635 m!1418151))

(declare-fun m!1418153 () Bool)

(assert (=> b!1535635 m!1418153))

(declare-fun m!1418155 () Bool)

(assert (=> b!1535630 m!1418155))

(declare-fun m!1418157 () Bool)

(assert (=> b!1535627 m!1418157))

(declare-fun m!1418159 () Bool)

(assert (=> start!130960 m!1418159))

(declare-fun m!1418161 () Bool)

(assert (=> start!130960 m!1418161))

(declare-fun m!1418163 () Bool)

(assert (=> b!1535631 m!1418163))

(declare-fun m!1418165 () Bool)

(assert (=> b!1535633 m!1418165))

(assert (=> b!1535633 m!1418151))

(declare-fun m!1418167 () Bool)

(assert (=> b!1535628 m!1418167))

(assert (=> b!1535626 m!1418151))

(assert (=> b!1535626 m!1418151))

(declare-fun m!1418169 () Bool)

(assert (=> b!1535626 m!1418169))

(assert (=> b!1535634 m!1418151))

(assert (=> b!1535634 m!1418151))

(declare-fun m!1418171 () Bool)

(assert (=> b!1535634 m!1418171))

(declare-fun m!1418173 () Bool)

(assert (=> b!1535629 m!1418173))

(assert (=> b!1535629 m!1418173))

(declare-fun m!1418175 () Bool)

(assert (=> b!1535629 m!1418175))

(push 1)

(assert (not b!1535634))

(assert (not b!1535635))

(assert (not b!1535630))

(assert (not b!1535629))

(assert (not b!1535631))

(assert (not b!1535626))

