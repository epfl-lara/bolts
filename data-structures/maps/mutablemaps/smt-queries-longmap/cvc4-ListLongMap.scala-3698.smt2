; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50826 () Bool)

(assert start!50826)

(declare-fun b!555705 () Bool)

(declare-fun res!348275 () Bool)

(declare-fun e!320234 () Bool)

(assert (=> b!555705 (=> (not res!348275) (not e!320234))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555705 (= res!348275 (validKeyInArray!0 k!1914))))

(declare-fun b!555706 () Bool)

(declare-fun res!348267 () Bool)

(declare-fun e!320236 () Bool)

(assert (=> b!555706 (=> (not res!348267) (not e!320236))))

(declare-datatypes ((array!35005 0))(
  ( (array!35006 (arr!16808 (Array (_ BitVec 32) (_ BitVec 64))) (size!17172 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35005)

(declare-datatypes ((List!10941 0))(
  ( (Nil!10938) (Cons!10937 (h!11922 (_ BitVec 64)) (t!17177 List!10941)) )
))
(declare-fun arrayNoDuplicates!0 (array!35005 (_ BitVec 32) List!10941) Bool)

(assert (=> b!555706 (= res!348267 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10938))))

(declare-fun b!555708 () Bool)

(declare-fun e!320233 () Bool)

(assert (=> b!555708 (= e!320233 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5264 0))(
  ( (MissingZero!5264 (index!23283 (_ BitVec 32))) (Found!5264 (index!23284 (_ BitVec 32))) (Intermediate!5264 (undefined!6076 Bool) (index!23285 (_ BitVec 32)) (x!52205 (_ BitVec 32))) (Undefined!5264) (MissingVacant!5264 (index!23286 (_ BitVec 32))) )
))
(declare-fun lt!252688 () SeekEntryResult!5264)

(declare-fun lt!252684 () SeekEntryResult!5264)

(assert (=> b!555708 (and (= lt!252688 (Found!5264 j!142)) (or (undefined!6076 lt!252684) (not (is-Intermediate!5264 lt!252684)) (= (select (arr!16808 a!3118) (index!23285 lt!252684)) (select (arr!16808 a!3118) j!142)) (not (= (select (arr!16808 a!3118) (index!23285 lt!252684)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252688 (MissingZero!5264 (index!23285 lt!252684)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35005 (_ BitVec 32)) SeekEntryResult!5264)

(assert (=> b!555708 (= lt!252688 (seekEntryOrOpen!0 (select (arr!16808 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35005 (_ BitVec 32)) Bool)

(assert (=> b!555708 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17302 0))(
  ( (Unit!17303) )
))
(declare-fun lt!252685 () Unit!17302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17302)

(assert (=> b!555708 (= lt!252685 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555709 () Bool)

(declare-fun res!348273 () Bool)

(assert (=> b!555709 (=> (not res!348273) (not e!320234))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555709 (= res!348273 (and (= (size!17172 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17172 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17172 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555710 () Bool)

(assert (=> b!555710 (= e!320234 e!320236)))

(declare-fun res!348271 () Bool)

(assert (=> b!555710 (=> (not res!348271) (not e!320236))))

(declare-fun lt!252689 () SeekEntryResult!5264)

(assert (=> b!555710 (= res!348271 (or (= lt!252689 (MissingZero!5264 i!1132)) (= lt!252689 (MissingVacant!5264 i!1132))))))

(assert (=> b!555710 (= lt!252689 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555711 () Bool)

(assert (=> b!555711 (= e!320236 e!320233)))

(declare-fun res!348270 () Bool)

(assert (=> b!555711 (=> (not res!348270) (not e!320233))))

(declare-fun lt!252687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35005 (_ BitVec 32)) SeekEntryResult!5264)

(assert (=> b!555711 (= res!348270 (= lt!252684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252687 (select (store (arr!16808 a!3118) i!1132 k!1914) j!142) (array!35006 (store (arr!16808 a!3118) i!1132 k!1914) (size!17172 a!3118)) mask!3119)))))

(declare-fun lt!252686 () (_ BitVec 32))

(assert (=> b!555711 (= lt!252684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252686 (select (arr!16808 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555711 (= lt!252687 (toIndex!0 (select (store (arr!16808 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555711 (= lt!252686 (toIndex!0 (select (arr!16808 a!3118) j!142) mask!3119))))

(declare-fun b!555712 () Bool)

(declare-fun res!348269 () Bool)

(assert (=> b!555712 (=> (not res!348269) (not e!320236))))

(assert (=> b!555712 (= res!348269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555713 () Bool)

(declare-fun res!348272 () Bool)

(assert (=> b!555713 (=> (not res!348272) (not e!320234))))

(assert (=> b!555713 (= res!348272 (validKeyInArray!0 (select (arr!16808 a!3118) j!142)))))

(declare-fun b!555707 () Bool)

(declare-fun res!348274 () Bool)

(assert (=> b!555707 (=> (not res!348274) (not e!320234))))

(declare-fun arrayContainsKey!0 (array!35005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555707 (= res!348274 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!348268 () Bool)

(assert (=> start!50826 (=> (not res!348268) (not e!320234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50826 (= res!348268 (validMask!0 mask!3119))))

(assert (=> start!50826 e!320234))

(assert (=> start!50826 true))

(declare-fun array_inv!12582 (array!35005) Bool)

(assert (=> start!50826 (array_inv!12582 a!3118)))

(assert (= (and start!50826 res!348268) b!555709))

(assert (= (and b!555709 res!348273) b!555713))

(assert (= (and b!555713 res!348272) b!555705))

(assert (= (and b!555705 res!348275) b!555707))

(assert (= (and b!555707 res!348274) b!555710))

(assert (= (and b!555710 res!348271) b!555712))

(assert (= (and b!555712 res!348269) b!555706))

(assert (= (and b!555706 res!348267) b!555711))

(assert (= (and b!555711 res!348270) b!555708))

(declare-fun m!533615 () Bool)

(assert (=> b!555706 m!533615))

(declare-fun m!533617 () Bool)

(assert (=> b!555712 m!533617))

(declare-fun m!533619 () Bool)

(assert (=> b!555708 m!533619))

(declare-fun m!533621 () Bool)

(assert (=> b!555708 m!533621))

(declare-fun m!533623 () Bool)

(assert (=> b!555708 m!533623))

(declare-fun m!533625 () Bool)

(assert (=> b!555708 m!533625))

(assert (=> b!555708 m!533619))

(declare-fun m!533627 () Bool)

(assert (=> b!555708 m!533627))

(declare-fun m!533629 () Bool)

(assert (=> b!555710 m!533629))

(declare-fun m!533631 () Bool)

(assert (=> b!555705 m!533631))

(assert (=> b!555711 m!533619))

(declare-fun m!533633 () Bool)

(assert (=> b!555711 m!533633))

(assert (=> b!555711 m!533619))

(assert (=> b!555711 m!533619))

(declare-fun m!533635 () Bool)

(assert (=> b!555711 m!533635))

(declare-fun m!533637 () Bool)

(assert (=> b!555711 m!533637))

(assert (=> b!555711 m!533637))

(declare-fun m!533639 () Bool)

(assert (=> b!555711 m!533639))

(declare-fun m!533641 () Bool)

(assert (=> b!555711 m!533641))

(assert (=> b!555711 m!533637))

(declare-fun m!533643 () Bool)

(assert (=> b!555711 m!533643))

(assert (=> b!555713 m!533619))

(assert (=> b!555713 m!533619))

(declare-fun m!533645 () Bool)

(assert (=> b!555713 m!533645))

(declare-fun m!533647 () Bool)

(assert (=> b!555707 m!533647))

(declare-fun m!533649 () Bool)

(assert (=> start!50826 m!533649))

(declare-fun m!533651 () Bool)

(assert (=> start!50826 m!533651))

(push 1)

