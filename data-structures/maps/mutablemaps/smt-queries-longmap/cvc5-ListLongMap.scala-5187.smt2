; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70132 () Bool)

(assert start!70132)

(declare-fun b_free!12529 () Bool)

(declare-fun b_next!12529 () Bool)

(assert (=> start!70132 (= b_free!12529 (not b_next!12529))))

(declare-fun tp!44302 () Bool)

(declare-fun b_and!21319 () Bool)

(assert (=> start!70132 (= tp!44302 b_and!21319)))

(declare-fun mapIsEmpty!22939 () Bool)

(declare-fun mapRes!22939 () Bool)

(assert (=> mapIsEmpty!22939 mapRes!22939))

(declare-fun b!814550 () Bool)

(declare-fun e!451591 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((array!44664 0))(
  ( (array!44665 (arr!21388 (Array (_ BitVec 32) (_ BitVec 64))) (size!21809 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44664)

(assert (=> b!814550 (= e!451591 (not (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!21809 _keys!976)))))))

(declare-datatypes ((V!23987 0))(
  ( (V!23988 (val!7167 Int)) )
))
(declare-datatypes ((tuple2!9400 0))(
  ( (tuple2!9401 (_1!4710 (_ BitVec 64)) (_2!4710 V!23987)) )
))
(declare-datatypes ((List!15273 0))(
  ( (Nil!15270) (Cons!15269 (h!16398 tuple2!9400) (t!21598 List!15273)) )
))
(declare-datatypes ((ListLongMap!8237 0))(
  ( (ListLongMap!8238 (toList!4134 List!15273)) )
))
(declare-fun lt!364679 () ListLongMap!8237)

(declare-fun lt!364678 () ListLongMap!8237)

(assert (=> b!814550 (= lt!364679 lt!364678)))

(declare-fun zeroValueBefore!34 () V!23987)

(declare-datatypes ((Unit!27724 0))(
  ( (Unit!27725) )
))
(declare-fun lt!364677 () Unit!27724)

(declare-fun zeroValueAfter!34 () V!23987)

(declare-fun minValue!754 () V!23987)

(declare-datatypes ((ValueCell!6704 0))(
  ( (ValueCellFull!6704 (v!9590 V!23987)) (EmptyCell!6704) )
))
(declare-datatypes ((array!44666 0))(
  ( (array!44667 (arr!21389 (Array (_ BitVec 32) ValueCell!6704)) (size!21810 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44666)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!299 (array!44664 array!44666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23987 V!23987 V!23987 V!23987 (_ BitVec 32) Int) Unit!27724)

(assert (=> b!814550 (= lt!364677 (lemmaNoChangeToArrayThenSameMapNoExtras!299 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2183 (array!44664 array!44666 (_ BitVec 32) (_ BitVec 32) V!23987 V!23987 (_ BitVec 32) Int) ListLongMap!8237)

(assert (=> b!814550 (= lt!364678 (getCurrentListMapNoExtraKeys!2183 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814550 (= lt!364679 (getCurrentListMapNoExtraKeys!2183 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814551 () Bool)

(declare-fun e!451593 () Bool)

(declare-fun tp_is_empty!14239 () Bool)

(assert (=> b!814551 (= e!451593 tp_is_empty!14239)))

(declare-fun res!556444 () Bool)

(assert (=> start!70132 (=> (not res!556444) (not e!451591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70132 (= res!556444 (validMask!0 mask!1312))))

(assert (=> start!70132 e!451591))

(assert (=> start!70132 tp_is_empty!14239))

(declare-fun array_inv!17093 (array!44664) Bool)

(assert (=> start!70132 (array_inv!17093 _keys!976)))

(assert (=> start!70132 true))

(declare-fun e!451592 () Bool)

(declare-fun array_inv!17094 (array!44666) Bool)

(assert (=> start!70132 (and (array_inv!17094 _values!788) e!451592)))

(assert (=> start!70132 tp!44302))

(declare-fun b!814552 () Bool)

(declare-fun res!556442 () Bool)

(assert (=> b!814552 (=> (not res!556442) (not e!451591))))

(declare-datatypes ((List!15274 0))(
  ( (Nil!15271) (Cons!15270 (h!16399 (_ BitVec 64)) (t!21599 List!15274)) )
))
(declare-fun arrayNoDuplicates!0 (array!44664 (_ BitVec 32) List!15274) Bool)

(assert (=> b!814552 (= res!556442 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15271))))

(declare-fun b!814553 () Bool)

(assert (=> b!814553 (= e!451592 (and e!451593 mapRes!22939))))

(declare-fun condMapEmpty!22939 () Bool)

(declare-fun mapDefault!22939 () ValueCell!6704)

