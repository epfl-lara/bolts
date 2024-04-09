; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64480 () Bool)

(assert start!64480)

(declare-fun b!724742 () Bool)

(declare-fun res!486052 () Bool)

(declare-fun e!405948 () Bool)

(assert (=> b!724742 (=> (not res!486052) (not e!405948))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724742 (= res!486052 (validKeyInArray!0 k!2102))))

(declare-fun b!724743 () Bool)

(declare-fun res!486051 () Bool)

(declare-fun e!405946 () Bool)

(assert (=> b!724743 (=> (not res!486051) (not e!405946))))

(declare-datatypes ((array!40951 0))(
  ( (array!40952 (arr!19593 (Array (_ BitVec 32) (_ BitVec 64))) (size!20014 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40951)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40951 (_ BitVec 32)) Bool)

(assert (=> b!724743 (= res!486051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724744 () Bool)

(declare-fun e!405945 () Bool)

(assert (=> b!724744 (= e!405945 (not true))))

(declare-fun e!405949 () Bool)

(assert (=> b!724744 e!405949))

(declare-fun res!486057 () Bool)

(assert (=> b!724744 (=> (not res!486057) (not e!405949))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!724744 (= res!486057 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24718 0))(
  ( (Unit!24719) )
))
(declare-fun lt!321119 () Unit!24718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40951 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24718)

(assert (=> b!724744 (= lt!321119 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724745 () Bool)

(declare-fun e!405951 () Bool)

(assert (=> b!724745 (= e!405946 e!405951)))

(declare-fun res!486050 () Bool)

(assert (=> b!724745 (=> (not res!486050) (not e!405951))))

(declare-datatypes ((SeekEntryResult!7200 0))(
  ( (MissingZero!7200 (index!31167 (_ BitVec 32))) (Found!7200 (index!31168 (_ BitVec 32))) (Intermediate!7200 (undefined!8012 Bool) (index!31169 (_ BitVec 32)) (x!62195 (_ BitVec 32))) (Undefined!7200) (MissingVacant!7200 (index!31170 (_ BitVec 32))) )
))
(declare-fun lt!321118 () SeekEntryResult!7200)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40951 (_ BitVec 32)) SeekEntryResult!7200)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724745 (= res!486050 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19593 a!3186) j!159) mask!3328) (select (arr!19593 a!3186) j!159) a!3186 mask!3328) lt!321118))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724745 (= lt!321118 (Intermediate!7200 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724746 () Bool)

(assert (=> b!724746 (= e!405951 e!405945)))

(declare-fun res!486062 () Bool)

(assert (=> b!724746 (=> (not res!486062) (not e!405945))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!321115 () array!40951)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321117 () (_ BitVec 64))

(assert (=> b!724746 (= res!486062 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321117 mask!3328) lt!321117 lt!321115 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321117 lt!321115 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724746 (= lt!321117 (select (store (arr!19593 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724746 (= lt!321115 (array!40952 (store (arr!19593 a!3186) i!1173 k!2102) (size!20014 a!3186)))))

(declare-fun b!724747 () Bool)

(declare-fun res!486063 () Bool)

(assert (=> b!724747 (=> (not res!486063) (not e!405946))))

(assert (=> b!724747 (= res!486063 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20014 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20014 a!3186))))))

(declare-fun b!724749 () Bool)

(assert (=> b!724749 (= e!405948 e!405946)))

(declare-fun res!486053 () Bool)

(assert (=> b!724749 (=> (not res!486053) (not e!405946))))

(declare-fun lt!321116 () SeekEntryResult!7200)

(assert (=> b!724749 (= res!486053 (or (= lt!321116 (MissingZero!7200 i!1173)) (= lt!321116 (MissingVacant!7200 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40951 (_ BitVec 32)) SeekEntryResult!7200)

(assert (=> b!724749 (= lt!321116 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!724750 () Bool)

(declare-fun e!405950 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40951 (_ BitVec 32)) SeekEntryResult!7200)

(assert (=> b!724750 (= e!405950 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19593 a!3186) j!159) a!3186 mask!3328) (Found!7200 j!159)))))

(declare-fun b!724751 () Bool)

(declare-fun res!486056 () Bool)

(assert (=> b!724751 (=> (not res!486056) (not e!405946))))

(declare-datatypes ((List!13648 0))(
  ( (Nil!13645) (Cons!13644 (h!14701 (_ BitVec 64)) (t!19971 List!13648)) )
))
(declare-fun arrayNoDuplicates!0 (array!40951 (_ BitVec 32) List!13648) Bool)

(assert (=> b!724751 (= res!486056 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13645))))

(declare-fun b!724752 () Bool)

(declare-fun res!486055 () Bool)

(assert (=> b!724752 (=> (not res!486055) (not e!405951))))

(assert (=> b!724752 (= res!486055 e!405950)))

(declare-fun c!79719 () Bool)

(assert (=> b!724752 (= c!79719 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724753 () Bool)

(assert (=> b!724753 (= e!405949 (= (seekEntryOrOpen!0 (select (arr!19593 a!3186) j!159) a!3186 mask!3328) (Found!7200 j!159)))))

(declare-fun b!724754 () Bool)

(declare-fun res!486058 () Bool)

(assert (=> b!724754 (=> (not res!486058) (not e!405948))))

(declare-fun arrayContainsKey!0 (array!40951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724754 (= res!486058 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724755 () Bool)

(declare-fun res!486054 () Bool)

(assert (=> b!724755 (=> (not res!486054) (not e!405951))))

(assert (=> b!724755 (= res!486054 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19593 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724756 () Bool)

(declare-fun res!486060 () Bool)

(assert (=> b!724756 (=> (not res!486060) (not e!405948))))

(assert (=> b!724756 (= res!486060 (validKeyInArray!0 (select (arr!19593 a!3186) j!159)))))

(declare-fun b!724757 () Bool)

(assert (=> b!724757 (= e!405950 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19593 a!3186) j!159) a!3186 mask!3328) lt!321118))))

(declare-fun res!486059 () Bool)

(assert (=> start!64480 (=> (not res!486059) (not e!405948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64480 (= res!486059 (validMask!0 mask!3328))))

(assert (=> start!64480 e!405948))

(assert (=> start!64480 true))

(declare-fun array_inv!15367 (array!40951) Bool)

(assert (=> start!64480 (array_inv!15367 a!3186)))

(declare-fun b!724748 () Bool)

(declare-fun res!486061 () Bool)

(assert (=> b!724748 (=> (not res!486061) (not e!405948))))

(assert (=> b!724748 (= res!486061 (and (= (size!20014 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20014 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20014 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64480 res!486059) b!724748))

(assert (= (and b!724748 res!486061) b!724756))

(assert (= (and b!724756 res!486060) b!724742))

(assert (= (and b!724742 res!486052) b!724754))

(assert (= (and b!724754 res!486058) b!724749))

(assert (= (and b!724749 res!486053) b!724743))

(assert (= (and b!724743 res!486051) b!724751))

(assert (= (and b!724751 res!486056) b!724747))

(assert (= (and b!724747 res!486063) b!724745))

(assert (= (and b!724745 res!486050) b!724755))

(assert (= (and b!724755 res!486054) b!724752))

(assert (= (and b!724752 c!79719) b!724757))

(assert (= (and b!724752 (not c!79719)) b!724750))

(assert (= (and b!724752 res!486055) b!724746))

(assert (= (and b!724746 res!486062) b!724744))

(assert (= (and b!724744 res!486057) b!724753))

(declare-fun m!679057 () Bool)

(assert (=> b!724742 m!679057))

(declare-fun m!679059 () Bool)

(assert (=> b!724745 m!679059))

(assert (=> b!724745 m!679059))

(declare-fun m!679061 () Bool)

(assert (=> b!724745 m!679061))

(assert (=> b!724745 m!679061))

(assert (=> b!724745 m!679059))

(declare-fun m!679063 () Bool)

(assert (=> b!724745 m!679063))

(assert (=> b!724756 m!679059))

(assert (=> b!724756 m!679059))

(declare-fun m!679065 () Bool)

(assert (=> b!724756 m!679065))

(declare-fun m!679067 () Bool)

(assert (=> b!724755 m!679067))

(declare-fun m!679069 () Bool)

(assert (=> b!724754 m!679069))

(declare-fun m!679071 () Bool)

(assert (=> start!64480 m!679071))

(declare-fun m!679073 () Bool)

(assert (=> start!64480 m!679073))

(declare-fun m!679075 () Bool)

(assert (=> b!724746 m!679075))

(declare-fun m!679077 () Bool)

(assert (=> b!724746 m!679077))

(declare-fun m!679079 () Bool)

(assert (=> b!724746 m!679079))

(declare-fun m!679081 () Bool)

(assert (=> b!724746 m!679081))

(assert (=> b!724746 m!679081))

(declare-fun m!679083 () Bool)

(assert (=> b!724746 m!679083))

(declare-fun m!679085 () Bool)

(assert (=> b!724749 m!679085))

(assert (=> b!724757 m!679059))

(assert (=> b!724757 m!679059))

(declare-fun m!679087 () Bool)

(assert (=> b!724757 m!679087))

(declare-fun m!679089 () Bool)

(assert (=> b!724744 m!679089))

(declare-fun m!679091 () Bool)

(assert (=> b!724744 m!679091))

(declare-fun m!679093 () Bool)

(assert (=> b!724743 m!679093))

(assert (=> b!724750 m!679059))

(assert (=> b!724750 m!679059))

(declare-fun m!679095 () Bool)

(assert (=> b!724750 m!679095))

(assert (=> b!724753 m!679059))

(assert (=> b!724753 m!679059))

(declare-fun m!679097 () Bool)

(assert (=> b!724753 m!679097))

(declare-fun m!679099 () Bool)

(assert (=> b!724751 m!679099))

(push 1)

