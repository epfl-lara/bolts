; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43548 () Bool)

(assert start!43548)

(declare-fun b_free!12319 () Bool)

(declare-fun b_next!12319 () Bool)

(assert (=> start!43548 (= b_free!12319 (not b_next!12319))))

(declare-fun tp!43239 () Bool)

(declare-fun b_and!21097 () Bool)

(assert (=> start!43548 (= tp!43239 b_and!21097)))

(declare-fun b!482218 () Bool)

(declare-fun res!287526 () Bool)

(declare-fun e!283790 () Bool)

(assert (=> b!482218 (=> (not res!287526) (not e!283790))))

(declare-datatypes ((array!31289 0))(
  ( (array!31290 (arr!15044 (Array (_ BitVec 32) (_ BitVec 64))) (size!15402 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31289)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31289 (_ BitVec 32)) Bool)

(assert (=> b!482218 (= res!287526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482219 () Bool)

(declare-fun e!283793 () Bool)

(declare-fun e!283794 () Bool)

(declare-fun mapRes!22456 () Bool)

(assert (=> b!482219 (= e!283793 (and e!283794 mapRes!22456))))

(declare-fun condMapEmpty!22456 () Bool)

(declare-datatypes ((V!19513 0))(
  ( (V!19514 (val!6963 Int)) )
))
(declare-datatypes ((ValueCell!6554 0))(
  ( (ValueCellFull!6554 (v!9252 V!19513)) (EmptyCell!6554) )
))
(declare-datatypes ((array!31291 0))(
  ( (array!31292 (arr!15045 (Array (_ BitVec 32) ValueCell!6554)) (size!15403 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31291)

(declare-fun mapDefault!22456 () ValueCell!6554)

