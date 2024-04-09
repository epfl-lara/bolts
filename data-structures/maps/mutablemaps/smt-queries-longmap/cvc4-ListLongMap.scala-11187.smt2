; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130790 () Bool)

(assert start!130790)

(declare-fun b!1533384 () Bool)

(declare-fun res!1050610 () Bool)

(declare-fun e!854206 () Bool)

(assert (=> b!1533384 (=> (not res!1050610) (not e!854206))))

(declare-datatypes ((array!101815 0))(
  ( (array!101816 (arr!49119 (Array (_ BitVec 32) (_ BitVec 64))) (size!49670 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101815)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533384 (= res!1050610 (validKeyInArray!0 (select (arr!49119 a!2792) i!951)))))

(declare-fun b!1533385 () Bool)

(declare-fun res!1050611 () Bool)

(assert (=> b!1533385 (=> (not res!1050611) (not e!854206))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1533385 (= res!1050611 (validKeyInArray!0 (select (arr!49119 a!2792) j!64)))))

(declare-fun b!1533386 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1533386 (= e!854206 (and (= (select (arr!49119 a!2792) index!463) (select (arr!49119 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533387 () Bool)

(declare-fun res!1050609 () Bool)

(assert (=> b!1533387 (=> (not res!1050609) (not e!854206))))

(declare-datatypes ((List!35773 0))(
  ( (Nil!35770) (Cons!35769 (h!37215 (_ BitVec 64)) (t!50474 List!35773)) )
))
(declare-fun arrayNoDuplicates!0 (array!101815 (_ BitVec 32) List!35773) Bool)

(assert (=> b!1533387 (= res!1050609 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35770))))

(declare-fun b!1533388 () Bool)

(declare-fun res!1050615 () Bool)

(assert (=> b!1533388 (=> (not res!1050615) (not e!854206))))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1533388 (= res!1050615 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49670 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49670 a!2792)) (= (select (arr!49119 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533389 () Bool)

(declare-fun res!1050608 () Bool)

(assert (=> b!1533389 (=> (not res!1050608) (not e!854206))))

(declare-datatypes ((SeekEntryResult!13274 0))(
  ( (MissingZero!13274 (index!55490 (_ BitVec 32))) (Found!13274 (index!55491 (_ BitVec 32))) (Intermediate!13274 (undefined!14086 Bool) (index!55492 (_ BitVec 32)) (x!137263 (_ BitVec 32))) (Undefined!13274) (MissingVacant!13274 (index!55493 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101815 (_ BitVec 32)) SeekEntryResult!13274)

(assert (=> b!1533389 (= res!1050608 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49119 a!2792) j!64) a!2792 mask!2480) (Found!13274 j!64)))))

(declare-fun res!1050614 () Bool)

(assert (=> start!130790 (=> (not res!1050614) (not e!854206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130790 (= res!1050614 (validMask!0 mask!2480))))

(assert (=> start!130790 e!854206))

(assert (=> start!130790 true))

(declare-fun array_inv!38064 (array!101815) Bool)

(assert (=> start!130790 (array_inv!38064 a!2792)))

(declare-fun b!1533390 () Bool)

(declare-fun res!1050612 () Bool)

(assert (=> b!1533390 (=> (not res!1050612) (not e!854206))))

(assert (=> b!1533390 (= res!1050612 (and (= (size!49670 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49670 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49670 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533391 () Bool)

(declare-fun res!1050613 () Bool)

(assert (=> b!1533391 (=> (not res!1050613) (not e!854206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101815 (_ BitVec 32)) Bool)

(assert (=> b!1533391 (= res!1050613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130790 res!1050614) b!1533390))

(assert (= (and b!1533390 res!1050612) b!1533384))

(assert (= (and b!1533384 res!1050610) b!1533385))

(assert (= (and b!1533385 res!1050611) b!1533391))

(assert (= (and b!1533391 res!1050613) b!1533387))

(assert (= (and b!1533387 res!1050609) b!1533388))

(assert (= (and b!1533388 res!1050615) b!1533389))

(assert (= (and b!1533389 res!1050608) b!1533386))

(declare-fun m!1416119 () Bool)

(assert (=> b!1533388 m!1416119))

(declare-fun m!1416121 () Bool)

(assert (=> b!1533389 m!1416121))

(assert (=> b!1533389 m!1416121))

(declare-fun m!1416123 () Bool)

(assert (=> b!1533389 m!1416123))

(declare-fun m!1416125 () Bool)

(assert (=> b!1533391 m!1416125))

(declare-fun m!1416127 () Bool)

(assert (=> b!1533384 m!1416127))

(assert (=> b!1533384 m!1416127))

(declare-fun m!1416129 () Bool)

(assert (=> b!1533384 m!1416129))

(assert (=> b!1533385 m!1416121))

(assert (=> b!1533385 m!1416121))

(declare-fun m!1416131 () Bool)

(assert (=> b!1533385 m!1416131))

(declare-fun m!1416133 () Bool)

(assert (=> b!1533387 m!1416133))

(declare-fun m!1416135 () Bool)

(assert (=> start!130790 m!1416135))

(declare-fun m!1416137 () Bool)

(assert (=> start!130790 m!1416137))

(declare-fun m!1416139 () Bool)

(assert (=> b!1533386 m!1416139))

(assert (=> b!1533386 m!1416121))

(push 1)

(assert (not b!1533391))

(assert (not start!130790))

(assert (not b!1533389))

(assert (not b!1533385))

(assert (not b!1533384))

(assert (not b!1533387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

