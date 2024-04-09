; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66298 () Bool)

(assert start!66298)

(declare-fun b!763621 () Bool)

(declare-fun res!516714 () Bool)

(declare-fun e!425429 () Bool)

(assert (=> b!763621 (=> (not res!516714) (not e!425429))))

(declare-datatypes ((array!42156 0))(
  ( (array!42157 (arr!20182 (Array (_ BitVec 32) (_ BitVec 64))) (size!20603 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42156)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763621 (= res!516714 (validKeyInArray!0 (select (arr!20182 a!3186) j!159)))))

(declare-fun b!763622 () Bool)

(declare-fun e!425425 () Bool)

(assert (=> b!763622 (= e!425429 e!425425)))

(declare-fun res!516721 () Bool)

(assert (=> b!763622 (=> (not res!516721) (not e!425425))))

(declare-datatypes ((SeekEntryResult!7789 0))(
  ( (MissingZero!7789 (index!33523 (_ BitVec 32))) (Found!7789 (index!33524 (_ BitVec 32))) (Intermediate!7789 (undefined!8601 Bool) (index!33525 (_ BitVec 32)) (x!64450 (_ BitVec 32))) (Undefined!7789) (MissingVacant!7789 (index!33526 (_ BitVec 32))) )
))
(declare-fun lt!339890 () SeekEntryResult!7789)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763622 (= res!516721 (or (= lt!339890 (MissingZero!7789 i!1173)) (= lt!339890 (MissingVacant!7789 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42156 (_ BitVec 32)) SeekEntryResult!7789)

(assert (=> b!763622 (= lt!339890 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!763623 () Bool)

(declare-fun e!425428 () Bool)

(assert (=> b!763623 (= e!425428 false)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!339892 () array!42156)

(declare-fun lt!339891 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!339888 () SeekEntryResult!7789)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42156 (_ BitVec 32)) SeekEntryResult!7789)

(assert (=> b!763623 (= lt!339888 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339891 lt!339892 mask!3328))))

(declare-fun lt!339887 () SeekEntryResult!7789)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763623 (= lt!339887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339891 mask!3328) lt!339891 lt!339892 mask!3328))))

(assert (=> b!763623 (= lt!339891 (select (store (arr!20182 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!763623 (= lt!339892 (array!42157 (store (arr!20182 a!3186) i!1173 k0!2102) (size!20603 a!3186)))))

(declare-fun e!425426 () Bool)

(declare-fun lt!339889 () SeekEntryResult!7789)

(declare-fun b!763624 () Bool)

(assert (=> b!763624 (= e!425426 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20182 a!3186) j!159) a!3186 mask!3328) lt!339889))))

(declare-fun b!763625 () Bool)

(declare-fun res!516722 () Bool)

(assert (=> b!763625 (=> (not res!516722) (not e!425425))))

(declare-datatypes ((List!14237 0))(
  ( (Nil!14234) (Cons!14233 (h!15317 (_ BitVec 64)) (t!20560 List!14237)) )
))
(declare-fun arrayNoDuplicates!0 (array!42156 (_ BitVec 32) List!14237) Bool)

(assert (=> b!763625 (= res!516722 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14234))))

(declare-fun b!763626 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42156 (_ BitVec 32)) SeekEntryResult!7789)

(assert (=> b!763626 (= e!425426 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20182 a!3186) j!159) a!3186 mask!3328) (Found!7789 j!159)))))

(declare-fun b!763627 () Bool)

(declare-fun res!516713 () Bool)

(assert (=> b!763627 (=> (not res!516713) (not e!425429))))

(assert (=> b!763627 (= res!516713 (validKeyInArray!0 k0!2102))))

(declare-fun b!763628 () Bool)

(declare-fun res!516723 () Bool)

(assert (=> b!763628 (=> (not res!516723) (not e!425429))))

