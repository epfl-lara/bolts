; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84176 () Bool)

(assert start!84176)

(declare-fun b_free!19849 () Bool)

(declare-fun b_next!19849 () Bool)

(assert (=> start!84176 (= b_free!19849 (not b_next!19849))))

(declare-fun tp!69151 () Bool)

(declare-fun b_and!31793 () Bool)

(assert (=> start!84176 (= tp!69151 b_and!31793)))

(declare-fun b!983747 () Bool)

(declare-fun e!554634 () Bool)

(declare-fun e!554635 () Bool)

(declare-fun mapRes!36455 () Bool)

(assert (=> b!983747 (= e!554634 (and e!554635 mapRes!36455))))

(declare-fun condMapEmpty!36455 () Bool)

(declare-datatypes ((V!35585 0))(
  ( (V!35586 (val!11526 Int)) )
))
(declare-datatypes ((ValueCell!10994 0))(
  ( (ValueCellFull!10994 (v!14088 V!35585)) (EmptyCell!10994) )
))
(declare-datatypes ((array!61873 0))(
  ( (array!61874 (arr!29790 (Array (_ BitVec 32) ValueCell!10994)) (size!30270 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61873)

(declare-fun mapDefault!36455 () ValueCell!10994)

