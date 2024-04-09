; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68794 () Bool)

(assert start!68794)

(declare-fun b!801255 () Bool)

(declare-fun res!545953 () Bool)

(declare-fun e!444180 () Bool)

(assert (=> b!801255 (=> (not res!545953) (not e!444180))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8442 0))(
  ( (MissingZero!8442 (index!36135 (_ BitVec 32))) (Found!8442 (index!36136 (_ BitVec 32))) (Intermediate!8442 (undefined!9254 Bool) (index!36137 (_ BitVec 32)) (x!67025 (_ BitVec 32))) (Undefined!8442) (MissingVacant!8442 (index!36138 (_ BitVec 32))) )
))
(declare-fun lt!358155 () SeekEntryResult!8442)

(declare-datatypes ((array!43535 0))(
  ( (array!43536 (arr!20844 (Array (_ BitVec 32) (_ BitVec 64))) (size!21265 (_ BitVec 32))) )
))
(declare-fun lt!358158 () array!43535)

(declare-fun lt!358161 () (_ BitVec 64))

(declare-fun lt!358159 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43535 (_ BitVec 32)) SeekEntryResult!8442)

(assert (=> b!801255 (= res!545953 (= lt!358155 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358159 vacantAfter!23 lt!358161 lt!358158 mask!3266)))))

(declare-fun b!801256 () Bool)

(declare-fun e!444183 () Bool)

(declare-fun e!444182 () Bool)

(assert (=> b!801256 (= e!444183 e!444182)))

(declare-fun res!545946 () Bool)

(assert (=> b!801256 (=> (not res!545946) (not e!444182))))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801256 (= res!545946 (= lt!358155 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358161 lt!358158 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43535 (_ BitVec 32)) SeekEntryResult!8442)

