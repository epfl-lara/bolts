; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103154 () Bool)

(assert start!103154)

(declare-fun b!1238123 () Bool)

(declare-fun e!701742 () Bool)

(declare-fun e!701743 () Bool)

(assert (=> b!1238123 (= e!701742 (not e!701743))))

(declare-fun res!825973 () Bool)

(assert (=> b!1238123 (=> res!825973 e!701743)))

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1238123 (= res!825973 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27445 0))(
  ( (Nil!27442) (Cons!27441 (h!28650 (_ BitVec 64)) (t!40915 List!27445)) )
))
(declare-fun acc!846 () List!27445)

(declare-fun lt!561180 () List!27445)

(declare-fun subseq!597 (List!27445 List!27445) Bool)

(assert (=> b!1238123 (subseq!597 acc!846 lt!561180)))

(declare-datatypes ((Unit!41042 0))(
  ( (Unit!41043) )
))
(declare-fun lt!561181 () Unit!41042)

(declare-fun subseqTail!84 (List!27445 List!27445) Unit!41042)

(assert (=> b!1238123 (= lt!561181 (subseqTail!84 lt!561180 lt!561180))))

(assert (=> b!1238123 (subseq!597 lt!561180 lt!561180)))

(declare-fun lt!561178 () Unit!41042)

(declare-fun lemmaListSubSeqRefl!0 (List!27445) Unit!41042)

(assert (=> b!1238123 (= lt!561178 (lemmaListSubSeqRefl!0 lt!561180))))

(declare-datatypes ((array!79789 0))(
  ( (array!79790 (arr!38494 (Array (_ BitVec 32) (_ BitVec 64))) (size!39031 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79789)

(assert (=> b!1238123 (= lt!561180 (Cons!27441 (select (arr!38494 a!3835) from!3213) acc!846))))

(declare-fun b!1238124 () Bool)

(declare-fun res!825981 () Bool)

(assert (=> b!1238124 (=> (not res!825981) (not e!701742))))

(declare-fun arrayNoDuplicates!0 (array!79789 (_ BitVec 32) List!27445) Bool)

(assert (=> b!1238124 (= res!825981 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238125 () Bool)

(assert (=> b!1238125 (= e!701743 true)))

(declare-fun lt!561179 () Bool)

(declare-fun contains!7360 (List!27445 (_ BitVec 64)) Bool)

(assert (=> b!1238125 (= lt!561179 (contains!7360 lt!561180 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238126 () Bool)

(declare-fun res!825975 () Bool)

(assert (=> b!1238126 (=> (not res!825975) (not e!701742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238126 (= res!825975 (validKeyInArray!0 (select (arr!38494 a!3835) from!3213)))))

(declare-fun res!825979 () Bool)

(assert (=> start!103154 (=> (not res!825979) (not e!701742))))

(assert (=> start!103154 (= res!825979 (and (bvslt (size!39031 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39031 a!3835))))))

(assert (=> start!103154 e!701742))

(declare-fun array_inv!29270 (array!79789) Bool)

(assert (=> start!103154 (array_inv!29270 a!3835)))

(assert (=> start!103154 true))

(declare-fun b!1238127 () Bool)

(declare-fun res!825976 () Bool)

(assert (=> b!1238127 (=> (not res!825976) (not e!701742))))

(declare-fun noDuplicate!1967 (List!27445) Bool)

(assert (=> b!1238127 (= res!825976 (noDuplicate!1967 acc!846))))

(declare-fun b!1238128 () Bool)

(declare-fun res!825982 () Bool)

(assert (=> b!1238128 (=> res!825982 e!701743)))

(assert (=> b!1238128 (= res!825982 (contains!7360 lt!561180 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238129 () Bool)

(declare-fun res!825978 () Bool)

(assert (=> b!1238129 (=> (not res!825978) (not e!701742))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1238129 (= res!825978 (contains!7360 acc!846 k0!2925))))

(declare-fun b!1238130 () Bool)

(declare-fun res!825972 () Bool)

(assert (=> b!1238130 (=> (not res!825972) (not e!701742))))

(assert (=> b!1238130 (= res!825972 (not (= from!3213 (bvsub (size!39031 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238131 () Bool)

(declare-fun res!825974 () Bool)

(assert (=> b!1238131 (=> (not res!825974) (not e!701742))))

(assert (=> b!1238131 (= res!825974 (not (contains!7360 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238132 () Bool)

(declare-fun res!825980 () Bool)

(assert (=> b!1238132 (=> res!825980 e!701743)))

(assert (=> b!1238132 (= res!825980 (not (noDuplicate!1967 lt!561180)))))

(declare-fun b!1238133 () Bool)

(declare-fun res!825977 () Bool)

(assert (=> b!1238133 (=> (not res!825977) (not e!701742))))

(assert (=> b!1238133 (= res!825977 (not (contains!7360 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103154 res!825979) b!1238127))

(assert (= (and b!1238127 res!825976) b!1238131))

(assert (= (and b!1238131 res!825974) b!1238133))

(assert (= (and b!1238133 res!825977) b!1238124))

(assert (= (and b!1238124 res!825981) b!1238129))

(assert (= (and b!1238129 res!825978) b!1238130))

(assert (= (and b!1238130 res!825972) b!1238126))

(assert (= (and b!1238126 res!825975) b!1238123))

(assert (= (and b!1238123 (not res!825973)) b!1238132))

(assert (= (and b!1238132 (not res!825980)) b!1238128))

(assert (= (and b!1238128 (not res!825982)) b!1238125))

(declare-fun m!1141721 () Bool)

(assert (=> b!1238131 m!1141721))

(declare-fun m!1141723 () Bool)

(assert (=> b!1238126 m!1141723))

(assert (=> b!1238126 m!1141723))

(declare-fun m!1141725 () Bool)

(assert (=> b!1238126 m!1141725))

(declare-fun m!1141727 () Bool)

(assert (=> b!1238128 m!1141727))

(declare-fun m!1141729 () Bool)

(assert (=> b!1238133 m!1141729))

(declare-fun m!1141731 () Bool)

(assert (=> b!1238124 m!1141731))

(declare-fun m!1141733 () Bool)

(assert (=> start!103154 m!1141733))

(declare-fun m!1141735 () Bool)

(assert (=> b!1238129 m!1141735))

(declare-fun m!1141737 () Bool)

(assert (=> b!1238132 m!1141737))

(declare-fun m!1141739 () Bool)

(assert (=> b!1238125 m!1141739))

(declare-fun m!1141741 () Bool)

(assert (=> b!1238127 m!1141741))

(declare-fun m!1141743 () Bool)

(assert (=> b!1238123 m!1141743))

(declare-fun m!1141745 () Bool)

(assert (=> b!1238123 m!1141745))

(declare-fun m!1141747 () Bool)

(assert (=> b!1238123 m!1141747))

(declare-fun m!1141749 () Bool)

(assert (=> b!1238123 m!1141749))

(assert (=> b!1238123 m!1141723))

(check-sat (not b!1238124) (not b!1238127) (not b!1238125) (not start!103154) (not b!1238131) (not b!1238129) (not b!1238133) (not b!1238128) (not b!1238126) (not b!1238132) (not b!1238123))
(check-sat)
