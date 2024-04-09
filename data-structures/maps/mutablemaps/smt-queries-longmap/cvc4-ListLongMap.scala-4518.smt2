; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62596 () Bool)

(assert start!62596)

(declare-fun b!705677 () Bool)

(declare-fun res!469667 () Bool)

(declare-fun e!397768 () Bool)

(assert (=> b!705677 (=> (not res!469667) (not e!397768))))

(declare-datatypes ((List!13362 0))(
  ( (Nil!13359) (Cons!13358 (h!14403 (_ BitVec 64)) (t!19652 List!13362)) )
))
(declare-fun acc!652 () List!13362)

(declare-fun noDuplicate!1152 (List!13362) Bool)

(assert (=> b!705677 (= res!469667 (noDuplicate!1152 acc!652))))

(declare-fun b!705678 () Bool)

(declare-fun res!469678 () Bool)

(assert (=> b!705678 (=> (not res!469678) (not e!397768))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705678 (= res!469678 (validKeyInArray!0 k!2824))))

(declare-fun b!705679 () Bool)

(declare-fun res!469663 () Bool)

(assert (=> b!705679 (=> (not res!469663) (not e!397768))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!705679 (= res!469663 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun res!469675 () Bool)

(assert (=> start!62596 (=> (not res!469675) (not e!397768))))

(declare-datatypes ((array!40231 0))(
  ( (array!40232 (arr!19268 (Array (_ BitVec 32) (_ BitVec 64))) (size!19651 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40231)

(assert (=> start!62596 (= res!469675 (and (bvslt (size!19651 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19651 a!3591))))))

(assert (=> start!62596 e!397768))

(assert (=> start!62596 true))

(declare-fun array_inv!15042 (array!40231) Bool)

(assert (=> start!62596 (array_inv!15042 a!3591)))

(declare-fun b!705680 () Bool)

(declare-fun res!469679 () Bool)

(assert (=> b!705680 (=> (not res!469679) (not e!397768))))

(declare-fun newAcc!49 () List!13362)

(declare-fun contains!3905 (List!13362 (_ BitVec 64)) Bool)

(assert (=> b!705680 (= res!469679 (not (contains!3905 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705681 () Bool)

(declare-fun res!469672 () Bool)

(assert (=> b!705681 (=> (not res!469672) (not e!397768))))

(assert (=> b!705681 (= res!469672 (not (validKeyInArray!0 (select (arr!19268 a!3591) from!2969))))))

(declare-fun b!705682 () Bool)

(declare-fun res!469666 () Bool)

(assert (=> b!705682 (=> (not res!469666) (not e!397768))))

(assert (=> b!705682 (= res!469666 (contains!3905 newAcc!49 k!2824))))

(declare-fun b!705683 () Bool)

(declare-fun res!469674 () Bool)

(assert (=> b!705683 (=> (not res!469674) (not e!397768))))

(declare-fun arrayContainsKey!0 (array!40231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705683 (= res!469674 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705684 () Bool)

(assert (=> b!705684 (= e!397768 (not true))))

(declare-fun arrayNoDuplicates!0 (array!40231 (_ BitVec 32) List!13362) Bool)

(assert (=> b!705684 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24602 0))(
  ( (Unit!24603) )
))
(declare-fun lt!317865 () Unit!24602)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40231 (_ BitVec 64) (_ BitVec 32) List!13362 List!13362) Unit!24602)

(assert (=> b!705684 (= lt!317865 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705685 () Bool)

(declare-fun res!469671 () Bool)

(assert (=> b!705685 (=> (not res!469671) (not e!397768))))

(assert (=> b!705685 (= res!469671 (not (contains!3905 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705686 () Bool)

(declare-fun res!469661 () Bool)

(assert (=> b!705686 (=> (not res!469661) (not e!397768))))

(assert (=> b!705686 (= res!469661 (noDuplicate!1152 newAcc!49))))

(declare-fun b!705687 () Bool)

(declare-fun res!469662 () Bool)

(assert (=> b!705687 (=> (not res!469662) (not e!397768))))

(assert (=> b!705687 (= res!469662 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19651 a!3591)))))

(declare-fun b!705688 () Bool)

(declare-fun res!469668 () Bool)

(assert (=> b!705688 (=> (not res!469668) (not e!397768))))

(assert (=> b!705688 (= res!469668 (not (contains!3905 acc!652 k!2824)))))

(declare-fun b!705689 () Bool)

(declare-fun res!469665 () Bool)

(assert (=> b!705689 (=> (not res!469665) (not e!397768))))

(assert (=> b!705689 (= res!469665 (not (contains!3905 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705690 () Bool)

(declare-fun res!469669 () Bool)

(assert (=> b!705690 (=> (not res!469669) (not e!397768))))

(assert (=> b!705690 (= res!469669 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705691 () Bool)

(declare-fun res!469664 () Bool)

(assert (=> b!705691 (=> (not res!469664) (not e!397768))))

(declare-fun -!314 (List!13362 (_ BitVec 64)) List!13362)

(assert (=> b!705691 (= res!469664 (= (-!314 newAcc!49 k!2824) acc!652))))

(declare-fun b!705692 () Bool)

(declare-fun res!469676 () Bool)

(assert (=> b!705692 (=> (not res!469676) (not e!397768))))

(assert (=> b!705692 (= res!469676 (not (contains!3905 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705693 () Bool)

(declare-fun res!469677 () Bool)

(assert (=> b!705693 (=> (not res!469677) (not e!397768))))

(declare-fun subseq!349 (List!13362 List!13362) Bool)

(assert (=> b!705693 (= res!469677 (subseq!349 acc!652 newAcc!49))))

(declare-fun b!705694 () Bool)

(declare-fun res!469673 () Bool)

(assert (=> b!705694 (=> (not res!469673) (not e!397768))))

(assert (=> b!705694 (= res!469673 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705695 () Bool)

(declare-fun res!469670 () Bool)

(assert (=> b!705695 (=> (not res!469670) (not e!397768))))

(assert (=> b!705695 (= res!469670 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(assert (= (and start!62596 res!469675) b!705677))

(assert (= (and b!705677 res!469667) b!705686))

(assert (= (and b!705686 res!469661) b!705689))

(assert (= (and b!705689 res!469665) b!705685))

(assert (= (and b!705685 res!469671) b!705683))

(assert (= (and b!705683 res!469674) b!705688))

(assert (= (and b!705688 res!469668) b!705678))

(assert (= (and b!705678 res!469678) b!705690))

(assert (= (and b!705690 res!469669) b!705693))

(assert (= (and b!705693 res!469677) b!705682))

(assert (= (and b!705682 res!469666) b!705691))

(assert (= (and b!705691 res!469664) b!705680))

(assert (= (and b!705680 res!469679) b!705692))

(assert (= (and b!705692 res!469676) b!705687))

(assert (= (and b!705687 res!469662) b!705681))

(assert (= (and b!705681 res!469672) b!705679))

(assert (= (and b!705679 res!469663) b!705694))

(assert (= (and b!705694 res!469673) b!705695))

(assert (= (and b!705695 res!469670) b!705684))

(declare-fun m!663791 () Bool)

(assert (=> b!705693 m!663791))

(declare-fun m!663793 () Bool)

(assert (=> b!705690 m!663793))

(declare-fun m!663795 () Bool)

(assert (=> b!705686 m!663795))

(declare-fun m!663797 () Bool)

(assert (=> b!705680 m!663797))

(declare-fun m!663799 () Bool)

(assert (=> b!705685 m!663799))

(declare-fun m!663801 () Bool)

(assert (=> b!705688 m!663801))

(declare-fun m!663803 () Bool)

(assert (=> b!705695 m!663803))

(declare-fun m!663805 () Bool)

(assert (=> b!705691 m!663805))

(declare-fun m!663807 () Bool)

(assert (=> b!705692 m!663807))

(declare-fun m!663809 () Bool)

(assert (=> b!705684 m!663809))

(declare-fun m!663811 () Bool)

(assert (=> b!705684 m!663811))

(declare-fun m!663813 () Bool)

(assert (=> b!705694 m!663813))

(declare-fun m!663815 () Bool)

(assert (=> b!705683 m!663815))

(declare-fun m!663817 () Bool)

(assert (=> b!705677 m!663817))

(declare-fun m!663819 () Bool)

(assert (=> start!62596 m!663819))

(declare-fun m!663821 () Bool)

(assert (=> b!705682 m!663821))

(declare-fun m!663823 () Bool)

(assert (=> b!705681 m!663823))

(assert (=> b!705681 m!663823))

(declare-fun m!663825 () Bool)

(assert (=> b!705681 m!663825))

(declare-fun m!663827 () Bool)

(assert (=> b!705689 m!663827))

(declare-fun m!663829 () Bool)

(assert (=> b!705678 m!663829))

(push 1)

(assert (not b!705677))

(assert (not b!705683))

(assert (not b!705693))

(assert (not b!705690))

(assert (not b!705686))

(assert (not b!705691))

(assert (not b!705684))

(assert (not b!705694))

(assert (not b!705689))

(assert (not b!705695))

(assert (not b!705685))

(assert (not b!705692))

(assert (not b!705678))

(assert (not b!705680))

(assert (not b!705681))

(assert (not start!62596))

(assert (not b!705682))

(assert (not b!705688))

(check-sat)

(pop 1)

