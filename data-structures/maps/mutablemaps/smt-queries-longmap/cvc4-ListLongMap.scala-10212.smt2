; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120368 () Bool)

(assert start!120368)

(declare-fun b!1400334 () Bool)

(declare-fun res!938959 () Bool)

(declare-fun e!792872 () Bool)

(assert (=> b!1400334 (=> (not res!938959) (not e!792872))))

(declare-datatypes ((array!95695 0))(
  ( (array!95696 (arr!46194 (Array (_ BitVec 32) (_ BitVec 64))) (size!46745 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95695)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400334 (= res!938959 (validKeyInArray!0 (select (arr!46194 a!2901) i!1037)))))

(declare-fun b!1400335 () Bool)

(declare-fun res!938958 () Bool)

(assert (=> b!1400335 (=> (not res!938958) (not e!792872))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400335 (= res!938958 (validKeyInArray!0 (select (arr!46194 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!792868 () Bool)

(declare-fun b!1400336 () Bool)

(declare-datatypes ((SeekEntryResult!10533 0))(
  ( (MissingZero!10533 (index!44508 (_ BitVec 32))) (Found!10533 (index!44509 (_ BitVec 32))) (Intermediate!10533 (undefined!11345 Bool) (index!44510 (_ BitVec 32)) (x!126155 (_ BitVec 32))) (Undefined!10533) (MissingVacant!10533 (index!44511 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95695 (_ BitVec 32)) SeekEntryResult!10533)

(assert (=> b!1400336 (= e!792868 (= (seekEntryOrOpen!0 (select (arr!46194 a!2901) j!112) a!2901 mask!2840) (Found!10533 j!112)))))

(declare-fun b!1400337 () Bool)

(declare-fun res!938963 () Bool)

(assert (=> b!1400337 (=> (not res!938963) (not e!792872))))

(declare-datatypes ((List!32893 0))(
  ( (Nil!32890) (Cons!32889 (h!34137 (_ BitVec 64)) (t!47594 List!32893)) )
))
(declare-fun arrayNoDuplicates!0 (array!95695 (_ BitVec 32) List!32893) Bool)

(assert (=> b!1400337 (= res!938963 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32890))))

(declare-fun b!1400338 () Bool)

(declare-fun e!792866 () Bool)

(assert (=> b!1400338 (= e!792866 true)))

(declare-fun lt!616134 () (_ BitVec 32))

(declare-fun lt!616131 () (_ BitVec 64))

(declare-fun lt!616135 () array!95695)

(declare-fun lt!616130 () SeekEntryResult!10533)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95695 (_ BitVec 32)) SeekEntryResult!10533)

(assert (=> b!1400338 (= lt!616130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616134 lt!616131 lt!616135 mask!2840))))

(declare-fun b!1400339 () Bool)

(declare-fun lt!616129 () SeekEntryResult!10533)

(declare-fun e!792867 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95695 (_ BitVec 32)) SeekEntryResult!10533)

(assert (=> b!1400339 (= e!792867 (= (seekEntryOrOpen!0 lt!616131 lt!616135 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126155 lt!616129) (index!44510 lt!616129) (index!44510 lt!616129) (select (arr!46194 a!2901) j!112) lt!616135 mask!2840)))))

(declare-fun b!1400340 () Bool)

(declare-fun e!792870 () Bool)

(assert (=> b!1400340 (= e!792870 e!792866)))

(declare-fun res!938960 () Bool)

(assert (=> b!1400340 (=> res!938960 e!792866)))

(declare-fun lt!616133 () SeekEntryResult!10533)

(assert (=> b!1400340 (= res!938960 (or (bvslt (x!126155 lt!616133) #b00000000000000000000000000000000) (bvsgt (x!126155 lt!616133) #b01111111111111111111111111111110) (bvslt (x!126155 lt!616129) #b00000000000000000000000000000000) (bvsgt (x!126155 lt!616129) #b01111111111111111111111111111110) (bvslt lt!616134 #b00000000000000000000000000000000) (bvsge lt!616134 (size!46745 a!2901)) (bvslt (index!44510 lt!616133) #b00000000000000000000000000000000) (bvsge (index!44510 lt!616133) (size!46745 a!2901)) (bvslt (index!44510 lt!616129) #b00000000000000000000000000000000) (bvsge (index!44510 lt!616129) (size!46745 a!2901)) (not (= lt!616133 (Intermediate!10533 false (index!44510 lt!616133) (x!126155 lt!616133)))) (not (= lt!616129 (Intermediate!10533 false (index!44510 lt!616129) (x!126155 lt!616129))))))))

(assert (=> b!1400340 e!792867))

(declare-fun res!938964 () Bool)

(assert (=> b!1400340 (=> (not res!938964) (not e!792867))))

(assert (=> b!1400340 (= res!938964 (and (not (undefined!11345 lt!616129)) (= (index!44510 lt!616129) i!1037) (bvslt (x!126155 lt!616129) (x!126155 lt!616133)) (= (select (store (arr!46194 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44510 lt!616129)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47020 0))(
  ( (Unit!47021) )
))
(declare-fun lt!616132 () Unit!47020)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47020)

(assert (=> b!1400340 (= lt!616132 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616134 (x!126155 lt!616133) (index!44510 lt!616133) (x!126155 lt!616129) (index!44510 lt!616129) (undefined!11345 lt!616129) mask!2840))))

(declare-fun b!1400341 () Bool)

(declare-fun res!938955 () Bool)

(assert (=> b!1400341 (=> (not res!938955) (not e!792872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95695 (_ BitVec 32)) Bool)

(assert (=> b!1400341 (= res!938955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400342 () Bool)

(declare-fun e!792869 () Bool)

(assert (=> b!1400342 (= e!792869 e!792870)))

(declare-fun res!938954 () Bool)

(assert (=> b!1400342 (=> res!938954 e!792870)))

(assert (=> b!1400342 (= res!938954 (or (= lt!616133 lt!616129) (not (is-Intermediate!10533 lt!616129))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400342 (= lt!616129 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616131 mask!2840) lt!616131 lt!616135 mask!2840))))

(assert (=> b!1400342 (= lt!616131 (select (store (arr!46194 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400342 (= lt!616135 (array!95696 (store (arr!46194 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46745 a!2901)))))

(declare-fun res!938962 () Bool)

(assert (=> start!120368 (=> (not res!938962) (not e!792872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120368 (= res!938962 (validMask!0 mask!2840))))

(assert (=> start!120368 e!792872))

(assert (=> start!120368 true))

(declare-fun array_inv!35139 (array!95695) Bool)

(assert (=> start!120368 (array_inv!35139 a!2901)))

(declare-fun b!1400343 () Bool)

(declare-fun res!938961 () Bool)

(assert (=> b!1400343 (=> (not res!938961) (not e!792872))))

(assert (=> b!1400343 (= res!938961 (and (= (size!46745 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46745 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46745 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400344 () Bool)

(assert (=> b!1400344 (= e!792872 (not e!792869))))

(declare-fun res!938956 () Bool)

(assert (=> b!1400344 (=> res!938956 e!792869)))

(assert (=> b!1400344 (= res!938956 (or (not (is-Intermediate!10533 lt!616133)) (undefined!11345 lt!616133)))))

(assert (=> b!1400344 e!792868))

(declare-fun res!938957 () Bool)

(assert (=> b!1400344 (=> (not res!938957) (not e!792868))))

(assert (=> b!1400344 (= res!938957 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616128 () Unit!47020)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47020)

(assert (=> b!1400344 (= lt!616128 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400344 (= lt!616133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616134 (select (arr!46194 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400344 (= lt!616134 (toIndex!0 (select (arr!46194 a!2901) j!112) mask!2840))))

(assert (= (and start!120368 res!938962) b!1400343))

(assert (= (and b!1400343 res!938961) b!1400334))

(assert (= (and b!1400334 res!938959) b!1400335))

(assert (= (and b!1400335 res!938958) b!1400341))

(assert (= (and b!1400341 res!938955) b!1400337))

(assert (= (and b!1400337 res!938963) b!1400344))

(assert (= (and b!1400344 res!938957) b!1400336))

(assert (= (and b!1400344 (not res!938956)) b!1400342))

(assert (= (and b!1400342 (not res!938954)) b!1400340))

(assert (= (and b!1400340 res!938964) b!1400339))

(assert (= (and b!1400340 (not res!938960)) b!1400338))

(declare-fun m!1287837 () Bool)

(assert (=> start!120368 m!1287837))

(declare-fun m!1287839 () Bool)

(assert (=> start!120368 m!1287839))

(declare-fun m!1287841 () Bool)

(assert (=> b!1400340 m!1287841))

(declare-fun m!1287843 () Bool)

(assert (=> b!1400340 m!1287843))

(declare-fun m!1287845 () Bool)

(assert (=> b!1400340 m!1287845))

(declare-fun m!1287847 () Bool)

(assert (=> b!1400335 m!1287847))

(assert (=> b!1400335 m!1287847))

(declare-fun m!1287849 () Bool)

(assert (=> b!1400335 m!1287849))

(declare-fun m!1287851 () Bool)

(assert (=> b!1400342 m!1287851))

(assert (=> b!1400342 m!1287851))

(declare-fun m!1287853 () Bool)

(assert (=> b!1400342 m!1287853))

(assert (=> b!1400342 m!1287841))

(declare-fun m!1287855 () Bool)

(assert (=> b!1400342 m!1287855))

(declare-fun m!1287857 () Bool)

(assert (=> b!1400337 m!1287857))

(declare-fun m!1287859 () Bool)

(assert (=> b!1400334 m!1287859))

(assert (=> b!1400334 m!1287859))

(declare-fun m!1287861 () Bool)

(assert (=> b!1400334 m!1287861))

(declare-fun m!1287863 () Bool)

(assert (=> b!1400341 m!1287863))

(declare-fun m!1287865 () Bool)

(assert (=> b!1400338 m!1287865))

(assert (=> b!1400336 m!1287847))

(assert (=> b!1400336 m!1287847))

(declare-fun m!1287867 () Bool)

(assert (=> b!1400336 m!1287867))

(declare-fun m!1287869 () Bool)

(assert (=> b!1400339 m!1287869))

(assert (=> b!1400339 m!1287847))

(assert (=> b!1400339 m!1287847))

(declare-fun m!1287871 () Bool)

(assert (=> b!1400339 m!1287871))

(assert (=> b!1400344 m!1287847))

(declare-fun m!1287873 () Bool)

(assert (=> b!1400344 m!1287873))

(assert (=> b!1400344 m!1287847))

(declare-fun m!1287875 () Bool)

(assert (=> b!1400344 m!1287875))

(assert (=> b!1400344 m!1287847))

(declare-fun m!1287877 () Bool)

(assert (=> b!1400344 m!1287877))

(declare-fun m!1287879 () Bool)

(assert (=> b!1400344 m!1287879))

(push 1)

