; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68932 () Bool)

(assert start!68932)

(declare-fun res!548337 () Bool)

(declare-fun e!445317 () Bool)

(assert (=> start!68932 (=> (not res!548337) (not e!445317))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68932 (= res!548337 (validMask!0 mask!3266))))

(assert (=> start!68932 e!445317))

(assert (=> start!68932 true))

(declare-datatypes ((array!43673 0))(
  ( (array!43674 (arr!20913 (Array (_ BitVec 32) (_ BitVec 64))) (size!21334 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43673)

(declare-fun array_inv!16687 (array!43673) Bool)

(assert (=> start!68932 (array_inv!16687 a!3170)))

(declare-fun b!803647 () Bool)

(declare-fun e!445316 () Bool)

(declare-fun e!445314 () Bool)

(assert (=> b!803647 (= e!445316 e!445314)))

(declare-fun res!548342 () Bool)

(assert (=> b!803647 (=> (not res!548342) (not e!445314))))

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8511 0))(
  ( (MissingZero!8511 (index!36411 (_ BitVec 32))) (Found!8511 (index!36412 (_ BitVec 32))) (Intermediate!8511 (undefined!9323 Bool) (index!36413 (_ BitVec 32)) (x!67278 (_ BitVec 32))) (Undefined!8511) (MissingVacant!8511 (index!36414 (_ BitVec 32))) )
))
(declare-fun lt!359822 () SeekEntryResult!8511)

(declare-fun lt!359820 () SeekEntryResult!8511)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803647 (= res!548342 (and (= lt!359822 lt!359820) (not (= (select (arr!20913 a!3170) index!1236) (select (arr!20913 a!3170) j!153)))))))

(assert (=> b!803647 (= lt!359820 (Found!8511 j!153))))

(declare-fun b!803648 () Bool)

(declare-fun res!548336 () Bool)

