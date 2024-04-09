; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110704 () Bool)

(assert start!110704)

(declare-fun b_free!29503 () Bool)

(declare-fun b_next!29503 () Bool)

(assert (=> start!110704 (= b_free!29503 (not b_next!29503))))

(declare-fun tp!103832 () Bool)

(declare-fun b_and!47721 () Bool)

(assert (=> start!110704 (= tp!103832 b_and!47721)))

(declare-fun b!1309398 () Bool)

(declare-fun e!747109 () Bool)

(declare-fun tp_is_empty!35233 () Bool)

(assert (=> b!1309398 (= e!747109 tp_is_empty!35233)))

(declare-fun b!1309399 () Bool)

(declare-fun e!747107 () Bool)

(assert (=> b!1309399 (= e!747107 tp_is_empty!35233)))

(declare-fun b!1309400 () Bool)

(declare-fun e!747110 () Bool)

(declare-fun mapRes!54478 () Bool)

(assert (=> b!1309400 (= e!747110 (and e!747109 mapRes!54478))))

(declare-fun condMapEmpty!54478 () Bool)

(declare-datatypes ((V!52081 0))(
  ( (V!52082 (val!17691 Int)) )
))
(declare-datatypes ((ValueCell!16718 0))(
  ( (ValueCellFull!16718 (v!20316 V!52081)) (EmptyCell!16718) )
))
(declare-datatypes ((array!87425 0))(
  ( (array!87426 (arr!42188 (Array (_ BitVec 32) ValueCell!16718)) (size!42739 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87425)

(declare-fun mapDefault!54478 () ValueCell!16718)

