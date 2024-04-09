; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45458 () Bool)

(assert start!45458)

(declare-fun b!499848 () Bool)

(declare-fun res!301889 () Bool)

(declare-fun e!292888 () Bool)

(assert (=> b!499848 (=> (not res!301889) (not e!292888))))

(declare-datatypes ((array!32243 0))(
  ( (array!32244 (arr!15500 (Array (_ BitVec 32) (_ BitVec 64))) (size!15864 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32243)

(declare-datatypes ((List!9711 0))(
  ( (Nil!9708) (Cons!9707 (h!10581 (_ BitVec 64)) (t!15947 List!9711)) )
))
(declare-fun arrayNoDuplicates!0 (array!32243 (_ BitVec 32) List!9711) Bool)

(assert (=> b!499848 (= res!301889 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9708))))

(declare-fun b!499849 () Bool)

(declare-fun res!301886 () Bool)

(declare-fun e!292887 () Bool)

(assert (=> b!499849 (=> res!301886 e!292887)))

(declare-datatypes ((SeekEntryResult!3974 0))(
  ( (MissingZero!3974 (index!18078 (_ BitVec 32))) (Found!3974 (index!18079 (_ BitVec 32))) (Intermediate!3974 (undefined!4786 Bool) (index!18080 (_ BitVec 32)) (x!47142 (_ BitVec 32))) (Undefined!3974) (MissingVacant!3974 (index!18081 (_ BitVec 32))) )
))
(declare-fun lt!226817 () SeekEntryResult!3974)

(assert (=> b!499849 (= res!301886 (or (undefined!4786 lt!226817) (not (is-Intermediate!3974 lt!226817))))))

(declare-fun b!499850 () Bool)

(declare-fun e!292889 () Bool)

(assert (=> b!499850 (= e!292887 e!292889)))

(declare-fun res!301885 () Bool)

(assert (=> b!499850 (=> res!301885 e!292889)))

(declare-fun lt!226813 () (_ BitVec 32))

(assert (=> b!499850 (= res!301885 (or (bvsgt #b00000000000000000000000000000000 (x!47142 lt!226817)) (bvsgt (x!47142 lt!226817) #b01111111111111111111111111111110) (bvslt lt!226813 #b00000000000000000000000000000000) (bvsge lt!226813 (size!15864 a!3235)) (bvslt (index!18080 lt!226817) #b00000000000000000000000000000000) (bvsge (index!18080 lt!226817) (size!15864 a!3235)) (not (= lt!226817 (Intermediate!3974 false (index!18080 lt!226817) (x!47142 lt!226817))))))))

(assert (=> b!499850 (and (or (= (select (arr!15500 a!3235) (index!18080 lt!226817)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15500 a!3235) (index!18080 lt!226817)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15500 a!3235) (index!18080 lt!226817)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15500 a!3235) (index!18080 lt!226817)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14986 0))(
  ( (Unit!14987) )
))
(declare-fun lt!226820 () Unit!14986)

(declare-fun e!292891 () Unit!14986)

(assert (=> b!499850 (= lt!226820 e!292891)))

(declare-fun c!59261 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499850 (= c!59261 (= (select (arr!15500 a!3235) (index!18080 lt!226817)) (select (arr!15500 a!3235) j!176)))))

(assert (=> b!499850 (and (bvslt (x!47142 lt!226817) #b01111111111111111111111111111110) (or (= (select (arr!15500 a!3235) (index!18080 lt!226817)) (select (arr!15500 a!3235) j!176)) (= (select (arr!15500 a!3235) (index!18080 lt!226817)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15500 a!3235) (index!18080 lt!226817)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499851 () Bool)

(declare-fun res!301891 () Bool)

(declare-fun e!292890 () Bool)

(assert (=> b!499851 (=> (not res!301891) (not e!292890))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499851 (= res!301891 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499852 () Bool)

(declare-fun Unit!14988 () Unit!14986)

(assert (=> b!499852 (= e!292891 Unit!14988)))

(declare-fun b!499853 () Bool)

(declare-fun e!292885 () Bool)

(assert (=> b!499853 (= e!292885 false)))

(declare-fun b!499854 () Bool)

(declare-fun res!301884 () Bool)

(assert (=> b!499854 (=> (not res!301884) (not e!292888))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32243 (_ BitVec 32)) Bool)

(assert (=> b!499854 (= res!301884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499855 () Bool)

(declare-fun res!301880 () Bool)

(assert (=> b!499855 (=> (not res!301880) (not e!292890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499855 (= res!301880 (validKeyInArray!0 k!2280))))

(declare-fun b!499856 () Bool)

(assert (=> b!499856 (= e!292889 true)))

(declare-fun lt!226819 () array!32243)

(declare-fun lt!226816 () SeekEntryResult!3974)

(declare-fun lt!226818 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32243 (_ BitVec 32)) SeekEntryResult!3974)

(assert (=> b!499856 (= lt!226816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226813 lt!226818 lt!226819 mask!3524))))

(declare-fun b!499857 () Bool)

(declare-fun Unit!14989 () Unit!14986)

(assert (=> b!499857 (= e!292891 Unit!14989)))

(declare-fun lt!226811 () Unit!14986)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32243 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14986)

(assert (=> b!499857 (= lt!226811 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226813 #b00000000000000000000000000000000 (index!18080 lt!226817) (x!47142 lt!226817) mask!3524))))

(declare-fun res!301888 () Bool)

(assert (=> b!499857 (= res!301888 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226813 lt!226818 lt!226819 mask!3524) (Intermediate!3974 false (index!18080 lt!226817) (x!47142 lt!226817))))))

(assert (=> b!499857 (=> (not res!301888) (not e!292885))))

(assert (=> b!499857 e!292885))

(declare-fun b!499858 () Bool)

(assert (=> b!499858 (= e!292888 (not e!292887))))

(declare-fun res!301890 () Bool)

(assert (=> b!499858 (=> res!301890 e!292887)))

(declare-fun lt!226815 () (_ BitVec 32))

(assert (=> b!499858 (= res!301890 (= lt!226817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226815 lt!226818 lt!226819 mask!3524)))))

(assert (=> b!499858 (= lt!226817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226813 (select (arr!15500 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499858 (= lt!226815 (toIndex!0 lt!226818 mask!3524))))

(assert (=> b!499858 (= lt!226818 (select (store (arr!15500 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499858 (= lt!226813 (toIndex!0 (select (arr!15500 a!3235) j!176) mask!3524))))

(assert (=> b!499858 (= lt!226819 (array!32244 (store (arr!15500 a!3235) i!1204 k!2280) (size!15864 a!3235)))))

(declare-fun e!292884 () Bool)

(assert (=> b!499858 e!292884))

(declare-fun res!301881 () Bool)

(assert (=> b!499858 (=> (not res!301881) (not e!292884))))

(assert (=> b!499858 (= res!301881 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226814 () Unit!14986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32243 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14986)

(assert (=> b!499858 (= lt!226814 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499859 () Bool)

(assert (=> b!499859 (= e!292890 e!292888)))

(declare-fun res!301887 () Bool)

(assert (=> b!499859 (=> (not res!301887) (not e!292888))))

(declare-fun lt!226812 () SeekEntryResult!3974)

(assert (=> b!499859 (= res!301887 (or (= lt!226812 (MissingZero!3974 i!1204)) (= lt!226812 (MissingVacant!3974 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32243 (_ BitVec 32)) SeekEntryResult!3974)

(assert (=> b!499859 (= lt!226812 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499861 () Bool)

(declare-fun res!301882 () Bool)

(assert (=> b!499861 (=> (not res!301882) (not e!292890))))

(assert (=> b!499861 (= res!301882 (validKeyInArray!0 (select (arr!15500 a!3235) j!176)))))

(declare-fun b!499862 () Bool)

(declare-fun res!301892 () Bool)

(assert (=> b!499862 (=> (not res!301892) (not e!292890))))

(assert (=> b!499862 (= res!301892 (and (= (size!15864 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15864 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15864 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!301883 () Bool)

(assert (=> start!45458 (=> (not res!301883) (not e!292890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45458 (= res!301883 (validMask!0 mask!3524))))

(assert (=> start!45458 e!292890))

(assert (=> start!45458 true))

(declare-fun array_inv!11274 (array!32243) Bool)

(assert (=> start!45458 (array_inv!11274 a!3235)))

(declare-fun b!499860 () Bool)

(assert (=> b!499860 (= e!292884 (= (seekEntryOrOpen!0 (select (arr!15500 a!3235) j!176) a!3235 mask!3524) (Found!3974 j!176)))))

(assert (= (and start!45458 res!301883) b!499862))

(assert (= (and b!499862 res!301892) b!499861))

(assert (= (and b!499861 res!301882) b!499855))

(assert (= (and b!499855 res!301880) b!499851))

(assert (= (and b!499851 res!301891) b!499859))

(assert (= (and b!499859 res!301887) b!499854))

(assert (= (and b!499854 res!301884) b!499848))

(assert (= (and b!499848 res!301889) b!499858))

(assert (= (and b!499858 res!301881) b!499860))

(assert (= (and b!499858 (not res!301890)) b!499849))

(assert (= (and b!499849 (not res!301886)) b!499850))

(assert (= (and b!499850 c!59261) b!499857))

(assert (= (and b!499850 (not c!59261)) b!499852))

(assert (= (and b!499857 res!301888) b!499853))

(assert (= (and b!499850 (not res!301885)) b!499856))

(declare-fun m!481045 () Bool)

(assert (=> b!499848 m!481045))

(declare-fun m!481047 () Bool)

(assert (=> b!499850 m!481047))

(declare-fun m!481049 () Bool)

(assert (=> b!499850 m!481049))

(declare-fun m!481051 () Bool)

(assert (=> b!499858 m!481051))

(declare-fun m!481053 () Bool)

(assert (=> b!499858 m!481053))

(assert (=> b!499858 m!481049))

(declare-fun m!481055 () Bool)

(assert (=> b!499858 m!481055))

(assert (=> b!499858 m!481049))

(declare-fun m!481057 () Bool)

(assert (=> b!499858 m!481057))

(declare-fun m!481059 () Bool)

(assert (=> b!499858 m!481059))

(assert (=> b!499858 m!481049))

(declare-fun m!481061 () Bool)

(assert (=> b!499858 m!481061))

(declare-fun m!481063 () Bool)

(assert (=> b!499858 m!481063))

(declare-fun m!481065 () Bool)

(assert (=> b!499858 m!481065))

(assert (=> b!499860 m!481049))

(assert (=> b!499860 m!481049))

(declare-fun m!481067 () Bool)

(assert (=> b!499860 m!481067))

(declare-fun m!481069 () Bool)

(assert (=> b!499851 m!481069))

(declare-fun m!481071 () Bool)

(assert (=> b!499855 m!481071))

(declare-fun m!481073 () Bool)

(assert (=> b!499859 m!481073))

(declare-fun m!481075 () Bool)

(assert (=> b!499857 m!481075))

(declare-fun m!481077 () Bool)

(assert (=> b!499857 m!481077))

(declare-fun m!481079 () Bool)

(assert (=> b!499854 m!481079))

(assert (=> b!499861 m!481049))

(assert (=> b!499861 m!481049))

(declare-fun m!481081 () Bool)

(assert (=> b!499861 m!481081))

(declare-fun m!481083 () Bool)

(assert (=> start!45458 m!481083))

(declare-fun m!481085 () Bool)

(assert (=> start!45458 m!481085))

(assert (=> b!499856 m!481077))

(push 1)

