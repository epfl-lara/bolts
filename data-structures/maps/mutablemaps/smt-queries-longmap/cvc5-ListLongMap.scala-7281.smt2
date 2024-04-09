; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93084 () Bool)

(assert start!93084)

(declare-fun b!1055574 () Bool)

(declare-fun res!704506 () Bool)

(declare-fun e!599993 () Bool)

(assert (=> b!1055574 (=> (not res!704506) (not e!599993))))

(declare-datatypes ((array!66557 0))(
  ( (array!66558 (arr!32002 (Array (_ BitVec 32) (_ BitVec 64))) (size!32539 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66557)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055574 (= res!704506 (= (select (arr!32002 a!3488) i!1381) k!2747))))

(declare-fun e!599994 () Bool)

(declare-fun b!1055575 () Bool)

(declare-fun lt!465812 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055575 (= e!599994 (arrayContainsKey!0 a!3488 k!2747 lt!465812))))

(declare-fun b!1055576 () Bool)

(declare-fun res!704501 () Bool)

(assert (=> b!1055576 (=> (not res!704501) (not e!599993))))

(declare-datatypes ((List!22445 0))(
  ( (Nil!22442) (Cons!22441 (h!23650 (_ BitVec 64)) (t!31759 List!22445)) )
))
(declare-fun arrayNoDuplicates!0 (array!66557 (_ BitVec 32) List!22445) Bool)

(assert (=> b!1055576 (= res!704501 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22442))))

(declare-fun b!1055577 () Bool)

(declare-fun e!599997 () Bool)

(declare-fun e!599998 () Bool)

(assert (=> b!1055577 (= e!599997 e!599998)))

(declare-fun res!704503 () Bool)

(assert (=> b!1055577 (=> (not res!704503) (not e!599998))))

(assert (=> b!1055577 (= res!704503 (not (= lt!465812 i!1381)))))

(declare-fun lt!465810 () array!66557)

