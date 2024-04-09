; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86548 () Bool)

(assert start!86548)

(declare-fun b!1002211 () Bool)

(declare-fun res!671849 () Bool)

(declare-fun e!564658 () Bool)

(assert (=> b!1002211 (=> (not res!671849) (not e!564658))))

(declare-datatypes ((array!63301 0))(
  ( (array!63302 (arr!30472 (Array (_ BitVec 32) (_ BitVec 64))) (size!30975 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63301)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63301 (_ BitVec 32)) Bool)

(assert (=> b!1002211 (= res!671849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002212 () Bool)

(declare-fun e!564660 () Bool)

(assert (=> b!1002212 (= e!564658 e!564660)))

(declare-fun res!671853 () Bool)

(assert (=> b!1002212 (=> (not res!671853) (not e!564660))))

(declare-datatypes ((SeekEntryResult!9404 0))(
  ( (MissingZero!9404 (index!39986 (_ BitVec 32))) (Found!9404 (index!39987 (_ BitVec 32))) (Intermediate!9404 (undefined!10216 Bool) (index!39988 (_ BitVec 32)) (x!87433 (_ BitVec 32))) (Undefined!9404) (MissingVacant!9404 (index!39989 (_ BitVec 32))) )
))
(declare-fun lt!443078 () SeekEntryResult!9404)

(declare-fun lt!443079 () SeekEntryResult!9404)

(assert (=> b!1002212 (= res!671853 (= lt!443078 lt!443079))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002212 (= lt!443079 (Intermediate!9404 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63301 (_ BitVec 32)) SeekEntryResult!9404)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002212 (= lt!443078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30472 a!3219) j!170) mask!3464) (select (arr!30472 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002213 () Bool)

(declare-fun res!671855 () Bool)

(declare-fun e!564662 () Bool)

(assert (=> b!1002213 (=> (not res!671855) (not e!564662))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002213 (= res!671855 (validKeyInArray!0 k!2224))))

(declare-fun b!1002214 () Bool)

(declare-fun res!671856 () Bool)

(declare-fun e!564659 () Bool)

(assert (=> b!1002214 (=> (not res!671856) (not e!564659))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!443073 () SeekEntryResult!9404)

(declare-fun lt!443076 () array!63301)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!443074 () (_ BitVec 64))

(assert (=> b!1002214 (= res!671856 (not (= lt!443073 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443074 lt!443076 mask!3464))))))

(declare-fun b!1002215 () Bool)

(declare-fun res!671851 () Bool)

(declare-fun e!564656 () Bool)

(assert (=> b!1002215 (=> (not res!671851) (not e!564656))))

(declare-fun lt!443077 () (_ BitVec 32))

(assert (=> b!1002215 (= res!671851 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443077 (select (arr!30472 a!3219) j!170) a!3219 mask!3464) lt!443079))))

(declare-fun b!1002216 () Bool)

(declare-fun e!564657 () Bool)

(assert (=> b!1002216 (= e!564660 e!564657)))

(declare-fun res!671858 () Bool)

(assert (=> b!1002216 (=> (not res!671858) (not e!564657))))

(assert (=> b!1002216 (= res!671858 (= lt!443073 lt!443079))))

(assert (=> b!1002216 (= lt!443073 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30472 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002217 () Bool)

(declare-fun res!671845 () Bool)

(assert (=> b!1002217 (=> (not res!671845) (not e!564662))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002217 (= res!671845 (and (= (size!30975 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30975 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30975 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002218 () Bool)

(declare-fun res!671857 () Bool)

(assert (=> b!1002218 (=> (not res!671857) (not e!564658))))

(assert (=> b!1002218 (= res!671857 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30975 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30975 a!3219))))))

(declare-fun b!1002219 () Bool)

(assert (=> b!1002219 (= e!564656 false)))

(declare-fun lt!443075 () SeekEntryResult!9404)

(assert (=> b!1002219 (= lt!443075 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443077 lt!443074 lt!443076 mask!3464))))

(declare-fun b!1002220 () Bool)

(assert (=> b!1002220 (= e!564659 e!564656)))

(declare-fun res!671859 () Bool)

(assert (=> b!1002220 (=> (not res!671859) (not e!564656))))

(assert (=> b!1002220 (= res!671859 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443077 #b00000000000000000000000000000000) (bvslt lt!443077 (size!30975 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002220 (= lt!443077 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002221 () Bool)

(declare-fun res!671847 () Bool)

(assert (=> b!1002221 (=> (not res!671847) (not e!564658))))

(declare-datatypes ((List!21274 0))(
  ( (Nil!21271) (Cons!21270 (h!22447 (_ BitVec 64)) (t!30283 List!21274)) )
))
(declare-fun arrayNoDuplicates!0 (array!63301 (_ BitVec 32) List!21274) Bool)

(assert (=> b!1002221 (= res!671847 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21271))))

(declare-fun b!1002222 () Bool)

(declare-fun res!671850 () Bool)

(assert (=> b!1002222 (=> (not res!671850) (not e!564659))))

(assert (=> b!1002222 (= res!671850 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002223 () Bool)

(declare-fun res!671846 () Bool)

(assert (=> b!1002223 (=> (not res!671846) (not e!564662))))

(assert (=> b!1002223 (= res!671846 (validKeyInArray!0 (select (arr!30472 a!3219) j!170)))))

(declare-fun b!1002224 () Bool)

(declare-fun res!671860 () Bool)

(assert (=> b!1002224 (=> (not res!671860) (not e!564662))))

(declare-fun arrayContainsKey!0 (array!63301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002224 (= res!671860 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!671852 () Bool)

(assert (=> start!86548 (=> (not res!671852) (not e!564662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86548 (= res!671852 (validMask!0 mask!3464))))

(assert (=> start!86548 e!564662))

(declare-fun array_inv!23462 (array!63301) Bool)

(assert (=> start!86548 (array_inv!23462 a!3219)))

(assert (=> start!86548 true))

(declare-fun b!1002225 () Bool)

(assert (=> b!1002225 (= e!564657 e!564659)))

(declare-fun res!671848 () Bool)

(assert (=> b!1002225 (=> (not res!671848) (not e!564659))))

(assert (=> b!1002225 (= res!671848 (not (= lt!443078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443074 mask!3464) lt!443074 lt!443076 mask!3464))))))

(assert (=> b!1002225 (= lt!443074 (select (store (arr!30472 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002225 (= lt!443076 (array!63302 (store (arr!30472 a!3219) i!1194 k!2224) (size!30975 a!3219)))))

(declare-fun b!1002226 () Bool)

(assert (=> b!1002226 (= e!564662 e!564658)))

(declare-fun res!671854 () Bool)

(assert (=> b!1002226 (=> (not res!671854) (not e!564658))))

(declare-fun lt!443072 () SeekEntryResult!9404)

(assert (=> b!1002226 (= res!671854 (or (= lt!443072 (MissingVacant!9404 i!1194)) (= lt!443072 (MissingZero!9404 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63301 (_ BitVec 32)) SeekEntryResult!9404)

(assert (=> b!1002226 (= lt!443072 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86548 res!671852) b!1002217))

(assert (= (and b!1002217 res!671845) b!1002223))

(assert (= (and b!1002223 res!671846) b!1002213))

(assert (= (and b!1002213 res!671855) b!1002224))

(assert (= (and b!1002224 res!671860) b!1002226))

(assert (= (and b!1002226 res!671854) b!1002211))

(assert (= (and b!1002211 res!671849) b!1002221))

(assert (= (and b!1002221 res!671847) b!1002218))

(assert (= (and b!1002218 res!671857) b!1002212))

(assert (= (and b!1002212 res!671853) b!1002216))

(assert (= (and b!1002216 res!671858) b!1002225))

(assert (= (and b!1002225 res!671848) b!1002214))

(assert (= (and b!1002214 res!671856) b!1002222))

(assert (= (and b!1002222 res!671850) b!1002220))

(assert (= (and b!1002220 res!671859) b!1002215))

(assert (= (and b!1002215 res!671851) b!1002219))

(declare-fun m!928221 () Bool)

(assert (=> start!86548 m!928221))

(declare-fun m!928223 () Bool)

(assert (=> start!86548 m!928223))

(declare-fun m!928225 () Bool)

(assert (=> b!1002216 m!928225))

(assert (=> b!1002216 m!928225))

(declare-fun m!928227 () Bool)

(assert (=> b!1002216 m!928227))

(declare-fun m!928229 () Bool)

(assert (=> b!1002211 m!928229))

(declare-fun m!928231 () Bool)

(assert (=> b!1002225 m!928231))

(assert (=> b!1002225 m!928231))

(declare-fun m!928233 () Bool)

(assert (=> b!1002225 m!928233))

(declare-fun m!928235 () Bool)

(assert (=> b!1002225 m!928235))

(declare-fun m!928237 () Bool)

(assert (=> b!1002225 m!928237))

(declare-fun m!928239 () Bool)

(assert (=> b!1002224 m!928239))

(assert (=> b!1002223 m!928225))

(assert (=> b!1002223 m!928225))

(declare-fun m!928241 () Bool)

(assert (=> b!1002223 m!928241))

(assert (=> b!1002212 m!928225))

(assert (=> b!1002212 m!928225))

(declare-fun m!928243 () Bool)

(assert (=> b!1002212 m!928243))

(assert (=> b!1002212 m!928243))

(assert (=> b!1002212 m!928225))

(declare-fun m!928245 () Bool)

(assert (=> b!1002212 m!928245))

(declare-fun m!928247 () Bool)

(assert (=> b!1002220 m!928247))

(assert (=> b!1002215 m!928225))

(assert (=> b!1002215 m!928225))

(declare-fun m!928249 () Bool)

(assert (=> b!1002215 m!928249))

(declare-fun m!928251 () Bool)

(assert (=> b!1002226 m!928251))

(declare-fun m!928253 () Bool)

(assert (=> b!1002221 m!928253))

(declare-fun m!928255 () Bool)

(assert (=> b!1002219 m!928255))

(declare-fun m!928257 () Bool)

(assert (=> b!1002214 m!928257))

(declare-fun m!928259 () Bool)

(assert (=> b!1002213 m!928259))

(push 1)

