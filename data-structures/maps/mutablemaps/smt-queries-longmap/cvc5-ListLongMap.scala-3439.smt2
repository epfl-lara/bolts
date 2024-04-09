; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47764 () Bool)

(assert start!47764)

(declare-fun b!525439 () Bool)

(declare-fun res!322334 () Bool)

(declare-fun e!306355 () Bool)

(assert (=> b!525439 (=> res!322334 e!306355)))

(declare-datatypes ((SeekEntryResult!4503 0))(
  ( (MissingZero!4503 (index!20224 (_ BitVec 32))) (Found!4503 (index!20225 (_ BitVec 32))) (Intermediate!4503 (undefined!5315 Bool) (index!20226 (_ BitVec 32)) (x!49231 (_ BitVec 32))) (Undefined!4503) (MissingVacant!4503 (index!20227 (_ BitVec 32))) )
))
(declare-fun lt!241500 () SeekEntryResult!4503)

(assert (=> b!525439 (= res!322334 (or (undefined!5315 lt!241500) (not (is-Intermediate!4503 lt!241500))))))

(declare-fun b!525440 () Bool)

(assert (=> b!525440 (= e!306355 true)))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525440 (= (index!20226 lt!241500) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!241499 () (_ BitVec 32))

(declare-datatypes ((array!33361 0))(
  ( (array!33362 (arr!16029 (Array (_ BitVec 32) (_ BitVec 64))) (size!16393 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33361)

(declare-datatypes ((Unit!16478 0))(
  ( (Unit!16479) )
))
(declare-fun lt!241496 () Unit!16478)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33361 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16478)

(assert (=> b!525440 (= lt!241496 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241499 #b00000000000000000000000000000000 (index!20226 lt!241500) (x!49231 lt!241500) mask!3524))))

(assert (=> b!525440 (and (or (= (select (arr!16029 a!3235) (index!20226 lt!241500)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16029 a!3235) (index!20226 lt!241500)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16029 a!3235) (index!20226 lt!241500)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16029 a!3235) (index!20226 lt!241500)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241497 () Unit!16478)

(declare-fun e!306350 () Unit!16478)

(assert (=> b!525440 (= lt!241497 e!306350)))

(declare-fun c!61862 () Bool)

(assert (=> b!525440 (= c!61862 (= (select (arr!16029 a!3235) (index!20226 lt!241500)) (select (arr!16029 a!3235) j!176)))))

(assert (=> b!525440 (and (bvslt (x!49231 lt!241500) #b01111111111111111111111111111110) (or (= (select (arr!16029 a!3235) (index!20226 lt!241500)) (select (arr!16029 a!3235) j!176)) (= (select (arr!16029 a!3235) (index!20226 lt!241500)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16029 a!3235) (index!20226 lt!241500)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!322330 () Bool)

(declare-fun e!306351 () Bool)

(assert (=> start!47764 (=> (not res!322330) (not e!306351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47764 (= res!322330 (validMask!0 mask!3524))))

(assert (=> start!47764 e!306351))

(assert (=> start!47764 true))

(declare-fun array_inv!11803 (array!33361) Bool)

(assert (=> start!47764 (array_inv!11803 a!3235)))

(declare-fun b!525441 () Bool)

(declare-fun e!306352 () Bool)

(assert (=> b!525441 (= e!306351 e!306352)))

(declare-fun res!322328 () Bool)

(assert (=> b!525441 (=> (not res!322328) (not e!306352))))

(declare-fun lt!241502 () SeekEntryResult!4503)

(assert (=> b!525441 (= res!322328 (or (= lt!241502 (MissingZero!4503 i!1204)) (= lt!241502 (MissingVacant!4503 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33361 (_ BitVec 32)) SeekEntryResult!4503)

(assert (=> b!525441 (= lt!241502 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525442 () Bool)

(declare-fun e!306349 () Bool)

(assert (=> b!525442 (= e!306349 false)))

(declare-fun b!525443 () Bool)

(declare-fun res!322332 () Bool)

(assert (=> b!525443 (=> (not res!322332) (not e!306351))))

(assert (=> b!525443 (= res!322332 (and (= (size!16393 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16393 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16393 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525444 () Bool)

(declare-fun res!322327 () Bool)

(assert (=> b!525444 (=> (not res!322327) (not e!306351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525444 (= res!322327 (validKeyInArray!0 (select (arr!16029 a!3235) j!176)))))

(declare-fun b!525445 () Bool)

(declare-fun res!322326 () Bool)

(assert (=> b!525445 (=> (not res!322326) (not e!306351))))

(assert (=> b!525445 (= res!322326 (validKeyInArray!0 k!2280))))

(declare-fun e!306354 () Bool)

(declare-fun b!525446 () Bool)

(assert (=> b!525446 (= e!306354 (= (seekEntryOrOpen!0 (select (arr!16029 a!3235) j!176) a!3235 mask!3524) (Found!4503 j!176)))))

(declare-fun b!525447 () Bool)

(declare-fun Unit!16480 () Unit!16478)

(assert (=> b!525447 (= e!306350 Unit!16480)))

(declare-fun b!525448 () Bool)

(declare-fun res!322336 () Bool)

(assert (=> b!525448 (=> (not res!322336) (not e!306352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33361 (_ BitVec 32)) Bool)

(assert (=> b!525448 (= res!322336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525449 () Bool)

(assert (=> b!525449 (= e!306352 (not e!306355))))

(declare-fun res!322333 () Bool)

(assert (=> b!525449 (=> res!322333 e!306355)))

(declare-fun lt!241503 () (_ BitVec 64))

(declare-fun lt!241505 () array!33361)

(declare-fun lt!241501 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33361 (_ BitVec 32)) SeekEntryResult!4503)

(assert (=> b!525449 (= res!322333 (= lt!241500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241501 lt!241503 lt!241505 mask!3524)))))

(assert (=> b!525449 (= lt!241500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241499 (select (arr!16029 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525449 (= lt!241501 (toIndex!0 lt!241503 mask!3524))))

(assert (=> b!525449 (= lt!241503 (select (store (arr!16029 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525449 (= lt!241499 (toIndex!0 (select (arr!16029 a!3235) j!176) mask!3524))))

(assert (=> b!525449 (= lt!241505 (array!33362 (store (arr!16029 a!3235) i!1204 k!2280) (size!16393 a!3235)))))

(assert (=> b!525449 e!306354))

(declare-fun res!322331 () Bool)

(assert (=> b!525449 (=> (not res!322331) (not e!306354))))

(assert (=> b!525449 (= res!322331 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241498 () Unit!16478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16478)

(assert (=> b!525449 (= lt!241498 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525450 () Bool)

(declare-fun Unit!16481 () Unit!16478)

(assert (=> b!525450 (= e!306350 Unit!16481)))

(declare-fun lt!241504 () Unit!16478)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33361 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16478)

(assert (=> b!525450 (= lt!241504 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241499 #b00000000000000000000000000000000 (index!20226 lt!241500) (x!49231 lt!241500) mask!3524))))

(declare-fun res!322329 () Bool)

(assert (=> b!525450 (= res!322329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241499 lt!241503 lt!241505 mask!3524) (Intermediate!4503 false (index!20226 lt!241500) (x!49231 lt!241500))))))

(assert (=> b!525450 (=> (not res!322329) (not e!306349))))

(assert (=> b!525450 e!306349))

(declare-fun b!525451 () Bool)

(declare-fun res!322335 () Bool)

(assert (=> b!525451 (=> (not res!322335) (not e!306352))))

(declare-datatypes ((List!10240 0))(
  ( (Nil!10237) (Cons!10236 (h!11167 (_ BitVec 64)) (t!16476 List!10240)) )
))
(declare-fun arrayNoDuplicates!0 (array!33361 (_ BitVec 32) List!10240) Bool)

(assert (=> b!525451 (= res!322335 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10237))))

(declare-fun b!525452 () Bool)

(declare-fun res!322337 () Bool)

(assert (=> b!525452 (=> (not res!322337) (not e!306351))))

(declare-fun arrayContainsKey!0 (array!33361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525452 (= res!322337 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47764 res!322330) b!525443))

(assert (= (and b!525443 res!322332) b!525444))

(assert (= (and b!525444 res!322327) b!525445))

(assert (= (and b!525445 res!322326) b!525452))

(assert (= (and b!525452 res!322337) b!525441))

(assert (= (and b!525441 res!322328) b!525448))

(assert (= (and b!525448 res!322336) b!525451))

(assert (= (and b!525451 res!322335) b!525449))

(assert (= (and b!525449 res!322331) b!525446))

(assert (= (and b!525449 (not res!322333)) b!525439))

(assert (= (and b!525439 (not res!322334)) b!525440))

(assert (= (and b!525440 c!61862) b!525450))

(assert (= (and b!525440 (not c!61862)) b!525447))

(assert (= (and b!525450 res!322329) b!525442))

(declare-fun m!506143 () Bool)

(assert (=> b!525441 m!506143))

(declare-fun m!506145 () Bool)

(assert (=> b!525452 m!506145))

(declare-fun m!506147 () Bool)

(assert (=> b!525448 m!506147))

(declare-fun m!506149 () Bool)

(assert (=> b!525446 m!506149))

(assert (=> b!525446 m!506149))

(declare-fun m!506151 () Bool)

(assert (=> b!525446 m!506151))

(declare-fun m!506153 () Bool)

(assert (=> b!525450 m!506153))

(declare-fun m!506155 () Bool)

(assert (=> b!525450 m!506155))

(declare-fun m!506157 () Bool)

(assert (=> b!525449 m!506157))

(declare-fun m!506159 () Bool)

(assert (=> b!525449 m!506159))

(declare-fun m!506161 () Bool)

(assert (=> b!525449 m!506161))

(assert (=> b!525449 m!506149))

(declare-fun m!506163 () Bool)

(assert (=> b!525449 m!506163))

(assert (=> b!525449 m!506149))

(declare-fun m!506165 () Bool)

(assert (=> b!525449 m!506165))

(assert (=> b!525449 m!506149))

(declare-fun m!506167 () Bool)

(assert (=> b!525449 m!506167))

(declare-fun m!506169 () Bool)

(assert (=> b!525449 m!506169))

(declare-fun m!506171 () Bool)

(assert (=> b!525449 m!506171))

(declare-fun m!506173 () Bool)

(assert (=> start!47764 m!506173))

(declare-fun m!506175 () Bool)

(assert (=> start!47764 m!506175))

(declare-fun m!506177 () Bool)

(assert (=> b!525440 m!506177))

(declare-fun m!506179 () Bool)

(assert (=> b!525440 m!506179))

(assert (=> b!525440 m!506149))

(declare-fun m!506181 () Bool)

(assert (=> b!525445 m!506181))

(assert (=> b!525444 m!506149))

(assert (=> b!525444 m!506149))

(declare-fun m!506183 () Bool)

(assert (=> b!525444 m!506183))

(declare-fun m!506185 () Bool)

(assert (=> b!525451 m!506185))

(push 1)

