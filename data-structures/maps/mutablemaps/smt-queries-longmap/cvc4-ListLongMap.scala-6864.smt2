; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86474 () Bool)

(assert start!86474)

(declare-fun b!1000583 () Bool)

(declare-fun e!563956 () Bool)

(declare-fun e!563955 () Bool)

(assert (=> b!1000583 (= e!563956 e!563955)))

(declare-fun res!670226 () Bool)

(assert (=> b!1000583 (=> (not res!670226) (not e!563955))))

(declare-datatypes ((SeekEntryResult!9367 0))(
  ( (MissingZero!9367 (index!39838 (_ BitVec 32))) (Found!9367 (index!39839 (_ BitVec 32))) (Intermediate!9367 (undefined!10179 Bool) (index!39840 (_ BitVec 32)) (x!87292 (_ BitVec 32))) (Undefined!9367) (MissingVacant!9367 (index!39841 (_ BitVec 32))) )
))
(declare-fun lt!442307 () SeekEntryResult!9367)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000583 (= res!670226 (or (= lt!442307 (MissingVacant!9367 i!1194)) (= lt!442307 (MissingZero!9367 i!1194))))))

(declare-datatypes ((array!63227 0))(
  ( (array!63228 (arr!30435 (Array (_ BitVec 32) (_ BitVec 64))) (size!30938 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63227)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63227 (_ BitVec 32)) SeekEntryResult!9367)

(assert (=> b!1000583 (= lt!442307 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000584 () Bool)

(declare-fun res!670224 () Bool)

(assert (=> b!1000584 (=> (not res!670224) (not e!563955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63227 (_ BitVec 32)) Bool)

(assert (=> b!1000584 (= res!670224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000585 () Bool)

(declare-fun res!670227 () Bool)

(assert (=> b!1000585 (=> (not res!670227) (not e!563956))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000585 (= res!670227 (validKeyInArray!0 (select (arr!30435 a!3219) j!170)))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun b!1000586 () Bool)

(declare-fun e!563957 () Bool)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1000586 (= e!563957 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun res!670222 () Bool)

(assert (=> start!86474 (=> (not res!670222) (not e!563956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86474 (= res!670222 (validMask!0 mask!3464))))

(assert (=> start!86474 e!563956))

(declare-fun array_inv!23425 (array!63227) Bool)

(assert (=> start!86474 (array_inv!23425 a!3219)))

(assert (=> start!86474 true))

(declare-fun b!1000587 () Bool)

(declare-fun res!670223 () Bool)

(assert (=> b!1000587 (=> (not res!670223) (not e!563957))))

(declare-fun lt!442306 () SeekEntryResult!9367)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63227 (_ BitVec 32)) SeekEntryResult!9367)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000587 (= res!670223 (not (= lt!442306 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30435 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30435 a!3219) i!1194 k!2224) j!170) (array!63228 (store (arr!30435 a!3219) i!1194 k!2224) (size!30938 a!3219)) mask!3464))))))

(declare-fun b!1000588 () Bool)

(assert (=> b!1000588 (= e!563955 e!563957)))

(declare-fun res!670228 () Bool)

(assert (=> b!1000588 (=> (not res!670228) (not e!563957))))

(declare-fun lt!442308 () SeekEntryResult!9367)

(assert (=> b!1000588 (= res!670228 (= lt!442306 lt!442308))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000588 (= lt!442308 (Intermediate!9367 false resIndex!38 resX!38))))

(assert (=> b!1000588 (= lt!442306 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30435 a!3219) j!170) mask!3464) (select (arr!30435 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000589 () Bool)

(declare-fun res!670221 () Bool)

(assert (=> b!1000589 (=> (not res!670221) (not e!563957))))

(assert (=> b!1000589 (= res!670221 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30435 a!3219) j!170) a!3219 mask!3464) lt!442308))))

(declare-fun b!1000590 () Bool)

(declare-fun res!670218 () Bool)

(assert (=> b!1000590 (=> (not res!670218) (not e!563955))))

