; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130772 () Bool)

(assert start!130772)

(declare-fun b!1533178 () Bool)

(declare-fun res!1050403 () Bool)

(declare-fun e!854152 () Bool)

(assert (=> b!1533178 (=> (not res!1050403) (not e!854152))))

(declare-datatypes ((array!101797 0))(
  ( (array!101798 (arr!49110 (Array (_ BitVec 32) (_ BitVec 64))) (size!49661 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101797)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101797 (_ BitVec 32)) Bool)

(assert (=> b!1533178 (= res!1050403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1050407 () Bool)

(assert (=> start!130772 (=> (not res!1050407) (not e!854152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130772 (= res!1050407 (validMask!0 mask!2480))))

(assert (=> start!130772 e!854152))

(assert (=> start!130772 true))

(declare-fun array_inv!38055 (array!101797) Bool)

(assert (=> start!130772 (array_inv!38055 a!2792)))

(declare-fun b!1533179 () Bool)

(declare-fun res!1050408 () Bool)

(assert (=> b!1533179 (=> (not res!1050408) (not e!854152))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533179 (= res!1050408 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49661 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49661 a!2792)) (= (select (arr!49110 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533180 () Bool)

(declare-fun res!1050405 () Bool)

(assert (=> b!1533180 (=> (not res!1050405) (not e!854152))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533180 (= res!1050405 (validKeyInArray!0 (select (arr!49110 a!2792) i!951)))))

(declare-fun b!1533181 () Bool)

(declare-fun res!1050402 () Bool)

(assert (=> b!1533181 (=> (not res!1050402) (not e!854152))))

(declare-datatypes ((List!35764 0))(
  ( (Nil!35761) (Cons!35760 (h!37206 (_ BitVec 64)) (t!50465 List!35764)) )
))
(declare-fun arrayNoDuplicates!0 (array!101797 (_ BitVec 32) List!35764) Bool)

(assert (=> b!1533181 (= res!1050402 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35761))))

(declare-fun b!1533182 () Bool)

(assert (=> b!1533182 (= e!854152 false)))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13265 0))(
  ( (MissingZero!13265 (index!55454 (_ BitVec 32))) (Found!13265 (index!55455 (_ BitVec 32))) (Intermediate!13265 (undefined!14077 Bool) (index!55456 (_ BitVec 32)) (x!137230 (_ BitVec 32))) (Undefined!13265) (MissingVacant!13265 (index!55457 (_ BitVec 32))) )
))
(declare-fun lt!663715 () SeekEntryResult!13265)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101797 (_ BitVec 32)) SeekEntryResult!13265)

(assert (=> b!1533182 (= lt!663715 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49110 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533183 () Bool)

(declare-fun res!1050404 () Bool)

(assert (=> b!1533183 (=> (not res!1050404) (not e!854152))))

(assert (=> b!1533183 (= res!1050404 (validKeyInArray!0 (select (arr!49110 a!2792) j!64)))))

(declare-fun b!1533184 () Bool)

(declare-fun res!1050406 () Bool)

(assert (=> b!1533184 (=> (not res!1050406) (not e!854152))))

(assert (=> b!1533184 (= res!1050406 (and (= (size!49661 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49661 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49661 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130772 res!1050407) b!1533184))

(assert (= (and b!1533184 res!1050406) b!1533180))

(assert (= (and b!1533180 res!1050405) b!1533183))

(assert (= (and b!1533183 res!1050404) b!1533178))

(assert (= (and b!1533178 res!1050403) b!1533181))

(assert (= (and b!1533181 res!1050402) b!1533179))

(assert (= (and b!1533179 res!1050408) b!1533182))

(declare-fun m!1415929 () Bool)

(assert (=> b!1533179 m!1415929))

(declare-fun m!1415931 () Bool)

(assert (=> b!1533180 m!1415931))

(assert (=> b!1533180 m!1415931))

(declare-fun m!1415933 () Bool)

(assert (=> b!1533180 m!1415933))

(declare-fun m!1415935 () Bool)

(assert (=> b!1533178 m!1415935))

(declare-fun m!1415937 () Bool)

(assert (=> start!130772 m!1415937))

(declare-fun m!1415939 () Bool)

(assert (=> start!130772 m!1415939))

(declare-fun m!1415941 () Bool)

(assert (=> b!1533183 m!1415941))

(assert (=> b!1533183 m!1415941))

(declare-fun m!1415943 () Bool)

(assert (=> b!1533183 m!1415943))

(declare-fun m!1415945 () Bool)

(assert (=> b!1533181 m!1415945))

(assert (=> b!1533182 m!1415941))

(assert (=> b!1533182 m!1415941))

(declare-fun m!1415947 () Bool)

(assert (=> b!1533182 m!1415947))

(push 1)

(assert (not b!1533181))

(assert (not b!1533182))

(assert (not b!1533180))

(assert (not start!130772))

(assert (not b!1533178))

(assert (not b!1533183))

(check-sat)

