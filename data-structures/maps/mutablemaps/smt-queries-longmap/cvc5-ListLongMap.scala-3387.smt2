; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46744 () Bool)

(assert start!46744)

(declare-fun b!515779 () Bool)

(declare-fun res!315500 () Bool)

(declare-fun e!301084 () Bool)

(assert (=> b!515779 (=> (not res!315500) (not e!301084))))

(declare-datatypes ((array!33016 0))(
  ( (array!33017 (arr!15873 (Array (_ BitVec 32) (_ BitVec 64))) (size!16237 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33016)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515779 (= res!315500 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515780 () Bool)

(declare-fun e!301083 () Bool)

(assert (=> b!515780 (= e!301083 true)))

(declare-datatypes ((SeekEntryResult!4347 0))(
  ( (MissingZero!4347 (index!19576 (_ BitVec 32))) (Found!4347 (index!19577 (_ BitVec 32))) (Intermediate!4347 (undefined!5159 Bool) (index!19578 (_ BitVec 32)) (x!48569 (_ BitVec 32))) (Undefined!4347) (MissingVacant!4347 (index!19579 (_ BitVec 32))) )
))
(declare-fun lt!236170 () SeekEntryResult!4347)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515780 (and (bvslt (x!48569 lt!236170) #b01111111111111111111111111111110) (or (= (select (arr!15873 a!3235) (index!19578 lt!236170)) (select (arr!15873 a!3235) j!176)) (= (select (arr!15873 a!3235) (index!19578 lt!236170)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15873 a!3235) (index!19578 lt!236170)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!515781 () Bool)

(declare-fun e!301086 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33016 (_ BitVec 32)) SeekEntryResult!4347)

(assert (=> b!515781 (= e!301086 (= (seekEntryOrOpen!0 (select (arr!15873 a!3235) j!176) a!3235 mask!3524) (Found!4347 j!176)))))

(declare-fun b!515782 () Bool)

(declare-fun res!315497 () Bool)

(declare-fun e!301087 () Bool)

(assert (=> b!515782 (=> (not res!315497) (not e!301087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33016 (_ BitVec 32)) Bool)

(assert (=> b!515782 (= res!315497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515783 () Bool)

(assert (=> b!515783 (= e!301084 e!301087)))

(declare-fun res!315499 () Bool)

(assert (=> b!515783 (=> (not res!315499) (not e!301087))))

(declare-fun lt!236167 () SeekEntryResult!4347)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515783 (= res!315499 (or (= lt!236167 (MissingZero!4347 i!1204)) (= lt!236167 (MissingVacant!4347 i!1204))))))

(assert (=> b!515783 (= lt!236167 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515784 () Bool)

(declare-fun res!315501 () Bool)

(assert (=> b!515784 (=> (not res!315501) (not e!301084))))

(assert (=> b!515784 (= res!315501 (and (= (size!16237 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16237 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16237 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515785 () Bool)

(declare-fun res!315502 () Bool)

(assert (=> b!515785 (=> (not res!315502) (not e!301087))))

(declare-datatypes ((List!10084 0))(
  ( (Nil!10081) (Cons!10080 (h!10978 (_ BitVec 64)) (t!16320 List!10084)) )
))
(declare-fun arrayNoDuplicates!0 (array!33016 (_ BitVec 32) List!10084) Bool)

(assert (=> b!515785 (= res!315502 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10081))))

(declare-fun res!315503 () Bool)

(assert (=> start!46744 (=> (not res!315503) (not e!301084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46744 (= res!315503 (validMask!0 mask!3524))))

(assert (=> start!46744 e!301084))

(assert (=> start!46744 true))

(declare-fun array_inv!11647 (array!33016) Bool)

(assert (=> start!46744 (array_inv!11647 a!3235)))

(declare-fun b!515786 () Bool)

(declare-fun res!315496 () Bool)

(assert (=> b!515786 (=> (not res!315496) (not e!301084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515786 (= res!315496 (validKeyInArray!0 k!2280))))

(declare-fun b!515787 () Bool)

(declare-fun res!315494 () Bool)

(assert (=> b!515787 (=> res!315494 e!301083)))

(assert (=> b!515787 (= res!315494 (or (undefined!5159 lt!236170) (not (is-Intermediate!4347 lt!236170))))))

(declare-fun b!515788 () Bool)

(assert (=> b!515788 (= e!301087 (not e!301083))))

(declare-fun res!315498 () Bool)

(assert (=> b!515788 (=> res!315498 e!301083)))

(declare-fun lt!236169 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33016 (_ BitVec 32)) SeekEntryResult!4347)

(assert (=> b!515788 (= res!315498 (= lt!236170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236169 (select (store (arr!15873 a!3235) i!1204 k!2280) j!176) (array!33017 (store (arr!15873 a!3235) i!1204 k!2280) (size!16237 a!3235)) mask!3524)))))

(declare-fun lt!236168 () (_ BitVec 32))

(assert (=> b!515788 (= lt!236170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236168 (select (arr!15873 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515788 (= lt!236169 (toIndex!0 (select (store (arr!15873 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515788 (= lt!236168 (toIndex!0 (select (arr!15873 a!3235) j!176) mask!3524))))

(assert (=> b!515788 e!301086))

(declare-fun res!315495 () Bool)

(assert (=> b!515788 (=> (not res!315495) (not e!301086))))

(assert (=> b!515788 (= res!315495 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15944 0))(
  ( (Unit!15945) )
))
(declare-fun lt!236171 () Unit!15944)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33016 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15944)

(assert (=> b!515788 (= lt!236171 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515789 () Bool)

(declare-fun res!315493 () Bool)

(assert (=> b!515789 (=> (not res!315493) (not e!301084))))

(assert (=> b!515789 (= res!315493 (validKeyInArray!0 (select (arr!15873 a!3235) j!176)))))

(assert (= (and start!46744 res!315503) b!515784))

(assert (= (and b!515784 res!315501) b!515789))

(assert (= (and b!515789 res!315493) b!515786))

(assert (= (and b!515786 res!315496) b!515779))

(assert (= (and b!515779 res!315500) b!515783))

(assert (= (and b!515783 res!315499) b!515782))

(assert (= (and b!515782 res!315497) b!515785))

(assert (= (and b!515785 res!315502) b!515788))

(assert (= (and b!515788 res!315495) b!515781))

(assert (= (and b!515788 (not res!315498)) b!515787))

(assert (= (and b!515787 (not res!315494)) b!515780))

(declare-fun m!497233 () Bool)

(assert (=> b!515785 m!497233))

(declare-fun m!497235 () Bool)

(assert (=> b!515783 m!497235))

(declare-fun m!497237 () Bool)

(assert (=> b!515788 m!497237))

(declare-fun m!497239 () Bool)

(assert (=> b!515788 m!497239))

(declare-fun m!497241 () Bool)

(assert (=> b!515788 m!497241))

(declare-fun m!497243 () Bool)

(assert (=> b!515788 m!497243))

(declare-fun m!497245 () Bool)

(assert (=> b!515788 m!497245))

(assert (=> b!515788 m!497243))

(declare-fun m!497247 () Bool)

(assert (=> b!515788 m!497247))

(assert (=> b!515788 m!497241))

(declare-fun m!497249 () Bool)

(assert (=> b!515788 m!497249))

(assert (=> b!515788 m!497241))

(declare-fun m!497251 () Bool)

(assert (=> b!515788 m!497251))

(assert (=> b!515788 m!497243))

(declare-fun m!497253 () Bool)

(assert (=> b!515788 m!497253))

(declare-fun m!497255 () Bool)

(assert (=> b!515780 m!497255))

(assert (=> b!515780 m!497243))

(declare-fun m!497257 () Bool)

(assert (=> b!515779 m!497257))

(declare-fun m!497259 () Bool)

(assert (=> start!46744 m!497259))

(declare-fun m!497261 () Bool)

(assert (=> start!46744 m!497261))

(declare-fun m!497263 () Bool)

(assert (=> b!515786 m!497263))

(declare-fun m!497265 () Bool)

(assert (=> b!515782 m!497265))

(assert (=> b!515781 m!497243))

(assert (=> b!515781 m!497243))

(declare-fun m!497267 () Bool)

(assert (=> b!515781 m!497267))

(assert (=> b!515789 m!497243))

(assert (=> b!515789 m!497243))

(declare-fun m!497269 () Bool)

(assert (=> b!515789 m!497269))

(push 1)

