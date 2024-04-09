; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103954 () Bool)

(assert start!103954)

(declare-fun b!1243814 () Bool)

(declare-fun res!829723 () Bool)

(declare-fun e!705038 () Bool)

(assert (=> b!1243814 (=> (not res!829723) (not e!705038))))

(declare-datatypes ((List!27566 0))(
  ( (Nil!27563) (Cons!27562 (h!28771 (_ BitVec 64)) (t!41042 List!27566)) )
))
(declare-fun contains!7438 (List!27566 (_ BitVec 64)) Bool)

(assert (=> b!1243814 (= res!829723 (not (contains!7438 Nil!27563 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243815 () Bool)

(declare-fun res!829716 () Bool)

(assert (=> b!1243815 (=> (not res!829716) (not e!705038))))

(declare-fun lt!562455 () List!27566)

(assert (=> b!1243815 (= res!829716 (not (contains!7438 lt!562455 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243816 () Bool)

(declare-fun res!829720 () Bool)

(declare-fun e!705037 () Bool)

(assert (=> b!1243816 (=> (not res!829720) (not e!705037))))

(declare-datatypes ((array!79992 0))(
  ( (array!79993 (arr!38585 (Array (_ BitVec 32) (_ BitVec 64))) (size!39122 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79992)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79992 (_ BitVec 32) List!27566) Bool)

(assert (=> b!1243816 (= res!829720 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27563))))

(declare-fun res!829717 () Bool)

(assert (=> start!103954 (=> (not res!829717) (not e!705037))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103954 (= res!829717 (and (bvslt (size!39122 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39122 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39122 a!3892))))))

(assert (=> start!103954 e!705037))

(declare-fun array_inv!29361 (array!79992) Bool)

(assert (=> start!103954 (array_inv!29361 a!3892)))

(assert (=> start!103954 true))

(declare-fun b!1243817 () Bool)

(assert (=> b!1243817 (= e!705037 e!705038)))

(declare-fun res!829725 () Bool)

(assert (=> b!1243817 (=> (not res!829725) (not e!705038))))

(assert (=> b!1243817 (= res!829725 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243817 (= lt!562455 (Cons!27562 (select (arr!38585 a!3892) from!3270) Nil!27563))))

(declare-fun b!1243818 () Bool)

(declare-fun res!829722 () Bool)

(assert (=> b!1243818 (=> (not res!829722) (not e!705038))))

(assert (=> b!1243818 (= res!829722 (not (contains!7438 Nil!27563 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243819 () Bool)

(assert (=> b!1243819 (= e!705038 false)))

(declare-fun lt!562454 () Bool)

(assert (=> b!1243819 (= lt!562454 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562455))))

(declare-datatypes ((Unit!41249 0))(
  ( (Unit!41250) )
))
(declare-fun lt!562456 () Unit!41249)

(declare-fun noDuplicateSubseq!103 (List!27566 List!27566) Unit!41249)

(assert (=> b!1243819 (= lt!562456 (noDuplicateSubseq!103 Nil!27563 lt!562455))))

(declare-fun b!1243820 () Bool)

(declare-fun res!829719 () Bool)

(assert (=> b!1243820 (=> (not res!829719) (not e!705038))))

(assert (=> b!1243820 (= res!829719 (not (contains!7438 lt!562455 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243821 () Bool)

(declare-fun res!829721 () Bool)

(assert (=> b!1243821 (=> (not res!829721) (not e!705037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243821 (= res!829721 (validKeyInArray!0 (select (arr!38585 a!3892) from!3270)))))

(declare-fun b!1243822 () Bool)

(declare-fun res!829726 () Bool)

(assert (=> b!1243822 (=> (not res!829726) (not e!705037))))

(assert (=> b!1243822 (= res!829726 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39122 a!3892)) (not (= newFrom!287 (size!39122 a!3892)))))))

(declare-fun b!1243823 () Bool)

(declare-fun res!829724 () Bool)

(assert (=> b!1243823 (=> (not res!829724) (not e!705038))))

(declare-fun subseq!649 (List!27566 List!27566) Bool)

(assert (=> b!1243823 (= res!829724 (subseq!649 Nil!27563 lt!562455))))

(declare-fun b!1243824 () Bool)

(declare-fun res!829718 () Bool)

(assert (=> b!1243824 (=> (not res!829718) (not e!705038))))

(declare-fun noDuplicate!2028 (List!27566) Bool)

(assert (=> b!1243824 (= res!829718 (noDuplicate!2028 lt!562455))))

(assert (= (and start!103954 res!829717) b!1243816))

(assert (= (and b!1243816 res!829720) b!1243822))

(assert (= (and b!1243822 res!829726) b!1243821))

(assert (= (and b!1243821 res!829721) b!1243817))

(assert (= (and b!1243817 res!829725) b!1243824))

(assert (= (and b!1243824 res!829718) b!1243820))

(assert (= (and b!1243820 res!829719) b!1243815))

(assert (= (and b!1243815 res!829716) b!1243814))

(assert (= (and b!1243814 res!829723) b!1243818))

(assert (= (and b!1243818 res!829722) b!1243823))

(assert (= (and b!1243823 res!829724) b!1243819))

(declare-fun m!1146273 () Bool)

(assert (=> b!1243821 m!1146273))

(assert (=> b!1243821 m!1146273))

(declare-fun m!1146275 () Bool)

(assert (=> b!1243821 m!1146275))

(declare-fun m!1146277 () Bool)

(assert (=> b!1243818 m!1146277))

(declare-fun m!1146279 () Bool)

(assert (=> b!1243816 m!1146279))

(declare-fun m!1146281 () Bool)

(assert (=> b!1243824 m!1146281))

(declare-fun m!1146283 () Bool)

(assert (=> b!1243820 m!1146283))

(declare-fun m!1146285 () Bool)

(assert (=> b!1243819 m!1146285))

(declare-fun m!1146287 () Bool)

(assert (=> b!1243819 m!1146287))

(declare-fun m!1146289 () Bool)

(assert (=> b!1243814 m!1146289))

(declare-fun m!1146291 () Bool)

(assert (=> start!103954 m!1146291))

(declare-fun m!1146293 () Bool)

(assert (=> b!1243823 m!1146293))

(assert (=> b!1243817 m!1146273))

(declare-fun m!1146295 () Bool)

(assert (=> b!1243815 m!1146295))

(push 1)

(assert (not b!1243814))

(assert (not b!1243820))

(assert (not b!1243819))

(assert (not start!103954))

