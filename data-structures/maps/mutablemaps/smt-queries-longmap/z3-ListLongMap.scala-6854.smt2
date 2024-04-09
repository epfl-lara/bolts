; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86412 () Bool)

(assert start!86412)

(declare-fun b!999507 () Bool)

(declare-fun res!669143 () Bool)

(declare-fun e!563585 () Bool)

(assert (=> b!999507 (=> (not res!669143) (not e!563585))))

(declare-datatypes ((array!63165 0))(
  ( (array!63166 (arr!30404 (Array (_ BitVec 32) (_ BitVec 64))) (size!30907 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63165)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999507 (= res!669143 (validKeyInArray!0 (select (arr!30404 a!3219) j!170)))))

(declare-fun b!999508 () Bool)

(declare-fun res!669150 () Bool)

(declare-fun e!563582 () Bool)

(assert (=> b!999508 (=> (not res!669150) (not e!563582))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63165 (_ BitVec 32)) Bool)

(assert (=> b!999508 (= res!669150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999509 () Bool)

(declare-fun res!669148 () Bool)

(assert (=> b!999509 (=> (not res!669148) (not e!563585))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999509 (= res!669148 (and (= (size!30907 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30907 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30907 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999510 () Bool)

(declare-fun res!669146 () Bool)

(declare-fun e!563583 () Bool)

(assert (=> b!999510 (=> (not res!669146) (not e!563583))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9336 0))(
  ( (MissingZero!9336 (index!39714 (_ BitVec 32))) (Found!9336 (index!39715 (_ BitVec 32))) (Intermediate!9336 (undefined!10148 Bool) (index!39716 (_ BitVec 32)) (x!87181 (_ BitVec 32))) (Undefined!9336) (MissingVacant!9336 (index!39717 (_ BitVec 32))) )
))
(declare-fun lt!442027 () SeekEntryResult!9336)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63165 (_ BitVec 32)) SeekEntryResult!9336)

(assert (=> b!999510 (= res!669146 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30404 a!3219) j!170) a!3219 mask!3464) lt!442027))))

(declare-fun b!999511 () Bool)

(assert (=> b!999511 (= e!563582 e!563583)))

(declare-fun res!669141 () Bool)

(assert (=> b!999511 (=> (not res!669141) (not e!563583))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999511 (= res!669141 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30404 a!3219) j!170) mask!3464) (select (arr!30404 a!3219) j!170) a!3219 mask!3464) lt!442027))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999511 (= lt!442027 (Intermediate!9336 false resIndex!38 resX!38))))

(declare-fun b!999512 () Bool)

(declare-fun res!669144 () Bool)

(assert (=> b!999512 (=> (not res!669144) (not e!563582))))

(assert (=> b!999512 (= res!669144 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30907 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30907 a!3219))))))

(declare-fun res!669149 () Bool)

(assert (=> start!86412 (=> (not res!669149) (not e!563585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86412 (= res!669149 (validMask!0 mask!3464))))

(assert (=> start!86412 e!563585))

(declare-fun array_inv!23394 (array!63165) Bool)

(assert (=> start!86412 (array_inv!23394 a!3219)))

(assert (=> start!86412 true))

(declare-fun b!999513 () Bool)

(declare-fun res!669147 () Bool)

(assert (=> b!999513 (=> (not res!669147) (not e!563582))))

(declare-datatypes ((List!21206 0))(
  ( (Nil!21203) (Cons!21202 (h!22379 (_ BitVec 64)) (t!30215 List!21206)) )
))
(declare-fun arrayNoDuplicates!0 (array!63165 (_ BitVec 32) List!21206) Bool)

(assert (=> b!999513 (= res!669147 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21203))))

(declare-fun b!999514 () Bool)

(assert (=> b!999514 (= e!563583 false)))

(declare-fun lt!442028 () SeekEntryResult!9336)

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!999514 (= lt!442028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30404 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30404 a!3219) i!1194 k0!2224) j!170) (array!63166 (store (arr!30404 a!3219) i!1194 k0!2224) (size!30907 a!3219)) mask!3464))))

