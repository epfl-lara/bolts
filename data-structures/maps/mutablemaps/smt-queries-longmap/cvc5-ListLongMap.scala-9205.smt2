; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110614 () Bool)

(assert start!110614)

(declare-fun b_free!29413 () Bool)

(declare-fun b_next!29413 () Bool)

(assert (=> start!110614 (= b_free!29413 (not b_next!29413))))

(declare-fun tp!103562 () Bool)

(declare-fun b_and!47631 () Bool)

(assert (=> start!110614 (= tp!103562 b_and!47631)))

(declare-fun b!1308110 () Bool)

(declare-fun res!868422 () Bool)

(declare-fun e!746431 () Bool)

(assert (=> b!1308110 (=> (not res!868422) (not e!746431))))

(declare-datatypes ((array!87253 0))(
  ( (array!87254 (arr!42102 (Array (_ BitVec 32) (_ BitVec 64))) (size!42653 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87253)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308110 (= res!868422 (not (= (select (arr!42102 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1308111 () Bool)

(declare-fun res!868418 () Bool)

(assert (=> b!1308111 (=> (not res!868418) (not e!746431))))

(assert (=> b!1308111 (= res!868418 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42653 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54343 () Bool)

(declare-fun mapRes!54343 () Bool)

(assert (=> mapIsEmpty!54343 mapRes!54343))

(declare-fun b!1308112 () Bool)

(declare-fun res!868420 () Bool)

(assert (=> b!1308112 (=> (not res!868420) (not e!746431))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87253 (_ BitVec 32)) Bool)

(assert (=> b!1308112 (= res!868420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308113 () Bool)

(declare-fun e!746435 () Bool)

(declare-fun e!746432 () Bool)

(assert (=> b!1308113 (= e!746435 (and e!746432 mapRes!54343))))

(declare-fun condMapEmpty!54343 () Bool)

(declare-datatypes ((V!51961 0))(
  ( (V!51962 (val!17646 Int)) )
))
(declare-datatypes ((ValueCell!16673 0))(
  ( (ValueCellFull!16673 (v!20271 V!51961)) (EmptyCell!16673) )
))
(declare-datatypes ((array!87255 0))(
  ( (array!87256 (arr!42103 (Array (_ BitVec 32) ValueCell!16673)) (size!42654 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87255)

(declare-fun mapDefault!54343 () ValueCell!16673)

