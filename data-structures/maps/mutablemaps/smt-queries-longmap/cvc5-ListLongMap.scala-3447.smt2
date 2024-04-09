; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47812 () Bool)

(assert start!47812)

(declare-fun b!526447 () Bool)

(declare-fun res!323196 () Bool)

(declare-fun e!306855 () Bool)

(assert (=> b!526447 (=> (not res!323196) (not e!306855))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33409 0))(
  ( (array!33410 (arr!16053 (Array (_ BitVec 32) (_ BitVec 64))) (size!16417 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33409)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!526447 (= res!323196 (and (= (size!16417 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16417 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16417 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!323201 () Bool)

(assert (=> start!47812 (=> (not res!323201) (not e!306855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47812 (= res!323201 (validMask!0 mask!3524))))

(assert (=> start!47812 e!306855))

(assert (=> start!47812 true))

(declare-fun array_inv!11827 (array!33409) Bool)

(assert (=> start!47812 (array_inv!11827 a!3235)))

(declare-fun b!526448 () Bool)

(declare-fun res!323195 () Bool)

(declare-fun e!306853 () Bool)

(assert (=> b!526448 (=> (not res!323195) (not e!306853))))

(declare-datatypes ((List!10264 0))(
  ( (Nil!10261) (Cons!10260 (h!11191 (_ BitVec 64)) (t!16500 List!10264)) )
))
(declare-fun arrayNoDuplicates!0 (array!33409 (_ BitVec 32) List!10264) Bool)

(assert (=> b!526448 (= res!323195 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10261))))

(declare-fun b!526449 () Bool)

(declare-fun res!323192 () Bool)

(assert (=> b!526449 (=> (not res!323192) (not e!306855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526449 (= res!323192 (validKeyInArray!0 (select (arr!16053 a!3235) j!176)))))

(declare-fun b!526450 () Bool)

(declare-datatypes ((Unit!16574 0))(
  ( (Unit!16575) )
))
(declare-fun e!306857 () Unit!16574)

(declare-fun Unit!16576 () Unit!16574)

(assert (=> b!526450 (= e!306857 Unit!16576)))

(declare-datatypes ((SeekEntryResult!4527 0))(
  ( (MissingZero!4527 (index!20320 (_ BitVec 32))) (Found!4527 (index!20321 (_ BitVec 32))) (Intermediate!4527 (undefined!5339 Bool) (index!20322 (_ BitVec 32)) (x!49319 (_ BitVec 32))) (Undefined!4527) (MissingVacant!4527 (index!20323 (_ BitVec 32))) )
))
(declare-fun lt!242216 () SeekEntryResult!4527)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!242222 () Unit!16574)

(declare-fun lt!242217 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16574)

(assert (=> b!526450 (= lt!242222 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242217 #b00000000000000000000000000000000 (index!20322 lt!242216) (x!49319 lt!242216) mask!3524))))

(declare-fun res!323193 () Bool)

(declare-fun lt!242219 () (_ BitVec 64))

(declare-fun lt!242220 () array!33409)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33409 (_ BitVec 32)) SeekEntryResult!4527)

(assert (=> b!526450 (= res!323193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242217 lt!242219 lt!242220 mask!3524) (Intermediate!4527 false (index!20322 lt!242216) (x!49319 lt!242216))))))

(declare-fun e!306854 () Bool)

(assert (=> b!526450 (=> (not res!323193) (not e!306854))))

(assert (=> b!526450 e!306854))

(declare-fun b!526451 () Bool)

(declare-fun res!323197 () Bool)

(assert (=> b!526451 (=> (not res!323197) (not e!306855))))

(assert (=> b!526451 (= res!323197 (validKeyInArray!0 k!2280))))

(declare-fun b!526452 () Bool)

(declare-fun Unit!16577 () Unit!16574)

(assert (=> b!526452 (= e!306857 Unit!16577)))

(declare-fun b!526453 () Bool)

(declare-fun e!306858 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33409 (_ BitVec 32)) SeekEntryResult!4527)

(assert (=> b!526453 (= e!306858 (= (seekEntryOrOpen!0 (select (arr!16053 a!3235) j!176) a!3235 mask!3524) (Found!4527 j!176)))))

(declare-fun b!526454 () Bool)

(declare-fun e!306856 () Bool)

(assert (=> b!526454 (= e!306853 (not e!306856))))

(declare-fun res!323199 () Bool)

(assert (=> b!526454 (=> res!323199 e!306856)))

(declare-fun lt!242224 () (_ BitVec 32))

(assert (=> b!526454 (= res!323199 (= lt!242216 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242224 lt!242219 lt!242220 mask!3524)))))

(assert (=> b!526454 (= lt!242216 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242217 (select (arr!16053 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526454 (= lt!242224 (toIndex!0 lt!242219 mask!3524))))

(assert (=> b!526454 (= lt!242219 (select (store (arr!16053 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526454 (= lt!242217 (toIndex!0 (select (arr!16053 a!3235) j!176) mask!3524))))

(assert (=> b!526454 (= lt!242220 (array!33410 (store (arr!16053 a!3235) i!1204 k!2280) (size!16417 a!3235)))))

(assert (=> b!526454 e!306858))

(declare-fun res!323191 () Bool)

(assert (=> b!526454 (=> (not res!323191) (not e!306858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33409 (_ BitVec 32)) Bool)

(assert (=> b!526454 (= res!323191 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242223 () Unit!16574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16574)

(assert (=> b!526454 (= lt!242223 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526455 () Bool)

(assert (=> b!526455 (= e!306854 false)))

(declare-fun b!526456 () Bool)

(assert (=> b!526456 (= e!306856 true)))

(assert (=> b!526456 (= (index!20322 lt!242216) i!1204)))

(declare-fun lt!242221 () Unit!16574)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16574)

(assert (=> b!526456 (= lt!242221 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242217 #b00000000000000000000000000000000 (index!20322 lt!242216) (x!49319 lt!242216) mask!3524))))

(assert (=> b!526456 (and (or (= (select (arr!16053 a!3235) (index!20322 lt!242216)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16053 a!3235) (index!20322 lt!242216)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16053 a!3235) (index!20322 lt!242216)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16053 a!3235) (index!20322 lt!242216)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242225 () Unit!16574)

(assert (=> b!526456 (= lt!242225 e!306857)))

(declare-fun c!61934 () Bool)

(assert (=> b!526456 (= c!61934 (= (select (arr!16053 a!3235) (index!20322 lt!242216)) (select (arr!16053 a!3235) j!176)))))

(assert (=> b!526456 (and (bvslt (x!49319 lt!242216) #b01111111111111111111111111111110) (or (= (select (arr!16053 a!3235) (index!20322 lt!242216)) (select (arr!16053 a!3235) j!176)) (= (select (arr!16053 a!3235) (index!20322 lt!242216)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16053 a!3235) (index!20322 lt!242216)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526457 () Bool)

(declare-fun res!323190 () Bool)

(assert (=> b!526457 (=> res!323190 e!306856)))

(assert (=> b!526457 (= res!323190 (or (undefined!5339 lt!242216) (not (is-Intermediate!4527 lt!242216))))))

(declare-fun b!526458 () Bool)

(assert (=> b!526458 (= e!306855 e!306853)))

(declare-fun res!323200 () Bool)

(assert (=> b!526458 (=> (not res!323200) (not e!306853))))

(declare-fun lt!242218 () SeekEntryResult!4527)

(assert (=> b!526458 (= res!323200 (or (= lt!242218 (MissingZero!4527 i!1204)) (= lt!242218 (MissingVacant!4527 i!1204))))))

(assert (=> b!526458 (= lt!242218 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526459 () Bool)

(declare-fun res!323194 () Bool)

(assert (=> b!526459 (=> (not res!323194) (not e!306855))))

(declare-fun arrayContainsKey!0 (array!33409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526459 (= res!323194 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526460 () Bool)

(declare-fun res!323198 () Bool)

(assert (=> b!526460 (=> (not res!323198) (not e!306853))))

(assert (=> b!526460 (= res!323198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47812 res!323201) b!526447))

(assert (= (and b!526447 res!323196) b!526449))

(assert (= (and b!526449 res!323192) b!526451))

(assert (= (and b!526451 res!323197) b!526459))

(assert (= (and b!526459 res!323194) b!526458))

(assert (= (and b!526458 res!323200) b!526460))

(assert (= (and b!526460 res!323198) b!526448))

(assert (= (and b!526448 res!323195) b!526454))

(assert (= (and b!526454 res!323191) b!526453))

(assert (= (and b!526454 (not res!323199)) b!526457))

(assert (= (and b!526457 (not res!323190)) b!526456))

(assert (= (and b!526456 c!61934) b!526450))

(assert (= (and b!526456 (not c!61934)) b!526452))

(assert (= (and b!526450 res!323193) b!526455))

(declare-fun m!507199 () Bool)

(assert (=> b!526454 m!507199))

(declare-fun m!507201 () Bool)

(assert (=> b!526454 m!507201))

(declare-fun m!507203 () Bool)

(assert (=> b!526454 m!507203))

(declare-fun m!507205 () Bool)

(assert (=> b!526454 m!507205))

(assert (=> b!526454 m!507203))

(declare-fun m!507207 () Bool)

(assert (=> b!526454 m!507207))

(assert (=> b!526454 m!507203))

(declare-fun m!507209 () Bool)

(assert (=> b!526454 m!507209))

(declare-fun m!507211 () Bool)

(assert (=> b!526454 m!507211))

(declare-fun m!507213 () Bool)

(assert (=> b!526454 m!507213))

(declare-fun m!507215 () Bool)

(assert (=> b!526454 m!507215))

(assert (=> b!526449 m!507203))

(assert (=> b!526449 m!507203))

(declare-fun m!507217 () Bool)

(assert (=> b!526449 m!507217))

(assert (=> b!526453 m!507203))

(assert (=> b!526453 m!507203))

(declare-fun m!507219 () Bool)

(assert (=> b!526453 m!507219))

(declare-fun m!507221 () Bool)

(assert (=> b!526460 m!507221))

(declare-fun m!507223 () Bool)

(assert (=> start!47812 m!507223))

(declare-fun m!507225 () Bool)

(assert (=> start!47812 m!507225))

(declare-fun m!507227 () Bool)

(assert (=> b!526459 m!507227))

(declare-fun m!507229 () Bool)

(assert (=> b!526451 m!507229))

(declare-fun m!507231 () Bool)

(assert (=> b!526448 m!507231))

(declare-fun m!507233 () Bool)

(assert (=> b!526450 m!507233))

(declare-fun m!507235 () Bool)

(assert (=> b!526450 m!507235))

(declare-fun m!507237 () Bool)

(assert (=> b!526456 m!507237))

(declare-fun m!507239 () Bool)

(assert (=> b!526456 m!507239))

(assert (=> b!526456 m!507203))

(declare-fun m!507241 () Bool)

(assert (=> b!526458 m!507241))

(push 1)

