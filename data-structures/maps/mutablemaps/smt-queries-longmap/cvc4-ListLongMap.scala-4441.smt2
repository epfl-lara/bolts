; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61768 () Bool)

(assert start!61768)

(declare-fun b!690623 () Bool)

(declare-fun res!455191 () Bool)

(declare-fun e!393200 () Bool)

(assert (=> b!690623 (=> (not res!455191) (not e!393200))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690623 (= res!455191 (validKeyInArray!0 k!2843))))

(declare-fun b!690624 () Bool)

(declare-fun res!455179 () Bool)

(assert (=> b!690624 (=> (not res!455179) (not e!393200))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39745 0))(
  ( (array!39746 (arr!19037 (Array (_ BitVec 32) (_ BitVec 64))) (size!19420 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39745)

(assert (=> b!690624 (= res!455179 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19420 a!3626))))))

(declare-fun b!690625 () Bool)

(assert (=> b!690625 (= e!393200 (not true))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690625 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!690626 () Bool)

(declare-fun res!455182 () Bool)

(assert (=> b!690626 (=> (not res!455182) (not e!393200))))

(assert (=> b!690626 (= res!455182 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!455190 () Bool)

(assert (=> start!61768 (=> (not res!455190) (not e!393200))))

(assert (=> start!61768 (= res!455190 (and (bvslt (size!19420 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19420 a!3626))))))

(assert (=> start!61768 e!393200))

(assert (=> start!61768 true))

(declare-fun array_inv!14811 (array!39745) Bool)

(assert (=> start!61768 (array_inv!14811 a!3626)))

(declare-fun b!690627 () Bool)

(declare-fun e!393202 () Bool)

(declare-datatypes ((List!13131 0))(
  ( (Nil!13128) (Cons!13127 (h!14172 (_ BitVec 64)) (t!19406 List!13131)) )
))
(declare-fun acc!681 () List!13131)

(declare-fun contains!3674 (List!13131 (_ BitVec 64)) Bool)

(assert (=> b!690627 (= e!393202 (not (contains!3674 acc!681 k!2843)))))

(declare-fun b!690628 () Bool)

(declare-fun res!455188 () Bool)

(assert (=> b!690628 (=> (not res!455188) (not e!393200))))

(declare-fun noDuplicate!921 (List!13131) Bool)

(assert (=> b!690628 (= res!455188 (noDuplicate!921 acc!681))))

(declare-fun b!690629 () Bool)

(declare-fun res!455177 () Bool)

(assert (=> b!690629 (=> (not res!455177) (not e!393200))))

(declare-fun e!393199 () Bool)

(assert (=> b!690629 (= res!455177 e!393199)))

(declare-fun res!455184 () Bool)

(assert (=> b!690629 (=> res!455184 e!393199)))

(declare-fun e!393198 () Bool)

(assert (=> b!690629 (= res!455184 e!393198)))

(declare-fun res!455189 () Bool)

(assert (=> b!690629 (=> (not res!455189) (not e!393198))))

(assert (=> b!690629 (= res!455189 (bvsgt from!3004 i!1382))))

(declare-fun b!690630 () Bool)

(declare-fun res!455181 () Bool)

(assert (=> b!690630 (=> (not res!455181) (not e!393200))))

(declare-fun arrayNoDuplicates!0 (array!39745 (_ BitVec 32) List!13131) Bool)

(assert (=> b!690630 (= res!455181 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13128))))

(declare-fun b!690631 () Bool)

(declare-fun res!455186 () Bool)

(assert (=> b!690631 (=> (not res!455186) (not e!393200))))

(assert (=> b!690631 (= res!455186 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19420 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690632 () Bool)

(declare-fun res!455180 () Bool)

(assert (=> b!690632 (=> (not res!455180) (not e!393200))))

(assert (=> b!690632 (= res!455180 (not (contains!3674 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690633 () Bool)

(declare-fun res!455187 () Bool)

(assert (=> b!690633 (=> (not res!455187) (not e!393200))))

(assert (=> b!690633 (= res!455187 (= (select (arr!19037 a!3626) from!3004) k!2843))))

(declare-fun b!690634 () Bool)

(declare-fun res!455178 () Bool)

(assert (=> b!690634 (=> (not res!455178) (not e!393200))))

(assert (=> b!690634 (= res!455178 (validKeyInArray!0 (select (arr!19037 a!3626) from!3004)))))

(declare-fun b!690635 () Bool)

(declare-fun res!455185 () Bool)

(assert (=> b!690635 (=> (not res!455185) (not e!393200))))

(assert (=> b!690635 (= res!455185 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690636 () Bool)

(assert (=> b!690636 (= e!393198 (contains!3674 acc!681 k!2843))))

(declare-fun b!690637 () Bool)

(assert (=> b!690637 (= e!393199 e!393202)))

(declare-fun res!455192 () Bool)

(assert (=> b!690637 (=> (not res!455192) (not e!393202))))

(assert (=> b!690637 (= res!455192 (bvsle from!3004 i!1382))))

(declare-fun b!690638 () Bool)

(declare-fun res!455183 () Bool)

(assert (=> b!690638 (=> (not res!455183) (not e!393200))))

(assert (=> b!690638 (= res!455183 (not (contains!3674 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61768 res!455190) b!690628))

(assert (= (and b!690628 res!455188) b!690638))

(assert (= (and b!690638 res!455183) b!690632))

(assert (= (and b!690632 res!455180) b!690629))

(assert (= (and b!690629 res!455189) b!690636))

(assert (= (and b!690629 (not res!455184)) b!690637))

(assert (= (and b!690637 res!455192) b!690627))

(assert (= (and b!690629 res!455177) b!690630))

(assert (= (and b!690630 res!455181) b!690635))

(assert (= (and b!690635 res!455185) b!690624))

(assert (= (and b!690624 res!455179) b!690623))

(assert (= (and b!690623 res!455191) b!690626))

(assert (= (and b!690626 res!455182) b!690631))

(assert (= (and b!690631 res!455186) b!690634))

(assert (= (and b!690634 res!455178) b!690633))

(assert (= (and b!690633 res!455187) b!690625))

(declare-fun m!654015 () Bool)

(assert (=> b!690628 m!654015))

(declare-fun m!654017 () Bool)

(assert (=> b!690625 m!654017))

(declare-fun m!654019 () Bool)

(assert (=> b!690635 m!654019))

(declare-fun m!654021 () Bool)

(assert (=> b!690623 m!654021))

(declare-fun m!654023 () Bool)

(assert (=> b!690632 m!654023))

(declare-fun m!654025 () Bool)

(assert (=> b!690638 m!654025))

(declare-fun m!654027 () Bool)

(assert (=> b!690630 m!654027))

(declare-fun m!654029 () Bool)

(assert (=> b!690634 m!654029))

(assert (=> b!690634 m!654029))

(declare-fun m!654031 () Bool)

(assert (=> b!690634 m!654031))

(declare-fun m!654033 () Bool)

(assert (=> b!690626 m!654033))

(declare-fun m!654035 () Bool)

(assert (=> b!690627 m!654035))

(assert (=> b!690633 m!654029))

(assert (=> b!690636 m!654035))

(declare-fun m!654037 () Bool)

(assert (=> start!61768 m!654037))

(push 1)

(assert (not b!690623))

(assert (not b!690636))

(assert (not b!690628))

(assert (not b!690638))

(assert (not b!690634))

(assert (not b!690627))

(assert (not b!690626))

(assert (not start!61768))

(assert (not b!690632))

(assert (not b!690635))

(assert (not b!690625))

(assert (not b!690630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

