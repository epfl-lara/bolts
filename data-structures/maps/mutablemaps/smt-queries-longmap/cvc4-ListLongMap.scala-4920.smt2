; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67784 () Bool)

(assert start!67784)

(declare-fun b!787037 () Bool)

(declare-fun res!533130 () Bool)

(declare-fun e!437509 () Bool)

(assert (=> b!787037 (=> (not res!533130) (not e!437509))))

(declare-datatypes ((array!42779 0))(
  ( (array!42780 (arr!20474 (Array (_ BitVec 32) (_ BitVec 64))) (size!20895 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42779)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787037 (= res!533130 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787038 () Bool)

(declare-fun res!533134 () Bool)

(declare-fun e!437515 () Bool)

(assert (=> b!787038 (=> (not res!533134) (not e!437515))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!787038 (= res!533134 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20474 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787039 () Bool)

(declare-fun res!533137 () Bool)

(assert (=> b!787039 (=> (not res!533137) (not e!437509))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787039 (= res!533137 (validKeyInArray!0 (select (arr!20474 a!3186) j!159)))))

(declare-fun b!787040 () Bool)

(declare-fun e!437514 () Bool)

(assert (=> b!787040 (= e!437514 e!437515)))

(declare-fun res!533126 () Bool)

(assert (=> b!787040 (=> (not res!533126) (not e!437515))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8081 0))(
  ( (MissingZero!8081 (index!34691 (_ BitVec 32))) (Found!8081 (index!34692 (_ BitVec 32))) (Intermediate!8081 (undefined!8893 Bool) (index!34693 (_ BitVec 32)) (x!65654 (_ BitVec 32))) (Undefined!8081) (MissingVacant!8081 (index!34694 (_ BitVec 32))) )
))
(declare-fun lt!351076 () SeekEntryResult!8081)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42779 (_ BitVec 32)) SeekEntryResult!8081)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787040 (= res!533126 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20474 a!3186) j!159) mask!3328) (select (arr!20474 a!3186) j!159) a!3186 mask!3328) lt!351076))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787040 (= lt!351076 (Intermediate!8081 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787041 () Bool)

(declare-fun res!533128 () Bool)

(assert (=> b!787041 (=> (not res!533128) (not e!437514))))

(declare-datatypes ((List!14529 0))(
  ( (Nil!14526) (Cons!14525 (h!15648 (_ BitVec 64)) (t!20852 List!14529)) )
))
(declare-fun arrayNoDuplicates!0 (array!42779 (_ BitVec 32) List!14529) Bool)

(assert (=> b!787041 (= res!533128 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14526))))

(declare-fun b!787042 () Bool)

(declare-fun res!533136 () Bool)

(assert (=> b!787042 (=> (not res!533136) (not e!437514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42779 (_ BitVec 32)) Bool)

(assert (=> b!787042 (= res!533136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787043 () Bool)

(declare-fun res!533140 () Bool)

(assert (=> b!787043 (=> (not res!533140) (not e!437515))))

(declare-fun e!437513 () Bool)

(assert (=> b!787043 (= res!533140 e!437513)))

(declare-fun c!87365 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!787043 (= c!87365 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787044 () Bool)

(declare-fun e!437516 () Bool)

(declare-fun lt!351081 () SeekEntryResult!8081)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42779 (_ BitVec 32)) SeekEntryResult!8081)

(assert (=> b!787044 (= e!437516 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20474 a!3186) j!159) a!3186 mask!3328) lt!351081))))

(declare-fun b!787045 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!787045 (= e!437513 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20474 a!3186) j!159) a!3186 mask!3328) (Found!8081 j!159)))))

(declare-fun b!787046 () Bool)

(declare-fun res!533122 () Bool)

(assert (=> b!787046 (=> (not res!533122) (not e!437509))))

