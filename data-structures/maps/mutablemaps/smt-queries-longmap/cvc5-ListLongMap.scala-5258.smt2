; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70692 () Bool)

(assert start!70692)

(declare-fun b_free!12955 () Bool)

(declare-fun b_next!12955 () Bool)

(assert (=> start!70692 (= b_free!12955 (not b_next!12955))))

(declare-fun tp!45604 () Bool)

(declare-fun b_and!21827 () Bool)

(assert (=> start!70692 (= tp!45604 b_and!21827)))

(declare-fun b!820749 () Bool)

(declare-fun res!560065 () Bool)

(declare-fun e!456082 () Bool)

(assert (=> b!820749 (=> (not res!560065) (not e!456082))))

(declare-datatypes ((array!45490 0))(
  ( (array!45491 (arr!21793 (Array (_ BitVec 32) (_ BitVec 64))) (size!22214 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45490)

(declare-datatypes ((List!15587 0))(
  ( (Nil!15584) (Cons!15583 (h!16712 (_ BitVec 64)) (t!21928 List!15587)) )
))
(declare-fun arrayNoDuplicates!0 (array!45490 (_ BitVec 32) List!15587) Bool)

(assert (=> b!820749 (= res!560065 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15584))))

(declare-fun mapIsEmpty!23602 () Bool)

(declare-fun mapRes!23602 () Bool)

(assert (=> mapIsEmpty!23602 mapRes!23602))

(declare-fun mapNonEmpty!23602 () Bool)

(declare-fun tp!45603 () Bool)

(declare-fun e!456080 () Bool)

(assert (=> mapNonEmpty!23602 (= mapRes!23602 (and tp!45603 e!456080))))

(declare-fun mapKey!23602 () (_ BitVec 32))

(declare-datatypes ((V!24555 0))(
  ( (V!24556 (val!7380 Int)) )
))
(declare-datatypes ((ValueCell!6917 0))(
  ( (ValueCellFull!6917 (v!9807 V!24555)) (EmptyCell!6917) )
))
(declare-datatypes ((array!45492 0))(
  ( (array!45493 (arr!21794 (Array (_ BitVec 32) ValueCell!6917)) (size!22215 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45492)

(declare-fun mapRest!23602 () (Array (_ BitVec 32) ValueCell!6917))

(declare-fun mapValue!23602 () ValueCell!6917)

(assert (=> mapNonEmpty!23602 (= (arr!21794 _values!788) (store mapRest!23602 mapKey!23602 mapValue!23602))))

(declare-fun b!820750 () Bool)

(declare-fun res!560066 () Bool)

(assert (=> b!820750 (=> (not res!560066) (not e!456082))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45490 (_ BitVec 32)) Bool)

(assert (=> b!820750 (= res!560066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820751 () Bool)

(declare-fun tp_is_empty!14665 () Bool)

(assert (=> b!820751 (= e!456080 tp_is_empty!14665)))

(declare-fun b!820752 () Bool)

(declare-fun res!560064 () Bool)

(assert (=> b!820752 (=> (not res!560064) (not e!456082))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!820752 (= res!560064 (and (= (size!22215 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22214 _keys!976) (size!22215 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820753 () Bool)

(declare-fun e!456083 () Bool)

(declare-fun e!456084 () Bool)

(assert (=> b!820753 (= e!456083 (and e!456084 mapRes!23602))))

(declare-fun condMapEmpty!23602 () Bool)

(declare-fun mapDefault!23602 () ValueCell!6917)

