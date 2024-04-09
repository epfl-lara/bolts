; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71264 () Bool)

(assert start!71264)

(declare-fun b_free!13387 () Bool)

(declare-fun b_next!13387 () Bool)

(assert (=> start!71264 (= b_free!13387 (not b_next!13387))))

(declare-fun tp!46923 () Bool)

(declare-fun b_and!22343 () Bool)

(assert (=> start!71264 (= tp!46923 b_and!22343)))

(declare-fun mapIsEmpty!24274 () Bool)

(declare-fun mapRes!24274 () Bool)

(assert (=> mapIsEmpty!24274 mapRes!24274))

(declare-fun res!564029 () Bool)

(declare-fun e!460933 () Bool)

(assert (=> start!71264 (=> (not res!564029) (not e!460933))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71264 (= res!564029 (validMask!0 mask!1312))))

(assert (=> start!71264 e!460933))

(declare-fun tp_is_empty!15097 () Bool)

(assert (=> start!71264 tp_is_empty!15097))

(declare-datatypes ((array!46328 0))(
  ( (array!46329 (arr!22204 (Array (_ BitVec 32) (_ BitVec 64))) (size!22625 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46328)

(declare-fun array_inv!17677 (array!46328) Bool)

(assert (=> start!71264 (array_inv!17677 _keys!976)))

(assert (=> start!71264 true))

(declare-datatypes ((V!25131 0))(
  ( (V!25132 (val!7596 Int)) )
))
(declare-datatypes ((ValueCell!7133 0))(
  ( (ValueCellFull!7133 (v!10027 V!25131)) (EmptyCell!7133) )
))
(declare-datatypes ((array!46330 0))(
  ( (array!46331 (arr!22205 (Array (_ BitVec 32) ValueCell!7133)) (size!22626 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46330)

(declare-fun e!460932 () Bool)

(declare-fun array_inv!17678 (array!46330) Bool)

(assert (=> start!71264 (and (array_inv!17678 _values!788) e!460932)))

(assert (=> start!71264 tp!46923))

(declare-fun b!827353 () Bool)

(declare-fun e!460936 () Bool)

(assert (=> b!827353 (= e!460936 tp_is_empty!15097)))

(declare-fun mapNonEmpty!24274 () Bool)

(declare-fun tp!46924 () Bool)

(assert (=> mapNonEmpty!24274 (= mapRes!24274 (and tp!46924 e!460936))))

(declare-fun mapKey!24274 () (_ BitVec 32))

(declare-fun mapValue!24274 () ValueCell!7133)

(declare-fun mapRest!24274 () (Array (_ BitVec 32) ValueCell!7133))

(assert (=> mapNonEmpty!24274 (= (arr!22205 _values!788) (store mapRest!24274 mapKey!24274 mapValue!24274))))

(declare-fun b!827354 () Bool)

(declare-fun res!564028 () Bool)

(assert (=> b!827354 (=> (not res!564028) (not e!460933))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827354 (= res!564028 (and (= (size!22626 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22625 _keys!976) (size!22626 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827355 () Bool)

(declare-fun res!564030 () Bool)

(assert (=> b!827355 (=> (not res!564030) (not e!460933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46328 (_ BitVec 32)) Bool)

(assert (=> b!827355 (= res!564030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827356 () Bool)

(declare-fun e!460934 () Bool)

(assert (=> b!827356 (= e!460934 tp_is_empty!15097)))

(declare-fun b!827357 () Bool)

(assert (=> b!827357 (= e!460932 (and e!460934 mapRes!24274))))

(declare-fun condMapEmpty!24274 () Bool)

(declare-fun mapDefault!24274 () ValueCell!7133)

