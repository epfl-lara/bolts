; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70554 () Bool)

(assert start!70554)

(declare-fun b_free!12857 () Bool)

(declare-fun b_next!12857 () Bool)

(assert (=> start!70554 (= b_free!12857 (not b_next!12857))))

(declare-fun tp!45304 () Bool)

(declare-fun b_and!21705 () Bool)

(assert (=> start!70554 (= tp!45304 b_and!21705)))

(declare-fun res!559140 () Bool)

(declare-fun e!454948 () Bool)

(assert (=> start!70554 (=> (not res!559140) (not e!454948))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70554 (= res!559140 (validMask!0 mask!1312))))

(assert (=> start!70554 e!454948))

(declare-fun tp_is_empty!14567 () Bool)

(assert (=> start!70554 tp_is_empty!14567))

(declare-datatypes ((array!45302 0))(
  ( (array!45303 (arr!21701 (Array (_ BitVec 32) (_ BitVec 64))) (size!22122 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45302)

(declare-fun array_inv!17319 (array!45302) Bool)

(assert (=> start!70554 (array_inv!17319 _keys!976)))

(assert (=> start!70554 true))

(declare-datatypes ((V!24423 0))(
  ( (V!24424 (val!7331 Int)) )
))
(declare-datatypes ((ValueCell!6868 0))(
  ( (ValueCellFull!6868 (v!9756 V!24423)) (EmptyCell!6868) )
))
(declare-datatypes ((array!45304 0))(
  ( (array!45305 (arr!21702 (Array (_ BitVec 32) ValueCell!6868)) (size!22123 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45304)

(declare-fun e!454942 () Bool)

(declare-fun array_inv!17320 (array!45304) Bool)

(assert (=> start!70554 (and (array_inv!17320 _values!788) e!454942)))

(assert (=> start!70554 tp!45304))

(declare-fun b!819176 () Bool)

(declare-fun res!559141 () Bool)

(assert (=> b!819176 (=> (not res!559141) (not e!454948))))

(declare-datatypes ((List!15520 0))(
  ( (Nil!15517) (Cons!15516 (h!16645 (_ BitVec 64)) (t!21857 List!15520)) )
))
(declare-fun arrayNoDuplicates!0 (array!45302 (_ BitVec 32) List!15520) Bool)

(assert (=> b!819176 (= res!559141 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15517))))

(declare-fun mapIsEmpty!23449 () Bool)

(declare-fun mapRes!23449 () Bool)

(assert (=> mapIsEmpty!23449 mapRes!23449))

(declare-fun b!819177 () Bool)

(declare-fun res!559139 () Bool)

(assert (=> b!819177 (=> (not res!559139) (not e!454948))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!819177 (= res!559139 (and (= (size!22123 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22122 _keys!976) (size!22123 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819178 () Bool)

(declare-fun e!454947 () Bool)

(assert (=> b!819178 (= e!454942 (and e!454947 mapRes!23449))))

(declare-fun condMapEmpty!23449 () Bool)

(declare-fun mapDefault!23449 () ValueCell!6868)

