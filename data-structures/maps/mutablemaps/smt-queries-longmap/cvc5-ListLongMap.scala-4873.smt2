; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67168 () Bool)

(assert start!67168)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42478 0))(
  ( (array!42479 (arr!20331 (Array (_ BitVec 32) (_ BitVec 64))) (size!20752 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42478)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!431836 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!775939 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7938 0))(
  ( (MissingZero!7938 (index!34119 (_ BitVec 32))) (Found!7938 (index!34120 (_ BitVec 32))) (Intermediate!7938 (undefined!8750 Bool) (index!34121 (_ BitVec 32)) (x!65090 (_ BitVec 32))) (Undefined!7938) (MissingVacant!7938 (index!34122 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42478 (_ BitVec 32)) SeekEntryResult!7938)

(assert (=> b!775939 (= e!431836 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20331 a!3186) j!159) a!3186 mask!3328) (Found!7938 j!159)))))

(declare-fun lt!345707 () SeekEntryResult!7938)

(declare-fun e!431834 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!775940 () Bool)

(assert (=> b!775940 (= e!431834 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20331 a!3186) j!159) a!3186 mask!3328) lt!345707))))

(declare-fun b!775941 () Bool)

(declare-fun res!524948 () Bool)

(declare-fun e!431835 () Bool)