(assert (=> b!801256 (= lt!358155 (seekEntryOrOpen!0 lt!358161 lt!358158 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43535)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801256 (= lt!358161 (select (store (arr!20844 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801256 (= lt!358158 (array!43536 (store (arr!20844 a!3170) i!1163 k!2044) (size!21265 a!3170)))))

(declare-fun b!801257 () Bool)

(declare-fun res!545954 () Bool)

(declare-fun e!444179 () Bool)

(assert (=> b!801257 (=> (not res!545954) (not e!444179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801257 (= res!545954 (validKeyInArray!0 k!2044))))

(declare-fun b!801258 () Bool)

(declare-fun res!545945 () Bool)

(assert (=> b!801258 (=> (not res!545945) (not e!444183))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801258 (= res!545945 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21265 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20844 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21265 a!3170)) (= (select (arr!20844 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!545949 () Bool)

(assert (=> start!68794 (=> (not res!545949) (not e!444179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68794 (= res!545949 (validMask!0 mask!3266))))

(assert (=> start!68794 e!444179))

(assert (=> start!68794 true))

(declare-fun array_inv!16618 (array!43535) Bool)

(assert (=> start!68794 (array_inv!16618 a!3170)))

(declare-fun b!801259 () Bool)

(declare-fun res!545947 () Bool)

(assert (=> b!801259 (=> (not res!545947) (not e!444179))))

(assert (=> b!801259 (= res!545947 (and (= (size!21265 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21265 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21265 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801260 () Bool)

(declare-fun res!545951 () Bool)

(assert (=> b!801260 (=> (not res!545951) (not e!444183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43535 (_ BitVec 32)) Bool)

(assert (=> b!801260 (= res!545951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801261 () Bool)

(declare-fun res!545950 () Bool)

(assert (=> b!801261 (=> (not res!545950) (not e!444183))))

(declare-datatypes ((List!14860 0))(
  ( (Nil!14857) (Cons!14856 (h!15985 (_ BitVec 64)) (t!21183 List!14860)) )
))
(declare-fun arrayNoDuplicates!0 (array!43535 (_ BitVec 32) List!14860) Bool)

(assert (=> b!801261 (= res!545950 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14857))))

(declare-fun b!801262 () Bool)

(declare-fun res!545944 () Bool)

(assert (=> b!801262 (=> (not res!545944) (not e!444179))))

(declare-fun arrayContainsKey!0 (array!43535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801262 (= res!545944 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801263 () Bool)

(declare-fun e!444181 () Bool)

(assert (=> b!801263 (= e!444181 e!444180)))

(declare-fun res!545956 () Bool)

(assert (=> b!801263 (=> (not res!545956) (not e!444180))))

(assert (=> b!801263 (= res!545956 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358159 #b00000000000000000000000000000000) (bvslt lt!358159 (size!21265 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801263 (= lt!358159 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801264 () Bool)

(declare-fun res!545952 () Bool)

(assert (=> b!801264 (=> (not res!545952) (not e!444179))))

(assert (=> b!801264 (= res!545952 (validKeyInArray!0 (select (arr!20844 a!3170) j!153)))))

(declare-fun b!801265 () Bool)

(assert (=> b!801265 (= e!444182 e!444181)))

(declare-fun res!545948 () Bool)

(assert (=> b!801265 (=> (not res!545948) (not e!444181))))

(declare-fun lt!358162 () SeekEntryResult!8442)

(declare-fun lt!358157 () SeekEntryResult!8442)

(assert (=> b!801265 (= res!545948 (and (= lt!358162 lt!358157) (= lt!358157 (Found!8442 j!153)) (not (= (select (arr!20844 a!3170) index!1236) (select (arr!20844 a!3170) j!153)))))))

(assert (=> b!801265 (= lt!358157 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20844 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801265 (= lt!358162 (seekEntryOrOpen!0 (select (arr!20844 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801266 () Bool)

(assert (=> b!801266 (= e!444179 e!444183)))

(declare-fun res!545955 () Bool)

(assert (=> b!801266 (=> (not res!545955) (not e!444183))))

(declare-fun lt!358160 () SeekEntryResult!8442)

(assert (=> b!801266 (= res!545955 (or (= lt!358160 (MissingZero!8442 i!1163)) (= lt!358160 (MissingVacant!8442 i!1163))))))

(assert (=> b!801266 (= lt!358160 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801267 () Bool)

(assert (=> b!801267 (= e!444180 false)))

(declare-fun lt!358156 () SeekEntryResult!8442)

(assert (=> b!801267 (= lt!358156 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358159 vacantBefore!23 (select (arr!20844 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68794 res!545949) b!801259))

(assert (= (and b!801259 res!545947) b!801264))

(assert (= (and b!801264 res!545952) b!801257))

(assert (= (and b!801257 res!545954) b!801262))

(assert (= (and b!801262 res!545944) b!801266))

(assert (= (and b!801266 res!545955) b!801260))

(assert (= (and b!801260 res!545951) b!801261))

(assert (= (and b!801261 res!545950) b!801258))

(assert (= (and b!801258 res!545945) b!801256))

(assert (= (and b!801256 res!545946) b!801265))

(assert (= (and b!801265 res!545948) b!801263))

(assert (= (and b!801263 res!545956) b!801255))

(assert (= (and b!801255 res!545953) b!801267))

(declare-fun m!742513 () Bool)

(assert (=> b!801263 m!742513))

(declare-fun m!742515 () Bool)

(assert (=> b!801257 m!742515))

(declare-fun m!742517 () Bool)

(assert (=> b!801255 m!742517))

(declare-fun m!742519 () Bool)

(assert (=> b!801261 m!742519))

(declare-fun m!742521 () Bool)

(assert (=> b!801264 m!742521))

(assert (=> b!801264 m!742521))

(declare-fun m!742523 () Bool)

(assert (=> b!801264 m!742523))

(declare-fun m!742525 () Bool)

(assert (=> b!801256 m!742525))

(declare-fun m!742527 () Bool)

(assert (=> b!801256 m!742527))

(declare-fun m!742529 () Bool)

(assert (=> b!801256 m!742529))

(declare-fun m!742531 () Bool)

(assert (=> b!801256 m!742531))

(declare-fun m!742533 () Bool)

(assert (=> b!801260 m!742533))

(declare-fun m!742535 () Bool)

(assert (=> start!68794 m!742535))

(declare-fun m!742537 () Bool)

(assert (=> start!68794 m!742537))

(assert (=> b!801267 m!742521))

(assert (=> b!801267 m!742521))

(declare-fun m!742539 () Bool)

(assert (=> b!801267 m!742539))

(declare-fun m!742541 () Bool)

(assert (=> b!801265 m!742541))

(assert (=> b!801265 m!742521))

(assert (=> b!801265 m!742521))

(declare-fun m!742543 () Bool)

(assert (=> b!801265 m!742543))

(assert (=> b!801265 m!742521))

(declare-fun m!742545 () Bool)

(assert (=> b!801265 m!742545))

(declare-fun m!742547 () Bool)

(assert (=> b!801262 m!742547))

(declare-fun m!742549 () Bool)

(assert (=> b!801258 m!742549))

(declare-fun m!742551 () Bool)

(assert (=> b!801258 m!742551))

(declare-fun m!742553 () Bool)

(assert (=> b!801266 m!742553))

(push 1)

