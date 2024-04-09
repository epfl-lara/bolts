; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86404 () Bool)

(assert start!86404)

(declare-fun b!999368 () Bool)

(declare-fun res!669010 () Bool)

(declare-fun e!563531 () Bool)

(assert (=> b!999368 (=> (not res!669010) (not e!563531))))

(declare-datatypes ((array!63157 0))(
  ( (array!63158 (arr!30400 (Array (_ BitVec 32) (_ BitVec 64))) (size!30903 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63157)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999368 (= res!669010 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999369 () Bool)

(declare-fun res!669005 () Bool)

(declare-fun e!563528 () Bool)

(assert (=> b!999369 (=> (not res!669005) (not e!563528))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63157 (_ BitVec 32)) Bool)

(assert (=> b!999369 (= res!669005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun b!999370 () Bool)

(declare-fun e!563527 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999370 (= e!563527 (not (validKeyInArray!0 (select (store (arr!30400 a!3219) i!1194 k!2224) j!170))))))

(declare-fun b!999371 () Bool)

(declare-fun res!669008 () Bool)

(assert (=> b!999371 (=> (not res!669008) (not e!563528))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999371 (= res!669008 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30903 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30903 a!3219))))))

(declare-fun b!999372 () Bool)

(assert (=> b!999372 (= e!563531 e!563528)))

(declare-fun res!669009 () Bool)

(assert (=> b!999372 (=> (not res!669009) (not e!563528))))

(declare-datatypes ((SeekEntryResult!9332 0))(
  ( (MissingZero!9332 (index!39698 (_ BitVec 32))) (Found!9332 (index!39699 (_ BitVec 32))) (Intermediate!9332 (undefined!10144 Bool) (index!39700 (_ BitVec 32)) (x!87169 (_ BitVec 32))) (Undefined!9332) (MissingVacant!9332 (index!39701 (_ BitVec 32))) )
))
(declare-fun lt!441992 () SeekEntryResult!9332)

(assert (=> b!999372 (= res!669009 (or (= lt!441992 (MissingVacant!9332 i!1194)) (= lt!441992 (MissingZero!9332 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63157 (_ BitVec 32)) SeekEntryResult!9332)

(assert (=> b!999372 (= lt!441992 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!669004 () Bool)

(assert (=> start!86404 (=> (not res!669004) (not e!563531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86404 (= res!669004 (validMask!0 mask!3464))))

(assert (=> start!86404 e!563531))

(declare-fun array_inv!23390 (array!63157) Bool)

(assert (=> start!86404 (array_inv!23390 a!3219)))

(assert (=> start!86404 true))

(declare-fun b!999373 () Bool)

(declare-fun res!669006 () Bool)

(assert (=> b!999373 (=> (not res!669006) (not e!563531))))

(assert (=> b!999373 (= res!669006 (validKeyInArray!0 k!2224))))

(declare-fun b!999374 () Bool)

(declare-fun e!563530 () Bool)

(assert (=> b!999374 (= e!563530 e!563527)))

(declare-fun res!669002 () Bool)

(assert (=> b!999374 (=> (not res!669002) (not e!563527))))

(declare-fun lt!441991 () (_ BitVec 32))

(assert (=> b!999374 (= res!669002 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge lt!441991 #b00000000000000000000000000000000) (bvslt lt!441991 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999374 (= lt!441991 (toIndex!0 (select (store (arr!30400 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!999375 () Bool)

(assert (=> b!999375 (= e!563528 e!563530)))

(declare-fun res!669012 () Bool)

(assert (=> b!999375 (=> (not res!669012) (not e!563530))))

(declare-fun lt!441993 () SeekEntryResult!9332)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63157 (_ BitVec 32)) SeekEntryResult!9332)

(assert (=> b!999375 (= res!669012 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30400 a!3219) j!170) mask!3464) (select (arr!30400 a!3219) j!170) a!3219 mask!3464) lt!441993))))

(assert (=> b!999375 (= lt!441993 (Intermediate!9332 false resIndex!38 resX!38))))

(declare-fun b!999376 () Bool)

(declare-fun res!669007 () Bool)

(assert (=> b!999376 (=> (not res!669007) (not e!563531))))

(assert (=> b!999376 (= res!669007 (and (= (size!30903 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30903 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30903 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999377 () Bool)

(declare-fun res!669013 () Bool)

(assert (=> b!999377 (=> (not res!669013) (not e!563531))))

(assert (=> b!999377 (= res!669013 (validKeyInArray!0 (select (arr!30400 a!3219) j!170)))))

(declare-fun b!999378 () Bool)

(declare-fun res!669011 () Bool)

(assert (=> b!999378 (=> (not res!669011) (not e!563528))))

(declare-datatypes ((List!21202 0))(
  ( (Nil!21199) (Cons!21198 (h!22375 (_ BitVec 64)) (t!30211 List!21202)) )
))
(declare-fun arrayNoDuplicates!0 (array!63157 (_ BitVec 32) List!21202) Bool)

(assert (=> b!999378 (= res!669011 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21199))))

(declare-fun b!999379 () Bool)

(declare-fun res!669003 () Bool)

(assert (=> b!999379 (=> (not res!669003) (not e!563530))))

(assert (=> b!999379 (= res!669003 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30400 a!3219) j!170) a!3219 mask!3464) lt!441993))))

(assert (= (and start!86404 res!669004) b!999376))

(assert (= (and b!999376 res!669007) b!999377))

(assert (= (and b!999377 res!669013) b!999373))

(assert (= (and b!999373 res!669006) b!999368))

(assert (= (and b!999368 res!669010) b!999372))

(assert (= (and b!999372 res!669009) b!999369))

(assert (= (and b!999369 res!669005) b!999378))

(assert (= (and b!999378 res!669011) b!999371))

(assert (= (and b!999371 res!669008) b!999375))

(assert (= (and b!999375 res!669012) b!999379))

(assert (= (and b!999379 res!669003) b!999374))

(assert (= (and b!999374 res!669002) b!999370))

(declare-fun m!925719 () Bool)

(assert (=> b!999369 m!925719))

(declare-fun m!925721 () Bool)

(assert (=> b!999374 m!925721))

(declare-fun m!925723 () Bool)

(assert (=> b!999374 m!925723))

(assert (=> b!999374 m!925723))

(declare-fun m!925725 () Bool)

(assert (=> b!999374 m!925725))

(declare-fun m!925727 () Bool)

(assert (=> b!999379 m!925727))

(assert (=> b!999379 m!925727))

(declare-fun m!925729 () Bool)

(assert (=> b!999379 m!925729))

(declare-fun m!925731 () Bool)

(assert (=> start!86404 m!925731))

(declare-fun m!925733 () Bool)

(assert (=> start!86404 m!925733))

(declare-fun m!925735 () Bool)

(assert (=> b!999368 m!925735))

(assert (=> b!999377 m!925727))

(assert (=> b!999377 m!925727))

(declare-fun m!925737 () Bool)

(assert (=> b!999377 m!925737))

(assert (=> b!999370 m!925721))

(assert (=> b!999370 m!925723))

(assert (=> b!999370 m!925723))

(declare-fun m!925739 () Bool)

(assert (=> b!999370 m!925739))

(declare-fun m!925741 () Bool)

(assert (=> b!999378 m!925741))

(assert (=> b!999375 m!925727))

(assert (=> b!999375 m!925727))

(declare-fun m!925743 () Bool)

(assert (=> b!999375 m!925743))

(assert (=> b!999375 m!925743))

(assert (=> b!999375 m!925727))

(declare-fun m!925745 () Bool)

(assert (=> b!999375 m!925745))

(declare-fun m!925747 () Bool)

(assert (=> b!999373 m!925747))

(declare-fun m!925749 () Bool)

(assert (=> b!999372 m!925749))

(push 1)

