; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49348 () Bool)

(assert start!49348)

(declare-fun b!543279 () Bool)

(declare-fun res!337985 () Bool)

(declare-fun e!314204 () Bool)

(assert (=> b!543279 (=> (not res!337985) (not e!314204))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34312 0))(
  ( (array!34313 (arr!16485 (Array (_ BitVec 32) (_ BitVec 64))) (size!16849 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34312)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543279 (= res!337985 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16849 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16849 a!3154)) (= (select (arr!16485 a!3154) resIndex!32) (select (arr!16485 a!3154) j!147))))))

(declare-fun b!543280 () Bool)

(declare-fun e!314203 () Bool)

(assert (=> b!543280 (= e!314203 e!314204)))

(declare-fun res!337982 () Bool)

(assert (=> b!543280 (=> (not res!337982) (not e!314204))))

(declare-datatypes ((SeekEntryResult!4950 0))(
  ( (MissingZero!4950 (index!22024 (_ BitVec 32))) (Found!4950 (index!22025 (_ BitVec 32))) (Intermediate!4950 (undefined!5762 Bool) (index!22026 (_ BitVec 32)) (x!50960 (_ BitVec 32))) (Undefined!4950) (MissingVacant!4950 (index!22027 (_ BitVec 32))) )
))
(declare-fun lt!248142 () SeekEntryResult!4950)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543280 (= res!337982 (or (= lt!248142 (MissingZero!4950 i!1153)) (= lt!248142 (MissingVacant!4950 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34312 (_ BitVec 32)) SeekEntryResult!4950)

(assert (=> b!543280 (= lt!248142 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543281 () Bool)

(declare-fun res!337991 () Bool)

(assert (=> b!543281 (=> (not res!337991) (not e!314203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543281 (= res!337991 (validKeyInArray!0 (select (arr!16485 a!3154) j!147)))))

(declare-fun b!543282 () Bool)

(declare-fun res!337981 () Bool)

(assert (=> b!543282 (=> (not res!337981) (not e!314203))))

(assert (=> b!543282 (= res!337981 (validKeyInArray!0 k!1998))))

(declare-fun b!543283 () Bool)

(declare-fun res!337980 () Bool)

(assert (=> b!543283 (=> (not res!337980) (not e!314204))))

(declare-datatypes ((List!10657 0))(
  ( (Nil!10654) (Cons!10653 (h!11608 (_ BitVec 64)) (t!16893 List!10657)) )
))
(declare-fun arrayNoDuplicates!0 (array!34312 (_ BitVec 32) List!10657) Bool)

(assert (=> b!543283 (= res!337980 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10654))))

(declare-fun b!543284 () Bool)

(declare-fun res!337988 () Bool)

(declare-fun e!314205 () Bool)

(assert (=> b!543284 (=> (not res!337988) (not e!314205))))

(assert (=> b!543284 (= res!337988 (and (not (= (select (arr!16485 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16485 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16485 a!3154) index!1177) (select (arr!16485 a!3154) j!147)))))))

(declare-fun b!543285 () Bool)

(assert (=> b!543285 (= e!314204 e!314205)))

(declare-fun res!337983 () Bool)

(assert (=> b!543285 (=> (not res!337983) (not e!314205))))

(declare-fun lt!248144 () SeekEntryResult!4950)

(assert (=> b!543285 (= res!337983 (= lt!248144 (Intermediate!4950 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34312 (_ BitVec 32)) SeekEntryResult!4950)

(assert (=> b!543285 (= lt!248144 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16485 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543286 () Bool)

(declare-fun res!337987 () Bool)

(assert (=> b!543286 (=> (not res!337987) (not e!314205))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543286 (= res!337987 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16485 a!3154) j!147) mask!3216) (select (arr!16485 a!3154) j!147) a!3154 mask!3216) lt!248144))))

(declare-fun b!543287 () Bool)

(declare-fun res!337984 () Bool)

(assert (=> b!543287 (=> (not res!337984) (not e!314204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34312 (_ BitVec 32)) Bool)

(assert (=> b!543287 (= res!337984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543288 () Bool)

(assert (=> b!543288 (= e!314205 false)))

(declare-fun lt!248143 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543288 (= lt!248143 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!337989 () Bool)

(assert (=> start!49348 (=> (not res!337989) (not e!314203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49348 (= res!337989 (validMask!0 mask!3216))))

(assert (=> start!49348 e!314203))

(assert (=> start!49348 true))

(declare-fun array_inv!12259 (array!34312) Bool)

(assert (=> start!49348 (array_inv!12259 a!3154)))

(declare-fun b!543289 () Bool)

(declare-fun res!337990 () Bool)

(assert (=> b!543289 (=> (not res!337990) (not e!314203))))

(assert (=> b!543289 (= res!337990 (and (= (size!16849 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16849 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16849 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543290 () Bool)

(declare-fun res!337986 () Bool)

(assert (=> b!543290 (=> (not res!337986) (not e!314203))))

(declare-fun arrayContainsKey!0 (array!34312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543290 (= res!337986 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49348 res!337989) b!543289))

(assert (= (and b!543289 res!337990) b!543281))

(assert (= (and b!543281 res!337991) b!543282))

(assert (= (and b!543282 res!337981) b!543290))

(assert (= (and b!543290 res!337986) b!543280))

(assert (= (and b!543280 res!337982) b!543287))

(assert (= (and b!543287 res!337984) b!543283))

(assert (= (and b!543283 res!337980) b!543279))

(assert (= (and b!543279 res!337985) b!543285))

(assert (= (and b!543285 res!337983) b!543286))

(assert (= (and b!543286 res!337987) b!543284))

(assert (= (and b!543284 res!337988) b!543288))

(declare-fun m!521401 () Bool)

(assert (=> b!543288 m!521401))

(declare-fun m!521403 () Bool)

(assert (=> b!543290 m!521403))

(declare-fun m!521405 () Bool)

(assert (=> b!543285 m!521405))

(assert (=> b!543285 m!521405))

(declare-fun m!521407 () Bool)

(assert (=> b!543285 m!521407))

(declare-fun m!521409 () Bool)

(assert (=> start!49348 m!521409))

(declare-fun m!521411 () Bool)

(assert (=> start!49348 m!521411))

(assert (=> b!543281 m!521405))

(assert (=> b!543281 m!521405))

(declare-fun m!521413 () Bool)

(assert (=> b!543281 m!521413))

(assert (=> b!543286 m!521405))

(assert (=> b!543286 m!521405))

(declare-fun m!521415 () Bool)

(assert (=> b!543286 m!521415))

(assert (=> b!543286 m!521415))

(assert (=> b!543286 m!521405))

(declare-fun m!521417 () Bool)

(assert (=> b!543286 m!521417))

(declare-fun m!521419 () Bool)

(assert (=> b!543279 m!521419))

(assert (=> b!543279 m!521405))

(declare-fun m!521421 () Bool)

(assert (=> b!543284 m!521421))

(assert (=> b!543284 m!521405))

(declare-fun m!521423 () Bool)

(assert (=> b!543282 m!521423))

(declare-fun m!521425 () Bool)

(assert (=> b!543283 m!521425))

(declare-fun m!521427 () Bool)

(assert (=> b!543287 m!521427))

(declare-fun m!521429 () Bool)

(assert (=> b!543280 m!521429))

(push 1)

(assert (not b!543286))

(assert (not b!543290))

(assert (not b!543281))

(assert (not b!543285))

(assert (not start!49348))

(assert (not b!543287))

(assert (not b!543282))

(assert (not b!543283))

(assert (not b!543280))

(assert (not b!543288))

(check-sat)

(pop 1)

