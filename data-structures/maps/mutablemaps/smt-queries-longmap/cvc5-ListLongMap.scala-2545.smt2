; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39096 () Bool)

(assert start!39096)

(declare-fun b_free!9355 () Bool)

(declare-fun b_next!9355 () Bool)

(assert (=> start!39096 (= b_free!9355 (not b_next!9355))))

(declare-fun tp!33594 () Bool)

(declare-fun b_and!16759 () Bool)

(assert (=> start!39096 (= tp!33594 b_and!16759)))

(declare-fun mapIsEmpty!17382 () Bool)

(declare-fun mapRes!17382 () Bool)

(assert (=> mapIsEmpty!17382 mapRes!17382))

(declare-fun b!410397 () Bool)

(declare-fun e!245964 () Bool)

(declare-fun tp_is_empty!10507 () Bool)

(assert (=> b!410397 (= e!245964 tp_is_empty!10507)))

(declare-fun b!410398 () Bool)

(declare-fun e!245963 () Bool)

(declare-fun e!245961 () Bool)

(assert (=> b!410398 (= e!245963 e!245961)))

(declare-fun res!237978 () Bool)

(assert (=> b!410398 (=> (not res!237978) (not e!245961))))

(declare-datatypes ((array!24863 0))(
  ( (array!24864 (arr!11878 (Array (_ BitVec 32) (_ BitVec 64))) (size!12230 (_ BitVec 32))) )
))
(declare-fun lt!189073 () array!24863)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24863 (_ BitVec 32)) Bool)

(assert (=> b!410398 (= res!237978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189073 mask!1025))))

(declare-fun _keys!709 () array!24863)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410398 (= lt!189073 (array!24864 (store (arr!11878 _keys!709) i!563 k!794) (size!12230 _keys!709)))))

(declare-fun mapNonEmpty!17382 () Bool)

(declare-fun tp!33593 () Bool)

(declare-fun e!245960 () Bool)

(assert (=> mapNonEmpty!17382 (= mapRes!17382 (and tp!33593 e!245960))))

(declare-datatypes ((V!15115 0))(
  ( (V!15116 (val!5298 Int)) )
))
(declare-datatypes ((ValueCell!4910 0))(
  ( (ValueCellFull!4910 (v!7541 V!15115)) (EmptyCell!4910) )
))
(declare-fun mapValue!17382 () ValueCell!4910)

(declare-fun mapRest!17382 () (Array (_ BitVec 32) ValueCell!4910))

(declare-fun mapKey!17382 () (_ BitVec 32))

(declare-datatypes ((array!24865 0))(
  ( (array!24866 (arr!11879 (Array (_ BitVec 32) ValueCell!4910)) (size!12231 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24865)

(assert (=> mapNonEmpty!17382 (= (arr!11879 _values!549) (store mapRest!17382 mapKey!17382 mapValue!17382))))

(declare-fun b!410399 () Bool)

(declare-fun res!237974 () Bool)

(assert (=> b!410399 (=> (not res!237974) (not e!245963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410399 (= res!237974 (validKeyInArray!0 k!794))))

(declare-fun b!410400 () Bool)

(assert (=> b!410400 (= e!245961 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15115)

(declare-fun v!412 () V!15115)

(declare-fun minValue!515 () V!15115)

(declare-datatypes ((tuple2!6808 0))(
  ( (tuple2!6809 (_1!3414 (_ BitVec 64)) (_2!3414 V!15115)) )
))
(declare-datatypes ((List!6862 0))(
  ( (Nil!6859) (Cons!6858 (h!7714 tuple2!6808) (t!12044 List!6862)) )
))
(declare-datatypes ((ListLongMap!5735 0))(
  ( (ListLongMap!5736 (toList!2883 List!6862)) )
))
(declare-fun lt!189074 () ListLongMap!5735)

(declare-fun getCurrentListMapNoExtraKeys!1093 (array!24863 array!24865 (_ BitVec 32) (_ BitVec 32) V!15115 V!15115 (_ BitVec 32) Int) ListLongMap!5735)

(assert (=> b!410400 (= lt!189074 (getCurrentListMapNoExtraKeys!1093 lt!189073 (array!24866 (store (arr!11879 _values!549) i!563 (ValueCellFull!4910 v!412)) (size!12231 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189075 () ListLongMap!5735)

(assert (=> b!410400 (= lt!189075 (getCurrentListMapNoExtraKeys!1093 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410402 () Bool)

(declare-fun e!245962 () Bool)

(assert (=> b!410402 (= e!245962 (and e!245964 mapRes!17382))))

(declare-fun condMapEmpty!17382 () Bool)

(declare-fun mapDefault!17382 () ValueCell!4910)

