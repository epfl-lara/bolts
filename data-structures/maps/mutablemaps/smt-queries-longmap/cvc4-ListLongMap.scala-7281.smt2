; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93088 () Bool)

(assert start!93088)

(declare-fun b!1055646 () Bool)

(declare-fun e!600044 () Bool)

(declare-fun e!600041 () Bool)

(assert (=> b!1055646 (= e!600044 e!600041)))

(declare-fun res!704572 () Bool)

(assert (=> b!1055646 (=> (not res!704572) (not e!600041))))

(declare-fun lt!465841 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055646 (= res!704572 (not (= lt!465841 i!1381)))))

(declare-datatypes ((array!66561 0))(
  ( (array!66562 (arr!32004 (Array (_ BitVec 32) (_ BitVec 64))) (size!32541 (_ BitVec 32))) )
))
(declare-fun lt!465843 () array!66561)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66561 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055646 (= lt!465841 (arrayScanForKey!0 lt!465843 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055647 () Bool)

(declare-fun e!600043 () Bool)

(assert (=> b!1055647 (= e!600043 true)))

(declare-fun lt!465840 () Bool)

(declare-datatypes ((List!22447 0))(
  ( (Nil!22444) (Cons!22443 (h!23652 (_ BitVec 64)) (t!31761 List!22447)) )
))
(declare-fun contains!6205 (List!22447 (_ BitVec 64)) Bool)

(assert (=> b!1055647 (= lt!465840 (contains!6205 Nil!22444 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055648 () Bool)

(declare-fun res!704578 () Bool)

(assert (=> b!1055648 (=> res!704578 e!600043)))

(assert (=> b!1055648 (= res!704578 (contains!6205 Nil!22444 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055649 () Bool)

(declare-fun res!704580 () Bool)

(declare-fun e!600045 () Bool)

(assert (=> b!1055649 (=> (not res!704580) (not e!600045))))

(declare-fun a!3488 () array!66561)

(declare-fun arrayNoDuplicates!0 (array!66561 (_ BitVec 32) List!22447) Bool)

(assert (=> b!1055649 (= res!704580 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22444))))

(declare-fun b!1055651 () Bool)

(assert (=> b!1055651 (= e!600045 e!600044)))

(declare-fun res!704573 () Bool)

(assert (=> b!1055651 (=> (not res!704573) (not e!600044))))

(declare-fun arrayContainsKey!0 (array!66561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055651 (= res!704573 (arrayContainsKey!0 lt!465843 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055651 (= lt!465843 (array!66562 (store (arr!32004 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32541 a!3488)))))

(declare-fun b!1055652 () Bool)

(declare-fun e!600042 () Bool)

(assert (=> b!1055652 (= e!600042 e!600043)))

(declare-fun res!704571 () Bool)

(assert (=> b!1055652 (=> res!704571 e!600043)))

(assert (=> b!1055652 (= res!704571 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32541 a!3488)))))

(assert (=> b!1055652 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34575 0))(
  ( (Unit!34576) )
))
(declare-fun lt!465842 () Unit!34575)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66561 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34575)

(assert (=> b!1055652 (= lt!465842 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465841 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055652 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22444)))

(declare-fun lt!465844 () Unit!34575)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66561 (_ BitVec 32) (_ BitVec 32)) Unit!34575)

(assert (=> b!1055652 (= lt!465844 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun e!600047 () Bool)

(declare-fun b!1055653 () Bool)

(assert (=> b!1055653 (= e!600047 (arrayContainsKey!0 a!3488 k!2747 lt!465841))))

(declare-fun b!1055654 () Bool)

(declare-fun e!600040 () Bool)

(assert (=> b!1055654 (= e!600040 e!600047)))

(declare-fun res!704577 () Bool)

(assert (=> b!1055654 (=> res!704577 e!600047)))

(assert (=> b!1055654 (= res!704577 (bvsle lt!465841 i!1381))))

(declare-fun b!1055655 () Bool)

(declare-fun res!704569 () Bool)

(assert (=> b!1055655 (=> (not res!704569) (not e!600045))))

(assert (=> b!1055655 (= res!704569 (= (select (arr!32004 a!3488) i!1381) k!2747))))

(declare-fun res!704575 () Bool)

(assert (=> start!93088 (=> (not res!704575) (not e!600045))))

(assert (=> start!93088 (= res!704575 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32541 a!3488)) (bvslt (size!32541 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93088 e!600045))

(assert (=> start!93088 true))

(declare-fun array_inv!24626 (array!66561) Bool)

(assert (=> start!93088 (array_inv!24626 a!3488)))

(declare-fun b!1055650 () Bool)

(declare-fun res!704574 () Bool)

(assert (=> b!1055650 (=> (not res!704574) (not e!600045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055650 (= res!704574 (validKeyInArray!0 k!2747))))

(declare-fun b!1055656 () Bool)

(assert (=> b!1055656 (= e!600041 (not e!600042))))

(declare-fun res!704570 () Bool)

(assert (=> b!1055656 (=> res!704570 e!600042)))

(assert (=> b!1055656 (= res!704570 (bvsle lt!465841 i!1381))))

(assert (=> b!1055656 e!600040))

(declare-fun res!704579 () Bool)

(assert (=> b!1055656 (=> (not res!704579) (not e!600040))))

(assert (=> b!1055656 (= res!704579 (= (select (store (arr!32004 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465841) k!2747))))

(declare-fun b!1055657 () Bool)

(declare-fun res!704576 () Bool)

(assert (=> b!1055657 (=> res!704576 e!600043)))

(declare-fun noDuplicate!1574 (List!22447) Bool)

(assert (=> b!1055657 (= res!704576 (not (noDuplicate!1574 Nil!22444)))))

(assert (= (and start!93088 res!704575) b!1055649))

(assert (= (and b!1055649 res!704580) b!1055650))

(assert (= (and b!1055650 res!704574) b!1055655))

(assert (= (and b!1055655 res!704569) b!1055651))

(assert (= (and b!1055651 res!704573) b!1055646))

(assert (= (and b!1055646 res!704572) b!1055656))

(assert (= (and b!1055656 res!704579) b!1055654))

(assert (= (and b!1055654 (not res!704577)) b!1055653))

(assert (= (and b!1055656 (not res!704570)) b!1055652))

(assert (= (and b!1055652 (not res!704571)) b!1055657))

(assert (= (and b!1055657 (not res!704576)) b!1055648))

(assert (= (and b!1055648 (not res!704578)) b!1055647))

(declare-fun m!975757 () Bool)

(assert (=> b!1055653 m!975757))

(declare-fun m!975759 () Bool)

(assert (=> b!1055647 m!975759))

(declare-fun m!975761 () Bool)

(assert (=> b!1055650 m!975761))

(declare-fun m!975763 () Bool)

(assert (=> start!93088 m!975763))

(declare-fun m!975765 () Bool)

(assert (=> b!1055652 m!975765))

(declare-fun m!975767 () Bool)

(assert (=> b!1055652 m!975767))

(declare-fun m!975769 () Bool)

(assert (=> b!1055652 m!975769))

(declare-fun m!975771 () Bool)

(assert (=> b!1055652 m!975771))

(declare-fun m!975773 () Bool)

(assert (=> b!1055656 m!975773))

(declare-fun m!975775 () Bool)

(assert (=> b!1055656 m!975775))

(declare-fun m!975777 () Bool)

(assert (=> b!1055655 m!975777))

(declare-fun m!975779 () Bool)

(assert (=> b!1055648 m!975779))

(declare-fun m!975781 () Bool)

(assert (=> b!1055657 m!975781))

(declare-fun m!975783 () Bool)

(assert (=> b!1055646 m!975783))

(declare-fun m!975785 () Bool)

(assert (=> b!1055649 m!975785))

(declare-fun m!975787 () Bool)

(assert (=> b!1055651 m!975787))

(assert (=> b!1055651 m!975773))

(push 1)

