; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68944 () Bool)

(assert start!68944)

(declare-fun b!803852 () Bool)

(declare-fun e!445410 () Bool)

(assert (=> b!803852 (= e!445410 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((array!43685 0))(
  ( (array!43686 (arr!20919 (Array (_ BitVec 32) (_ BitVec 64))) (size!21340 (_ BitVec 32))) )
))
(declare-fun lt!359967 () array!43685)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!359965 () (_ BitVec 64))

(declare-fun a!3170 () array!43685)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!359962 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8517 0))(
  ( (MissingZero!8517 (index!36435 (_ BitVec 32))) (Found!8517 (index!36436 (_ BitVec 32))) (Intermediate!8517 (undefined!9329 Bool) (index!36437 (_ BitVec 32)) (x!67300 (_ BitVec 32))) (Undefined!8517) (MissingVacant!8517 (index!36438 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43685 (_ BitVec 32)) SeekEntryResult!8517)

(assert (=> b!803852 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359962 vacantAfter!23 lt!359965 lt!359967 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359962 vacantBefore!23 (select (arr!20919 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27576 0))(
  ( (Unit!27577) )
))
(declare-fun lt!359968 () Unit!27576)

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43685 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27576)

(assert (=> b!803852 (= lt!359968 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359962 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803852 (= lt!359962 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!548548 () Bool)

(declare-fun e!445412 () Bool)

(assert (=> start!68944 (=> (not res!548548) (not e!445412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68944 (= res!548548 (validMask!0 mask!3266))))

(assert (=> start!68944 e!445412))

(assert (=> start!68944 true))

(declare-fun array_inv!16693 (array!43685) Bool)

(assert (=> start!68944 (array_inv!16693 a!3170)))

(declare-fun b!803853 () Bool)

(declare-fun e!445414 () Bool)

(declare-fun e!445411 () Bool)

(assert (=> b!803853 (= e!445414 e!445411)))

(declare-fun res!548544 () Bool)

(assert (=> b!803853 (=> (not res!548544) (not e!445411))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43685 (_ BitVec 32)) SeekEntryResult!8517)

(assert (=> b!803853 (= res!548544 (= (seekEntryOrOpen!0 lt!359965 lt!359967 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359965 lt!359967 mask!3266)))))

(assert (=> b!803853 (= lt!359965 (select (store (arr!20919 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803853 (= lt!359967 (array!43686 (store (arr!20919 a!3170) i!1163 k!2044) (size!21340 a!3170)))))

(declare-fun b!803854 () Bool)

(declare-fun res!548545 () Bool)

(assert (=> b!803854 (=> (not res!548545) (not e!445414))))

(assert (=> b!803854 (= res!548545 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21340 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20919 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21340 a!3170)) (= (select (arr!20919 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803855 () Bool)

(declare-fun res!548541 () Bool)

(assert (=> b!803855 (=> (not res!548541) (not e!445412))))

(declare-fun arrayContainsKey!0 (array!43685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803855 (= res!548541 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803856 () Bool)

(declare-fun res!548547 () Bool)

(assert (=> b!803856 (=> (not res!548547) (not e!445414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43685 (_ BitVec 32)) Bool)

(assert (=> b!803856 (= res!548547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803857 () Bool)

(assert (=> b!803857 (= e!445412 e!445414)))

(declare-fun res!548549 () Bool)

(assert (=> b!803857 (=> (not res!548549) (not e!445414))))

(declare-fun lt!359963 () SeekEntryResult!8517)

(assert (=> b!803857 (= res!548549 (or (= lt!359963 (MissingZero!8517 i!1163)) (= lt!359963 (MissingVacant!8517 i!1163))))))

(assert (=> b!803857 (= lt!359963 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803858 () Bool)

(declare-fun res!548546 () Bool)

(assert (=> b!803858 (=> (not res!548546) (not e!445412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803858 (= res!548546 (validKeyInArray!0 (select (arr!20919 a!3170) j!153)))))

(declare-fun b!803859 () Bool)

(declare-fun res!548543 () Bool)

(assert (=> b!803859 (=> (not res!548543) (not e!445412))))

(assert (=> b!803859 (= res!548543 (and (= (size!21340 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21340 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21340 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803860 () Bool)

(assert (=> b!803860 (= e!445411 e!445410)))

(declare-fun res!548550 () Bool)

(assert (=> b!803860 (=> (not res!548550) (not e!445410))))

(declare-fun lt!359966 () SeekEntryResult!8517)

(declare-fun lt!359964 () SeekEntryResult!8517)

(assert (=> b!803860 (= res!548550 (and (= lt!359966 lt!359964) (= lt!359964 (Found!8517 j!153)) (not (= (select (arr!20919 a!3170) index!1236) (select (arr!20919 a!3170) j!153)))))))

(assert (=> b!803860 (= lt!359964 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20919 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803860 (= lt!359966 (seekEntryOrOpen!0 (select (arr!20919 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803861 () Bool)

(declare-fun res!548542 () Bool)

(assert (=> b!803861 (=> (not res!548542) (not e!445412))))

(assert (=> b!803861 (= res!548542 (validKeyInArray!0 k!2044))))

(declare-fun b!803862 () Bool)

(declare-fun res!548551 () Bool)

(assert (=> b!803862 (=> (not res!548551) (not e!445414))))

(declare-datatypes ((List!14935 0))(
  ( (Nil!14932) (Cons!14931 (h!16060 (_ BitVec 64)) (t!21258 List!14935)) )
))
(declare-fun arrayNoDuplicates!0 (array!43685 (_ BitVec 32) List!14935) Bool)

(assert (=> b!803862 (= res!548551 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14932))))

(assert (= (and start!68944 res!548548) b!803859))

(assert (= (and b!803859 res!548543) b!803858))

(assert (= (and b!803858 res!548546) b!803861))

(assert (= (and b!803861 res!548542) b!803855))

(assert (= (and b!803855 res!548541) b!803857))

(assert (= (and b!803857 res!548549) b!803856))

(assert (= (and b!803856 res!548547) b!803862))

(assert (= (and b!803862 res!548551) b!803854))

(assert (= (and b!803854 res!548545) b!803853))

(assert (= (and b!803853 res!548544) b!803860))

(assert (= (and b!803860 res!548550) b!803852))

(declare-fun m!745837 () Bool)

(assert (=> b!803861 m!745837))

(declare-fun m!745839 () Bool)

(assert (=> b!803858 m!745839))

(assert (=> b!803858 m!745839))

(declare-fun m!745841 () Bool)

(assert (=> b!803858 m!745841))

(declare-fun m!745843 () Bool)

(assert (=> b!803860 m!745843))

(assert (=> b!803860 m!745839))

(assert (=> b!803860 m!745839))

(declare-fun m!745845 () Bool)

(assert (=> b!803860 m!745845))

(assert (=> b!803860 m!745839))

(declare-fun m!745847 () Bool)

(assert (=> b!803860 m!745847))

(declare-fun m!745849 () Bool)

(assert (=> b!803855 m!745849))

(declare-fun m!745851 () Bool)

(assert (=> b!803857 m!745851))

(assert (=> b!803852 m!745839))

(assert (=> b!803852 m!745839))

(declare-fun m!745853 () Bool)

(assert (=> b!803852 m!745853))

(declare-fun m!745855 () Bool)

(assert (=> b!803852 m!745855))

(declare-fun m!745857 () Bool)

(assert (=> b!803852 m!745857))

(declare-fun m!745859 () Bool)

(assert (=> b!803852 m!745859))

(declare-fun m!745861 () Bool)

(assert (=> b!803856 m!745861))

(declare-fun m!745863 () Bool)

(assert (=> start!68944 m!745863))

(declare-fun m!745865 () Bool)

(assert (=> start!68944 m!745865))

(declare-fun m!745867 () Bool)

(assert (=> b!803862 m!745867))

(declare-fun m!745869 () Bool)

(assert (=> b!803853 m!745869))

(declare-fun m!745871 () Bool)

(assert (=> b!803853 m!745871))

(declare-fun m!745873 () Bool)

(assert (=> b!803853 m!745873))

(declare-fun m!745875 () Bool)

(assert (=> b!803853 m!745875))

(declare-fun m!745877 () Bool)

(assert (=> b!803854 m!745877))

(declare-fun m!745879 () Bool)

(assert (=> b!803854 m!745879))

(push 1)

