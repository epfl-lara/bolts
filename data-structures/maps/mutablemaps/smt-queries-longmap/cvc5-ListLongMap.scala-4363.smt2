; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60222 () Bool)

(assert start!60222)

(declare-fun b!673447 () Bool)

(declare-fun res!440170 () Bool)

(declare-fun e!384548 () Bool)

(assert (=> b!673447 (=> (not res!440170) (not e!384548))))

(declare-fun e!384540 () Bool)

(assert (=> b!673447 (= res!440170 e!384540)))

(declare-fun res!440156 () Bool)

(assert (=> b!673447 (=> res!440156 e!384540)))

(declare-fun e!384549 () Bool)

(assert (=> b!673447 (= res!440156 e!384549)))

(declare-fun res!440159 () Bool)

(assert (=> b!673447 (=> (not res!440159) (not e!384549))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673447 (= res!440159 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673448 () Bool)

(declare-fun e!384546 () Bool)

(assert (=> b!673448 (= e!384546 e!384548)))

(declare-fun res!440153 () Bool)

(assert (=> b!673448 (=> (not res!440153) (not e!384548))))

(assert (=> b!673448 (= res!440153 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12895 0))(
  ( (Nil!12892) (Cons!12891 (h!13936 (_ BitVec 64)) (t!19131 List!12895)) )
))
(declare-fun lt!312438 () List!12895)

(declare-datatypes ((array!39225 0))(
  ( (array!39226 (arr!18801 (Array (_ BitVec 32) (_ BitVec 64))) (size!19165 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39225)

(declare-fun acc!681 () List!12895)

(declare-fun $colon$colon!286 (List!12895 (_ BitVec 64)) List!12895)

(assert (=> b!673448 (= lt!312438 ($colon$colon!286 acc!681 (select (arr!18801 a!3626) from!3004)))))

(declare-fun b!673449 () Bool)

(declare-fun e!384545 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3438 (List!12895 (_ BitVec 64)) Bool)

(assert (=> b!673449 (= e!384545 (not (contains!3438 lt!312438 k!2843)))))

(declare-fun b!673450 () Bool)

(declare-fun res!440157 () Bool)

(assert (=> b!673450 (=> (not res!440157) (not e!384548))))

(assert (=> b!673450 (= res!440157 (not (contains!3438 lt!312438 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673452 () Bool)

(assert (=> b!673452 (= e!384549 (contains!3438 lt!312438 k!2843))))

(declare-fun b!673453 () Bool)

(declare-fun res!440165 () Bool)

(declare-fun e!384547 () Bool)

(assert (=> b!673453 (=> (not res!440165) (not e!384547))))

(declare-fun e!384543 () Bool)

(assert (=> b!673453 (= res!440165 e!384543)))

(declare-fun res!440160 () Bool)

(assert (=> b!673453 (=> res!440160 e!384543)))

(declare-fun e!384550 () Bool)

(assert (=> b!673453 (= res!440160 e!384550)))

(declare-fun res!440151 () Bool)

(assert (=> b!673453 (=> (not res!440151) (not e!384550))))

(assert (=> b!673453 (= res!440151 (bvsgt from!3004 i!1382))))

(declare-fun b!673454 () Bool)

(declare-fun res!440171 () Bool)

(assert (=> b!673454 (=> (not res!440171) (not e!384547))))

(assert (=> b!673454 (= res!440171 (not (contains!3438 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673455 () Bool)

(declare-fun res!440155 () Bool)

(assert (=> b!673455 (=> (not res!440155) (not e!384547))))

(declare-fun noDuplicate!685 (List!12895) Bool)

(assert (=> b!673455 (= res!440155 (noDuplicate!685 acc!681))))

(declare-fun b!673456 () Bool)

(declare-fun res!440158 () Bool)

(assert (=> b!673456 (=> (not res!440158) (not e!384547))))

(assert (=> b!673456 (= res!440158 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19165 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673457 () Bool)

(declare-fun res!440172 () Bool)

(assert (=> b!673457 (=> (not res!440172) (not e!384547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673457 (= res!440172 (validKeyInArray!0 (select (arr!18801 a!3626) from!3004)))))

(declare-fun b!673458 () Bool)

(declare-fun e!384544 () Bool)

(assert (=> b!673458 (= e!384543 e!384544)))

(declare-fun res!440152 () Bool)

(assert (=> b!673458 (=> (not res!440152) (not e!384544))))

(assert (=> b!673458 (= res!440152 (bvsle from!3004 i!1382))))

(declare-fun b!673459 () Bool)

(assert (=> b!673459 (= e!384548 false)))

(declare-fun lt!312441 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39225 (_ BitVec 32) List!12895) Bool)

(assert (=> b!673459 (= lt!312441 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312438))))

(declare-fun b!673460 () Bool)

(declare-datatypes ((Unit!23668 0))(
  ( (Unit!23669) )
))
(declare-fun e!384542 () Unit!23668)

(declare-fun Unit!23670 () Unit!23668)

(assert (=> b!673460 (= e!384542 Unit!23670)))

(declare-fun b!673461 () Bool)

(declare-fun res!440169 () Bool)

(assert (=> b!673461 (=> (not res!440169) (not e!384547))))

(assert (=> b!673461 (= res!440169 (not (contains!3438 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!440163 () Bool)

(assert (=> start!60222 (=> (not res!440163) (not e!384547))))

(assert (=> start!60222 (= res!440163 (and (bvslt (size!19165 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19165 a!3626))))))

(assert (=> start!60222 e!384547))

(assert (=> start!60222 true))

(declare-fun array_inv!14575 (array!39225) Bool)

(assert (=> start!60222 (array_inv!14575 a!3626)))

(declare-fun b!673451 () Bool)

(assert (=> b!673451 (= e!384547 e!384546)))

(declare-fun res!440174 () Bool)

(assert (=> b!673451 (=> (not res!440174) (not e!384546))))

(assert (=> b!673451 (= res!440174 (not (= (select (arr!18801 a!3626) from!3004) k!2843)))))

(declare-fun lt!312440 () Unit!23668)

(assert (=> b!673451 (= lt!312440 e!384542)))

(declare-fun c!77015 () Bool)

(assert (=> b!673451 (= c!77015 (= (select (arr!18801 a!3626) from!3004) k!2843))))

(declare-fun b!673462 () Bool)

(declare-fun res!440168 () Bool)

(assert (=> b!673462 (=> (not res!440168) (not e!384547))))

(declare-fun arrayContainsKey!0 (array!39225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673462 (= res!440168 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673463 () Bool)

(declare-fun res!440166 () Bool)

(assert (=> b!673463 (=> (not res!440166) (not e!384548))))

(assert (=> b!673463 (= res!440166 (not (contains!3438 lt!312438 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673464 () Bool)

(declare-fun Unit!23671 () Unit!23668)

(assert (=> b!673464 (= e!384542 Unit!23671)))

(assert (=> b!673464 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312439 () Unit!23668)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39225 (_ BitVec 64) (_ BitVec 32)) Unit!23668)

(assert (=> b!673464 (= lt!312439 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!673464 false))

(declare-fun b!673465 () Bool)

(declare-fun res!440164 () Bool)

(assert (=> b!673465 (=> (not res!440164) (not e!384547))))

(assert (=> b!673465 (= res!440164 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12892))))

(declare-fun b!673466 () Bool)

(assert (=> b!673466 (= e!384550 (contains!3438 acc!681 k!2843))))

(declare-fun b!673467 () Bool)

(assert (=> b!673467 (= e!384544 (not (contains!3438 acc!681 k!2843)))))

(declare-fun b!673468 () Bool)

(declare-fun res!440173 () Bool)

(assert (=> b!673468 (=> (not res!440173) (not e!384548))))

(assert (=> b!673468 (= res!440173 (noDuplicate!685 lt!312438))))

(declare-fun b!673469 () Bool)

(assert (=> b!673469 (= e!384540 e!384545)))

(declare-fun res!440154 () Bool)

(assert (=> b!673469 (=> (not res!440154) (not e!384545))))

(assert (=> b!673469 (= res!440154 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673470 () Bool)

(declare-fun res!440167 () Bool)

(assert (=> b!673470 (=> (not res!440167) (not e!384547))))

(assert (=> b!673470 (= res!440167 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19165 a!3626))))))

(declare-fun b!673471 () Bool)

(declare-fun res!440161 () Bool)

(assert (=> b!673471 (=> (not res!440161) (not e!384547))))

(assert (=> b!673471 (= res!440161 (validKeyInArray!0 k!2843))))

(declare-fun b!673472 () Bool)

(declare-fun res!440162 () Bool)

(assert (=> b!673472 (=> (not res!440162) (not e!384547))))

(assert (=> b!673472 (= res!440162 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60222 res!440163) b!673455))

(assert (= (and b!673455 res!440155) b!673461))

(assert (= (and b!673461 res!440169) b!673454))

(assert (= (and b!673454 res!440171) b!673453))

(assert (= (and b!673453 res!440151) b!673466))

(assert (= (and b!673453 (not res!440160)) b!673458))

(assert (= (and b!673458 res!440152) b!673467))

(assert (= (and b!673453 res!440165) b!673465))

(assert (= (and b!673465 res!440164) b!673472))

(assert (= (and b!673472 res!440162) b!673470))

(assert (= (and b!673470 res!440167) b!673471))

(assert (= (and b!673471 res!440161) b!673462))

(assert (= (and b!673462 res!440168) b!673456))

(assert (= (and b!673456 res!440158) b!673457))

(assert (= (and b!673457 res!440172) b!673451))

(assert (= (and b!673451 c!77015) b!673464))

(assert (= (and b!673451 (not c!77015)) b!673460))

(assert (= (and b!673451 res!440174) b!673448))

(assert (= (and b!673448 res!440153) b!673468))

(assert (= (and b!673468 res!440173) b!673450))

(assert (= (and b!673450 res!440157) b!673463))

(assert (= (and b!673463 res!440166) b!673447))

(assert (= (and b!673447 res!440159) b!673452))

(assert (= (and b!673447 (not res!440156)) b!673469))

(assert (= (and b!673469 res!440154) b!673449))

(assert (= (and b!673447 res!440170) b!673459))

(declare-fun m!641853 () Bool)

(assert (=> b!673459 m!641853))

(declare-fun m!641855 () Bool)

(assert (=> b!673472 m!641855))

(declare-fun m!641857 () Bool)

(assert (=> b!673466 m!641857))

(declare-fun m!641859 () Bool)

(assert (=> b!673449 m!641859))

(declare-fun m!641861 () Bool)

(assert (=> b!673455 m!641861))

(declare-fun m!641863 () Bool)

(assert (=> b!673465 m!641863))

(declare-fun m!641865 () Bool)

(assert (=> b!673457 m!641865))

(assert (=> b!673457 m!641865))

(declare-fun m!641867 () Bool)

(assert (=> b!673457 m!641867))

(declare-fun m!641869 () Bool)

(assert (=> b!673461 m!641869))

(declare-fun m!641871 () Bool)

(assert (=> b!673464 m!641871))

(declare-fun m!641873 () Bool)

(assert (=> b!673464 m!641873))

(declare-fun m!641875 () Bool)

(assert (=> b!673450 m!641875))

(assert (=> b!673467 m!641857))

(assert (=> b!673448 m!641865))

(assert (=> b!673448 m!641865))

(declare-fun m!641877 () Bool)

(assert (=> b!673448 m!641877))

(declare-fun m!641879 () Bool)

(assert (=> b!673468 m!641879))

(declare-fun m!641881 () Bool)

(assert (=> start!60222 m!641881))

(assert (=> b!673452 m!641859))

(declare-fun m!641883 () Bool)

(assert (=> b!673471 m!641883))

(declare-fun m!641885 () Bool)

(assert (=> b!673454 m!641885))

(declare-fun m!641887 () Bool)

(assert (=> b!673462 m!641887))

(assert (=> b!673451 m!641865))

(declare-fun m!641889 () Bool)

(assert (=> b!673463 m!641889))

(push 1)

