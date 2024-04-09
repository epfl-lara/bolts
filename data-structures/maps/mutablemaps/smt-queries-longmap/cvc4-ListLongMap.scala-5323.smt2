; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71206 () Bool)

(assert start!71206)

(declare-fun b_free!13349 () Bool)

(declare-fun b_next!13349 () Bool)

(assert (=> start!71206 (= b_free!13349 (not b_next!13349))))

(declare-fun tp!46806 () Bool)

(declare-fun b_and!22293 () Bool)

(assert (=> start!71206 (= tp!46806 b_and!22293)))

(declare-fun b!826753 () Bool)

(declare-fun res!563702 () Bool)

(declare-fun e!460525 () Bool)

(assert (=> b!826753 (=> (not res!563702) (not e!460525))))

(declare-datatypes ((array!46254 0))(
  ( (array!46255 (arr!22168 (Array (_ BitVec 32) (_ BitVec 64))) (size!22589 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46254)

(declare-datatypes ((List!15887 0))(
  ( (Nil!15884) (Cons!15883 (h!17012 (_ BitVec 64)) (t!22242 List!15887)) )
))
(declare-fun arrayNoDuplicates!0 (array!46254 (_ BitVec 32) List!15887) Bool)

(assert (=> b!826753 (= res!563702 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15884))))

(declare-fun mapNonEmpty!24214 () Bool)

(declare-fun mapRes!24214 () Bool)

(declare-fun tp!46807 () Bool)

(declare-fun e!460529 () Bool)

(assert (=> mapNonEmpty!24214 (= mapRes!24214 (and tp!46807 e!460529))))

(declare-datatypes ((V!25079 0))(
  ( (V!25080 (val!7577 Int)) )
))
(declare-datatypes ((ValueCell!7114 0))(
  ( (ValueCellFull!7114 (v!10007 V!25079)) (EmptyCell!7114) )
))
(declare-fun mapRest!24214 () (Array (_ BitVec 32) ValueCell!7114))

(declare-datatypes ((array!46256 0))(
  ( (array!46257 (arr!22169 (Array (_ BitVec 32) ValueCell!7114)) (size!22590 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46256)

(declare-fun mapKey!24214 () (_ BitVec 32))

(declare-fun mapValue!24214 () ValueCell!7114)

(assert (=> mapNonEmpty!24214 (= (arr!22169 _values!788) (store mapRest!24214 mapKey!24214 mapValue!24214))))

(declare-fun b!826754 () Bool)

(declare-datatypes ((tuple2!10050 0))(
  ( (tuple2!10051 (_1!5035 (_ BitVec 64)) (_2!5035 V!25079)) )
))
(declare-fun lt!374559 () tuple2!10050)

(declare-fun e!460524 () Bool)

(declare-datatypes ((List!15888 0))(
  ( (Nil!15885) (Cons!15884 (h!17013 tuple2!10050) (t!22243 List!15888)) )
))
(declare-datatypes ((ListLongMap!8887 0))(
  ( (ListLongMap!8888 (toList!4459 List!15888)) )
))
(declare-fun lt!374551 () ListLongMap!8887)

(declare-fun zeroValueAfter!34 () V!25079)

(declare-fun lt!374552 () ListLongMap!8887)

(declare-fun +!1920 (ListLongMap!8887 tuple2!10050) ListLongMap!8887)

(assert (=> b!826754 (= e!460524 (= lt!374552 (+!1920 (+!1920 lt!374551 (tuple2!10051 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374559)))))

(declare-fun b!826755 () Bool)

(declare-fun e!460527 () Bool)

(assert (=> b!826755 (= e!460525 (not e!460527))))

(declare-fun res!563701 () Bool)

(assert (=> b!826755 (=> res!563701 e!460527)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826755 (= res!563701 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!374558 () ListLongMap!8887)

(assert (=> b!826755 (= lt!374558 lt!374551)))

(declare-datatypes ((Unit!28353 0))(
  ( (Unit!28354) )
))
(declare-fun lt!374550 () Unit!28353)

(declare-fun zeroValueBefore!34 () V!25079)

(declare-fun minValue!754 () V!25079)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!582 (array!46254 array!46256 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25079 V!25079 V!25079 V!25079 (_ BitVec 32) Int) Unit!28353)

(assert (=> b!826755 (= lt!374550 (lemmaNoChangeToArrayThenSameMapNoExtras!582 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2466 (array!46254 array!46256 (_ BitVec 32) (_ BitVec 32) V!25079 V!25079 (_ BitVec 32) Int) ListLongMap!8887)

(assert (=> b!826755 (= lt!374551 (getCurrentListMapNoExtraKeys!2466 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826755 (= lt!374558 (getCurrentListMapNoExtraKeys!2466 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826757 () Bool)

(declare-fun e!460526 () Bool)

(declare-fun tp_is_empty!15059 () Bool)

(assert (=> b!826757 (= e!460526 tp_is_empty!15059)))

(declare-fun b!826758 () Bool)

(declare-fun res!563703 () Bool)

(assert (=> b!826758 (=> (not res!563703) (not e!460525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46254 (_ BitVec 32)) Bool)

(assert (=> b!826758 (= res!563703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826759 () Bool)

(assert (=> b!826759 (= e!460529 tp_is_empty!15059)))

(declare-fun b!826760 () Bool)

(declare-fun e!460522 () Bool)

(assert (=> b!826760 (= e!460522 (and e!460526 mapRes!24214))))

(declare-fun condMapEmpty!24214 () Bool)

(declare-fun mapDefault!24214 () ValueCell!7114)

