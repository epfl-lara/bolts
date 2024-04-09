; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86434 () Bool)

(assert start!86434)

(declare-fun b!999890 () Bool)

(declare-fun res!669533 () Bool)

(declare-fun e!563714 () Bool)

(assert (=> b!999890 (=> (not res!669533) (not e!563714))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-datatypes ((array!63187 0))(
  ( (array!63188 (arr!30415 (Array (_ BitVec 32) (_ BitVec 64))) (size!30918 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63187)

(assert (=> b!999890 (= res!669533 (and (= (size!30918 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30918 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30918 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999891 () Bool)

(declare-fun e!563717 () Bool)

(assert (=> b!999891 (= e!563714 e!563717)))

(declare-fun res!669529 () Bool)

(assert (=> b!999891 (=> (not res!669529) (not e!563717))))

(declare-datatypes ((SeekEntryResult!9347 0))(
  ( (MissingZero!9347 (index!39758 (_ BitVec 32))) (Found!9347 (index!39759 (_ BitVec 32))) (Intermediate!9347 (undefined!10159 Bool) (index!39760 (_ BitVec 32)) (x!87224 (_ BitVec 32))) (Undefined!9347) (MissingVacant!9347 (index!39761 (_ BitVec 32))) )
))
(declare-fun lt!442128 () SeekEntryResult!9347)

(assert (=> b!999891 (= res!669529 (or (= lt!442128 (MissingVacant!9347 i!1194)) (= lt!442128 (MissingZero!9347 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63187 (_ BitVec 32)) SeekEntryResult!9347)

(assert (=> b!999891 (= lt!442128 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999892 () Bool)

(declare-fun e!563716 () Bool)

(assert (=> b!999892 (= e!563717 e!563716)))

(declare-fun res!669531 () Bool)

(assert (=> b!999892 (=> (not res!669531) (not e!563716))))

(declare-fun lt!442127 () SeekEntryResult!9347)

(declare-fun lt!442126 () SeekEntryResult!9347)

(assert (=> b!999892 (= res!669531 (= lt!442127 lt!442126))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999892 (= lt!442126 (Intermediate!9347 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63187 (_ BitVec 32)) SeekEntryResult!9347)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999892 (= lt!442127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30415 a!3219) j!170) mask!3464) (select (arr!30415 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999893 () Bool)

(declare-fun res!669534 () Bool)

(assert (=> b!999893 (=> (not res!669534) (not e!563716))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!999893 (= res!669534 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30415 a!3219) j!170) a!3219 mask!3464) lt!442126))))

(declare-fun b!999894 () Bool)

(declare-fun res!669528 () Bool)

(assert (=> b!999894 (=> (not res!669528) (not e!563714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999894 (= res!669528 (validKeyInArray!0 (select (arr!30415 a!3219) j!170)))))

(declare-fun b!999895 () Bool)

(declare-fun res!669526 () Bool)

(assert (=> b!999895 (=> (not res!669526) (not e!563717))))

(declare-datatypes ((List!21217 0))(
  ( (Nil!21214) (Cons!21213 (h!22390 (_ BitVec 64)) (t!30226 List!21217)) )
))
(declare-fun arrayNoDuplicates!0 (array!63187 (_ BitVec 32) List!21217) Bool)

(assert (=> b!999895 (= res!669526 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21214))))

(declare-fun b!999896 () Bool)

(declare-fun res!669530 () Bool)

(assert (=> b!999896 (=> (not res!669530) (not e!563717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63187 (_ BitVec 32)) Bool)

(assert (=> b!999896 (= res!669530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999898 () Bool)

(declare-fun res!669524 () Bool)

(assert (=> b!999898 (=> (not res!669524) (not e!563717))))

(assert (=> b!999898 (= res!669524 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30918 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30918 a!3219))))))

(declare-fun b!999899 () Bool)

(declare-fun res!669525 () Bool)

(assert (=> b!999899 (=> (not res!669525) (not e!563714))))

(assert (=> b!999899 (= res!669525 (validKeyInArray!0 k!2224))))

(declare-fun b!999900 () Bool)

(assert (=> b!999900 (= e!563716 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!999901 () Bool)

(declare-fun res!669527 () Bool)

(assert (=> b!999901 (=> (not res!669527) (not e!563714))))

(declare-fun arrayContainsKey!0 (array!63187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999901 (= res!669527 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!669532 () Bool)

(assert (=> start!86434 (=> (not res!669532) (not e!563714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86434 (= res!669532 (validMask!0 mask!3464))))

(assert (=> start!86434 e!563714))

(declare-fun array_inv!23405 (array!63187) Bool)

(assert (=> start!86434 (array_inv!23405 a!3219)))

(assert (=> start!86434 true))

(declare-fun b!999897 () Bool)

(declare-fun res!669535 () Bool)

(assert (=> b!999897 (=> (not res!669535) (not e!563716))))

(assert (=> b!999897 (= res!669535 (not (= lt!442127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30415 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30415 a!3219) i!1194 k!2224) j!170) (array!63188 (store (arr!30415 a!3219) i!1194 k!2224) (size!30918 a!3219)) mask!3464))))))

(assert (= (and start!86434 res!669532) b!999890))

(assert (= (and b!999890 res!669533) b!999894))

(assert (= (and b!999894 res!669528) b!999899))

(assert (= (and b!999899 res!669525) b!999901))

(assert (= (and b!999901 res!669527) b!999891))

(assert (= (and b!999891 res!669529) b!999896))

(assert (= (and b!999896 res!669530) b!999895))

(assert (= (and b!999895 res!669526) b!999898))

(assert (= (and b!999898 res!669524) b!999892))

(assert (= (and b!999892 res!669531) b!999893))

(assert (= (and b!999893 res!669534) b!999897))

(assert (= (and b!999897 res!669535) b!999900))

(declare-fun m!926199 () Bool)

(assert (=> start!86434 m!926199))

(declare-fun m!926201 () Bool)

(assert (=> start!86434 m!926201))

(declare-fun m!926203 () Bool)

(assert (=> b!999896 m!926203))

(declare-fun m!926205 () Bool)

(assert (=> b!999892 m!926205))

(assert (=> b!999892 m!926205))

(declare-fun m!926207 () Bool)

(assert (=> b!999892 m!926207))

(assert (=> b!999892 m!926207))

(assert (=> b!999892 m!926205))

(declare-fun m!926209 () Bool)

(assert (=> b!999892 m!926209))

(declare-fun m!926211 () Bool)

(assert (=> b!999897 m!926211))

(declare-fun m!926213 () Bool)

(assert (=> b!999897 m!926213))

(assert (=> b!999897 m!926213))

(declare-fun m!926215 () Bool)

(assert (=> b!999897 m!926215))

(assert (=> b!999897 m!926215))

(assert (=> b!999897 m!926213))

(declare-fun m!926217 () Bool)

(assert (=> b!999897 m!926217))

(declare-fun m!926219 () Bool)

(assert (=> b!999901 m!926219))

(declare-fun m!926221 () Bool)

(assert (=> b!999899 m!926221))

(assert (=> b!999894 m!926205))

(assert (=> b!999894 m!926205))

(declare-fun m!926223 () Bool)

(assert (=> b!999894 m!926223))

(declare-fun m!926225 () Bool)

(assert (=> b!999891 m!926225))

(declare-fun m!926227 () Bool)

(assert (=> b!999895 m!926227))

(assert (=> b!999893 m!926205))

(assert (=> b!999893 m!926205))

(declare-fun m!926229 () Bool)

(assert (=> b!999893 m!926229))

(push 1)

