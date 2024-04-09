; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117442 () Bool)

(assert start!117442)

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93909 0))(
  ( (array!93910 (arr!45344 (Array (_ BitVec 32) (_ BitVec 64))) (size!45895 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93909)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117442 (and (bvslt (size!45895 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45895 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363) (or (bvsle to!159 from!3363) (bvsge knownPivot!5 to!159)))))

(assert (=> start!117442 true))

(declare-fun array_inv!34289 (array!93909) Bool)

(assert (=> start!117442 (array_inv!34289 a!3985)))

(declare-fun bs!39795 () Bool)

(assert (= bs!39795 start!117442))

(declare-fun m!1265153 () Bool)

(assert (=> bs!39795 m!1265153))

(check-sat (not start!117442))
(check-sat)
