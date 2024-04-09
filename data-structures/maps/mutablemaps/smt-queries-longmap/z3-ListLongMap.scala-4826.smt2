; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66316 () Bool)

(assert start!66316)

(declare-fun b!764017 () Bool)

(declare-datatypes ((array!42174 0))(
  ( (array!42175 (arr!20191 (Array (_ BitVec 32) (_ BitVec 64))) (size!20612 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42174)

(declare-fun e!425579 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7798 0))(
  ( (MissingZero!7798 (index!33559 (_ BitVec 32))) (Found!7798 (index!33560 (_ BitVec 32))) (Intermediate!7798 (undefined!8610 Bool) (index!33561 (_ BitVec 32)) (x!64483 (_ BitVec 32))) (Undefined!7798) (MissingVacant!7798 (index!33562 (_ BitVec 32))) )
))
(declare-fun lt!340017 () SeekEntryResult!7798)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42174 (_ BitVec 32)) SeekEntryResult!7798)

(assert (=> b!764017 (= e!425579 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20191 a!3186) j!159) a!3186 mask!3328) lt!340017))))

(declare-fun b!764018 () Bool)

(declare-fun res!517064 () Bool)

(declare-fun e!425580 () Bool)

(assert (=> b!764018 (=> (not res!517064) (not e!425580))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!764018 (= res!517064 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20191 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764019 () Bool)

(declare-fun res!517054 () Bool)

(declare-fun e!425582 () Bool)

(assert (=> b!764019 (=> (not res!517054) (not e!425582))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764019 (= res!517054 (validKeyInArray!0 (select (arr!20191 a!3186) j!159)))))

(declare-fun b!764020 () Bool)

(assert (=> b!764020 (= e!425580 false)))

(declare-fun lt!340014 () SeekEntryResult!7798)

(declare-fun lt!340018 () array!42174)

(declare-fun lt!340015 () (_ BitVec 64))

(assert (=> b!764020 (= lt!340014 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340015 lt!340018 mask!3328))))

(declare-fun lt!340013 () SeekEntryResult!7798)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764020 (= lt!340013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340015 mask!3328) lt!340015 lt!340018 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!764020 (= lt!340015 (select (store (arr!20191 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!764020 (= lt!340018 (array!42175 (store (arr!20191 a!3186) i!1173 k0!2102) (size!20612 a!3186)))))

(declare-fun b!764021 () Bool)

(declare-fun res!517063 () Bool)

(assert (=> b!764021 (=> (not res!517063) (not e!425580))))

(assert (=> b!764021 (= res!517063 e!425579)))

(declare-fun c!83868 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764021 (= c!83868 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764022 () Bool)

(declare-fun res!517055 () Bool)

(assert (=> b!764022 (=> (not res!517055) (not e!425582))))

(declare-fun arrayContainsKey!0 (array!42174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764022 (= res!517055 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764023 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42174 (_ BitVec 32)) SeekEntryResult!7798)

(assert (=> b!764023 (= e!425579 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20191 a!3186) j!159) a!3186 mask!3328) (Found!7798 j!159)))))

(declare-fun b!764024 () Bool)

(declare-fun res!517059 () Bool)

(declare-fun e!425581 () Bool)

(assert (=> b!764024 (=> (not res!517059) (not e!425581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42174 (_ BitVec 32)) Bool)

(assert (=> b!764024 (= res!517059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!517062 () Bool)

(assert (=> start!66316 (=> (not res!517062) (not e!425582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66316 (= res!517062 (validMask!0 mask!3328))))

(assert (=> start!66316 e!425582))

(assert (=> start!66316 true))

(declare-fun array_inv!15965 (array!42174) Bool)

(assert (=> start!66316 (array_inv!15965 a!3186)))

(declare-fun b!764025 () Bool)

(declare-fun res!517060 () Bool)

(assert (=> b!764025 (=> (not res!517060) (not e!425581))))

(declare-datatypes ((List!14246 0))(
  ( (Nil!14243) (Cons!14242 (h!15326 (_ BitVec 64)) (t!20569 List!14246)) )
))
(declare-fun arrayNoDuplicates!0 (array!42174 (_ BitVec 32) List!14246) Bool)

(assert (=> b!764025 (= res!517060 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14243))))

(declare-fun b!764026 () Bool)

(assert (=> b!764026 (= e!425581 e!425580)))

(declare-fun res!517061 () Bool)

(assert (=> b!764026 (=> (not res!517061) (not e!425580))))

(assert (=> b!764026 (= res!517061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20191 a!3186) j!159) mask!3328) (select (arr!20191 a!3186) j!159) a!3186 mask!3328) lt!340017))))

(assert (=> b!764026 (= lt!340017 (Intermediate!7798 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764027 () Bool)

(declare-fun res!517056 () Bool)

(assert (=> b!764027 (=> (not res!517056) (not e!425581))))

(assert (=> b!764027 (= res!517056 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20612 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20612 a!3186))))))

(declare-fun b!764028 () Bool)

(assert (=> b!764028 (= e!425582 e!425581)))

(declare-fun res!517065 () Bool)

(assert (=> b!764028 (=> (not res!517065) (not e!425581))))

(declare-fun lt!340016 () SeekEntryResult!7798)

(assert (=> b!764028 (= res!517065 (or (= lt!340016 (MissingZero!7798 i!1173)) (= lt!340016 (MissingVacant!7798 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42174 (_ BitVec 32)) SeekEntryResult!7798)

(assert (=> b!764028 (= lt!340016 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!764029 () Bool)

(declare-fun res!517058 () Bool)

(assert (=> b!764029 (=> (not res!517058) (not e!425582))))

(assert (=> b!764029 (= res!517058 (validKeyInArray!0 k0!2102))))

(declare-fun b!764030 () Bool)

(declare-fun res!517057 () Bool)

(assert (=> b!764030 (=> (not res!517057) (not e!425582))))

(assert (=> b!764030 (= res!517057 (and (= (size!20612 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20612 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20612 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66316 res!517062) b!764030))

(assert (= (and b!764030 res!517057) b!764019))

(assert (= (and b!764019 res!517054) b!764029))

(assert (= (and b!764029 res!517058) b!764022))

(assert (= (and b!764022 res!517055) b!764028))

(assert (= (and b!764028 res!517065) b!764024))

(assert (= (and b!764024 res!517059) b!764025))

(assert (= (and b!764025 res!517060) b!764027))

(assert (= (and b!764027 res!517056) b!764026))

(assert (= (and b!764026 res!517061) b!764018))

(assert (= (and b!764018 res!517064) b!764021))

(assert (= (and b!764021 c!83868) b!764017))

(assert (= (and b!764021 (not c!83868)) b!764023))

(assert (= (and b!764021 res!517063) b!764020))

(declare-fun m!710491 () Bool)

(assert (=> b!764019 m!710491))

(assert (=> b!764019 m!710491))

(declare-fun m!710493 () Bool)

(assert (=> b!764019 m!710493))

(declare-fun m!710495 () Bool)

(assert (=> b!764018 m!710495))

(assert (=> b!764017 m!710491))

(assert (=> b!764017 m!710491))

(declare-fun m!710497 () Bool)

(assert (=> b!764017 m!710497))

(declare-fun m!710499 () Bool)

(assert (=> b!764028 m!710499))

(declare-fun m!710501 () Bool)

(assert (=> b!764025 m!710501))

(assert (=> b!764026 m!710491))

(assert (=> b!764026 m!710491))

(declare-fun m!710503 () Bool)

(assert (=> b!764026 m!710503))

(assert (=> b!764026 m!710503))

(assert (=> b!764026 m!710491))

(declare-fun m!710505 () Bool)

(assert (=> b!764026 m!710505))

(declare-fun m!710507 () Bool)

(assert (=> b!764022 m!710507))

(declare-fun m!710509 () Bool)

(assert (=> start!66316 m!710509))

(declare-fun m!710511 () Bool)

(assert (=> start!66316 m!710511))

(declare-fun m!710513 () Bool)

(assert (=> b!764020 m!710513))

(declare-fun m!710515 () Bool)

(assert (=> b!764020 m!710515))

(declare-fun m!710517 () Bool)

(assert (=> b!764020 m!710517))

(declare-fun m!710519 () Bool)

(assert (=> b!764020 m!710519))

(assert (=> b!764020 m!710517))

(declare-fun m!710521 () Bool)

(assert (=> b!764020 m!710521))

(declare-fun m!710523 () Bool)

(assert (=> b!764024 m!710523))

(assert (=> b!764023 m!710491))

(assert (=> b!764023 m!710491))

(declare-fun m!710525 () Bool)

(assert (=> b!764023 m!710525))

(declare-fun m!710527 () Bool)

(assert (=> b!764029 m!710527))

(check-sat (not b!764017) (not b!764022) (not b!764023) (not start!66316) (not b!764025) (not b!764020) (not b!764024) (not b!764028) (not b!764026) (not b!764019) (not b!764029))
(check-sat)
