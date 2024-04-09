; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48018 () Bool)

(assert start!48018)

(declare-fun b!528373 () Bool)

(declare-fun e!307927 () Bool)

(declare-fun e!307933 () Bool)

(assert (=> b!528373 (= e!307927 (not e!307933))))

(declare-fun res!324505 () Bool)

(assert (=> b!528373 (=> res!324505 e!307933)))

(declare-datatypes ((SeekEntryResult!4555 0))(
  ( (MissingZero!4555 (index!20444 (_ BitVec 32))) (Found!4555 (index!20445 (_ BitVec 32))) (Intermediate!4555 (undefined!5367 Bool) (index!20446 (_ BitVec 32)) (x!49446 (_ BitVec 32))) (Undefined!4555) (MissingVacant!4555 (index!20447 (_ BitVec 32))) )
))
(declare-fun lt!243404 () SeekEntryResult!4555)

(declare-fun lt!243412 () SeekEntryResult!4555)

(get-info :version)

(assert (=> b!528373 (= res!324505 (or (= lt!243404 lt!243412) (undefined!5367 lt!243404) (not ((_ is Intermediate!4555) lt!243404))))))

(declare-fun lt!243410 () (_ BitVec 32))

(declare-fun lt!243407 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33471 0))(
  ( (array!33472 (arr!16081 (Array (_ BitVec 32) (_ BitVec 64))) (size!16445 (_ BitVec 32))) )
))
(declare-fun lt!243414 () array!33471)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33471 (_ BitVec 32)) SeekEntryResult!4555)

(assert (=> b!528373 (= lt!243412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243410 lt!243407 lt!243414 mask!3524))))

(declare-fun lt!243406 () (_ BitVec 32))

