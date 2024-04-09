; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64524 () Bool)

(assert start!64524)

(declare-fun b!725853 () Bool)

(declare-fun e!406462 () Bool)

(declare-fun e!406466 () Bool)

(assert (=> b!725853 (= e!406462 e!406466)))

(declare-fun res!487044 () Bool)

(assert (=> b!725853 (=> (not res!487044) (not e!406466))))

(declare-datatypes ((array!40995 0))(
  ( (array!40996 (arr!19615 (Array (_ BitVec 32) (_ BitVec 64))) (size!20036 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40995)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7222 0))(
  ( (MissingZero!7222 (index!31255 (_ BitVec 32))) (Found!7222 (index!31256 (_ BitVec 32))) (Intermediate!7222 (undefined!8034 Bool) (index!31257 (_ BitVec 32)) (x!62273 (_ BitVec 32))) (Undefined!7222) (MissingVacant!7222 (index!31258 (_ BitVec 32))) )
))
(declare-fun lt!321499 () SeekEntryResult!7222)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40995 (_ BitVec 32)) SeekEntryResult!7222)

(assert (=> b!725853 (= res!487044 (= (seekEntryOrOpen!0 (select (arr!19615 a!3186) j!159) a!3186 mask!3328) lt!321499))))

(assert (=> b!725853 (= lt!321499 (Found!7222 j!159))))

(declare-fun e!406470 () Bool)

(declare-fun b!725854 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321497 () SeekEntryResult!7222)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40995 (_ BitVec 32)) SeekEntryResult!7222)

(assert (=> b!725854 (= e!406470 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19615 a!3186) j!159) a!3186 mask!3328) lt!321497))))

(declare-fun b!725855 () Bool)

(declare-fun res!487037 () Bool)

(declare-fun e!406467 () Bool)

(assert (=> b!725855 (=> (not res!487037) (not e!406467))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725855 (= res!487037 (validKeyInArray!0 k0!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!725856 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40995 (_ BitVec 32)) SeekEntryResult!7222)

(assert (=> b!725856 (= e!406466 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19615 a!3186) j!159) a!3186 mask!3328) lt!321499))))

(declare-fun b!725857 () Bool)

(declare-fun e!406465 () Bool)

(declare-fun e!406463 () Bool)

(assert (=> b!725857 (= e!406465 e!406463)))

(declare-fun res!487031 () Bool)

(assert (=> b!725857 (=> (not res!487031) (not e!406463))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725857 (= res!487031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19615 a!3186) j!159) mask!3328) (select (arr!19615 a!3186) j!159) a!3186 mask!3328) lt!321497))))

(assert (=> b!725857 (= lt!321497 (Intermediate!7222 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725858 () Bool)

(declare-fun res!487034 () Bool)

(assert (=> b!725858 (=> (not res!487034) (not e!406467))))

(assert (=> b!725858 (= res!487034 (validKeyInArray!0 (select (arr!19615 a!3186) j!159)))))

(declare-fun b!725859 () Bool)

(declare-fun res!487039 () Bool)

(assert (=> b!725859 (=> (not res!487039) (not e!406465))))

(declare-datatypes ((List!13670 0))(
  ( (Nil!13667) (Cons!13666 (h!14723 (_ BitVec 64)) (t!19993 List!13670)) )
))
(declare-fun arrayNoDuplicates!0 (array!40995 (_ BitVec 32) List!13670) Bool)

(assert (=> b!725859 (= res!487039 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13667))))

(declare-fun b!725860 () Bool)

(declare-fun e!406469 () Bool)

(assert (=> b!725860 (= e!406463 e!406469)))

(declare-fun res!487036 () Bool)

(assert (=> b!725860 (=> (not res!487036) (not e!406469))))

(declare-fun lt!321495 () (_ BitVec 64))

(declare-fun lt!321498 () array!40995)

(assert (=> b!725860 (= res!487036 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321495 mask!3328) lt!321495 lt!321498 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321495 lt!321498 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725860 (= lt!321495 (select (store (arr!19615 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!725860 (= lt!321498 (array!40996 (store (arr!19615 a!3186) i!1173 k0!2102) (size!20036 a!3186)))))

(declare-fun b!725861 () Bool)

(declare-fun res!487030 () Bool)

(assert (=> b!725861 (=> (not res!487030) (not e!406465))))

(assert (=> b!725861 (= res!487030 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20036 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20036 a!3186))))))

(declare-fun b!725862 () Bool)

(assert (=> b!725862 (= e!406470 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19615 a!3186) j!159) a!3186 mask!3328) (Found!7222 j!159)))))

(declare-fun res!487038 () Bool)

