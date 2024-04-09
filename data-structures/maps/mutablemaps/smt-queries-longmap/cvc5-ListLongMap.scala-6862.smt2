; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86458 () Bool)

(assert start!86458)

(declare-fun b!1000302 () Bool)

(declare-fun res!669939 () Bool)

(declare-fun e!563861 () Bool)

(assert (=> b!1000302 (=> (not res!669939) (not e!563861))))

(declare-datatypes ((array!63211 0))(
  ( (array!63212 (arr!30427 (Array (_ BitVec 32) (_ BitVec 64))) (size!30930 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63211)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000302 (= res!669939 (validKeyInArray!0 (select (arr!30427 a!3219) j!170)))))

(declare-fun b!1000303 () Bool)

(declare-fun e!563858 () Bool)

(assert (=> b!1000303 (= e!563858 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9359 0))(
  ( (MissingZero!9359 (index!39806 (_ BitVec 32))) (Found!9359 (index!39807 (_ BitVec 32))) (Intermediate!9359 (undefined!10171 Bool) (index!39808 (_ BitVec 32)) (x!87268 (_ BitVec 32))) (Undefined!9359) (MissingVacant!9359 (index!39809 (_ BitVec 32))) )
))
(declare-fun lt!442236 () SeekEntryResult!9359)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63211 (_ BitVec 32)) SeekEntryResult!9359)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000303 (= lt!442236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30427 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30427 a!3219) i!1194 k!2224) j!170) (array!63212 (store (arr!30427 a!3219) i!1194 k!2224) (size!30930 a!3219)) mask!3464))))

(declare-fun b!1000304 () Bool)

(declare-fun res!669946 () Bool)

(declare-fun e!563859 () Bool)

(assert (=> b!1000304 (=> (not res!669946) (not e!563859))))

(declare-datatypes ((List!21229 0))(
  ( (Nil!21226) (Cons!21225 (h!22402 (_ BitVec 64)) (t!30238 List!21229)) )
))
(declare-fun arrayNoDuplicates!0 (array!63211 (_ BitVec 32) List!21229) Bool)

(assert (=> b!1000304 (= res!669946 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21226))))

(declare-fun b!1000305 () Bool)

(assert (=> b!1000305 (= e!563859 e!563858)))

(declare-fun res!669940 () Bool)

(assert (=> b!1000305 (=> (not res!669940) (not e!563858))))

(declare-fun lt!442234 () SeekEntryResult!9359)

(assert (=> b!1000305 (= res!669940 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30427 a!3219) j!170) mask!3464) (select (arr!30427 a!3219) j!170) a!3219 mask!3464) lt!442234))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000305 (= lt!442234 (Intermediate!9359 false resIndex!38 resX!38))))

(declare-fun b!1000306 () Bool)

(declare-fun res!669943 () Bool)

(assert (=> b!1000306 (=> (not res!669943) (not e!563861))))

(declare-fun arrayContainsKey!0 (array!63211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000306 (= res!669943 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000307 () Bool)

(declare-fun res!669937 () Bool)

(assert (=> b!1000307 (=> (not res!669937) (not e!563861))))

(assert (=> b!1000307 (= res!669937 (and (= (size!30930 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30930 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30930 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000308 () Bool)

(declare-fun res!669936 () Bool)

(assert (=> b!1000308 (=> (not res!669936) (not e!563859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63211 (_ BitVec 32)) Bool)

(assert (=> b!1000308 (= res!669936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000309 () Bool)

(declare-fun res!669945 () Bool)

(assert (=> b!1000309 (=> (not res!669945) (not e!563859))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1000309 (= res!669945 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30930 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30930 a!3219))))))

(declare-fun b!1000310 () Bool)

(declare-fun res!669942 () Bool)

(assert (=> b!1000310 (=> (not res!669942) (not e!563861))))

(assert (=> b!1000310 (= res!669942 (validKeyInArray!0 k!2224))))

(declare-fun b!1000311 () Bool)

(assert (=> b!1000311 (= e!563861 e!563859)))

(declare-fun res!669938 () Bool)

(assert (=> b!1000311 (=> (not res!669938) (not e!563859))))

(declare-fun lt!442235 () SeekEntryResult!9359)

(assert (=> b!1000311 (= res!669938 (or (= lt!442235 (MissingVacant!9359 i!1194)) (= lt!442235 (MissingZero!9359 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63211 (_ BitVec 32)) SeekEntryResult!9359)

(assert (=> b!1000311 (= lt!442235 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!669941 () Bool)

(assert (=> start!86458 (=> (not res!669941) (not e!563861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86458 (= res!669941 (validMask!0 mask!3464))))

(assert (=> start!86458 e!563861))

(declare-fun array_inv!23417 (array!63211) Bool)

(assert (=> start!86458 (array_inv!23417 a!3219)))

(assert (=> start!86458 true))

(declare-fun b!1000312 () Bool)

(declare-fun res!669944 () Bool)

(assert (=> b!1000312 (=> (not res!669944) (not e!563858))))

(assert (=> b!1000312 (= res!669944 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30427 a!3219) j!170) a!3219 mask!3464) lt!442234))))

(assert (= (and start!86458 res!669941) b!1000307))

(assert (= (and b!1000307 res!669937) b!1000302))

(assert (= (and b!1000302 res!669939) b!1000310))

(assert (= (and b!1000310 res!669942) b!1000306))

(assert (= (and b!1000306 res!669943) b!1000311))

(assert (= (and b!1000311 res!669938) b!1000308))

(assert (= (and b!1000308 res!669936) b!1000304))

(assert (= (and b!1000304 res!669946) b!1000309))

(assert (= (and b!1000309 res!669945) b!1000305))

(assert (= (and b!1000305 res!669940) b!1000312))

(assert (= (and b!1000312 res!669944) b!1000303))

(declare-fun m!926583 () Bool)

(assert (=> b!1000305 m!926583))

(assert (=> b!1000305 m!926583))

(declare-fun m!926585 () Bool)

(assert (=> b!1000305 m!926585))

(assert (=> b!1000305 m!926585))

(assert (=> b!1000305 m!926583))

(declare-fun m!926587 () Bool)

(assert (=> b!1000305 m!926587))

(declare-fun m!926589 () Bool)

(assert (=> start!86458 m!926589))

(declare-fun m!926591 () Bool)

(assert (=> start!86458 m!926591))

(assert (=> b!1000302 m!926583))

(assert (=> b!1000302 m!926583))

(declare-fun m!926593 () Bool)

(assert (=> b!1000302 m!926593))

(declare-fun m!926595 () Bool)

(assert (=> b!1000304 m!926595))

(declare-fun m!926597 () Bool)

(assert (=> b!1000306 m!926597))

(declare-fun m!926599 () Bool)

(assert (=> b!1000311 m!926599))

(declare-fun m!926601 () Bool)

(assert (=> b!1000310 m!926601))

(declare-fun m!926603 () Bool)

(assert (=> b!1000308 m!926603))

(declare-fun m!926605 () Bool)

(assert (=> b!1000303 m!926605))

(declare-fun m!926607 () Bool)

(assert (=> b!1000303 m!926607))

(assert (=> b!1000303 m!926607))

(declare-fun m!926609 () Bool)

(assert (=> b!1000303 m!926609))

(assert (=> b!1000303 m!926609))

(assert (=> b!1000303 m!926607))

(declare-fun m!926611 () Bool)

(assert (=> b!1000303 m!926611))

(assert (=> b!1000312 m!926583))

(assert (=> b!1000312 m!926583))

(declare-fun m!926613 () Bool)

(assert (=> b!1000312 m!926613))

(push 1)

