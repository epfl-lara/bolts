; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52472 () Bool)

(assert start!52472)

(declare-fun b!572621 () Bool)

(declare-fun res!362291 () Bool)

(declare-fun e!329407 () Bool)

(assert (=> b!572621 (=> (not res!362291) (not e!329407))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35823 0))(
  ( (array!35824 (arr!17196 (Array (_ BitVec 32) (_ BitVec 64))) (size!17560 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35823)

(assert (=> b!572621 (= res!362291 (and (= (size!17560 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17560 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17560 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572622 () Bool)

(declare-fun res!362287 () Bool)

(declare-fun e!329404 () Bool)

(assert (=> b!572622 (=> (not res!362287) (not e!329404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35823 (_ BitVec 32)) Bool)

(assert (=> b!572622 (= res!362287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572623 () Bool)

(declare-fun res!362283 () Bool)

(assert (=> b!572623 (=> (not res!362283) (not e!329407))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572623 (= res!362283 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!362282 () Bool)

(assert (=> start!52472 (=> (not res!362282) (not e!329407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52472 (= res!362282 (validMask!0 mask!3119))))

(assert (=> start!52472 e!329407))

(assert (=> start!52472 true))

(declare-fun array_inv!12970 (array!35823) Bool)

(assert (=> start!52472 (array_inv!12970 a!3118)))

(declare-fun lt!261461 () (_ BitVec 64))

(declare-fun lt!261460 () array!35823)

(declare-datatypes ((SeekEntryResult!5652 0))(
  ( (MissingZero!5652 (index!24835 (_ BitVec 32))) (Found!5652 (index!24836 (_ BitVec 32))) (Intermediate!5652 (undefined!6464 Bool) (index!24837 (_ BitVec 32)) (x!53732 (_ BitVec 32))) (Undefined!5652) (MissingVacant!5652 (index!24838 (_ BitVec 32))) )
))
(declare-fun lt!261459 () SeekEntryResult!5652)

(declare-fun e!329401 () Bool)

(declare-fun b!572624 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35823 (_ BitVec 32)) SeekEntryResult!5652)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35823 (_ BitVec 32)) SeekEntryResult!5652)

(assert (=> b!572624 (= e!329401 (= (seekEntryOrOpen!0 lt!261461 lt!261460 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53732 lt!261459) (index!24837 lt!261459) (index!24837 lt!261459) lt!261461 lt!261460 mask!3119)))))

(declare-fun b!572625 () Bool)

(declare-fun e!329402 () Bool)

(declare-fun e!329403 () Bool)

(assert (=> b!572625 (= e!329402 e!329403)))

(declare-fun res!362284 () Bool)

(assert (=> b!572625 (=> res!362284 e!329403)))

(declare-fun lt!261463 () (_ BitVec 64))

(assert (=> b!572625 (= res!362284 (or (= lt!261463 (select (arr!17196 a!3118) j!142)) (= lt!261463 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572625 (= lt!261463 (select (arr!17196 a!3118) (index!24837 lt!261459)))))

(declare-fun b!572626 () Bool)

(declare-fun e!329406 () Bool)

(assert (=> b!572626 (= e!329406 e!329402)))

(declare-fun res!362289 () Bool)

(assert (=> b!572626 (=> res!362289 e!329402)))

(assert (=> b!572626 (= res!362289 (or (undefined!6464 lt!261459) (not (is-Intermediate!5652 lt!261459))))))

(declare-fun b!572627 () Bool)

(declare-fun res!362285 () Bool)

(assert (=> b!572627 (=> (not res!362285) (not e!329407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572627 (= res!362285 (validKeyInArray!0 (select (arr!17196 a!3118) j!142)))))

(declare-fun b!572628 () Bool)

(declare-fun res!362281 () Bool)

(assert (=> b!572628 (=> (not res!362281) (not e!329407))))

(assert (=> b!572628 (= res!362281 (validKeyInArray!0 k!1914))))

(declare-fun b!572629 () Bool)

(assert (=> b!572629 (= e!329403 e!329401)))

(declare-fun res!362279 () Bool)

(assert (=> b!572629 (=> (not res!362279) (not e!329401))))

(declare-fun lt!261467 () SeekEntryResult!5652)

(assert (=> b!572629 (= res!362279 (= lt!261467 (seekKeyOrZeroReturnVacant!0 (x!53732 lt!261459) (index!24837 lt!261459) (index!24837 lt!261459) (select (arr!17196 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572630 () Bool)

(declare-fun e!329400 () Bool)

(assert (=> b!572630 (= e!329400 (not true))))

(assert (=> b!572630 e!329406))

(declare-fun res!362286 () Bool)

(assert (=> b!572630 (=> (not res!362286) (not e!329406))))

(assert (=> b!572630 (= res!362286 (= lt!261467 (Found!5652 j!142)))))

(assert (=> b!572630 (= lt!261467 (seekEntryOrOpen!0 (select (arr!17196 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!572630 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18006 0))(
  ( (Unit!18007) )
))
(declare-fun lt!261466 () Unit!18006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18006)

(assert (=> b!572630 (= lt!261466 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572631 () Bool)

(assert (=> b!572631 (= e!329404 e!329400)))

(declare-fun res!362288 () Bool)

(assert (=> b!572631 (=> (not res!362288) (not e!329400))))

(declare-fun lt!261464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35823 (_ BitVec 32)) SeekEntryResult!5652)

(assert (=> b!572631 (= res!362288 (= lt!261459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261464 lt!261461 lt!261460 mask!3119)))))

(declare-fun lt!261465 () (_ BitVec 32))

(assert (=> b!572631 (= lt!261459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261465 (select (arr!17196 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572631 (= lt!261464 (toIndex!0 lt!261461 mask!3119))))

(assert (=> b!572631 (= lt!261461 (select (store (arr!17196 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572631 (= lt!261465 (toIndex!0 (select (arr!17196 a!3118) j!142) mask!3119))))

(assert (=> b!572631 (= lt!261460 (array!35824 (store (arr!17196 a!3118) i!1132 k!1914) (size!17560 a!3118)))))

(declare-fun b!572632 () Bool)

(declare-fun res!362290 () Bool)

(assert (=> b!572632 (=> (not res!362290) (not e!329404))))

(declare-datatypes ((List!11329 0))(
  ( (Nil!11326) (Cons!11325 (h!12352 (_ BitVec 64)) (t!17565 List!11329)) )
))
(declare-fun arrayNoDuplicates!0 (array!35823 (_ BitVec 32) List!11329) Bool)

(assert (=> b!572632 (= res!362290 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11326))))

(declare-fun b!572633 () Bool)

(assert (=> b!572633 (= e!329407 e!329404)))

(declare-fun res!362280 () Bool)

(assert (=> b!572633 (=> (not res!362280) (not e!329404))))

(declare-fun lt!261462 () SeekEntryResult!5652)

(assert (=> b!572633 (= res!362280 (or (= lt!261462 (MissingZero!5652 i!1132)) (= lt!261462 (MissingVacant!5652 i!1132))))))

(assert (=> b!572633 (= lt!261462 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!52472 res!362282) b!572621))

(assert (= (and b!572621 res!362291) b!572627))

(assert (= (and b!572627 res!362285) b!572628))

(assert (= (and b!572628 res!362281) b!572623))

(assert (= (and b!572623 res!362283) b!572633))

(assert (= (and b!572633 res!362280) b!572622))

(assert (= (and b!572622 res!362287) b!572632))

(assert (= (and b!572632 res!362290) b!572631))

(assert (= (and b!572631 res!362288) b!572630))

(assert (= (and b!572630 res!362286) b!572626))

(assert (= (and b!572626 (not res!362289)) b!572625))

(assert (= (and b!572625 (not res!362284)) b!572629))

(assert (= (and b!572629 res!362279) b!572624))

(declare-fun m!551683 () Bool)

(assert (=> b!572625 m!551683))

(declare-fun m!551685 () Bool)

(assert (=> b!572625 m!551685))

(declare-fun m!551687 () Bool)

(assert (=> b!572624 m!551687))

(declare-fun m!551689 () Bool)

(assert (=> b!572624 m!551689))

(assert (=> b!572630 m!551683))

(assert (=> b!572630 m!551683))

(declare-fun m!551691 () Bool)

(assert (=> b!572630 m!551691))

(declare-fun m!551693 () Bool)

(assert (=> b!572630 m!551693))

(declare-fun m!551695 () Bool)

(assert (=> b!572630 m!551695))

(declare-fun m!551697 () Bool)

(assert (=> b!572628 m!551697))

(assert (=> b!572629 m!551683))

(assert (=> b!572629 m!551683))

(declare-fun m!551699 () Bool)

(assert (=> b!572629 m!551699))

(assert (=> b!572627 m!551683))

(assert (=> b!572627 m!551683))

(declare-fun m!551701 () Bool)

(assert (=> b!572627 m!551701))

(declare-fun m!551703 () Bool)

(assert (=> start!52472 m!551703))

(declare-fun m!551705 () Bool)

(assert (=> start!52472 m!551705))

(declare-fun m!551707 () Bool)

(assert (=> b!572632 m!551707))

(assert (=> b!572631 m!551683))

(declare-fun m!551709 () Bool)

(assert (=> b!572631 m!551709))

(assert (=> b!572631 m!551683))

(declare-fun m!551711 () Bool)

(assert (=> b!572631 m!551711))

(assert (=> b!572631 m!551683))

(declare-fun m!551713 () Bool)

(assert (=> b!572631 m!551713))

(declare-fun m!551715 () Bool)

(assert (=> b!572631 m!551715))

(declare-fun m!551717 () Bool)

(assert (=> b!572631 m!551717))

(declare-fun m!551719 () Bool)

(assert (=> b!572631 m!551719))

(declare-fun m!551721 () Bool)

(assert (=> b!572622 m!551721))

(declare-fun m!551723 () Bool)

(assert (=> b!572633 m!551723))

(declare-fun m!551725 () Bool)

(assert (=> b!572623 m!551725))

(push 1)

