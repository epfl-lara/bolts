; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66250 () Bool)

(assert start!66250)

(declare-datatypes ((array!42108 0))(
  ( (array!42109 (arr!20158 (Array (_ BitVec 32) (_ BitVec 64))) (size!20579 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42108)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!425067 () Bool)

(declare-fun b!762644 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7765 0))(
  ( (MissingZero!7765 (index!33427 (_ BitVec 32))) (Found!7765 (index!33428 (_ BitVec 32))) (Intermediate!7765 (undefined!8577 Bool) (index!33429 (_ BitVec 32)) (x!64362 (_ BitVec 32))) (Undefined!7765) (MissingVacant!7765 (index!33430 (_ BitVec 32))) )
))
(declare-fun lt!339602 () SeekEntryResult!7765)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42108 (_ BitVec 32)) SeekEntryResult!7765)

(assert (=> b!762644 (= e!425067 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20158 a!3186) j!159) a!3186 mask!3328) lt!339602)))))

(declare-fun b!762645 () Bool)

(declare-fun res!515889 () Bool)

(declare-fun e!425065 () Bool)

(assert (=> b!762645 (=> (not res!515889) (not e!425065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42108 (_ BitVec 32)) Bool)

(assert (=> b!762645 (= res!515889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762646 () Bool)

(declare-fun res!515886 () Bool)

(declare-fun e!425069 () Bool)

(assert (=> b!762646 (=> (not res!515886) (not e!425069))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762646 (= res!515886 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762647 () Bool)

(declare-fun res!515885 () Bool)

(assert (=> b!762647 (=> (not res!515885) (not e!425065))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762647 (= res!515885 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20579 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20579 a!3186))))))

(declare-fun b!762648 () Bool)

(declare-fun e!425068 () Bool)

(assert (=> b!762648 (= e!425065 e!425068)))

(declare-fun res!515879 () Bool)

(assert (=> b!762648 (=> (not res!515879) (not e!425068))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762648 (= res!515879 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20158 a!3186) j!159) mask!3328) (select (arr!20158 a!3186) j!159) a!3186 mask!3328) lt!339602))))

(assert (=> b!762648 (= lt!339602 (Intermediate!7765 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762649 () Bool)

(declare-fun res!515888 () Bool)

(assert (=> b!762649 (=> (not res!515888) (not e!425069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762649 (= res!515888 (validKeyInArray!0 (select (arr!20158 a!3186) j!159)))))

(declare-fun b!762651 () Bool)

(declare-fun res!515887 () Bool)

(assert (=> b!762651 (=> (not res!515887) (not e!425068))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762651 (= res!515887 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20158 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762652 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42108 (_ BitVec 32)) SeekEntryResult!7765)

(assert (=> b!762652 (= e!425067 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20158 a!3186) j!159) a!3186 mask!3328) (Found!7765 j!159))))))

(declare-fun b!762653 () Bool)

(declare-fun res!515881 () Bool)

(assert (=> b!762653 (=> (not res!515881) (not e!425069))))

(assert (=> b!762653 (= res!515881 (validKeyInArray!0 k0!2102))))

(declare-fun b!762654 () Bool)

(declare-fun res!515884 () Bool)

(assert (=> b!762654 (=> (not res!515884) (not e!425069))))

(assert (=> b!762654 (= res!515884 (and (= (size!20579 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20579 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20579 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762650 () Bool)

(assert (=> b!762650 (= e!425069 e!425065)))

(declare-fun res!515883 () Bool)

(assert (=> b!762650 (=> (not res!515883) (not e!425065))))

(declare-fun lt!339604 () SeekEntryResult!7765)

(assert (=> b!762650 (= res!515883 (or (= lt!339604 (MissingZero!7765 i!1173)) (= lt!339604 (MissingVacant!7765 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42108 (_ BitVec 32)) SeekEntryResult!7765)

(assert (=> b!762650 (= lt!339604 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!515880 () Bool)

(assert (=> start!66250 (=> (not res!515880) (not e!425069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66250 (= res!515880 (validMask!0 mask!3328))))

(assert (=> start!66250 e!425069))

(assert (=> start!66250 true))

(declare-fun array_inv!15932 (array!42108) Bool)

(assert (=> start!66250 (array_inv!15932 a!3186)))

(declare-fun b!762655 () Bool)

(declare-fun res!515882 () Bool)

(assert (=> b!762655 (=> (not res!515882) (not e!425065))))

(declare-datatypes ((List!14213 0))(
  ( (Nil!14210) (Cons!14209 (h!15293 (_ BitVec 64)) (t!20536 List!14213)) )
))
(declare-fun arrayNoDuplicates!0 (array!42108 (_ BitVec 32) List!14213) Bool)

(assert (=> b!762655 (= res!515882 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14210))))

(declare-fun b!762656 () Bool)

(assert (=> b!762656 (= e!425068 false)))

(declare-fun lt!339603 () Bool)

(assert (=> b!762656 (= lt!339603 e!425067)))

(declare-fun c!83769 () Bool)

(assert (=> b!762656 (= c!83769 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66250 res!515880) b!762654))

(assert (= (and b!762654 res!515884) b!762649))

(assert (= (and b!762649 res!515888) b!762653))

(assert (= (and b!762653 res!515881) b!762646))

(assert (= (and b!762646 res!515886) b!762650))

(assert (= (and b!762650 res!515883) b!762645))

(assert (= (and b!762645 res!515889) b!762655))

(assert (= (and b!762655 res!515882) b!762647))

(assert (= (and b!762647 res!515885) b!762648))

(assert (= (and b!762648 res!515879) b!762651))

(assert (= (and b!762651 res!515887) b!762656))

(assert (= (and b!762656 c!83769) b!762644))

(assert (= (and b!762656 (not c!83769)) b!762652))

(declare-fun m!709371 () Bool)

(assert (=> b!762655 m!709371))

(declare-fun m!709373 () Bool)

(assert (=> b!762651 m!709373))

(declare-fun m!709375 () Bool)

(assert (=> b!762653 m!709375))

(declare-fun m!709377 () Bool)

(assert (=> b!762649 m!709377))

(assert (=> b!762649 m!709377))

(declare-fun m!709379 () Bool)

(assert (=> b!762649 m!709379))

(assert (=> b!762652 m!709377))

(assert (=> b!762652 m!709377))

(declare-fun m!709381 () Bool)

(assert (=> b!762652 m!709381))

(declare-fun m!709383 () Bool)

(assert (=> start!66250 m!709383))

(declare-fun m!709385 () Bool)

(assert (=> start!66250 m!709385))

(assert (=> b!762644 m!709377))

(assert (=> b!762644 m!709377))

(declare-fun m!709387 () Bool)

(assert (=> b!762644 m!709387))

(declare-fun m!709389 () Bool)

(assert (=> b!762650 m!709389))

(assert (=> b!762648 m!709377))

(assert (=> b!762648 m!709377))

(declare-fun m!709391 () Bool)

(assert (=> b!762648 m!709391))

(assert (=> b!762648 m!709391))

(assert (=> b!762648 m!709377))

(declare-fun m!709393 () Bool)

(assert (=> b!762648 m!709393))

(declare-fun m!709395 () Bool)

(assert (=> b!762645 m!709395))

(declare-fun m!709397 () Bool)

(assert (=> b!762646 m!709397))

(check-sat (not b!762649) (not b!762655) (not b!762653) (not b!762652) (not b!762648) (not b!762646) (not b!762644) (not b!762645) (not start!66250) (not b!762650))
(check-sat)
