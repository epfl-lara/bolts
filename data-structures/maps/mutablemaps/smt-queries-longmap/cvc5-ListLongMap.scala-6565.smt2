; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83302 () Bool)

(assert start!83302)

(declare-fun b_free!19267 () Bool)

(declare-fun b_next!19267 () Bool)

(assert (=> start!83302 (= b_free!19267 (not b_next!19267))))

(declare-fun tp!67080 () Bool)

(declare-fun b_and!30773 () Bool)

(assert (=> start!83302 (= tp!67080 b_and!30773)))

(declare-fun b!971661 () Bool)

(declare-fun res!650492 () Bool)

(declare-fun e!547754 () Bool)

(assert (=> b!971661 (=> (not res!650492) (not e!547754))))

(declare-datatypes ((array!60361 0))(
  ( (array!60362 (arr!29040 (Array (_ BitVec 32) (_ BitVec 64))) (size!29520 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60361)

(declare-datatypes ((List!20265 0))(
  ( (Nil!20262) (Cons!20261 (h!21423 (_ BitVec 64)) (t!28638 List!20265)) )
))
(declare-fun arrayNoDuplicates!0 (array!60361 (_ BitVec 32) List!20265) Bool)

(assert (=> b!971661 (= res!650492 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20262))))

(declare-fun mapIsEmpty!35257 () Bool)

(declare-fun mapRes!35257 () Bool)

(assert (=> mapIsEmpty!35257 mapRes!35257))

(declare-fun b!971662 () Bool)

(declare-fun e!547753 () Bool)

(declare-fun e!547755 () Bool)

(assert (=> b!971662 (= e!547753 (and e!547755 mapRes!35257))))

(declare-fun condMapEmpty!35257 () Bool)

(declare-datatypes ((V!34537 0))(
  ( (V!34538 (val!11133 Int)) )
))
(declare-datatypes ((ValueCell!10601 0))(
  ( (ValueCellFull!10601 (v!13692 V!34537)) (EmptyCell!10601) )
))
(declare-datatypes ((array!60363 0))(
  ( (array!60364 (arr!29041 (Array (_ BitVec 32) ValueCell!10601)) (size!29521 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60363)

(declare-fun mapDefault!35257 () ValueCell!10601)

