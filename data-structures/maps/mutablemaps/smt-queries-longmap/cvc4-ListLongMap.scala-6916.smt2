; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86948 () Bool)

(assert start!86948)

(declare-fun b!1007889 () Bool)

(declare-fun res!676942 () Bool)

(declare-fun e!567201 () Bool)

(assert (=> b!1007889 (=> (not res!676942) (not e!567201))))

(declare-datatypes ((array!63548 0))(
  ( (array!63549 (arr!30591 (Array (_ BitVec 32) (_ BitVec 64))) (size!31094 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63548)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!1007889 (= res!676942 (and (= (size!31094 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31094 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31094 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007890 () Bool)

(declare-fun res!676946 () Bool)

(declare-fun e!567202 () Bool)

(assert (=> b!1007890 (=> (not res!676946) (not e!567202))))

(declare-fun lt!445435 () array!63548)

(declare-fun lt!445440 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9523 0))(
  ( (MissingZero!9523 (index!40462 (_ BitVec 32))) (Found!9523 (index!40463 (_ BitVec 32))) (Intermediate!9523 (undefined!10335 Bool) (index!40464 (_ BitVec 32)) (x!87882 (_ BitVec 32))) (Undefined!9523) (MissingVacant!9523 (index!40465 (_ BitVec 32))) )
))
(declare-fun lt!445436 () SeekEntryResult!9523)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63548 (_ BitVec 32)) SeekEntryResult!9523)

(assert (=> b!1007890 (= res!676946 (not (= lt!445436 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445440 lt!445435 mask!3464))))))

(declare-fun b!1007891 () Bool)

(declare-fun e!567205 () Bool)

(declare-fun e!567206 () Bool)

(assert (=> b!1007891 (= e!567205 e!567206)))

(declare-fun res!676943 () Bool)

(assert (=> b!1007891 (=> (not res!676943) (not e!567206))))

(declare-fun lt!445437 () SeekEntryResult!9523)

(declare-fun lt!445438 () SeekEntryResult!9523)

(assert (=> b!1007891 (= res!676943 (= lt!445437 lt!445438))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007891 (= lt!445438 (Intermediate!9523 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007891 (= lt!445437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30591 a!3219) j!170) mask!3464) (select (arr!30591 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007892 () Bool)

(declare-fun res!676950 () Bool)

(assert (=> b!1007892 (=> (not res!676950) (not e!567202))))

(assert (=> b!1007892 (= res!676950 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007893 () Bool)

(assert (=> b!1007893 (= e!567202 false)))

(declare-fun lt!445439 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007893 (= lt!445439 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007895 () Bool)

(declare-fun res!676940 () Bool)

(assert (=> b!1007895 (=> (not res!676940) (not e!567201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007895 (= res!676940 (validKeyInArray!0 (select (arr!30591 a!3219) j!170)))))

(declare-fun b!1007896 () Bool)

(assert (=> b!1007896 (= e!567201 e!567205)))

(declare-fun res!676948 () Bool)

(assert (=> b!1007896 (=> (not res!676948) (not e!567205))))

(declare-fun lt!445434 () SeekEntryResult!9523)

(assert (=> b!1007896 (= res!676948 (or (= lt!445434 (MissingVacant!9523 i!1194)) (= lt!445434 (MissingZero!9523 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63548 (_ BitVec 32)) SeekEntryResult!9523)

(assert (=> b!1007896 (= lt!445434 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007897 () Bool)

(declare-fun res!676947 () Bool)

(assert (=> b!1007897 (=> (not res!676947) (not e!567205))))

(assert (=> b!1007897 (= res!676947 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31094 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31094 a!3219))))))

(declare-fun b!1007898 () Bool)

(declare-fun e!567204 () Bool)

(assert (=> b!1007898 (= e!567206 e!567204)))

(declare-fun res!676945 () Bool)

(assert (=> b!1007898 (=> (not res!676945) (not e!567204))))

(assert (=> b!1007898 (= res!676945 (= lt!445436 lt!445438))))

(assert (=> b!1007898 (= lt!445436 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30591 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007899 () Bool)

(assert (=> b!1007899 (= e!567204 e!567202)))

(declare-fun res!676939 () Bool)

(assert (=> b!1007899 (=> (not res!676939) (not e!567202))))

(assert (=> b!1007899 (= res!676939 (not (= lt!445437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445440 mask!3464) lt!445440 lt!445435 mask!3464))))))

(assert (=> b!1007899 (= lt!445440 (select (store (arr!30591 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007899 (= lt!445435 (array!63549 (store (arr!30591 a!3219) i!1194 k!2224) (size!31094 a!3219)))))

(declare-fun b!1007900 () Bool)

(declare-fun res!676938 () Bool)

(assert (=> b!1007900 (=> (not res!676938) (not e!567201))))

(declare-fun arrayContainsKey!0 (array!63548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007900 (= res!676938 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007901 () Bool)

(declare-fun res!676951 () Bool)

(assert (=> b!1007901 (=> (not res!676951) (not e!567201))))

(assert (=> b!1007901 (= res!676951 (validKeyInArray!0 k!2224))))

(declare-fun b!1007902 () Bool)

(declare-fun res!676941 () Bool)

(assert (=> b!1007902 (=> (not res!676941) (not e!567205))))

(declare-datatypes ((List!21393 0))(
  ( (Nil!21390) (Cons!21389 (h!22575 (_ BitVec 64)) (t!30402 List!21393)) )
))
(declare-fun arrayNoDuplicates!0 (array!63548 (_ BitVec 32) List!21393) Bool)

(assert (=> b!1007902 (= res!676941 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21390))))

(declare-fun res!676944 () Bool)

(assert (=> start!86948 (=> (not res!676944) (not e!567201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86948 (= res!676944 (validMask!0 mask!3464))))

(assert (=> start!86948 e!567201))

(declare-fun array_inv!23581 (array!63548) Bool)

(assert (=> start!86948 (array_inv!23581 a!3219)))

(assert (=> start!86948 true))

(declare-fun b!1007894 () Bool)

(declare-fun res!676949 () Bool)

(assert (=> b!1007894 (=> (not res!676949) (not e!567205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63548 (_ BitVec 32)) Bool)

(assert (=> b!1007894 (= res!676949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86948 res!676944) b!1007889))

(assert (= (and b!1007889 res!676942) b!1007895))

(assert (= (and b!1007895 res!676940) b!1007901))

(assert (= (and b!1007901 res!676951) b!1007900))

(assert (= (and b!1007900 res!676938) b!1007896))

(assert (= (and b!1007896 res!676948) b!1007894))

(assert (= (and b!1007894 res!676949) b!1007902))

(assert (= (and b!1007902 res!676941) b!1007897))

(assert (= (and b!1007897 res!676947) b!1007891))

(assert (= (and b!1007891 res!676943) b!1007898))

(assert (= (and b!1007898 res!676945) b!1007899))

(assert (= (and b!1007899 res!676939) b!1007890))

(assert (= (and b!1007890 res!676946) b!1007892))

(assert (= (and b!1007892 res!676950) b!1007893))

(declare-fun m!932811 () Bool)

(assert (=> b!1007895 m!932811))

(assert (=> b!1007895 m!932811))

(declare-fun m!932813 () Bool)

(assert (=> b!1007895 m!932813))

(declare-fun m!932815 () Bool)

(assert (=> b!1007893 m!932815))

(declare-fun m!932817 () Bool)

(assert (=> b!1007900 m!932817))

(declare-fun m!932819 () Bool)

(assert (=> b!1007899 m!932819))

(assert (=> b!1007899 m!932819))

(declare-fun m!932821 () Bool)

(assert (=> b!1007899 m!932821))

(declare-fun m!932823 () Bool)

(assert (=> b!1007899 m!932823))

(declare-fun m!932825 () Bool)

(assert (=> b!1007899 m!932825))

(declare-fun m!932827 () Bool)

(assert (=> b!1007901 m!932827))

(assert (=> b!1007891 m!932811))

(assert (=> b!1007891 m!932811))

(declare-fun m!932829 () Bool)

(assert (=> b!1007891 m!932829))

(assert (=> b!1007891 m!932829))

(assert (=> b!1007891 m!932811))

(declare-fun m!932831 () Bool)

(assert (=> b!1007891 m!932831))

(declare-fun m!932833 () Bool)

(assert (=> b!1007896 m!932833))

(declare-fun m!932835 () Bool)

(assert (=> start!86948 m!932835))

(declare-fun m!932837 () Bool)

(assert (=> start!86948 m!932837))

(declare-fun m!932839 () Bool)

(assert (=> b!1007894 m!932839))

(assert (=> b!1007898 m!932811))

(assert (=> b!1007898 m!932811))

(declare-fun m!932841 () Bool)

(assert (=> b!1007898 m!932841))

(declare-fun m!932843 () Bool)

(assert (=> b!1007902 m!932843))

(declare-fun m!932845 () Bool)

(assert (=> b!1007890 m!932845))

(push 1)

