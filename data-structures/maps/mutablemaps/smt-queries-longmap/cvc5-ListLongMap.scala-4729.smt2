; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65452 () Bool)

(assert start!65452)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41578 0))(
  ( (array!41579 (arr!19899 (Array (_ BitVec 32) (_ BitVec 64))) (size!20320 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41578)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!416166 () Bool)

(declare-fun b!745040 () Bool)

(declare-datatypes ((SeekEntryResult!7506 0))(
  ( (MissingZero!7506 (index!32391 (_ BitVec 32))) (Found!7506 (index!32392 (_ BitVec 32))) (Intermediate!7506 (undefined!8318 Bool) (index!32393 (_ BitVec 32)) (x!63377 (_ BitVec 32))) (Undefined!7506) (MissingVacant!7506 (index!32394 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41578 (_ BitVec 32)) SeekEntryResult!7506)

(assert (=> b!745040 (= e!416166 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19899 a!3186) j!159) a!3186 mask!3328) (Found!7506 j!159)))))

(declare-fun b!745041 () Bool)

(declare-fun res!502097 () Bool)

(declare-fun e!416171 () Bool)

(assert (=> b!745041 (=> (not res!502097) (not e!416171))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745041 (= res!502097 (validKeyInArray!0 k!2102))))

(declare-fun b!745042 () Bool)

(declare-fun res!502098 () Bool)

(declare-fun e!416167 () Bool)

(assert (=> b!745042 (=> res!502098 e!416167)))

(assert (=> b!745042 (= res!502098 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19899 a!3186) j!159) a!3186 mask!3328) (Found!7506 j!159))))))

(declare-fun lt!331013 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun b!745043 () Bool)

