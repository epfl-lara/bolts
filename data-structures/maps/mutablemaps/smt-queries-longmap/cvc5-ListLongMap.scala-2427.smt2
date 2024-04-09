; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38328 () Bool)

(assert start!38328)

(declare-fun b!395032 () Bool)

(declare-fun res!226526 () Bool)

(declare-fun e!239181 () Bool)

(assert (=> b!395032 (=> (not res!226526) (not e!239181))))

(declare-datatypes ((array!23483 0))(
  ( (array!23484 (arr!11192 (Array (_ BitVec 32) (_ BitVec 64))) (size!11544 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23483)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14171 0))(
  ( (V!14172 (val!4944 Int)) )
))
(declare-datatypes ((ValueCell!4556 0))(
  ( (ValueCellFull!4556 (v!7186 V!14171)) (EmptyCell!4556) )
))
(declare-datatypes ((array!23485 0))(
  ( (array!23486 (arr!11193 (Array (_ BitVec 32) ValueCell!4556)) (size!11545 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23485)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395032 (= res!226526 (and (= (size!11545 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11544 _keys!709) (size!11545 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!226523 () Bool)

(assert (=> start!38328 (=> (not res!226523) (not e!239181))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38328 (= res!226523 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11544 _keys!709))))))

(assert (=> start!38328 e!239181))

(assert (=> start!38328 true))

(declare-fun e!239180 () Bool)

(declare-fun array_inv!8194 (array!23485) Bool)

(assert (=> start!38328 (and (array_inv!8194 _values!549) e!239180)))

(declare-fun array_inv!8195 (array!23483) Bool)

(assert (=> start!38328 (array_inv!8195 _keys!709)))

(declare-fun b!395033 () Bool)

(declare-fun res!226524 () Bool)

(assert (=> b!395033 (=> (not res!226524) (not e!239181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395033 (= res!226524 (validMask!0 mask!1025))))

(declare-fun b!395034 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395034 (= e!239181 (and (or (= (select (arr!11192 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11192 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!11544 _keys!709)) (bvsge (size!11544 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!395035 () Bool)

(declare-fun e!239182 () Bool)

(declare-fun tp_is_empty!9799 () Bool)

(assert (=> b!395035 (= e!239182 tp_is_empty!9799)))

(declare-fun b!395036 () Bool)

(declare-fun res!226528 () Bool)

(assert (=> b!395036 (=> (not res!226528) (not e!239181))))

(declare-datatypes ((List!6468 0))(
  ( (Nil!6465) (Cons!6464 (h!7320 (_ BitVec 64)) (t!11650 List!6468)) )
))
(declare-fun arrayNoDuplicates!0 (array!23483 (_ BitVec 32) List!6468) Bool)

(assert (=> b!395036 (= res!226528 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6465))))

(declare-fun b!395037 () Bool)

(declare-fun res!226522 () Bool)

(assert (=> b!395037 (=> (not res!226522) (not e!239181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23483 (_ BitVec 32)) Bool)

(assert (=> b!395037 (= res!226522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395038 () Bool)

(declare-fun mapRes!16308 () Bool)

(assert (=> b!395038 (= e!239180 (and e!239182 mapRes!16308))))

(declare-fun condMapEmpty!16308 () Bool)

(declare-fun mapDefault!16308 () ValueCell!4556)

