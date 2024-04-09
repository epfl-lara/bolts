; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70794 () Bool)

(assert start!70794)

(declare-fun b_free!13027 () Bool)

(declare-fun b_next!13027 () Bool)

(assert (=> start!70794 (= b_free!13027 (not b_next!13027))))

(declare-fun tp!45825 () Bool)

(declare-fun b_and!21917 () Bool)

(assert (=> start!70794 (= tp!45825 b_and!21917)))

(declare-fun b!821839 () Bool)

(declare-fun e!456875 () Bool)

(declare-fun tp_is_empty!14737 () Bool)

(assert (=> b!821839 (= e!456875 tp_is_empty!14737)))

(declare-fun b!821840 () Bool)

(declare-fun e!456870 () Bool)

(assert (=> b!821840 (= e!456870 tp_is_empty!14737)))

(declare-fun b!821842 () Bool)

(declare-fun res!560690 () Bool)

(declare-fun e!456871 () Bool)

(assert (=> b!821842 (=> (not res!560690) (not e!456871))))

(declare-datatypes ((array!45628 0))(
  ( (array!45629 (arr!21860 (Array (_ BitVec 32) (_ BitVec 64))) (size!22281 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45628)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45628 (_ BitVec 32)) Bool)

(assert (=> b!821842 (= res!560690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821843 () Bool)

(declare-fun res!560687 () Bool)

(assert (=> b!821843 (=> (not res!560687) (not e!456871))))

(declare-datatypes ((List!15643 0))(
  ( (Nil!15640) (Cons!15639 (h!16768 (_ BitVec 64)) (t!21988 List!15643)) )
))
(declare-fun arrayNoDuplicates!0 (array!45628 (_ BitVec 32) List!15643) Bool)

(assert (=> b!821843 (= res!560687 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15640))))

(declare-fun mapIsEmpty!23716 () Bool)

(declare-fun mapRes!23716 () Bool)

(assert (=> mapIsEmpty!23716 mapRes!23716))

(declare-fun b!821844 () Bool)

(declare-fun res!560689 () Bool)

(assert (=> b!821844 (=> (not res!560689) (not e!456871))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24651 0))(
  ( (V!24652 (val!7416 Int)) )
))
(declare-datatypes ((ValueCell!6953 0))(
  ( (ValueCellFull!6953 (v!9843 V!24651)) (EmptyCell!6953) )
))
(declare-datatypes ((array!45630 0))(
  ( (array!45631 (arr!21861 (Array (_ BitVec 32) ValueCell!6953)) (size!22282 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45630)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821844 (= res!560689 (and (= (size!22282 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22281 _keys!976) (size!22282 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23716 () Bool)

(declare-fun tp!45826 () Bool)

(assert (=> mapNonEmpty!23716 (= mapRes!23716 (and tp!45826 e!456870))))

(declare-fun mapValue!23716 () ValueCell!6953)

(declare-fun mapKey!23716 () (_ BitVec 32))

(declare-fun mapRest!23716 () (Array (_ BitVec 32) ValueCell!6953))

(assert (=> mapNonEmpty!23716 (= (arr!21861 _values!788) (store mapRest!23716 mapKey!23716 mapValue!23716))))

(declare-fun b!821845 () Bool)

(declare-fun e!456873 () Bool)

(assert (=> b!821845 (= e!456873 (and e!456875 mapRes!23716))))

(declare-fun condMapEmpty!23716 () Bool)

(declare-fun mapDefault!23716 () ValueCell!6953)