(assert (=> b!803648 (=> (not res!548336) (not e!445317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803648 (= res!548336 (validKeyInArray!0 (select (arr!20913 a!3170) j!153)))))

(declare-fun b!803649 () Bool)

(declare-fun res!548344 () Bool)

(declare-fun e!445318 () Bool)

(assert (=> b!803649 (=> (not res!548344) (not e!445318))))

(declare-datatypes ((List!14929 0))(
  ( (Nil!14926) (Cons!14925 (h!16054 (_ BitVec 64)) (t!21252 List!14929)) )
))
(declare-fun arrayNoDuplicates!0 (array!43673 (_ BitVec 32) List!14929) Bool)

(assert (=> b!803649 (= res!548344 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14926))))

(declare-fun b!803650 () Bool)

(declare-fun res!548347 () Bool)

(assert (=> b!803650 (=> (not res!548347) (not e!445317))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!803650 (= res!548347 (validKeyInArray!0 k!2044))))

(declare-fun b!803651 () Bool)

(declare-fun res!548345 () Bool)

(assert (=> b!803651 (=> (not res!548345) (not e!445317))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803651 (= res!548345 (and (= (size!21334 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21334 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21334 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803652 () Bool)

(assert (=> b!803652 (= e!445317 e!445318)))

(declare-fun res!548346 () Bool)

(assert (=> b!803652 (=> (not res!548346) (not e!445318))))

(declare-fun lt!359821 () SeekEntryResult!8511)

(assert (=> b!803652 (= res!548346 (or (= lt!359821 (MissingZero!8511 i!1163)) (= lt!359821 (MissingVacant!8511 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43673 (_ BitVec 32)) SeekEntryResult!8511)

(assert (=> b!803652 (= lt!359821 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803653 () Bool)

(declare-fun res!548340 () Bool)

(assert (=> b!803653 (=> (not res!548340) (not e!445318))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803653 (= res!548340 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21334 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20913 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21334 a!3170)) (= (select (arr!20913 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803654 () Bool)

(declare-fun lt!359817 () SeekEntryResult!8511)

(assert (=> b!803654 (= e!445314 (not (or (not (= lt!359817 lt!359820)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (and (bvsge vacantBefore!23 #b00000000000000000000000000000000) (bvslt vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))))

(declare-fun lt!359823 () (_ BitVec 64))

(declare-fun lt!359818 () array!43673)

(declare-fun lt!359815 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43673 (_ BitVec 32)) SeekEntryResult!8511)

(assert (=> b!803654 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359815 vacantAfter!23 lt!359823 lt!359818 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359815 vacantBefore!23 (select (arr!20913 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27564 0))(
  ( (Unit!27565) )
))
(declare-fun lt!359819 () Unit!27564)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43673 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27564)

(assert (=> b!803654 (= lt!359819 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359815 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803654 (= lt!359815 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803655 () Bool)

(declare-fun e!445315 () Bool)

(assert (=> b!803655 (= e!445318 e!445315)))

(declare-fun res!548341 () Bool)

(assert (=> b!803655 (=> (not res!548341) (not e!445315))))

(declare-fun lt!359824 () SeekEntryResult!8511)

(assert (=> b!803655 (= res!548341 (= lt!359824 lt!359817))))

(assert (=> b!803655 (= lt!359817 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359823 lt!359818 mask!3266))))

(assert (=> b!803655 (= lt!359824 (seekEntryOrOpen!0 lt!359823 lt!359818 mask!3266))))

(assert (=> b!803655 (= lt!359823 (select (store (arr!20913 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803655 (= lt!359818 (array!43674 (store (arr!20913 a!3170) i!1163 k!2044) (size!21334 a!3170)))))

(declare-fun b!803656 () Bool)

(assert (=> b!803656 (= e!445315 e!445316)))

(declare-fun res!548339 () Bool)

(assert (=> b!803656 (=> (not res!548339) (not e!445316))))

(declare-fun lt!359816 () SeekEntryResult!8511)

(assert (=> b!803656 (= res!548339 (= lt!359816 lt!359822))))

(assert (=> b!803656 (= lt!359822 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20913 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803656 (= lt!359816 (seekEntryOrOpen!0 (select (arr!20913 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803657 () Bool)

(declare-fun res!548343 () Bool)

(assert (=> b!803657 (=> (not res!548343) (not e!445318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43673 (_ BitVec 32)) Bool)

(assert (=> b!803657 (= res!548343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803658 () Bool)

(declare-fun res!548338 () Bool)

(assert (=> b!803658 (=> (not res!548338) (not e!445317))))

(declare-fun arrayContainsKey!0 (array!43673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803658 (= res!548338 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68932 res!548337) b!803651))

(assert (= (and b!803651 res!548345) b!803648))

(assert (= (and b!803648 res!548336) b!803650))

(assert (= (and b!803650 res!548347) b!803658))

(assert (= (and b!803658 res!548338) b!803652))

(assert (= (and b!803652 res!548346) b!803657))

(assert (= (and b!803657 res!548343) b!803649))

(assert (= (and b!803649 res!548344) b!803653))

(assert (= (and b!803653 res!548340) b!803655))

(assert (= (and b!803655 res!548341) b!803656))

(assert (= (and b!803656 res!548339) b!803647))

(assert (= (and b!803647 res!548342) b!803654))

(declare-fun m!745573 () Bool)

(assert (=> start!68932 m!745573))

(declare-fun m!745575 () Bool)

(assert (=> start!68932 m!745575))

(declare-fun m!745577 () Bool)

(assert (=> b!803649 m!745577))

(declare-fun m!745579 () Bool)

(assert (=> b!803650 m!745579))

(declare-fun m!745581 () Bool)

(assert (=> b!803658 m!745581))

(declare-fun m!745583 () Bool)

(assert (=> b!803656 m!745583))

(assert (=> b!803656 m!745583))

(declare-fun m!745585 () Bool)

(assert (=> b!803656 m!745585))

(assert (=> b!803656 m!745583))

(declare-fun m!745587 () Bool)

(assert (=> b!803656 m!745587))

(declare-fun m!745589 () Bool)

(assert (=> b!803655 m!745589))

(declare-fun m!745591 () Bool)

(assert (=> b!803655 m!745591))

(declare-fun m!745593 () Bool)

(assert (=> b!803655 m!745593))

(declare-fun m!745595 () Bool)

(assert (=> b!803655 m!745595))

(declare-fun m!745597 () Bool)

(assert (=> b!803657 m!745597))

(assert (=> b!803654 m!745583))

(declare-fun m!745599 () Bool)

(assert (=> b!803654 m!745599))

(assert (=> b!803654 m!745583))

(declare-fun m!745601 () Bool)

(assert (=> b!803654 m!745601))

(declare-fun m!745603 () Bool)

(assert (=> b!803654 m!745603))

(declare-fun m!745605 () Bool)

(assert (=> b!803654 m!745605))

(assert (=> b!803648 m!745583))

(assert (=> b!803648 m!745583))

(declare-fun m!745607 () Bool)

(assert (=> b!803648 m!745607))

(declare-fun m!745609 () Bool)

(assert (=> b!803652 m!745609))

(declare-fun m!745611 () Bool)

(assert (=> b!803653 m!745611))

(declare-fun m!745613 () Bool)

(assert (=> b!803653 m!745613))

(declare-fun m!745615 () Bool)

(assert (=> b!803647 m!745615))

(assert (=> b!803647 m!745583))

(push 1)

(assert (not b!803655))

(assert (not b!803656))

(assert (not b!803652))

(assert (not b!803648))

(assert (not b!803658))

(assert (not start!68932))

(assert (not b!803654))

(assert (not b!803649))

(assert (not b!803657))

(assert (not b!803650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

