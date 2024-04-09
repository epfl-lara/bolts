; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51090 () Bool)

(assert start!51090)

(declare-fun b!557854 () Bool)

(declare-fun e!321374 () Bool)

(declare-fun e!321379 () Bool)

(assert (=> b!557854 (= e!321374 e!321379)))

(declare-fun res!349875 () Bool)

(assert (=> b!557854 (=> (not res!349875) (not e!321379))))

(declare-fun lt!253534 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5306 0))(
  ( (MissingZero!5306 (index!23451 (_ BitVec 32))) (Found!5306 (index!23452 (_ BitVec 32))) (Intermediate!5306 (undefined!6118 Bool) (index!23453 (_ BitVec 32)) (x!52377 (_ BitVec 32))) (Undefined!5306) (MissingVacant!5306 (index!23454 (_ BitVec 32))) )
))
(declare-fun lt!253530 () SeekEntryResult!5306)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35098 0))(
  ( (array!35099 (arr!16850 (Array (_ BitVec 32) (_ BitVec 64))) (size!17214 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35098)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35098 (_ BitVec 32)) SeekEntryResult!5306)

(assert (=> b!557854 (= res!349875 (= lt!253530 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253534 (select (store (arr!16850 a!3118) i!1132 k!1914) j!142) (array!35099 (store (arr!16850 a!3118) i!1132 k!1914) (size!17214 a!3118)) mask!3119)))))

(declare-fun lt!253531 () (_ BitVec 32))

