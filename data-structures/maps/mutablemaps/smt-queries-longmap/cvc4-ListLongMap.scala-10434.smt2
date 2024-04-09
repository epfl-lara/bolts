; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122810 () Bool)

(assert start!122810)

(declare-fun b!1423033 () Bool)

(declare-fun e!804422 () Bool)

(declare-fun e!804424 () Bool)

(assert (=> b!1423033 (= e!804422 (not e!804424))))

(declare-fun res!958587 () Bool)

(assert (=> b!1423033 (=> res!958587 e!804424)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97093 0))(
  ( (array!97094 (arr!46860 (Array (_ BitVec 32) (_ BitVec 64))) (size!47411 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97093)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423033 (= res!958587 (or (= (select (arr!46860 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46860 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46860 a!2831) index!585) (select (arr!46860 a!2831) j!81)) (= (select (store (arr!46860 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804421 () Bool)

(assert (=> b!1423033 e!804421))

(declare-fun res!958576 () Bool)

(assert (=> b!1423033 (=> (not res!958576) (not e!804421))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97093 (_ BitVec 32)) Bool)

(assert (=> b!1423033 (= res!958576 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48118 0))(
  ( (Unit!48119) )
))
(declare-fun lt!626915 () Unit!48118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48118)

(assert (=> b!1423033 (= lt!626915 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423034 () Bool)

(declare-fun e!804425 () Bool)

(assert (=> b!1423034 (= e!804424 e!804425)))

(declare-fun res!958579 () Bool)

(assert (=> b!1423034 (=> res!958579 e!804425)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!626912 () (_ BitVec 32))

(assert (=> b!1423034 (= res!958579 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626912 #b00000000000000000000000000000000) (bvsge lt!626912 (size!47411 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423034 (= lt!626912 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423035 () Bool)

(declare-fun e!804419 () Bool)

(assert (=> b!1423035 (= e!804419 e!804422)))

(declare-fun res!958590 () Bool)

(assert (=> b!1423035 (=> (not res!958590) (not e!804422))))

(declare-fun lt!626916 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11167 0))(
  ( (MissingZero!11167 (index!47059 (_ BitVec 32))) (Found!11167 (index!47060 (_ BitVec 32))) (Intermediate!11167 (undefined!11979 Bool) (index!47061 (_ BitVec 32)) (x!128700 (_ BitVec 32))) (Undefined!11167) (MissingVacant!11167 (index!47062 (_ BitVec 32))) )
))
(declare-fun lt!626917 () SeekEntryResult!11167)

(declare-fun lt!626913 () array!97093)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97093 (_ BitVec 32)) SeekEntryResult!11167)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423035 (= res!958590 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626916 mask!2608) lt!626916 lt!626913 mask!2608) lt!626917))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423035 (= lt!626917 (Intermediate!11167 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423035 (= lt!626916 (select (store (arr!46860 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423035 (= lt!626913 (array!97094 (store (arr!46860 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47411 a!2831)))))

(declare-fun b!1423036 () Bool)

(declare-fun res!958580 () Bool)

(declare-fun e!804423 () Bool)

(assert (=> b!1423036 (=> (not res!958580) (not e!804423))))

(assert (=> b!1423036 (= res!958580 (and (= (size!47411 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47411 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47411 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!958581 () Bool)

(assert (=> start!122810 (=> (not res!958581) (not e!804423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122810 (= res!958581 (validMask!0 mask!2608))))

(assert (=> start!122810 e!804423))

(assert (=> start!122810 true))

(declare-fun array_inv!35805 (array!97093) Bool)

(assert (=> start!122810 (array_inv!35805 a!2831)))

(declare-fun b!1423037 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97093 (_ BitVec 32)) SeekEntryResult!11167)

(assert (=> b!1423037 (= e!804421 (= (seekEntryOrOpen!0 (select (arr!46860 a!2831) j!81) a!2831 mask!2608) (Found!11167 j!81)))))

(declare-fun b!1423038 () Bool)

(declare-fun res!958585 () Bool)

(assert (=> b!1423038 (=> (not res!958585) (not e!804423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423038 (= res!958585 (validKeyInArray!0 (select (arr!46860 a!2831) i!982)))))

(declare-fun b!1423039 () Bool)

(assert (=> b!1423039 (= e!804425 true)))

(declare-fun lt!626911 () SeekEntryResult!11167)

(assert (=> b!1423039 (= lt!626911 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626912 lt!626916 lt!626913 mask!2608))))

(declare-fun b!1423040 () Bool)

(declare-fun res!958583 () Bool)

(assert (=> b!1423040 (=> (not res!958583) (not e!804422))))

(declare-fun lt!626914 () SeekEntryResult!11167)

(assert (=> b!1423040 (= res!958583 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46860 a!2831) j!81) a!2831 mask!2608) lt!626914))))

(declare-fun b!1423041 () Bool)

(declare-fun res!958577 () Bool)

(assert (=> b!1423041 (=> (not res!958577) (not e!804422))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1423041 (= res!958577 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423042 () Bool)

(declare-fun res!958588 () Bool)

(assert (=> b!1423042 (=> (not res!958588) (not e!804423))))

(assert (=> b!1423042 (= res!958588 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47411 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47411 a!2831))))))

(declare-fun b!1423043 () Bool)

(declare-fun res!958575 () Bool)

(assert (=> b!1423043 (=> (not res!958575) (not e!804423))))

(assert (=> b!1423043 (= res!958575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423044 () Bool)

(declare-fun res!958586 () Bool)

(assert (=> b!1423044 (=> res!958586 e!804425)))

(assert (=> b!1423044 (= res!958586 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626912 (select (arr!46860 a!2831) j!81) a!2831 mask!2608) lt!626914)))))

(declare-fun b!1423045 () Bool)

(assert (=> b!1423045 (= e!804423 e!804419)))

(declare-fun res!958589 () Bool)

(assert (=> b!1423045 (=> (not res!958589) (not e!804419))))

(assert (=> b!1423045 (= res!958589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46860 a!2831) j!81) mask!2608) (select (arr!46860 a!2831) j!81) a!2831 mask!2608) lt!626914))))

(assert (=> b!1423045 (= lt!626914 (Intermediate!11167 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423046 () Bool)

(declare-fun res!958584 () Bool)

(assert (=> b!1423046 (=> (not res!958584) (not e!804422))))

(assert (=> b!1423046 (= res!958584 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626916 lt!626913 mask!2608) lt!626917))))

(declare-fun b!1423047 () Bool)

(declare-fun res!958582 () Bool)

(assert (=> b!1423047 (=> (not res!958582) (not e!804423))))

(declare-datatypes ((List!33550 0))(
  ( (Nil!33547) (Cons!33546 (h!34848 (_ BitVec 64)) (t!48251 List!33550)) )
))
(declare-fun arrayNoDuplicates!0 (array!97093 (_ BitVec 32) List!33550) Bool)

(assert (=> b!1423047 (= res!958582 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33547))))

(declare-fun b!1423048 () Bool)

(declare-fun res!958578 () Bool)

(assert (=> b!1423048 (=> (not res!958578) (not e!804423))))

(assert (=> b!1423048 (= res!958578 (validKeyInArray!0 (select (arr!46860 a!2831) j!81)))))

(assert (= (and start!122810 res!958581) b!1423036))

(assert (= (and b!1423036 res!958580) b!1423038))

(assert (= (and b!1423038 res!958585) b!1423048))

(assert (= (and b!1423048 res!958578) b!1423043))

(assert (= (and b!1423043 res!958575) b!1423047))

(assert (= (and b!1423047 res!958582) b!1423042))

(assert (= (and b!1423042 res!958588) b!1423045))

(assert (= (and b!1423045 res!958589) b!1423035))

(assert (= (and b!1423035 res!958590) b!1423040))

(assert (= (and b!1423040 res!958583) b!1423046))

(assert (= (and b!1423046 res!958584) b!1423041))

(assert (= (and b!1423041 res!958577) b!1423033))

(assert (= (and b!1423033 res!958576) b!1423037))

(assert (= (and b!1423033 (not res!958587)) b!1423034))

(assert (= (and b!1423034 (not res!958579)) b!1423044))

(assert (= (and b!1423044 (not res!958586)) b!1423039))

(declare-fun m!1313639 () Bool)

(assert (=> b!1423048 m!1313639))

(assert (=> b!1423048 m!1313639))

(declare-fun m!1313641 () Bool)

(assert (=> b!1423048 m!1313641))

(declare-fun m!1313643 () Bool)

(assert (=> b!1423047 m!1313643))

(declare-fun m!1313645 () Bool)

(assert (=> b!1423039 m!1313645))

(declare-fun m!1313647 () Bool)

(assert (=> b!1423034 m!1313647))

(declare-fun m!1313649 () Bool)

(assert (=> b!1423038 m!1313649))

(assert (=> b!1423038 m!1313649))

(declare-fun m!1313651 () Bool)

(assert (=> b!1423038 m!1313651))

(assert (=> b!1423040 m!1313639))

(assert (=> b!1423040 m!1313639))

(declare-fun m!1313653 () Bool)

(assert (=> b!1423040 m!1313653))

(declare-fun m!1313655 () Bool)

(assert (=> b!1423043 m!1313655))

(declare-fun m!1313657 () Bool)

(assert (=> b!1423033 m!1313657))

(declare-fun m!1313659 () Bool)

(assert (=> b!1423033 m!1313659))

(declare-fun m!1313661 () Bool)

(assert (=> b!1423033 m!1313661))

(declare-fun m!1313663 () Bool)

(assert (=> b!1423033 m!1313663))

(assert (=> b!1423033 m!1313639))

(declare-fun m!1313665 () Bool)

(assert (=> b!1423033 m!1313665))

(assert (=> b!1423044 m!1313639))

(assert (=> b!1423044 m!1313639))

(declare-fun m!1313667 () Bool)

(assert (=> b!1423044 m!1313667))

(declare-fun m!1313669 () Bool)

(assert (=> b!1423035 m!1313669))

(assert (=> b!1423035 m!1313669))

(declare-fun m!1313671 () Bool)

(assert (=> b!1423035 m!1313671))

(assert (=> b!1423035 m!1313657))

(declare-fun m!1313673 () Bool)

(assert (=> b!1423035 m!1313673))

(declare-fun m!1313675 () Bool)

(assert (=> start!122810 m!1313675))

(declare-fun m!1313677 () Bool)

(assert (=> start!122810 m!1313677))

(assert (=> b!1423045 m!1313639))

(assert (=> b!1423045 m!1313639))

(declare-fun m!1313679 () Bool)

(assert (=> b!1423045 m!1313679))

(assert (=> b!1423045 m!1313679))

(assert (=> b!1423045 m!1313639))

(declare-fun m!1313681 () Bool)

(assert (=> b!1423045 m!1313681))

(declare-fun m!1313683 () Bool)

(assert (=> b!1423046 m!1313683))

(assert (=> b!1423037 m!1313639))

(assert (=> b!1423037 m!1313639))

(declare-fun m!1313685 () Bool)

(assert (=> b!1423037 m!1313685))

(push 1)

