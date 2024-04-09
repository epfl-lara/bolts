; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39610 () Bool)

(assert start!39610)

(declare-fun b_free!9869 () Bool)

(declare-fun b_next!9869 () Bool)

(assert (=> start!39610 (= b_free!9869 (not b_next!9869))))

(declare-fun tp!35136 () Bool)

(declare-fun b_and!17543 () Bool)

(assert (=> start!39610 (= tp!35136 b_and!17543)))

(declare-fun b!424104 () Bool)

(declare-fun e!251974 () Bool)

(declare-fun tp_is_empty!11021 () Bool)

(assert (=> b!424104 (= e!251974 tp_is_empty!11021)))

(declare-fun b!424105 () Bool)

(declare-fun e!251977 () Bool)

(declare-fun e!251975 () Bool)

(assert (=> b!424105 (= e!251977 e!251975)))

(declare-fun res!248128 () Bool)

(assert (=> b!424105 (=> (not res!248128) (not e!251975))))

(declare-datatypes ((array!25869 0))(
  ( (array!25870 (arr!12381 (Array (_ BitVec 32) (_ BitVec 64))) (size!12733 (_ BitVec 32))) )
))
(declare-fun lt!194304 () array!25869)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25869 (_ BitVec 32)) Bool)

(assert (=> b!424105 (= res!248128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194304 mask!1025))))

(declare-fun _keys!709 () array!25869)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424105 (= lt!194304 (array!25870 (store (arr!12381 _keys!709) i!563 k!794) (size!12733 _keys!709)))))

(declare-fun res!248122 () Bool)

(assert (=> start!39610 (=> (not res!248122) (not e!251977))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39610 (= res!248122 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12733 _keys!709))))))

(assert (=> start!39610 e!251977))

(assert (=> start!39610 tp_is_empty!11021))

(assert (=> start!39610 tp!35136))

(assert (=> start!39610 true))

(declare-datatypes ((V!15799 0))(
  ( (V!15800 (val!5555 Int)) )
))
(declare-datatypes ((ValueCell!5167 0))(
  ( (ValueCellFull!5167 (v!7798 V!15799)) (EmptyCell!5167) )
))
(declare-datatypes ((array!25871 0))(
  ( (array!25872 (arr!12382 (Array (_ BitVec 32) ValueCell!5167)) (size!12734 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25871)

(declare-fun e!251972 () Bool)

(declare-fun array_inv!9026 (array!25871) Bool)

(assert (=> start!39610 (and (array_inv!9026 _values!549) e!251972)))

(declare-fun array_inv!9027 (array!25869) Bool)

(assert (=> start!39610 (array_inv!9027 _keys!709)))

(declare-fun b!424106 () Bool)

(declare-fun res!248121 () Bool)

(assert (=> b!424106 (=> (not res!248121) (not e!251975))))

(assert (=> b!424106 (= res!248121 (bvsle from!863 i!563))))

(declare-fun b!424107 () Bool)

(declare-fun res!248130 () Bool)

(assert (=> b!424107 (=> (not res!248130) (not e!251977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424107 (= res!248130 (validKeyInArray!0 k!794))))

(declare-fun b!424108 () Bool)

(declare-fun res!248129 () Bool)

(assert (=> b!424108 (=> (not res!248129) (not e!251977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424108 (= res!248129 (validMask!0 mask!1025))))

(declare-fun b!424109 () Bool)

(declare-fun mapRes!18153 () Bool)

(assert (=> b!424109 (= e!251972 (and e!251974 mapRes!18153))))

(declare-fun condMapEmpty!18153 () Bool)

(declare-fun mapDefault!18153 () ValueCell!5167)

