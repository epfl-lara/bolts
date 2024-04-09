; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86436 () Bool)

(assert start!86436)

(declare-fun b!999926 () Bool)

(declare-fun res!669569 () Bool)

(declare-fun e!563726 () Bool)

(assert (=> b!999926 (=> (not res!669569) (not e!563726))))

(declare-datatypes ((array!63189 0))(
  ( (array!63190 (arr!30416 (Array (_ BitVec 32) (_ BitVec 64))) (size!30919 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63189)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999926 (= res!669569 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30919 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30919 a!3219))))))

(declare-fun b!999927 () Bool)

(declare-fun res!669560 () Bool)

(assert (=> b!999927 (=> (not res!669560) (not e!563726))))

(declare-datatypes ((List!21218 0))(
  ( (Nil!21215) (Cons!21214 (h!22391 (_ BitVec 64)) (t!30227 List!21218)) )
))
(declare-fun arrayNoDuplicates!0 (array!63189 (_ BitVec 32) List!21218) Bool)

(assert (=> b!999927 (= res!669560 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21215))))

(declare-fun b!999928 () Bool)

(declare-fun e!563728 () Bool)

(assert (=> b!999928 (= e!563726 e!563728)))

(declare-fun res!669564 () Bool)

(assert (=> b!999928 (=> (not res!669564) (not e!563728))))

(declare-datatypes ((SeekEntryResult!9348 0))(
  ( (MissingZero!9348 (index!39762 (_ BitVec 32))) (Found!9348 (index!39763 (_ BitVec 32))) (Intermediate!9348 (undefined!10160 Bool) (index!39764 (_ BitVec 32)) (x!87225 (_ BitVec 32))) (Undefined!9348) (MissingVacant!9348 (index!39765 (_ BitVec 32))) )
))
(declare-fun lt!442137 () SeekEntryResult!9348)

(declare-fun lt!442135 () SeekEntryResult!9348)

(assert (=> b!999928 (= res!669564 (= lt!442137 lt!442135))))

