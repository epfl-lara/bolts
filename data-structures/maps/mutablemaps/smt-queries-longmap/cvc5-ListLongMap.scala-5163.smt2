; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69976 () Bool)

(assert start!69976)

(declare-fun b_free!12385 () Bool)

(declare-fun b_next!12385 () Bool)

(assert (=> start!69976 (= b_free!12385 (not b_next!12385))))

(declare-fun tp!43867 () Bool)

(declare-fun b_and!21171 () Bool)

(assert (=> start!69976 (= tp!43867 b_and!21171)))

(declare-fun b!812965 () Bool)

(declare-fun res!555554 () Bool)

(declare-fun e!450464 () Bool)

(assert (=> b!812965 (=> (not res!555554) (not e!450464))))

(declare-datatypes ((array!44380 0))(
  ( (array!44381 (arr!21247 (Array (_ BitVec 32) (_ BitVec 64))) (size!21668 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44380)

(declare-datatypes ((List!15167 0))(
  ( (Nil!15164) (Cons!15163 (h!16292 (_ BitVec 64)) (t!21490 List!15167)) )
))
(declare-fun arrayNoDuplicates!0 (array!44380 (_ BitVec 32) List!15167) Bool)

(assert (=> b!812965 (= res!555554 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15164))))

(declare-fun mapIsEmpty!22720 () Bool)

(declare-fun mapRes!22720 () Bool)

(assert (=> mapIsEmpty!22720 mapRes!22720))

(declare-fun res!555552 () Bool)

(assert (=> start!69976 (=> (not res!555552) (not e!450464))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69976 (= res!555552 (validMask!0 mask!1312))))

(assert (=> start!69976 e!450464))

(declare-fun tp_is_empty!14095 () Bool)

(assert (=> start!69976 tp_is_empty!14095))

(declare-fun array_inv!16991 (array!44380) Bool)

(assert (=> start!69976 (array_inv!16991 _keys!976)))

(assert (=> start!69976 true))

(declare-datatypes ((V!23795 0))(
  ( (V!23796 (val!7095 Int)) )
))
(declare-datatypes ((ValueCell!6632 0))(
  ( (ValueCellFull!6632 (v!9518 V!23795)) (EmptyCell!6632) )
))
(declare-datatypes ((array!44382 0))(
  ( (array!44383 (arr!21248 (Array (_ BitVec 32) ValueCell!6632)) (size!21669 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44382)

(declare-fun e!450463 () Bool)

(declare-fun array_inv!16992 (array!44382) Bool)

(assert (=> start!69976 (and (array_inv!16992 _values!788) e!450463)))

(assert (=> start!69976 tp!43867))

(declare-fun b!812966 () Bool)

(declare-fun res!555553 () Bool)

(assert (=> b!812966 (=> (not res!555553) (not e!450464))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812966 (= res!555553 (and (= (size!21669 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21668 _keys!976) (size!21669 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22720 () Bool)

(declare-fun tp!43866 () Bool)

(declare-fun e!450467 () Bool)

(assert (=> mapNonEmpty!22720 (= mapRes!22720 (and tp!43866 e!450467))))

(declare-fun mapKey!22720 () (_ BitVec 32))

(declare-fun mapValue!22720 () ValueCell!6632)

(declare-fun mapRest!22720 () (Array (_ BitVec 32) ValueCell!6632))

(assert (=> mapNonEmpty!22720 (= (arr!21248 _values!788) (store mapRest!22720 mapKey!22720 mapValue!22720))))

(declare-fun b!812967 () Bool)

(assert (=> b!812967 (= e!450467 tp_is_empty!14095)))

(declare-fun b!812968 () Bool)

(declare-fun e!450465 () Bool)

(assert (=> b!812968 (= e!450463 (and e!450465 mapRes!22720))))

(declare-fun condMapEmpty!22720 () Bool)

(declare-fun mapDefault!22720 () ValueCell!6632)

