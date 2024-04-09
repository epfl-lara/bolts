; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131202 () Bool)

(assert start!131202)

(declare-fun b!1538666 () Bool)

(declare-fun res!1055786 () Bool)

(declare-fun e!856028 () Bool)

(assert (=> b!1538666 (=> (not res!1055786) (not e!856028))))

(declare-datatypes ((array!102194 0))(
  ( (array!102195 (arr!49307 (Array (_ BitVec 32) (_ BitVec 64))) (size!49858 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102194)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538666 (= res!1055786 (and (= (size!49858 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49858 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49858 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538667 () Bool)

(declare-fun res!1055783 () Bool)

(assert (=> b!1538667 (=> (not res!1055783) (not e!856028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538667 (= res!1055783 (validKeyInArray!0 (select (arr!49307 a!2792) j!64)))))

(declare-fun b!1538668 () Bool)

(assert (=> b!1538668 (= e!856028 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664861 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538668 (= lt!664861 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538670 () Bool)

(declare-fun res!1055785 () Bool)

(assert (=> b!1538670 (=> (not res!1055785) (not e!856028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102194 (_ BitVec 32)) Bool)

(assert (=> b!1538670 (= res!1055785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538671 () Bool)

(declare-fun res!1055784 () Bool)

(assert (=> b!1538671 (=> (not res!1055784) (not e!856028))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538671 (= res!1055784 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49858 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49858 a!2792)) (= (select (arr!49307 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538672 () Bool)

(declare-fun res!1055787 () Bool)

(assert (=> b!1538672 (=> (not res!1055787) (not e!856028))))

(assert (=> b!1538672 (= res!1055787 (not (= (select (arr!49307 a!2792) index!463) (select (arr!49307 a!2792) j!64))))))

(declare-fun b!1538669 () Bool)

(declare-fun res!1055782 () Bool)

(assert (=> b!1538669 (=> (not res!1055782) (not e!856028))))

(declare-datatypes ((List!35961 0))(
  ( (Nil!35958) (Cons!35957 (h!37403 (_ BitVec 64)) (t!50662 List!35961)) )
))
(declare-fun arrayNoDuplicates!0 (array!102194 (_ BitVec 32) List!35961) Bool)

(assert (=> b!1538669 (= res!1055782 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35958))))

(declare-fun res!1055789 () Bool)

(assert (=> start!131202 (=> (not res!1055789) (not e!856028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131202 (= res!1055789 (validMask!0 mask!2480))))

(assert (=> start!131202 e!856028))

(assert (=> start!131202 true))

(declare-fun array_inv!38252 (array!102194) Bool)

(assert (=> start!131202 (array_inv!38252 a!2792)))

(declare-fun b!1538673 () Bool)

(declare-fun res!1055790 () Bool)

(assert (=> b!1538673 (=> (not res!1055790) (not e!856028))))

(assert (=> b!1538673 (= res!1055790 (validKeyInArray!0 (select (arr!49307 a!2792) i!951)))))

(declare-fun b!1538674 () Bool)

(declare-fun res!1055788 () Bool)

(assert (=> b!1538674 (=> (not res!1055788) (not e!856028))))

(declare-datatypes ((SeekEntryResult!13456 0))(
  ( (MissingZero!13456 (index!56218 (_ BitVec 32))) (Found!13456 (index!56219 (_ BitVec 32))) (Intermediate!13456 (undefined!14268 Bool) (index!56220 (_ BitVec 32)) (x!137952 (_ BitVec 32))) (Undefined!13456) (MissingVacant!13456 (index!56221 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102194 (_ BitVec 32)) SeekEntryResult!13456)

(assert (=> b!1538674 (= res!1055788 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49307 a!2792) j!64) a!2792 mask!2480) (Found!13456 j!64)))))

(assert (= (and start!131202 res!1055789) b!1538666))

(assert (= (and b!1538666 res!1055786) b!1538673))

(assert (= (and b!1538673 res!1055790) b!1538667))

(assert (= (and b!1538667 res!1055783) b!1538670))

(assert (= (and b!1538670 res!1055785) b!1538669))

(assert (= (and b!1538669 res!1055782) b!1538671))

(assert (= (and b!1538671 res!1055784) b!1538674))

(assert (= (and b!1538674 res!1055788) b!1538672))

(assert (= (and b!1538672 res!1055787) b!1538668))

(declare-fun m!1421109 () Bool)

(assert (=> b!1538674 m!1421109))

(assert (=> b!1538674 m!1421109))

(declare-fun m!1421111 () Bool)

(assert (=> b!1538674 m!1421111))

(declare-fun m!1421113 () Bool)

(assert (=> b!1538672 m!1421113))

(assert (=> b!1538672 m!1421109))

(declare-fun m!1421115 () Bool)

(assert (=> b!1538673 m!1421115))

(assert (=> b!1538673 m!1421115))

(declare-fun m!1421117 () Bool)

(assert (=> b!1538673 m!1421117))

(declare-fun m!1421119 () Bool)

(assert (=> b!1538669 m!1421119))

(declare-fun m!1421121 () Bool)

(assert (=> b!1538671 m!1421121))

(declare-fun m!1421123 () Bool)

(assert (=> start!131202 m!1421123))

(declare-fun m!1421125 () Bool)

(assert (=> start!131202 m!1421125))

(declare-fun m!1421127 () Bool)

(assert (=> b!1538670 m!1421127))

(assert (=> b!1538667 m!1421109))

(assert (=> b!1538667 m!1421109))

(declare-fun m!1421129 () Bool)

(assert (=> b!1538667 m!1421129))

(declare-fun m!1421131 () Bool)

(assert (=> b!1538668 m!1421131))

(check-sat (not b!1538674) (not b!1538669) (not b!1538668) (not b!1538667) (not b!1538670) (not start!131202) (not b!1538673))
