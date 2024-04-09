; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86254 () Bool)

(assert start!86254)

(declare-fun b!998151 () Bool)

(declare-fun res!668107 () Bool)

(declare-fun e!562938 () Bool)

(assert (=> b!998151 (=> (not res!668107) (not e!562938))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998151 (= res!668107 (validKeyInArray!0 k!2224))))

(declare-fun b!998153 () Bool)

(declare-fun res!668112 () Bool)

(declare-fun e!562937 () Bool)

(assert (=> b!998153 (=> (not res!668112) (not e!562937))))

(declare-datatypes ((array!63109 0))(
  ( (array!63110 (arr!30379 (Array (_ BitVec 32) (_ BitVec 64))) (size!30882 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63109)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63109 (_ BitVec 32)) Bool)

(assert (=> b!998153 (= res!668112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998154 () Bool)

(declare-fun res!668106 () Bool)

(assert (=> b!998154 (=> (not res!668106) (not e!562938))))

(declare-fun arrayContainsKey!0 (array!63109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998154 (= res!668106 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998155 () Bool)

(declare-fun res!668104 () Bool)

(declare-fun e!562940 () Bool)

(assert (=> b!998155 (=> (not res!668104) (not e!562940))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9311 0))(
  ( (MissingZero!9311 (index!39614 (_ BitVec 32))) (Found!9311 (index!39615 (_ BitVec 32))) (Intermediate!9311 (undefined!10123 Bool) (index!39616 (_ BitVec 32)) (x!87080 (_ BitVec 32))) (Undefined!9311) (MissingVacant!9311 (index!39617 (_ BitVec 32))) )
))
(declare-fun lt!441621 () SeekEntryResult!9311)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63109 (_ BitVec 32)) SeekEntryResult!9311)

(assert (=> b!998155 (= res!668104 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30379 a!3219) j!170) a!3219 mask!3464) lt!441621))))

(declare-fun b!998156 () Bool)

(declare-fun res!668103 () Bool)

(assert (=> b!998156 (=> (not res!668103) (not e!562938))))

(assert (=> b!998156 (= res!668103 (validKeyInArray!0 (select (arr!30379 a!3219) j!170)))))

(declare-fun b!998157 () Bool)

(declare-fun res!668113 () Bool)

(assert (=> b!998157 (=> (not res!668113) (not e!562937))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998157 (= res!668113 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30882 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30882 a!3219))))))

(declare-fun b!998158 () Bool)

(declare-fun res!668109 () Bool)

(assert (=> b!998158 (=> (not res!668109) (not e!562938))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998158 (= res!668109 (and (= (size!30882 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30882 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30882 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998159 () Bool)

(assert (=> b!998159 (= e!562940 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!998160 () Bool)

(assert (=> b!998160 (= e!562937 e!562940)))

(declare-fun res!668111 () Bool)

(assert (=> b!998160 (=> (not res!668111) (not e!562940))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998160 (= res!668111 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30379 a!3219) j!170) mask!3464) (select (arr!30379 a!3219) j!170) a!3219 mask!3464) lt!441621))))

(assert (=> b!998160 (= lt!441621 (Intermediate!9311 false resIndex!38 resX!38))))

(declare-fun b!998161 () Bool)

(assert (=> b!998161 (= e!562938 e!562937)))

(declare-fun res!668105 () Bool)

(assert (=> b!998161 (=> (not res!668105) (not e!562937))))

(declare-fun lt!441620 () SeekEntryResult!9311)

(assert (=> b!998161 (= res!668105 (or (= lt!441620 (MissingVacant!9311 i!1194)) (= lt!441620 (MissingZero!9311 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63109 (_ BitVec 32)) SeekEntryResult!9311)

(assert (=> b!998161 (= lt!441620 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998152 () Bool)

(declare-fun res!668110 () Bool)

(assert (=> b!998152 (=> (not res!668110) (not e!562937))))

(declare-datatypes ((List!21181 0))(
  ( (Nil!21178) (Cons!21177 (h!22348 (_ BitVec 64)) (t!30190 List!21181)) )
))
(declare-fun arrayNoDuplicates!0 (array!63109 (_ BitVec 32) List!21181) Bool)

(assert (=> b!998152 (= res!668110 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21178))))

(declare-fun res!668108 () Bool)

(assert (=> start!86254 (=> (not res!668108) (not e!562938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86254 (= res!668108 (validMask!0 mask!3464))))

(assert (=> start!86254 e!562938))

(declare-fun array_inv!23369 (array!63109) Bool)

(assert (=> start!86254 (array_inv!23369 a!3219)))

(assert (=> start!86254 true))

(assert (= (and start!86254 res!668108) b!998158))

(assert (= (and b!998158 res!668109) b!998156))

(assert (= (and b!998156 res!668103) b!998151))

(assert (= (and b!998151 res!668107) b!998154))

(assert (= (and b!998154 res!668106) b!998161))

(assert (= (and b!998161 res!668105) b!998153))

(assert (= (and b!998153 res!668112) b!998152))

(assert (= (and b!998152 res!668110) b!998157))

(assert (= (and b!998157 res!668113) b!998160))

(assert (= (and b!998160 res!668111) b!998155))

(assert (= (and b!998155 res!668104) b!998159))

(declare-fun m!924837 () Bool)

(assert (=> b!998151 m!924837))

(declare-fun m!924839 () Bool)

(assert (=> b!998155 m!924839))

(assert (=> b!998155 m!924839))

(declare-fun m!924841 () Bool)

(assert (=> b!998155 m!924841))

(declare-fun m!924843 () Bool)

(assert (=> b!998152 m!924843))

(declare-fun m!924845 () Bool)

(assert (=> start!86254 m!924845))

(declare-fun m!924847 () Bool)

(assert (=> start!86254 m!924847))

(declare-fun m!924849 () Bool)

(assert (=> b!998161 m!924849))

(assert (=> b!998156 m!924839))

(assert (=> b!998156 m!924839))

(declare-fun m!924851 () Bool)

(assert (=> b!998156 m!924851))

(declare-fun m!924853 () Bool)

(assert (=> b!998153 m!924853))

(assert (=> b!998160 m!924839))

(assert (=> b!998160 m!924839))

(declare-fun m!924855 () Bool)

(assert (=> b!998160 m!924855))

(assert (=> b!998160 m!924855))

(assert (=> b!998160 m!924839))

(declare-fun m!924857 () Bool)

(assert (=> b!998160 m!924857))

(declare-fun m!924859 () Bool)

(assert (=> b!998154 m!924859))

(push 1)

