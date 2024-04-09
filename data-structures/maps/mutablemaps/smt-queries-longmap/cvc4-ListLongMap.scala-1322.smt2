; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26504 () Bool)

(assert start!26504)

(declare-fun b!275002 () Bool)

(declare-fun res!139034 () Bool)

(declare-fun e!175980 () Bool)

(assert (=> b!275002 (=> (not res!139034) (not e!175980))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275002 (= res!139034 (validKeyInArray!0 k!2581))))

(declare-fun b!275003 () Bool)

(declare-fun e!175981 () Bool)

(assert (=> b!275003 (= e!175981 false)))

(declare-fun lt!137278 () Bool)

(declare-datatypes ((array!13590 0))(
  ( (array!13591 (arr!6444 (Array (_ BitVec 32) (_ BitVec 64))) (size!6796 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13590)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13590 (_ BitVec 32)) Bool)

(assert (=> b!275003 (= lt!137278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!139032 () Bool)

(assert (=> start!26504 (=> (not res!139032) (not e!175980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26504 (= res!139032 (validMask!0 mask!3868))))

(assert (=> start!26504 e!175980))

(declare-fun array_inv!4398 (array!13590) Bool)

(assert (=> start!26504 (array_inv!4398 a!3325)))

(assert (=> start!26504 true))

(declare-fun b!275004 () Bool)

(declare-fun res!139031 () Bool)

(assert (=> b!275004 (=> (not res!139031) (not e!175980))))

(declare-datatypes ((List!4273 0))(
  ( (Nil!4270) (Cons!4269 (h!4936 (_ BitVec 64)) (t!9363 List!4273)) )
))
(declare-fun arrayNoDuplicates!0 (array!13590 (_ BitVec 32) List!4273) Bool)

(assert (=> b!275004 (= res!139031 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4270))))

(declare-fun b!275005 () Bool)

(assert (=> b!275005 (= e!175980 e!175981)))

(declare-fun res!139030 () Bool)

(assert (=> b!275005 (=> (not res!139030) (not e!175981))))

(declare-datatypes ((SeekEntryResult!1613 0))(
  ( (MissingZero!1613 (index!8622 (_ BitVec 32))) (Found!1613 (index!8623 (_ BitVec 32))) (Intermediate!1613 (undefined!2425 Bool) (index!8624 (_ BitVec 32)) (x!26874 (_ BitVec 32))) (Undefined!1613) (MissingVacant!1613 (index!8625 (_ BitVec 32))) )
))
(declare-fun lt!137279 () SeekEntryResult!1613)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275005 (= res!139030 (or (= lt!137279 (MissingZero!1613 i!1267)) (= lt!137279 (MissingVacant!1613 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13590 (_ BitVec 32)) SeekEntryResult!1613)

(assert (=> b!275005 (= lt!137279 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275006 () Bool)

(declare-fun res!139035 () Bool)

(assert (=> b!275006 (=> (not res!139035) (not e!175980))))

(declare-fun arrayContainsKey!0 (array!13590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275006 (= res!139035 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275007 () Bool)

(declare-fun res!139033 () Bool)

(assert (=> b!275007 (=> (not res!139033) (not e!175980))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275007 (= res!139033 (and (= (size!6796 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6796 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6796 a!3325))))))

(assert (= (and start!26504 res!139032) b!275007))

(assert (= (and b!275007 res!139033) b!275002))

(assert (= (and b!275002 res!139034) b!275004))

(assert (= (and b!275004 res!139031) b!275006))

(assert (= (and b!275006 res!139035) b!275005))

(assert (= (and b!275005 res!139030) b!275003))

(declare-fun m!290699 () Bool)

(assert (=> b!275003 m!290699))

(declare-fun m!290701 () Bool)

(assert (=> b!275006 m!290701))

(declare-fun m!290703 () Bool)

(assert (=> b!275004 m!290703))

(declare-fun m!290705 () Bool)

(assert (=> b!275005 m!290705))

(declare-fun m!290707 () Bool)

(assert (=> b!275002 m!290707))

(declare-fun m!290709 () Bool)

(assert (=> start!26504 m!290709))

(declare-fun m!290711 () Bool)

(assert (=> start!26504 m!290711))

(push 1)

(assert (not b!275004))

(assert (not b!275003))

(assert (not b!275005))

(assert (not b!275006))

(assert (not start!26504))

