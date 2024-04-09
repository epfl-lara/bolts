; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86578 () Bool)

(assert start!86578)

(declare-fun b!1002931 () Bool)

(declare-fun e!564971 () Bool)

(declare-fun e!564973 () Bool)

(assert (=> b!1002931 (= e!564971 e!564973)))

(declare-fun res!672567 () Bool)

(assert (=> b!1002931 (=> (not res!672567) (not e!564973))))

(declare-datatypes ((SeekEntryResult!9419 0))(
  ( (MissingZero!9419 (index!40046 (_ BitVec 32))) (Found!9419 (index!40047 (_ BitVec 32))) (Intermediate!9419 (undefined!10231 Bool) (index!40048 (_ BitVec 32)) (x!87488 (_ BitVec 32))) (Undefined!9419) (MissingVacant!9419 (index!40049 (_ BitVec 32))) )
))
(declare-fun lt!443439 () SeekEntryResult!9419)

(declare-fun lt!443437 () SeekEntryResult!9419)

(assert (=> b!1002931 (= res!672567 (= lt!443439 lt!443437))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002931 (= lt!443437 (Intermediate!9419 false resIndex!38 resX!38))))

(declare-datatypes ((array!63331 0))(
  ( (array!63332 (arr!30487 (Array (_ BitVec 32) (_ BitVec 64))) (size!30990 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63331)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63331 (_ BitVec 32)) SeekEntryResult!9419)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002931 (= lt!443439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30487 a!3219) j!170) mask!3464) (select (arr!30487 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002933 () Bool)

(declare-fun res!672578 () Bool)

(declare-fun e!564977 () Bool)

(assert (=> b!1002933 (=> (not res!672578) (not e!564977))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002933 (= res!672578 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002934 () Bool)

(assert (=> b!1002934 (= e!564977 e!564971)))

(declare-fun res!672565 () Bool)

(assert (=> b!1002934 (=> (not res!672565) (not e!564971))))

(declare-fun lt!443433 () SeekEntryResult!9419)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002934 (= res!672565 (or (= lt!443433 (MissingVacant!9419 i!1194)) (= lt!443433 (MissingZero!9419 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63331 (_ BitVec 32)) SeekEntryResult!9419)

(assert (=> b!1002934 (= lt!443433 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002935 () Bool)

(declare-fun res!672571 () Bool)

(assert (=> b!1002935 (=> (not res!672571) (not e!564971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63331 (_ BitVec 32)) Bool)

(assert (=> b!1002935 (= res!672571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002936 () Bool)

(declare-fun res!672580 () Bool)

(assert (=> b!1002936 (=> (not res!672580) (not e!564977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002936 (= res!672580 (validKeyInArray!0 k!2224))))

(declare-fun b!1002937 () Bool)

(declare-fun res!672569 () Bool)

(assert (=> b!1002937 (=> (not res!672569) (not e!564977))))

(assert (=> b!1002937 (= res!672569 (validKeyInArray!0 (select (arr!30487 a!3219) j!170)))))

(declare-fun b!1002938 () Bool)

(declare-fun res!672577 () Bool)

(assert (=> b!1002938 (=> (not res!672577) (not e!564977))))

(assert (=> b!1002938 (= res!672577 (and (= (size!30990 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30990 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30990 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002932 () Bool)

(declare-fun e!564972 () Bool)

(declare-fun e!564974 () Bool)

(assert (=> b!1002932 (= e!564972 e!564974)))

(declare-fun res!672576 () Bool)

(assert (=> b!1002932 (=> (not res!672576) (not e!564974))))

(declare-fun lt!443435 () array!63331)

(declare-fun lt!443436 () (_ BitVec 64))

(assert (=> b!1002932 (= res!672576 (not (= lt!443439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443436 mask!3464) lt!443436 lt!443435 mask!3464))))))

(assert (=> b!1002932 (= lt!443436 (select (store (arr!30487 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002932 (= lt!443435 (array!63332 (store (arr!30487 a!3219) i!1194 k!2224) (size!30990 a!3219)))))

(declare-fun res!672568 () Bool)

(assert (=> start!86578 (=> (not res!672568) (not e!564977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86578 (= res!672568 (validMask!0 mask!3464))))

(assert (=> start!86578 e!564977))

(declare-fun array_inv!23477 (array!63331) Bool)

(assert (=> start!86578 (array_inv!23477 a!3219)))

(assert (=> start!86578 true))

(declare-fun b!1002939 () Bool)

(declare-fun e!564975 () Bool)

(assert (=> b!1002939 (= e!564975 false)))

(declare-fun lt!443438 () SeekEntryResult!9419)

(declare-fun lt!443434 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1002939 (= lt!443438 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443434 lt!443436 lt!443435 mask!3464))))

(declare-fun b!1002940 () Bool)

(assert (=> b!1002940 (= e!564973 e!564972)))

(declare-fun res!672572 () Bool)

(assert (=> b!1002940 (=> (not res!672572) (not e!564972))))

(declare-fun lt!443432 () SeekEntryResult!9419)

(assert (=> b!1002940 (= res!672572 (= lt!443432 lt!443437))))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1002940 (= lt!443432 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30487 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002941 () Bool)

(assert (=> b!1002941 (= e!564974 e!564975)))

(declare-fun res!672573 () Bool)

(assert (=> b!1002941 (=> (not res!672573) (not e!564975))))

(assert (=> b!1002941 (= res!672573 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443434 #b00000000000000000000000000000000) (bvslt lt!443434 (size!30990 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002941 (= lt!443434 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002942 () Bool)

(declare-fun res!672575 () Bool)

(assert (=> b!1002942 (=> (not res!672575) (not e!564971))))

(assert (=> b!1002942 (= res!672575 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30990 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30990 a!3219))))))

(declare-fun b!1002943 () Bool)

(declare-fun res!672574 () Bool)

(assert (=> b!1002943 (=> (not res!672574) (not e!564971))))

(declare-datatypes ((List!21289 0))(
  ( (Nil!21286) (Cons!21285 (h!22462 (_ BitVec 64)) (t!30298 List!21289)) )
))
(declare-fun arrayNoDuplicates!0 (array!63331 (_ BitVec 32) List!21289) Bool)

(assert (=> b!1002943 (= res!672574 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21286))))

(declare-fun b!1002944 () Bool)

(declare-fun res!672566 () Bool)

(assert (=> b!1002944 (=> (not res!672566) (not e!564974))))

(assert (=> b!1002944 (= res!672566 (not (= lt!443432 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443436 lt!443435 mask!3464))))))

(declare-fun b!1002945 () Bool)

(declare-fun res!672570 () Bool)

(assert (=> b!1002945 (=> (not res!672570) (not e!564975))))

(assert (=> b!1002945 (= res!672570 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443434 (select (arr!30487 a!3219) j!170) a!3219 mask!3464) lt!443437))))

(declare-fun b!1002946 () Bool)

(declare-fun res!672579 () Bool)

(assert (=> b!1002946 (=> (not res!672579) (not e!564974))))

(assert (=> b!1002946 (= res!672579 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86578 res!672568) b!1002938))

(assert (= (and b!1002938 res!672577) b!1002937))

(assert (= (and b!1002937 res!672569) b!1002936))

(assert (= (and b!1002936 res!672580) b!1002933))

(assert (= (and b!1002933 res!672578) b!1002934))

(assert (= (and b!1002934 res!672565) b!1002935))

(assert (= (and b!1002935 res!672571) b!1002943))

(assert (= (and b!1002943 res!672574) b!1002942))

(assert (= (and b!1002942 res!672575) b!1002931))

(assert (= (and b!1002931 res!672567) b!1002940))

(assert (= (and b!1002940 res!672572) b!1002932))

(assert (= (and b!1002932 res!672576) b!1002944))

(assert (= (and b!1002944 res!672566) b!1002946))

(assert (= (and b!1002946 res!672579) b!1002941))

(assert (= (and b!1002941 res!672573) b!1002945))

(assert (= (and b!1002945 res!672570) b!1002939))

(declare-fun m!928821 () Bool)

(assert (=> b!1002935 m!928821))

(declare-fun m!928823 () Bool)

(assert (=> b!1002945 m!928823))

(assert (=> b!1002945 m!928823))

(declare-fun m!928825 () Bool)

(assert (=> b!1002945 m!928825))

(declare-fun m!928827 () Bool)

(assert (=> b!1002941 m!928827))

(declare-fun m!928829 () Bool)

(assert (=> b!1002933 m!928829))

(declare-fun m!928831 () Bool)

(assert (=> b!1002939 m!928831))

(declare-fun m!928833 () Bool)

(assert (=> b!1002943 m!928833))

(declare-fun m!928835 () Bool)

(assert (=> b!1002934 m!928835))

(declare-fun m!928837 () Bool)

(assert (=> b!1002932 m!928837))

(assert (=> b!1002932 m!928837))

(declare-fun m!928839 () Bool)

(assert (=> b!1002932 m!928839))

(declare-fun m!928841 () Bool)

(assert (=> b!1002932 m!928841))

(declare-fun m!928843 () Bool)

(assert (=> b!1002932 m!928843))

(declare-fun m!928845 () Bool)

(assert (=> start!86578 m!928845))

(declare-fun m!928847 () Bool)

(assert (=> start!86578 m!928847))

(assert (=> b!1002931 m!928823))

(assert (=> b!1002931 m!928823))

(declare-fun m!928849 () Bool)

(assert (=> b!1002931 m!928849))

(assert (=> b!1002931 m!928849))

(assert (=> b!1002931 m!928823))

(declare-fun m!928851 () Bool)

(assert (=> b!1002931 m!928851))

(declare-fun m!928853 () Bool)

(assert (=> b!1002944 m!928853))

(declare-fun m!928855 () Bool)

(assert (=> b!1002936 m!928855))

(assert (=> b!1002940 m!928823))

(assert (=> b!1002940 m!928823))

(declare-fun m!928857 () Bool)

(assert (=> b!1002940 m!928857))

(assert (=> b!1002937 m!928823))

(assert (=> b!1002937 m!928823))

(declare-fun m!928859 () Bool)

(assert (=> b!1002937 m!928859))

(push 1)

