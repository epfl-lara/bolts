; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31858 () Bool)

(assert start!31858)

(declare-fun b!318249 () Bool)

(declare-fun e!197763 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318249 (= e!197763 (not (bvsle (bvadd #b00000000000000000000000000000001 x!1427) resX!52)))))

(declare-fun e!197761 () Bool)

(assert (=> b!318249 e!197761))

(declare-fun res!172989 () Bool)

(assert (=> b!318249 (=> (not res!172989) (not e!197761))))

(declare-datatypes ((array!16227 0))(
  ( (array!16228 (arr!7677 (Array (_ BitVec 32) (_ BitVec 64))) (size!8029 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16227)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!155318 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2828 0))(
  ( (MissingZero!2828 (index!13488 (_ BitVec 32))) (Found!2828 (index!13489 (_ BitVec 32))) (Intermediate!2828 (undefined!3640 Bool) (index!13490 (_ BitVec 32)) (x!31704 (_ BitVec 32))) (Undefined!2828) (MissingVacant!2828 (index!13491 (_ BitVec 32))) )
))
(declare-fun lt!155316 () SeekEntryResult!2828)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16227 (_ BitVec 32)) SeekEntryResult!2828)

(assert (=> b!318249 (= res!172989 (= lt!155316 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155318 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318249 (= lt!155318 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318250 () Bool)

(declare-fun res!172988 () Bool)

(declare-fun e!197762 () Bool)

(assert (=> b!318250 (=> (not res!172988) (not e!197762))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318250 (= res!172988 (and (= (size!8029 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8029 a!3293))))))

(declare-fun b!318251 () Bool)

(declare-fun e!197764 () Bool)

(assert (=> b!318251 (= e!197764 e!197763)))

(declare-fun res!172993 () Bool)

(assert (=> b!318251 (=> (not res!172993) (not e!197763))))

(declare-fun lt!155317 () SeekEntryResult!2828)

(assert (=> b!318251 (= res!172993 (and (= lt!155316 lt!155317) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7677 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318251 (= lt!155316 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318252 () Bool)

(declare-fun res!172986 () Bool)

(assert (=> b!318252 (=> (not res!172986) (not e!197762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318252 (= res!172986 (validKeyInArray!0 k!2441))))

(declare-fun b!318253 () Bool)

(declare-fun res!172992 () Bool)

(assert (=> b!318253 (=> (not res!172992) (not e!197762))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16227 (_ BitVec 32)) SeekEntryResult!2828)

(assert (=> b!318253 (= res!172992 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2828 i!1240)))))

(declare-fun b!318254 () Bool)

(declare-fun res!172990 () Bool)

(assert (=> b!318254 (=> (not res!172990) (not e!197764))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318254 (= res!172990 (and (= (select (arr!7677 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8029 a!3293))))))

(declare-fun b!318255 () Bool)

(assert (=> b!318255 (= e!197762 e!197764)))

(declare-fun res!172991 () Bool)

(assert (=> b!318255 (=> (not res!172991) (not e!197764))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318255 (= res!172991 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155317))))

(assert (=> b!318255 (= lt!155317 (Intermediate!2828 false resIndex!52 resX!52))))

(declare-fun res!172994 () Bool)

(assert (=> start!31858 (=> (not res!172994) (not e!197762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31858 (= res!172994 (validMask!0 mask!3709))))

(assert (=> start!31858 e!197762))

(declare-fun array_inv!5631 (array!16227) Bool)

(assert (=> start!31858 (array_inv!5631 a!3293)))

(assert (=> start!31858 true))

(declare-fun b!318256 () Bool)

(declare-fun res!172987 () Bool)

(assert (=> b!318256 (=> (not res!172987) (not e!197762))))

(declare-fun arrayContainsKey!0 (array!16227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318256 (= res!172987 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318257 () Bool)

(declare-fun res!172995 () Bool)

(assert (=> b!318257 (=> (not res!172995) (not e!197762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16227 (_ BitVec 32)) Bool)

(assert (=> b!318257 (= res!172995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!155315 () array!16227)

(declare-fun b!318258 () Bool)

(assert (=> b!318258 (= e!197761 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155315 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155318 k!2441 lt!155315 mask!3709)))))

(assert (=> b!318258 (= lt!155315 (array!16228 (store (arr!7677 a!3293) i!1240 k!2441) (size!8029 a!3293)))))

(assert (= (and start!31858 res!172994) b!318250))

(assert (= (and b!318250 res!172988) b!318252))

(assert (= (and b!318252 res!172986) b!318256))

(assert (= (and b!318256 res!172987) b!318253))

(assert (= (and b!318253 res!172992) b!318257))

(assert (= (and b!318257 res!172995) b!318255))

(assert (= (and b!318255 res!172991) b!318254))

(assert (= (and b!318254 res!172990) b!318251))

(assert (= (and b!318251 res!172993) b!318249))

(assert (= (and b!318249 res!172989) b!318258))

(declare-fun m!326993 () Bool)

(assert (=> start!31858 m!326993))

(declare-fun m!326995 () Bool)

(assert (=> start!31858 m!326995))

(declare-fun m!326997 () Bool)

(assert (=> b!318253 m!326997))

(declare-fun m!326999 () Bool)

(assert (=> b!318252 m!326999))

(declare-fun m!327001 () Bool)

(assert (=> b!318257 m!327001))

(declare-fun m!327003 () Bool)

(assert (=> b!318255 m!327003))

(assert (=> b!318255 m!327003))

(declare-fun m!327005 () Bool)

(assert (=> b!318255 m!327005))

(declare-fun m!327007 () Bool)

(assert (=> b!318256 m!327007))

(declare-fun m!327009 () Bool)

(assert (=> b!318249 m!327009))

(declare-fun m!327011 () Bool)

(assert (=> b!318249 m!327011))

(declare-fun m!327013 () Bool)

(assert (=> b!318258 m!327013))

(declare-fun m!327015 () Bool)

(assert (=> b!318258 m!327015))

(declare-fun m!327017 () Bool)

(assert (=> b!318258 m!327017))

(declare-fun m!327019 () Bool)

(assert (=> b!318254 m!327019))

(declare-fun m!327021 () Bool)

(assert (=> b!318251 m!327021))

(declare-fun m!327023 () Bool)

(assert (=> b!318251 m!327023))

(push 1)

(assert (not b!318249))

(assert (not b!318257))

(assert (not b!318253))

(assert (not b!318251))

(assert (not start!31858))

(assert (not b!318252))

(assert (not b!318256))

(assert (not b!318255))

(assert (not b!318258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

