; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41640 () Bool)

(assert start!41640)

(declare-fun b_free!11285 () Bool)

(declare-fun b_next!11285 () Bool)

(assert (=> start!41640 (= b_free!11285 (not b_next!11285))))

(declare-fun tp!39856 () Bool)

(declare-fun b_and!19651 () Bool)

(assert (=> start!41640 (= tp!39856 b_and!19651)))

(declare-fun mapIsEmpty!20749 () Bool)

(declare-fun mapRes!20749 () Bool)

(assert (=> mapIsEmpty!20749 mapRes!20749))

(declare-fun b!464729 () Bool)

(declare-fun e!271534 () Bool)

(declare-fun e!271533 () Bool)

(assert (=> b!464729 (= e!271534 (and e!271533 mapRes!20749))))

(declare-fun condMapEmpty!20749 () Bool)

(declare-datatypes ((V!18055 0))(
  ( (V!18056 (val!6401 Int)) )
))
(declare-datatypes ((ValueCell!6013 0))(
  ( (ValueCellFull!6013 (v!8684 V!18055)) (EmptyCell!6013) )
))
(declare-datatypes ((array!29173 0))(
  ( (array!29174 (arr!14014 (Array (_ BitVec 32) ValueCell!6013)) (size!14366 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29173)

(declare-fun mapDefault!20749 () ValueCell!6013)

