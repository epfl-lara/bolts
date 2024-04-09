; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72716 () Bool)

(assert start!72716)

(declare-fun b!843539 () Bool)

(declare-fun e!470729 () Bool)

(declare-fun tp_is_empty!15739 () Bool)

(assert (=> b!843539 (= e!470729 tp_is_empty!15739)))

(declare-fun mapNonEmpty!25208 () Bool)

(declare-fun mapRes!25208 () Bool)

(declare-fun tp!48527 () Bool)

(assert (=> mapNonEmpty!25208 (= mapRes!25208 (and tp!48527 e!470729))))

(declare-datatypes ((V!26033 0))(
  ( (V!26034 (val!7917 Int)) )
))
(declare-datatypes ((ValueCell!7430 0))(
  ( (ValueCellFull!7430 (v!10338 V!26033)) (EmptyCell!7430) )
))
(declare-fun mapValue!25208 () ValueCell!7430)

(declare-fun mapKey!25208 () (_ BitVec 32))

(declare-fun mapRest!25208 () (Array (_ BitVec 32) ValueCell!7430))

(declare-datatypes ((array!47706 0))(
  ( (array!47707 (arr!22880 (Array (_ BitVec 32) ValueCell!7430)) (size!23321 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47706)

(assert (=> mapNonEmpty!25208 (= (arr!22880 _values!688) (store mapRest!25208 mapKey!25208 mapValue!25208))))

(declare-fun b!843540 () Bool)

(declare-fun res!573315 () Bool)

(declare-fun e!470727 () Bool)

(assert (=> b!843540 (=> (not res!573315) (not e!470727))))

(declare-datatypes ((array!47708 0))(
  ( (array!47709 (arr!22881 (Array (_ BitVec 32) (_ BitVec 64))) (size!23322 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47708)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47708 (_ BitVec 32)) Bool)

(assert (=> b!843540 (= res!573315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843542 () Bool)

(assert (=> b!843542 (= e!470727 false)))

(declare-fun lt!381120 () Bool)

(declare-datatypes ((List!16313 0))(
  ( (Nil!16310) (Cons!16309 (h!17440 (_ BitVec 64)) (t!22692 List!16313)) )
))
(declare-fun arrayNoDuplicates!0 (array!47708 (_ BitVec 32) List!16313) Bool)

(assert (=> b!843542 (= lt!381120 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16310))))

(declare-fun b!843543 () Bool)

(declare-fun res!573317 () Bool)

(assert (=> b!843543 (=> (not res!573317) (not e!470727))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843543 (= res!573317 (and (= (size!23321 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23322 _keys!868) (size!23321 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843544 () Bool)

(declare-fun e!470726 () Bool)

(assert (=> b!843544 (= e!470726 tp_is_empty!15739)))

(declare-fun mapIsEmpty!25208 () Bool)

(assert (=> mapIsEmpty!25208 mapRes!25208))

(declare-fun b!843545 () Bool)

(declare-fun res!573316 () Bool)

(assert (=> b!843545 (=> (not res!573316) (not e!470727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843545 (= res!573316 (validMask!0 mask!1196))))

(declare-fun res!573318 () Bool)

(assert (=> start!72716 (=> (not res!573318) (not e!470727))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72716 (= res!573318 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23322 _keys!868))))))

(assert (=> start!72716 e!470727))

(assert (=> start!72716 true))

(declare-fun array_inv!18186 (array!47708) Bool)

(assert (=> start!72716 (array_inv!18186 _keys!868)))

(declare-fun e!470730 () Bool)

(declare-fun array_inv!18187 (array!47706) Bool)

(assert (=> start!72716 (and (array_inv!18187 _values!688) e!470730)))

(declare-fun b!843541 () Bool)

(assert (=> b!843541 (= e!470730 (and e!470726 mapRes!25208))))

(declare-fun condMapEmpty!25208 () Bool)

(declare-fun mapDefault!25208 () ValueCell!7430)

