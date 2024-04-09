; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20644 () Bool)

(assert start!20644)

(declare-fun b_free!5291 () Bool)

(declare-fun b_next!5291 () Bool)

(assert (=> start!20644 (= b_free!5291 (not b_next!5291))))

(declare-fun tp!18905 () Bool)

(declare-fun b_and!12055 () Bool)

(assert (=> start!20644 (= tp!18905 b_and!12055)))

(declare-fun b!205840 () Bool)

(declare-fun res!99585 () Bool)

(declare-fun e!134584 () Bool)

(assert (=> b!205840 (=> (not res!99585) (not e!134584))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205840 (= res!99585 (validKeyInArray!0 k!843))))

(declare-fun b!205841 () Bool)

(declare-fun e!134588 () Bool)

(assert (=> b!205841 (= e!134588 true)))

(declare-datatypes ((V!6509 0))(
  ( (V!6510 (val!2618 Int)) )
))
(declare-datatypes ((tuple2!3968 0))(
  ( (tuple2!3969 (_1!1994 (_ BitVec 64)) (_2!1994 V!6509)) )
))
(declare-datatypes ((List!2887 0))(
  ( (Nil!2884) (Cons!2883 (h!3525 tuple2!3968) (t!7826 List!2887)) )
))
(declare-datatypes ((ListLongMap!2895 0))(
  ( (ListLongMap!2896 (toList!1463 List!2887)) )
))
(declare-fun lt!105038 () ListLongMap!2895)

(declare-fun lt!105041 () ListLongMap!2895)

(declare-fun lt!105040 () tuple2!3968)

(declare-fun +!480 (ListLongMap!2895 tuple2!3968) ListLongMap!2895)

(assert (=> b!205841 (= lt!105038 (+!480 lt!105041 lt!105040))))

(declare-datatypes ((Unit!6257 0))(
  ( (Unit!6258) )
))
(declare-fun lt!105048 () Unit!6257)

(declare-fun minValue!615 () V!6509)

(declare-fun v!520 () V!6509)

(declare-fun lt!105044 () ListLongMap!2895)

(declare-fun addCommutativeForDiffKeys!179 (ListLongMap!2895 (_ BitVec 64) V!6509 (_ BitVec 64) V!6509) Unit!6257)

(assert (=> b!205841 (= lt!105048 (addCommutativeForDiffKeys!179 lt!105044 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205842 () Bool)

(declare-fun e!134587 () Bool)

(assert (=> b!205842 (= e!134584 (not e!134587))))

(declare-fun res!99592 () Bool)

(assert (=> b!205842 (=> res!99592 e!134587)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205842 (= res!99592 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2230 0))(
  ( (ValueCellFull!2230 (v!4584 V!6509)) (EmptyCell!2230) )
))
(declare-datatypes ((array!9504 0))(
  ( (array!9505 (arr!4502 (Array (_ BitVec 32) ValueCell!2230)) (size!4827 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9504)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun lt!105039 () ListLongMap!2895)

(declare-fun zeroValue!615 () V!6509)

(declare-datatypes ((array!9506 0))(
  ( (array!9507 (arr!4503 (Array (_ BitVec 32) (_ BitVec 64))) (size!4828 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9506)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1028 (array!9506 array!9504 (_ BitVec 32) (_ BitVec 32) V!6509 V!6509 (_ BitVec 32) Int) ListLongMap!2895)

(assert (=> b!205842 (= lt!105039 (getCurrentListMap!1028 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105045 () array!9504)

(declare-fun lt!105042 () ListLongMap!2895)

(assert (=> b!205842 (= lt!105042 (getCurrentListMap!1028 _keys!825 lt!105045 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105049 () ListLongMap!2895)

(declare-fun lt!105046 () ListLongMap!2895)

(assert (=> b!205842 (and (= lt!105049 lt!105046) (= lt!105046 lt!105049))))

(assert (=> b!205842 (= lt!105046 (+!480 lt!105044 lt!105040))))

(assert (=> b!205842 (= lt!105040 (tuple2!3969 k!843 v!520))))

(declare-fun lt!105047 () Unit!6257)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!141 (array!9506 array!9504 (_ BitVec 32) (_ BitVec 32) V!6509 V!6509 (_ BitVec 32) (_ BitVec 64) V!6509 (_ BitVec 32) Int) Unit!6257)

(assert (=> b!205842 (= lt!105047 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!141 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!399 (array!9506 array!9504 (_ BitVec 32) (_ BitVec 32) V!6509 V!6509 (_ BitVec 32) Int) ListLongMap!2895)

(assert (=> b!205842 (= lt!105049 (getCurrentListMapNoExtraKeys!399 _keys!825 lt!105045 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205842 (= lt!105045 (array!9505 (store (arr!4502 _values!649) i!601 (ValueCellFull!2230 v!520)) (size!4827 _values!649)))))

(assert (=> b!205842 (= lt!105044 (getCurrentListMapNoExtraKeys!399 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205843 () Bool)

(declare-fun res!99590 () Bool)

(assert (=> b!205843 (=> (not res!99590) (not e!134584))))

(assert (=> b!205843 (= res!99590 (and (= (size!4827 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4828 _keys!825) (size!4827 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205844 () Bool)

(assert (=> b!205844 (= e!134587 e!134588)))

(declare-fun res!99587 () Bool)

(assert (=> b!205844 (=> res!99587 e!134588)))

(assert (=> b!205844 (= res!99587 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!205844 (= lt!105039 lt!105041)))

(declare-fun lt!105043 () tuple2!3968)

(assert (=> b!205844 (= lt!105041 (+!480 lt!105044 lt!105043))))

(assert (=> b!205844 (= lt!105042 lt!105038)))

(assert (=> b!205844 (= lt!105038 (+!480 lt!105046 lt!105043))))

(assert (=> b!205844 (= lt!105042 (+!480 lt!105049 lt!105043))))

(assert (=> b!205844 (= lt!105043 (tuple2!3969 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205845 () Bool)

(declare-fun res!99589 () Bool)

(assert (=> b!205845 (=> (not res!99589) (not e!134584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9506 (_ BitVec 32)) Bool)

(assert (=> b!205845 (= res!99589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8789 () Bool)

(declare-fun mapRes!8789 () Bool)

(assert (=> mapIsEmpty!8789 mapRes!8789))

(declare-fun b!205846 () Bool)

(declare-fun e!134586 () Bool)

(declare-fun tp_is_empty!5147 () Bool)

(assert (=> b!205846 (= e!134586 tp_is_empty!5147)))

(declare-fun b!205847 () Bool)

(declare-fun e!134589 () Bool)

(assert (=> b!205847 (= e!134589 (and e!134586 mapRes!8789))))

(declare-fun condMapEmpty!8789 () Bool)

(declare-fun mapDefault!8789 () ValueCell!2230)

