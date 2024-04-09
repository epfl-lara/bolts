; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45400 () Bool)

(assert start!45400)

(declare-fun b!498543 () Bool)

(declare-fun res!300759 () Bool)

(declare-fun e!292188 () Bool)

(assert (=> b!498543 (=> (not res!300759) (not e!292188))))

(declare-datatypes ((array!32185 0))(
  ( (array!32186 (arr!15471 (Array (_ BitVec 32) (_ BitVec 64))) (size!15835 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32185)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32185 (_ BitVec 32)) Bool)

(assert (=> b!498543 (= res!300759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498544 () Bool)

(declare-fun res!300761 () Bool)

(declare-fun e!292195 () Bool)

(assert (=> b!498544 (=> res!300761 e!292195)))

(declare-datatypes ((SeekEntryResult!3945 0))(
  ( (MissingZero!3945 (index!17962 (_ BitVec 32))) (Found!3945 (index!17963 (_ BitVec 32))) (Intermediate!3945 (undefined!4757 Bool) (index!17964 (_ BitVec 32)) (x!47041 (_ BitVec 32))) (Undefined!3945) (MissingVacant!3945 (index!17965 (_ BitVec 32))) )
))
(declare-fun lt!225943 () SeekEntryResult!3945)

(assert (=> b!498544 (= res!300761 (or (undefined!4757 lt!225943) (not (is-Intermediate!3945 lt!225943))))))

(declare-fun b!498545 () Bool)

(declare-fun res!300749 () Bool)

(declare-fun e!292190 () Bool)

(assert (=> b!498545 (=> (not res!300749) (not e!292190))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498545 (= res!300749 (validKeyInArray!0 k!2280))))

(declare-fun b!498546 () Bool)

(declare-fun e!292194 () Bool)

(assert (=> b!498546 (= e!292195 e!292194)))

(declare-fun res!300751 () Bool)

(assert (=> b!498546 (=> res!300751 e!292194)))

(declare-fun lt!225945 () (_ BitVec 32))

(assert (=> b!498546 (= res!300751 (or (bvsgt #b00000000000000000000000000000000 (x!47041 lt!225943)) (bvsgt (x!47041 lt!225943) #b01111111111111111111111111111110) (bvslt lt!225945 #b00000000000000000000000000000000) (bvsge lt!225945 (size!15835 a!3235)) (bvslt (index!17964 lt!225943) #b00000000000000000000000000000000) (bvsge (index!17964 lt!225943) (size!15835 a!3235)) (not (= lt!225943 (Intermediate!3945 false (index!17964 lt!225943) (x!47041 lt!225943))))))))

(assert (=> b!498546 (and (or (= (select (arr!15471 a!3235) (index!17964 lt!225943)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15471 a!3235) (index!17964 lt!225943)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15471 a!3235) (index!17964 lt!225943)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15471 a!3235) (index!17964 lt!225943)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14870 0))(
  ( (Unit!14871) )
))
(declare-fun lt!225942 () Unit!14870)

(declare-fun e!292192 () Unit!14870)

(assert (=> b!498546 (= lt!225942 e!292192)))

(declare-fun c!59174 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498546 (= c!59174 (= (select (arr!15471 a!3235) (index!17964 lt!225943)) (select (arr!15471 a!3235) j!176)))))

(assert (=> b!498546 (and (bvslt (x!47041 lt!225943) #b01111111111111111111111111111110) (or (= (select (arr!15471 a!3235) (index!17964 lt!225943)) (select (arr!15471 a!3235) j!176)) (= (select (arr!15471 a!3235) (index!17964 lt!225943)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15471 a!3235) (index!17964 lt!225943)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498547 () Bool)

(declare-fun e!292191 () Bool)

(assert (=> b!498547 (= e!292191 false)))

(declare-fun b!498548 () Bool)

(assert (=> b!498548 (= e!292190 e!292188)))

(declare-fun res!300757 () Bool)

(assert (=> b!498548 (=> (not res!300757) (not e!292188))))

(declare-fun lt!225941 () SeekEntryResult!3945)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498548 (= res!300757 (or (= lt!225941 (MissingZero!3945 i!1204)) (= lt!225941 (MissingVacant!3945 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32185 (_ BitVec 32)) SeekEntryResult!3945)

(assert (=> b!498548 (= lt!225941 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498549 () Bool)

(assert (=> b!498549 (= e!292188 (not e!292195))))

(declare-fun res!300750 () Bool)

(assert (=> b!498549 (=> res!300750 e!292195)))

(declare-fun lt!225948 () array!32185)

(declare-fun lt!225950 () (_ BitVec 32))

(declare-fun lt!225946 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32185 (_ BitVec 32)) SeekEntryResult!3945)

(assert (=> b!498549 (= res!300750 (= lt!225943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225950 lt!225946 lt!225948 mask!3524)))))

(assert (=> b!498549 (= lt!225943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225945 (select (arr!15471 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498549 (= lt!225950 (toIndex!0 lt!225946 mask!3524))))

(assert (=> b!498549 (= lt!225946 (select (store (arr!15471 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498549 (= lt!225945 (toIndex!0 (select (arr!15471 a!3235) j!176) mask!3524))))

(assert (=> b!498549 (= lt!225948 (array!32186 (store (arr!15471 a!3235) i!1204 k!2280) (size!15835 a!3235)))))

(declare-fun e!292189 () Bool)

(assert (=> b!498549 e!292189))

(declare-fun res!300755 () Bool)

(assert (=> b!498549 (=> (not res!300755) (not e!292189))))

(assert (=> b!498549 (= res!300755 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225944 () Unit!14870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14870)

(assert (=> b!498549 (= lt!225944 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498550 () Bool)

(declare-fun Unit!14872 () Unit!14870)

(assert (=> b!498550 (= e!292192 Unit!14872)))

(declare-fun lt!225947 () Unit!14870)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14870)

(assert (=> b!498550 (= lt!225947 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225945 #b00000000000000000000000000000000 (index!17964 lt!225943) (x!47041 lt!225943) mask!3524))))

(declare-fun res!300756 () Bool)

(assert (=> b!498550 (= res!300756 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225945 lt!225946 lt!225948 mask!3524) (Intermediate!3945 false (index!17964 lt!225943) (x!47041 lt!225943))))))

(assert (=> b!498550 (=> (not res!300756) (not e!292191))))

(assert (=> b!498550 e!292191))

(declare-fun b!498551 () Bool)

(declare-fun Unit!14873 () Unit!14870)

(assert (=> b!498551 (= e!292192 Unit!14873)))

(declare-fun b!498552 () Bool)

(declare-fun res!300754 () Bool)

(assert (=> b!498552 (=> (not res!300754) (not e!292190))))

(declare-fun arrayContainsKey!0 (array!32185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498552 (= res!300754 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498553 () Bool)

(declare-fun res!300752 () Bool)

(assert (=> b!498553 (=> (not res!300752) (not e!292188))))

(declare-datatypes ((List!9682 0))(
  ( (Nil!9679) (Cons!9678 (h!10552 (_ BitVec 64)) (t!15918 List!9682)) )
))
(declare-fun arrayNoDuplicates!0 (array!32185 (_ BitVec 32) List!9682) Bool)

(assert (=> b!498553 (= res!300752 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9679))))

(declare-fun b!498554 () Bool)

(assert (=> b!498554 (= e!292194 true)))

(declare-fun lt!225949 () SeekEntryResult!3945)

(assert (=> b!498554 (= lt!225949 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225945 lt!225946 lt!225948 mask!3524))))

(declare-fun b!498555 () Bool)

(declare-fun res!300758 () Bool)

(assert (=> b!498555 (=> (not res!300758) (not e!292190))))

(assert (=> b!498555 (= res!300758 (validKeyInArray!0 (select (arr!15471 a!3235) j!176)))))

(declare-fun b!498556 () Bool)

(declare-fun res!300760 () Bool)

(assert (=> b!498556 (=> (not res!300760) (not e!292190))))

(assert (=> b!498556 (= res!300760 (and (= (size!15835 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15835 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15835 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!300753 () Bool)

(assert (=> start!45400 (=> (not res!300753) (not e!292190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45400 (= res!300753 (validMask!0 mask!3524))))

(assert (=> start!45400 e!292190))

(assert (=> start!45400 true))

(declare-fun array_inv!11245 (array!32185) Bool)

(assert (=> start!45400 (array_inv!11245 a!3235)))

(declare-fun b!498557 () Bool)

(assert (=> b!498557 (= e!292189 (= (seekEntryOrOpen!0 (select (arr!15471 a!3235) j!176) a!3235 mask!3524) (Found!3945 j!176)))))

(assert (= (and start!45400 res!300753) b!498556))

(assert (= (and b!498556 res!300760) b!498555))

(assert (= (and b!498555 res!300758) b!498545))

(assert (= (and b!498545 res!300749) b!498552))

(assert (= (and b!498552 res!300754) b!498548))

(assert (= (and b!498548 res!300757) b!498543))

(assert (= (and b!498543 res!300759) b!498553))

(assert (= (and b!498553 res!300752) b!498549))

(assert (= (and b!498549 res!300755) b!498557))

(assert (= (and b!498549 (not res!300750)) b!498544))

(assert (= (and b!498544 (not res!300761)) b!498546))

(assert (= (and b!498546 c!59174) b!498550))

(assert (= (and b!498546 (not c!59174)) b!498551))

(assert (= (and b!498550 res!300756) b!498547))

(assert (= (and b!498546 (not res!300751)) b!498554))

(declare-fun m!479827 () Bool)

(assert (=> b!498546 m!479827))

(declare-fun m!479829 () Bool)

(assert (=> b!498546 m!479829))

(declare-fun m!479831 () Bool)

(assert (=> b!498545 m!479831))

(declare-fun m!479833 () Bool)

(assert (=> b!498549 m!479833))

(declare-fun m!479835 () Bool)

(assert (=> b!498549 m!479835))

(declare-fun m!479837 () Bool)

(assert (=> b!498549 m!479837))

(declare-fun m!479839 () Bool)

(assert (=> b!498549 m!479839))

(assert (=> b!498549 m!479829))

(declare-fun m!479841 () Bool)

(assert (=> b!498549 m!479841))

(assert (=> b!498549 m!479829))

(declare-fun m!479843 () Bool)

(assert (=> b!498549 m!479843))

(assert (=> b!498549 m!479829))

(declare-fun m!479845 () Bool)

(assert (=> b!498549 m!479845))

(declare-fun m!479847 () Bool)

(assert (=> b!498549 m!479847))

(assert (=> b!498557 m!479829))

(assert (=> b!498557 m!479829))

(declare-fun m!479849 () Bool)

(assert (=> b!498557 m!479849))

(declare-fun m!479851 () Bool)

(assert (=> b!498543 m!479851))

(declare-fun m!479853 () Bool)

(assert (=> b!498553 m!479853))

(declare-fun m!479855 () Bool)

(assert (=> b!498548 m!479855))

(declare-fun m!479857 () Bool)

(assert (=> b!498550 m!479857))

(declare-fun m!479859 () Bool)

(assert (=> b!498550 m!479859))

(assert (=> b!498555 m!479829))

(assert (=> b!498555 m!479829))

(declare-fun m!479861 () Bool)

(assert (=> b!498555 m!479861))

(declare-fun m!479863 () Bool)

(assert (=> start!45400 m!479863))

(declare-fun m!479865 () Bool)

(assert (=> start!45400 m!479865))

(declare-fun m!479867 () Bool)

(assert (=> b!498552 m!479867))

(assert (=> b!498554 m!479859))

(push 1)

