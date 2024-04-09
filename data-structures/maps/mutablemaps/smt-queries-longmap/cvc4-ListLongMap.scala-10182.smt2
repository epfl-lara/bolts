; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120062 () Bool)

(assert start!120062)

(declare-fun b!1397171 () Bool)

(declare-fun res!936196 () Bool)

(declare-fun e!791014 () Bool)

(assert (=> b!1397171 (=> (not res!936196) (not e!791014))))

(declare-datatypes ((array!95509 0))(
  ( (array!95510 (arr!46104 (Array (_ BitVec 32) (_ BitVec 64))) (size!46655 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95509)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397171 (= res!936196 (validKeyInArray!0 (select (arr!46104 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!791012 () Bool)

(declare-fun b!1397172 () Bool)

(declare-datatypes ((SeekEntryResult!10443 0))(
  ( (MissingZero!10443 (index!44142 (_ BitVec 32))) (Found!10443 (index!44143 (_ BitVec 32))) (Intermediate!10443 (undefined!11255 Bool) (index!44144 (_ BitVec 32)) (x!125804 (_ BitVec 32))) (Undefined!10443) (MissingVacant!10443 (index!44145 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95509 (_ BitVec 32)) SeekEntryResult!10443)

(assert (=> b!1397172 (= e!791012 (= (seekEntryOrOpen!0 (select (arr!46104 a!2901) j!112) a!2901 mask!2840) (Found!10443 j!112)))))

(declare-fun b!1397173 () Bool)

(declare-fun res!936195 () Bool)

(assert (=> b!1397173 (=> (not res!936195) (not e!791014))))

(declare-datatypes ((List!32803 0))(
  ( (Nil!32800) (Cons!32799 (h!34041 (_ BitVec 64)) (t!47504 List!32803)) )
))
(declare-fun arrayNoDuplicates!0 (array!95509 (_ BitVec 32) List!32803) Bool)

(assert (=> b!1397173 (= res!936195 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32800))))

(declare-fun b!1397174 () Bool)

(declare-fun res!936197 () Bool)

(assert (=> b!1397174 (=> (not res!936197) (not e!791014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95509 (_ BitVec 32)) Bool)

(assert (=> b!1397174 (= res!936197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397175 () Bool)

(declare-fun e!791011 () Bool)

(assert (=> b!1397175 (= e!791011 true)))

(declare-fun lt!614001 () (_ BitVec 64))

(declare-fun lt!613999 () (_ BitVec 32))

(declare-fun lt!614003 () SeekEntryResult!10443)

(declare-fun lt!614004 () array!95509)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95509 (_ BitVec 32)) SeekEntryResult!10443)

(assert (=> b!1397175 (= lt!614003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613999 lt!614001 lt!614004 mask!2840))))

(declare-fun b!1397176 () Bool)

(declare-fun e!791013 () Bool)

(assert (=> b!1397176 (= e!791014 (not e!791013))))

(declare-fun res!936198 () Bool)

(assert (=> b!1397176 (=> res!936198 e!791013)))

(declare-fun lt!614002 () SeekEntryResult!10443)

(assert (=> b!1397176 (= res!936198 (or (not (is-Intermediate!10443 lt!614002)) (undefined!11255 lt!614002)))))

(assert (=> b!1397176 e!791012))

(declare-fun res!936199 () Bool)

(assert (=> b!1397176 (=> (not res!936199) (not e!791012))))

(assert (=> b!1397176 (= res!936199 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46840 0))(
  ( (Unit!46841) )
))
(declare-fun lt!614000 () Unit!46840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95509 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46840)

(assert (=> b!1397176 (= lt!614000 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397176 (= lt!614002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613999 (select (arr!46104 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397176 (= lt!613999 (toIndex!0 (select (arr!46104 a!2901) j!112) mask!2840))))

(declare-fun b!1397177 () Bool)

(declare-fun res!936194 () Bool)

(assert (=> b!1397177 (=> (not res!936194) (not e!791014))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397177 (= res!936194 (validKeyInArray!0 (select (arr!46104 a!2901) i!1037)))))

(declare-fun b!1397178 () Bool)

(assert (=> b!1397178 (= e!791013 e!791011)))

(declare-fun res!936193 () Bool)

(assert (=> b!1397178 (=> res!936193 e!791011)))

(declare-fun lt!614005 () SeekEntryResult!10443)

(assert (=> b!1397178 (= res!936193 (or (= lt!614002 lt!614005) (not (is-Intermediate!10443 lt!614005)) (bvslt (x!125804 lt!614002) #b00000000000000000000000000000000) (bvsgt (x!125804 lt!614002) #b01111111111111111111111111111110) (bvslt lt!613999 #b00000000000000000000000000000000) (bvsge lt!613999 (size!46655 a!2901)) (bvslt (index!44144 lt!614002) #b00000000000000000000000000000000) (bvsge (index!44144 lt!614002) (size!46655 a!2901)) (not (= lt!614002 (Intermediate!10443 false (index!44144 lt!614002) (x!125804 lt!614002)))) (not (= lt!614005 (Intermediate!10443 (undefined!11255 lt!614005) (index!44144 lt!614005) (x!125804 lt!614005))))))))

(assert (=> b!1397178 (= lt!614005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614001 mask!2840) lt!614001 lt!614004 mask!2840))))

(assert (=> b!1397178 (= lt!614001 (select (store (arr!46104 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397178 (= lt!614004 (array!95510 (store (arr!46104 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46655 a!2901)))))

(declare-fun res!936201 () Bool)

(assert (=> start!120062 (=> (not res!936201) (not e!791014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120062 (= res!936201 (validMask!0 mask!2840))))

(assert (=> start!120062 e!791014))

(assert (=> start!120062 true))

(declare-fun array_inv!35049 (array!95509) Bool)

(assert (=> start!120062 (array_inv!35049 a!2901)))

(declare-fun b!1397179 () Bool)

(declare-fun res!936200 () Bool)

(assert (=> b!1397179 (=> (not res!936200) (not e!791014))))

(assert (=> b!1397179 (= res!936200 (and (= (size!46655 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46655 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46655 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120062 res!936201) b!1397179))

(assert (= (and b!1397179 res!936200) b!1397177))

(assert (= (and b!1397177 res!936194) b!1397171))

(assert (= (and b!1397171 res!936196) b!1397174))

(assert (= (and b!1397174 res!936197) b!1397173))

(assert (= (and b!1397173 res!936195) b!1397176))

(assert (= (and b!1397176 res!936199) b!1397172))

(assert (= (and b!1397176 (not res!936198)) b!1397178))

(assert (= (and b!1397178 (not res!936193)) b!1397175))

(declare-fun m!1283939 () Bool)

(assert (=> b!1397178 m!1283939))

(assert (=> b!1397178 m!1283939))

(declare-fun m!1283941 () Bool)

(assert (=> b!1397178 m!1283941))

(declare-fun m!1283943 () Bool)

(assert (=> b!1397178 m!1283943))

(declare-fun m!1283945 () Bool)

(assert (=> b!1397178 m!1283945))

(declare-fun m!1283947 () Bool)

(assert (=> b!1397173 m!1283947))

(declare-fun m!1283949 () Bool)

(assert (=> b!1397174 m!1283949))

(declare-fun m!1283951 () Bool)

(assert (=> b!1397177 m!1283951))

(assert (=> b!1397177 m!1283951))

(declare-fun m!1283953 () Bool)

(assert (=> b!1397177 m!1283953))

(declare-fun m!1283955 () Bool)

(assert (=> b!1397172 m!1283955))

(assert (=> b!1397172 m!1283955))

(declare-fun m!1283957 () Bool)

(assert (=> b!1397172 m!1283957))

(assert (=> b!1397176 m!1283955))

(declare-fun m!1283959 () Bool)

(assert (=> b!1397176 m!1283959))

(assert (=> b!1397176 m!1283955))

(declare-fun m!1283961 () Bool)

(assert (=> b!1397176 m!1283961))

(assert (=> b!1397176 m!1283955))

(declare-fun m!1283963 () Bool)

(assert (=> b!1397176 m!1283963))

(declare-fun m!1283965 () Bool)

(assert (=> b!1397176 m!1283965))

(assert (=> b!1397171 m!1283955))

(assert (=> b!1397171 m!1283955))

(declare-fun m!1283967 () Bool)

(assert (=> b!1397171 m!1283967))

(declare-fun m!1283969 () Bool)

(assert (=> b!1397175 m!1283969))

(declare-fun m!1283971 () Bool)

(assert (=> start!120062 m!1283971))

(declare-fun m!1283973 () Bool)

(assert (=> start!120062 m!1283973))

(push 1)

