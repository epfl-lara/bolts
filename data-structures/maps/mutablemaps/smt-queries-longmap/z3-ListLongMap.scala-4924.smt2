; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67806 () Bool)

(assert start!67806)

(declare-fun b!787796 () Bool)

(declare-fun res!533759 () Bool)

(declare-fun e!437905 () Bool)

(assert (=> b!787796 (=> (not res!533759) (not e!437905))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42801 0))(
  ( (array!42802 (arr!20485 (Array (_ BitVec 32) (_ BitVec 64))) (size!20906 (_ BitVec 32))) )
))
(declare-fun lt!351477 () array!42801)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!351475 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8092 0))(
  ( (MissingZero!8092 (index!34735 (_ BitVec 32))) (Found!8092 (index!34736 (_ BitVec 32))) (Intermediate!8092 (undefined!8904 Bool) (index!34737 (_ BitVec 32)) (x!65697 (_ BitVec 32))) (Undefined!8092) (MissingVacant!8092 (index!34738 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42801 (_ BitVec 32)) SeekEntryResult!8092)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42801 (_ BitVec 32)) SeekEntryResult!8092)

(assert (=> b!787796 (= res!533759 (= (seekEntryOrOpen!0 lt!351475 lt!351477 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351475 lt!351477 mask!3328)))))

(declare-fun b!787797 () Bool)

(declare-fun lt!351481 () SeekEntryResult!8092)

(declare-fun lt!351478 () SeekEntryResult!8092)

(assert (=> b!787797 (= e!437905 (= lt!351481 lt!351478))))

(declare-fun b!787798 () Bool)

(declare-fun res!533765 () Bool)

(declare-fun e!437910 () Bool)

(assert (=> b!787798 (=> (not res!533765) (not e!437910))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun a!3186 () array!42801)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787798 (= res!533765 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20906 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20906 a!3186))))))

(declare-fun b!787799 () Bool)

(declare-fun e!437906 () Bool)

(declare-fun e!437914 () Bool)

(assert (=> b!787799 (= e!437906 e!437914)))

(declare-fun res!533756 () Bool)

(assert (=> b!787799 (=> res!533756 e!437914)))

(declare-fun lt!351473 () SeekEntryResult!8092)

(assert (=> b!787799 (= res!533756 (not (= lt!351478 lt!351473)))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!787799 (= lt!351478 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20485 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787800 () Bool)

(declare-fun res!533755 () Bool)

(declare-fun e!437908 () Bool)

(assert (=> b!787800 (=> (not res!533755) (not e!437908))))

(declare-fun e!437911 () Bool)

(assert (=> b!787800 (= res!533755 e!437911)))

(declare-fun c!87432 () Bool)

(assert (=> b!787800 (= c!87432 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787801 () Bool)

(declare-fun e!437903 () Bool)

(assert (=> b!787801 (= e!437908 e!437903)))

(declare-fun res!533754 () Bool)

(assert (=> b!787801 (=> (not res!533754) (not e!437903))))

(declare-fun lt!351471 () SeekEntryResult!8092)

(declare-fun lt!351474 () SeekEntryResult!8092)

(assert (=> b!787801 (= res!533754 (= lt!351471 lt!351474))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42801 (_ BitVec 32)) SeekEntryResult!8092)

(assert (=> b!787801 (= lt!351474 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351475 lt!351477 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787801 (= lt!351471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351475 mask!3328) lt!351475 lt!351477 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!787801 (= lt!351475 (select (store (arr!20485 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!787801 (= lt!351477 (array!42802 (store (arr!20485 a!3186) i!1173 k0!2102) (size!20906 a!3186)))))

(declare-fun res!533763 () Bool)

(declare-fun e!437912 () Bool)

(assert (=> start!67806 (=> (not res!533763) (not e!437912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67806 (= res!533763 (validMask!0 mask!3328))))

(assert (=> start!67806 e!437912))

(assert (=> start!67806 true))

(declare-fun array_inv!16259 (array!42801) Bool)

(assert (=> start!67806 (array_inv!16259 a!3186)))

(declare-fun lt!351476 () SeekEntryResult!8092)

(declare-fun b!787802 () Bool)

(assert (=> b!787802 (= e!437911 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20485 a!3186) j!159) a!3186 mask!3328) lt!351476))))

(declare-fun b!787803 () Bool)

(declare-fun res!533749 () Bool)

(assert (=> b!787803 (=> (not res!533749) (not e!437912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787803 (= res!533749 (validKeyInArray!0 (select (arr!20485 a!3186) j!159)))))

(declare-fun b!787804 () Bool)

(assert (=> b!787804 (= e!437911 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20485 a!3186) j!159) a!3186 mask!3328) (Found!8092 j!159)))))

(declare-fun b!787805 () Bool)

(assert (=> b!787805 (= e!437910 e!437908)))

(declare-fun res!533766 () Bool)

(assert (=> b!787805 (=> (not res!533766) (not e!437908))))

(assert (=> b!787805 (= res!533766 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20485 a!3186) j!159) mask!3328) (select (arr!20485 a!3186) j!159) a!3186 mask!3328) lt!351476))))

