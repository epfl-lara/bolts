; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123566 () Bool)

(assert start!123566)

(declare-fun b!1431813 () Bool)

(declare-fun res!965796 () Bool)

(declare-fun e!808351 () Bool)

(assert (=> b!1431813 (=> (not res!965796) (not e!808351))))

(declare-datatypes ((array!97456 0))(
  ( (array!97457 (arr!47031 (Array (_ BitVec 32) (_ BitVec 64))) (size!47582 (_ BitVec 32))) )
))
(declare-fun lt!630304 () array!97456)

(declare-datatypes ((SeekEntryResult!11332 0))(
  ( (MissingZero!11332 (index!47719 (_ BitVec 32))) (Found!11332 (index!47720 (_ BitVec 32))) (Intermediate!11332 (undefined!12144 Bool) (index!47721 (_ BitVec 32)) (x!129369 (_ BitVec 32))) (Undefined!11332) (MissingVacant!11332 (index!47722 (_ BitVec 32))) )
))
(declare-fun lt!630300 () SeekEntryResult!11332)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!630299 () (_ BitVec 64))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97456 (_ BitVec 32)) SeekEntryResult!11332)

(assert (=> b!1431813 (= res!965796 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630299 lt!630304 mask!2608) lt!630300))))

(declare-fun b!1431814 () Bool)

(declare-fun res!965797 () Bool)

(declare-fun e!808352 () Bool)

(assert (=> b!1431814 (=> (not res!965797) (not e!808352))))

(declare-fun a!2831 () array!97456)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97456 (_ BitVec 32)) Bool)

(assert (=> b!1431814 (= res!965797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431815 () Bool)

(declare-fun res!965787 () Bool)

(assert (=> b!1431815 (=> (not res!965787) (not e!808352))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1431815 (= res!965787 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47582 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47582 a!2831))))))

(declare-fun res!965789 () Bool)

