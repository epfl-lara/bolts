; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74964 () Bool)

(assert start!74964)

(declare-fun b_free!15455 () Bool)

(declare-fun b_next!15455 () Bool)

(assert (=> start!74964 (= b_free!15455 (not b_next!15455))))

(declare-fun tp!54068 () Bool)

(declare-fun b_and!25627 () Bool)

(assert (=> start!74964 (= tp!54068 b_and!25627)))

(declare-fun b!883734 () Bool)

(declare-fun res!600492 () Bool)

(declare-fun e!491841 () Bool)

(assert (=> b!883734 (=> (not res!600492) (not e!491841))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51508 0))(
  ( (array!51509 (arr!24769 (Array (_ BitVec 32) (_ BitVec 64))) (size!25210 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51508)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883734 (= res!600492 (and (= (select (arr!24769 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883735 () Bool)

(declare-datatypes ((Unit!30144 0))(
  ( (Unit!30145) )
))
(declare-fun e!491842 () Unit!30144)

(declare-fun Unit!30146 () Unit!30144)

(assert (=> b!883735 (= e!491842 Unit!30146)))

(declare-fun lt!400111 () Unit!30144)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51508 (_ BitVec 32) (_ BitVec 32)) Unit!30144)

(assert (=> b!883735 (= lt!400111 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17688 0))(
  ( (Nil!17685) (Cons!17684 (h!18815 (_ BitVec 64)) (t!24953 List!17688)) )
))
(declare-fun arrayNoDuplicates!0 (array!51508 (_ BitVec 32) List!17688) Bool)

(assert (=> b!883735 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17685)))

(declare-fun lt!400110 () Unit!30144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30144)

(assert (=> b!883735 (= lt!400110 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883735 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!400101 () Unit!30144)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51508 (_ BitVec 64) (_ BitVec 32) List!17688) Unit!30144)

(assert (=> b!883735 (= lt!400101 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17685))))

(assert (=> b!883735 false))

(declare-fun b!883736 () Bool)

(declare-fun e!491846 () Bool)

(declare-fun e!491844 () Bool)

(declare-fun mapRes!28185 () Bool)

(assert (=> b!883736 (= e!491846 (and e!491844 mapRes!28185))))

(declare-fun condMapEmpty!28185 () Bool)

(declare-datatypes ((V!28645 0))(
  ( (V!28646 (val!8897 Int)) )
))
(declare-datatypes ((ValueCell!8410 0))(
  ( (ValueCellFull!8410 (v!11362 V!28645)) (EmptyCell!8410) )
))
(declare-datatypes ((array!51510 0))(
  ( (array!51511 (arr!24770 (Array (_ BitVec 32) ValueCell!8410)) (size!25211 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51510)

(declare-fun mapDefault!28185 () ValueCell!8410)

