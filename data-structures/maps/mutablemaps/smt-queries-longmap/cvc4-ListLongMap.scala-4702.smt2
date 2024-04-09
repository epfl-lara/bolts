; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65294 () Bool)

(assert start!65294)

(declare-fun b!740612 () Bool)

(declare-fun e!414067 () Bool)

(declare-fun e!414072 () Bool)

(assert (=> b!740612 (= e!414067 e!414072)))

(declare-fun res!498183 () Bool)

(assert (=> b!740612 (=> res!498183 e!414072)))

(declare-datatypes ((array!41420 0))(
  ( (array!41421 (arr!19820 (Array (_ BitVec 32) (_ BitVec 64))) (size!20241 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41420)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!329060 () (_ BitVec 32))

(assert (=> b!740612 (= res!498183 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!329060 #b00000000000000000000000000000000) (bvsge lt!329060 (size!20241 a!3186))))))

(declare-datatypes ((Unit!25326 0))(
  ( (Unit!25327) )
))
(declare-fun lt!329057 () Unit!25326)

(declare-fun e!414065 () Unit!25326)

(assert (=> b!740612 (= lt!329057 e!414065)))

(declare-fun c!81603 () Bool)

(declare-fun lt!329064 () Bool)

(assert (=> b!740612 (= c!81603 lt!329064)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740612 (= lt!329064 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740612 (= lt!329060 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740613 () Bool)

(declare-fun e!414066 () Bool)

(declare-fun e!414064 () Bool)

(assert (=> b!740613 (= e!414066 e!414064)))

(declare-fun res!498172 () Bool)

(assert (=> b!740613 (=> (not res!498172) (not e!414064))))

(declare-datatypes ((SeekEntryResult!7427 0))(
  ( (MissingZero!7427 (index!32075 (_ BitVec 32))) (Found!7427 (index!32076 (_ BitVec 32))) (Intermediate!7427 (undefined!8239 Bool) (index!32077 (_ BitVec 32)) (x!63082 (_ BitVec 32))) (Undefined!7427) (MissingVacant!7427 (index!32078 (_ BitVec 32))) )
))
(declare-fun lt!329055 () SeekEntryResult!7427)

(declare-fun lt!329066 () SeekEntryResult!7427)

(assert (=> b!740613 (= res!498172 (= lt!329055 lt!329066))))

(declare-fun lt!329058 () array!41420)

(declare-fun lt!329054 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41420 (_ BitVec 32)) SeekEntryResult!7427)

(assert (=> b!740613 (= lt!329066 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329054 lt!329058 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740613 (= lt!329055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329054 mask!3328) lt!329054 lt!329058 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!740613 (= lt!329054 (select (store (arr!19820 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740613 (= lt!329058 (array!41421 (store (arr!19820 a!3186) i!1173 k!2102) (size!20241 a!3186)))))

(declare-fun b!740614 () Bool)

(declare-fun Unit!25328 () Unit!25326)

(assert (=> b!740614 (= e!414065 Unit!25328)))

(declare-fun lt!329059 () SeekEntryResult!7427)

(assert (=> b!740614 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329060 (select (arr!19820 a!3186) j!159) a!3186 mask!3328) lt!329059)))

(declare-fun b!740615 () Bool)

(assert (=> b!740615 (= e!414072 true)))

(declare-fun lt!329053 () SeekEntryResult!7427)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41420 (_ BitVec 32)) SeekEntryResult!7427)

(assert (=> b!740615 (= (seekEntryOrOpen!0 lt!329054 lt!329058 mask!3328) lt!329053)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!329062 () Unit!25326)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41420 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25326)

(assert (=> b!740615 (= lt!329062 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!329060 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740616 () Bool)

(declare-fun e!414070 () Bool)

(declare-fun e!414068 () Bool)

(assert (=> b!740616 (= e!414070 e!414068)))

(declare-fun res!498189 () Bool)

(assert (=> b!740616 (=> (not res!498189) (not e!414068))))

(declare-fun lt!329065 () SeekEntryResult!7427)

(assert (=> b!740616 (= res!498189 (= (seekEntryOrOpen!0 (select (arr!19820 a!3186) j!159) a!3186 mask!3328) lt!329065))))

(assert (=> b!740616 (= lt!329065 (Found!7427 j!159))))

(declare-fun res!498178 () Bool)

(declare-fun e!414075 () Bool)

(assert (=> start!65294 (=> (not res!498178) (not e!414075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65294 (= res!498178 (validMask!0 mask!3328))))

(assert (=> start!65294 e!414075))

(assert (=> start!65294 true))

(declare-fun array_inv!15594 (array!41420) Bool)

(assert (=> start!65294 (array_inv!15594 a!3186)))

(declare-fun b!740617 () Bool)

(declare-fun res!498184 () Bool)

(declare-fun e!414073 () Bool)

(assert (=> b!740617 (=> (not res!498184) (not e!414073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41420 (_ BitVec 32)) Bool)

(assert (=> b!740617 (= res!498184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740618 () Bool)

(declare-fun res!498187 () Bool)

(assert (=> b!740618 (=> (not res!498187) (not e!414075))))

(declare-fun arrayContainsKey!0 (array!41420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740618 (= res!498187 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740619 () Bool)

(assert (=> b!740619 (= e!414073 e!414066)))

(declare-fun res!498175 () Bool)

(assert (=> b!740619 (=> (not res!498175) (not e!414066))))

(assert (=> b!740619 (= res!498175 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19820 a!3186) j!159) mask!3328) (select (arr!19820 a!3186) j!159) a!3186 mask!3328) lt!329059))))

(assert (=> b!740619 (= lt!329059 (Intermediate!7427 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740620 () Bool)

(declare-fun res!498174 () Bool)

(assert (=> b!740620 (=> (not res!498174) (not e!414075))))

(assert (=> b!740620 (= res!498174 (and (= (size!20241 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20241 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20241 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740621 () Bool)

(declare-fun res!498173 () Bool)

(assert (=> b!740621 (=> res!498173 e!414072)))

(assert (=> b!740621 (= res!498173 (not (= lt!329055 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329060 lt!329054 lt!329058 mask!3328))))))

(declare-fun b!740622 () Bool)

(declare-fun Unit!25329 () Unit!25326)

(assert (=> b!740622 (= e!414065 Unit!25329)))

(declare-fun lt!329063 () SeekEntryResult!7427)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41420 (_ BitVec 32)) SeekEntryResult!7427)

(assert (=> b!740622 (= lt!329063 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19820 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740622 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329060 resIntermediateIndex!5 (select (arr!19820 a!3186) j!159) a!3186 mask!3328) lt!329053)))

(declare-fun b!740623 () Bool)

(assert (=> b!740623 (= e!414064 (not e!414067))))

(declare-fun res!498188 () Bool)

(assert (=> b!740623 (=> res!498188 e!414067)))

(assert (=> b!740623 (= res!498188 (or (not (is-Intermediate!7427 lt!329066)) (bvsge x!1131 (x!63082 lt!329066))))))

(assert (=> b!740623 (= lt!329053 (Found!7427 j!159))))

(assert (=> b!740623 e!414070))

(declare-fun res!498171 () Bool)

(assert (=> b!740623 (=> (not res!498171) (not e!414070))))

(assert (=> b!740623 (= res!498171 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!329056 () Unit!25326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41420 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25326)

(assert (=> b!740623 (= lt!329056 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740624 () Bool)

(declare-fun res!498186 () Bool)

(assert (=> b!740624 (=> (not res!498186) (not e!414075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740624 (= res!498186 (validKeyInArray!0 (select (arr!19820 a!3186) j!159)))))

(declare-fun b!740625 () Bool)

(declare-fun res!498180 () Bool)

(assert (=> b!740625 (=> (not res!498180) (not e!414066))))

(declare-fun e!414074 () Bool)

(assert (=> b!740625 (= res!498180 e!414074)))

(declare-fun c!81602 () Bool)

(assert (=> b!740625 (= c!81602 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740626 () Bool)

(declare-fun res!498182 () Bool)

(assert (=> b!740626 (=> (not res!498182) (not e!414073))))

(assert (=> b!740626 (= res!498182 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20241 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20241 a!3186))))))

(declare-fun b!740627 () Bool)

(declare-fun res!498177 () Bool)

(assert (=> b!740627 (=> res!498177 e!414072)))

(declare-fun e!414071 () Bool)

(assert (=> b!740627 (= res!498177 e!414071)))

(declare-fun c!81601 () Bool)

(assert (=> b!740627 (= c!81601 lt!329064)))

(declare-fun b!740628 () Bool)

(declare-fun res!498185 () Bool)

(assert (=> b!740628 (=> (not res!498185) (not e!414066))))

(assert (=> b!740628 (= res!498185 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19820 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740629 () Bool)

(assert (=> b!740629 (= e!414075 e!414073)))

(declare-fun res!498179 () Bool)

(assert (=> b!740629 (=> (not res!498179) (not e!414073))))

(declare-fun lt!329061 () SeekEntryResult!7427)

(assert (=> b!740629 (= res!498179 (or (= lt!329061 (MissingZero!7427 i!1173)) (= lt!329061 (MissingVacant!7427 i!1173))))))

(assert (=> b!740629 (= lt!329061 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!740630 () Bool)

(declare-fun res!498181 () Bool)

(assert (=> b!740630 (=> (not res!498181) (not e!414073))))

(declare-datatypes ((List!13875 0))(
  ( (Nil!13872) (Cons!13871 (h!14943 (_ BitVec 64)) (t!20198 List!13875)) )
))
(declare-fun arrayNoDuplicates!0 (array!41420 (_ BitVec 32) List!13875) Bool)

(assert (=> b!740630 (= res!498181 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13872))))

(declare-fun b!740631 () Bool)

(assert (=> b!740631 (= e!414074 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19820 a!3186) j!159) a!3186 mask!3328) lt!329059))))

(declare-fun b!740632 () Bool)

(declare-fun res!498176 () Bool)

(assert (=> b!740632 (=> (not res!498176) (not e!414075))))

(assert (=> b!740632 (= res!498176 (validKeyInArray!0 k!2102))))

(declare-fun b!740633 () Bool)

(assert (=> b!740633 (= e!414071 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329060 (select (arr!19820 a!3186) j!159) a!3186 mask!3328) lt!329059)))))

(declare-fun b!740634 () Bool)

(assert (=> b!740634 (= e!414074 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19820 a!3186) j!159) a!3186 mask!3328) (Found!7427 j!159)))))

(declare-fun b!740635 () Bool)

(assert (=> b!740635 (= e!414068 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19820 a!3186) j!159) a!3186 mask!3328) lt!329065))))

(declare-fun b!740636 () Bool)

(assert (=> b!740636 (= e!414071 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329060 resIntermediateIndex!5 (select (arr!19820 a!3186) j!159) a!3186 mask!3328) lt!329053)))))

(assert (= (and start!65294 res!498178) b!740620))

(assert (= (and b!740620 res!498174) b!740624))

(assert (= (and b!740624 res!498186) b!740632))

(assert (= (and b!740632 res!498176) b!740618))

(assert (= (and b!740618 res!498187) b!740629))

(assert (= (and b!740629 res!498179) b!740617))

(assert (= (and b!740617 res!498184) b!740630))

(assert (= (and b!740630 res!498181) b!740626))

(assert (= (and b!740626 res!498182) b!740619))

(assert (= (and b!740619 res!498175) b!740628))

(assert (= (and b!740628 res!498185) b!740625))

(assert (= (and b!740625 c!81602) b!740631))

(assert (= (and b!740625 (not c!81602)) b!740634))

(assert (= (and b!740625 res!498180) b!740613))

(assert (= (and b!740613 res!498172) b!740623))

(assert (= (and b!740623 res!498171) b!740616))

(assert (= (and b!740616 res!498189) b!740635))

(assert (= (and b!740623 (not res!498188)) b!740612))

(assert (= (and b!740612 c!81603) b!740614))

(assert (= (and b!740612 (not c!81603)) b!740622))

(assert (= (and b!740612 (not res!498183)) b!740627))

(assert (= (and b!740627 c!81601) b!740633))

(assert (= (and b!740627 (not c!81601)) b!740636))

(assert (= (and b!740627 (not res!498177)) b!740621))

(assert (= (and b!740621 (not res!498173)) b!740615))

(declare-fun m!691779 () Bool)

(assert (=> start!65294 m!691779))

(declare-fun m!691781 () Bool)

(assert (=> start!65294 m!691781))

(declare-fun m!691783 () Bool)

(assert (=> b!740621 m!691783))

(declare-fun m!691785 () Bool)

(assert (=> b!740632 m!691785))

(declare-fun m!691787 () Bool)

(assert (=> b!740613 m!691787))

(declare-fun m!691789 () Bool)

(assert (=> b!740613 m!691789))

(declare-fun m!691791 () Bool)

(assert (=> b!740613 m!691791))

(declare-fun m!691793 () Bool)

(assert (=> b!740613 m!691793))

(assert (=> b!740613 m!691791))

(declare-fun m!691795 () Bool)

(assert (=> b!740613 m!691795))

(declare-fun m!691797 () Bool)

(assert (=> b!740633 m!691797))

(assert (=> b!740633 m!691797))

(declare-fun m!691799 () Bool)

(assert (=> b!740633 m!691799))

(declare-fun m!691801 () Bool)

(assert (=> b!740623 m!691801))

(declare-fun m!691803 () Bool)

(assert (=> b!740623 m!691803))

(declare-fun m!691805 () Bool)

(assert (=> b!740630 m!691805))

(assert (=> b!740614 m!691797))

(assert (=> b!740614 m!691797))

(assert (=> b!740614 m!691799))

(assert (=> b!740631 m!691797))

(assert (=> b!740631 m!691797))

(declare-fun m!691807 () Bool)

(assert (=> b!740631 m!691807))

(declare-fun m!691809 () Bool)

(assert (=> b!740612 m!691809))

(assert (=> b!740622 m!691797))

(assert (=> b!740622 m!691797))

(declare-fun m!691811 () Bool)

(assert (=> b!740622 m!691811))

(assert (=> b!740622 m!691797))

(declare-fun m!691813 () Bool)

(assert (=> b!740622 m!691813))

(assert (=> b!740624 m!691797))

(assert (=> b!740624 m!691797))

(declare-fun m!691815 () Bool)

(assert (=> b!740624 m!691815))

(declare-fun m!691817 () Bool)

(assert (=> b!740618 m!691817))

(declare-fun m!691819 () Bool)

(assert (=> b!740615 m!691819))

(declare-fun m!691821 () Bool)

(assert (=> b!740615 m!691821))

(declare-fun m!691823 () Bool)

(assert (=> b!740617 m!691823))

(assert (=> b!740635 m!691797))

(assert (=> b!740635 m!691797))

(declare-fun m!691825 () Bool)

(assert (=> b!740635 m!691825))

(assert (=> b!740634 m!691797))

(assert (=> b!740634 m!691797))

(assert (=> b!740634 m!691811))

(assert (=> b!740616 m!691797))

(assert (=> b!740616 m!691797))

(declare-fun m!691827 () Bool)

(assert (=> b!740616 m!691827))

(declare-fun m!691829 () Bool)

(assert (=> b!740629 m!691829))

(declare-fun m!691831 () Bool)

(assert (=> b!740628 m!691831))

(assert (=> b!740636 m!691797))

(assert (=> b!740636 m!691797))

(assert (=> b!740636 m!691813))

(assert (=> b!740619 m!691797))

(assert (=> b!740619 m!691797))

(declare-fun m!691833 () Bool)

(assert (=> b!740619 m!691833))

(assert (=> b!740619 m!691833))

(assert (=> b!740619 m!691797))

(declare-fun m!691835 () Bool)

(assert (=> b!740619 m!691835))

(push 1)

