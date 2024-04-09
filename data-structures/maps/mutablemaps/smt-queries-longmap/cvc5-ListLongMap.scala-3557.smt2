; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48928 () Bool)

(assert start!48928)

(declare-fun b!538908 () Bool)

(declare-fun res!334268 () Bool)

(declare-fun e!312452 () Bool)

(assert (=> b!538908 (=> (not res!334268) (not e!312452))))

(declare-datatypes ((array!34096 0))(
  ( (array!34097 (arr!16383 (Array (_ BitVec 32) (_ BitVec 64))) (size!16747 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34096)

(declare-datatypes ((List!10555 0))(
  ( (Nil!10552) (Cons!10551 (h!11494 (_ BitVec 64)) (t!16791 List!10555)) )
))
(declare-fun arrayNoDuplicates!0 (array!34096 (_ BitVec 32) List!10555) Bool)

(assert (=> b!538908 (= res!334268 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10552))))

(declare-fun b!538909 () Bool)

(declare-fun res!334270 () Bool)

(assert (=> b!538909 (=> (not res!334270) (not e!312452))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538909 (= res!334270 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16747 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16747 a!3154)) (= (select (arr!16383 a!3154) resIndex!32) (select (arr!16383 a!3154) j!147))))))

(declare-fun res!334269 () Bool)

(declare-fun e!312453 () Bool)

(assert (=> start!48928 (=> (not res!334269) (not e!312453))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48928 (= res!334269 (validMask!0 mask!3216))))

(assert (=> start!48928 e!312453))

(assert (=> start!48928 true))

(declare-fun array_inv!12157 (array!34096) Bool)

(assert (=> start!48928 (array_inv!12157 a!3154)))

(declare-fun b!538910 () Bool)

(declare-fun res!334267 () Bool)

(assert (=> b!538910 (=> (not res!334267) (not e!312453))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538910 (= res!334267 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538911 () Bool)

(declare-fun res!334266 () Bool)

(assert (=> b!538911 (=> (not res!334266) (not e!312453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538911 (= res!334266 (validKeyInArray!0 k!1998))))

(declare-fun b!538912 () Bool)

(assert (=> b!538912 (= e!312452 false)))

(declare-datatypes ((SeekEntryResult!4848 0))(
  ( (MissingZero!4848 (index!21616 (_ BitVec 32))) (Found!4848 (index!21617 (_ BitVec 32))) (Intermediate!4848 (undefined!5660 Bool) (index!21618 (_ BitVec 32)) (x!50562 (_ BitVec 32))) (Undefined!4848) (MissingVacant!4848 (index!21619 (_ BitVec 32))) )
))
(declare-fun lt!247031 () SeekEntryResult!4848)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34096 (_ BitVec 32)) SeekEntryResult!4848)

(assert (=> b!538912 (= lt!247031 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16383 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538913 () Bool)

(declare-fun res!334271 () Bool)

(assert (=> b!538913 (=> (not res!334271) (not e!312453))))

(assert (=> b!538913 (= res!334271 (validKeyInArray!0 (select (arr!16383 a!3154) j!147)))))

(declare-fun b!538914 () Bool)

(declare-fun res!334264 () Bool)

(assert (=> b!538914 (=> (not res!334264) (not e!312453))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538914 (= res!334264 (and (= (size!16747 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16747 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16747 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538915 () Bool)

(assert (=> b!538915 (= e!312453 e!312452)))

(declare-fun res!334263 () Bool)

(assert (=> b!538915 (=> (not res!334263) (not e!312452))))

(declare-fun lt!247030 () SeekEntryResult!4848)

(assert (=> b!538915 (= res!334263 (or (= lt!247030 (MissingZero!4848 i!1153)) (= lt!247030 (MissingVacant!4848 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34096 (_ BitVec 32)) SeekEntryResult!4848)

(assert (=> b!538915 (= lt!247030 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538916 () Bool)

(declare-fun res!334265 () Bool)

(assert (=> b!538916 (=> (not res!334265) (not e!312452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34096 (_ BitVec 32)) Bool)

(assert (=> b!538916 (= res!334265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48928 res!334269) b!538914))

(assert (= (and b!538914 res!334264) b!538913))

(assert (= (and b!538913 res!334271) b!538911))

(assert (= (and b!538911 res!334266) b!538910))

(assert (= (and b!538910 res!334267) b!538915))

(assert (= (and b!538915 res!334263) b!538916))

(assert (= (and b!538916 res!334265) b!538908))

(assert (= (and b!538908 res!334268) b!538909))

(assert (= (and b!538909 res!334270) b!538912))

(declare-fun m!518035 () Bool)

(assert (=> b!538915 m!518035))

(declare-fun m!518037 () Bool)

(assert (=> start!48928 m!518037))

(declare-fun m!518039 () Bool)

(assert (=> start!48928 m!518039))

(declare-fun m!518041 () Bool)

(assert (=> b!538912 m!518041))

(assert (=> b!538912 m!518041))

(declare-fun m!518043 () Bool)

(assert (=> b!538912 m!518043))

(declare-fun m!518045 () Bool)

(assert (=> b!538910 m!518045))

(assert (=> b!538913 m!518041))

(assert (=> b!538913 m!518041))

(declare-fun m!518047 () Bool)

(assert (=> b!538913 m!518047))

(declare-fun m!518049 () Bool)

(assert (=> b!538908 m!518049))

(declare-fun m!518051 () Bool)

(assert (=> b!538916 m!518051))

(declare-fun m!518053 () Bool)

(assert (=> b!538911 m!518053))

(declare-fun m!518055 () Bool)

(assert (=> b!538909 m!518055))

(assert (=> b!538909 m!518041))

(push 1)

