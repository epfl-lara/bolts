; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66402 () Bool)

(assert start!66402)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42197 0))(
  ( (array!42198 (arr!20201 (Array (_ BitVec 32) (_ BitVec 64))) (size!20622 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42197)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!426011 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!764871 () Bool)

(declare-datatypes ((SeekEntryResult!7808 0))(
  ( (MissingZero!7808 (index!33599 (_ BitVec 32))) (Found!7808 (index!33600 (_ BitVec 32))) (Intermediate!7808 (undefined!8620 Bool) (index!33601 (_ BitVec 32)) (x!64526 (_ BitVec 32))) (Undefined!7808) (MissingVacant!7808 (index!33602 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42197 (_ BitVec 32)) SeekEntryResult!7808)

(assert (=> b!764871 (= e!426011 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20201 a!3186) j!159) a!3186 mask!3328) (Found!7808 j!159)))))

(declare-fun b!764872 () Bool)

(declare-fun res!517579 () Bool)

(declare-fun e!426009 () Bool)

(assert (=> b!764872 (=> (not res!517579) (not e!426009))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764872 (= res!517579 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764873 () Bool)

(declare-fun res!517580 () Bool)

(assert (=> b!764873 (=> (not res!517580) (not e!426009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764873 (= res!517580 (validKeyInArray!0 k!2102))))

(declare-fun b!764874 () Bool)

(declare-fun res!517574 () Bool)

(assert (=> b!764874 (=> (not res!517574) (not e!426009))))

(assert (=> b!764874 (= res!517574 (validKeyInArray!0 (select (arr!20201 a!3186) j!159)))))

(declare-fun b!764875 () Bool)

(declare-fun res!517584 () Bool)

(declare-fun e!426008 () Bool)

(assert (=> b!764875 (=> (not res!517584) (not e!426008))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764875 (= res!517584 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20622 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20622 a!3186))))))

(declare-fun b!764876 () Bool)

(declare-fun lt!340326 () SeekEntryResult!7808)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42197 (_ BitVec 32)) SeekEntryResult!7808)

(assert (=> b!764876 (= e!426011 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20201 a!3186) j!159) a!3186 mask!3328) lt!340326))))

(declare-fun b!764877 () Bool)

(declare-fun res!517577 () Bool)

(declare-fun e!426007 () Bool)

(assert (=> b!764877 (=> (not res!517577) (not e!426007))))

(assert (=> b!764877 (= res!517577 e!426011)))

(declare-fun c!84036 () Bool)

