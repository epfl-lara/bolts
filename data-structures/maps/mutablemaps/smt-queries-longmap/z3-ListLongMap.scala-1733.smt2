; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31856 () Bool)

(assert start!31856)

(declare-fun b!318219 () Bool)

(declare-fun e!197748 () Bool)

(declare-fun e!197746 () Bool)

(assert (=> b!318219 (= e!197748 e!197746)))

(declare-fun res!172956 () Bool)

(assert (=> b!318219 (=> (not res!172956) (not e!197746))))

(declare-datatypes ((array!16225 0))(
  ( (array!16226 (arr!7676 (Array (_ BitVec 32) (_ BitVec 64))) (size!8028 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16225)

(declare-datatypes ((SeekEntryResult!2827 0))(
  ( (MissingZero!2827 (index!13484 (_ BitVec 32))) (Found!2827 (index!13485 (_ BitVec 32))) (Intermediate!2827 (undefined!3639 Bool) (index!13486 (_ BitVec 32)) (x!31703 (_ BitVec 32))) (Undefined!2827) (MissingVacant!2827 (index!13487 (_ BitVec 32))) )
))
(declare-fun lt!155303 () SeekEntryResult!2827)

(declare-fun lt!155304 () SeekEntryResult!2827)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318219 (= res!172956 (and (= lt!155303 lt!155304) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7676 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16225 (_ BitVec 32)) SeekEntryResult!2827)

(assert (=> b!318219 (= lt!155303 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!318220 () Bool)

(declare-fun res!172961 () Bool)

(declare-fun e!197747 () Bool)

(assert (=> b!318220 (=> (not res!172961) (not e!197747))))

(declare-fun arrayContainsKey!0 (array!16225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318220 (= res!172961 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318221 () Bool)

(declare-fun res!172957 () Bool)

(assert (=> b!318221 (=> (not res!172957) (not e!197747))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318221 (= res!172957 (and (= (size!8028 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8028 a!3293))))))

(declare-fun e!197745 () Bool)

(declare-fun b!318222 () Bool)

(declare-fun lt!155306 () (_ BitVec 32))

(declare-fun lt!155305 () array!16225)

(assert (=> b!318222 (= e!197745 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155305 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155306 k0!2441 lt!155305 mask!3709)))))

(assert (=> b!318222 (= lt!155305 (array!16226 (store (arr!7676 a!3293) i!1240 k0!2441) (size!8028 a!3293)))))

(declare-fun b!318223 () Bool)

(declare-fun res!172963 () Bool)

(assert (=> b!318223 (=> (not res!172963) (not e!197747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16225 (_ BitVec 32)) Bool)

(assert (=> b!318223 (= res!172963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318225 () Bool)

(declare-fun res!172958 () Bool)

(assert (=> b!318225 (=> (not res!172958) (not e!197747))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16225 (_ BitVec 32)) SeekEntryResult!2827)

(assert (=> b!318225 (= res!172958 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2827 i!1240)))))

(declare-fun b!318226 () Bool)

(assert (=> b!318226 (= e!197747 e!197748)))

(declare-fun res!172965 () Bool)

(assert (=> b!318226 (=> (not res!172965) (not e!197748))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318226 (= res!172965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155304))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318226 (= lt!155304 (Intermediate!2827 false resIndex!52 resX!52))))

(declare-fun b!318227 () Bool)

(assert (=> b!318227 (= e!197746 (not (bvsle (bvadd #b00000000000000000000000000000001 x!1427) resX!52)))))

(assert (=> b!318227 e!197745))

(declare-fun res!172959 () Bool)

(assert (=> b!318227 (=> (not res!172959) (not e!197745))))

(assert (=> b!318227 (= res!172959 (= lt!155303 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155306 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318227 (= lt!155306 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318228 () Bool)

(declare-fun res!172964 () Bool)

(assert (=> b!318228 (=> (not res!172964) (not e!197748))))

(assert (=> b!318228 (= res!172964 (and (= (select (arr!7676 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8028 a!3293))))))

(declare-fun res!172962 () Bool)

(assert (=> start!31856 (=> (not res!172962) (not e!197747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31856 (= res!172962 (validMask!0 mask!3709))))

(assert (=> start!31856 e!197747))

(declare-fun array_inv!5630 (array!16225) Bool)

(assert (=> start!31856 (array_inv!5630 a!3293)))

(assert (=> start!31856 true))

(declare-fun b!318224 () Bool)

(declare-fun res!172960 () Bool)

(assert (=> b!318224 (=> (not res!172960) (not e!197747))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318224 (= res!172960 (validKeyInArray!0 k0!2441))))

(assert (= (and start!31856 res!172962) b!318221))

(assert (= (and b!318221 res!172957) b!318224))

(assert (= (and b!318224 res!172960) b!318220))

(assert (= (and b!318220 res!172961) b!318225))

(assert (= (and b!318225 res!172958) b!318223))

(assert (= (and b!318223 res!172963) b!318226))

(assert (= (and b!318226 res!172965) b!318228))

(assert (= (and b!318228 res!172964) b!318219))

(assert (= (and b!318219 res!172956) b!318227))

(assert (= (and b!318227 res!172959) b!318222))

(declare-fun m!326961 () Bool)

(assert (=> b!318228 m!326961))

(declare-fun m!326963 () Bool)

(assert (=> b!318225 m!326963))

(declare-fun m!326965 () Bool)

(assert (=> b!318226 m!326965))

(assert (=> b!318226 m!326965))

(declare-fun m!326967 () Bool)

(assert (=> b!318226 m!326967))

(declare-fun m!326969 () Bool)

(assert (=> b!318220 m!326969))

(declare-fun m!326971 () Bool)

(assert (=> b!318219 m!326971))

(declare-fun m!326973 () Bool)

(assert (=> b!318219 m!326973))

(declare-fun m!326975 () Bool)

(assert (=> b!318223 m!326975))

(declare-fun m!326977 () Bool)

(assert (=> start!31856 m!326977))

(declare-fun m!326979 () Bool)

(assert (=> start!31856 m!326979))

(declare-fun m!326981 () Bool)

(assert (=> b!318224 m!326981))

(declare-fun m!326983 () Bool)

(assert (=> b!318227 m!326983))

(declare-fun m!326985 () Bool)

(assert (=> b!318227 m!326985))

(declare-fun m!326987 () Bool)

(assert (=> b!318222 m!326987))

(declare-fun m!326989 () Bool)

(assert (=> b!318222 m!326989))

(declare-fun m!326991 () Bool)

(assert (=> b!318222 m!326991))

(check-sat (not b!318227) (not b!318224) (not b!318223) (not b!318219) (not b!318225) (not start!31856) (not b!318226) (not b!318222) (not b!318220))
(check-sat)
