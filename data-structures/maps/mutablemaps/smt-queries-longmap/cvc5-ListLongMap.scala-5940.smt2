; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77484 () Bool)

(assert start!77484)

(declare-fun b!902536 () Bool)

(declare-fun e!505555 () Bool)

(declare-fun tp_is_empty!18469 () Bool)

(assert (=> b!902536 (= e!505555 tp_is_empty!18469)))

(declare-fun b!902537 () Bool)

(declare-fun e!505556 () Bool)

(assert (=> b!902537 (= e!505556 tp_is_empty!18469)))

(declare-fun b!902538 () Bool)

(declare-fun res!609151 () Bool)

(declare-fun e!505554 () Bool)

(assert (=> b!902538 (=> (not res!609151) (not e!505554))))

(declare-datatypes ((V!29591 0))(
  ( (V!29592 (val!9285 Int)) )
))
(declare-datatypes ((ValueCell!8753 0))(
  ( (ValueCellFull!8753 (v!11790 V!29591)) (EmptyCell!8753) )
))
(declare-datatypes ((array!52990 0))(
  ( (array!52991 (arr!25451 (Array (_ BitVec 32) ValueCell!8753)) (size!25911 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52990)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52992 0))(
  ( (array!52993 (arr!25452 (Array (_ BitVec 32) (_ BitVec 64))) (size!25912 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52992)

(assert (=> b!902538 (= res!609151 (and (= (size!25911 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25912 _keys!1386) (size!25911 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29413 () Bool)

(declare-fun mapRes!29413 () Bool)

(declare-fun tp!56473 () Bool)

(assert (=> mapNonEmpty!29413 (= mapRes!29413 (and tp!56473 e!505555))))

(declare-fun mapKey!29413 () (_ BitVec 32))

(declare-fun mapValue!29413 () ValueCell!8753)

(declare-fun mapRest!29413 () (Array (_ BitVec 32) ValueCell!8753))

(assert (=> mapNonEmpty!29413 (= (arr!25451 _values!1152) (store mapRest!29413 mapKey!29413 mapValue!29413))))

(declare-fun b!902539 () Bool)

(declare-fun e!505552 () Bool)

(assert (=> b!902539 (= e!505552 (and e!505556 mapRes!29413))))

(declare-fun condMapEmpty!29413 () Bool)

(declare-fun mapDefault!29413 () ValueCell!8753)

