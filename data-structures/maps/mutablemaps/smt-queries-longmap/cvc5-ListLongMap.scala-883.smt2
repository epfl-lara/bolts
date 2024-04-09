; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20406 () Bool)

(assert start!20406)

(declare-fun b_free!5053 () Bool)

(declare-fun b_next!5053 () Bool)

(assert (=> start!20406 (= b_free!5053 (not b_next!5053))))

(declare-fun tp!18190 () Bool)

(declare-fun b_and!11817 () Bool)

(assert (=> start!20406 (= tp!18190 b_and!11817)))

(declare-fun b!201538 () Bool)

(declare-fun res!96358 () Bool)

(declare-fun e!132091 () Bool)

(assert (=> b!201538 (=> (not res!96358) (not e!132091))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9046 0))(
  ( (array!9047 (arr!4273 (Array (_ BitVec 32) (_ BitVec 64))) (size!4598 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9046)

(assert (=> b!201538 (= res!96358 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4598 _keys!825))))))

(declare-fun res!96360 () Bool)

(assert (=> start!20406 (=> (not res!96360) (not e!132091))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20406 (= res!96360 (validMask!0 mask!1149))))

(assert (=> start!20406 e!132091))

(declare-datatypes ((V!6193 0))(
  ( (V!6194 (val!2499 Int)) )
))
(declare-datatypes ((ValueCell!2111 0))(
  ( (ValueCellFull!2111 (v!4465 V!6193)) (EmptyCell!2111) )
))
(declare-datatypes ((array!9048 0))(
  ( (array!9049 (arr!4274 (Array (_ BitVec 32) ValueCell!2111)) (size!4599 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9048)

(declare-fun e!132087 () Bool)

(declare-fun array_inv!2811 (array!9048) Bool)

(assert (=> start!20406 (and (array_inv!2811 _values!649) e!132087)))

(assert (=> start!20406 true))

(declare-fun tp_is_empty!4909 () Bool)

(assert (=> start!20406 tp_is_empty!4909))

(declare-fun array_inv!2812 (array!9046) Bool)

(assert (=> start!20406 (array_inv!2812 _keys!825)))

(assert (=> start!20406 tp!18190))

(declare-fun b!201539 () Bool)

(declare-fun e!132086 () Bool)

(assert (=> b!201539 (= e!132086 tp_is_empty!4909)))

(declare-fun mapIsEmpty!8432 () Bool)

(declare-fun mapRes!8432 () Bool)

(assert (=> mapIsEmpty!8432 mapRes!8432))

(declare-fun b!201540 () Bool)

(declare-fun res!96359 () Bool)

(assert (=> b!201540 (=> (not res!96359) (not e!132091))))

(declare-datatypes ((List!2716 0))(
  ( (Nil!2713) (Cons!2712 (h!3354 (_ BitVec 64)) (t!7655 List!2716)) )
))
(declare-fun arrayNoDuplicates!0 (array!9046 (_ BitVec 32) List!2716) Bool)

(assert (=> b!201540 (= res!96359 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2713))))

(declare-fun b!201541 () Bool)

(declare-fun e!132089 () Bool)

(assert (=> b!201541 (= e!132091 (not e!132089))))

(declare-fun res!96354 () Bool)

(assert (=> b!201541 (=> res!96354 e!132089)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201541 (= res!96354 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3780 0))(
  ( (tuple2!3781 (_1!1900 (_ BitVec 64)) (_2!1900 V!6193)) )
))
(declare-datatypes ((List!2717 0))(
  ( (Nil!2714) (Cons!2713 (h!3355 tuple2!3780) (t!7656 List!2717)) )
))
(declare-datatypes ((ListLongMap!2707 0))(
  ( (ListLongMap!2708 (toList!1369 List!2717)) )
))
(declare-fun lt!100589 () ListLongMap!2707)

(declare-fun zeroValue!615 () V!6193)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6193)

(declare-fun getCurrentListMap!952 (array!9046 array!9048 (_ BitVec 32) (_ BitVec 32) V!6193 V!6193 (_ BitVec 32) Int) ListLongMap!2707)

(assert (=> b!201541 (= lt!100589 (getCurrentListMap!952 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100587 () array!9048)

(declare-fun lt!100593 () ListLongMap!2707)

(assert (=> b!201541 (= lt!100593 (getCurrentListMap!952 _keys!825 lt!100587 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100588 () ListLongMap!2707)

(declare-fun lt!100591 () ListLongMap!2707)

(assert (=> b!201541 (and (= lt!100588 lt!100591) (= lt!100591 lt!100588))))

(declare-fun lt!100596 () ListLongMap!2707)

(declare-fun lt!100585 () tuple2!3780)

(declare-fun +!386 (ListLongMap!2707 tuple2!3780) ListLongMap!2707)

(assert (=> b!201541 (= lt!100591 (+!386 lt!100596 lt!100585))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6193)

(assert (=> b!201541 (= lt!100585 (tuple2!3781 k!843 v!520))))

(declare-datatypes ((Unit!6079 0))(
  ( (Unit!6080) )
))
(declare-fun lt!100583 () Unit!6079)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!65 (array!9046 array!9048 (_ BitVec 32) (_ BitVec 32) V!6193 V!6193 (_ BitVec 32) (_ BitVec 64) V!6193 (_ BitVec 32) Int) Unit!6079)

(assert (=> b!201541 (= lt!100583 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!65 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!323 (array!9046 array!9048 (_ BitVec 32) (_ BitVec 32) V!6193 V!6193 (_ BitVec 32) Int) ListLongMap!2707)

(assert (=> b!201541 (= lt!100588 (getCurrentListMapNoExtraKeys!323 _keys!825 lt!100587 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201541 (= lt!100587 (array!9049 (store (arr!4274 _values!649) i!601 (ValueCellFull!2111 v!520)) (size!4599 _values!649)))))

(assert (=> b!201541 (= lt!100596 (getCurrentListMapNoExtraKeys!323 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201542 () Bool)

(declare-fun e!132090 () Bool)

(assert (=> b!201542 (= e!132090 true)))

(declare-fun lt!100597 () ListLongMap!2707)

(declare-fun lt!100590 () tuple2!3780)

(declare-fun lt!100592 () ListLongMap!2707)

(assert (=> b!201542 (= (+!386 lt!100592 lt!100590) (+!386 lt!100597 lt!100585))))

(declare-fun lt!100582 () ListLongMap!2707)

(declare-fun lt!100586 () Unit!6079)

(declare-fun addCommutativeForDiffKeys!107 (ListLongMap!2707 (_ BitVec 64) V!6193 (_ BitVec 64) V!6193) Unit!6079)

(assert (=> b!201542 (= lt!100586 (addCommutativeForDiffKeys!107 lt!100582 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201543 () Bool)

(assert (=> b!201543 (= e!132087 (and e!132086 mapRes!8432))))

(declare-fun condMapEmpty!8432 () Bool)

(declare-fun mapDefault!8432 () ValueCell!2111)

