; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113034 () Bool)

(assert start!113034)

(declare-fun b!1339254 () Bool)

(declare-fun e!762819 () Bool)

(declare-fun e!762817 () Bool)

(declare-fun mapRes!57280 () Bool)

(assert (=> b!1339254 (= e!762819 (and e!762817 mapRes!57280))))

(declare-fun condMapEmpty!57280 () Bool)

(declare-datatypes ((V!54501 0))(
  ( (V!54502 (val!18599 Int)) )
))
(declare-datatypes ((ValueCell!17626 0))(
  ( (ValueCellFull!17626 (v!21245 V!54501)) (EmptyCell!17626) )
))
(declare-datatypes ((array!90919 0))(
  ( (array!90920 (arr!43911 (Array (_ BitVec 32) ValueCell!17626)) (size!44462 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90919)

(declare-fun mapDefault!57280 () ValueCell!17626)

