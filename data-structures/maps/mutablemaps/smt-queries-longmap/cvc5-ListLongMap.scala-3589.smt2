; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49336 () Bool)

(assert start!49336)

(declare-fun b!543063 () Bool)

(declare-fun res!337765 () Bool)

(declare-fun e!314131 () Bool)

(assert (=> b!543063 (=> (not res!337765) (not e!314131))))

(declare-datatypes ((array!34300 0))(
  ( (array!34301 (arr!16479 (Array (_ BitVec 32) (_ BitVec 64))) (size!16843 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34300)

(declare-datatypes ((List!10651 0))(
  ( (Nil!10648) (Cons!10647 (h!11602 (_ BitVec 64)) (t!16887 List!10651)) )
))
(declare-fun arrayNoDuplicates!0 (array!34300 (_ BitVec 32) List!10651) Bool)

(assert (=> b!543063 (= res!337765 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10648))))

(declare-fun b!543064 () Bool)

(declare-fun res!337768 () Bool)

(assert (=> b!543064 (=> (not res!337768) (not e!314131))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34300 (_ BitVec 32)) Bool)

(assert (=> b!543064 (= res!337768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543065 () Bool)

(declare-fun res!337769 () Bool)

(assert (=> b!543065 (=> (not res!337769) (not e!314131))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543065 (= res!337769 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16843 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16843 a!3154)) (= (select (arr!16479 a!3154) resIndex!32) (select (arr!16479 a!3154) j!147))))))

(declare-fun b!543066 () Bool)

(declare-fun e!314134 () Bool)

(assert (=> b!543066 (= e!314134 false)))

(declare-fun lt!248089 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543066 (= lt!248089 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543067 () Bool)

(assert (=> b!543067 (= e!314131 e!314134)))

(declare-fun res!337771 () Bool)

(assert (=> b!543067 (=> (not res!337771) (not e!314134))))

(declare-datatypes ((SeekEntryResult!4944 0))(
  ( (MissingZero!4944 (index!22000 (_ BitVec 32))) (Found!4944 (index!22001 (_ BitVec 32))) (Intermediate!4944 (undefined!5756 Bool) (index!22002 (_ BitVec 32)) (x!50938 (_ BitVec 32))) (Undefined!4944) (MissingVacant!4944 (index!22003 (_ BitVec 32))) )
))
(declare-fun lt!248088 () SeekEntryResult!4944)

(assert (=> b!543067 (= res!337771 (= lt!248088 (Intermediate!4944 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34300 (_ BitVec 32)) SeekEntryResult!4944)

(assert (=> b!543067 (= lt!248088 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16479 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543068 () Bool)

(declare-fun e!314133 () Bool)

(assert (=> b!543068 (= e!314133 e!314131)))

(declare-fun res!337775 () Bool)

(assert (=> b!543068 (=> (not res!337775) (not e!314131))))

(declare-fun lt!248090 () SeekEntryResult!4944)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543068 (= res!337775 (or (= lt!248090 (MissingZero!4944 i!1153)) (= lt!248090 (MissingVacant!4944 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34300 (_ BitVec 32)) SeekEntryResult!4944)

(assert (=> b!543068 (= lt!248090 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543069 () Bool)

(declare-fun res!337764 () Bool)

(assert (=> b!543069 (=> (not res!337764) (not e!314134))))

(assert (=> b!543069 (= res!337764 (and (not (= (select (arr!16479 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16479 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16479 a!3154) index!1177) (select (arr!16479 a!3154) j!147)))))))

(declare-fun b!543070 () Bool)

(declare-fun res!337766 () Bool)

(assert (=> b!543070 (=> (not res!337766) (not e!314133))))

(assert (=> b!543070 (= res!337766 (and (= (size!16843 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16843 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16843 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!337773 () Bool)

(assert (=> start!49336 (=> (not res!337773) (not e!314133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49336 (= res!337773 (validMask!0 mask!3216))))

(assert (=> start!49336 e!314133))

(assert (=> start!49336 true))

(declare-fun array_inv!12253 (array!34300) Bool)

(assert (=> start!49336 (array_inv!12253 a!3154)))

(declare-fun b!543071 () Bool)

(declare-fun res!337774 () Bool)

(assert (=> b!543071 (=> (not res!337774) (not e!314133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543071 (= res!337774 (validKeyInArray!0 k!1998))))

(declare-fun b!543072 () Bool)

(declare-fun res!337767 () Bool)

(assert (=> b!543072 (=> (not res!337767) (not e!314133))))

(declare-fun arrayContainsKey!0 (array!34300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543072 (= res!337767 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543073 () Bool)

(declare-fun res!337772 () Bool)

(assert (=> b!543073 (=> (not res!337772) (not e!314134))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543073 (= res!337772 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16479 a!3154) j!147) mask!3216) (select (arr!16479 a!3154) j!147) a!3154 mask!3216) lt!248088))))

(declare-fun b!543074 () Bool)

(declare-fun res!337770 () Bool)

(assert (=> b!543074 (=> (not res!337770) (not e!314133))))

(assert (=> b!543074 (= res!337770 (validKeyInArray!0 (select (arr!16479 a!3154) j!147)))))

(assert (= (and start!49336 res!337773) b!543070))

(assert (= (and b!543070 res!337766) b!543074))

(assert (= (and b!543074 res!337770) b!543071))

(assert (= (and b!543071 res!337774) b!543072))

(assert (= (and b!543072 res!337767) b!543068))

(assert (= (and b!543068 res!337775) b!543064))

(assert (= (and b!543064 res!337768) b!543063))

(assert (= (and b!543063 res!337765) b!543065))

(assert (= (and b!543065 res!337769) b!543067))

(assert (= (and b!543067 res!337771) b!543073))

(assert (= (and b!543073 res!337772) b!543069))

(assert (= (and b!543069 res!337764) b!543066))

(declare-fun m!521221 () Bool)

(assert (=> start!49336 m!521221))

(declare-fun m!521223 () Bool)

(assert (=> start!49336 m!521223))

(declare-fun m!521225 () Bool)

(assert (=> b!543074 m!521225))

(assert (=> b!543074 m!521225))

(declare-fun m!521227 () Bool)

(assert (=> b!543074 m!521227))

(declare-fun m!521229 () Bool)

(assert (=> b!543072 m!521229))

(declare-fun m!521231 () Bool)

(assert (=> b!543063 m!521231))

(declare-fun m!521233 () Bool)

(assert (=> b!543065 m!521233))

(assert (=> b!543065 m!521225))

(declare-fun m!521235 () Bool)

(assert (=> b!543068 m!521235))

(assert (=> b!543067 m!521225))

(assert (=> b!543067 m!521225))

(declare-fun m!521237 () Bool)

(assert (=> b!543067 m!521237))

(assert (=> b!543073 m!521225))

(assert (=> b!543073 m!521225))

(declare-fun m!521239 () Bool)

(assert (=> b!543073 m!521239))

(assert (=> b!543073 m!521239))

(assert (=> b!543073 m!521225))

(declare-fun m!521241 () Bool)

(assert (=> b!543073 m!521241))

(declare-fun m!521243 () Bool)

(assert (=> b!543066 m!521243))

(declare-fun m!521245 () Bool)

(assert (=> b!543071 m!521245))

(declare-fun m!521247 () Bool)

(assert (=> b!543064 m!521247))

(declare-fun m!521249 () Bool)

(assert (=> b!543069 m!521249))

(assert (=> b!543069 m!521225))

(push 1)

