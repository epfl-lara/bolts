; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48770 () Bool)

(assert start!48770)

(declare-fun b!535988 () Bool)

(declare-fun res!331353 () Bool)

(declare-fun e!311212 () Bool)

(assert (=> b!535988 (=> (not res!331353) (not e!311212))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((array!33938 0))(
  ( (array!33939 (arr!16304 (Array (_ BitVec 32) (_ BitVec 64))) (size!16668 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33938)

(assert (=> b!535988 (= res!331353 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16668 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16668 a!3154)) (= (select (arr!16304 a!3154) resIndex!32) (select (arr!16304 a!3154) j!147))))))

(declare-fun b!535989 () Bool)

(declare-fun res!331347 () Bool)

(assert (=> b!535989 (=> (not res!331347) (not e!311212))))

(declare-datatypes ((List!10476 0))(
  ( (Nil!10473) (Cons!10472 (h!11415 (_ BitVec 64)) (t!16712 List!10476)) )
))
(declare-fun arrayNoDuplicates!0 (array!33938 (_ BitVec 32) List!10476) Bool)

(assert (=> b!535989 (= res!331347 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10473))))

(declare-fun b!535990 () Bool)

(declare-fun res!331352 () Bool)

(declare-fun e!311211 () Bool)

(assert (=> b!535990 (=> (not res!331352) (not e!311211))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535990 (= res!331352 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535991 () Bool)

(declare-fun res!331349 () Bool)

(assert (=> b!535991 (=> (not res!331349) (not e!311211))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535991 (= res!331349 (and (= (size!16668 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16668 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16668 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535992 () Bool)

(declare-fun e!311210 () Bool)

(assert (=> b!535992 (= e!311210 false)))

(declare-fun lt!245981 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4769 0))(
  ( (MissingZero!4769 (index!21300 (_ BitVec 32))) (Found!4769 (index!21301 (_ BitVec 32))) (Intermediate!4769 (undefined!5581 Bool) (index!21302 (_ BitVec 32)) (x!50267 (_ BitVec 32))) (Undefined!4769) (MissingVacant!4769 (index!21303 (_ BitVec 32))) )
))
(declare-fun lt!245979 () SeekEntryResult!4769)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33938 (_ BitVec 32)) SeekEntryResult!4769)

(assert (=> b!535992 (= lt!245979 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245981 (select (arr!16304 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!331351 () Bool)

(assert (=> start!48770 (=> (not res!331351) (not e!311211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48770 (= res!331351 (validMask!0 mask!3216))))

(assert (=> start!48770 e!311211))

(assert (=> start!48770 true))

(declare-fun array_inv!12078 (array!33938) Bool)

(assert (=> start!48770 (array_inv!12078 a!3154)))

(declare-fun b!535993 () Bool)

(declare-fun e!311209 () Bool)

(assert (=> b!535993 (= e!311209 e!311210)))

(declare-fun res!331350 () Bool)

(assert (=> b!535993 (=> (not res!331350) (not e!311210))))

(assert (=> b!535993 (= res!331350 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245981 #b00000000000000000000000000000000) (bvslt lt!245981 (size!16668 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535993 (= lt!245981 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535994 () Bool)

(declare-fun res!331355 () Bool)

(assert (=> b!535994 (=> (not res!331355) (not e!311209))))

(declare-fun lt!245980 () SeekEntryResult!4769)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535994 (= res!331355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16304 a!3154) j!147) mask!3216) (select (arr!16304 a!3154) j!147) a!3154 mask!3216) lt!245980))))

(declare-fun b!535995 () Bool)

(declare-fun res!331354 () Bool)

(assert (=> b!535995 (=> (not res!331354) (not e!311212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33938 (_ BitVec 32)) Bool)

(assert (=> b!535995 (= res!331354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535996 () Bool)

(declare-fun res!331346 () Bool)

(assert (=> b!535996 (=> (not res!331346) (not e!311211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535996 (= res!331346 (validKeyInArray!0 (select (arr!16304 a!3154) j!147)))))

(declare-fun b!535997 () Bool)

(declare-fun res!331345 () Bool)

(assert (=> b!535997 (=> (not res!331345) (not e!311209))))

(assert (=> b!535997 (= res!331345 (and (not (= (select (arr!16304 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16304 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16304 a!3154) index!1177) (select (arr!16304 a!3154) j!147)))))))

(declare-fun b!535998 () Bool)

(declare-fun res!331348 () Bool)

(assert (=> b!535998 (=> (not res!331348) (not e!311211))))

(assert (=> b!535998 (= res!331348 (validKeyInArray!0 k!1998))))

(declare-fun b!535999 () Bool)

(assert (=> b!535999 (= e!311211 e!311212)))

(declare-fun res!331344 () Bool)

(assert (=> b!535999 (=> (not res!331344) (not e!311212))))

(declare-fun lt!245978 () SeekEntryResult!4769)

(assert (=> b!535999 (= res!331344 (or (= lt!245978 (MissingZero!4769 i!1153)) (= lt!245978 (MissingVacant!4769 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33938 (_ BitVec 32)) SeekEntryResult!4769)

(assert (=> b!535999 (= lt!245978 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536000 () Bool)

(assert (=> b!536000 (= e!311212 e!311209)))

(declare-fun res!331343 () Bool)

(assert (=> b!536000 (=> (not res!331343) (not e!311209))))

(assert (=> b!536000 (= res!331343 (= lt!245980 (Intermediate!4769 false resIndex!32 resX!32)))))

(assert (=> b!536000 (= lt!245980 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16304 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48770 res!331351) b!535991))

(assert (= (and b!535991 res!331349) b!535996))

(assert (= (and b!535996 res!331346) b!535998))

(assert (= (and b!535998 res!331348) b!535990))

(assert (= (and b!535990 res!331352) b!535999))

(assert (= (and b!535999 res!331344) b!535995))

(assert (= (and b!535995 res!331354) b!535989))

(assert (= (and b!535989 res!331347) b!535988))

(assert (= (and b!535988 res!331353) b!536000))

(assert (= (and b!536000 res!331343) b!535994))

(assert (= (and b!535994 res!331355) b!535997))

(assert (= (and b!535997 res!331345) b!535993))

(assert (= (and b!535993 res!331350) b!535992))

(declare-fun m!515483 () Bool)

(assert (=> b!535998 m!515483))

(declare-fun m!515485 () Bool)

(assert (=> b!536000 m!515485))

(assert (=> b!536000 m!515485))

(declare-fun m!515487 () Bool)

(assert (=> b!536000 m!515487))

(declare-fun m!515489 () Bool)

(assert (=> start!48770 m!515489))

(declare-fun m!515491 () Bool)

(assert (=> start!48770 m!515491))

(declare-fun m!515493 () Bool)

(assert (=> b!535988 m!515493))

(assert (=> b!535988 m!515485))

(declare-fun m!515495 () Bool)

(assert (=> b!535990 m!515495))

(declare-fun m!515497 () Bool)

(assert (=> b!535995 m!515497))

(assert (=> b!535992 m!515485))

(assert (=> b!535992 m!515485))

(declare-fun m!515499 () Bool)

(assert (=> b!535992 m!515499))

(declare-fun m!515501 () Bool)

(assert (=> b!535989 m!515501))

(declare-fun m!515503 () Bool)

(assert (=> b!535999 m!515503))

(declare-fun m!515505 () Bool)

(assert (=> b!535997 m!515505))

(assert (=> b!535997 m!515485))

(assert (=> b!535994 m!515485))

(assert (=> b!535994 m!515485))

(declare-fun m!515507 () Bool)

(assert (=> b!535994 m!515507))

(assert (=> b!535994 m!515507))

(assert (=> b!535994 m!515485))

(declare-fun m!515509 () Bool)

(assert (=> b!535994 m!515509))

(assert (=> b!535996 m!515485))

(assert (=> b!535996 m!515485))

(declare-fun m!515511 () Bool)

(assert (=> b!535996 m!515511))

(declare-fun m!515513 () Bool)

(assert (=> b!535993 m!515513))

(push 1)

