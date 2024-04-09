; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70332 () Bool)

(assert start!70332)

(declare-fun b_free!12683 () Bool)

(declare-fun b_next!12683 () Bool)

(assert (=> start!70332 (= b_free!12683 (not b_next!12683))))

(declare-fun tp!44772 () Bool)

(declare-fun b_and!21501 () Bool)

(assert (=> start!70332 (= tp!44772 b_and!21501)))

(declare-fun res!557655 () Bool)

(declare-fun e!453111 () Bool)

(assert (=> start!70332 (=> (not res!557655) (not e!453111))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70332 (= res!557655 (validMask!0 mask!1312))))

(assert (=> start!70332 e!453111))

(declare-fun tp_is_empty!14393 () Bool)

(assert (=> start!70332 tp_is_empty!14393))

(declare-datatypes ((array!44964 0))(
  ( (array!44965 (arr!21535 (Array (_ BitVec 32) (_ BitVec 64))) (size!21956 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44964)

(declare-fun array_inv!17203 (array!44964) Bool)

(assert (=> start!70332 (array_inv!17203 _keys!976)))

(assert (=> start!70332 true))

(declare-datatypes ((V!24191 0))(
  ( (V!24192 (val!7244 Int)) )
))
(declare-datatypes ((ValueCell!6781 0))(
  ( (ValueCellFull!6781 (v!9668 V!24191)) (EmptyCell!6781) )
))
(declare-datatypes ((array!44966 0))(
  ( (array!44967 (arr!21536 (Array (_ BitVec 32) ValueCell!6781)) (size!21957 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44966)

(declare-fun e!453110 () Bool)

(declare-fun array_inv!17204 (array!44966) Bool)

(assert (=> start!70332 (and (array_inv!17204 _values!788) e!453110)))

(assert (=> start!70332 tp!44772))

(declare-fun b!816664 () Bool)

(declare-fun e!453109 () Bool)

(assert (=> b!816664 (= e!453109 tp_is_empty!14393)))

(declare-fun b!816665 () Bool)

(declare-fun e!453113 () Bool)

(assert (=> b!816665 (= e!453113 true)))

(declare-fun zeroValueAfter!34 () V!24191)

(declare-fun minValue!754 () V!24191)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9522 0))(
  ( (tuple2!9523 (_1!4771 (_ BitVec 64)) (_2!4771 V!24191)) )
))
(declare-datatypes ((List!15394 0))(
  ( (Nil!15391) (Cons!15390 (h!16519 tuple2!9522) (t!21725 List!15394)) )
))
(declare-datatypes ((ListLongMap!8359 0))(
  ( (ListLongMap!8360 (toList!4195 List!15394)) )
))
(declare-fun lt!365860 () ListLongMap!8359)

(declare-fun getCurrentListMap!2381 (array!44964 array!44966 (_ BitVec 32) (_ BitVec 32) V!24191 V!24191 (_ BitVec 32) Int) ListLongMap!8359)

(assert (=> b!816665 (= lt!365860 (getCurrentListMap!2381 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24191)

(declare-fun lt!365861 () ListLongMap!8359)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun +!1780 (ListLongMap!8359 tuple2!9522) ListLongMap!8359)

(assert (=> b!816665 (= lt!365861 (+!1780 (getCurrentListMap!2381 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9523 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun mapIsEmpty!23179 () Bool)

(declare-fun mapRes!23179 () Bool)

(assert (=> mapIsEmpty!23179 mapRes!23179))

(declare-fun b!816666 () Bool)

(declare-fun e!453114 () Bool)

(assert (=> b!816666 (= e!453110 (and e!453114 mapRes!23179))))

(declare-fun condMapEmpty!23179 () Bool)

(declare-fun mapDefault!23179 () ValueCell!6781)

