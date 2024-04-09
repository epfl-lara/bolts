; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65156 () Bool)

(assert start!65156)

(declare-fun b!735618 () Bool)

(declare-fun res!494425 () Bool)

(declare-fun e!411581 () Bool)

(assert (=> b!735618 (=> (not res!494425) (not e!411581))))

(declare-datatypes ((array!41282 0))(
  ( (array!41283 (arr!19751 (Array (_ BitVec 32) (_ BitVec 64))) (size!20172 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41282)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41282 (_ BitVec 32)) Bool)

(assert (=> b!735618 (= res!494425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!411588 () Bool)

(declare-fun b!735619 () Bool)

(declare-datatypes ((SeekEntryResult!7358 0))(
  ( (MissingZero!7358 (index!31799 (_ BitVec 32))) (Found!7358 (index!31800 (_ BitVec 32))) (Intermediate!7358 (undefined!8170 Bool) (index!31801 (_ BitVec 32)) (x!62829 (_ BitVec 32))) (Undefined!7358) (MissingVacant!7358 (index!31802 (_ BitVec 32))) )
))
(declare-fun lt!326165 () SeekEntryResult!7358)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41282 (_ BitVec 32)) SeekEntryResult!7358)

(assert (=> b!735619 (= e!411588 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19751 a!3186) j!159) a!3186 mask!3328) lt!326165))))

(declare-fun b!735620 () Bool)

(declare-fun e!411582 () Bool)

(declare-fun e!411587 () Bool)

(assert (=> b!735620 (= e!411582 e!411587)))

(declare-fun res!494433 () Bool)

(assert (=> b!735620 (=> res!494433 e!411587)))

(declare-fun lt!326164 () (_ BitVec 32))

