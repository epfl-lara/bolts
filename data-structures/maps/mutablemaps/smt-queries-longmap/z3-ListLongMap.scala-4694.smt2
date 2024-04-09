; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65244 () Bool)

(assert start!65244)

(declare-datatypes ((array!41370 0))(
  ( (array!41371 (arr!19795 (Array (_ BitVec 32) (_ BitVec 64))) (size!20216 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41370)

(declare-fun e!413164 () Bool)

(declare-fun b!738786 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7402 0))(
  ( (MissingZero!7402 (index!31975 (_ BitVec 32))) (Found!7402 (index!31976 (_ BitVec 32))) (Intermediate!7402 (undefined!8214 Bool) (index!31977 (_ BitVec 32)) (x!62993 (_ BitVec 32))) (Undefined!7402) (MissingVacant!7402 (index!31978 (_ BitVec 32))) )
))
(declare-fun lt!328005 () SeekEntryResult!7402)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41370 (_ BitVec 32)) SeekEntryResult!7402)

(assert (=> b!738786 (= e!413164 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19795 a!3186) j!159) a!3186 mask!3328) lt!328005))))

(declare-fun b!738787 () Bool)

(declare-fun e!413168 () Bool)

(declare-fun e!413166 () Bool)

(assert (=> b!738787 (= e!413168 e!413166)))

(declare-fun res!496806 () Bool)

