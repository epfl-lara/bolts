; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46424 () Bool)

(assert start!46424)

(declare-fun b!513295 () Bool)

(declare-fun res!313742 () Bool)

(declare-fun e!299741 () Bool)

(assert (=> b!513295 (=> (not res!313742) (not e!299741))))

(declare-datatypes ((array!32924 0))(
  ( (array!32925 (arr!15833 (Array (_ BitVec 32) (_ BitVec 64))) (size!16197 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32924)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513295 (= res!313742 (validKeyInArray!0 (select (arr!15833 a!3235) j!176)))))

(declare-fun b!513296 () Bool)

(declare-fun res!313747 () Bool)

(assert (=> b!513296 (=> (not res!313747) (not e!299741))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513296 (= res!313747 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!513297 () Bool)

(declare-fun res!313748 () Bool)

(declare-fun e!299740 () Bool)

(assert (=> b!513297 (=> (not res!313748) (not e!299740))))

(declare-datatypes ((List!10044 0))(
  ( (Nil!10041) (Cons!10040 (h!10926 (_ BitVec 64)) (t!16280 List!10044)) )
))
(declare-fun arrayNoDuplicates!0 (array!32924 (_ BitVec 32) List!10044) Bool)

(assert (=> b!513297 (= res!313748 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10041))))

(declare-fun b!513298 () Bool)

(declare-fun res!313744 () Bool)

(assert (=> b!513298 (=> (not res!313744) (not e!299741))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!513298 (= res!313744 (and (= (size!16197 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16197 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16197 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513299 () Bool)

(declare-fun res!313751 () Bool)

(assert (=> b!513299 (=> (not res!313751) (not e!299740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32924 (_ BitVec 32)) Bool)

(assert (=> b!513299 (= res!313751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513300 () Bool)

(declare-fun e!299742 () Bool)

(assert (=> b!513300 (= e!299742 true)))

(declare-datatypes ((SeekEntryResult!4307 0))(
  ( (MissingZero!4307 (index!19416 (_ BitVec 32))) (Found!4307 (index!19417 (_ BitVec 32))) (Intermediate!4307 (undefined!5119 Bool) (index!19418 (_ BitVec 32)) (x!48393 (_ BitVec 32))) (Undefined!4307) (MissingVacant!4307 (index!19419 (_ BitVec 32))) )
))
(declare-fun lt!235052 () SeekEntryResult!4307)

(assert (=> b!513300 (bvslt (x!48393 lt!235052) #b01111111111111111111111111111110)))

(declare-fun b!513301 () Bool)

(declare-fun res!313750 () Bool)

(assert (=> b!513301 (=> (not res!313750) (not e!299741))))

(assert (=> b!513301 (= res!313750 (validKeyInArray!0 k!2280))))

(declare-fun b!513302 () Bool)

(declare-fun e!299743 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32924 (_ BitVec 32)) SeekEntryResult!4307)

(assert (=> b!513302 (= e!299743 (= (seekEntryOrOpen!0 (select (arr!15833 a!3235) j!176) a!3235 mask!3524) (Found!4307 j!176)))))

(declare-fun b!513303 () Bool)

(assert (=> b!513303 (= e!299741 e!299740)))

(declare-fun res!313749 () Bool)

(assert (=> b!513303 (=> (not res!313749) (not e!299740))))

(declare-fun lt!235055 () SeekEntryResult!4307)

(assert (=> b!513303 (= res!313749 (or (= lt!235055 (MissingZero!4307 i!1204)) (= lt!235055 (MissingVacant!4307 i!1204))))))

(assert (=> b!513303 (= lt!235055 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!513304 () Bool)

(declare-fun res!313741 () Bool)

(assert (=> b!513304 (=> res!313741 e!299742)))

(assert (=> b!513304 (= res!313741 (or (undefined!5119 lt!235052) (not (is-Intermediate!4307 lt!235052))))))

(declare-fun b!513305 () Bool)

(assert (=> b!513305 (= e!299740 (not e!299742))))

(declare-fun res!313746 () Bool)

(assert (=> b!513305 (=> res!313746 e!299742)))

(declare-fun lt!235051 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32924 (_ BitVec 32)) SeekEntryResult!4307)

(assert (=> b!513305 (= res!313746 (= lt!235052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235051 (select (store (arr!15833 a!3235) i!1204 k!2280) j!176) (array!32925 (store (arr!15833 a!3235) i!1204 k!2280) (size!16197 a!3235)) mask!3524)))))

(declare-fun lt!235054 () (_ BitVec 32))

(assert (=> b!513305 (= lt!235052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235054 (select (arr!15833 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513305 (= lt!235051 (toIndex!0 (select (store (arr!15833 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!513305 (= lt!235054 (toIndex!0 (select (arr!15833 a!3235) j!176) mask!3524))))

(assert (=> b!513305 e!299743))

(declare-fun res!313743 () Bool)

(assert (=> b!513305 (=> (not res!313743) (not e!299743))))

(assert (=> b!513305 (= res!313743 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15864 0))(
  ( (Unit!15865) )
))
(declare-fun lt!235053 () Unit!15864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15864)

(assert (=> b!513305 (= lt!235053 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!313745 () Bool)

(assert (=> start!46424 (=> (not res!313745) (not e!299741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46424 (= res!313745 (validMask!0 mask!3524))))

(assert (=> start!46424 e!299741))

(assert (=> start!46424 true))

(declare-fun array_inv!11607 (array!32924) Bool)

(assert (=> start!46424 (array_inv!11607 a!3235)))

(assert (= (and start!46424 res!313745) b!513298))

(assert (= (and b!513298 res!313744) b!513295))

(assert (= (and b!513295 res!313742) b!513301))

(assert (= (and b!513301 res!313750) b!513296))

(assert (= (and b!513296 res!313747) b!513303))

(assert (= (and b!513303 res!313749) b!513299))

(assert (= (and b!513299 res!313751) b!513297))

(assert (= (and b!513297 res!313748) b!513305))

(assert (= (and b!513305 res!313743) b!513302))

(assert (= (and b!513305 (not res!313746)) b!513304))

(assert (= (and b!513304 (not res!313741)) b!513300))

(declare-fun m!494899 () Bool)

(assert (=> b!513297 m!494899))

(declare-fun m!494901 () Bool)

(assert (=> start!46424 m!494901))

(declare-fun m!494903 () Bool)

(assert (=> start!46424 m!494903))

(declare-fun m!494905 () Bool)

(assert (=> b!513301 m!494905))

(declare-fun m!494907 () Bool)

(assert (=> b!513295 m!494907))

(assert (=> b!513295 m!494907))

(declare-fun m!494909 () Bool)

(assert (=> b!513295 m!494909))

(assert (=> b!513302 m!494907))

(assert (=> b!513302 m!494907))

(declare-fun m!494911 () Bool)

(assert (=> b!513302 m!494911))

(declare-fun m!494913 () Bool)

(assert (=> b!513305 m!494913))

(declare-fun m!494915 () Bool)

(assert (=> b!513305 m!494915))

(declare-fun m!494917 () Bool)

(assert (=> b!513305 m!494917))

(assert (=> b!513305 m!494917))

(declare-fun m!494919 () Bool)

(assert (=> b!513305 m!494919))

(assert (=> b!513305 m!494907))

(declare-fun m!494921 () Bool)

(assert (=> b!513305 m!494921))

(assert (=> b!513305 m!494907))

(declare-fun m!494923 () Bool)

(assert (=> b!513305 m!494923))

(assert (=> b!513305 m!494907))

(declare-fun m!494925 () Bool)

(assert (=> b!513305 m!494925))

(assert (=> b!513305 m!494917))

(declare-fun m!494927 () Bool)

(assert (=> b!513305 m!494927))

(declare-fun m!494929 () Bool)

(assert (=> b!513296 m!494929))

(declare-fun m!494931 () Bool)

(assert (=> b!513299 m!494931))

(declare-fun m!494933 () Bool)

(assert (=> b!513303 m!494933))

(push 1)

