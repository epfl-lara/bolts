; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42374 () Bool)

(assert start!42374)

(declare-fun b_free!11857 () Bool)

(declare-fun b_next!11857 () Bool)

(assert (=> start!42374 (= b_free!11857 (not b_next!11857))))

(declare-fun tp!41601 () Bool)

(declare-fun b_and!20321 () Bool)

(assert (=> start!42374 (= tp!41601 b_and!20321)))

(declare-fun mapNonEmpty!21637 () Bool)

(declare-fun mapRes!21637 () Bool)

(declare-fun tp!41602 () Bool)

(declare-fun e!277116 () Bool)

(assert (=> mapNonEmpty!21637 (= mapRes!21637 (and tp!41602 e!277116))))

(declare-datatypes ((V!18819 0))(
  ( (V!18820 (val!6687 Int)) )
))
(declare-datatypes ((ValueCell!6299 0))(
  ( (ValueCellFull!6299 (v!8974 V!18819)) (EmptyCell!6299) )
))
(declare-datatypes ((array!30291 0))(
  ( (array!30292 (arr!14563 (Array (_ BitVec 32) ValueCell!6299)) (size!14915 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30291)

(declare-fun mapValue!21637 () ValueCell!6299)

(declare-fun mapRest!21637 () (Array (_ BitVec 32) ValueCell!6299))

(declare-fun mapKey!21637 () (_ BitVec 32))

(assert (=> mapNonEmpty!21637 (= (arr!14563 _values!833) (store mapRest!21637 mapKey!21637 mapValue!21637))))

(declare-fun b!472513 () Bool)

(declare-fun e!277115 () Bool)

(declare-fun tp_is_empty!13285 () Bool)

(assert (=> b!472513 (= e!277115 tp_is_empty!13285)))

(declare-fun b!472514 () Bool)

(assert (=> b!472514 (= e!277116 tp_is_empty!13285)))

(declare-fun res!282329 () Bool)

(declare-fun e!277113 () Bool)

(assert (=> start!42374 (=> (not res!282329) (not e!277113))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42374 (= res!282329 (validMask!0 mask!1365))))

(assert (=> start!42374 e!277113))

(assert (=> start!42374 tp_is_empty!13285))

(assert (=> start!42374 tp!41601))

(assert (=> start!42374 true))

(declare-datatypes ((array!30293 0))(
  ( (array!30294 (arr!14564 (Array (_ BitVec 32) (_ BitVec 64))) (size!14916 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30293)

(declare-fun array_inv!10504 (array!30293) Bool)

(assert (=> start!42374 (array_inv!10504 _keys!1025)))

(declare-fun e!277114 () Bool)

(declare-fun array_inv!10505 (array!30291) Bool)

(assert (=> start!42374 (and (array_inv!10505 _values!833) e!277114)))

(declare-fun mapIsEmpty!21637 () Bool)

(assert (=> mapIsEmpty!21637 mapRes!21637))

(declare-fun b!472515 () Bool)

(assert (=> b!472515 (= e!277114 (and e!277115 mapRes!21637))))

(declare-fun condMapEmpty!21637 () Bool)

(declare-fun mapDefault!21637 () ValueCell!6299)