(assert (=> b!738787 (=> (not res!496806) (not e!413166))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738787 (= res!496806 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19795 a!3186) j!159) mask!3328) (select (arr!19795 a!3186) j!159) a!3186 mask!3328) lt!328005))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738787 (= lt!328005 (Intermediate!7402 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738788 () Bool)

(declare-fun e!413173 () Bool)

(declare-fun e!413174 () Bool)

(assert (=> b!738788 (= e!413173 e!413174)))

(declare-fun res!496797 () Bool)

(assert (=> b!738788 (=> res!496797 e!413174)))

(declare-fun lt!328006 () (_ BitVec 32))

(assert (=> b!738788 (= res!496797 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328006 #b00000000000000000000000000000000) (bvsge lt!328006 (size!20216 a!3186))))))

(declare-datatypes ((Unit!25226 0))(
  ( (Unit!25227) )
))
(declare-fun lt!328013 () Unit!25226)

(declare-fun e!413172 () Unit!25226)

(assert (=> b!738788 (= lt!328013 e!413172)))

(declare-fun c!81378 () Bool)

(declare-fun lt!328010 () Bool)

(assert (=> b!738788 (= c!81378 lt!328010)))

(assert (=> b!738788 (= lt!328010 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738788 (= lt!328006 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738789 () Bool)

(declare-fun res!496811 () Bool)

(declare-fun e!413165 () Bool)

(assert (=> b!738789 (=> (not res!496811) (not e!413165))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738789 (= res!496811 (and (= (size!20216 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20216 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20216 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738790 () Bool)

(declare-fun res!496801 () Bool)

(assert (=> b!738790 (=> (not res!496801) (not e!413166))))

(assert (=> b!738790 (= res!496801 e!413164)))

(declare-fun c!81376 () Bool)

(assert (=> b!738790 (= c!81376 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!496798 () Bool)

(assert (=> start!65244 (=> (not res!496798) (not e!413165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65244 (= res!496798 (validMask!0 mask!3328))))

(assert (=> start!65244 e!413165))

(assert (=> start!65244 true))

(declare-fun array_inv!15569 (array!41370) Bool)

(assert (=> start!65244 (array_inv!15569 a!3186)))

(declare-fun b!738791 () Bool)

(declare-fun res!496796 () Bool)

(assert (=> b!738791 (=> (not res!496796) (not e!413168))))

(assert (=> b!738791 (= res!496796 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20216 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20216 a!3186))))))

(declare-fun b!738792 () Bool)

(declare-fun res!496803 () Bool)

(assert (=> b!738792 (=> (not res!496803) (not e!413168))))

(declare-datatypes ((List!13850 0))(
  ( (Nil!13847) (Cons!13846 (h!14918 (_ BitVec 64)) (t!20173 List!13850)) )
))
(declare-fun arrayNoDuplicates!0 (array!41370 (_ BitVec 32) List!13850) Bool)

(assert (=> b!738792 (= res!496803 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13847))))

(declare-fun b!738793 () Bool)

(declare-fun e!413170 () Bool)

(assert (=> b!738793 (= e!413166 e!413170)))

(declare-fun res!496812 () Bool)

(assert (=> b!738793 (=> (not res!496812) (not e!413170))))

(declare-fun lt!328012 () SeekEntryResult!7402)

(declare-fun lt!328016 () SeekEntryResult!7402)

(assert (=> b!738793 (= res!496812 (= lt!328012 lt!328016))))

(declare-fun lt!328008 () array!41370)

(declare-fun lt!328009 () (_ BitVec 64))

(assert (=> b!738793 (= lt!328016 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328009 lt!328008 mask!3328))))

(assert (=> b!738793 (= lt!328012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328009 mask!3328) lt!328009 lt!328008 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!738793 (= lt!328009 (select (store (arr!19795 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!738793 (= lt!328008 (array!41371 (store (arr!19795 a!3186) i!1173 k0!2102) (size!20216 a!3186)))))

(declare-fun b!738794 () Bool)

(declare-fun res!496807 () Bool)

(assert (=> b!738794 (=> (not res!496807) (not e!413168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41370 (_ BitVec 32)) Bool)

(assert (=> b!738794 (= res!496807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738795 () Bool)

(declare-fun res!496795 () Bool)

(assert (=> b!738795 (=> res!496795 e!413174)))

(declare-fun e!413167 () Bool)

(assert (=> b!738795 (= res!496795 e!413167)))

(declare-fun c!81377 () Bool)

(assert (=> b!738795 (= c!81377 lt!328010)))

(declare-fun b!738796 () Bool)

(assert (=> b!738796 (= e!413165 e!413168)))

(declare-fun res!496799 () Bool)

(assert (=> b!738796 (=> (not res!496799) (not e!413168))))

(declare-fun lt!328015 () SeekEntryResult!7402)

(assert (=> b!738796 (= res!496799 (or (= lt!328015 (MissingZero!7402 i!1173)) (= lt!328015 (MissingVacant!7402 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41370 (_ BitVec 32)) SeekEntryResult!7402)

(assert (=> b!738796 (= lt!328015 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!738797 () Bool)

(declare-fun res!496805 () Bool)

(assert (=> b!738797 (=> (not res!496805) (not e!413165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738797 (= res!496805 (validKeyInArray!0 (select (arr!19795 a!3186) j!159)))))

(declare-fun b!738798 () Bool)

(assert (=> b!738798 (= e!413170 (not e!413173))))

(declare-fun res!496810 () Bool)

(assert (=> b!738798 (=> res!496810 e!413173)))

(get-info :version)

(assert (=> b!738798 (= res!496810 (or (not ((_ is Intermediate!7402) lt!328016)) (bvsge x!1131 (x!62993 lt!328016))))))

(declare-fun lt!328014 () SeekEntryResult!7402)

(assert (=> b!738798 (= lt!328014 (Found!7402 j!159))))

(declare-fun e!413175 () Bool)

(assert (=> b!738798 e!413175))

(declare-fun res!496802 () Bool)

(assert (=> b!738798 (=> (not res!496802) (not e!413175))))

(assert (=> b!738798 (= res!496802 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328003 () Unit!25226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25226)

(assert (=> b!738798 (= lt!328003 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738799 () Bool)

(declare-fun Unit!25228 () Unit!25226)

(assert (=> b!738799 (= e!413172 Unit!25228)))

(assert (=> b!738799 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328006 (select (arr!19795 a!3186) j!159) a!3186 mask!3328) lt!328005)))

(declare-fun b!738800 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41370 (_ BitVec 32)) SeekEntryResult!7402)

(assert (=> b!738800 (= e!413167 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328006 resIntermediateIndex!5 (select (arr!19795 a!3186) j!159) a!3186 mask!3328) lt!328014)))))

(declare-fun b!738801 () Bool)

(declare-fun res!496804 () Bool)

(assert (=> b!738801 (=> (not res!496804) (not e!413165))))

(assert (=> b!738801 (= res!496804 (validKeyInArray!0 k0!2102))))

(declare-fun b!738802 () Bool)

(declare-fun res!496808 () Bool)

(assert (=> b!738802 (=> (not res!496808) (not e!413165))))

(declare-fun arrayContainsKey!0 (array!41370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738802 (= res!496808 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738803 () Bool)

(declare-fun e!413169 () Bool)

(assert (=> b!738803 (= e!413175 e!413169)))

(declare-fun res!496809 () Bool)

(assert (=> b!738803 (=> (not res!496809) (not e!413169))))

(declare-fun lt!328007 () SeekEntryResult!7402)

(assert (=> b!738803 (= res!496809 (= (seekEntryOrOpen!0 (select (arr!19795 a!3186) j!159) a!3186 mask!3328) lt!328007))))

(assert (=> b!738803 (= lt!328007 (Found!7402 j!159))))

(declare-fun b!738804 () Bool)

(declare-fun res!496800 () Bool)

(assert (=> b!738804 (=> (not res!496800) (not e!413166))))

(assert (=> b!738804 (= res!496800 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19795 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738805 () Bool)

(assert (=> b!738805 (= e!413164 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19795 a!3186) j!159) a!3186 mask!3328) (Found!7402 j!159)))))

(declare-fun b!738806 () Bool)

(assert (=> b!738806 (= e!413174 true)))

(declare-fun lt!328011 () SeekEntryResult!7402)

(assert (=> b!738806 (= lt!328011 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328006 lt!328009 lt!328008 mask!3328))))

(declare-fun b!738807 () Bool)

(declare-fun Unit!25229 () Unit!25226)

(assert (=> b!738807 (= e!413172 Unit!25229)))

(declare-fun lt!328004 () SeekEntryResult!7402)

(assert (=> b!738807 (= lt!328004 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19795 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!738807 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328006 resIntermediateIndex!5 (select (arr!19795 a!3186) j!159) a!3186 mask!3328) lt!328014)))

(declare-fun b!738808 () Bool)

(assert (=> b!738808 (= e!413169 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19795 a!3186) j!159) a!3186 mask!3328) lt!328007))))

(declare-fun b!738809 () Bool)

(assert (=> b!738809 (= e!413167 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328006 (select (arr!19795 a!3186) j!159) a!3186 mask!3328) lt!328005)))))

(assert (= (and start!65244 res!496798) b!738789))

(assert (= (and b!738789 res!496811) b!738797))

(assert (= (and b!738797 res!496805) b!738801))

(assert (= (and b!738801 res!496804) b!738802))

(assert (= (and b!738802 res!496808) b!738796))

(assert (= (and b!738796 res!496799) b!738794))

(assert (= (and b!738794 res!496807) b!738792))

(assert (= (and b!738792 res!496803) b!738791))

(assert (= (and b!738791 res!496796) b!738787))

(assert (= (and b!738787 res!496806) b!738804))

(assert (= (and b!738804 res!496800) b!738790))

(assert (= (and b!738790 c!81376) b!738786))

(assert (= (and b!738790 (not c!81376)) b!738805))

(assert (= (and b!738790 res!496801) b!738793))

(assert (= (and b!738793 res!496812) b!738798))

(assert (= (and b!738798 res!496802) b!738803))

(assert (= (and b!738803 res!496809) b!738808))

(assert (= (and b!738798 (not res!496810)) b!738788))

(assert (= (and b!738788 c!81378) b!738799))

(assert (= (and b!738788 (not c!81378)) b!738807))

(assert (= (and b!738788 (not res!496797)) b!738795))

(assert (= (and b!738795 c!81377) b!738809))

(assert (= (and b!738795 (not c!81377)) b!738800))

(assert (= (and b!738795 (not res!496795)) b!738806))

(declare-fun m!690397 () Bool)

(assert (=> b!738786 m!690397))

(assert (=> b!738786 m!690397))

(declare-fun m!690399 () Bool)

(assert (=> b!738786 m!690399))

(assert (=> b!738808 m!690397))

(assert (=> b!738808 m!690397))

(declare-fun m!690401 () Bool)

(assert (=> b!738808 m!690401))

(assert (=> b!738799 m!690397))

(assert (=> b!738799 m!690397))

(declare-fun m!690403 () Bool)

(assert (=> b!738799 m!690403))

(assert (=> b!738800 m!690397))

(assert (=> b!738800 m!690397))

(declare-fun m!690405 () Bool)

(assert (=> b!738800 m!690405))

(declare-fun m!690407 () Bool)

(assert (=> b!738806 m!690407))

(declare-fun m!690409 () Bool)

(assert (=> b!738793 m!690409))

(assert (=> b!738793 m!690409))

(declare-fun m!690411 () Bool)

(assert (=> b!738793 m!690411))

(declare-fun m!690413 () Bool)

(assert (=> b!738793 m!690413))

(declare-fun m!690415 () Bool)

(assert (=> b!738793 m!690415))

(declare-fun m!690417 () Bool)

(assert (=> b!738793 m!690417))

(assert (=> b!738805 m!690397))

(assert (=> b!738805 m!690397))

(declare-fun m!690419 () Bool)

(assert (=> b!738805 m!690419))

(declare-fun m!690421 () Bool)

(assert (=> b!738798 m!690421))

(declare-fun m!690423 () Bool)

(assert (=> b!738798 m!690423))

(declare-fun m!690425 () Bool)

(assert (=> b!738802 m!690425))

(assert (=> b!738809 m!690397))

(assert (=> b!738809 m!690397))

(assert (=> b!738809 m!690403))

(declare-fun m!690427 () Bool)

(assert (=> b!738794 m!690427))

(declare-fun m!690429 () Bool)

(assert (=> b!738796 m!690429))

(assert (=> b!738797 m!690397))

(assert (=> b!738797 m!690397))

(declare-fun m!690431 () Bool)

(assert (=> b!738797 m!690431))

(declare-fun m!690433 () Bool)

(assert (=> start!65244 m!690433))

(declare-fun m!690435 () Bool)

(assert (=> start!65244 m!690435))

(declare-fun m!690437 () Bool)

(assert (=> b!738788 m!690437))

(assert (=> b!738787 m!690397))

(assert (=> b!738787 m!690397))

(declare-fun m!690439 () Bool)

(assert (=> b!738787 m!690439))

(assert (=> b!738787 m!690439))

(assert (=> b!738787 m!690397))

(declare-fun m!690441 () Bool)

(assert (=> b!738787 m!690441))

(assert (=> b!738803 m!690397))

(assert (=> b!738803 m!690397))

(declare-fun m!690443 () Bool)

(assert (=> b!738803 m!690443))

(declare-fun m!690445 () Bool)

(assert (=> b!738804 m!690445))

(assert (=> b!738807 m!690397))

(assert (=> b!738807 m!690397))

(assert (=> b!738807 m!690419))

(assert (=> b!738807 m!690397))

(assert (=> b!738807 m!690405))

(declare-fun m!690447 () Bool)

(assert (=> b!738801 m!690447))

(declare-fun m!690449 () Bool)

(assert (=> b!738792 m!690449))

(check-sat (not b!738786) (not b!738803) (not b!738801) (not b!738805) (not b!738796) (not b!738798) (not start!65244) (not b!738807) (not b!738788) (not b!738793) (not b!738787) (not b!738794) (not b!738799) (not b!738808) (not b!738792) (not b!738797) (not b!738809) (not b!738802) (not b!738806) (not b!738800))
(check-sat)
