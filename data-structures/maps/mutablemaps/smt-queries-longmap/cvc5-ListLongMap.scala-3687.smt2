; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50756 () Bool)

(assert start!50756)

(declare-fun b!554760 () Bool)

(declare-fun res!347324 () Bool)

(declare-fun e!319816 () Bool)

(assert (=> b!554760 (=> (not res!347324) (not e!319816))))

(declare-datatypes ((array!34935 0))(
  ( (array!34936 (arr!16773 (Array (_ BitVec 32) (_ BitVec 64))) (size!17137 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34935)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554760 (= res!347324 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554761 () Bool)

(declare-fun e!319814 () Bool)

(assert (=> b!554761 (= e!319814 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5229 0))(
  ( (MissingZero!5229 (index!23143 (_ BitVec 32))) (Found!5229 (index!23144 (_ BitVec 32))) (Intermediate!5229 (undefined!6041 Bool) (index!23145 (_ BitVec 32)) (x!52082 (_ BitVec 32))) (Undefined!5229) (MissingVacant!5229 (index!23146 (_ BitVec 32))) )
))
(declare-fun lt!252056 () SeekEntryResult!5229)

(declare-fun lt!252055 () SeekEntryResult!5229)

(assert (=> b!554761 (and (= lt!252056 (Found!5229 j!142)) (or (undefined!6041 lt!252055) (not (is-Intermediate!5229 lt!252055)) (= (select (arr!16773 a!3118) (index!23145 lt!252055)) (select (arr!16773 a!3118) j!142)) (not (= (select (arr!16773 a!3118) (index!23145 lt!252055)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252056 (MissingZero!5229 (index!23145 lt!252055)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34935 (_ BitVec 32)) SeekEntryResult!5229)

(assert (=> b!554761 (= lt!252056 (seekEntryOrOpen!0 (select (arr!16773 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34935 (_ BitVec 32)) Bool)

(assert (=> b!554761 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17232 0))(
  ( (Unit!17233) )
))
(declare-fun lt!252054 () Unit!17232)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17232)

(assert (=> b!554761 (= lt!252054 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554762 () Bool)

(declare-fun res!347329 () Bool)

(assert (=> b!554762 (=> (not res!347329) (not e!319816))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554762 (= res!347329 (and (= (size!17137 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17137 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17137 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554763 () Bool)

(declare-fun e!319813 () Bool)

(assert (=> b!554763 (= e!319813 e!319814)))

(declare-fun res!347322 () Bool)

(assert (=> b!554763 (=> (not res!347322) (not e!319814))))

(declare-fun lt!252058 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34935 (_ BitVec 32)) SeekEntryResult!5229)

(assert (=> b!554763 (= res!347322 (= lt!252055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252058 (select (store (arr!16773 a!3118) i!1132 k!1914) j!142) (array!34936 (store (arr!16773 a!3118) i!1132 k!1914) (size!17137 a!3118)) mask!3119)))))

(declare-fun lt!252059 () (_ BitVec 32))

(assert (=> b!554763 (= lt!252055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252059 (select (arr!16773 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554763 (= lt!252058 (toIndex!0 (select (store (arr!16773 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554763 (= lt!252059 (toIndex!0 (select (arr!16773 a!3118) j!142) mask!3119))))

(declare-fun b!554764 () Bool)

(declare-fun res!347327 () Bool)

(assert (=> b!554764 (=> (not res!347327) (not e!319816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554764 (= res!347327 (validKeyInArray!0 k!1914))))

(declare-fun b!554765 () Bool)

(assert (=> b!554765 (= e!319816 e!319813)))

(declare-fun res!347326 () Bool)

(assert (=> b!554765 (=> (not res!347326) (not e!319813))))

(declare-fun lt!252057 () SeekEntryResult!5229)

(assert (=> b!554765 (= res!347326 (or (= lt!252057 (MissingZero!5229 i!1132)) (= lt!252057 (MissingVacant!5229 i!1132))))))

(assert (=> b!554765 (= lt!252057 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554766 () Bool)

(declare-fun res!347325 () Bool)

(assert (=> b!554766 (=> (not res!347325) (not e!319813))))

(assert (=> b!554766 (= res!347325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!347330 () Bool)

(assert (=> start!50756 (=> (not res!347330) (not e!319816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50756 (= res!347330 (validMask!0 mask!3119))))

(assert (=> start!50756 e!319816))

(assert (=> start!50756 true))

(declare-fun array_inv!12547 (array!34935) Bool)

(assert (=> start!50756 (array_inv!12547 a!3118)))

(declare-fun b!554767 () Bool)

(declare-fun res!347328 () Bool)

(assert (=> b!554767 (=> (not res!347328) (not e!319813))))

(declare-datatypes ((List!10906 0))(
  ( (Nil!10903) (Cons!10902 (h!11887 (_ BitVec 64)) (t!17142 List!10906)) )
))
(declare-fun arrayNoDuplicates!0 (array!34935 (_ BitVec 32) List!10906) Bool)

(assert (=> b!554767 (= res!347328 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10903))))

(declare-fun b!554768 () Bool)

(declare-fun res!347323 () Bool)

(assert (=> b!554768 (=> (not res!347323) (not e!319816))))

(assert (=> b!554768 (= res!347323 (validKeyInArray!0 (select (arr!16773 a!3118) j!142)))))

(assert (= (and start!50756 res!347330) b!554762))

(assert (= (and b!554762 res!347329) b!554768))

(assert (= (and b!554768 res!347323) b!554764))

(assert (= (and b!554764 res!347327) b!554760))

(assert (= (and b!554760 res!347324) b!554765))

(assert (= (and b!554765 res!347326) b!554766))

(assert (= (and b!554766 res!347325) b!554767))

(assert (= (and b!554767 res!347328) b!554763))

(assert (= (and b!554763 res!347322) b!554761))

(declare-fun m!532285 () Bool)

(assert (=> b!554764 m!532285))

(declare-fun m!532287 () Bool)

(assert (=> b!554760 m!532287))

(declare-fun m!532289 () Bool)

(assert (=> b!554761 m!532289))

(declare-fun m!532291 () Bool)

(assert (=> b!554761 m!532291))

(declare-fun m!532293 () Bool)

(assert (=> b!554761 m!532293))

(declare-fun m!532295 () Bool)

(assert (=> b!554761 m!532295))

(assert (=> b!554761 m!532291))

(declare-fun m!532297 () Bool)

(assert (=> b!554761 m!532297))

(declare-fun m!532299 () Bool)

(assert (=> b!554766 m!532299))

(declare-fun m!532301 () Bool)

(assert (=> start!50756 m!532301))

(declare-fun m!532303 () Bool)

(assert (=> start!50756 m!532303))

(assert (=> b!554763 m!532291))

(declare-fun m!532305 () Bool)

(assert (=> b!554763 m!532305))

(assert (=> b!554763 m!532291))

(declare-fun m!532307 () Bool)

(assert (=> b!554763 m!532307))

(assert (=> b!554763 m!532307))

(declare-fun m!532309 () Bool)

(assert (=> b!554763 m!532309))

(declare-fun m!532311 () Bool)

(assert (=> b!554763 m!532311))

(assert (=> b!554763 m!532291))

(declare-fun m!532313 () Bool)

(assert (=> b!554763 m!532313))

(assert (=> b!554763 m!532307))

(declare-fun m!532315 () Bool)

(assert (=> b!554763 m!532315))

(declare-fun m!532317 () Bool)

(assert (=> b!554765 m!532317))

(declare-fun m!532319 () Bool)

(assert (=> b!554767 m!532319))

(assert (=> b!554768 m!532291))

(assert (=> b!554768 m!532291))

(declare-fun m!532321 () Bool)

(assert (=> b!554768 m!532321))

(push 1)

