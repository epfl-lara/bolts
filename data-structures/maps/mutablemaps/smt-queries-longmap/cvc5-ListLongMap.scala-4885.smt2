; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67372 () Bool)

(assert start!67372)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42556 0))(
  ( (array!42557 (arr!20367 (Array (_ BitVec 32) (_ BitVec 64))) (size!20788 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42556)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!433333 () Bool)

(declare-fun b!778843 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7974 0))(
  ( (MissingZero!7974 (index!34263 (_ BitVec 32))) (Found!7974 (index!34264 (_ BitVec 32))) (Intermediate!7974 (undefined!8786 Bool) (index!34265 (_ BitVec 32)) (x!65240 (_ BitVec 32))) (Undefined!7974) (MissingVacant!7974 (index!34266 (_ BitVec 32))) )
))
(declare-fun lt!347028 () SeekEntryResult!7974)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42556 (_ BitVec 32)) SeekEntryResult!7974)

(assert (=> b!778843 (= e!433333 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20367 a!3186) j!159) a!3186 mask!3328) lt!347028))))

(declare-fun b!778844 () Bool)

(declare-fun e!433327 () Bool)

(declare-fun e!433331 () Bool)

(assert (=> b!778844 (= e!433327 (not e!433331))))

(declare-fun res!527030 () Bool)

(assert (=> b!778844 (=> res!527030 e!433331)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!347025 () SeekEntryResult!7974)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!778844 (= res!527030 (or (not (is-Intermediate!7974 lt!347025)) (bvslt x!1131 (x!65240 lt!347025)) (not (= x!1131 (x!65240 lt!347025))) (not (= index!1321 (index!34265 lt!347025)))))))

(declare-fun e!433326 () Bool)

(assert (=> b!778844 e!433326))

(declare-fun res!527028 () Bool)

