; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68992 () Bool)

(assert start!68992)

(declare-fun b!804393 () Bool)

(declare-fun e!445641 () Bool)

(declare-fun e!445642 () Bool)

(assert (=> b!804393 (= e!445641 e!445642)))

(declare-fun res!549083 () Bool)

(assert (=> b!804393 (=> (not res!549083) (not e!445642))))

(declare-datatypes ((SeekEntryResult!8541 0))(
  ( (MissingZero!8541 (index!36531 (_ BitVec 32))) (Found!8541 (index!36532 (_ BitVec 32))) (Intermediate!8541 (undefined!9353 Bool) (index!36533 (_ BitVec 32)) (x!67388 (_ BitVec 32))) (Undefined!8541) (MissingVacant!8541 (index!36534 (_ BitVec 32))) )
))
(declare-fun lt!360132 () SeekEntryResult!8541)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804393 (= res!549083 (or (= lt!360132 (MissingZero!8541 i!1163)) (= lt!360132 (MissingVacant!8541 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43733 0))(
  ( (array!43734 (arr!20943 (Array (_ BitVec 32) (_ BitVec 64))) (size!21364 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43733)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43733 (_ BitVec 32)) SeekEntryResult!8541)

(assert (=> b!804393 (= lt!360132 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804394 () Bool)

(declare-fun res!549087 () Bool)

(assert (=> b!804394 (=> (not res!549087) (not e!445641))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804394 (= res!549087 (and (= (size!21364 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21364 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21364 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804395 () Bool)

(assert (=> b!804395 (= e!445642 false)))

(declare-fun lt!360133 () Bool)

(declare-datatypes ((List!14959 0))(
  ( (Nil!14956) (Cons!14955 (h!16084 (_ BitVec 64)) (t!21282 List!14959)) )
))
(declare-fun arrayNoDuplicates!0 (array!43733 (_ BitVec 32) List!14959) Bool)

(assert (=> b!804395 (= lt!360133 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14956))))

(declare-fun b!804396 () Bool)

(declare-fun res!549086 () Bool)

(assert (=> b!804396 (=> (not res!549086) (not e!445641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804396 (= res!549086 (validKeyInArray!0 (select (arr!20943 a!3170) j!153)))))

(declare-fun b!804397 () Bool)

(declare-fun res!549082 () Bool)

(assert (=> b!804397 (=> (not res!549082) (not e!445641))))

(declare-fun arrayContainsKey!0 (array!43733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804397 (= res!549082 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!549084 () Bool)

(assert (=> start!68992 (=> (not res!549084) (not e!445641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68992 (= res!549084 (validMask!0 mask!3266))))

(assert (=> start!68992 e!445641))

(assert (=> start!68992 true))

(declare-fun array_inv!16717 (array!43733) Bool)

(assert (=> start!68992 (array_inv!16717 a!3170)))

(declare-fun b!804398 () Bool)

(declare-fun res!549085 () Bool)

(assert (=> b!804398 (=> (not res!549085) (not e!445642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43733 (_ BitVec 32)) Bool)

(assert (=> b!804398 (= res!549085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804399 () Bool)

(declare-fun res!549088 () Bool)

(assert (=> b!804399 (=> (not res!549088) (not e!445641))))

(assert (=> b!804399 (= res!549088 (validKeyInArray!0 k!2044))))

(assert (= (and start!68992 res!549084) b!804394))

(assert (= (and b!804394 res!549087) b!804396))

(assert (= (and b!804396 res!549086) b!804399))

(assert (= (and b!804399 res!549088) b!804397))

(assert (= (and b!804397 res!549082) b!804393))

(assert (= (and b!804393 res!549083) b!804398))

(assert (= (and b!804398 res!549085) b!804395))

(declare-fun m!746347 () Bool)

(assert (=> start!68992 m!746347))

(declare-fun m!746349 () Bool)

(assert (=> start!68992 m!746349))

(declare-fun m!746351 () Bool)

(assert (=> b!804399 m!746351))

(declare-fun m!746353 () Bool)

(assert (=> b!804395 m!746353))

(declare-fun m!746355 () Bool)

(assert (=> b!804398 m!746355))

(declare-fun m!746357 () Bool)

(assert (=> b!804393 m!746357))

(declare-fun m!746359 () Bool)

(assert (=> b!804397 m!746359))

(declare-fun m!746361 () Bool)

(assert (=> b!804396 m!746361))

(assert (=> b!804396 m!746361))

(declare-fun m!746363 () Bool)

(assert (=> b!804396 m!746363))

(push 1)

