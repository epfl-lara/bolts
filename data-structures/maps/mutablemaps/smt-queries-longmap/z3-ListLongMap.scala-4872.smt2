; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67164 () Bool)

(assert start!67164)

(declare-fun b!775831 () Bool)

(declare-fun res!524854 () Bool)

(declare-fun e!431777 () Bool)

(assert (=> b!775831 (=> (not res!524854) (not e!431777))))

(declare-datatypes ((array!42474 0))(
  ( (array!42475 (arr!20329 (Array (_ BitVec 32) (_ BitVec 64))) (size!20750 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42474)

(declare-datatypes ((List!14384 0))(
  ( (Nil!14381) (Cons!14380 (h!15488 (_ BitVec 64)) (t!20707 List!14384)) )
))
(declare-fun arrayNoDuplicates!0 (array!42474 (_ BitVec 32) List!14384) Bool)

(assert (=> b!775831 (= res!524854 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14381))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7936 0))(
  ( (MissingZero!7936 (index!34111 (_ BitVec 32))) (Found!7936 (index!34112 (_ BitVec 32))) (Intermediate!7936 (undefined!8748 Bool) (index!34113 (_ BitVec 32)) (x!65080 (_ BitVec 32))) (Undefined!7936) (MissingVacant!7936 (index!34114 (_ BitVec 32))) )
))
(declare-fun lt!345647 () SeekEntryResult!7936)

(declare-fun e!431784 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!775832 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42474 (_ BitVec 32)) SeekEntryResult!7936)

(assert (=> b!775832 (= e!431784 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20329 a!3186) j!159) a!3186 mask!3328) lt!345647))))

(declare-fun b!775833 () Bool)

(declare-fun e!431781 () Bool)

(declare-fun e!431778 () Bool)

(assert (=> b!775833 (= e!431781 e!431778)))

(declare-fun res!524855 () Bool)

(assert (=> b!775833 (=> (not res!524855) (not e!431778))))

(declare-fun lt!345655 () SeekEntryResult!7936)

(declare-fun lt!345653 () SeekEntryResult!7936)

(assert (=> b!775833 (= res!524855 (= lt!345655 lt!345653))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!345649 () (_ BitVec 64))

(declare-fun lt!345648 () array!42474)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42474 (_ BitVec 32)) SeekEntryResult!7936)

