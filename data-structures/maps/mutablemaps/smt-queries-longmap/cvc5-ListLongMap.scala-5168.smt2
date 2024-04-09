; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70018 () Bool)

(assert start!70018)

(declare-fun b_free!12415 () Bool)

(declare-fun b_next!12415 () Bool)

(assert (=> start!70018 (= b_free!12415 (not b_next!12415))))

(declare-fun tp!43959 () Bool)

(declare-fun b_and!21205 () Bool)

(assert (=> start!70018 (= tp!43959 b_and!21205)))

(declare-fun b!813353 () Bool)

(declare-fun res!555761 () Bool)

(declare-fun e!450736 () Bool)

(assert (=> b!813353 (=> (not res!555761) (not e!450736))))

(declare-datatypes ((array!44440 0))(
  ( (array!44441 (arr!21276 (Array (_ BitVec 32) (_ BitVec 64))) (size!21697 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44440)

(declare-datatypes ((List!15190 0))(
  ( (Nil!15187) (Cons!15186 (h!16315 (_ BitVec 64)) (t!21515 List!15190)) )
))
(declare-fun arrayNoDuplicates!0 (array!44440 (_ BitVec 32) List!15190) Bool)

(assert (=> b!813353 (= res!555761 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15187))))

(declare-fun b!813354 () Bool)

(declare-fun res!555760 () Bool)

(assert (=> b!813354 (=> (not res!555760) (not e!450736))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23835 0))(
  ( (V!23836 (val!7110 Int)) )
))
(declare-datatypes ((ValueCell!6647 0))(
  ( (ValueCellFull!6647 (v!9533 V!23835)) (EmptyCell!6647) )
))
(declare-datatypes ((array!44442 0))(
  ( (array!44443 (arr!21277 (Array (_ BitVec 32) ValueCell!6647)) (size!21698 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44442)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813354 (= res!555760 (and (= (size!21698 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21697 _keys!976) (size!21698 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!555758 () Bool)

(assert (=> start!70018 (=> (not res!555758) (not e!450736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70018 (= res!555758 (validMask!0 mask!1312))))

(assert (=> start!70018 e!450736))

(declare-fun tp_is_empty!14125 () Bool)

(assert (=> start!70018 tp_is_empty!14125))

(declare-fun array_inv!17017 (array!44440) Bool)

(assert (=> start!70018 (array_inv!17017 _keys!976)))

(assert (=> start!70018 true))

(declare-fun e!450739 () Bool)

(declare-fun array_inv!17018 (array!44442) Bool)

(assert (=> start!70018 (and (array_inv!17018 _values!788) e!450739)))

(assert (=> start!70018 tp!43959))

(declare-fun b!813355 () Bool)

(declare-fun e!450737 () Bool)

(assert (=> b!813355 (= e!450737 tp_is_empty!14125)))

(declare-fun b!813356 () Bool)

(declare-fun res!555759 () Bool)

(assert (=> b!813356 (=> (not res!555759) (not e!450736))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44440 (_ BitVec 32)) Bool)

(assert (=> b!813356 (= res!555759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22768 () Bool)

(declare-fun mapRes!22768 () Bool)

(assert (=> mapIsEmpty!22768 mapRes!22768))

(declare-fun b!813357 () Bool)

(declare-fun e!450740 () Bool)

(assert (=> b!813357 (= e!450740 tp_is_empty!14125)))

(declare-fun b!813358 () Bool)

(assert (=> b!813358 (= e!450739 (and e!450737 mapRes!22768))))

(declare-fun condMapEmpty!22768 () Bool)

(declare-fun mapDefault!22768 () ValueCell!6647)