(assert (=> b!999928 (= lt!442135 (Intermediate!9348 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63189 (_ BitVec 32)) SeekEntryResult!9348)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999928 (= lt!442137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30416 a!3219) j!170) mask!3464) (select (arr!30416 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999929 () Bool)

(declare-fun res!669562 () Bool)

(declare-fun e!563727 () Bool)

(assert (=> b!999929 (=> (not res!669562) (not e!563727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999929 (= res!669562 (validKeyInArray!0 (select (arr!30416 a!3219) j!170)))))

(declare-fun b!999931 () Bool)

(declare-fun res!669568 () Bool)

(assert (=> b!999931 (=> (not res!669568) (not e!563727))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999931 (= res!669568 (and (= (size!30919 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30919 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30919 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999932 () Bool)

(declare-fun res!669566 () Bool)

(assert (=> b!999932 (=> (not res!669566) (not e!563726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63189 (_ BitVec 32)) Bool)

(assert (=> b!999932 (= res!669566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999933 () Bool)

(assert (=> b!999933 (= e!563727 e!563726)))

(declare-fun res!669561 () Bool)

(assert (=> b!999933 (=> (not res!669561) (not e!563726))))

(declare-fun lt!442136 () SeekEntryResult!9348)

(assert (=> b!999933 (= res!669561 (or (= lt!442136 (MissingVacant!9348 i!1194)) (= lt!442136 (MissingZero!9348 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63189 (_ BitVec 32)) SeekEntryResult!9348)

(assert (=> b!999933 (= lt!442136 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun res!669565 () Bool)

(assert (=> start!86436 (=> (not res!669565) (not e!563727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86436 (= res!669565 (validMask!0 mask!3464))))

(assert (=> start!86436 e!563727))

(declare-fun array_inv!23406 (array!63189) Bool)

(assert (=> start!86436 (array_inv!23406 a!3219)))

(assert (=> start!86436 true))

(declare-fun b!999930 () Bool)

(declare-fun res!669571 () Bool)

(assert (=> b!999930 (=> (not res!669571) (not e!563728))))

(assert (=> b!999930 (= res!669571 (not (= lt!442137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30416 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30416 a!3219) i!1194 k0!2224) j!170) (array!63190 (store (arr!30416 a!3219) i!1194 k0!2224) (size!30919 a!3219)) mask!3464))))))

(declare-fun b!999934 () Bool)

(declare-fun res!669563 () Bool)

(assert (=> b!999934 (=> (not res!669563) (not e!563728))))

(assert (=> b!999934 (= res!669563 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30416 a!3219) j!170) a!3219 mask!3464) lt!442135))))

(declare-fun b!999935 () Bool)

(declare-fun res!669570 () Bool)

(assert (=> b!999935 (=> (not res!669570) (not e!563727))))

(assert (=> b!999935 (= res!669570 (validKeyInArray!0 k0!2224))))

(declare-fun b!999936 () Bool)

(declare-fun res!669567 () Bool)

(assert (=> b!999936 (=> (not res!669567) (not e!563727))))

(declare-fun arrayContainsKey!0 (array!63189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999936 (= res!669567 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999937 () Bool)

(assert (=> b!999937 (= e!563728 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(assert (= (and start!86436 res!669565) b!999931))

(assert (= (and b!999931 res!669568) b!999929))

(assert (= (and b!999929 res!669562) b!999935))

(assert (= (and b!999935 res!669570) b!999936))

(assert (= (and b!999936 res!669567) b!999933))

(assert (= (and b!999933 res!669561) b!999932))

(assert (= (and b!999932 res!669566) b!999927))

(assert (= (and b!999927 res!669560) b!999926))

(assert (= (and b!999926 res!669569) b!999928))

(assert (= (and b!999928 res!669564) b!999934))

(assert (= (and b!999934 res!669563) b!999930))

(assert (= (and b!999930 res!669571) b!999937))

(declare-fun m!926231 () Bool)

(assert (=> b!999936 m!926231))

(declare-fun m!926233 () Bool)

(assert (=> start!86436 m!926233))

(declare-fun m!926235 () Bool)

(assert (=> start!86436 m!926235))

(declare-fun m!926237 () Bool)

(assert (=> b!999935 m!926237))

(declare-fun m!926239 () Bool)

(assert (=> b!999932 m!926239))

(declare-fun m!926241 () Bool)

(assert (=> b!999934 m!926241))

(assert (=> b!999934 m!926241))

(declare-fun m!926243 () Bool)

(assert (=> b!999934 m!926243))

(declare-fun m!926245 () Bool)

(assert (=> b!999927 m!926245))

(declare-fun m!926247 () Bool)

(assert (=> b!999933 m!926247))

(assert (=> b!999928 m!926241))

(assert (=> b!999928 m!926241))

(declare-fun m!926249 () Bool)

(assert (=> b!999928 m!926249))

(assert (=> b!999928 m!926249))

(assert (=> b!999928 m!926241))

(declare-fun m!926251 () Bool)

(assert (=> b!999928 m!926251))

(declare-fun m!926253 () Bool)

(assert (=> b!999930 m!926253))

(declare-fun m!926255 () Bool)

(assert (=> b!999930 m!926255))

(assert (=> b!999930 m!926255))

(declare-fun m!926257 () Bool)

(assert (=> b!999930 m!926257))

(assert (=> b!999930 m!926257))

(assert (=> b!999930 m!926255))

(declare-fun m!926259 () Bool)

(assert (=> b!999930 m!926259))

(assert (=> b!999929 m!926241))

(assert (=> b!999929 m!926241))

(declare-fun m!926261 () Bool)

(assert (=> b!999929 m!926261))

(check-sat (not b!999930) (not b!999928) (not start!86436) (not b!999936) (not b!999934) (not b!999932) (not b!999935) (not b!999933) (not b!999927) (not b!999929))
(check-sat)
