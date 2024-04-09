; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72644 () Bool)

(assert start!72644)

(declare-fun b!842783 () Bool)

(declare-fun e!470186 () Bool)

(assert (=> b!842783 (= e!470186 false)))

(declare-fun lt!381012 () Bool)

(declare-datatypes ((array!47576 0))(
  ( (array!47577 (arr!22815 (Array (_ BitVec 32) (_ BitVec 64))) (size!23256 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47576)

(declare-datatypes ((List!16288 0))(
  ( (Nil!16285) (Cons!16284 (h!17415 (_ BitVec 64)) (t!22667 List!16288)) )
))
(declare-fun arrayNoDuplicates!0 (array!47576 (_ BitVec 32) List!16288) Bool)

(assert (=> b!842783 (= lt!381012 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16285))))

(declare-fun res!572886 () Bool)

(assert (=> start!72644 (=> (not res!572886) (not e!470186))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72644 (= res!572886 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23256 _keys!868))))))

(assert (=> start!72644 e!470186))

(assert (=> start!72644 true))

(declare-fun array_inv!18138 (array!47576) Bool)

(assert (=> start!72644 (array_inv!18138 _keys!868)))

(declare-datatypes ((V!25937 0))(
  ( (V!25938 (val!7881 Int)) )
))
(declare-datatypes ((ValueCell!7394 0))(
  ( (ValueCellFull!7394 (v!10302 V!25937)) (EmptyCell!7394) )
))
(declare-datatypes ((array!47578 0))(
  ( (array!47579 (arr!22816 (Array (_ BitVec 32) ValueCell!7394)) (size!23257 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47578)

(declare-fun e!470189 () Bool)

(declare-fun array_inv!18139 (array!47578) Bool)

(assert (=> start!72644 (and (array_inv!18139 _values!688) e!470189)))

(declare-fun b!842784 () Bool)

(declare-fun e!470188 () Bool)

(declare-fun tp_is_empty!15667 () Bool)

(assert (=> b!842784 (= e!470188 tp_is_empty!15667)))

(declare-fun mapIsEmpty!25100 () Bool)

(declare-fun mapRes!25100 () Bool)

(assert (=> mapIsEmpty!25100 mapRes!25100))

(declare-fun b!842785 () Bool)

(declare-fun e!470187 () Bool)

(assert (=> b!842785 (= e!470187 tp_is_empty!15667)))

(declare-fun b!842786 () Bool)

(declare-fun res!572884 () Bool)

(assert (=> b!842786 (=> (not res!572884) (not e!470186))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!842786 (= res!572884 (and (= (size!23257 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23256 _keys!868) (size!23257 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842787 () Bool)

(assert (=> b!842787 (= e!470189 (and e!470188 mapRes!25100))))

(declare-fun condMapEmpty!25100 () Bool)

(declare-fun mapDefault!25100 () ValueCell!7394)

