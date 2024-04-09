; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68496 () Bool)

(assert start!68496)

(declare-fun res!540575 () Bool)

(declare-fun e!441694 () Bool)

(assert (=> start!68496 (=> (not res!540575) (not e!441694))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68496 (= res!540575 (validMask!0 mask!3266))))

(assert (=> start!68496 e!441694))

(assert (=> start!68496 true))

(declare-datatypes ((array!43237 0))(
  ( (array!43238 (arr!20695 (Array (_ BitVec 32) (_ BitVec 64))) (size!21116 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43237)

(declare-fun array_inv!16469 (array!43237) Bool)

(assert (=> start!68496 (array_inv!16469 a!3170)))

(declare-fun b!795884 () Bool)

(declare-fun e!441693 () Bool)

(declare-fun e!441691 () Bool)

(assert (=> b!795884 (= e!441693 e!441691)))

(declare-fun res!540581 () Bool)

(assert (=> b!795884 (=> (not res!540581) (not e!441691))))

(declare-datatypes ((SeekEntryResult!8293 0))(
  ( (MissingZero!8293 (index!35539 (_ BitVec 32))) (Found!8293 (index!35540 (_ BitVec 32))) (Intermediate!8293 (undefined!9105 Bool) (index!35541 (_ BitVec 32)) (x!66476 (_ BitVec 32))) (Undefined!8293) (MissingVacant!8293 (index!35542 (_ BitVec 32))) )
))
(declare-fun lt!354831 () SeekEntryResult!8293)

(declare-fun lt!354828 () SeekEntryResult!8293)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795884 (= res!540581 (and (= lt!354831 lt!354828) (= lt!354828 (Found!8293 j!153)) (= (select (arr!20695 a!3170) index!1236) (select (arr!20695 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43237 (_ BitVec 32)) SeekEntryResult!8293)

(assert (=> b!795884 (= lt!354828 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20695 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43237 (_ BitVec 32)) SeekEntryResult!8293)

(assert (=> b!795884 (= lt!354831 (seekEntryOrOpen!0 (select (arr!20695 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795885 () Bool)

(declare-fun res!540577 () Bool)

(assert (=> b!795885 (=> (not res!540577) (not e!441694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795885 (= res!540577 (validKeyInArray!0 (select (arr!20695 a!3170) j!153)))))

(declare-fun b!795886 () Bool)

(declare-fun res!540580 () Bool)

(declare-fun e!441690 () Bool)

(assert (=> b!795886 (=> (not res!540580) (not e!441690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43237 (_ BitVec 32)) Bool)

(assert (=> b!795886 (= res!540580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795887 () Bool)

(declare-fun res!540576 () Bool)

(assert (=> b!795887 (=> (not res!540576) (not e!441694))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795887 (= res!540576 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795888 () Bool)

(assert (=> b!795888 (= e!441691 (not true))))

(declare-fun lt!354827 () SeekEntryResult!8293)

(assert (=> b!795888 (= lt!354827 (Found!8293 index!1236))))

(declare-fun b!795889 () Bool)

(assert (=> b!795889 (= e!441690 e!441693)))

(declare-fun res!540579 () Bool)

(assert (=> b!795889 (=> (not res!540579) (not e!441693))))

(declare-fun lt!354826 () SeekEntryResult!8293)

(assert (=> b!795889 (= res!540579 (= lt!354826 lt!354827))))

(declare-fun lt!354832 () array!43237)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354829 () (_ BitVec 64))

(assert (=> b!795889 (= lt!354827 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354829 lt!354832 mask!3266))))

(assert (=> b!795889 (= lt!354826 (seekEntryOrOpen!0 lt!354829 lt!354832 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795889 (= lt!354829 (select (store (arr!20695 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795889 (= lt!354832 (array!43238 (store (arr!20695 a!3170) i!1163 k0!2044) (size!21116 a!3170)))))

(declare-fun b!795890 () Bool)

(assert (=> b!795890 (= e!441694 e!441690)))

(declare-fun res!540583 () Bool)

(assert (=> b!795890 (=> (not res!540583) (not e!441690))))

(declare-fun lt!354830 () SeekEntryResult!8293)

(assert (=> b!795890 (= res!540583 (or (= lt!354830 (MissingZero!8293 i!1163)) (= lt!354830 (MissingVacant!8293 i!1163))))))

(assert (=> b!795890 (= lt!354830 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!795891 () Bool)

(declare-fun res!540582 () Bool)

(assert (=> b!795891 (=> (not res!540582) (not e!441690))))

(declare-datatypes ((List!14711 0))(
  ( (Nil!14708) (Cons!14707 (h!15836 (_ BitVec 64)) (t!21034 List!14711)) )
))
(declare-fun arrayNoDuplicates!0 (array!43237 (_ BitVec 32) List!14711) Bool)

(assert (=> b!795891 (= res!540582 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14708))))

(declare-fun b!795892 () Bool)

(declare-fun res!540573 () Bool)

(assert (=> b!795892 (=> (not res!540573) (not e!441694))))

(assert (=> b!795892 (= res!540573 (and (= (size!21116 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21116 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21116 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795893 () Bool)

(declare-fun res!540574 () Bool)

(assert (=> b!795893 (=> (not res!540574) (not e!441690))))

(assert (=> b!795893 (= res!540574 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21116 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20695 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21116 a!3170)) (= (select (arr!20695 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795894 () Bool)

(declare-fun res!540578 () Bool)

(assert (=> b!795894 (=> (not res!540578) (not e!441694))))

(assert (=> b!795894 (= res!540578 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68496 res!540575) b!795892))

(assert (= (and b!795892 res!540573) b!795885))

(assert (= (and b!795885 res!540577) b!795894))

(assert (= (and b!795894 res!540578) b!795887))

(assert (= (and b!795887 res!540576) b!795890))

(assert (= (and b!795890 res!540583) b!795886))

(assert (= (and b!795886 res!540580) b!795891))

(assert (= (and b!795891 res!540582) b!795893))

(assert (= (and b!795893 res!540574) b!795889))

(assert (= (and b!795889 res!540579) b!795884))

(assert (= (and b!795884 res!540581) b!795888))

(declare-fun m!736729 () Bool)

(assert (=> b!795887 m!736729))

(declare-fun m!736731 () Bool)

(assert (=> b!795894 m!736731))

(declare-fun m!736733 () Bool)

(assert (=> b!795891 m!736733))

(declare-fun m!736735 () Bool)

(assert (=> b!795889 m!736735))

(declare-fun m!736737 () Bool)

(assert (=> b!795889 m!736737))

(declare-fun m!736739 () Bool)

(assert (=> b!795889 m!736739))

(declare-fun m!736741 () Bool)

(assert (=> b!795889 m!736741))

(declare-fun m!736743 () Bool)

(assert (=> b!795890 m!736743))

(declare-fun m!736745 () Bool)

(assert (=> b!795893 m!736745))

(declare-fun m!736747 () Bool)

(assert (=> b!795893 m!736747))

(declare-fun m!736749 () Bool)

(assert (=> b!795885 m!736749))

(assert (=> b!795885 m!736749))

(declare-fun m!736751 () Bool)

(assert (=> b!795885 m!736751))

(declare-fun m!736753 () Bool)

(assert (=> b!795886 m!736753))

(declare-fun m!736755 () Bool)

(assert (=> start!68496 m!736755))

(declare-fun m!736757 () Bool)

(assert (=> start!68496 m!736757))

(declare-fun m!736759 () Bool)

(assert (=> b!795884 m!736759))

(assert (=> b!795884 m!736749))

(assert (=> b!795884 m!736749))

(declare-fun m!736761 () Bool)

(assert (=> b!795884 m!736761))

(assert (=> b!795884 m!736749))

(declare-fun m!736763 () Bool)

(assert (=> b!795884 m!736763))

(check-sat (not b!795894) (not b!795884) (not b!795889) (not b!795887) (not b!795885) (not b!795886) (not start!68496) (not b!795890) (not b!795891))
(check-sat)
