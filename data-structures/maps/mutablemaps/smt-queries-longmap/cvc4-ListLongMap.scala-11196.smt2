; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130844 () Bool)

(assert start!130844)

(declare-fun b!1534006 () Bool)

(declare-fun res!1051235 () Bool)

(declare-fun e!854368 () Bool)

(assert (=> b!1534006 (=> (not res!1051235) (not e!854368))))

(declare-datatypes ((array!101869 0))(
  ( (array!101870 (arr!49146 (Array (_ BitVec 32) (_ BitVec 64))) (size!49697 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101869)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534006 (= res!1051235 (and (= (size!49697 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49697 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49697 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534007 () Bool)

(declare-fun res!1051230 () Bool)

(assert (=> b!1534007 (=> (not res!1051230) (not e!854368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534007 (= res!1051230 (validKeyInArray!0 (select (arr!49146 a!2792) j!64)))))

(declare-fun b!1534008 () Bool)

(declare-fun res!1051231 () Bool)

(assert (=> b!1534008 (=> (not res!1051231) (not e!854368))))

(declare-datatypes ((List!35800 0))(
  ( (Nil!35797) (Cons!35796 (h!37242 (_ BitVec 64)) (t!50501 List!35800)) )
))
(declare-fun arrayNoDuplicates!0 (array!101869 (_ BitVec 32) List!35800) Bool)

(assert (=> b!1534008 (= res!1051231 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35797))))

(declare-fun b!1534009 () Bool)

(declare-fun res!1051236 () Bool)

(assert (=> b!1534009 (=> (not res!1051236) (not e!854368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101869 (_ BitVec 32)) Bool)

(assert (=> b!1534009 (= res!1051236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534010 () Bool)

(assert (=> b!1534010 (= e!854368 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13301 0))(
  ( (MissingZero!13301 (index!55598 (_ BitVec 32))) (Found!13301 (index!55599 (_ BitVec 32))) (Intermediate!13301 (undefined!14113 Bool) (index!55600 (_ BitVec 32)) (x!137362 (_ BitVec 32))) (Undefined!13301) (MissingVacant!13301 (index!55601 (_ BitVec 32))) )
))
(declare-fun lt!663760 () SeekEntryResult!13301)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101869 (_ BitVec 32)) SeekEntryResult!13301)

(assert (=> b!1534010 (= lt!663760 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49146 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1051232 () Bool)

(assert (=> start!130844 (=> (not res!1051232) (not e!854368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130844 (= res!1051232 (validMask!0 mask!2480))))

(assert (=> start!130844 e!854368))

(assert (=> start!130844 true))

(declare-fun array_inv!38091 (array!101869) Bool)

(assert (=> start!130844 (array_inv!38091 a!2792)))

(declare-fun b!1534011 () Bool)

(declare-fun res!1051234 () Bool)

(assert (=> b!1534011 (=> (not res!1051234) (not e!854368))))

(assert (=> b!1534011 (= res!1051234 (validKeyInArray!0 (select (arr!49146 a!2792) i!951)))))

(declare-fun b!1534012 () Bool)

(declare-fun res!1051233 () Bool)

(assert (=> b!1534012 (=> (not res!1051233) (not e!854368))))

(assert (=> b!1534012 (= res!1051233 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49697 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49697 a!2792)) (= (select (arr!49146 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130844 res!1051232) b!1534006))

(assert (= (and b!1534006 res!1051235) b!1534011))

(assert (= (and b!1534011 res!1051234) b!1534007))

(assert (= (and b!1534007 res!1051230) b!1534009))

(assert (= (and b!1534009 res!1051236) b!1534008))

(assert (= (and b!1534008 res!1051231) b!1534012))

(assert (= (and b!1534012 res!1051233) b!1534010))

(declare-fun m!1416727 () Bool)

(assert (=> b!1534008 m!1416727))

(declare-fun m!1416729 () Bool)

(assert (=> b!1534010 m!1416729))

(assert (=> b!1534010 m!1416729))

(declare-fun m!1416731 () Bool)

(assert (=> b!1534010 m!1416731))

(declare-fun m!1416733 () Bool)

(assert (=> b!1534012 m!1416733))

(declare-fun m!1416735 () Bool)

(assert (=> b!1534011 m!1416735))

(assert (=> b!1534011 m!1416735))

(declare-fun m!1416737 () Bool)

(assert (=> b!1534011 m!1416737))

(assert (=> b!1534007 m!1416729))

(assert (=> b!1534007 m!1416729))

(declare-fun m!1416739 () Bool)

(assert (=> b!1534007 m!1416739))

(declare-fun m!1416741 () Bool)

(assert (=> start!130844 m!1416741))

(declare-fun m!1416743 () Bool)

(assert (=> start!130844 m!1416743))

(declare-fun m!1416745 () Bool)

(assert (=> b!1534009 m!1416745))

(push 1)

(assert (not b!1534009))

(assert (not b!1534007))

(assert (not b!1534010))

(assert (not start!130844))

(assert (not b!1534011))

(assert (not b!1534008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

