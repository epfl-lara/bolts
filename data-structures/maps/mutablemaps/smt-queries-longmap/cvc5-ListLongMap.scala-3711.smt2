; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51080 () Bool)

(assert start!51080)

(declare-fun res!349702 () Bool)

(declare-fun e!321289 () Bool)

(assert (=> start!51080 (=> (not res!349702) (not e!321289))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51080 (= res!349702 (validMask!0 mask!3119))))

(assert (=> start!51080 e!321289))

(assert (=> start!51080 true))

(declare-datatypes ((array!35088 0))(
  ( (array!35089 (arr!16845 (Array (_ BitVec 32) (_ BitVec 64))) (size!17209 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35088)

(declare-fun array_inv!12619 (array!35088) Bool)

(assert (=> start!51080 (array_inv!12619 a!3118)))

(declare-fun b!557689 () Bool)

(declare-fun res!349707 () Bool)

(declare-fun e!321285 () Bool)

(assert (=> b!557689 (=> (not res!349707) (not e!321285))))

(declare-datatypes ((List!10978 0))(
  ( (Nil!10975) (Cons!10974 (h!11968 (_ BitVec 64)) (t!17214 List!10978)) )
))
(declare-fun arrayNoDuplicates!0 (array!35088 (_ BitVec 32) List!10978) Bool)

(assert (=> b!557689 (= res!349707 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10975))))

(declare-fun b!557690 () Bool)

(declare-fun res!349704 () Bool)

(assert (=> b!557690 (=> (not res!349704) (not e!321289))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557690 (= res!349704 (and (= (size!17209 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17209 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17209 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557691 () Bool)

(declare-fun res!349703 () Bool)

(assert (=> b!557691 (=> (not res!349703) (not e!321289))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557691 (= res!349703 (validKeyInArray!0 (select (arr!16845 a!3118) j!142)))))

(declare-fun b!557692 () Bool)

(declare-fun res!349708 () Bool)

(assert (=> b!557692 (=> (not res!349708) (not e!321289))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!557692 (= res!349708 (validKeyInArray!0 k!1914))))

(declare-fun b!557693 () Bool)

(declare-fun res!349712 () Bool)

(assert (=> b!557693 (=> (not res!349712) (not e!321285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35088 (_ BitVec 32)) Bool)

(assert (=> b!557693 (= res!349712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557694 () Bool)

(declare-fun e!321287 () Bool)

(assert (=> b!557694 (= e!321285 e!321287)))

(declare-fun res!349709 () Bool)

(assert (=> b!557694 (=> (not res!349709) (not e!321287))))

(declare-datatypes ((SeekEntryResult!5301 0))(
  ( (MissingZero!5301 (index!23431 (_ BitVec 32))) (Found!5301 (index!23432 (_ BitVec 32))) (Intermediate!5301 (undefined!6113 Bool) (index!23433 (_ BitVec 32)) (x!52364 (_ BitVec 32))) (Undefined!5301) (MissingVacant!5301 (index!23434 (_ BitVec 32))) )
))
(declare-fun lt!253441 () SeekEntryResult!5301)

(declare-fun lt!253444 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35088 (_ BitVec 32)) SeekEntryResult!5301)

(assert (=> b!557694 (= res!349709 (= lt!253441 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253444 (select (store (arr!16845 a!3118) i!1132 k!1914) j!142) (array!35089 (store (arr!16845 a!3118) i!1132 k!1914) (size!17209 a!3118)) mask!3119)))))

(declare-fun lt!253440 () (_ BitVec 32))

(assert (=> b!557694 (= lt!253441 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253440 (select (arr!16845 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557694 (= lt!253444 (toIndex!0 (select (store (arr!16845 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557694 (= lt!253440 (toIndex!0 (select (arr!16845 a!3118) j!142) mask!3119))))

(declare-fun b!557695 () Bool)

(declare-fun e!321288 () Bool)

(declare-fun e!321284 () Bool)

(assert (=> b!557695 (= e!321288 e!321284)))

(declare-fun res!349706 () Bool)

(assert (=> b!557695 (=> res!349706 e!321284)))

(assert (=> b!557695 (= res!349706 (or (undefined!6113 lt!253441) (not (is-Intermediate!5301 lt!253441)) (= (select (arr!16845 a!3118) (index!23433 lt!253441)) (select (arr!16845 a!3118) j!142)) (= (select (arr!16845 a!3118) (index!23433 lt!253441)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557696 () Bool)

(assert (=> b!557696 (= e!321289 e!321285)))

(declare-fun res!349710 () Bool)

(assert (=> b!557696 (=> (not res!349710) (not e!321285))))

(declare-fun lt!253445 () SeekEntryResult!5301)

(assert (=> b!557696 (= res!349710 (or (= lt!253445 (MissingZero!5301 i!1132)) (= lt!253445 (MissingVacant!5301 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35088 (_ BitVec 32)) SeekEntryResult!5301)

(assert (=> b!557696 (= lt!253445 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557697 () Bool)

(declare-fun res!349705 () Bool)

(assert (=> b!557697 (=> (not res!349705) (not e!321289))))

(declare-fun arrayContainsKey!0 (array!35088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557697 (= res!349705 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557698 () Bool)

(declare-fun lt!253442 () SeekEntryResult!5301)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35088 (_ BitVec 32)) SeekEntryResult!5301)

(assert (=> b!557698 (= e!321284 (= lt!253442 (seekKeyOrZeroReturnVacant!0 (x!52364 lt!253441) (index!23433 lt!253441) (index!23433 lt!253441) (select (arr!16845 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557699 () Bool)

(assert (=> b!557699 (= e!321287 (not true))))

(assert (=> b!557699 e!321288))

(declare-fun res!349711 () Bool)

(assert (=> b!557699 (=> (not res!349711) (not e!321288))))

(assert (=> b!557699 (= res!349711 (= lt!253442 (Found!5301 j!142)))))

(assert (=> b!557699 (= lt!253442 (seekEntryOrOpen!0 (select (arr!16845 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!557699 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17376 0))(
  ( (Unit!17377) )
))
(declare-fun lt!253443 () Unit!17376)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35088 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17376)

(assert (=> b!557699 (= lt!253443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51080 res!349702) b!557690))

(assert (= (and b!557690 res!349704) b!557691))

(assert (= (and b!557691 res!349703) b!557692))

(assert (= (and b!557692 res!349708) b!557697))

(assert (= (and b!557697 res!349705) b!557696))

(assert (= (and b!557696 res!349710) b!557693))

(assert (= (and b!557693 res!349712) b!557689))

(assert (= (and b!557689 res!349707) b!557694))

(assert (= (and b!557694 res!349709) b!557699))

(assert (= (and b!557699 res!349711) b!557695))

(assert (= (and b!557695 (not res!349706)) b!557698))

(declare-fun m!535591 () Bool)

(assert (=> b!557698 m!535591))

(assert (=> b!557698 m!535591))

(declare-fun m!535593 () Bool)

(assert (=> b!557698 m!535593))

(assert (=> b!557691 m!535591))

(assert (=> b!557691 m!535591))

(declare-fun m!535595 () Bool)

(assert (=> b!557691 m!535595))

(declare-fun m!535597 () Bool)

(assert (=> b!557689 m!535597))

(declare-fun m!535599 () Bool)

(assert (=> b!557695 m!535599))

(assert (=> b!557695 m!535591))

(declare-fun m!535601 () Bool)

(assert (=> b!557696 m!535601))

(declare-fun m!535603 () Bool)

(assert (=> b!557697 m!535603))

(assert (=> b!557694 m!535591))

(declare-fun m!535605 () Bool)

(assert (=> b!557694 m!535605))

(declare-fun m!535607 () Bool)

(assert (=> b!557694 m!535607))

(declare-fun m!535609 () Bool)

(assert (=> b!557694 m!535609))

(assert (=> b!557694 m!535591))

(assert (=> b!557694 m!535607))

(assert (=> b!557694 m!535591))

(declare-fun m!535611 () Bool)

(assert (=> b!557694 m!535611))

(declare-fun m!535613 () Bool)

(assert (=> b!557694 m!535613))

(assert (=> b!557694 m!535607))

(declare-fun m!535615 () Bool)

(assert (=> b!557694 m!535615))

(declare-fun m!535617 () Bool)

(assert (=> b!557693 m!535617))

(declare-fun m!535619 () Bool)

(assert (=> start!51080 m!535619))

(declare-fun m!535621 () Bool)

(assert (=> start!51080 m!535621))

(assert (=> b!557699 m!535591))

(assert (=> b!557699 m!535591))

(declare-fun m!535623 () Bool)

(assert (=> b!557699 m!535623))

(declare-fun m!535625 () Bool)

(assert (=> b!557699 m!535625))

(declare-fun m!535627 () Bool)

(assert (=> b!557699 m!535627))

(declare-fun m!535629 () Bool)

(assert (=> b!557692 m!535629))

(push 1)