(assert (=> b!775941 (=> (not res!524948) (not e!431835))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775941 (= res!524948 (and (= (size!20752 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20752 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20752 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775942 () Bool)

(declare-fun res!524956 () Bool)

(declare-fun e!431833 () Bool)

(assert (=> b!775942 (=> (not res!524956) (not e!431833))))

(declare-datatypes ((List!14386 0))(
  ( (Nil!14383) (Cons!14382 (h!15490 (_ BitVec 64)) (t!20709 List!14386)) )
))
(declare-fun arrayNoDuplicates!0 (array!42478 (_ BitVec 32) List!14386) Bool)

(assert (=> b!775942 (= res!524956 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14383))))

(declare-fun b!775944 () Bool)

(declare-fun e!431832 () Bool)

(assert (=> b!775944 (= e!431832 true)))

(declare-fun lt!345701 () SeekEntryResult!7938)

(assert (=> b!775944 (= lt!345701 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20331 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!345709 () SeekEntryResult!7938)

(declare-fun b!775945 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42478 (_ BitVec 32)) SeekEntryResult!7938)

(assert (=> b!775945 (= e!431836 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20331 a!3186) j!159) a!3186 mask!3328) lt!345709))))

(declare-fun b!775946 () Bool)

(assert (=> b!775946 (= e!431835 e!431833)))

(declare-fun res!524950 () Bool)

(assert (=> b!775946 (=> (not res!524950) (not e!431833))))

(declare-fun lt!345702 () SeekEntryResult!7938)

(assert (=> b!775946 (= res!524950 (or (= lt!345702 (MissingZero!7938 i!1173)) (= lt!345702 (MissingVacant!7938 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42478 (_ BitVec 32)) SeekEntryResult!7938)

(assert (=> b!775946 (= lt!345702 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775947 () Bool)

(declare-fun e!431837 () Bool)

(assert (=> b!775947 (= e!431833 e!431837)))

(declare-fun res!524961 () Bool)

(assert (=> b!775947 (=> (not res!524961) (not e!431837))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775947 (= res!524961 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20331 a!3186) j!159) mask!3328) (select (arr!20331 a!3186) j!159) a!3186 mask!3328) lt!345709))))

(assert (=> b!775947 (= lt!345709 (Intermediate!7938 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775948 () Bool)

(declare-fun res!524959 () Bool)

(assert (=> b!775948 (=> (not res!524959) (not e!431833))))

(assert (=> b!775948 (= res!524959 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20752 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20752 a!3186))))))

(declare-fun b!775949 () Bool)

(declare-fun e!431839 () Bool)

(assert (=> b!775949 (= e!431839 (not e!431832))))

(declare-fun res!524951 () Bool)

(assert (=> b!775949 (=> res!524951 e!431832)))

(declare-fun lt!345708 () SeekEntryResult!7938)

(assert (=> b!775949 (= res!524951 (or (not (is-Intermediate!7938 lt!345708)) (bvslt x!1131 (x!65090 lt!345708)) (not (= x!1131 (x!65090 lt!345708))) (not (= index!1321 (index!34121 lt!345708)))))))

(declare-fun e!431831 () Bool)

(assert (=> b!775949 e!431831))

(declare-fun res!524960 () Bool)

(assert (=> b!775949 (=> (not res!524960) (not e!431831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42478 (_ BitVec 32)) Bool)

(assert (=> b!775949 (= res!524960 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26770 0))(
  ( (Unit!26771) )
))
(declare-fun lt!345705 () Unit!26770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26770)

(assert (=> b!775949 (= lt!345705 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775950 () Bool)

(declare-fun res!524949 () Bool)

(assert (=> b!775950 (=> (not res!524949) (not e!431835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775950 (= res!524949 (validKeyInArray!0 k!2102))))

(declare-fun b!775951 () Bool)

(declare-fun res!524962 () Bool)

(assert (=> b!775951 (=> (not res!524962) (not e!431837))))

(assert (=> b!775951 (= res!524962 e!431836)))

(declare-fun c!85896 () Bool)

(assert (=> b!775951 (= c!85896 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775952 () Bool)

(assert (=> b!775952 (= e!431831 e!431834)))

(declare-fun res!524954 () Bool)

(assert (=> b!775952 (=> (not res!524954) (not e!431834))))

(assert (=> b!775952 (= res!524954 (= (seekEntryOrOpen!0 (select (arr!20331 a!3186) j!159) a!3186 mask!3328) lt!345707))))

(assert (=> b!775952 (= lt!345707 (Found!7938 j!159))))

(declare-fun b!775953 () Bool)

(declare-fun res!524952 () Bool)

(assert (=> b!775953 (=> (not res!524952) (not e!431833))))

(assert (=> b!775953 (= res!524952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775954 () Bool)

(assert (=> b!775954 (= e!431837 e!431839)))

(declare-fun res!524958 () Bool)

(assert (=> b!775954 (=> (not res!524958) (not e!431839))))

(declare-fun lt!345703 () SeekEntryResult!7938)

(assert (=> b!775954 (= res!524958 (= lt!345703 lt!345708))))

(declare-fun lt!345706 () array!42478)

(declare-fun lt!345704 () (_ BitVec 64))

(assert (=> b!775954 (= lt!345708 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345704 lt!345706 mask!3328))))

(assert (=> b!775954 (= lt!345703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345704 mask!3328) lt!345704 lt!345706 mask!3328))))

(assert (=> b!775954 (= lt!345704 (select (store (arr!20331 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775954 (= lt!345706 (array!42479 (store (arr!20331 a!3186) i!1173 k!2102) (size!20752 a!3186)))))

(declare-fun res!524955 () Bool)

(assert (=> start!67168 (=> (not res!524955) (not e!431835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67168 (= res!524955 (validMask!0 mask!3328))))

(assert (=> start!67168 e!431835))

(assert (=> start!67168 true))

(declare-fun array_inv!16105 (array!42478) Bool)

(assert (=> start!67168 (array_inv!16105 a!3186)))

(declare-fun b!775943 () Bool)

(declare-fun res!524947 () Bool)

(assert (=> b!775943 (=> (not res!524947) (not e!431835))))

(declare-fun arrayContainsKey!0 (array!42478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775943 (= res!524947 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775955 () Bool)

(declare-fun res!524957 () Bool)

(assert (=> b!775955 (=> (not res!524957) (not e!431835))))

(assert (=> b!775955 (= res!524957 (validKeyInArray!0 (select (arr!20331 a!3186) j!159)))))

(declare-fun b!775956 () Bool)

(declare-fun res!524953 () Bool)

(assert (=> b!775956 (=> (not res!524953) (not e!431837))))

(assert (=> b!775956 (= res!524953 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20331 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67168 res!524955) b!775941))

(assert (= (and b!775941 res!524948) b!775955))

(assert (= (and b!775955 res!524957) b!775950))

(assert (= (and b!775950 res!524949) b!775943))

(assert (= (and b!775943 res!524947) b!775946))

(assert (= (and b!775946 res!524950) b!775953))

(assert (= (and b!775953 res!524952) b!775942))

(assert (= (and b!775942 res!524956) b!775948))

(assert (= (and b!775948 res!524959) b!775947))

(assert (= (and b!775947 res!524961) b!775956))

(assert (= (and b!775956 res!524953) b!775951))

(assert (= (and b!775951 c!85896) b!775945))

(assert (= (and b!775951 (not c!85896)) b!775939))

(assert (= (and b!775951 res!524962) b!775954))

(assert (= (and b!775954 res!524958) b!775949))

(assert (= (and b!775949 res!524960) b!775952))

(assert (= (and b!775952 res!524954) b!775940))

(assert (= (and b!775949 (not res!524951)) b!775944))

(declare-fun m!720151 () Bool)

(assert (=> start!67168 m!720151))

(declare-fun m!720153 () Bool)

(assert (=> start!67168 m!720153))

(declare-fun m!720155 () Bool)

(assert (=> b!775945 m!720155))

(assert (=> b!775945 m!720155))

(declare-fun m!720157 () Bool)

(assert (=> b!775945 m!720157))

(declare-fun m!720159 () Bool)

(assert (=> b!775950 m!720159))

(assert (=> b!775944 m!720155))

(assert (=> b!775944 m!720155))

(declare-fun m!720161 () Bool)

(assert (=> b!775944 m!720161))

(declare-fun m!720163 () Bool)

(assert (=> b!775946 m!720163))

(assert (=> b!775940 m!720155))

(assert (=> b!775940 m!720155))

(declare-fun m!720165 () Bool)

(assert (=> b!775940 m!720165))

(declare-fun m!720167 () Bool)

(assert (=> b!775953 m!720167))

(assert (=> b!775939 m!720155))

(assert (=> b!775939 m!720155))

(assert (=> b!775939 m!720161))

(declare-fun m!720169 () Bool)

(assert (=> b!775949 m!720169))

(declare-fun m!720171 () Bool)

(assert (=> b!775949 m!720171))

(declare-fun m!720173 () Bool)

(assert (=> b!775943 m!720173))

(assert (=> b!775955 m!720155))

(assert (=> b!775955 m!720155))

(declare-fun m!720175 () Bool)

(assert (=> b!775955 m!720175))

(assert (=> b!775952 m!720155))

(assert (=> b!775952 m!720155))

(declare-fun m!720177 () Bool)

(assert (=> b!775952 m!720177))

(assert (=> b!775947 m!720155))

(assert (=> b!775947 m!720155))

(declare-fun m!720179 () Bool)

(assert (=> b!775947 m!720179))

(assert (=> b!775947 m!720179))

(assert (=> b!775947 m!720155))

(declare-fun m!720181 () Bool)

(assert (=> b!775947 m!720181))

(declare-fun m!720183 () Bool)

(assert (=> b!775956 m!720183))

(declare-fun m!720185 () Bool)

(assert (=> b!775942 m!720185))

(declare-fun m!720187 () Bool)

(assert (=> b!775954 m!720187))

(declare-fun m!720189 () Bool)

(assert (=> b!775954 m!720189))

(declare-fun m!720191 () Bool)

(assert (=> b!775954 m!720191))

(declare-fun m!720193 () Bool)

(assert (=> b!775954 m!720193))

(declare-fun m!720195 () Bool)

(assert (=> b!775954 m!720195))

(assert (=> b!775954 m!720191))

(push 1)

