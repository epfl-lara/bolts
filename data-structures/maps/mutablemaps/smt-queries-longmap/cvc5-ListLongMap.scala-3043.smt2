; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42708 () Bool)

(assert start!42708)

(declare-fun b_free!12067 () Bool)

(declare-fun b_next!12067 () Bool)

(assert (=> start!42708 (= b_free!12067 (not b_next!12067))))

(declare-fun tp!42252 () Bool)

(declare-fun b_and!20609 () Bool)

(assert (=> start!42708 (= tp!42252 b_and!20609)))

(declare-fun mapIsEmpty!21973 () Bool)

(declare-fun mapRes!21973 () Bool)

(assert (=> mapIsEmpty!21973 mapRes!21973))

(declare-fun b!476051 () Bool)

(declare-fun res!284271 () Bool)

(declare-fun e!279603 () Bool)

(assert (=> b!476051 (=> (not res!284271) (not e!279603))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30703 0))(
  ( (array!30704 (arr!14762 (Array (_ BitVec 32) (_ BitVec 64))) (size!15114 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30703)

(declare-datatypes ((V!19099 0))(
  ( (V!19100 (val!6792 Int)) )
))
(declare-datatypes ((ValueCell!6404 0))(
  ( (ValueCellFull!6404 (v!9084 V!19099)) (EmptyCell!6404) )
))
(declare-datatypes ((array!30705 0))(
  ( (array!30706 (arr!14763 (Array (_ BitVec 32) ValueCell!6404)) (size!15115 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30705)

(assert (=> b!476051 (= res!284271 (and (= (size!15115 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15114 _keys!1025) (size!15115 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!284272 () Bool)

(assert (=> start!42708 (=> (not res!284272) (not e!279603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42708 (= res!284272 (validMask!0 mask!1365))))

(assert (=> start!42708 e!279603))

(declare-fun tp_is_empty!13495 () Bool)

(assert (=> start!42708 tp_is_empty!13495))

(assert (=> start!42708 tp!42252))

(assert (=> start!42708 true))

(declare-fun array_inv!10640 (array!30703) Bool)

(assert (=> start!42708 (array_inv!10640 _keys!1025)))

(declare-fun e!279604 () Bool)

(declare-fun array_inv!10641 (array!30705) Bool)

(assert (=> start!42708 (and (array_inv!10641 _values!833) e!279604)))

(declare-fun b!476052 () Bool)

(declare-fun e!279608 () Bool)

(assert (=> b!476052 (= e!279604 (and e!279608 mapRes!21973))))

(declare-fun condMapEmpty!21973 () Bool)

(declare-fun mapDefault!21973 () ValueCell!6404)

