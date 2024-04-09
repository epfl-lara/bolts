; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103960 () Bool)

(assert start!103960)

(declare-fun b!1243913 () Bool)

(declare-fun e!705064 () Bool)

(assert (=> b!1243913 (= e!705064 false)))

(declare-datatypes ((array!79998 0))(
  ( (array!79999 (arr!38588 (Array (_ BitVec 32) (_ BitVec 64))) (size!39125 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79998)

(declare-datatypes ((List!27569 0))(
  ( (Nil!27566) (Cons!27565 (h!28774 (_ BitVec 64)) (t!41045 List!27569)) )
))
(declare-fun lt!562483 () List!27569)

(declare-fun lt!562481 () Bool)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79998 (_ BitVec 32) List!27569) Bool)

(assert (=> b!1243913 (= lt!562481 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562483))))

(declare-datatypes ((Unit!41255 0))(
  ( (Unit!41256) )
))
(declare-fun lt!562482 () Unit!41255)

(declare-fun noDuplicateSubseq!106 (List!27569 List!27569) Unit!41255)

(assert (=> b!1243913 (= lt!562482 (noDuplicateSubseq!106 Nil!27566 lt!562483))))

(declare-fun b!1243914 () Bool)

(declare-fun res!829825 () Bool)

(declare-fun e!705063 () Bool)

(assert (=> b!1243914 (=> (not res!829825) (not e!705063))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1243914 (= res!829825 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39125 a!3892)) (not (= newFrom!287 (size!39125 a!3892)))))))

(declare-fun b!1243915 () Bool)

(declare-fun res!829816 () Bool)

(assert (=> b!1243915 (=> (not res!829816) (not e!705064))))

(declare-fun contains!7441 (List!27569 (_ BitVec 64)) Bool)

(assert (=> b!1243915 (= res!829816 (not (contains!7441 lt!562483 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243916 () Bool)

(declare-fun res!829821 () Bool)

(assert (=> b!1243916 (=> (not res!829821) (not e!705063))))

(assert (=> b!1243916 (= res!829821 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27566))))

(declare-fun b!1243917 () Bool)

(declare-fun res!829818 () Bool)

(assert (=> b!1243917 (=> (not res!829818) (not e!705064))))

(declare-fun noDuplicate!2031 (List!27569) Bool)

(assert (=> b!1243917 (= res!829818 (noDuplicate!2031 lt!562483))))

(declare-fun b!1243918 () Bool)

(declare-fun res!829819 () Bool)

(assert (=> b!1243918 (=> (not res!829819) (not e!705064))))

(assert (=> b!1243918 (= res!829819 (not (contains!7441 Nil!27566 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243919 () Bool)

(declare-fun res!829824 () Bool)

(assert (=> b!1243919 (=> (not res!829824) (not e!705064))))

(assert (=> b!1243919 (= res!829824 (not (contains!7441 Nil!27566 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243920 () Bool)

(assert (=> b!1243920 (= e!705063 e!705064)))

(declare-fun res!829817 () Bool)

(assert (=> b!1243920 (=> (not res!829817) (not e!705064))))

(assert (=> b!1243920 (= res!829817 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243920 (= lt!562483 (Cons!27565 (select (arr!38588 a!3892) from!3270) Nil!27566))))

(declare-fun b!1243921 () Bool)

(declare-fun res!829823 () Bool)

(assert (=> b!1243921 (=> (not res!829823) (not e!705064))))

(declare-fun subseq!652 (List!27569 List!27569) Bool)

(assert (=> b!1243921 (= res!829823 (subseq!652 Nil!27566 lt!562483))))

(declare-fun b!1243922 () Bool)

(declare-fun res!829815 () Bool)

(assert (=> b!1243922 (=> (not res!829815) (not e!705063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243922 (= res!829815 (validKeyInArray!0 (select (arr!38588 a!3892) from!3270)))))

(declare-fun b!1243923 () Bool)

(declare-fun res!829822 () Bool)

(assert (=> b!1243923 (=> (not res!829822) (not e!705064))))

(assert (=> b!1243923 (= res!829822 (not (contains!7441 lt!562483 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829820 () Bool)

(assert (=> start!103960 (=> (not res!829820) (not e!705063))))

(assert (=> start!103960 (= res!829820 (and (bvslt (size!39125 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39125 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39125 a!3892))))))

(assert (=> start!103960 e!705063))

(declare-fun array_inv!29364 (array!79998) Bool)

(assert (=> start!103960 (array_inv!29364 a!3892)))

(assert (=> start!103960 true))

(assert (= (and start!103960 res!829820) b!1243916))

(assert (= (and b!1243916 res!829821) b!1243914))

(assert (= (and b!1243914 res!829825) b!1243922))

(assert (= (and b!1243922 res!829815) b!1243920))

(assert (= (and b!1243920 res!829817) b!1243917))

(assert (= (and b!1243917 res!829818) b!1243923))

(assert (= (and b!1243923 res!829822) b!1243915))

(assert (= (and b!1243915 res!829816) b!1243918))

(assert (= (and b!1243918 res!829819) b!1243919))

(assert (= (and b!1243919 res!829824) b!1243921))

(assert (= (and b!1243921 res!829823) b!1243913))

(declare-fun m!1146345 () Bool)

(assert (=> b!1243922 m!1146345))

(assert (=> b!1243922 m!1146345))

(declare-fun m!1146347 () Bool)

(assert (=> b!1243922 m!1146347))

(declare-fun m!1146349 () Bool)

(assert (=> b!1243913 m!1146349))

(declare-fun m!1146351 () Bool)

(assert (=> b!1243913 m!1146351))

(declare-fun m!1146353 () Bool)

(assert (=> b!1243918 m!1146353))

(declare-fun m!1146355 () Bool)

(assert (=> b!1243919 m!1146355))

(declare-fun m!1146357 () Bool)

(assert (=> start!103960 m!1146357))

(declare-fun m!1146359 () Bool)

(assert (=> b!1243915 m!1146359))

(declare-fun m!1146361 () Bool)

(assert (=> b!1243923 m!1146361))

(declare-fun m!1146363 () Bool)

(assert (=> b!1243917 m!1146363))

(declare-fun m!1146365 () Bool)

(assert (=> b!1243916 m!1146365))

(assert (=> b!1243920 m!1146345))

(declare-fun m!1146367 () Bool)

(assert (=> b!1243921 m!1146367))

(push 1)

(assert (not b!1243922))

(assert (not start!103960))

