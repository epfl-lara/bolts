; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68830 () Bool)

(assert start!68830)

(declare-fun b!801881 () Bool)

(declare-fun res!546573 () Bool)

(declare-fun e!444469 () Bool)

(assert (=> b!801881 (=> (not res!546573) (not e!444469))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43571 0))(
  ( (array!43572 (arr!20862 (Array (_ BitVec 32) (_ BitVec 64))) (size!21283 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43571)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!801881 (= res!546573 (and (= (size!21283 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21283 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21283 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801882 () Bool)

(declare-fun res!546570 () Bool)

(assert (=> b!801882 (=> (not res!546570) (not e!444469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801882 (= res!546570 (validKeyInArray!0 (select (arr!20862 a!3170) j!153)))))

(declare-fun b!801883 () Bool)

(declare-fun e!444465 () Bool)

(assert (=> b!801883 (= e!444465 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358551 () array!43571)

(declare-fun lt!358554 () (_ BitVec 64))

(declare-fun lt!358552 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8460 0))(
  ( (MissingZero!8460 (index!36207 (_ BitVec 32))) (Found!8460 (index!36208 (_ BitVec 32))) (Intermediate!8460 (undefined!9272 Bool) (index!36209 (_ BitVec 32)) (x!67091 (_ BitVec 32))) (Undefined!8460) (MissingVacant!8460 (index!36210 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43571 (_ BitVec 32)) SeekEntryResult!8460)

(assert (=> b!801883 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358552 vacantAfter!23 lt!358554 lt!358551 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358552 vacantBefore!23 (select (arr!20862 a!3170) j!153) a!3170 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((Unit!27462 0))(
  ( (Unit!27463) )
))
(declare-fun lt!358549 () Unit!27462)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43571 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27462)

(assert (=> b!801883 (= lt!358549 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358552 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801883 (= lt!358552 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801884 () Bool)

(declare-fun e!444468 () Bool)

(declare-fun e!444467 () Bool)

(assert (=> b!801884 (= e!444468 e!444467)))

(declare-fun res!546580 () Bool)

(assert (=> b!801884 (=> (not res!546580) (not e!444467))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43571 (_ BitVec 32)) SeekEntryResult!8460)

(assert (=> b!801884 (= res!546580 (= (seekEntryOrOpen!0 lt!358554 lt!358551 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358554 lt!358551 mask!3266)))))

(assert (=> b!801884 (= lt!358554 (select (store (arr!20862 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801884 (= lt!358551 (array!43572 (store (arr!20862 a!3170) i!1163 k!2044) (size!21283 a!3170)))))

(declare-fun b!801885 () Bool)

(declare-fun res!546577 () Bool)

(assert (=> b!801885 (=> (not res!546577) (not e!444468))))

(assert (=> b!801885 (= res!546577 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21283 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20862 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21283 a!3170)) (= (select (arr!20862 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801886 () Bool)

(declare-fun res!546572 () Bool)

(assert (=> b!801886 (=> (not res!546572) (not e!444468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43571 (_ BitVec 32)) Bool)

(assert (=> b!801886 (= res!546572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801887 () Bool)

(declare-fun res!546575 () Bool)

(assert (=> b!801887 (=> (not res!546575) (not e!444469))))

(declare-fun arrayContainsKey!0 (array!43571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801887 (= res!546575 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!546571 () Bool)

(assert (=> start!68830 (=> (not res!546571) (not e!444469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68830 (= res!546571 (validMask!0 mask!3266))))

(assert (=> start!68830 e!444469))

(assert (=> start!68830 true))

(declare-fun array_inv!16636 (array!43571) Bool)

(assert (=> start!68830 (array_inv!16636 a!3170)))

(declare-fun b!801888 () Bool)

(declare-fun res!546576 () Bool)

(assert (=> b!801888 (=> (not res!546576) (not e!444469))))

(assert (=> b!801888 (= res!546576 (validKeyInArray!0 k!2044))))

(declare-fun b!801889 () Bool)

(assert (=> b!801889 (= e!444469 e!444468)))

(declare-fun res!546579 () Bool)

(assert (=> b!801889 (=> (not res!546579) (not e!444468))))

(declare-fun lt!358550 () SeekEntryResult!8460)

(assert (=> b!801889 (= res!546579 (or (= lt!358550 (MissingZero!8460 i!1163)) (= lt!358550 (MissingVacant!8460 i!1163))))))

(assert (=> b!801889 (= lt!358550 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801890 () Bool)

(assert (=> b!801890 (= e!444467 e!444465)))

(declare-fun res!546574 () Bool)

(assert (=> b!801890 (=> (not res!546574) (not e!444465))))

(declare-fun lt!358555 () SeekEntryResult!8460)

(declare-fun lt!358553 () SeekEntryResult!8460)

(assert (=> b!801890 (= res!546574 (and (= lt!358553 lt!358555) (= lt!358555 (Found!8460 j!153)) (not (= (select (arr!20862 a!3170) index!1236) (select (arr!20862 a!3170) j!153)))))))

(assert (=> b!801890 (= lt!358555 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20862 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801890 (= lt!358553 (seekEntryOrOpen!0 (select (arr!20862 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801891 () Bool)

(declare-fun res!546578 () Bool)

(assert (=> b!801891 (=> (not res!546578) (not e!444468))))

(declare-datatypes ((List!14878 0))(
  ( (Nil!14875) (Cons!14874 (h!16003 (_ BitVec 64)) (t!21201 List!14878)) )
))
(declare-fun arrayNoDuplicates!0 (array!43571 (_ BitVec 32) List!14878) Bool)

(assert (=> b!801891 (= res!546578 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14875))))

(assert (= (and start!68830 res!546571) b!801881))

(assert (= (and b!801881 res!546573) b!801882))

(assert (= (and b!801882 res!546570) b!801888))

(assert (= (and b!801888 res!546576) b!801887))

(assert (= (and b!801887 res!546575) b!801889))

(assert (= (and b!801889 res!546579) b!801886))

(assert (= (and b!801886 res!546572) b!801891))

(assert (= (and b!801891 res!546578) b!801885))

(assert (= (and b!801885 res!546577) b!801884))

(assert (= (and b!801884 res!546580) b!801890))

(assert (= (and b!801890 res!546574) b!801883))

(declare-fun m!743293 () Bool)

(assert (=> b!801887 m!743293))

(declare-fun m!743295 () Bool)

(assert (=> start!68830 m!743295))

(declare-fun m!743297 () Bool)

(assert (=> start!68830 m!743297))

(declare-fun m!743299 () Bool)

(assert (=> b!801890 m!743299))

(declare-fun m!743301 () Bool)

(assert (=> b!801890 m!743301))

(assert (=> b!801890 m!743301))

(declare-fun m!743303 () Bool)

(assert (=> b!801890 m!743303))

(assert (=> b!801890 m!743301))

(declare-fun m!743305 () Bool)

(assert (=> b!801890 m!743305))

(declare-fun m!743307 () Bool)

(assert (=> b!801886 m!743307))

(declare-fun m!743309 () Bool)

(assert (=> b!801888 m!743309))

(assert (=> b!801882 m!743301))

(assert (=> b!801882 m!743301))

(declare-fun m!743311 () Bool)

(assert (=> b!801882 m!743311))

(declare-fun m!743313 () Bool)

(assert (=> b!801884 m!743313))

(declare-fun m!743315 () Bool)

(assert (=> b!801884 m!743315))

(declare-fun m!743317 () Bool)

(assert (=> b!801884 m!743317))

(declare-fun m!743319 () Bool)

(assert (=> b!801884 m!743319))

(declare-fun m!743321 () Bool)

(assert (=> b!801889 m!743321))

(assert (=> b!801883 m!743301))

(declare-fun m!743323 () Bool)

(assert (=> b!801883 m!743323))

(assert (=> b!801883 m!743301))

(declare-fun m!743325 () Bool)

(assert (=> b!801883 m!743325))

(declare-fun m!743327 () Bool)

(assert (=> b!801883 m!743327))

(declare-fun m!743329 () Bool)

(assert (=> b!801883 m!743329))

(declare-fun m!743331 () Bool)

(assert (=> b!801885 m!743331))

(declare-fun m!743333 () Bool)

(assert (=> b!801885 m!743333))

(declare-fun m!743335 () Bool)

(assert (=> b!801891 m!743335))

(push 1)

