; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!828 () Bool)

(assert start!828)

(declare-fun b_free!221 () Bool)

(declare-fun b_next!221 () Bool)

(assert (=> start!828 (= b_free!221 (not b_next!221))))

(declare-fun tp!892 () Bool)

(declare-fun b_and!367 () Bool)

(assert (=> start!828 (= tp!892 b_and!367)))

(declare-fun res!6838 () Bool)

(declare-fun e!3560 () Bool)

(assert (=> start!828 (=> (not res!6838) (not e!3560))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!828 (= res!6838 (validMask!0 mask!2250))))

(assert (=> start!828 e!3560))

(assert (=> start!828 tp!892))

(assert (=> start!828 true))

(declare-datatypes ((V!575 0))(
  ( (V!576 (val!155 Int)) )
))
(declare-datatypes ((ValueCell!133 0))(
  ( (ValueCellFull!133 (v!1246 V!575)) (EmptyCell!133) )
))
(declare-datatypes ((array!531 0))(
  ( (array!532 (arr!254 (Array (_ BitVec 32) ValueCell!133)) (size!316 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!531)

(declare-fun e!3557 () Bool)

(declare-fun array_inv!181 (array!531) Bool)

(assert (=> start!828 (and (array_inv!181 _values!1492) e!3557)))

(declare-fun tp_is_empty!299 () Bool)

(assert (=> start!828 tp_is_empty!299))

(declare-datatypes ((array!533 0))(
  ( (array!534 (arr!255 (Array (_ BitVec 32) (_ BitVec 64))) (size!317 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!533)

(declare-fun array_inv!182 (array!533) Bool)

(assert (=> start!828 (array_inv!182 _keys!1806)))

(declare-fun b!6470 () Bool)

(declare-fun res!6842 () Bool)

(assert (=> b!6470 (=> (not res!6842) (not e!3560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!533 (_ BitVec 32)) Bool)

(assert (=> b!6470 (= res!6842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6471 () Bool)

(declare-fun e!3561 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6471 (= e!3561 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6472 () Bool)

(declare-fun arrayContainsKey!0 (array!533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6472 (= e!3561 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!419 () Bool)

(declare-fun mapRes!419 () Bool)

(declare-fun tp!893 () Bool)

(declare-fun e!3562 () Bool)

(assert (=> mapNonEmpty!419 (= mapRes!419 (and tp!893 e!3562))))

(declare-fun mapValue!419 () ValueCell!133)

(declare-fun mapRest!419 () (Array (_ BitVec 32) ValueCell!133))

(declare-fun mapKey!419 () (_ BitVec 32))

(assert (=> mapNonEmpty!419 (= (arr!254 _values!1492) (store mapRest!419 mapKey!419 mapValue!419))))

(declare-fun b!6473 () Bool)

(declare-fun e!3556 () Bool)

(assert (=> b!6473 (= e!3556 true)))

(declare-datatypes ((SeekEntryResult!19 0))(
  ( (MissingZero!19 (index!2195 (_ BitVec 32))) (Found!19 (index!2196 (_ BitVec 32))) (Intermediate!19 (undefined!831 Bool) (index!2197 (_ BitVec 32)) (x!2525 (_ BitVec 32))) (Undefined!19) (MissingVacant!19 (index!2198 (_ BitVec 32))) )
))
(declare-fun lt!1215 () SeekEntryResult!19)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!533 (_ BitVec 32)) SeekEntryResult!19)

(assert (=> b!6473 (= lt!1215 (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250))))

(declare-fun b!6474 () Bool)

(declare-fun res!6841 () Bool)

(assert (=> b!6474 (=> (not res!6841) (not e!3560))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6474 (= res!6841 (validKeyInArray!0 k!1278))))

(declare-fun b!6475 () Bool)

(declare-fun res!6843 () Bool)

(assert (=> b!6475 (=> (not res!6843) (not e!3560))))

(declare-datatypes ((List!167 0))(
  ( (Nil!164) (Cons!163 (h!729 (_ BitVec 64)) (t!2302 List!167)) )
))
(declare-fun arrayNoDuplicates!0 (array!533 (_ BitVec 32) List!167) Bool)

(assert (=> b!6475 (= res!6843 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!164))))

(declare-fun b!6476 () Bool)

(declare-fun e!3558 () Bool)

(assert (=> b!6476 (= e!3557 (and e!3558 mapRes!419))))

(declare-fun condMapEmpty!419 () Bool)

(declare-fun mapDefault!419 () ValueCell!133)

