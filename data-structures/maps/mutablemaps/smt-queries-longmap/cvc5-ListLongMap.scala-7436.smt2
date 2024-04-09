; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94502 () Bool)

(assert start!94502)

(declare-fun b_free!21793 () Bool)

(declare-fun b_next!21793 () Bool)

(assert (=> start!94502 (= b_free!21793 (not b_next!21793))))

(declare-fun tp!76826 () Bool)

(declare-fun b_and!34603 () Bool)

(assert (=> start!94502 (= tp!76826 b_and!34603)))

(declare-fun b!1068156 () Bool)

(declare-fun res!712881 () Bool)

(declare-fun e!609427 () Bool)

(assert (=> b!1068156 (=> (not res!712881) (not e!609427))))

(declare-datatypes ((array!68160 0))(
  ( (array!68161 (arr!32776 (Array (_ BitVec 32) (_ BitVec 64))) (size!33313 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68160)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68160 (_ BitVec 32)) Bool)

(assert (=> b!1068156 (= res!712881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40099 () Bool)

(declare-fun mapRes!40099 () Bool)

(assert (=> mapIsEmpty!40099 mapRes!40099))

(declare-fun b!1068157 () Bool)

(declare-fun e!609426 () Bool)

(declare-fun e!609425 () Bool)

(assert (=> b!1068157 (= e!609426 e!609425)))

(declare-fun res!712879 () Bool)

(assert (=> b!1068157 (=> res!712879 e!609425)))

(declare-datatypes ((V!39273 0))(
  ( (V!39274 (val!12852 Int)) )
))
(declare-datatypes ((tuple2!16400 0))(
  ( (tuple2!16401 (_1!8210 (_ BitVec 64)) (_2!8210 V!39273)) )
))
(declare-datatypes ((List!22990 0))(
  ( (Nil!22987) (Cons!22986 (h!24195 tuple2!16400) (t!32322 List!22990)) )
))
(declare-datatypes ((ListLongMap!14381 0))(
  ( (ListLongMap!14382 (toList!7206 List!22990)) )
))
(declare-fun lt!471837 () ListLongMap!14381)

(declare-fun contains!6308 (ListLongMap!14381 (_ BitVec 64)) Bool)

(assert (=> b!1068157 (= res!712879 (contains!6308 lt!471837 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39273)

(declare-datatypes ((ValueCell!12098 0))(
  ( (ValueCellFull!12098 (v!15467 V!39273)) (EmptyCell!12098) )
))
(declare-datatypes ((array!68162 0))(
  ( (array!68163 (arr!32777 (Array (_ BitVec 32) ValueCell!12098)) (size!33314 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68162)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39273)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4098 (array!68160 array!68162 (_ BitVec 32) (_ BitVec 32) V!39273 V!39273 (_ BitVec 32) Int) ListLongMap!14381)

(assert (=> b!1068157 (= lt!471837 (getCurrentListMap!4098 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!712883 () Bool)

(assert (=> start!94502 (=> (not res!712883) (not e!609427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94502 (= res!712883 (validMask!0 mask!1515))))

(assert (=> start!94502 e!609427))

(assert (=> start!94502 true))

(declare-fun tp_is_empty!25603 () Bool)

(assert (=> start!94502 tp_is_empty!25603))

(declare-fun e!609428 () Bool)

(declare-fun array_inv!25210 (array!68162) Bool)

(assert (=> start!94502 (and (array_inv!25210 _values!955) e!609428)))

(assert (=> start!94502 tp!76826))

(declare-fun array_inv!25211 (array!68160) Bool)

(assert (=> start!94502 (array_inv!25211 _keys!1163)))

(declare-fun b!1068158 () Bool)

(declare-fun res!712880 () Bool)

(assert (=> b!1068158 (=> (not res!712880) (not e!609427))))

(declare-datatypes ((List!22991 0))(
  ( (Nil!22988) (Cons!22987 (h!24196 (_ BitVec 64)) (t!32323 List!22991)) )
))
(declare-fun arrayNoDuplicates!0 (array!68160 (_ BitVec 32) List!22991) Bool)

(assert (=> b!1068158 (= res!712880 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22988))))

(declare-fun b!1068159 () Bool)

(declare-fun e!609429 () Bool)

(assert (=> b!1068159 (= e!609428 (and e!609429 mapRes!40099))))

(declare-fun condMapEmpty!40099 () Bool)

(declare-fun mapDefault!40099 () ValueCell!12098)