(assert (=> b!764877 (= c!84036 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764878 () Bool)

(declare-fun e!426010 () Bool)

(assert (=> b!764878 (= e!426007 e!426010)))

(declare-fun res!517582 () Bool)

(assert (=> b!764878 (=> (not res!517582) (not e!426010))))

(declare-fun lt!340329 () array!42197)

(declare-fun lt!340330 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764878 (= res!517582 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340330 mask!3328) lt!340330 lt!340329 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340330 lt!340329 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!764878 (= lt!340330 (select (store (arr!20201 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!764878 (= lt!340329 (array!42198 (store (arr!20201 a!3186) i!1173 k!2102) (size!20622 a!3186)))))

(declare-fun b!764879 () Bool)

(assert (=> b!764879 (= e!426009 e!426008)))

(declare-fun res!517587 () Bool)

(assert (=> b!764879 (=> (not res!517587) (not e!426008))))

(declare-fun lt!340327 () SeekEntryResult!7808)

(assert (=> b!764879 (= res!517587 (or (= lt!340327 (MissingZero!7808 i!1173)) (= lt!340327 (MissingVacant!7808 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42197 (_ BitVec 32)) SeekEntryResult!7808)

(assert (=> b!764879 (= lt!340327 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!764880 () Bool)

(declare-fun res!517578 () Bool)

(assert (=> b!764880 (=> (not res!517578) (not e!426007))))

(assert (=> b!764880 (= res!517578 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20201 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764881 () Bool)

(declare-fun res!517583 () Bool)

(assert (=> b!764881 (=> (not res!517583) (not e!426008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42197 (_ BitVec 32)) Bool)

(assert (=> b!764881 (= res!517583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!517581 () Bool)

(assert (=> start!66402 (=> (not res!517581) (not e!426009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66402 (= res!517581 (validMask!0 mask!3328))))

(assert (=> start!66402 e!426009))

(assert (=> start!66402 true))

(declare-fun array_inv!15975 (array!42197) Bool)

(assert (=> start!66402 (array_inv!15975 a!3186)))

(declare-fun b!764870 () Bool)

(declare-fun res!517576 () Bool)

(assert (=> b!764870 (=> (not res!517576) (not e!426008))))

(declare-datatypes ((List!14256 0))(
  ( (Nil!14253) (Cons!14252 (h!15339 (_ BitVec 64)) (t!20579 List!14256)) )
))
(declare-fun arrayNoDuplicates!0 (array!42197 (_ BitVec 32) List!14256) Bool)

(assert (=> b!764870 (= res!517576 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14253))))

(declare-fun e!426006 () Bool)

(declare-fun b!764882 () Bool)

(assert (=> b!764882 (= e!426006 (= (seekEntryOrOpen!0 (select (arr!20201 a!3186) j!159) a!3186 mask!3328) (Found!7808 j!159)))))

(declare-fun b!764883 () Bool)

(declare-fun res!517585 () Bool)

(assert (=> b!764883 (=> (not res!517585) (not e!426009))))

(assert (=> b!764883 (= res!517585 (and (= (size!20622 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20622 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20622 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!764884 () Bool)

(assert (=> b!764884 (= e!426010 (not true))))

(assert (=> b!764884 e!426006))

(declare-fun res!517575 () Bool)

(assert (=> b!764884 (=> (not res!517575) (not e!426006))))

(assert (=> b!764884 (= res!517575 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26342 0))(
  ( (Unit!26343) )
))
(declare-fun lt!340328 () Unit!26342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42197 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26342)

(assert (=> b!764884 (= lt!340328 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!764885 () Bool)

(assert (=> b!764885 (= e!426008 e!426007)))

(declare-fun res!517586 () Bool)

(assert (=> b!764885 (=> (not res!517586) (not e!426007))))

(assert (=> b!764885 (= res!517586 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20201 a!3186) j!159) mask!3328) (select (arr!20201 a!3186) j!159) a!3186 mask!3328) lt!340326))))

(assert (=> b!764885 (= lt!340326 (Intermediate!7808 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66402 res!517581) b!764883))

(assert (= (and b!764883 res!517585) b!764874))

(assert (= (and b!764874 res!517574) b!764873))

(assert (= (and b!764873 res!517580) b!764872))

(assert (= (and b!764872 res!517579) b!764879))

(assert (= (and b!764879 res!517587) b!764881))

(assert (= (and b!764881 res!517583) b!764870))

(assert (= (and b!764870 res!517576) b!764875))

(assert (= (and b!764875 res!517584) b!764885))

(assert (= (and b!764885 res!517586) b!764880))

(assert (= (and b!764880 res!517578) b!764877))

(assert (= (and b!764877 c!84036) b!764876))

(assert (= (and b!764877 (not c!84036)) b!764871))

(assert (= (and b!764877 res!517577) b!764878))

(assert (= (and b!764878 res!517582) b!764884))

(assert (= (and b!764884 res!517575) b!764882))

(declare-fun m!711171 () Bool)

(assert (=> b!764880 m!711171))

(declare-fun m!711173 () Bool)

(assert (=> b!764872 m!711173))

(declare-fun m!711175 () Bool)

(assert (=> b!764871 m!711175))

(assert (=> b!764871 m!711175))

(declare-fun m!711177 () Bool)

(assert (=> b!764871 m!711177))

(assert (=> b!764885 m!711175))

(assert (=> b!764885 m!711175))

(declare-fun m!711179 () Bool)

(assert (=> b!764885 m!711179))

(assert (=> b!764885 m!711179))

(assert (=> b!764885 m!711175))

(declare-fun m!711181 () Bool)

(assert (=> b!764885 m!711181))

(declare-fun m!711183 () Bool)

(assert (=> b!764873 m!711183))

(declare-fun m!711185 () Bool)

(assert (=> start!66402 m!711185))

(declare-fun m!711187 () Bool)

(assert (=> start!66402 m!711187))

(declare-fun m!711189 () Bool)

(assert (=> b!764879 m!711189))

(assert (=> b!764882 m!711175))

(assert (=> b!764882 m!711175))

(declare-fun m!711191 () Bool)

(assert (=> b!764882 m!711191))

(declare-fun m!711193 () Bool)

(assert (=> b!764881 m!711193))

(declare-fun m!711195 () Bool)

(assert (=> b!764878 m!711195))

(declare-fun m!711197 () Bool)

(assert (=> b!764878 m!711197))

(declare-fun m!711199 () Bool)

(assert (=> b!764878 m!711199))

(declare-fun m!711201 () Bool)

(assert (=> b!764878 m!711201))

(assert (=> b!764878 m!711199))

(declare-fun m!711203 () Bool)

(assert (=> b!764878 m!711203))

(declare-fun m!711205 () Bool)

(assert (=> b!764870 m!711205))

(assert (=> b!764874 m!711175))

(assert (=> b!764874 m!711175))

(declare-fun m!711207 () Bool)

(assert (=> b!764874 m!711207))

(declare-fun m!711209 () Bool)

(assert (=> b!764884 m!711209))

(declare-fun m!711211 () Bool)

(assert (=> b!764884 m!711211))

(assert (=> b!764876 m!711175))

(assert (=> b!764876 m!711175))

(declare-fun m!711213 () Bool)

(assert (=> b!764876 m!711213))

(push 1)

