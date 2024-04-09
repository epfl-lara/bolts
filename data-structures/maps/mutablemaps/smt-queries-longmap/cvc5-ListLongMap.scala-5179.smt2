; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70084 () Bool)

(assert start!70084)

(declare-fun b_free!12481 () Bool)

(declare-fun b_next!12481 () Bool)

(assert (=> start!70084 (= b_free!12481 (not b_next!12481))))

(declare-fun tp!44157 () Bool)

(declare-fun b_and!21271 () Bool)

(assert (=> start!70084 (= tp!44157 b_and!21271)))

(declare-fun mapIsEmpty!22867 () Bool)

(declare-fun mapRes!22867 () Bool)

(assert (=> mapIsEmpty!22867 mapRes!22867))

(declare-fun b!814046 () Bool)

(declare-fun res!556157 () Bool)

(declare-fun e!451234 () Bool)

(assert (=> b!814046 (=> (not res!556157) (not e!451234))))

(declare-datatypes ((array!44570 0))(
  ( (array!44571 (arr!21341 (Array (_ BitVec 32) (_ BitVec 64))) (size!21762 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44570)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23923 0))(
  ( (V!23924 (val!7143 Int)) )
))
(declare-datatypes ((ValueCell!6680 0))(
  ( (ValueCellFull!6680 (v!9566 V!23923)) (EmptyCell!6680) )
))
(declare-datatypes ((array!44572 0))(
  ( (array!44573 (arr!21342 (Array (_ BitVec 32) ValueCell!6680)) (size!21763 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44572)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814046 (= res!556157 (and (= (size!21763 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21762 _keys!976) (size!21763 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22867 () Bool)

(declare-fun tp!44158 () Bool)

(declare-fun e!451232 () Bool)

(assert (=> mapNonEmpty!22867 (= mapRes!22867 (and tp!44158 e!451232))))

(declare-fun mapKey!22867 () (_ BitVec 32))

(declare-fun mapValue!22867 () ValueCell!6680)

(declare-fun mapRest!22867 () (Array (_ BitVec 32) ValueCell!6680))

(assert (=> mapNonEmpty!22867 (= (arr!21342 _values!788) (store mapRest!22867 mapKey!22867 mapValue!22867))))

(declare-fun b!814047 () Bool)

(declare-fun e!451233 () Bool)

(declare-fun tp_is_empty!14191 () Bool)

(assert (=> b!814047 (= e!451233 tp_is_empty!14191)))

(declare-fun b!814049 () Bool)

(assert (=> b!814049 (= e!451232 tp_is_empty!14191)))

(declare-fun b!814050 () Bool)

(declare-fun e!451231 () Bool)

(assert (=> b!814050 (= e!451231 (and e!451233 mapRes!22867))))

(declare-fun condMapEmpty!22867 () Bool)

(declare-fun mapDefault!22867 () ValueCell!6680)

