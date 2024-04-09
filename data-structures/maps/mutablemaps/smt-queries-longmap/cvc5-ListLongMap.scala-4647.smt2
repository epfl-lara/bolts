; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64672 () Bool)

(assert start!64672)

(declare-fun b!728286 () Bool)

(declare-fun e!407712 () Bool)

(declare-fun e!407710 () Bool)

(assert (=> b!728286 (= e!407712 e!407710)))

(declare-fun res!488943 () Bool)

(assert (=> b!728286 (=> (not res!488943) (not e!407710))))

(declare-datatypes ((SeekEntryResult!7260 0))(
  ( (MissingZero!7260 (index!31407 (_ BitVec 32))) (Found!7260 (index!31408 (_ BitVec 32))) (Intermediate!7260 (undefined!8072 Bool) (index!31409 (_ BitVec 32)) (x!62427 (_ BitVec 32))) (Undefined!7260) (MissingVacant!7260 (index!31410 (_ BitVec 32))) )
))
(declare-fun lt!322617 () SeekEntryResult!7260)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728286 (= res!488943 (or (= lt!322617 (MissingZero!7260 i!1173)) (= lt!322617 (MissingVacant!7260 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41074 0))(
  ( (array!41075 (arr!19653 (Array (_ BitVec 32) (_ BitVec 64))) (size!20074 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41074)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41074 (_ BitVec 32)) SeekEntryResult!7260)

(assert (=> b!728286 (= lt!322617 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728287 () Bool)

(declare-fun res!488949 () Bool)

(assert (=> b!728287 (=> (not res!488949) (not e!407712))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!728287 (= res!488949 (and (= (size!20074 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20074 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20074 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728288 () Bool)

(declare-fun res!488947 () Bool)

(assert (=> b!728288 (=> (not res!488947) (not e!407712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728288 (= res!488947 (validKeyInArray!0 (select (arr!19653 a!3186) j!159)))))

(declare-fun b!728289 () Bool)

(declare-fun e!407706 () Bool)

(assert (=> b!728289 (= e!407706 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!322614 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728289 (= lt!322614 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728290 () Bool)

(declare-fun res!488951 () Bool)

(assert (=> b!728290 (=> (not res!488951) (not e!407710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41074 (_ BitVec 32)) Bool)

(assert (=> b!728290 (= res!488951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!488946 () Bool)

(assert (=> start!64672 (=> (not res!488946) (not e!407712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64672 (= res!488946 (validMask!0 mask!3328))))

(assert (=> start!64672 e!407712))

(assert (=> start!64672 true))

(declare-fun array_inv!15427 (array!41074) Bool)

(assert (=> start!64672 (array_inv!15427 a!3186)))

(declare-fun b!728291 () Bool)

(declare-fun e!407709 () Bool)

(assert (=> b!728291 (= e!407710 e!407709)))

(declare-fun res!488948 () Bool)

(assert (=> b!728291 (=> (not res!488948) (not e!407709))))

(declare-fun lt!322618 () SeekEntryResult!7260)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41074 (_ BitVec 32)) SeekEntryResult!7260)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728291 (= res!488948 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19653 a!3186) j!159) mask!3328) (select (arr!19653 a!3186) j!159) a!3186 mask!3328) lt!322618))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728291 (= lt!322618 (Intermediate!7260 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728292 () Bool)

(declare-fun e!407707 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41074 (_ BitVec 32)) SeekEntryResult!7260)

(assert (=> b!728292 (= e!407707 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19653 a!3186) j!159) a!3186 mask!3328) (Found!7260 j!159)))))

(declare-fun b!728293 () Bool)

(declare-fun res!488953 () Bool)

(assert (=> b!728293 (=> (not res!488953) (not e!407710))))

(assert (=> b!728293 (= res!488953 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20074 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20074 a!3186))))))

(declare-fun b!728294 () Bool)

(declare-fun e!407704 () Bool)

(declare-fun e!407711 () Bool)

(assert (=> b!728294 (= e!407704 e!407711)))

(declare-fun res!488950 () Bool)

(assert (=> b!728294 (=> (not res!488950) (not e!407711))))

(declare-fun lt!322616 () SeekEntryResult!7260)

(assert (=> b!728294 (= res!488950 (= (seekEntryOrOpen!0 (select (arr!19653 a!3186) j!159) a!3186 mask!3328) lt!322616))))

(assert (=> b!728294 (= lt!322616 (Found!7260 j!159))))

(declare-fun b!728295 () Bool)

(declare-fun res!488958 () Bool)

(assert (=> b!728295 (=> (not res!488958) (not e!407709))))

(assert (=> b!728295 (= res!488958 e!407707)))

(declare-fun c!80046 () Bool)

(assert (=> b!728295 (= c!80046 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728296 () Bool)

(declare-fun e!407708 () Bool)

(assert (=> b!728296 (= e!407708 (not e!407706))))

(declare-fun res!488945 () Bool)

(assert (=> b!728296 (=> res!488945 e!407706)))

(declare-fun lt!322619 () SeekEntryResult!7260)

(assert (=> b!728296 (= res!488945 (or (not (is-Intermediate!7260 lt!322619)) (bvsge x!1131 (x!62427 lt!322619))))))

(assert (=> b!728296 e!407704))

(declare-fun res!488955 () Bool)

(assert (=> b!728296 (=> (not res!488955) (not e!407704))))

(assert (=> b!728296 (= res!488955 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24838 0))(
  ( (Unit!24839) )
))
(declare-fun lt!322612 () Unit!24838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41074 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24838)

(assert (=> b!728296 (= lt!322612 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728297 () Bool)

(declare-fun res!488944 () Bool)

(assert (=> b!728297 (=> (not res!488944) (not e!407709))))

(assert (=> b!728297 (= res!488944 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19653 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728298 () Bool)

(declare-fun res!488956 () Bool)

(assert (=> b!728298 (=> (not res!488956) (not e!407710))))

(declare-datatypes ((List!13708 0))(
  ( (Nil!13705) (Cons!13704 (h!14764 (_ BitVec 64)) (t!20031 List!13708)) )
))
(declare-fun arrayNoDuplicates!0 (array!41074 (_ BitVec 32) List!13708) Bool)

(assert (=> b!728298 (= res!488956 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13705))))

(declare-fun b!728299 () Bool)

(declare-fun res!488954 () Bool)

(assert (=> b!728299 (=> (not res!488954) (not e!407712))))

(assert (=> b!728299 (= res!488954 (validKeyInArray!0 k!2102))))

(declare-fun b!728300 () Bool)

(declare-fun res!488952 () Bool)

(assert (=> b!728300 (=> (not res!488952) (not e!407712))))

(declare-fun arrayContainsKey!0 (array!41074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728300 (= res!488952 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728301 () Bool)

(assert (=> b!728301 (= e!407711 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19653 a!3186) j!159) a!3186 mask!3328) lt!322616))))

(declare-fun b!728302 () Bool)

(assert (=> b!728302 (= e!407707 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19653 a!3186) j!159) a!3186 mask!3328) lt!322618))))

(declare-fun b!728303 () Bool)

(assert (=> b!728303 (= e!407709 e!407708)))

(declare-fun res!488957 () Bool)

(assert (=> b!728303 (=> (not res!488957) (not e!407708))))

(declare-fun lt!322611 () SeekEntryResult!7260)

(assert (=> b!728303 (= res!488957 (= lt!322611 lt!322619))))

(declare-fun lt!322613 () array!41074)

(declare-fun lt!322615 () (_ BitVec 64))

(assert (=> b!728303 (= lt!322619 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322615 lt!322613 mask!3328))))

(assert (=> b!728303 (= lt!322611 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322615 mask!3328) lt!322615 lt!322613 mask!3328))))

(assert (=> b!728303 (= lt!322615 (select (store (arr!19653 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728303 (= lt!322613 (array!41075 (store (arr!19653 a!3186) i!1173 k!2102) (size!20074 a!3186)))))

(assert (= (and start!64672 res!488946) b!728287))

(assert (= (and b!728287 res!488949) b!728288))

(assert (= (and b!728288 res!488947) b!728299))

(assert (= (and b!728299 res!488954) b!728300))

(assert (= (and b!728300 res!488952) b!728286))

(assert (= (and b!728286 res!488943) b!728290))

(assert (= (and b!728290 res!488951) b!728298))

(assert (= (and b!728298 res!488956) b!728293))

(assert (= (and b!728293 res!488953) b!728291))

(assert (= (and b!728291 res!488948) b!728297))

(assert (= (and b!728297 res!488944) b!728295))

(assert (= (and b!728295 c!80046) b!728302))

(assert (= (and b!728295 (not c!80046)) b!728292))

(assert (= (and b!728295 res!488958) b!728303))

(assert (= (and b!728303 res!488957) b!728296))

(assert (= (and b!728296 res!488955) b!728294))

(assert (= (and b!728294 res!488950) b!728301))

(assert (= (and b!728296 (not res!488945)) b!728289))

(declare-fun m!682141 () Bool)

(assert (=> b!728294 m!682141))

(assert (=> b!728294 m!682141))

(declare-fun m!682143 () Bool)

(assert (=> b!728294 m!682143))

(declare-fun m!682145 () Bool)

(assert (=> start!64672 m!682145))

(declare-fun m!682147 () Bool)

(assert (=> start!64672 m!682147))

(declare-fun m!682149 () Bool)

(assert (=> b!728299 m!682149))

(assert (=> b!728288 m!682141))

(assert (=> b!728288 m!682141))

(declare-fun m!682151 () Bool)

(assert (=> b!728288 m!682151))

(declare-fun m!682153 () Bool)

(assert (=> b!728289 m!682153))

(declare-fun m!682155 () Bool)

(assert (=> b!728298 m!682155))

(declare-fun m!682157 () Bool)

(assert (=> b!728303 m!682157))

(declare-fun m!682159 () Bool)

(assert (=> b!728303 m!682159))

(declare-fun m!682161 () Bool)

(assert (=> b!728303 m!682161))

(declare-fun m!682163 () Bool)

(assert (=> b!728303 m!682163))

(assert (=> b!728303 m!682159))

(declare-fun m!682165 () Bool)

(assert (=> b!728303 m!682165))

(declare-fun m!682167 () Bool)

(assert (=> b!728296 m!682167))

(declare-fun m!682169 () Bool)

(assert (=> b!728296 m!682169))

(assert (=> b!728292 m!682141))

(assert (=> b!728292 m!682141))

(declare-fun m!682171 () Bool)

(assert (=> b!728292 m!682171))

(assert (=> b!728291 m!682141))

(assert (=> b!728291 m!682141))

(declare-fun m!682173 () Bool)

(assert (=> b!728291 m!682173))

(assert (=> b!728291 m!682173))

(assert (=> b!728291 m!682141))

(declare-fun m!682175 () Bool)

(assert (=> b!728291 m!682175))

(declare-fun m!682177 () Bool)

(assert (=> b!728290 m!682177))

(declare-fun m!682179 () Bool)

(assert (=> b!728300 m!682179))

(assert (=> b!728302 m!682141))

(assert (=> b!728302 m!682141))

(declare-fun m!682181 () Bool)

(assert (=> b!728302 m!682181))

(assert (=> b!728301 m!682141))

(assert (=> b!728301 m!682141))

(declare-fun m!682183 () Bool)

(assert (=> b!728301 m!682183))

(declare-fun m!682185 () Bool)

(assert (=> b!728286 m!682185))

(declare-fun m!682187 () Bool)

(assert (=> b!728297 m!682187))

(push 1)

