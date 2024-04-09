; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120494 () Bool)

(assert start!120494)

(declare-fun b!1402387 () Bool)

(declare-fun e!794138 () Bool)

(declare-fun e!794139 () Bool)

(assert (=> b!1402387 (= e!794138 e!794139)))

(declare-fun res!941007 () Bool)

(assert (=> b!1402387 (=> res!941007 e!794139)))

(declare-datatypes ((array!95821 0))(
  ( (array!95822 (arr!46257 (Array (_ BitVec 32) (_ BitVec 64))) (size!46808 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95821)

(declare-datatypes ((SeekEntryResult!10596 0))(
  ( (MissingZero!10596 (index!44760 (_ BitVec 32))) (Found!10596 (index!44761 (_ BitVec 32))) (Intermediate!10596 (undefined!11408 Bool) (index!44762 (_ BitVec 32)) (x!126386 (_ BitVec 32))) (Undefined!10596) (MissingVacant!10596 (index!44763 (_ BitVec 32))) )
))
(declare-fun lt!617701 () SeekEntryResult!10596)

(declare-fun lt!617696 () SeekEntryResult!10596)

(declare-fun lt!617694 () (_ BitVec 32))

(assert (=> b!1402387 (= res!941007 (or (bvslt (x!126386 lt!617701) #b00000000000000000000000000000000) (bvsgt (x!126386 lt!617701) #b01111111111111111111111111111110) (bvslt (x!126386 lt!617696) #b00000000000000000000000000000000) (bvsgt (x!126386 lt!617696) #b01111111111111111111111111111110) (bvslt lt!617694 #b00000000000000000000000000000000) (bvsge lt!617694 (size!46808 a!2901)) (bvslt (index!44762 lt!617701) #b00000000000000000000000000000000) (bvsge (index!44762 lt!617701) (size!46808 a!2901)) (bvslt (index!44762 lt!617696) #b00000000000000000000000000000000) (bvsge (index!44762 lt!617696) (size!46808 a!2901)) (not (= lt!617701 (Intermediate!10596 false (index!44762 lt!617701) (x!126386 lt!617701)))) (not (= lt!617696 (Intermediate!10596 false (index!44762 lt!617696) (x!126386 lt!617696))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617698 () array!95821)

(declare-fun lt!617700 () SeekEntryResult!10596)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95821 (_ BitVec 32)) SeekEntryResult!10596)

(assert (=> b!1402387 (= lt!617700 (seekKeyOrZeroReturnVacant!0 (x!126386 lt!617696) (index!44762 lt!617696) (index!44762 lt!617696) (select (arr!46257 a!2901) j!112) lt!617698 mask!2840))))

(declare-fun lt!617695 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95821 (_ BitVec 32)) SeekEntryResult!10596)

(assert (=> b!1402387 (= lt!617700 (seekEntryOrOpen!0 lt!617695 lt!617698 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402387 (and (not (undefined!11408 lt!617696)) (= (index!44762 lt!617696) i!1037) (bvslt (x!126386 lt!617696) (x!126386 lt!617701)) (= (select (store (arr!46257 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44762 lt!617696)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47146 0))(
  ( (Unit!47147) )
))
(declare-fun lt!617693 () Unit!47146)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47146)

(assert (=> b!1402387 (= lt!617693 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617694 (x!126386 lt!617701) (index!44762 lt!617701) (x!126386 lt!617696) (index!44762 lt!617696) (undefined!11408 lt!617696) mask!2840))))

(declare-fun res!941008 () Bool)

(declare-fun e!794141 () Bool)

(assert (=> start!120494 (=> (not res!941008) (not e!794141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120494 (= res!941008 (validMask!0 mask!2840))))

(assert (=> start!120494 e!794141))

(assert (=> start!120494 true))

(declare-fun array_inv!35202 (array!95821) Bool)

(assert (=> start!120494 (array_inv!35202 a!2901)))

(declare-fun b!1402388 () Bool)

(assert (=> b!1402388 (= e!794139 true)))

(declare-fun lt!617692 () SeekEntryResult!10596)

(assert (=> b!1402388 (= lt!617692 lt!617700)))

(declare-fun lt!617699 () Unit!47146)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47146)

(assert (=> b!1402388 (= lt!617699 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617694 (x!126386 lt!617701) (index!44762 lt!617701) (x!126386 lt!617696) (index!44762 lt!617696) mask!2840))))

(declare-fun b!1402389 () Bool)

(declare-fun res!941015 () Bool)

(assert (=> b!1402389 (=> (not res!941015) (not e!794141))))

(declare-datatypes ((List!32956 0))(
  ( (Nil!32953) (Cons!32952 (h!34200 (_ BitVec 64)) (t!47657 List!32956)) )
))
(declare-fun arrayNoDuplicates!0 (array!95821 (_ BitVec 32) List!32956) Bool)

(assert (=> b!1402389 (= res!941015 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32953))))

(declare-fun b!1402390 () Bool)

(declare-fun res!941011 () Bool)

(assert (=> b!1402390 (=> (not res!941011) (not e!794141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402390 (= res!941011 (validKeyInArray!0 (select (arr!46257 a!2901) j!112)))))

(declare-fun b!1402391 () Bool)

(declare-fun res!941009 () Bool)

(assert (=> b!1402391 (=> res!941009 e!794139)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95821 (_ BitVec 32)) SeekEntryResult!10596)

(assert (=> b!1402391 (= res!941009 (not (= lt!617696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617694 lt!617695 lt!617698 mask!2840))))))

(declare-fun b!1402392 () Bool)

(declare-fun e!794137 () Bool)

(assert (=> b!1402392 (= e!794141 (not e!794137))))

(declare-fun res!941012 () Bool)

(assert (=> b!1402392 (=> res!941012 e!794137)))

(assert (=> b!1402392 (= res!941012 (or (not (is-Intermediate!10596 lt!617701)) (undefined!11408 lt!617701)))))

(assert (=> b!1402392 (= lt!617692 (Found!10596 j!112))))

(assert (=> b!1402392 (= lt!617692 (seekEntryOrOpen!0 (select (arr!46257 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95821 (_ BitVec 32)) Bool)

(assert (=> b!1402392 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617697 () Unit!47146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47146)

(assert (=> b!1402392 (= lt!617697 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402392 (= lt!617701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617694 (select (arr!46257 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402392 (= lt!617694 (toIndex!0 (select (arr!46257 a!2901) j!112) mask!2840))))

(declare-fun b!1402393 () Bool)

(declare-fun res!941016 () Bool)

(assert (=> b!1402393 (=> (not res!941016) (not e!794141))))

(assert (=> b!1402393 (= res!941016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402394 () Bool)

(assert (=> b!1402394 (= e!794137 e!794138)))

(declare-fun res!941010 () Bool)

(assert (=> b!1402394 (=> res!941010 e!794138)))

(assert (=> b!1402394 (= res!941010 (or (= lt!617701 lt!617696) (not (is-Intermediate!10596 lt!617696))))))

(assert (=> b!1402394 (= lt!617696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617695 mask!2840) lt!617695 lt!617698 mask!2840))))

(assert (=> b!1402394 (= lt!617695 (select (store (arr!46257 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402394 (= lt!617698 (array!95822 (store (arr!46257 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46808 a!2901)))))

(declare-fun b!1402395 () Bool)

(declare-fun res!941013 () Bool)

(assert (=> b!1402395 (=> (not res!941013) (not e!794141))))

(assert (=> b!1402395 (= res!941013 (and (= (size!46808 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46808 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46808 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402396 () Bool)

(declare-fun res!941014 () Bool)

(assert (=> b!1402396 (=> (not res!941014) (not e!794141))))

(assert (=> b!1402396 (= res!941014 (validKeyInArray!0 (select (arr!46257 a!2901) i!1037)))))

(assert (= (and start!120494 res!941008) b!1402395))

(assert (= (and b!1402395 res!941013) b!1402396))

(assert (= (and b!1402396 res!941014) b!1402390))

(assert (= (and b!1402390 res!941011) b!1402393))

(assert (= (and b!1402393 res!941016) b!1402389))

(assert (= (and b!1402389 res!941015) b!1402392))

(assert (= (and b!1402392 (not res!941012)) b!1402394))

(assert (= (and b!1402394 (not res!941010)) b!1402387))

(assert (= (and b!1402387 (not res!941007)) b!1402391))

(assert (= (and b!1402391 (not res!941009)) b!1402388))

(declare-fun m!1290625 () Bool)

(assert (=> b!1402387 m!1290625))

(declare-fun m!1290627 () Bool)

(assert (=> b!1402387 m!1290627))

(assert (=> b!1402387 m!1290625))

(declare-fun m!1290629 () Bool)

(assert (=> b!1402387 m!1290629))

(declare-fun m!1290631 () Bool)

(assert (=> b!1402387 m!1290631))

(declare-fun m!1290633 () Bool)

(assert (=> b!1402387 m!1290633))

(declare-fun m!1290635 () Bool)

(assert (=> b!1402387 m!1290635))

(declare-fun m!1290637 () Bool)

(assert (=> start!120494 m!1290637))

(declare-fun m!1290639 () Bool)

(assert (=> start!120494 m!1290639))

(declare-fun m!1290641 () Bool)

(assert (=> b!1402391 m!1290641))

(declare-fun m!1290643 () Bool)

(assert (=> b!1402388 m!1290643))

(declare-fun m!1290645 () Bool)

(assert (=> b!1402393 m!1290645))

(declare-fun m!1290647 () Bool)

(assert (=> b!1402394 m!1290647))

(assert (=> b!1402394 m!1290647))

(declare-fun m!1290649 () Bool)

(assert (=> b!1402394 m!1290649))

(assert (=> b!1402394 m!1290635))

(declare-fun m!1290651 () Bool)

(assert (=> b!1402394 m!1290651))

(assert (=> b!1402390 m!1290625))

(assert (=> b!1402390 m!1290625))

(declare-fun m!1290653 () Bool)

(assert (=> b!1402390 m!1290653))

(declare-fun m!1290655 () Bool)

(assert (=> b!1402396 m!1290655))

(assert (=> b!1402396 m!1290655))

(declare-fun m!1290657 () Bool)

(assert (=> b!1402396 m!1290657))

(assert (=> b!1402392 m!1290625))

(declare-fun m!1290659 () Bool)

(assert (=> b!1402392 m!1290659))

(assert (=> b!1402392 m!1290625))

(assert (=> b!1402392 m!1290625))

(declare-fun m!1290661 () Bool)

(assert (=> b!1402392 m!1290661))

(declare-fun m!1290663 () Bool)

(assert (=> b!1402392 m!1290663))

(assert (=> b!1402392 m!1290625))

(declare-fun m!1290665 () Bool)

(assert (=> b!1402392 m!1290665))

(declare-fun m!1290667 () Bool)

(assert (=> b!1402392 m!1290667))

(declare-fun m!1290669 () Bool)

(assert (=> b!1402389 m!1290669))

(push 1)

