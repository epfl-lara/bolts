; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65214 () Bool)

(assert start!65214)

(declare-fun b!737706 () Bool)

(declare-datatypes ((Unit!25166 0))(
  ( (Unit!25167) )
))
(declare-fun e!412627 () Unit!25166)

(declare-fun Unit!25168 () Unit!25166)

(assert (=> b!737706 (= e!412627 Unit!25168)))

(declare-datatypes ((SeekEntryResult!7387 0))(
  ( (MissingZero!7387 (index!31915 (_ BitVec 32))) (Found!7387 (index!31916 (_ BitVec 32))) (Intermediate!7387 (undefined!8199 Bool) (index!31917 (_ BitVec 32)) (x!62938 (_ BitVec 32))) (Undefined!7387) (MissingVacant!7387 (index!31918 (_ BitVec 32))) )
))
(declare-fun lt!327383 () SeekEntryResult!7387)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41340 0))(
  ( (array!41341 (arr!19780 (Array (_ BitVec 32) (_ BitVec 64))) (size!20201 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41340)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41340 (_ BitVec 32)) SeekEntryResult!7387)

(assert (=> b!737706 (= lt!327383 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19780 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327386 () (_ BitVec 32))

(declare-fun lt!327374 () SeekEntryResult!7387)

(assert (=> b!737706 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327386 resIntermediateIndex!5 (select (arr!19780 a!3186) j!159) a!3186 mask!3328) lt!327374)))

(declare-fun lt!327376 () SeekEntryResult!7387)

(declare-fun b!737707 () Bool)

(declare-fun e!412635 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41340 (_ BitVec 32)) SeekEntryResult!7387)

(assert (=> b!737707 (= e!412635 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19780 a!3186) j!159) a!3186 mask!3328) lt!327376))))

(declare-fun b!737708 () Bool)

(declare-fun e!412629 () Bool)

(declare-fun e!412628 () Bool)

(assert (=> b!737708 (= e!412629 (not e!412628))))

(declare-fun res!495985 () Bool)

(assert (=> b!737708 (=> res!495985 e!412628)))

(declare-fun lt!327377 () SeekEntryResult!7387)

(get-info :version)

(assert (=> b!737708 (= res!495985 (or (not ((_ is Intermediate!7387) lt!327377)) (bvsge x!1131 (x!62938 lt!327377))))))

(assert (=> b!737708 (= lt!327374 (Found!7387 j!159))))

(declare-fun e!412624 () Bool)

(assert (=> b!737708 e!412624))

(declare-fun res!495999 () Bool)

