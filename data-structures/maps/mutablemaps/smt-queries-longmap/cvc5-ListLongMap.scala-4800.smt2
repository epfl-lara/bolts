; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65878 () Bool)

(assert start!65878)

(declare-fun b!758914 () Bool)

(declare-fun res!513611 () Bool)

(declare-fun e!423133 () Bool)

(assert (=> b!758914 (=> (not res!513611) (not e!423133))))

(declare-datatypes ((array!42004 0))(
  ( (array!42005 (arr!20112 (Array (_ BitVec 32) (_ BitVec 64))) (size!20533 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42004)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!758914 (= res!513611 (and (= (size!20533 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20533 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20533 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!758915 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7719 0))(
  ( (MissingZero!7719 (index!33243 (_ BitVec 32))) (Found!7719 (index!33244 (_ BitVec 32))) (Intermediate!7719 (undefined!8531 Bool) (index!33245 (_ BitVec 32)) (x!64158 (_ BitVec 32))) (Undefined!7719) (MissingVacant!7719 (index!33246 (_ BitVec 32))) )
))
(declare-fun lt!338227 () SeekEntryResult!7719)

(declare-fun e!423135 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42004 (_ BitVec 32)) SeekEntryResult!7719)

(assert (=> b!758915 (= e!423135 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20112 a!3186) j!159) a!3186 mask!3328) lt!338227))))

(declare-fun b!758916 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!338226 () SeekEntryResult!7719)

(declare-fun e!423132 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42004 (_ BitVec 32)) SeekEntryResult!7719)

(assert (=> b!758916 (= e!423132 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20112 a!3186) j!159) a!3186 mask!3328) lt!338226))))

(declare-fun b!758917 () Bool)

(declare-fun res!513614 () Bool)

(declare-fun e!423131 () Bool)

(assert (=> b!758917 (=> (not res!513614) (not e!423131))))

