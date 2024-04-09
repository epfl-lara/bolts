; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87236 () Bool)

(assert start!87236)

(declare-fun res!679200 () Bool)

(declare-fun e!568748 () Bool)

(assert (=> start!87236 (=> (not res!679200) (not e!568748))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87236 (= res!679200 (validMask!0 mask!3464))))

(assert (=> start!87236 e!568748))

(declare-datatypes ((array!63641 0))(
  ( (array!63642 (arr!30633 (Array (_ BitVec 32) (_ BitVec 64))) (size!31136 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63641)

(declare-fun array_inv!23623 (array!63641) Bool)

(assert (=> start!87236 (array_inv!23623 a!3219)))

(assert (=> start!87236 true))

(declare-fun b!1010906 () Bool)

(declare-fun res!679194 () Bool)

(assert (=> b!1010906 (=> (not res!679194) (not e!568748))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010906 (= res!679194 (and (= (size!31136 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31136 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31136 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010907 () Bool)

(declare-fun e!568747 () Bool)

(declare-fun e!568751 () Bool)

(assert (=> b!1010907 (= e!568747 e!568751)))

(declare-fun res!679195 () Bool)

(assert (=> b!1010907 (=> (not res!679195) (not e!568751))))

(declare-datatypes ((SeekEntryResult!9565 0))(
  ( (MissingZero!9565 (index!40630 (_ BitVec 32))) (Found!9565 (index!40631 (_ BitVec 32))) (Intermediate!9565 (undefined!10377 Bool) (index!40632 (_ BitVec 32)) (x!88069 (_ BitVec 32))) (Undefined!9565) (MissingVacant!9565 (index!40633 (_ BitVec 32))) )
))
(declare-fun lt!446795 () SeekEntryResult!9565)

(declare-fun lt!446797 () array!63641)

(declare-fun lt!446801 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63641 (_ BitVec 32)) SeekEntryResult!9565)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010907 (= res!679195 (not (= lt!446795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446801 mask!3464) lt!446801 lt!446797 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1010907 (= lt!446801 (select (store (arr!30633 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010907 (= lt!446797 (array!63642 (store (arr!30633 a!3219) i!1194 k!2224) (size!31136 a!3219)))))

(declare-fun b!1010908 () Bool)

(declare-fun res!679190 () Bool)

(declare-fun e!568750 () Bool)

(assert (=> b!1010908 (=> (not res!679190) (not e!568750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63641 (_ BitVec 32)) Bool)

(assert (=> b!1010908 (= res!679190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010909 () Bool)

(assert (=> b!1010909 (= e!568748 e!568750)))

(declare-fun res!679198 () Bool)

(assert (=> b!1010909 (=> (not res!679198) (not e!568750))))

(declare-fun lt!446800 () SeekEntryResult!9565)

(assert (=> b!1010909 (= res!679198 (or (= lt!446800 (MissingVacant!9565 i!1194)) (= lt!446800 (MissingZero!9565 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63641 (_ BitVec 32)) SeekEntryResult!9565)

(assert (=> b!1010909 (= lt!446800 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1010910 () Bool)

(declare-fun res!679189 () Bool)

(assert (=> b!1010910 (=> (not res!679189) (not e!568748))))

(declare-fun arrayContainsKey!0 (array!63641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010910 (= res!679189 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010911 () Bool)

(declare-fun res!679191 () Bool)

(assert (=> b!1010911 (=> (not res!679191) (not e!568748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010911 (= res!679191 (validKeyInArray!0 (select (arr!30633 a!3219) j!170)))))

(declare-fun b!1010912 () Bool)

(declare-fun e!568749 () Bool)

(assert (=> b!1010912 (= e!568750 e!568749)))

(declare-fun res!679199 () Bool)

(assert (=> b!1010912 (=> (not res!679199) (not e!568749))))

(declare-fun lt!446802 () SeekEntryResult!9565)

(assert (=> b!1010912 (= res!679199 (= lt!446795 lt!446802))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010912 (= lt!446802 (Intermediate!9565 false resIndex!38 resX!38))))

(assert (=> b!1010912 (= lt!446795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30633 a!3219) j!170) mask!3464) (select (arr!30633 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010913 () Bool)

(declare-fun res!679201 () Bool)

(assert (=> b!1010913 (=> (not res!679201) (not e!568750))))

(declare-datatypes ((List!21435 0))(
  ( (Nil!21432) (Cons!21431 (h!22626 (_ BitVec 64)) (t!30444 List!21435)) )
))
(declare-fun arrayNoDuplicates!0 (array!63641 (_ BitVec 32) List!21435) Bool)

(assert (=> b!1010913 (= res!679201 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21432))))

(declare-fun b!1010914 () Bool)

(declare-fun res!679193 () Bool)

(assert (=> b!1010914 (=> (not res!679193) (not e!568751))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!446796 () SeekEntryResult!9565)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1010914 (= res!679193 (not (= lt!446796 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446801 lt!446797 mask!3464))))))

(declare-fun b!1010915 () Bool)

(declare-fun res!679188 () Bool)

(assert (=> b!1010915 (=> (not res!679188) (not e!568748))))

(assert (=> b!1010915 (= res!679188 (validKeyInArray!0 k!2224))))

(declare-fun b!1010916 () Bool)

(declare-fun res!679196 () Bool)

(assert (=> b!1010916 (=> (not res!679196) (not e!568751))))

(assert (=> b!1010916 (= res!679196 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1010917 () Bool)

(declare-fun e!568746 () Bool)

(assert (=> b!1010917 (= e!568751 e!568746)))

(declare-fun res!679187 () Bool)

(assert (=> b!1010917 (=> (not res!679187) (not e!568746))))

(declare-fun lt!446799 () (_ BitVec 32))

(assert (=> b!1010917 (= res!679187 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446799 #b00000000000000000000000000000000) (bvslt lt!446799 (size!31136 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010917 (= lt!446799 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010918 () Bool)

(assert (=> b!1010918 (= e!568749 e!568747)))

(declare-fun res!679192 () Bool)

(assert (=> b!1010918 (=> (not res!679192) (not e!568747))))

(assert (=> b!1010918 (= res!679192 (= lt!446796 lt!446802))))

(assert (=> b!1010918 (= lt!446796 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30633 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010919 () Bool)

(declare-fun res!679197 () Bool)

(assert (=> b!1010919 (=> (not res!679197) (not e!568750))))

(assert (=> b!1010919 (= res!679197 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31136 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31136 a!3219))))))

(declare-fun b!1010920 () Bool)

(assert (=> b!1010920 (= e!568746 false)))

(declare-fun lt!446798 () SeekEntryResult!9565)

(assert (=> b!1010920 (= lt!446798 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446799 (select (arr!30633 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!87236 res!679200) b!1010906))

(assert (= (and b!1010906 res!679194) b!1010911))

(assert (= (and b!1010911 res!679191) b!1010915))

(assert (= (and b!1010915 res!679188) b!1010910))

(assert (= (and b!1010910 res!679189) b!1010909))

(assert (= (and b!1010909 res!679198) b!1010908))

(assert (= (and b!1010908 res!679190) b!1010913))

(assert (= (and b!1010913 res!679201) b!1010919))

(assert (= (and b!1010919 res!679197) b!1010912))

(assert (= (and b!1010912 res!679199) b!1010918))

(assert (= (and b!1010918 res!679192) b!1010907))

(assert (= (and b!1010907 res!679195) b!1010914))

(assert (= (and b!1010914 res!679193) b!1010916))

(assert (= (and b!1010916 res!679196) b!1010917))

(assert (= (and b!1010917 res!679187) b!1010920))

(declare-fun m!935191 () Bool)

(assert (=> b!1010913 m!935191))

(declare-fun m!935193 () Bool)

(assert (=> b!1010912 m!935193))

(assert (=> b!1010912 m!935193))

(declare-fun m!935195 () Bool)

(assert (=> b!1010912 m!935195))

(assert (=> b!1010912 m!935195))

(assert (=> b!1010912 m!935193))

(declare-fun m!935197 () Bool)

(assert (=> b!1010912 m!935197))

(declare-fun m!935199 () Bool)

(assert (=> b!1010917 m!935199))

(assert (=> b!1010920 m!935193))

(assert (=> b!1010920 m!935193))

(declare-fun m!935201 () Bool)

(assert (=> b!1010920 m!935201))

(declare-fun m!935203 () Bool)

(assert (=> b!1010909 m!935203))

(declare-fun m!935205 () Bool)

(assert (=> b!1010914 m!935205))

(declare-fun m!935207 () Bool)

(assert (=> b!1010915 m!935207))

(assert (=> b!1010918 m!935193))

(assert (=> b!1010918 m!935193))

(declare-fun m!935209 () Bool)

(assert (=> b!1010918 m!935209))

(declare-fun m!935211 () Bool)

(assert (=> b!1010910 m!935211))

(declare-fun m!935213 () Bool)

(assert (=> start!87236 m!935213))

(declare-fun m!935215 () Bool)

(assert (=> start!87236 m!935215))

(assert (=> b!1010911 m!935193))

(assert (=> b!1010911 m!935193))

(declare-fun m!935217 () Bool)

(assert (=> b!1010911 m!935217))

(declare-fun m!935219 () Bool)

(assert (=> b!1010908 m!935219))

(declare-fun m!935221 () Bool)

(assert (=> b!1010907 m!935221))

(assert (=> b!1010907 m!935221))

(declare-fun m!935223 () Bool)

(assert (=> b!1010907 m!935223))

(declare-fun m!935225 () Bool)

(assert (=> b!1010907 m!935225))

(declare-fun m!935227 () Bool)

(assert (=> b!1010907 m!935227))

(push 1)

(assert (not b!1010907))

(assert (not b!1010912))