(assert (=> b!735620 (= res!494433 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326164 #b00000000000000000000000000000000) (bvsge lt!326164 (size!20172 a!3186))))))

(declare-datatypes ((Unit!25050 0))(
  ( (Unit!25051) )
))
(declare-fun lt!326155 () Unit!25050)

(declare-fun e!411590 () Unit!25050)

(assert (=> b!735620 (= lt!326155 e!411590)))

(declare-fun c!80981 () Bool)

(declare-fun lt!326166 () Bool)

(assert (=> b!735620 (= c!80981 lt!326166)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735620 (= lt!326166 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735620 (= lt!326164 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735621 () Bool)

(declare-fun e!411580 () Bool)

(declare-fun e!411591 () Bool)

(assert (=> b!735621 (= e!411580 e!411591)))

(declare-fun res!494424 () Bool)

(assert (=> b!735621 (=> (not res!494424) (not e!411591))))

(declare-fun lt!326167 () SeekEntryResult!7358)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41282 (_ BitVec 32)) SeekEntryResult!7358)

(assert (=> b!735621 (= res!494424 (= (seekEntryOrOpen!0 (select (arr!19751 a!3186) j!159) a!3186 mask!3328) lt!326167))))

(assert (=> b!735621 (= lt!326167 (Found!7358 j!159))))

(declare-fun b!735622 () Bool)

(declare-fun res!494430 () Bool)

(declare-fun e!411586 () Bool)

(assert (=> b!735622 (=> (not res!494430) (not e!411586))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735622 (= res!494430 (validKeyInArray!0 k!2102))))

(declare-fun b!735623 () Bool)

(declare-fun res!494435 () Bool)

(assert (=> b!735623 (=> (not res!494435) (not e!411586))))

(assert (=> b!735623 (= res!494435 (validKeyInArray!0 (select (arr!19751 a!3186) j!159)))))

(declare-fun b!735625 () Bool)

(declare-fun e!411584 () Bool)

(assert (=> b!735625 (= e!411584 (not e!411582))))

(declare-fun res!494420 () Bool)

(assert (=> b!735625 (=> res!494420 e!411582)))

(declare-fun lt!326160 () SeekEntryResult!7358)

(assert (=> b!735625 (= res!494420 (or (not (is-Intermediate!7358 lt!326160)) (bvsge x!1131 (x!62829 lt!326160))))))

(declare-fun lt!326162 () SeekEntryResult!7358)

(assert (=> b!735625 (= lt!326162 (Found!7358 j!159))))

(assert (=> b!735625 e!411580))

(declare-fun res!494429 () Bool)

(assert (=> b!735625 (=> (not res!494429) (not e!411580))))

(assert (=> b!735625 (= res!494429 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326159 () Unit!25050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41282 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25050)

(assert (=> b!735625 (= lt!326159 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735626 () Bool)

(declare-fun e!411583 () Bool)

(assert (=> b!735626 (= e!411581 e!411583)))

(declare-fun res!494431 () Bool)

(assert (=> b!735626 (=> (not res!494431) (not e!411583))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735626 (= res!494431 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19751 a!3186) j!159) mask!3328) (select (arr!19751 a!3186) j!159) a!3186 mask!3328) lt!326165))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!735626 (= lt!326165 (Intermediate!7358 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735627 () Bool)

(declare-fun res!494434 () Bool)

(assert (=> b!735627 (=> (not res!494434) (not e!411583))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735627 (= res!494434 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19751 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735628 () Bool)

(declare-fun res!494422 () Bool)

(assert (=> b!735628 (=> (not res!494422) (not e!411581))))

(assert (=> b!735628 (= res!494422 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20172 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20172 a!3186))))))

(declare-fun e!411585 () Bool)

(declare-fun b!735629 () Bool)

(assert (=> b!735629 (= e!411585 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326164 (select (arr!19751 a!3186) j!159) a!3186 mask!3328) lt!326165)))))

(declare-fun b!735630 () Bool)

(declare-fun res!494436 () Bool)

(assert (=> b!735630 (=> (not res!494436) (not e!411586))))

(assert (=> b!735630 (= res!494436 (and (= (size!20172 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20172 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20172 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735631 () Bool)

(declare-fun res!494432 () Bool)

(assert (=> b!735631 (=> (not res!494432) (not e!411586))))

(declare-fun arrayContainsKey!0 (array!41282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735631 (= res!494432 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735632 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41282 (_ BitVec 32)) SeekEntryResult!7358)

(assert (=> b!735632 (= e!411588 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19751 a!3186) j!159) a!3186 mask!3328) (Found!7358 j!159)))))

(declare-fun b!735633 () Bool)

(declare-fun res!494419 () Bool)

(assert (=> b!735633 (=> res!494419 e!411587)))

(assert (=> b!735633 (= res!494419 e!411585)))

(declare-fun c!80980 () Bool)

(assert (=> b!735633 (= c!80980 lt!326166)))

(declare-fun b!735634 () Bool)

(declare-fun Unit!25052 () Unit!25050)

(assert (=> b!735634 (= e!411590 Unit!25052)))

(assert (=> b!735634 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326164 (select (arr!19751 a!3186) j!159) a!3186 mask!3328) lt!326165)))

(declare-fun b!735635 () Bool)

(assert (=> b!735635 (= e!411585 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326164 resIntermediateIndex!5 (select (arr!19751 a!3186) j!159) a!3186 mask!3328) lt!326162)))))

(declare-fun res!494423 () Bool)

(assert (=> start!65156 (=> (not res!494423) (not e!411586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65156 (= res!494423 (validMask!0 mask!3328))))

(assert (=> start!65156 e!411586))

(assert (=> start!65156 true))

(declare-fun array_inv!15525 (array!41282) Bool)

(assert (=> start!65156 (array_inv!15525 a!3186)))

(declare-fun b!735624 () Bool)

(declare-fun Unit!25053 () Unit!25050)

(assert (=> b!735624 (= e!411590 Unit!25053)))

(declare-fun lt!326161 () SeekEntryResult!7358)

(assert (=> b!735624 (= lt!326161 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19751 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735624 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326164 resIntermediateIndex!5 (select (arr!19751 a!3186) j!159) a!3186 mask!3328) lt!326162)))

(declare-fun b!735636 () Bool)

(assert (=> b!735636 (= e!411591 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19751 a!3186) j!159) a!3186 mask!3328) lt!326167))))