(assert (=> start!64524 (=> (not res!487038) (not e!406467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64524 (= res!487038 (validMask!0 mask!3328))))

(assert (=> start!64524 e!406467))

(assert (=> start!64524 true))

(declare-fun array_inv!15389 (array!40995) Bool)

(assert (=> start!64524 (array_inv!15389 a!3186)))

(declare-fun b!725863 () Bool)

(declare-fun res!487042 () Bool)

(assert (=> b!725863 (=> (not res!487042) (not e!406465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40995 (_ BitVec 32)) Bool)

(assert (=> b!725863 (= res!487042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725864 () Bool)

(declare-fun res!487029 () Bool)

(assert (=> b!725864 (=> (not res!487029) (not e!406463))))

(assert (=> b!725864 (= res!487029 e!406470)))

(declare-fun c!79785 () Bool)

(assert (=> b!725864 (= c!79785 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725865 () Bool)

(declare-fun e!406468 () Bool)

(assert (=> b!725865 (= e!406468 (validKeyInArray!0 lt!321495))))

(declare-fun b!725866 () Bool)

(assert (=> b!725866 (= e!406467 e!406465)))

(declare-fun res!487043 () Bool)

(assert (=> b!725866 (=> (not res!487043) (not e!406465))))

(declare-fun lt!321496 () SeekEntryResult!7222)

(assert (=> b!725866 (= res!487043 (or (= lt!321496 (MissingZero!7222 i!1173)) (= lt!321496 (MissingVacant!7222 i!1173))))))

(assert (=> b!725866 (= lt!321496 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!725867 () Bool)

(declare-fun res!487035 () Bool)

(assert (=> b!725867 (=> (not res!487035) (not e!406463))))

(assert (=> b!725867 (= res!487035 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19615 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725868 () Bool)

(declare-fun res!487040 () Bool)

(assert (=> b!725868 (=> (not res!487040) (not e!406467))))

(assert (=> b!725868 (= res!487040 (and (= (size!20036 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20036 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20036 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725869 () Bool)

(declare-fun res!487041 () Bool)

(assert (=> b!725869 (=> (not res!487041) (not e!406467))))

(declare-fun arrayContainsKey!0 (array!40995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725869 (= res!487041 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725870 () Bool)

(assert (=> b!725870 (= e!406469 (not e!406468))))

(declare-fun res!487033 () Bool)

(assert (=> b!725870 (=> res!487033 e!406468)))

(assert (=> b!725870 (= res!487033 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!725870 e!406462))

(declare-fun res!487032 () Bool)

(assert (=> b!725870 (=> (not res!487032) (not e!406462))))

(assert (=> b!725870 (= res!487032 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24762 0))(
  ( (Unit!24763) )
))
(declare-fun lt!321500 () Unit!24762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40995 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24762)

(assert (=> b!725870 (= lt!321500 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!64524 res!487038) b!725868))

(assert (= (and b!725868 res!487040) b!725858))

(assert (= (and b!725858 res!487034) b!725855))

(assert (= (and b!725855 res!487037) b!725869))

(assert (= (and b!725869 res!487041) b!725866))

(assert (= (and b!725866 res!487043) b!725863))

(assert (= (and b!725863 res!487042) b!725859))

(assert (= (and b!725859 res!487039) b!725861))

(assert (= (and b!725861 res!487030) b!725857))

(assert (= (and b!725857 res!487031) b!725867))

(assert (= (and b!725867 res!487035) b!725864))

(assert (= (and b!725864 c!79785) b!725854))

(assert (= (and b!725864 (not c!79785)) b!725862))

(assert (= (and b!725864 res!487029) b!725860))

(assert (= (and b!725860 res!487036) b!725870))

(assert (= (and b!725870 res!487032) b!725853))

(assert (= (and b!725853 res!487044) b!725856))

(assert (= (and b!725870 (not res!487033)) b!725865))

(declare-fun m!680059 () Bool)

(assert (=> b!725863 m!680059))

(declare-fun m!680061 () Bool)

(assert (=> b!725853 m!680061))

(assert (=> b!725853 m!680061))

(declare-fun m!680063 () Bool)

(assert (=> b!725853 m!680063))

(declare-fun m!680065 () Bool)

(assert (=> b!725865 m!680065))

(assert (=> b!725854 m!680061))

(assert (=> b!725854 m!680061))

(declare-fun m!680067 () Bool)

(assert (=> b!725854 m!680067))

(declare-fun m!680069 () Bool)

(assert (=> start!64524 m!680069))

(declare-fun m!680071 () Bool)

(assert (=> start!64524 m!680071))

(declare-fun m!680073 () Bool)

(assert (=> b!725870 m!680073))

(declare-fun m!680075 () Bool)

(assert (=> b!725870 m!680075))

(declare-fun m!680077 () Bool)

(assert (=> b!725855 m!680077))

(assert (=> b!725858 m!680061))

(assert (=> b!725858 m!680061))

(declare-fun m!680079 () Bool)

(assert (=> b!725858 m!680079))

(assert (=> b!725857 m!680061))

(assert (=> b!725857 m!680061))

(declare-fun m!680081 () Bool)

(assert (=> b!725857 m!680081))

(assert (=> b!725857 m!680081))

(assert (=> b!725857 m!680061))

(declare-fun m!680083 () Bool)

(assert (=> b!725857 m!680083))

(declare-fun m!680085 () Bool)

(assert (=> b!725866 m!680085))

(declare-fun m!680087 () Bool)

(assert (=> b!725859 m!680087))

(declare-fun m!680089 () Bool)

(assert (=> b!725860 m!680089))

(declare-fun m!680091 () Bool)

(assert (=> b!725860 m!680091))

(assert (=> b!725860 m!680089))

(declare-fun m!680093 () Bool)

(assert (=> b!725860 m!680093))

(declare-fun m!680095 () Bool)

(assert (=> b!725860 m!680095))

(declare-fun m!680097 () Bool)

(assert (=> b!725860 m!680097))

(assert (=> b!725862 m!680061))

(assert (=> b!725862 m!680061))

(declare-fun m!680099 () Bool)

(assert (=> b!725862 m!680099))

(declare-fun m!680101 () Bool)

(assert (=> b!725867 m!680101))

(declare-fun m!680103 () Bool)

(assert (=> b!725869 m!680103))

(assert (=> b!725856 m!680061))

(assert (=> b!725856 m!680061))

(declare-fun m!680105 () Bool)

(assert (=> b!725856 m!680105))

(check-sat (not b!725862) (not b!725870) (not b!725854) (not b!725860) (not b!725856) (not b!725865) (not b!725858) (not b!725866) (not b!725869) (not b!725863) (not b!725855) (not b!725859) (not start!64524) (not b!725857) (not b!725853))
(check-sat)
