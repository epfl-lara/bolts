; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48616 () Bool)

(assert start!48616)

(declare-fun b!533501 () Bool)

(declare-fun res!328856 () Bool)

(declare-fun e!310382 () Bool)

(assert (=> b!533501 (=> (not res!328856) (not e!310382))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33784 0))(
  ( (array!33785 (arr!16227 (Array (_ BitVec 32) (_ BitVec 64))) (size!16591 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33784)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533501 (= res!328856 (and (= (size!16591 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16591 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16591 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533502 () Bool)

(declare-fun res!328858 () Bool)

(declare-fun e!310384 () Bool)

(assert (=> b!533502 (=> (not res!328858) (not e!310384))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533502 (= res!328858 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16591 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16591 a!3154)) (= (select (arr!16227 a!3154) resIndex!32) (select (arr!16227 a!3154) j!147))))))

(declare-fun b!533503 () Bool)

(declare-fun res!328862 () Bool)

(assert (=> b!533503 (=> (not res!328862) (not e!310384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33784 (_ BitVec 32)) Bool)

(assert (=> b!533503 (= res!328862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533504 () Bool)

(assert (=> b!533504 (= e!310382 e!310384)))

(declare-fun res!328861 () Bool)

(assert (=> b!533504 (=> (not res!328861) (not e!310384))))

(declare-datatypes ((SeekEntryResult!4692 0))(
  ( (MissingZero!4692 (index!20992 (_ BitVec 32))) (Found!4692 (index!20993 (_ BitVec 32))) (Intermediate!4692 (undefined!5504 Bool) (index!20994 (_ BitVec 32)) (x!49990 (_ BitVec 32))) (Undefined!4692) (MissingVacant!4692 (index!20995 (_ BitVec 32))) )
))
(declare-fun lt!245446 () SeekEntryResult!4692)

(assert (=> b!533504 (= res!328861 (or (= lt!245446 (MissingZero!4692 i!1153)) (= lt!245446 (MissingVacant!4692 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33784 (_ BitVec 32)) SeekEntryResult!4692)

(assert (=> b!533504 (= lt!245446 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533505 () Bool)

(declare-fun res!328863 () Bool)

(assert (=> b!533505 (=> (not res!328863) (not e!310382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533505 (= res!328863 (validKeyInArray!0 k!1998))))

(declare-fun b!533506 () Bool)

(declare-fun res!328865 () Bool)

(assert (=> b!533506 (=> (not res!328865) (not e!310384))))

(declare-datatypes ((List!10399 0))(
  ( (Nil!10396) (Cons!10395 (h!11338 (_ BitVec 64)) (t!16635 List!10399)) )
))
(declare-fun arrayNoDuplicates!0 (array!33784 (_ BitVec 32) List!10399) Bool)

(assert (=> b!533506 (= res!328865 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10396))))

(declare-fun b!533507 () Bool)

(assert (=> b!533507 (= e!310384 false)))

(declare-fun lt!245447 () SeekEntryResult!4692)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33784 (_ BitVec 32)) SeekEntryResult!4692)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533507 (= lt!245447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16227 a!3154) j!147) mask!3216) (select (arr!16227 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!328857 () Bool)

(assert (=> start!48616 (=> (not res!328857) (not e!310382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48616 (= res!328857 (validMask!0 mask!3216))))

(assert (=> start!48616 e!310382))

(assert (=> start!48616 true))

(declare-fun array_inv!12001 (array!33784) Bool)

(assert (=> start!48616 (array_inv!12001 a!3154)))

(declare-fun b!533508 () Bool)

(declare-fun res!328860 () Bool)

(assert (=> b!533508 (=> (not res!328860) (not e!310382))))

(assert (=> b!533508 (= res!328860 (validKeyInArray!0 (select (arr!16227 a!3154) j!147)))))

(declare-fun b!533509 () Bool)

(declare-fun res!328864 () Bool)

(assert (=> b!533509 (=> (not res!328864) (not e!310382))))

(declare-fun arrayContainsKey!0 (array!33784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533509 (= res!328864 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533510 () Bool)

(declare-fun res!328859 () Bool)

(assert (=> b!533510 (=> (not res!328859) (not e!310384))))

(assert (=> b!533510 (= res!328859 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16227 a!3154) j!147) a!3154 mask!3216) (Intermediate!4692 false resIndex!32 resX!32)))))

(assert (= (and start!48616 res!328857) b!533501))

(assert (= (and b!533501 res!328856) b!533508))

(assert (= (and b!533508 res!328860) b!533505))

(assert (= (and b!533505 res!328863) b!533509))

(assert (= (and b!533509 res!328864) b!533504))

(assert (= (and b!533504 res!328861) b!533503))

(assert (= (and b!533503 res!328862) b!533506))

(assert (= (and b!533506 res!328865) b!533502))

(assert (= (and b!533502 res!328858) b!533510))

(assert (= (and b!533510 res!328859) b!533507))

(declare-fun m!513355 () Bool)

(assert (=> b!533502 m!513355))

(declare-fun m!513357 () Bool)

(assert (=> b!533502 m!513357))

(declare-fun m!513359 () Bool)

(assert (=> b!533509 m!513359))

(declare-fun m!513361 () Bool)

(assert (=> start!48616 m!513361))

(declare-fun m!513363 () Bool)

(assert (=> start!48616 m!513363))

(assert (=> b!533510 m!513357))

(assert (=> b!533510 m!513357))

(declare-fun m!513365 () Bool)

(assert (=> b!533510 m!513365))

(assert (=> b!533508 m!513357))

(assert (=> b!533508 m!513357))

(declare-fun m!513367 () Bool)

(assert (=> b!533508 m!513367))

(assert (=> b!533507 m!513357))

(assert (=> b!533507 m!513357))

(declare-fun m!513369 () Bool)

(assert (=> b!533507 m!513369))

(assert (=> b!533507 m!513369))

(assert (=> b!533507 m!513357))

(declare-fun m!513371 () Bool)

(assert (=> b!533507 m!513371))

(declare-fun m!513373 () Bool)

(assert (=> b!533504 m!513373))

(declare-fun m!513375 () Bool)

(assert (=> b!533506 m!513375))

(declare-fun m!513377 () Bool)

(assert (=> b!533505 m!513377))

(declare-fun m!513379 () Bool)

(assert (=> b!533503 m!513379))

(push 1)

