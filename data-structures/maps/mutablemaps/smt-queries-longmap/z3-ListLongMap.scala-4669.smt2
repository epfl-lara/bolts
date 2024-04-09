; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64950 () Bool)

(assert start!64950)

(declare-fun b!732851 () Bool)

(declare-fun res!492524 () Bool)

(declare-fun e!410097 () Bool)

(assert (=> b!732851 (=> (not res!492524) (not e!410097))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41214 0))(
  ( (array!41215 (arr!19720 (Array (_ BitVec 32) (_ BitVec 64))) (size!20141 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41214)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!732851 (= res!492524 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20141 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20141 a!3186))))))

(declare-fun e!410101 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!732852 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7327 0))(
  ( (MissingZero!7327 (index!31675 (_ BitVec 32))) (Found!7327 (index!31676 (_ BitVec 32))) (Intermediate!7327 (undefined!8139 Bool) (index!31677 (_ BitVec 32)) (x!62694 (_ BitVec 32))) (Undefined!7327) (MissingVacant!7327 (index!31678 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41214 (_ BitVec 32)) SeekEntryResult!7327)

(assert (=> b!732852 (= e!410101 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19720 a!3186) j!159) a!3186 mask!3328) (Found!7327 j!159)))))

(declare-fun b!732853 () Bool)

(declare-fun e!410099 () Bool)

(declare-fun e!410098 () Bool)

(assert (=> b!732853 (= e!410099 e!410098)))

(declare-fun res!492526 () Bool)

(assert (=> b!732853 (=> (not res!492526) (not e!410098))))

(declare-fun lt!324812 () SeekEntryResult!7327)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41214 (_ BitVec 32)) SeekEntryResult!7327)

(assert (=> b!732853 (= res!492526 (= (seekEntryOrOpen!0 (select (arr!19720 a!3186) j!159) a!3186 mask!3328) lt!324812))))

(assert (=> b!732853 (= lt!324812 (Found!7327 j!159))))

(declare-fun b!732855 () Bool)

(declare-fun res!492527 () Bool)

(declare-fun e!410100 () Bool)

(assert (=> b!732855 (=> (not res!492527) (not e!410100))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732855 (= res!492527 (and (= (size!20141 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20141 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20141 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732856 () Bool)

(assert (=> b!732856 (= e!410098 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19720 a!3186) j!159) a!3186 mask!3328) lt!324812))))

(declare-fun b!732857 () Bool)

(declare-fun e!410096 () Bool)

(assert (=> b!732857 (= e!410097 e!410096)))

(declare-fun res!492533 () Bool)

(assert (=> b!732857 (=> (not res!492533) (not e!410096))))

(declare-fun lt!324815 () SeekEntryResult!7327)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41214 (_ BitVec 32)) SeekEntryResult!7327)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732857 (= res!492533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19720 a!3186) j!159) mask!3328) (select (arr!19720 a!3186) j!159) a!3186 mask!3328) lt!324815))))

