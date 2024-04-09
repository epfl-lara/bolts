; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41882 () Bool)

(assert start!41882)

(declare-fun b_free!11477 () Bool)

(declare-fun b_next!11477 () Bool)

(assert (=> start!41882 (= b_free!11477 (not b_next!11477))))

(declare-fun tp!40440 () Bool)

(declare-fun b_and!19875 () Bool)

(assert (=> start!41882 (= tp!40440 b_and!19875)))

(declare-fun b!467360 () Bool)

(declare-fun res!279396 () Bool)

(declare-fun e!273412 () Bool)

(assert (=> b!467360 (=> (not res!279396) (not e!273412))))

(declare-datatypes ((array!29545 0))(
  ( (array!29546 (arr!14197 (Array (_ BitVec 32) (_ BitVec 64))) (size!14549 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29545)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29545 (_ BitVec 32)) Bool)

(assert (=> b!467360 (= res!279396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21046 () Bool)

(declare-fun mapRes!21046 () Bool)

(declare-fun tp!40441 () Bool)

(declare-fun e!273410 () Bool)

(assert (=> mapNonEmpty!21046 (= mapRes!21046 (and tp!40441 e!273410))))

(declare-datatypes ((V!18311 0))(
  ( (V!18312 (val!6497 Int)) )
))
(declare-datatypes ((ValueCell!6109 0))(
  ( (ValueCellFull!6109 (v!8782 V!18311)) (EmptyCell!6109) )
))
(declare-datatypes ((array!29547 0))(
  ( (array!29548 (arr!14198 (Array (_ BitVec 32) ValueCell!6109)) (size!14550 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29547)

(declare-fun mapValue!21046 () ValueCell!6109)

(declare-fun mapRest!21046 () (Array (_ BitVec 32) ValueCell!6109))

(declare-fun mapKey!21046 () (_ BitVec 32))

(assert (=> mapNonEmpty!21046 (= (arr!14198 _values!833) (store mapRest!21046 mapKey!21046 mapValue!21046))))

(declare-fun res!279399 () Bool)

(assert (=> start!41882 (=> (not res!279399) (not e!273412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41882 (= res!279399 (validMask!0 mask!1365))))

(assert (=> start!41882 e!273412))

(declare-fun tp_is_empty!12905 () Bool)

(assert (=> start!41882 tp_is_empty!12905))

(assert (=> start!41882 tp!40440))

(assert (=> start!41882 true))

(declare-fun array_inv!10238 (array!29545) Bool)

(assert (=> start!41882 (array_inv!10238 _keys!1025)))

(declare-fun e!273409 () Bool)

(declare-fun array_inv!10239 (array!29547) Bool)

(assert (=> start!41882 (and (array_inv!10239 _values!833) e!273409)))

(declare-fun b!467361 () Bool)

(declare-fun res!279397 () Bool)

(assert (=> b!467361 (=> (not res!279397) (not e!273412))))

(declare-datatypes ((List!8633 0))(
  ( (Nil!8630) (Cons!8629 (h!9485 (_ BitVec 64)) (t!14595 List!8633)) )
))
(declare-fun arrayNoDuplicates!0 (array!29545 (_ BitVec 32) List!8633) Bool)

(assert (=> b!467361 (= res!279397 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8630))))

(declare-fun b!467362 () Bool)

(declare-fun e!273411 () Bool)

(assert (=> b!467362 (= e!273411 tp_is_empty!12905)))

(declare-fun b!467363 () Bool)

(declare-fun res!279398 () Bool)

(assert (=> b!467363 (=> (not res!279398) (not e!273412))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467363 (= res!279398 (and (= (size!14550 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14549 _keys!1025) (size!14550 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21046 () Bool)

(assert (=> mapIsEmpty!21046 mapRes!21046))

(declare-fun b!467364 () Bool)

(assert (=> b!467364 (= e!273409 (and e!273411 mapRes!21046))))

(declare-fun condMapEmpty!21046 () Bool)

(declare-fun mapDefault!21046 () ValueCell!6109)