(assert (=> b!787805 (= lt!351476 (Intermediate!8092 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787806 () Bool)

(declare-fun res!533758 () Bool)

(assert (=> b!787806 (=> (not res!533758) (not e!437912))))

(assert (=> b!787806 (= res!533758 (validKeyInArray!0 k0!2102))))

(declare-fun b!787807 () Bool)

(declare-datatypes ((Unit!27278 0))(
  ( (Unit!27279) )
))
(declare-fun e!437909 () Unit!27278)

(declare-fun Unit!27280 () Unit!27278)

(assert (=> b!787807 (= e!437909 Unit!27280)))

(assert (=> b!787807 false))

(declare-fun b!787808 () Bool)

(assert (=> b!787808 (= e!437903 (not e!437906))))

(declare-fun res!533764 () Bool)

(assert (=> b!787808 (=> res!533764 e!437906)))

(get-info :version)

(assert (=> b!787808 (= res!533764 (or (not ((_ is Intermediate!8092) lt!351474)) (bvslt x!1131 (x!65697 lt!351474)) (not (= x!1131 (x!65697 lt!351474))) (not (= index!1321 (index!34737 lt!351474)))))))

(declare-fun e!437913 () Bool)

(assert (=> b!787808 e!437913))

(declare-fun res!533750 () Bool)

(assert (=> b!787808 (=> (not res!533750) (not e!437913))))

(assert (=> b!787808 (= res!533750 (= lt!351481 lt!351473))))

(assert (=> b!787808 (= lt!351473 (Found!8092 j!159))))

(assert (=> b!787808 (= lt!351481 (seekEntryOrOpen!0 (select (arr!20485 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42801 (_ BitVec 32)) Bool)

(assert (=> b!787808 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351480 () Unit!27278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27278)

(assert (=> b!787808 (= lt!351480 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787809 () Bool)

(assert (=> b!787809 (= e!437913 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20485 a!3186) j!159) a!3186 mask!3328) lt!351473))))

(declare-fun b!787810 () Bool)

(declare-fun e!437904 () Bool)

(assert (=> b!787810 (= e!437904 true)))

(assert (=> b!787810 e!437905))

(declare-fun res!533751 () Bool)

(assert (=> b!787810 (=> (not res!533751) (not e!437905))))

(declare-fun lt!351470 () (_ BitVec 64))

(assert (=> b!787810 (= res!533751 (= lt!351470 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351472 () Unit!27278)

(assert (=> b!787810 (= lt!351472 e!437909)))

(declare-fun c!87431 () Bool)

(assert (=> b!787810 (= c!87431 (= lt!351470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787811 () Bool)

(assert (=> b!787811 (= e!437912 e!437910)))

(declare-fun res!533761 () Bool)

(assert (=> b!787811 (=> (not res!533761) (not e!437910))))

(declare-fun lt!351479 () SeekEntryResult!8092)

(assert (=> b!787811 (= res!533761 (or (= lt!351479 (MissingZero!8092 i!1173)) (= lt!351479 (MissingVacant!8092 i!1173))))))

(assert (=> b!787811 (= lt!351479 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!787812 () Bool)

(declare-fun res!533762 () Bool)

(assert (=> b!787812 (=> (not res!533762) (not e!437910))))

(declare-datatypes ((List!14540 0))(
  ( (Nil!14537) (Cons!14536 (h!15659 (_ BitVec 64)) (t!20863 List!14540)) )
))
(declare-fun arrayNoDuplicates!0 (array!42801 (_ BitVec 32) List!14540) Bool)

(assert (=> b!787812 (= res!533762 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14537))))

(declare-fun b!787813 () Bool)

(assert (=> b!787813 (= e!437914 e!437904)))

(declare-fun res!533760 () Bool)

(assert (=> b!787813 (=> res!533760 e!437904)))

(assert (=> b!787813 (= res!533760 (= lt!351470 lt!351475))))

(assert (=> b!787813 (= lt!351470 (select (store (arr!20485 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!787814 () Bool)

(declare-fun res!533757 () Bool)

(assert (=> b!787814 (=> (not res!533757) (not e!437910))))

(assert (=> b!787814 (= res!533757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787815 () Bool)

(declare-fun res!533767 () Bool)

(assert (=> b!787815 (=> (not res!533767) (not e!437912))))

(assert (=> b!787815 (= res!533767 (and (= (size!20906 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20906 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20906 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787816 () Bool)

(declare-fun res!533752 () Bool)

(assert (=> b!787816 (=> (not res!533752) (not e!437912))))

(declare-fun arrayContainsKey!0 (array!42801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787816 (= res!533752 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787817 () Bool)

(declare-fun Unit!27281 () Unit!27278)

(assert (=> b!787817 (= e!437909 Unit!27281)))

(declare-fun b!787818 () Bool)

(declare-fun res!533753 () Bool)

(assert (=> b!787818 (=> (not res!533753) (not e!437908))))

(assert (=> b!787818 (= res!533753 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20485 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67806 res!533763) b!787815))

(assert (= (and b!787815 res!533767) b!787803))

(assert (= (and b!787803 res!533749) b!787806))

(assert (= (and b!787806 res!533758) b!787816))

(assert (= (and b!787816 res!533752) b!787811))

(assert (= (and b!787811 res!533761) b!787814))

(assert (= (and b!787814 res!533757) b!787812))

(assert (= (and b!787812 res!533762) b!787798))

(assert (= (and b!787798 res!533765) b!787805))

(assert (= (and b!787805 res!533766) b!787818))

(assert (= (and b!787818 res!533753) b!787800))

(assert (= (and b!787800 c!87432) b!787802))

(assert (= (and b!787800 (not c!87432)) b!787804))

(assert (= (and b!787800 res!533755) b!787801))

(assert (= (and b!787801 res!533754) b!787808))

(assert (= (and b!787808 res!533750) b!787809))

(assert (= (and b!787808 (not res!533764)) b!787799))

(assert (= (and b!787799 (not res!533756)) b!787813))

(assert (= (and b!787813 (not res!533760)) b!787810))

(assert (= (and b!787810 c!87431) b!787807))

(assert (= (and b!787810 (not c!87431)) b!787817))

(assert (= (and b!787810 res!533751) b!787796))

(assert (= (and b!787796 res!533759) b!787797))

(declare-fun m!729329 () Bool)

(assert (=> b!787808 m!729329))

(assert (=> b!787808 m!729329))

(declare-fun m!729331 () Bool)

(assert (=> b!787808 m!729331))

(declare-fun m!729333 () Bool)

(assert (=> b!787808 m!729333))

(declare-fun m!729335 () Bool)

(assert (=> b!787808 m!729335))

(declare-fun m!729337 () Bool)

(assert (=> b!787811 m!729337))

(assert (=> b!787809 m!729329))

(assert (=> b!787809 m!729329))

(declare-fun m!729339 () Bool)

(assert (=> b!787809 m!729339))

(assert (=> b!787804 m!729329))

(assert (=> b!787804 m!729329))

(declare-fun m!729341 () Bool)

(assert (=> b!787804 m!729341))

(declare-fun m!729343 () Bool)

(assert (=> b!787806 m!729343))

(declare-fun m!729345 () Bool)

(assert (=> b!787818 m!729345))

(declare-fun m!729347 () Bool)

(assert (=> b!787813 m!729347))

(declare-fun m!729349 () Bool)

(assert (=> b!787813 m!729349))

(declare-fun m!729351 () Bool)

(assert (=> b!787816 m!729351))

(declare-fun m!729353 () Bool)

(assert (=> start!67806 m!729353))

(declare-fun m!729355 () Bool)

(assert (=> start!67806 m!729355))

(assert (=> b!787805 m!729329))

(assert (=> b!787805 m!729329))

(declare-fun m!729357 () Bool)

(assert (=> b!787805 m!729357))

(assert (=> b!787805 m!729357))

(assert (=> b!787805 m!729329))

(declare-fun m!729359 () Bool)

(assert (=> b!787805 m!729359))

(declare-fun m!729361 () Bool)

(assert (=> b!787796 m!729361))

(declare-fun m!729363 () Bool)

(assert (=> b!787796 m!729363))

(declare-fun m!729365 () Bool)

(assert (=> b!787812 m!729365))

(assert (=> b!787802 m!729329))

(assert (=> b!787802 m!729329))

(declare-fun m!729367 () Bool)

(assert (=> b!787802 m!729367))

(declare-fun m!729369 () Bool)

(assert (=> b!787801 m!729369))

(assert (=> b!787801 m!729369))

(declare-fun m!729371 () Bool)

(assert (=> b!787801 m!729371))

(assert (=> b!787801 m!729347))

(declare-fun m!729373 () Bool)

(assert (=> b!787801 m!729373))

(declare-fun m!729375 () Bool)

(assert (=> b!787801 m!729375))

(assert (=> b!787803 m!729329))

(assert (=> b!787803 m!729329))

(declare-fun m!729377 () Bool)

(assert (=> b!787803 m!729377))

(assert (=> b!787799 m!729329))

(assert (=> b!787799 m!729329))

(assert (=> b!787799 m!729341))

(declare-fun m!729379 () Bool)

(assert (=> b!787814 m!729379))

(check-sat (not b!787812) (not b!787801) (not b!787802) (not start!67806) (not b!787803) (not b!787806) (not b!787805) (not b!787804) (not b!787799) (not b!787816) (not b!787796) (not b!787809) (not b!787811) (not b!787808) (not b!787814))
(check-sat)
