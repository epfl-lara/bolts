; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123388 () Bool)

(assert start!123388)

(declare-fun b!1430220 () Bool)

(declare-fun e!807526 () Bool)

(declare-fun e!807525 () Bool)

(assert (=> b!1430220 (= e!807526 e!807525)))

(declare-fun res!964763 () Bool)

(assert (=> b!1430220 (=> (not res!964763) (not e!807525))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97416 0))(
  ( (array!97417 (arr!47014 (Array (_ BitVec 32) (_ BitVec 64))) (size!47565 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97416)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11315 0))(
  ( (MissingZero!11315 (index!47651 (_ BitVec 32))) (Found!11315 (index!47652 (_ BitVec 32))) (Intermediate!11315 (undefined!12127 Bool) (index!47653 (_ BitVec 32)) (x!129294 (_ BitVec 32))) (Undefined!11315) (MissingVacant!11315 (index!47654 (_ BitVec 32))) )
))
(declare-fun lt!629650 () SeekEntryResult!11315)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97416 (_ BitVec 32)) SeekEntryResult!11315)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430220 (= res!964763 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47014 a!2831) j!81) mask!2608) (select (arr!47014 a!2831) j!81) a!2831 mask!2608) lt!629650))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1430220 (= lt!629650 (Intermediate!11315 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1430221 () Bool)

(declare-fun res!964766 () Bool)

(declare-fun e!807527 () Bool)

(assert (=> b!1430221 (=> (not res!964766) (not e!807527))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1430221 (= res!964766 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1430222 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1430222 (= e!807527 (not (or (= (select (arr!47014 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47014 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47014 a!2831) index!585) (select (arr!47014 a!2831) j!81)) (not (= (select (store (arr!47014 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= intermediateAfterIndex!13 i!982))))))

(declare-fun e!807523 () Bool)

(assert (=> b!1430222 e!807523))

(declare-fun res!964769 () Bool)

(assert (=> b!1430222 (=> (not res!964769) (not e!807523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97416 (_ BitVec 32)) Bool)

(assert (=> b!1430222 (= res!964769 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48324 0))(
  ( (Unit!48325) )
))
(declare-fun lt!629651 () Unit!48324)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97416 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48324)

(assert (=> b!1430222 (= lt!629651 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1430223 () Bool)

(declare-fun res!964760 () Bool)

(assert (=> b!1430223 (=> (not res!964760) (not e!807526))))

(assert (=> b!1430223 (= res!964760 (and (= (size!47565 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47565 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47565 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!964764 () Bool)

(assert (=> start!123388 (=> (not res!964764) (not e!807526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123388 (= res!964764 (validMask!0 mask!2608))))

(assert (=> start!123388 e!807526))

(assert (=> start!123388 true))

(declare-fun array_inv!35959 (array!97416) Bool)

(assert (=> start!123388 (array_inv!35959 a!2831)))

(declare-fun b!1430224 () Bool)

(declare-fun res!964762 () Bool)

(assert (=> b!1430224 (=> (not res!964762) (not e!807523))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97416 (_ BitVec 32)) SeekEntryResult!11315)

(assert (=> b!1430224 (= res!964762 (= (seekEntryOrOpen!0 (select (arr!47014 a!2831) j!81) a!2831 mask!2608) (Found!11315 j!81)))))

(declare-fun b!1430225 () Bool)

(declare-fun res!964758 () Bool)

(assert (=> b!1430225 (=> (not res!964758) (not e!807527))))

(declare-fun lt!629652 () array!97416)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!629649 () (_ BitVec 64))

(declare-fun lt!629653 () SeekEntryResult!11315)

(assert (=> b!1430225 (= res!964758 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629649 lt!629652 mask!2608) lt!629653))))

(declare-fun b!1430226 () Bool)

(declare-fun res!964761 () Bool)

(assert (=> b!1430226 (=> (not res!964761) (not e!807526))))

(declare-datatypes ((List!33704 0))(
  ( (Nil!33701) (Cons!33700 (h!35017 (_ BitVec 64)) (t!48405 List!33704)) )
))
(declare-fun arrayNoDuplicates!0 (array!97416 (_ BitVec 32) List!33704) Bool)

(assert (=> b!1430226 (= res!964761 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33701))))

(declare-fun b!1430227 () Bool)

(assert (=> b!1430227 (= e!807523 (or (= (select (arr!47014 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47014 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47014 a!2831) index!585) (select (arr!47014 a!2831) j!81)) (not (= (select (store (arr!47014 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!585 intermediateAfterIndex!13)))))

(declare-fun b!1430228 () Bool)

(declare-fun res!964770 () Bool)

(assert (=> b!1430228 (=> (not res!964770) (not e!807526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1430228 (= res!964770 (validKeyInArray!0 (select (arr!47014 a!2831) j!81)))))

(declare-fun b!1430229 () Bool)

(declare-fun res!964757 () Bool)

(assert (=> b!1430229 (=> (not res!964757) (not e!807526))))

(assert (=> b!1430229 (= res!964757 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47565 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47565 a!2831))))))

(declare-fun b!1430230 () Bool)

(assert (=> b!1430230 (= e!807525 e!807527)))

(declare-fun res!964768 () Bool)

(assert (=> b!1430230 (=> (not res!964768) (not e!807527))))

(assert (=> b!1430230 (= res!964768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629649 mask!2608) lt!629649 lt!629652 mask!2608) lt!629653))))

(assert (=> b!1430230 (= lt!629653 (Intermediate!11315 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1430230 (= lt!629649 (select (store (arr!47014 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1430230 (= lt!629652 (array!97417 (store (arr!47014 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47565 a!2831)))))

(declare-fun b!1430231 () Bool)

(declare-fun res!964759 () Bool)

(assert (=> b!1430231 (=> (not res!964759) (not e!807526))))

(assert (=> b!1430231 (= res!964759 (validKeyInArray!0 (select (arr!47014 a!2831) i!982)))))

(declare-fun b!1430232 () Bool)

(declare-fun res!964765 () Bool)

(assert (=> b!1430232 (=> (not res!964765) (not e!807527))))

(assert (=> b!1430232 (= res!964765 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47014 a!2831) j!81) a!2831 mask!2608) lt!629650))))

(declare-fun b!1430233 () Bool)

(declare-fun res!964767 () Bool)

(assert (=> b!1430233 (=> (not res!964767) (not e!807526))))

(assert (=> b!1430233 (= res!964767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123388 res!964764) b!1430223))

(assert (= (and b!1430223 res!964760) b!1430231))

(assert (= (and b!1430231 res!964759) b!1430228))

(assert (= (and b!1430228 res!964770) b!1430233))

(assert (= (and b!1430233 res!964767) b!1430226))

(assert (= (and b!1430226 res!964761) b!1430229))

(assert (= (and b!1430229 res!964757) b!1430220))

(assert (= (and b!1430220 res!964763) b!1430230))

(assert (= (and b!1430230 res!964768) b!1430232))

(assert (= (and b!1430232 res!964765) b!1430225))

(assert (= (and b!1430225 res!964758) b!1430221))

(assert (= (and b!1430221 res!964766) b!1430222))

(assert (= (and b!1430222 res!964769) b!1430224))

(assert (= (and b!1430224 res!964762) b!1430227))

(declare-fun m!1320251 () Bool)

(assert (=> b!1430224 m!1320251))

(assert (=> b!1430224 m!1320251))

(declare-fun m!1320253 () Bool)

(assert (=> b!1430224 m!1320253))

(declare-fun m!1320255 () Bool)

(assert (=> b!1430225 m!1320255))

(declare-fun m!1320257 () Bool)

(assert (=> b!1430227 m!1320257))

(assert (=> b!1430227 m!1320251))

(declare-fun m!1320259 () Bool)

(assert (=> b!1430227 m!1320259))

(declare-fun m!1320261 () Bool)

(assert (=> b!1430227 m!1320261))

(assert (=> b!1430220 m!1320251))

(assert (=> b!1430220 m!1320251))

(declare-fun m!1320263 () Bool)

(assert (=> b!1430220 m!1320263))

(assert (=> b!1430220 m!1320263))

(assert (=> b!1430220 m!1320251))

(declare-fun m!1320265 () Bool)

(assert (=> b!1430220 m!1320265))

(declare-fun m!1320267 () Bool)

(assert (=> b!1430230 m!1320267))

(assert (=> b!1430230 m!1320267))

(declare-fun m!1320269 () Bool)

(assert (=> b!1430230 m!1320269))

(assert (=> b!1430230 m!1320259))

(declare-fun m!1320271 () Bool)

(assert (=> b!1430230 m!1320271))

(assert (=> b!1430222 m!1320259))

(assert (=> b!1430222 m!1320261))

(assert (=> b!1430222 m!1320257))

(declare-fun m!1320273 () Bool)

(assert (=> b!1430222 m!1320273))

(assert (=> b!1430222 m!1320251))

(declare-fun m!1320275 () Bool)

(assert (=> b!1430222 m!1320275))

(declare-fun m!1320277 () Bool)

(assert (=> b!1430226 m!1320277))

(assert (=> b!1430228 m!1320251))

(assert (=> b!1430228 m!1320251))

(declare-fun m!1320279 () Bool)

(assert (=> b!1430228 m!1320279))

(declare-fun m!1320281 () Bool)

(assert (=> b!1430231 m!1320281))

(assert (=> b!1430231 m!1320281))

(declare-fun m!1320283 () Bool)

(assert (=> b!1430231 m!1320283))

(declare-fun m!1320285 () Bool)

(assert (=> b!1430233 m!1320285))

(assert (=> b!1430232 m!1320251))

(assert (=> b!1430232 m!1320251))

(declare-fun m!1320287 () Bool)

(assert (=> b!1430232 m!1320287))

(declare-fun m!1320289 () Bool)

(assert (=> start!123388 m!1320289))

(declare-fun m!1320291 () Bool)

(assert (=> start!123388 m!1320291))

(push 1)

