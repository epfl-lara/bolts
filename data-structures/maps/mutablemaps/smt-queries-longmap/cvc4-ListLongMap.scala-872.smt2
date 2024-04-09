; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20344 () Bool)

(assert start!20344)

(declare-fun b_free!4991 () Bool)

(declare-fun b_next!4991 () Bool)

(assert (=> start!20344 (= b_free!4991 (not b_next!4991))))

(declare-fun tp!18004 () Bool)

(declare-fun b_and!11755 () Bool)

(assert (=> start!20344 (= tp!18004 b_and!11755)))

(declare-fun mapIsEmpty!8339 () Bool)

(declare-fun mapRes!8339 () Bool)

(assert (=> mapIsEmpty!8339 mapRes!8339))

(declare-fun b!200422 () Bool)

(declare-fun e!131437 () Bool)

(declare-fun tp_is_empty!4847 () Bool)

(assert (=> b!200422 (= e!131437 tp_is_empty!4847)))

(declare-fun b!200423 () Bool)

(declare-fun e!131435 () Bool)

(declare-fun e!131436 () Bool)

(assert (=> b!200423 (= e!131435 (not e!131436))))

(declare-fun res!95522 () Bool)

(assert (=> b!200423 (=> res!95522 e!131436)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200423 (= res!95522 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6109 0))(
  ( (V!6110 (val!2468 Int)) )
))
(declare-datatypes ((ValueCell!2080 0))(
  ( (ValueCellFull!2080 (v!4434 V!6109)) (EmptyCell!2080) )
))
(declare-datatypes ((array!8924 0))(
  ( (array!8925 (arr!4212 (Array (_ BitVec 32) ValueCell!2080)) (size!4537 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8924)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6109)

(declare-datatypes ((tuple2!3726 0))(
  ( (tuple2!3727 (_1!1873 (_ BitVec 64)) (_2!1873 V!6109)) )
))
(declare-datatypes ((List!2666 0))(
  ( (Nil!2663) (Cons!2662 (h!3304 tuple2!3726) (t!7605 List!2666)) )
))
(declare-datatypes ((ListLongMap!2653 0))(
  ( (ListLongMap!2654 (toList!1342 List!2666)) )
))
(declare-fun lt!99109 () ListLongMap!2653)

(declare-datatypes ((array!8926 0))(
  ( (array!8927 (arr!4213 (Array (_ BitVec 32) (_ BitVec 64))) (size!4538 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8926)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6109)

(declare-fun getCurrentListMap!927 (array!8926 array!8924 (_ BitVec 32) (_ BitVec 32) V!6109 V!6109 (_ BitVec 32) Int) ListLongMap!2653)

(assert (=> b!200423 (= lt!99109 (getCurrentListMap!927 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99103 () array!8924)

(declare-fun lt!99106 () ListLongMap!2653)

(assert (=> b!200423 (= lt!99106 (getCurrentListMap!927 _keys!825 lt!99103 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99097 () ListLongMap!2653)

(declare-fun lt!99095 () ListLongMap!2653)

(assert (=> b!200423 (and (= lt!99097 lt!99095) (= lt!99095 lt!99097))))

(declare-fun lt!99098 () ListLongMap!2653)

(declare-fun lt!99100 () tuple2!3726)

(declare-fun +!359 (ListLongMap!2653 tuple2!3726) ListLongMap!2653)

(assert (=> b!200423 (= lt!99095 (+!359 lt!99098 lt!99100))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6109)

(assert (=> b!200423 (= lt!99100 (tuple2!3727 k!843 v!520))))

(declare-datatypes ((Unit!6025 0))(
  ( (Unit!6026) )
))
(declare-fun lt!99099 () Unit!6025)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!40 (array!8926 array!8924 (_ BitVec 32) (_ BitVec 32) V!6109 V!6109 (_ BitVec 32) (_ BitVec 64) V!6109 (_ BitVec 32) Int) Unit!6025)

(assert (=> b!200423 (= lt!99099 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!40 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!298 (array!8926 array!8924 (_ BitVec 32) (_ BitVec 32) V!6109 V!6109 (_ BitVec 32) Int) ListLongMap!2653)

(assert (=> b!200423 (= lt!99097 (getCurrentListMapNoExtraKeys!298 _keys!825 lt!99103 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200423 (= lt!99103 (array!8925 (store (arr!4212 _values!649) i!601 (ValueCellFull!2080 v!520)) (size!4537 _values!649)))))

(assert (=> b!200423 (= lt!99098 (getCurrentListMapNoExtraKeys!298 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200424 () Bool)

(declare-fun res!95521 () Bool)

(assert (=> b!200424 (=> (not res!95521) (not e!131435))))

(assert (=> b!200424 (= res!95521 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4538 _keys!825))))))

(declare-fun b!200426 () Bool)

(declare-fun res!95516 () Bool)

(assert (=> b!200426 (=> (not res!95516) (not e!131435))))

(assert (=> b!200426 (= res!95516 (= (select (arr!4213 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8339 () Bool)

(declare-fun tp!18005 () Bool)

(declare-fun e!131434 () Bool)

(assert (=> mapNonEmpty!8339 (= mapRes!8339 (and tp!18005 e!131434))))

(declare-fun mapRest!8339 () (Array (_ BitVec 32) ValueCell!2080))

(declare-fun mapKey!8339 () (_ BitVec 32))

(declare-fun mapValue!8339 () ValueCell!2080)

(assert (=> mapNonEmpty!8339 (= (arr!4212 _values!649) (store mapRest!8339 mapKey!8339 mapValue!8339))))

(declare-fun b!200427 () Bool)

(declare-fun res!95524 () Bool)

(assert (=> b!200427 (=> (not res!95524) (not e!131435))))

(declare-datatypes ((List!2667 0))(
  ( (Nil!2664) (Cons!2663 (h!3305 (_ BitVec 64)) (t!7606 List!2667)) )
))
(declare-fun arrayNoDuplicates!0 (array!8926 (_ BitVec 32) List!2667) Bool)

(assert (=> b!200427 (= res!95524 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2664))))

(declare-fun b!200428 () Bool)

(declare-fun e!131440 () Bool)

(assert (=> b!200428 (= e!131440 (and e!131437 mapRes!8339))))

(declare-fun condMapEmpty!8339 () Bool)

(declare-fun mapDefault!8339 () ValueCell!2080)

