; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135418 () Bool)

(assert start!135418)

(declare-fun b!1573714 () Bool)

(declare-fun e!877619 () Bool)

(declare-fun e!877620 () Bool)

(assert (=> b!1573714 (= e!877619 e!877620)))

(declare-fun res!1075193 () Bool)

(assert (=> b!1573714 (=> (not res!1075193) (not e!877620))))

(declare-fun lt!674545 () Bool)

(declare-datatypes ((SeekEntryResult!13635 0))(
  ( (MissingZero!13635 (index!56937 (_ BitVec 32))) (Found!13635 (index!56938 (_ BitVec 32))) (Intermediate!13635 (undefined!14447 Bool) (index!56939 (_ BitVec 32)) (x!141757 (_ BitVec 32))) (Undefined!13635) (MissingVacant!13635 (index!56940 (_ BitVec 32))) )
))
(declare-fun lt!674544 () SeekEntryResult!13635)

(assert (=> b!1573714 (= res!1075193 (and (or lt!674545 (not (undefined!14447 lt!674544))) (or lt!674545 (undefined!14447 lt!674544))))))

(assert (=> b!1573714 (= lt!674545 (not (is-Intermediate!13635 lt!674544)))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105116 0))(
  ( (array!105117 (arr!50706 (Array (_ BitVec 32) (_ BitVec 64))) (size!51257 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105116)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105116 (_ BitVec 32)) SeekEntryResult!13635)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573714 (= lt!674544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573712 () Bool)

(declare-fun res!1075194 () Bool)

(assert (=> b!1573712 (=> (not res!1075194) (not e!877619))))

(assert (=> b!1573712 (= res!1075194 (= (size!51257 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573715 () Bool)

(declare-fun lt!674543 () SeekEntryResult!13635)

(assert (=> b!1573715 (= e!877620 (or (is-MissingVacant!13635 lt!674543) (and (is-Found!13635 lt!674543) (not (= (select (arr!50706 _keys!600) (index!56938 lt!674543)) k!754)))))))

(declare-fun err!170 () SeekEntryResult!13635)

(assert (=> b!1573715 (= lt!674543 err!170)))

(assert (=> b!1573715 true))

(declare-fun res!1075196 () Bool)

(assert (=> start!135418 (=> (not res!1075196) (not e!877619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135418 (= res!1075196 (validMask!0 mask!889))))

(assert (=> start!135418 e!877619))

(assert (=> start!135418 true))

(declare-fun array_inv!39351 (array!105116) Bool)

(assert (=> start!135418 (array_inv!39351 _keys!600)))

(declare-fun b!1573713 () Bool)

(declare-fun res!1075195 () Bool)

(assert (=> b!1573713 (=> (not res!1075195) (not e!877619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573713 (= res!1075195 (validKeyInArray!0 k!754))))

(assert (= (and start!135418 res!1075196) b!1573712))

(assert (= (and b!1573712 res!1075194) b!1573713))

(assert (= (and b!1573713 res!1075195) b!1573714))

(assert (= (and b!1573714 res!1075193) b!1573715))

(declare-fun m!1446991 () Bool)

(assert (=> b!1573714 m!1446991))

(assert (=> b!1573714 m!1446991))

(declare-fun m!1446993 () Bool)

(assert (=> b!1573714 m!1446993))

(declare-fun m!1446995 () Bool)

(assert (=> b!1573715 m!1446995))

(declare-fun m!1446997 () Bool)

(assert (=> start!135418 m!1446997))

(declare-fun m!1446999 () Bool)

(assert (=> start!135418 m!1446999))

(declare-fun m!1447001 () Bool)

(assert (=> b!1573713 m!1447001))

(push 1)

(assert (not start!135418))

(assert (not b!1573713))

(assert (not b!1573714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165023 () Bool)

(assert (=> d!165023 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135418 d!165023))

(declare-fun d!165031 () Bool)

(assert (=> d!165031 (= (array_inv!39351 _keys!600) (bvsge (size!51257 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135418 d!165031))

(declare-fun d!165035 () Bool)

(assert (=> d!165035 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573713 d!165035))

(declare-fun b!1573788 () Bool)

(declare-fun lt!674575 () SeekEntryResult!13635)

(assert (=> b!1573788 (and (bvsge (index!56939 lt!674575) #b00000000000000000000000000000000) (bvslt (index!56939 lt!674575) (size!51257 _keys!600)))))

(declare-fun e!877663 () Bool)

(assert (=> b!1573788 (= e!877663 (= (select (arr!50706 _keys!600) (index!56939 lt!674575)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877664 () SeekEntryResult!13635)

(declare-fun b!1573789 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573789 (= e!877664 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573790 () Bool)

(assert (=> b!1573790 (and (bvsge (index!56939 lt!674575) #b00000000000000000000000000000000) (bvslt (index!56939 lt!674575) (size!51257 _keys!600)))))

(declare-fun res!1075225 () Bool)

(assert (=> b!1573790 (= res!1075225 (= (select (arr!50706 _keys!600) (index!56939 lt!674575)) k!754))))

(assert (=> b!1573790 (=> res!1075225 e!877663)))

(declare-fun e!877665 () Bool)

(assert (=> b!1573790 (= e!877665 e!877663)))

(declare-fun b!1573791 () Bool)

(declare-fun e!877662 () Bool)

(assert (=> b!1573791 (= e!877662 (bvsge (x!141757 lt!674575) #b01111111111111111111111111111110))))

(declare-fun b!1573793 () Bool)

(assert (=> b!1573793 (= e!877664 (Intermediate!13635 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573794 () Bool)

(assert (=> b!1573794 (and (bvsge (index!56939 lt!674575) #b00000000000000000000000000000000) (bvslt (index!56939 lt!674575) (size!51257 _keys!600)))))

(declare-fun res!1075224 () Bool)

(assert (=> b!1573794 (= res!1075224 (= (select (arr!50706 _keys!600) (index!56939 lt!674575)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573794 (=> res!1075224 e!877663)))

(declare-fun b!1573792 () Bool)

(declare-fun e!877661 () SeekEntryResult!13635)

(assert (=> b!1573792 (= e!877661 (Intermediate!13635 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun d!165037 () Bool)

(assert (=> d!165037 e!877662))

(declare-fun c!145544 () Bool)

(assert (=> d!165037 (= c!145544 (and (is-Intermediate!13635 lt!674575) (undefined!14447 lt!674575)))))

(assert (=> d!165037 (= lt!674575 e!877661)))

(declare-fun c!145543 () Bool)

(assert (=> d!165037 (= c!145543 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674574 () (_ BitVec 64))