(declare-fun arrayScanForKey!0 (array!66557 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055577 (= lt!465812 (arrayScanForKey!0 lt!465810 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055578 () Bool)

(declare-fun res!704504 () Bool)

(declare-fun e!599995 () Bool)

(assert (=> b!1055578 (=> res!704504 e!599995)))

(declare-fun noDuplicate!1572 (List!22445) Bool)

(assert (=> b!1055578 (= res!704504 (not (noDuplicate!1572 Nil!22442)))))

(declare-fun b!1055579 () Bool)

(declare-fun res!704498 () Bool)

(assert (=> b!1055579 (=> (not res!704498) (not e!599993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055579 (= res!704498 (validKeyInArray!0 k!2747))))

(declare-fun b!1055580 () Bool)

(declare-fun e!599999 () Bool)

(assert (=> b!1055580 (= e!599998 (not e!599999))))

(declare-fun res!704500 () Bool)

(assert (=> b!1055580 (=> res!704500 e!599999)))

(assert (=> b!1055580 (= res!704500 (bvsle lt!465812 i!1381))))

(declare-fun e!599992 () Bool)

(assert (=> b!1055580 e!599992))

(declare-fun res!704499 () Bool)

(assert (=> b!1055580 (=> (not res!704499) (not e!599992))))

(assert (=> b!1055580 (= res!704499 (= (select (store (arr!32002 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465812) k!2747))))

(declare-fun b!1055581 () Bool)

(assert (=> b!1055581 (= e!599992 e!599994)))

(declare-fun res!704502 () Bool)

(assert (=> b!1055581 (=> res!704502 e!599994)))

(assert (=> b!1055581 (= res!704502 (bvsle lt!465812 i!1381))))

(declare-fun res!704507 () Bool)

(assert (=> start!93084 (=> (not res!704507) (not e!599993))))

(assert (=> start!93084 (= res!704507 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32539 a!3488)) (bvslt (size!32539 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93084 e!599993))

(assert (=> start!93084 true))

(declare-fun array_inv!24624 (array!66557) Bool)

(assert (=> start!93084 (array_inv!24624 a!3488)))

(declare-fun b!1055582 () Bool)

(assert (=> b!1055582 (= e!599993 e!599997)))

(declare-fun res!704505 () Bool)

(assert (=> b!1055582 (=> (not res!704505) (not e!599997))))

(assert (=> b!1055582 (= res!704505 (arrayContainsKey!0 lt!465810 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055582 (= lt!465810 (array!66558 (store (arr!32002 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32539 a!3488)))))

(declare-fun b!1055583 () Bool)

(declare-fun res!704497 () Bool)

(assert (=> b!1055583 (=> res!704497 e!599995)))

(declare-fun contains!6203 (List!22445 (_ BitVec 64)) Bool)

(assert (=> b!1055583 (= res!704497 (contains!6203 Nil!22442 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055584 () Bool)

(assert (=> b!1055584 (= e!599999 e!599995)))

(declare-fun res!704508 () Bool)

(assert (=> b!1055584 (=> res!704508 e!599995)))

(assert (=> b!1055584 (= res!704508 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32539 a!3488)))))

(assert (=> b!1055584 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34571 0))(
  ( (Unit!34572) )
))
(declare-fun lt!465811 () Unit!34571)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66557 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34571)

(assert (=> b!1055584 (= lt!465811 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465812 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055584 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22442)))

(declare-fun lt!465814 () Unit!34571)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66557 (_ BitVec 32) (_ BitVec 32)) Unit!34571)

(assert (=> b!1055584 (= lt!465814 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055585 () Bool)

(assert (=> b!1055585 (= e!599995 true)))

(declare-fun lt!465813 () Bool)

(assert (=> b!1055585 (= lt!465813 (contains!6203 Nil!22442 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!93084 res!704507) b!1055576))

(assert (= (and b!1055576 res!704501) b!1055579))

(assert (= (and b!1055579 res!704498) b!1055574))

(assert (= (and b!1055574 res!704506) b!1055582))

(assert (= (and b!1055582 res!704505) b!1055577))

(assert (= (and b!1055577 res!704503) b!1055580))

(assert (= (and b!1055580 res!704499) b!1055581))

(assert (= (and b!1055581 (not res!704502)) b!1055575))

(assert (= (and b!1055580 (not res!704500)) b!1055584))

(assert (= (and b!1055584 (not res!704508)) b!1055578))

(assert (= (and b!1055578 (not res!704504)) b!1055583))

(assert (= (and b!1055583 (not res!704497)) b!1055585))

(declare-fun m!975693 () Bool)

(assert (=> b!1055583 m!975693))

(declare-fun m!975695 () Bool)

(assert (=> start!93084 m!975695))

(declare-fun m!975697 () Bool)

(assert (=> b!1055576 m!975697))

(declare-fun m!975699 () Bool)

(assert (=> b!1055575 m!975699))

(declare-fun m!975701 () Bool)

(assert (=> b!1055585 m!975701))

(declare-fun m!975703 () Bool)

(assert (=> b!1055582 m!975703))

(declare-fun m!975705 () Bool)

(assert (=> b!1055582 m!975705))

(declare-fun m!975707 () Bool)

(assert (=> b!1055579 m!975707))

(declare-fun m!975709 () Bool)

(assert (=> b!1055584 m!975709))

(declare-fun m!975711 () Bool)

(assert (=> b!1055584 m!975711))

(declare-fun m!975713 () Bool)

(assert (=> b!1055584 m!975713))

(declare-fun m!975715 () Bool)

(assert (=> b!1055584 m!975715))

(declare-fun m!975717 () Bool)

(assert (=> b!1055577 m!975717))

(declare-fun m!975719 () Bool)

(assert (=> b!1055574 m!975719))

(assert (=> b!1055580 m!975705))

(declare-fun m!975721 () Bool)

(assert (=> b!1055580 m!975721))

(declare-fun m!975723 () Bool)

(assert (=> b!1055578 m!975723))

(push 1)

