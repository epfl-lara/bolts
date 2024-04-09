; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60446 () Bool)

(assert start!60446)

(declare-fun res!445431 () Bool)

(declare-fun e!386799 () Bool)

(assert (=> start!60446 (=> (not res!445431) (not e!386799))))

(declare-datatypes ((array!39416 0))(
  ( (array!39417 (arr!18895 (Array (_ BitVec 32) (_ BitVec 64))) (size!19259 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39416)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60446 (= res!445431 (and (bvslt (size!19259 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19259 a!3626))))))

(assert (=> start!60446 e!386799))

(assert (=> start!60446 true))

(declare-fun array_inv!14669 (array!39416) Bool)

(assert (=> start!60446 (array_inv!14669 a!3626)))

(declare-fun b!678862 () Bool)

(assert (=> b!678862 (= e!386799 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678862 (arrayContainsKey!0 (array!39417 (store (arr!18895 a!3626) i!1382 k0!2843) (size!19259 a!3626)) k0!2843 from!3004)))

(declare-fun b!678863 () Bool)

(declare-fun res!445424 () Bool)

(assert (=> b!678863 (=> (not res!445424) (not e!386799))))

(assert (=> b!678863 (= res!445424 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19259 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678864 () Bool)

(declare-fun res!445432 () Bool)

(assert (=> b!678864 (=> (not res!445432) (not e!386799))))

(assert (=> b!678864 (= res!445432 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678865 () Bool)

(declare-fun e!386800 () Bool)

(declare-fun e!386798 () Bool)

(assert (=> b!678865 (= e!386800 e!386798)))

(declare-fun res!445423 () Bool)

(assert (=> b!678865 (=> (not res!445423) (not e!386798))))

(assert (=> b!678865 (= res!445423 (bvsle from!3004 i!1382))))

(declare-fun b!678866 () Bool)

(declare-fun res!445425 () Bool)

(assert (=> b!678866 (=> (not res!445425) (not e!386799))))

(declare-datatypes ((List!12989 0))(
  ( (Nil!12986) (Cons!12985 (h!14030 (_ BitVec 64)) (t!19225 List!12989)) )
))
(declare-fun acc!681 () List!12989)

(declare-fun contains!3532 (List!12989 (_ BitVec 64)) Bool)

(assert (=> b!678866 (= res!445425 (not (contains!3532 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678867 () Bool)

(declare-fun res!445429 () Bool)

(assert (=> b!678867 (=> (not res!445429) (not e!386799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678867 (= res!445429 (validKeyInArray!0 k0!2843))))

(declare-fun b!678868 () Bool)

(declare-fun res!445422 () Bool)

(assert (=> b!678868 (=> (not res!445422) (not e!386799))))

(declare-fun arrayNoDuplicates!0 (array!39416 (_ BitVec 32) List!12989) Bool)

(assert (=> b!678868 (= res!445422 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12986))))

(declare-fun b!678869 () Bool)

(declare-fun res!445427 () Bool)

(assert (=> b!678869 (=> (not res!445427) (not e!386799))))

(assert (=> b!678869 (= res!445427 e!386800)))

(declare-fun res!445421 () Bool)

(assert (=> b!678869 (=> res!445421 e!386800)))

(declare-fun e!386796 () Bool)

(assert (=> b!678869 (= res!445421 e!386796)))

(declare-fun res!445428 () Bool)

(assert (=> b!678869 (=> (not res!445428) (not e!386796))))

(assert (=> b!678869 (= res!445428 (bvsgt from!3004 i!1382))))

(declare-fun b!678870 () Bool)

(assert (=> b!678870 (= e!386796 (contains!3532 acc!681 k0!2843))))

(declare-fun b!678871 () Bool)

(declare-fun res!445426 () Bool)

(assert (=> b!678871 (=> (not res!445426) (not e!386799))))

(assert (=> b!678871 (= res!445426 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678872 () Bool)

(assert (=> b!678872 (= e!386798 (not (contains!3532 acc!681 k0!2843)))))

(declare-fun b!678873 () Bool)

(declare-fun res!445430 () Bool)

(assert (=> b!678873 (=> (not res!445430) (not e!386799))))

(assert (=> b!678873 (= res!445430 (not (contains!3532 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678874 () Bool)

(declare-fun res!445420 () Bool)

(assert (=> b!678874 (=> (not res!445420) (not e!386799))))

(assert (=> b!678874 (= res!445420 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19259 a!3626))))))

(declare-fun b!678875 () Bool)

(declare-fun res!445433 () Bool)

(assert (=> b!678875 (=> (not res!445433) (not e!386799))))

(declare-fun noDuplicate!779 (List!12989) Bool)

(assert (=> b!678875 (= res!445433 (noDuplicate!779 acc!681))))

(assert (= (and start!60446 res!445431) b!678875))

(assert (= (and b!678875 res!445433) b!678866))

(assert (= (and b!678866 res!445425) b!678873))

(assert (= (and b!678873 res!445430) b!678869))

(assert (= (and b!678869 res!445428) b!678870))

(assert (= (and b!678869 (not res!445421)) b!678865))

(assert (= (and b!678865 res!445423) b!678872))

(assert (= (and b!678869 res!445427) b!678868))

(assert (= (and b!678868 res!445422) b!678871))

(assert (= (and b!678871 res!445426) b!678874))

(assert (= (and b!678874 res!445420) b!678867))

(assert (= (and b!678867 res!445429) b!678864))

(assert (= (and b!678864 res!445432) b!678863))

(assert (= (and b!678863 res!445424) b!678862))

(declare-fun m!644455 () Bool)

(assert (=> b!678875 m!644455))

(declare-fun m!644457 () Bool)

(assert (=> b!678862 m!644457))

(declare-fun m!644459 () Bool)

(assert (=> b!678862 m!644459))

(declare-fun m!644461 () Bool)

(assert (=> b!678871 m!644461))

(declare-fun m!644463 () Bool)

(assert (=> b!678864 m!644463))

(declare-fun m!644465 () Bool)

(assert (=> b!678868 m!644465))

(declare-fun m!644467 () Bool)

(assert (=> b!678867 m!644467))

(declare-fun m!644469 () Bool)

(assert (=> b!678873 m!644469))

(declare-fun m!644471 () Bool)

(assert (=> b!678866 m!644471))

(declare-fun m!644473 () Bool)

(assert (=> b!678872 m!644473))

(assert (=> b!678870 m!644473))

(declare-fun m!644475 () Bool)

(assert (=> start!60446 m!644475))

(check-sat (not start!60446) (not b!678870) (not b!678872) (not b!678864) (not b!678866) (not b!678871) (not b!678873) (not b!678867) (not b!678862) (not b!678875) (not b!678868))
