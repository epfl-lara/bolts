; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49330 () Bool)

(assert start!49330)

(declare-fun b!542955 () Bool)

(declare-fun e!314096 () Bool)

(declare-fun e!314098 () Bool)

(assert (=> b!542955 (= e!314096 e!314098)))

(declare-fun res!337666 () Bool)

(assert (=> b!542955 (=> (not res!337666) (not e!314098))))

(declare-datatypes ((SeekEntryResult!4941 0))(
  ( (MissingZero!4941 (index!21988 (_ BitVec 32))) (Found!4941 (index!21989 (_ BitVec 32))) (Intermediate!4941 (undefined!5753 Bool) (index!21990 (_ BitVec 32)) (x!50927 (_ BitVec 32))) (Undefined!4941) (MissingVacant!4941 (index!21991 (_ BitVec 32))) )
))
(declare-fun lt!248063 () SeekEntryResult!4941)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542955 (= res!337666 (= lt!248063 (Intermediate!4941 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34294 0))(
  ( (array!34295 (arr!16476 (Array (_ BitVec 32) (_ BitVec 64))) (size!16840 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34294)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34294 (_ BitVec 32)) SeekEntryResult!4941)

(assert (=> b!542955 (= lt!248063 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16476 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542956 () Bool)

(declare-fun res!337659 () Bool)

(assert (=> b!542956 (=> (not res!337659) (not e!314098))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542956 (= res!337659 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16476 a!3154) j!147) mask!3216) (select (arr!16476 a!3154) j!147) a!3154 mask!3216) lt!248063))))

(declare-fun b!542957 () Bool)

(declare-fun res!337662 () Bool)

(assert (=> b!542957 (=> (not res!337662) (not e!314096))))

(declare-datatypes ((List!10648 0))(
  ( (Nil!10645) (Cons!10644 (h!11599 (_ BitVec 64)) (t!16884 List!10648)) )
))
(declare-fun arrayNoDuplicates!0 (array!34294 (_ BitVec 32) List!10648) Bool)

(assert (=> b!542957 (= res!337662 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10645))))

(declare-fun b!542958 () Bool)

(declare-fun res!337664 () Bool)

(assert (=> b!542958 (=> (not res!337664) (not e!314096))))

(assert (=> b!542958 (= res!337664 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16840 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16840 a!3154)) (= (select (arr!16476 a!3154) resIndex!32) (select (arr!16476 a!3154) j!147))))))

(declare-fun b!542959 () Bool)

(declare-fun e!314097 () Bool)

(assert (=> b!542959 (= e!314097 e!314096)))

(declare-fun res!337663 () Bool)

(assert (=> b!542959 (=> (not res!337663) (not e!314096))))

(declare-fun lt!248062 () SeekEntryResult!4941)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542959 (= res!337663 (or (= lt!248062 (MissingZero!4941 i!1153)) (= lt!248062 (MissingVacant!4941 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34294 (_ BitVec 32)) SeekEntryResult!4941)

(assert (=> b!542959 (= lt!248062 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542960 () Bool)

(assert (=> b!542960 (= e!314098 false)))

(declare-fun lt!248061 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542960 (= lt!248061 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542961 () Bool)

(declare-fun res!337656 () Bool)

(assert (=> b!542961 (=> (not res!337656) (not e!314097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542961 (= res!337656 (validKeyInArray!0 k!1998))))

(declare-fun b!542962 () Bool)

(declare-fun res!337667 () Bool)

(assert (=> b!542962 (=> (not res!337667) (not e!314096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34294 (_ BitVec 32)) Bool)

(assert (=> b!542962 (= res!337667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542963 () Bool)

(declare-fun res!337658 () Bool)

(assert (=> b!542963 (=> (not res!337658) (not e!314097))))

(assert (=> b!542963 (= res!337658 (and (= (size!16840 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16840 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16840 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542964 () Bool)

(declare-fun res!337660 () Bool)

(assert (=> b!542964 (=> (not res!337660) (not e!314098))))

(assert (=> b!542964 (= res!337660 (and (not (= (select (arr!16476 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16476 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16476 a!3154) index!1177) (select (arr!16476 a!3154) j!147)))))))

(declare-fun b!542965 () Bool)

(declare-fun res!337657 () Bool)

(assert (=> b!542965 (=> (not res!337657) (not e!314097))))

(assert (=> b!542965 (= res!337657 (validKeyInArray!0 (select (arr!16476 a!3154) j!147)))))

(declare-fun res!337661 () Bool)

(assert (=> start!49330 (=> (not res!337661) (not e!314097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49330 (= res!337661 (validMask!0 mask!3216))))

(assert (=> start!49330 e!314097))

(assert (=> start!49330 true))

(declare-fun array_inv!12250 (array!34294) Bool)

(assert (=> start!49330 (array_inv!12250 a!3154)))

(declare-fun b!542966 () Bool)

(declare-fun res!337665 () Bool)

(assert (=> b!542966 (=> (not res!337665) (not e!314097))))

(declare-fun arrayContainsKey!0 (array!34294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542966 (= res!337665 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49330 res!337661) b!542963))

(assert (= (and b!542963 res!337658) b!542965))

(assert (= (and b!542965 res!337657) b!542961))

(assert (= (and b!542961 res!337656) b!542966))

(assert (= (and b!542966 res!337665) b!542959))

(assert (= (and b!542959 res!337663) b!542962))

(assert (= (and b!542962 res!337667) b!542957))

(assert (= (and b!542957 res!337662) b!542958))

(assert (= (and b!542958 res!337664) b!542955))

(assert (= (and b!542955 res!337666) b!542956))

(assert (= (and b!542956 res!337659) b!542964))

(assert (= (and b!542964 res!337660) b!542960))

(declare-fun m!521131 () Bool)

(assert (=> b!542959 m!521131))

(declare-fun m!521133 () Bool)

(assert (=> b!542961 m!521133))

(declare-fun m!521135 () Bool)

(assert (=> b!542965 m!521135))

(assert (=> b!542965 m!521135))

(declare-fun m!521137 () Bool)

(assert (=> b!542965 m!521137))

(declare-fun m!521139 () Bool)

(assert (=> b!542966 m!521139))

(assert (=> b!542956 m!521135))

(assert (=> b!542956 m!521135))

(declare-fun m!521141 () Bool)

(assert (=> b!542956 m!521141))

(assert (=> b!542956 m!521141))

(assert (=> b!542956 m!521135))

(declare-fun m!521143 () Bool)

(assert (=> b!542956 m!521143))

(assert (=> b!542955 m!521135))

(assert (=> b!542955 m!521135))

(declare-fun m!521145 () Bool)

(assert (=> b!542955 m!521145))

(declare-fun m!521147 () Bool)

(assert (=> b!542958 m!521147))

(assert (=> b!542958 m!521135))

(declare-fun m!521149 () Bool)

(assert (=> b!542957 m!521149))

(declare-fun m!521151 () Bool)

(assert (=> b!542962 m!521151))

(declare-fun m!521153 () Bool)

(assert (=> b!542964 m!521153))

(assert (=> b!542964 m!521135))

(declare-fun m!521155 () Bool)

(assert (=> b!542960 m!521155))

(declare-fun m!521157 () Bool)

(assert (=> start!49330 m!521157))

(declare-fun m!521159 () Bool)

(assert (=> start!49330 m!521159))

(push 1)

