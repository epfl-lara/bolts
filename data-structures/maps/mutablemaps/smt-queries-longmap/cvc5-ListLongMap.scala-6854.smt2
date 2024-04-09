; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86410 () Bool)

(assert start!86410)

(declare-fun b!999474 () Bool)

(declare-fun e!563572 () Bool)

(declare-fun e!563570 () Bool)

(assert (=> b!999474 (= e!563572 e!563570)))

(declare-fun res!669112 () Bool)

(assert (=> b!999474 (=> (not res!669112) (not e!563570))))

(declare-datatypes ((SeekEntryResult!9335 0))(
  ( (MissingZero!9335 (index!39710 (_ BitVec 32))) (Found!9335 (index!39711 (_ BitVec 32))) (Intermediate!9335 (undefined!10147 Bool) (index!39712 (_ BitVec 32)) (x!87180 (_ BitVec 32))) (Undefined!9335) (MissingVacant!9335 (index!39713 (_ BitVec 32))) )
))
(declare-fun lt!442018 () SeekEntryResult!9335)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999474 (= res!669112 (or (= lt!442018 (MissingVacant!9335 i!1194)) (= lt!442018 (MissingZero!9335 i!1194))))))

(declare-datatypes ((array!63163 0))(
  ( (array!63164 (arr!30403 (Array (_ BitVec 32) (_ BitVec 64))) (size!30906 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63163)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63163 (_ BitVec 32)) SeekEntryResult!9335)

(assert (=> b!999474 (= lt!442018 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999475 () Bool)

(declare-fun res!669108 () Bool)

(assert (=> b!999475 (=> (not res!669108) (not e!563572))))

(declare-fun arrayContainsKey!0 (array!63163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999475 (= res!669108 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999476 () Bool)

(declare-fun res!669111 () Bool)

(assert (=> b!999476 (=> (not res!669111) (not e!563572))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!999476 (= res!669111 (and (= (size!30906 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30906 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30906 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999477 () Bool)

(declare-fun res!669116 () Bool)

(assert (=> b!999477 (=> (not res!669116) (not e!563570))))

(declare-datatypes ((List!21205 0))(
  ( (Nil!21202) (Cons!21201 (h!22378 (_ BitVec 64)) (t!30214 List!21205)) )
))
(declare-fun arrayNoDuplicates!0 (array!63163 (_ BitVec 32) List!21205) Bool)

(assert (=> b!999477 (= res!669116 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21202))))

(declare-fun b!999478 () Bool)

(declare-fun res!669110 () Bool)

(declare-fun e!563573 () Bool)

(assert (=> b!999478 (=> (not res!669110) (not e!563573))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442020 () SeekEntryResult!9335)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63163 (_ BitVec 32)) SeekEntryResult!9335)

(assert (=> b!999478 (= res!669110 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30403 a!3219) j!170) a!3219 mask!3464) lt!442020))))

(declare-fun b!999479 () Bool)

(declare-fun res!669113 () Bool)

(assert (=> b!999479 (=> (not res!669113) (not e!563570))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999479 (= res!669113 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30906 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30906 a!3219))))))

(declare-fun b!999480 () Bool)

(declare-fun res!669115 () Bool)

(assert (=> b!999480 (=> (not res!669115) (not e!563572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999480 (= res!669115 (validKeyInArray!0 k!2224))))

(declare-fun res!669118 () Bool)

(assert (=> start!86410 (=> (not res!669118) (not e!563572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86410 (= res!669118 (validMask!0 mask!3464))))

(assert (=> start!86410 e!563572))

(declare-fun array_inv!23393 (array!63163) Bool)

(assert (=> start!86410 (array_inv!23393 a!3219)))

(assert (=> start!86410 true))

(declare-fun b!999481 () Bool)

(assert (=> b!999481 (= e!563573 false)))

(declare-fun lt!442019 () SeekEntryResult!9335)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999481 (= lt!442019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30403 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30403 a!3219) i!1194 k!2224) j!170) (array!63164 (store (arr!30403 a!3219) i!1194 k!2224) (size!30906 a!3219)) mask!3464))))

(declare-fun b!999482 () Bool)

(declare-fun res!669109 () Bool)

(assert (=> b!999482 (=> (not res!669109) (not e!563572))))

(assert (=> b!999482 (= res!669109 (validKeyInArray!0 (select (arr!30403 a!3219) j!170)))))

(declare-fun b!999483 () Bool)

(declare-fun res!669117 () Bool)

(assert (=> b!999483 (=> (not res!669117) (not e!563570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63163 (_ BitVec 32)) Bool)

(assert (=> b!999483 (= res!669117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999484 () Bool)

(assert (=> b!999484 (= e!563570 e!563573)))

(declare-fun res!669114 () Bool)

(assert (=> b!999484 (=> (not res!669114) (not e!563573))))

(assert (=> b!999484 (= res!669114 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30403 a!3219) j!170) mask!3464) (select (arr!30403 a!3219) j!170) a!3219 mask!3464) lt!442020))))

(assert (=> b!999484 (= lt!442020 (Intermediate!9335 false resIndex!38 resX!38))))

(assert (= (and start!86410 res!669118) b!999476))

(assert (= (and b!999476 res!669111) b!999482))

(assert (= (and b!999482 res!669109) b!999480))

(assert (= (and b!999480 res!669115) b!999475))

(assert (= (and b!999475 res!669108) b!999474))

(assert (= (and b!999474 res!669112) b!999483))

(assert (= (and b!999483 res!669117) b!999477))

(assert (= (and b!999477 res!669116) b!999479))

(assert (= (and b!999479 res!669113) b!999484))

(assert (= (and b!999484 res!669114) b!999478))

(assert (= (and b!999478 res!669110) b!999481))

(declare-fun m!925815 () Bool)

(assert (=> b!999483 m!925815))

(declare-fun m!925817 () Bool)

(assert (=> b!999480 m!925817))

(declare-fun m!925819 () Bool)

(assert (=> b!999477 m!925819))

(declare-fun m!925821 () Bool)

(assert (=> b!999478 m!925821))

(assert (=> b!999478 m!925821))

(declare-fun m!925823 () Bool)

(assert (=> b!999478 m!925823))

(declare-fun m!925825 () Bool)

(assert (=> b!999474 m!925825))

(declare-fun m!925827 () Bool)

(assert (=> b!999475 m!925827))

(declare-fun m!925829 () Bool)

(assert (=> start!86410 m!925829))

(declare-fun m!925831 () Bool)

(assert (=> start!86410 m!925831))

(assert (=> b!999484 m!925821))

(assert (=> b!999484 m!925821))

(declare-fun m!925833 () Bool)

(assert (=> b!999484 m!925833))

(assert (=> b!999484 m!925833))

(assert (=> b!999484 m!925821))

(declare-fun m!925835 () Bool)

(assert (=> b!999484 m!925835))

(assert (=> b!999482 m!925821))

(assert (=> b!999482 m!925821))

(declare-fun m!925837 () Bool)

(assert (=> b!999482 m!925837))

(declare-fun m!925839 () Bool)

(assert (=> b!999481 m!925839))

(declare-fun m!925841 () Bool)

(assert (=> b!999481 m!925841))

(assert (=> b!999481 m!925841))

(declare-fun m!925843 () Bool)

(assert (=> b!999481 m!925843))

(assert (=> b!999481 m!925843))

(assert (=> b!999481 m!925841))

(declare-fun m!925845 () Bool)

(assert (=> b!999481 m!925845))

(push 1)