(assert (=> b!778844 (=> (not res!527028) (not e!433326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42556 (_ BitVec 32)) Bool)

(assert (=> b!778844 (= res!527028 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26842 0))(
  ( (Unit!26843) )
))
(declare-fun lt!347026 () Unit!26842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26842)

(assert (=> b!778844 (= lt!347026 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778845 () Bool)

(declare-fun res!527029 () Bool)

(declare-fun e!433328 () Bool)

(assert (=> b!778845 (=> (not res!527029) (not e!433328))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778845 (= res!527029 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!778846 () Bool)

(declare-fun res!527026 () Bool)

(declare-fun e!433332 () Bool)

(assert (=> b!778846 (=> (not res!527026) (not e!433332))))

(assert (=> b!778846 (= res!527026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!527031 () Bool)

(assert (=> start!67372 (=> (not res!527031) (not e!433328))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67372 (= res!527031 (validMask!0 mask!3328))))

(assert (=> start!67372 e!433328))

(assert (=> start!67372 true))

(declare-fun array_inv!16141 (array!42556) Bool)

(assert (=> start!67372 (array_inv!16141 a!3186)))

(declare-fun b!778847 () Bool)

(assert (=> b!778847 (= e!433328 e!433332)))

(declare-fun res!527032 () Bool)

(assert (=> b!778847 (=> (not res!527032) (not e!433332))))

(declare-fun lt!347024 () SeekEntryResult!7974)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!778847 (= res!527032 (or (= lt!347024 (MissingZero!7974 i!1173)) (= lt!347024 (MissingVacant!7974 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42556 (_ BitVec 32)) SeekEntryResult!7974)

(assert (=> b!778847 (= lt!347024 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!778848 () Bool)

(assert (=> b!778848 (= e!433331 true)))

(declare-fun lt!347021 () SeekEntryResult!7974)

(assert (=> b!778848 (= lt!347021 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20367 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778849 () Bool)

(declare-fun res!527017 () Bool)

(assert (=> b!778849 (=> (not res!527017) (not e!433332))))

(declare-datatypes ((List!14422 0))(
  ( (Nil!14419) (Cons!14418 (h!15532 (_ BitVec 64)) (t!20745 List!14422)) )
))
(declare-fun arrayNoDuplicates!0 (array!42556 (_ BitVec 32) List!14422) Bool)

(assert (=> b!778849 (= res!527017 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14419))))

(declare-fun b!778850 () Bool)

(declare-fun res!527024 () Bool)

(assert (=> b!778850 (=> (not res!527024) (not e!433328))))

(assert (=> b!778850 (= res!527024 (and (= (size!20788 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20788 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20788 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778851 () Bool)

(declare-fun e!433329 () Bool)

(assert (=> b!778851 (= e!433329 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20367 a!3186) j!159) a!3186 mask!3328) (Found!7974 j!159)))))

(declare-fun b!778852 () Bool)

(declare-fun e!433330 () Bool)

(assert (=> b!778852 (= e!433332 e!433330)))

(declare-fun res!527022 () Bool)

(assert (=> b!778852 (=> (not res!527022) (not e!433330))))

(declare-fun lt!347027 () SeekEntryResult!7974)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42556 (_ BitVec 32)) SeekEntryResult!7974)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778852 (= res!527022 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20367 a!3186) j!159) mask!3328) (select (arr!20367 a!3186) j!159) a!3186 mask!3328) lt!347027))))

(assert (=> b!778852 (= lt!347027 (Intermediate!7974 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778853 () Bool)

(declare-fun res!527023 () Bool)

(assert (=> b!778853 (=> (not res!527023) (not e!433332))))

(assert (=> b!778853 (= res!527023 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20788 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20788 a!3186))))))

(declare-fun b!778854 () Bool)

(declare-fun res!527020 () Bool)

(assert (=> b!778854 (=> (not res!527020) (not e!433328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778854 (= res!527020 (validKeyInArray!0 (select (arr!20367 a!3186) j!159)))))

(declare-fun b!778855 () Bool)

(assert (=> b!778855 (= e!433326 e!433333)))

(declare-fun res!527027 () Bool)

(assert (=> b!778855 (=> (not res!527027) (not e!433333))))

(assert (=> b!778855 (= res!527027 (= (seekEntryOrOpen!0 (select (arr!20367 a!3186) j!159) a!3186 mask!3328) lt!347028))))

(assert (=> b!778855 (= lt!347028 (Found!7974 j!159))))

(declare-fun b!778856 () Bool)

(declare-fun res!527021 () Bool)

(assert (=> b!778856 (=> (not res!527021) (not e!433330))))

(assert (=> b!778856 (= res!527021 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20367 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778857 () Bool)

(declare-fun res!527018 () Bool)

(assert (=> b!778857 (=> (not res!527018) (not e!433328))))

(assert (=> b!778857 (= res!527018 (validKeyInArray!0 k!2102))))

(declare-fun b!778858 () Bool)

(assert (=> b!778858 (= e!433329 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20367 a!3186) j!159) a!3186 mask!3328) lt!347027))))

(declare-fun b!778859 () Bool)

(assert (=> b!778859 (= e!433330 e!433327)))

(declare-fun res!527025 () Bool)

(assert (=> b!778859 (=> (not res!527025) (not e!433327))))

(declare-fun lt!347023 () SeekEntryResult!7974)

(assert (=> b!778859 (= res!527025 (= lt!347023 lt!347025))))

(declare-fun lt!347022 () (_ BitVec 64))

(declare-fun lt!347029 () array!42556)

(assert (=> b!778859 (= lt!347025 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347022 lt!347029 mask!3328))))

(assert (=> b!778859 (= lt!347023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347022 mask!3328) lt!347022 lt!347029 mask!3328))))

(assert (=> b!778859 (= lt!347022 (select (store (arr!20367 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!778859 (= lt!347029 (array!42557 (store (arr!20367 a!3186) i!1173 k!2102) (size!20788 a!3186)))))

(declare-fun b!778860 () Bool)

(declare-fun res!527019 () Bool)

(assert (=> b!778860 (=> (not res!527019) (not e!433330))))

(assert (=> b!778860 (= res!527019 e!433329)))

(declare-fun c!86316 () Bool)

(assert (=> b!778860 (= c!86316 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67372 res!527031) b!778850))

(assert (= (and b!778850 res!527024) b!778854))

(assert (= (and b!778854 res!527020) b!778857))

(assert (= (and b!778857 res!527018) b!778845))

(assert (= (and b!778845 res!527029) b!778847))

(assert (= (and b!778847 res!527032) b!778846))

(assert (= (and b!778846 res!527026) b!778849))

(assert (= (and b!778849 res!527017) b!778853))

(assert (= (and b!778853 res!527023) b!778852))

(assert (= (and b!778852 res!527022) b!778856))

(assert (= (and b!778856 res!527021) b!778860))

(assert (= (and b!778860 c!86316) b!778858))

(assert (= (and b!778860 (not c!86316)) b!778851))

(assert (= (and b!778860 res!527019) b!778859))

(assert (= (and b!778859 res!527025) b!778844))

(assert (= (and b!778844 res!527028) b!778855))

(assert (= (and b!778855 res!527027) b!778843))

(assert (= (and b!778844 (not res!527030)) b!778848))

(declare-fun m!722491 () Bool)

(assert (=> b!778845 m!722491))

(declare-fun m!722493 () Bool)

(assert (=> b!778847 m!722493))

(declare-fun m!722495 () Bool)

(assert (=> b!778843 m!722495))

(assert (=> b!778843 m!722495))

(declare-fun m!722497 () Bool)

(assert (=> b!778843 m!722497))

(assert (=> b!778848 m!722495))

(assert (=> b!778848 m!722495))

(declare-fun m!722499 () Bool)

(assert (=> b!778848 m!722499))

(assert (=> b!778851 m!722495))

(assert (=> b!778851 m!722495))

(assert (=> b!778851 m!722499))

(declare-fun m!722501 () Bool)

(assert (=> b!778859 m!722501))

(declare-fun m!722503 () Bool)

(assert (=> b!778859 m!722503))

(declare-fun m!722505 () Bool)

(assert (=> b!778859 m!722505))

(declare-fun m!722507 () Bool)

(assert (=> b!778859 m!722507))

(assert (=> b!778859 m!722505))

(declare-fun m!722509 () Bool)

(assert (=> b!778859 m!722509))

(declare-fun m!722511 () Bool)

(assert (=> b!778844 m!722511))

(declare-fun m!722513 () Bool)

(assert (=> b!778844 m!722513))

(declare-fun m!722515 () Bool)

(assert (=> b!778846 m!722515))

(assert (=> b!778852 m!722495))

(assert (=> b!778852 m!722495))

(declare-fun m!722517 () Bool)

(assert (=> b!778852 m!722517))

(assert (=> b!778852 m!722517))

(assert (=> b!778852 m!722495))

(declare-fun m!722519 () Bool)

(assert (=> b!778852 m!722519))

(assert (=> b!778854 m!722495))

(assert (=> b!778854 m!722495))

(declare-fun m!722521 () Bool)

(assert (=> b!778854 m!722521))

(assert (=> b!778858 m!722495))

(assert (=> b!778858 m!722495))

(declare-fun m!722523 () Bool)

(assert (=> b!778858 m!722523))

(assert (=> b!778855 m!722495))

(assert (=> b!778855 m!722495))

(declare-fun m!722525 () Bool)

(assert (=> b!778855 m!722525))

(declare-fun m!722527 () Bool)

(assert (=> b!778849 m!722527))

(declare-fun m!722529 () Bool)

(assert (=> b!778856 m!722529))

(declare-fun m!722531 () Bool)

(assert (=> start!67372 m!722531))

(declare-fun m!722533 () Bool)

(assert (=> start!67372 m!722533))

(declare-fun m!722535 () Bool)

(assert (=> b!778857 m!722535))

(push 1)

