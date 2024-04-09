; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64474 () Bool)

(assert start!64474)

(declare-fun b!724598 () Bool)

(declare-fun res!485928 () Bool)

(declare-fun e!405884 () Bool)

(assert (=> b!724598 (=> (not res!485928) (not e!405884))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40945 0))(
  ( (array!40946 (arr!19590 (Array (_ BitVec 32) (_ BitVec 64))) (size!20011 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40945)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724598 (= res!485928 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19590 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!485931 () Bool)

(declare-fun e!405887 () Bool)

(assert (=> start!64474 (=> (not res!485931) (not e!405887))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64474 (= res!485931 (validMask!0 mask!3328))))

(assert (=> start!64474 e!405887))

(assert (=> start!64474 true))

(declare-fun array_inv!15364 (array!40945) Bool)

(assert (=> start!64474 (array_inv!15364 a!3186)))

(declare-fun b!724599 () Bool)

(declare-fun res!485932 () Bool)

(assert (=> b!724599 (=> (not res!485932) (not e!405887))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!724599 (= res!485932 (and (= (size!20011 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20011 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20011 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724600 () Bool)

(declare-fun res!485933 () Bool)

(declare-fun e!405882 () Bool)

(assert (=> b!724600 (=> (not res!485933) (not e!405882))))

(declare-datatypes ((List!13645 0))(
  ( (Nil!13642) (Cons!13641 (h!14698 (_ BitVec 64)) (t!19968 List!13645)) )
))
(declare-fun arrayNoDuplicates!0 (array!40945 (_ BitVec 32) List!13645) Bool)

(assert (=> b!724600 (= res!485933 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13642))))

(declare-fun b!724601 () Bool)

(declare-fun res!485927 () Bool)

(assert (=> b!724601 (=> (not res!485927) (not e!405887))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724601 (= res!485927 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724602 () Bool)

(declare-fun res!485925 () Bool)

(assert (=> b!724602 (=> (not res!485925) (not e!405882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40945 (_ BitVec 32)) Bool)

(assert (=> b!724602 (= res!485925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724603 () Bool)

(declare-fun e!405886 () Bool)

(assert (=> b!724603 (= e!405886 (not true))))

(declare-fun e!405885 () Bool)

(assert (=> b!724603 e!405885))

(declare-fun res!485936 () Bool)

(assert (=> b!724603 (=> (not res!485936) (not e!405885))))

(assert (=> b!724603 (= res!485936 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24712 0))(
  ( (Unit!24713) )
))
(declare-fun lt!321072 () Unit!24712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40945 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24712)

(assert (=> b!724603 (= lt!321072 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724604 () Bool)

(declare-fun res!485929 () Bool)

(assert (=> b!724604 (=> (not res!485929) (not e!405887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724604 (= res!485929 (validKeyInArray!0 (select (arr!19590 a!3186) j!159)))))

(declare-fun b!724605 () Bool)

(declare-fun res!485934 () Bool)

(assert (=> b!724605 (=> (not res!485934) (not e!405884))))

(declare-fun e!405888 () Bool)

(assert (=> b!724605 (= res!485934 e!405888)))

(declare-fun c!79710 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724605 (= c!79710 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724606 () Bool)

(declare-datatypes ((SeekEntryResult!7197 0))(
  ( (MissingZero!7197 (index!31155 (_ BitVec 32))) (Found!7197 (index!31156 (_ BitVec 32))) (Intermediate!7197 (undefined!8009 Bool) (index!31157 (_ BitVec 32)) (x!62184 (_ BitVec 32))) (Undefined!7197) (MissingVacant!7197 (index!31158 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40945 (_ BitVec 32)) SeekEntryResult!7197)

(assert (=> b!724606 (= e!405885 (= (seekEntryOrOpen!0 (select (arr!19590 a!3186) j!159) a!3186 mask!3328) (Found!7197 j!159)))))

(declare-fun b!724607 () Bool)

(assert (=> b!724607 (= e!405882 e!405884)))

(declare-fun res!485924 () Bool)

(assert (=> b!724607 (=> (not res!485924) (not e!405884))))

(declare-fun lt!321074 () SeekEntryResult!7197)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40945 (_ BitVec 32)) SeekEntryResult!7197)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724607 (= res!485924 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19590 a!3186) j!159) mask!3328) (select (arr!19590 a!3186) j!159) a!3186 mask!3328) lt!321074))))

(assert (=> b!724607 (= lt!321074 (Intermediate!7197 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724608 () Bool)

(declare-fun res!485935 () Bool)

(assert (=> b!724608 (=> (not res!485935) (not e!405887))))

(assert (=> b!724608 (= res!485935 (validKeyInArray!0 k!2102))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!724609 () Bool)

(assert (=> b!724609 (= e!405888 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19590 a!3186) j!159) a!3186 mask!3328) lt!321074))))

(declare-fun b!724610 () Bool)

(declare-fun res!485937 () Bool)

(assert (=> b!724610 (=> (not res!485937) (not e!405882))))

(assert (=> b!724610 (= res!485937 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20011 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20011 a!3186))))))

(declare-fun b!724611 () Bool)

(assert (=> b!724611 (= e!405884 e!405886)))

(declare-fun res!485926 () Bool)

(assert (=> b!724611 (=> (not res!485926) (not e!405886))))

(declare-fun lt!321071 () (_ BitVec 64))

(declare-fun lt!321070 () array!40945)

(assert (=> b!724611 (= res!485926 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321071 mask!3328) lt!321071 lt!321070 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321071 lt!321070 mask!3328)))))

(assert (=> b!724611 (= lt!321071 (select (store (arr!19590 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724611 (= lt!321070 (array!40946 (store (arr!19590 a!3186) i!1173 k!2102) (size!20011 a!3186)))))

(declare-fun b!724612 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40945 (_ BitVec 32)) SeekEntryResult!7197)

(assert (=> b!724612 (= e!405888 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19590 a!3186) j!159) a!3186 mask!3328) (Found!7197 j!159)))))

(declare-fun b!724613 () Bool)

(assert (=> b!724613 (= e!405887 e!405882)))

(declare-fun res!485930 () Bool)

(assert (=> b!724613 (=> (not res!485930) (not e!405882))))

(declare-fun lt!321073 () SeekEntryResult!7197)

(assert (=> b!724613 (= res!485930 (or (= lt!321073 (MissingZero!7197 i!1173)) (= lt!321073 (MissingVacant!7197 i!1173))))))

(assert (=> b!724613 (= lt!321073 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64474 res!485931) b!724599))

(assert (= (and b!724599 res!485932) b!724604))

(assert (= (and b!724604 res!485929) b!724608))

(assert (= (and b!724608 res!485935) b!724601))

(assert (= (and b!724601 res!485927) b!724613))

(assert (= (and b!724613 res!485930) b!724602))

(assert (= (and b!724602 res!485925) b!724600))

(assert (= (and b!724600 res!485933) b!724610))

(assert (= (and b!724610 res!485937) b!724607))

(assert (= (and b!724607 res!485924) b!724598))

(assert (= (and b!724598 res!485928) b!724605))

(assert (= (and b!724605 c!79710) b!724609))

(assert (= (and b!724605 (not c!79710)) b!724612))

(assert (= (and b!724605 res!485934) b!724611))

(assert (= (and b!724611 res!485926) b!724603))

(assert (= (and b!724603 res!485936) b!724606))

(declare-fun m!678925 () Bool)

(assert (=> b!724600 m!678925))

(declare-fun m!678927 () Bool)

(assert (=> b!724606 m!678927))

(assert (=> b!724606 m!678927))

(declare-fun m!678929 () Bool)

(assert (=> b!724606 m!678929))

(declare-fun m!678931 () Bool)

(assert (=> start!64474 m!678931))

(declare-fun m!678933 () Bool)

(assert (=> start!64474 m!678933))

(declare-fun m!678935 () Bool)

(assert (=> b!724601 m!678935))

(declare-fun m!678937 () Bool)

(assert (=> b!724603 m!678937))

(declare-fun m!678939 () Bool)

(assert (=> b!724603 m!678939))

(declare-fun m!678941 () Bool)

(assert (=> b!724598 m!678941))

(assert (=> b!724604 m!678927))

(assert (=> b!724604 m!678927))

(declare-fun m!678943 () Bool)

(assert (=> b!724604 m!678943))

(assert (=> b!724609 m!678927))

(assert (=> b!724609 m!678927))

(declare-fun m!678945 () Bool)

(assert (=> b!724609 m!678945))

(declare-fun m!678947 () Bool)

(assert (=> b!724602 m!678947))

(declare-fun m!678949 () Bool)

(assert (=> b!724613 m!678949))

(declare-fun m!678951 () Bool)

(assert (=> b!724608 m!678951))

(assert (=> b!724612 m!678927))

(assert (=> b!724612 m!678927))

(declare-fun m!678953 () Bool)

(assert (=> b!724612 m!678953))

(declare-fun m!678955 () Bool)

(assert (=> b!724611 m!678955))

(declare-fun m!678957 () Bool)

(assert (=> b!724611 m!678957))

(declare-fun m!678959 () Bool)

(assert (=> b!724611 m!678959))

(assert (=> b!724611 m!678955))

(declare-fun m!678961 () Bool)

(assert (=> b!724611 m!678961))

(declare-fun m!678963 () Bool)

(assert (=> b!724611 m!678963))

(assert (=> b!724607 m!678927))

(assert (=> b!724607 m!678927))

(declare-fun m!678965 () Bool)

(assert (=> b!724607 m!678965))

(assert (=> b!724607 m!678965))

(assert (=> b!724607 m!678927))

(declare-fun m!678967 () Bool)

(assert (=> b!724607 m!678967))

(push 1)

