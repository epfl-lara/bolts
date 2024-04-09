; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40080 () Bool)

(assert start!40080)

(declare-fun b_free!10339 () Bool)

(declare-fun b_next!10339 () Bool)

(assert (=> start!40080 (= b_free!10339 (not b_next!10339))))

(declare-fun tp!36546 () Bool)

(declare-fun b_and!18325 () Bool)

(assert (=> start!40080 (= tp!36546 b_and!18325)))

(declare-fun mapIsEmpty!18858 () Bool)

(declare-fun mapRes!18858 () Bool)

(assert (=> mapIsEmpty!18858 mapRes!18858))

(declare-fun res!258069 () Bool)

(declare-fun e!258097 () Bool)

(assert (=> start!40080 (=> (not res!258069) (not e!258097))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26779 0))(
  ( (array!26780 (arr!12836 (Array (_ BitVec 32) (_ BitVec 64))) (size!13188 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26779)

(assert (=> start!40080 (= res!258069 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13188 _keys!709))))))

(assert (=> start!40080 e!258097))

(declare-fun tp_is_empty!11491 () Bool)

(assert (=> start!40080 tp_is_empty!11491))

(assert (=> start!40080 tp!36546))

(assert (=> start!40080 true))

(declare-datatypes ((V!16427 0))(
  ( (V!16428 (val!5790 Int)) )
))
(declare-datatypes ((ValueCell!5402 0))(
  ( (ValueCellFull!5402 (v!8033 V!16427)) (EmptyCell!5402) )
))
(declare-datatypes ((array!26781 0))(
  ( (array!26782 (arr!12837 (Array (_ BitVec 32) ValueCell!5402)) (size!13189 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26781)

(declare-fun e!258096 () Bool)

(declare-fun array_inv!9322 (array!26781) Bool)

(assert (=> start!40080 (and (array_inv!9322 _values!549) e!258096)))

(declare-fun array_inv!9323 (array!26779) Bool)

(assert (=> start!40080 (array_inv!9323 _keys!709)))

(declare-fun b!437297 () Bool)

(declare-fun e!258094 () Bool)

(assert (=> b!437297 (= e!258094 (not true))))

(declare-fun minValue!515 () V!16427)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16427)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!201623 () array!26779)

(declare-fun lt!201626 () array!26781)

(declare-fun v!412 () V!16427)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7606 0))(
  ( (tuple2!7607 (_1!3813 (_ BitVec 64)) (_2!3813 V!16427)) )
))
(declare-datatypes ((List!7649 0))(
  ( (Nil!7646) (Cons!7645 (h!8501 tuple2!7606) (t!13413 List!7649)) )
))
(declare-datatypes ((ListLongMap!6533 0))(
  ( (ListLongMap!6534 (toList!3282 List!7649)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1464 (array!26779 array!26781 (_ BitVec 32) (_ BitVec 32) V!16427 V!16427 (_ BitVec 32) Int) ListLongMap!6533)

(declare-fun +!1426 (ListLongMap!6533 tuple2!7606) ListLongMap!6533)

(assert (=> b!437297 (= (getCurrentListMapNoExtraKeys!1464 lt!201623 lt!201626 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1426 (getCurrentListMapNoExtraKeys!1464 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7607 k!794 v!412)))))

(declare-datatypes ((Unit!12967 0))(
  ( (Unit!12968) )
))
(declare-fun lt!201627 () Unit!12967)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!604 (array!26779 array!26781 (_ BitVec 32) (_ BitVec 32) V!16427 V!16427 (_ BitVec 32) (_ BitVec 64) V!16427 (_ BitVec 32) Int) Unit!12967)

(assert (=> b!437297 (= lt!201627 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!604 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437298 () Bool)

(declare-fun res!258058 () Bool)

(assert (=> b!437298 (=> (not res!258058) (not e!258097))))

(assert (=> b!437298 (= res!258058 (and (= (size!13189 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13188 _keys!709) (size!13189 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437299 () Bool)

(declare-fun res!258057 () Bool)

(assert (=> b!437299 (=> (not res!258057) (not e!258097))))

(assert (=> b!437299 (= res!258057 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13188 _keys!709))))))

(declare-fun b!437300 () Bool)

(declare-fun res!258064 () Bool)

(assert (=> b!437300 (=> (not res!258064) (not e!258097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26779 (_ BitVec 32)) Bool)

(assert (=> b!437300 (= res!258064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437301 () Bool)

(declare-fun e!258100 () Bool)

(assert (=> b!437301 (= e!258100 e!258094)))

(declare-fun res!258062 () Bool)

(assert (=> b!437301 (=> (not res!258062) (not e!258094))))

(assert (=> b!437301 (= res!258062 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201625 () ListLongMap!6533)

(assert (=> b!437301 (= lt!201625 (getCurrentListMapNoExtraKeys!1464 lt!201623 lt!201626 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!437301 (= lt!201626 (array!26782 (store (arr!12837 _values!549) i!563 (ValueCellFull!5402 v!412)) (size!13189 _values!549)))))

(declare-fun lt!201624 () ListLongMap!6533)

(assert (=> b!437301 (= lt!201624 (getCurrentListMapNoExtraKeys!1464 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437302 () Bool)

(declare-fun res!258059 () Bool)

(assert (=> b!437302 (=> (not res!258059) (not e!258097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437302 (= res!258059 (validMask!0 mask!1025))))

(declare-fun b!437303 () Bool)

(assert (=> b!437303 (= e!258097 e!258100)))

(declare-fun res!258061 () Bool)

(assert (=> b!437303 (=> (not res!258061) (not e!258100))))

(assert (=> b!437303 (= res!258061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201623 mask!1025))))

(assert (=> b!437303 (= lt!201623 (array!26780 (store (arr!12836 _keys!709) i!563 k!794) (size!13188 _keys!709)))))

(declare-fun b!437304 () Bool)

(declare-fun res!258065 () Bool)

(assert (=> b!437304 (=> (not res!258065) (not e!258097))))

(assert (=> b!437304 (= res!258065 (or (= (select (arr!12836 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12836 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437305 () Bool)

(declare-fun res!258068 () Bool)

(assert (=> b!437305 (=> (not res!258068) (not e!258100))))

(declare-datatypes ((List!7650 0))(
  ( (Nil!7647) (Cons!7646 (h!8502 (_ BitVec 64)) (t!13414 List!7650)) )
))
(declare-fun arrayNoDuplicates!0 (array!26779 (_ BitVec 32) List!7650) Bool)

(assert (=> b!437305 (= res!258068 (arrayNoDuplicates!0 lt!201623 #b00000000000000000000000000000000 Nil!7647))))

(declare-fun b!437306 () Bool)

(declare-fun res!258063 () Bool)

(assert (=> b!437306 (=> (not res!258063) (not e!258097))))

(declare-fun arrayContainsKey!0 (array!26779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437306 (= res!258063 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!437307 () Bool)

(declare-fun e!258099 () Bool)

(assert (=> b!437307 (= e!258099 tp_is_empty!11491)))

(declare-fun b!437308 () Bool)

(declare-fun res!258060 () Bool)

(assert (=> b!437308 (=> (not res!258060) (not e!258100))))

(assert (=> b!437308 (= res!258060 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18858 () Bool)

(declare-fun tp!36545 () Bool)

(assert (=> mapNonEmpty!18858 (= mapRes!18858 (and tp!36545 e!258099))))

(declare-fun mapKey!18858 () (_ BitVec 32))

(declare-fun mapRest!18858 () (Array (_ BitVec 32) ValueCell!5402))

(declare-fun mapValue!18858 () ValueCell!5402)

(assert (=> mapNonEmpty!18858 (= (arr!12837 _values!549) (store mapRest!18858 mapKey!18858 mapValue!18858))))

(declare-fun b!437309 () Bool)

(declare-fun res!258067 () Bool)

(assert (=> b!437309 (=> (not res!258067) (not e!258097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437309 (= res!258067 (validKeyInArray!0 k!794))))

(declare-fun b!437310 () Bool)

(declare-fun e!258098 () Bool)

(assert (=> b!437310 (= e!258098 tp_is_empty!11491)))

(declare-fun b!437311 () Bool)

(assert (=> b!437311 (= e!258096 (and e!258098 mapRes!18858))))

(declare-fun condMapEmpty!18858 () Bool)

(declare-fun mapDefault!18858 () ValueCell!5402)

