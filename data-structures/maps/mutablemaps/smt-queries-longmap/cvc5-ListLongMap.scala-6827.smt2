; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85984 () Bool)

(assert start!85984)

(declare-fun b!995798 () Bool)

(declare-fun e!561942 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!995798 (= e!561942 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-datatypes ((array!62986 0))(
  ( (array!62987 (arr!30322 (Array (_ BitVec 32) (_ BitVec 64))) (size!30825 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62986)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441033 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995798 (= lt!441033 (toIndex!0 (select (arr!30322 a!3219) j!170) mask!3464))))

(declare-fun b!995799 () Bool)

(declare-fun res!666163 () Bool)

(assert (=> b!995799 (=> (not res!666163) (not e!561942))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995799 (= res!666163 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30825 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30825 a!3219))))))

(declare-fun res!666157 () Bool)

(declare-fun e!561943 () Bool)

(assert (=> start!85984 (=> (not res!666157) (not e!561943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85984 (= res!666157 (validMask!0 mask!3464))))

(assert (=> start!85984 e!561943))

(declare-fun array_inv!23312 (array!62986) Bool)

(assert (=> start!85984 (array_inv!23312 a!3219)))

(assert (=> start!85984 true))

(declare-fun b!995800 () Bool)

(assert (=> b!995800 (= e!561943 e!561942)))

(declare-fun res!666161 () Bool)

(assert (=> b!995800 (=> (not res!666161) (not e!561942))))

(declare-datatypes ((SeekEntryResult!9254 0))(
  ( (MissingZero!9254 (index!39386 (_ BitVec 32))) (Found!9254 (index!39387 (_ BitVec 32))) (Intermediate!9254 (undefined!10066 Bool) (index!39388 (_ BitVec 32)) (x!86856 (_ BitVec 32))) (Undefined!9254) (MissingVacant!9254 (index!39389 (_ BitVec 32))) )
))
(declare-fun lt!441032 () SeekEntryResult!9254)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995800 (= res!666161 (or (= lt!441032 (MissingVacant!9254 i!1194)) (= lt!441032 (MissingZero!9254 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62986 (_ BitVec 32)) SeekEntryResult!9254)

(assert (=> b!995800 (= lt!441032 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995801 () Bool)

(declare-fun res!666159 () Bool)

(assert (=> b!995801 (=> (not res!666159) (not e!561942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62986 (_ BitVec 32)) Bool)

(assert (=> b!995801 (= res!666159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995802 () Bool)

(declare-fun res!666162 () Bool)

(assert (=> b!995802 (=> (not res!666162) (not e!561943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995802 (= res!666162 (validKeyInArray!0 (select (arr!30322 a!3219) j!170)))))

(declare-fun b!995803 () Bool)

(declare-fun res!666156 () Bool)

(assert (=> b!995803 (=> (not res!666156) (not e!561943))))

(declare-fun arrayContainsKey!0 (array!62986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995803 (= res!666156 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995804 () Bool)

(declare-fun res!666158 () Bool)

(assert (=> b!995804 (=> (not res!666158) (not e!561942))))

(declare-datatypes ((List!21124 0))(
  ( (Nil!21121) (Cons!21120 (h!22282 (_ BitVec 64)) (t!30133 List!21124)) )
))
(declare-fun arrayNoDuplicates!0 (array!62986 (_ BitVec 32) List!21124) Bool)

(assert (=> b!995804 (= res!666158 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21121))))

(declare-fun b!995805 () Bool)

(declare-fun res!666160 () Bool)

(assert (=> b!995805 (=> (not res!666160) (not e!561943))))

(assert (=> b!995805 (= res!666160 (and (= (size!30825 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30825 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30825 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995806 () Bool)

(declare-fun res!666155 () Bool)

(assert (=> b!995806 (=> (not res!666155) (not e!561943))))

(assert (=> b!995806 (= res!666155 (validKeyInArray!0 k!2224))))

(assert (= (and start!85984 res!666157) b!995805))

(assert (= (and b!995805 res!666160) b!995802))

(assert (= (and b!995802 res!666162) b!995806))

(assert (= (and b!995806 res!666155) b!995803))

(assert (= (and b!995803 res!666156) b!995800))

(assert (= (and b!995800 res!666161) b!995801))

(assert (= (and b!995801 res!666159) b!995804))

(assert (= (and b!995804 res!666158) b!995799))

(assert (= (and b!995799 res!666163) b!995798))

(declare-fun m!923181 () Bool)

(assert (=> b!995806 m!923181))

(declare-fun m!923183 () Bool)

(assert (=> b!995804 m!923183))

(declare-fun m!923185 () Bool)

(assert (=> start!85984 m!923185))

(declare-fun m!923187 () Bool)

(assert (=> start!85984 m!923187))

(declare-fun m!923189 () Bool)

(assert (=> b!995803 m!923189))

(declare-fun m!923191 () Bool)

(assert (=> b!995798 m!923191))

(assert (=> b!995798 m!923191))

(declare-fun m!923193 () Bool)

(assert (=> b!995798 m!923193))

(declare-fun m!923195 () Bool)

(assert (=> b!995800 m!923195))

(declare-fun m!923197 () Bool)

(assert (=> b!995801 m!923197))

(assert (=> b!995802 m!923191))

(assert (=> b!995802 m!923191))

(declare-fun m!923199 () Bool)

(assert (=> b!995802 m!923199))

(push 1)

(assert (not b!995804))

(assert (not start!85984))

(assert (not b!995800))

(assert (not b!995801))

(assert (not b!995802))

(assert (not b!995806))

