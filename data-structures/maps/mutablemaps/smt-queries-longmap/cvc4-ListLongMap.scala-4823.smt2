; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66300 () Bool)

(assert start!66300)

(declare-fun res!516750 () Bool)

(declare-fun e!425440 () Bool)

(assert (=> start!66300 (=> (not res!516750) (not e!425440))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66300 (= res!516750 (validMask!0 mask!3328))))

(assert (=> start!66300 e!425440))

(assert (=> start!66300 true))

(declare-datatypes ((array!42158 0))(
  ( (array!42159 (arr!20183 (Array (_ BitVec 32) (_ BitVec 64))) (size!20604 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42158)

(declare-fun array_inv!15957 (array!42158) Bool)

(assert (=> start!66300 (array_inv!15957 a!3186)))

(declare-fun b!763663 () Bool)

(declare-fun res!516758 () Bool)

(declare-fun e!425441 () Bool)

(assert (=> b!763663 (=> (not res!516758) (not e!425441))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763663 (= res!516758 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20183 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763664 () Bool)

(declare-fun e!425443 () Bool)

(assert (=> b!763664 (= e!425443 e!425441)))

(declare-fun res!516751 () Bool)

(assert (=> b!763664 (=> (not res!516751) (not e!425441))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7790 0))(
  ( (MissingZero!7790 (index!33527 (_ BitVec 32))) (Found!7790 (index!33528 (_ BitVec 32))) (Intermediate!7790 (undefined!8602 Bool) (index!33529 (_ BitVec 32)) (x!64451 (_ BitVec 32))) (Undefined!7790) (MissingVacant!7790 (index!33530 (_ BitVec 32))) )
))
(declare-fun lt!339906 () SeekEntryResult!7790)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42158 (_ BitVec 32)) SeekEntryResult!7790)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763664 (= res!516751 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20183 a!3186) j!159) mask!3328) (select (arr!20183 a!3186) j!159) a!3186 mask!3328) lt!339906))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763664 (= lt!339906 (Intermediate!7790 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763665 () Bool)

(declare-fun res!516759 () Bool)

(assert (=> b!763665 (=> (not res!516759) (not e!425441))))

(declare-fun e!425444 () Bool)

(assert (=> b!763665 (= res!516759 e!425444)))

(declare-fun c!83844 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!763665 (= c!83844 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763666 () Bool)

(declare-fun res!516755 () Bool)

(assert (=> b!763666 (=> (not res!516755) (not e!425440))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763666 (= res!516755 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!763667 () Bool)

(assert (=> b!763667 (= e!425444 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20183 a!3186) j!159) a!3186 mask!3328) lt!339906))))

(declare-fun b!763668 () Bool)

(assert (=> b!763668 (= e!425440 e!425443)))

(declare-fun res!516749 () Bool)

(assert (=> b!763668 (=> (not res!516749) (not e!425443))))

(declare-fun lt!339910 () SeekEntryResult!7790)

(assert (=> b!763668 (= res!516749 (or (= lt!339910 (MissingZero!7790 i!1173)) (= lt!339910 (MissingVacant!7790 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42158 (_ BitVec 32)) SeekEntryResult!7790)

(assert (=> b!763668 (= lt!339910 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763669 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42158 (_ BitVec 32)) SeekEntryResult!7790)

(assert (=> b!763669 (= e!425444 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20183 a!3186) j!159) a!3186 mask!3328) (Found!7790 j!159)))))

(declare-fun b!763670 () Bool)

(assert (=> b!763670 (= e!425441 false)))

(declare-fun lt!339908 () (_ BitVec 64))

(declare-fun lt!339909 () array!42158)

(declare-fun lt!339905 () SeekEntryResult!7790)

(assert (=> b!763670 (= lt!339905 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339908 lt!339909 mask!3328))))

(declare-fun lt!339907 () SeekEntryResult!7790)

(assert (=> b!763670 (= lt!339907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339908 mask!3328) lt!339908 lt!339909 mask!3328))))

