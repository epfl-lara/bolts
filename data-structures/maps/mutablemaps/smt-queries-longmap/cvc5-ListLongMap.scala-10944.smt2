; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128086 () Bool)

(assert start!128086)

(declare-fun b!1503845 () Bool)

(declare-fun res!1024711 () Bool)

(declare-fun e!840782 () Bool)

(assert (=> b!1503845 (=> (not res!1024711) (not e!840782))))

(declare-datatypes ((array!100275 0))(
  ( (array!100276 (arr!48388 (Array (_ BitVec 32) (_ BitVec 64))) (size!48939 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100275)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503845 (= res!1024711 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48939 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48939 a!2850)) (= (select (arr!48388 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48388 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48939 a!2850))))))

(declare-fun b!1503846 () Bool)

(declare-fun res!1024707 () Bool)

(assert (=> b!1503846 (=> (not res!1024707) (not e!840782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503846 (= res!1024707 (validKeyInArray!0 (select (arr!48388 a!2850) i!996)))))

(declare-fun b!1503847 () Bool)

(declare-fun res!1024713 () Bool)

(assert (=> b!1503847 (=> (not res!1024713) (not e!840782))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503847 (= res!1024713 (not (= (select (arr!48388 a!2850) index!625) (select (arr!48388 a!2850) j!87))))))

(declare-fun res!1024706 () Bool)

(assert (=> start!128086 (=> (not res!1024706) (not e!840782))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128086 (= res!1024706 (validMask!0 mask!2661))))

(assert (=> start!128086 e!840782))

(assert (=> start!128086 true))

(declare-fun array_inv!37333 (array!100275) Bool)

(assert (=> start!128086 (array_inv!37333 a!2850)))

(declare-fun b!1503848 () Bool)

(declare-fun res!1024708 () Bool)

(assert (=> b!1503848 (=> (not res!1024708) (not e!840782))))

(assert (=> b!1503848 (= res!1024708 (validKeyInArray!0 (select (arr!48388 a!2850) j!87)))))

(declare-fun b!1503849 () Bool)

(declare-fun res!1024710 () Bool)

(assert (=> b!1503849 (=> (not res!1024710) (not e!840782))))

(declare-datatypes ((List!35060 0))(
  ( (Nil!35057) (Cons!35056 (h!36454 (_ BitVec 64)) (t!49761 List!35060)) )
))
(declare-fun arrayNoDuplicates!0 (array!100275 (_ BitVec 32) List!35060) Bool)

(assert (=> b!1503849 (= res!1024710 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35057))))

(declare-fun b!1503850 () Bool)

(declare-fun res!1024709 () Bool)

(assert (=> b!1503850 (=> (not res!1024709) (not e!840782))))

(assert (=> b!1503850 (= res!1024709 (and (= (size!48939 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48939 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48939 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503851 () Bool)

(assert (=> b!1503851 (= e!840782 false)))

(declare-fun lt!653578 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503851 (= lt!653578 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503852 () Bool)

(declare-fun res!1024705 () Bool)

(assert (=> b!1503852 (=> (not res!1024705) (not e!840782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100275 (_ BitVec 32)) Bool)

(assert (=> b!1503852 (= res!1024705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503853 () Bool)

(declare-fun res!1024712 () Bool)

(assert (=> b!1503853 (=> (not res!1024712) (not e!840782))))

(declare-datatypes ((SeekEntryResult!12605 0))(
  ( (MissingZero!12605 (index!52811 (_ BitVec 32))) (Found!12605 (index!52812 (_ BitVec 32))) (Intermediate!12605 (undefined!13417 Bool) (index!52813 (_ BitVec 32)) (x!134512 (_ BitVec 32))) (Undefined!12605) (MissingVacant!12605 (index!52814 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100275 (_ BitVec 32)) SeekEntryResult!12605)

(assert (=> b!1503853 (= res!1024712 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48388 a!2850) j!87) a!2850 mask!2661) (Found!12605 j!87)))))

(assert (= (and start!128086 res!1024706) b!1503850))

(assert (= (and b!1503850 res!1024709) b!1503846))

(assert (= (and b!1503846 res!1024707) b!1503848))

(assert (= (and b!1503848 res!1024708) b!1503852))

(assert (= (and b!1503852 res!1024705) b!1503849))

(assert (= (and b!1503849 res!1024710) b!1503845))

(assert (= (and b!1503845 res!1024711) b!1503853))

(assert (= (and b!1503853 res!1024712) b!1503847))

(assert (= (and b!1503847 res!1024713) b!1503851))

(declare-fun m!1387101 () Bool)

(assert (=> b!1503852 m!1387101))

(declare-fun m!1387103 () Bool)

(assert (=> b!1503851 m!1387103))

(declare-fun m!1387105 () Bool)

(assert (=> b!1503848 m!1387105))

(assert (=> b!1503848 m!1387105))

(declare-fun m!1387107 () Bool)

(assert (=> b!1503848 m!1387107))

(declare-fun m!1387109 () Bool)

(assert (=> start!128086 m!1387109))

(declare-fun m!1387111 () Bool)

(assert (=> start!128086 m!1387111))

(declare-fun m!1387113 () Bool)

(assert (=> b!1503847 m!1387113))

(assert (=> b!1503847 m!1387105))

(declare-fun m!1387115 () Bool)

(assert (=> b!1503849 m!1387115))

(declare-fun m!1387117 () Bool)

(assert (=> b!1503845 m!1387117))

(declare-fun m!1387119 () Bool)

(assert (=> b!1503845 m!1387119))

(declare-fun m!1387121 () Bool)

(assert (=> b!1503845 m!1387121))

(assert (=> b!1503853 m!1387105))

(assert (=> b!1503853 m!1387105))

(declare-fun m!1387123 () Bool)

(assert (=> b!1503853 m!1387123))

(declare-fun m!1387125 () Bool)

(assert (=> b!1503846 m!1387125))

(assert (=> b!1503846 m!1387125))

(declare-fun m!1387127 () Bool)

(assert (=> b!1503846 m!1387127))

(push 1)

(assert (not b!1503853))

(assert (not b!1503848))

(assert (not b!1503849))

(assert (not b!1503851))

(assert (not b!1503846))

(assert (not b!1503852))

(assert (not start!128086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

