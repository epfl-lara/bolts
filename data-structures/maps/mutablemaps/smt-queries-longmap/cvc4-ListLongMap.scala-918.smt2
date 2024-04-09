; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20620 () Bool)

(assert start!20620)

(declare-fun b_free!5267 () Bool)

(declare-fun b_next!5267 () Bool)

(assert (=> start!20620 (= b_free!5267 (not b_next!5267))))

(declare-fun tp!18833 () Bool)

(declare-fun b_and!12031 () Bool)

(assert (=> start!20620 (= tp!18833 b_and!12031)))

(declare-fun mapIsEmpty!8753 () Bool)

(declare-fun mapRes!8753 () Bool)

(assert (=> mapIsEmpty!8753 mapRes!8753))

(declare-fun b!205408 () Bool)

(declare-fun res!99264 () Bool)

(declare-fun e!134333 () Bool)

(assert (=> b!205408 (=> (not res!99264) (not e!134333))))

(declare-datatypes ((array!9458 0))(
  ( (array!9459 (arr!4479 (Array (_ BitVec 32) (_ BitVec 64))) (size!4804 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9458)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6477 0))(
  ( (V!6478 (val!2606 Int)) )
))
(declare-datatypes ((ValueCell!2218 0))(
  ( (ValueCellFull!2218 (v!4572 V!6477)) (EmptyCell!2218) )
))
(declare-datatypes ((array!9460 0))(
  ( (array!9461 (arr!4480 (Array (_ BitVec 32) ValueCell!2218)) (size!4805 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9460)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!205408 (= res!99264 (and (= (size!4805 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4804 _keys!825) (size!4805 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205409 () Bool)

(declare-fun e!134336 () Bool)

(declare-fun tp_is_empty!5123 () Bool)

(assert (=> b!205409 (= e!134336 tp_is_empty!5123)))

(declare-fun b!205410 () Bool)

(declare-fun e!134338 () Bool)

(assert (=> b!205410 (= e!134333 (not e!134338))))

(declare-fun res!99266 () Bool)

(assert (=> b!205410 (=> res!99266 e!134338)))

(assert (=> b!205410 (= res!99266 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3950 0))(
  ( (tuple2!3951 (_1!1985 (_ BitVec 64)) (_2!1985 V!6477)) )
))
(declare-datatypes ((List!2871 0))(
  ( (Nil!2868) (Cons!2867 (h!3509 tuple2!3950) (t!7810 List!2871)) )
))
(declare-datatypes ((ListLongMap!2877 0))(
  ( (ListLongMap!2878 (toList!1454 List!2871)) )
))
(declare-fun lt!104607 () ListLongMap!2877)

(declare-fun zeroValue!615 () V!6477)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6477)

(declare-fun getCurrentListMap!1020 (array!9458 array!9460 (_ BitVec 32) (_ BitVec 32) V!6477 V!6477 (_ BitVec 32) Int) ListLongMap!2877)

(assert (=> b!205410 (= lt!104607 (getCurrentListMap!1020 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104612 () array!9460)

(declare-fun lt!104616 () ListLongMap!2877)

(assert (=> b!205410 (= lt!104616 (getCurrentListMap!1020 _keys!825 lt!104612 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104606 () ListLongMap!2877)

(declare-fun lt!104614 () ListLongMap!2877)

(assert (=> b!205410 (and (= lt!104606 lt!104614) (= lt!104614 lt!104606))))

(declare-fun lt!104610 () ListLongMap!2877)

(declare-fun lt!104609 () tuple2!3950)

(declare-fun +!471 (ListLongMap!2877 tuple2!3950) ListLongMap!2877)

(assert (=> b!205410 (= lt!104614 (+!471 lt!104610 lt!104609))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6477)

(assert (=> b!205410 (= lt!104609 (tuple2!3951 k!843 v!520))))

(declare-datatypes ((Unit!6241 0))(
  ( (Unit!6242) )
))
(declare-fun lt!104617 () Unit!6241)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!133 (array!9458 array!9460 (_ BitVec 32) (_ BitVec 32) V!6477 V!6477 (_ BitVec 32) (_ BitVec 64) V!6477 (_ BitVec 32) Int) Unit!6241)

(assert (=> b!205410 (= lt!104617 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!133 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!391 (array!9458 array!9460 (_ BitVec 32) (_ BitVec 32) V!6477 V!6477 (_ BitVec 32) Int) ListLongMap!2877)

(assert (=> b!205410 (= lt!104606 (getCurrentListMapNoExtraKeys!391 _keys!825 lt!104612 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205410 (= lt!104612 (array!9461 (store (arr!4480 _values!649) i!601 (ValueCellFull!2218 v!520)) (size!4805 _values!649)))))

(assert (=> b!205410 (= lt!104610 (getCurrentListMapNoExtraKeys!391 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205411 () Bool)

(declare-fun res!99268 () Bool)

(assert (=> b!205411 (=> (not res!99268) (not e!134333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205411 (= res!99268 (validKeyInArray!0 k!843))))

(declare-fun res!99265 () Bool)

(assert (=> start!20620 (=> (not res!99265) (not e!134333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20620 (= res!99265 (validMask!0 mask!1149))))

(assert (=> start!20620 e!134333))

(declare-fun e!134332 () Bool)

(declare-fun array_inv!2953 (array!9460) Bool)

(assert (=> start!20620 (and (array_inv!2953 _values!649) e!134332)))

(assert (=> start!20620 true))

(assert (=> start!20620 tp_is_empty!5123))

(declare-fun array_inv!2954 (array!9458) Bool)

(assert (=> start!20620 (array_inv!2954 _keys!825)))

(assert (=> start!20620 tp!18833))

(declare-fun b!205412 () Bool)

(declare-fun e!134334 () Bool)

(assert (=> b!205412 (= e!134334 tp_is_empty!5123)))

(declare-fun b!205413 () Bool)

(assert (=> b!205413 (= e!134332 (and e!134336 mapRes!8753))))

(declare-fun condMapEmpty!8753 () Bool)

(declare-fun mapDefault!8753 () ValueCell!2218)

