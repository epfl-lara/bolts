; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61780 () Bool)

(assert start!61780)

(declare-fun b!690911 () Bool)

(declare-fun res!455466 () Bool)

(declare-fun e!393288 () Bool)

(assert (=> b!690911 (=> (not res!455466) (not e!393288))))

(declare-fun e!393292 () Bool)

(assert (=> b!690911 (= res!455466 e!393292)))

(declare-fun res!455480 () Bool)

(assert (=> b!690911 (=> res!455480 e!393292)))

(declare-fun e!393289 () Bool)

(assert (=> b!690911 (= res!455480 e!393289)))

(declare-fun res!455472 () Bool)

(assert (=> b!690911 (=> (not res!455472) (not e!393289))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690911 (= res!455472 (bvsgt from!3004 i!1382))))

(declare-fun b!690912 () Bool)

(declare-fun res!455475 () Bool)

(assert (=> b!690912 (=> (not res!455475) (not e!393288))))

(declare-datatypes ((array!39757 0))(
  ( (array!39758 (arr!19043 (Array (_ BitVec 32) (_ BitVec 64))) (size!19426 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39757)

(declare-datatypes ((List!13137 0))(
  ( (Nil!13134) (Cons!13133 (h!14178 (_ BitVec 64)) (t!19412 List!13137)) )
))
(declare-fun arrayNoDuplicates!0 (array!39757 (_ BitVec 32) List!13137) Bool)

(assert (=> b!690912 (= res!455475 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13134))))

(declare-fun b!690913 () Bool)

(declare-fun res!455479 () Bool)

(assert (=> b!690913 (=> (not res!455479) (not e!393288))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690913 (= res!455479 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690914 () Bool)

(assert (=> b!690914 (= e!393288 (not true))))

(assert (=> b!690914 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!690915 () Bool)

(declare-fun res!455476 () Bool)

(assert (=> b!690915 (=> (not res!455476) (not e!393288))))

(declare-fun acc!681 () List!13137)

(declare-fun contains!3680 (List!13137 (_ BitVec 64)) Bool)

(assert (=> b!690915 (= res!455476 (not (contains!3680 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690917 () Bool)

(assert (=> b!690917 (= e!393289 (contains!3680 acc!681 k!2843))))

(declare-fun b!690918 () Bool)

(declare-fun res!455477 () Bool)

(assert (=> b!690918 (=> (not res!455477) (not e!393288))))

(assert (=> b!690918 (= res!455477 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19426 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690919 () Bool)

(declare-fun e!393291 () Bool)

(assert (=> b!690919 (= e!393292 e!393291)))

(declare-fun res!455471 () Bool)

(assert (=> b!690919 (=> (not res!455471) (not e!393291))))

(assert (=> b!690919 (= res!455471 (bvsle from!3004 i!1382))))

(declare-fun b!690920 () Bool)

(declare-fun res!455467 () Bool)

(assert (=> b!690920 (=> (not res!455467) (not e!393288))))

(declare-fun noDuplicate!927 (List!13137) Bool)

(assert (=> b!690920 (= res!455467 (noDuplicate!927 acc!681))))

(declare-fun b!690921 () Bool)

(assert (=> b!690921 (= e!393291 (not (contains!3680 acc!681 k!2843)))))

(declare-fun b!690922 () Bool)

(declare-fun res!455465 () Bool)

(assert (=> b!690922 (=> (not res!455465) (not e!393288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690922 (= res!455465 (validKeyInArray!0 (select (arr!19043 a!3626) from!3004)))))

(declare-fun b!690923 () Bool)

(declare-fun res!455468 () Bool)

(assert (=> b!690923 (=> (not res!455468) (not e!393288))))

(assert (=> b!690923 (= res!455468 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19426 a!3626))))))

(declare-fun b!690924 () Bool)

(declare-fun res!455470 () Bool)

(assert (=> b!690924 (=> (not res!455470) (not e!393288))))

(assert (=> b!690924 (= res!455470 (= (select (arr!19043 a!3626) from!3004) k!2843))))

(declare-fun res!455473 () Bool)

(assert (=> start!61780 (=> (not res!455473) (not e!393288))))

(assert (=> start!61780 (= res!455473 (and (bvslt (size!19426 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19426 a!3626))))))

(assert (=> start!61780 e!393288))

(assert (=> start!61780 true))

(declare-fun array_inv!14817 (array!39757) Bool)

(assert (=> start!61780 (array_inv!14817 a!3626)))

(declare-fun b!690916 () Bool)

(declare-fun res!455478 () Bool)

(assert (=> b!690916 (=> (not res!455478) (not e!393288))))

(assert (=> b!690916 (= res!455478 (not (contains!3680 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690925 () Bool)

(declare-fun res!455474 () Bool)

(assert (=> b!690925 (=> (not res!455474) (not e!393288))))

(assert (=> b!690925 (= res!455474 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690926 () Bool)

(declare-fun res!455469 () Bool)

(assert (=> b!690926 (=> (not res!455469) (not e!393288))))

(assert (=> b!690926 (= res!455469 (validKeyInArray!0 k!2843))))

(assert (= (and start!61780 res!455473) b!690920))

(assert (= (and b!690920 res!455467) b!690916))

(assert (= (and b!690916 res!455478) b!690915))

(assert (= (and b!690915 res!455476) b!690911))

(assert (= (and b!690911 res!455472) b!690917))

(assert (= (and b!690911 (not res!455480)) b!690919))

(assert (= (and b!690919 res!455471) b!690921))

(assert (= (and b!690911 res!455466) b!690912))

(assert (= (and b!690912 res!455475) b!690925))

(assert (= (and b!690925 res!455474) b!690923))

(assert (= (and b!690923 res!455468) b!690926))

(assert (= (and b!690926 res!455469) b!690913))

(assert (= (and b!690913 res!455479) b!690918))

(assert (= (and b!690918 res!455477) b!690922))

(assert (= (and b!690922 res!455465) b!690924))

(assert (= (and b!690924 res!455470) b!690914))

(declare-fun m!654159 () Bool)

(assert (=> b!690915 m!654159))

(declare-fun m!654161 () Bool)

(assert (=> b!690912 m!654161))

(declare-fun m!654163 () Bool)

(assert (=> b!690920 m!654163))

(declare-fun m!654165 () Bool)

(assert (=> b!690924 m!654165))

(declare-fun m!654167 () Bool)

(assert (=> b!690917 m!654167))

(assert (=> b!690921 m!654167))

(declare-fun m!654169 () Bool)

(assert (=> b!690914 m!654169))

(declare-fun m!654171 () Bool)

(assert (=> b!690926 m!654171))

(declare-fun m!654173 () Bool)

(assert (=> start!61780 m!654173))

(declare-fun m!654175 () Bool)

(assert (=> b!690925 m!654175))

(declare-fun m!654177 () Bool)

(assert (=> b!690916 m!654177))

(assert (=> b!690922 m!654165))

(assert (=> b!690922 m!654165))

(declare-fun m!654179 () Bool)

(assert (=> b!690922 m!654179))

(declare-fun m!654181 () Bool)

(assert (=> b!690913 m!654181))

(push 1)

(assert (not b!690913))

(assert (not b!690914))

(assert (not b!690925))

(assert (not b!690917))

(assert (not b!690926))

(assert (not b!690916))

(assert (not b!690920))

(assert (not b!690915))

(assert (not start!61780))

(assert (not b!690921))

(assert (not b!690922))

(assert (not b!690912))

(check-sat)

