; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86626 () Bool)

(assert start!86626)

(declare-fun b!1004083 () Bool)

(declare-fun e!565478 () Bool)

(assert (=> b!1004083 (= e!565478 false)))

(declare-datatypes ((SeekEntryResult!9443 0))(
  ( (MissingZero!9443 (index!40142 (_ BitVec 32))) (Found!9443 (index!40143 (_ BitVec 32))) (Intermediate!9443 (undefined!10255 Bool) (index!40144 (_ BitVec 32)) (x!87576 (_ BitVec 32))) (Undefined!9443) (MissingVacant!9443 (index!40145 (_ BitVec 32))) )
))
(declare-fun lt!444010 () SeekEntryResult!9443)

(declare-fun lt!444013 () (_ BitVec 32))

(declare-datatypes ((array!63379 0))(
  ( (array!63380 (arr!30511 (Array (_ BitVec 32) (_ BitVec 64))) (size!31014 (_ BitVec 32))) )
))
(declare-fun lt!444009 () array!63379)

(declare-fun lt!444012 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63379 (_ BitVec 32)) SeekEntryResult!9443)

(assert (=> b!1004083 (= lt!444010 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444013 lt!444012 lt!444009 mask!3464))))

(declare-fun b!1004084 () Bool)

(declare-fun e!565479 () Bool)

(declare-fun e!565480 () Bool)

(assert (=> b!1004084 (= e!565479 e!565480)))

(declare-fun res!673732 () Bool)

(assert (=> b!1004084 (=> (not res!673732) (not e!565480))))

(declare-fun lt!444011 () SeekEntryResult!9443)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004084 (= res!673732 (not (= lt!444011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444012 mask!3464) lt!444012 lt!444009 mask!3464))))))

