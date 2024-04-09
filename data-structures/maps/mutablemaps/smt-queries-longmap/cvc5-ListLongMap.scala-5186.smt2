; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70126 () Bool)

(assert start!70126)

(declare-fun b_free!12523 () Bool)

(declare-fun b_next!12523 () Bool)

(assert (=> start!70126 (= b_free!12523 (not b_next!12523))))

(declare-fun tp!44283 () Bool)

(declare-fun b_and!21313 () Bool)

(assert (=> start!70126 (= tp!44283 b_and!21313)))

(declare-fun res!556407 () Bool)

(declare-fun e!451548 () Bool)

(assert (=> start!70126 (=> (not res!556407) (not e!451548))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70126 (= res!556407 (validMask!0 mask!1312))))

(assert (=> start!70126 e!451548))

(declare-fun tp_is_empty!14233 () Bool)

(assert (=> start!70126 tp_is_empty!14233))

(declare-datatypes ((array!44652 0))(
  ( (array!44653 (arr!21382 (Array (_ BitVec 32) (_ BitVec 64))) (size!21803 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44652)

(declare-fun array_inv!17087 (array!44652) Bool)

(assert (=> start!70126 (array_inv!17087 _keys!976)))

(assert (=> start!70126 true))

(declare-datatypes ((V!23979 0))(
  ( (V!23980 (val!7164 Int)) )
))
(declare-datatypes ((ValueCell!6701 0))(
  ( (ValueCellFull!6701 (v!9587 V!23979)) (EmptyCell!6701) )
))
(declare-datatypes ((array!44654 0))(
  ( (array!44655 (arr!21383 (Array (_ BitVec 32) ValueCell!6701)) (size!21804 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44654)

(declare-fun e!451546 () Bool)

(declare-fun array_inv!17088 (array!44654) Bool)

(assert (=> start!70126 (and (array_inv!17088 _values!788) e!451546)))

(assert (=> start!70126 tp!44283))

(declare-fun mapNonEmpty!22930 () Bool)

(declare-fun mapRes!22930 () Bool)

(declare-fun tp!44284 () Bool)

(declare-fun e!451550 () Bool)

(assert (=> mapNonEmpty!22930 (= mapRes!22930 (and tp!44284 e!451550))))

(declare-fun mapRest!22930 () (Array (_ BitVec 32) ValueCell!6701))

(declare-fun mapKey!22930 () (_ BitVec 32))

(declare-fun mapValue!22930 () ValueCell!6701)

(assert (=> mapNonEmpty!22930 (= (arr!21383 _values!788) (store mapRest!22930 mapKey!22930 mapValue!22930))))

(declare-fun b!814487 () Bool)

(assert (=> b!814487 (= e!451550 tp_is_empty!14233)))

(declare-fun b!814488 () Bool)

(declare-fun e!451547 () Bool)

(assert (=> b!814488 (= e!451547 tp_is_empty!14233)))

(declare-fun b!814489 () Bool)

(declare-fun res!556409 () Bool)

(assert (=> b!814489 (=> (not res!556409) (not e!451548))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814489 (= res!556409 (and (= (size!21804 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21803 _keys!976) (size!21804 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814490 () Bool)

(assert (=> b!814490 (= e!451546 (and e!451547 mapRes!22930))))

(declare-fun condMapEmpty!22930 () Bool)

(declare-fun mapDefault!22930 () ValueCell!6701)

