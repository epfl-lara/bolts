; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66832 () Bool)

(assert start!66832)

(declare-fun b!770705 () Bool)

(declare-datatypes ((Unit!26548 0))(
  ( (Unit!26549) )
))
(declare-fun e!429103 () Unit!26548)

(declare-fun Unit!26550 () Unit!26548)

(assert (=> b!770705 (= e!429103 Unit!26550)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42349 0))(
  ( (array!42350 (arr!20271 (Array (_ BitVec 32) (_ BitVec 64))) (size!20692 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42349)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7878 0))(
  ( (MissingZero!7878 (index!33879 (_ BitVec 32))) (Found!7878 (index!33880 (_ BitVec 32))) (Intermediate!7878 (undefined!8690 Bool) (index!33881 (_ BitVec 32)) (x!64834 (_ BitVec 32))) (Undefined!7878) (MissingVacant!7878 (index!33882 (_ BitVec 32))) )
))
(declare-fun lt!343085 () SeekEntryResult!7878)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42349 (_ BitVec 32)) SeekEntryResult!7878)

(assert (=> b!770705 (= lt!343085 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20271 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!343088 () (_ BitVec 32))

(assert (=> b!770705 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343088 resIntermediateIndex!5 (select (arr!20271 a!3186) j!159) a!3186 mask!3328) (Found!7878 j!159))))

(declare-fun b!770706 () Bool)

(declare-fun res!521514 () Bool)

(declare-fun e!429105 () Bool)

