; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48768 () Bool)

(assert start!48768)

(declare-fun b!535949 () Bool)

(declare-fun res!331307 () Bool)

(declare-fun e!311197 () Bool)

(assert (=> b!535949 (=> (not res!331307) (not e!311197))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33936 0))(
  ( (array!33937 (arr!16303 (Array (_ BitVec 32) (_ BitVec 64))) (size!16667 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33936)

(assert (=> b!535949 (= res!331307 (and (not (= (select (arr!16303 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16303 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16303 a!3154) index!1177) (select (arr!16303 a!3154) j!147)))))))

(declare-fun res!331315 () Bool)

(declare-fun e!311194 () Bool)

(assert (=> start!48768 (=> (not res!331315) (not e!311194))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48768 (= res!331315 (validMask!0 mask!3216))))

(assert (=> start!48768 e!311194))

(assert (=> start!48768 true))

(declare-fun array_inv!12077 (array!33936) Bool)

(assert (=> start!48768 (array_inv!12077 a!3154)))

(declare-fun b!535950 () Bool)

(declare-fun res!331313 () Bool)

(declare-fun e!311195 () Bool)

(assert (=> b!535950 (=> (not res!331313) (not e!311195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33936 (_ BitVec 32)) Bool)

(assert (=> b!535950 (= res!331313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535951 () Bool)

(declare-fun res!331304 () Bool)

(assert (=> b!535951 (=> (not res!331304) (not e!311194))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535951 (= res!331304 (validKeyInArray!0 k0!1998))))

(declare-fun b!535952 () Bool)

(declare-fun e!311196 () Bool)

(assert (=> b!535952 (= e!311197 e!311196)))

(declare-fun res!331312 () Bool)

(assert (=> b!535952 (=> (not res!331312) (not e!311196))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!245967 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535952 (= res!331312 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245967 #b00000000000000000000000000000000) (bvslt lt!245967 (size!16667 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535952 (= lt!245967 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535953 () Bool)

(assert (=> b!535953 (= e!311194 e!311195)))

(declare-fun res!331310 () Bool)

(assert (=> b!535953 (=> (not res!331310) (not e!311195))))

(declare-datatypes ((SeekEntryResult!4768 0))(
  ( (MissingZero!4768 (index!21296 (_ BitVec 32))) (Found!4768 (index!21297 (_ BitVec 32))) (Intermediate!4768 (undefined!5580 Bool) (index!21298 (_ BitVec 32)) (x!50266 (_ BitVec 32))) (Undefined!4768) (MissingVacant!4768 (index!21299 (_ BitVec 32))) )
))
(declare-fun lt!245968 () SeekEntryResult!4768)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535953 (= res!331310 (or (= lt!245968 (MissingZero!4768 i!1153)) (= lt!245968 (MissingVacant!4768 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33936 (_ BitVec 32)) SeekEntryResult!4768)

(assert (=> b!535953 (= lt!245968 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535954 () Bool)

(declare-fun res!331311 () Bool)

(assert (=> b!535954 (=> (not res!331311) (not e!311195))))

(declare-datatypes ((List!10475 0))(
  ( (Nil!10472) (Cons!10471 (h!11414 (_ BitVec 64)) (t!16711 List!10475)) )
))
(declare-fun arrayNoDuplicates!0 (array!33936 (_ BitVec 32) List!10475) Bool)

(assert (=> b!535954 (= res!331311 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10472))))

(declare-fun b!535955 () Bool)

(declare-fun res!331314 () Bool)

(assert (=> b!535955 (=> (not res!331314) (not e!311197))))

(declare-fun lt!245966 () SeekEntryResult!4768)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33936 (_ BitVec 32)) SeekEntryResult!4768)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535955 (= res!331314 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16303 a!3154) j!147) mask!3216) (select (arr!16303 a!3154) j!147) a!3154 mask!3216) lt!245966))))

(declare-fun b!535956 () Bool)

(declare-fun res!331306 () Bool)

(assert (=> b!535956 (=> (not res!331306) (not e!311194))))

(assert (=> b!535956 (= res!331306 (and (= (size!16667 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16667 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16667 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535957 () Bool)

(assert (=> b!535957 (= e!311196 false)))

(declare-fun lt!245969 () SeekEntryResult!4768)

(assert (=> b!535957 (= lt!245969 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245967 (select (arr!16303 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535958 () Bool)

(assert (=> b!535958 (= e!311195 e!311197)))

(declare-fun res!331309 () Bool)

(assert (=> b!535958 (=> (not res!331309) (not e!311197))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!535958 (= res!331309 (= lt!245966 (Intermediate!4768 false resIndex!32 resX!32)))))

(assert (=> b!535958 (= lt!245966 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16303 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535959 () Bool)

(declare-fun res!331305 () Bool)

(assert (=> b!535959 (=> (not res!331305) (not e!311194))))

(declare-fun arrayContainsKey!0 (array!33936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535959 (= res!331305 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535960 () Bool)

(declare-fun res!331308 () Bool)

(assert (=> b!535960 (=> (not res!331308) (not e!311194))))

(assert (=> b!535960 (= res!331308 (validKeyInArray!0 (select (arr!16303 a!3154) j!147)))))

(declare-fun b!535961 () Bool)

(declare-fun res!331316 () Bool)

(assert (=> b!535961 (=> (not res!331316) (not e!311195))))

(assert (=> b!535961 (= res!331316 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16667 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16667 a!3154)) (= (select (arr!16303 a!3154) resIndex!32) (select (arr!16303 a!3154) j!147))))))

(assert (= (and start!48768 res!331315) b!535956))

(assert (= (and b!535956 res!331306) b!535960))

(assert (= (and b!535960 res!331308) b!535951))

(assert (= (and b!535951 res!331304) b!535959))

(assert (= (and b!535959 res!331305) b!535953))

(assert (= (and b!535953 res!331310) b!535950))

(assert (= (and b!535950 res!331313) b!535954))

(assert (= (and b!535954 res!331311) b!535961))

(assert (= (and b!535961 res!331316) b!535958))

(assert (= (and b!535958 res!331309) b!535955))

(assert (= (and b!535955 res!331314) b!535949))

(assert (= (and b!535949 res!331307) b!535952))

(assert (= (and b!535952 res!331312) b!535957))

(declare-fun m!515451 () Bool)

(assert (=> b!535950 m!515451))

(declare-fun m!515453 () Bool)

(assert (=> b!535953 m!515453))

(declare-fun m!515455 () Bool)

(assert (=> b!535961 m!515455))

(declare-fun m!515457 () Bool)

(assert (=> b!535961 m!515457))

(assert (=> b!535958 m!515457))

(assert (=> b!535958 m!515457))

(declare-fun m!515459 () Bool)

(assert (=> b!535958 m!515459))

(declare-fun m!515461 () Bool)

(assert (=> start!48768 m!515461))

(declare-fun m!515463 () Bool)

(assert (=> start!48768 m!515463))

(assert (=> b!535960 m!515457))

(assert (=> b!535960 m!515457))

(declare-fun m!515465 () Bool)

(assert (=> b!535960 m!515465))

(declare-fun m!515467 () Bool)

(assert (=> b!535952 m!515467))

(assert (=> b!535955 m!515457))

(assert (=> b!535955 m!515457))

(declare-fun m!515469 () Bool)

(assert (=> b!535955 m!515469))

(assert (=> b!535955 m!515469))

(assert (=> b!535955 m!515457))

(declare-fun m!515471 () Bool)

(assert (=> b!535955 m!515471))

(assert (=> b!535957 m!515457))

(assert (=> b!535957 m!515457))

(declare-fun m!515473 () Bool)

(assert (=> b!535957 m!515473))

(declare-fun m!515475 () Bool)

(assert (=> b!535959 m!515475))

(declare-fun m!515477 () Bool)

(assert (=> b!535954 m!515477))

(declare-fun m!515479 () Bool)

(assert (=> b!535949 m!515479))

(assert (=> b!535949 m!515457))

(declare-fun m!515481 () Bool)

(assert (=> b!535951 m!515481))

(check-sat (not b!535958) (not b!535960) (not b!535953) (not b!535957) (not b!535954) (not b!535955) (not b!535951) (not b!535959) (not b!535952) (not start!48768) (not b!535950))
(check-sat)
