; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38350 () Bool)

(assert start!38350)

(declare-fun b!395193 () Bool)

(declare-fun res!226619 () Bool)

(declare-fun e!239282 () Bool)

(assert (=> b!395193 (=> (not res!226619) (not e!239282))))

(declare-datatypes ((array!23505 0))(
  ( (array!23506 (arr!11202 (Array (_ BitVec 32) (_ BitVec 64))) (size!11554 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23505)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14183 0))(
  ( (V!14184 (val!4949 Int)) )
))
(declare-datatypes ((ValueCell!4561 0))(
  ( (ValueCellFull!4561 (v!7191 V!14183)) (EmptyCell!4561) )
))
(declare-datatypes ((array!23507 0))(
  ( (array!23508 (arr!11203 (Array (_ BitVec 32) ValueCell!4561)) (size!11555 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23507)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395193 (= res!226619 (and (= (size!11555 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11554 _keys!709) (size!11555 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395194 () Bool)

(declare-fun res!226620 () Bool)

(assert (=> b!395194 (=> (not res!226620) (not e!239282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23505 (_ BitVec 32)) Bool)

(assert (=> b!395194 (= res!226620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395195 () Bool)

(declare-fun e!239285 () Bool)

(declare-fun tp_is_empty!9809 () Bool)

(assert (=> b!395195 (= e!239285 tp_is_empty!9809)))

(declare-fun b!395196 () Bool)

(declare-fun res!226618 () Bool)

(assert (=> b!395196 (=> (not res!226618) (not e!239282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395196 (= res!226618 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16326 () Bool)

(declare-fun mapRes!16326 () Bool)

(assert (=> mapIsEmpty!16326 mapRes!16326))

(declare-fun b!395198 () Bool)

(declare-fun e!239284 () Bool)

(declare-fun e!239283 () Bool)

(assert (=> b!395198 (= e!239284 (and e!239283 mapRes!16326))))

(declare-fun condMapEmpty!16326 () Bool)

(declare-fun mapDefault!16326 () ValueCell!4561)

