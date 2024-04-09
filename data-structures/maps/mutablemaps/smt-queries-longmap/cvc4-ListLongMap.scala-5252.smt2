; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70660 () Bool)

(assert start!70660)

(declare-fun b_free!12923 () Bool)

(declare-fun b_next!12923 () Bool)

(assert (=> start!70660 (= b_free!12923 (not b_next!12923))))

(declare-fun tp!45507 () Bool)

(declare-fun b_and!21795 () Bool)

(assert (=> start!70660 (= tp!45507 b_and!21795)))

(declare-fun b!820413 () Bool)

(declare-fun e!455841 () Bool)

(declare-fun tp_is_empty!14633 () Bool)

(assert (=> b!820413 (= e!455841 tp_is_empty!14633)))

(declare-fun mapNonEmpty!23554 () Bool)

(declare-fun mapRes!23554 () Bool)

(declare-fun tp!45508 () Bool)

(assert (=> mapNonEmpty!23554 (= mapRes!23554 (and tp!45508 e!455841))))

(declare-fun mapKey!23554 () (_ BitVec 32))

(declare-datatypes ((V!24511 0))(
  ( (V!24512 (val!7364 Int)) )
))
(declare-datatypes ((ValueCell!6901 0))(
  ( (ValueCellFull!6901 (v!9791 V!24511)) (EmptyCell!6901) )
))
(declare-datatypes ((array!45428 0))(
  ( (array!45429 (arr!21762 (Array (_ BitVec 32) ValueCell!6901)) (size!22183 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45428)

(declare-fun mapValue!23554 () ValueCell!6901)

(declare-fun mapRest!23554 () (Array (_ BitVec 32) ValueCell!6901))

(assert (=> mapNonEmpty!23554 (= (arr!21762 _values!788) (store mapRest!23554 mapKey!23554 mapValue!23554))))

(declare-fun b!820414 () Bool)

(declare-fun res!559875 () Bool)

(declare-fun e!455844 () Bool)

(assert (=> b!820414 (=> (not res!559875) (not e!455844))))

(declare-datatypes ((array!45430 0))(
  ( (array!45431 (arr!21763 (Array (_ BitVec 32) (_ BitVec 64))) (size!22184 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45430)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!820414 (= res!559875 (and (= (size!22183 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22184 _keys!976) (size!22183 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820415 () Bool)

(declare-fun e!455840 () Bool)

(declare-fun e!455843 () Bool)

(assert (=> b!820415 (= e!455840 (and e!455843 mapRes!23554))))

(declare-fun condMapEmpty!23554 () Bool)

(declare-fun mapDefault!23554 () ValueCell!6901)