(declare-fun b!735637 () Bool)

(assert (=> b!735637 (= e!411583 e!411584)))

(declare-fun res!494428 () Bool)

(assert (=> b!735637 (=> (not res!494428) (not e!411584))))

(declare-fun lt!326168 () SeekEntryResult!7358)

(assert (=> b!735637 (= res!494428 (= lt!326168 lt!326160))))

(declare-fun lt!326163 () (_ BitVec 64))

(declare-fun lt!326157 () array!41282)

(assert (=> b!735637 (= lt!326160 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326163 lt!326157 mask!3328))))

(assert (=> b!735637 (= lt!326168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326163 mask!3328) lt!326163 lt!326157 mask!3328))))

(assert (=> b!735637 (= lt!326163 (select (store (arr!19751 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735637 (= lt!326157 (array!41283 (store (arr!19751 a!3186) i!1173 k!2102) (size!20172 a!3186)))))

(declare-fun b!735638 () Bool)

(assert (=> b!735638 (= e!411587 true)))

(declare-fun lt!326158 () SeekEntryResult!7358)

(assert (=> b!735638 (= lt!326158 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326164 lt!326163 lt!326157 mask!3328))))

(declare-fun b!735639 () Bool)

(assert (=> b!735639 (= e!411586 e!411581)))

(declare-fun res!494421 () Bool)

(assert (=> b!735639 (=> (not res!494421) (not e!411581))))

(declare-fun lt!326156 () SeekEntryResult!7358)

(assert (=> b!735639 (= res!494421 (or (= lt!326156 (MissingZero!7358 i!1173)) (= lt!326156 (MissingVacant!7358 i!1173))))))

(assert (=> b!735639 (= lt!326156 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!735640 () Bool)

(declare-fun res!494426 () Bool)

(assert (=> b!735640 (=> (not res!494426) (not e!411581))))

(declare-datatypes ((List!13806 0))(
  ( (Nil!13803) (Cons!13802 (h!14874 (_ BitVec 64)) (t!20129 List!13806)) )
))
(declare-fun arrayNoDuplicates!0 (array!41282 (_ BitVec 32) List!13806) Bool)

(assert (=> b!735640 (= res!494426 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13803))))

(declare-fun b!735641 () Bool)

(declare-fun res!494427 () Bool)

(assert (=> b!735641 (=> (not res!494427) (not e!411583))))

(assert (=> b!735641 (= res!494427 e!411588)))

(declare-fun c!80982 () Bool)

(assert (=> b!735641 (= c!80982 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65156 res!494423) b!735630))

(assert (= (and b!735630 res!494436) b!735623))

(assert (= (and b!735623 res!494435) b!735622))

(assert (= (and b!735622 res!494430) b!735631))

(assert (= (and b!735631 res!494432) b!735639))

(assert (= (and b!735639 res!494421) b!735618))

(assert (= (and b!735618 res!494425) b!735640))

(assert (= (and b!735640 res!494426) b!735628))

(assert (= (and b!735628 res!494422) b!735626))

(assert (= (and b!735626 res!494431) b!735627))

(assert (= (and b!735627 res!494434) b!735641))

(assert (= (and b!735641 c!80982) b!735619))

(assert (= (and b!735641 (not c!80982)) b!735632))

(assert (= (and b!735641 res!494427) b!735637))

(assert (= (and b!735637 res!494428) b!735625))

(assert (= (and b!735625 res!494429) b!735621))

(assert (= (and b!735621 res!494424) b!735636))

(assert (= (and b!735625 (not res!494420)) b!735620))

(assert (= (and b!735620 c!80981) b!735634))

(assert (= (and b!735620 (not c!80981)) b!735624))

(assert (= (and b!735620 (not res!494433)) b!735633))

(assert (= (and b!735633 c!80980) b!735629))

(assert (= (and b!735633 (not c!80980)) b!735635))

(assert (= (and b!735633 (not res!494419)) b!735638))

(declare-fun m!688021 () Bool)

(assert (=> b!735632 m!688021))

(assert (=> b!735632 m!688021))

(declare-fun m!688023 () Bool)

(assert (=> b!735632 m!688023))

(declare-fun m!688025 () Bool)

(assert (=> b!735637 m!688025))

(declare-fun m!688027 () Bool)

(assert (=> b!735637 m!688027))

(declare-fun m!688029 () Bool)

(assert (=> b!735637 m!688029))

(declare-fun m!688031 () Bool)

(assert (=> b!735637 m!688031))

(declare-fun m!688033 () Bool)

(assert (=> b!735637 m!688033))

(assert (=> b!735637 m!688031))

(assert (=> b!735634 m!688021))

(assert (=> b!735634 m!688021))

(declare-fun m!688035 () Bool)

(assert (=> b!735634 m!688035))

(assert (=> b!735636 m!688021))

(assert (=> b!735636 m!688021))

(declare-fun m!688037 () Bool)

(assert (=> b!735636 m!688037))

(declare-fun m!688039 () Bool)

(assert (=> b!735618 m!688039))

(declare-fun m!688041 () Bool)

(assert (=> b!735640 m!688041))

(assert (=> b!735621 m!688021))

(assert (=> b!735621 m!688021))

(declare-fun m!688043 () Bool)

(assert (=> b!735621 m!688043))

(assert (=> b!735635 m!688021))

(assert (=> b!735635 m!688021))

(declare-fun m!688045 () Bool)

(assert (=> b!735635 m!688045))

(declare-fun m!688047 () Bool)

(assert (=> start!65156 m!688047))

(declare-fun m!688049 () Bool)

(assert (=> start!65156 m!688049))

(declare-fun m!688051 () Bool)

(assert (=> b!735638 m!688051))

(assert (=> b!735626 m!688021))

(assert (=> b!735626 m!688021))

(declare-fun m!688053 () Bool)

(assert (=> b!735626 m!688053))

(assert (=> b!735626 m!688053))

(assert (=> b!735626 m!688021))

(declare-fun m!688055 () Bool)

(assert (=> b!735626 m!688055))

(assert (=> b!735623 m!688021))

(assert (=> b!735623 m!688021))

(declare-fun m!688057 () Bool)

(assert (=> b!735623 m!688057))

(assert (=> b!735619 m!688021))

(assert (=> b!735619 m!688021))

(declare-fun m!688059 () Bool)

(assert (=> b!735619 m!688059))

(declare-fun m!688061 () Bool)

(assert (=> b!735627 m!688061))

(assert (=> b!735629 m!688021))

(assert (=> b!735629 m!688021))

(assert (=> b!735629 m!688035))

(declare-fun m!688063 () Bool)

(assert (=> b!735625 m!688063))

(declare-fun m!688065 () Bool)

(assert (=> b!735625 m!688065))

(declare-fun m!688067 () Bool)

(assert (=> b!735631 m!688067))

(declare-fun m!688069 () Bool)

(assert (=> b!735639 m!688069))

(declare-fun m!688071 () Bool)

(assert (=> b!735622 m!688071))

(assert (=> b!735624 m!688021))

(assert (=> b!735624 m!688021))

(assert (=> b!735624 m!688023))

(assert (=> b!735624 m!688021))

(assert (=> b!735624 m!688045))

(declare-fun m!688073 () Bool)

(assert (=> b!735620 m!688073))

(push 1)

