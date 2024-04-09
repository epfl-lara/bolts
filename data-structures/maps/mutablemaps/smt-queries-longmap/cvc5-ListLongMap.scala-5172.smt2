; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70042 () Bool)

(assert start!70042)

(declare-fun b_free!12439 () Bool)

(declare-fun b_next!12439 () Bool)

(assert (=> start!70042 (= b_free!12439 (not b_next!12439))))

(declare-fun tp!44032 () Bool)

(declare-fun b_and!21229 () Bool)

(assert (=> start!70042 (= tp!44032 b_and!21229)))

(declare-fun b!813605 () Bool)

(declare-fun res!555904 () Bool)

(declare-fun e!450917 () Bool)

(assert (=> b!813605 (=> (not res!555904) (not e!450917))))

(declare-datatypes ((array!44488 0))(
  ( (array!44489 (arr!21300 (Array (_ BitVec 32) (_ BitVec 64))) (size!21721 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44488)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23867 0))(
  ( (V!23868 (val!7122 Int)) )
))
(declare-datatypes ((ValueCell!6659 0))(
  ( (ValueCellFull!6659 (v!9545 V!23867)) (EmptyCell!6659) )
))
(declare-datatypes ((array!44490 0))(
  ( (array!44491 (arr!21301 (Array (_ BitVec 32) ValueCell!6659)) (size!21722 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44490)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813605 (= res!555904 (and (= (size!21722 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21721 _keys!976) (size!21722 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813606 () Bool)

(declare-fun res!555902 () Bool)

(assert (=> b!813606 (=> (not res!555902) (not e!450917))))

(declare-datatypes ((List!15210 0))(
  ( (Nil!15207) (Cons!15206 (h!16335 (_ BitVec 64)) (t!21535 List!15210)) )
))
(declare-fun arrayNoDuplicates!0 (array!44488 (_ BitVec 32) List!15210) Bool)

(assert (=> b!813606 (= res!555902 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15207))))

(declare-fun b!813607 () Bool)

(declare-fun res!555905 () Bool)

(assert (=> b!813607 (=> (not res!555905) (not e!450917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44488 (_ BitVec 32)) Bool)

(assert (=> b!813607 (= res!555905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813608 () Bool)

(declare-fun e!450918 () Bool)

(declare-fun tp_is_empty!14149 () Bool)

(assert (=> b!813608 (= e!450918 tp_is_empty!14149)))

(declare-fun b!813609 () Bool)

(declare-fun e!450920 () Bool)

(declare-fun e!450919 () Bool)

(declare-fun mapRes!22804 () Bool)

(assert (=> b!813609 (= e!450920 (and e!450919 mapRes!22804))))

(declare-fun condMapEmpty!22804 () Bool)

(declare-fun mapDefault!22804 () ValueCell!6659)