(declare-fun b!999515 () Bool)

(assert (=> b!999515 (= e!563585 e!563582)))

(declare-fun res!669145 () Bool)

(assert (=> b!999515 (=> (not res!669145) (not e!563582))))

(declare-fun lt!442029 () SeekEntryResult!9336)

(assert (=> b!999515 (= res!669145 (or (= lt!442029 (MissingVacant!9336 i!1194)) (= lt!442029 (MissingZero!9336 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63165 (_ BitVec 32)) SeekEntryResult!9336)

(assert (=> b!999515 (= lt!442029 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!999516 () Bool)

(declare-fun res!669142 () Bool)

(assert (=> b!999516 (=> (not res!669142) (not e!563585))))

(assert (=> b!999516 (= res!669142 (validKeyInArray!0 k0!2224))))

(declare-fun b!999517 () Bool)

(declare-fun res!669151 () Bool)

(assert (=> b!999517 (=> (not res!669151) (not e!563585))))

(declare-fun arrayContainsKey!0 (array!63165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999517 (= res!669151 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86412 res!669149) b!999509))

(assert (= (and b!999509 res!669148) b!999507))

(assert (= (and b!999507 res!669143) b!999516))

(assert (= (and b!999516 res!669142) b!999517))

(assert (= (and b!999517 res!669151) b!999515))

(assert (= (and b!999515 res!669145) b!999508))

(assert (= (and b!999508 res!669150) b!999513))

(assert (= (and b!999513 res!669147) b!999512))

(assert (= (and b!999512 res!669144) b!999511))

(assert (= (and b!999511 res!669141) b!999510))

(assert (= (and b!999510 res!669146) b!999514))

(declare-fun m!925847 () Bool)

(assert (=> b!999508 m!925847))

(declare-fun m!925849 () Bool)

(assert (=> b!999511 m!925849))

(assert (=> b!999511 m!925849))

(declare-fun m!925851 () Bool)

(assert (=> b!999511 m!925851))

(assert (=> b!999511 m!925851))

(assert (=> b!999511 m!925849))

(declare-fun m!925853 () Bool)

(assert (=> b!999511 m!925853))

(declare-fun m!925855 () Bool)

(assert (=> b!999516 m!925855))

(declare-fun m!925857 () Bool)

(assert (=> b!999515 m!925857))

(declare-fun m!925859 () Bool)

(assert (=> start!86412 m!925859))

(declare-fun m!925861 () Bool)

(assert (=> start!86412 m!925861))

(declare-fun m!925863 () Bool)

(assert (=> b!999517 m!925863))

(declare-fun m!925865 () Bool)

(assert (=> b!999514 m!925865))

(declare-fun m!925867 () Bool)

(assert (=> b!999514 m!925867))

(assert (=> b!999514 m!925867))

(declare-fun m!925869 () Bool)

(assert (=> b!999514 m!925869))

(assert (=> b!999514 m!925869))

(assert (=> b!999514 m!925867))

(declare-fun m!925871 () Bool)

(assert (=> b!999514 m!925871))

(assert (=> b!999507 m!925849))

(assert (=> b!999507 m!925849))

(declare-fun m!925873 () Bool)

(assert (=> b!999507 m!925873))

(assert (=> b!999510 m!925849))

(assert (=> b!999510 m!925849))

(declare-fun m!925875 () Bool)

(assert (=> b!999510 m!925875))

(declare-fun m!925877 () Bool)

(assert (=> b!999513 m!925877))

(check-sat (not b!999511) (not b!999516) (not b!999514) (not b!999515) (not b!999510) (not b!999517) (not b!999513) (not start!86412) (not b!999508) (not b!999507))
(check-sat)
