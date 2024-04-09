; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48732 () Bool)

(assert start!48732)

(declare-fun b!535291 () Bool)

(declare-fun res!330648 () Bool)

(declare-fun e!310947 () Bool)

(assert (=> b!535291 (=> (not res!330648) (not e!310947))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33900 0))(
  ( (array!33901 (arr!16285 (Array (_ BitVec 32) (_ BitVec 64))) (size!16649 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33900)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535291 (= res!330648 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16649 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16649 a!3154)) (= (select (arr!16285 a!3154) resIndex!32) (select (arr!16285 a!3154) j!147))))))

(declare-fun b!535292 () Bool)

(declare-fun res!330651 () Bool)

(assert (=> b!535292 (=> (not res!330651) (not e!310947))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33900 (_ BitVec 32)) Bool)

(assert (=> b!535292 (= res!330651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!330649 () Bool)

(declare-fun e!310945 () Bool)

(assert (=> start!48732 (=> (not res!330649) (not e!310945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48732 (= res!330649 (validMask!0 mask!3216))))

(assert (=> start!48732 e!310945))

(assert (=> start!48732 true))

(declare-fun array_inv!12059 (array!33900) Bool)

(assert (=> start!48732 (array_inv!12059 a!3154)))

(declare-fun b!535293 () Bool)

(declare-fun res!330654 () Bool)

(assert (=> b!535293 (=> (not res!330654) (not e!310945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535293 (= res!330654 (validKeyInArray!0 (select (arr!16285 a!3154) j!147)))))

(declare-fun b!535294 () Bool)

(declare-fun res!330647 () Bool)

(assert (=> b!535294 (=> (not res!330647) (not e!310947))))

(declare-datatypes ((List!10457 0))(
  ( (Nil!10454) (Cons!10453 (h!11396 (_ BitVec 64)) (t!16693 List!10457)) )
))
(declare-fun arrayNoDuplicates!0 (array!33900 (_ BitVec 32) List!10457) Bool)

(assert (=> b!535294 (= res!330647 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10454))))

(declare-fun b!535295 () Bool)

(assert (=> b!535295 (= e!310945 e!310947)))

(declare-fun res!330655 () Bool)

(assert (=> b!535295 (=> (not res!330655) (not e!310947))))

(declare-datatypes ((SeekEntryResult!4750 0))(
  ( (MissingZero!4750 (index!21224 (_ BitVec 32))) (Found!4750 (index!21225 (_ BitVec 32))) (Intermediate!4750 (undefined!5562 Bool) (index!21226 (_ BitVec 32)) (x!50200 (_ BitVec 32))) (Undefined!4750) (MissingVacant!4750 (index!21227 (_ BitVec 32))) )
))
(declare-fun lt!245794 () SeekEntryResult!4750)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535295 (= res!330655 (or (= lt!245794 (MissingZero!4750 i!1153)) (= lt!245794 (MissingVacant!4750 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33900 (_ BitVec 32)) SeekEntryResult!4750)

(assert (=> b!535295 (= lt!245794 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535296 () Bool)

(declare-fun e!310946 () Bool)

(assert (=> b!535296 (= e!310947 e!310946)))

(declare-fun res!330650 () Bool)

(assert (=> b!535296 (=> (not res!330650) (not e!310946))))

(declare-fun lt!245795 () SeekEntryResult!4750)

(assert (=> b!535296 (= res!330650 (= lt!245795 (Intermediate!4750 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33900 (_ BitVec 32)) SeekEntryResult!4750)

(assert (=> b!535296 (= lt!245795 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16285 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535297 () Bool)

(declare-fun res!330652 () Bool)

(assert (=> b!535297 (=> (not res!330652) (not e!310946))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535297 (= res!330652 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16285 a!3154) j!147) mask!3216) (select (arr!16285 a!3154) j!147) a!3154 mask!3216) lt!245795))))

(declare-fun b!535298 () Bool)

(declare-fun res!330656 () Bool)

(assert (=> b!535298 (=> (not res!330656) (not e!310945))))

(declare-fun arrayContainsKey!0 (array!33900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535298 (= res!330656 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535299 () Bool)

(assert (=> b!535299 (= e!310946 (and (not (= (select (arr!16285 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16285 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16285 a!3154) index!1177) (select (arr!16285 a!3154) j!147))) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun b!535300 () Bool)

(declare-fun res!330653 () Bool)

(assert (=> b!535300 (=> (not res!330653) (not e!310945))))

(assert (=> b!535300 (= res!330653 (validKeyInArray!0 k0!1998))))

(declare-fun b!535301 () Bool)

(declare-fun res!330646 () Bool)

(assert (=> b!535301 (=> (not res!330646) (not e!310945))))

(assert (=> b!535301 (= res!330646 (and (= (size!16649 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16649 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16649 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48732 res!330649) b!535301))

(assert (= (and b!535301 res!330646) b!535293))

(assert (= (and b!535293 res!330654) b!535300))

(assert (= (and b!535300 res!330653) b!535298))

(assert (= (and b!535298 res!330656) b!535295))

(assert (= (and b!535295 res!330655) b!535292))

(assert (= (and b!535292 res!330651) b!535294))

(assert (= (and b!535294 res!330647) b!535291))

(assert (= (and b!535291 res!330648) b!535296))

(assert (= (and b!535296 res!330650) b!535297))

(assert (= (and b!535297 res!330652) b!535299))

(declare-fun m!514907 () Bool)

(assert (=> b!535297 m!514907))

(assert (=> b!535297 m!514907))

(declare-fun m!514909 () Bool)

(assert (=> b!535297 m!514909))

(assert (=> b!535297 m!514909))

(assert (=> b!535297 m!514907))

(declare-fun m!514911 () Bool)

(assert (=> b!535297 m!514911))

(declare-fun m!514913 () Bool)

(assert (=> b!535300 m!514913))

(assert (=> b!535293 m!514907))

(assert (=> b!535293 m!514907))

(declare-fun m!514915 () Bool)

(assert (=> b!535293 m!514915))

(declare-fun m!514917 () Bool)

(assert (=> b!535292 m!514917))

(declare-fun m!514919 () Bool)

(assert (=> b!535299 m!514919))

(assert (=> b!535299 m!514907))

(declare-fun m!514921 () Bool)

(assert (=> b!535294 m!514921))

(declare-fun m!514923 () Bool)

(assert (=> b!535298 m!514923))

(declare-fun m!514925 () Bool)

(assert (=> b!535291 m!514925))

(assert (=> b!535291 m!514907))

(declare-fun m!514927 () Bool)

(assert (=> b!535295 m!514927))

(assert (=> b!535296 m!514907))

(assert (=> b!535296 m!514907))

(declare-fun m!514929 () Bool)

(assert (=> b!535296 m!514929))

(declare-fun m!514931 () Bool)

(assert (=> start!48732 m!514931))

(declare-fun m!514933 () Bool)

(assert (=> start!48732 m!514933))

(check-sat (not b!535298) (not b!535292) (not start!48732) (not b!535293) (not b!535294) (not b!535300) (not b!535296) (not b!535297) (not b!535295))
(check-sat)
