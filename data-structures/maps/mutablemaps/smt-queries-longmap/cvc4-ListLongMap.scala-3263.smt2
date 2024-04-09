; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45464 () Bool)

(assert start!45464)

(declare-fun b!499983 () Bool)

(declare-fun e!292960 () Bool)

(declare-fun e!292956 () Bool)

(assert (=> b!499983 (= e!292960 e!292956)))

(declare-fun res!302008 () Bool)

(assert (=> b!499983 (=> res!302008 e!292956)))

(declare-fun lt!226904 () (_ BitVec 32))

(declare-datatypes ((array!32249 0))(
  ( (array!32250 (arr!15503 (Array (_ BitVec 32) (_ BitVec 64))) (size!15867 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32249)

(declare-datatypes ((SeekEntryResult!3977 0))(
  ( (MissingZero!3977 (index!18090 (_ BitVec 32))) (Found!3977 (index!18091 (_ BitVec 32))) (Intermediate!3977 (undefined!4789 Bool) (index!18092 (_ BitVec 32)) (x!47153 (_ BitVec 32))) (Undefined!3977) (MissingVacant!3977 (index!18093 (_ BitVec 32))) )
))
(declare-fun lt!226901 () SeekEntryResult!3977)

(assert (=> b!499983 (= res!302008 (or (bvsgt #b00000000000000000000000000000000 (x!47153 lt!226901)) (bvsgt (x!47153 lt!226901) #b01111111111111111111111111111110) (bvslt lt!226904 #b00000000000000000000000000000000) (bvsge lt!226904 (size!15867 a!3235)) (bvslt (index!18092 lt!226901) #b00000000000000000000000000000000) (bvsge (index!18092 lt!226901) (size!15867 a!3235)) (not (= lt!226901 (Intermediate!3977 false (index!18092 lt!226901) (x!47153 lt!226901))))))))

(assert (=> b!499983 (and (or (= (select (arr!15503 a!3235) (index!18092 lt!226901)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15503 a!3235) (index!18092 lt!226901)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15503 a!3235) (index!18092 lt!226901)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15503 a!3235) (index!18092 lt!226901)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14998 0))(
  ( (Unit!14999) )
))
(declare-fun lt!226908 () Unit!14998)

(declare-fun e!292961 () Unit!14998)

(assert (=> b!499983 (= lt!226908 e!292961)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun c!59270 () Bool)

(assert (=> b!499983 (= c!59270 (= (select (arr!15503 a!3235) (index!18092 lt!226901)) (select (arr!15503 a!3235) j!176)))))

(assert (=> b!499983 (and (bvslt (x!47153 lt!226901) #b01111111111111111111111111111110) (or (= (select (arr!15503 a!3235) (index!18092 lt!226901)) (select (arr!15503 a!3235) j!176)) (= (select (arr!15503 a!3235) (index!18092 lt!226901)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15503 a!3235) (index!18092 lt!226901)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499984 () Bool)

(assert (=> b!499984 (= e!292956 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!226902 () array!32249)

(declare-fun lt!226909 () (_ BitVec 64))

(declare-fun lt!226910 () SeekEntryResult!3977)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32249 (_ BitVec 32)) SeekEntryResult!3977)

(assert (=> b!499984 (= lt!226910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226904 lt!226909 lt!226902 mask!3524))))

(declare-fun b!499985 () Bool)

(declare-fun res!301999 () Bool)

(declare-fun e!292959 () Bool)

(assert (=> b!499985 (=> (not res!301999) (not e!292959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499985 (= res!301999 (validKeyInArray!0 (select (arr!15503 a!3235) j!176)))))

(declare-fun b!499986 () Bool)

(declare-fun res!302007 () Bool)

(assert (=> b!499986 (=> (not res!302007) (not e!292959))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499986 (= res!302007 (and (= (size!15867 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15867 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15867 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499987 () Bool)

(declare-fun res!301998 () Bool)

(declare-fun e!292962 () Bool)

(assert (=> b!499987 (=> (not res!301998) (not e!292962))))

(declare-datatypes ((List!9714 0))(
  ( (Nil!9711) (Cons!9710 (h!10584 (_ BitVec 64)) (t!15950 List!9714)) )
))
(declare-fun arrayNoDuplicates!0 (array!32249 (_ BitVec 32) List!9714) Bool)

(assert (=> b!499987 (= res!301998 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9711))))

(declare-fun b!499989 () Bool)

(declare-fun res!302004 () Bool)

(assert (=> b!499989 (=> (not res!302004) (not e!292959))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499989 (= res!302004 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499990 () Bool)

(assert (=> b!499990 (= e!292962 (not e!292960))))

(declare-fun res!302000 () Bool)

(assert (=> b!499990 (=> res!302000 e!292960)))

(declare-fun lt!226907 () (_ BitVec 32))

(assert (=> b!499990 (= res!302000 (= lt!226901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226907 lt!226909 lt!226902 mask!3524)))))

(assert (=> b!499990 (= lt!226901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226904 (select (arr!15503 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499990 (= lt!226907 (toIndex!0 lt!226909 mask!3524))))

(assert (=> b!499990 (= lt!226909 (select (store (arr!15503 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499990 (= lt!226904 (toIndex!0 (select (arr!15503 a!3235) j!176) mask!3524))))

(assert (=> b!499990 (= lt!226902 (array!32250 (store (arr!15503 a!3235) i!1204 k!2280) (size!15867 a!3235)))))

(declare-fun e!292963 () Bool)

(assert (=> b!499990 e!292963))

(declare-fun res!302005 () Bool)

(assert (=> b!499990 (=> (not res!302005) (not e!292963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32249 (_ BitVec 32)) Bool)

(assert (=> b!499990 (= res!302005 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226905 () Unit!14998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32249 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14998)

(assert (=> b!499990 (= lt!226905 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499991 () Bool)

(declare-fun e!292958 () Bool)

(assert (=> b!499991 (= e!292958 false)))

(declare-fun b!499992 () Bool)

(declare-fun res!302003 () Bool)

(assert (=> b!499992 (=> res!302003 e!292960)))

(assert (=> b!499992 (= res!302003 (or (undefined!4789 lt!226901) (not (is-Intermediate!3977 lt!226901))))))

(declare-fun b!499993 () Bool)

(declare-fun Unit!15000 () Unit!14998)

(assert (=> b!499993 (= e!292961 Unit!15000)))

(declare-fun lt!226906 () Unit!14998)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32249 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14998)

(assert (=> b!499993 (= lt!226906 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226904 #b00000000000000000000000000000000 (index!18092 lt!226901) (x!47153 lt!226901) mask!3524))))

(declare-fun res!302006 () Bool)

(assert (=> b!499993 (= res!302006 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226904 lt!226909 lt!226902 mask!3524) (Intermediate!3977 false (index!18092 lt!226901) (x!47153 lt!226901))))))

(assert (=> b!499993 (=> (not res!302006) (not e!292958))))

(assert (=> b!499993 e!292958))

(declare-fun b!499994 () Bool)

(declare-fun res!301997 () Bool)

(assert (=> b!499994 (=> (not res!301997) (not e!292962))))

(assert (=> b!499994 (= res!301997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499995 () Bool)

(declare-fun Unit!15001 () Unit!14998)

(assert (=> b!499995 (= e!292961 Unit!15001)))

(declare-fun res!302009 () Bool)

(assert (=> start!45464 (=> (not res!302009) (not e!292959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45464 (= res!302009 (validMask!0 mask!3524))))

(assert (=> start!45464 e!292959))

(assert (=> start!45464 true))

(declare-fun array_inv!11277 (array!32249) Bool)

(assert (=> start!45464 (array_inv!11277 a!3235)))

(declare-fun b!499988 () Bool)

(declare-fun res!302002 () Bool)

(assert (=> b!499988 (=> (not res!302002) (not e!292959))))

(assert (=> b!499988 (= res!302002 (validKeyInArray!0 k!2280))))

(declare-fun b!499996 () Bool)

(assert (=> b!499996 (= e!292959 e!292962)))

(declare-fun res!302001 () Bool)

(assert (=> b!499996 (=> (not res!302001) (not e!292962))))

(declare-fun lt!226903 () SeekEntryResult!3977)

(assert (=> b!499996 (= res!302001 (or (= lt!226903 (MissingZero!3977 i!1204)) (= lt!226903 (MissingVacant!3977 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32249 (_ BitVec 32)) SeekEntryResult!3977)

(assert (=> b!499996 (= lt!226903 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499997 () Bool)

(assert (=> b!499997 (= e!292963 (= (seekEntryOrOpen!0 (select (arr!15503 a!3235) j!176) a!3235 mask!3524) (Found!3977 j!176)))))

(assert (= (and start!45464 res!302009) b!499986))

(assert (= (and b!499986 res!302007) b!499985))

(assert (= (and b!499985 res!301999) b!499988))

(assert (= (and b!499988 res!302002) b!499989))

(assert (= (and b!499989 res!302004) b!499996))

(assert (= (and b!499996 res!302001) b!499994))

(assert (= (and b!499994 res!301997) b!499987))

(assert (= (and b!499987 res!301998) b!499990))

(assert (= (and b!499990 res!302005) b!499997))

(assert (= (and b!499990 (not res!302000)) b!499992))

(assert (= (and b!499992 (not res!302003)) b!499983))

(assert (= (and b!499983 c!59270) b!499993))

(assert (= (and b!499983 (not c!59270)) b!499995))

(assert (= (and b!499993 res!302006) b!499991))

(assert (= (and b!499983 (not res!302008)) b!499984))

(declare-fun m!481171 () Bool)

(assert (=> b!499985 m!481171))

(assert (=> b!499985 m!481171))

(declare-fun m!481173 () Bool)

(assert (=> b!499985 m!481173))

(declare-fun m!481175 () Bool)

(assert (=> b!499983 m!481175))

(assert (=> b!499983 m!481171))

(declare-fun m!481177 () Bool)

(assert (=> b!499988 m!481177))

(declare-fun m!481179 () Bool)

(assert (=> b!499989 m!481179))

(declare-fun m!481181 () Bool)

(assert (=> b!499987 m!481181))

(declare-fun m!481183 () Bool)

(assert (=> b!499990 m!481183))

(declare-fun m!481185 () Bool)

(assert (=> b!499990 m!481185))

(declare-fun m!481187 () Bool)

(assert (=> b!499990 m!481187))

(declare-fun m!481189 () Bool)

(assert (=> b!499990 m!481189))

(assert (=> b!499990 m!481171))

(declare-fun m!481191 () Bool)

(assert (=> b!499990 m!481191))

(assert (=> b!499990 m!481171))

(declare-fun m!481193 () Bool)

(assert (=> b!499990 m!481193))

(assert (=> b!499990 m!481171))

(declare-fun m!481195 () Bool)

(assert (=> b!499990 m!481195))

(declare-fun m!481197 () Bool)

(assert (=> b!499990 m!481197))

(declare-fun m!481199 () Bool)

(assert (=> start!45464 m!481199))

(declare-fun m!481201 () Bool)

(assert (=> start!45464 m!481201))

(declare-fun m!481203 () Bool)

(assert (=> b!499993 m!481203))

(declare-fun m!481205 () Bool)

(assert (=> b!499993 m!481205))

(declare-fun m!481207 () Bool)

(assert (=> b!499996 m!481207))

(assert (=> b!499984 m!481205))

(assert (=> b!499997 m!481171))

(assert (=> b!499997 m!481171))

(declare-fun m!481209 () Bool)

(assert (=> b!499997 m!481209))

(declare-fun m!481211 () Bool)

(assert (=> b!499994 m!481211))

(push 1)

