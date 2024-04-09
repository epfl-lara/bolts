; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69844 () Bool)

(assert start!69844)

(declare-fun mapIsEmpty!22570 () Bool)

(declare-fun mapRes!22570 () Bool)

(assert (=> mapIsEmpty!22570 mapRes!22570))

(declare-fun b!811939 () Bool)

(declare-fun e!449674 () Bool)

(declare-fun tp_is_empty!14003 () Bool)

(assert (=> b!811939 (= e!449674 tp_is_empty!14003)))

(declare-fun b!811940 () Bool)

(declare-fun res!555001 () Bool)

(declare-fun e!449673 () Bool)

(assert (=> b!811940 (=> (not res!555001) (not e!449673))))

(declare-datatypes ((array!44202 0))(
  ( (array!44203 (arr!21162 (Array (_ BitVec 32) (_ BitVec 64))) (size!21583 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44202)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44202 (_ BitVec 32)) Bool)

(assert (=> b!811940 (= res!555001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!811941 () Bool)

(declare-fun res!555002 () Bool)

(assert (=> b!811941 (=> (not res!555002) (not e!449673))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23671 0))(
  ( (V!23672 (val!7049 Int)) )
))
(declare-datatypes ((ValueCell!6586 0))(
  ( (ValueCellFull!6586 (v!9471 V!23671)) (EmptyCell!6586) )
))
(declare-datatypes ((array!44204 0))(
  ( (array!44205 (arr!21163 (Array (_ BitVec 32) ValueCell!6586)) (size!21584 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44204)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!811941 (= res!555002 (and (= (size!21584 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21583 _keys!976) (size!21584 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!811942 () Bool)

(declare-fun e!449672 () Bool)

(declare-fun e!449675 () Bool)

(assert (=> b!811942 (= e!449672 (and e!449675 mapRes!22570))))

(declare-fun condMapEmpty!22570 () Bool)

(declare-fun mapDefault!22570 () ValueCell!6586)