(assert (=> b!770706 (=> (not res!521514) (not e!429105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770706 (= res!521514 (validKeyInArray!0 (select (arr!20271 a!3186) j!159)))))

(declare-fun b!770707 () Bool)

(declare-fun e!429102 () Bool)

(declare-fun e!429107 () Bool)

(assert (=> b!770707 (= e!429102 e!429107)))

(declare-fun res!521506 () Bool)

(assert (=> b!770707 (=> (not res!521506) (not e!429107))))

(declare-fun lt!343080 () SeekEntryResult!7878)

(declare-fun lt!343090 () SeekEntryResult!7878)

(assert (=> b!770707 (= res!521506 (= lt!343080 lt!343090))))

(declare-fun lt!343089 () array!42349)

(declare-fun lt!343086 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42349 (_ BitVec 32)) SeekEntryResult!7878)

(assert (=> b!770707 (= lt!343090 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343086 lt!343089 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770707 (= lt!343080 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343086 mask!3328) lt!343086 lt!343089 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!770707 (= lt!343086 (select (store (arr!20271 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770707 (= lt!343089 (array!42350 (store (arr!20271 a!3186) i!1173 k!2102) (size!20692 a!3186)))))

(declare-fun b!770708 () Bool)

(declare-fun e!429104 () Bool)

(declare-fun e!429109 () Bool)

(assert (=> b!770708 (= e!429104 e!429109)))

(declare-fun res!521509 () Bool)

(assert (=> b!770708 (=> (not res!521509) (not e!429109))))

(declare-fun lt!343081 () SeekEntryResult!7878)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42349 (_ BitVec 32)) SeekEntryResult!7878)

(assert (=> b!770708 (= res!521509 (= (seekEntryOrOpen!0 (select (arr!20271 a!3186) j!159) a!3186 mask!3328) lt!343081))))

(assert (=> b!770708 (= lt!343081 (Found!7878 j!159))))

(declare-fun b!770709 () Bool)

(declare-fun res!521503 () Bool)

(declare-fun e!429108 () Bool)

(assert (=> b!770709 (=> (not res!521503) (not e!429108))))

(declare-datatypes ((List!14326 0))(
  ( (Nil!14323) (Cons!14322 (h!15421 (_ BitVec 64)) (t!20649 List!14326)) )
))
(declare-fun arrayNoDuplicates!0 (array!42349 (_ BitVec 32) List!14326) Bool)

(assert (=> b!770709 (= res!521503 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14323))))

(declare-fun b!770710 () Bool)

(declare-fun e!429106 () Bool)

(assert (=> b!770710 (= e!429106 true)))

(declare-fun lt!343084 () Unit!26548)

(assert (=> b!770710 (= lt!343084 e!429103)))

(declare-fun c!84999 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770710 (= c!84999 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770710 (= lt!343088 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770711 () Bool)

(declare-fun res!521502 () Bool)

(assert (=> b!770711 (=> (not res!521502) (not e!429105))))

(declare-fun arrayContainsKey!0 (array!42349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770711 (= res!521502 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770712 () Bool)

(assert (=> b!770712 (= e!429105 e!429108)))

(declare-fun res!521507 () Bool)

(assert (=> b!770712 (=> (not res!521507) (not e!429108))))

(declare-fun lt!343083 () SeekEntryResult!7878)

(assert (=> b!770712 (= res!521507 (or (= lt!343083 (MissingZero!7878 i!1173)) (= lt!343083 (MissingVacant!7878 i!1173))))))

(assert (=> b!770712 (= lt!343083 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!770713 () Bool)

(declare-fun res!521515 () Bool)

(assert (=> b!770713 (=> (not res!521515) (not e!429108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42349 (_ BitVec 32)) Bool)

(assert (=> b!770713 (= res!521515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770714 () Bool)

(declare-fun res!521510 () Bool)

(assert (=> b!770714 (=> (not res!521510) (not e!429102))))

(declare-fun e!429100 () Bool)

(assert (=> b!770714 (= res!521510 e!429100)))

(declare-fun c!84998 () Bool)

(assert (=> b!770714 (= c!84998 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770716 () Bool)

(assert (=> b!770716 (= e!429109 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20271 a!3186) j!159) a!3186 mask!3328) lt!343081))))

(declare-fun b!770717 () Bool)

(assert (=> b!770717 (= e!429108 e!429102)))

(declare-fun res!521500 () Bool)

(assert (=> b!770717 (=> (not res!521500) (not e!429102))))

(declare-fun lt!343087 () SeekEntryResult!7878)

(assert (=> b!770717 (= res!521500 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20271 a!3186) j!159) mask!3328) (select (arr!20271 a!3186) j!159) a!3186 mask!3328) lt!343087))))

(assert (=> b!770717 (= lt!343087 (Intermediate!7878 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770718 () Bool)

(declare-fun res!521508 () Bool)

(assert (=> b!770718 (=> (not res!521508) (not e!429105))))

(assert (=> b!770718 (= res!521508 (and (= (size!20692 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20692 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20692 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770715 () Bool)

(assert (=> b!770715 (= e!429100 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20271 a!3186) j!159) a!3186 mask!3328) lt!343087))))

(declare-fun res!521504 () Bool)

(assert (=> start!66832 (=> (not res!521504) (not e!429105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66832 (= res!521504 (validMask!0 mask!3328))))

(assert (=> start!66832 e!429105))

(assert (=> start!66832 true))

(declare-fun array_inv!16045 (array!42349) Bool)

(assert (=> start!66832 (array_inv!16045 a!3186)))

(declare-fun b!770719 () Bool)

(assert (=> b!770719 (= e!429107 (not e!429106))))

(declare-fun res!521501 () Bool)

(assert (=> b!770719 (=> res!521501 e!429106)))

(assert (=> b!770719 (= res!521501 (or (not (is-Intermediate!7878 lt!343090)) (bvsge x!1131 (x!64834 lt!343090))))))

(assert (=> b!770719 e!429104))

(declare-fun res!521511 () Bool)

(assert (=> b!770719 (=> (not res!521511) (not e!429104))))

(assert (=> b!770719 (= res!521511 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343082 () Unit!26548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26548)

(assert (=> b!770719 (= lt!343082 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770720 () Bool)

(declare-fun Unit!26551 () Unit!26548)

(assert (=> b!770720 (= e!429103 Unit!26551)))

(assert (=> b!770720 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343088 (select (arr!20271 a!3186) j!159) a!3186 mask!3328) lt!343087)))

(declare-fun b!770721 () Bool)

(assert (=> b!770721 (= e!429100 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20271 a!3186) j!159) a!3186 mask!3328) (Found!7878 j!159)))))

(declare-fun b!770722 () Bool)

(declare-fun res!521513 () Bool)

(assert (=> b!770722 (=> (not res!521513) (not e!429105))))

(assert (=> b!770722 (= res!521513 (validKeyInArray!0 k!2102))))

(declare-fun b!770723 () Bool)

(declare-fun res!521512 () Bool)

(assert (=> b!770723 (=> (not res!521512) (not e!429102))))

(assert (=> b!770723 (= res!521512 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20271 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770724 () Bool)

(declare-fun res!521505 () Bool)

(assert (=> b!770724 (=> (not res!521505) (not e!429108))))

(assert (=> b!770724 (= res!521505 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20692 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20692 a!3186))))))

(assert (= (and start!66832 res!521504) b!770718))

(assert (= (and b!770718 res!521508) b!770706))

(assert (= (and b!770706 res!521514) b!770722))

(assert (= (and b!770722 res!521513) b!770711))

(assert (= (and b!770711 res!521502) b!770712))

(assert (= (and b!770712 res!521507) b!770713))

(assert (= (and b!770713 res!521515) b!770709))

(assert (= (and b!770709 res!521503) b!770724))

(assert (= (and b!770724 res!521505) b!770717))

(assert (= (and b!770717 res!521500) b!770723))

(assert (= (and b!770723 res!521512) b!770714))

(assert (= (and b!770714 c!84998) b!770715))

(assert (= (and b!770714 (not c!84998)) b!770721))

(assert (= (and b!770714 res!521510) b!770707))

(assert (= (and b!770707 res!521506) b!770719))

(assert (= (and b!770719 res!521511) b!770708))

(assert (= (and b!770708 res!521509) b!770716))

(assert (= (and b!770719 (not res!521501)) b!770710))

(assert (= (and b!770710 c!84999) b!770720))

(assert (= (and b!770710 (not c!84999)) b!770705))

(declare-fun m!716011 () Bool)

(assert (=> b!770705 m!716011))

(assert (=> b!770705 m!716011))

(declare-fun m!716013 () Bool)

(assert (=> b!770705 m!716013))

(assert (=> b!770705 m!716011))

(declare-fun m!716015 () Bool)

(assert (=> b!770705 m!716015))

(declare-fun m!716017 () Bool)

(assert (=> start!66832 m!716017))

(declare-fun m!716019 () Bool)

(assert (=> start!66832 m!716019))

(assert (=> b!770708 m!716011))

(assert (=> b!770708 m!716011))

(declare-fun m!716021 () Bool)

(assert (=> b!770708 m!716021))

(assert (=> b!770717 m!716011))

(assert (=> b!770717 m!716011))

(declare-fun m!716023 () Bool)

(assert (=> b!770717 m!716023))

(assert (=> b!770717 m!716023))

(assert (=> b!770717 m!716011))

(declare-fun m!716025 () Bool)

(assert (=> b!770717 m!716025))

(declare-fun m!716027 () Bool)

(assert (=> b!770713 m!716027))

(declare-fun m!716029 () Bool)

(assert (=> b!770719 m!716029))

(declare-fun m!716031 () Bool)

(assert (=> b!770719 m!716031))

(assert (=> b!770720 m!716011))

(assert (=> b!770720 m!716011))

(declare-fun m!716033 () Bool)

(assert (=> b!770720 m!716033))

(declare-fun m!716035 () Bool)

(assert (=> b!770709 m!716035))

(declare-fun m!716037 () Bool)

(assert (=> b!770710 m!716037))

(declare-fun m!716039 () Bool)

(assert (=> b!770707 m!716039))

(assert (=> b!770707 m!716039))

(declare-fun m!716041 () Bool)

(assert (=> b!770707 m!716041))

(declare-fun m!716043 () Bool)

(assert (=> b!770707 m!716043))

(declare-fun m!716045 () Bool)

(assert (=> b!770707 m!716045))

(declare-fun m!716047 () Bool)

(assert (=> b!770707 m!716047))

(declare-fun m!716049 () Bool)

(assert (=> b!770722 m!716049))

(assert (=> b!770716 m!716011))

(assert (=> b!770716 m!716011))

(declare-fun m!716051 () Bool)

(assert (=> b!770716 m!716051))

(declare-fun m!716053 () Bool)

(assert (=> b!770711 m!716053))

(declare-fun m!716055 () Bool)

(assert (=> b!770712 m!716055))

(declare-fun m!716057 () Bool)

(assert (=> b!770723 m!716057))

(assert (=> b!770721 m!716011))

(assert (=> b!770721 m!716011))

(assert (=> b!770721 m!716013))

(assert (=> b!770706 m!716011))

(assert (=> b!770706 m!716011))

(declare-fun m!716059 () Bool)

(assert (=> b!770706 m!716059))

(assert (=> b!770715 m!716011))

(assert (=> b!770715 m!716011))

(declare-fun m!716061 () Bool)

(assert (=> b!770715 m!716061))

(push 1)

