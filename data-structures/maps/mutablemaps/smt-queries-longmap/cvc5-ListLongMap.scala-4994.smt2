; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68494 () Bool)

(assert start!68494)

(declare-fun b!795851 () Bool)

(declare-fun res!540550 () Bool)

(declare-fun e!441679 () Bool)

(assert (=> b!795851 (=> (not res!540550) (not e!441679))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43235 0))(
  ( (array!43236 (arr!20694 (Array (_ BitVec 32) (_ BitVec 64))) (size!21115 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43235)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795851 (= res!540550 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21115 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20694 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21115 a!3170)) (= (select (arr!20694 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795852 () Bool)

(declare-fun e!441677 () Bool)

(declare-fun e!441678 () Bool)

(assert (=> b!795852 (= e!441677 e!441678)))

(declare-fun res!540546 () Bool)

(assert (=> b!795852 (=> (not res!540546) (not e!441678))))

(declare-datatypes ((SeekEntryResult!8292 0))(
  ( (MissingZero!8292 (index!35535 (_ BitVec 32))) (Found!8292 (index!35536 (_ BitVec 32))) (Intermediate!8292 (undefined!9104 Bool) (index!35537 (_ BitVec 32)) (x!66475 (_ BitVec 32))) (Undefined!8292) (MissingVacant!8292 (index!35538 (_ BitVec 32))) )
))
(declare-fun lt!354805 () SeekEntryResult!8292)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!354809 () SeekEntryResult!8292)

(assert (=> b!795852 (= res!540546 (and (= lt!354805 lt!354809) (= lt!354809 (Found!8292 j!153)) (= (select (arr!20694 a!3170) index!1236) (select (arr!20694 a!3170) j!153))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43235 (_ BitVec 32)) SeekEntryResult!8292)

(assert (=> b!795852 (= lt!354809 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20694 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43235 (_ BitVec 32)) SeekEntryResult!8292)

(assert (=> b!795852 (= lt!354805 (seekEntryOrOpen!0 (select (arr!20694 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795853 () Bool)

(declare-fun e!441675 () Bool)

(assert (=> b!795853 (= e!441675 e!441679)))

(declare-fun res!540540 () Bool)

(assert (=> b!795853 (=> (not res!540540) (not e!441679))))

(declare-fun lt!354807 () SeekEntryResult!8292)

(assert (=> b!795853 (= res!540540 (or (= lt!354807 (MissingZero!8292 i!1163)) (= lt!354807 (MissingVacant!8292 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!795853 (= lt!354807 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795855 () Bool)

(assert (=> b!795855 (= e!441678 (not true))))

(declare-fun lt!354808 () SeekEntryResult!8292)

(assert (=> b!795855 (= lt!354808 (Found!8292 index!1236))))

(declare-fun b!795856 () Bool)

(declare-fun res!540545 () Bool)

(assert (=> b!795856 (=> (not res!540545) (not e!441679))))

(declare-datatypes ((List!14710 0))(
  ( (Nil!14707) (Cons!14706 (h!15835 (_ BitVec 64)) (t!21033 List!14710)) )
))
(declare-fun arrayNoDuplicates!0 (array!43235 (_ BitVec 32) List!14710) Bool)

(assert (=> b!795856 (= res!540545 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14707))))

(declare-fun b!795857 () Bool)

(assert (=> b!795857 (= e!441679 e!441677)))

(declare-fun res!540549 () Bool)

(assert (=> b!795857 (=> (not res!540549) (not e!441677))))

(declare-fun lt!354810 () SeekEntryResult!8292)

(assert (=> b!795857 (= res!540549 (= lt!354810 lt!354808))))

(declare-fun lt!354811 () array!43235)

(declare-fun lt!354806 () (_ BitVec 64))

(assert (=> b!795857 (= lt!354808 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354806 lt!354811 mask!3266))))

(assert (=> b!795857 (= lt!354810 (seekEntryOrOpen!0 lt!354806 lt!354811 mask!3266))))

(assert (=> b!795857 (= lt!354806 (select (store (arr!20694 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795857 (= lt!354811 (array!43236 (store (arr!20694 a!3170) i!1163 k!2044) (size!21115 a!3170)))))

(declare-fun b!795858 () Bool)

(declare-fun res!540541 () Bool)

(assert (=> b!795858 (=> (not res!540541) (not e!441675))))

(assert (=> b!795858 (= res!540541 (and (= (size!21115 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21115 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21115 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795859 () Bool)

(declare-fun res!540542 () Bool)

(assert (=> b!795859 (=> (not res!540542) (not e!441679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43235 (_ BitVec 32)) Bool)

(assert (=> b!795859 (= res!540542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795860 () Bool)

(declare-fun res!540544 () Bool)

(assert (=> b!795860 (=> (not res!540544) (not e!441675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795860 (= res!540544 (validKeyInArray!0 k!2044))))

(declare-fun b!795861 () Bool)

(declare-fun res!540548 () Bool)

(assert (=> b!795861 (=> (not res!540548) (not e!441675))))

(assert (=> b!795861 (= res!540548 (validKeyInArray!0 (select (arr!20694 a!3170) j!153)))))

(declare-fun b!795854 () Bool)

(declare-fun res!540543 () Bool)

(assert (=> b!795854 (=> (not res!540543) (not e!441675))))

(declare-fun arrayContainsKey!0 (array!43235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795854 (= res!540543 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!540547 () Bool)

(assert (=> start!68494 (=> (not res!540547) (not e!441675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68494 (= res!540547 (validMask!0 mask!3266))))

(assert (=> start!68494 e!441675))

(assert (=> start!68494 true))

(declare-fun array_inv!16468 (array!43235) Bool)

(assert (=> start!68494 (array_inv!16468 a!3170)))

(assert (= (and start!68494 res!540547) b!795858))

(assert (= (and b!795858 res!540541) b!795861))

(assert (= (and b!795861 res!540548) b!795860))

(assert (= (and b!795860 res!540544) b!795854))

(assert (= (and b!795854 res!540543) b!795853))

(assert (= (and b!795853 res!540540) b!795859))

(assert (= (and b!795859 res!540542) b!795856))

(assert (= (and b!795856 res!540545) b!795851))

(assert (= (and b!795851 res!540550) b!795857))

(assert (= (and b!795857 res!540549) b!795852))

(assert (= (and b!795852 res!540546) b!795855))

(declare-fun m!736693 () Bool)

(assert (=> b!795859 m!736693))

(declare-fun m!736695 () Bool)

(assert (=> start!68494 m!736695))

(declare-fun m!736697 () Bool)

(assert (=> start!68494 m!736697))

(declare-fun m!736699 () Bool)

(assert (=> b!795857 m!736699))

(declare-fun m!736701 () Bool)

(assert (=> b!795857 m!736701))

(declare-fun m!736703 () Bool)

(assert (=> b!795857 m!736703))

(declare-fun m!736705 () Bool)

(assert (=> b!795857 m!736705))

(declare-fun m!736707 () Bool)

(assert (=> b!795852 m!736707))

(declare-fun m!736709 () Bool)

(assert (=> b!795852 m!736709))

(assert (=> b!795852 m!736709))

(declare-fun m!736711 () Bool)

(assert (=> b!795852 m!736711))

(assert (=> b!795852 m!736709))

(declare-fun m!736713 () Bool)

(assert (=> b!795852 m!736713))

(declare-fun m!736715 () Bool)

(assert (=> b!795856 m!736715))

(declare-fun m!736717 () Bool)

(assert (=> b!795860 m!736717))

(declare-fun m!736719 () Bool)

(assert (=> b!795853 m!736719))

(declare-fun m!736721 () Bool)

(assert (=> b!795851 m!736721))

(declare-fun m!736723 () Bool)

(assert (=> b!795851 m!736723))

(assert (=> b!795861 m!736709))

(assert (=> b!795861 m!736709))

(declare-fun m!736725 () Bool)

(assert (=> b!795861 m!736725))

(declare-fun m!736727 () Bool)

(assert (=> b!795854 m!736727))

(push 1)

