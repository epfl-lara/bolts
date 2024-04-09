; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118368 () Bool)

(assert start!118368)

(declare-fun b!1383866 () Bool)

(declare-fun res!925527 () Bool)

(declare-fun e!784262 () Bool)

(assert (=> b!1383866 (=> (not res!925527) (not e!784262))))

(declare-datatypes ((array!94589 0))(
  ( (array!94590 (arr!45668 (Array (_ BitVec 32) (_ BitVec 64))) (size!46219 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94589)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383866 (= res!925527 (and (= (size!46219 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46219 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46219 a!2938))))))

(declare-fun b!1383867 () Bool)

(assert (=> b!1383867 (= e!784262 false)))

(declare-datatypes ((Unit!46062 0))(
  ( (Unit!46063) )
))
(declare-fun lt!608666 () Unit!46062)

(declare-fun e!784263 () Unit!46062)

(assert (=> b!1383867 (= lt!608666 e!784263)))

(declare-fun c!128615 () Bool)

(declare-fun e!784265 () Bool)

(assert (=> b!1383867 (= c!128615 e!784265)))

(declare-fun res!925521 () Bool)

(assert (=> b!1383867 (=> (not res!925521) (not e!784265))))

(assert (=> b!1383867 (= res!925521 (not (= startIndex!16 i!1065)))))

(declare-fun b!1383868 () Bool)

(declare-fun Unit!46064 () Unit!46062)

(assert (=> b!1383868 (= e!784263 Unit!46064)))

(declare-fun b!1383869 () Bool)

(declare-fun res!925526 () Bool)

(assert (=> b!1383869 (=> (not res!925526) (not e!784262))))

(declare-datatypes ((List!32376 0))(
  ( (Nil!32373) (Cons!32372 (h!33581 (_ BitVec 64)) (t!47077 List!32376)) )
))
(declare-fun arrayNoDuplicates!0 (array!94589 (_ BitVec 32) List!32376) Bool)

(assert (=> b!1383869 (= res!925526 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32373))))

(declare-fun b!1383870 () Bool)

(declare-fun res!925525 () Bool)

(assert (=> b!1383870 (=> (not res!925525) (not e!784262))))

(assert (=> b!1383870 (= res!925525 (and (not (= (select (arr!45668 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45668 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383871 () Bool)

(declare-fun lt!608667 () Unit!46062)

(assert (=> b!1383871 (= e!784263 lt!608667)))

(declare-fun lt!608668 () Unit!46062)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46062)

(assert (=> b!1383871 (= lt!608668 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10082 0))(
  ( (MissingZero!10082 (index!42698 (_ BitVec 32))) (Found!10082 (index!42699 (_ BitVec 32))) (Intermediate!10082 (undefined!10894 Bool) (index!42700 (_ BitVec 32)) (x!124214 (_ BitVec 32))) (Undefined!10082) (MissingVacant!10082 (index!42701 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94589 (_ BitVec 32)) SeekEntryResult!10082)

(assert (=> b!1383871 (= (seekEntryOrOpen!0 (select (arr!45668 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45668 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94590 (store (arr!45668 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46219 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46062)

(assert (=> b!1383871 (= lt!608667 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94589 (_ BitVec 32)) Bool)

(assert (=> b!1383871 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun res!925522 () Bool)

(assert (=> start!118368 (=> (not res!925522) (not e!784262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118368 (= res!925522 (validMask!0 mask!2987))))

(assert (=> start!118368 e!784262))

(assert (=> start!118368 true))

(declare-fun array_inv!34613 (array!94589) Bool)

(assert (=> start!118368 (array_inv!34613 a!2938)))

(declare-fun b!1383872 () Bool)

(declare-fun res!925523 () Bool)

(assert (=> b!1383872 (=> (not res!925523) (not e!784262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383872 (= res!925523 (validKeyInArray!0 (select (arr!45668 a!2938) i!1065)))))

(declare-fun b!1383873 () Bool)

(declare-fun res!925524 () Bool)

(assert (=> b!1383873 (=> (not res!925524) (not e!784262))))

(assert (=> b!1383873 (= res!925524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383874 () Bool)

(assert (=> b!1383874 (= e!784265 (validKeyInArray!0 (select (arr!45668 a!2938) startIndex!16)))))

(assert (= (and start!118368 res!925522) b!1383866))

(assert (= (and b!1383866 res!925527) b!1383872))

(assert (= (and b!1383872 res!925523) b!1383869))

(assert (= (and b!1383869 res!925526) b!1383873))

(assert (= (and b!1383873 res!925524) b!1383870))

(assert (= (and b!1383870 res!925525) b!1383867))

(assert (= (and b!1383867 res!925521) b!1383874))

(assert (= (and b!1383867 c!128615) b!1383871))

(assert (= (and b!1383867 (not c!128615)) b!1383868))

(declare-fun m!1269113 () Bool)

(assert (=> b!1383871 m!1269113))

(declare-fun m!1269115 () Bool)

(assert (=> b!1383871 m!1269115))

(assert (=> b!1383871 m!1269115))

(declare-fun m!1269117 () Bool)

(assert (=> b!1383871 m!1269117))

(declare-fun m!1269119 () Bool)

(assert (=> b!1383871 m!1269119))

(declare-fun m!1269121 () Bool)

(assert (=> b!1383871 m!1269121))

(declare-fun m!1269123 () Bool)

(assert (=> b!1383871 m!1269123))

(declare-fun m!1269125 () Bool)

(assert (=> b!1383871 m!1269125))

(assert (=> b!1383871 m!1269123))

(declare-fun m!1269127 () Bool)

(assert (=> b!1383871 m!1269127))

(declare-fun m!1269129 () Bool)

(assert (=> b!1383869 m!1269129))

(declare-fun m!1269131 () Bool)

(assert (=> b!1383873 m!1269131))

(declare-fun m!1269133 () Bool)

(assert (=> b!1383872 m!1269133))

(assert (=> b!1383872 m!1269133))

(declare-fun m!1269135 () Bool)

(assert (=> b!1383872 m!1269135))

(declare-fun m!1269137 () Bool)

(assert (=> start!118368 m!1269137))

(declare-fun m!1269139 () Bool)

(assert (=> start!118368 m!1269139))

(assert (=> b!1383874 m!1269123))

(assert (=> b!1383874 m!1269123))

(declare-fun m!1269141 () Bool)

(assert (=> b!1383874 m!1269141))

(assert (=> b!1383870 m!1269133))

(check-sat (not start!118368) (not b!1383874) (not b!1383871) (not b!1383873) (not b!1383872) (not b!1383869))
