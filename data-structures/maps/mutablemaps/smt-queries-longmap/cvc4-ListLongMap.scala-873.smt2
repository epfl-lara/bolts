; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20350 () Bool)

(assert start!20350)

(declare-fun b_free!4997 () Bool)

(declare-fun b_next!4997 () Bool)

(assert (=> start!20350 (= b_free!4997 (not b_next!4997))))

(declare-fun tp!18022 () Bool)

(declare-fun b_and!11761 () Bool)

(assert (=> start!20350 (= tp!18022 b_and!11761)))

(declare-fun res!95603 () Bool)

(declare-fun e!131498 () Bool)

(assert (=> start!20350 (=> (not res!95603) (not e!131498))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20350 (= res!95603 (validMask!0 mask!1149))))

(assert (=> start!20350 e!131498))

(declare-datatypes ((V!6117 0))(
  ( (V!6118 (val!2471 Int)) )
))
(declare-datatypes ((ValueCell!2083 0))(
  ( (ValueCellFull!2083 (v!4437 V!6117)) (EmptyCell!2083) )
))
(declare-datatypes ((array!8936 0))(
  ( (array!8937 (arr!4218 (Array (_ BitVec 32) ValueCell!2083)) (size!4543 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8936)

(declare-fun e!131500 () Bool)

(declare-fun array_inv!2765 (array!8936) Bool)

(assert (=> start!20350 (and (array_inv!2765 _values!649) e!131500)))

(assert (=> start!20350 true))

(declare-fun tp_is_empty!4853 () Bool)

(assert (=> start!20350 tp_is_empty!4853))

(declare-datatypes ((array!8938 0))(
  ( (array!8939 (arr!4219 (Array (_ BitVec 32) (_ BitVec 64))) (size!4544 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8938)

(declare-fun array_inv!2766 (array!8938) Bool)

(assert (=> start!20350 (array_inv!2766 _keys!825)))

(assert (=> start!20350 tp!18022))

(declare-fun b!200530 () Bool)

(declare-fun res!95604 () Bool)

(assert (=> b!200530 (=> (not res!95604) (not e!131498))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200530 (= res!95604 (and (= (size!4543 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4544 _keys!825) (size!4543 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200531 () Bool)

(declare-fun e!131501 () Bool)

(assert (=> b!200531 (= e!131498 (not e!131501))))

(declare-fun res!95605 () Bool)

(assert (=> b!200531 (=> res!95605 e!131501)))

(assert (=> b!200531 (= res!95605 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3730 0))(
  ( (tuple2!3731 (_1!1875 (_ BitVec 64)) (_2!1875 V!6117)) )
))
(declare-datatypes ((List!2671 0))(
  ( (Nil!2668) (Cons!2667 (h!3309 tuple2!3730) (t!7610 List!2671)) )
))
(declare-datatypes ((ListLongMap!2657 0))(
  ( (ListLongMap!2658 (toList!1344 List!2671)) )
))
(declare-fun lt!99245 () ListLongMap!2657)

(declare-fun zeroValue!615 () V!6117)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6117)

(declare-fun getCurrentListMap!929 (array!8938 array!8936 (_ BitVec 32) (_ BitVec 32) V!6117 V!6117 (_ BitVec 32) Int) ListLongMap!2657)

(assert (=> b!200531 (= lt!99245 (getCurrentListMap!929 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99253 () array!8936)

(declare-fun lt!99240 () ListLongMap!2657)

(assert (=> b!200531 (= lt!99240 (getCurrentListMap!929 _keys!825 lt!99253 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99238 () ListLongMap!2657)

(declare-fun lt!99248 () ListLongMap!2657)

(assert (=> b!200531 (and (= lt!99238 lt!99248) (= lt!99248 lt!99238))))

(declare-fun lt!99247 () ListLongMap!2657)

(declare-fun lt!99244 () tuple2!3730)

(declare-fun +!361 (ListLongMap!2657 tuple2!3730) ListLongMap!2657)

(assert (=> b!200531 (= lt!99248 (+!361 lt!99247 lt!99244))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6117)

(assert (=> b!200531 (= lt!99244 (tuple2!3731 k!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6029 0))(
  ( (Unit!6030) )
))
(declare-fun lt!99243 () Unit!6029)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!42 (array!8938 array!8936 (_ BitVec 32) (_ BitVec 32) V!6117 V!6117 (_ BitVec 32) (_ BitVec 64) V!6117 (_ BitVec 32) Int) Unit!6029)

(assert (=> b!200531 (= lt!99243 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!42 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!300 (array!8938 array!8936 (_ BitVec 32) (_ BitVec 32) V!6117 V!6117 (_ BitVec 32) Int) ListLongMap!2657)

(assert (=> b!200531 (= lt!99238 (getCurrentListMapNoExtraKeys!300 _keys!825 lt!99253 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200531 (= lt!99253 (array!8937 (store (arr!4218 _values!649) i!601 (ValueCellFull!2083 v!520)) (size!4543 _values!649)))))

(assert (=> b!200531 (= lt!99247 (getCurrentListMapNoExtraKeys!300 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8348 () Bool)

(declare-fun mapRes!8348 () Bool)

(declare-fun tp!18023 () Bool)

(declare-fun e!131497 () Bool)

(assert (=> mapNonEmpty!8348 (= mapRes!8348 (and tp!18023 e!131497))))

(declare-fun mapValue!8348 () ValueCell!2083)

(declare-fun mapRest!8348 () (Array (_ BitVec 32) ValueCell!2083))

(declare-fun mapKey!8348 () (_ BitVec 32))

(assert (=> mapNonEmpty!8348 (= (arr!4218 _values!649) (store mapRest!8348 mapKey!8348 mapValue!8348))))

(declare-fun mapIsEmpty!8348 () Bool)

(assert (=> mapIsEmpty!8348 mapRes!8348))

(declare-fun b!200532 () Bool)

(declare-fun res!95599 () Bool)

(assert (=> b!200532 (=> (not res!95599) (not e!131498))))

(declare-datatypes ((List!2672 0))(
  ( (Nil!2669) (Cons!2668 (h!3310 (_ BitVec 64)) (t!7611 List!2672)) )
))
(declare-fun arrayNoDuplicates!0 (array!8938 (_ BitVec 32) List!2672) Bool)

(assert (=> b!200532 (= res!95599 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2669))))

(declare-fun b!200533 () Bool)

(assert (=> b!200533 (= e!131497 tp_is_empty!4853)))

(declare-fun b!200534 () Bool)

(declare-fun res!95597 () Bool)

(assert (=> b!200534 (=> (not res!95597) (not e!131498))))

(assert (=> b!200534 (= res!95597 (= (select (arr!4219 _keys!825) i!601) k!843))))

(declare-fun b!200535 () Bool)

(declare-fun e!131502 () Bool)

(assert (=> b!200535 (= e!131502 true)))

(declare-fun lt!99252 () ListLongMap!2657)

(declare-fun lt!99241 () tuple2!3730)

(declare-fun lt!99250 () ListLongMap!2657)

(assert (=> b!200535 (= (+!361 lt!99252 lt!99241) (+!361 lt!99250 lt!99244))))

(declare-fun lt!99239 () ListLongMap!2657)

(declare-fun lt!99251 () Unit!6029)

(declare-fun addCommutativeForDiffKeys!84 (ListLongMap!2657 (_ BitVec 64) V!6117 (_ BitVec 64) V!6117) Unit!6029)

(assert (=> b!200535 (= lt!99251 (addCommutativeForDiffKeys!84 lt!99239 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200536 () Bool)

(declare-fun res!95600 () Bool)

(assert (=> b!200536 (=> (not res!95600) (not e!131498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8938 (_ BitVec 32)) Bool)

(assert (=> b!200536 (= res!95600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200537 () Bool)

(declare-fun res!95598 () Bool)

(assert (=> b!200537 (=> (not res!95598) (not e!131498))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200537 (= res!95598 (validKeyInArray!0 k!843))))

(declare-fun b!200538 () Bool)

(declare-fun e!131499 () Bool)

(assert (=> b!200538 (= e!131500 (and e!131499 mapRes!8348))))

(declare-fun condMapEmpty!8348 () Bool)

(declare-fun mapDefault!8348 () ValueCell!2083)

