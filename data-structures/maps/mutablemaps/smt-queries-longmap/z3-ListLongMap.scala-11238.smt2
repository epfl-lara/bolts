; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131094 () Bool)

(assert start!131094)

(declare-fun b!1537630 () Bool)

(declare-fun res!1054854 () Bool)

(declare-fun e!855703 () Bool)

(assert (=> b!1537630 (=> (not res!1054854) (not e!855703))))

(declare-datatypes ((array!102119 0))(
  ( (array!102120 (arr!49271 (Array (_ BitVec 32) (_ BitVec 64))) (size!49822 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102119)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537630 (= res!1054854 (validKeyInArray!0 (select (arr!49271 a!2792) j!64)))))

(declare-fun b!1537631 () Bool)

(declare-fun res!1054860 () Bool)

(assert (=> b!1537631 (=> (not res!1054860) (not e!855703))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537631 (= res!1054860 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49822 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49822 a!2792)) (= (select (arr!49271 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537633 () Bool)

(declare-fun res!1054857 () Bool)

(assert (=> b!1537633 (=> (not res!1054857) (not e!855703))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537633 (= res!1054857 (validKeyInArray!0 (select (arr!49271 a!2792) i!951)))))

(declare-fun b!1537634 () Bool)

(declare-fun res!1054856 () Bool)

(assert (=> b!1537634 (=> (not res!1054856) (not e!855703))))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1537634 (= res!1054856 (and (= (size!49822 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49822 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49822 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537635 () Bool)

(declare-fun res!1054855 () Bool)

(assert (=> b!1537635 (=> (not res!1054855) (not e!855703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102119 (_ BitVec 32)) Bool)

(assert (=> b!1537635 (= res!1054855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537636 () Bool)

(declare-fun res!1054859 () Bool)

(assert (=> b!1537636 (=> (not res!1054859) (not e!855703))))

(declare-datatypes ((List!35925 0))(
  ( (Nil!35922) (Cons!35921 (h!37367 (_ BitVec 64)) (t!50626 List!35925)) )
))
(declare-fun arrayNoDuplicates!0 (array!102119 (_ BitVec 32) List!35925) Bool)

(assert (=> b!1537636 (= res!1054859 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35922))))

(declare-fun b!1537632 () Bool)

(assert (=> b!1537632 (= e!855703 false)))

(declare-datatypes ((SeekEntryResult!13420 0))(
  ( (MissingZero!13420 (index!56074 (_ BitVec 32))) (Found!13420 (index!56075 (_ BitVec 32))) (Intermediate!13420 (undefined!14232 Bool) (index!56076 (_ BitVec 32)) (x!137817 (_ BitVec 32))) (Undefined!13420) (MissingVacant!13420 (index!56077 (_ BitVec 32))) )
))
(declare-fun lt!664702 () SeekEntryResult!13420)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102119 (_ BitVec 32)) SeekEntryResult!13420)

(assert (=> b!1537632 (= lt!664702 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49271 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1054858 () Bool)

(assert (=> start!131094 (=> (not res!1054858) (not e!855703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131094 (= res!1054858 (validMask!0 mask!2480))))

(assert (=> start!131094 e!855703))

(assert (=> start!131094 true))

(declare-fun array_inv!38216 (array!102119) Bool)

(assert (=> start!131094 (array_inv!38216 a!2792)))

(assert (= (and start!131094 res!1054858) b!1537634))

(assert (= (and b!1537634 res!1054856) b!1537633))

(assert (= (and b!1537633 res!1054857) b!1537630))

(assert (= (and b!1537630 res!1054854) b!1537635))

(assert (= (and b!1537635 res!1054855) b!1537636))

(assert (= (and b!1537636 res!1054859) b!1537631))

(assert (= (and b!1537631 res!1054860) b!1537632))

(declare-fun m!1420193 () Bool)

(assert (=> b!1537636 m!1420193))

(declare-fun m!1420195 () Bool)

(assert (=> start!131094 m!1420195))

(declare-fun m!1420197 () Bool)

(assert (=> start!131094 m!1420197))

(declare-fun m!1420199 () Bool)

(assert (=> b!1537635 m!1420199))

(declare-fun m!1420201 () Bool)

(assert (=> b!1537632 m!1420201))

(assert (=> b!1537632 m!1420201))

(declare-fun m!1420203 () Bool)

(assert (=> b!1537632 m!1420203))

(assert (=> b!1537630 m!1420201))

(assert (=> b!1537630 m!1420201))

(declare-fun m!1420205 () Bool)

(assert (=> b!1537630 m!1420205))

(declare-fun m!1420207 () Bool)

(assert (=> b!1537631 m!1420207))

(declare-fun m!1420209 () Bool)

(assert (=> b!1537633 m!1420209))

(assert (=> b!1537633 m!1420209))

(declare-fun m!1420211 () Bool)

(assert (=> b!1537633 m!1420211))

(check-sat (not b!1537636) (not start!131094) (not b!1537632) (not b!1537630) (not b!1537633) (not b!1537635))
