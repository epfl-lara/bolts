; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66266 () Bool)

(assert start!66266)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42124 0))(
  ( (array!42125 (arr!20166 (Array (_ BitVec 32) (_ BitVec 64))) (size!20587 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42124)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!425185 () Bool)

(declare-fun b!762967 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7773 0))(
  ( (MissingZero!7773 (index!33459 (_ BitVec 32))) (Found!7773 (index!33460 (_ BitVec 32))) (Intermediate!7773 (undefined!8585 Bool) (index!33461 (_ BitVec 32)) (x!64394 (_ BitVec 32))) (Undefined!7773) (MissingVacant!7773 (index!33462 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42124 (_ BitVec 32)) SeekEntryResult!7773)

(assert (=> b!762967 (= e!425185 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20166 a!3186) j!159) a!3186 mask!3328) (Found!7773 j!159)))))

(declare-fun b!762968 () Bool)

(declare-fun res!516159 () Bool)

(declare-fun e!425186 () Bool)

(assert (=> b!762968 (=> (not res!516159) (not e!425186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42124 (_ BitVec 32)) Bool)

(assert (=> b!762968 (= res!516159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762970 () Bool)

(declare-fun e!425189 () Bool)

(assert (=> b!762970 (= e!425189 e!425186)))

(declare-fun res!516157 () Bool)

(assert (=> b!762970 (=> (not res!516157) (not e!425186))))

(declare-fun lt!339674 () SeekEntryResult!7773)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762970 (= res!516157 (or (= lt!339674 (MissingZero!7773 i!1173)) (= lt!339674 (MissingVacant!7773 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42124 (_ BitVec 32)) SeekEntryResult!7773)

(assert (=> b!762970 (= lt!339674 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762971 () Bool)

(declare-fun res!516165 () Bool)

(assert (=> b!762971 (=> (not res!516165) (not e!425186))))

(declare-datatypes ((List!14221 0))(
  ( (Nil!14218) (Cons!14217 (h!15301 (_ BitVec 64)) (t!20544 List!14221)) )
))
(declare-fun arrayNoDuplicates!0 (array!42124 (_ BitVec 32) List!14221) Bool)

(assert (=> b!762971 (= res!516165 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14218))))

(declare-fun b!762972 () Bool)

(declare-fun res!516163 () Bool)

(assert (=> b!762972 (=> (not res!516163) (not e!425186))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762972 (= res!516163 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20587 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20587 a!3186))))))

(declare-fun lt!339676 () SeekEntryResult!7773)

(declare-fun b!762973 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42124 (_ BitVec 32)) SeekEntryResult!7773)

(assert (=> b!762973 (= e!425185 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20166 a!3186) j!159) a!3186 mask!3328) lt!339676))))

(declare-fun b!762974 () Bool)

(declare-fun e!425187 () Bool)

(assert (=> b!762974 (= e!425186 e!425187)))

(declare-fun res!516164 () Bool)

(assert (=> b!762974 (=> (not res!516164) (not e!425187))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762974 (= res!516164 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20166 a!3186) j!159) mask!3328) (select (arr!20166 a!3186) j!159) a!3186 mask!3328) lt!339676))))

