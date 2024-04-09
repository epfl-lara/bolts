; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60250 () Bool)

(assert start!60250)

(declare-fun b!674565 () Bool)

(declare-fun res!441201 () Bool)

(declare-fun e!385004 () Bool)

(assert (=> b!674565 (=> (not res!441201) (not e!385004))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674565 (= res!441201 (validKeyInArray!0 k!2843))))

(declare-fun b!674566 () Bool)

(declare-fun res!441198 () Bool)

(assert (=> b!674566 (=> (not res!441198) (not e!385004))))

(declare-datatypes ((array!39253 0))(
  ( (array!39254 (arr!18815 (Array (_ BitVec 32) (_ BitVec 64))) (size!19179 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39253)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!674566 (= res!441198 (validKeyInArray!0 (select (arr!18815 a!3626) from!3004)))))

(declare-fun b!674568 () Bool)

(declare-fun res!441195 () Bool)

(assert (=> b!674568 (=> (not res!441195) (not e!385004))))

(declare-datatypes ((List!12909 0))(
  ( (Nil!12906) (Cons!12905 (h!13950 (_ BitVec 64)) (t!19145 List!12909)) )
))
(declare-fun acc!681 () List!12909)

(declare-fun noDuplicate!699 (List!12909) Bool)

(assert (=> b!674568 (= res!441195 (noDuplicate!699 acc!681))))

(declare-fun b!674569 () Bool)

(declare-fun res!441204 () Bool)

(assert (=> b!674569 (=> (not res!441204) (not e!385004))))

(declare-fun arrayNoDuplicates!0 (array!39253 (_ BitVec 32) List!12909) Bool)

(assert (=> b!674569 (= res!441204 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12906))))

(declare-fun b!674570 () Bool)

(declare-fun e!385008 () Bool)

(declare-fun e!385005 () Bool)

(assert (=> b!674570 (= e!385008 e!385005)))

(declare-fun res!441189 () Bool)

(assert (=> b!674570 (=> (not res!441189) (not e!385005))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674570 (= res!441189 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674571 () Bool)

(declare-fun e!385011 () Bool)

(declare-fun lt!312606 () List!12909)

(declare-fun contains!3452 (List!12909 (_ BitVec 64)) Bool)

(assert (=> b!674571 (= e!385011 (contains!3452 lt!312606 k!2843))))

(declare-fun b!674572 () Bool)

(declare-fun res!441207 () Bool)

(assert (=> b!674572 (=> (not res!441207) (not e!385004))))

(assert (=> b!674572 (= res!441207 (not (contains!3452 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674573 () Bool)

(declare-fun res!441202 () Bool)

(declare-fun e!385003 () Bool)

(assert (=> b!674573 (=> (not res!441202) (not e!385003))))

(assert (=> b!674573 (= res!441202 e!385008)))

(declare-fun res!441206 () Bool)

(assert (=> b!674573 (=> res!441206 e!385008)))

(assert (=> b!674573 (= res!441206 e!385011)))

(declare-fun res!441200 () Bool)

(assert (=> b!674573 (=> (not res!441200) (not e!385011))))

(assert (=> b!674573 (= res!441200 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674574 () Bool)

(declare-fun e!385012 () Bool)

(assert (=> b!674574 (= e!385004 e!385012)))

(declare-fun res!441196 () Bool)

(assert (=> b!674574 (=> (not res!441196) (not e!385012))))

(assert (=> b!674574 (= res!441196 (not (= (select (arr!18815 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23724 0))(
  ( (Unit!23725) )
))
(declare-fun lt!312608 () Unit!23724)

(declare-fun e!385006 () Unit!23724)

(assert (=> b!674574 (= lt!312608 e!385006)))

(declare-fun c!77057 () Bool)

(assert (=> b!674574 (= c!77057 (= (select (arr!18815 a!3626) from!3004) k!2843))))

(declare-fun b!674575 () Bool)

(declare-fun Unit!23726 () Unit!23724)

(assert (=> b!674575 (= e!385006 Unit!23726)))

(declare-fun arrayContainsKey!0 (array!39253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674575 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312609 () Unit!23724)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39253 (_ BitVec 64) (_ BitVec 32)) Unit!23724)

(assert (=> b!674575 (= lt!312609 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!674575 false))

(declare-fun b!674576 () Bool)

(declare-fun e!385010 () Bool)

(assert (=> b!674576 (= e!385010 (not (contains!3452 acc!681 k!2843)))))

(declare-fun b!674577 () Bool)

(declare-fun res!441208 () Bool)

(assert (=> b!674577 (=> (not res!441208) (not e!385004))))

(assert (=> b!674577 (= res!441208 (not (contains!3452 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674578 () Bool)

(assert (=> b!674578 (= e!385003 (not true))))

(assert (=> b!674578 (arrayNoDuplicates!0 (array!39254 (store (arr!18815 a!3626) i!1382 k!2843) (size!19179 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312606)))

(declare-fun lt!312607 () Unit!23724)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39253 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12909) Unit!23724)

(assert (=> b!674578 (= lt!312607 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312606))))

(declare-fun b!674579 () Bool)

(assert (=> b!674579 (= e!385005 (not (contains!3452 lt!312606 k!2843)))))

(declare-fun b!674580 () Bool)

(declare-fun res!441203 () Bool)

(assert (=> b!674580 (=> (not res!441203) (not e!385003))))

(assert (=> b!674580 (= res!441203 (noDuplicate!699 lt!312606))))

(declare-fun b!674581 () Bool)

(declare-fun res!441188 () Bool)

(assert (=> b!674581 (=> (not res!441188) (not e!385004))))

(assert (=> b!674581 (= res!441188 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19179 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674582 () Bool)

(declare-fun res!441193 () Bool)

(assert (=> b!674582 (=> (not res!441193) (not e!385004))))

(assert (=> b!674582 (= res!441193 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674583 () Bool)

(declare-fun res!441185 () Bool)

(assert (=> b!674583 (=> (not res!441185) (not e!385003))))

(assert (=> b!674583 (= res!441185 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312606))))

(declare-fun b!674584 () Bool)

(declare-fun res!441186 () Bool)

(assert (=> b!674584 (=> (not res!441186) (not e!385003))))

(assert (=> b!674584 (= res!441186 (not (contains!3452 lt!312606 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!441205 () Bool)

(assert (=> start!60250 (=> (not res!441205) (not e!385004))))

(assert (=> start!60250 (= res!441205 (and (bvslt (size!19179 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19179 a!3626))))))

(assert (=> start!60250 e!385004))

(assert (=> start!60250 true))

(declare-fun array_inv!14589 (array!39253) Bool)

(assert (=> start!60250 (array_inv!14589 a!3626)))

(declare-fun b!674567 () Bool)

(declare-fun e!385002 () Bool)

(assert (=> b!674567 (= e!385002 (contains!3452 acc!681 k!2843))))

(declare-fun b!674585 () Bool)

(declare-fun e!385007 () Bool)

(assert (=> b!674585 (= e!385007 e!385010)))

(declare-fun res!441194 () Bool)

(assert (=> b!674585 (=> (not res!441194) (not e!385010))))

(assert (=> b!674585 (= res!441194 (bvsle from!3004 i!1382))))

(declare-fun b!674586 () Bool)

(declare-fun res!441187 () Bool)

(assert (=> b!674586 (=> (not res!441187) (not e!385003))))

(assert (=> b!674586 (= res!441187 (not (contains!3452 lt!312606 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674587 () Bool)

(declare-fun Unit!23727 () Unit!23724)

(assert (=> b!674587 (= e!385006 Unit!23727)))

(declare-fun b!674588 () Bool)

(declare-fun res!441192 () Bool)

(assert (=> b!674588 (=> (not res!441192) (not e!385004))))

(assert (=> b!674588 (= res!441192 e!385007)))

(declare-fun res!441209 () Bool)

(assert (=> b!674588 (=> res!441209 e!385007)))

(assert (=> b!674588 (= res!441209 e!385002)))

(declare-fun res!441190 () Bool)

(assert (=> b!674588 (=> (not res!441190) (not e!385002))))

(assert (=> b!674588 (= res!441190 (bvsgt from!3004 i!1382))))

(declare-fun b!674589 () Bool)

(declare-fun res!441199 () Bool)

(assert (=> b!674589 (=> (not res!441199) (not e!385004))))

(assert (=> b!674589 (= res!441199 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19179 a!3626))))))

(declare-fun b!674590 () Bool)

(declare-fun res!441197 () Bool)

(assert (=> b!674590 (=> (not res!441197) (not e!385004))))

(assert (=> b!674590 (= res!441197 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674591 () Bool)

(assert (=> b!674591 (= e!385012 e!385003)))

(declare-fun res!441191 () Bool)

(assert (=> b!674591 (=> (not res!441191) (not e!385003))))

(assert (=> b!674591 (= res!441191 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!300 (List!12909 (_ BitVec 64)) List!12909)

(assert (=> b!674591 (= lt!312606 ($colon$colon!300 acc!681 (select (arr!18815 a!3626) from!3004)))))

(assert (= (and start!60250 res!441205) b!674568))

(assert (= (and b!674568 res!441195) b!674577))

(assert (= (and b!674577 res!441208) b!674572))

(assert (= (and b!674572 res!441207) b!674588))

(assert (= (and b!674588 res!441190) b!674567))

(assert (= (and b!674588 (not res!441209)) b!674585))

(assert (= (and b!674585 res!441194) b!674576))

(assert (= (and b!674588 res!441192) b!674569))

(assert (= (and b!674569 res!441204) b!674590))

(assert (= (and b!674590 res!441197) b!674589))

(assert (= (and b!674589 res!441199) b!674565))

(assert (= (and b!674565 res!441201) b!674582))

(assert (= (and b!674582 res!441193) b!674581))

(assert (= (and b!674581 res!441188) b!674566))

(assert (= (and b!674566 res!441198) b!674574))

(assert (= (and b!674574 c!77057) b!674575))

(assert (= (and b!674574 (not c!77057)) b!674587))

(assert (= (and b!674574 res!441196) b!674591))

(assert (= (and b!674591 res!441191) b!674580))

(assert (= (and b!674580 res!441203) b!674584))

(assert (= (and b!674584 res!441186) b!674586))

(assert (= (and b!674586 res!441187) b!674573))

(assert (= (and b!674573 res!441200) b!674571))

(assert (= (and b!674573 (not res!441206)) b!674570))

(assert (= (and b!674570 res!441189) b!674579))

(assert (= (and b!674573 res!441202) b!674583))

(assert (= (and b!674583 res!441185) b!674578))

(declare-fun m!642433 () Bool)

(assert (=> b!674574 m!642433))

(declare-fun m!642435 () Bool)

(assert (=> b!674582 m!642435))

(declare-fun m!642437 () Bool)

(assert (=> b!674568 m!642437))

(assert (=> b!674591 m!642433))

(assert (=> b!674591 m!642433))

(declare-fun m!642439 () Bool)

(assert (=> b!674591 m!642439))

(declare-fun m!642441 () Bool)

(assert (=> b!674572 m!642441))

(declare-fun m!642443 () Bool)

(assert (=> b!674583 m!642443))

(declare-fun m!642445 () Bool)

(assert (=> b!674576 m!642445))

(declare-fun m!642447 () Bool)

(assert (=> b!674579 m!642447))

(assert (=> b!674571 m!642447))

(declare-fun m!642449 () Bool)

(assert (=> b!674575 m!642449))

(declare-fun m!642451 () Bool)

(assert (=> b!674575 m!642451))

(declare-fun m!642453 () Bool)

(assert (=> b!674565 m!642453))

(declare-fun m!642455 () Bool)

(assert (=> b!674577 m!642455))

(declare-fun m!642457 () Bool)

(assert (=> b!674580 m!642457))

(declare-fun m!642459 () Bool)

(assert (=> b!674578 m!642459))

(declare-fun m!642461 () Bool)

(assert (=> b!674578 m!642461))

(declare-fun m!642463 () Bool)

(assert (=> b!674578 m!642463))

(declare-fun m!642465 () Bool)

(assert (=> b!674569 m!642465))

(assert (=> b!674566 m!642433))

(assert (=> b!674566 m!642433))

(declare-fun m!642467 () Bool)

(assert (=> b!674566 m!642467))

(assert (=> b!674567 m!642445))

(declare-fun m!642469 () Bool)

(assert (=> b!674584 m!642469))

(declare-fun m!642471 () Bool)

(assert (=> start!60250 m!642471))

(declare-fun m!642473 () Bool)

(assert (=> b!674586 m!642473))

(declare-fun m!642475 () Bool)

(assert (=> b!674590 m!642475))

(push 1)

