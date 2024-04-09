; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47746 () Bool)

(assert start!47746)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!525061 () Bool)

(declare-datatypes ((array!33343 0))(
  ( (array!33344 (arr!16020 (Array (_ BitVec 32) (_ BitVec 64))) (size!16384 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33343)

(declare-fun e!306161 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4494 0))(
  ( (MissingZero!4494 (index!20188 (_ BitVec 32))) (Found!4494 (index!20189 (_ BitVec 32))) (Intermediate!4494 (undefined!5306 Bool) (index!20190 (_ BitVec 32)) (x!49198 (_ BitVec 32))) (Undefined!4494) (MissingVacant!4494 (index!20191 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33343 (_ BitVec 32)) SeekEntryResult!4494)

(assert (=> b!525061 (= e!306161 (= (seekEntryOrOpen!0 (select (arr!16020 a!3235) j!176) a!3235 mask!3524) (Found!4494 j!176)))))

(declare-fun b!525062 () Bool)

(declare-fun res!322010 () Bool)

(declare-fun e!306165 () Bool)

(assert (=> b!525062 (=> (not res!322010) (not e!306165))))

(declare-datatypes ((List!10231 0))(
  ( (Nil!10228) (Cons!10227 (h!11158 (_ BitVec 64)) (t!16467 List!10231)) )
))
(declare-fun arrayNoDuplicates!0 (array!33343 (_ BitVec 32) List!10231) Bool)

(assert (=> b!525062 (= res!322010 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10228))))

(declare-fun b!525063 () Bool)

(declare-datatypes ((Unit!16442 0))(
  ( (Unit!16443) )
))
(declare-fun e!306163 () Unit!16442)

(declare-fun Unit!16444 () Unit!16442)

(assert (=> b!525063 (= e!306163 Unit!16444)))

(declare-fun b!525064 () Bool)

(declare-fun res!322008 () Bool)

(declare-fun e!306160 () Bool)

(assert (=> b!525064 (=> (not res!322008) (not e!306160))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525064 (= res!322008 (validKeyInArray!0 k!2280))))

(declare-fun b!525065 () Bool)

(declare-fun res!322011 () Bool)

(assert (=> b!525065 (=> (not res!322011) (not e!306160))))

(declare-fun arrayContainsKey!0 (array!33343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525065 (= res!322011 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525066 () Bool)

(declare-fun res!322006 () Bool)

(assert (=> b!525066 (=> (not res!322006) (not e!306160))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525066 (= res!322006 (and (= (size!16384 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16384 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16384 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525067 () Bool)

(assert (=> b!525067 (= e!306160 e!306165)))

(declare-fun res!322012 () Bool)

(assert (=> b!525067 (=> (not res!322012) (not e!306165))))

(declare-fun lt!241230 () SeekEntryResult!4494)

(assert (=> b!525067 (= res!322012 (or (= lt!241230 (MissingZero!4494 i!1204)) (= lt!241230 (MissingVacant!4494 i!1204))))))

(assert (=> b!525067 (= lt!241230 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525068 () Bool)

(declare-fun e!306162 () Bool)

(assert (=> b!525068 (= e!306162 false)))

(declare-fun res!322004 () Bool)

(assert (=> start!47746 (=> (not res!322004) (not e!306160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47746 (= res!322004 (validMask!0 mask!3524))))

(assert (=> start!47746 e!306160))

(assert (=> start!47746 true))

(declare-fun array_inv!11794 (array!33343) Bool)

(assert (=> start!47746 (array_inv!11794 a!3235)))

(declare-fun b!525069 () Bool)

(declare-fun Unit!16445 () Unit!16442)

(assert (=> b!525069 (= e!306163 Unit!16445)))

(declare-fun lt!241227 () Unit!16442)

(declare-fun lt!241235 () (_ BitVec 32))

(declare-fun lt!241231 () SeekEntryResult!4494)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33343 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16442)

(assert (=> b!525069 (= lt!241227 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241235 #b00000000000000000000000000000000 (index!20190 lt!241231) (x!49198 lt!241231) mask!3524))))

(declare-fun res!322007 () Bool)

(declare-fun lt!241229 () array!33343)

(declare-fun lt!241226 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33343 (_ BitVec 32)) SeekEntryResult!4494)

(assert (=> b!525069 (= res!322007 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241235 lt!241226 lt!241229 mask!3524) (Intermediate!4494 false (index!20190 lt!241231) (x!49198 lt!241231))))))

(assert (=> b!525069 (=> (not res!322007) (not e!306162))))

(assert (=> b!525069 e!306162))

(declare-fun b!525070 () Bool)

(declare-fun res!322002 () Bool)

(assert (=> b!525070 (=> (not res!322002) (not e!306165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33343 (_ BitVec 32)) Bool)

(assert (=> b!525070 (= res!322002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525071 () Bool)

(declare-fun e!306166 () Bool)

(assert (=> b!525071 (= e!306165 (not e!306166))))

(declare-fun res!322003 () Bool)

(assert (=> b!525071 (=> res!322003 e!306166)))

(declare-fun lt!241234 () (_ BitVec 32))

(assert (=> b!525071 (= res!322003 (= lt!241231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241234 lt!241226 lt!241229 mask!3524)))))

(assert (=> b!525071 (= lt!241231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241235 (select (arr!16020 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525071 (= lt!241234 (toIndex!0 lt!241226 mask!3524))))

(assert (=> b!525071 (= lt!241226 (select (store (arr!16020 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525071 (= lt!241235 (toIndex!0 (select (arr!16020 a!3235) j!176) mask!3524))))

(assert (=> b!525071 (= lt!241229 (array!33344 (store (arr!16020 a!3235) i!1204 k!2280) (size!16384 a!3235)))))

(assert (=> b!525071 e!306161))

(declare-fun res!322009 () Bool)

(assert (=> b!525071 (=> (not res!322009) (not e!306161))))

(assert (=> b!525071 (= res!322009 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241233 () Unit!16442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33343 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16442)

(assert (=> b!525071 (= lt!241233 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525072 () Bool)

(assert (=> b!525072 (= e!306166 true)))

(assert (=> b!525072 (= (index!20190 lt!241231) i!1204)))

(declare-fun lt!241228 () Unit!16442)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33343 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16442)

(assert (=> b!525072 (= lt!241228 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241235 #b00000000000000000000000000000000 (index!20190 lt!241231) (x!49198 lt!241231) mask!3524))))

(assert (=> b!525072 (and (or (= (select (arr!16020 a!3235) (index!20190 lt!241231)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16020 a!3235) (index!20190 lt!241231)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16020 a!3235) (index!20190 lt!241231)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16020 a!3235) (index!20190 lt!241231)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241232 () Unit!16442)

(assert (=> b!525072 (= lt!241232 e!306163)))

(declare-fun c!61835 () Bool)

(assert (=> b!525072 (= c!61835 (= (select (arr!16020 a!3235) (index!20190 lt!241231)) (select (arr!16020 a!3235) j!176)))))

(assert (=> b!525072 (and (bvslt (x!49198 lt!241231) #b01111111111111111111111111111110) (or (= (select (arr!16020 a!3235) (index!20190 lt!241231)) (select (arr!16020 a!3235) j!176)) (= (select (arr!16020 a!3235) (index!20190 lt!241231)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16020 a!3235) (index!20190 lt!241231)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525073 () Bool)

(declare-fun res!322013 () Bool)

(assert (=> b!525073 (=> res!322013 e!306166)))

(assert (=> b!525073 (= res!322013 (or (undefined!5306 lt!241231) (not (is-Intermediate!4494 lt!241231))))))

(declare-fun b!525074 () Bool)

(declare-fun res!322005 () Bool)

(assert (=> b!525074 (=> (not res!322005) (not e!306160))))

(assert (=> b!525074 (= res!322005 (validKeyInArray!0 (select (arr!16020 a!3235) j!176)))))

(assert (= (and start!47746 res!322004) b!525066))

(assert (= (and b!525066 res!322006) b!525074))

(assert (= (and b!525074 res!322005) b!525064))

(assert (= (and b!525064 res!322008) b!525065))

(assert (= (and b!525065 res!322011) b!525067))

(assert (= (and b!525067 res!322012) b!525070))

(assert (= (and b!525070 res!322002) b!525062))

(assert (= (and b!525062 res!322010) b!525071))

(assert (= (and b!525071 res!322009) b!525061))

(assert (= (and b!525071 (not res!322003)) b!525073))

(assert (= (and b!525073 (not res!322013)) b!525072))

(assert (= (and b!525072 c!61835) b!525069))

(assert (= (and b!525072 (not c!61835)) b!525063))

(assert (= (and b!525069 res!322007) b!525068))

(declare-fun m!505747 () Bool)

(assert (=> b!525070 m!505747))

(declare-fun m!505749 () Bool)

(assert (=> b!525061 m!505749))

(assert (=> b!525061 m!505749))

(declare-fun m!505751 () Bool)

(assert (=> b!525061 m!505751))

(declare-fun m!505753 () Bool)

(assert (=> start!47746 m!505753))

(declare-fun m!505755 () Bool)

(assert (=> start!47746 m!505755))

(declare-fun m!505757 () Bool)

(assert (=> b!525072 m!505757))

(declare-fun m!505759 () Bool)

(assert (=> b!525072 m!505759))

(assert (=> b!525072 m!505749))

(declare-fun m!505761 () Bool)

(assert (=> b!525065 m!505761))

(declare-fun m!505763 () Bool)

(assert (=> b!525071 m!505763))

(declare-fun m!505765 () Bool)

(assert (=> b!525071 m!505765))

(declare-fun m!505767 () Bool)

(assert (=> b!525071 m!505767))

(declare-fun m!505769 () Bool)

(assert (=> b!525071 m!505769))

(assert (=> b!525071 m!505749))

(declare-fun m!505771 () Bool)

(assert (=> b!525071 m!505771))

(assert (=> b!525071 m!505749))

(declare-fun m!505773 () Bool)

(assert (=> b!525071 m!505773))

(assert (=> b!525071 m!505749))

(declare-fun m!505775 () Bool)

(assert (=> b!525071 m!505775))

(declare-fun m!505777 () Bool)

(assert (=> b!525071 m!505777))

(declare-fun m!505779 () Bool)

(assert (=> b!525069 m!505779))

(declare-fun m!505781 () Bool)

(assert (=> b!525069 m!505781))

(declare-fun m!505783 () Bool)

(assert (=> b!525062 m!505783))

(declare-fun m!505785 () Bool)

(assert (=> b!525064 m!505785))

(declare-fun m!505787 () Bool)

(assert (=> b!525067 m!505787))

(assert (=> b!525074 m!505749))

(assert (=> b!525074 m!505749))

(declare-fun m!505789 () Bool)

(assert (=> b!525074 m!505789))

(push 1)

