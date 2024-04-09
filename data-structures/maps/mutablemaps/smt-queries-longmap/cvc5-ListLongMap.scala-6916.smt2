; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86944 () Bool)

(assert start!86944)

(declare-fun b!1007805 () Bool)

(declare-fun e!567168 () Bool)

(declare-fun e!567167 () Bool)

(assert (=> b!1007805 (= e!567168 e!567167)))

(declare-fun res!676862 () Bool)

(assert (=> b!1007805 (=> (not res!676862) (not e!567167))))

(declare-datatypes ((SeekEntryResult!9521 0))(
  ( (MissingZero!9521 (index!40454 (_ BitVec 32))) (Found!9521 (index!40455 (_ BitVec 32))) (Intermediate!9521 (undefined!10333 Bool) (index!40456 (_ BitVec 32)) (x!87880 (_ BitVec 32))) (Undefined!9521) (MissingVacant!9521 (index!40457 (_ BitVec 32))) )
))
(declare-fun lt!445396 () SeekEntryResult!9521)

(declare-fun lt!445394 () SeekEntryResult!9521)

(assert (=> b!1007805 (= res!676862 (= lt!445396 lt!445394))))

(declare-datatypes ((array!63544 0))(
  ( (array!63545 (arr!30589 (Array (_ BitVec 32) (_ BitVec 64))) (size!31092 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63544)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63544 (_ BitVec 32)) SeekEntryResult!9521)

(assert (=> b!1007805 (= lt!445396 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30589 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007806 () Bool)

(declare-fun res!676864 () Bool)

(declare-fun e!567169 () Bool)

(assert (=> b!1007806 (=> (not res!676864) (not e!567169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007806 (= res!676864 (validKeyInArray!0 (select (arr!30589 a!3219) j!170)))))

(declare-fun b!1007807 () Bool)

(declare-fun e!567165 () Bool)

(assert (=> b!1007807 (= e!567165 false)))

(declare-fun lt!445393 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007807 (= lt!445393 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007808 () Bool)

(declare-fun res!676860 () Bool)

(declare-fun e!567166 () Bool)

(assert (=> b!1007808 (=> (not res!676860) (not e!567166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63544 (_ BitVec 32)) Bool)

(assert (=> b!1007808 (= res!676860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007809 () Bool)

(declare-fun res!676857 () Bool)

(assert (=> b!1007809 (=> (not res!676857) (not e!567166))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007809 (= res!676857 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31092 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31092 a!3219))))))

(declare-fun res!676858 () Bool)

(assert (=> start!86944 (=> (not res!676858) (not e!567169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86944 (= res!676858 (validMask!0 mask!3464))))

(assert (=> start!86944 e!567169))

(declare-fun array_inv!23579 (array!63544) Bool)

(assert (=> start!86944 (array_inv!23579 a!3219)))

(assert (=> start!86944 true))

(declare-fun b!1007810 () Bool)

(declare-fun res!676854 () Bool)

(assert (=> b!1007810 (=> (not res!676854) (not e!567169))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007810 (= res!676854 (and (= (size!31092 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31092 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31092 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007811 () Bool)

(assert (=> b!1007811 (= e!567167 e!567165)))

(declare-fun res!676866 () Bool)

(assert (=> b!1007811 (=> (not res!676866) (not e!567165))))

(declare-fun lt!445395 () array!63544)

(declare-fun lt!445398 () SeekEntryResult!9521)

(declare-fun lt!445392 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007811 (= res!676866 (not (= lt!445398 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445392 mask!3464) lt!445392 lt!445395 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1007811 (= lt!445392 (select (store (arr!30589 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007811 (= lt!445395 (array!63545 (store (arr!30589 a!3219) i!1194 k!2224) (size!31092 a!3219)))))

(declare-fun b!1007812 () Bool)

(assert (=> b!1007812 (= e!567169 e!567166)))

(declare-fun res!676867 () Bool)

(assert (=> b!1007812 (=> (not res!676867) (not e!567166))))

(declare-fun lt!445397 () SeekEntryResult!9521)

(assert (=> b!1007812 (= res!676867 (or (= lt!445397 (MissingVacant!9521 i!1194)) (= lt!445397 (MissingZero!9521 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63544 (_ BitVec 32)) SeekEntryResult!9521)

(assert (=> b!1007812 (= lt!445397 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007813 () Bool)

(declare-fun res!676861 () Bool)

(assert (=> b!1007813 (=> (not res!676861) (not e!567169))))

(declare-fun arrayContainsKey!0 (array!63544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007813 (= res!676861 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007814 () Bool)

(declare-fun res!676856 () Bool)

(assert (=> b!1007814 (=> (not res!676856) (not e!567169))))

(assert (=> b!1007814 (= res!676856 (validKeyInArray!0 k!2224))))

(declare-fun b!1007815 () Bool)

(declare-fun res!676855 () Bool)

(assert (=> b!1007815 (=> (not res!676855) (not e!567165))))

(assert (=> b!1007815 (= res!676855 (not (= lt!445396 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445392 lt!445395 mask!3464))))))

(declare-fun b!1007816 () Bool)

(declare-fun res!676859 () Bool)

(assert (=> b!1007816 (=> (not res!676859) (not e!567166))))

(declare-datatypes ((List!21391 0))(
  ( (Nil!21388) (Cons!21387 (h!22573 (_ BitVec 64)) (t!30400 List!21391)) )
))
(declare-fun arrayNoDuplicates!0 (array!63544 (_ BitVec 32) List!21391) Bool)

(assert (=> b!1007816 (= res!676859 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21388))))

(declare-fun b!1007817 () Bool)

(assert (=> b!1007817 (= e!567166 e!567168)))

(declare-fun res!676863 () Bool)

(assert (=> b!1007817 (=> (not res!676863) (not e!567168))))

(assert (=> b!1007817 (= res!676863 (= lt!445398 lt!445394))))

(assert (=> b!1007817 (= lt!445394 (Intermediate!9521 false resIndex!38 resX!38))))

(assert (=> b!1007817 (= lt!445398 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30589 a!3219) j!170) mask!3464) (select (arr!30589 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007818 () Bool)

(declare-fun res!676865 () Bool)

(assert (=> b!1007818 (=> (not res!676865) (not e!567165))))

(assert (=> b!1007818 (= res!676865 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86944 res!676858) b!1007810))

(assert (= (and b!1007810 res!676854) b!1007806))

(assert (= (and b!1007806 res!676864) b!1007814))

(assert (= (and b!1007814 res!676856) b!1007813))

(assert (= (and b!1007813 res!676861) b!1007812))

(assert (= (and b!1007812 res!676867) b!1007808))

(assert (= (and b!1007808 res!676860) b!1007816))

(assert (= (and b!1007816 res!676859) b!1007809))

(assert (= (and b!1007809 res!676857) b!1007817))

(assert (= (and b!1007817 res!676863) b!1007805))

(assert (= (and b!1007805 res!676862) b!1007811))

(assert (= (and b!1007811 res!676866) b!1007815))

(assert (= (and b!1007815 res!676855) b!1007818))

(assert (= (and b!1007818 res!676865) b!1007807))

(declare-fun m!932739 () Bool)

(assert (=> start!86944 m!932739))

(declare-fun m!932741 () Bool)

(assert (=> start!86944 m!932741))

(declare-fun m!932743 () Bool)

(assert (=> b!1007815 m!932743))

(declare-fun m!932745 () Bool)

(assert (=> b!1007805 m!932745))

(assert (=> b!1007805 m!932745))

(declare-fun m!932747 () Bool)

(assert (=> b!1007805 m!932747))

(declare-fun m!932749 () Bool)

(assert (=> b!1007808 m!932749))

(declare-fun m!932751 () Bool)

(assert (=> b!1007812 m!932751))

(declare-fun m!932753 () Bool)

(assert (=> b!1007813 m!932753))

(declare-fun m!932755 () Bool)

(assert (=> b!1007807 m!932755))

(declare-fun m!932757 () Bool)

(assert (=> b!1007814 m!932757))

(assert (=> b!1007817 m!932745))

(assert (=> b!1007817 m!932745))

(declare-fun m!932759 () Bool)

(assert (=> b!1007817 m!932759))

(assert (=> b!1007817 m!932759))

(assert (=> b!1007817 m!932745))

(declare-fun m!932761 () Bool)

(assert (=> b!1007817 m!932761))

(declare-fun m!932763 () Bool)

(assert (=> b!1007816 m!932763))

(assert (=> b!1007806 m!932745))

(assert (=> b!1007806 m!932745))

(declare-fun m!932765 () Bool)

(assert (=> b!1007806 m!932765))

(declare-fun m!932767 () Bool)

(assert (=> b!1007811 m!932767))

(assert (=> b!1007811 m!932767))

(declare-fun m!932769 () Bool)

(assert (=> b!1007811 m!932769))

(declare-fun m!932771 () Bool)

(assert (=> b!1007811 m!932771))

(declare-fun m!932773 () Bool)

(assert (=> b!1007811 m!932773))

(push 1)

(assert (not b!1007812))

(assert (not b!1007816))

(assert (not b!1007814))

(assert (not b!1007811))

(assert (not b!1007813))

(assert (not b!1007807))

(assert (not b!1007815))

(assert (not b!1007806))

(assert (not b!1007808))

