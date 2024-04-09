; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72690 () Bool)

(assert start!72690)

(declare-fun b!843266 () Bool)

(declare-fun res!573159 () Bool)

(declare-fun e!470534 () Bool)

(assert (=> b!843266 (=> (not res!573159) (not e!470534))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25997 0))(
  ( (V!25998 (val!7904 Int)) )
))
(declare-datatypes ((ValueCell!7417 0))(
  ( (ValueCellFull!7417 (v!10325 V!25997)) (EmptyCell!7417) )
))
(declare-datatypes ((array!47660 0))(
  ( (array!47661 (arr!22857 (Array (_ BitVec 32) ValueCell!7417)) (size!23298 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47660)

(declare-datatypes ((array!47662 0))(
  ( (array!47663 (arr!22858 (Array (_ BitVec 32) (_ BitVec 64))) (size!23299 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47662)

(assert (=> b!843266 (= res!573159 (and (= (size!23298 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23299 _keys!868) (size!23298 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843267 () Bool)

(declare-fun e!470535 () Bool)

(declare-fun tp_is_empty!15713 () Bool)

(assert (=> b!843267 (= e!470535 tp_is_empty!15713)))

(declare-fun b!843268 () Bool)

(assert (=> b!843268 (= e!470534 false)))

(declare-fun lt!381081 () Bool)

(declare-datatypes ((List!16303 0))(
  ( (Nil!16300) (Cons!16299 (h!17430 (_ BitVec 64)) (t!22682 List!16303)) )
))
(declare-fun arrayNoDuplicates!0 (array!47662 (_ BitVec 32) List!16303) Bool)

(assert (=> b!843268 (= lt!381081 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16300))))

(declare-fun b!843269 () Bool)

(declare-fun e!470533 () Bool)

(declare-fun mapRes!25169 () Bool)

(assert (=> b!843269 (= e!470533 (and e!470535 mapRes!25169))))

(declare-fun condMapEmpty!25169 () Bool)

(declare-fun mapDefault!25169 () ValueCell!7417)

