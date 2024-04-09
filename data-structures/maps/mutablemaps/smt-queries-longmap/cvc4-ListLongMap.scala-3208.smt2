; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45008 () Bool)

(assert start!45008)

(declare-fun b!493422 () Bool)

(declare-fun res!296145 () Bool)

(declare-fun e!289750 () Bool)

(assert (=> b!493422 (=> (not res!296145) (not e!289750))))

(declare-datatypes ((array!31913 0))(
  ( (array!31914 (arr!15338 (Array (_ BitVec 32) (_ BitVec 64))) (size!15702 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31913)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31913 (_ BitVec 32)) Bool)

(assert (=> b!493422 (= res!296145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493423 () Bool)

(declare-fun res!296142 () Bool)

(declare-fun e!289748 () Bool)

(assert (=> b!493423 (=> res!296142 e!289748)))

(declare-datatypes ((SeekEntryResult!3812 0))(
  ( (MissingZero!3812 (index!17427 (_ BitVec 32))) (Found!3812 (index!17428 (_ BitVec 32))) (Intermediate!3812 (undefined!4624 Bool) (index!17429 (_ BitVec 32)) (x!46533 (_ BitVec 32))) (Undefined!3812) (MissingVacant!3812 (index!17430 (_ BitVec 32))) )
))
(declare-fun lt!223239 () SeekEntryResult!3812)

(assert (=> b!493423 (= res!296142 (or (not (is-Intermediate!3812 lt!223239)) (not (undefined!4624 lt!223239))))))

(declare-fun b!493424 () Bool)

(declare-fun res!296141 () Bool)

(declare-fun e!289747 () Bool)

(assert (=> b!493424 (=> (not res!296141) (not e!289747))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493424 (= res!296141 (validKeyInArray!0 k!2280))))

(declare-fun b!493425 () Bool)

(declare-fun res!296146 () Bool)

(assert (=> b!493425 (=> (not res!296146) (not e!289750))))

(declare-datatypes ((List!9549 0))(
  ( (Nil!9546) (Cons!9545 (h!10413 (_ BitVec 64)) (t!15785 List!9549)) )
))
(declare-fun arrayNoDuplicates!0 (array!31913 (_ BitVec 32) List!9549) Bool)

(assert (=> b!493425 (= res!296146 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9546))))

(declare-fun b!493426 () Bool)

(declare-fun res!296148 () Bool)

(assert (=> b!493426 (=> (not res!296148) (not e!289747))))

(declare-fun arrayContainsKey!0 (array!31913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493426 (= res!296148 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493427 () Bool)

(declare-fun res!296150 () Bool)

(assert (=> b!493427 (=> (not res!296150) (not e!289747))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493427 (= res!296150 (validKeyInArray!0 (select (arr!15338 a!3235) j!176)))))

(declare-fun b!493428 () Bool)

(declare-fun res!296149 () Bool)

(assert (=> b!493428 (=> (not res!296149) (not e!289747))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493428 (= res!296149 (and (= (size!15702 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15702 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15702 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!296144 () Bool)

(assert (=> start!45008 (=> (not res!296144) (not e!289747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45008 (= res!296144 (validMask!0 mask!3524))))

(assert (=> start!45008 e!289747))

(assert (=> start!45008 true))

(declare-fun array_inv!11112 (array!31913) Bool)

(assert (=> start!45008 (array_inv!11112 a!3235)))

(declare-fun b!493421 () Bool)

(assert (=> b!493421 (= e!289748 true)))

(declare-fun lt!223244 () SeekEntryResult!3812)

(assert (=> b!493421 (= lt!223244 Undefined!3812)))

(declare-fun b!493429 () Bool)

(assert (=> b!493429 (= e!289750 (not e!289748))))

(declare-fun res!296147 () Bool)

(assert (=> b!493429 (=> res!296147 e!289748)))

(declare-fun lt!223241 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31913 (_ BitVec 32)) SeekEntryResult!3812)

(assert (=> b!493429 (= res!296147 (= lt!223239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223241 (select (store (arr!15338 a!3235) i!1204 k!2280) j!176) (array!31914 (store (arr!15338 a!3235) i!1204 k!2280) (size!15702 a!3235)) mask!3524)))))

(declare-fun lt!223242 () (_ BitVec 32))

(assert (=> b!493429 (= lt!223239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223242 (select (arr!15338 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493429 (= lt!223241 (toIndex!0 (select (store (arr!15338 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493429 (= lt!223242 (toIndex!0 (select (arr!15338 a!3235) j!176) mask!3524))))

(assert (=> b!493429 (= lt!223244 (Found!3812 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31913 (_ BitVec 32)) SeekEntryResult!3812)

(assert (=> b!493429 (= lt!223244 (seekEntryOrOpen!0 (select (arr!15338 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493429 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14562 0))(
  ( (Unit!14563) )
))
(declare-fun lt!223240 () Unit!14562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14562)

(assert (=> b!493429 (= lt!223240 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493430 () Bool)

(assert (=> b!493430 (= e!289747 e!289750)))

(declare-fun res!296143 () Bool)

(assert (=> b!493430 (=> (not res!296143) (not e!289750))))

(declare-fun lt!223243 () SeekEntryResult!3812)

(assert (=> b!493430 (= res!296143 (or (= lt!223243 (MissingZero!3812 i!1204)) (= lt!223243 (MissingVacant!3812 i!1204))))))

(assert (=> b!493430 (= lt!223243 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45008 res!296144) b!493428))

(assert (= (and b!493428 res!296149) b!493427))

(assert (= (and b!493427 res!296150) b!493424))

(assert (= (and b!493424 res!296141) b!493426))

(assert (= (and b!493426 res!296148) b!493430))

(assert (= (and b!493430 res!296143) b!493422))

(assert (= (and b!493422 res!296145) b!493425))

(assert (= (and b!493425 res!296146) b!493429))

(assert (= (and b!493429 (not res!296147)) b!493423))

(assert (= (and b!493423 (not res!296142)) b!493421))

(declare-fun m!474337 () Bool)

(assert (=> b!493424 m!474337))

(declare-fun m!474339 () Bool)

(assert (=> b!493430 m!474339))

(declare-fun m!474341 () Bool)

(assert (=> b!493427 m!474341))

(assert (=> b!493427 m!474341))

(declare-fun m!474343 () Bool)

(assert (=> b!493427 m!474343))

(declare-fun m!474345 () Bool)

(assert (=> b!493422 m!474345))

(declare-fun m!474347 () Bool)

(assert (=> b!493425 m!474347))

(declare-fun m!474349 () Bool)

(assert (=> b!493429 m!474349))

(assert (=> b!493429 m!474341))

(declare-fun m!474351 () Bool)

(assert (=> b!493429 m!474351))

(declare-fun m!474353 () Bool)

(assert (=> b!493429 m!474353))

(declare-fun m!474355 () Bool)

(assert (=> b!493429 m!474355))

(assert (=> b!493429 m!474341))

(declare-fun m!474357 () Bool)

(assert (=> b!493429 m!474357))

(assert (=> b!493429 m!474341))

(declare-fun m!474359 () Bool)

(assert (=> b!493429 m!474359))

(assert (=> b!493429 m!474341))

(declare-fun m!474361 () Bool)

(assert (=> b!493429 m!474361))

(assert (=> b!493429 m!474355))

(declare-fun m!474363 () Bool)

(assert (=> b!493429 m!474363))

(assert (=> b!493429 m!474355))

(declare-fun m!474365 () Bool)

(assert (=> b!493429 m!474365))

(declare-fun m!474367 () Bool)

(assert (=> b!493426 m!474367))

(declare-fun m!474369 () Bool)

(assert (=> start!45008 m!474369))

(declare-fun m!474371 () Bool)

(assert (=> start!45008 m!474371))

(push 1)

