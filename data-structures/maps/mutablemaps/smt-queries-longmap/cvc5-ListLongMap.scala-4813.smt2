; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66236 () Bool)

(assert start!66236)

(declare-fun b!762371 () Bool)

(declare-fun res!515653 () Bool)

(declare-fun e!424962 () Bool)

(assert (=> b!762371 (=> (not res!515653) (not e!424962))))

(declare-datatypes ((array!42094 0))(
  ( (array!42095 (arr!20151 (Array (_ BitVec 32) (_ BitVec 64))) (size!20572 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42094)

(declare-datatypes ((List!14206 0))(
  ( (Nil!14203) (Cons!14202 (h!15286 (_ BitVec 64)) (t!20529 List!14206)) )
))
(declare-fun arrayNoDuplicates!0 (array!42094 (_ BitVec 32) List!14206) Bool)

(assert (=> b!762371 (= res!515653 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14203))))

(declare-fun b!762372 () Bool)

(declare-fun res!515657 () Bool)

(assert (=> b!762372 (=> (not res!515657) (not e!424962))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42094 (_ BitVec 32)) Bool)

(assert (=> b!762372 (= res!515657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762373 () Bool)

(declare-fun e!424961 () Bool)

(assert (=> b!762373 (= e!424962 e!424961)))

(declare-fun res!515651 () Bool)

(assert (=> b!762373 (=> (not res!515651) (not e!424961))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7758 0))(
  ( (MissingZero!7758 (index!33399 (_ BitVec 32))) (Found!7758 (index!33400 (_ BitVec 32))) (Intermediate!7758 (undefined!8570 Bool) (index!33401 (_ BitVec 32)) (x!64339 (_ BitVec 32))) (Undefined!7758) (MissingVacant!7758 (index!33402 (_ BitVec 32))) )
))
(declare-fun lt!339541 () SeekEntryResult!7758)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42094 (_ BitVec 32)) SeekEntryResult!7758)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762373 (= res!515651 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20151 a!3186) j!159) mask!3328) (select (arr!20151 a!3186) j!159) a!3186 mask!3328) lt!339541))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762373 (= lt!339541 (Intermediate!7758 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!424964 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!762374 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!762374 (= e!424964 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20151 a!3186) j!159) a!3186 mask!3328) lt!339541)))))

(declare-fun b!762375 () Bool)

(declare-fun res!515656 () Bool)

(assert (=> b!762375 (=> (not res!515656) (not e!424961))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762375 (= res!515656 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20151 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!515648 () Bool)

(declare-fun e!424963 () Bool)

(assert (=> start!66236 (=> (not res!515648) (not e!424963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66236 (= res!515648 (validMask!0 mask!3328))))

(assert (=> start!66236 e!424963))

(assert (=> start!66236 true))

(declare-fun array_inv!15925 (array!42094) Bool)

(assert (=> start!66236 (array_inv!15925 a!3186)))

(declare-fun b!762376 () Bool)

(declare-fun res!515652 () Bool)

(assert (=> b!762376 (=> (not res!515652) (not e!424963))))

(assert (=> b!762376 (= res!515652 (and (= (size!20572 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20572 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20572 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762377 () Bool)

(declare-fun res!515649 () Bool)

(assert (=> b!762377 (=> (not res!515649) (not e!424963))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762377 (= res!515649 (validKeyInArray!0 k!2102))))

(declare-fun b!762378 () Bool)

(assert (=> b!762378 (= e!424961 false)))

(declare-fun lt!339539 () Bool)

(assert (=> b!762378 (= lt!339539 e!424964)))

(declare-fun c!83748 () Bool)

(assert (=> b!762378 (= c!83748 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762379 () Bool)

(declare-fun res!515650 () Bool)

(assert (=> b!762379 (=> (not res!515650) (not e!424963))))

(declare-fun arrayContainsKey!0 (array!42094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762379 (= res!515650 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762380 () Bool)

(declare-fun res!515655 () Bool)

(assert (=> b!762380 (=> (not res!515655) (not e!424963))))

(assert (=> b!762380 (= res!515655 (validKeyInArray!0 (select (arr!20151 a!3186) j!159)))))

(declare-fun b!762381 () Bool)

(declare-fun res!515658 () Bool)

(assert (=> b!762381 (=> (not res!515658) (not e!424962))))

(assert (=> b!762381 (= res!515658 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20572 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20572 a!3186))))))

(declare-fun b!762382 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42094 (_ BitVec 32)) SeekEntryResult!7758)

(assert (=> b!762382 (= e!424964 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20151 a!3186) j!159) a!3186 mask!3328) (Found!7758 j!159))))))

(declare-fun b!762383 () Bool)

(assert (=> b!762383 (= e!424963 e!424962)))

(declare-fun res!515654 () Bool)

(assert (=> b!762383 (=> (not res!515654) (not e!424962))))

(declare-fun lt!339540 () SeekEntryResult!7758)

(assert (=> b!762383 (= res!515654 (or (= lt!339540 (MissingZero!7758 i!1173)) (= lt!339540 (MissingVacant!7758 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42094 (_ BitVec 32)) SeekEntryResult!7758)

(assert (=> b!762383 (= lt!339540 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!66236 res!515648) b!762376))

(assert (= (and b!762376 res!515652) b!762380))

(assert (= (and b!762380 res!515655) b!762377))

(assert (= (and b!762377 res!515649) b!762379))

(assert (= (and b!762379 res!515650) b!762383))

(assert (= (and b!762383 res!515654) b!762372))

(assert (= (and b!762372 res!515657) b!762371))

(assert (= (and b!762371 res!515653) b!762381))

(assert (= (and b!762381 res!515658) b!762373))

(assert (= (and b!762373 res!515651) b!762375))

(assert (= (and b!762375 res!515656) b!762378))

(assert (= (and b!762378 c!83748) b!762374))

(assert (= (and b!762378 (not c!83748)) b!762382))

(declare-fun m!709175 () Bool)

(assert (=> start!66236 m!709175))

(declare-fun m!709177 () Bool)

(assert (=> start!66236 m!709177))

(declare-fun m!709179 () Bool)

(assert (=> b!762377 m!709179))

(declare-fun m!709181 () Bool)

(assert (=> b!762379 m!709181))

(declare-fun m!709183 () Bool)

(assert (=> b!762375 m!709183))

(declare-fun m!709185 () Bool)

(assert (=> b!762382 m!709185))

(assert (=> b!762382 m!709185))

(declare-fun m!709187 () Bool)

(assert (=> b!762382 m!709187))

(assert (=> b!762380 m!709185))

(assert (=> b!762380 m!709185))

(declare-fun m!709189 () Bool)

(assert (=> b!762380 m!709189))

(assert (=> b!762374 m!709185))

(assert (=> b!762374 m!709185))

(declare-fun m!709191 () Bool)

(assert (=> b!762374 m!709191))

(assert (=> b!762373 m!709185))

(assert (=> b!762373 m!709185))

(declare-fun m!709193 () Bool)

(assert (=> b!762373 m!709193))

(assert (=> b!762373 m!709193))

(assert (=> b!762373 m!709185))

(declare-fun m!709195 () Bool)

(assert (=> b!762373 m!709195))

(declare-fun m!709197 () Bool)

(assert (=> b!762372 m!709197))

(declare-fun m!709199 () Bool)

(assert (=> b!762371 m!709199))

(declare-fun m!709201 () Bool)

(assert (=> b!762383 m!709201))

(push 1)

