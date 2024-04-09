; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68758 () Bool)

(assert start!68758)

(declare-fun b!800553 () Bool)

(declare-fun e!443857 () Bool)

(declare-fun e!443855 () Bool)

(assert (=> b!800553 (= e!443857 e!443855)))

(declare-fun res!545247 () Bool)

(assert (=> b!800553 (=> (not res!545247) (not e!443855))))

(declare-datatypes ((SeekEntryResult!8424 0))(
  ( (MissingZero!8424 (index!36063 (_ BitVec 32))) (Found!8424 (index!36064 (_ BitVec 32))) (Intermediate!8424 (undefined!9236 Bool) (index!36065 (_ BitVec 32)) (x!66959 (_ BitVec 32))) (Undefined!8424) (MissingVacant!8424 (index!36066 (_ BitVec 32))) )
))
(declare-fun lt!357726 () SeekEntryResult!8424)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800553 (= res!545247 (or (= lt!357726 (MissingZero!8424 i!1163)) (= lt!357726 (MissingVacant!8424 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43499 0))(
  ( (array!43500 (arr!20826 (Array (_ BitVec 32) (_ BitVec 64))) (size!21247 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43499)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43499 (_ BitVec 32)) SeekEntryResult!8424)

(assert (=> b!800553 (= lt!357726 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800554 () Bool)

(declare-fun res!545242 () Bool)

(assert (=> b!800554 (=> (not res!545242) (not e!443857))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!800554 (= res!545242 (and (= (size!21247 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21247 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21247 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800555 () Bool)

(declare-fun res!545245 () Bool)

(declare-fun e!443856 () Bool)

(assert (=> b!800555 (=> (not res!545245) (not e!443856))))

(declare-fun lt!357724 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357728 () array!43499)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357723 () SeekEntryResult!8424)

(declare-fun lt!357727 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43499 (_ BitVec 32)) SeekEntryResult!8424)

(assert (=> b!800555 (= res!545245 (= lt!357723 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357727 vacantAfter!23 lt!357724 lt!357728 mask!3266)))))

(declare-fun b!800556 () Bool)

(declare-fun res!545249 () Bool)

(assert (=> b!800556 (=> (not res!545249) (not e!443855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43499 (_ BitVec 32)) Bool)

(assert (=> b!800556 (= res!545249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!545244 () Bool)

(assert (=> start!68758 (=> (not res!545244) (not e!443857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68758 (= res!545244 (validMask!0 mask!3266))))

(assert (=> start!68758 e!443857))

(assert (=> start!68758 true))

(declare-fun array_inv!16600 (array!43499) Bool)

(assert (=> start!68758 (array_inv!16600 a!3170)))

(declare-fun b!800557 () Bool)

(declare-fun e!443858 () Bool)

(declare-fun e!443859 () Bool)

(assert (=> b!800557 (= e!443858 e!443859)))

(declare-fun res!545248 () Bool)

(assert (=> b!800557 (=> (not res!545248) (not e!443859))))

(declare-fun lt!357729 () SeekEntryResult!8424)

(declare-fun lt!357725 () SeekEntryResult!8424)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800557 (= res!545248 (and (= lt!357725 lt!357729) (= lt!357729 (Found!8424 j!153)) (not (= (select (arr!20826 a!3170) index!1236) (select (arr!20826 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800557 (= lt!357729 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20826 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800557 (= lt!357725 (seekEntryOrOpen!0 (select (arr!20826 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800558 () Bool)

(declare-fun res!545251 () Bool)

(assert (=> b!800558 (=> (not res!545251) (not e!443855))))

(declare-datatypes ((List!14842 0))(
  ( (Nil!14839) (Cons!14838 (h!15967 (_ BitVec 64)) (t!21165 List!14842)) )
))
(declare-fun arrayNoDuplicates!0 (array!43499 (_ BitVec 32) List!14842) Bool)

(assert (=> b!800558 (= res!545251 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14839))))

(declare-fun b!800559 () Bool)

(assert (=> b!800559 (= e!443855 e!443858)))

(declare-fun res!545254 () Bool)

(assert (=> b!800559 (=> (not res!545254) (not e!443858))))

(assert (=> b!800559 (= res!545254 (= lt!357723 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357724 lt!357728 mask!3266)))))

(assert (=> b!800559 (= lt!357723 (seekEntryOrOpen!0 lt!357724 lt!357728 mask!3266))))

(assert (=> b!800559 (= lt!357724 (select (store (arr!20826 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800559 (= lt!357728 (array!43500 (store (arr!20826 a!3170) i!1163 k!2044) (size!21247 a!3170)))))

(declare-fun b!800560 () Bool)

(declare-fun res!545252 () Bool)

(assert (=> b!800560 (=> (not res!545252) (not e!443855))))

(assert (=> b!800560 (= res!545252 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21247 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20826 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21247 a!3170)) (= (select (arr!20826 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800561 () Bool)

(declare-fun res!545243 () Bool)

(assert (=> b!800561 (=> (not res!545243) (not e!443857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800561 (= res!545243 (validKeyInArray!0 (select (arr!20826 a!3170) j!153)))))

(declare-fun b!800562 () Bool)

(declare-fun res!545253 () Bool)

(assert (=> b!800562 (=> (not res!545253) (not e!443857))))

(assert (=> b!800562 (= res!545253 (validKeyInArray!0 k!2044))))

(declare-fun b!800563 () Bool)

(assert (=> b!800563 (= e!443859 e!443856)))

(declare-fun res!545246 () Bool)

(assert (=> b!800563 (=> (not res!545246) (not e!443856))))

(assert (=> b!800563 (= res!545246 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357727 #b00000000000000000000000000000000) (bvslt lt!357727 (size!21247 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800563 (= lt!357727 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800564 () Bool)

(assert (=> b!800564 (= e!443856 false)))

(declare-fun lt!357730 () SeekEntryResult!8424)

(assert (=> b!800564 (= lt!357730 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357727 vacantBefore!23 (select (arr!20826 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800565 () Bool)

(declare-fun res!545250 () Bool)

(assert (=> b!800565 (=> (not res!545250) (not e!443857))))

(declare-fun arrayContainsKey!0 (array!43499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800565 (= res!545250 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68758 res!545244) b!800554))

(assert (= (and b!800554 res!545242) b!800561))

(assert (= (and b!800561 res!545243) b!800562))

(assert (= (and b!800562 res!545253) b!800565))

(assert (= (and b!800565 res!545250) b!800553))

(assert (= (and b!800553 res!545247) b!800556))

(assert (= (and b!800556 res!545249) b!800558))

(assert (= (and b!800558 res!545251) b!800560))

(assert (= (and b!800560 res!545252) b!800559))

(assert (= (and b!800559 res!545254) b!800557))

(assert (= (and b!800557 res!545248) b!800563))

(assert (= (and b!800563 res!545246) b!800555))

(assert (= (and b!800555 res!545245) b!800564))

(declare-fun m!741757 () Bool)

(assert (=> b!800555 m!741757))

(declare-fun m!741759 () Bool)

(assert (=> b!800558 m!741759))

(declare-fun m!741761 () Bool)

(assert (=> b!800553 m!741761))

(declare-fun m!741763 () Bool)

(assert (=> b!800563 m!741763))

(declare-fun m!741765 () Bool)

(assert (=> b!800564 m!741765))

(assert (=> b!800564 m!741765))

(declare-fun m!741767 () Bool)

(assert (=> b!800564 m!741767))

(declare-fun m!741769 () Bool)

(assert (=> b!800565 m!741769))

(declare-fun m!741771 () Bool)

(assert (=> b!800556 m!741771))

(declare-fun m!741773 () Bool)

(assert (=> b!800562 m!741773))

(declare-fun m!741775 () Bool)

(assert (=> b!800559 m!741775))

(declare-fun m!741777 () Bool)

(assert (=> b!800559 m!741777))

(declare-fun m!741779 () Bool)

(assert (=> b!800559 m!741779))

(declare-fun m!741781 () Bool)

(assert (=> b!800559 m!741781))

(declare-fun m!741783 () Bool)

(assert (=> b!800557 m!741783))

(assert (=> b!800557 m!741765))

(assert (=> b!800557 m!741765))

(declare-fun m!741785 () Bool)

(assert (=> b!800557 m!741785))

(assert (=> b!800557 m!741765))

(declare-fun m!741787 () Bool)

(assert (=> b!800557 m!741787))

(assert (=> b!800561 m!741765))

(assert (=> b!800561 m!741765))

(declare-fun m!741789 () Bool)

(assert (=> b!800561 m!741789))

(declare-fun m!741791 () Bool)

(assert (=> b!800560 m!741791))

(declare-fun m!741793 () Bool)

(assert (=> b!800560 m!741793))

(declare-fun m!741795 () Bool)

(assert (=> start!68758 m!741795))

(declare-fun m!741797 () Bool)

(assert (=> start!68758 m!741797))

(push 1)

