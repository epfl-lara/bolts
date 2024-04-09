; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127770 () Bool)

(assert start!127770)

(declare-fun b!1500790 () Bool)

(declare-fun res!1021939 () Bool)

(declare-fun e!839723 () Bool)

(assert (=> b!1500790 (=> (not res!1021939) (not e!839723))))

(declare-datatypes ((array!100064 0))(
  ( (array!100065 (arr!48287 (Array (_ BitVec 32) (_ BitVec 64))) (size!48838 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100064)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500790 (= res!1021939 (validKeyInArray!0 (select (arr!48287 a!2850) i!996)))))

(declare-fun b!1500791 () Bool)

(declare-fun e!839721 () Bool)

(assert (=> b!1500791 (= e!839721 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun lt!652977 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12516 0))(
  ( (MissingZero!12516 (index!52455 (_ BitVec 32))) (Found!12516 (index!52456 (_ BitVec 32))) (Intermediate!12516 (undefined!13328 Bool) (index!52457 (_ BitVec 32)) (x!134139 (_ BitVec 32))) (Undefined!12516) (MissingVacant!12516 (index!52458 (_ BitVec 32))) )
))
(declare-fun lt!652978 () SeekEntryResult!12516)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100064 (_ BitVec 32)) SeekEntryResult!12516)

(assert (=> b!1500791 (= lt!652978 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652977 vacantBefore!10 (select (arr!48287 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500793 () Bool)

(declare-fun res!1021942 () Bool)

(assert (=> b!1500793 (=> (not res!1021942) (not e!839723))))

(assert (=> b!1500793 (= res!1021942 (and (= (size!48838 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48838 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48838 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500794 () Bool)

(declare-fun res!1021940 () Bool)

(assert (=> b!1500794 (=> (not res!1021940) (not e!839723))))

(declare-datatypes ((List!34959 0))(
  ( (Nil!34956) (Cons!34955 (h!36353 (_ BitVec 64)) (t!49660 List!34959)) )
))
(declare-fun arrayNoDuplicates!0 (array!100064 (_ BitVec 32) List!34959) Bool)

(assert (=> b!1500794 (= res!1021940 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34956))))

(declare-fun b!1500795 () Bool)

(declare-fun res!1021944 () Bool)

(assert (=> b!1500795 (=> (not res!1021944) (not e!839723))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1500795 (= res!1021944 (not (= (select (arr!48287 a!2850) index!625) (select (arr!48287 a!2850) j!87))))))

(declare-fun b!1500796 () Bool)

(assert (=> b!1500796 (= e!839723 e!839721)))

(declare-fun res!1021938 () Bool)

(assert (=> b!1500796 (=> (not res!1021938) (not e!839721))))

(assert (=> b!1500796 (= res!1021938 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652977 #b00000000000000000000000000000000) (bvslt lt!652977 (size!48838 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500796 (= lt!652977 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1021941 () Bool)

(assert (=> start!127770 (=> (not res!1021941) (not e!839723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127770 (= res!1021941 (validMask!0 mask!2661))))

(assert (=> start!127770 e!839723))

(assert (=> start!127770 true))

(declare-fun array_inv!37232 (array!100064) Bool)

(assert (=> start!127770 (array_inv!37232 a!2850)))

(declare-fun b!1500792 () Bool)

(declare-fun res!1021947 () Bool)

(assert (=> b!1500792 (=> (not res!1021947) (not e!839723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100064 (_ BitVec 32)) Bool)

(assert (=> b!1500792 (= res!1021947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500797 () Bool)

(declare-fun res!1021945 () Bool)

(assert (=> b!1500797 (=> (not res!1021945) (not e!839723))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500797 (= res!1021945 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48838 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48838 a!2850)) (= (select (arr!48287 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48287 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48838 a!2850))))))

(declare-fun b!1500798 () Bool)

(declare-fun res!1021943 () Bool)

(assert (=> b!1500798 (=> (not res!1021943) (not e!839723))))

(assert (=> b!1500798 (= res!1021943 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48287 a!2850) j!87) a!2850 mask!2661) (Found!12516 j!87)))))

(declare-fun b!1500799 () Bool)

(declare-fun res!1021946 () Bool)

(assert (=> b!1500799 (=> (not res!1021946) (not e!839723))))

(assert (=> b!1500799 (= res!1021946 (validKeyInArray!0 (select (arr!48287 a!2850) j!87)))))

(assert (= (and start!127770 res!1021941) b!1500793))

(assert (= (and b!1500793 res!1021942) b!1500790))

(assert (= (and b!1500790 res!1021939) b!1500799))

(assert (= (and b!1500799 res!1021946) b!1500792))

(assert (= (and b!1500792 res!1021947) b!1500794))

(assert (= (and b!1500794 res!1021940) b!1500797))

(assert (= (and b!1500797 res!1021945) b!1500798))

(assert (= (and b!1500798 res!1021943) b!1500795))

(assert (= (and b!1500795 res!1021944) b!1500796))

(assert (= (and b!1500796 res!1021938) b!1500791))

(declare-fun m!1384041 () Bool)

(assert (=> b!1500797 m!1384041))

(declare-fun m!1384043 () Bool)

(assert (=> b!1500797 m!1384043))

(declare-fun m!1384045 () Bool)

(assert (=> b!1500797 m!1384045))

(declare-fun m!1384047 () Bool)

(assert (=> b!1500791 m!1384047))

(assert (=> b!1500791 m!1384047))

(declare-fun m!1384049 () Bool)

(assert (=> b!1500791 m!1384049))

(declare-fun m!1384051 () Bool)

(assert (=> start!127770 m!1384051))

(declare-fun m!1384053 () Bool)

(assert (=> start!127770 m!1384053))

(declare-fun m!1384055 () Bool)

(assert (=> b!1500795 m!1384055))

(assert (=> b!1500795 m!1384047))

(assert (=> b!1500799 m!1384047))

(assert (=> b!1500799 m!1384047))

(declare-fun m!1384057 () Bool)

(assert (=> b!1500799 m!1384057))

(declare-fun m!1384059 () Bool)

(assert (=> b!1500796 m!1384059))

(declare-fun m!1384061 () Bool)

(assert (=> b!1500794 m!1384061))

(declare-fun m!1384063 () Bool)

(assert (=> b!1500792 m!1384063))

(assert (=> b!1500798 m!1384047))

(assert (=> b!1500798 m!1384047))

(declare-fun m!1384065 () Bool)

(assert (=> b!1500798 m!1384065))

(declare-fun m!1384067 () Bool)

(assert (=> b!1500790 m!1384067))

(assert (=> b!1500790 m!1384067))

(declare-fun m!1384069 () Bool)

(assert (=> b!1500790 m!1384069))

(check-sat (not b!1500791) (not b!1500799) (not b!1500798) (not start!127770) (not b!1500794) (not b!1500790) (not b!1500792) (not b!1500796))
(check-sat)
