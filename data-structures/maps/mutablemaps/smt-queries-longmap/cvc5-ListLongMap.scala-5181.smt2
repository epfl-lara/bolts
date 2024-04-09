; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70096 () Bool)

(assert start!70096)

(declare-fun b_free!12493 () Bool)

(declare-fun b_next!12493 () Bool)

(assert (=> start!70096 (= b_free!12493 (not b_next!12493))))

(declare-fun tp!44193 () Bool)

(declare-fun b_and!21283 () Bool)

(assert (=> start!70096 (= tp!44193 b_and!21283)))

(declare-fun mapIsEmpty!22885 () Bool)

(declare-fun mapRes!22885 () Bool)

(assert (=> mapIsEmpty!22885 mapRes!22885))

(declare-fun mapNonEmpty!22885 () Bool)

(declare-fun tp!44194 () Bool)

(declare-fun e!451324 () Bool)

(assert (=> mapNonEmpty!22885 (= mapRes!22885 (and tp!44194 e!451324))))

(declare-datatypes ((V!23939 0))(
  ( (V!23940 (val!7149 Int)) )
))
(declare-datatypes ((ValueCell!6686 0))(
  ( (ValueCellFull!6686 (v!9572 V!23939)) (EmptyCell!6686) )
))
(declare-datatypes ((array!44594 0))(
  ( (array!44595 (arr!21353 (Array (_ BitVec 32) ValueCell!6686)) (size!21774 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44594)

(declare-fun mapValue!22885 () ValueCell!6686)

(declare-fun mapKey!22885 () (_ BitVec 32))

(declare-fun mapRest!22885 () (Array (_ BitVec 32) ValueCell!6686))

(assert (=> mapNonEmpty!22885 (= (arr!21353 _values!788) (store mapRest!22885 mapKey!22885 mapValue!22885))))

(declare-fun b!814172 () Bool)

(declare-fun res!556227 () Bool)

(declare-fun e!451323 () Bool)

(assert (=> b!814172 (=> (not res!556227) (not e!451323))))

(declare-datatypes ((array!44596 0))(
  ( (array!44597 (arr!21354 (Array (_ BitVec 32) (_ BitVec 64))) (size!21775 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44596)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814172 (= res!556227 (and (= (size!21774 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21775 _keys!976) (size!21774 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814173 () Bool)

(declare-fun res!556229 () Bool)

(assert (=> b!814173 (=> (not res!556229) (not e!451323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44596 (_ BitVec 32)) Bool)

(assert (=> b!814173 (= res!556229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814174 () Bool)

(declare-fun res!556228 () Bool)

(assert (=> b!814174 (=> (not res!556228) (not e!451323))))

(declare-datatypes ((List!15250 0))(
  ( (Nil!15247) (Cons!15246 (h!16375 (_ BitVec 64)) (t!21575 List!15250)) )
))
(declare-fun arrayNoDuplicates!0 (array!44596 (_ BitVec 32) List!15250) Bool)

(assert (=> b!814174 (= res!556228 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15247))))

(declare-fun b!814175 () Bool)

(declare-fun e!451321 () Bool)

(declare-fun e!451322 () Bool)

(assert (=> b!814175 (= e!451321 (and e!451322 mapRes!22885))))

(declare-fun condMapEmpty!22885 () Bool)

(declare-fun mapDefault!22885 () ValueCell!6686)

