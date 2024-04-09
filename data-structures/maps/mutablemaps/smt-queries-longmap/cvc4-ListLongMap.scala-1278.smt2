; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26240 () Bool)

(assert start!26240)

(declare-fun b!271368 () Bool)

(declare-fun res!135402 () Bool)

(declare-fun e!174531 () Bool)

(assert (=> b!271368 (=> (not res!135402) (not e!174531))))

(declare-datatypes ((array!13326 0))(
  ( (array!13327 (arr!6312 (Array (_ BitVec 32) (_ BitVec 64))) (size!6664 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13326)

(assert (=> b!271368 (= res!135402 (and (bvslt (size!6664 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6664 a!3325))))))

(declare-fun b!271369 () Bool)

(assert (=> b!271369 (= e!174531 false)))

(declare-fun lt!135821 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4141 0))(
  ( (Nil!4138) (Cons!4137 (h!4804 (_ BitVec 64)) (t!9231 List!4141)) )
))
(declare-fun contains!1950 (List!4141 (_ BitVec 64)) Bool)

(assert (=> b!271369 (= lt!135821 (contains!1950 Nil!4138 k!2581))))

(declare-fun b!271370 () Bool)

(declare-fun res!135400 () Bool)

(declare-fun e!174530 () Bool)

(assert (=> b!271370 (=> (not res!135400) (not e!174530))))

(declare-fun arrayNoDuplicates!0 (array!13326 (_ BitVec 32) List!4141) Bool)

(assert (=> b!271370 (= res!135400 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4138))))

(declare-fun res!135401 () Bool)

(assert (=> start!26240 (=> (not res!135401) (not e!174530))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26240 (= res!135401 (validMask!0 mask!3868))))

(assert (=> start!26240 e!174530))

(declare-fun array_inv!4266 (array!13326) Bool)

(assert (=> start!26240 (array_inv!4266 a!3325)))

(assert (=> start!26240 true))

(declare-fun b!271371 () Bool)

(declare-fun res!135399 () Bool)

(assert (=> b!271371 (=> (not res!135399) (not e!174531))))

(assert (=> b!271371 (= res!135399 (not (contains!1950 Nil!4138 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271372 () Bool)

(declare-fun res!135396 () Bool)

(assert (=> b!271372 (=> (not res!135396) (not e!174530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271372 (= res!135396 (validKeyInArray!0 k!2581))))

(declare-fun b!271373 () Bool)

(declare-fun res!135405 () Bool)

(assert (=> b!271373 (=> (not res!135405) (not e!174531))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271373 (= res!135405 (not (= startIndex!26 i!1267)))))

(declare-fun b!271374 () Bool)

(declare-fun res!135404 () Bool)

(assert (=> b!271374 (=> (not res!135404) (not e!174531))))

(assert (=> b!271374 (= res!135404 (not (contains!1950 Nil!4138 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271375 () Bool)

(declare-fun res!135408 () Bool)

(assert (=> b!271375 (=> (not res!135408) (not e!174531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13326 (_ BitVec 32)) Bool)

(assert (=> b!271375 (= res!135408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271376 () Bool)

(declare-fun res!135398 () Bool)

(assert (=> b!271376 (=> (not res!135398) (not e!174531))))

(declare-fun noDuplicate!139 (List!4141) Bool)

(assert (=> b!271376 (= res!135398 (noDuplicate!139 Nil!4138))))

(declare-fun b!271377 () Bool)

(declare-fun res!135407 () Bool)

(assert (=> b!271377 (=> (not res!135407) (not e!174531))))

(assert (=> b!271377 (= res!135407 (validKeyInArray!0 (select (arr!6312 a!3325) startIndex!26)))))

(declare-fun b!271378 () Bool)

(declare-fun res!135406 () Bool)

(assert (=> b!271378 (=> (not res!135406) (not e!174530))))

(assert (=> b!271378 (= res!135406 (and (= (size!6664 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6664 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6664 a!3325))))))

(declare-fun b!271379 () Bool)

(declare-fun res!135397 () Bool)

(assert (=> b!271379 (=> (not res!135397) (not e!174530))))

(declare-fun arrayContainsKey!0 (array!13326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271379 (= res!135397 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271380 () Bool)

(assert (=> b!271380 (= e!174530 e!174531)))

(declare-fun res!135403 () Bool)

(assert (=> b!271380 (=> (not res!135403) (not e!174531))))

(declare-datatypes ((SeekEntryResult!1481 0))(
  ( (MissingZero!1481 (index!8094 (_ BitVec 32))) (Found!1481 (index!8095 (_ BitVec 32))) (Intermediate!1481 (undefined!2293 Bool) (index!8096 (_ BitVec 32)) (x!26390 (_ BitVec 32))) (Undefined!1481) (MissingVacant!1481 (index!8097 (_ BitVec 32))) )
))
(declare-fun lt!135820 () SeekEntryResult!1481)

(assert (=> b!271380 (= res!135403 (or (= lt!135820 (MissingZero!1481 i!1267)) (= lt!135820 (MissingVacant!1481 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13326 (_ BitVec 32)) SeekEntryResult!1481)

(assert (=> b!271380 (= lt!135820 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26240 res!135401) b!271378))

(assert (= (and b!271378 res!135406) b!271372))

(assert (= (and b!271372 res!135396) b!271370))

(assert (= (and b!271370 res!135400) b!271379))

(assert (= (and b!271379 res!135397) b!271380))

(assert (= (and b!271380 res!135403) b!271375))

(assert (= (and b!271375 res!135408) b!271373))

(assert (= (and b!271373 res!135405) b!271377))

(assert (= (and b!271377 res!135407) b!271368))

(assert (= (and b!271368 res!135402) b!271376))

(assert (= (and b!271376 res!135398) b!271371))

(assert (= (and b!271371 res!135399) b!271374))

(assert (= (and b!271374 res!135404) b!271369))

(declare-fun m!286703 () Bool)

(assert (=> start!26240 m!286703))

(declare-fun m!286705 () Bool)

(assert (=> start!26240 m!286705))

(declare-fun m!286707 () Bool)

(assert (=> b!271374 m!286707))

(declare-fun m!286709 () Bool)

(assert (=> b!271369 m!286709))

(declare-fun m!286711 () Bool)

(assert (=> b!271380 m!286711))

(declare-fun m!286713 () Bool)

(assert (=> b!271370 m!286713))

(declare-fun m!286715 () Bool)

(assert (=> b!271377 m!286715))

(assert (=> b!271377 m!286715))

(declare-fun m!286717 () Bool)

(assert (=> b!271377 m!286717))

(declare-fun m!286719 () Bool)

(assert (=> b!271375 m!286719))

(declare-fun m!286721 () Bool)

(assert (=> b!271376 m!286721))

(declare-fun m!286723 () Bool)

(assert (=> b!271371 m!286723))

(declare-fun m!286725 () Bool)

(assert (=> b!271372 m!286725))

(declare-fun m!286727 () Bool)

(assert (=> b!271379 m!286727))

(push 1)

(assert (not b!271374))

(assert (not b!271369))

(assert (not b!271372))

(assert (not b!271371))

(assert (not b!271375))

(assert (not start!26240))

(assert (not b!271377))

(assert (not b!271380))

(assert (not b!271376))

(assert (not b!271370))

(assert (not b!271379))

(check-sat)

(pop 1)

