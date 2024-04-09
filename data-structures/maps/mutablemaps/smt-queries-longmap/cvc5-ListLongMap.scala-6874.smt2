; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86530 () Bool)

(assert start!86530)

(declare-fun b!1001779 () Bool)

(declare-fun res!671417 () Bool)

(declare-fun e!564470 () Bool)

(assert (=> b!1001779 (=> (not res!671417) (not e!564470))))

(declare-datatypes ((array!63283 0))(
  ( (array!63284 (arr!30463 (Array (_ BitVec 32) (_ BitVec 64))) (size!30966 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63283)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001779 (= res!671417 (and (= (size!30966 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30966 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30966 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001780 () Bool)

(declare-fun e!564473 () Bool)

(assert (=> b!1001780 (= e!564470 e!564473)))

(declare-fun res!671415 () Bool)

(assert (=> b!1001780 (=> (not res!671415) (not e!564473))))

(declare-datatypes ((SeekEntryResult!9395 0))(
  ( (MissingZero!9395 (index!39950 (_ BitVec 32))) (Found!9395 (index!39951 (_ BitVec 32))) (Intermediate!9395 (undefined!10207 Bool) (index!39952 (_ BitVec 32)) (x!87400 (_ BitVec 32))) (Undefined!9395) (MissingVacant!9395 (index!39953 (_ BitVec 32))) )
))
(declare-fun lt!442860 () SeekEntryResult!9395)

(assert (=> b!1001780 (= res!671415 (or (= lt!442860 (MissingVacant!9395 i!1194)) (= lt!442860 (MissingZero!9395 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63283 (_ BitVec 32)) SeekEntryResult!9395)

(assert (=> b!1001780 (= lt!442860 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001781 () Bool)

(declare-fun res!671421 () Bool)

(declare-fun e!564468 () Bool)

(assert (=> b!1001781 (=> (not res!671421) (not e!564468))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1001781 (= res!671421 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001782 () Bool)

(declare-fun res!671424 () Bool)

(assert (=> b!1001782 (=> (not res!671424) (not e!564473))))

(declare-datatypes ((List!21265 0))(
  ( (Nil!21262) (Cons!21261 (h!22438 (_ BitVec 64)) (t!30274 List!21265)) )
))
(declare-fun arrayNoDuplicates!0 (array!63283 (_ BitVec 32) List!21265) Bool)

(assert (=> b!1001782 (= res!671424 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21262))))

(declare-fun b!1001783 () Bool)

(declare-fun res!671423 () Bool)

(assert (=> b!1001783 (=> (not res!671423) (not e!564468))))

(declare-fun lt!442856 () array!63283)

(declare-fun lt!442859 () (_ BitVec 64))

(declare-fun lt!442863 () SeekEntryResult!9395)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63283 (_ BitVec 32)) SeekEntryResult!9395)

(assert (=> b!1001783 (= res!671423 (not (= lt!442863 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442859 lt!442856 mask!3464))))))

(declare-fun b!1001784 () Bool)

(declare-fun e!564472 () Bool)

(declare-fun e!564471 () Bool)

(assert (=> b!1001784 (= e!564472 e!564471)))

(declare-fun res!671426 () Bool)

(assert (=> b!1001784 (=> (not res!671426) (not e!564471))))

(declare-fun lt!442862 () SeekEntryResult!9395)

(assert (=> b!1001784 (= res!671426 (= lt!442863 lt!442862))))

(assert (=> b!1001784 (= lt!442863 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30463 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001785 () Bool)

(declare-fun res!671419 () Bool)

(assert (=> b!1001785 (=> (not res!671419) (not e!564473))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001785 (= res!671419 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30966 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30966 a!3219))))))

(declare-fun b!1001786 () Bool)

(declare-fun res!671425 () Bool)

(assert (=> b!1001786 (=> (not res!671425) (not e!564473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63283 (_ BitVec 32)) Bool)

(assert (=> b!1001786 (= res!671425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001787 () Bool)

(declare-fun res!671418 () Bool)

(assert (=> b!1001787 (=> (not res!671418) (not e!564470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001787 (= res!671418 (validKeyInArray!0 (select (arr!30463 a!3219) j!170)))))

(declare-fun res!671420 () Bool)

(assert (=> start!86530 (=> (not res!671420) (not e!564470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86530 (= res!671420 (validMask!0 mask!3464))))

(assert (=> start!86530 e!564470))

(declare-fun array_inv!23453 (array!63283) Bool)

(assert (=> start!86530 (array_inv!23453 a!3219)))

(assert (=> start!86530 true))

(declare-fun b!1001788 () Bool)

(declare-fun res!671427 () Bool)

(assert (=> b!1001788 (=> (not res!671427) (not e!564470))))

(declare-fun arrayContainsKey!0 (array!63283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001788 (= res!671427 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001789 () Bool)

(assert (=> b!1001789 (= e!564473 e!564472)))

(declare-fun res!671414 () Bool)

(assert (=> b!1001789 (=> (not res!671414) (not e!564472))))

(declare-fun lt!442857 () SeekEntryResult!9395)

(assert (=> b!1001789 (= res!671414 (= lt!442857 lt!442862))))

(assert (=> b!1001789 (= lt!442862 (Intermediate!9395 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001789 (= lt!442857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30463 a!3219) j!170) mask!3464) (select (arr!30463 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001790 () Bool)

(declare-fun res!671413 () Bool)

(assert (=> b!1001790 (=> (not res!671413) (not e!564470))))

(assert (=> b!1001790 (= res!671413 (validKeyInArray!0 k!2224))))

(declare-fun b!1001791 () Bool)

(declare-fun e!564467 () Bool)

(assert (=> b!1001791 (= e!564467 false)))

(declare-fun lt!442858 () SeekEntryResult!9395)

(declare-fun lt!442861 () (_ BitVec 32))

(assert (=> b!1001791 (= lt!442858 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442861 lt!442859 lt!442856 mask!3464))))

(declare-fun b!1001792 () Bool)

(assert (=> b!1001792 (= e!564468 e!564467)))

(declare-fun res!671422 () Bool)

(assert (=> b!1001792 (=> (not res!671422) (not e!564467))))

(assert (=> b!1001792 (= res!671422 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442861 #b00000000000000000000000000000000) (bvslt lt!442861 (size!30966 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001792 (= lt!442861 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001793 () Bool)

(declare-fun res!671428 () Bool)

(assert (=> b!1001793 (=> (not res!671428) (not e!564467))))

(assert (=> b!1001793 (= res!671428 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442861 (select (arr!30463 a!3219) j!170) a!3219 mask!3464) lt!442862))))

(declare-fun b!1001794 () Bool)

(assert (=> b!1001794 (= e!564471 e!564468)))

(declare-fun res!671416 () Bool)

(assert (=> b!1001794 (=> (not res!671416) (not e!564468))))

(assert (=> b!1001794 (= res!671416 (not (= lt!442857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442859 mask!3464) lt!442859 lt!442856 mask!3464))))))

(assert (=> b!1001794 (= lt!442859 (select (store (arr!30463 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001794 (= lt!442856 (array!63284 (store (arr!30463 a!3219) i!1194 k!2224) (size!30966 a!3219)))))

(assert (= (and start!86530 res!671420) b!1001779))

(assert (= (and b!1001779 res!671417) b!1001787))

(assert (= (and b!1001787 res!671418) b!1001790))

(assert (= (and b!1001790 res!671413) b!1001788))

(assert (= (and b!1001788 res!671427) b!1001780))

(assert (= (and b!1001780 res!671415) b!1001786))

(assert (= (and b!1001786 res!671425) b!1001782))

(assert (= (and b!1001782 res!671424) b!1001785))

(assert (= (and b!1001785 res!671419) b!1001789))

(assert (= (and b!1001789 res!671414) b!1001784))

(assert (= (and b!1001784 res!671426) b!1001794))

(assert (= (and b!1001794 res!671416) b!1001783))

(assert (= (and b!1001783 res!671423) b!1001781))

(assert (= (and b!1001781 res!671421) b!1001792))

(assert (= (and b!1001792 res!671422) b!1001793))

(assert (= (and b!1001793 res!671428) b!1001791))

(declare-fun m!927861 () Bool)

(assert (=> b!1001783 m!927861))

(declare-fun m!927863 () Bool)

(assert (=> b!1001789 m!927863))

(assert (=> b!1001789 m!927863))

(declare-fun m!927865 () Bool)

(assert (=> b!1001789 m!927865))

(assert (=> b!1001789 m!927865))

(assert (=> b!1001789 m!927863))

(declare-fun m!927867 () Bool)

(assert (=> b!1001789 m!927867))

(declare-fun m!927869 () Bool)

(assert (=> b!1001786 m!927869))

(declare-fun m!927871 () Bool)

(assert (=> b!1001791 m!927871))

(declare-fun m!927873 () Bool)

(assert (=> b!1001788 m!927873))

(declare-fun m!927875 () Bool)

(assert (=> start!86530 m!927875))

(declare-fun m!927877 () Bool)

(assert (=> start!86530 m!927877))

(assert (=> b!1001784 m!927863))

(assert (=> b!1001784 m!927863))

(declare-fun m!927879 () Bool)

(assert (=> b!1001784 m!927879))

(declare-fun m!927881 () Bool)

(assert (=> b!1001790 m!927881))

(assert (=> b!1001793 m!927863))

(assert (=> b!1001793 m!927863))

(declare-fun m!927883 () Bool)

(assert (=> b!1001793 m!927883))

(declare-fun m!927885 () Bool)

(assert (=> b!1001782 m!927885))

(declare-fun m!927887 () Bool)

(assert (=> b!1001780 m!927887))

(declare-fun m!927889 () Bool)

(assert (=> b!1001792 m!927889))

(declare-fun m!927891 () Bool)

(assert (=> b!1001794 m!927891))

(assert (=> b!1001794 m!927891))

(declare-fun m!927893 () Bool)

(assert (=> b!1001794 m!927893))

(declare-fun m!927895 () Bool)

(assert (=> b!1001794 m!927895))

(declare-fun m!927897 () Bool)

(assert (=> b!1001794 m!927897))

(assert (=> b!1001787 m!927863))

(assert (=> b!1001787 m!927863))

(declare-fun m!927899 () Bool)

(assert (=> b!1001787 m!927899))

(push 1)

