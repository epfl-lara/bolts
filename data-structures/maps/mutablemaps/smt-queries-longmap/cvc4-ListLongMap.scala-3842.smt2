; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52884 () Bool)

(assert start!52884)

(declare-fun b!576047 () Bool)

(declare-fun res!364434 () Bool)

(declare-fun e!331456 () Bool)

(assert (=> b!576047 (=> (not res!364434) (not e!331456))))

(declare-datatypes ((array!35926 0))(
  ( (array!35927 (arr!17240 (Array (_ BitVec 32) (_ BitVec 64))) (size!17604 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35926)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576047 (= res!364434 (validKeyInArray!0 (select (arr!17240 a!3118) j!142)))))

(declare-fun b!576048 () Bool)

(declare-fun res!364438 () Bool)

(assert (=> b!576048 (=> (not res!364438) (not e!331456))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!576048 (= res!364438 (validKeyInArray!0 k!1914))))

(declare-fun b!576049 () Bool)

(declare-fun res!364432 () Bool)

(declare-fun e!331454 () Bool)

(assert (=> b!576049 (=> (not res!364432) (not e!331454))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35926 (_ BitVec 32)) Bool)

(assert (=> b!576049 (= res!364432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576050 () Bool)

(declare-fun res!364437 () Bool)

(assert (=> b!576050 (=> (not res!364437) (not e!331454))))

(declare-datatypes ((List!11373 0))(
  ( (Nil!11370) (Cons!11369 (h!12411 (_ BitVec 64)) (t!17609 List!11373)) )
))
(declare-fun arrayNoDuplicates!0 (array!35926 (_ BitVec 32) List!11373) Bool)

(assert (=> b!576050 (= res!364437 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11370))))

(declare-fun b!576051 () Bool)

(assert (=> b!576051 (= e!331456 e!331454)))

(declare-fun res!364436 () Bool)

(assert (=> b!576051 (=> (not res!364436) (not e!331454))))

(declare-datatypes ((SeekEntryResult!5696 0))(
  ( (MissingZero!5696 (index!25011 (_ BitVec 32))) (Found!5696 (index!25012 (_ BitVec 32))) (Intermediate!5696 (undefined!6508 Bool) (index!25013 (_ BitVec 32)) (x!53930 (_ BitVec 32))) (Undefined!5696) (MissingVacant!5696 (index!25014 (_ BitVec 32))) )
))
(declare-fun lt!263584 () SeekEntryResult!5696)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576051 (= res!364436 (or (= lt!263584 (MissingZero!5696 i!1132)) (= lt!263584 (MissingVacant!5696 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35926 (_ BitVec 32)) SeekEntryResult!5696)

(assert (=> b!576051 (= lt!263584 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!576052 () Bool)

(declare-fun res!364439 () Bool)

(assert (=> b!576052 (=> (not res!364439) (not e!331454))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35926 (_ BitVec 32)) SeekEntryResult!5696)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576052 (= res!364439 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17240 a!3118) j!142) mask!3119) (select (arr!17240 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17240 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17240 a!3118) i!1132 k!1914) j!142) (array!35927 (store (arr!17240 a!3118) i!1132 k!1914) (size!17604 a!3118)) mask!3119)))))

(declare-fun b!576053 () Bool)

(declare-fun res!364433 () Bool)

(assert (=> b!576053 (=> (not res!364433) (not e!331456))))

(declare-fun arrayContainsKey!0 (array!35926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576053 (= res!364433 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!364430 () Bool)

(assert (=> start!52884 (=> (not res!364430) (not e!331456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52884 (= res!364430 (validMask!0 mask!3119))))

(assert (=> start!52884 e!331456))

(assert (=> start!52884 true))

(declare-fun array_inv!13014 (array!35926) Bool)

(assert (=> start!52884 (array_inv!13014 a!3118)))

(declare-fun b!576054 () Bool)

(declare-fun res!364431 () Bool)

(assert (=> b!576054 (=> (not res!364431) (not e!331456))))

(assert (=> b!576054 (= res!364431 (and (= (size!17604 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17604 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17604 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576055 () Bool)

(assert (=> b!576055 (= e!331454 (not true))))

(declare-fun e!331453 () Bool)

(assert (=> b!576055 e!331453))

(declare-fun res!364435 () Bool)

(assert (=> b!576055 (=> (not res!364435) (not e!331453))))

(assert (=> b!576055 (= res!364435 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18094 0))(
  ( (Unit!18095) )
))
(declare-fun lt!263585 () Unit!18094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18094)

(assert (=> b!576055 (= lt!263585 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576056 () Bool)

(assert (=> b!576056 (= e!331453 (= (seekEntryOrOpen!0 (select (arr!17240 a!3118) j!142) a!3118 mask!3119) (Found!5696 j!142)))))

(assert (= (and start!52884 res!364430) b!576054))

(assert (= (and b!576054 res!364431) b!576047))

(assert (= (and b!576047 res!364434) b!576048))

(assert (= (and b!576048 res!364438) b!576053))

(assert (= (and b!576053 res!364433) b!576051))

(assert (= (and b!576051 res!364436) b!576049))

(assert (= (and b!576049 res!364432) b!576050))

(assert (= (and b!576050 res!364437) b!576052))

(assert (= (and b!576052 res!364439) b!576055))

(assert (= (and b!576055 res!364435) b!576056))

(declare-fun m!555007 () Bool)

(assert (=> b!576052 m!555007))

(declare-fun m!555009 () Bool)

(assert (=> b!576052 m!555009))

(assert (=> b!576052 m!555007))

(declare-fun m!555011 () Bool)

(assert (=> b!576052 m!555011))

(declare-fun m!555013 () Bool)

(assert (=> b!576052 m!555013))

(assert (=> b!576052 m!555011))

(declare-fun m!555015 () Bool)

(assert (=> b!576052 m!555015))

(assert (=> b!576052 m!555009))

(assert (=> b!576052 m!555007))

(declare-fun m!555017 () Bool)

(assert (=> b!576052 m!555017))

(declare-fun m!555019 () Bool)

(assert (=> b!576052 m!555019))

(assert (=> b!576052 m!555011))

(assert (=> b!576052 m!555013))

(declare-fun m!555021 () Bool)

(assert (=> b!576055 m!555021))

(declare-fun m!555023 () Bool)

(assert (=> b!576055 m!555023))

(declare-fun m!555025 () Bool)

(assert (=> b!576053 m!555025))

(declare-fun m!555027 () Bool)

(assert (=> b!576048 m!555027))

(declare-fun m!555029 () Bool)

(assert (=> b!576049 m!555029))

(assert (=> b!576047 m!555007))

(assert (=> b!576047 m!555007))

(declare-fun m!555031 () Bool)

(assert (=> b!576047 m!555031))

(assert (=> b!576056 m!555007))

(assert (=> b!576056 m!555007))

(declare-fun m!555033 () Bool)

(assert (=> b!576056 m!555033))

(declare-fun m!555035 () Bool)

(assert (=> b!576050 m!555035))

(declare-fun m!555037 () Bool)

(assert (=> start!52884 m!555037))

(declare-fun m!555039 () Bool)

(assert (=> start!52884 m!555039))

(declare-fun m!555041 () Bool)

(assert (=> b!576051 m!555041))

(push 1)

