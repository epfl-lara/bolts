; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38358 () Bool)

(assert start!38358)

(declare-fun res!226713 () Bool)

(declare-fun e!239345 () Bool)

(assert (=> start!38358 (=> (not res!226713) (not e!239345))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23519 0))(
  ( (array!23520 (arr!11209 (Array (_ BitVec 32) (_ BitVec 64))) (size!11561 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23519)

(assert (=> start!38358 (= res!226713 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11561 _keys!709))))))

(assert (=> start!38358 e!239345))

(assert (=> start!38358 true))

(declare-datatypes ((V!14195 0))(
  ( (V!14196 (val!4953 Int)) )
))
(declare-datatypes ((ValueCell!4565 0))(
  ( (ValueCellFull!4565 (v!7195 V!14195)) (EmptyCell!4565) )
))
(declare-datatypes ((array!23521 0))(
  ( (array!23522 (arr!11210 (Array (_ BitVec 32) ValueCell!4565)) (size!11562 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23521)

(declare-fun e!239344 () Bool)

(declare-fun array_inv!8208 (array!23521) Bool)

(assert (=> start!38358 (and (array_inv!8208 _values!549) e!239344)))

(declare-fun array_inv!8209 (array!23519) Bool)

(assert (=> start!38358 (array_inv!8209 _keys!709)))

(declare-fun b!395322 () Bool)

(declare-fun res!226712 () Bool)

(assert (=> b!395322 (=> (not res!226712) (not e!239345))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395322 (= res!226712 (and (= (size!11562 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11561 _keys!709) (size!11562 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395323 () Bool)

(assert (=> b!395323 (= e!239345 false)))

(declare-fun lt!187049 () Bool)

(declare-datatypes ((List!6475 0))(
  ( (Nil!6472) (Cons!6471 (h!7327 (_ BitVec 64)) (t!11657 List!6475)) )
))
(declare-fun arrayNoDuplicates!0 (array!23519 (_ BitVec 32) List!6475) Bool)

(assert (=> b!395323 (= lt!187049 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6472))))

(declare-fun mapIsEmpty!16338 () Bool)

(declare-fun mapRes!16338 () Bool)

(assert (=> mapIsEmpty!16338 mapRes!16338))

(declare-fun b!395324 () Bool)

(declare-fun e!239343 () Bool)

(declare-fun tp_is_empty!9817 () Bool)

(assert (=> b!395324 (= e!239343 tp_is_empty!9817)))

(declare-fun mapNonEmpty!16338 () Bool)

(declare-fun tp!32133 () Bool)

(declare-fun e!239342 () Bool)

(assert (=> mapNonEmpty!16338 (= mapRes!16338 (and tp!32133 e!239342))))

(declare-fun mapKey!16338 () (_ BitVec 32))

(declare-fun mapRest!16338 () (Array (_ BitVec 32) ValueCell!4565))

(declare-fun mapValue!16338 () ValueCell!4565)

(assert (=> mapNonEmpty!16338 (= (arr!11210 _values!549) (store mapRest!16338 mapKey!16338 mapValue!16338))))

(declare-fun b!395325 () Bool)

(assert (=> b!395325 (= e!239344 (and e!239343 mapRes!16338))))

(declare-fun condMapEmpty!16338 () Bool)

(declare-fun mapDefault!16338 () ValueCell!4565)

