; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115482 () Bool)

(assert start!115482)

(declare-fun b!1365114 () Bool)

(declare-fun res!908826 () Bool)

(declare-fun e!774136 () Bool)

(assert (=> b!1365114 (=> (not res!908826) (not e!774136))))

(declare-datatypes ((List!32035 0))(
  ( (Nil!32032) (Cons!32031 (h!33240 (_ BitVec 64)) (t!46736 List!32035)) )
))
(declare-fun acc!866 () List!32035)

(declare-fun noDuplicate!2452 (List!32035) Bool)

(assert (=> b!1365114 (= res!908826 (noDuplicate!2452 acc!866))))

(declare-fun b!1365115 () Bool)

(declare-fun res!908810 () Bool)

(declare-fun e!774135 () Bool)

(assert (=> b!1365115 (=> (not res!908810) (not e!774135))))

(declare-fun lt!601158 () List!32035)

(assert (=> b!1365115 (= res!908810 (noDuplicate!2452 lt!601158))))

(declare-fun b!1365116 () Bool)

(declare-fun e!774133 () Bool)

(assert (=> b!1365116 (= e!774136 e!774133)))

(declare-fun res!908824 () Bool)

(assert (=> b!1365116 (=> (not res!908824) (not e!774133))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92726 0))(
  ( (array!92727 (arr!44787 (Array (_ BitVec 32) (_ BitVec 64))) (size!45338 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92726)

(declare-fun arrayNoDuplicates!0 (array!92726 (_ BitVec 32) List!32035) Bool)

(assert (=> b!1365116 (= res!908824 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45009 0))(
  ( (Unit!45010) )
))
(declare-fun lt!601160 () Unit!45009)

(declare-fun newAcc!98 () List!32035)

(declare-fun noDuplicateSubseq!151 (List!32035 List!32035) Unit!45009)

(assert (=> b!1365116 (= lt!601160 (noDuplicateSubseq!151 newAcc!98 acc!866))))

(declare-fun b!1365117 () Bool)

(assert (=> b!1365117 (= e!774135 false)))

(declare-fun lt!601157 () Bool)

(assert (=> b!1365117 (= lt!601157 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601158))))

(declare-fun lt!601156 () Unit!45009)

(declare-fun lt!601159 () List!32035)

(assert (=> b!1365117 (= lt!601156 (noDuplicateSubseq!151 lt!601159 lt!601158))))

(declare-fun res!908819 () Bool)

(assert (=> start!115482 (=> (not res!908819) (not e!774136))))

(assert (=> start!115482 (= res!908819 (and (bvslt (size!45338 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45338 a!3861))))))

(assert (=> start!115482 e!774136))

(declare-fun array_inv!33732 (array!92726) Bool)

(assert (=> start!115482 (array_inv!33732 a!3861)))

(assert (=> start!115482 true))

(declare-fun b!1365118 () Bool)

(declare-fun res!908820 () Bool)

(assert (=> b!1365118 (=> (not res!908820) (not e!774136))))

(declare-fun subseq!964 (List!32035 List!32035) Bool)

(assert (=> b!1365118 (= res!908820 (subseq!964 newAcc!98 acc!866))))

(declare-fun b!1365119 () Bool)

(declare-fun res!908818 () Bool)

(assert (=> b!1365119 (=> (not res!908818) (not e!774135))))

(assert (=> b!1365119 (= res!908818 (subseq!964 lt!601159 lt!601158))))

(declare-fun b!1365120 () Bool)

(declare-fun res!908822 () Bool)

(assert (=> b!1365120 (=> (not res!908822) (not e!774135))))

(declare-fun contains!9573 (List!32035 (_ BitVec 64)) Bool)

(assert (=> b!1365120 (= res!908822 (not (contains!9573 lt!601159 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365121 () Bool)

(declare-fun res!908825 () Bool)

(assert (=> b!1365121 (=> (not res!908825) (not e!774136))))

(assert (=> b!1365121 (= res!908825 (not (contains!9573 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365122 () Bool)

(declare-fun res!908814 () Bool)

(assert (=> b!1365122 (=> (not res!908814) (not e!774135))))

(assert (=> b!1365122 (= res!908814 (not (contains!9573 lt!601159 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365123 () Bool)

(declare-fun res!908823 () Bool)

(assert (=> b!1365123 (=> (not res!908823) (not e!774136))))

(assert (=> b!1365123 (= res!908823 (not (contains!9573 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365124 () Bool)

(declare-fun res!908816 () Bool)

(assert (=> b!1365124 (=> (not res!908816) (not e!774136))))

(assert (=> b!1365124 (= res!908816 (not (contains!9573 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365125 () Bool)

(declare-fun res!908815 () Bool)

(assert (=> b!1365125 (=> (not res!908815) (not e!774133))))

(assert (=> b!1365125 (= res!908815 (not (contains!9573 acc!866 (select (arr!44787 a!3861) from!3239))))))

(declare-fun b!1365126 () Bool)

(declare-fun res!908812 () Bool)

(assert (=> b!1365126 (=> (not res!908812) (not e!774136))))

(assert (=> b!1365126 (= res!908812 (not (contains!9573 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365127 () Bool)

(assert (=> b!1365127 (= e!774133 e!774135)))

(declare-fun res!908811 () Bool)

(assert (=> b!1365127 (=> (not res!908811) (not e!774135))))

(assert (=> b!1365127 (= res!908811 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365127 (= lt!601159 (Cons!32031 (select (arr!44787 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365127 (= lt!601158 (Cons!32031 (select (arr!44787 a!3861) from!3239) acc!866))))

(declare-fun b!1365128 () Bool)

(declare-fun res!908817 () Bool)

(assert (=> b!1365128 (=> (not res!908817) (not e!774135))))

(assert (=> b!1365128 (= res!908817 (not (contains!9573 lt!601158 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365129 () Bool)

(declare-fun res!908821 () Bool)

(assert (=> b!1365129 (=> (not res!908821) (not e!774135))))

(assert (=> b!1365129 (= res!908821 (not (contains!9573 lt!601158 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365130 () Bool)

(declare-fun res!908813 () Bool)

(assert (=> b!1365130 (=> (not res!908813) (not e!774133))))

(assert (=> b!1365130 (= res!908813 (bvslt from!3239 (size!45338 a!3861)))))

(declare-fun b!1365131 () Bool)

(declare-fun res!908809 () Bool)

(assert (=> b!1365131 (=> (not res!908809) (not e!774133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365131 (= res!908809 (validKeyInArray!0 (select (arr!44787 a!3861) from!3239)))))

(assert (= (and start!115482 res!908819) b!1365114))

(assert (= (and b!1365114 res!908826) b!1365126))

(assert (= (and b!1365126 res!908812) b!1365124))

(assert (= (and b!1365124 res!908816) b!1365123))

(assert (= (and b!1365123 res!908823) b!1365121))

(assert (= (and b!1365121 res!908825) b!1365118))

(assert (= (and b!1365118 res!908820) b!1365116))

(assert (= (and b!1365116 res!908824) b!1365130))

(assert (= (and b!1365130 res!908813) b!1365131))

(assert (= (and b!1365131 res!908809) b!1365125))

(assert (= (and b!1365125 res!908815) b!1365127))

(assert (= (and b!1365127 res!908811) b!1365115))

(assert (= (and b!1365115 res!908810) b!1365128))

(assert (= (and b!1365128 res!908817) b!1365129))

(assert (= (and b!1365129 res!908821) b!1365120))

(assert (= (and b!1365120 res!908822) b!1365122))

(assert (= (and b!1365122 res!908814) b!1365119))

(assert (= (and b!1365119 res!908818) b!1365117))

(declare-fun m!1249761 () Bool)

(assert (=> b!1365129 m!1249761))

(declare-fun m!1249763 () Bool)

(assert (=> b!1365121 m!1249763))

(declare-fun m!1249765 () Bool)

(assert (=> b!1365118 m!1249765))

(declare-fun m!1249767 () Bool)

(assert (=> b!1365116 m!1249767))

(declare-fun m!1249769 () Bool)

(assert (=> b!1365116 m!1249769))

(declare-fun m!1249771 () Bool)

(assert (=> b!1365123 m!1249771))

(declare-fun m!1249773 () Bool)

(assert (=> b!1365124 m!1249773))

(declare-fun m!1249775 () Bool)

(assert (=> b!1365127 m!1249775))

(declare-fun m!1249777 () Bool)

(assert (=> b!1365128 m!1249777))

(declare-fun m!1249779 () Bool)

(assert (=> start!115482 m!1249779))

(assert (=> b!1365131 m!1249775))

(assert (=> b!1365131 m!1249775))

(declare-fun m!1249781 () Bool)

(assert (=> b!1365131 m!1249781))

(declare-fun m!1249783 () Bool)

(assert (=> b!1365117 m!1249783))

(declare-fun m!1249785 () Bool)

(assert (=> b!1365117 m!1249785))

(declare-fun m!1249787 () Bool)

(assert (=> b!1365120 m!1249787))

(declare-fun m!1249789 () Bool)

(assert (=> b!1365126 m!1249789))

(declare-fun m!1249791 () Bool)

(assert (=> b!1365115 m!1249791))

(declare-fun m!1249793 () Bool)

(assert (=> b!1365114 m!1249793))

(assert (=> b!1365125 m!1249775))

(assert (=> b!1365125 m!1249775))

(declare-fun m!1249795 () Bool)

(assert (=> b!1365125 m!1249795))

(declare-fun m!1249797 () Bool)

(assert (=> b!1365119 m!1249797))

(declare-fun m!1249799 () Bool)

(assert (=> b!1365122 m!1249799))

(push 1)

