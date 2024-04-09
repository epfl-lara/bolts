; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39066 () Bool)

(assert start!39066)

(declare-fun b_free!9325 () Bool)

(declare-fun b_next!9325 () Bool)

(assert (=> start!39066 (= b_free!9325 (not b_next!9325))))

(declare-fun tp!33504 () Bool)

(declare-fun b_and!16729 () Bool)

(assert (=> start!39066 (= tp!33504 b_and!16729)))

(declare-fun mapIsEmpty!17337 () Bool)

(declare-fun mapRes!17337 () Bool)

(assert (=> mapIsEmpty!17337 mapRes!17337))

(declare-fun b!409722 () Bool)

(declare-fun res!237435 () Bool)

(declare-fun e!245691 () Bool)

(assert (=> b!409722 (=> (not res!237435) (not e!245691))))

(declare-datatypes ((array!24805 0))(
  ( (array!24806 (arr!11849 (Array (_ BitVec 32) (_ BitVec 64))) (size!12201 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24805)

(declare-datatypes ((List!6842 0))(
  ( (Nil!6839) (Cons!6838 (h!7694 (_ BitVec 64)) (t!12024 List!6842)) )
))
(declare-fun arrayNoDuplicates!0 (array!24805 (_ BitVec 32) List!6842) Bool)

(assert (=> b!409722 (= res!237435 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6839))))

(declare-fun b!409723 () Bool)

(declare-fun res!237427 () Bool)

(assert (=> b!409723 (=> (not res!237427) (not e!245691))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409723 (= res!237427 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12201 _keys!709))))))

(declare-fun b!409724 () Bool)

(declare-fun res!237432 () Bool)

(assert (=> b!409724 (=> (not res!237432) (not e!245691))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409724 (= res!237432 (validMask!0 mask!1025))))

(declare-fun res!237438 () Bool)

(assert (=> start!39066 (=> (not res!237438) (not e!245691))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39066 (= res!237438 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12201 _keys!709))))))

(assert (=> start!39066 e!245691))

(declare-fun tp_is_empty!10477 () Bool)

(assert (=> start!39066 tp_is_empty!10477))

(assert (=> start!39066 tp!33504))

(assert (=> start!39066 true))

(declare-datatypes ((V!15075 0))(
  ( (V!15076 (val!5283 Int)) )
))
(declare-datatypes ((ValueCell!4895 0))(
  ( (ValueCellFull!4895 (v!7526 V!15075)) (EmptyCell!4895) )
))
(declare-datatypes ((array!24807 0))(
  ( (array!24808 (arr!11850 (Array (_ BitVec 32) ValueCell!4895)) (size!12202 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24807)

(declare-fun e!245695 () Bool)

(declare-fun array_inv!8652 (array!24807) Bool)

(assert (=> start!39066 (and (array_inv!8652 _values!549) e!245695)))

(declare-fun array_inv!8653 (array!24805) Bool)

(assert (=> start!39066 (array_inv!8653 _keys!709)))

(declare-fun b!409725 () Bool)

(declare-fun res!237430 () Bool)

(assert (=> b!409725 (=> (not res!237430) (not e!245691))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!409725 (= res!237430 (and (= (size!12202 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12201 _keys!709) (size!12202 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409726 () Bool)

(declare-fun res!237429 () Bool)

(assert (=> b!409726 (=> (not res!237429) (not e!245691))))

(assert (=> b!409726 (= res!237429 (or (= (select (arr!11849 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11849 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409727 () Bool)

(declare-fun res!237434 () Bool)

(declare-fun e!245692 () Bool)

(assert (=> b!409727 (=> (not res!237434) (not e!245692))))

(assert (=> b!409727 (= res!237434 (bvsle from!863 i!563))))

(declare-fun b!409728 () Bool)

(declare-fun e!245690 () Bool)

(assert (=> b!409728 (= e!245690 tp_is_empty!10477)))

(declare-fun b!409729 () Bool)

(declare-fun res!237436 () Bool)

(assert (=> b!409729 (=> (not res!237436) (not e!245692))))

(declare-fun lt!188972 () array!24805)

(assert (=> b!409729 (= res!237436 (arrayNoDuplicates!0 lt!188972 #b00000000000000000000000000000000 Nil!6839))))

(declare-fun b!409730 () Bool)

(declare-fun res!237431 () Bool)

(assert (=> b!409730 (=> (not res!237431) (not e!245691))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409730 (= res!237431 (validKeyInArray!0 k!794))))

(declare-fun b!409731 () Bool)

(declare-fun e!245693 () Bool)

(assert (=> b!409731 (= e!245695 (and e!245693 mapRes!17337))))

(declare-fun condMapEmpty!17337 () Bool)

(declare-fun mapDefault!17337 () ValueCell!4895)