(declare-fun a!3235 () array!33471)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!528373 (= lt!243404 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243406 (select (arr!16081 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528373 (= lt!243410 (toIndex!0 lt!243407 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!528373 (= lt!243407 (select (store (arr!16081 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!528373 (= lt!243406 (toIndex!0 (select (arr!16081 a!3235) j!176) mask!3524))))

(assert (=> b!528373 (= lt!243414 (array!33472 (store (arr!16081 a!3235) i!1204 k0!2280) (size!16445 a!3235)))))

(declare-fun lt!243411 () SeekEntryResult!4555)

(assert (=> b!528373 (= lt!243411 (Found!4555 j!176))))

(declare-fun e!307925 () Bool)

(assert (=> b!528373 e!307925))

(declare-fun res!324494 () Bool)

(assert (=> b!528373 (=> (not res!324494) (not e!307925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33471 (_ BitVec 32)) Bool)

(assert (=> b!528373 (= res!324494 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16686 0))(
  ( (Unit!16687) )
))
(declare-fun lt!243415 () Unit!16686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33471 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16686)

(assert (=> b!528373 (= lt!243415 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528374 () Bool)

(declare-fun e!307928 () Unit!16686)

(declare-fun Unit!16688 () Unit!16686)

(assert (=> b!528374 (= e!307928 Unit!16688)))

(declare-fun b!528375 () Bool)

(declare-fun res!324506 () Bool)

(declare-fun e!307930 () Bool)

(assert (=> b!528375 (=> res!324506 e!307930)))

(declare-fun e!307931 () Bool)

(assert (=> b!528375 (= res!324506 e!307931)))

(declare-fun res!324501 () Bool)

(assert (=> b!528375 (=> (not res!324501) (not e!307931))))

(assert (=> b!528375 (= res!324501 (bvsgt #b00000000000000000000000000000000 (x!49446 lt!243404)))))

(declare-fun b!528376 () Bool)

(declare-fun res!324495 () Bool)

(declare-fun e!307926 () Bool)

(assert (=> b!528376 (=> (not res!324495) (not e!307926))))

(assert (=> b!528376 (= res!324495 (and (= (size!16445 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16445 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16445 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528377 () Bool)

(assert (=> b!528377 (= e!307926 e!307927)))

(declare-fun res!324502 () Bool)

(assert (=> b!528377 (=> (not res!324502) (not e!307927))))

(declare-fun lt!243416 () SeekEntryResult!4555)

(assert (=> b!528377 (= res!324502 (or (= lt!243416 (MissingZero!4555 i!1204)) (= lt!243416 (MissingVacant!4555 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33471 (_ BitVec 32)) SeekEntryResult!4555)

(assert (=> b!528377 (= lt!243416 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!528378 () Bool)

(assert (=> b!528378 (= e!307933 e!307930)))

(declare-fun res!324504 () Bool)

(assert (=> b!528378 (=> res!324504 e!307930)))

(assert (=> b!528378 (= res!324504 (or (bvsgt (x!49446 lt!243404) #b01111111111111111111111111111110) (bvslt lt!243406 #b00000000000000000000000000000000) (bvsge lt!243406 (size!16445 a!3235)) (bvslt (index!20446 lt!243404) #b00000000000000000000000000000000) (bvsge (index!20446 lt!243404) (size!16445 a!3235)) (not (= lt!243404 (Intermediate!4555 false (index!20446 lt!243404) (x!49446 lt!243404))))))))

(assert (=> b!528378 (= (index!20446 lt!243404) i!1204)))

(declare-fun lt!243405 () Unit!16686)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33471 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16686)

(assert (=> b!528378 (= lt!243405 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!243406 #b00000000000000000000000000000000 (index!20446 lt!243404) (x!49446 lt!243404) mask!3524))))

(assert (=> b!528378 (and (or (= (select (arr!16081 a!3235) (index!20446 lt!243404)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16081 a!3235) (index!20446 lt!243404)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16081 a!3235) (index!20446 lt!243404)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16081 a!3235) (index!20446 lt!243404)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243413 () Unit!16686)

(assert (=> b!528378 (= lt!243413 e!307928)))

(declare-fun c!62249 () Bool)

(assert (=> b!528378 (= c!62249 (= (select (arr!16081 a!3235) (index!20446 lt!243404)) (select (arr!16081 a!3235) j!176)))))

(assert (=> b!528378 (and (bvslt (x!49446 lt!243404) #b01111111111111111111111111111110) (or (= (select (arr!16081 a!3235) (index!20446 lt!243404)) (select (arr!16081 a!3235) j!176)) (= (select (arr!16081 a!3235) (index!20446 lt!243404)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16081 a!3235) (index!20446 lt!243404)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528379 () Bool)

(assert (=> b!528379 (= e!307925 (= (seekEntryOrOpen!0 (select (arr!16081 a!3235) j!176) a!3235 mask!3524) (Found!4555 j!176)))))

(declare-fun b!528380 () Bool)

(assert (=> b!528380 (= e!307930 true)))

(assert (=> b!528380 (= (seekEntryOrOpen!0 lt!243407 lt!243414 mask!3524) lt!243411)))

(declare-fun lt!243408 () Unit!16686)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33471 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16686)

(assert (=> b!528380 (= lt!243408 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!243406 #b00000000000000000000000000000000 (index!20446 lt!243404) (x!49446 lt!243404) mask!3524))))

(declare-fun b!528381 () Bool)

(declare-fun res!324492 () Bool)

(assert (=> b!528381 (=> res!324492 e!307930)))

(assert (=> b!528381 (= res!324492 (not (= lt!243412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243406 lt!243407 lt!243414 mask!3524))))))

(declare-fun b!528382 () Bool)

(declare-fun res!324498 () Bool)

(assert (=> b!528382 (=> (not res!324498) (not e!307927))))

(assert (=> b!528382 (= res!324498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528384 () Bool)

(declare-fun e!307932 () Bool)

(assert (=> b!528384 (= e!307932 false)))

(declare-fun b!528385 () Bool)

(declare-fun res!324497 () Bool)

(assert (=> b!528385 (=> (not res!324497) (not e!307927))))

(declare-datatypes ((List!10292 0))(
  ( (Nil!10289) (Cons!10288 (h!11225 (_ BitVec 64)) (t!16528 List!10292)) )
))
(declare-fun arrayNoDuplicates!0 (array!33471 (_ BitVec 32) List!10292) Bool)

(assert (=> b!528385 (= res!324497 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10289))))

(declare-fun b!528386 () Bool)

(declare-fun res!324500 () Bool)

(assert (=> b!528386 (=> (not res!324500) (not e!307926))))

(declare-fun arrayContainsKey!0 (array!33471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528386 (= res!324500 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528387 () Bool)

(declare-fun res!324496 () Bool)

(assert (=> b!528387 (=> (not res!324496) (not e!307926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528387 (= res!324496 (validKeyInArray!0 (select (arr!16081 a!3235) j!176)))))

(declare-fun res!324493 () Bool)

(assert (=> start!48018 (=> (not res!324493) (not e!307926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48018 (= res!324493 (validMask!0 mask!3524))))

(assert (=> start!48018 e!307926))

(assert (=> start!48018 true))

(declare-fun array_inv!11855 (array!33471) Bool)

(assert (=> start!48018 (array_inv!11855 a!3235)))

(declare-fun b!528383 () Bool)

(declare-fun res!324499 () Bool)

(assert (=> b!528383 (=> (not res!324499) (not e!307926))))

(assert (=> b!528383 (= res!324499 (validKeyInArray!0 k0!2280))))

(declare-fun b!528388 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33471 (_ BitVec 32)) SeekEntryResult!4555)

(assert (=> b!528388 (= e!307931 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243406 (index!20446 lt!243404) (select (arr!16081 a!3235) j!176) a!3235 mask!3524) lt!243411)))))

(declare-fun b!528389 () Bool)

(declare-fun Unit!16689 () Unit!16686)

(assert (=> b!528389 (= e!307928 Unit!16689)))

(declare-fun lt!243409 () Unit!16686)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33471 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16686)

(assert (=> b!528389 (= lt!243409 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!243406 #b00000000000000000000000000000000 (index!20446 lt!243404) (x!49446 lt!243404) mask!3524))))

(declare-fun res!324503 () Bool)

(assert (=> b!528389 (= res!324503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243406 lt!243407 lt!243414 mask!3524) (Intermediate!4555 false (index!20446 lt!243404) (x!49446 lt!243404))))))

(assert (=> b!528389 (=> (not res!324503) (not e!307932))))

(assert (=> b!528389 e!307932))

(assert (= (and start!48018 res!324493) b!528376))

(assert (= (and b!528376 res!324495) b!528387))

(assert (= (and b!528387 res!324496) b!528383))

(assert (= (and b!528383 res!324499) b!528386))

(assert (= (and b!528386 res!324500) b!528377))

(assert (= (and b!528377 res!324502) b!528382))

(assert (= (and b!528382 res!324498) b!528385))

(assert (= (and b!528385 res!324497) b!528373))

(assert (= (and b!528373 res!324494) b!528379))

(assert (= (and b!528373 (not res!324505)) b!528378))

(assert (= (and b!528378 c!62249) b!528389))

(assert (= (and b!528378 (not c!62249)) b!528374))

(assert (= (and b!528389 res!324503) b!528384))

(assert (= (and b!528378 (not res!324504)) b!528375))

(assert (= (and b!528375 res!324501) b!528388))

(assert (= (and b!528375 (not res!324506)) b!528381))

(assert (= (and b!528381 (not res!324492)) b!528380))

(declare-fun m!508947 () Bool)

(assert (=> b!528378 m!508947))

(declare-fun m!508949 () Bool)

(assert (=> b!528378 m!508949))

(declare-fun m!508951 () Bool)

(assert (=> b!528378 m!508951))

(declare-fun m!508953 () Bool)

(assert (=> b!528377 m!508953))

(declare-fun m!508955 () Bool)

(assert (=> b!528373 m!508955))

(declare-fun m!508957 () Bool)

(assert (=> b!528373 m!508957))

(declare-fun m!508959 () Bool)

(assert (=> b!528373 m!508959))

(declare-fun m!508961 () Bool)

(assert (=> b!528373 m!508961))

(declare-fun m!508963 () Bool)

(assert (=> b!528373 m!508963))

(assert (=> b!528373 m!508951))

(declare-fun m!508965 () Bool)

(assert (=> b!528373 m!508965))

(assert (=> b!528373 m!508951))

(assert (=> b!528373 m!508951))

(declare-fun m!508967 () Bool)

(assert (=> b!528373 m!508967))

(declare-fun m!508969 () Bool)

(assert (=> b!528373 m!508969))

(assert (=> b!528387 m!508951))

(assert (=> b!528387 m!508951))

(declare-fun m!508971 () Bool)

(assert (=> b!528387 m!508971))

(declare-fun m!508973 () Bool)

(assert (=> b!528385 m!508973))

(declare-fun m!508975 () Bool)

(assert (=> b!528380 m!508975))

(declare-fun m!508977 () Bool)

(assert (=> b!528380 m!508977))

(assert (=> b!528388 m!508951))

(assert (=> b!528388 m!508951))

(declare-fun m!508979 () Bool)

(assert (=> b!528388 m!508979))

(assert (=> b!528379 m!508951))

(assert (=> b!528379 m!508951))

(declare-fun m!508981 () Bool)

(assert (=> b!528379 m!508981))

(declare-fun m!508983 () Bool)

(assert (=> b!528386 m!508983))

(declare-fun m!508985 () Bool)

(assert (=> b!528382 m!508985))

(declare-fun m!508987 () Bool)

(assert (=> b!528383 m!508987))

(declare-fun m!508989 () Bool)

(assert (=> b!528389 m!508989))

(declare-fun m!508991 () Bool)

(assert (=> b!528389 m!508991))

(assert (=> b!528381 m!508991))

(declare-fun m!508993 () Bool)

(assert (=> start!48018 m!508993))

(declare-fun m!508995 () Bool)

(assert (=> start!48018 m!508995))

(check-sat (not b!528380) (not b!528388) (not b!528373) (not b!528377) (not b!528389) (not b!528385) (not b!528387) (not b!528386) (not b!528378) (not start!48018) (not b!528383) (not b!528381) (not b!528382) (not b!528379))
(check-sat)
