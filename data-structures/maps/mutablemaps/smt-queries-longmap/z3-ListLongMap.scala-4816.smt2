; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66256 () Bool)

(assert start!66256)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42114 0))(
  ( (array!42115 (arr!20161 (Array (_ BitVec 32) (_ BitVec 64))) (size!20582 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42114)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!762761 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!425114 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7768 0))(
  ( (MissingZero!7768 (index!33439 (_ BitVec 32))) (Found!7768 (index!33440 (_ BitVec 32))) (Intermediate!7768 (undefined!8580 Bool) (index!33441 (_ BitVec 32)) (x!64373 (_ BitVec 32))) (Undefined!7768) (MissingVacant!7768 (index!33442 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42114 (_ BitVec 32)) SeekEntryResult!7768)

(assert (=> b!762761 (= e!425114 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20161 a!3186) j!159) a!3186 mask!3328) (Found!7768 j!159))))))

(declare-fun b!762762 () Bool)

(declare-fun res!515978 () Bool)

(declare-fun e!425111 () Bool)

(assert (=> b!762762 (=> (not res!515978) (not e!425111))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762762 (= res!515978 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20161 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762764 () Bool)

(declare-fun e!425112 () Bool)

(declare-fun e!425113 () Bool)

(assert (=> b!762764 (= e!425112 e!425113)))

(declare-fun res!515983 () Bool)

(assert (=> b!762764 (=> (not res!515983) (not e!425113))))

(declare-fun lt!339629 () SeekEntryResult!7768)

(assert (=> b!762764 (= res!515983 (or (= lt!339629 (MissingZero!7768 i!1173)) (= lt!339629 (MissingVacant!7768 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42114 (_ BitVec 32)) SeekEntryResult!7768)

(assert (=> b!762764 (= lt!339629 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!762765 () Bool)

(declare-fun res!515981 () Bool)

(assert (=> b!762765 (=> (not res!515981) (not e!425113))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762765 (= res!515981 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20582 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20582 a!3186))))))

(declare-fun b!762766 () Bool)

(declare-fun res!515988 () Bool)

(assert (=> b!762766 (=> (not res!515988) (not e!425112))))

(assert (=> b!762766 (= res!515988 (and (= (size!20582 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20582 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20582 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762767 () Bool)

(declare-fun res!515979 () Bool)

(assert (=> b!762767 (=> (not res!515979) (not e!425112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762767 (= res!515979 (validKeyInArray!0 k0!2102))))

(declare-fun b!762768 () Bool)

(declare-fun res!515982 () Bool)

(assert (=> b!762768 (=> (not res!515982) (not e!425112))))

(declare-fun arrayContainsKey!0 (array!42114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762768 (= res!515982 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762769 () Bool)

(assert (=> b!762769 (= e!425111 false)))

(declare-fun lt!339631 () Bool)

(assert (=> b!762769 (= lt!339631 e!425114)))

(declare-fun c!83778 () Bool)

(assert (=> b!762769 (= c!83778 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762770 () Bool)

(assert (=> b!762770 (= e!425113 e!425111)))

(declare-fun res!515980 () Bool)

(assert (=> b!762770 (=> (not res!515980) (not e!425111))))

(declare-fun lt!339630 () SeekEntryResult!7768)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42114 (_ BitVec 32)) SeekEntryResult!7768)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762770 (= res!515980 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20161 a!3186) j!159) mask!3328) (select (arr!20161 a!3186) j!159) a!3186 mask!3328) lt!339630))))

(assert (=> b!762770 (= lt!339630 (Intermediate!7768 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762771 () Bool)

(declare-fun res!515984 () Bool)

(assert (=> b!762771 (=> (not res!515984) (not e!425113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42114 (_ BitVec 32)) Bool)

(assert (=> b!762771 (= res!515984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762772 () Bool)

(declare-fun res!515985 () Bool)

(assert (=> b!762772 (=> (not res!515985) (not e!425112))))

(assert (=> b!762772 (= res!515985 (validKeyInArray!0 (select (arr!20161 a!3186) j!159)))))

(declare-fun b!762773 () Bool)

(declare-fun res!515986 () Bool)

(assert (=> b!762773 (=> (not res!515986) (not e!425113))))

(declare-datatypes ((List!14216 0))(
  ( (Nil!14213) (Cons!14212 (h!15296 (_ BitVec 64)) (t!20539 List!14216)) )
))
(declare-fun arrayNoDuplicates!0 (array!42114 (_ BitVec 32) List!14216) Bool)

(assert (=> b!762773 (= res!515986 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14213))))

(declare-fun res!515987 () Bool)

(assert (=> start!66256 (=> (not res!515987) (not e!425112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66256 (= res!515987 (validMask!0 mask!3328))))

(assert (=> start!66256 e!425112))

(assert (=> start!66256 true))

(declare-fun array_inv!15935 (array!42114) Bool)

(assert (=> start!66256 (array_inv!15935 a!3186)))

(declare-fun b!762763 () Bool)

(assert (=> b!762763 (= e!425114 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20161 a!3186) j!159) a!3186 mask!3328) lt!339630)))))

(assert (= (and start!66256 res!515987) b!762766))

(assert (= (and b!762766 res!515988) b!762772))

(assert (= (and b!762772 res!515985) b!762767))

(assert (= (and b!762767 res!515979) b!762768))

(assert (= (and b!762768 res!515982) b!762764))

(assert (= (and b!762764 res!515983) b!762771))

(assert (= (and b!762771 res!515984) b!762773))

(assert (= (and b!762773 res!515986) b!762765))

(assert (= (and b!762765 res!515981) b!762770))

(assert (= (and b!762770 res!515980) b!762762))

(assert (= (and b!762762 res!515978) b!762769))

(assert (= (and b!762769 c!83778) b!762763))

(assert (= (and b!762769 (not c!83778)) b!762761))

(declare-fun m!709455 () Bool)

(assert (=> b!762764 m!709455))

(declare-fun m!709457 () Bool)

(assert (=> b!762768 m!709457))

(declare-fun m!709459 () Bool)

(assert (=> b!762767 m!709459))

(declare-fun m!709461 () Bool)

(assert (=> b!762761 m!709461))

(assert (=> b!762761 m!709461))

(declare-fun m!709463 () Bool)

(assert (=> b!762761 m!709463))

(declare-fun m!709465 () Bool)

(assert (=> b!762762 m!709465))

(declare-fun m!709467 () Bool)

(assert (=> b!762771 m!709467))

(assert (=> b!762763 m!709461))

(assert (=> b!762763 m!709461))

(declare-fun m!709469 () Bool)

(assert (=> b!762763 m!709469))

(assert (=> b!762772 m!709461))

(assert (=> b!762772 m!709461))

(declare-fun m!709471 () Bool)

(assert (=> b!762772 m!709471))

(declare-fun m!709473 () Bool)

(assert (=> b!762773 m!709473))

(assert (=> b!762770 m!709461))

(assert (=> b!762770 m!709461))

(declare-fun m!709475 () Bool)

(assert (=> b!762770 m!709475))

(assert (=> b!762770 m!709475))

(assert (=> b!762770 m!709461))

(declare-fun m!709477 () Bool)

(assert (=> b!762770 m!709477))

(declare-fun m!709479 () Bool)

(assert (=> start!66256 m!709479))

(declare-fun m!709481 () Bool)

(assert (=> start!66256 m!709481))

(check-sat (not b!762770) (not b!762768) (not b!762767) (not b!762763) (not b!762761) (not b!762773) (not b!762764) (not start!66256) (not b!762772) (not b!762771))
(check-sat)
