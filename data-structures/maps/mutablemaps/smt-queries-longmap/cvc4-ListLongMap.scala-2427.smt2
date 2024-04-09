; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38332 () Bool)

(assert start!38332)

(declare-fun b!395092 () Bool)

(declare-fun res!226566 () Bool)

(declare-fun e!239209 () Bool)

(assert (=> b!395092 (=> (not res!226566) (not e!239209))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23491 0))(
  ( (array!23492 (arr!11196 (Array (_ BitVec 32) (_ BitVec 64))) (size!11548 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23491)

(assert (=> b!395092 (= res!226566 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11548 _keys!709))))))

(declare-fun b!395093 () Bool)

(declare-fun res!226567 () Bool)

(assert (=> b!395093 (=> (not res!226567) (not e!239209))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14175 0))(
  ( (V!14176 (val!4946 Int)) )
))
(declare-datatypes ((ValueCell!4558 0))(
  ( (ValueCellFull!4558 (v!7188 V!14175)) (EmptyCell!4558) )
))
(declare-datatypes ((array!23493 0))(
  ( (array!23494 (arr!11197 (Array (_ BitVec 32) ValueCell!4558)) (size!11549 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23493)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395093 (= res!226567 (and (= (size!11549 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11548 _keys!709) (size!11549 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!226569 () Bool)

(assert (=> start!38332 (=> (not res!226569) (not e!239209))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38332 (= res!226569 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11548 _keys!709))))))

(assert (=> start!38332 e!239209))

(assert (=> start!38332 true))

(declare-fun e!239212 () Bool)

(declare-fun array_inv!8198 (array!23493) Bool)

(assert (=> start!38332 (and (array_inv!8198 _values!549) e!239212)))

(declare-fun array_inv!8199 (array!23491) Bool)

(assert (=> start!38332 (array_inv!8199 _keys!709)))

(declare-fun b!395094 () Bool)

(declare-fun res!226565 () Bool)

(assert (=> b!395094 (=> (not res!226565) (not e!239209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395094 (= res!226565 (validMask!0 mask!1025))))

(declare-fun b!395095 () Bool)

(declare-fun res!226570 () Bool)

(assert (=> b!395095 (=> (not res!226570) (not e!239209))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395095 (= res!226570 (validKeyInArray!0 k!794))))

(declare-fun b!395096 () Bool)

(declare-fun res!226568 () Bool)

(assert (=> b!395096 (=> (not res!226568) (not e!239209))))

(declare-datatypes ((List!6470 0))(
  ( (Nil!6467) (Cons!6466 (h!7322 (_ BitVec 64)) (t!11652 List!6470)) )
))
(declare-fun arrayNoDuplicates!0 (array!23491 (_ BitVec 32) List!6470) Bool)

(assert (=> b!395096 (= res!226568 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6467))))

(declare-fun b!395097 () Bool)

(declare-fun e!239213 () Bool)

(declare-fun tp_is_empty!9803 () Bool)

(assert (=> b!395097 (= e!239213 tp_is_empty!9803)))

(declare-fun b!395098 () Bool)

(declare-fun res!226564 () Bool)

(assert (=> b!395098 (=> (not res!226564) (not e!239209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23491 (_ BitVec 32)) Bool)

(assert (=> b!395098 (= res!226564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!16314 () Bool)

(declare-fun mapRes!16314 () Bool)

(assert (=> mapIsEmpty!16314 mapRes!16314))

(declare-fun b!395099 () Bool)

(declare-fun e!239211 () Bool)

(assert (=> b!395099 (= e!239211 tp_is_empty!9803)))

(declare-fun b!395100 () Bool)

(assert (=> b!395100 (= e!239212 (and e!239213 mapRes!16314))))

(declare-fun condMapEmpty!16314 () Bool)

(declare-fun mapDefault!16314 () ValueCell!4558)

