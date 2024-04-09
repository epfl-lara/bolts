; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69826 () Bool)

(assert start!69826)

(declare-fun mapNonEmpty!22552 () Bool)

(declare-fun mapRes!22552 () Bool)

(declare-fun tp!43660 () Bool)

(declare-fun e!449584 () Bool)

(assert (=> mapNonEmpty!22552 (= mapRes!22552 (and tp!43660 e!449584))))

(declare-fun mapKey!22552 () (_ BitVec 32))

(declare-datatypes ((V!23659 0))(
  ( (V!23660 (val!7044 Int)) )
))
(declare-datatypes ((ValueCell!6581 0))(
  ( (ValueCellFull!6581 (v!9466 V!23659)) (EmptyCell!6581) )
))
(declare-fun mapRest!22552 () (Array (_ BitVec 32) ValueCell!6581))

(declare-fun mapValue!22552 () ValueCell!6581)

(declare-datatypes ((array!44180 0))(
  ( (array!44181 (arr!21152 (Array (_ BitVec 32) ValueCell!6581)) (size!21573 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44180)

(assert (=> mapNonEmpty!22552 (= (arr!21152 _values!788) (store mapRest!22552 mapKey!22552 mapValue!22552))))

(declare-fun b!811829 () Bool)

(declare-fun e!449586 () Bool)

(declare-fun tp_is_empty!13993 () Bool)

(assert (=> b!811829 (= e!449586 tp_is_empty!13993)))

(declare-fun b!811830 () Bool)

(assert (=> b!811830 (= e!449584 tp_is_empty!13993)))

(declare-fun b!811831 () Bool)

(declare-fun res!554950 () Bool)

(declare-fun e!449585 () Bool)

(assert (=> b!811831 (=> (not res!554950) (not e!449585))))

(declare-datatypes ((array!44182 0))(
  ( (array!44183 (arr!21153 (Array (_ BitVec 32) (_ BitVec 64))) (size!21574 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44182)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!811831 (= res!554950 (and (= (size!21573 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21574 _keys!976) (size!21573 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!811832 () Bool)

(declare-fun res!554951 () Bool)

(assert (=> b!811832 (=> (not res!554951) (not e!449585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44182 (_ BitVec 32)) Bool)

(assert (=> b!811832 (= res!554951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!554952 () Bool)

(assert (=> start!69826 (=> (not res!554952) (not e!449585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69826 (= res!554952 (validMask!0 mask!1312))))

(assert (=> start!69826 e!449585))

(declare-fun array_inv!16925 (array!44182) Bool)

(assert (=> start!69826 (array_inv!16925 _keys!976)))

(assert (=> start!69826 true))

(declare-fun e!449583 () Bool)

(declare-fun array_inv!16926 (array!44180) Bool)

(assert (=> start!69826 (and (array_inv!16926 _values!788) e!449583)))

(declare-fun mapIsEmpty!22552 () Bool)

(assert (=> mapIsEmpty!22552 mapRes!22552))

(declare-fun b!811833 () Bool)

(assert (=> b!811833 (= e!449583 (and e!449586 mapRes!22552))))

(declare-fun condMapEmpty!22552 () Bool)

(declare-fun mapDefault!22552 () ValueCell!6581)