(assert (=> b!763670 (= lt!339908 (select (store (arr!20183 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763670 (= lt!339909 (array!42159 (store (arr!20183 a!3186) i!1173 k!2102) (size!20604 a!3186)))))

(declare-fun b!763671 () Bool)

(declare-fun res!516752 () Bool)

(assert (=> b!763671 (=> (not res!516752) (not e!425440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763671 (= res!516752 (validKeyInArray!0 (select (arr!20183 a!3186) j!159)))))

(declare-fun b!763672 () Bool)

(declare-fun res!516754 () Bool)

(assert (=> b!763672 (=> (not res!516754) (not e!425443))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42158 (_ BitVec 32)) Bool)

(assert (=> b!763672 (= res!516754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763673 () Bool)

(declare-fun res!516756 () Bool)

(assert (=> b!763673 (=> (not res!516756) (not e!425440))))

(assert (=> b!763673 (= res!516756 (validKeyInArray!0 k!2102))))

(declare-fun b!763674 () Bool)

(declare-fun res!516753 () Bool)

(assert (=> b!763674 (=> (not res!516753) (not e!425443))))

(declare-datatypes ((List!14238 0))(
  ( (Nil!14235) (Cons!14234 (h!15318 (_ BitVec 64)) (t!20561 List!14238)) )
))
(declare-fun arrayNoDuplicates!0 (array!42158 (_ BitVec 32) List!14238) Bool)

(assert (=> b!763674 (= res!516753 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14235))))

(declare-fun b!763675 () Bool)

(declare-fun res!516748 () Bool)

(assert (=> b!763675 (=> (not res!516748) (not e!425440))))

(assert (=> b!763675 (= res!516748 (and (= (size!20604 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20604 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20604 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763676 () Bool)

(declare-fun res!516757 () Bool)

(assert (=> b!763676 (=> (not res!516757) (not e!425443))))

(assert (=> b!763676 (= res!516757 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20604 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20604 a!3186))))))

(assert (= (and start!66300 res!516750) b!763675))

(assert (= (and b!763675 res!516748) b!763671))

(assert (= (and b!763671 res!516752) b!763673))

(assert (= (and b!763673 res!516756) b!763666))

(assert (= (and b!763666 res!516755) b!763668))

(assert (= (and b!763668 res!516749) b!763672))

(assert (= (and b!763672 res!516754) b!763674))

(assert (= (and b!763674 res!516753) b!763676))

(assert (= (and b!763676 res!516757) b!763664))

(assert (= (and b!763664 res!516751) b!763663))

(assert (= (and b!763663 res!516758) b!763665))

(assert (= (and b!763665 c!83844) b!763667))

(assert (= (and b!763665 (not c!83844)) b!763669))

(assert (= (and b!763665 res!516759) b!763670))

(declare-fun m!710187 () Bool)

(assert (=> b!763673 m!710187))

(declare-fun m!710189 () Bool)

(assert (=> b!763669 m!710189))

(assert (=> b!763669 m!710189))

(declare-fun m!710191 () Bool)

(assert (=> b!763669 m!710191))

(declare-fun m!710193 () Bool)

(assert (=> b!763672 m!710193))

(declare-fun m!710195 () Bool)

(assert (=> b!763666 m!710195))

(declare-fun m!710197 () Bool)

(assert (=> b!763674 m!710197))

(assert (=> b!763667 m!710189))

(assert (=> b!763667 m!710189))

(declare-fun m!710199 () Bool)

(assert (=> b!763667 m!710199))

(declare-fun m!710201 () Bool)

(assert (=> start!66300 m!710201))

(declare-fun m!710203 () Bool)

(assert (=> start!66300 m!710203))

(declare-fun m!710205 () Bool)

(assert (=> b!763663 m!710205))

(assert (=> b!763664 m!710189))

(assert (=> b!763664 m!710189))

(declare-fun m!710207 () Bool)

(assert (=> b!763664 m!710207))

(assert (=> b!763664 m!710207))

(assert (=> b!763664 m!710189))

(declare-fun m!710209 () Bool)

(assert (=> b!763664 m!710209))

(declare-fun m!710211 () Bool)

(assert (=> b!763668 m!710211))

(assert (=> b!763671 m!710189))

(assert (=> b!763671 m!710189))

(declare-fun m!710213 () Bool)

(assert (=> b!763671 m!710213))

(declare-fun m!710215 () Bool)

(assert (=> b!763670 m!710215))

(declare-fun m!710217 () Bool)

(assert (=> b!763670 m!710217))

(declare-fun m!710219 () Bool)

(assert (=> b!763670 m!710219))

(declare-fun m!710221 () Bool)

(assert (=> b!763670 m!710221))

(assert (=> b!763670 m!710217))

(declare-fun m!710223 () Bool)

(assert (=> b!763670 m!710223))

(push 1)