(declare-fun a!3219 () array!63379)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1004084 (= lt!444012 (select (store (arr!30511 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004084 (= lt!444009 (array!63380 (store (arr!30511 a!3219) i!1194 k!2224) (size!31014 a!3219)))))

(declare-fun b!1004085 () Bool)

(declare-fun res!673719 () Bool)

(declare-fun e!565481 () Bool)

(assert (=> b!1004085 (=> (not res!673719) (not e!565481))))

(assert (=> b!1004085 (= res!673719 (and (= (size!31014 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31014 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31014 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004086 () Bool)

(declare-fun res!673731 () Bool)

(assert (=> b!1004086 (=> (not res!673731) (not e!565480))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444008 () SeekEntryResult!9443)

(assert (=> b!1004086 (= res!673731 (not (= lt!444008 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444012 lt!444009 mask!3464))))))

(declare-fun b!1004087 () Bool)

(declare-fun res!673728 () Bool)

(declare-fun e!565475 () Bool)

(assert (=> b!1004087 (=> (not res!673728) (not e!565475))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004087 (= res!673728 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31014 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31014 a!3219))))))

(declare-fun b!1004088 () Bool)

(declare-fun res!673718 () Bool)

(assert (=> b!1004088 (=> (not res!673718) (not e!565475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63379 (_ BitVec 32)) Bool)

(assert (=> b!1004088 (= res!673718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004090 () Bool)

(assert (=> b!1004090 (= e!565481 e!565475)))

(declare-fun res!673730 () Bool)

(assert (=> b!1004090 (=> (not res!673730) (not e!565475))))

(declare-fun lt!444015 () SeekEntryResult!9443)

(assert (=> b!1004090 (= res!673730 (or (= lt!444015 (MissingVacant!9443 i!1194)) (= lt!444015 (MissingZero!9443 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63379 (_ BitVec 32)) SeekEntryResult!9443)

(assert (=> b!1004090 (= lt!444015 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1004091 () Bool)

(declare-fun res!673722 () Bool)

(assert (=> b!1004091 (=> (not res!673722) (not e!565481))))

(declare-fun arrayContainsKey!0 (array!63379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004091 (= res!673722 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!673721 () Bool)

(assert (=> start!86626 (=> (not res!673721) (not e!565481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86626 (= res!673721 (validMask!0 mask!3464))))

(assert (=> start!86626 e!565481))

(declare-fun array_inv!23501 (array!63379) Bool)

(assert (=> start!86626 (array_inv!23501 a!3219)))

(assert (=> start!86626 true))

(declare-fun b!1004089 () Bool)

(assert (=> b!1004089 (= e!565480 e!565478)))

(declare-fun res!673726 () Bool)

(assert (=> b!1004089 (=> (not res!673726) (not e!565478))))

(assert (=> b!1004089 (= res!673726 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!444013 #b00000000000000000000000000000000) (bvslt lt!444013 (size!31014 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004089 (= lt!444013 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1004092 () Bool)

(declare-fun e!565476 () Bool)

(assert (=> b!1004092 (= e!565476 e!565479)))

(declare-fun res!673725 () Bool)

(assert (=> b!1004092 (=> (not res!673725) (not e!565479))))

(declare-fun lt!444014 () SeekEntryResult!9443)

(assert (=> b!1004092 (= res!673725 (= lt!444008 lt!444014))))

(assert (=> b!1004092 (= lt!444008 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30511 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004093 () Bool)

(declare-fun res!673724 () Bool)

(assert (=> b!1004093 (=> (not res!673724) (not e!565481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004093 (= res!673724 (validKeyInArray!0 k!2224))))

(declare-fun b!1004094 () Bool)

(declare-fun res!673720 () Bool)

(assert (=> b!1004094 (=> (not res!673720) (not e!565478))))

(assert (=> b!1004094 (= res!673720 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444013 (select (arr!30511 a!3219) j!170) a!3219 mask!3464) lt!444014))))

(declare-fun b!1004095 () Bool)

(assert (=> b!1004095 (= e!565475 e!565476)))

(declare-fun res!673723 () Bool)

(assert (=> b!1004095 (=> (not res!673723) (not e!565476))))

(assert (=> b!1004095 (= res!673723 (= lt!444011 lt!444014))))

(assert (=> b!1004095 (= lt!444014 (Intermediate!9443 false resIndex!38 resX!38))))

(assert (=> b!1004095 (= lt!444011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30511 a!3219) j!170) mask!3464) (select (arr!30511 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004096 () Bool)

(declare-fun res!673717 () Bool)

(assert (=> b!1004096 (=> (not res!673717) (not e!565480))))

(assert (=> b!1004096 (= res!673717 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1004097 () Bool)

(declare-fun res!673727 () Bool)

(assert (=> b!1004097 (=> (not res!673727) (not e!565481))))

(assert (=> b!1004097 (= res!673727 (validKeyInArray!0 (select (arr!30511 a!3219) j!170)))))

(declare-fun b!1004098 () Bool)

(declare-fun res!673729 () Bool)

(assert (=> b!1004098 (=> (not res!673729) (not e!565475))))

(declare-datatypes ((List!21313 0))(
  ( (Nil!21310) (Cons!21309 (h!22486 (_ BitVec 64)) (t!30322 List!21313)) )
))
(declare-fun arrayNoDuplicates!0 (array!63379 (_ BitVec 32) List!21313) Bool)

(assert (=> b!1004098 (= res!673729 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21310))))

(assert (= (and start!86626 res!673721) b!1004085))

(assert (= (and b!1004085 res!673719) b!1004097))

(assert (= (and b!1004097 res!673727) b!1004093))

(assert (= (and b!1004093 res!673724) b!1004091))

(assert (= (and b!1004091 res!673722) b!1004090))

(assert (= (and b!1004090 res!673730) b!1004088))

(assert (= (and b!1004088 res!673718) b!1004098))

(assert (= (and b!1004098 res!673729) b!1004087))

(assert (= (and b!1004087 res!673728) b!1004095))

(assert (= (and b!1004095 res!673723) b!1004092))

(assert (= (and b!1004092 res!673725) b!1004084))

(assert (= (and b!1004084 res!673732) b!1004086))

(assert (= (and b!1004086 res!673731) b!1004096))

(assert (= (and b!1004096 res!673717) b!1004089))

(assert (= (and b!1004089 res!673726) b!1004094))

(assert (= (and b!1004094 res!673720) b!1004083))

(declare-fun m!929781 () Bool)

(assert (=> b!1004084 m!929781))

(assert (=> b!1004084 m!929781))

(declare-fun m!929783 () Bool)

(assert (=> b!1004084 m!929783))

(declare-fun m!929785 () Bool)

(assert (=> b!1004084 m!929785))

(declare-fun m!929787 () Bool)

(assert (=> b!1004084 m!929787))

(declare-fun m!929789 () Bool)

(assert (=> b!1004093 m!929789))

(declare-fun m!929791 () Bool)

(assert (=> b!1004090 m!929791))

(declare-fun m!929793 () Bool)

(assert (=> b!1004088 m!929793))

(declare-fun m!929795 () Bool)

(assert (=> b!1004092 m!929795))

(assert (=> b!1004092 m!929795))

(declare-fun m!929797 () Bool)

(assert (=> b!1004092 m!929797))

(assert (=> b!1004094 m!929795))

(assert (=> b!1004094 m!929795))

(declare-fun m!929799 () Bool)

(assert (=> b!1004094 m!929799))

(declare-fun m!929801 () Bool)

(assert (=> b!1004083 m!929801))

(declare-fun m!929803 () Bool)

(assert (=> b!1004086 m!929803))

(assert (=> b!1004097 m!929795))

(assert (=> b!1004097 m!929795))

(declare-fun m!929805 () Bool)

(assert (=> b!1004097 m!929805))

(declare-fun m!929807 () Bool)

(assert (=> start!86626 m!929807))

(declare-fun m!929809 () Bool)

(assert (=> start!86626 m!929809))

(declare-fun m!929811 () Bool)

(assert (=> b!1004098 m!929811))

(assert (=> b!1004095 m!929795))

(assert (=> b!1004095 m!929795))

(declare-fun m!929813 () Bool)

(assert (=> b!1004095 m!929813))

(assert (=> b!1004095 m!929813))

(assert (=> b!1004095 m!929795))

(declare-fun m!929815 () Bool)

(assert (=> b!1004095 m!929815))

(declare-fun m!929817 () Bool)

(assert (=> b!1004089 m!929817))

(declare-fun m!929819 () Bool)

(assert (=> b!1004091 m!929819))

(push 1)

