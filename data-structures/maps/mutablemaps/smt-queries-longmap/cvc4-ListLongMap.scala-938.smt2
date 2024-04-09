; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20740 () Bool)

(assert start!20740)

(declare-fun b_free!5387 () Bool)

(declare-fun b_next!5387 () Bool)

(assert (=> start!20740 (= b_free!5387 (not b_next!5387))))

(declare-fun tp!19192 () Bool)

(declare-fun b_and!12151 () Bool)

(assert (=> start!20740 (= tp!19192 b_and!12151)))

(declare-fun b!207372 () Bool)

(declare-fun res!100689 () Bool)

(declare-fun e!135397 () Bool)

(assert (=> b!207372 (=> (not res!100689) (not e!135397))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9692 0))(
  ( (array!9693 (arr!4596 (Array (_ BitVec 32) (_ BitVec 64))) (size!4921 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9692)

(assert (=> b!207372 (= res!100689 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4921 _keys!825))))))

(declare-fun b!207373 () Bool)

(declare-fun res!100684 () Bool)

(assert (=> b!207373 (=> (not res!100684) (not e!135397))))

(declare-datatypes ((List!2957 0))(
  ( (Nil!2954) (Cons!2953 (h!3595 (_ BitVec 64)) (t!7896 List!2957)) )
))
(declare-fun arrayNoDuplicates!0 (array!9692 (_ BitVec 32) List!2957) Bool)

(assert (=> b!207373 (= res!100684 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2954))))

(declare-fun mapNonEmpty!8933 () Bool)

(declare-fun mapRes!8933 () Bool)

(declare-fun tp!19193 () Bool)

(declare-fun e!135398 () Bool)

(assert (=> mapNonEmpty!8933 (= mapRes!8933 (and tp!19193 e!135398))))

(declare-fun mapKey!8933 () (_ BitVec 32))

(declare-datatypes ((V!6637 0))(
  ( (V!6638 (val!2666 Int)) )
))
(declare-datatypes ((ValueCell!2278 0))(
  ( (ValueCellFull!2278 (v!4632 V!6637)) (EmptyCell!2278) )
))
(declare-datatypes ((array!9694 0))(
  ( (array!9695 (arr!4597 (Array (_ BitVec 32) ValueCell!2278)) (size!4922 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9694)

(declare-fun mapRest!8933 () (Array (_ BitVec 32) ValueCell!2278))

(declare-fun mapValue!8933 () ValueCell!2278)

(assert (=> mapNonEmpty!8933 (= (arr!4597 _values!649) (store mapRest!8933 mapKey!8933 mapValue!8933))))

(declare-fun b!207374 () Bool)

(declare-fun res!100685 () Bool)

(assert (=> b!207374 (=> (not res!100685) (not e!135397))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!207374 (= res!100685 (= (select (arr!4596 _keys!825) i!601) k!843))))

(declare-fun b!207375 () Bool)

(assert (=> b!207375 (= e!135397 (not true))))

(declare-datatypes ((tuple2!4042 0))(
  ( (tuple2!4043 (_1!2031 (_ BitVec 64)) (_2!2031 V!6637)) )
))
(declare-datatypes ((List!2958 0))(
  ( (Nil!2955) (Cons!2954 (h!3596 tuple2!4042) (t!7897 List!2958)) )
))
(declare-datatypes ((ListLongMap!2969 0))(
  ( (ListLongMap!2970 (toList!1500 List!2958)) )
))
(declare-fun lt!106289 () ListLongMap!2969)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6637)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6637)

(declare-fun getCurrentListMap!1062 (array!9692 array!9694 (_ BitVec 32) (_ BitVec 32) V!6637 V!6637 (_ BitVec 32) Int) ListLongMap!2969)

(assert (=> b!207375 (= lt!106289 (getCurrentListMap!1062 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106287 () ListLongMap!2969)

(declare-fun lt!106285 () array!9694)

(assert (=> b!207375 (= lt!106287 (getCurrentListMap!1062 _keys!825 lt!106285 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106286 () ListLongMap!2969)

(declare-fun lt!106288 () ListLongMap!2969)

(assert (=> b!207375 (and (= lt!106286 lt!106288) (= lt!106288 lt!106286))))

(declare-fun lt!106291 () ListLongMap!2969)

(declare-fun v!520 () V!6637)

(declare-fun +!517 (ListLongMap!2969 tuple2!4042) ListLongMap!2969)

(assert (=> b!207375 (= lt!106288 (+!517 lt!106291 (tuple2!4043 k!843 v!520)))))

(declare-datatypes ((Unit!6329 0))(
  ( (Unit!6330) )
))
(declare-fun lt!106290 () Unit!6329)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!175 (array!9692 array!9694 (_ BitVec 32) (_ BitVec 32) V!6637 V!6637 (_ BitVec 32) (_ BitVec 64) V!6637 (_ BitVec 32) Int) Unit!6329)

(assert (=> b!207375 (= lt!106290 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!175 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!433 (array!9692 array!9694 (_ BitVec 32) (_ BitVec 32) V!6637 V!6637 (_ BitVec 32) Int) ListLongMap!2969)

(assert (=> b!207375 (= lt!106286 (getCurrentListMapNoExtraKeys!433 _keys!825 lt!106285 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207375 (= lt!106285 (array!9695 (store (arr!4597 _values!649) i!601 (ValueCellFull!2278 v!520)) (size!4922 _values!649)))))

(assert (=> b!207375 (= lt!106291 (getCurrentListMapNoExtraKeys!433 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207376 () Bool)

(declare-fun tp_is_empty!5243 () Bool)

(assert (=> b!207376 (= e!135398 tp_is_empty!5243)))

(declare-fun b!207377 () Bool)

(declare-fun res!100688 () Bool)

(assert (=> b!207377 (=> (not res!100688) (not e!135397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9692 (_ BitVec 32)) Bool)

(assert (=> b!207377 (= res!100688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207378 () Bool)

(declare-fun e!135400 () Bool)

(assert (=> b!207378 (= e!135400 tp_is_empty!5243)))

(declare-fun res!100690 () Bool)

(assert (=> start!20740 (=> (not res!100690) (not e!135397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20740 (= res!100690 (validMask!0 mask!1149))))

(assert (=> start!20740 e!135397))

(declare-fun e!135396 () Bool)

(declare-fun array_inv!3033 (array!9694) Bool)

(assert (=> start!20740 (and (array_inv!3033 _values!649) e!135396)))

(assert (=> start!20740 true))

(assert (=> start!20740 tp_is_empty!5243))

(declare-fun array_inv!3034 (array!9692) Bool)

(assert (=> start!20740 (array_inv!3034 _keys!825)))

(assert (=> start!20740 tp!19192))

(declare-fun mapIsEmpty!8933 () Bool)

(assert (=> mapIsEmpty!8933 mapRes!8933))

(declare-fun b!207379 () Bool)

(declare-fun res!100687 () Bool)

(assert (=> b!207379 (=> (not res!100687) (not e!135397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207379 (= res!100687 (validKeyInArray!0 k!843))))

(declare-fun b!207380 () Bool)

(declare-fun res!100686 () Bool)

(assert (=> b!207380 (=> (not res!100686) (not e!135397))))

(assert (=> b!207380 (= res!100686 (and (= (size!4922 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4921 _keys!825) (size!4922 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207381 () Bool)

(assert (=> b!207381 (= e!135396 (and e!135400 mapRes!8933))))

(declare-fun condMapEmpty!8933 () Bool)

(declare-fun mapDefault!8933 () ValueCell!2278)

