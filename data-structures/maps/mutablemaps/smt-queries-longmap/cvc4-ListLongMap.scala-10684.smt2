; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125288 () Bool)

(assert start!125288)

(declare-fun b!1461505 () Bool)

(declare-fun e!821670 () Bool)

(declare-fun e!821667 () Bool)

(assert (=> b!1461505 (= e!821670 e!821667)))

(declare-fun res!991210 () Bool)

(assert (=> b!1461505 (=> (not res!991210) (not e!821667))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98653 0))(
  ( (array!98654 (arr!47610 (Array (_ BitVec 32) (_ BitVec 64))) (size!48161 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98653)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1461505 (= res!991210 (= (select (store (arr!47610 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640118 () array!98653)

(assert (=> b!1461505 (= lt!640118 (array!98654 (store (arr!47610 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48161 a!2862)))))

(declare-fun lt!640120 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1461506 () Bool)

(declare-fun lt!640119 () (_ BitVec 64))

(declare-fun e!821668 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11885 0))(
  ( (MissingZero!11885 (index!49931 (_ BitVec 32))) (Found!11885 (index!49932 (_ BitVec 32))) (Intermediate!11885 (undefined!12697 Bool) (index!49933 (_ BitVec 32)) (x!131529 (_ BitVec 32))) (Undefined!11885) (MissingVacant!11885 (index!49934 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98653 (_ BitVec 32)) SeekEntryResult!11885)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98653 (_ BitVec 32)) SeekEntryResult!11885)

(assert (=> b!1461506 (= e!821668 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640120 intermediateAfterIndex!19 lt!640119 lt!640118 mask!2687) (seekEntryOrOpen!0 lt!640119 lt!640118 mask!2687))))))

(declare-fun b!1461507 () Bool)

(declare-fun res!991208 () Bool)

(assert (=> b!1461507 (=> (not res!991208) (not e!821670))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1461507 (= res!991208 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48161 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48161 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48161 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461508 () Bool)

(declare-fun res!991216 () Bool)

(declare-fun e!821665 () Bool)

(assert (=> b!1461508 (=> (not res!991216) (not e!821665))))

(assert (=> b!1461508 (= res!991216 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461509 () Bool)

(declare-fun res!991213 () Bool)

(assert (=> b!1461509 (=> (not res!991213) (not e!821670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461509 (= res!991213 (validKeyInArray!0 (select (arr!47610 a!2862) i!1006)))))

(declare-fun lt!640122 () SeekEntryResult!11885)

(declare-fun b!1461510 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98653 (_ BitVec 32)) SeekEntryResult!11885)

(assert (=> b!1461510 (= e!821668 (not (= lt!640122 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640120 lt!640119 lt!640118 mask!2687))))))

(declare-fun b!1461511 () Bool)

(declare-fun e!821666 () Bool)

(assert (=> b!1461511 (= e!821666 true)))

(declare-fun lt!640123 () Bool)

(assert (=> b!1461511 (= lt!640123 e!821668)))

(declare-fun c!134666 () Bool)

(assert (=> b!1461511 (= c!134666 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!991212 () Bool)

(assert (=> start!125288 (=> (not res!991212) (not e!821670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125288 (= res!991212 (validMask!0 mask!2687))))

(assert (=> start!125288 e!821670))

(assert (=> start!125288 true))

(declare-fun array_inv!36555 (array!98653) Bool)

(assert (=> start!125288 (array_inv!36555 a!2862)))

(declare-fun b!1461512 () Bool)

(declare-fun res!991201 () Bool)

(assert (=> b!1461512 (=> (not res!991201) (not e!821670))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1461512 (= res!991201 (and (= (size!48161 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48161 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48161 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461513 () Bool)

(declare-fun e!821664 () Bool)

(assert (=> b!1461513 (= e!821667 e!821664)))

(declare-fun res!991214 () Bool)

(assert (=> b!1461513 (=> (not res!991214) (not e!821664))))

(declare-fun lt!640117 () SeekEntryResult!11885)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461513 (= res!991214 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47610 a!2862) j!93) mask!2687) (select (arr!47610 a!2862) j!93) a!2862 mask!2687) lt!640117))))

(assert (=> b!1461513 (= lt!640117 (Intermediate!11885 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461514 () Bool)

(declare-fun e!821669 () Bool)

(assert (=> b!1461514 (= e!821669 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640119 lt!640118 mask!2687) (seekEntryOrOpen!0 lt!640119 lt!640118 mask!2687)))))

(declare-fun b!1461515 () Bool)

(declare-fun res!991203 () Bool)

(assert (=> b!1461515 (=> (not res!991203) (not e!821670))))

(declare-datatypes ((List!34291 0))(
  ( (Nil!34288) (Cons!34287 (h!35637 (_ BitVec 64)) (t!48992 List!34291)) )
))
(declare-fun arrayNoDuplicates!0 (array!98653 (_ BitVec 32) List!34291) Bool)

(assert (=> b!1461515 (= res!991203 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34288))))

(declare-fun b!1461516 () Bool)

(declare-fun res!991217 () Bool)

(assert (=> b!1461516 (=> (not res!991217) (not e!821664))))

(assert (=> b!1461516 (= res!991217 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47610 a!2862) j!93) a!2862 mask!2687) lt!640117))))

(declare-fun b!1461517 () Bool)

(declare-fun res!991209 () Bool)

(assert (=> b!1461517 (=> res!991209 e!821666)))

(assert (=> b!1461517 (= res!991209 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640120 (select (arr!47610 a!2862) j!93) a!2862 mask!2687) lt!640117)))))

(declare-fun b!1461518 () Bool)

(declare-fun res!991218 () Bool)

(assert (=> b!1461518 (=> (not res!991218) (not e!821670))))

(assert (=> b!1461518 (= res!991218 (validKeyInArray!0 (select (arr!47610 a!2862) j!93)))))

(declare-fun b!1461519 () Bool)

(declare-fun res!991202 () Bool)

(declare-fun e!821663 () Bool)

(assert (=> b!1461519 (=> (not res!991202) (not e!821663))))

(assert (=> b!1461519 (= res!991202 (= (seekEntryOrOpen!0 (select (arr!47610 a!2862) j!93) a!2862 mask!2687) (Found!11885 j!93)))))

(declare-fun b!1461520 () Bool)

(assert (=> b!1461520 (= e!821664 e!821665)))

(declare-fun res!991215 () Bool)

(assert (=> b!1461520 (=> (not res!991215) (not e!821665))))

(assert (=> b!1461520 (= res!991215 (= lt!640122 (Intermediate!11885 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1461520 (= lt!640122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640119 mask!2687) lt!640119 lt!640118 mask!2687))))

(assert (=> b!1461520 (= lt!640119 (select (store (arr!47610 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461521 () Bool)

(assert (=> b!1461521 (= e!821669 (= lt!640122 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640119 lt!640118 mask!2687)))))

(declare-fun b!1461522 () Bool)

(declare-fun res!991206 () Bool)

(assert (=> b!1461522 (=> (not res!991206) (not e!821670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98653 (_ BitVec 32)) Bool)

(assert (=> b!1461522 (= res!991206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461523 () Bool)

(declare-fun res!991211 () Bool)

(assert (=> b!1461523 (=> (not res!991211) (not e!821665))))

(assert (=> b!1461523 (= res!991211 e!821669)))

(declare-fun c!134665 () Bool)

(assert (=> b!1461523 (= c!134665 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461524 () Bool)

(declare-fun e!821672 () Bool)

(assert (=> b!1461524 (= e!821672 e!821666)))

(declare-fun res!991207 () Bool)

(assert (=> b!1461524 (=> res!991207 e!821666)))

(assert (=> b!1461524 (= res!991207 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640120 #b00000000000000000000000000000000) (bvsge lt!640120 (size!48161 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461524 (= lt!640120 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461525 () Bool)

(assert (=> b!1461525 (= e!821663 (or (= (select (arr!47610 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47610 a!2862) intermediateBeforeIndex!19) (select (arr!47610 a!2862) j!93))))))

(declare-fun b!1461526 () Bool)

(assert (=> b!1461526 (= e!821665 (not e!821672))))

(declare-fun res!991204 () Bool)

(assert (=> b!1461526 (=> res!991204 e!821672)))

(assert (=> b!1461526 (= res!991204 (or (and (= (select (arr!47610 a!2862) index!646) (select (store (arr!47610 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47610 a!2862) index!646) (select (arr!47610 a!2862) j!93))) (= (select (arr!47610 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461526 e!821663))

(declare-fun res!991205 () Bool)

(assert (=> b!1461526 (=> (not res!991205) (not e!821663))))

(assert (=> b!1461526 (= res!991205 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49214 0))(
  ( (Unit!49215) )
))
(declare-fun lt!640121 () Unit!49214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49214)

(assert (=> b!1461526 (= lt!640121 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125288 res!991212) b!1461512))

(assert (= (and b!1461512 res!991201) b!1461509))

(assert (= (and b!1461509 res!991213) b!1461518))

(assert (= (and b!1461518 res!991218) b!1461522))

(assert (= (and b!1461522 res!991206) b!1461515))

(assert (= (and b!1461515 res!991203) b!1461507))

(assert (= (and b!1461507 res!991208) b!1461505))

(assert (= (and b!1461505 res!991210) b!1461513))

(assert (= (and b!1461513 res!991214) b!1461516))

(assert (= (and b!1461516 res!991217) b!1461520))

(assert (= (and b!1461520 res!991215) b!1461523))

(assert (= (and b!1461523 c!134665) b!1461521))

(assert (= (and b!1461523 (not c!134665)) b!1461514))

(assert (= (and b!1461523 res!991211) b!1461508))

(assert (= (and b!1461508 res!991216) b!1461526))

(assert (= (and b!1461526 res!991205) b!1461519))

(assert (= (and b!1461519 res!991202) b!1461525))

(assert (= (and b!1461526 (not res!991204)) b!1461524))

(assert (= (and b!1461524 (not res!991207)) b!1461517))

(assert (= (and b!1461517 (not res!991209)) b!1461511))

(assert (= (and b!1461511 c!134666) b!1461510))

(assert (= (and b!1461511 (not c!134666)) b!1461506))

(declare-fun m!1349123 () Bool)

(assert (=> b!1461514 m!1349123))

(declare-fun m!1349125 () Bool)

(assert (=> b!1461514 m!1349125))

(declare-fun m!1349127 () Bool)

(assert (=> b!1461517 m!1349127))

(assert (=> b!1461517 m!1349127))

(declare-fun m!1349129 () Bool)

(assert (=> b!1461517 m!1349129))

(declare-fun m!1349131 () Bool)

(assert (=> b!1461526 m!1349131))

(declare-fun m!1349133 () Bool)

(assert (=> b!1461526 m!1349133))

(declare-fun m!1349135 () Bool)

(assert (=> b!1461526 m!1349135))

(declare-fun m!1349137 () Bool)

(assert (=> b!1461526 m!1349137))

(declare-fun m!1349139 () Bool)

(assert (=> b!1461526 m!1349139))

(assert (=> b!1461526 m!1349127))

(declare-fun m!1349141 () Bool)

(assert (=> b!1461524 m!1349141))

(declare-fun m!1349143 () Bool)

(assert (=> b!1461521 m!1349143))

(declare-fun m!1349145 () Bool)

(assert (=> b!1461522 m!1349145))

(declare-fun m!1349147 () Bool)

(assert (=> b!1461509 m!1349147))

(assert (=> b!1461509 m!1349147))

(declare-fun m!1349149 () Bool)

(assert (=> b!1461509 m!1349149))

(assert (=> b!1461513 m!1349127))

(assert (=> b!1461513 m!1349127))

(declare-fun m!1349151 () Bool)

(assert (=> b!1461513 m!1349151))

(assert (=> b!1461513 m!1349151))

(assert (=> b!1461513 m!1349127))

(declare-fun m!1349153 () Bool)

(assert (=> b!1461513 m!1349153))

(declare-fun m!1349155 () Bool)

(assert (=> start!125288 m!1349155))

(declare-fun m!1349157 () Bool)

(assert (=> start!125288 m!1349157))

(assert (=> b!1461505 m!1349133))

(declare-fun m!1349159 () Bool)

(assert (=> b!1461505 m!1349159))

(declare-fun m!1349161 () Bool)

(assert (=> b!1461520 m!1349161))

(assert (=> b!1461520 m!1349161))

(declare-fun m!1349163 () Bool)

(assert (=> b!1461520 m!1349163))

(assert (=> b!1461520 m!1349133))

(declare-fun m!1349165 () Bool)

(assert (=> b!1461520 m!1349165))

(assert (=> b!1461518 m!1349127))

(assert (=> b!1461518 m!1349127))

(declare-fun m!1349167 () Bool)

(assert (=> b!1461518 m!1349167))

(declare-fun m!1349169 () Bool)

(assert (=> b!1461506 m!1349169))

(assert (=> b!1461506 m!1349125))

(assert (=> b!1461516 m!1349127))

(assert (=> b!1461516 m!1349127))

(declare-fun m!1349171 () Bool)

(assert (=> b!1461516 m!1349171))

(declare-fun m!1349173 () Bool)

(assert (=> b!1461525 m!1349173))

(assert (=> b!1461525 m!1349127))

(declare-fun m!1349175 () Bool)

(assert (=> b!1461510 m!1349175))

(assert (=> b!1461519 m!1349127))

(assert (=> b!1461519 m!1349127))

(declare-fun m!1349177 () Bool)

(assert (=> b!1461519 m!1349177))

(declare-fun m!1349179 () Bool)

(assert (=> b!1461515 m!1349179))

(push 1)

