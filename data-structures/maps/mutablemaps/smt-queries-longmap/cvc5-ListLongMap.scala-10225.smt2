; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120442 () Bool)

(assert start!120442)

(declare-fun b!1401555 () Bool)

(declare-fun e!793648 () Bool)

(declare-fun e!793645 () Bool)

(assert (=> b!1401555 (= e!793648 (not e!793645))))

(declare-fun res!940184 () Bool)

(assert (=> b!1401555 (=> res!940184 e!793645)))

(declare-datatypes ((SeekEntryResult!10570 0))(
  ( (MissingZero!10570 (index!44656 (_ BitVec 32))) (Found!10570 (index!44657 (_ BitVec 32))) (Intermediate!10570 (undefined!11382 Bool) (index!44658 (_ BitVec 32)) (x!126296 (_ BitVec 32))) (Undefined!10570) (MissingVacant!10570 (index!44659 (_ BitVec 32))) )
))
(declare-fun lt!617017 () SeekEntryResult!10570)

(assert (=> b!1401555 (= res!940184 (or (not (is-Intermediate!10570 lt!617017)) (undefined!11382 lt!617017)))))

(declare-fun e!793643 () Bool)

(assert (=> b!1401555 e!793643))

(declare-fun res!940180 () Bool)

(assert (=> b!1401555 (=> (not res!940180) (not e!793643))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95769 0))(
  ( (array!95770 (arr!46231 (Array (_ BitVec 32) (_ BitVec 64))) (size!46782 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95769)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95769 (_ BitVec 32)) Bool)

(assert (=> b!1401555 (= res!940180 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47094 0))(
  ( (Unit!47095) )
))
(declare-fun lt!617016 () Unit!47094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47094)

(assert (=> b!1401555 (= lt!617016 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617018 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95769 (_ BitVec 32)) SeekEntryResult!10570)

(assert (=> b!1401555 (= lt!617017 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617018 (select (arr!46231 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401555 (= lt!617018 (toIndex!0 (select (arr!46231 a!2901) j!112) mask!2840))))

(declare-fun b!1401556 () Bool)

(declare-fun res!940175 () Bool)

(assert (=> b!1401556 (=> (not res!940175) (not e!793648))))

(declare-datatypes ((List!32930 0))(
  ( (Nil!32927) (Cons!32926 (h!34174 (_ BitVec 64)) (t!47631 List!32930)) )
))
(declare-fun arrayNoDuplicates!0 (array!95769 (_ BitVec 32) List!32930) Bool)

(assert (=> b!1401556 (= res!940175 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32927))))

(declare-fun res!940179 () Bool)

(assert (=> start!120442 (=> (not res!940179) (not e!793648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120442 (= res!940179 (validMask!0 mask!2840))))

(assert (=> start!120442 e!793648))

(assert (=> start!120442 true))

(declare-fun array_inv!35176 (array!95769) Bool)

(assert (=> start!120442 (array_inv!35176 a!2901)))

(declare-fun e!793649 () Bool)

(declare-fun lt!617019 () SeekEntryResult!10570)

(declare-fun lt!617023 () (_ BitVec 64))

(declare-fun lt!617022 () array!95769)

(declare-fun b!1401557 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95769 (_ BitVec 32)) SeekEntryResult!10570)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95769 (_ BitVec 32)) SeekEntryResult!10570)

(assert (=> b!1401557 (= e!793649 (= (seekEntryOrOpen!0 lt!617023 lt!617022 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126296 lt!617019) (index!44658 lt!617019) (index!44658 lt!617019) (select (arr!46231 a!2901) j!112) lt!617022 mask!2840)))))

(declare-fun b!1401558 () Bool)

(assert (=> b!1401558 (= e!793643 (= (seekEntryOrOpen!0 (select (arr!46231 a!2901) j!112) a!2901 mask!2840) (Found!10570 j!112)))))

(declare-fun b!1401559 () Bool)

(declare-fun res!940183 () Bool)

(assert (=> b!1401559 (=> (not res!940183) (not e!793648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401559 (= res!940183 (validKeyInArray!0 (select (arr!46231 a!2901) j!112)))))

(declare-fun b!1401560 () Bool)

(declare-fun e!793647 () Bool)

(assert (=> b!1401560 (= e!793647 true)))

(declare-fun lt!617021 () SeekEntryResult!10570)

(assert (=> b!1401560 (= lt!617021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617018 lt!617023 lt!617022 mask!2840))))

(declare-fun b!1401561 () Bool)

(declare-fun res!940178 () Bool)

(assert (=> b!1401561 (=> (not res!940178) (not e!793648))))

(assert (=> b!1401561 (= res!940178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401562 () Bool)

(declare-fun e!793646 () Bool)

(assert (=> b!1401562 (= e!793646 e!793647)))

(declare-fun res!940176 () Bool)

(assert (=> b!1401562 (=> res!940176 e!793647)))

(assert (=> b!1401562 (= res!940176 (or (bvslt (x!126296 lt!617017) #b00000000000000000000000000000000) (bvsgt (x!126296 lt!617017) #b01111111111111111111111111111110) (bvslt (x!126296 lt!617019) #b00000000000000000000000000000000) (bvsgt (x!126296 lt!617019) #b01111111111111111111111111111110) (bvslt lt!617018 #b00000000000000000000000000000000) (bvsge lt!617018 (size!46782 a!2901)) (bvslt (index!44658 lt!617017) #b00000000000000000000000000000000) (bvsge (index!44658 lt!617017) (size!46782 a!2901)) (bvslt (index!44658 lt!617019) #b00000000000000000000000000000000) (bvsge (index!44658 lt!617019) (size!46782 a!2901)) (not (= lt!617017 (Intermediate!10570 false (index!44658 lt!617017) (x!126296 lt!617017)))) (not (= lt!617019 (Intermediate!10570 false (index!44658 lt!617019) (x!126296 lt!617019))))))))

(assert (=> b!1401562 e!793649))

(declare-fun res!940182 () Bool)

(assert (=> b!1401562 (=> (not res!940182) (not e!793649))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401562 (= res!940182 (and (not (undefined!11382 lt!617019)) (= (index!44658 lt!617019) i!1037) (bvslt (x!126296 lt!617019) (x!126296 lt!617017)) (= (select (store (arr!46231 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44658 lt!617019)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617020 () Unit!47094)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47094)

(assert (=> b!1401562 (= lt!617020 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617018 (x!126296 lt!617017) (index!44658 lt!617017) (x!126296 lt!617019) (index!44658 lt!617019) (undefined!11382 lt!617019) mask!2840))))

(declare-fun b!1401563 () Bool)

(declare-fun res!940177 () Bool)

(assert (=> b!1401563 (=> (not res!940177) (not e!793648))))

(assert (=> b!1401563 (= res!940177 (validKeyInArray!0 (select (arr!46231 a!2901) i!1037)))))

(declare-fun b!1401564 () Bool)

(declare-fun res!940181 () Bool)

(assert (=> b!1401564 (=> (not res!940181) (not e!793648))))

(assert (=> b!1401564 (= res!940181 (and (= (size!46782 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46782 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46782 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401565 () Bool)

(assert (=> b!1401565 (= e!793645 e!793646)))

(declare-fun res!940185 () Bool)

(assert (=> b!1401565 (=> res!940185 e!793646)))

(assert (=> b!1401565 (= res!940185 (or (= lt!617017 lt!617019) (not (is-Intermediate!10570 lt!617019))))))

(assert (=> b!1401565 (= lt!617019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617023 mask!2840) lt!617023 lt!617022 mask!2840))))

(assert (=> b!1401565 (= lt!617023 (select (store (arr!46231 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401565 (= lt!617022 (array!95770 (store (arr!46231 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46782 a!2901)))))

(assert (= (and start!120442 res!940179) b!1401564))

(assert (= (and b!1401564 res!940181) b!1401563))

(assert (= (and b!1401563 res!940177) b!1401559))

(assert (= (and b!1401559 res!940183) b!1401561))

(assert (= (and b!1401561 res!940178) b!1401556))

(assert (= (and b!1401556 res!940175) b!1401555))

(assert (= (and b!1401555 res!940180) b!1401558))

(assert (= (and b!1401555 (not res!940184)) b!1401565))

(assert (= (and b!1401565 (not res!940185)) b!1401562))

(assert (= (and b!1401562 res!940182) b!1401557))

(assert (= (and b!1401562 (not res!940176)) b!1401560))

(declare-fun m!1289465 () Bool)

(assert (=> b!1401562 m!1289465))

(declare-fun m!1289467 () Bool)

(assert (=> b!1401562 m!1289467))

(declare-fun m!1289469 () Bool)

(assert (=> b!1401562 m!1289469))

(declare-fun m!1289471 () Bool)

(assert (=> b!1401560 m!1289471))

(declare-fun m!1289473 () Bool)

(assert (=> b!1401565 m!1289473))

(assert (=> b!1401565 m!1289473))

(declare-fun m!1289475 () Bool)

(assert (=> b!1401565 m!1289475))

(assert (=> b!1401565 m!1289465))

(declare-fun m!1289477 () Bool)

(assert (=> b!1401565 m!1289477))

(declare-fun m!1289479 () Bool)

(assert (=> b!1401557 m!1289479))

(declare-fun m!1289481 () Bool)

(assert (=> b!1401557 m!1289481))

(assert (=> b!1401557 m!1289481))

(declare-fun m!1289483 () Bool)

(assert (=> b!1401557 m!1289483))

(assert (=> b!1401555 m!1289481))

(declare-fun m!1289485 () Bool)

(assert (=> b!1401555 m!1289485))

(assert (=> b!1401555 m!1289481))

(declare-fun m!1289487 () Bool)

(assert (=> b!1401555 m!1289487))

(declare-fun m!1289489 () Bool)

(assert (=> b!1401555 m!1289489))

(assert (=> b!1401555 m!1289481))

(declare-fun m!1289491 () Bool)

(assert (=> b!1401555 m!1289491))

(assert (=> b!1401558 m!1289481))

(assert (=> b!1401558 m!1289481))

(declare-fun m!1289493 () Bool)

(assert (=> b!1401558 m!1289493))

(declare-fun m!1289495 () Bool)

(assert (=> b!1401561 m!1289495))

(declare-fun m!1289497 () Bool)

(assert (=> b!1401563 m!1289497))

(assert (=> b!1401563 m!1289497))

(declare-fun m!1289499 () Bool)

(assert (=> b!1401563 m!1289499))

(declare-fun m!1289501 () Bool)

(assert (=> b!1401556 m!1289501))

(declare-fun m!1289503 () Bool)

(assert (=> start!120442 m!1289503))

(declare-fun m!1289505 () Bool)

(assert (=> start!120442 m!1289505))

(assert (=> b!1401559 m!1289481))

(assert (=> b!1401559 m!1289481))

(declare-fun m!1289507 () Bool)

(assert (=> b!1401559 m!1289507))

(push 1)

