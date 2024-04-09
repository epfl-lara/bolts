; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68442 () Bool)

(assert start!68442)

(declare-fun b!795060 () Bool)

(declare-fun e!441352 () Bool)

(declare-fun e!441353 () Bool)

(assert (=> b!795060 (= e!441352 e!441353)))

(declare-fun res!539755 () Bool)

(assert (=> b!795060 (=> (not res!539755) (not e!441353))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354413 () (_ BitVec 64))

(declare-datatypes ((array!43183 0))(
  ( (array!43184 (arr!20668 (Array (_ BitVec 32) (_ BitVec 64))) (size!21089 (_ BitVec 32))) )
))
(declare-fun lt!354415 () array!43183)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8266 0))(
  ( (MissingZero!8266 (index!35431 (_ BitVec 32))) (Found!8266 (index!35432 (_ BitVec 32))) (Intermediate!8266 (undefined!9078 Bool) (index!35433 (_ BitVec 32)) (x!66377 (_ BitVec 32))) (Undefined!8266) (MissingVacant!8266 (index!35434 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43183 (_ BitVec 32)) SeekEntryResult!8266)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43183 (_ BitVec 32)) SeekEntryResult!8266)

(assert (=> b!795060 (= res!539755 (= (seekEntryOrOpen!0 lt!354413 lt!354415 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354413 lt!354415 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun a!3170 () array!43183)

(assert (=> b!795060 (= lt!354413 (select (store (arr!20668 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795060 (= lt!354415 (array!43184 (store (arr!20668 a!3170) i!1163 k0!2044) (size!21089 a!3170)))))

(declare-fun res!539757 () Bool)

(declare-fun e!441354 () Bool)

(assert (=> start!68442 (=> (not res!539757) (not e!441354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68442 (= res!539757 (validMask!0 mask!3266))))

(assert (=> start!68442 e!441354))

(assert (=> start!68442 true))

(declare-fun array_inv!16442 (array!43183) Bool)

(assert (=> start!68442 (array_inv!16442 a!3170)))

(declare-fun b!795061 () Bool)

(declare-fun res!539749 () Bool)

(assert (=> b!795061 (=> (not res!539749) (not e!441352))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795061 (= res!539749 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21089 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20668 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21089 a!3170)) (= (select (arr!20668 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795062 () Bool)

(declare-fun res!539758 () Bool)

(assert (=> b!795062 (=> (not res!539758) (not e!441354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795062 (= res!539758 (validKeyInArray!0 (select (arr!20668 a!3170) j!153)))))

(declare-fun b!795063 () Bool)

(declare-fun res!539756 () Bool)

(assert (=> b!795063 (=> (not res!539756) (not e!441352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43183 (_ BitVec 32)) Bool)

(assert (=> b!795063 (= res!539756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795064 () Bool)

(declare-fun res!539751 () Bool)

(assert (=> b!795064 (=> (not res!539751) (not e!441354))))

(assert (=> b!795064 (= res!539751 (and (= (size!21089 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21089 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21089 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795065 () Bool)

(assert (=> b!795065 (= e!441354 e!441352)))

(declare-fun res!539750 () Bool)

(assert (=> b!795065 (=> (not res!539750) (not e!441352))))

(declare-fun lt!354414 () SeekEntryResult!8266)

(assert (=> b!795065 (= res!539750 (or (= lt!354414 (MissingZero!8266 i!1163)) (= lt!354414 (MissingVacant!8266 i!1163))))))

(assert (=> b!795065 (= lt!354414 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!795066 () Bool)

(declare-fun res!539752 () Bool)

(assert (=> b!795066 (=> (not res!539752) (not e!441354))))

(assert (=> b!795066 (= res!539752 (validKeyInArray!0 k0!2044))))

(declare-fun b!795067 () Bool)

(declare-fun res!539754 () Bool)

(assert (=> b!795067 (=> (not res!539754) (not e!441354))))

(declare-fun arrayContainsKey!0 (array!43183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795067 (= res!539754 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795068 () Bool)

(assert (=> b!795068 (= e!441353 false)))

(declare-fun lt!354411 () SeekEntryResult!8266)

(assert (=> b!795068 (= lt!354411 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20668 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354412 () SeekEntryResult!8266)

(assert (=> b!795068 (= lt!354412 (seekEntryOrOpen!0 (select (arr!20668 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795069 () Bool)

(declare-fun res!539753 () Bool)

(assert (=> b!795069 (=> (not res!539753) (not e!441352))))

(declare-datatypes ((List!14684 0))(
  ( (Nil!14681) (Cons!14680 (h!15809 (_ BitVec 64)) (t!21007 List!14684)) )
))
(declare-fun arrayNoDuplicates!0 (array!43183 (_ BitVec 32) List!14684) Bool)

(assert (=> b!795069 (= res!539753 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14681))))

(assert (= (and start!68442 res!539757) b!795064))

(assert (= (and b!795064 res!539751) b!795062))

(assert (= (and b!795062 res!539758) b!795066))

(assert (= (and b!795066 res!539752) b!795067))

(assert (= (and b!795067 res!539754) b!795065))

(assert (= (and b!795065 res!539750) b!795063))

(assert (= (and b!795063 res!539756) b!795069))

(assert (= (and b!795069 res!539753) b!795061))

(assert (= (and b!795061 res!539749) b!795060))

(assert (= (and b!795060 res!539755) b!795068))

(declare-fun m!735761 () Bool)

(assert (=> b!795067 m!735761))

(declare-fun m!735763 () Bool)

(assert (=> start!68442 m!735763))

(declare-fun m!735765 () Bool)

(assert (=> start!68442 m!735765))

(declare-fun m!735767 () Bool)

(assert (=> b!795063 m!735767))

(declare-fun m!735769 () Bool)

(assert (=> b!795065 m!735769))

(declare-fun m!735771 () Bool)

(assert (=> b!795060 m!735771))

(declare-fun m!735773 () Bool)

(assert (=> b!795060 m!735773))

(declare-fun m!735775 () Bool)

(assert (=> b!795060 m!735775))

(declare-fun m!735777 () Bool)

(assert (=> b!795060 m!735777))

(declare-fun m!735779 () Bool)

(assert (=> b!795068 m!735779))

(assert (=> b!795068 m!735779))

(declare-fun m!735781 () Bool)

(assert (=> b!795068 m!735781))

(assert (=> b!795068 m!735779))

(declare-fun m!735783 () Bool)

(assert (=> b!795068 m!735783))

(assert (=> b!795062 m!735779))

(assert (=> b!795062 m!735779))

(declare-fun m!735785 () Bool)

(assert (=> b!795062 m!735785))

(declare-fun m!735787 () Bool)

(assert (=> b!795069 m!735787))

(declare-fun m!735789 () Bool)

(assert (=> b!795066 m!735789))

(declare-fun m!735791 () Bool)

(assert (=> b!795061 m!735791))

(declare-fun m!735793 () Bool)

(assert (=> b!795061 m!735793))

(check-sat (not b!795063) (not b!795065) (not b!795069) (not start!68442) (not b!795066) (not b!795062) (not b!795060) (not b!795068) (not b!795067))
(check-sat)