(assert (=> b!763628 (= res!516723 (and (= (size!20603 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20603 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20603 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763629 () Bool)

(declare-fun res!516715 () Bool)

(assert (=> b!763629 (=> (not res!516715) (not e!425428))))

(assert (=> b!763629 (= res!516715 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20182 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!516712 () Bool)

(assert (=> start!66298 (=> (not res!516712) (not e!425429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66298 (= res!516712 (validMask!0 mask!3328))))

(assert (=> start!66298 e!425429))

(assert (=> start!66298 true))

(declare-fun array_inv!15956 (array!42156) Bool)

(assert (=> start!66298 (array_inv!15956 a!3186)))

(declare-fun b!763630 () Bool)

(declare-fun res!516720 () Bool)

(assert (=> b!763630 (=> (not res!516720) (not e!425425))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763630 (= res!516720 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20603 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20603 a!3186))))))

(declare-fun b!763631 () Bool)

(declare-fun res!516719 () Bool)

(assert (=> b!763631 (=> (not res!516719) (not e!425425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42156 (_ BitVec 32)) Bool)

(assert (=> b!763631 (= res!516719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763632 () Bool)

(assert (=> b!763632 (= e!425425 e!425428)))

(declare-fun res!516717 () Bool)

(assert (=> b!763632 (=> (not res!516717) (not e!425428))))

(assert (=> b!763632 (= res!516717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20182 a!3186) j!159) mask!3328) (select (arr!20182 a!3186) j!159) a!3186 mask!3328) lt!339889))))

(assert (=> b!763632 (= lt!339889 (Intermediate!7789 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763633 () Bool)

(declare-fun res!516716 () Bool)

(assert (=> b!763633 (=> (not res!516716) (not e!425429))))

(declare-fun arrayContainsKey!0 (array!42156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763633 (= res!516716 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763634 () Bool)

(declare-fun res!516718 () Bool)

(assert (=> b!763634 (=> (not res!516718) (not e!425428))))

(assert (=> b!763634 (= res!516718 e!425426)))

(declare-fun c!83841 () Bool)

(assert (=> b!763634 (= c!83841 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66298 res!516712) b!763628))

(assert (= (and b!763628 res!516723) b!763621))

(assert (= (and b!763621 res!516714) b!763627))

(assert (= (and b!763627 res!516713) b!763633))

(assert (= (and b!763633 res!516716) b!763622))

(assert (= (and b!763622 res!516721) b!763631))

(assert (= (and b!763631 res!516719) b!763625))

(assert (= (and b!763625 res!516722) b!763630))

(assert (= (and b!763630 res!516720) b!763632))

(assert (= (and b!763632 res!516717) b!763629))

(assert (= (and b!763629 res!516715) b!763634))

(assert (= (and b!763634 c!83841) b!763624))

(assert (= (and b!763634 (not c!83841)) b!763626))

(assert (= (and b!763634 res!516718) b!763623))

(declare-fun m!710149 () Bool)

(assert (=> b!763631 m!710149))

(declare-fun m!710151 () Bool)

(assert (=> b!763623 m!710151))

(declare-fun m!710153 () Bool)

(assert (=> b!763623 m!710153))

(declare-fun m!710155 () Bool)

(assert (=> b!763623 m!710155))

(declare-fun m!710157 () Bool)

(assert (=> b!763623 m!710157))

(declare-fun m!710159 () Bool)

(assert (=> b!763623 m!710159))

(assert (=> b!763623 m!710155))

(declare-fun m!710161 () Bool)

(assert (=> b!763625 m!710161))

(declare-fun m!710163 () Bool)

(assert (=> b!763629 m!710163))

(declare-fun m!710165 () Bool)

(assert (=> b!763626 m!710165))

(assert (=> b!763626 m!710165))

(declare-fun m!710167 () Bool)

(assert (=> b!763626 m!710167))

(assert (=> b!763632 m!710165))

(assert (=> b!763632 m!710165))

(declare-fun m!710169 () Bool)

(assert (=> b!763632 m!710169))

(assert (=> b!763632 m!710169))

(assert (=> b!763632 m!710165))

(declare-fun m!710171 () Bool)

(assert (=> b!763632 m!710171))

(declare-fun m!710173 () Bool)

(assert (=> b!763633 m!710173))

(assert (=> b!763624 m!710165))

(assert (=> b!763624 m!710165))

(declare-fun m!710175 () Bool)

(assert (=> b!763624 m!710175))

(declare-fun m!710177 () Bool)

(assert (=> b!763627 m!710177))

(declare-fun m!710179 () Bool)

(assert (=> start!66298 m!710179))

(declare-fun m!710181 () Bool)

(assert (=> start!66298 m!710181))

(declare-fun m!710183 () Bool)

(assert (=> b!763622 m!710183))

(assert (=> b!763621 m!710165))

(assert (=> b!763621 m!710165))

(declare-fun m!710185 () Bool)

(assert (=> b!763621 m!710185))

(check-sat (not b!763622) (not b!763627) (not b!763624) (not b!763633) (not start!66298) (not b!763626) (not b!763631) (not b!763621) (not b!763625) (not b!763623) (not b!763632))
(check-sat)
