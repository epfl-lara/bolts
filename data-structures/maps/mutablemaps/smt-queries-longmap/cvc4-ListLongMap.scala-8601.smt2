; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104876 () Bool)

(assert start!104876)

(declare-fun b_free!26645 () Bool)

(declare-fun b_next!26645 () Bool)

(assert (=> start!104876 (= b_free!26645 (not b_next!26645))))

(declare-fun tp!93425 () Bool)

(declare-fun b_and!44423 () Bool)

(assert (=> start!104876 (= tp!93425 b_and!44423)))

(declare-fun b!1249565 () Bool)

(declare-fun e!709268 () Bool)

(declare-fun e!709270 () Bool)

(declare-fun mapRes!49081 () Bool)

(assert (=> b!1249565 (= e!709268 (and e!709270 mapRes!49081))))

(declare-fun condMapEmpty!49081 () Bool)

(declare-datatypes ((V!47427 0))(
  ( (V!47428 (val!15836 Int)) )
))
(declare-datatypes ((ValueCell!15010 0))(
  ( (ValueCellFull!15010 (v!18532 V!47427)) (EmptyCell!15010) )
))
(declare-datatypes ((array!80751 0))(
  ( (array!80752 (arr!38938 (Array (_ BitVec 32) ValueCell!15010)) (size!39475 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80751)

(declare-fun mapDefault!49081 () ValueCell!15010)

