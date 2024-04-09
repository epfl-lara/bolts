; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119744 () Bool)

(assert start!119744)

(declare-fun b!1394327 () Bool)

(declare-fun res!933847 () Bool)

(declare-fun e!789474 () Bool)

(assert (=> b!1394327 (=> (not res!933847) (not e!789474))))

(declare-datatypes ((array!95344 0))(
  ( (array!95345 (arr!46026 (Array (_ BitVec 32) (_ BitVec 64))) (size!46577 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95344)

(declare-datatypes ((List!32725 0))(
  ( (Nil!32722) (Cons!32721 (h!33954 (_ BitVec 64)) (t!47426 List!32725)) )
))
(declare-fun arrayNoDuplicates!0 (array!95344 (_ BitVec 32) List!32725) Bool)

(assert (=> b!1394327 (= res!933847 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32722))))

(declare-fun b!1394328 () Bool)

(declare-fun res!933844 () Bool)

(assert (=> b!1394328 (=> (not res!933844) (not e!789474))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95344 (_ BitVec 32)) Bool)

(assert (=> b!1394328 (= res!933844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394329 () Bool)

(declare-fun e!789473 () Bool)

(assert (=> b!1394329 (= e!789473 true)))

(declare-fun lt!612393 () array!95344)

(declare-datatypes ((SeekEntryResult!10365 0))(
  ( (MissingZero!10365 (index!43830 (_ BitVec 32))) (Found!10365 (index!43831 (_ BitVec 32))) (Intermediate!10365 (undefined!11177 Bool) (index!43832 (_ BitVec 32)) (x!125500 (_ BitVec 32))) (Undefined!10365) (MissingVacant!10365 (index!43833 (_ BitVec 32))) )
))
(declare-fun lt!612388 () SeekEntryResult!10365)

(declare-fun lt!612389 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95344 (_ BitVec 32)) SeekEntryResult!10365)

(assert (=> b!1394329 (= lt!612388 (seekEntryOrOpen!0 lt!612389 lt!612393 mask!2840))))

(declare-fun lt!612392 () SeekEntryResult!10365)

(declare-datatypes ((Unit!46684 0))(
  ( (Unit!46685) )
))
(declare-fun lt!612390 () Unit!46684)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!612391 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95344 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46684)

(assert (=> b!1394329 (= lt!612390 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612391 (x!125500 lt!612392) (index!43832 lt!612392) mask!2840))))

(declare-fun b!1394330 () Bool)

(declare-fun e!789475 () Bool)

(assert (=> b!1394330 (= e!789474 (not e!789475))))

(declare-fun res!933852 () Bool)

(assert (=> b!1394330 (=> res!933852 e!789475)))

(assert (=> b!1394330 (= res!933852 (or (not (is-Intermediate!10365 lt!612392)) (undefined!11177 lt!612392)))))

(assert (=> b!1394330 (= lt!612388 (Found!10365 j!112))))

(assert (=> b!1394330 (= lt!612388 (seekEntryOrOpen!0 (select (arr!46026 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394330 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612394 () Unit!46684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95344 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46684)

(assert (=> b!1394330 (= lt!612394 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95344 (_ BitVec 32)) SeekEntryResult!10365)

(assert (=> b!1394330 (= lt!612392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612391 (select (arr!46026 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394330 (= lt!612391 (toIndex!0 (select (arr!46026 a!2901) j!112) mask!2840))))

(declare-fun b!1394332 () Bool)

(declare-fun res!933850 () Bool)

(assert (=> b!1394332 (=> (not res!933850) (not e!789474))))

(assert (=> b!1394332 (= res!933850 (and (= (size!46577 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46577 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46577 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394333 () Bool)

(declare-fun res!933848 () Bool)

(assert (=> b!1394333 (=> res!933848 e!789473)))

(assert (=> b!1394333 (= res!933848 (or (bvslt (x!125500 lt!612392) #b00000000000000000000000000000000) (bvsgt (x!125500 lt!612392) #b01111111111111111111111111111110) (bvslt lt!612391 #b00000000000000000000000000000000) (bvsge lt!612391 (size!46577 a!2901)) (bvslt (index!43832 lt!612392) #b00000000000000000000000000000000) (bvsge (index!43832 lt!612392) (size!46577 a!2901)) (not (= lt!612392 (Intermediate!10365 false (index!43832 lt!612392) (x!125500 lt!612392))))))))

(declare-fun b!1394331 () Bool)

(assert (=> b!1394331 (= e!789475 e!789473)))

(declare-fun res!933845 () Bool)

(assert (=> b!1394331 (=> res!933845 e!789473)))

(assert (=> b!1394331 (= res!933845 (not (= lt!612392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612389 mask!2840) lt!612389 lt!612393 mask!2840))))))

(assert (=> b!1394331 (= lt!612389 (select (store (arr!46026 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394331 (= lt!612393 (array!95345 (store (arr!46026 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46577 a!2901)))))

(declare-fun res!933849 () Bool)

(assert (=> start!119744 (=> (not res!933849) (not e!789474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119744 (= res!933849 (validMask!0 mask!2840))))

(assert (=> start!119744 e!789474))

(assert (=> start!119744 true))

(declare-fun array_inv!34971 (array!95344) Bool)

(assert (=> start!119744 (array_inv!34971 a!2901)))

(declare-fun b!1394334 () Bool)

(declare-fun res!933851 () Bool)

(assert (=> b!1394334 (=> (not res!933851) (not e!789474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394334 (= res!933851 (validKeyInArray!0 (select (arr!46026 a!2901) i!1037)))))

(declare-fun b!1394335 () Bool)

(declare-fun res!933846 () Bool)

(assert (=> b!1394335 (=> (not res!933846) (not e!789474))))

(assert (=> b!1394335 (= res!933846 (validKeyInArray!0 (select (arr!46026 a!2901) j!112)))))

(assert (= (and start!119744 res!933849) b!1394332))

(assert (= (and b!1394332 res!933850) b!1394334))

(assert (= (and b!1394334 res!933851) b!1394335))

(assert (= (and b!1394335 res!933846) b!1394328))

(assert (= (and b!1394328 res!933844) b!1394327))

(assert (= (and b!1394327 res!933847) b!1394330))

(assert (= (and b!1394330 (not res!933852)) b!1394331))

(assert (= (and b!1394331 (not res!933845)) b!1394333))

(assert (= (and b!1394333 (not res!933848)) b!1394329))

(declare-fun m!1280697 () Bool)

(assert (=> b!1394334 m!1280697))

(assert (=> b!1394334 m!1280697))

(declare-fun m!1280699 () Bool)

(assert (=> b!1394334 m!1280699))

(declare-fun m!1280701 () Bool)

(assert (=> start!119744 m!1280701))

(declare-fun m!1280703 () Bool)

(assert (=> start!119744 m!1280703))

(declare-fun m!1280705 () Bool)

(assert (=> b!1394327 m!1280705))

(declare-fun m!1280707 () Bool)

(assert (=> b!1394331 m!1280707))

(assert (=> b!1394331 m!1280707))

(declare-fun m!1280709 () Bool)

(assert (=> b!1394331 m!1280709))

(declare-fun m!1280711 () Bool)

(assert (=> b!1394331 m!1280711))

(declare-fun m!1280713 () Bool)

(assert (=> b!1394331 m!1280713))

(declare-fun m!1280715 () Bool)

(assert (=> b!1394328 m!1280715))

(declare-fun m!1280717 () Bool)

(assert (=> b!1394335 m!1280717))

(assert (=> b!1394335 m!1280717))

(declare-fun m!1280719 () Bool)

(assert (=> b!1394335 m!1280719))

(declare-fun m!1280721 () Bool)

(assert (=> b!1394329 m!1280721))

(declare-fun m!1280723 () Bool)

(assert (=> b!1394329 m!1280723))

(assert (=> b!1394330 m!1280717))

(declare-fun m!1280725 () Bool)

(assert (=> b!1394330 m!1280725))

(assert (=> b!1394330 m!1280717))

(declare-fun m!1280727 () Bool)

(assert (=> b!1394330 m!1280727))

(assert (=> b!1394330 m!1280717))

(declare-fun m!1280729 () Bool)

(assert (=> b!1394330 m!1280729))

(assert (=> b!1394330 m!1280717))

(declare-fun m!1280731 () Bool)

(assert (=> b!1394330 m!1280731))

(declare-fun m!1280733 () Bool)

(assert (=> b!1394330 m!1280733))

(push 1)

(assert (not b!1394331))

(assert (not b!1394335))

(assert (not b!1394327))

(assert (not b!1394329))

(assert (not b!1394330))

(assert (not start!119744))

(assert (not b!1394334))

(assert (not b!1394328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

