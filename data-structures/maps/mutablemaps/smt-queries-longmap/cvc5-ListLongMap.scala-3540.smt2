; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48826 () Bool)

(assert start!48826)

(declare-fun b!537080 () Bool)

(declare-fun e!311628 () Bool)

(declare-fun e!311631 () Bool)

(assert (=> b!537080 (= e!311628 e!311631)))

(declare-fun res!332437 () Bool)

(assert (=> b!537080 (=> (not res!332437) (not e!311631))))

(declare-fun lt!246316 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((array!33994 0))(
  ( (array!33995 (arr!16332 (Array (_ BitVec 32) (_ BitVec 64))) (size!16696 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33994)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537080 (= res!332437 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246316 #b00000000000000000000000000000000) (bvslt lt!246316 (size!16696 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537080 (= lt!246316 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!332436 () Bool)

(declare-fun e!311629 () Bool)

(assert (=> start!48826 (=> (not res!332436) (not e!311629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48826 (= res!332436 (validMask!0 mask!3216))))

(assert (=> start!48826 e!311629))

(assert (=> start!48826 true))

(declare-fun array_inv!12106 (array!33994) Bool)

(assert (=> start!48826 (array_inv!12106 a!3154)))

(declare-fun b!537081 () Bool)

(declare-fun res!332447 () Bool)

(assert (=> b!537081 (=> (not res!332447) (not e!311628))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!537081 (= res!332447 (and (not (= (select (arr!16332 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16332 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16332 a!3154) index!1177) (select (arr!16332 a!3154) j!147)))))))

(declare-fun b!537082 () Bool)

(declare-fun res!332446 () Bool)

(declare-fun e!311630 () Bool)

(assert (=> b!537082 (=> (not res!332446) (not e!311630))))

(declare-datatypes ((List!10504 0))(
  ( (Nil!10501) (Cons!10500 (h!11443 (_ BitVec 64)) (t!16740 List!10504)) )
))
(declare-fun arrayNoDuplicates!0 (array!33994 (_ BitVec 32) List!10504) Bool)

(assert (=> b!537082 (= res!332446 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10501))))

(declare-fun b!537083 () Bool)

(declare-fun res!332439 () Bool)

(assert (=> b!537083 (=> (not res!332439) (not e!311628))))

(declare-datatypes ((SeekEntryResult!4797 0))(
  ( (MissingZero!4797 (index!21412 (_ BitVec 32))) (Found!4797 (index!21413 (_ BitVec 32))) (Intermediate!4797 (undefined!5609 Bool) (index!21414 (_ BitVec 32)) (x!50375 (_ BitVec 32))) (Undefined!4797) (MissingVacant!4797 (index!21415 (_ BitVec 32))) )
))
(declare-fun lt!246315 () SeekEntryResult!4797)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33994 (_ BitVec 32)) SeekEntryResult!4797)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537083 (= res!332439 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16332 a!3154) j!147) mask!3216) (select (arr!16332 a!3154) j!147) a!3154 mask!3216) lt!246315))))

(declare-fun b!537084 () Bool)

(assert (=> b!537084 (= e!311629 e!311630)))

(declare-fun res!332445 () Bool)

(assert (=> b!537084 (=> (not res!332445) (not e!311630))))

