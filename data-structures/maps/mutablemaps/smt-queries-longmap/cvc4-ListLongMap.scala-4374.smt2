; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60292 () Bool)

(assert start!60292)

(declare-fun b!675895 () Bool)

(declare-fun e!385542 () Bool)

(declare-fun e!385536 () Bool)

(assert (=> b!675895 (= e!385542 e!385536)))

(declare-fun res!442509 () Bool)

(assert (=> b!675895 (=> (not res!442509) (not e!385536))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675895 (= res!442509 (bvsle from!3004 i!1382))))

(declare-fun b!675896 () Bool)

(declare-fun res!442514 () Bool)

(declare-fun e!385541 () Bool)

(assert (=> b!675896 (=> (not res!442514) (not e!385541))))

(declare-datatypes ((List!12930 0))(
  ( (Nil!12927) (Cons!12926 (h!13971 (_ BitVec 64)) (t!19166 List!12930)) )
))
(declare-fun acc!681 () List!12930)

(declare-fun contains!3473 (List!12930 (_ BitVec 64)) Bool)

(assert (=> b!675896 (= res!442514 (not (contains!3473 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675897 () Bool)

(declare-fun res!442500 () Bool)

(assert (=> b!675897 (=> (not res!442500) (not e!385541))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675897 (= res!442500 (validKeyInArray!0 k!2843))))

(declare-fun b!675898 () Bool)

(declare-fun e!385543 () Bool)

(assert (=> b!675898 (= e!385543 (contains!3473 acc!681 k!2843))))

(declare-fun b!675899 () Bool)

(declare-fun res!442508 () Bool)

(assert (=> b!675899 (=> (not res!442508) (not e!385541))))

(declare-datatypes ((array!39295 0))(
  ( (array!39296 (arr!18836 (Array (_ BitVec 32) (_ BitVec 64))) (size!19200 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39295)

(assert (=> b!675899 (= res!442508 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19200 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675900 () Bool)

(declare-fun res!442512 () Bool)

(assert (=> b!675900 (=> (not res!442512) (not e!385541))))

(declare-fun arrayContainsKey!0 (array!39295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675900 (= res!442512 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675901 () Bool)

(declare-fun res!442504 () Bool)

(assert (=> b!675901 (=> (not res!442504) (not e!385541))))

(assert (=> b!675901 (= res!442504 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675902 () Bool)

(declare-fun res!442498 () Bool)

(assert (=> b!675902 (=> (not res!442498) (not e!385541))))

(assert (=> b!675902 (= res!442498 e!385542)))

(declare-fun res!442503 () Bool)

(assert (=> b!675902 (=> res!442503 e!385542)))

(declare-fun e!385540 () Bool)

(assert (=> b!675902 (= res!442503 e!385540)))

(declare-fun res!442507 () Bool)

(assert (=> b!675902 (=> (not res!442507) (not e!385540))))

(assert (=> b!675902 (= res!442507 (bvsgt from!3004 i!1382))))

(declare-fun res!442499 () Bool)

(assert (=> start!60292 (=> (not res!442499) (not e!385541))))

(assert (=> start!60292 (= res!442499 (and (bvslt (size!19200 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19200 a!3626))))))

(assert (=> start!60292 e!385541))

(assert (=> start!60292 true))

(declare-fun array_inv!14610 (array!39295) Bool)

(assert (=> start!60292 (array_inv!14610 a!3626)))

(declare-fun b!675903 () Bool)

(declare-fun res!442495 () Bool)

(assert (=> b!675903 (=> (not res!442495) (not e!385541))))

(assert (=> b!675903 (= res!442495 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19200 a!3626))))))

(declare-fun b!675904 () Bool)

(assert (=> b!675904 (= e!385536 (not (contains!3473 acc!681 k!2843)))))

(declare-fun b!675905 () Bool)

(declare-fun res!442511 () Bool)

(assert (=> b!675905 (=> (not res!442511) (not e!385541))))

(declare-fun arrayNoDuplicates!0 (array!39295 (_ BitVec 32) List!12930) Bool)

(assert (=> b!675905 (= res!442511 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675906 () Bool)

(declare-fun res!442497 () Bool)

(assert (=> b!675906 (=> (not res!442497) (not e!385541))))

(declare-fun noDuplicate!720 (List!12930) Bool)

(assert (=> b!675906 (= res!442497 (noDuplicate!720 acc!681))))

(declare-fun b!675907 () Bool)

(declare-fun res!442506 () Bool)

(assert (=> b!675907 (=> (not res!442506) (not e!385541))))

(assert (=> b!675907 (= res!442506 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12927))))

(declare-fun b!675908 () Bool)

(declare-fun res!442513 () Bool)

(assert (=> b!675908 (=> (not res!442513) (not e!385541))))

(assert (=> b!675908 (= res!442513 (not (contains!3473 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675909 () Bool)

(declare-fun e!385538 () Bool)

(assert (=> b!675909 (= e!385538 (not (contains!3473 acc!681 k!2843)))))

(declare-fun b!675910 () Bool)

(assert (=> b!675910 (= e!385540 (contains!3473 acc!681 k!2843))))

(declare-fun b!675911 () Bool)

(declare-fun res!442510 () Bool)

(assert (=> b!675911 (=> (not res!442510) (not e!385541))))

(declare-fun e!385537 () Bool)

(assert (=> b!675911 (= res!442510 e!385537)))

(declare-fun res!442502 () Bool)

(assert (=> b!675911 (=> res!442502 e!385537)))

(assert (=> b!675911 (= res!442502 e!385543)))

(declare-fun res!442505 () Bool)

(assert (=> b!675911 (=> (not res!442505) (not e!385543))))

(assert (=> b!675911 (= res!442505 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675912 () Bool)

(declare-fun res!442501 () Bool)

(assert (=> b!675912 (=> (not res!442501) (not e!385541))))

(assert (=> b!675912 (= res!442501 (not (validKeyInArray!0 (select (arr!18836 a!3626) from!3004))))))

(declare-fun b!675913 () Bool)

(assert (=> b!675913 (= e!385537 e!385538)))

(declare-fun res!442496 () Bool)

(assert (=> b!675913 (=> (not res!442496) (not e!385538))))

(assert (=> b!675913 (= res!442496 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675914 () Bool)

(assert (=> b!675914 (= e!385541 false)))

(declare-fun lt!312699 () Bool)

(assert (=> b!675914 (= lt!312699 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (= (and start!60292 res!442499) b!675906))

(assert (= (and b!675906 res!442497) b!675896))

(assert (= (and b!675896 res!442514) b!675908))

(assert (= (and b!675908 res!442513) b!675902))

(assert (= (and b!675902 res!442507) b!675910))

(assert (= (and b!675902 (not res!442503)) b!675895))

(assert (= (and b!675895 res!442509) b!675904))

(assert (= (and b!675902 res!442498) b!675907))

(assert (= (and b!675907 res!442506) b!675905))

(assert (= (and b!675905 res!442511) b!675903))

(assert (= (and b!675903 res!442495) b!675897))

(assert (= (and b!675897 res!442500) b!675900))

(assert (= (and b!675900 res!442512) b!675899))

(assert (= (and b!675899 res!442508) b!675912))

(assert (= (and b!675912 res!442501) b!675901))

(assert (= (and b!675901 res!442504) b!675911))

(assert (= (and b!675911 res!442505) b!675898))

(assert (= (and b!675911 (not res!442502)) b!675913))

(assert (= (and b!675913 res!442496) b!675909))

(assert (= (and b!675911 res!442510) b!675914))

(declare-fun m!643017 () Bool)

(assert (=> b!675896 m!643017))

(declare-fun m!643019 () Bool)

(assert (=> b!675898 m!643019))

(declare-fun m!643021 () Bool)

(assert (=> start!60292 m!643021))

(declare-fun m!643023 () Bool)

(assert (=> b!675906 m!643023))

(declare-fun m!643025 () Bool)

(assert (=> b!675914 m!643025))

(declare-fun m!643027 () Bool)

(assert (=> b!675912 m!643027))

(assert (=> b!675912 m!643027))

(declare-fun m!643029 () Bool)

(assert (=> b!675912 m!643029))

(declare-fun m!643031 () Bool)

(assert (=> b!675908 m!643031))

(assert (=> b!675909 m!643019))

(declare-fun m!643033 () Bool)

(assert (=> b!675905 m!643033))

(declare-fun m!643035 () Bool)

(assert (=> b!675897 m!643035))

(assert (=> b!675904 m!643019))

(declare-fun m!643037 () Bool)

(assert (=> b!675907 m!643037))

(declare-fun m!643039 () Bool)

(assert (=> b!675900 m!643039))

(assert (=> b!675910 m!643019))

(push 1)

(assert (not b!675904))

(assert (not b!675905))

(assert (not b!675909))

(assert (not b!675898))

(assert (not b!675912))

(assert (not b!675908))

(assert (not b!675906))

(assert (not b!675907))

(assert (not b!675914))

(assert (not b!675896))

(assert (not b!675910))

(assert (not start!60292))

(assert (not b!675900))

