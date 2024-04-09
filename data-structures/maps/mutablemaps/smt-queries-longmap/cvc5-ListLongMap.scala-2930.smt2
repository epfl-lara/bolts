; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41776 () Bool)

(assert start!41776)

(declare-fun b_free!11389 () Bool)

(declare-fun b_next!11389 () Bool)

(assert (=> start!41776 (= b_free!11389 (not b_next!11389))))

(declare-fun tp!40174 () Bool)

(declare-fun b_and!19775 () Bool)

(assert (=> start!41776 (= tp!40174 b_and!19775)))

(declare-fun mapIsEmpty!20911 () Bool)

(declare-fun mapRes!20911 () Bool)

(assert (=> mapIsEmpty!20911 mapRes!20911))

(declare-fun b!466191 () Bool)

(declare-fun res!278725 () Bool)

(declare-fun e!272581 () Bool)

(assert (=> b!466191 (=> (not res!278725) (not e!272581))))

(declare-datatypes ((array!29371 0))(
  ( (array!29372 (arr!14111 (Array (_ BitVec 32) (_ BitVec 64))) (size!14463 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29371)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29371 (_ BitVec 32)) Bool)

(assert (=> b!466191 (= res!278725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466192 () Bool)

(declare-fun res!278727 () Bool)

(assert (=> b!466192 (=> (not res!278727) (not e!272581))))

(declare-datatypes ((List!8563 0))(
  ( (Nil!8560) (Cons!8559 (h!9415 (_ BitVec 64)) (t!14523 List!8563)) )
))
(declare-fun arrayNoDuplicates!0 (array!29371 (_ BitVec 32) List!8563) Bool)

(assert (=> b!466192 (= res!278727 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8560))))

(declare-fun b!466193 () Bool)

(declare-fun e!272578 () Bool)

(declare-fun e!272580 () Bool)

(assert (=> b!466193 (= e!272578 (and e!272580 mapRes!20911))))

(declare-fun condMapEmpty!20911 () Bool)

(declare-datatypes ((V!18195 0))(
  ( (V!18196 (val!6453 Int)) )
))
(declare-datatypes ((ValueCell!6065 0))(
  ( (ValueCellFull!6065 (v!8737 V!18195)) (EmptyCell!6065) )
))
(declare-datatypes ((array!29373 0))(
  ( (array!29374 (arr!14112 (Array (_ BitVec 32) ValueCell!6065)) (size!14464 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29373)

(declare-fun mapDefault!20911 () ValueCell!6065)

