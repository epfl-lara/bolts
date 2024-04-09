; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112924 () Bool)

(assert start!112924)

(declare-fun b!1338536 () Bool)

(declare-fun e!762227 () Bool)

(declare-fun e!762230 () Bool)

(declare-fun mapRes!57166 () Bool)

(assert (=> b!1338536 (= e!762227 (and e!762230 mapRes!57166))))

(declare-fun condMapEmpty!57166 () Bool)

(declare-datatypes ((V!54413 0))(
  ( (V!54414 (val!18566 Int)) )
))
(declare-datatypes ((ValueCell!17593 0))(
  ( (ValueCellFull!17593 (v!21211 V!54413)) (EmptyCell!17593) )
))
(declare-datatypes ((array!90803 0))(
  ( (array!90804 (arr!43858 (Array (_ BitVec 32) ValueCell!17593)) (size!44409 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90803)

(declare-fun mapDefault!57166 () ValueCell!17593)

