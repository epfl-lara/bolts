; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70654 () Bool)

(assert start!70654)

(declare-fun b_free!12917 () Bool)

(declare-fun b_next!12917 () Bool)

(assert (=> start!70654 (= b_free!12917 (not b_next!12917))))

(declare-fun tp!45490 () Bool)

(declare-fun b_and!21789 () Bool)

(assert (=> start!70654 (= tp!45490 b_and!21789)))

(declare-fun mapNonEmpty!23545 () Bool)

(declare-fun mapRes!23545 () Bool)

(declare-fun tp!45489 () Bool)

(declare-fun e!455799 () Bool)

(assert (=> mapNonEmpty!23545 (= mapRes!23545 (and tp!45489 e!455799))))

(declare-datatypes ((V!24503 0))(
  ( (V!24504 (val!7361 Int)) )
))
(declare-datatypes ((ValueCell!6898 0))(
  ( (ValueCellFull!6898 (v!9788 V!24503)) (EmptyCell!6898) )
))
(declare-fun mapValue!23545 () ValueCell!6898)

(declare-fun mapRest!23545 () (Array (_ BitVec 32) ValueCell!6898))

(declare-datatypes ((array!45416 0))(
  ( (array!45417 (arr!21756 (Array (_ BitVec 32) ValueCell!6898)) (size!22177 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45416)

(declare-fun mapKey!23545 () (_ BitVec 32))

(assert (=> mapNonEmpty!23545 (= (arr!21756 _values!788) (store mapRest!23545 mapKey!23545 mapValue!23545))))

(declare-fun res!559839 () Bool)

(declare-fun e!455797 () Bool)

(assert (=> start!70654 (=> (not res!559839) (not e!455797))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70654 (= res!559839 (validMask!0 mask!1312))))

(assert (=> start!70654 e!455797))

(declare-fun tp_is_empty!14627 () Bool)

(assert (=> start!70654 tp_is_empty!14627))

(declare-datatypes ((array!45418 0))(
  ( (array!45419 (arr!21757 (Array (_ BitVec 32) (_ BitVec 64))) (size!22178 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45418)

(declare-fun array_inv!17357 (array!45418) Bool)

(assert (=> start!70654 (array_inv!17357 _keys!976)))

(assert (=> start!70654 true))

(declare-fun e!455798 () Bool)

(declare-fun array_inv!17358 (array!45416) Bool)

(assert (=> start!70654 (and (array_inv!17358 _values!788) e!455798)))

(assert (=> start!70654 tp!45490))

(declare-fun mapIsEmpty!23545 () Bool)

(assert (=> mapIsEmpty!23545 mapRes!23545))

(declare-fun b!820350 () Bool)

(declare-fun res!559838 () Bool)

(assert (=> b!820350 (=> (not res!559838) (not e!455797))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45418 (_ BitVec 32)) Bool)

(assert (=> b!820350 (= res!559838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820351 () Bool)

(declare-fun res!559836 () Bool)

(assert (=> b!820351 (=> (not res!559836) (not e!455797))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!820351 (= res!559836 (and (= (size!22177 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22178 _keys!976) (size!22177 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820352 () Bool)

(declare-fun res!559837 () Bool)

(assert (=> b!820352 (=> (not res!559837) (not e!455797))))

(declare-datatypes ((List!15562 0))(
  ( (Nil!15559) (Cons!15558 (h!16687 (_ BitVec 64)) (t!21903 List!15562)) )
))
(declare-fun arrayNoDuplicates!0 (array!45418 (_ BitVec 32) List!15562) Bool)

(assert (=> b!820352 (= res!559837 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15559))))

(declare-fun b!820353 () Bool)

(declare-fun e!455795 () Bool)

(assert (=> b!820353 (= e!455798 (and e!455795 mapRes!23545))))

(declare-fun condMapEmpty!23545 () Bool)

(declare-fun mapDefault!23545 () ValueCell!6898)