(assert (=> b!737708 (=> (not res!495999) (not e!412624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41340 (_ BitVec 32)) Bool)

(assert (=> b!737708 (= res!495999 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327382 () Unit!25166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25166)

(assert (=> b!737708 (= lt!327382 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737709 () Bool)

(declare-fun res!495997 () Bool)

(declare-fun e!412625 () Bool)

(assert (=> b!737709 (=> (not res!495997) (not e!412625))))

(declare-datatypes ((List!13835 0))(
  ( (Nil!13832) (Cons!13831 (h!14903 (_ BitVec 64)) (t!20158 List!13835)) )
))
(declare-fun arrayNoDuplicates!0 (array!41340 (_ BitVec 32) List!13835) Bool)

(assert (=> b!737709 (= res!495997 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13832))))

(declare-fun b!737710 () Bool)

(declare-fun e!412631 () Bool)

(assert (=> b!737710 (= e!412625 e!412631)))

(declare-fun res!495990 () Bool)

(assert (=> b!737710 (=> (not res!495990) (not e!412631))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737710 (= res!495990 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19780 a!3186) j!159) mask!3328) (select (arr!19780 a!3186) j!159) a!3186 mask!3328) lt!327376))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737710 (= lt!327376 (Intermediate!7387 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737712 () Bool)

(declare-fun e!412634 () Bool)

(assert (=> b!737712 (= e!412634 e!412625)))

(declare-fun res!496000 () Bool)

(assert (=> b!737712 (=> (not res!496000) (not e!412625))))

(declare-fun lt!327380 () SeekEntryResult!7387)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737712 (= res!496000 (or (= lt!327380 (MissingZero!7387 i!1173)) (= lt!327380 (MissingVacant!7387 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41340 (_ BitVec 32)) SeekEntryResult!7387)

(assert (=> b!737712 (= lt!327380 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!737713 () Bool)

(declare-fun res!495986 () Bool)

(assert (=> b!737713 (=> (not res!495986) (not e!412631))))

(assert (=> b!737713 (= res!495986 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19780 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737714 () Bool)

(declare-fun res!495988 () Bool)

(assert (=> b!737714 (=> (not res!495988) (not e!412634))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737714 (= res!495988 (validKeyInArray!0 k0!2102))))

(declare-fun e!412633 () Bool)

(declare-fun b!737715 () Bool)

(assert (=> b!737715 (= e!412633 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327386 resIntermediateIndex!5 (select (arr!19780 a!3186) j!159) a!3186 mask!3328) lt!327374)))))

(declare-fun b!737716 () Bool)

(declare-fun res!496002 () Bool)

(assert (=> b!737716 (=> (not res!496002) (not e!412631))))

(assert (=> b!737716 (= res!496002 e!412635)))

(declare-fun c!81242 () Bool)

(assert (=> b!737716 (= c!81242 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737717 () Bool)

(declare-fun res!495996 () Bool)

(assert (=> b!737717 (=> (not res!495996) (not e!412625))))

(assert (=> b!737717 (= res!495996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737718 () Bool)

(declare-fun res!495992 () Bool)

(declare-fun e!412630 () Bool)

(assert (=> b!737718 (=> res!495992 e!412630)))

(assert (=> b!737718 (= res!495992 e!412633)))

(declare-fun c!81243 () Bool)

(declare-fun lt!327379 () Bool)

(assert (=> b!737718 (= c!81243 lt!327379)))

(declare-fun b!737719 () Bool)

(declare-fun e!412632 () Bool)

(assert (=> b!737719 (= e!412624 e!412632)))

(declare-fun res!496001 () Bool)

(assert (=> b!737719 (=> (not res!496001) (not e!412632))))

(declare-fun lt!327384 () SeekEntryResult!7387)

(assert (=> b!737719 (= res!496001 (= (seekEntryOrOpen!0 (select (arr!19780 a!3186) j!159) a!3186 mask!3328) lt!327384))))

(assert (=> b!737719 (= lt!327384 (Found!7387 j!159))))

(declare-fun b!737720 () Bool)

(declare-fun res!495993 () Bool)

(assert (=> b!737720 (=> (not res!495993) (not e!412634))))

(assert (=> b!737720 (= res!495993 (validKeyInArray!0 (select (arr!19780 a!3186) j!159)))))

(declare-fun b!737721 () Bool)

(declare-fun res!495994 () Bool)

(assert (=> b!737721 (=> (not res!495994) (not e!412625))))

(assert (=> b!737721 (= res!495994 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20201 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20201 a!3186))))))

(declare-fun b!737722 () Bool)

(assert (=> b!737722 (= e!412628 e!412630)))

(declare-fun res!495995 () Bool)

(assert (=> b!737722 (=> res!495995 e!412630)))

(assert (=> b!737722 (= res!495995 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327386 #b00000000000000000000000000000000) (bvsge lt!327386 (size!20201 a!3186))))))

(declare-fun lt!327378 () Unit!25166)

(assert (=> b!737722 (= lt!327378 e!412627)))

(declare-fun c!81241 () Bool)

(assert (=> b!737722 (= c!81241 lt!327379)))

(assert (=> b!737722 (= lt!327379 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737722 (= lt!327386 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737723 () Bool)

(declare-fun res!495987 () Bool)

(assert (=> b!737723 (=> (not res!495987) (not e!412634))))

(assert (=> b!737723 (= res!495987 (and (= (size!20201 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20201 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20201 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737724 () Bool)

(assert (=> b!737724 (= e!412631 e!412629)))

(declare-fun res!495989 () Bool)

(assert (=> b!737724 (=> (not res!495989) (not e!412629))))

(declare-fun lt!327381 () SeekEntryResult!7387)

(assert (=> b!737724 (= res!495989 (= lt!327381 lt!327377))))

(declare-fun lt!327375 () (_ BitVec 64))

(declare-fun lt!327385 () array!41340)

(assert (=> b!737724 (= lt!327377 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327375 lt!327385 mask!3328))))

(assert (=> b!737724 (= lt!327381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327375 mask!3328) lt!327375 lt!327385 mask!3328))))

(assert (=> b!737724 (= lt!327375 (select (store (arr!19780 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!737724 (= lt!327385 (array!41341 (store (arr!19780 a!3186) i!1173 k0!2102) (size!20201 a!3186)))))

(declare-fun b!737725 () Bool)

(assert (=> b!737725 (= e!412635 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19780 a!3186) j!159) a!3186 mask!3328) (Found!7387 j!159)))))

(declare-fun res!495998 () Bool)

(assert (=> start!65214 (=> (not res!495998) (not e!412634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65214 (= res!495998 (validMask!0 mask!3328))))

(assert (=> start!65214 e!412634))

(assert (=> start!65214 true))

(declare-fun array_inv!15554 (array!41340) Bool)

(assert (=> start!65214 (array_inv!15554 a!3186)))

(declare-fun b!737711 () Bool)

(assert (=> b!737711 (= e!412633 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327386 (select (arr!19780 a!3186) j!159) a!3186 mask!3328) lt!327376)))))

(declare-fun b!737726 () Bool)

(declare-fun Unit!25169 () Unit!25166)

(assert (=> b!737726 (= e!412627 Unit!25169)))

(assert (=> b!737726 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327386 (select (arr!19780 a!3186) j!159) a!3186 mask!3328) lt!327376)))

(declare-fun b!737727 () Bool)

(assert (=> b!737727 (= e!412630 true)))

(declare-fun lt!327373 () SeekEntryResult!7387)

(assert (=> b!737727 (= lt!327373 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327386 lt!327375 lt!327385 mask!3328))))

(declare-fun b!737728 () Bool)

(assert (=> b!737728 (= e!412632 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19780 a!3186) j!159) a!3186 mask!3328) lt!327384))))

(declare-fun b!737729 () Bool)

(declare-fun res!495991 () Bool)

(assert (=> b!737729 (=> (not res!495991) (not e!412634))))

(declare-fun arrayContainsKey!0 (array!41340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737729 (= res!495991 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65214 res!495998) b!737723))

(assert (= (and b!737723 res!495987) b!737720))

(assert (= (and b!737720 res!495993) b!737714))

(assert (= (and b!737714 res!495988) b!737729))

(assert (= (and b!737729 res!495991) b!737712))

(assert (= (and b!737712 res!496000) b!737717))

(assert (= (and b!737717 res!495996) b!737709))

(assert (= (and b!737709 res!495997) b!737721))

(assert (= (and b!737721 res!495994) b!737710))

(assert (= (and b!737710 res!495990) b!737713))

(assert (= (and b!737713 res!495986) b!737716))

(assert (= (and b!737716 c!81242) b!737707))

(assert (= (and b!737716 (not c!81242)) b!737725))

(assert (= (and b!737716 res!496002) b!737724))

(assert (= (and b!737724 res!495989) b!737708))

(assert (= (and b!737708 res!495999) b!737719))

(assert (= (and b!737719 res!496001) b!737728))

(assert (= (and b!737708 (not res!495985)) b!737722))

(assert (= (and b!737722 c!81241) b!737726))

(assert (= (and b!737722 (not c!81241)) b!737706))

(assert (= (and b!737722 (not res!495995)) b!737718))

(assert (= (and b!737718 c!81243) b!737711))

(assert (= (and b!737718 (not c!81243)) b!737715))

(assert (= (and b!737718 (not res!495992)) b!737727))

(declare-fun m!689587 () Bool)

(assert (=> b!737722 m!689587))

(declare-fun m!689589 () Bool)

(assert (=> b!737720 m!689589))

(assert (=> b!737720 m!689589))

(declare-fun m!689591 () Bool)

(assert (=> b!737720 m!689591))

(assert (=> b!737725 m!689589))

(assert (=> b!737725 m!689589))

(declare-fun m!689593 () Bool)

(assert (=> b!737725 m!689593))

(declare-fun m!689595 () Bool)

(assert (=> b!737727 m!689595))

(assert (=> b!737707 m!689589))

(assert (=> b!737707 m!689589))

(declare-fun m!689597 () Bool)

(assert (=> b!737707 m!689597))

(assert (=> b!737728 m!689589))

(assert (=> b!737728 m!689589))

(declare-fun m!689599 () Bool)

(assert (=> b!737728 m!689599))

(declare-fun m!689601 () Bool)

(assert (=> b!737708 m!689601))

(declare-fun m!689603 () Bool)

(assert (=> b!737708 m!689603))

(declare-fun m!689605 () Bool)

(assert (=> b!737709 m!689605))

(declare-fun m!689607 () Bool)

(assert (=> b!737712 m!689607))

(declare-fun m!689609 () Bool)

(assert (=> b!737717 m!689609))

(assert (=> b!737706 m!689589))

(assert (=> b!737706 m!689589))

(assert (=> b!737706 m!689593))

(assert (=> b!737706 m!689589))

(declare-fun m!689611 () Bool)

(assert (=> b!737706 m!689611))

(assert (=> b!737726 m!689589))

(assert (=> b!737726 m!689589))

(declare-fun m!689613 () Bool)

(assert (=> b!737726 m!689613))

(assert (=> b!737719 m!689589))

(assert (=> b!737719 m!689589))

(declare-fun m!689615 () Bool)

(assert (=> b!737719 m!689615))

(declare-fun m!689617 () Bool)

(assert (=> b!737729 m!689617))

(assert (=> b!737711 m!689589))

(assert (=> b!737711 m!689589))

(assert (=> b!737711 m!689613))

(assert (=> b!737715 m!689589))

(assert (=> b!737715 m!689589))

(assert (=> b!737715 m!689611))

(declare-fun m!689619 () Bool)

(assert (=> start!65214 m!689619))

(declare-fun m!689621 () Bool)

(assert (=> start!65214 m!689621))

(declare-fun m!689623 () Bool)

(assert (=> b!737713 m!689623))

(declare-fun m!689625 () Bool)

(assert (=> b!737714 m!689625))

(declare-fun m!689627 () Bool)

(assert (=> b!737724 m!689627))

(declare-fun m!689629 () Bool)

(assert (=> b!737724 m!689629))

(assert (=> b!737724 m!689629))

(declare-fun m!689631 () Bool)

(assert (=> b!737724 m!689631))

(declare-fun m!689633 () Bool)

(assert (=> b!737724 m!689633))

(declare-fun m!689635 () Bool)

(assert (=> b!737724 m!689635))

(assert (=> b!737710 m!689589))

(assert (=> b!737710 m!689589))

(declare-fun m!689637 () Bool)

(assert (=> b!737710 m!689637))

(assert (=> b!737710 m!689637))

(assert (=> b!737710 m!689589))

(declare-fun m!689639 () Bool)

(assert (=> b!737710 m!689639))

(check-sat (not start!65214) (not b!737714) (not b!737712) (not b!737724) (not b!737707) (not b!737709) (not b!737719) (not b!737722) (not b!737728) (not b!737729) (not b!737711) (not b!737706) (not b!737727) (not b!737708) (not b!737726) (not b!737720) (not b!737710) (not b!737715) (not b!737717) (not b!737725))
(check-sat)
