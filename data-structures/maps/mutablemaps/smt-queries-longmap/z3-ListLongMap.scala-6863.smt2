; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86466 () Bool)

(assert start!86466)

(declare-fun b!1000439 () Bool)

(declare-fun res!670081 () Bool)

(declare-fun e!563909 () Bool)

(assert (=> b!1000439 (=> (not res!670081) (not e!563909))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9363 0))(
  ( (MissingZero!9363 (index!39822 (_ BitVec 32))) (Found!9363 (index!39823 (_ BitVec 32))) (Intermediate!9363 (undefined!10175 Bool) (index!39824 (_ BitVec 32)) (x!87280 (_ BitVec 32))) (Undefined!9363) (MissingVacant!9363 (index!39825 (_ BitVec 32))) )
))
(declare-fun lt!442271 () SeekEntryResult!9363)

(declare-datatypes ((array!63219 0))(
  ( (array!63220 (arr!30431 (Array (_ BitVec 32) (_ BitVec 64))) (size!30934 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63219)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63219 (_ BitVec 32)) SeekEntryResult!9363)

(assert (=> b!1000439 (= res!670081 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30431 a!3219) j!170) a!3219 mask!3464) lt!442271))))

(declare-fun b!1000440 () Bool)

(declare-fun res!670084 () Bool)

(assert (=> b!1000440 (=> (not res!670084) (not e!563909))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun lt!442272 () SeekEntryResult!9363)

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000440 (= res!670084 (not (= lt!442272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30431 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30431 a!3219) i!1194 k0!2224) j!170) (array!63220 (store (arr!30431 a!3219) i!1194 k0!2224) (size!30934 a!3219)) mask!3464))))))

(declare-fun b!1000441 () Bool)

(declare-fun e!563908 () Bool)

(assert (=> b!1000441 (= e!563908 e!563909)))

(declare-fun res!670079 () Bool)

(assert (=> b!1000441 (=> (not res!670079) (not e!563909))))

(assert (=> b!1000441 (= res!670079 (= lt!442272 lt!442271))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000441 (= lt!442271 (Intermediate!9363 false resIndex!38 resX!38))))

