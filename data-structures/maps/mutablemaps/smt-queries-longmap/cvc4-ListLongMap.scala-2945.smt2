; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41888 () Bool)

(assert start!41888)

(declare-fun b_free!11483 () Bool)

(declare-fun b_next!11483 () Bool)

(assert (=> start!41888 (= b_free!11483 (not b_next!11483))))

(declare-fun tp!40459 () Bool)

(declare-fun b_and!19881 () Bool)

(assert (=> start!41888 (= tp!40459 b_and!19881)))

(declare-fun b!467423 () Bool)

(declare-fun res!279433 () Bool)

(declare-fun e!273457 () Bool)

(assert (=> b!467423 (=> (not res!279433) (not e!273457))))

(declare-datatypes ((array!29557 0))(
  ( (array!29558 (arr!14203 (Array (_ BitVec 32) (_ BitVec 64))) (size!14555 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29557)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29557 (_ BitVec 32)) Bool)

(assert (=> b!467423 (= res!279433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21055 () Bool)

(declare-fun mapRes!21055 () Bool)

(assert (=> mapIsEmpty!21055 mapRes!21055))

(declare-fun b!467424 () Bool)

(declare-fun e!273456 () Bool)

(declare-fun tp_is_empty!12911 () Bool)

(assert (=> b!467424 (= e!273456 tp_is_empty!12911)))

(declare-fun b!467425 () Bool)

(declare-fun e!273455 () Bool)

(assert (=> b!467425 (= e!273455 tp_is_empty!12911)))

(declare-fun b!467426 () Bool)

(declare-fun res!279434 () Bool)

(assert (=> b!467426 (=> (not res!279434) (not e!273457))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18319 0))(
  ( (V!18320 (val!6500 Int)) )
))
(declare-datatypes ((ValueCell!6112 0))(
  ( (ValueCellFull!6112 (v!8785 V!18319)) (EmptyCell!6112) )
))
(declare-datatypes ((array!29559 0))(
  ( (array!29560 (arr!14204 (Array (_ BitVec 32) ValueCell!6112)) (size!14556 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29559)

(assert (=> b!467426 (= res!279434 (and (= (size!14556 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14555 _keys!1025) (size!14556 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467427 () Bool)

(declare-fun res!279435 () Bool)

(assert (=> b!467427 (=> (not res!279435) (not e!273457))))

(declare-datatypes ((List!8637 0))(
  ( (Nil!8634) (Cons!8633 (h!9489 (_ BitVec 64)) (t!14599 List!8637)) )
))
(declare-fun arrayNoDuplicates!0 (array!29557 (_ BitVec 32) List!8637) Bool)

(assert (=> b!467427 (= res!279435 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8634))))

(declare-fun mapNonEmpty!21055 () Bool)

(declare-fun tp!40458 () Bool)

(assert (=> mapNonEmpty!21055 (= mapRes!21055 (and tp!40458 e!273455))))

(declare-fun mapRest!21055 () (Array (_ BitVec 32) ValueCell!6112))

(declare-fun mapValue!21055 () ValueCell!6112)

(declare-fun mapKey!21055 () (_ BitVec 32))

(assert (=> mapNonEmpty!21055 (= (arr!14204 _values!833) (store mapRest!21055 mapKey!21055 mapValue!21055))))

(declare-fun b!467429 () Bool)

(declare-fun e!273454 () Bool)

(assert (=> b!467429 (= e!273454 (and e!273456 mapRes!21055))))

(declare-fun condMapEmpty!21055 () Bool)

(declare-fun mapDefault!21055 () ValueCell!6112)

