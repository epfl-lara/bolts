; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29392 () Bool)

(assert start!29392)

(declare-fun b!297412 () Bool)

(declare-fun e!187958 () Bool)

(declare-datatypes ((SeekEntryResult!2294 0))(
  ( (MissingZero!2294 (index!11346 (_ BitVec 32))) (Found!2294 (index!11347 (_ BitVec 32))) (Intermediate!2294 (undefined!3106 Bool) (index!11348 (_ BitVec 32)) (x!29529 (_ BitVec 32))) (Undefined!2294) (MissingVacant!2294 (index!11349 (_ BitVec 32))) )
))
(declare-fun lt!147865 () SeekEntryResult!2294)

(declare-fun lt!147864 () SeekEntryResult!2294)

(assert (=> b!297412 (= e!187958 (not (= lt!147865 lt!147864)))))

(declare-datatypes ((Unit!9259 0))(
  ( (Unit!9260) )
))
(declare-fun lt!147861 () Unit!9259)

(declare-fun e!187960 () Unit!9259)

(assert (=> b!297412 (= lt!147861 e!187960)))

(declare-datatypes ((array!15057 0))(
  ( (array!15058 (arr!7134 (Array (_ BitVec 32) (_ BitVec 64))) (size!7486 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15057)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun c!47850 () Bool)

(assert (=> b!297412 (= c!47850 (or (and (is-Intermediate!2294 lt!147864) (undefined!3106 lt!147864)) (and (is-Intermediate!2294 lt!147864) (= (select (arr!7134 a!3312) (index!11348 lt!147864)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2294 lt!147864) (= (select (arr!7134 a!3312) (index!11348 lt!147864)) k!2524))))))

(declare-fun b!297413 () Bool)

(declare-fun res!156883 () Bool)

(declare-fun e!187957 () Bool)

(assert (=> b!297413 (=> (not res!156883) (not e!187957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297413 (= res!156883 (validKeyInArray!0 k!2524))))

(declare-fun b!297414 () Bool)

(declare-fun res!156879 () Bool)

(declare-fun e!187959 () Bool)

(assert (=> b!297414 (=> (not res!156879) (not e!187959))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15057 (_ BitVec 32)) Bool)

(assert (=> b!297414 (= res!156879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297415 () Bool)

(declare-fun res!156884 () Bool)

(assert (=> b!297415 (=> (not res!156884) (not e!187957))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!297415 (= res!156884 (and (= (size!7486 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7486 a!3312))))))

(declare-fun b!297416 () Bool)

(assert (=> b!297416 (and (= lt!147865 lt!147864) (= (select (store (arr!7134 a!3312) i!1256 k!2524) (index!11348 lt!147864)) k!2524))))

(declare-fun lt!147862 () (_ BitVec 32))

(declare-fun lt!147863 () Unit!9259)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15057 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9259)

(assert (=> b!297416 (= lt!147863 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147862 (index!11348 lt!147864) (x!29529 lt!147864) mask!3809))))

(assert (=> b!297416 (and (= (select (arr!7134 a!3312) (index!11348 lt!147864)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11348 lt!147864) i!1256))))

(declare-fun e!187956 () Unit!9259)

(declare-fun Unit!9261 () Unit!9259)

(assert (=> b!297416 (= e!187956 Unit!9261)))

(declare-fun b!297417 () Bool)

(assert (=> b!297417 (= e!187960 e!187956)))

(declare-fun c!47849 () Bool)

(assert (=> b!297417 (= c!47849 (is-Intermediate!2294 lt!147864))))

(declare-fun b!297418 () Bool)

(assert (=> b!297418 (= e!187957 e!187959)))

(declare-fun res!156880 () Bool)

(assert (=> b!297418 (=> (not res!156880) (not e!187959))))

(declare-fun lt!147866 () SeekEntryResult!2294)

(declare-fun lt!147860 () Bool)

(assert (=> b!297418 (= res!156880 (or lt!147860 (= lt!147866 (MissingVacant!2294 i!1256))))))

(assert (=> b!297418 (= lt!147860 (= lt!147866 (MissingZero!2294 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15057 (_ BitVec 32)) SeekEntryResult!2294)

(assert (=> b!297418 (= lt!147866 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297419 () Bool)

(declare-fun res!156885 () Bool)

(assert (=> b!297419 (=> (not res!156885) (not e!187957))))

(declare-fun arrayContainsKey!0 (array!15057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297419 (= res!156885 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297420 () Bool)

(assert (=> b!297420 (= e!187959 e!187958)))

(declare-fun res!156881 () Bool)

(assert (=> b!297420 (=> (not res!156881) (not e!187958))))

(assert (=> b!297420 (= res!156881 lt!147860)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15057 (_ BitVec 32)) SeekEntryResult!2294)

(assert (=> b!297420 (= lt!147865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147862 k!2524 (array!15058 (store (arr!7134 a!3312) i!1256 k!2524) (size!7486 a!3312)) mask!3809))))

(assert (=> b!297420 (= lt!147864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147862 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297420 (= lt!147862 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297421 () Bool)

(declare-fun Unit!9262 () Unit!9259)

(assert (=> b!297421 (= e!187960 Unit!9262)))

(assert (=> b!297421 false))

(declare-fun res!156882 () Bool)

(assert (=> start!29392 (=> (not res!156882) (not e!187957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29392 (= res!156882 (validMask!0 mask!3809))))

(assert (=> start!29392 e!187957))

(assert (=> start!29392 true))

(declare-fun array_inv!5088 (array!15057) Bool)

(assert (=> start!29392 (array_inv!5088 a!3312)))

(declare-fun b!297422 () Bool)

(assert (=> b!297422 false))

(declare-fun Unit!9263 () Unit!9259)

(assert (=> b!297422 (= e!187956 Unit!9263)))

(assert (= (and start!29392 res!156882) b!297415))

(assert (= (and b!297415 res!156884) b!297413))

(assert (= (and b!297413 res!156883) b!297419))

(assert (= (and b!297419 res!156885) b!297418))

(assert (= (and b!297418 res!156880) b!297414))

(assert (= (and b!297414 res!156879) b!297420))

(assert (= (and b!297420 res!156881) b!297412))

(assert (= (and b!297412 c!47850) b!297421))

(assert (= (and b!297412 (not c!47850)) b!297417))

(assert (= (and b!297417 c!47849) b!297416))

(assert (= (and b!297417 (not c!47849)) b!297422))

(declare-fun m!310167 () Bool)

(assert (=> start!29392 m!310167))

(declare-fun m!310169 () Bool)

(assert (=> start!29392 m!310169))

(declare-fun m!310171 () Bool)

(assert (=> b!297420 m!310171))

(declare-fun m!310173 () Bool)

(assert (=> b!297420 m!310173))

(declare-fun m!310175 () Bool)

(assert (=> b!297420 m!310175))

(declare-fun m!310177 () Bool)

(assert (=> b!297420 m!310177))

(assert (=> b!297416 m!310171))

(declare-fun m!310179 () Bool)

(assert (=> b!297416 m!310179))

(declare-fun m!310181 () Bool)

(assert (=> b!297416 m!310181))

(declare-fun m!310183 () Bool)

(assert (=> b!297416 m!310183))

(declare-fun m!310185 () Bool)

(assert (=> b!297418 m!310185))

(assert (=> b!297412 m!310183))

(declare-fun m!310187 () Bool)

(assert (=> b!297413 m!310187))

(declare-fun m!310189 () Bool)

(assert (=> b!297414 m!310189))

(declare-fun m!310191 () Bool)

(assert (=> b!297419 m!310191))

(push 1)