(assert (=> b!732857 (= lt!324815 (Intermediate!7327 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732858 () Bool)

(declare-fun e!410103 () Bool)

(assert (=> b!732858 (= e!410096 e!410103)))

(declare-fun res!492529 () Bool)

(assert (=> b!732858 (=> (not res!492529) (not e!410103))))

(declare-fun lt!324818 () SeekEntryResult!7327)

(declare-fun lt!324811 () SeekEntryResult!7327)

(assert (=> b!732858 (= res!492529 (= lt!324818 lt!324811))))

(declare-fun lt!324813 () (_ BitVec 64))

(declare-fun lt!324810 () array!41214)

(assert (=> b!732858 (= lt!324811 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324813 lt!324810 mask!3328))))

(assert (=> b!732858 (= lt!324818 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324813 mask!3328) lt!324813 lt!324810 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!732858 (= lt!324813 (select (store (arr!19720 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!732858 (= lt!324810 (array!41215 (store (arr!19720 a!3186) i!1173 k0!2102) (size!20141 a!3186)))))

(declare-fun b!732859 () Bool)

(declare-fun e!410094 () Bool)

(assert (=> b!732859 (= e!410094 true)))

(declare-fun lt!324809 () SeekEntryResult!7327)

(assert (=> b!732859 (= lt!324809 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19720 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732860 () Bool)

(declare-fun res!492536 () Bool)

(assert (=> b!732860 (=> (not res!492536) (not e!410096))))

(assert (=> b!732860 (= res!492536 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19720 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732861 () Bool)

(declare-fun res!492539 () Bool)

(assert (=> b!732861 (=> (not res!492539) (not e!410100))))

(declare-fun arrayContainsKey!0 (array!41214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732861 (= res!492539 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732862 () Bool)

(declare-fun e!410102 () Bool)

(assert (=> b!732862 (= e!410103 (not e!410102))))

(declare-fun res!492525 () Bool)

(assert (=> b!732862 (=> res!492525 e!410102)))

(get-info :version)

(assert (=> b!732862 (= res!492525 (or (not ((_ is Intermediate!7327) lt!324811)) (bvsge x!1131 (x!62694 lt!324811))))))

(assert (=> b!732862 e!410099))

(declare-fun res!492528 () Bool)

(assert (=> b!732862 (=> (not res!492528) (not e!410099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41214 (_ BitVec 32)) Bool)

(assert (=> b!732862 (= res!492528 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24972 0))(
  ( (Unit!24973) )
))
(declare-fun lt!324814 () Unit!24972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41214 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24972)

(assert (=> b!732862 (= lt!324814 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732863 () Bool)

(assert (=> b!732863 (= e!410101 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19720 a!3186) j!159) a!3186 mask!3328) lt!324815))))

(declare-fun b!732864 () Bool)

(declare-fun res!492530 () Bool)

(assert (=> b!732864 (=> (not res!492530) (not e!410097))))

(assert (=> b!732864 (= res!492530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732865 () Bool)

(declare-fun res!492537 () Bool)

(assert (=> b!732865 (=> (not res!492537) (not e!410100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732865 (= res!492537 (validKeyInArray!0 (select (arr!19720 a!3186) j!159)))))

(declare-fun b!732854 () Bool)

(declare-fun res!492540 () Bool)

(assert (=> b!732854 (=> (not res!492540) (not e!410100))))

(assert (=> b!732854 (= res!492540 (validKeyInArray!0 k0!2102))))

(declare-fun res!492532 () Bool)

(assert (=> start!64950 (=> (not res!492532) (not e!410100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64950 (= res!492532 (validMask!0 mask!3328))))

(assert (=> start!64950 e!410100))

(assert (=> start!64950 true))

(declare-fun array_inv!15494 (array!41214) Bool)

(assert (=> start!64950 (array_inv!15494 a!3186)))

(declare-fun b!732866 () Bool)

(declare-fun res!492534 () Bool)

(assert (=> b!732866 (=> (not res!492534) (not e!410097))))

(declare-datatypes ((List!13775 0))(
  ( (Nil!13772) (Cons!13771 (h!14837 (_ BitVec 64)) (t!20098 List!13775)) )
))
(declare-fun arrayNoDuplicates!0 (array!41214 (_ BitVec 32) List!13775) Bool)

(assert (=> b!732866 (= res!492534 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13772))))

(declare-fun b!732867 () Bool)

(assert (=> b!732867 (= e!410102 e!410094)))

(declare-fun res!492538 () Bool)

(assert (=> b!732867 (=> res!492538 e!410094)))

(assert (=> b!732867 (= res!492538 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324816 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732867 (= lt!324816 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732868 () Bool)

(declare-fun res!492531 () Bool)

(assert (=> b!732868 (=> (not res!492531) (not e!410096))))

(assert (=> b!732868 (= res!492531 e!410101)))

(declare-fun c!80541 () Bool)

(assert (=> b!732868 (= c!80541 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732869 () Bool)

(assert (=> b!732869 (= e!410100 e!410097)))

(declare-fun res!492535 () Bool)

(assert (=> b!732869 (=> (not res!492535) (not e!410097))))

(declare-fun lt!324817 () SeekEntryResult!7327)

(assert (=> b!732869 (= res!492535 (or (= lt!324817 (MissingZero!7327 i!1173)) (= lt!324817 (MissingVacant!7327 i!1173))))))

(assert (=> b!732869 (= lt!324817 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!64950 res!492532) b!732855))

(assert (= (and b!732855 res!492527) b!732865))

(assert (= (and b!732865 res!492537) b!732854))

(assert (= (and b!732854 res!492540) b!732861))

(assert (= (and b!732861 res!492539) b!732869))

(assert (= (and b!732869 res!492535) b!732864))

(assert (= (and b!732864 res!492530) b!732866))

(assert (= (and b!732866 res!492534) b!732851))

(assert (= (and b!732851 res!492524) b!732857))

(assert (= (and b!732857 res!492533) b!732860))

(assert (= (and b!732860 res!492536) b!732868))

(assert (= (and b!732868 c!80541) b!732863))

(assert (= (and b!732868 (not c!80541)) b!732852))

(assert (= (and b!732868 res!492531) b!732858))

(assert (= (and b!732858 res!492529) b!732862))

(assert (= (and b!732862 res!492528) b!732853))

(assert (= (and b!732853 res!492526) b!732856))

(assert (= (and b!732862 (not res!492525)) b!732867))

(assert (= (and b!732867 (not res!492538)) b!732859))

(declare-fun m!685921 () Bool)

(assert (=> b!732860 m!685921))

(declare-fun m!685923 () Bool)

(assert (=> b!732861 m!685923))

(declare-fun m!685925 () Bool)

(assert (=> b!732858 m!685925))

(declare-fun m!685927 () Bool)

(assert (=> b!732858 m!685927))

(declare-fun m!685929 () Bool)

(assert (=> b!732858 m!685929))

(declare-fun m!685931 () Bool)

(assert (=> b!732858 m!685931))

(assert (=> b!732858 m!685929))

(declare-fun m!685933 () Bool)

(assert (=> b!732858 m!685933))

(declare-fun m!685935 () Bool)

(assert (=> start!64950 m!685935))

(declare-fun m!685937 () Bool)

(assert (=> start!64950 m!685937))

(declare-fun m!685939 () Bool)

(assert (=> b!732856 m!685939))

(assert (=> b!732856 m!685939))

(declare-fun m!685941 () Bool)

(assert (=> b!732856 m!685941))

(assert (=> b!732857 m!685939))

(assert (=> b!732857 m!685939))

(declare-fun m!685943 () Bool)

(assert (=> b!732857 m!685943))

(assert (=> b!732857 m!685943))

(assert (=> b!732857 m!685939))

(declare-fun m!685945 () Bool)

(assert (=> b!732857 m!685945))

(assert (=> b!732863 m!685939))

(assert (=> b!732863 m!685939))

(declare-fun m!685947 () Bool)

(assert (=> b!732863 m!685947))

(declare-fun m!685949 () Bool)

(assert (=> b!732867 m!685949))

(assert (=> b!732853 m!685939))

(assert (=> b!732853 m!685939))

(declare-fun m!685951 () Bool)

(assert (=> b!732853 m!685951))

(declare-fun m!685953 () Bool)

(assert (=> b!732869 m!685953))

(declare-fun m!685955 () Bool)

(assert (=> b!732854 m!685955))

(assert (=> b!732859 m!685939))

(assert (=> b!732859 m!685939))

(declare-fun m!685957 () Bool)

(assert (=> b!732859 m!685957))

(declare-fun m!685959 () Bool)

(assert (=> b!732862 m!685959))

(declare-fun m!685961 () Bool)

(assert (=> b!732862 m!685961))

(declare-fun m!685963 () Bool)

(assert (=> b!732866 m!685963))

(declare-fun m!685965 () Bool)

(assert (=> b!732864 m!685965))

(assert (=> b!732865 m!685939))

(assert (=> b!732865 m!685939))

(declare-fun m!685967 () Bool)

(assert (=> b!732865 m!685967))

(assert (=> b!732852 m!685939))

(assert (=> b!732852 m!685939))

(assert (=> b!732852 m!685957))

(check-sat (not b!732852) (not b!732858) (not b!732869) (not b!732859) (not b!732853) (not b!732867) (not b!732861) (not b!732866) (not b!732864) (not b!732857) (not b!732863) (not b!732856) (not b!732865) (not b!732862) (not b!732854) (not start!64950))
(check-sat)