(assert (=> b!557854 (= lt!253530 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253531 (select (arr!16850 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557854 (= lt!253534 (toIndex!0 (select (store (arr!16850 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557854 (= lt!253531 (toIndex!0 (select (arr!16850 a!3118) j!142) mask!3119))))

(declare-fun b!557855 () Bool)

(declare-fun res!349872 () Bool)

(declare-fun e!321378 () Bool)

(assert (=> b!557855 (=> (not res!349872) (not e!321378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557855 (= res!349872 (validKeyInArray!0 k!1914))))

(declare-fun b!557856 () Bool)

(declare-fun res!349871 () Bool)

(assert (=> b!557856 (=> (not res!349871) (not e!321374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35098 (_ BitVec 32)) Bool)

(assert (=> b!557856 (= res!349871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun lt!253533 () SeekEntryResult!5306)

(declare-fun e!321377 () Bool)

(declare-fun b!557857 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35098 (_ BitVec 32)) SeekEntryResult!5306)

(assert (=> b!557857 (= e!321377 (= lt!253533 (seekKeyOrZeroReturnVacant!0 (x!52377 lt!253530) (index!23453 lt!253530) (index!23453 lt!253530) (select (arr!16850 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557858 () Bool)

(declare-fun res!349873 () Bool)

(assert (=> b!557858 (=> (not res!349873) (not e!321378))))

(assert (=> b!557858 (= res!349873 (and (= (size!17214 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17214 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17214 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557859 () Bool)

(declare-fun e!321375 () Bool)

(assert (=> b!557859 (= e!321375 e!321377)))

(declare-fun res!349870 () Bool)

(assert (=> b!557859 (=> res!349870 e!321377)))

(assert (=> b!557859 (= res!349870 (or (undefined!6118 lt!253530) (not (is-Intermediate!5306 lt!253530)) (= (select (arr!16850 a!3118) (index!23453 lt!253530)) (select (arr!16850 a!3118) j!142)) (= (select (arr!16850 a!3118) (index!23453 lt!253530)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557860 () Bool)

(declare-fun res!349876 () Bool)

(assert (=> b!557860 (=> (not res!349876) (not e!321378))))

(assert (=> b!557860 (= res!349876 (validKeyInArray!0 (select (arr!16850 a!3118) j!142)))))

(declare-fun b!557861 () Bool)

(declare-fun res!349877 () Bool)

(assert (=> b!557861 (=> (not res!349877) (not e!321378))))

(declare-fun arrayContainsKey!0 (array!35098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557861 (= res!349877 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557862 () Bool)

(assert (=> b!557862 (= e!321379 (not (or (undefined!6118 lt!253530) (not (is-Intermediate!5306 lt!253530)) (= (select (arr!16850 a!3118) (index!23453 lt!253530)) (select (arr!16850 a!3118) j!142)) (= (select (arr!16850 a!3118) (index!23453 lt!253530)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!557862 e!321375))

(declare-fun res!349869 () Bool)

(assert (=> b!557862 (=> (not res!349869) (not e!321375))))

(assert (=> b!557862 (= res!349869 (= lt!253533 (Found!5306 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35098 (_ BitVec 32)) SeekEntryResult!5306)

(assert (=> b!557862 (= lt!253533 (seekEntryOrOpen!0 (select (arr!16850 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!557862 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17386 0))(
  ( (Unit!17387) )
))
(declare-fun lt!253535 () Unit!17386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35098 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17386)

(assert (=> b!557862 (= lt!253535 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!349868 () Bool)

(assert (=> start!51090 (=> (not res!349868) (not e!321378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51090 (= res!349868 (validMask!0 mask!3119))))

(assert (=> start!51090 e!321378))

(assert (=> start!51090 true))

(declare-fun array_inv!12624 (array!35098) Bool)

(assert (=> start!51090 (array_inv!12624 a!3118)))

(declare-fun b!557863 () Bool)

(declare-fun res!349867 () Bool)

(assert (=> b!557863 (=> (not res!349867) (not e!321374))))

(declare-datatypes ((List!10983 0))(
  ( (Nil!10980) (Cons!10979 (h!11973 (_ BitVec 64)) (t!17219 List!10983)) )
))
(declare-fun arrayNoDuplicates!0 (array!35098 (_ BitVec 32) List!10983) Bool)

(assert (=> b!557863 (= res!349867 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10980))))

(declare-fun b!557864 () Bool)

(assert (=> b!557864 (= e!321378 e!321374)))

(declare-fun res!349874 () Bool)

(assert (=> b!557864 (=> (not res!349874) (not e!321374))))

(declare-fun lt!253532 () SeekEntryResult!5306)

(assert (=> b!557864 (= res!349874 (or (= lt!253532 (MissingZero!5306 i!1132)) (= lt!253532 (MissingVacant!5306 i!1132))))))

(assert (=> b!557864 (= lt!253532 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51090 res!349868) b!557858))

(assert (= (and b!557858 res!349873) b!557860))

(assert (= (and b!557860 res!349876) b!557855))

(assert (= (and b!557855 res!349872) b!557861))

(assert (= (and b!557861 res!349877) b!557864))

(assert (= (and b!557864 res!349874) b!557856))

(assert (= (and b!557856 res!349871) b!557863))

(assert (= (and b!557863 res!349867) b!557854))

(assert (= (and b!557854 res!349875) b!557862))

(assert (= (and b!557862 res!349869) b!557859))

(assert (= (and b!557859 (not res!349870)) b!557857))

(declare-fun m!535791 () Bool)

(assert (=> b!557859 m!535791))

(declare-fun m!535793 () Bool)

(assert (=> b!557859 m!535793))

(declare-fun m!535795 () Bool)

(assert (=> b!557863 m!535795))

(assert (=> b!557854 m!535793))

(declare-fun m!535797 () Bool)

(assert (=> b!557854 m!535797))

(assert (=> b!557854 m!535793))

(assert (=> b!557854 m!535793))

(declare-fun m!535799 () Bool)

(assert (=> b!557854 m!535799))

(declare-fun m!535801 () Bool)

(assert (=> b!557854 m!535801))

(declare-fun m!535803 () Bool)

(assert (=> b!557854 m!535803))

(assert (=> b!557854 m!535801))

(declare-fun m!535805 () Bool)

(assert (=> b!557854 m!535805))

(assert (=> b!557854 m!535801))

(declare-fun m!535807 () Bool)

(assert (=> b!557854 m!535807))

(declare-fun m!535809 () Bool)

(assert (=> b!557855 m!535809))

(assert (=> b!557860 m!535793))

(assert (=> b!557860 m!535793))

(declare-fun m!535811 () Bool)

(assert (=> b!557860 m!535811))

(declare-fun m!535813 () Bool)

(assert (=> b!557861 m!535813))

(assert (=> b!557857 m!535793))

(assert (=> b!557857 m!535793))

(declare-fun m!535815 () Bool)

(assert (=> b!557857 m!535815))

(declare-fun m!535817 () Bool)

(assert (=> b!557856 m!535817))

(assert (=> b!557862 m!535793))

(declare-fun m!535819 () Bool)

(assert (=> b!557862 m!535819))

(assert (=> b!557862 m!535791))

(declare-fun m!535821 () Bool)

(assert (=> b!557862 m!535821))

(assert (=> b!557862 m!535793))

(declare-fun m!535823 () Bool)

(assert (=> b!557862 m!535823))

(declare-fun m!535825 () Bool)

(assert (=> start!51090 m!535825))

(declare-fun m!535827 () Bool)

(assert (=> start!51090 m!535827))

(declare-fun m!535829 () Bool)

(assert (=> b!557864 m!535829))

(push 1)

