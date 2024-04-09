; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39156 () Bool)

(assert start!39156)

(declare-fun b_free!9415 () Bool)

(declare-fun b_next!9415 () Bool)

(assert (=> start!39156 (= b_free!9415 (not b_next!9415))))

(declare-fun tp!33774 () Bool)

(declare-fun b_and!16819 () Bool)

(assert (=> start!39156 (= tp!33774 b_and!16819)))

(declare-fun b!411747 () Bool)

(declare-fun res!239051 () Bool)

(declare-fun e!246505 () Bool)

(assert (=> b!411747 (=> (not res!239051) (not e!246505))))

(declare-datatypes ((array!24975 0))(
  ( (array!24976 (arr!11934 (Array (_ BitVec 32) (_ BitVec 64))) (size!12286 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24975)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24975 (_ BitVec 32)) Bool)

(assert (=> b!411747 (= res!239051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!239058 () Bool)

(assert (=> start!39156 (=> (not res!239058) (not e!246505))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39156 (= res!239058 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12286 _keys!709))))))

(assert (=> start!39156 e!246505))

(declare-fun tp_is_empty!10567 () Bool)

(assert (=> start!39156 tp_is_empty!10567))

(assert (=> start!39156 tp!33774))

(assert (=> start!39156 true))

(declare-datatypes ((V!15195 0))(
  ( (V!15196 (val!5328 Int)) )
))
(declare-datatypes ((ValueCell!4940 0))(
  ( (ValueCellFull!4940 (v!7571 V!15195)) (EmptyCell!4940) )
))
(declare-datatypes ((array!24977 0))(
  ( (array!24978 (arr!11935 (Array (_ BitVec 32) ValueCell!4940)) (size!12287 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24977)

(declare-fun e!246504 () Bool)

(declare-fun array_inv!8706 (array!24977) Bool)

(assert (=> start!39156 (and (array_inv!8706 _values!549) e!246504)))

(declare-fun array_inv!8707 (array!24975) Bool)

(assert (=> start!39156 (array_inv!8707 _keys!709)))

(declare-fun b!411748 () Bool)

(declare-fun e!246503 () Bool)

(assert (=> b!411748 (= e!246503 tp_is_empty!10567)))

(declare-fun b!411749 () Bool)

(declare-fun res!239049 () Bool)

(assert (=> b!411749 (=> (not res!239049) (not e!246505))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411749 (= res!239049 (validKeyInArray!0 k!794))))

(declare-fun b!411750 () Bool)

(declare-fun e!246500 () Bool)

(assert (=> b!411750 (= e!246505 e!246500)))

(declare-fun res!239053 () Bool)

(assert (=> b!411750 (=> (not res!239053) (not e!246500))))

(declare-fun lt!189344 () array!24975)

(assert (=> b!411750 (= res!239053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189344 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411750 (= lt!189344 (array!24976 (store (arr!11934 _keys!709) i!563 k!794) (size!12286 _keys!709)))))

(declare-fun b!411751 () Bool)

(assert (=> b!411751 (= e!246500 false)))

(declare-fun minValue!515 () V!15195)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15195)

(declare-datatypes ((tuple2!6840 0))(
  ( (tuple2!6841 (_1!3430 (_ BitVec 64)) (_2!3430 V!15195)) )
))
(declare-datatypes ((List!6897 0))(
  ( (Nil!6894) (Cons!6893 (h!7749 tuple2!6840) (t!12079 List!6897)) )
))
(declare-datatypes ((ListLongMap!5767 0))(
  ( (ListLongMap!5768 (toList!2899 List!6897)) )
))
(declare-fun lt!189343 () ListLongMap!5767)

(declare-fun v!412 () V!15195)

(declare-fun getCurrentListMapNoExtraKeys!1109 (array!24975 array!24977 (_ BitVec 32) (_ BitVec 32) V!15195 V!15195 (_ BitVec 32) Int) ListLongMap!5767)

(assert (=> b!411751 (= lt!189343 (getCurrentListMapNoExtraKeys!1109 lt!189344 (array!24978 (store (arr!11935 _values!549) i!563 (ValueCellFull!4940 v!412)) (size!12287 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189345 () ListLongMap!5767)

(assert (=> b!411751 (= lt!189345 (getCurrentListMapNoExtraKeys!1109 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17472 () Bool)

(declare-fun mapRes!17472 () Bool)

(declare-fun tp!33773 () Bool)

(declare-fun e!246502 () Bool)

(assert (=> mapNonEmpty!17472 (= mapRes!17472 (and tp!33773 e!246502))))

(declare-fun mapValue!17472 () ValueCell!4940)

(declare-fun mapKey!17472 () (_ BitVec 32))

(declare-fun mapRest!17472 () (Array (_ BitVec 32) ValueCell!4940))

(assert (=> mapNonEmpty!17472 (= (arr!11935 _values!549) (store mapRest!17472 mapKey!17472 mapValue!17472))))

(declare-fun b!411752 () Bool)

(declare-fun res!239047 () Bool)

(assert (=> b!411752 (=> (not res!239047) (not e!246505))))

(assert (=> b!411752 (= res!239047 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12286 _keys!709))))))

(declare-fun b!411753 () Bool)

(assert (=> b!411753 (= e!246504 (and e!246503 mapRes!17472))))

(declare-fun condMapEmpty!17472 () Bool)

(declare-fun mapDefault!17472 () ValueCell!4940)