(assert (=> b!1000441 (= lt!442272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30431 a!3219) j!170) mask!3464) (select (arr!30431 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000442 () Bool)

(declare-fun res!670076 () Bool)

(declare-fun e!563906 () Bool)

(assert (=> b!1000442 (=> (not res!670076) (not e!563906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000442 (= res!670076 (validKeyInArray!0 (select (arr!30431 a!3219) j!170)))))

(declare-fun b!1000443 () Bool)

(declare-fun res!670077 () Bool)

(assert (=> b!1000443 (=> (not res!670077) (not e!563908))))

(declare-datatypes ((List!21233 0))(
  ( (Nil!21230) (Cons!21229 (h!22406 (_ BitVec 64)) (t!30242 List!21233)) )
))
(declare-fun arrayNoDuplicates!0 (array!63219 (_ BitVec 32) List!21233) Bool)

(assert (=> b!1000443 (= res!670077 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21230))))

(declare-fun res!670083 () Bool)

(assert (=> start!86466 (=> (not res!670083) (not e!563906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86466 (= res!670083 (validMask!0 mask!3464))))

(assert (=> start!86466 e!563906))

(declare-fun array_inv!23421 (array!63219) Bool)

(assert (=> start!86466 (array_inv!23421 a!3219)))

(assert (=> start!86466 true))

(declare-fun b!1000444 () Bool)

(assert (=> b!1000444 (= e!563909 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!1000445 () Bool)

(declare-fun res!670078 () Bool)

(assert (=> b!1000445 (=> (not res!670078) (not e!563908))))

(assert (=> b!1000445 (= res!670078 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30934 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30934 a!3219))))))

(declare-fun b!1000446 () Bool)

(assert (=> b!1000446 (= e!563906 e!563908)))

(declare-fun res!670074 () Bool)

(assert (=> b!1000446 (=> (not res!670074) (not e!563908))))

(declare-fun lt!442270 () SeekEntryResult!9363)

(assert (=> b!1000446 (= res!670074 (or (= lt!442270 (MissingVacant!9363 i!1194)) (= lt!442270 (MissingZero!9363 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63219 (_ BitVec 32)) SeekEntryResult!9363)

(assert (=> b!1000446 (= lt!442270 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1000447 () Bool)

(declare-fun res!670075 () Bool)

(assert (=> b!1000447 (=> (not res!670075) (not e!563906))))

(declare-fun arrayContainsKey!0 (array!63219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000447 (= res!670075 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000448 () Bool)

(declare-fun res!670073 () Bool)

(assert (=> b!1000448 (=> (not res!670073) (not e!563908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63219 (_ BitVec 32)) Bool)

(assert (=> b!1000448 (= res!670073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000449 () Bool)

(declare-fun res!670080 () Bool)

(assert (=> b!1000449 (=> (not res!670080) (not e!563906))))

(assert (=> b!1000449 (= res!670080 (and (= (size!30934 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30934 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30934 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000450 () Bool)

(declare-fun res!670082 () Bool)

(assert (=> b!1000450 (=> (not res!670082) (not e!563906))))

(assert (=> b!1000450 (= res!670082 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86466 res!670083) b!1000449))

(assert (= (and b!1000449 res!670080) b!1000442))

(assert (= (and b!1000442 res!670076) b!1000450))

(assert (= (and b!1000450 res!670082) b!1000447))

(assert (= (and b!1000447 res!670075) b!1000446))

(assert (= (and b!1000446 res!670074) b!1000448))

(assert (= (and b!1000448 res!670073) b!1000443))

(assert (= (and b!1000443 res!670077) b!1000445))

(assert (= (and b!1000445 res!670078) b!1000441))

(assert (= (and b!1000441 res!670079) b!1000439))

(assert (= (and b!1000439 res!670081) b!1000440))

(assert (= (and b!1000440 res!670084) b!1000444))

(declare-fun m!926711 () Bool)

(assert (=> b!1000442 m!926711))

(assert (=> b!1000442 m!926711))

(declare-fun m!926713 () Bool)

(assert (=> b!1000442 m!926713))

(assert (=> b!1000441 m!926711))

(assert (=> b!1000441 m!926711))

(declare-fun m!926715 () Bool)

(assert (=> b!1000441 m!926715))

(assert (=> b!1000441 m!926715))

(assert (=> b!1000441 m!926711))

(declare-fun m!926717 () Bool)

(assert (=> b!1000441 m!926717))

(assert (=> b!1000439 m!926711))

(assert (=> b!1000439 m!926711))

(declare-fun m!926719 () Bool)

(assert (=> b!1000439 m!926719))

(declare-fun m!926721 () Bool)

(assert (=> b!1000443 m!926721))

(declare-fun m!926723 () Bool)

(assert (=> b!1000448 m!926723))

(declare-fun m!926725 () Bool)

(assert (=> b!1000440 m!926725))

(declare-fun m!926727 () Bool)

(assert (=> b!1000440 m!926727))

(assert (=> b!1000440 m!926727))

(declare-fun m!926729 () Bool)

(assert (=> b!1000440 m!926729))

(assert (=> b!1000440 m!926729))

(assert (=> b!1000440 m!926727))

(declare-fun m!926731 () Bool)

(assert (=> b!1000440 m!926731))

(declare-fun m!926733 () Bool)

(assert (=> start!86466 m!926733))

(declare-fun m!926735 () Bool)

(assert (=> start!86466 m!926735))

(declare-fun m!926737 () Bool)

(assert (=> b!1000447 m!926737))

(declare-fun m!926739 () Bool)

(assert (=> b!1000450 m!926739))

(declare-fun m!926741 () Bool)

(assert (=> b!1000446 m!926741))

(check-sat (not b!1000448) (not b!1000447) (not b!1000441) (not b!1000440) (not b!1000450) (not b!1000443) (not b!1000442) (not b!1000446) (not b!1000439) (not start!86466))
(check-sat)
