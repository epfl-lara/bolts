; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130896 () Bool)

(assert start!130896)

(declare-fun res!1051898 () Bool)

(declare-fun e!854558 () Bool)

(assert (=> start!130896 (=> (not res!1051898) (not e!854558))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130896 (= res!1051898 (validMask!0 mask!2480))))

(assert (=> start!130896 e!854558))

(assert (=> start!130896 true))

(declare-datatypes ((array!101921 0))(
  ( (array!101922 (arr!49172 (Array (_ BitVec 32) (_ BitVec 64))) (size!49723 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101921)

(declare-fun array_inv!38117 (array!101921) Bool)

(assert (=> start!130896 (array_inv!38117 a!2792)))

(declare-fun b!1534666 () Bool)

(declare-fun e!854557 () Bool)

(assert (=> b!1534666 (= e!854557 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13327 0))(
  ( (MissingZero!13327 (index!55702 (_ BitVec 32))) (Found!13327 (index!55703 (_ BitVec 32))) (Intermediate!13327 (undefined!14139 Bool) (index!55704 (_ BitVec 32)) (x!137460 (_ BitVec 32))) (Undefined!13327) (MissingVacant!13327 (index!55705 (_ BitVec 32))) )
))
(declare-fun lt!663852 () SeekEntryResult!13327)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!663853 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101921 (_ BitVec 32)) SeekEntryResult!13327)

(assert (=> b!1534666 (= lt!663852 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663853 vacantIndex!5 (select (arr!49172 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534667 () Bool)

(declare-fun res!1051894 () Bool)

(assert (=> b!1534667 (=> (not res!1051894) (not e!854558))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534667 (= res!1051894 (and (= (size!49723 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49723 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49723 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534668 () Bool)

(declare-fun res!1051892 () Bool)

(assert (=> b!1534668 (=> (not res!1051892) (not e!854558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534668 (= res!1051892 (validKeyInArray!0 (select (arr!49172 a!2792) i!951)))))

(declare-fun b!1534669 () Bool)

(declare-fun res!1051893 () Bool)

(assert (=> b!1534669 (=> (not res!1051893) (not e!854558))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534669 (= res!1051893 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49723 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49723 a!2792)) (= (select (arr!49172 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534670 () Bool)

(declare-fun res!1051890 () Bool)

(assert (=> b!1534670 (=> (not res!1051890) (not e!854558))))

(assert (=> b!1534670 (= res!1051890 (not (= (select (arr!49172 a!2792) index!463) (select (arr!49172 a!2792) j!64))))))

(declare-fun b!1534671 () Bool)

(declare-fun res!1051897 () Bool)

(assert (=> b!1534671 (=> (not res!1051897) (not e!854558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101921 (_ BitVec 32)) Bool)

(assert (=> b!1534671 (= res!1051897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534672 () Bool)

(declare-fun res!1051896 () Bool)

(assert (=> b!1534672 (=> (not res!1051896) (not e!854558))))

(assert (=> b!1534672 (= res!1051896 (validKeyInArray!0 (select (arr!49172 a!2792) j!64)))))

(declare-fun b!1534673 () Bool)

(assert (=> b!1534673 (= e!854558 e!854557)))

(declare-fun res!1051891 () Bool)

(assert (=> b!1534673 (=> (not res!1051891) (not e!854557))))

(assert (=> b!1534673 (= res!1051891 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663853 #b00000000000000000000000000000000) (bvslt lt!663853 (size!49723 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534673 (= lt!663853 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534674 () Bool)

(declare-fun res!1051895 () Bool)

(assert (=> b!1534674 (=> (not res!1051895) (not e!854558))))

(declare-datatypes ((List!35826 0))(
  ( (Nil!35823) (Cons!35822 (h!37268 (_ BitVec 64)) (t!50527 List!35826)) )
))
(declare-fun arrayNoDuplicates!0 (array!101921 (_ BitVec 32) List!35826) Bool)

(assert (=> b!1534674 (= res!1051895 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35823))))

(declare-fun b!1534675 () Bool)

(declare-fun res!1051899 () Bool)

(assert (=> b!1534675 (=> (not res!1051899) (not e!854558))))

(assert (=> b!1534675 (= res!1051899 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49172 a!2792) j!64) a!2792 mask!2480) (Found!13327 j!64)))))

(assert (= (and start!130896 res!1051898) b!1534667))

(assert (= (and b!1534667 res!1051894) b!1534668))

(assert (= (and b!1534668 res!1051892) b!1534672))

(assert (= (and b!1534672 res!1051896) b!1534671))

(assert (= (and b!1534671 res!1051897) b!1534674))

(assert (= (and b!1534674 res!1051895) b!1534669))

(assert (= (and b!1534669 res!1051893) b!1534675))

(assert (= (and b!1534675 res!1051899) b!1534670))

(assert (= (and b!1534670 res!1051890) b!1534673))

(assert (= (and b!1534673 res!1051891) b!1534666))

(declare-fun m!1417319 () Bool)

(assert (=> b!1534672 m!1417319))

(assert (=> b!1534672 m!1417319))

(declare-fun m!1417321 () Bool)

(assert (=> b!1534672 m!1417321))

(declare-fun m!1417323 () Bool)

(assert (=> b!1534671 m!1417323))

(declare-fun m!1417325 () Bool)

(assert (=> start!130896 m!1417325))

(declare-fun m!1417327 () Bool)

(assert (=> start!130896 m!1417327))

(declare-fun m!1417329 () Bool)

(assert (=> b!1534673 m!1417329))

(declare-fun m!1417331 () Bool)

(assert (=> b!1534669 m!1417331))

(declare-fun m!1417333 () Bool)

(assert (=> b!1534668 m!1417333))

(assert (=> b!1534668 m!1417333))

(declare-fun m!1417335 () Bool)

(assert (=> b!1534668 m!1417335))

(declare-fun m!1417337 () Bool)

(assert (=> b!1534670 m!1417337))

(assert (=> b!1534670 m!1417319))

(declare-fun m!1417339 () Bool)

(assert (=> b!1534674 m!1417339))

(assert (=> b!1534666 m!1417319))

(assert (=> b!1534666 m!1417319))

(declare-fun m!1417341 () Bool)

(assert (=> b!1534666 m!1417341))

(assert (=> b!1534675 m!1417319))

(assert (=> b!1534675 m!1417319))

(declare-fun m!1417343 () Bool)

(assert (=> b!1534675 m!1417343))

(check-sat (not start!130896) (not b!1534666) (not b!1534675) (not b!1534672) (not b!1534671) (not b!1534673) (not b!1534668) (not b!1534674))
(check-sat)
