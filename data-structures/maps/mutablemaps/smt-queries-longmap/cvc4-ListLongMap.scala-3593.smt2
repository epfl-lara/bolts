; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49364 () Bool)

(assert start!49364)

(declare-fun b!543567 () Bool)

(declare-fun res!338277 () Bool)

(declare-fun e!314301 () Bool)

(assert (=> b!543567 (=> (not res!338277) (not e!314301))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543567 (= res!338277 (validKeyInArray!0 k!1998))))

(declare-fun b!543568 () Bool)

(declare-fun e!314302 () Bool)

(assert (=> b!543568 (= e!314302 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!248214 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543568 (= lt!248214 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543569 () Bool)

(declare-fun res!338269 () Bool)

(declare-fun e!314299 () Bool)

(assert (=> b!543569 (=> (not res!338269) (not e!314299))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34328 0))(
  ( (array!34329 (arr!16493 (Array (_ BitVec 32) (_ BitVec 64))) (size!16857 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34328)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543569 (= res!338269 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16857 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16857 a!3154)) (= (select (arr!16493 a!3154) resIndex!32) (select (arr!16493 a!3154) j!147))))))

(declare-fun b!543570 () Bool)

(declare-fun res!338271 () Bool)

(assert (=> b!543570 (=> (not res!338271) (not e!314302))))

(assert (=> b!543570 (= res!338271 (and (not (= (select (arr!16493 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16493 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16493 a!3154) index!1177) (select (arr!16493 a!3154) j!147)))))))

(declare-fun b!543571 () Bool)

(declare-fun res!338278 () Bool)

(assert (=> b!543571 (=> (not res!338278) (not e!314302))))

(declare-datatypes ((SeekEntryResult!4958 0))(
  ( (MissingZero!4958 (index!22056 (_ BitVec 32))) (Found!4958 (index!22057 (_ BitVec 32))) (Intermediate!4958 (undefined!5770 Bool) (index!22058 (_ BitVec 32)) (x!50984 (_ BitVec 32))) (Undefined!4958) (MissingVacant!4958 (index!22059 (_ BitVec 32))) )
))
(declare-fun lt!248216 () SeekEntryResult!4958)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34328 (_ BitVec 32)) SeekEntryResult!4958)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543571 (= res!338278 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16493 a!3154) j!147) mask!3216) (select (arr!16493 a!3154) j!147) a!3154 mask!3216) lt!248216))))

(declare-fun res!338279 () Bool)

(assert (=> start!49364 (=> (not res!338279) (not e!314301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49364 (= res!338279 (validMask!0 mask!3216))))

(assert (=> start!49364 e!314301))

(assert (=> start!49364 true))

(declare-fun array_inv!12267 (array!34328) Bool)

(assert (=> start!49364 (array_inv!12267 a!3154)))

(declare-fun b!543572 () Bool)

(declare-fun res!338274 () Bool)

(assert (=> b!543572 (=> (not res!338274) (not e!314299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34328 (_ BitVec 32)) Bool)

(assert (=> b!543572 (= res!338274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543573 () Bool)

(declare-fun res!338275 () Bool)

(assert (=> b!543573 (=> (not res!338275) (not e!314301))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543573 (= res!338275 (and (= (size!16857 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16857 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16857 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543574 () Bool)

(declare-fun res!338273 () Bool)

(assert (=> b!543574 (=> (not res!338273) (not e!314301))))

(assert (=> b!543574 (= res!338273 (validKeyInArray!0 (select (arr!16493 a!3154) j!147)))))

(declare-fun b!543575 () Bool)

(assert (=> b!543575 (= e!314299 e!314302)))

(declare-fun res!338268 () Bool)

(assert (=> b!543575 (=> (not res!338268) (not e!314302))))

(assert (=> b!543575 (= res!338268 (= lt!248216 (Intermediate!4958 false resIndex!32 resX!32)))))

(assert (=> b!543575 (= lt!248216 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16493 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543576 () Bool)

(declare-fun res!338272 () Bool)

(assert (=> b!543576 (=> (not res!338272) (not e!314301))))

(declare-fun arrayContainsKey!0 (array!34328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543576 (= res!338272 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543577 () Bool)

(declare-fun res!338276 () Bool)

(assert (=> b!543577 (=> (not res!338276) (not e!314299))))

(declare-datatypes ((List!10665 0))(
  ( (Nil!10662) (Cons!10661 (h!11616 (_ BitVec 64)) (t!16901 List!10665)) )
))
(declare-fun arrayNoDuplicates!0 (array!34328 (_ BitVec 32) List!10665) Bool)

(assert (=> b!543577 (= res!338276 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10662))))

(declare-fun b!543578 () Bool)

(assert (=> b!543578 (= e!314301 e!314299)))

(declare-fun res!338270 () Bool)

(assert (=> b!543578 (=> (not res!338270) (not e!314299))))

(declare-fun lt!248215 () SeekEntryResult!4958)

(assert (=> b!543578 (= res!338270 (or (= lt!248215 (MissingZero!4958 i!1153)) (= lt!248215 (MissingVacant!4958 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34328 (_ BitVec 32)) SeekEntryResult!4958)

(assert (=> b!543578 (= lt!248215 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!49364 res!338279) b!543573))

(assert (= (and b!543573 res!338275) b!543574))

(assert (= (and b!543574 res!338273) b!543567))

(assert (= (and b!543567 res!338277) b!543576))

(assert (= (and b!543576 res!338272) b!543578))

(assert (= (and b!543578 res!338270) b!543572))

(assert (= (and b!543572 res!338274) b!543577))

(assert (= (and b!543577 res!338276) b!543569))

(assert (= (and b!543569 res!338269) b!543575))

(assert (= (and b!543575 res!338268) b!543571))

(assert (= (and b!543571 res!338278) b!543570))

(assert (= (and b!543570 res!338271) b!543568))

(declare-fun m!521641 () Bool)

(assert (=> b!543575 m!521641))

(assert (=> b!543575 m!521641))

(declare-fun m!521643 () Bool)

(assert (=> b!543575 m!521643))

(declare-fun m!521645 () Bool)

(assert (=> start!49364 m!521645))

(declare-fun m!521647 () Bool)

(assert (=> start!49364 m!521647))

(declare-fun m!521649 () Bool)

(assert (=> b!543567 m!521649))

(declare-fun m!521651 () Bool)

(assert (=> b!543576 m!521651))

(declare-fun m!521653 () Bool)

(assert (=> b!543572 m!521653))

(declare-fun m!521655 () Bool)

(assert (=> b!543578 m!521655))

(declare-fun m!521657 () Bool)

(assert (=> b!543569 m!521657))

(assert (=> b!543569 m!521641))

(declare-fun m!521659 () Bool)

(assert (=> b!543570 m!521659))

(assert (=> b!543570 m!521641))

(declare-fun m!521661 () Bool)

(assert (=> b!543568 m!521661))

(assert (=> b!543574 m!521641))

(assert (=> b!543574 m!521641))

(declare-fun m!521663 () Bool)

(assert (=> b!543574 m!521663))

(declare-fun m!521665 () Bool)

(assert (=> b!543577 m!521665))

(assert (=> b!543571 m!521641))

(assert (=> b!543571 m!521641))

(declare-fun m!521667 () Bool)

(assert (=> b!543571 m!521667))

(assert (=> b!543571 m!521667))

(assert (=> b!543571 m!521641))

(declare-fun m!521669 () Bool)

(assert (=> b!543571 m!521669))

(push 1)

(assert (not b!543574))

(assert (not b!543567))

(assert (not start!49364))

(assert (