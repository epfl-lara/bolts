; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110528 () Bool)

(assert start!110528)

(declare-fun b_free!29327 () Bool)

(declare-fun b_next!29327 () Bool)

(assert (=> start!110528 (= b_free!29327 (not b_next!29327))))

(declare-fun tp!103304 () Bool)

(declare-fun b_and!47545 () Bool)

(assert (=> start!110528 (= tp!103304 b_and!47545)))

(declare-fun b!1306962 () Bool)

(declare-fun res!867658 () Bool)

(declare-fun e!745788 () Bool)

(assert (=> b!1306962 (=> (not res!867658) (not e!745788))))

(declare-datatypes ((array!87095 0))(
  ( (array!87096 (arr!42023 (Array (_ BitVec 32) (_ BitVec 64))) (size!42574 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87095)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1306962 (= res!867658 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42574 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1306963 () Bool)

(declare-fun e!745787 () Bool)

(declare-fun e!745790 () Bool)

(declare-fun mapRes!54214 () Bool)

(assert (=> b!1306963 (= e!745787 (and e!745790 mapRes!54214))))

(declare-fun condMapEmpty!54214 () Bool)

(declare-datatypes ((V!51845 0))(
  ( (V!51846 (val!17603 Int)) )
))
(declare-datatypes ((ValueCell!16630 0))(
  ( (ValueCellFull!16630 (v!20228 V!51845)) (EmptyCell!16630) )
))
(declare-datatypes ((array!87097 0))(
  ( (array!87098 (arr!42024 (Array (_ BitVec 32) ValueCell!16630)) (size!42575 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87097)

(declare-fun mapDefault!54214 () ValueCell!16630)

