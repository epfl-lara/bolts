; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45416 () Bool)

(assert start!45416)

(declare-fun b!498903 () Bool)

(declare-fun res!301063 () Bool)

(declare-fun e!292381 () Bool)

(assert (=> b!498903 (=> (not res!301063) (not e!292381))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32201 0))(
  ( (array!32202 (arr!15479 (Array (_ BitVec 32) (_ BitVec 64))) (size!15843 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32201)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498903 (= res!301063 (and (= (size!15843 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15843 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15843 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!292386 () Bool)

(declare-fun b!498904 () Bool)

(declare-datatypes ((SeekEntryResult!3953 0))(
  ( (MissingZero!3953 (index!17994 (_ BitVec 32))) (Found!3953 (index!17995 (_ BitVec 32))) (Intermediate!3953 (undefined!4765 Bool) (index!17996 (_ BitVec 32)) (x!47065 (_ BitVec 32))) (Undefined!3953) (MissingVacant!3953 (index!17997 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32201 (_ BitVec 32)) SeekEntryResult!3953)

(assert (=> b!498904 (= e!292386 (= (seekEntryOrOpen!0 (select (arr!15479 a!3235) j!176) a!3235 mask!3524) (Found!3953 j!176)))))

(declare-fun b!498905 () Bool)

(declare-fun e!292380 () Bool)

(declare-fun e!292383 () Bool)

(assert (=> b!498905 (= e!292380 (not e!292383))))

(declare-fun res!301061 () Bool)

(assert (=> b!498905 (=> res!301061 e!292383)))

(declare-fun lt!226185 () SeekEntryResult!3953)

(declare-fun lt!226181 () array!32201)

(declare-fun lt!226186 () (_ BitVec 32))

(declare-fun lt!226187 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32201 (_ BitVec 32)) SeekEntryResult!3953)

(assert (=> b!498905 (= res!301061 (= lt!226185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226186 lt!226187 lt!226181 mask!3524)))))

(declare-fun lt!226190 () (_ BitVec 32))

(assert (=> b!498905 (= lt!226185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226190 (select (arr!15479 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498905 (= lt!226186 (toIndex!0 lt!226187 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!498905 (= lt!226187 (select (store (arr!15479 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498905 (= lt!226190 (toIndex!0 (select (arr!15479 a!3235) j!176) mask!3524))))

(assert (=> b!498905 (= lt!226181 (array!32202 (store (arr!15479 a!3235) i!1204 k!2280) (size!15843 a!3235)))))

(assert (=> b!498905 e!292386))

(declare-fun res!301068 () Bool)

(assert (=> b!498905 (=> (not res!301068) (not e!292386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32201 (_ BitVec 32)) Bool)

(assert (=> b!498905 (= res!301068 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14902 0))(
  ( (Unit!14903) )
))
(declare-fun lt!226188 () Unit!14902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32201 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14902)

(assert (=> b!498905 (= lt!226188 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498906 () Bool)

(declare-fun res!301067 () Bool)

(assert (=> b!498906 (=> (not res!301067) (not e!292381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498906 (= res!301067 (validKeyInArray!0 k!2280))))

(declare-fun b!498907 () Bool)

(declare-fun res!301066 () Bool)

(assert (=> b!498907 (=> (not res!301066) (not e!292381))))

(declare-fun arrayContainsKey!0 (array!32201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498907 (= res!301066 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498908 () Bool)

(assert (=> b!498908 (= e!292381 e!292380)))

(declare-fun res!301072 () Bool)

(assert (=> b!498908 (=> (not res!301072) (not e!292380))))

(declare-fun lt!226183 () SeekEntryResult!3953)

(assert (=> b!498908 (= res!301072 (or (= lt!226183 (MissingZero!3953 i!1204)) (= lt!226183 (MissingVacant!3953 i!1204))))))

(assert (=> b!498908 (= lt!226183 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498909 () Bool)

(declare-fun e!292384 () Unit!14902)

(declare-fun Unit!14904 () Unit!14902)

(assert (=> b!498909 (= e!292384 Unit!14904)))

(declare-fun lt!226189 () Unit!14902)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32201 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14902)

(assert (=> b!498909 (= lt!226189 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226190 #b00000000000000000000000000000000 (index!17996 lt!226185) (x!47065 lt!226185) mask!3524))))

(declare-fun res!301062 () Bool)

(assert (=> b!498909 (= res!301062 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226190 lt!226187 lt!226181 mask!3524) (Intermediate!3953 false (index!17996 lt!226185) (x!47065 lt!226185))))))

(declare-fun e!292385 () Bool)

(assert (=> b!498909 (=> (not res!301062) (not e!292385))))

(assert (=> b!498909 e!292385))

(declare-fun b!498910 () Bool)

(declare-fun res!301073 () Bool)

(assert (=> b!498910 (=> (not res!301073) (not e!292380))))

(declare-datatypes ((List!9690 0))(
  ( (Nil!9687) (Cons!9686 (h!10560 (_ BitVec 64)) (t!15926 List!9690)) )
))
(declare-fun arrayNoDuplicates!0 (array!32201 (_ BitVec 32) List!9690) Bool)

(assert (=> b!498910 (= res!301073 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9687))))

(declare-fun b!498911 () Bool)

(declare-fun res!301069 () Bool)

(assert (=> b!498911 (=> (not res!301069) (not e!292381))))

(assert (=> b!498911 (= res!301069 (validKeyInArray!0 (select (arr!15479 a!3235) j!176)))))

(declare-fun b!498912 () Bool)

(declare-fun res!301064 () Bool)

(assert (=> b!498912 (=> res!301064 e!292383)))

(assert (=> b!498912 (= res!301064 (or (undefined!4765 lt!226185) (not (is-Intermediate!3953 lt!226185))))))

(declare-fun b!498913 () Bool)

(declare-fun e!292387 () Bool)

(assert (=> b!498913 (= e!292383 e!292387)))

(declare-fun res!301065 () Bool)

(assert (=> b!498913 (=> res!301065 e!292387)))

(assert (=> b!498913 (= res!301065 (or (bvsgt #b00000000000000000000000000000000 (x!47065 lt!226185)) (bvsgt (x!47065 lt!226185) #b01111111111111111111111111111110) (bvslt lt!226190 #b00000000000000000000000000000000) (bvsge lt!226190 (size!15843 a!3235)) (bvslt (index!17996 lt!226185) #b00000000000000000000000000000000) (bvsge (index!17996 lt!226185) (size!15843 a!3235)) (not (= lt!226185 (Intermediate!3953 false (index!17996 lt!226185) (x!47065 lt!226185))))))))

(assert (=> b!498913 (and (or (= (select (arr!15479 a!3235) (index!17996 lt!226185)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15479 a!3235) (index!17996 lt!226185)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15479 a!3235) (index!17996 lt!226185)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15479 a!3235) (index!17996 lt!226185)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226182 () Unit!14902)

(assert (=> b!498913 (= lt!226182 e!292384)))

(declare-fun c!59198 () Bool)

(assert (=> b!498913 (= c!59198 (= (select (arr!15479 a!3235) (index!17996 lt!226185)) (select (arr!15479 a!3235) j!176)))))

(assert (=> b!498913 (and (bvslt (x!47065 lt!226185) #b01111111111111111111111111111110) (or (= (select (arr!15479 a!3235) (index!17996 lt!226185)) (select (arr!15479 a!3235) j!176)) (= (select (arr!15479 a!3235) (index!17996 lt!226185)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15479 a!3235) (index!17996 lt!226185)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498914 () Bool)

(declare-fun Unit!14905 () Unit!14902)

(assert (=> b!498914 (= e!292384 Unit!14905)))

(declare-fun res!301070 () Bool)

(assert (=> start!45416 (=> (not res!301070) (not e!292381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45416 (= res!301070 (validMask!0 mask!3524))))

(assert (=> start!45416 e!292381))

(assert (=> start!45416 true))

(declare-fun array_inv!11253 (array!32201) Bool)

(assert (=> start!45416 (array_inv!11253 a!3235)))

(declare-fun b!498915 () Bool)

(assert (=> b!498915 (= e!292387 true)))

(declare-fun lt!226184 () SeekEntryResult!3953)

(assert (=> b!498915 (= lt!226184 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226190 lt!226187 lt!226181 mask!3524))))

(declare-fun b!498916 () Bool)

(assert (=> b!498916 (= e!292385 false)))

(declare-fun b!498917 () Bool)

(declare-fun res!301071 () Bool)

(assert (=> b!498917 (=> (not res!301071) (not e!292380))))

(assert (=> b!498917 (= res!301071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45416 res!301070) b!498903))

(assert (= (and b!498903 res!301063) b!498911))

(assert (= (and b!498911 res!301069) b!498906))

(assert (= (and b!498906 res!301067) b!498907))

(assert (= (and b!498907 res!301066) b!498908))

(assert (= (and b!498908 res!301072) b!498917))

(assert (= (and b!498917 res!301071) b!498910))

(assert (= (and b!498910 res!301073) b!498905))

(assert (= (and b!498905 res!301068) b!498904))

(assert (= (and b!498905 (not res!301061)) b!498912))

(assert (= (and b!498912 (not res!301064)) b!498913))

(assert (= (and b!498913 c!59198) b!498909))

(assert (= (and b!498913 (not c!59198)) b!498914))

(assert (= (and b!498909 res!301062) b!498916))

(assert (= (and b!498913 (not res!301065)) b!498915))

(declare-fun m!480163 () Bool)

(assert (=> b!498908 m!480163))

(declare-fun m!480165 () Bool)

(assert (=> b!498911 m!480165))

(assert (=> b!498911 m!480165))

(declare-fun m!480167 () Bool)

(assert (=> b!498911 m!480167))

(declare-fun m!480169 () Bool)

(assert (=> b!498910 m!480169))

(declare-fun m!480171 () Bool)

(assert (=> b!498913 m!480171))

(assert (=> b!498913 m!480165))

(declare-fun m!480173 () Bool)

(assert (=> b!498907 m!480173))

(declare-fun m!480175 () Bool)

(assert (=> b!498906 m!480175))

(declare-fun m!480177 () Bool)

(assert (=> b!498917 m!480177))

(assert (=> b!498904 m!480165))

(assert (=> b!498904 m!480165))

(declare-fun m!480179 () Bool)

(assert (=> b!498904 m!480179))

(declare-fun m!480181 () Bool)

(assert (=> b!498915 m!480181))

(declare-fun m!480183 () Bool)

(assert (=> b!498909 m!480183))

(assert (=> b!498909 m!480181))

(declare-fun m!480185 () Bool)

(assert (=> start!45416 m!480185))

(declare-fun m!480187 () Bool)

(assert (=> start!45416 m!480187))

(declare-fun m!480189 () Bool)

(assert (=> b!498905 m!480189))

(assert (=> b!498905 m!480165))

(declare-fun m!480191 () Bool)

(assert (=> b!498905 m!480191))

(declare-fun m!480193 () Bool)

(assert (=> b!498905 m!480193))

(declare-fun m!480195 () Bool)

(assert (=> b!498905 m!480195))

(declare-fun m!480197 () Bool)

(assert (=> b!498905 m!480197))

(declare-fun m!480199 () Bool)

(assert (=> b!498905 m!480199))

(assert (=> b!498905 m!480165))

(declare-fun m!480201 () Bool)

(assert (=> b!498905 m!480201))

(assert (=> b!498905 m!480165))

(declare-fun m!480203 () Bool)

(assert (=> b!498905 m!480203))

(push 1)

