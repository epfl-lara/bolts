; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64698 () Bool)

(assert start!64698)

(declare-fun res!489577 () Bool)

(declare-fun e!408061 () Bool)

(assert (=> start!64698 (=> (not res!489577) (not e!408061))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64698 (= res!489577 (validMask!0 mask!3328))))

(assert (=> start!64698 e!408061))

(assert (=> start!64698 true))

(declare-datatypes ((array!41100 0))(
  ( (array!41101 (arr!19666 (Array (_ BitVec 32) (_ BitVec 64))) (size!20087 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41100)

(declare-fun array_inv!15440 (array!41100) Bool)

(assert (=> start!64698 (array_inv!15440 a!3186)))

(declare-fun b!728988 () Bool)

(declare-fun res!489570 () Bool)

(assert (=> b!728988 (=> (not res!489570) (not e!408061))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728988 (= res!489570 (validKeyInArray!0 (select (arr!19666 a!3186) j!159)))))

(declare-fun b!728989 () Bool)

(declare-fun res!489573 () Bool)

(assert (=> b!728989 (=> (not res!489573) (not e!408061))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728989 (= res!489573 (and (= (size!20087 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20087 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20087 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728990 () Bool)

(declare-fun e!408063 () Bool)

(assert (=> b!728990 (= e!408061 e!408063)))

(declare-fun res!489575 () Bool)

(assert (=> b!728990 (=> (not res!489575) (not e!408063))))

(declare-datatypes ((SeekEntryResult!7273 0))(
  ( (MissingZero!7273 (index!31459 (_ BitVec 32))) (Found!7273 (index!31460 (_ BitVec 32))) (Intermediate!7273 (undefined!8085 Bool) (index!31461 (_ BitVec 32)) (x!62472 (_ BitVec 32))) (Undefined!7273) (MissingVacant!7273 (index!31462 (_ BitVec 32))) )
))
(declare-fun lt!322964 () SeekEntryResult!7273)

(assert (=> b!728990 (= res!489575 (or (= lt!322964 (MissingZero!7273 i!1173)) (= lt!322964 (MissingVacant!7273 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41100 (_ BitVec 32)) SeekEntryResult!7273)

(assert (=> b!728990 (= lt!322964 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun lt!322962 () SeekEntryResult!7273)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!728991 () Bool)

(declare-fun e!408058 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41100 (_ BitVec 32)) SeekEntryResult!7273)

(assert (=> b!728991 (= e!408058 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19666 a!3186) j!159) a!3186 mask!3328) lt!322962))))

(declare-fun b!728992 () Bool)

(declare-fun e!408056 () Bool)

(assert (=> b!728992 (= e!408056 true)))

(declare-fun lt!322967 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728992 (= lt!322967 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728993 () Bool)

(declare-fun res!489582 () Bool)

(assert (=> b!728993 (=> (not res!489582) (not e!408061))))

(assert (=> b!728993 (= res!489582 (validKeyInArray!0 k0!2102))))

(declare-fun b!728994 () Bool)

(declare-fun e!408055 () Bool)

(assert (=> b!728994 (= e!408063 e!408055)))

(declare-fun res!489572 () Bool)

(assert (=> b!728994 (=> (not res!489572) (not e!408055))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728994 (= res!489572 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19666 a!3186) j!159) mask!3328) (select (arr!19666 a!3186) j!159) a!3186 mask!3328) lt!322962))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728994 (= lt!322962 (Intermediate!7273 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728995 () Bool)

(declare-fun res!489574 () Bool)

(assert (=> b!728995 (=> (not res!489574) (not e!408055))))

(assert (=> b!728995 (= res!489574 e!408058)))

(declare-fun c!80085 () Bool)

(assert (=> b!728995 (= c!80085 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728996 () Bool)

(declare-fun res!489576 () Bool)

(assert (=> b!728996 (=> (not res!489576) (not e!408063))))

(assert (=> b!728996 (= res!489576 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20087 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20087 a!3186))))))

(declare-fun b!728997 () Bool)

(declare-fun res!489569 () Bool)

(assert (=> b!728997 (=> (not res!489569) (not e!408063))))

(declare-datatypes ((List!13721 0))(
  ( (Nil!13718) (Cons!13717 (h!14777 (_ BitVec 64)) (t!20044 List!13721)) )
))
(declare-fun arrayNoDuplicates!0 (array!41100 (_ BitVec 32) List!13721) Bool)

(assert (=> b!728997 (= res!489569 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13718))))

(declare-fun b!728998 () Bool)

(declare-fun e!408060 () Bool)

(declare-fun e!408057 () Bool)

(assert (=> b!728998 (= e!408060 e!408057)))

(declare-fun res!489580 () Bool)

(assert (=> b!728998 (=> (not res!489580) (not e!408057))))

(declare-fun lt!322969 () SeekEntryResult!7273)

(assert (=> b!728998 (= res!489580 (= (seekEntryOrOpen!0 (select (arr!19666 a!3186) j!159) a!3186 mask!3328) lt!322969))))

(assert (=> b!728998 (= lt!322969 (Found!7273 j!159))))

(declare-fun b!728999 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41100 (_ BitVec 32)) SeekEntryResult!7273)

(assert (=> b!728999 (= e!408057 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19666 a!3186) j!159) a!3186 mask!3328) lt!322969))))

(declare-fun b!729000 () Bool)

(declare-fun res!489567 () Bool)

(assert (=> b!729000 (=> (not res!489567) (not e!408055))))

(assert (=> b!729000 (= res!489567 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19666 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729001 () Bool)

(assert (=> b!729001 (= e!408058 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19666 a!3186) j!159) a!3186 mask!3328) (Found!7273 j!159)))))