(declare-datatypes ((List!21237 0))(
  ( (Nil!21234) (Cons!21233 (h!22410 (_ BitVec 64)) (t!30246 List!21237)) )
))
(declare-fun arrayNoDuplicates!0 (array!63227 (_ BitVec 32) List!21237) Bool)

(assert (=> b!1000590 (= res!670218 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21234))))

(declare-fun b!1000591 () Bool)

(declare-fun res!670225 () Bool)

(assert (=> b!1000591 (=> (not res!670225) (not e!563956))))

(declare-fun arrayContainsKey!0 (array!63227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000591 (= res!670225 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000592 () Bool)

(declare-fun res!670220 () Bool)

(assert (=> b!1000592 (=> (not res!670220) (not e!563956))))

(assert (=> b!1000592 (= res!670220 (validKeyInArray!0 k!2224))))

(declare-fun b!1000593 () Bool)

(declare-fun res!670219 () Bool)

(assert (=> b!1000593 (=> (not res!670219) (not e!563956))))

(assert (=> b!1000593 (= res!670219 (and (= (size!30938 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30938 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30938 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000594 () Bool)

(declare-fun res!670217 () Bool)

(assert (=> b!1000594 (=> (not res!670217) (not e!563955))))

(assert (=> b!1000594 (= res!670217 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30938 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30938 a!3219))))))

(assert (= (and start!86474 res!670222) b!1000593))

(assert (= (and b!1000593 res!670219) b!1000585))

(assert (= (and b!1000585 res!670227) b!1000592))

(assert (= (and b!1000592 res!670220) b!1000591))

(assert (= (and b!1000591 res!670225) b!1000583))

(assert (= (and b!1000583 res!670226) b!1000584))

(assert (= (and b!1000584 res!670224) b!1000590))

(assert (= (and b!1000590 res!670218) b!1000594))

(assert (= (and b!1000594 res!670217) b!1000588))

(assert (= (and b!1000588 res!670228) b!1000589))

(assert (= (and b!1000589 res!670221) b!1000587))

(assert (= (and b!1000587 res!670223) b!1000586))

(declare-fun m!926839 () Bool)

(assert (=> b!1000592 m!926839))

(declare-fun m!926841 () Bool)

(assert (=> b!1000584 m!926841))

(declare-fun m!926843 () Bool)

(assert (=> start!86474 m!926843))

(declare-fun m!926845 () Bool)

(assert (=> start!86474 m!926845))

(declare-fun m!926847 () Bool)

(assert (=> b!1000585 m!926847))

(assert (=> b!1000585 m!926847))

(declare-fun m!926849 () Bool)

(assert (=> b!1000585 m!926849))

(declare-fun m!926851 () Bool)

(assert (=> b!1000591 m!926851))

(declare-fun m!926853 () Bool)

(assert (=> b!1000590 m!926853))

(declare-fun m!926855 () Bool)

(assert (=> b!1000587 m!926855))

(declare-fun m!926857 () Bool)

(assert (=> b!1000587 m!926857))

(assert (=> b!1000587 m!926857))

(declare-fun m!926859 () Bool)

(assert (=> b!1000587 m!926859))

(assert (=> b!1000587 m!926859))

(assert (=> b!1000587 m!926857))

(declare-fun m!926861 () Bool)

(assert (=> b!1000587 m!926861))

(assert (=> b!1000589 m!926847))

(assert (=> b!1000589 m!926847))

(declare-fun m!926863 () Bool)

(assert (=> b!1000589 m!926863))

(assert (=> b!1000588 m!926847))

(assert (=> b!1000588 m!926847))

(declare-fun m!926865 () Bool)

(assert (=> b!1000588 m!926865))

(assert (=> b!1000588 m!926865))

(assert (=> b!1000588 m!926847))

(declare-fun m!926867 () Bool)

(assert (=> b!1000588 m!926867))

(declare-fun m!926869 () Bool)

(assert (=> b!1000583 m!926869))

(push 1)

(assert (not b!1000584))

(assert (not b!1000591))

(assert (not b!1000590))

(assert (not b!1000589))

(assert (not b!1000588))

