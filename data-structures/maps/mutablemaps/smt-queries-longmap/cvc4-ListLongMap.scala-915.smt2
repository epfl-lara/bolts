; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20602 () Bool)

(assert start!20602)

(declare-fun b_free!5249 () Bool)

(declare-fun b_next!5249 () Bool)

(assert (=> start!20602 (= b_free!5249 (not b_next!5249))))

(declare-fun tp!18779 () Bool)

(declare-fun b_and!12013 () Bool)

(assert (=> start!20602 (= tp!18779 b_and!12013)))

(declare-fun b!205084 () Bool)

(declare-fun e!134147 () Bool)

(declare-fun e!134144 () Bool)

(assert (=> b!205084 (= e!134147 (not e!134144))))

(declare-fun res!99024 () Bool)

(assert (=> b!205084 (=> res!99024 e!134144)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205084 (= res!99024 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6453 0))(
  ( (V!6454 (val!2597 Int)) )
))
(declare-datatypes ((tuple2!3932 0))(
  ( (tuple2!3933 (_1!1976 (_ BitVec 64)) (_2!1976 V!6453)) )
))
(declare-datatypes ((List!2856 0))(
  ( (Nil!2853) (Cons!2852 (h!3494 tuple2!3932) (t!7795 List!2856)) )
))
(declare-datatypes ((ListLongMap!2859 0))(
  ( (ListLongMap!2860 (toList!1445 List!2856)) )
))
(declare-fun lt!104290 () ListLongMap!2859)

(declare-datatypes ((ValueCell!2209 0))(
  ( (ValueCellFull!2209 (v!4563 V!6453)) (EmptyCell!2209) )
))
(declare-datatypes ((array!9422 0))(
  ( (array!9423 (arr!4461 (Array (_ BitVec 32) ValueCell!2209)) (size!4786 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9422)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6453)

(declare-datatypes ((array!9424 0))(
  ( (array!9425 (arr!4462 (Array (_ BitVec 32) (_ BitVec 64))) (size!4787 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9424)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6453)

(declare-fun getCurrentListMap!1012 (array!9424 array!9422 (_ BitVec 32) (_ BitVec 32) V!6453 V!6453 (_ BitVec 32) Int) ListLongMap!2859)

(assert (=> b!205084 (= lt!104290 (getCurrentListMap!1012 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104282 () ListLongMap!2859)

(declare-fun lt!104289 () array!9422)

(assert (=> b!205084 (= lt!104282 (getCurrentListMap!1012 _keys!825 lt!104289 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104288 () ListLongMap!2859)

(declare-fun lt!104293 () ListLongMap!2859)

(assert (=> b!205084 (and (= lt!104288 lt!104293) (= lt!104293 lt!104288))))

(declare-fun lt!104285 () ListLongMap!2859)

(declare-fun lt!104286 () tuple2!3932)

(declare-fun +!462 (ListLongMap!2859 tuple2!3932) ListLongMap!2859)

(assert (=> b!205084 (= lt!104293 (+!462 lt!104285 lt!104286))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6453)

(assert (=> b!205084 (= lt!104286 (tuple2!3933 k!843 v!520))))

(declare-datatypes ((Unit!6223 0))(
  ( (Unit!6224) )
))
(declare-fun lt!104291 () Unit!6223)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!125 (array!9424 array!9422 (_ BitVec 32) (_ BitVec 32) V!6453 V!6453 (_ BitVec 32) (_ BitVec 64) V!6453 (_ BitVec 32) Int) Unit!6223)

(assert (=> b!205084 (= lt!104291 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!125 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!383 (array!9424 array!9422 (_ BitVec 32) (_ BitVec 32) V!6453 V!6453 (_ BitVec 32) Int) ListLongMap!2859)

(assert (=> b!205084 (= lt!104288 (getCurrentListMapNoExtraKeys!383 _keys!825 lt!104289 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205084 (= lt!104289 (array!9423 (store (arr!4461 _values!649) i!601 (ValueCellFull!2209 v!520)) (size!4786 _values!649)))))

(assert (=> b!205084 (= lt!104285 (getCurrentListMapNoExtraKeys!383 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205085 () Bool)

(declare-fun e!134145 () Bool)

(assert (=> b!205085 (= e!134144 e!134145)))

(declare-fun res!99023 () Bool)

(assert (=> b!205085 (=> res!99023 e!134145)))

(assert (=> b!205085 (= res!99023 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104284 () ListLongMap!2859)

(assert (=> b!205085 (= lt!104290 lt!104284)))

(declare-fun lt!104287 () tuple2!3932)

(assert (=> b!205085 (= lt!104284 (+!462 lt!104285 lt!104287))))

(declare-fun lt!104292 () ListLongMap!2859)

(assert (=> b!205085 (= lt!104282 lt!104292)))

(assert (=> b!205085 (= lt!104292 (+!462 lt!104293 lt!104287))))

(assert (=> b!205085 (= lt!104282 (+!462 lt!104288 lt!104287))))

(assert (=> b!205085 (= lt!104287 (tuple2!3933 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205086 () Bool)

(declare-fun res!99025 () Bool)

(assert (=> b!205086 (=> (not res!99025) (not e!134147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9424 (_ BitVec 32)) Bool)

(assert (=> b!205086 (= res!99025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205087 () Bool)

(declare-fun res!99017 () Bool)

(assert (=> b!205087 (=> (not res!99017) (not e!134147))))

(assert (=> b!205087 (= res!99017 (= (select (arr!4462 _keys!825) i!601) k!843))))

(declare-fun b!205088 () Bool)

(declare-fun res!99018 () Bool)

(assert (=> b!205088 (=> (not res!99018) (not e!134147))))

(assert (=> b!205088 (= res!99018 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4787 _keys!825))))))

(declare-fun b!205089 () Bool)

(declare-fun res!99021 () Bool)

(assert (=> b!205089 (=> (not res!99021) (not e!134147))))

(assert (=> b!205089 (= res!99021 (and (= (size!4786 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4787 _keys!825) (size!4786 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8726 () Bool)

(declare-fun mapRes!8726 () Bool)

(assert (=> mapIsEmpty!8726 mapRes!8726))

(declare-fun res!99020 () Bool)

(assert (=> start!20602 (=> (not res!99020) (not e!134147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20602 (= res!99020 (validMask!0 mask!1149))))

(assert (=> start!20602 e!134147))

(declare-fun e!134148 () Bool)

(declare-fun array_inv!2937 (array!9422) Bool)

(assert (=> start!20602 (and (array_inv!2937 _values!649) e!134148)))

(assert (=> start!20602 true))

(declare-fun tp_is_empty!5105 () Bool)

(assert (=> start!20602 tp_is_empty!5105))

(declare-fun array_inv!2938 (array!9424) Bool)

(assert (=> start!20602 (array_inv!2938 _keys!825)))

(assert (=> start!20602 tp!18779))

(declare-fun b!205090 () Bool)

(declare-fun e!134146 () Bool)

(assert (=> b!205090 (= e!134146 tp_is_empty!5105)))

(declare-fun b!205091 () Bool)

(declare-fun e!134143 () Bool)

(assert (=> b!205091 (= e!134143 tp_is_empty!5105)))

(declare-fun b!205092 () Bool)

(assert (=> b!205092 (= e!134148 (and e!134146 mapRes!8726))))

(declare-fun condMapEmpty!8726 () Bool)

(declare-fun mapDefault!8726 () ValueCell!2209)