(assert (=> b!775833 (= lt!345653 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345649 lt!345648 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775833 (= lt!345655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345649 mask!3328) lt!345649 lt!345648 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!775833 (= lt!345649 (select (store (arr!20329 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!775833 (= lt!345648 (array!42475 (store (arr!20329 a!3186) i!1173 k0!2102) (size!20750 a!3186)))))

(declare-fun lt!345654 () SeekEntryResult!7936)

(declare-fun b!775834 () Bool)

(declare-fun e!431783 () Bool)

(assert (=> b!775834 (= e!431783 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20329 a!3186) j!159) a!3186 mask!3328) lt!345654))))

(declare-fun b!775835 () Bool)

(declare-fun res!524853 () Bool)

(assert (=> b!775835 (=> (not res!524853) (not e!431781))))

(assert (=> b!775835 (= res!524853 e!431783)))

(declare-fun c!85890 () Bool)

(assert (=> b!775835 (= c!85890 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775836 () Bool)

(declare-fun res!524865 () Bool)

(assert (=> b!775836 (=> (not res!524865) (not e!431781))))

(assert (=> b!775836 (= res!524865 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20329 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775837 () Bool)

(declare-fun res!524864 () Bool)

(declare-fun e!431782 () Bool)

(assert (=> b!775837 (=> (not res!524864) (not e!431782))))

(assert (=> b!775837 (= res!524864 (and (= (size!20750 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20750 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20750 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775838 () Bool)

(declare-fun res!524861 () Bool)

(assert (=> b!775838 (=> (not res!524861) (not e!431777))))

(assert (=> b!775838 (= res!524861 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20750 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20750 a!3186))))))

(declare-fun b!775839 () Bool)

(declare-fun res!524858 () Bool)

(assert (=> b!775839 (=> (not res!524858) (not e!431782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775839 (= res!524858 (validKeyInArray!0 k0!2102))))

(declare-fun res!524851 () Bool)

(assert (=> start!67164 (=> (not res!524851) (not e!431782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67164 (= res!524851 (validMask!0 mask!3328))))

(assert (=> start!67164 e!431782))

(assert (=> start!67164 true))

(declare-fun array_inv!16103 (array!42474) Bool)

(assert (=> start!67164 (array_inv!16103 a!3186)))

(declare-fun b!775840 () Bool)

(declare-fun res!524852 () Bool)

(assert (=> b!775840 (=> (not res!524852) (not e!431777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42474 (_ BitVec 32)) Bool)

(assert (=> b!775840 (= res!524852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775841 () Bool)

(declare-fun e!431780 () Bool)

(assert (=> b!775841 (= e!431780 true)))

(declare-fun lt!345651 () SeekEntryResult!7936)

(assert (=> b!775841 (= lt!345651 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20329 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!775842 () Bool)

(assert (=> b!775842 (= e!431782 e!431777)))

(declare-fun res!524863 () Bool)

(assert (=> b!775842 (=> (not res!524863) (not e!431777))))

(declare-fun lt!345652 () SeekEntryResult!7936)

(assert (=> b!775842 (= res!524863 (or (= lt!345652 (MissingZero!7936 i!1173)) (= lt!345652 (MissingVacant!7936 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42474 (_ BitVec 32)) SeekEntryResult!7936)

(assert (=> b!775842 (= lt!345652 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!775843 () Bool)

(assert (=> b!775843 (= e!431783 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20329 a!3186) j!159) a!3186 mask!3328) (Found!7936 j!159)))))

(declare-fun b!775844 () Bool)

(assert (=> b!775844 (= e!431777 e!431781)))

(declare-fun res!524866 () Bool)

(assert (=> b!775844 (=> (not res!524866) (not e!431781))))

(assert (=> b!775844 (= res!524866 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20329 a!3186) j!159) mask!3328) (select (arr!20329 a!3186) j!159) a!3186 mask!3328) lt!345654))))

(assert (=> b!775844 (= lt!345654 (Intermediate!7936 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775845 () Bool)

(declare-fun res!524859 () Bool)

(assert (=> b!775845 (=> (not res!524859) (not e!431782))))

(declare-fun arrayContainsKey!0 (array!42474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775845 (= res!524859 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775846 () Bool)

(declare-fun res!524860 () Bool)

(assert (=> b!775846 (=> (not res!524860) (not e!431782))))

(assert (=> b!775846 (= res!524860 (validKeyInArray!0 (select (arr!20329 a!3186) j!159)))))

(declare-fun b!775847 () Bool)

(assert (=> b!775847 (= e!431778 (not e!431780))))

(declare-fun res!524856 () Bool)

(assert (=> b!775847 (=> res!524856 e!431780)))

(get-info :version)

(assert (=> b!775847 (= res!524856 (or (not ((_ is Intermediate!7936) lt!345653)) (bvslt x!1131 (x!65080 lt!345653)) (not (= x!1131 (x!65080 lt!345653))) (not (= index!1321 (index!34113 lt!345653)))))))

(declare-fun e!431785 () Bool)

(assert (=> b!775847 e!431785))

(declare-fun res!524862 () Bool)

(assert (=> b!775847 (=> (not res!524862) (not e!431785))))

(assert (=> b!775847 (= res!524862 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26766 0))(
  ( (Unit!26767) )
))
(declare-fun lt!345650 () Unit!26766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26766)

(assert (=> b!775847 (= lt!345650 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775848 () Bool)

(assert (=> b!775848 (= e!431785 e!431784)))

(declare-fun res!524857 () Bool)

(assert (=> b!775848 (=> (not res!524857) (not e!431784))))

(assert (=> b!775848 (= res!524857 (= (seekEntryOrOpen!0 (select (arr!20329 a!3186) j!159) a!3186 mask!3328) lt!345647))))

(assert (=> b!775848 (= lt!345647 (Found!7936 j!159))))

(assert (= (and start!67164 res!524851) b!775837))

(assert (= (and b!775837 res!524864) b!775846))

(assert (= (and b!775846 res!524860) b!775839))

(assert (= (and b!775839 res!524858) b!775845))

(assert (= (and b!775845 res!524859) b!775842))

(assert (= (and b!775842 res!524863) b!775840))

(assert (= (and b!775840 res!524852) b!775831))

(assert (= (and b!775831 res!524854) b!775838))

(assert (= (and b!775838 res!524861) b!775844))

(assert (= (and b!775844 res!524866) b!775836))

(assert (= (and b!775836 res!524865) b!775835))

(assert (= (and b!775835 c!85890) b!775834))

(assert (= (and b!775835 (not c!85890)) b!775843))

(assert (= (and b!775835 res!524853) b!775833))

(assert (= (and b!775833 res!524855) b!775847))

(assert (= (and b!775847 res!524862) b!775848))

(assert (= (and b!775848 res!524857) b!775832))

(assert (= (and b!775847 (not res!524856)) b!775841))

(declare-fun m!720059 () Bool)

(assert (=> b!775836 m!720059))

(declare-fun m!720061 () Bool)

(assert (=> b!775839 m!720061))

(declare-fun m!720063 () Bool)

(assert (=> b!775848 m!720063))

(assert (=> b!775848 m!720063))

(declare-fun m!720065 () Bool)

(assert (=> b!775848 m!720065))

(assert (=> b!775844 m!720063))

(assert (=> b!775844 m!720063))

(declare-fun m!720067 () Bool)

(assert (=> b!775844 m!720067))

(assert (=> b!775844 m!720067))

(assert (=> b!775844 m!720063))

(declare-fun m!720069 () Bool)

(assert (=> b!775844 m!720069))

(assert (=> b!775834 m!720063))

(assert (=> b!775834 m!720063))

(declare-fun m!720071 () Bool)

(assert (=> b!775834 m!720071))

(declare-fun m!720073 () Bool)

(assert (=> b!775842 m!720073))

(declare-fun m!720075 () Bool)

(assert (=> b!775833 m!720075))

(declare-fun m!720077 () Bool)

(assert (=> b!775833 m!720077))

(declare-fun m!720079 () Bool)

(assert (=> b!775833 m!720079))

(declare-fun m!720081 () Bool)

(assert (=> b!775833 m!720081))

(declare-fun m!720083 () Bool)

(assert (=> b!775833 m!720083))

(assert (=> b!775833 m!720081))

(assert (=> b!775841 m!720063))

(assert (=> b!775841 m!720063))

(declare-fun m!720085 () Bool)

(assert (=> b!775841 m!720085))

(declare-fun m!720087 () Bool)

(assert (=> b!775840 m!720087))

(assert (=> b!775843 m!720063))

(assert (=> b!775843 m!720063))

(assert (=> b!775843 m!720085))

(declare-fun m!720089 () Bool)

(assert (=> start!67164 m!720089))

(declare-fun m!720091 () Bool)

(assert (=> start!67164 m!720091))

(declare-fun m!720093 () Bool)

(assert (=> b!775845 m!720093))

(assert (=> b!775832 m!720063))

(assert (=> b!775832 m!720063))

(declare-fun m!720095 () Bool)

(assert (=> b!775832 m!720095))

(assert (=> b!775846 m!720063))

(assert (=> b!775846 m!720063))

(declare-fun m!720097 () Bool)

(assert (=> b!775846 m!720097))

(declare-fun m!720099 () Bool)

(assert (=> b!775831 m!720099))

(declare-fun m!720101 () Bool)

(assert (=> b!775847 m!720101))

(declare-fun m!720103 () Bool)

(assert (=> b!775847 m!720103))

(check-sat (not b!775841) (not b!775848) (not b!775832) (not b!775845) (not b!775834) (not b!775844) (not b!775839) (not start!67164) (not b!775843) (not b!775847) (not b!775833) (not b!775842) (not b!775846) (not b!775831) (not b!775840))
(check-sat)
