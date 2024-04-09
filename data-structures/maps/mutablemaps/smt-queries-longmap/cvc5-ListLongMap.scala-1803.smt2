; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32526 () Bool)

(assert start!32526)

(declare-fun b!325020 () Bool)

(declare-fun res!178512 () Bool)

(declare-fun e!200404 () Bool)

(assert (=> b!325020 (=> (not res!178512) (not e!200404))))

(declare-datatypes ((array!16661 0))(
  ( (array!16662 (arr!7885 (Array (_ BitVec 32) (_ BitVec 64))) (size!8237 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16661)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16661 (_ BitVec 32)) Bool)

(assert (=> b!325020 (= res!178512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325021 () Bool)

(declare-fun res!178511 () Bool)

(declare-fun e!200402 () Bool)

(assert (=> b!325021 (=> (not res!178511) (not e!200402))))

(declare-datatypes ((SeekEntryResult!3027 0))(
  ( (MissingZero!3027 (index!14284 (_ BitVec 32))) (Found!3027 (index!14285 (_ BitVec 32))) (Intermediate!3027 (undefined!3839 Bool) (index!14286 (_ BitVec 32)) (x!32490 (_ BitVec 32))) (Undefined!3027) (MissingVacant!3027 (index!14287 (_ BitVec 32))) )
))
(declare-fun lt!156920 () SeekEntryResult!3027)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16661 (_ BitVec 32)) SeekEntryResult!3027)

(assert (=> b!325021 (= res!178511 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156920))))

(declare-fun b!325022 () Bool)

(declare-fun res!178518 () Bool)

(assert (=> b!325022 (=> (not res!178518) (not e!200402))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!325022 (= res!178518 (and (= (select (arr!7885 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8237 a!3305))))))

(declare-fun b!325023 () Bool)

(declare-fun res!178516 () Bool)

(assert (=> b!325023 (=> (not res!178516) (not e!200404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325023 (= res!178516 (validKeyInArray!0 k!2497))))

(declare-fun b!325024 () Bool)

(declare-fun res!178513 () Bool)

(assert (=> b!325024 (=> (not res!178513) (not e!200404))))

(declare-fun arrayContainsKey!0 (array!16661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325024 (= res!178513 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325025 () Bool)

(declare-fun res!178509 () Bool)

(assert (=> b!325025 (=> (not res!178509) (not e!200404))))

(assert (=> b!325025 (= res!178509 (and (= (size!8237 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8237 a!3305))))))

(declare-fun res!178515 () Bool)

(assert (=> start!32526 (=> (not res!178515) (not e!200404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32526 (= res!178515 (validMask!0 mask!3777))))

(assert (=> start!32526 e!200404))

(declare-fun array_inv!5839 (array!16661) Bool)

(assert (=> start!32526 (array_inv!5839 a!3305)))

(assert (=> start!32526 true))

(declare-fun b!325026 () Bool)

(assert (=> b!325026 (= e!200404 e!200402)))

(declare-fun res!178517 () Bool)

(assert (=> b!325026 (=> (not res!178517) (not e!200402))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325026 (= res!178517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156920))))

(assert (=> b!325026 (= lt!156920 (Intermediate!3027 false resIndex!58 resX!58))))

(declare-fun b!325027 () Bool)

(declare-fun res!178510 () Bool)

(assert (=> b!325027 (=> (not res!178510) (not e!200404))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16661 (_ BitVec 32)) SeekEntryResult!3027)

(assert (=> b!325027 (= res!178510 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3027 i!1250)))))

(declare-fun b!325028 () Bool)

(declare-fun res!178514 () Bool)

(assert (=> b!325028 (=> (not res!178514) (not e!200402))))

(assert (=> b!325028 (= res!178514 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7885 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325029 () Bool)

(assert (=> b!325029 (= e!200402 false)))

(declare-fun lt!156919 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325029 (= lt!156919 (nextIndex!0 index!1840 x!1490 mask!3777))))

(assert (= (and start!32526 res!178515) b!325025))

(assert (= (and b!325025 res!178509) b!325023))

(assert (= (and b!325023 res!178516) b!325024))

(assert (= (and b!325024 res!178513) b!325027))

(assert (= (and b!325027 res!178510) b!325020))

(assert (= (and b!325020 res!178512) b!325026))

(assert (= (and b!325026 res!178517) b!325022))

(assert (= (and b!325022 res!178518) b!325021))

(assert (= (and b!325021 res!178511) b!325028))

(assert (= (and b!325028 res!178514) b!325029))

(declare-fun m!331951 () Bool)

(assert (=> b!325021 m!331951))

(declare-fun m!331953 () Bool)

(assert (=> b!325023 m!331953))

(declare-fun m!331955 () Bool)

(assert (=> b!325020 m!331955))

(declare-fun m!331957 () Bool)

(assert (=> b!325026 m!331957))

(assert (=> b!325026 m!331957))

(declare-fun m!331959 () Bool)

(assert (=> b!325026 m!331959))

(declare-fun m!331961 () Bool)

(assert (=> b!325022 m!331961))

(declare-fun m!331963 () Bool)

(assert (=> b!325024 m!331963))

(declare-fun m!331965 () Bool)

(assert (=> b!325027 m!331965))

(declare-fun m!331967 () Bool)

(assert (=> b!325028 m!331967))

(declare-fun m!331969 () Bool)

(assert (=> b!325029 m!331969))

(declare-fun m!331971 () Bool)

(assert (=> start!32526 m!331971))

(declare-fun m!331973 () Bool)

(assert (=> start!32526 m!331973))

(push 1)

