; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59874 () Bool)

(assert start!59874)

(declare-fun b!661559 () Bool)

(declare-fun res!429807 () Bool)

(declare-fun e!379946 () Bool)

(assert (=> b!661559 (=> (not res!429807) (not e!379946))))

(declare-datatypes ((List!12721 0))(
  ( (Nil!12718) (Cons!12717 (h!13762 (_ BitVec 64)) (t!18957 List!12721)) )
))
(declare-fun acc!681 () List!12721)

(declare-fun contains!3264 (List!12721 (_ BitVec 64)) Bool)

(assert (=> b!661559 (= res!429807 (not (contains!3264 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661560 () Bool)

(declare-fun res!429810 () Bool)

(assert (=> b!661560 (=> (not res!429810) (not e!379946))))

(declare-fun e!379949 () Bool)

(assert (=> b!661560 (= res!429810 e!379949)))

(declare-fun res!429796 () Bool)

(assert (=> b!661560 (=> res!429796 e!379949)))

(declare-fun e!379944 () Bool)

(assert (=> b!661560 (= res!429796 e!379944)))

(declare-fun res!429806 () Bool)

(assert (=> b!661560 (=> (not res!429806) (not e!379944))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661560 (= res!429806 (bvsgt from!3004 i!1382))))

(declare-fun b!661561 () Bool)

(declare-fun res!429803 () Bool)

(assert (=> b!661561 (=> (not res!429803) (not e!379946))))

(declare-datatypes ((array!38877 0))(
  ( (array!38878 (arr!18627 (Array (_ BitVec 32) (_ BitVec 64))) (size!18991 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38877)

(declare-fun arrayNoDuplicates!0 (array!38877 (_ BitVec 32) List!12721) Bool)

(assert (=> b!661561 (= res!429803 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661562 () Bool)

(declare-datatypes ((Unit!22954 0))(
  ( (Unit!22955) )
))
(declare-fun e!379950 () Unit!22954)

(declare-fun Unit!22956 () Unit!22954)

(assert (=> b!661562 (= e!379950 Unit!22956)))

(declare-fun b!661563 () Bool)

(declare-fun e!379947 () Bool)

(assert (=> b!661563 (= e!379947 true)))

(declare-fun lt!308772 () Bool)

(declare-fun lt!308771 () List!12721)

(assert (=> b!661563 (= lt!308772 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308771))))

(declare-fun lt!308774 () Unit!22954)

(declare-fun noDuplicateSubseq!2 (List!12721 List!12721) Unit!22954)

(assert (=> b!661563 (= lt!308774 (noDuplicateSubseq!2 acc!681 lt!308771))))

(declare-fun b!661564 () Bool)

(declare-fun res!429805 () Bool)

(assert (=> b!661564 (=> (not res!429805) (not e!379946))))

(assert (=> b!661564 (= res!429805 (not (contains!3264 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661565 () Bool)

(declare-fun res!429802 () Bool)

(assert (=> b!661565 (=> (not res!429802) (not e!379946))))

(declare-fun noDuplicate!511 (List!12721) Bool)

(assert (=> b!661565 (= res!429802 (noDuplicate!511 acc!681))))

(declare-fun b!661566 () Bool)

(declare-fun e!379948 () Bool)

(assert (=> b!661566 (= e!379948 e!379947)))

(declare-fun res!429795 () Bool)

(assert (=> b!661566 (=> res!429795 e!379947)))

(assert (=> b!661566 (= res!429795 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!133 (List!12721 (_ BitVec 64)) List!12721)

(assert (=> b!661566 (= lt!308771 ($colon$colon!133 acc!681 (select (arr!18627 a!3626) from!3004)))))

(declare-fun subseq!2 (List!12721 List!12721) Bool)

(assert (=> b!661566 (subseq!2 acc!681 acc!681)))

(declare-fun lt!308775 () Unit!22954)

(declare-fun lemmaListSubSeqRefl!0 (List!12721) Unit!22954)

(assert (=> b!661566 (= lt!308775 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!661567 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!661567 (= e!379944 (contains!3264 acc!681 k!2843))))

(declare-fun b!661569 () Bool)

(declare-fun res!429812 () Bool)

(assert (=> b!661569 (=> res!429812 e!379947)))

(assert (=> b!661569 (= res!429812 (contains!3264 lt!308771 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661570 () Bool)

(declare-fun res!429804 () Bool)

(assert (=> b!661570 (=> (not res!429804) (not e!379946))))

(assert (=> b!661570 (= res!429804 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12718))))

(declare-fun b!661571 () Bool)

(declare-fun res!429808 () Bool)

(assert (=> b!661571 (=> (not res!429808) (not e!379946))))

(assert (=> b!661571 (= res!429808 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18991 a!3626))))))

(declare-fun b!661572 () Bool)

(declare-fun Unit!22957 () Unit!22954)

(assert (=> b!661572 (= e!379950 Unit!22957)))

(declare-fun lt!308773 () Unit!22954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38877 (_ BitVec 64) (_ BitVec 32)) Unit!22954)

(assert (=> b!661572 (= lt!308773 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!661572 false))

(declare-fun b!661573 () Bool)

(declare-fun e!379945 () Bool)

(assert (=> b!661573 (= e!379945 (not (contains!3264 acc!681 k!2843)))))

(declare-fun b!661574 () Bool)

(assert (=> b!661574 (= e!379949 e!379945)))

(declare-fun res!429794 () Bool)

(assert (=> b!661574 (=> (not res!429794) (not e!379945))))

(assert (=> b!661574 (= res!429794 (bvsle from!3004 i!1382))))

(declare-fun b!661575 () Bool)

(assert (=> b!661575 (= e!379946 (not e!379948))))

(declare-fun res!429801 () Bool)

(assert (=> b!661575 (=> res!429801 e!379948)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661575 (= res!429801 (not (validKeyInArray!0 (select (arr!18627 a!3626) from!3004))))))

(declare-fun lt!308770 () Unit!22954)

(assert (=> b!661575 (= lt!308770 e!379950)))

(declare-fun c!76250 () Bool)

(declare-fun arrayContainsKey!0 (array!38877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661575 (= c!76250 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!661575 (arrayContainsKey!0 (array!38878 (store (arr!18627 a!3626) i!1382 k!2843) (size!18991 a!3626)) k!2843 from!3004)))

(declare-fun b!661576 () Bool)

(declare-fun res!429800 () Bool)

(assert (=> b!661576 (=> res!429800 e!379947)))

(assert (=> b!661576 (= res!429800 (not (noDuplicate!511 lt!308771)))))

(declare-fun b!661577 () Bool)

(declare-fun res!429798 () Bool)

(assert (=> b!661577 (=> (not res!429798) (not e!379946))))

(assert (=> b!661577 (= res!429798 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18991 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661578 () Bool)

(declare-fun res!429793 () Bool)

(assert (=> b!661578 (=> res!429793 e!379947)))

(assert (=> b!661578 (= res!429793 (not (subseq!2 acc!681 lt!308771)))))

(declare-fun res!429811 () Bool)

(assert (=> start!59874 (=> (not res!429811) (not e!379946))))

(assert (=> start!59874 (= res!429811 (and (bvslt (size!18991 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18991 a!3626))))))

(assert (=> start!59874 e!379946))

(assert (=> start!59874 true))

(declare-fun array_inv!14401 (array!38877) Bool)

(assert (=> start!59874 (array_inv!14401 a!3626)))

(declare-fun b!661568 () Bool)

(declare-fun res!429799 () Bool)

(assert (=> b!661568 (=> (not res!429799) (not e!379946))))

(assert (=> b!661568 (= res!429799 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661579 () Bool)

(declare-fun res!429809 () Bool)

(assert (=> b!661579 (=> (not res!429809) (not e!379946))))

(assert (=> b!661579 (= res!429809 (validKeyInArray!0 k!2843))))

(declare-fun b!661580 () Bool)

(declare-fun res!429797 () Bool)

(assert (=> b!661580 (=> res!429797 e!379947)))

(assert (=> b!661580 (= res!429797 (contains!3264 lt!308771 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!59874 res!429811) b!661565))

(assert (= (and b!661565 res!429802) b!661559))

(assert (= (and b!661559 res!429807) b!661564))

(assert (= (and b!661564 res!429805) b!661560))

(assert (= (and b!661560 res!429806) b!661567))

(assert (= (and b!661560 (not res!429796)) b!661574))

(assert (= (and b!661574 res!429794) b!661573))

(assert (= (and b!661560 res!429810) b!661570))

(assert (= (and b!661570 res!429804) b!661561))

(assert (= (and b!661561 res!429803) b!661571))

(assert (= (and b!661571 res!429808) b!661579))

(assert (= (and b!661579 res!429809) b!661568))

(assert (= (and b!661568 res!429799) b!661577))

(assert (= (and b!661577 res!429798) b!661575))

(assert (= (and b!661575 c!76250) b!661572))

(assert (= (and b!661575 (not c!76250)) b!661562))

(assert (= (and b!661575 (not res!429801)) b!661566))

(assert (= (and b!661566 (not res!429795)) b!661576))

(assert (= (and b!661576 (not res!429800)) b!661569))

(assert (= (and b!661569 (not res!429812)) b!661580))

(assert (= (and b!661580 (not res!429797)) b!661578))

(assert (= (and b!661578 (not res!429793)) b!661563))

(declare-fun m!633651 () Bool)

(assert (=> b!661576 m!633651))

(declare-fun m!633653 () Bool)

(assert (=> b!661569 m!633653))

(declare-fun m!633655 () Bool)

(assert (=> b!661575 m!633655))

(declare-fun m!633657 () Bool)

(assert (=> b!661575 m!633657))

(declare-fun m!633659 () Bool)

(assert (=> b!661575 m!633659))

(assert (=> b!661575 m!633655))

(declare-fun m!633661 () Bool)

(assert (=> b!661575 m!633661))

(declare-fun m!633663 () Bool)

(assert (=> b!661575 m!633663))

(declare-fun m!633665 () Bool)

(assert (=> b!661561 m!633665))

(declare-fun m!633667 () Bool)

(assert (=> b!661565 m!633667))

(declare-fun m!633669 () Bool)

(assert (=> b!661578 m!633669))

(declare-fun m!633671 () Bool)

(assert (=> b!661573 m!633671))

(declare-fun m!633673 () Bool)

(assert (=> b!661559 m!633673))

(assert (=> b!661567 m!633671))

(assert (=> b!661566 m!633655))

(assert (=> b!661566 m!633655))

(declare-fun m!633675 () Bool)

(assert (=> b!661566 m!633675))

(declare-fun m!633677 () Bool)

(assert (=> b!661566 m!633677))

(declare-fun m!633679 () Bool)

(assert (=> b!661566 m!633679))

(declare-fun m!633681 () Bool)

(assert (=> b!661563 m!633681))

(declare-fun m!633683 () Bool)

(assert (=> b!661563 m!633683))

(declare-fun m!633685 () Bool)

(assert (=> b!661572 m!633685))

(declare-fun m!633687 () Bool)

(assert (=> start!59874 m!633687))

(declare-fun m!633689 () Bool)

(assert (=> b!661568 m!633689))

(declare-fun m!633691 () Bool)

(assert (=> b!661580 m!633691))

(declare-fun m!633693 () Bool)

(assert (=> b!661564 m!633693))

(declare-fun m!633695 () Bool)

(assert (=> b!661570 m!633695))

(declare-fun m!633697 () Bool)

(assert (=> b!661579 m!633697))

(push 1)

