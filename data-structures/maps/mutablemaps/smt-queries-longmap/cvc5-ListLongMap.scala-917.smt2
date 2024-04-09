; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20610 () Bool)

(assert start!20610)

(declare-fun b_free!5257 () Bool)

(declare-fun b_next!5257 () Bool)

(assert (=> start!20610 (= b_free!5257 (not b_next!5257))))

(declare-fun tp!18803 () Bool)

(declare-fun b_and!12021 () Bool)

(assert (=> start!20610 (= tp!18803 b_and!12021)))

(declare-fun res!99130 () Bool)

(declare-fun e!134231 () Bool)

(assert (=> start!20610 (=> (not res!99130) (not e!134231))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20610 (= res!99130 (validMask!0 mask!1149))))

(assert (=> start!20610 e!134231))

(declare-datatypes ((V!6465 0))(
  ( (V!6466 (val!2601 Int)) )
))
(declare-datatypes ((ValueCell!2213 0))(
  ( (ValueCellFull!2213 (v!4567 V!6465)) (EmptyCell!2213) )
))
(declare-datatypes ((array!9438 0))(
  ( (array!9439 (arr!4469 (Array (_ BitVec 32) ValueCell!2213)) (size!4794 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9438)

(declare-fun e!134232 () Bool)

(declare-fun array_inv!2943 (array!9438) Bool)

(assert (=> start!20610 (and (array_inv!2943 _values!649) e!134232)))

(assert (=> start!20610 true))

(declare-fun tp_is_empty!5113 () Bool)

(assert (=> start!20610 tp_is_empty!5113))

(declare-datatypes ((array!9440 0))(
  ( (array!9441 (arr!4470 (Array (_ BitVec 32) (_ BitVec 64))) (size!4795 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9440)

(declare-fun array_inv!2944 (array!9440) Bool)

(assert (=> start!20610 (array_inv!2944 _keys!825)))

(assert (=> start!20610 tp!18803))

(declare-fun b!205228 () Bool)

(declare-fun e!134233 () Bool)

(assert (=> b!205228 (= e!134233 tp_is_empty!5113)))

(declare-fun b!205229 () Bool)

(declare-fun e!134227 () Bool)

(assert (=> b!205229 (= e!134231 (not e!134227))))

(declare-fun res!99129 () Bool)

(assert (=> b!205229 (=> res!99129 e!134227)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205229 (= res!99129 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3940 0))(
  ( (tuple2!3941 (_1!1980 (_ BitVec 64)) (_2!1980 V!6465)) )
))
(declare-datatypes ((List!2863 0))(
  ( (Nil!2860) (Cons!2859 (h!3501 tuple2!3940) (t!7802 List!2863)) )
))
(declare-datatypes ((ListLongMap!2867 0))(
  ( (ListLongMap!2868 (toList!1449 List!2863)) )
))
(declare-fun lt!104426 () ListLongMap!2867)

(declare-fun zeroValue!615 () V!6465)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6465)

(declare-fun getCurrentListMap!1015 (array!9440 array!9438 (_ BitVec 32) (_ BitVec 32) V!6465 V!6465 (_ BitVec 32) Int) ListLongMap!2867)

(assert (=> b!205229 (= lt!104426 (getCurrentListMap!1015 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104435 () array!9438)

(declare-fun lt!104433 () ListLongMap!2867)

(assert (=> b!205229 (= lt!104433 (getCurrentListMap!1015 _keys!825 lt!104435 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104434 () ListLongMap!2867)

(declare-fun lt!104432 () ListLongMap!2867)

(assert (=> b!205229 (and (= lt!104434 lt!104432) (= lt!104432 lt!104434))))

(declare-fun lt!104430 () ListLongMap!2867)

(declare-fun lt!104431 () tuple2!3940)

(declare-fun +!466 (ListLongMap!2867 tuple2!3940) ListLongMap!2867)

(assert (=> b!205229 (= lt!104432 (+!466 lt!104430 lt!104431))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6465)

(assert (=> b!205229 (= lt!104431 (tuple2!3941 k!843 v!520))))

(declare-datatypes ((Unit!6231 0))(
  ( (Unit!6232) )
))
(declare-fun lt!104429 () Unit!6231)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!128 (array!9440 array!9438 (_ BitVec 32) (_ BitVec 32) V!6465 V!6465 (_ BitVec 32) (_ BitVec 64) V!6465 (_ BitVec 32) Int) Unit!6231)

(assert (=> b!205229 (= lt!104429 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!128 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!386 (array!9440 array!9438 (_ BitVec 32) (_ BitVec 32) V!6465 V!6465 (_ BitVec 32) Int) ListLongMap!2867)

(assert (=> b!205229 (= lt!104434 (getCurrentListMapNoExtraKeys!386 _keys!825 lt!104435 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205229 (= lt!104435 (array!9439 (store (arr!4469 _values!649) i!601 (ValueCellFull!2213 v!520)) (size!4794 _values!649)))))

(assert (=> b!205229 (= lt!104430 (getCurrentListMapNoExtraKeys!386 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205230 () Bool)

(declare-fun res!99127 () Bool)

(assert (=> b!205230 (=> (not res!99127) (not e!134231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9440 (_ BitVec 32)) Bool)

(assert (=> b!205230 (= res!99127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205231 () Bool)

(declare-fun res!99132 () Bool)

(assert (=> b!205231 (=> (not res!99132) (not e!134231))))

(assert (=> b!205231 (= res!99132 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4795 _keys!825))))))

(declare-fun mapIsEmpty!8738 () Bool)

(declare-fun mapRes!8738 () Bool)

(assert (=> mapIsEmpty!8738 mapRes!8738))

(declare-fun b!205232 () Bool)

(declare-fun e!134229 () Bool)

(assert (=> b!205232 (= e!134227 e!134229)))

(declare-fun res!99128 () Bool)

(assert (=> b!205232 (=> res!99128 e!134229)))

(assert (=> b!205232 (= res!99128 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104437 () ListLongMap!2867)

(assert (=> b!205232 (= lt!104426 lt!104437)))

(declare-fun lt!104428 () tuple2!3940)

(assert (=> b!205232 (= lt!104437 (+!466 lt!104430 lt!104428))))

(declare-fun lt!104427 () ListLongMap!2867)

(assert (=> b!205232 (= lt!104433 lt!104427)))

(assert (=> b!205232 (= lt!104427 (+!466 lt!104432 lt!104428))))

(assert (=> b!205232 (= lt!104433 (+!466 lt!104434 lt!104428))))

(assert (=> b!205232 (= lt!104428 (tuple2!3941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205233 () Bool)

(assert (=> b!205233 (= e!134232 (and e!134233 mapRes!8738))))

(declare-fun condMapEmpty!8738 () Bool)

(declare-fun mapDefault!8738 () ValueCell!2213)

