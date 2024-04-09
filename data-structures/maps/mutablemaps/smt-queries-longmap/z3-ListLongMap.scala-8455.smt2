; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102904 () Bool)

(assert start!102904)

(declare-fun b!1236311 () Bool)

(declare-fun res!824404 () Bool)

(declare-fun e!700816 () Bool)

(assert (=> b!1236311 (=> (not res!824404) (not e!700816))))

(declare-datatypes ((array!79690 0))(
  ( (array!79691 (arr!38449 (Array (_ BitVec 32) (_ BitVec 64))) (size!38986 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79690)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((List!27400 0))(
  ( (Nil!27397) (Cons!27396 (h!28605 (_ BitVec 64)) (t!40870 List!27400)) )
))
(declare-fun acc!846 () List!27400)

(declare-fun arrayNoDuplicates!0 (array!79690 (_ BitVec 32) List!27400) Bool)

(assert (=> b!1236311 (= res!824404 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236313 () Bool)

(declare-fun res!824407 () Bool)

(assert (=> b!1236313 (=> (not res!824407) (not e!700816))))

(declare-fun contains!7315 (List!27400 (_ BitVec 64)) Bool)

(assert (=> b!1236313 (= res!824407 (not (contains!7315 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236314 () Bool)

(declare-fun res!824408 () Bool)

(assert (=> b!1236314 (=> (not res!824408) (not e!700816))))

(declare-fun noDuplicate!1922 (List!27400) Bool)

(assert (=> b!1236314 (= res!824408 (noDuplicate!1922 acc!846))))

(declare-fun b!1236315 () Bool)

(assert (=> b!1236315 (= e!700816 false)))

(declare-fun lt!560731 () Bool)

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1236315 (= lt!560731 (contains!7315 acc!846 k0!2925))))

(declare-fun b!1236312 () Bool)

(declare-fun res!824405 () Bool)

(assert (=> b!1236312 (=> (not res!824405) (not e!700816))))

(assert (=> b!1236312 (= res!824405 (not (contains!7315 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824406 () Bool)

(assert (=> start!102904 (=> (not res!824406) (not e!700816))))

(assert (=> start!102904 (= res!824406 (and (bvslt (size!38986 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38986 a!3835))))))

(assert (=> start!102904 e!700816))

(declare-fun array_inv!29225 (array!79690) Bool)

(assert (=> start!102904 (array_inv!29225 a!3835)))

(assert (=> start!102904 true))

(assert (= (and start!102904 res!824406) b!1236314))

(assert (= (and b!1236314 res!824408) b!1236313))

(assert (= (and b!1236313 res!824407) b!1236312))

(assert (= (and b!1236312 res!824405) b!1236311))

(assert (= (and b!1236311 res!824404) b!1236315))

(declare-fun m!1140191 () Bool)

(assert (=> start!102904 m!1140191))

(declare-fun m!1140193 () Bool)

(assert (=> b!1236311 m!1140193))

(declare-fun m!1140195 () Bool)

(assert (=> b!1236315 m!1140195))

(declare-fun m!1140197 () Bool)

(assert (=> b!1236313 m!1140197))

(declare-fun m!1140199 () Bool)

(assert (=> b!1236314 m!1140199))

(declare-fun m!1140201 () Bool)

(assert (=> b!1236312 m!1140201))

(check-sat (not b!1236312) (not b!1236315) (not b!1236311) (not b!1236313) (not b!1236314) (not start!102904))
(check-sat)
