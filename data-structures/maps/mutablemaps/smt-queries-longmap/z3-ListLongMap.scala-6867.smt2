; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86490 () Bool)

(assert start!86490)

(declare-fun b!1000885 () Bool)

(declare-fun e!564071 () Bool)

(declare-fun e!564072 () Bool)

(assert (=> b!1000885 (= e!564071 e!564072)))

(declare-fun res!670524 () Bool)

(assert (=> b!1000885 (=> (not res!670524) (not e!564072))))

(declare-datatypes ((SeekEntryResult!9375 0))(
  ( (MissingZero!9375 (index!39870 (_ BitVec 32))) (Found!9375 (index!39871 (_ BitVec 32))) (Intermediate!9375 (undefined!10187 Bool) (index!39872 (_ BitVec 32)) (x!87324 (_ BitVec 32))) (Undefined!9375) (MissingVacant!9375 (index!39873 (_ BitVec 32))) )
))
(declare-fun lt!442421 () SeekEntryResult!9375)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000885 (= res!670524 (or (= lt!442421 (MissingVacant!9375 i!1194)) (= lt!442421 (MissingZero!9375 i!1194))))))

(declare-datatypes ((array!63243 0))(
  ( (array!63244 (arr!30443 (Array (_ BitVec 32) (_ BitVec 64))) (size!30946 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63243)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63243 (_ BitVec 32)) SeekEntryResult!9375)

(assert (=> b!1000885 (= lt!442421 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun e!564074 () Bool)

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun b!1000886 () Bool)

(assert (=> b!1000886 (= e!564074 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvslt mask!3464 #b00000000000000000000000000000000)))))

(declare-fun b!1000887 () Bool)

(declare-fun res!670531 () Bool)

(assert (=> b!1000887 (=> (not res!670531) (not e!564074))))

(declare-fun lt!442425 () SeekEntryResult!9375)

(declare-fun lt!442423 () array!63243)

(declare-fun lt!442424 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63243 (_ BitVec 32)) SeekEntryResult!9375)

(assert (=> b!1000887 (= res!670531 (not (= lt!442425 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442424 lt!442423 mask!3464))))))

(declare-fun b!1000888 () Bool)

(declare-fun res!670529 () Bool)

(assert (=> b!1000888 (=> (not res!670529) (not e!564071))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1000888 (= res!670529 (and (= (size!30946 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30946 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30946 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000889 () Bool)

(declare-fun res!670527 () Bool)

(assert (=> b!1000889 (=> (not res!670527) (not e!564072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63243 (_ BitVec 32)) Bool)

(assert (=> b!1000889 (= res!670527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000890 () Bool)

(declare-fun res!670520 () Bool)

(assert (=> b!1000890 (=> (not res!670520) (not e!564072))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000890 (= res!670520 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30946 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30946 a!3219))))))

(declare-fun b!1000891 () Bool)

(declare-fun e!564069 () Bool)

(declare-fun e!564073 () Bool)

(assert (=> b!1000891 (= e!564069 e!564073)))

(declare-fun res!670525 () Bool)

(assert (=> b!1000891 (=> (not res!670525) (not e!564073))))

(declare-fun lt!442420 () SeekEntryResult!9375)

(assert (=> b!1000891 (= res!670525 (= lt!442425 lt!442420))))

(assert (=> b!1000891 (= lt!442425 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30443 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000892 () Bool)

(declare-fun res!670521 () Bool)

(assert (=> b!1000892 (=> (not res!670521) (not e!564072))))

(declare-datatypes ((List!21245 0))(
  ( (Nil!21242) (Cons!21241 (h!22418 (_ BitVec 64)) (t!30254 List!21245)) )
))
(declare-fun arrayNoDuplicates!0 (array!63243 (_ BitVec 32) List!21245) Bool)

(assert (=> b!1000892 (= res!670521 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21242))))

(declare-fun b!1000893 () Bool)

(declare-fun res!670530 () Bool)

(assert (=> b!1000893 (=> (not res!670530) (not e!564071))))

(declare-fun arrayContainsKey!0 (array!63243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000893 (= res!670530 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000894 () Bool)

(assert (=> b!1000894 (= e!564072 e!564069)))

(declare-fun res!670523 () Bool)

(assert (=> b!1000894 (=> (not res!670523) (not e!564069))))

(declare-fun lt!442422 () SeekEntryResult!9375)

(assert (=> b!1000894 (= res!670523 (= lt!442422 lt!442420))))

(assert (=> b!1000894 (= lt!442420 (Intermediate!9375 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000894 (= lt!442422 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30443 a!3219) j!170) mask!3464) (select (arr!30443 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000895 () Bool)

(declare-fun res!670522 () Bool)

(assert (=> b!1000895 (=> (not res!670522) (not e!564071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000895 (= res!670522 (validKeyInArray!0 (select (arr!30443 a!3219) j!170)))))

(declare-fun res!670519 () Bool)

(assert (=> start!86490 (=> (not res!670519) (not e!564071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86490 (= res!670519 (validMask!0 mask!3464))))

(assert (=> start!86490 e!564071))

(declare-fun array_inv!23433 (array!63243) Bool)

(assert (=> start!86490 (array_inv!23433 a!3219)))

(assert (=> start!86490 true))

(declare-fun b!1000896 () Bool)

(declare-fun res!670526 () Bool)

(assert (=> b!1000896 (=> (not res!670526) (not e!564071))))

(assert (=> b!1000896 (= res!670526 (validKeyInArray!0 k0!2224))))

(declare-fun b!1000897 () Bool)

(assert (=> b!1000897 (= e!564073 e!564074)))

(declare-fun res!670528 () Bool)

(assert (=> b!1000897 (=> (not res!670528) (not e!564074))))

(assert (=> b!1000897 (= res!670528 (not (= lt!442422 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442424 mask!3464) lt!442424 lt!442423 mask!3464))))))

(assert (=> b!1000897 (= lt!442424 (select (store (arr!30443 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1000897 (= lt!442423 (array!63244 (store (arr!30443 a!3219) i!1194 k0!2224) (size!30946 a!3219)))))

(assert (= (and start!86490 res!670519) b!1000888))

(assert (= (and b!1000888 res!670529) b!1000895))

(assert (= (and b!1000895 res!670522) b!1000896))

(assert (= (and b!1000896 res!670526) b!1000893))

(assert (= (and b!1000893 res!670530) b!1000885))

(assert (= (and b!1000885 res!670524) b!1000889))

(assert (= (and b!1000889 res!670527) b!1000892))

(assert (= (and b!1000892 res!670521) b!1000890))

(assert (= (and b!1000890 res!670520) b!1000894))

(assert (= (and b!1000894 res!670523) b!1000891))

(assert (= (and b!1000891 res!670525) b!1000897))

(assert (= (and b!1000897 res!670528) b!1000887))

(assert (= (and b!1000887 res!670531) b!1000886))

(declare-fun m!927109 () Bool)

(assert (=> b!1000885 m!927109))

(declare-fun m!927111 () Bool)

(assert (=> b!1000893 m!927111))

(declare-fun m!927113 () Bool)

(assert (=> b!1000889 m!927113))

(declare-fun m!927115 () Bool)

(assert (=> b!1000891 m!927115))

(assert (=> b!1000891 m!927115))

(declare-fun m!927117 () Bool)

(assert (=> b!1000891 m!927117))

(assert (=> b!1000895 m!927115))

(assert (=> b!1000895 m!927115))

(declare-fun m!927119 () Bool)

(assert (=> b!1000895 m!927119))

(declare-fun m!927121 () Bool)

(assert (=> b!1000896 m!927121))

(declare-fun m!927123 () Bool)

(assert (=> b!1000897 m!927123))

(assert (=> b!1000897 m!927123))

(declare-fun m!927125 () Bool)

(assert (=> b!1000897 m!927125))

(declare-fun m!927127 () Bool)

(assert (=> b!1000897 m!927127))

(declare-fun m!927129 () Bool)

(assert (=> b!1000897 m!927129))

(assert (=> b!1000894 m!927115))

(assert (=> b!1000894 m!927115))

(declare-fun m!927131 () Bool)

(assert (=> b!1000894 m!927131))

(assert (=> b!1000894 m!927131))

(assert (=> b!1000894 m!927115))

(declare-fun m!927133 () Bool)

(assert (=> b!1000894 m!927133))

(declare-fun m!927135 () Bool)

(assert (=> start!86490 m!927135))

(declare-fun m!927137 () Bool)

(assert (=> start!86490 m!927137))

(declare-fun m!927139 () Bool)

(assert (=> b!1000887 m!927139))

(declare-fun m!927141 () Bool)

(assert (=> b!1000892 m!927141))

(check-sat (not b!1000894) (not b!1000896) (not b!1000892) (not b!1000885) (not b!1000889) (not b!1000887) (not b!1000897) (not b!1000895) (not start!86490) (not b!1000893) (not b!1000891))
(check-sat)