(assert (=> start!123566 (=> (not res!965789) (not e!808352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123566 (= res!965789 (validMask!0 mask!2608))))

(assert (=> start!123566 e!808352))

(assert (=> start!123566 true))

(declare-fun array_inv!35976 (array!97456) Bool)

(assert (=> start!123566 (array_inv!35976 a!2831)))

(declare-fun b!1431816 () Bool)

(declare-fun e!808355 () Bool)

(assert (=> b!1431816 (= e!808351 (not e!808355))))

(declare-fun res!965798 () Bool)

(assert (=> b!1431816 (=> res!965798 e!808355)))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1431816 (= res!965798 (or (= (select (arr!47031 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47031 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47031 a!2831) index!585) (select (arr!47031 a!2831) j!81)) (= (select (store (arr!47031 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808354 () Bool)

(assert (=> b!1431816 e!808354))

(declare-fun res!965788 () Bool)

(assert (=> b!1431816 (=> (not res!965788) (not e!808354))))

(assert (=> b!1431816 (= res!965788 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48358 0))(
  ( (Unit!48359) )
))
(declare-fun lt!630301 () Unit!48358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48358)

(assert (=> b!1431816 (= lt!630301 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431817 () Bool)

(declare-fun e!808350 () Bool)

(assert (=> b!1431817 (= e!808350 e!808351)))

(declare-fun res!965791 () Bool)

(assert (=> b!1431817 (=> (not res!965791) (not e!808351))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431817 (= res!965791 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630299 mask!2608) lt!630299 lt!630304 mask!2608) lt!630300))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431817 (= lt!630300 (Intermediate!11332 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431817 (= lt!630299 (select (store (arr!47031 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431817 (= lt!630304 (array!97457 (store (arr!47031 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47582 a!2831)))))

(declare-fun b!1431818 () Bool)

(declare-fun res!965790 () Bool)

(assert (=> b!1431818 (=> (not res!965790) (not e!808352))))

(assert (=> b!1431818 (= res!965790 (and (= (size!47582 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47582 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47582 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431819 () Bool)

(assert (=> b!1431819 (= e!808352 e!808350)))

(declare-fun res!965792 () Bool)

(assert (=> b!1431819 (=> (not res!965792) (not e!808350))))

(declare-fun lt!630302 () SeekEntryResult!11332)

(assert (=> b!1431819 (= res!965792 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47031 a!2831) j!81) mask!2608) (select (arr!47031 a!2831) j!81) a!2831 mask!2608) lt!630302))))

(assert (=> b!1431819 (= lt!630302 (Intermediate!11332 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431820 () Bool)

(declare-fun res!965799 () Bool)

(assert (=> b!1431820 (=> (not res!965799) (not e!808352))))

(declare-datatypes ((List!33721 0))(
  ( (Nil!33718) (Cons!33717 (h!35040 (_ BitVec 64)) (t!48422 List!33721)) )
))
(declare-fun arrayNoDuplicates!0 (array!97456 (_ BitVec 32) List!33721) Bool)

(assert (=> b!1431820 (= res!965799 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33718))))

(declare-fun b!1431821 () Bool)

(declare-fun res!965795 () Bool)

(assert (=> b!1431821 (=> (not res!965795) (not e!808351))))

(assert (=> b!1431821 (= res!965795 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47031 a!2831) j!81) a!2831 mask!2608) lt!630302))))

(declare-fun b!1431822 () Bool)

(assert (=> b!1431822 (= e!808355 true)))

(declare-fun lt!630303 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431822 (= lt!630303 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431823 () Bool)

(declare-fun res!965794 () Bool)

(assert (=> b!1431823 (=> (not res!965794) (not e!808352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431823 (= res!965794 (validKeyInArray!0 (select (arr!47031 a!2831) j!81)))))

(declare-fun b!1431824 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97456 (_ BitVec 32)) SeekEntryResult!11332)

(assert (=> b!1431824 (= e!808354 (= (seekEntryOrOpen!0 (select (arr!47031 a!2831) j!81) a!2831 mask!2608) (Found!11332 j!81)))))

(declare-fun b!1431825 () Bool)

(declare-fun res!965786 () Bool)

(assert (=> b!1431825 (=> (not res!965786) (not e!808351))))

(assert (=> b!1431825 (= res!965786 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431826 () Bool)

(declare-fun res!965793 () Bool)

(assert (=> b!1431826 (=> (not res!965793) (not e!808352))))

(assert (=> b!1431826 (= res!965793 (validKeyInArray!0 (select (arr!47031 a!2831) i!982)))))

(assert (= (and start!123566 res!965789) b!1431818))

(assert (= (and b!1431818 res!965790) b!1431826))

(assert (= (and b!1431826 res!965793) b!1431823))

(assert (= (and b!1431823 res!965794) b!1431814))

(assert (= (and b!1431814 res!965797) b!1431820))

(assert (= (and b!1431820 res!965799) b!1431815))

(assert (= (and b!1431815 res!965787) b!1431819))

(assert (= (and b!1431819 res!965792) b!1431817))

(assert (= (and b!1431817 res!965791) b!1431821))

(assert (= (and b!1431821 res!965795) b!1431813))

(assert (= (and b!1431813 res!965796) b!1431825))

(assert (= (and b!1431825 res!965786) b!1431816))

(assert (= (and b!1431816 res!965788) b!1431824))

(assert (= (and b!1431816 (not res!965798)) b!1431822))

(declare-fun m!1321653 () Bool)

(assert (=> b!1431816 m!1321653))

(declare-fun m!1321655 () Bool)

(assert (=> b!1431816 m!1321655))

(declare-fun m!1321657 () Bool)

(assert (=> b!1431816 m!1321657))

(declare-fun m!1321659 () Bool)

(assert (=> b!1431816 m!1321659))

(declare-fun m!1321661 () Bool)

(assert (=> b!1431816 m!1321661))

(declare-fun m!1321663 () Bool)

(assert (=> b!1431816 m!1321663))

(assert (=> b!1431821 m!1321661))

(assert (=> b!1431821 m!1321661))

(declare-fun m!1321665 () Bool)

(assert (=> b!1431821 m!1321665))

(assert (=> b!1431819 m!1321661))

(assert (=> b!1431819 m!1321661))

(declare-fun m!1321667 () Bool)

(assert (=> b!1431819 m!1321667))

(assert (=> b!1431819 m!1321667))

(assert (=> b!1431819 m!1321661))

(declare-fun m!1321669 () Bool)

(assert (=> b!1431819 m!1321669))

(declare-fun m!1321671 () Bool)

(assert (=> b!1431817 m!1321671))

(assert (=> b!1431817 m!1321671))

(declare-fun m!1321673 () Bool)

(assert (=> b!1431817 m!1321673))

(assert (=> b!1431817 m!1321653))

(declare-fun m!1321675 () Bool)

(assert (=> b!1431817 m!1321675))

(declare-fun m!1321677 () Bool)

(assert (=> start!123566 m!1321677))

(declare-fun m!1321679 () Bool)

(assert (=> start!123566 m!1321679))

(declare-fun m!1321681 () Bool)

(assert (=> b!1431820 m!1321681))

(declare-fun m!1321683 () Bool)

(assert (=> b!1431814 m!1321683))

(assert (=> b!1431823 m!1321661))

(assert (=> b!1431823 m!1321661))

(declare-fun m!1321685 () Bool)

(assert (=> b!1431823 m!1321685))

(assert (=> b!1431824 m!1321661))

(assert (=> b!1431824 m!1321661))

(declare-fun m!1321687 () Bool)

(assert (=> b!1431824 m!1321687))

(declare-fun m!1321689 () Bool)

(assert (=> b!1431826 m!1321689))

(assert (=> b!1431826 m!1321689))

(declare-fun m!1321691 () Bool)

(assert (=> b!1431826 m!1321691))

(declare-fun m!1321693 () Bool)

(assert (=> b!1431813 m!1321693))

(declare-fun m!1321695 () Bool)

(assert (=> b!1431822 m!1321695))

(push 1)

