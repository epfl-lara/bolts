; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3920 () Bool)

(assert start!3920)

(declare-fun b_free!827 () Bool)

(declare-fun b_next!827 () Bool)

(assert (=> start!3920 (= b_free!827 (not b_next!827))))

(declare-fun tp!3900 () Bool)

(declare-fun b_and!1639 () Bool)

(assert (=> start!3920 (= tp!3900 b_and!1639)))

(declare-fun b!27815 () Bool)

(declare-fun res!16485 () Bool)

(declare-fun e!18070 () Bool)

(assert (=> b!27815 (=> (not res!16485) (not e!18070))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27815 (= res!16485 (validKeyInArray!0 k!1304))))

(declare-fun b!27816 () Bool)

(declare-fun e!18067 () Bool)

(declare-fun e!18069 () Bool)

(declare-fun mapRes!1300 () Bool)

(assert (=> b!27816 (= e!18067 (and e!18069 mapRes!1300))))

(declare-fun condMapEmpty!1300 () Bool)

(declare-datatypes ((V!1399 0))(
  ( (V!1400 (val!617 Int)) )
))
(declare-datatypes ((ValueCell!391 0))(
  ( (ValueCellFull!391 (v!1706 V!1399)) (EmptyCell!391) )
))
(declare-datatypes ((array!1591 0))(
  ( (array!1592 (arr!749 (Array (_ BitVec 32) ValueCell!391)) (size!850 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1591)

(declare-fun mapDefault!1300 () ValueCell!391)