(assert (=> b!745043 (= e!416167 (or (= (select (store (arr!19899 a!3186) i!1173 k!2102) index!1321) lt!331013) (not (= (select (store (arr!19899 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!745044 () Bool)

(declare-fun res!502086 () Bool)

(declare-fun e!416169 () Bool)

(assert (=> b!745044 (=> (not res!502086) (not e!416169))))

(declare-datatypes ((List!13954 0))(
  ( (Nil!13951) (Cons!13950 (h!15022 (_ BitVec 64)) (t!20277 List!13954)) )
))
(declare-fun arrayNoDuplicates!0 (array!41578 (_ BitVec 32) List!13954) Bool)

(assert (=> b!745044 (= res!502086 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13951))))

(declare-fun b!745045 () Bool)

(declare-fun res!502089 () Bool)

(assert (=> b!745045 (=> (not res!502089) (not e!416169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41578 (_ BitVec 32)) Bool)

(assert (=> b!745045 (= res!502089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745046 () Bool)

(assert (=> b!745046 (= e!416171 e!416169)))

(declare-fun res!502101 () Bool)

(assert (=> b!745046 (=> (not res!502101) (not e!416169))))

(declare-fun lt!331016 () SeekEntryResult!7506)

(assert (=> b!745046 (= res!502101 (or (= lt!331016 (MissingZero!7506 i!1173)) (= lt!331016 (MissingVacant!7506 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41578 (_ BitVec 32)) SeekEntryResult!7506)

(assert (=> b!745046 (= lt!331016 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745047 () Bool)

(declare-fun res!502087 () Bool)

(declare-fun e!416168 () Bool)

(assert (=> b!745047 (=> (not res!502087) (not e!416168))))

(assert (=> b!745047 (= res!502087 e!416166)))

(declare-fun c!81858 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745047 (= c!81858 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745048 () Bool)

(declare-fun res!502092 () Bool)

(assert (=> b!745048 (=> (not res!502092) (not e!416171))))

(assert (=> b!745048 (= res!502092 (validKeyInArray!0 (select (arr!19899 a!3186) j!159)))))

(declare-fun b!745049 () Bool)

(assert (=> b!745049 (= e!416169 e!416168)))

(declare-fun res!502093 () Bool)

(assert (=> b!745049 (=> (not res!502093) (not e!416168))))

(declare-fun lt!331015 () SeekEntryResult!7506)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41578 (_ BitVec 32)) SeekEntryResult!7506)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745049 (= res!502093 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19899 a!3186) j!159) mask!3328) (select (arr!19899 a!3186) j!159) a!3186 mask!3328) lt!331015))))

(assert (=> b!745049 (= lt!331015 (Intermediate!7506 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745050 () Bool)

(declare-fun res!502088 () Bool)

(assert (=> b!745050 (=> (not res!502088) (not e!416171))))

(declare-fun arrayContainsKey!0 (array!41578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745050 (= res!502088 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745051 () Bool)

(assert (=> b!745051 (= e!416166 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19899 a!3186) j!159) a!3186 mask!3328) lt!331015))))

(declare-fun b!745052 () Bool)

(declare-fun res!502100 () Bool)

(assert (=> b!745052 (=> (not res!502100) (not e!416168))))

(assert (=> b!745052 (= res!502100 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19899 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745053 () Bool)

(declare-fun e!416165 () Bool)

(declare-fun e!416170 () Bool)

(assert (=> b!745053 (= e!416165 e!416170)))

(declare-fun res!502090 () Bool)

(assert (=> b!745053 (=> (not res!502090) (not e!416170))))

(declare-fun lt!331010 () SeekEntryResult!7506)

(assert (=> b!745053 (= res!502090 (= (seekEntryOrOpen!0 (select (arr!19899 a!3186) j!159) a!3186 mask!3328) lt!331010))))

(assert (=> b!745053 (= lt!331010 (Found!7506 j!159))))

(declare-fun res!502096 () Bool)

(assert (=> start!65452 (=> (not res!502096) (not e!416171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65452 (= res!502096 (validMask!0 mask!3328))))

(assert (=> start!65452 e!416171))

(assert (=> start!65452 true))

(declare-fun array_inv!15673 (array!41578) Bool)

(assert (=> start!65452 (array_inv!15673 a!3186)))

(declare-fun b!745054 () Bool)

(declare-fun res!502091 () Bool)

(assert (=> b!745054 (=> (not res!502091) (not e!416169))))

(assert (=> b!745054 (= res!502091 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20320 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20320 a!3186))))))

(declare-fun b!745055 () Bool)

(declare-fun e!416164 () Bool)

(assert (=> b!745055 (= e!416168 e!416164)))

(declare-fun res!502094 () Bool)

(assert (=> b!745055 (=> (not res!502094) (not e!416164))))

(declare-fun lt!331009 () SeekEntryResult!7506)

(declare-fun lt!331011 () SeekEntryResult!7506)

(assert (=> b!745055 (= res!502094 (= lt!331009 lt!331011))))

(declare-fun lt!331012 () array!41578)

(assert (=> b!745055 (= lt!331011 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331013 lt!331012 mask!3328))))

(assert (=> b!745055 (= lt!331009 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331013 mask!3328) lt!331013 lt!331012 mask!3328))))

(assert (=> b!745055 (= lt!331013 (select (store (arr!19899 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745055 (= lt!331012 (array!41579 (store (arr!19899 a!3186) i!1173 k!2102) (size!20320 a!3186)))))

(declare-fun b!745056 () Bool)

(assert (=> b!745056 (= e!416164 (not e!416167))))

(declare-fun res!502095 () Bool)

(assert (=> b!745056 (=> res!502095 e!416167)))

(assert (=> b!745056 (= res!502095 (or (not (is-Intermediate!7506 lt!331011)) (bvslt x!1131 (x!63377 lt!331011)) (not (= x!1131 (x!63377 lt!331011))) (not (= index!1321 (index!32393 lt!331011)))))))

(assert (=> b!745056 e!416165))

(declare-fun res!502099 () Bool)

(assert (=> b!745056 (=> (not res!502099) (not e!416165))))

(assert (=> b!745056 (= res!502099 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25492 0))(
  ( (Unit!25493) )
))
(declare-fun lt!331014 () Unit!25492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25492)

(assert (=> b!745056 (= lt!331014 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745057 () Bool)

(declare-fun res!502085 () Bool)

(assert (=> b!745057 (=> (not res!502085) (not e!416171))))

(assert (=> b!745057 (= res!502085 (and (= (size!20320 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20320 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20320 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745058 () Bool)

(assert (=> b!745058 (= e!416170 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19899 a!3186) j!159) a!3186 mask!3328) lt!331010))))

(assert (= (and start!65452 res!502096) b!745057))

(assert (= (and b!745057 res!502085) b!745048))

(assert (= (and b!745048 res!502092) b!745041))

(assert (= (and b!745041 res!502097) b!745050))

(assert (= (and b!745050 res!502088) b!745046))

(assert (= (and b!745046 res!502101) b!745045))

(assert (= (and b!745045 res!502089) b!745044))

(assert (= (and b!745044 res!502086) b!745054))

(assert (= (and b!745054 res!502091) b!745049))

(assert (= (and b!745049 res!502093) b!745052))

(assert (= (and b!745052 res!502100) b!745047))

(assert (= (and b!745047 c!81858) b!745051))

(assert (= (and b!745047 (not c!81858)) b!745040))

(assert (= (and b!745047 res!502087) b!745055))

(assert (= (and b!745055 res!502094) b!745056))

(assert (= (and b!745056 res!502099) b!745053))

(assert (= (and b!745053 res!502090) b!745058))

(assert (= (and b!745056 (not res!502095)) b!745042))

(assert (= (and b!745042 (not res!502098)) b!745043))

(declare-fun m!695557 () Bool)

(assert (=> b!745050 m!695557))

(declare-fun m!695559 () Bool)

(assert (=> start!65452 m!695559))

(declare-fun m!695561 () Bool)

(assert (=> start!65452 m!695561))

(declare-fun m!695563 () Bool)

(assert (=> b!745052 m!695563))

(declare-fun m!695565 () Bool)

(assert (=> b!745055 m!695565))

(declare-fun m!695567 () Bool)

(assert (=> b!745055 m!695567))

(declare-fun m!695569 () Bool)

(assert (=> b!745055 m!695569))

(assert (=> b!745055 m!695565))

(declare-fun m!695571 () Bool)

(assert (=> b!745055 m!695571))

(declare-fun m!695573 () Bool)

(assert (=> b!745055 m!695573))

(declare-fun m!695575 () Bool)

(assert (=> b!745058 m!695575))

(assert (=> b!745058 m!695575))

(declare-fun m!695577 () Bool)

(assert (=> b!745058 m!695577))

(declare-fun m!695579 () Bool)

(assert (=> b!745044 m!695579))

(assert (=> b!745040 m!695575))

(assert (=> b!745040 m!695575))

(declare-fun m!695581 () Bool)

(assert (=> b!745040 m!695581))

(declare-fun m!695583 () Bool)

(assert (=> b!745046 m!695583))

(assert (=> b!745042 m!695575))

(assert (=> b!745042 m!695575))

(assert (=> b!745042 m!695581))

(assert (=> b!745051 m!695575))

(assert (=> b!745051 m!695575))

(declare-fun m!695585 () Bool)

(assert (=> b!745051 m!695585))

(declare-fun m!695587 () Bool)

(assert (=> b!745045 m!695587))

(assert (=> b!745048 m!695575))

(assert (=> b!745048 m!695575))

(declare-fun m!695589 () Bool)

(assert (=> b!745048 m!695589))

(assert (=> b!745049 m!695575))

(assert (=> b!745049 m!695575))

(declare-fun m!695591 () Bool)

(assert (=> b!745049 m!695591))

(assert (=> b!745049 m!695591))

(assert (=> b!745049 m!695575))

(declare-fun m!695593 () Bool)

(assert (=> b!745049 m!695593))

(declare-fun m!695595 () Bool)

(assert (=> b!745041 m!695595))

(declare-fun m!695597 () Bool)

(assert (=> b!745056 m!695597))

(declare-fun m!695599 () Bool)

(assert (=> b!745056 m!695599))

(assert (=> b!745053 m!695575))

(assert (=> b!745053 m!695575))

(declare-fun m!695601 () Bool)

(assert (=> b!745053 m!695601))

(assert (=> b!745043 m!695567))

(declare-fun m!695603 () Bool)

(assert (=> b!745043 m!695603))

(push 1)

(assert (not b!745046))

(assert (not b!745042))

(assert (not b!745044))

(assert (not b!745053))

(assert (not b!745049))

(assert (not b!745058))

(assert (not b!745048))

(assert (not b!745040))

(assert (not b!745050))

(assert (not b!745051))

(assert (not b!745041))

(assert (not start!65452))

(assert (not b!745055))

(assert (not b!745056))

(assert (not b!745045))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

