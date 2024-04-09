; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86068 () Bool)

(assert start!86068)

(declare-fun b!996439 () Bool)

(declare-fun e!562214 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!996439 (= e!562214 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!996440 () Bool)

(declare-fun res!666717 () Bool)

(declare-fun e!562212 () Bool)

(assert (=> b!996440 (=> (not res!666717) (not e!562212))))

(declare-datatypes ((array!63025 0))(
  ( (array!63026 (arr!30340 (Array (_ BitVec 32) (_ BitVec 64))) (size!30843 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63025)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996440 (= res!666717 (validKeyInArray!0 (select (arr!30340 a!3219) j!170)))))

(declare-fun b!996441 () Bool)

(declare-fun res!666710 () Bool)

(assert (=> b!996441 (=> (not res!666710) (not e!562214))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9272 0))(
  ( (MissingZero!9272 (index!39458 (_ BitVec 32))) (Found!9272 (index!39459 (_ BitVec 32))) (Intermediate!9272 (undefined!10084 Bool) (index!39460 (_ BitVec 32)) (x!86925 (_ BitVec 32))) (Undefined!9272) (MissingVacant!9272 (index!39461 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63025 (_ BitVec 32)) SeekEntryResult!9272)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996441 (= res!666710 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30340 a!3219) j!170) mask!3464) (select (arr!30340 a!3219) j!170) a!3219 mask!3464) (Intermediate!9272 false resIndex!38 resX!38)))))

(declare-fun b!996442 () Bool)

(declare-fun res!666716 () Bool)

(assert (=> b!996442 (=> (not res!666716) (not e!562214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63025 (_ BitVec 32)) Bool)

(assert (=> b!996442 (= res!666716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!666718 () Bool)

(assert (=> start!86068 (=> (not res!666718) (not e!562212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86068 (= res!666718 (validMask!0 mask!3464))))

(assert (=> start!86068 e!562212))

(declare-fun array_inv!23330 (array!63025) Bool)

(assert (=> start!86068 (array_inv!23330 a!3219)))

(assert (=> start!86068 true))

(declare-fun b!996443 () Bool)

(declare-fun res!666711 () Bool)

(assert (=> b!996443 (=> (not res!666711) (not e!562214))))

(declare-datatypes ((List!21142 0))(
  ( (Nil!21139) (Cons!21138 (h!22303 (_ BitVec 64)) (t!30151 List!21142)) )
))
(declare-fun arrayNoDuplicates!0 (array!63025 (_ BitVec 32) List!21142) Bool)

(assert (=> b!996443 (= res!666711 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21139))))

(declare-fun b!996444 () Bool)

(assert (=> b!996444 (= e!562212 e!562214)))

(declare-fun res!666714 () Bool)

(assert (=> b!996444 (=> (not res!666714) (not e!562214))))

(declare-fun lt!441210 () SeekEntryResult!9272)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996444 (= res!666714 (or (= lt!441210 (MissingVacant!9272 i!1194)) (= lt!441210 (MissingZero!9272 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63025 (_ BitVec 32)) SeekEntryResult!9272)

(assert (=> b!996444 (= lt!441210 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996445 () Bool)

(declare-fun res!666713 () Bool)

(assert (=> b!996445 (=> (not res!666713) (not e!562212))))

(declare-fun arrayContainsKey!0 (array!63025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996445 (= res!666713 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996446 () Bool)

(declare-fun res!666715 () Bool)

(assert (=> b!996446 (=> (not res!666715) (not e!562212))))

(assert (=> b!996446 (= res!666715 (and (= (size!30843 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30843 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30843 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996447 () Bool)

(declare-fun res!666709 () Bool)

(assert (=> b!996447 (=> (not res!666709) (not e!562212))))

(assert (=> b!996447 (= res!666709 (validKeyInArray!0 k!2224))))

(declare-fun b!996448 () Bool)

(declare-fun res!666712 () Bool)

(assert (=> b!996448 (=> (not res!666712) (not e!562214))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!996448 (= res!666712 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30843 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30843 a!3219))))))

(assert (= (and start!86068 res!666718) b!996446))

(assert (= (and b!996446 res!666715) b!996440))

(assert (= (and b!996440 res!666717) b!996447))

(assert (= (and b!996447 res!666709) b!996445))

(assert (= (and b!996445 res!666713) b!996444))

(assert (= (and b!996444 res!666714) b!996442))

(assert (= (and b!996442 res!666716) b!996443))

(assert (= (and b!996443 res!666711) b!996448))

(assert (= (and b!996448 res!666712) b!996441))

(assert (= (and b!996441 res!666710) b!996439))

(declare-fun m!923643 () Bool)

(assert (=> b!996443 m!923643))

(declare-fun m!923645 () Bool)

(assert (=> b!996441 m!923645))

(assert (=> b!996441 m!923645))

(declare-fun m!923647 () Bool)

(assert (=> b!996441 m!923647))

(assert (=> b!996441 m!923647))

(assert (=> b!996441 m!923645))

(declare-fun m!923649 () Bool)

(assert (=> b!996441 m!923649))

(declare-fun m!923651 () Bool)

(assert (=> start!86068 m!923651))

(declare-fun m!923653 () Bool)

(assert (=> start!86068 m!923653))

(declare-fun m!923655 () Bool)

(assert (=> b!996444 m!923655))

(declare-fun m!923657 () Bool)

(assert (=> b!996445 m!923657))

(declare-fun m!923659 () Bool)

(assert (=> b!996442 m!923659))

(assert (=> b!996440 m!923645))

(assert (=> b!996440 m!923645))

(declare-fun m!923661 () Bool)

(assert (=> b!996440 m!923661))

(declare-fun m!923663 () Bool)

(assert (=> b!996447 m!923663))

(push 1)

(assert (not start!86068))

