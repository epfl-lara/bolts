; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40474 () Bool)

(assert start!40474)

(declare-fun b_free!10537 () Bool)

(declare-fun b_next!10537 () Bool)

(assert (=> start!40474 (= b_free!10537 (not b_next!10537))))

(declare-fun tp!37388 () Bool)

(declare-fun b_and!18539 () Bool)

(assert (=> start!40474 (= tp!37388 b_and!18539)))

(declare-fun b!445255 () Bool)

(declare-fun res!264280 () Bool)

(declare-fun e!261729 () Bool)

(assert (=> b!445255 (=> (not res!264280) (not e!261729))))

(declare-datatypes ((array!27471 0))(
  ( (array!27472 (arr!13180 (Array (_ BitVec 32) (_ BitVec 64))) (size!13532 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27471)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27471 (_ BitVec 32)) Bool)

(assert (=> b!445255 (= res!264280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!445256 () Bool)

(declare-fun res!264278 () Bool)

(assert (=> b!445256 (=> (not res!264278) (not e!261729))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16907 0))(
  ( (V!16908 (val!5970 Int)) )
))
(declare-datatypes ((ValueCell!5582 0))(
  ( (ValueCellFull!5582 (v!8217 V!16907)) (EmptyCell!5582) )
))
(declare-datatypes ((array!27473 0))(
  ( (array!27474 (arr!13181 (Array (_ BitVec 32) ValueCell!5582)) (size!13533 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27473)

(assert (=> b!445256 (= res!264278 (and (= (size!13533 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13532 _keys!709) (size!13533 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445257 () Bool)

(declare-fun e!261728 () Bool)

(assert (=> b!445257 (= e!261729 e!261728)))

(declare-fun res!264270 () Bool)

(assert (=> b!445257 (=> (not res!264270) (not e!261728))))

(declare-fun lt!203598 () array!27471)

(assert (=> b!445257 (= res!264270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203598 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445257 (= lt!203598 (array!27472 (store (arr!13180 _keys!709) i!563 k!794) (size!13532 _keys!709)))))

(declare-fun b!445258 () Bool)

(declare-fun res!264279 () Bool)

(assert (=> b!445258 (=> (not res!264279) (not e!261729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445258 (= res!264279 (validKeyInArray!0 k!794))))

(declare-fun b!445259 () Bool)

(declare-fun res!264271 () Bool)

(assert (=> b!445259 (=> (not res!264271) (not e!261729))))

(declare-fun arrayContainsKey!0 (array!27471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445259 (= res!264271 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!445260 () Bool)

(declare-fun e!261731 () Bool)

(declare-fun e!261730 () Bool)

(declare-fun mapRes!19404 () Bool)

(assert (=> b!445260 (= e!261731 (and e!261730 mapRes!19404))))

(declare-fun condMapEmpty!19404 () Bool)

(declare-fun mapDefault!19404 () ValueCell!5582)