(assert (=> b!762974 (= lt!339676 (Intermediate!7773 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762969 () Bool)

(declare-fun res!516155 () Bool)

(assert (=> b!762969 (=> (not res!516155) (not e!425187))))

(assert (=> b!762969 (= res!516155 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20166 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!516161 () Bool)

(assert (=> start!66266 (=> (not res!516161) (not e!425189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66266 (= res!516161 (validMask!0 mask!3328))))

(assert (=> start!66266 e!425189))

(assert (=> start!66266 true))

(declare-fun array_inv!15940 (array!42124) Bool)

(assert (=> start!66266 (array_inv!15940 a!3186)))

(declare-fun b!762975 () Bool)

(assert (=> b!762975 (= e!425187 false)))

(declare-fun lt!339675 () (_ BitVec 32))

(assert (=> b!762975 (= lt!339675 (toIndex!0 (select (store (arr!20166 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!762976 () Bool)

(declare-fun res!516154 () Bool)

(assert (=> b!762976 (=> (not res!516154) (not e!425189))))

(declare-fun arrayContainsKey!0 (array!42124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762976 (= res!516154 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762977 () Bool)

(declare-fun res!516160 () Bool)

(assert (=> b!762977 (=> (not res!516160) (not e!425189))))

(assert (=> b!762977 (= res!516160 (and (= (size!20587 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20587 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20587 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762978 () Bool)

(declare-fun res!516156 () Bool)

(assert (=> b!762978 (=> (not res!516156) (not e!425187))))

(assert (=> b!762978 (= res!516156 e!425185)))

(declare-fun c!83793 () Bool)

(assert (=> b!762978 (= c!83793 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762979 () Bool)

(declare-fun res!516162 () Bool)

(assert (=> b!762979 (=> (not res!516162) (not e!425189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762979 (= res!516162 (validKeyInArray!0 k!2102))))

(declare-fun b!762980 () Bool)

(declare-fun res!516158 () Bool)

(assert (=> b!762980 (=> (not res!516158) (not e!425189))))

(assert (=> b!762980 (= res!516158 (validKeyInArray!0 (select (arr!20166 a!3186) j!159)))))

(assert (= (and start!66266 res!516161) b!762977))

(assert (= (and b!762977 res!516160) b!762980))

(assert (= (and b!762980 res!516158) b!762979))

(assert (= (and b!762979 res!516162) b!762976))

(assert (= (and b!762976 res!516154) b!762970))

(assert (= (and b!762970 res!516157) b!762968))

(assert (= (and b!762968 res!516159) b!762971))

(assert (= (and b!762971 res!516165) b!762972))

(assert (= (and b!762972 res!516163) b!762974))

(assert (= (and b!762974 res!516164) b!762969))

(assert (= (and b!762969 res!516155) b!762978))

(assert (= (and b!762978 c!83793) b!762973))

(assert (= (and b!762978 (not c!83793)) b!762967))

(assert (= (and b!762978 res!516156) b!762975))

(declare-fun m!709613 () Bool)

(assert (=> b!762979 m!709613))

(declare-fun m!709615 () Bool)

(assert (=> b!762973 m!709615))

(assert (=> b!762973 m!709615))

(declare-fun m!709617 () Bool)

(assert (=> b!762973 m!709617))

(declare-fun m!709619 () Bool)

(assert (=> b!762971 m!709619))

(declare-fun m!709621 () Bool)

(assert (=> b!762969 m!709621))

(assert (=> b!762974 m!709615))

(assert (=> b!762974 m!709615))

(declare-fun m!709623 () Bool)

(assert (=> b!762974 m!709623))

(assert (=> b!762974 m!709623))

(assert (=> b!762974 m!709615))

(declare-fun m!709625 () Bool)

(assert (=> b!762974 m!709625))

(declare-fun m!709627 () Bool)

(assert (=> b!762976 m!709627))

(assert (=> b!762967 m!709615))

(assert (=> b!762967 m!709615))

(declare-fun m!709629 () Bool)

(assert (=> b!762967 m!709629))

(declare-fun m!709631 () Bool)

(assert (=> start!66266 m!709631))

(declare-fun m!709633 () Bool)

(assert (=> start!66266 m!709633))

(declare-fun m!709635 () Bool)

(assert (=> b!762970 m!709635))

(declare-fun m!709637 () Bool)

(assert (=> b!762968 m!709637))

(assert (=> b!762980 m!709615))

(assert (=> b!762980 m!709615))

(declare-fun m!709639 () Bool)

(assert (=> b!762980 m!709639))

(declare-fun m!709641 () Bool)

(assert (=> b!762975 m!709641))

(declare-fun m!709643 () Bool)

(assert (=> b!762975 m!709643))

(assert (=> b!762975 m!709643))

(declare-fun m!709645 () Bool)

(assert (=> b!762975 m!709645))

(push 1)

