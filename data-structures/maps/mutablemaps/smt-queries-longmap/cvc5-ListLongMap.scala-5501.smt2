; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72818 () Bool)

(assert start!72818)

(declare-fun b!844610 () Bool)

(declare-fun e!471493 () Bool)

(assert (=> b!844610 (= e!471493 false)))

(declare-fun lt!381273 () Bool)

(declare-datatypes ((array!47896 0))(
  ( (array!47897 (arr!22975 (Array (_ BitVec 32) (_ BitVec 64))) (size!23416 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47896)

(declare-datatypes ((List!16350 0))(
  ( (Nil!16347) (Cons!16346 (h!17477 (_ BitVec 64)) (t!22729 List!16350)) )
))
(declare-fun arrayNoDuplicates!0 (array!47896 (_ BitVec 32) List!16350) Bool)

(assert (=> b!844610 (= lt!381273 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16347))))

(declare-fun mapNonEmpty!25361 () Bool)

(declare-fun mapRes!25361 () Bool)

(declare-fun tp!48680 () Bool)

(declare-fun e!471495 () Bool)

(assert (=> mapNonEmpty!25361 (= mapRes!25361 (and tp!48680 e!471495))))

(declare-fun mapKey!25361 () (_ BitVec 32))

(declare-datatypes ((V!26169 0))(
  ( (V!26170 (val!7968 Int)) )
))
(declare-datatypes ((ValueCell!7481 0))(
  ( (ValueCellFull!7481 (v!10389 V!26169)) (EmptyCell!7481) )
))
(declare-fun mapRest!25361 () (Array (_ BitVec 32) ValueCell!7481))

(declare-datatypes ((array!47898 0))(
  ( (array!47899 (arr!22976 (Array (_ BitVec 32) ValueCell!7481)) (size!23417 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47898)

(declare-fun mapValue!25361 () ValueCell!7481)

(assert (=> mapNonEmpty!25361 (= (arr!22976 _values!688) (store mapRest!25361 mapKey!25361 mapValue!25361))))

(declare-fun mapIsEmpty!25361 () Bool)

(assert (=> mapIsEmpty!25361 mapRes!25361))

(declare-fun res!573929 () Bool)

(assert (=> start!72818 (=> (not res!573929) (not e!471493))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72818 (= res!573929 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23416 _keys!868))))))

(assert (=> start!72818 e!471493))

(assert (=> start!72818 true))

(declare-fun array_inv!18250 (array!47896) Bool)

(assert (=> start!72818 (array_inv!18250 _keys!868)))

(declare-fun e!471492 () Bool)

(declare-fun array_inv!18251 (array!47898) Bool)

(assert (=> start!72818 (and (array_inv!18251 _values!688) e!471492)))

(declare-fun b!844611 () Bool)

(declare-fun tp_is_empty!15841 () Bool)

(assert (=> b!844611 (= e!471495 tp_is_empty!15841)))

(declare-fun b!844612 () Bool)

(declare-fun e!471494 () Bool)

(assert (=> b!844612 (= e!471492 (and e!471494 mapRes!25361))))

(declare-fun condMapEmpty!25361 () Bool)

(declare-fun mapDefault!25361 () ValueCell!7481)

