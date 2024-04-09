; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86950 () Bool)

(assert start!86950)

(declare-fun b!1007931 () Bool)

(declare-fun res!676980 () Bool)

(declare-fun e!567220 () Bool)

(assert (=> b!1007931 (=> (not res!676980) (not e!567220))))

(declare-datatypes ((array!63550 0))(
  ( (array!63551 (arr!30592 (Array (_ BitVec 32) (_ BitVec 64))) (size!31095 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63550)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007931 (= res!676980 (and (= (size!31095 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31095 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31095 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007932 () Bool)

(declare-fun res!676983 () Bool)

(assert (=> b!1007932 (=> (not res!676983) (not e!567220))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007932 (= res!676983 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!676991 () Bool)

(assert (=> start!86950 (=> (not res!676991) (not e!567220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86950 (= res!676991 (validMask!0 mask!3464))))

(assert (=> start!86950 e!567220))

(declare-fun array_inv!23582 (array!63550) Bool)

(assert (=> start!86950 (array_inv!23582 a!3219)))

(assert (=> start!86950 true))

(declare-fun b!1007933 () Bool)

(declare-fun e!567221 () Bool)

(assert (=> b!1007933 (= e!567221 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445457 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007933 (= lt!445457 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007934 () Bool)

(declare-fun e!567219 () Bool)

(declare-fun e!567222 () Bool)

(assert (=> b!1007934 (= e!567219 e!567222)))

(declare-fun res!676985 () Bool)

(assert (=> b!1007934 (=> (not res!676985) (not e!567222))))

(declare-datatypes ((SeekEntryResult!9524 0))(
  ( (MissingZero!9524 (index!40466 (_ BitVec 32))) (Found!9524 (index!40467 (_ BitVec 32))) (Intermediate!9524 (undefined!10336 Bool) (index!40468 (_ BitVec 32)) (x!87891 (_ BitVec 32))) (Undefined!9524) (MissingVacant!9524 (index!40469 (_ BitVec 32))) )
))
(declare-fun lt!445458 () SeekEntryResult!9524)

(declare-fun lt!445461 () SeekEntryResult!9524)

(assert (=> b!1007934 (= res!676985 (= lt!445458 lt!445461))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007934 (= lt!445461 (Intermediate!9524 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63550 (_ BitVec 32)) SeekEntryResult!9524)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007934 (= lt!445458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30592 a!3219) j!170) mask!3464) (select (arr!30592 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007935 () Bool)

(declare-fun res!676984 () Bool)

(assert (=> b!1007935 (=> (not res!676984) (not e!567219))))

(declare-datatypes ((List!21394 0))(
  ( (Nil!21391) (Cons!21390 (h!22576 (_ BitVec 64)) (t!30403 List!21394)) )
))
(declare-fun arrayNoDuplicates!0 (array!63550 (_ BitVec 32) List!21394) Bool)

(assert (=> b!1007935 (= res!676984 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21391))))

(declare-fun b!1007936 () Bool)

(declare-fun res!676981 () Bool)

(assert (=> b!1007936 (=> (not res!676981) (not e!567219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63550 (_ BitVec 32)) Bool)

(assert (=> b!1007936 (= res!676981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007937 () Bool)

(declare-fun res!676988 () Bool)

(assert (=> b!1007937 (=> (not res!676988) (not e!567219))))

(assert (=> b!1007937 (= res!676988 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31095 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31095 a!3219))))))

(declare-fun b!1007938 () Bool)

(declare-fun e!567224 () Bool)

(assert (=> b!1007938 (= e!567222 e!567224)))

(declare-fun res!676989 () Bool)

(assert (=> b!1007938 (=> (not res!676989) (not e!567224))))

(declare-fun lt!445455 () SeekEntryResult!9524)

(assert (=> b!1007938 (= res!676989 (= lt!445455 lt!445461))))

(assert (=> b!1007938 (= lt!445455 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30592 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007939 () Bool)

(declare-fun res!676982 () Bool)

(assert (=> b!1007939 (=> (not res!676982) (not e!567220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007939 (= res!676982 (validKeyInArray!0 k!2224))))

(declare-fun b!1007940 () Bool)

(assert (=> b!1007940 (= e!567224 e!567221)))

(declare-fun res!676986 () Bool)

(assert (=> b!1007940 (=> (not res!676986) (not e!567221))))

(declare-fun lt!445456 () array!63550)

(declare-fun lt!445460 () (_ BitVec 64))

(assert (=> b!1007940 (= res!676986 (not (= lt!445458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445460 mask!3464) lt!445460 lt!445456 mask!3464))))))

(assert (=> b!1007940 (= lt!445460 (select (store (arr!30592 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007940 (= lt!445456 (array!63551 (store (arr!30592 a!3219) i!1194 k!2224) (size!31095 a!3219)))))

(declare-fun b!1007941 () Bool)

(declare-fun res!676992 () Bool)

(assert (=> b!1007941 (=> (not res!676992) (not e!567221))))

(assert (=> b!1007941 (= res!676992 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007942 () Bool)

(declare-fun res!676993 () Bool)

(assert (=> b!1007942 (=> (not res!676993) (not e!567220))))

(assert (=> b!1007942 (= res!676993 (validKeyInArray!0 (select (arr!30592 a!3219) j!170)))))

(declare-fun b!1007943 () Bool)

(assert (=> b!1007943 (= e!567220 e!567219)))

(declare-fun res!676987 () Bool)

(assert (=> b!1007943 (=> (not res!676987) (not e!567219))))

(declare-fun lt!445459 () SeekEntryResult!9524)

(assert (=> b!1007943 (= res!676987 (or (= lt!445459 (MissingVacant!9524 i!1194)) (= lt!445459 (MissingZero!9524 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63550 (_ BitVec 32)) SeekEntryResult!9524)

(assert (=> b!1007943 (= lt!445459 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007944 () Bool)

(declare-fun res!676990 () Bool)

(assert (=> b!1007944 (=> (not res!676990) (not e!567221))))

(assert (=> b!1007944 (= res!676990 (not (= lt!445455 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445460 lt!445456 mask!3464))))))

(assert (= (and start!86950 res!676991) b!1007931))

(assert (= (and b!1007931 res!676980) b!1007942))

(assert (= (and b!1007942 res!676993) b!1007939))

(assert (= (and b!1007939 res!676982) b!1007932))

(assert (= (and b!1007932 res!676983) b!1007943))

(assert (= (and b!1007943 res!676987) b!1007936))

(assert (= (and b!1007936 res!676981) b!1007935))

(assert (= (and b!1007935 res!676984) b!1007937))

(assert (= (and b!1007937 res!676988) b!1007934))

(assert (= (and b!1007934 res!676985) b!1007938))

(assert (= (and b!1007938 res!676989) b!1007940))

(assert (= (and b!1007940 res!676986) b!1007944))

(assert (= (and b!1007944 res!676990) b!1007941))

(assert (= (and b!1007941 res!676992) b!1007933))

(declare-fun m!932847 () Bool)

(assert (=> b!1007942 m!932847))

(assert (=> b!1007942 m!932847))

(declare-fun m!932849 () Bool)

(assert (=> b!1007942 m!932849))

(assert (=> b!1007934 m!932847))

(assert (=> b!1007934 m!932847))

(declare-fun m!932851 () Bool)

(assert (=> b!1007934 m!932851))

(assert (=> b!1007934 m!932851))

(assert (=> b!1007934 m!932847))

(declare-fun m!932853 () Bool)

(assert (=> b!1007934 m!932853))

(declare-fun m!932855 () Bool)

(assert (=> start!86950 m!932855))

(declare-fun m!932857 () Bool)

(assert (=> start!86950 m!932857))

(declare-fun m!932859 () Bool)

(assert (=> b!1007932 m!932859))

(declare-fun m!932861 () Bool)

(assert (=> b!1007944 m!932861))

(declare-fun m!932863 () Bool)

(assert (=> b!1007939 m!932863))

(declare-fun m!932865 () Bool)

(assert (=> b!1007943 m!932865))

(declare-fun m!932867 () Bool)

(assert (=> b!1007936 m!932867))

(declare-fun m!932869 () Bool)

(assert (=> b!1007940 m!932869))

(assert (=> b!1007940 m!932869))

(declare-fun m!932871 () Bool)

(assert (=> b!1007940 m!932871))

(declare-fun m!932873 () Bool)

(assert (=> b!1007940 m!932873))

(declare-fun m!932875 () Bool)

(assert (=> b!1007940 m!932875))

(declare-fun m!932877 () Bool)

(assert (=> b!1007935 m!932877))

(declare-fun m!932879 () Bool)

(assert (=> b!1007933 m!932879))

(assert (=> b!1007938 m!932847))

(assert (=> b!1007938 m!932847))

(declare-fun m!932881 () Bool)

(assert (=> b!1007938 m!932881))

(push 1)

