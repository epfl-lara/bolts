; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102858 () Bool)

(assert start!102858)

(declare-fun b!1235709 () Bool)

(declare-fun e!700585 () Bool)

(declare-fun e!700588 () Bool)

(assert (=> b!1235709 (= e!700585 e!700588)))

(declare-fun res!823899 () Bool)

(assert (=> b!1235709 (=> (not res!823899) (not e!700588))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79644 0))(
  ( (array!79645 (arr!38426 (Array (_ BitVec 32) (_ BitVec 64))) (size!38963 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79644)

(assert (=> b!1235709 (= res!823899 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38963 a!3835))))))

(declare-datatypes ((Unit!40910 0))(
  ( (Unit!40911) )
))
(declare-fun lt!560432 () Unit!40910)

(declare-fun e!700586 () Unit!40910)

(assert (=> b!1235709 (= lt!560432 e!700586)))

(declare-fun c!120770 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235709 (= c!120770 (validKeyInArray!0 (select (arr!38426 a!3835) from!3213)))))

(declare-fun b!1235710 () Bool)

(declare-fun res!823900 () Bool)

(assert (=> b!1235710 (=> (not res!823900) (not e!700585))))

(declare-datatypes ((List!27377 0))(
  ( (Nil!27374) (Cons!27373 (h!28582 (_ BitVec 64)) (t!40847 List!27377)) )
))
(declare-fun acc!846 () List!27377)

(declare-fun arrayNoDuplicates!0 (array!79644 (_ BitVec 32) List!27377) Bool)

(assert (=> b!1235710 (= res!823900 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235711 () Bool)

(declare-fun res!823896 () Bool)

(assert (=> b!1235711 (=> (not res!823896) (not e!700585))))

(declare-fun noDuplicate!1899 (List!27377) Bool)

(assert (=> b!1235711 (= res!823896 (noDuplicate!1899 acc!846))))

(declare-fun b!1235713 () Bool)

(declare-fun res!823901 () Bool)

(assert (=> b!1235713 (=> (not res!823901) (not e!700585))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7292 (List!27377 (_ BitVec 64)) Bool)

(assert (=> b!1235713 (= res!823901 (contains!7292 acc!846 k!2925))))

(declare-fun b!1235714 () Bool)

(declare-fun lt!560435 () Unit!40910)

(assert (=> b!1235714 (= e!700586 lt!560435)))

(declare-fun lt!560434 () List!27377)

(assert (=> b!1235714 (= lt!560434 (Cons!27373 (select (arr!38426 a!3835) from!3213) acc!846))))

(declare-fun lt!560437 () Unit!40910)

(declare-fun lemmaListSubSeqRefl!0 (List!27377) Unit!40910)

(assert (=> b!1235714 (= lt!560437 (lemmaListSubSeqRefl!0 lt!560434))))

(declare-fun subseq!547 (List!27377 List!27377) Bool)

(assert (=> b!1235714 (subseq!547 lt!560434 lt!560434)))

(declare-fun lt!560433 () Unit!40910)

(declare-fun subseqTail!40 (List!27377 List!27377) Unit!40910)

(assert (=> b!1235714 (= lt!560433 (subseqTail!40 lt!560434 lt!560434))))

(assert (=> b!1235714 (subseq!547 acc!846 lt!560434)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79644 List!27377 List!27377 (_ BitVec 32)) Unit!40910)

(assert (=> b!1235714 (= lt!560435 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560434 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235714 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235715 () Bool)

(assert (=> b!1235715 (= e!700588 false)))

(declare-fun lt!560436 () Bool)

(assert (=> b!1235715 (= lt!560436 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235716 () Bool)

(declare-fun res!823897 () Bool)

(assert (=> b!1235716 (=> (not res!823897) (not e!700585))))

(assert (=> b!1235716 (= res!823897 (not (= from!3213 (bvsub (size!38963 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235712 () Bool)

(declare-fun res!823895 () Bool)

(assert (=> b!1235712 (=> (not res!823895) (not e!700585))))

(assert (=> b!1235712 (= res!823895 (not (contains!7292 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!823898 () Bool)

(assert (=> start!102858 (=> (not res!823898) (not e!700585))))

(assert (=> start!102858 (= res!823898 (and (bvslt (size!38963 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38963 a!3835))))))

(assert (=> start!102858 e!700585))

(declare-fun array_inv!29202 (array!79644) Bool)

(assert (=> start!102858 (array_inv!29202 a!3835)))

(assert (=> start!102858 true))

(declare-fun b!1235717 () Bool)

(declare-fun Unit!40912 () Unit!40910)

(assert (=> b!1235717 (= e!700586 Unit!40912)))

(declare-fun b!1235718 () Bool)

(declare-fun res!823894 () Bool)

(assert (=> b!1235718 (=> (not res!823894) (not e!700585))))

(assert (=> b!1235718 (= res!823894 (not (contains!7292 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102858 res!823898) b!1235711))

(assert (= (and b!1235711 res!823896) b!1235712))

(assert (= (and b!1235712 res!823895) b!1235718))

(assert (= (and b!1235718 res!823894) b!1235710))

(assert (= (and b!1235710 res!823900) b!1235713))

(assert (= (and b!1235713 res!823901) b!1235716))

(assert (= (and b!1235716 res!823897) b!1235709))

(assert (= (and b!1235709 c!120770) b!1235714))

(assert (= (and b!1235709 (not c!120770)) b!1235717))

(assert (= (and b!1235709 res!823899) b!1235715))

(declare-fun m!1139623 () Bool)

(assert (=> b!1235712 m!1139623))

(declare-fun m!1139625 () Bool)

(assert (=> b!1235715 m!1139625))

(declare-fun m!1139627 () Bool)

(assert (=> start!102858 m!1139627))

(declare-fun m!1139629 () Bool)

(assert (=> b!1235718 m!1139629))

(declare-fun m!1139631 () Bool)

(assert (=> b!1235713 m!1139631))

(declare-fun m!1139633 () Bool)

(assert (=> b!1235711 m!1139633))

(declare-fun m!1139635 () Bool)

(assert (=> b!1235714 m!1139635))

(declare-fun m!1139637 () Bool)

(assert (=> b!1235714 m!1139637))

(declare-fun m!1139639 () Bool)

(assert (=> b!1235714 m!1139639))

(declare-fun m!1139641 () Bool)

(assert (=> b!1235714 m!1139641))

(declare-fun m!1139643 () Bool)

(assert (=> b!1235714 m!1139643))

(assert (=> b!1235714 m!1139625))

(declare-fun m!1139645 () Bool)

(assert (=> b!1235714 m!1139645))

(declare-fun m!1139647 () Bool)

(assert (=> b!1235710 m!1139647))

(assert (=> b!1235709 m!1139645))

(assert (=> b!1235709 m!1139645))

(declare-fun m!1139649 () Bool)

(assert (=> b!1235709 m!1139649))

(push 1)

(assert (not b!1235715))

(assert (not b!1235709))

