; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86400 () Bool)

(assert start!86400)

(declare-fun b!999300 () Bool)

(declare-fun e!563501 () Bool)

(declare-fun e!563502 () Bool)

(assert (=> b!999300 (= e!563501 e!563502)))

(declare-fun res!668943 () Bool)

(assert (=> b!999300 (=> (not res!668943) (not e!563502))))

(declare-datatypes ((SeekEntryResult!9330 0))(
  ( (MissingZero!9330 (index!39690 (_ BitVec 32))) (Found!9330 (index!39691 (_ BitVec 32))) (Intermediate!9330 (undefined!10142 Bool) (index!39692 (_ BitVec 32)) (x!87159 (_ BitVec 32))) (Undefined!9330) (MissingVacant!9330 (index!39693 (_ BitVec 32))) )
))
(declare-fun lt!441973 () SeekEntryResult!9330)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999300 (= res!668943 (or (= lt!441973 (MissingVacant!9330 i!1194)) (= lt!441973 (MissingZero!9330 i!1194))))))

(declare-datatypes ((array!63153 0))(
  ( (array!63154 (arr!30398 (Array (_ BitVec 32) (_ BitVec 64))) (size!30901 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63153)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63153 (_ BitVec 32)) SeekEntryResult!9330)

(assert (=> b!999300 (= lt!441973 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!999301 () Bool)

(declare-fun e!563504 () Bool)

(assert (=> b!999301 (= e!563504 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441975 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999301 (= lt!441975 (toIndex!0 (select (store (arr!30398 a!3219) i!1194 k0!2224) j!170) mask!3464))))

(declare-fun b!999302 () Bool)

(declare-fun res!668944 () Bool)

(assert (=> b!999302 (=> (not res!668944) (not e!563502))))

(declare-datatypes ((List!21200 0))(
  ( (Nil!21197) (Cons!21196 (h!22373 (_ BitVec 64)) (t!30209 List!21200)) )
))
(declare-fun arrayNoDuplicates!0 (array!63153 (_ BitVec 32) List!21200) Bool)

(assert (=> b!999302 (= res!668944 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21197))))

(declare-fun b!999304 () Bool)

(declare-fun res!668936 () Bool)

(assert (=> b!999304 (=> (not res!668936) (not e!563504))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!441974 () SeekEntryResult!9330)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63153 (_ BitVec 32)) SeekEntryResult!9330)

(assert (=> b!999304 (= res!668936 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30398 a!3219) j!170) a!3219 mask!3464) lt!441974))))

(declare-fun b!999305 () Bool)

(declare-fun res!668935 () Bool)

(assert (=> b!999305 (=> (not res!668935) (not e!563502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63153 (_ BitVec 32)) Bool)

(assert (=> b!999305 (= res!668935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999306 () Bool)

(declare-fun res!668942 () Bool)

(assert (=> b!999306 (=> (not res!668942) (not e!563501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999306 (= res!668942 (validKeyInArray!0 k0!2224))))

(declare-fun b!999307 () Bool)

(declare-fun res!668938 () Bool)

(assert (=> b!999307 (=> (not res!668938) (not e!563502))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999307 (= res!668938 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30901 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30901 a!3219))))))

(declare-fun b!999303 () Bool)

(assert (=> b!999303 (= e!563502 e!563504)))

(declare-fun res!668934 () Bool)

(assert (=> b!999303 (=> (not res!668934) (not e!563504))))

(assert (=> b!999303 (= res!668934 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30398 a!3219) j!170) mask!3464) (select (arr!30398 a!3219) j!170) a!3219 mask!3464) lt!441974))))

(assert (=> b!999303 (= lt!441974 (Intermediate!9330 false resIndex!38 resX!38))))

(declare-fun res!668937 () Bool)

(assert (=> start!86400 (=> (not res!668937) (not e!563501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86400 (= res!668937 (validMask!0 mask!3464))))

(assert (=> start!86400 e!563501))

(declare-fun array_inv!23388 (array!63153) Bool)

(assert (=> start!86400 (array_inv!23388 a!3219)))

(assert (=> start!86400 true))

(declare-fun b!999308 () Bool)

(declare-fun res!668941 () Bool)

(assert (=> b!999308 (=> (not res!668941) (not e!563501))))

(assert (=> b!999308 (= res!668941 (and (= (size!30901 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30901 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30901 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999309 () Bool)

(declare-fun res!668939 () Bool)

(assert (=> b!999309 (=> (not res!668939) (not e!563501))))

(declare-fun arrayContainsKey!0 (array!63153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999309 (= res!668939 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999310 () Bool)

(declare-fun res!668940 () Bool)

(assert (=> b!999310 (=> (not res!668940) (not e!563501))))

(assert (=> b!999310 (= res!668940 (validKeyInArray!0 (select (arr!30398 a!3219) j!170)))))

(assert (= (and start!86400 res!668937) b!999308))

(assert (= (and b!999308 res!668941) b!999310))

(assert (= (and b!999310 res!668940) b!999306))

(assert (= (and b!999306 res!668942) b!999309))

(assert (= (and b!999309 res!668939) b!999300))

(assert (= (and b!999300 res!668943) b!999305))

(assert (= (and b!999305 res!668935) b!999302))

(assert (= (and b!999302 res!668944) b!999307))

(assert (= (and b!999307 res!668938) b!999303))

(assert (= (and b!999303 res!668934) b!999304))

(assert (= (and b!999304 res!668936) b!999301))

(declare-fun m!925659 () Bool)

(assert (=> start!86400 m!925659))

(declare-fun m!925661 () Bool)

(assert (=> start!86400 m!925661))

(declare-fun m!925663 () Bool)

(assert (=> b!999303 m!925663))

(assert (=> b!999303 m!925663))

(declare-fun m!925665 () Bool)

(assert (=> b!999303 m!925665))

(assert (=> b!999303 m!925665))

(assert (=> b!999303 m!925663))

(declare-fun m!925667 () Bool)

(assert (=> b!999303 m!925667))

(declare-fun m!925669 () Bool)

(assert (=> b!999309 m!925669))

(declare-fun m!925671 () Bool)

(assert (=> b!999300 m!925671))

(declare-fun m!925673 () Bool)

(assert (=> b!999305 m!925673))

(assert (=> b!999304 m!925663))

(assert (=> b!999304 m!925663))

(declare-fun m!925675 () Bool)

(assert (=> b!999304 m!925675))

(assert (=> b!999310 m!925663))

(assert (=> b!999310 m!925663))

(declare-fun m!925677 () Bool)

(assert (=> b!999310 m!925677))

(declare-fun m!925679 () Bool)

(assert (=> b!999306 m!925679))

(declare-fun m!925681 () Bool)

(assert (=> b!999302 m!925681))

(declare-fun m!925683 () Bool)

(assert (=> b!999301 m!925683))

(declare-fun m!925685 () Bool)

(assert (=> b!999301 m!925685))

(assert (=> b!999301 m!925685))

(declare-fun m!925687 () Bool)

(assert (=> b!999301 m!925687))

(check-sat (not b!999303) (not start!86400) (not b!999310) (not b!999300) (not b!999301) (not b!999306) (not b!999305) (not b!999309) (not b!999304) (not b!999302))
(check-sat)
