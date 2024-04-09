; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65418 () Bool)

(assert start!65418)

(declare-fun b!744102 () Bool)

(declare-fun res!501249 () Bool)

(declare-fun e!415711 () Bool)

(assert (=> b!744102 (=> (not res!501249) (not e!415711))))

(declare-datatypes ((array!41544 0))(
  ( (array!41545 (arr!19882 (Array (_ BitVec 32) (_ BitVec 64))) (size!20303 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41544)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744102 (= res!501249 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744103 () Bool)

(declare-fun res!501260 () Bool)

(assert (=> b!744103 (=> (not res!501260) (not e!415711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744103 (= res!501260 (validKeyInArray!0 k0!2102))))

(declare-fun b!744104 () Bool)

(declare-fun e!415706 () Bool)

(declare-fun e!415712 () Bool)

(assert (=> b!744104 (= e!415706 e!415712)))

(declare-fun res!501259 () Bool)

(assert (=> b!744104 (=> (not res!501259) (not e!415712))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7489 0))(
  ( (MissingZero!7489 (index!32323 (_ BitVec 32))) (Found!7489 (index!32324 (_ BitVec 32))) (Intermediate!7489 (undefined!8301 Bool) (index!32325 (_ BitVec 32)) (x!63312 (_ BitVec 32))) (Undefined!7489) (MissingVacant!7489 (index!32326 (_ BitVec 32))) )
))
(declare-fun lt!330572 () SeekEntryResult!7489)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41544 (_ BitVec 32)) SeekEntryResult!7489)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744104 (= res!501259 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19882 a!3186) j!159) mask!3328) (select (arr!19882 a!3186) j!159) a!3186 mask!3328) lt!330572))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744104 (= lt!330572 (Intermediate!7489 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744105 () Bool)

(declare-fun res!501261 () Bool)

(assert (=> b!744105 (=> (not res!501261) (not e!415712))))

(declare-fun e!415707 () Bool)

(assert (=> b!744105 (= res!501261 e!415707)))

(declare-fun c!81807 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!744105 (= c!81807 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744106 () Bool)

(declare-fun res!501250 () Bool)

(assert (=> b!744106 (=> (not res!501250) (not e!415711))))

(assert (=> b!744106 (= res!501250 (validKeyInArray!0 (select (arr!19882 a!3186) j!159)))))

(declare-fun b!744107 () Bool)

(declare-fun res!501252 () Bool)

(assert (=> b!744107 (=> (not res!501252) (not e!415711))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744107 (= res!501252 (and (= (size!20303 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20303 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20303 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!501253 () Bool)

(assert (=> start!65418 (=> (not res!501253) (not e!415711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65418 (= res!501253 (validMask!0 mask!3328))))

(assert (=> start!65418 e!415711))

(assert (=> start!65418 true))

(declare-fun array_inv!15656 (array!41544) Bool)

(assert (=> start!65418 (array_inv!15656 a!3186)))

(declare-fun b!744108 () Bool)

(declare-fun e!415713 () Bool)

(declare-fun lt!330575 () SeekEntryResult!7489)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41544 (_ BitVec 32)) SeekEntryResult!7489)

(assert (=> b!744108 (= e!415713 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19882 a!3186) j!159) a!3186 mask!3328) lt!330575))))

(declare-fun b!744109 () Bool)

(declare-fun res!501254 () Bool)

(assert (=> b!744109 (=> (not res!501254) (not e!415706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41544 (_ BitVec 32)) Bool)

(assert (=> b!744109 (= res!501254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744110 () Bool)

(declare-fun e!415705 () Bool)

(declare-fun e!415710 () Bool)

(assert (=> b!744110 (= e!415705 (not e!415710))))

(declare-fun res!501262 () Bool)

(assert (=> b!744110 (=> res!501262 e!415710)))

(declare-fun lt!330573 () SeekEntryResult!7489)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!744110 (= res!501262 (or (not ((_ is Intermediate!7489) lt!330573)) (bvslt x!1131 (x!63312 lt!330573)) (not (= x!1131 (x!63312 lt!330573))) (not (= index!1321 (index!32325 lt!330573)))))))

(declare-fun e!415709 () Bool)

(assert (=> b!744110 e!415709))

(declare-fun res!501264 () Bool)

(assert (=> b!744110 (=> (not res!501264) (not e!415709))))

(assert (=> b!744110 (= res!501264 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25458 0))(
  ( (Unit!25459) )
))
(declare-fun lt!330574 () Unit!25458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25458)

(assert (=> b!744110 (= lt!330574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744111 () Bool)

(assert (=> b!744111 (= e!415707 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19882 a!3186) j!159) a!3186 mask!3328) (Found!7489 j!159)))))

(declare-fun b!744112 () Bool)

(declare-fun res!501251 () Bool)

(assert (=> b!744112 (=> (not res!501251) (not e!415706))))

(declare-datatypes ((List!13937 0))(
  ( (Nil!13934) (Cons!13933 (h!15005 (_ BitVec 64)) (t!20260 List!13937)) )
))
(declare-fun arrayNoDuplicates!0 (array!41544 (_ BitVec 32) List!13937) Bool)

(assert (=> b!744112 (= res!501251 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13934))))

(declare-fun b!744113 () Bool)

(assert (=> b!744113 (= e!415707 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19882 a!3186) j!159) a!3186 mask!3328) lt!330572))))

