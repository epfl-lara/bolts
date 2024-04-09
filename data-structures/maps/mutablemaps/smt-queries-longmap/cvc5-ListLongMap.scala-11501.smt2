; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133872 () Bool)

(assert start!133872)

(declare-fun b!1564674 () Bool)

(declare-fun e!872140 () Bool)

(declare-datatypes ((array!104431 0))(
  ( (array!104432 (arr!50401 (Array (_ BitVec 32) (_ BitVec 64))) (size!50952 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104431)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564674 (= e!872140 (bvsge (bvsub (size!50952 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!50952 _keys!637)) from!782)))))

(declare-fun b!1564676 () Bool)

(declare-fun res!1069745 () Bool)

(assert (=> b!1564676 (=> (not res!1069745) (not e!872140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564676 (= res!1069745 (validKeyInArray!0 (select (arr!50401 _keys!637) from!782)))))

(declare-fun b!1564677 () Bool)

(declare-fun e!872137 () Bool)

(declare-fun e!872139 () Bool)

(declare-fun mapRes!59713 () Bool)

(assert (=> b!1564677 (= e!872137 (and e!872139 mapRes!59713))))

(declare-fun condMapEmpty!59713 () Bool)

(declare-datatypes ((V!60057 0))(
  ( (V!60058 (val!19527 Int)) )
))
(declare-datatypes ((ValueCell!18413 0))(
  ( (ValueCellFull!18413 (v!22278 V!60057)) (EmptyCell!18413) )
))
(declare-datatypes ((array!104433 0))(
  ( (array!104434 (arr!50402 (Array (_ BitVec 32) ValueCell!18413)) (size!50953 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104433)

(declare-fun mapDefault!59713 () ValueCell!18413)

