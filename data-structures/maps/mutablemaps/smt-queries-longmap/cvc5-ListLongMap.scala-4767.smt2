; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65680 () Bool)

(assert start!65680)

(declare-fun b!752122 () Bool)

(declare-fun e!419563 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!752122 (= e!419563 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun e!419573 () Bool)

(assert (=> b!752122 e!419573))

(declare-fun res!508002 () Bool)

(assert (=> b!752122 (=> (not res!508002) (not e!419573))))

(declare-fun lt!334574 () (_ BitVec 64))

(assert (=> b!752122 (= res!508002 (= lt!334574 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25882 0))(
  ( (Unit!25883) )
))
(declare-fun lt!334564 () Unit!25882)

(declare-fun e!419565 () Unit!25882)

(assert (=> b!752122 (= lt!334564 e!419565)))

(declare-fun c!82446 () Bool)

(assert (=> b!752122 (= c!82446 (= lt!334574 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752123 () Bool)

(declare-fun e!419569 () Bool)

(declare-fun e!419564 () Bool)

(assert (=> b!752123 (= e!419569 e!419564)))

(declare-fun res!508003 () Bool)

(assert (=> b!752123 (=> res!508003 e!419564)))

(declare-datatypes ((SeekEntryResult!7620 0))(
  ( (MissingZero!7620 (index!32847 (_ BitVec 32))) (Found!7620 (index!32848 (_ BitVec 32))) (Intermediate!7620 (undefined!8432 Bool) (index!32849 (_ BitVec 32)) (x!63795 (_ BitVec 32))) (Undefined!7620) (MissingVacant!7620 (index!32850 (_ BitVec 32))) )
))
(declare-fun lt!334569 () SeekEntryResult!7620)

(declare-fun lt!334568 () SeekEntryResult!7620)

(assert (=> b!752123 (= res!508003 (not (= lt!334569 lt!334568)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41806 0))(
  ( (array!41807 (arr!20013 (Array (_ BitVec 32) (_ BitVec 64))) (size!20434 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41806)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41806 (_ BitVec 32)) SeekEntryResult!7620)

(assert (=> b!752123 (= lt!334569 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20013 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752124 () Bool)

(assert (=> b!752124 (= e!419564 e!419563)))

(declare-fun res!507998 () Bool)

(assert (=> b!752124 (=> res!507998 e!419563)))

(declare-fun lt!334571 () (_ BitVec 64))

(assert (=> b!752124 (= res!507998 (= lt!334574 lt!334571))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!752124 (= lt!334574 (select (store (arr!20013 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752125 () Bool)

(declare-fun res!507995 () Bool)

(declare-fun e!419566 () Bool)

(assert (=> b!752125 (=> (not res!507995) (not e!419566))))

(declare-datatypes ((List!14068 0))(
  ( (Nil!14065) (Cons!14064 (h!15136 (_ BitVec 64)) (t!20391 List!14068)) )
))
(declare-fun arrayNoDuplicates!0 (array!41806 (_ BitVec 32) List!14068) Bool)

(assert (=> b!752125 (= res!507995 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14065))))

(declare-fun b!752126 () Bool)

(declare-fun e!419567 () Bool)

(assert (=> b!752126 (= e!419566 e!419567)))

(declare-fun res!508009 () Bool)

(assert (=> b!752126 (=> (not res!508009) (not e!419567))))

(declare-fun lt!334565 () SeekEntryResult!7620)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41806 (_ BitVec 32)) SeekEntryResult!7620)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752126 (= res!508009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20013 a!3186) j!159) mask!3328) (select (arr!20013 a!3186) j!159) a!3186 mask!3328) lt!334565))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752126 (= lt!334565 (Intermediate!7620 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752127 () Bool)

(declare-fun res!507994 () Bool)

(assert (=> b!752127 (=> (not res!507994) (not e!419567))))

(declare-fun e!419574 () Bool)

(assert (=> b!752127 (= res!507994 e!419574)))

(declare-fun c!82445 () Bool)

(assert (=> b!752127 (= c!82445 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752128 () Bool)

(declare-fun res!508000 () Bool)

(declare-fun e!419571 () Bool)

(assert (=> b!752128 (=> (not res!508000) (not e!419571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752128 (= res!508000 (validKeyInArray!0 k!2102))))

(declare-fun b!752129 () Bool)

(declare-fun res!508006 () Bool)

(assert (=> b!752129 (=> (not res!508006) (not e!419566))))

(assert (=> b!752129 (= res!508006 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20434 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20434 a!3186))))))

(declare-fun b!752130 () Bool)

(assert (=> b!752130 (= e!419571 e!419566)))

(declare-fun res!507999 () Bool)

(assert (=> b!752130 (=> (not res!507999) (not e!419566))))

(declare-fun lt!334567 () SeekEntryResult!7620)

(assert (=> b!752130 (= res!507999 (or (= lt!334567 (MissingZero!7620 i!1173)) (= lt!334567 (MissingVacant!7620 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41806 (_ BitVec 32)) SeekEntryResult!7620)

(assert (=> b!752130 (= lt!334567 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!752131 () Bool)

(assert (=> b!752131 (= e!419574 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20013 a!3186) j!159) a!3186 mask!3328) (Found!7620 j!159)))))

(declare-fun b!752132 () Bool)

(declare-fun res!508005 () Bool)

(assert (=> b!752132 (=> (not res!508005) (not e!419573))))

(declare-fun lt!334573 () array!41806)

(assert (=> b!752132 (= res!508005 (= (seekEntryOrOpen!0 lt!334571 lt!334573 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334571 lt!334573 mask!3328)))))

(declare-fun b!752133 () Bool)

(declare-fun e!419572 () Bool)

(assert (=> b!752133 (= e!419567 e!419572)))

(declare-fun res!508011 () Bool)

(assert (=> b!752133 (=> (not res!508011) (not e!419572))))

(declare-fun lt!334570 () SeekEntryResult!7620)

(declare-fun lt!334572 () SeekEntryResult!7620)

(assert (=> b!752133 (= res!508011 (= lt!334570 lt!334572))))

(assert (=> b!752133 (= lt!334572 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334571 lt!334573 mask!3328))))

(assert (=> b!752133 (= lt!334570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334571 mask!3328) lt!334571 lt!334573 mask!3328))))

(assert (=> b!752133 (= lt!334571 (select (store (arr!20013 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752133 (= lt!334573 (array!41807 (store (arr!20013 a!3186) i!1173 k!2102) (size!20434 a!3186)))))

(declare-fun b!752134 () Bool)

(declare-fun Unit!25884 () Unit!25882)

(assert (=> b!752134 (= e!419565 Unit!25884)))

(declare-fun b!752135 () Bool)

(declare-fun lt!334566 () SeekEntryResult!7620)

(assert (=> b!752135 (= e!419573 (= lt!334566 lt!334569))))

(declare-fun b!752136 () Bool)

(declare-fun res!507996 () Bool)

(assert (=> b!752136 (=> (not res!507996) (not e!419566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41806 (_ BitVec 32)) Bool)

(assert (=> b!752136 (= res!507996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752137 () Bool)

(assert (=> b!752137 (= e!419574 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20013 a!3186) j!159) a!3186 mask!3328) lt!334565))))

(declare-fun b!752138 () Bool)

(declare-fun res!507993 () Bool)

(assert (=> b!752138 (=> (not res!507993) (not e!419571))))

(assert (=> b!752138 (= res!507993 (validKeyInArray!0 (select (arr!20013 a!3186) j!159)))))

(declare-fun res!508004 () Bool)

(assert (=> start!65680 (=> (not res!508004) (not e!419571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65680 (= res!508004 (validMask!0 mask!3328))))

(assert (=> start!65680 e!419571))

(assert (=> start!65680 true))

(declare-fun array_inv!15787 (array!41806) Bool)

(assert (=> start!65680 (array_inv!15787 a!3186)))

(declare-fun b!752139 () Bool)

(declare-fun Unit!25885 () Unit!25882)

(assert (=> b!752139 (= e!419565 Unit!25885)))

(assert (=> b!752139 false))

(declare-fun b!752140 () Bool)

(declare-fun e!419568 () Bool)

(assert (=> b!752140 (= e!419568 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20013 a!3186) j!159) a!3186 mask!3328) lt!334568))))

(declare-fun b!752141 () Bool)

(assert (=> b!752141 (= e!419572 (not e!419569))))

(declare-fun res!508007 () Bool)

(assert (=> b!752141 (=> res!508007 e!419569)))

(assert (=> b!752141 (= res!508007 (or (not (is-Intermediate!7620 lt!334572)) (bvslt x!1131 (x!63795 lt!334572)) (not (= x!1131 (x!63795 lt!334572))) (not (= index!1321 (index!32849 lt!334572)))))))

(assert (=> b!752141 e!419568))

(declare-fun res!508001 () Bool)

(assert (=> b!752141 (=> (not res!508001) (not e!419568))))

(assert (=> b!752141 (= res!508001 (= lt!334566 lt!334568))))

(assert (=> b!752141 (= lt!334568 (Found!7620 j!159))))

(assert (=> b!752141 (= lt!334566 (seekEntryOrOpen!0 (select (arr!20013 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!752141 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334563 () Unit!25882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41806 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25882)

(assert (=> b!752141 (= lt!334563 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752142 () Bool)

(declare-fun res!507997 () Bool)

(assert (=> b!752142 (=> (not res!507997) (not e!419571))))

(declare-fun arrayContainsKey!0 (array!41806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752142 (= res!507997 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752143 () Bool)

(declare-fun res!508010 () Bool)

(assert (=> b!752143 (=> (not res!508010) (not e!419567))))

(assert (=> b!752143 (= res!508010 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20013 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752144 () Bool)

(declare-fun res!508008 () Bool)

(assert (=> b!752144 (=> (not res!508008) (not e!419571))))

(assert (=> b!752144 (= res!508008 (and (= (size!20434 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20434 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20434 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65680 res!508004) b!752144))

(assert (= (and b!752144 res!508008) b!752138))

(assert (= (and b!752138 res!507993) b!752128))

(assert (= (and b!752128 res!508000) b!752142))

(assert (= (and b!752142 res!507997) b!752130))

(assert (= (and b!752130 res!507999) b!752136))

(assert (= (and b!752136 res!507996) b!752125))

(assert (= (and b!752125 res!507995) b!752129))

(assert (= (and b!752129 res!508006) b!752126))

(assert (= (and b!752126 res!508009) b!752143))

(assert (= (and b!752143 res!508010) b!752127))

(assert (= (and b!752127 c!82445) b!752137))

(assert (= (and b!752127 (not c!82445)) b!752131))

(assert (= (and b!752127 res!507994) b!752133))

(assert (= (and b!752133 res!508011) b!752141))

(assert (= (and b!752141 res!508001) b!752140))

(assert (= (and b!752141 (not res!508007)) b!752123))

(assert (= (and b!752123 (not res!508003)) b!752124))

(assert (= (and b!752124 (not res!507998)) b!752122))

(assert (= (and b!752122 c!82446) b!752139))

(assert (= (and b!752122 (not c!82446)) b!752134))

(assert (= (and b!752122 res!508002) b!752132))

(assert (= (and b!752132 res!508005) b!752135))

(declare-fun m!701209 () Bool)

(assert (=> b!752132 m!701209))

(declare-fun m!701211 () Bool)

(assert (=> b!752132 m!701211))

(declare-fun m!701213 () Bool)

(assert (=> b!752124 m!701213))

(declare-fun m!701215 () Bool)

(assert (=> b!752124 m!701215))

(declare-fun m!701217 () Bool)

(assert (=> start!65680 m!701217))

(declare-fun m!701219 () Bool)

(assert (=> start!65680 m!701219))

(declare-fun m!701221 () Bool)

(assert (=> b!752126 m!701221))

(assert (=> b!752126 m!701221))

(declare-fun m!701223 () Bool)

(assert (=> b!752126 m!701223))

(assert (=> b!752126 m!701223))

(assert (=> b!752126 m!701221))

(declare-fun m!701225 () Bool)

(assert (=> b!752126 m!701225))

(assert (=> b!752137 m!701221))

(assert (=> b!752137 m!701221))

(declare-fun m!701227 () Bool)

(assert (=> b!752137 m!701227))

(declare-fun m!701229 () Bool)

(assert (=> b!752133 m!701229))

(declare-fun m!701231 () Bool)

(assert (=> b!752133 m!701231))

(assert (=> b!752133 m!701213))

(assert (=> b!752133 m!701229))

(declare-fun m!701233 () Bool)

(assert (=> b!752133 m!701233))

(declare-fun m!701235 () Bool)

(assert (=> b!752133 m!701235))

(assert (=> b!752138 m!701221))

(assert (=> b!752138 m!701221))

(declare-fun m!701237 () Bool)

(assert (=> b!752138 m!701237))

(declare-fun m!701239 () Bool)

(assert (=> b!752130 m!701239))

(declare-fun m!701241 () Bool)

(assert (=> b!752142 m!701241))

(declare-fun m!701243 () Bool)

(assert (=> b!752128 m!701243))

(assert (=> b!752140 m!701221))

(assert (=> b!752140 m!701221))

(declare-fun m!701245 () Bool)

(assert (=> b!752140 m!701245))

(declare-fun m!701247 () Bool)

(assert (=> b!752125 m!701247))

(assert (=> b!752141 m!701221))

(assert (=> b!752141 m!701221))

(declare-fun m!701249 () Bool)

(assert (=> b!752141 m!701249))

(declare-fun m!701251 () Bool)

(assert (=> b!752141 m!701251))

(declare-fun m!701253 () Bool)

(assert (=> b!752141 m!701253))

(declare-fun m!701255 () Bool)

(assert (=> b!752136 m!701255))

(assert (=> b!752131 m!701221))

(assert (=> b!752131 m!701221))

(declare-fun m!701257 () Bool)

(assert (=> b!752131 m!701257))

(assert (=> b!752123 m!701221))

(assert (=> b!752123 m!701221))

(assert (=> b!752123 m!701257))

(declare-fun m!701259 () Bool)

(assert (=> b!752143 m!701259))

(push 1)

(assert (not b!752136))

(assert (not b!752142))

(assert (not b!752131))

(assert (not start!65680))

(assert (not b!752125))

(assert (not b!752137))

(assert (not b!752128))

(assert (not b!752141))

(assert (not b!752126))

(assert (not b!752140))

(assert (not b!752132))

(assert (not b!752138))

(assert (not b!752130))

(assert (not b!752133))

(assert (not b!752123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

