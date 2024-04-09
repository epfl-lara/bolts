; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133890 () Bool)

(assert start!133890)

(declare-fun b_free!32119 () Bool)

(declare-fun b_next!32119 () Bool)

(assert (=> start!133890 (= b_free!32119 (not b_next!32119))))

(declare-fun tp!113653 () Bool)

(declare-fun b_and!51699 () Bool)

(assert (=> start!133890 (= tp!113653 b_and!51699)))

(declare-fun b!1564790 () Bool)

(declare-fun res!1069817 () Bool)

(declare-fun e!872209 () Bool)

(assert (=> b!1564790 (=> (not res!1069817) (not e!872209))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104445 0))(
  ( (array!104446 (arr!50407 (Array (_ BitVec 32) (_ BitVec 64))) (size!50958 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104445)

(assert (=> b!1564790 (= res!1069817 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50958 _keys!637)) (bvslt from!782 (size!50958 _keys!637))))))

(declare-fun b!1564791 () Bool)

(declare-fun res!1069816 () Bool)

(assert (=> b!1564791 (=> (not res!1069816) (not e!872209))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!60065 0))(
  ( (V!60066 (val!19530 Int)) )
))
(declare-datatypes ((ValueCell!18416 0))(
  ( (ValueCellFull!18416 (v!22281 V!60065)) (EmptyCell!18416) )
))
(declare-datatypes ((array!104447 0))(
  ( (array!104448 (arr!50408 (Array (_ BitVec 32) ValueCell!18416)) (size!50959 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104447)

(assert (=> b!1564791 (= res!1069816 (and (= (size!50959 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50958 _keys!637) (size!50959 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564792 () Bool)

(declare-fun e!872213 () Bool)

(declare-fun e!872211 () Bool)

(declare-fun mapRes!59725 () Bool)

(assert (=> b!1564792 (= e!872213 (and e!872211 mapRes!59725))))

(declare-fun condMapEmpty!59725 () Bool)

(declare-fun mapDefault!59725 () ValueCell!18416)

