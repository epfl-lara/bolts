; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130792 () Bool)

(assert start!130792)

(declare-fun b!1533408 () Bool)

(declare-fun res!1050638 () Bool)

(declare-fun e!854212 () Bool)

(assert (=> b!1533408 (=> (not res!1050638) (not e!854212))))

(declare-datatypes ((array!101817 0))(
  ( (array!101818 (arr!49120 (Array (_ BitVec 32) (_ BitVec 64))) (size!49671 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101817)

(declare-datatypes ((List!35774 0))(
  ( (Nil!35771) (Cons!35770 (h!37216 (_ BitVec 64)) (t!50475 List!35774)) )
))
(declare-fun arrayNoDuplicates!0 (array!101817 (_ BitVec 32) List!35774) Bool)

(assert (=> b!1533408 (= res!1050638 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35771))))

(declare-fun b!1533409 () Bool)

(declare-fun res!1050634 () Bool)

(assert (=> b!1533409 (=> (not res!1050634) (not e!854212))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533409 (= res!1050634 (validKeyInArray!0 (select (arr!49120 a!2792) i!951)))))

(declare-fun b!1533410 () Bool)

(declare-fun res!1050635 () Bool)

(assert (=> b!1533410 (=> (not res!1050635) (not e!854212))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1533410 (= res!1050635 (and (= (size!49671 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49671 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49671 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533411 () Bool)

(declare-fun res!1050637 () Bool)

(assert (=> b!1533411 (=> (not res!1050637) (not e!854212))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533411 (= res!1050637 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49671 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49671 a!2792)) (= (select (arr!49120 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533413 () Bool)

(declare-fun res!1050636 () Bool)

(assert (=> b!1533413 (=> (not res!1050636) (not e!854212))))

(declare-datatypes ((SeekEntryResult!13275 0))(
  ( (MissingZero!13275 (index!55494 (_ BitVec 32))) (Found!13275 (index!55495 (_ BitVec 32))) (Intermediate!13275 (undefined!14087 Bool) (index!55496 (_ BitVec 32)) (x!137272 (_ BitVec 32))) (Undefined!13275) (MissingVacant!13275 (index!55497 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101817 (_ BitVec 32)) SeekEntryResult!13275)

(assert (=> b!1533413 (= res!1050636 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49120 a!2792) j!64) a!2792 mask!2480) (Found!13275 j!64)))))

(declare-fun b!1533414 () Bool)

(declare-fun res!1050639 () Bool)

(assert (=> b!1533414 (=> (not res!1050639) (not e!854212))))

(assert (=> b!1533414 (= res!1050639 (validKeyInArray!0 (select (arr!49120 a!2792) j!64)))))

(declare-fun b!1533415 () Bool)

(assert (=> b!1533415 (= e!854212 (and (= (select (arr!49120 a!2792) index!463) (select (arr!49120 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (not (= (select (store (arr!49120 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1050633 () Bool)

(assert (=> start!130792 (=> (not res!1050633) (not e!854212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130792 (= res!1050633 (validMask!0 mask!2480))))

(assert (=> start!130792 e!854212))

(assert (=> start!130792 true))

(declare-fun array_inv!38065 (array!101817) Bool)

(assert (=> start!130792 (array_inv!38065 a!2792)))

(declare-fun b!1533412 () Bool)

(declare-fun res!1050632 () Bool)

(assert (=> b!1533412 (=> (not res!1050632) (not e!854212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101817 (_ BitVec 32)) Bool)

(assert (=> b!1533412 (= res!1050632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130792 res!1050633) b!1533410))

(assert (= (and b!1533410 res!1050635) b!1533409))

(assert (= (and b!1533409 res!1050634) b!1533414))

(assert (= (and b!1533414 res!1050639) b!1533412))

(assert (= (and b!1533412 res!1050632) b!1533408))

(assert (= (and b!1533408 res!1050638) b!1533411))

(assert (= (and b!1533411 res!1050637) b!1533413))

(assert (= (and b!1533413 res!1050636) b!1533415))

(declare-fun m!1416141 () Bool)

(assert (=> b!1533411 m!1416141))

(declare-fun m!1416143 () Bool)

(assert (=> b!1533413 m!1416143))

(assert (=> b!1533413 m!1416143))

(declare-fun m!1416145 () Bool)

(assert (=> b!1533413 m!1416145))

(declare-fun m!1416147 () Bool)

(assert (=> b!1533409 m!1416147))

(assert (=> b!1533409 m!1416147))

(declare-fun m!1416149 () Bool)

(assert (=> b!1533409 m!1416149))

(assert (=> b!1533414 m!1416143))

(assert (=> b!1533414 m!1416143))

(declare-fun m!1416151 () Bool)

(assert (=> b!1533414 m!1416151))

(declare-fun m!1416153 () Bool)

(assert (=> b!1533408 m!1416153))

(declare-fun m!1416155 () Bool)

(assert (=> b!1533412 m!1416155))

(declare-fun m!1416157 () Bool)

(assert (=> b!1533415 m!1416157))

(assert (=> b!1533415 m!1416143))

(declare-fun m!1416159 () Bool)

(assert (=> b!1533415 m!1416159))

(declare-fun m!1416161 () Bool)

(assert (=> b!1533415 m!1416161))

(declare-fun m!1416163 () Bool)

(assert (=> start!130792 m!1416163))

(declare-fun m!1416165 () Bool)

(assert (=> start!130792 m!1416165))

(push 1)

(assert (not start!130792))

(assert (not b!1533412))

(assert (not b!1533413))

(assert (not b!1533414))

(assert (not b!1533409))

(assert (not b!1533408))

(check-sat)

