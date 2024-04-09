; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62540 () Bool)

(assert start!62540)

(declare-fun b!704139 () Bool)

(declare-fun res!468131 () Bool)

(declare-fun e!397599 () Bool)

(assert (=> b!704139 (=> (not res!468131) (not e!397599))))

(declare-datatypes ((array!40175 0))(
  ( (array!40176 (arr!19240 (Array (_ BitVec 32) (_ BitVec 64))) (size!19623 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40175)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704139 (= res!468131 (not (validKeyInArray!0 (select (arr!19240 a!3591) from!2969))))))

(declare-fun b!704141 () Bool)

(assert (=> b!704141 (= e!397599 false)))

(declare-datatypes ((List!13334 0))(
  ( (Nil!13331) (Cons!13330 (h!14375 (_ BitVec 64)) (t!19624 List!13334)) )
))
(declare-fun acc!652 () List!13334)

(declare-fun lt!317781 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40175 (_ BitVec 32) List!13334) Bool)

(assert (=> b!704141 (= lt!317781 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704142 () Bool)

(declare-fun res!468125 () Bool)

(assert (=> b!704142 (=> (not res!468125) (not e!397599))))

(assert (=> b!704142 (= res!468125 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19623 a!3591)))))

(declare-fun b!704143 () Bool)

(declare-fun res!468130 () Bool)

(assert (=> b!704143 (=> (not res!468130) (not e!397599))))

(declare-fun noDuplicate!1124 (List!13334) Bool)

(assert (=> b!704143 (= res!468130 (noDuplicate!1124 acc!652))))

(declare-fun b!704144 () Bool)

(declare-fun res!468127 () Bool)

(assert (=> b!704144 (=> (not res!468127) (not e!397599))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun newAcc!49 () List!13334)

(declare-fun -!286 (List!13334 (_ BitVec 64)) List!13334)

(assert (=> b!704144 (= res!468127 (= (-!286 newAcc!49 k0!2824) acc!652))))

(declare-fun b!704145 () Bool)

(declare-fun res!468133 () Bool)

(assert (=> b!704145 (=> (not res!468133) (not e!397599))))

(declare-fun contains!3877 (List!13334 (_ BitVec 64)) Bool)

(assert (=> b!704145 (= res!468133 (not (contains!3877 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704146 () Bool)

(declare-fun res!468139 () Bool)

(assert (=> b!704146 (=> (not res!468139) (not e!397599))))

(assert (=> b!704146 (= res!468139 (validKeyInArray!0 k0!2824))))

(declare-fun b!704147 () Bool)

(declare-fun res!468129 () Bool)

(assert (=> b!704147 (=> (not res!468129) (not e!397599))))

(declare-fun arrayContainsKey!0 (array!40175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704147 (= res!468129 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704148 () Bool)

(declare-fun res!468135 () Bool)

(assert (=> b!704148 (=> (not res!468135) (not e!397599))))

(assert (=> b!704148 (= res!468135 (noDuplicate!1124 newAcc!49))))

(declare-fun res!468138 () Bool)

(assert (=> start!62540 (=> (not res!468138) (not e!397599))))

(assert (=> start!62540 (= res!468138 (and (bvslt (size!19623 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19623 a!3591))))))

(assert (=> start!62540 e!397599))

(assert (=> start!62540 true))

(declare-fun array_inv!15014 (array!40175) Bool)

(assert (=> start!62540 (array_inv!15014 a!3591)))

(declare-fun b!704140 () Bool)

(declare-fun res!468137 () Bool)

(assert (=> b!704140 (=> (not res!468137) (not e!397599))))

(assert (=> b!704140 (= res!468137 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704149 () Bool)

(declare-fun res!468128 () Bool)

(assert (=> b!704149 (=> (not res!468128) (not e!397599))))

(assert (=> b!704149 (= res!468128 (not (contains!3877 acc!652 k0!2824)))))

(declare-fun b!704150 () Bool)

(declare-fun res!468140 () Bool)

(assert (=> b!704150 (=> (not res!468140) (not e!397599))))

(assert (=> b!704150 (= res!468140 (not (contains!3877 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704151 () Bool)

(declare-fun res!468123 () Bool)

(assert (=> b!704151 (=> (not res!468123) (not e!397599))))

(assert (=> b!704151 (= res!468123 (not (contains!3877 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704152 () Bool)

(declare-fun res!468124 () Bool)

(assert (=> b!704152 (=> (not res!468124) (not e!397599))))

(declare-fun subseq!321 (List!13334 List!13334) Bool)

(assert (=> b!704152 (= res!468124 (subseq!321 acc!652 newAcc!49))))

(declare-fun b!704153 () Bool)

(declare-fun res!468132 () Bool)

(assert (=> b!704153 (=> (not res!468132) (not e!397599))))

(assert (=> b!704153 (= res!468132 (not (contains!3877 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704154 () Bool)

(declare-fun res!468136 () Bool)

(assert (=> b!704154 (=> (not res!468136) (not e!397599))))

(assert (=> b!704154 (= res!468136 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704155 () Bool)

(declare-fun res!468126 () Bool)

(assert (=> b!704155 (=> (not res!468126) (not e!397599))))

(assert (=> b!704155 (= res!468126 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!704156 () Bool)

(declare-fun res!468134 () Bool)

(assert (=> b!704156 (=> (not res!468134) (not e!397599))))

(assert (=> b!704156 (= res!468134 (contains!3877 newAcc!49 k0!2824))))

(assert (= (and start!62540 res!468138) b!704143))

(assert (= (and b!704143 res!468130) b!704148))

(assert (= (and b!704148 res!468135) b!704153))

(assert (= (and b!704153 res!468132) b!704151))

(assert (= (and b!704151 res!468123) b!704155))

(assert (= (and b!704155 res!468126) b!704149))

(assert (= (and b!704149 res!468128) b!704146))

(assert (= (and b!704146 res!468139) b!704140))

(assert (= (and b!704140 res!468137) b!704152))

(assert (= (and b!704152 res!468124) b!704156))

(assert (= (and b!704156 res!468134) b!704144))

(assert (= (and b!704144 res!468127) b!704150))

(assert (= (and b!704150 res!468140) b!704145))

(assert (= (and b!704145 res!468133) b!704142))

(assert (= (and b!704142 res!468125) b!704139))

(assert (= (and b!704139 res!468131) b!704154))

(assert (= (and b!704154 res!468136) b!704147))

(assert (= (and b!704147 res!468129) b!704141))

(declare-fun m!662751 () Bool)

(assert (=> b!704148 m!662751))

(declare-fun m!662753 () Bool)

(assert (=> b!704145 m!662753))

(declare-fun m!662755 () Bool)

(assert (=> start!62540 m!662755))

(declare-fun m!662757 () Bool)

(assert (=> b!704141 m!662757))

(declare-fun m!662759 () Bool)

(assert (=> b!704139 m!662759))

(assert (=> b!704139 m!662759))

(declare-fun m!662761 () Bool)

(assert (=> b!704139 m!662761))

(declare-fun m!662763 () Bool)

(assert (=> b!704153 m!662763))

(declare-fun m!662765 () Bool)

(assert (=> b!704149 m!662765))

(declare-fun m!662767 () Bool)

(assert (=> b!704155 m!662767))

(declare-fun m!662769 () Bool)

(assert (=> b!704146 m!662769))

(declare-fun m!662771 () Bool)

(assert (=> b!704147 m!662771))

(declare-fun m!662773 () Bool)

(assert (=> b!704156 m!662773))

(declare-fun m!662775 () Bool)

(assert (=> b!704140 m!662775))

(declare-fun m!662777 () Bool)

(assert (=> b!704144 m!662777))

(declare-fun m!662779 () Bool)

(assert (=> b!704152 m!662779))

(declare-fun m!662781 () Bool)

(assert (=> b!704143 m!662781))

(declare-fun m!662783 () Bool)

(assert (=> b!704150 m!662783))

(declare-fun m!662785 () Bool)

(assert (=> b!704151 m!662785))

(check-sat (not b!704156) (not b!704143) (not b!704145) (not b!704149) (not b!704146) (not b!704150) (not b!704147) (not b!704153) (not b!704152) (not b!704140) (not b!704151) (not b!704141) (not b!704144) (not b!704148) (not b!704155) (not b!704139) (not start!62540))
(check-sat)