(declare-fun b!744114 () Bool)

(assert (=> b!744114 (= e!415712 e!415705)))

(declare-fun res!501257 () Bool)

(assert (=> b!744114 (=> (not res!501257) (not e!415705))))

(declare-fun lt!330577 () SeekEntryResult!7489)

(assert (=> b!744114 (= res!501257 (= lt!330577 lt!330573))))

(declare-fun lt!330578 () (_ BitVec 64))

(declare-fun lt!330570 () array!41544)

(assert (=> b!744114 (= lt!330573 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330578 lt!330570 mask!3328))))

(assert (=> b!744114 (= lt!330577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330578 mask!3328) lt!330578 lt!330570 mask!3328))))

(assert (=> b!744114 (= lt!330578 (select (store (arr!19882 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!744114 (= lt!330570 (array!41545 (store (arr!19882 a!3186) i!1173 k0!2102) (size!20303 a!3186)))))

(declare-fun b!744115 () Bool)

(assert (=> b!744115 (= e!415710 true)))

(declare-fun lt!330571 () SeekEntryResult!7489)

(assert (=> b!744115 (= lt!330571 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19882 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744116 () Bool)

(declare-fun res!501255 () Bool)

(assert (=> b!744116 (=> (not res!501255) (not e!415712))))

(assert (=> b!744116 (= res!501255 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19882 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744117 () Bool)

(declare-fun res!501256 () Bool)

(assert (=> b!744117 (=> (not res!501256) (not e!415706))))

(assert (=> b!744117 (= res!501256 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20303 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20303 a!3186))))))

(declare-fun b!744118 () Bool)

(assert (=> b!744118 (= e!415711 e!415706)))

(declare-fun res!501263 () Bool)

(assert (=> b!744118 (=> (not res!501263) (not e!415706))))

(declare-fun lt!330576 () SeekEntryResult!7489)

(assert (=> b!744118 (= res!501263 (or (= lt!330576 (MissingZero!7489 i!1173)) (= lt!330576 (MissingVacant!7489 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41544 (_ BitVec 32)) SeekEntryResult!7489)

(assert (=> b!744118 (= lt!330576 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!744119 () Bool)

(assert (=> b!744119 (= e!415709 e!415713)))

(declare-fun res!501258 () Bool)

(assert (=> b!744119 (=> (not res!501258) (not e!415713))))

(assert (=> b!744119 (= res!501258 (= (seekEntryOrOpen!0 (select (arr!19882 a!3186) j!159) a!3186 mask!3328) lt!330575))))

(assert (=> b!744119 (= lt!330575 (Found!7489 j!159))))

(assert (= (and start!65418 res!501253) b!744107))

(assert (= (and b!744107 res!501252) b!744106))

(assert (= (and b!744106 res!501250) b!744103))

(assert (= (and b!744103 res!501260) b!744102))

(assert (= (and b!744102 res!501249) b!744118))

(assert (= (and b!744118 res!501263) b!744109))

(assert (= (and b!744109 res!501254) b!744112))

(assert (= (and b!744112 res!501251) b!744117))

(assert (= (and b!744117 res!501256) b!744104))

(assert (= (and b!744104 res!501259) b!744116))

(assert (= (and b!744116 res!501255) b!744105))

(assert (= (and b!744105 c!81807) b!744113))

(assert (= (and b!744105 (not c!81807)) b!744111))

(assert (= (and b!744105 res!501261) b!744114))

(assert (= (and b!744114 res!501257) b!744110))

(assert (= (and b!744110 res!501264) b!744119))

(assert (= (and b!744119 res!501258) b!744108))

(assert (= (and b!744110 (not res!501262)) b!744115))

(declare-fun m!694763 () Bool)

(assert (=> b!744112 m!694763))

(declare-fun m!694765 () Bool)

(assert (=> b!744116 m!694765))

(declare-fun m!694767 () Bool)

(assert (=> b!744111 m!694767))

(assert (=> b!744111 m!694767))

(declare-fun m!694769 () Bool)

(assert (=> b!744111 m!694769))

(declare-fun m!694771 () Bool)

(assert (=> b!744102 m!694771))

(declare-fun m!694773 () Bool)

(assert (=> b!744118 m!694773))

(declare-fun m!694775 () Bool)

(assert (=> b!744103 m!694775))

(assert (=> b!744113 m!694767))

(assert (=> b!744113 m!694767))

(declare-fun m!694777 () Bool)

(assert (=> b!744113 m!694777))

(assert (=> b!744108 m!694767))

(assert (=> b!744108 m!694767))

(declare-fun m!694779 () Bool)

(assert (=> b!744108 m!694779))

(assert (=> b!744106 m!694767))

(assert (=> b!744106 m!694767))

(declare-fun m!694781 () Bool)

(assert (=> b!744106 m!694781))

(declare-fun m!694783 () Bool)

(assert (=> b!744110 m!694783))

(declare-fun m!694785 () Bool)

(assert (=> b!744110 m!694785))

(assert (=> b!744115 m!694767))

(assert (=> b!744115 m!694767))

(assert (=> b!744115 m!694769))

(declare-fun m!694787 () Bool)

(assert (=> b!744114 m!694787))

(declare-fun m!694789 () Bool)

(assert (=> b!744114 m!694789))

(declare-fun m!694791 () Bool)

(assert (=> b!744114 m!694791))

(declare-fun m!694793 () Bool)

(assert (=> b!744114 m!694793))

(assert (=> b!744114 m!694793))

(declare-fun m!694795 () Bool)

(assert (=> b!744114 m!694795))

(assert (=> b!744119 m!694767))

(assert (=> b!744119 m!694767))

(declare-fun m!694797 () Bool)

(assert (=> b!744119 m!694797))

(declare-fun m!694799 () Bool)

(assert (=> b!744109 m!694799))

(declare-fun m!694801 () Bool)

(assert (=> start!65418 m!694801))

(declare-fun m!694803 () Bool)

(assert (=> start!65418 m!694803))

(assert (=> b!744104 m!694767))

(assert (=> b!744104 m!694767))

(declare-fun m!694805 () Bool)

(assert (=> b!744104 m!694805))

(assert (=> b!744104 m!694805))

(assert (=> b!744104 m!694767))

(declare-fun m!694807 () Bool)

(assert (=> b!744104 m!694807))

(check-sat (not start!65418) (not b!744104) (not b!744118) (not b!744115) (not b!744113) (not b!744110) (not b!744103) (not b!744106) (not b!744114) (not b!744102) (not b!744109) (not b!744112) (not b!744111) (not b!744108) (not b!744119))
(check-sat)