(declare-fun b!729002 () Bool)

(declare-fun res!489571 () Bool)

(assert (=> b!729002 (=> (not res!489571) (not e!408061))))

(declare-fun arrayContainsKey!0 (array!41100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729002 (= res!489571 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729003 () Bool)

(declare-fun e!408059 () Bool)

(assert (=> b!729003 (= e!408059 (not e!408056))))

(declare-fun res!489578 () Bool)

(assert (=> b!729003 (=> res!489578 e!408056)))

(declare-fun lt!322970 () SeekEntryResult!7273)

(get-info :version)

(assert (=> b!729003 (= res!489578 (or (not ((_ is Intermediate!7273) lt!322970)) (bvsge x!1131 (x!62472 lt!322970))))))

(assert (=> b!729003 e!408060))

(declare-fun res!489579 () Bool)

(assert (=> b!729003 (=> (not res!489579) (not e!408060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41100 (_ BitVec 32)) Bool)

(assert (=> b!729003 (= res!489579 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24864 0))(
  ( (Unit!24865) )
))
(declare-fun lt!322965 () Unit!24864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41100 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24864)

(assert (=> b!729003 (= lt!322965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729004 () Bool)

(assert (=> b!729004 (= e!408055 e!408059)))

(declare-fun res!489581 () Bool)

(assert (=> b!729004 (=> (not res!489581) (not e!408059))))

(declare-fun lt!322968 () SeekEntryResult!7273)

(assert (=> b!729004 (= res!489581 (= lt!322968 lt!322970))))

(declare-fun lt!322966 () array!41100)

(declare-fun lt!322963 () (_ BitVec 64))

(assert (=> b!729004 (= lt!322970 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322963 lt!322966 mask!3328))))

(assert (=> b!729004 (= lt!322968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322963 mask!3328) lt!322963 lt!322966 mask!3328))))

(assert (=> b!729004 (= lt!322963 (select (store (arr!19666 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!729004 (= lt!322966 (array!41101 (store (arr!19666 a!3186) i!1173 k0!2102) (size!20087 a!3186)))))

(declare-fun b!729005 () Bool)

(declare-fun res!489568 () Bool)

(assert (=> b!729005 (=> (not res!489568) (not e!408063))))

(assert (=> b!729005 (= res!489568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64698 res!489577) b!728989))

(assert (= (and b!728989 res!489573) b!728988))

(assert (= (and b!728988 res!489570) b!728993))

(assert (= (and b!728993 res!489582) b!729002))

(assert (= (and b!729002 res!489571) b!728990))

(assert (= (and b!728990 res!489575) b!729005))

(assert (= (and b!729005 res!489568) b!728997))

(assert (= (and b!728997 res!489569) b!728996))

(assert (= (and b!728996 res!489576) b!728994))

(assert (= (and b!728994 res!489572) b!729000))

(assert (= (and b!729000 res!489567) b!728995))

(assert (= (and b!728995 c!80085) b!728991))

(assert (= (and b!728995 (not c!80085)) b!729001))

(assert (= (and b!728995 res!489574) b!729004))

(assert (= (and b!729004 res!489581) b!729003))

(assert (= (and b!729003 res!489579) b!728998))

(assert (= (and b!728998 res!489580) b!728999))

(assert (= (and b!729003 (not res!489578)) b!728992))

(declare-fun m!682765 () Bool)

(assert (=> b!729002 m!682765))

(declare-fun m!682767 () Bool)

(assert (=> b!729003 m!682767))

(declare-fun m!682769 () Bool)

(assert (=> b!729003 m!682769))

(declare-fun m!682771 () Bool)

(assert (=> b!729005 m!682771))

(declare-fun m!682773 () Bool)

(assert (=> b!728997 m!682773))

(declare-fun m!682775 () Bool)

(assert (=> start!64698 m!682775))

(declare-fun m!682777 () Bool)

(assert (=> start!64698 m!682777))

(declare-fun m!682779 () Bool)

(assert (=> b!728992 m!682779))

(declare-fun m!682781 () Bool)

(assert (=> b!729000 m!682781))

(declare-fun m!682783 () Bool)

(assert (=> b!729001 m!682783))

(assert (=> b!729001 m!682783))

(declare-fun m!682785 () Bool)

(assert (=> b!729001 m!682785))

(declare-fun m!682787 () Bool)

(assert (=> b!728990 m!682787))

(assert (=> b!728998 m!682783))

(assert (=> b!728998 m!682783))

(declare-fun m!682789 () Bool)

(assert (=> b!728998 m!682789))

(assert (=> b!728994 m!682783))

(assert (=> b!728994 m!682783))

(declare-fun m!682791 () Bool)

(assert (=> b!728994 m!682791))

(assert (=> b!728994 m!682791))

(assert (=> b!728994 m!682783))

(declare-fun m!682793 () Bool)

(assert (=> b!728994 m!682793))

(assert (=> b!728988 m!682783))

(assert (=> b!728988 m!682783))

(declare-fun m!682795 () Bool)

(assert (=> b!728988 m!682795))

(declare-fun m!682797 () Bool)

(assert (=> b!728993 m!682797))

(declare-fun m!682799 () Bool)

(assert (=> b!729004 m!682799))

(declare-fun m!682801 () Bool)

(assert (=> b!729004 m!682801))

(declare-fun m!682803 () Bool)

(assert (=> b!729004 m!682803))

(declare-fun m!682805 () Bool)

(assert (=> b!729004 m!682805))

(assert (=> b!729004 m!682805))

(declare-fun m!682807 () Bool)

(assert (=> b!729004 m!682807))

(assert (=> b!728991 m!682783))

(assert (=> b!728991 m!682783))

(declare-fun m!682809 () Bool)

(assert (=> b!728991 m!682809))

(assert (=> b!728999 m!682783))

(assert (=> b!728999 m!682783))

(declare-fun m!682811 () Bool)

(assert (=> b!728999 m!682811))

(check-sat (not b!729002) (not start!64698) (not b!728994) (not b!729003) (not b!729005) (not b!728999) (not b!728998) (not b!728990) (not b!728991) (not b!728997) (not b!729004) (not b!728992) (not b!729001) (not b!728988) (not b!728993))
(check-sat)