(assert (=> b!758917 (= res!513614 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20112 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!513604 () Bool)

(assert (=> start!65878 (=> (not res!513604) (not e!423133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65878 (= res!513604 (validMask!0 mask!3328))))

(assert (=> start!65878 e!423133))

(assert (=> start!65878 true))

(declare-fun array_inv!15886 (array!42004) Bool)

(assert (=> start!65878 (array_inv!15886 a!3186)))

(declare-fun b!758918 () Bool)

(declare-fun res!513607 () Bool)

(declare-fun e!423129 () Bool)

(assert (=> b!758918 (=> (not res!513607) (not e!423129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42004 (_ BitVec 32)) Bool)

(assert (=> b!758918 (= res!513607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758919 () Bool)

(declare-fun res!513608 () Bool)

(assert (=> b!758919 (=> (not res!513608) (not e!423129))))

(assert (=> b!758919 (= res!513608 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20533 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20533 a!3186))))))

(declare-fun b!758920 () Bool)

(declare-fun e!423128 () Bool)

(assert (=> b!758920 (= e!423131 e!423128)))

(declare-fun res!513612 () Bool)

(assert (=> b!758920 (=> (not res!513612) (not e!423128))))

(declare-fun lt!338223 () (_ BitVec 64))

(declare-fun lt!338225 () array!42004)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758920 (= res!513612 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338223 mask!3328) lt!338223 lt!338225 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338223 lt!338225 mask!3328)))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!758920 (= lt!338223 (select (store (arr!20112 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758920 (= lt!338225 (array!42005 (store (arr!20112 a!3186) i!1173 k!2102) (size!20533 a!3186)))))

(declare-fun b!758921 () Bool)

(assert (=> b!758921 (= e!423128 (not true))))

(declare-fun e!423134 () Bool)

(assert (=> b!758921 e!423134))

(declare-fun res!513610 () Bool)

(assert (=> b!758921 (=> (not res!513610) (not e!423134))))

(assert (=> b!758921 (= res!513610 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26278 0))(
  ( (Unit!26279) )
))
(declare-fun lt!338224 () Unit!26278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42004 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26278)

(assert (=> b!758921 (= lt!338224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758922 () Bool)

(assert (=> b!758922 (= e!423134 e!423135)))

(declare-fun res!513605 () Bool)

(assert (=> b!758922 (=> (not res!513605) (not e!423135))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42004 (_ BitVec 32)) SeekEntryResult!7719)

(assert (=> b!758922 (= res!513605 (= (seekEntryOrOpen!0 (select (arr!20112 a!3186) j!159) a!3186 mask!3328) lt!338227))))

(assert (=> b!758922 (= lt!338227 (Found!7719 j!159))))

(declare-fun b!758923 () Bool)

(declare-fun res!513606 () Bool)

(assert (=> b!758923 (=> (not res!513606) (not e!423133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758923 (= res!513606 (validKeyInArray!0 k!2102))))

(declare-fun b!758924 () Bool)

(declare-fun res!513601 () Bool)

(assert (=> b!758924 (=> (not res!513601) (not e!423133))))

(assert (=> b!758924 (= res!513601 (validKeyInArray!0 (select (arr!20112 a!3186) j!159)))))

(declare-fun b!758925 () Bool)

(assert (=> b!758925 (= e!423129 e!423131)))

(declare-fun res!513613 () Bool)

(assert (=> b!758925 (=> (not res!513613) (not e!423131))))

(assert (=> b!758925 (= res!513613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20112 a!3186) j!159) mask!3328) (select (arr!20112 a!3186) j!159) a!3186 mask!3328) lt!338226))))

(assert (=> b!758925 (= lt!338226 (Intermediate!7719 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758926 () Bool)

(declare-fun res!513603 () Bool)

(assert (=> b!758926 (=> (not res!513603) (not e!423133))))

(declare-fun arrayContainsKey!0 (array!42004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758926 (= res!513603 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758927 () Bool)

(assert (=> b!758927 (= e!423133 e!423129)))

(declare-fun res!513609 () Bool)

(assert (=> b!758927 (=> (not res!513609) (not e!423129))))

(declare-fun lt!338228 () SeekEntryResult!7719)

(assert (=> b!758927 (= res!513609 (or (= lt!338228 (MissingZero!7719 i!1173)) (= lt!338228 (MissingVacant!7719 i!1173))))))

(assert (=> b!758927 (= lt!338228 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!758928 () Bool)

(declare-fun res!513615 () Bool)

(assert (=> b!758928 (=> (not res!513615) (not e!423129))))

(declare-datatypes ((List!14167 0))(
  ( (Nil!14164) (Cons!14163 (h!15235 (_ BitVec 64)) (t!20490 List!14167)) )
))
(declare-fun arrayNoDuplicates!0 (array!42004 (_ BitVec 32) List!14167) Bool)

(assert (=> b!758928 (= res!513615 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14164))))

(declare-fun b!758929 () Bool)

(assert (=> b!758929 (= e!423132 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20112 a!3186) j!159) a!3186 mask!3328) (Found!7719 j!159)))))

(declare-fun b!758930 () Bool)

(declare-fun res!513602 () Bool)

(assert (=> b!758930 (=> (not res!513602) (not e!423131))))

(assert (=> b!758930 (= res!513602 e!423132)))

(declare-fun c!83037 () Bool)

(assert (=> b!758930 (= c!83037 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65878 res!513604) b!758914))

(assert (= (and b!758914 res!513611) b!758924))

(assert (= (and b!758924 res!513601) b!758923))

(assert (= (and b!758923 res!513606) b!758926))

(assert (= (and b!758926 res!513603) b!758927))

(assert (= (and b!758927 res!513609) b!758918))

(assert (= (and b!758918 res!513607) b!758928))

(assert (= (and b!758928 res!513615) b!758919))

(assert (= (and b!758919 res!513608) b!758925))

(assert (= (and b!758925 res!513613) b!758917))

(assert (= (and b!758917 res!513614) b!758930))

(assert (= (and b!758930 c!83037) b!758916))

(assert (= (and b!758930 (not c!83037)) b!758929))

(assert (= (and b!758930 res!513602) b!758920))

(assert (= (and b!758920 res!513612) b!758921))

(assert (= (and b!758921 res!513610) b!758922))

(assert (= (and b!758922 res!513605) b!758915))

(declare-fun m!706411 () Bool)

(assert (=> b!758918 m!706411))

(declare-fun m!706413 () Bool)

(assert (=> b!758921 m!706413))

(declare-fun m!706415 () Bool)

(assert (=> b!758921 m!706415))

(declare-fun m!706417 () Bool)

(assert (=> start!65878 m!706417))

(declare-fun m!706419 () Bool)

(assert (=> start!65878 m!706419))

(declare-fun m!706421 () Bool)

(assert (=> b!758916 m!706421))

(assert (=> b!758916 m!706421))

(declare-fun m!706423 () Bool)

(assert (=> b!758916 m!706423))

(declare-fun m!706425 () Bool)

(assert (=> b!758920 m!706425))

(declare-fun m!706427 () Bool)

(assert (=> b!758920 m!706427))

(declare-fun m!706429 () Bool)

(assert (=> b!758920 m!706429))

(assert (=> b!758920 m!706427))

(declare-fun m!706431 () Bool)

(assert (=> b!758920 m!706431))

(declare-fun m!706433 () Bool)

(assert (=> b!758920 m!706433))

(declare-fun m!706435 () Bool)

(assert (=> b!758927 m!706435))

(declare-fun m!706437 () Bool)

(assert (=> b!758928 m!706437))

(assert (=> b!758915 m!706421))

(assert (=> b!758915 m!706421))

(declare-fun m!706439 () Bool)

(assert (=> b!758915 m!706439))

(assert (=> b!758922 m!706421))

(assert (=> b!758922 m!706421))

(declare-fun m!706441 () Bool)

(assert (=> b!758922 m!706441))

(declare-fun m!706443 () Bool)

(assert (=> b!758926 m!706443))

(assert (=> b!758925 m!706421))

(assert (=> b!758925 m!706421))

(declare-fun m!706445 () Bool)

(assert (=> b!758925 m!706445))

(assert (=> b!758925 m!706445))

(assert (=> b!758925 m!706421))

(declare-fun m!706447 () Bool)

(assert (=> b!758925 m!706447))

(assert (=> b!758929 m!706421))

(assert (=> b!758929 m!706421))

(declare-fun m!706449 () Bool)

(assert (=> b!758929 m!706449))

(assert (=> b!758924 m!706421))

(assert (=> b!758924 m!706421))

(declare-fun m!706451 () Bool)

(assert (=> b!758924 m!706451))

(declare-fun m!706453 () Bool)

(assert (=> b!758923 m!706453))

(declare-fun m!706455 () Bool)

(assert (=> b!758917 m!706455))

(push 1)

