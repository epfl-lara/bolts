; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20608 () Bool)

(assert start!20608)

(declare-fun b_free!5255 () Bool)

(declare-fun b_next!5255 () Bool)

(assert (=> start!20608 (= b_free!5255 (not b_next!5255))))

(declare-fun tp!18797 () Bool)

(declare-fun b_and!12019 () Bool)

(assert (=> start!20608 (= tp!18797 b_and!12019)))

(declare-fun b!205192 () Bool)

(declare-fun res!99098 () Bool)

(declare-fun e!134208 () Bool)

(assert (=> b!205192 (=> (not res!99098) (not e!134208))))

(declare-datatypes ((array!9434 0))(
  ( (array!9435 (arr!4467 (Array (_ BitVec 32) (_ BitVec 64))) (size!4792 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9434)

(declare-datatypes ((List!2861 0))(
  ( (Nil!2858) (Cons!2857 (h!3499 (_ BitVec 64)) (t!7800 List!2861)) )
))
(declare-fun arrayNoDuplicates!0 (array!9434 (_ BitVec 32) List!2861) Bool)

(assert (=> b!205192 (= res!99098 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2858))))

(declare-fun b!205193 () Bool)

(declare-fun res!99103 () Bool)

(assert (=> b!205193 (=> (not res!99103) (not e!134208))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6461 0))(
  ( (V!6462 (val!2600 Int)) )
))
(declare-datatypes ((ValueCell!2212 0))(
  ( (ValueCellFull!2212 (v!4566 V!6461)) (EmptyCell!2212) )
))
(declare-datatypes ((array!9436 0))(
  ( (array!9437 (arr!4468 (Array (_ BitVec 32) ValueCell!2212)) (size!4793 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9436)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!205193 (= res!99103 (and (= (size!4793 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4792 _keys!825) (size!4793 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205194 () Bool)

(declare-fun e!134211 () Bool)

(declare-fun tp_is_empty!5111 () Bool)

(assert (=> b!205194 (= e!134211 tp_is_empty!5111)))

(declare-fun b!205195 () Bool)

(declare-fun res!99099 () Bool)

(assert (=> b!205195 (=> (not res!99099) (not e!134208))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205195 (= res!99099 (= (select (arr!4467 _keys!825) i!601) k!843))))

(declare-fun b!205196 () Bool)

(declare-fun res!99102 () Bool)

(assert (=> b!205196 (=> (not res!99102) (not e!134208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9434 (_ BitVec 32)) Bool)

(assert (=> b!205196 (= res!99102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205197 () Bool)

(declare-fun res!99104 () Bool)

(assert (=> b!205197 (=> (not res!99104) (not e!134208))))

(assert (=> b!205197 (= res!99104 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4792 _keys!825))))))

(declare-fun b!205198 () Bool)

(declare-fun e!134207 () Bool)

(declare-fun e!134210 () Bool)

(assert (=> b!205198 (= e!134207 e!134210)))

(declare-fun res!99101 () Bool)

(assert (=> b!205198 (=> res!99101 e!134210)))

(assert (=> b!205198 (= res!99101 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3938 0))(
  ( (tuple2!3939 (_1!1979 (_ BitVec 64)) (_2!1979 V!6461)) )
))
(declare-datatypes ((List!2862 0))(
  ( (Nil!2859) (Cons!2858 (h!3500 tuple2!3938) (t!7801 List!2862)) )
))
(declare-datatypes ((ListLongMap!2865 0))(
  ( (ListLongMap!2866 (toList!1448 List!2862)) )
))
(declare-fun lt!104391 () ListLongMap!2865)

(declare-fun lt!104396 () ListLongMap!2865)

(assert (=> b!205198 (= lt!104391 lt!104396)))

(declare-fun lt!104399 () ListLongMap!2865)

(declare-fun lt!104398 () tuple2!3938)

(declare-fun +!465 (ListLongMap!2865 tuple2!3938) ListLongMap!2865)

(assert (=> b!205198 (= lt!104396 (+!465 lt!104399 lt!104398))))

(declare-fun lt!104397 () ListLongMap!2865)

(declare-fun lt!104393 () ListLongMap!2865)

(assert (=> b!205198 (= lt!104397 lt!104393)))

(declare-fun lt!104395 () ListLongMap!2865)

(assert (=> b!205198 (= lt!104393 (+!465 lt!104395 lt!104398))))

(declare-fun lt!104390 () ListLongMap!2865)

(assert (=> b!205198 (= lt!104397 (+!465 lt!104390 lt!104398))))

(declare-fun minValue!615 () V!6461)

(assert (=> b!205198 (= lt!104398 (tuple2!3939 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205199 () Bool)

(assert (=> b!205199 (= e!134210 true)))

(declare-fun lt!104394 () tuple2!3938)

(assert (=> b!205199 (= lt!104393 (+!465 lt!104396 lt!104394))))

(declare-fun v!520 () V!6461)

(declare-datatypes ((Unit!6229 0))(
  ( (Unit!6230) )
))
(declare-fun lt!104401 () Unit!6229)

(declare-fun addCommutativeForDiffKeys!169 (ListLongMap!2865 (_ BitVec 64) V!6461 (_ BitVec 64) V!6461) Unit!6229)

(assert (=> b!205199 (= lt!104401 (addCommutativeForDiffKeys!169 lt!104399 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8735 () Bool)

(declare-fun mapRes!8735 () Bool)

(declare-fun tp!18796 () Bool)

(assert (=> mapNonEmpty!8735 (= mapRes!8735 (and tp!18796 e!134211))))

(declare-fun mapRest!8735 () (Array (_ BitVec 32) ValueCell!2212))

(declare-fun mapKey!8735 () (_ BitVec 32))

(declare-fun mapValue!8735 () ValueCell!2212)

(assert (=> mapNonEmpty!8735 (= (arr!4468 _values!649) (store mapRest!8735 mapKey!8735 mapValue!8735))))

(declare-fun b!205201 () Bool)

(declare-fun e!134209 () Bool)

(declare-fun e!134212 () Bool)

(assert (=> b!205201 (= e!134209 (and e!134212 mapRes!8735))))

(declare-fun condMapEmpty!8735 () Bool)

(declare-fun mapDefault!8735 () ValueCell!2212)

