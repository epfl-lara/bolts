; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43522 () Bool)

(assert start!43522)

(declare-fun b_free!12293 () Bool)

(declare-fun b_next!12293 () Bool)

(assert (=> start!43522 (= b_free!12293 (not b_next!12293))))

(declare-fun tp!43161 () Bool)

(declare-fun b_and!21071 () Bool)

(assert (=> start!43522 (= tp!43161 b_and!21071)))

(declare-fun b!481937 () Bool)

(declare-fun res!287366 () Bool)

(declare-fun e!283595 () Bool)

(assert (=> b!481937 (=> (not res!287366) (not e!283595))))

(declare-datatypes ((array!31241 0))(
  ( (array!31242 (arr!15020 (Array (_ BitVec 32) (_ BitVec 64))) (size!15378 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31241)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31241 (_ BitVec 32)) Bool)

(assert (=> b!481937 (= res!287366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481938 () Bool)

(declare-fun e!283594 () Bool)

(declare-fun e!283593 () Bool)

(declare-fun mapRes!22417 () Bool)

(assert (=> b!481938 (= e!283594 (and e!283593 mapRes!22417))))

(declare-fun condMapEmpty!22417 () Bool)

(declare-datatypes ((V!19477 0))(
  ( (V!19478 (val!6950 Int)) )
))
(declare-datatypes ((ValueCell!6541 0))(
  ( (ValueCellFull!6541 (v!9239 V!19477)) (EmptyCell!6541) )
))
(declare-datatypes ((array!31243 0))(
  ( (array!31244 (arr!15021 (Array (_ BitVec 32) ValueCell!6541)) (size!15379 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31243)

(declare-fun mapDefault!22417 () ValueCell!6541)

