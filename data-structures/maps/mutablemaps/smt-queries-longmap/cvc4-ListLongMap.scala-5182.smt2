; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70106 () Bool)

(assert start!70106)

(declare-fun b_free!12503 () Bool)

(declare-fun b_next!12503 () Bool)

(assert (=> start!70106 (= b_free!12503 (not b_next!12503))))

(declare-fun tp!44224 () Bool)

(declare-fun b_and!21293 () Bool)

(assert (=> start!70106 (= tp!44224 b_and!21293)))

(declare-fun b!814277 () Bool)

(declare-fun e!451399 () Bool)

(declare-fun tp_is_empty!14213 () Bool)

(assert (=> b!814277 (= e!451399 tp_is_empty!14213)))

(declare-fun b!814278 () Bool)

(declare-fun res!556287 () Bool)

(declare-fun e!451396 () Bool)

(assert (=> b!814278 (=> (not res!556287) (not e!451396))))

(declare-datatypes ((array!44614 0))(
  ( (array!44615 (arr!21363 (Array (_ BitVec 32) (_ BitVec 64))) (size!21784 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44614)

(declare-datatypes ((List!15257 0))(
  ( (Nil!15254) (Cons!15253 (h!16382 (_ BitVec 64)) (t!21582 List!15257)) )
))
(declare-fun arrayNoDuplicates!0 (array!44614 (_ BitVec 32) List!15257) Bool)

(assert (=> b!814278 (= res!556287 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15254))))

(declare-fun b!814279 () Bool)

(declare-fun e!451400 () Bool)

(assert (=> b!814279 (= e!451400 tp_is_empty!14213)))

(declare-fun res!556289 () Bool)

(assert (=> start!70106 (=> (not res!556289) (not e!451396))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70106 (= res!556289 (validMask!0 mask!1312))))

(assert (=> start!70106 e!451396))

(assert (=> start!70106 tp_is_empty!14213))

(declare-fun array_inv!17073 (array!44614) Bool)

(assert (=> start!70106 (array_inv!17073 _keys!976)))

(assert (=> start!70106 true))

(declare-datatypes ((V!23951 0))(
  ( (V!23952 (val!7154 Int)) )
))
(declare-datatypes ((ValueCell!6691 0))(
  ( (ValueCellFull!6691 (v!9577 V!23951)) (EmptyCell!6691) )
))
(declare-datatypes ((array!44616 0))(
  ( (array!44617 (arr!21364 (Array (_ BitVec 32) ValueCell!6691)) (size!21785 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44616)

(declare-fun e!451398 () Bool)

(declare-fun array_inv!17074 (array!44616) Bool)

(assert (=> start!70106 (and (array_inv!17074 _values!788) e!451398)))

(assert (=> start!70106 tp!44224))

(declare-fun b!814280 () Bool)

(declare-fun res!556286 () Bool)

(assert (=> b!814280 (=> (not res!556286) (not e!451396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44614 (_ BitVec 32)) Bool)

(assert (=> b!814280 (= res!556286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22900 () Bool)

(declare-fun mapRes!22900 () Bool)

(declare-fun tp!44223 () Bool)

(assert (=> mapNonEmpty!22900 (= mapRes!22900 (and tp!44223 e!451399))))

(declare-fun mapValue!22900 () ValueCell!6691)

(declare-fun mapRest!22900 () (Array (_ BitVec 32) ValueCell!6691))

(declare-fun mapKey!22900 () (_ BitVec 32))

(assert (=> mapNonEmpty!22900 (= (arr!21364 _values!788) (store mapRest!22900 mapKey!22900 mapValue!22900))))

(declare-fun mapIsEmpty!22900 () Bool)

(assert (=> mapIsEmpty!22900 mapRes!22900))

(declare-fun b!814281 () Bool)

(declare-fun res!556288 () Bool)

(assert (=> b!814281 (=> (not res!556288) (not e!451396))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814281 (= res!556288 (and (= (size!21785 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21784 _keys!976) (size!21785 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814282 () Bool)

(assert (=> b!814282 (= e!451398 (and e!451400 mapRes!22900))))

(declare-fun condMapEmpty!22900 () Bool)

(declare-fun mapDefault!22900 () ValueCell!6691)