(declare-fun lt!246317 () SeekEntryResult!4797)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537084 (= res!332445 (or (= lt!246317 (MissingZero!4797 i!1153)) (= lt!246317 (MissingVacant!4797 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33994 (_ BitVec 32)) SeekEntryResult!4797)

(assert (=> b!537084 (= lt!246317 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537085 () Bool)

(declare-fun res!332442 () Bool)

(assert (=> b!537085 (=> (not res!332442) (not e!311629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537085 (= res!332442 (validKeyInArray!0 k!1998))))

(declare-fun b!537086 () Bool)

(declare-fun res!332435 () Bool)

(assert (=> b!537086 (=> (not res!332435) (not e!311630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33994 (_ BitVec 32)) Bool)

(assert (=> b!537086 (= res!332435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537087 () Bool)

(declare-fun res!332444 () Bool)

(assert (=> b!537087 (=> (not res!332444) (not e!311629))))

(assert (=> b!537087 (= res!332444 (and (= (size!16696 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16696 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16696 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537088 () Bool)

(declare-fun res!332443 () Bool)

(assert (=> b!537088 (=> (not res!332443) (not e!311630))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537088 (= res!332443 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16696 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16696 a!3154)) (= (select (arr!16332 a!3154) resIndex!32) (select (arr!16332 a!3154) j!147))))))

(declare-fun b!537089 () Bool)

(declare-fun res!332440 () Bool)

(assert (=> b!537089 (=> (not res!332440) (not e!311629))))

(declare-fun arrayContainsKey!0 (array!33994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537089 (= res!332440 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537090 () Bool)

(declare-fun res!332438 () Bool)

(assert (=> b!537090 (=> (not res!332438) (not e!311629))))

(assert (=> b!537090 (= res!332438 (validKeyInArray!0 (select (arr!16332 a!3154) j!147)))))

(declare-fun b!537091 () Bool)

(assert (=> b!537091 (= e!311631 false)))

(declare-fun lt!246314 () SeekEntryResult!4797)

(assert (=> b!537091 (= lt!246314 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246316 (select (arr!16332 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537092 () Bool)

(assert (=> b!537092 (= e!311630 e!311628)))

(declare-fun res!332441 () Bool)

(assert (=> b!537092 (=> (not res!332441) (not e!311628))))

(assert (=> b!537092 (= res!332441 (= lt!246315 (Intermediate!4797 false resIndex!32 resX!32)))))

(assert (=> b!537092 (= lt!246315 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16332 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48826 res!332436) b!537087))

(assert (= (and b!537087 res!332444) b!537090))

(assert (= (and b!537090 res!332438) b!537085))

(assert (= (and b!537085 res!332442) b!537089))

(assert (= (and b!537089 res!332440) b!537084))

(assert (= (and b!537084 res!332445) b!537086))

(assert (= (and b!537086 res!332435) b!537082))

(assert (= (and b!537082 res!332446) b!537088))

(assert (= (and b!537088 res!332443) b!537092))

(assert (= (and b!537092 res!332441) b!537083))

(assert (= (and b!537083 res!332439) b!537081))

(assert (= (and b!537081 res!332447) b!537080))

(assert (= (and b!537080 res!332437) b!537091))

(declare-fun m!516379 () Bool)

(assert (=> start!48826 m!516379))

(declare-fun m!516381 () Bool)

(assert (=> start!48826 m!516381))

(declare-fun m!516383 () Bool)

(assert (=> b!537089 m!516383))

(declare-fun m!516385 () Bool)

(assert (=> b!537091 m!516385))

(assert (=> b!537091 m!516385))

(declare-fun m!516387 () Bool)

(assert (=> b!537091 m!516387))

(assert (=> b!537090 m!516385))

(assert (=> b!537090 m!516385))

(declare-fun m!516389 () Bool)

(assert (=> b!537090 m!516389))

(declare-fun m!516391 () Bool)

(assert (=> b!537080 m!516391))

(declare-fun m!516393 () Bool)

(assert (=> b!537085 m!516393))

(declare-fun m!516395 () Bool)

(assert (=> b!537081 m!516395))

(assert (=> b!537081 m!516385))

(assert (=> b!537092 m!516385))

(assert (=> b!537092 m!516385))

(declare-fun m!516397 () Bool)

(assert (=> b!537092 m!516397))

(declare-fun m!516399 () Bool)

(assert (=> b!537082 m!516399))

(declare-fun m!516401 () Bool)

(assert (=> b!537084 m!516401))

(declare-fun m!516403 () Bool)

(assert (=> b!537088 m!516403))

(assert (=> b!537088 m!516385))

(declare-fun m!516405 () Bool)

(assert (=> b!537086 m!516405))

(assert (=> b!537083 m!516385))

(assert (=> b!537083 m!516385))

(declare-fun m!516407 () Bool)

(assert (=> b!537083 m!516407))

(assert (=> b!537083 m!516407))

(assert (=> b!537083 m!516385))

(declare-fun m!516409 () Bool)

(assert (=> b!537083 m!516409))

(push 1)