(assert (=> b!787046 (= res!533122 (and (= (size!20895 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20895 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20895 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787047 () Bool)

(declare-fun e!437512 () Bool)

(declare-fun e!437518 () Bool)

(assert (=> b!787047 (= e!437512 e!437518)))

(declare-fun res!533124 () Bool)

(assert (=> b!787047 (=> res!533124 e!437518)))

(declare-fun lt!351083 () SeekEntryResult!8081)

(assert (=> b!787047 (= res!533124 (not (= lt!351083 lt!351081)))))

(assert (=> b!787047 (= lt!351083 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20474 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787049 () Bool)

(declare-fun e!437517 () Bool)

(assert (=> b!787049 (= e!437515 e!437517)))

(declare-fun res!533133 () Bool)

(assert (=> b!787049 (=> (not res!533133) (not e!437517))))

(declare-fun lt!351084 () SeekEntryResult!8081)

(declare-fun lt!351082 () SeekEntryResult!8081)

(assert (=> b!787049 (= res!533133 (= lt!351084 lt!351082))))

(declare-fun lt!351078 () (_ BitVec 64))

(declare-fun lt!351085 () array!42779)

(assert (=> b!787049 (= lt!351082 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351078 lt!351085 mask!3328))))

(assert (=> b!787049 (= lt!351084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351078 mask!3328) lt!351078 lt!351085 mask!3328))))

(assert (=> b!787049 (= lt!351078 (select (store (arr!20474 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787049 (= lt!351085 (array!42780 (store (arr!20474 a!3186) i!1173 k!2102) (size!20895 a!3186)))))

(declare-fun b!787050 () Bool)

(declare-fun e!437507 () Bool)

(assert (=> b!787050 (= e!437518 e!437507)))

(declare-fun res!533132 () Bool)

(assert (=> b!787050 (=> res!533132 e!437507)))

(declare-fun lt!351080 () (_ BitVec 64))

(assert (=> b!787050 (= res!533132 (= lt!351080 lt!351078))))

(assert (=> b!787050 (= lt!351080 (select (store (arr!20474 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787051 () Bool)

(declare-datatypes ((Unit!27234 0))(
  ( (Unit!27235) )
))
(declare-fun e!437508 () Unit!27234)

(declare-fun Unit!27236 () Unit!27234)

(assert (=> b!787051 (= e!437508 Unit!27236)))

(assert (=> b!787051 false))

(declare-fun b!787052 () Bool)

(assert (=> b!787052 (= e!437517 (not e!437512))))

(declare-fun res!533123 () Bool)

(assert (=> b!787052 (=> res!533123 e!437512)))

(assert (=> b!787052 (= res!533123 (or (not (is-Intermediate!8081 lt!351082)) (bvslt x!1131 (x!65654 lt!351082)) (not (= x!1131 (x!65654 lt!351082))) (not (= index!1321 (index!34693 lt!351082)))))))

(assert (=> b!787052 e!437516))

(declare-fun res!533127 () Bool)

(assert (=> b!787052 (=> (not res!533127) (not e!437516))))

(declare-fun lt!351077 () SeekEntryResult!8081)

(assert (=> b!787052 (= res!533127 (= lt!351077 lt!351081))))

(assert (=> b!787052 (= lt!351081 (Found!8081 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42779 (_ BitVec 32)) SeekEntryResult!8081)

(assert (=> b!787052 (= lt!351077 (seekEntryOrOpen!0 (select (arr!20474 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!787052 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351075 () Unit!27234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27234)

(assert (=> b!787052 (= lt!351075 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787053 () Bool)

(declare-fun res!533138 () Bool)

(assert (=> b!787053 (=> (not res!533138) (not e!437509))))

(assert (=> b!787053 (= res!533138 (validKeyInArray!0 k!2102))))

(declare-fun b!787054 () Bool)

(declare-fun Unit!27237 () Unit!27234)

(assert (=> b!787054 (= e!437508 Unit!27237)))

(declare-fun b!787055 () Bool)

(declare-fun res!533131 () Bool)

(assert (=> b!787055 (=> (not res!533131) (not e!437514))))

(assert (=> b!787055 (= res!533131 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20895 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20895 a!3186))))))

(declare-fun b!787056 () Bool)

(assert (=> b!787056 (= e!437513 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20474 a!3186) j!159) a!3186 mask!3328) lt!351076))))

(declare-fun b!787057 () Bool)

(assert (=> b!787057 (= e!437509 e!437514)))

(declare-fun res!533125 () Bool)

(assert (=> b!787057 (=> (not res!533125) (not e!437514))))

(declare-fun lt!351079 () SeekEntryResult!8081)

(assert (=> b!787057 (= res!533125 (or (= lt!351079 (MissingZero!8081 i!1173)) (= lt!351079 (MissingVacant!8081 i!1173))))))

(assert (=> b!787057 (= lt!351079 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787058 () Bool)

(declare-fun e!437511 () Bool)

(assert (=> b!787058 (= e!437511 (= lt!351077 lt!351083))))

(declare-fun b!787059 () Bool)

(assert (=> b!787059 (= e!437507 true)))

(assert (=> b!787059 e!437511))

(declare-fun res!533129 () Bool)

(assert (=> b!787059 (=> (not res!533129) (not e!437511))))

(assert (=> b!787059 (= res!533129 (= lt!351080 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351074 () Unit!27234)

(assert (=> b!787059 (= lt!351074 e!437508)))

(declare-fun c!87366 () Bool)

(assert (=> b!787059 (= c!87366 (= lt!351080 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!533139 () Bool)

(assert (=> start!67784 (=> (not res!533139) (not e!437509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67784 (= res!533139 (validMask!0 mask!3328))))

(assert (=> start!67784 e!437509))

(assert (=> start!67784 true))

(declare-fun array_inv!16248 (array!42779) Bool)

(assert (=> start!67784 (array_inv!16248 a!3186)))

(declare-fun b!787048 () Bool)

(declare-fun res!533135 () Bool)

(assert (=> b!787048 (=> (not res!533135) (not e!437511))))

(assert (=> b!787048 (= res!533135 (= (seekEntryOrOpen!0 lt!351078 lt!351085 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351078 lt!351085 mask!3328)))))

(assert (= (and start!67784 res!533139) b!787046))

(assert (= (and b!787046 res!533122) b!787039))

(assert (= (and b!787039 res!533137) b!787053))

(assert (= (and b!787053 res!533138) b!787037))

(assert (= (and b!787037 res!533130) b!787057))

(assert (= (and b!787057 res!533125) b!787042))

(assert (= (and b!787042 res!533136) b!787041))

(assert (= (and b!787041 res!533128) b!787055))

(assert (= (and b!787055 res!533131) b!787040))

(assert (= (and b!787040 res!533126) b!787038))

(assert (= (and b!787038 res!533134) b!787043))

(assert (= (and b!787043 c!87365) b!787056))

(assert (= (and b!787043 (not c!87365)) b!787045))

(assert (= (and b!787043 res!533140) b!787049))

(assert (= (and b!787049 res!533133) b!787052))

(assert (= (and b!787052 res!533127) b!787044))

(assert (= (and b!787052 (not res!533123)) b!787047))

(assert (= (and b!787047 (not res!533124)) b!787050))

(assert (= (and b!787050 (not res!533132)) b!787059))

(assert (= (and b!787059 c!87366) b!787051))

(assert (= (and b!787059 (not c!87366)) b!787054))

(assert (= (and b!787059 res!533129) b!787048))

(assert (= (and b!787048 res!533135) b!787058))

(declare-fun m!728757 () Bool)

(assert (=> b!787057 m!728757))

(declare-fun m!728759 () Bool)

(assert (=> b!787047 m!728759))

(assert (=> b!787047 m!728759))

(declare-fun m!728761 () Bool)

(assert (=> b!787047 m!728761))

(assert (=> b!787044 m!728759))

(assert (=> b!787044 m!728759))

(declare-fun m!728763 () Bool)

(assert (=> b!787044 m!728763))

(declare-fun m!728765 () Bool)

(assert (=> b!787038 m!728765))

(declare-fun m!728767 () Bool)

(assert (=> b!787049 m!728767))

(declare-fun m!728769 () Bool)

(assert (=> b!787049 m!728769))

(declare-fun m!728771 () Bool)

(assert (=> b!787049 m!728771))

(declare-fun m!728773 () Bool)

(assert (=> b!787049 m!728773))

(assert (=> b!787049 m!728767))

(declare-fun m!728775 () Bool)

(assert (=> b!787049 m!728775))

(declare-fun m!728777 () Bool)

(assert (=> b!787037 m!728777))

(assert (=> b!787050 m!728771))

(declare-fun m!728779 () Bool)

(assert (=> b!787050 m!728779))

(assert (=> b!787045 m!728759))

(assert (=> b!787045 m!728759))

(assert (=> b!787045 m!728761))

(declare-fun m!728781 () Bool)

(assert (=> b!787042 m!728781))

(assert (=> b!787052 m!728759))

(assert (=> b!787052 m!728759))

(declare-fun m!728783 () Bool)

(assert (=> b!787052 m!728783))

(declare-fun m!728785 () Bool)

(assert (=> b!787052 m!728785))

(declare-fun m!728787 () Bool)

(assert (=> b!787052 m!728787))

(declare-fun m!728789 () Bool)

(assert (=> start!67784 m!728789))

(declare-fun m!728791 () Bool)

(assert (=> start!67784 m!728791))

(declare-fun m!728793 () Bool)

(assert (=> b!787041 m!728793))

(assert (=> b!787040 m!728759))

(assert (=> b!787040 m!728759))

(declare-fun m!728795 () Bool)

(assert (=> b!787040 m!728795))

(assert (=> b!787040 m!728795))

(assert (=> b!787040 m!728759))

(declare-fun m!728797 () Bool)

(assert (=> b!787040 m!728797))

(assert (=> b!787056 m!728759))

(assert (=> b!787056 m!728759))

(declare-fun m!728799 () Bool)

(assert (=> b!787056 m!728799))

(declare-fun m!728801 () Bool)

(assert (=> b!787048 m!728801))

(declare-fun m!728803 () Bool)

(assert (=> b!787048 m!728803))

(assert (=> b!787039 m!728759))

(assert (=> b!787039 m!728759))

(declare-fun m!728805 () Bool)

(assert (=> b!787039 m!728805))

(declare-fun m!728807 () Bool)

(assert (=> b!787053 m!728807))

(push 1)

(assert (not b!787048))

(assert (not b!787049))

(assert (not b!787045))

(assert (not b!787047))

(assert (not b!787053))

(assert (not b!787039))

(assert (not start!67784))

(assert (not b!787042))

(assert (not b!787056))

(assert (not b!787052))

(assert (not b!787041))

(assert (not b!787057))

(assert (not b!787040))

(assert (not b!787044))

(assert (not b!787037))

(check-sat)

