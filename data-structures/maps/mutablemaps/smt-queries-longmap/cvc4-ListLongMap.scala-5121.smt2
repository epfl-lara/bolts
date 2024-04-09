; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69572 () Bool)

(assert start!69572)

(declare-fun b!810395 () Bool)

(declare-fun res!553848 () Bool)

(declare-fun e!448601 () Bool)

(assert (=> b!810395 (=> (not res!553848) (not e!448601))))

(declare-datatypes ((array!44019 0))(
  ( (array!44020 (arr!21077 (Array (_ BitVec 32) (_ BitVec 64))) (size!21498 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44019)

(declare-datatypes ((List!15093 0))(
  ( (Nil!15090) (Cons!15089 (h!16218 (_ BitVec 64)) (t!21416 List!15093)) )
))
(declare-fun arrayNoDuplicates!0 (array!44019 (_ BitVec 32) List!15093) Bool)

(assert (=> b!810395 (= res!553848 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15090))))

(declare-fun b!810396 () Bool)

(declare-fun res!553855 () Bool)

(declare-fun e!448602 () Bool)

(assert (=> b!810396 (=> (not res!553855) (not e!448602))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810396 (= res!553855 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810397 () Bool)

(declare-fun e!448600 () Bool)

(assert (=> b!810397 (= e!448601 e!448600)))

(declare-fun res!553846 () Bool)

(assert (=> b!810397 (=> (not res!553846) (not e!448600))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!363249 () array!44019)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363247 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8675 0))(
  ( (MissingZero!8675 (index!37067 (_ BitVec 32))) (Found!8675 (index!37068 (_ BitVec 32))) (Intermediate!8675 (undefined!9487 Bool) (index!37069 (_ BitVec 32)) (x!67904 (_ BitVec 32))) (Undefined!8675) (MissingVacant!8675 (index!37070 (_ BitVec 32))) )
))
(declare-fun lt!363243 () SeekEntryResult!8675)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44019 (_ BitVec 32)) SeekEntryResult!8675)

(assert (=> b!810397 (= res!553846 (= lt!363243 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363247 lt!363249 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44019 (_ BitVec 32)) SeekEntryResult!8675)

(assert (=> b!810397 (= lt!363243 (seekEntryOrOpen!0 lt!363247 lt!363249 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!810397 (= lt!363247 (select (store (arr!21077 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810397 (= lt!363249 (array!44020 (store (arr!21077 a!3170) i!1163 k!2044) (size!21498 a!3170)))))

(declare-fun b!810398 () Bool)

(declare-fun e!448597 () Bool)

(assert (=> b!810398 (= e!448600 e!448597)))

(declare-fun res!553854 () Bool)

(assert (=> b!810398 (=> (not res!553854) (not e!448597))))

(declare-fun lt!363244 () SeekEntryResult!8675)

(declare-fun lt!363246 () SeekEntryResult!8675)

(assert (=> b!810398 (= res!553854 (= lt!363244 lt!363246))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!810398 (= lt!363246 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21077 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810398 (= lt!363244 (seekEntryOrOpen!0 (select (arr!21077 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810399 () Bool)

(declare-fun res!553852 () Bool)

(assert (=> b!810399 (=> (not res!553852) (not e!448602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810399 (= res!553852 (validKeyInArray!0 k!2044))))

(declare-fun b!810400 () Bool)

(declare-fun res!553850 () Bool)

(assert (=> b!810400 (=> (not res!553850) (not e!448602))))

(assert (=> b!810400 (= res!553850 (and (= (size!21498 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21498 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21498 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810401 () Bool)

(declare-fun res!553843 () Bool)

(assert (=> b!810401 (=> (not res!553843) (not e!448601))))

(assert (=> b!810401 (= res!553843 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21498 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21077 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21498 a!3170)) (= (select (arr!21077 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810402 () Bool)

(declare-fun e!448603 () Bool)

(declare-fun e!448599 () Bool)

(assert (=> b!810402 (= e!448603 e!448599)))

(declare-fun res!553851 () Bool)

(assert (=> b!810402 (=> (not res!553851) (not e!448599))))

(declare-fun lt!363245 () (_ BitVec 32))

(assert (=> b!810402 (= res!553851 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!363245 #b00000000000000000000000000000000) (bvslt lt!363245 (size!21498 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810402 (= lt!363245 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun lt!363242 () SeekEntryResult!8675)

(declare-fun lt!363248 () SeekEntryResult!8675)

(declare-fun b!810403 () Bool)

(assert (=> b!810403 (= e!448599 (and (= lt!363244 lt!363248) (= lt!363248 lt!363242) (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1077)) (bvsub #b01111111111111111111111111111110 x!1077))))))

(assert (=> b!810403 (= lt!363248 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363245 vacantBefore!23 (select (arr!21077 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!553849 () Bool)

(assert (=> start!69572 (=> (not res!553849) (not e!448602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69572 (= res!553849 (validMask!0 mask!3266))))

(assert (=> start!69572 e!448602))

(assert (=> start!69572 true))

(declare-fun array_inv!16851 (array!44019) Bool)

(assert (=> start!69572 (array_inv!16851 a!3170)))

(declare-fun b!810404 () Bool)

(assert (=> b!810404 (= e!448602 e!448601)))

(declare-fun res!553845 () Bool)

(assert (=> b!810404 (=> (not res!553845) (not e!448601))))

(declare-fun lt!363250 () SeekEntryResult!8675)

(assert (=> b!810404 (= res!553845 (or (= lt!363250 (MissingZero!8675 i!1163)) (= lt!363250 (MissingVacant!8675 i!1163))))))

(assert (=> b!810404 (= lt!363250 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810405 () Bool)

(declare-fun res!553853 () Bool)

(assert (=> b!810405 (=> (not res!553853) (not e!448601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44019 (_ BitVec 32)) Bool)

(assert (=> b!810405 (= res!553853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810406 () Bool)

(declare-fun res!553842 () Bool)

(assert (=> b!810406 (=> (not res!553842) (not e!448599))))

(assert (=> b!810406 (= res!553842 (= lt!363243 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363245 vacantAfter!23 lt!363247 lt!363249 mask!3266)))))

(declare-fun b!810407 () Bool)

(assert (=> b!810407 (= e!448597 e!448603)))

(declare-fun res!553847 () Bool)

(assert (=> b!810407 (=> (not res!553847) (not e!448603))))

(assert (=> b!810407 (= res!553847 (and (= lt!363246 lt!363242) (not (= (select (arr!21077 a!3170) index!1236) (select (arr!21077 a!3170) j!153)))))))

(assert (=> b!810407 (= lt!363242 (Found!8675 j!153))))

(declare-fun b!810408 () Bool)

(declare-fun res!553844 () Bool)

(assert (=> b!810408 (=> (not res!553844) (not e!448602))))

(assert (=> b!810408 (= res!553844 (validKeyInArray!0 (select (arr!21077 a!3170) j!153)))))

(assert (= (and start!69572 res!553849) b!810400))

(assert (= (and b!810400 res!553850) b!810408))

(assert (= (and b!810408 res!553844) b!810399))

(assert (= (and b!810399 res!553852) b!810396))

(assert (= (and b!810396 res!553855) b!810404))

(assert (= (and b!810404 res!553845) b!810405))

(assert (= (and b!810405 res!553853) b!810395))

(assert (= (and b!810395 res!553848) b!810401))

(assert (= (and b!810401 res!553843) b!810397))

(assert (= (and b!810397 res!553846) b!810398))

(assert (= (and b!810398 res!553854) b!810407))

(assert (= (and b!810407 res!553847) b!810402))

(assert (= (and b!810402 res!553851) b!810406))

(assert (= (and b!810406 res!553842) b!810403))

(declare-fun m!752677 () Bool)

(assert (=> b!810406 m!752677))

(declare-fun m!752679 () Bool)

(assert (=> b!810401 m!752679))

(declare-fun m!752681 () Bool)

(assert (=> b!810401 m!752681))

(declare-fun m!752683 () Bool)

(assert (=> b!810402 m!752683))

(declare-fun m!752685 () Bool)

(assert (=> b!810403 m!752685))

(assert (=> b!810403 m!752685))

(declare-fun m!752687 () Bool)

(assert (=> b!810403 m!752687))

(declare-fun m!752689 () Bool)

(assert (=> b!810395 m!752689))

(declare-fun m!752691 () Bool)

(assert (=> b!810396 m!752691))

(declare-fun m!752693 () Bool)

(assert (=> b!810404 m!752693))

(declare-fun m!752695 () Bool)

(assert (=> b!810399 m!752695))

(declare-fun m!752697 () Bool)

(assert (=> b!810397 m!752697))

(declare-fun m!752699 () Bool)

(assert (=> b!810397 m!752699))

(declare-fun m!752701 () Bool)

(assert (=> b!810397 m!752701))

(declare-fun m!752703 () Bool)

(assert (=> b!810397 m!752703))

(declare-fun m!752705 () Bool)

(assert (=> start!69572 m!752705))

(declare-fun m!752707 () Bool)

(assert (=> start!69572 m!752707))

(declare-fun m!752709 () Bool)

(assert (=> b!810407 m!752709))

(assert (=> b!810407 m!752685))

(declare-fun m!752711 () Bool)

(assert (=> b!810405 m!752711))

(assert (=> b!810398 m!752685))

(assert (=> b!810398 m!752685))

(declare-fun m!752713 () Bool)

(assert (=> b!810398 m!752713))

(assert (=> b!810398 m!752685))

(declare-fun m!752715 () Bool)

(assert (=> b!810398 m!752715))

(assert (=> b!810408 m!752685))

(assert (=> b!810408 m!752685))

(declare-fun m!752717 () Bool)

(assert (=> b!810408 m!752717))

(push 1)

(assert (not b!810397))

(assert (not start!69572))

(assert (not b!810395))

(assert (not b!810408))

(assert (not b!810399))

(assert (not b!810402))

(assert (not b!810405))

(assert (not b!810406))

(assert (not b!810403))

(assert (not b!810404))

(assert (not b!810398))

(assert (not b!810396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

