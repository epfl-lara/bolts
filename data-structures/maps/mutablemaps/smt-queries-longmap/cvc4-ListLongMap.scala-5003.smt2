; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68552 () Bool)

(assert start!68552)

(declare-fun b!796825 () Bool)

(declare-fun res!541519 () Bool)

(declare-fun e!442127 () Bool)

(assert (=> b!796825 (=> (not res!541519) (not e!442127))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43293 0))(
  ( (array!43294 (arr!20723 (Array (_ BitVec 32) (_ BitVec 64))) (size!21144 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43293)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796825 (= res!541519 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21144 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20723 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21144 a!3170)) (= (select (arr!20723 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796826 () Bool)

(declare-fun res!541515 () Bool)

(declare-fun e!442132 () Bool)

(assert (=> b!796826 (=> (not res!541515) (not e!442132))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796826 (= res!541515 (validKeyInArray!0 k!2044))))

(declare-fun b!796827 () Bool)

(declare-fun res!541525 () Bool)

(assert (=> b!796827 (=> (not res!541525) (not e!442132))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796827 (= res!541525 (validKeyInArray!0 (select (arr!20723 a!3170) j!153)))))

(declare-fun b!796828 () Bool)

(declare-fun e!442128 () Bool)

(declare-fun e!442129 () Bool)

(assert (=> b!796828 (= e!442128 e!442129)))

(declare-fun res!541514 () Bool)

(assert (=> b!796828 (=> (not res!541514) (not e!442129))))

(declare-datatypes ((SeekEntryResult!8321 0))(
  ( (MissingZero!8321 (index!35651 (_ BitVec 32))) (Found!8321 (index!35652 (_ BitVec 32))) (Intermediate!8321 (undefined!9133 Bool) (index!35653 (_ BitVec 32)) (x!66576 (_ BitVec 32))) (Undefined!8321) (MissingVacant!8321 (index!35654 (_ BitVec 32))) )
))
(declare-fun lt!355423 () SeekEntryResult!8321)

(declare-fun lt!355422 () SeekEntryResult!8321)

(assert (=> b!796828 (= res!541514 (= lt!355423 lt!355422))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43293 (_ BitVec 32)) SeekEntryResult!8321)

(assert (=> b!796828 (= lt!355422 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20723 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43293 (_ BitVec 32)) SeekEntryResult!8321)

(assert (=> b!796828 (= lt!355423 (seekEntryOrOpen!0 (select (arr!20723 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796829 () Bool)

(declare-fun lt!355427 () SeekEntryResult!8321)

(declare-fun e!442130 () Bool)

(declare-fun lt!355426 () SeekEntryResult!8321)

(assert (=> b!796829 (= e!442130 (not (or (not (= lt!355427 lt!355426)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(assert (=> b!796829 (= lt!355427 (Found!8321 index!1236))))

(declare-fun res!541521 () Bool)

(assert (=> start!68552 (=> (not res!541521) (not e!442132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68552 (= res!541521 (validMask!0 mask!3266))))

(assert (=> start!68552 e!442132))

(assert (=> start!68552 true))

(declare-fun array_inv!16497 (array!43293) Bool)

(assert (=> start!68552 (array_inv!16497 a!3170)))

(declare-fun b!796830 () Bool)

(declare-fun res!541522 () Bool)

(assert (=> b!796830 (=> (not res!541522) (not e!442127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43293 (_ BitVec 32)) Bool)

(assert (=> b!796830 (= res!541522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796831 () Bool)

(declare-fun res!541518 () Bool)

(assert (=> b!796831 (=> (not res!541518) (not e!442132))))

(declare-fun arrayContainsKey!0 (array!43293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796831 (= res!541518 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796832 () Bool)

(declare-fun res!541520 () Bool)

(assert (=> b!796832 (=> (not res!541520) (not e!442127))))

(declare-datatypes ((List!14739 0))(
  ( (Nil!14736) (Cons!14735 (h!15864 (_ BitVec 64)) (t!21062 List!14739)) )
))
(declare-fun arrayNoDuplicates!0 (array!43293 (_ BitVec 32) List!14739) Bool)

(assert (=> b!796832 (= res!541520 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14736))))

(declare-fun b!796833 () Bool)

(assert (=> b!796833 (= e!442132 e!442127)))

(declare-fun res!541523 () Bool)

(assert (=> b!796833 (=> (not res!541523) (not e!442127))))

(declare-fun lt!355425 () SeekEntryResult!8321)

(assert (=> b!796833 (= res!541523 (or (= lt!355425 (MissingZero!8321 i!1163)) (= lt!355425 (MissingVacant!8321 i!1163))))))

(assert (=> b!796833 (= lt!355425 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796834 () Bool)

(assert (=> b!796834 (= e!442129 e!442130)))

(declare-fun res!541516 () Bool)

(assert (=> b!796834 (=> (not res!541516) (not e!442130))))

(assert (=> b!796834 (= res!541516 (and (= lt!355422 lt!355426) (= (select (arr!20723 a!3170) index!1236) (select (arr!20723 a!3170) j!153))))))

(assert (=> b!796834 (= lt!355426 (Found!8321 j!153))))

(declare-fun b!796835 () Bool)

(assert (=> b!796835 (= e!442127 e!442128)))

(declare-fun res!541517 () Bool)

(assert (=> b!796835 (=> (not res!541517) (not e!442128))))

(declare-fun lt!355428 () SeekEntryResult!8321)

(assert (=> b!796835 (= res!541517 (= lt!355428 lt!355427))))

(declare-fun lt!355424 () array!43293)

(declare-fun lt!355429 () (_ BitVec 64))

(assert (=> b!796835 (= lt!355427 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355429 lt!355424 mask!3266))))

(assert (=> b!796835 (= lt!355428 (seekEntryOrOpen!0 lt!355429 lt!355424 mask!3266))))

(assert (=> b!796835 (= lt!355429 (select (store (arr!20723 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796835 (= lt!355424 (array!43294 (store (arr!20723 a!3170) i!1163 k!2044) (size!21144 a!3170)))))

(declare-fun b!796836 () Bool)

(declare-fun res!541524 () Bool)

(assert (=> b!796836 (=> (not res!541524) (not e!442132))))

(assert (=> b!796836 (= res!541524 (and (= (size!21144 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21144 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21144 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68552 res!541521) b!796836))

(assert (= (and b!796836 res!541524) b!796827))

(assert (= (and b!796827 res!541525) b!796826))

(assert (= (and b!796826 res!541515) b!796831))

(assert (= (and b!796831 res!541518) b!796833))

(assert (= (and b!796833 res!541523) b!796830))

(assert (= (and b!796830 res!541522) b!796832))

(assert (= (and b!796832 res!541520) b!796825))

(assert (= (and b!796825 res!541519) b!796835))

(assert (= (and b!796835 res!541517) b!796828))

(assert (= (and b!796828 res!541514) b!796834))

(assert (= (and b!796834 res!541516) b!796829))

(declare-fun m!737755 () Bool)

(assert (=> b!796833 m!737755))

(declare-fun m!737757 () Bool)

(assert (=> b!796832 m!737757))

(declare-fun m!737759 () Bool)

(assert (=> b!796826 m!737759))

(declare-fun m!737761 () Bool)

(assert (=> b!796828 m!737761))

(assert (=> b!796828 m!737761))

(declare-fun m!737763 () Bool)

(assert (=> b!796828 m!737763))

(assert (=> b!796828 m!737761))

(declare-fun m!737765 () Bool)

(assert (=> b!796828 m!737765))

(declare-fun m!737767 () Bool)

(assert (=> start!68552 m!737767))

(declare-fun m!737769 () Bool)

(assert (=> start!68552 m!737769))

(declare-fun m!737771 () Bool)

(assert (=> b!796834 m!737771))

(assert (=> b!796834 m!737761))

(declare-fun m!737773 () Bool)

(assert (=> b!796825 m!737773))

(declare-fun m!737775 () Bool)

(assert (=> b!796825 m!737775))

(declare-fun m!737777 () Bool)

(assert (=> b!796830 m!737777))

(declare-fun m!737779 () Bool)

(assert (=> b!796831 m!737779))

(assert (=> b!796827 m!737761))

(assert (=> b!796827 m!737761))

(declare-fun m!737781 () Bool)

(assert (=> b!796827 m!737781))

(declare-fun m!737783 () Bool)

(assert (=> b!796835 m!737783))

(declare-fun m!737785 () Bool)

(assert (=> b!796835 m!737785))

(declare-fun m!737787 () Bool)

(assert (=> b!796835 m!737787))

(declare-fun m!737789 () Bool)

(assert (=> b!796835 m!737789))

(push 1)

(assert (not start!68552))

(assert (not b!796833))

(assert (not b!796832))

(assert (not b!796835))

(assert (not b!796831))

