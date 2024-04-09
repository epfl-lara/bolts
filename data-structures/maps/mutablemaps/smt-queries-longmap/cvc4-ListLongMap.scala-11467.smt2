; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133636 () Bool)

(assert start!133636)

(declare-fun b_free!32021 () Bool)

(declare-fun b_next!32021 () Bool)

(assert (=> start!133636 (= b_free!32021 (not b_next!32021))))

(declare-fun tp!113188 () Bool)

(declare-fun b_and!51563 () Bool)

(assert (=> start!133636 (= tp!113188 b_and!51563)))

(declare-fun b!1561962 () Bool)

(declare-fun res!1068042 () Bool)

(declare-fun e!870442 () Bool)

(assert (=> b!1561962 (=> (not res!1068042) (not e!870442))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104043 0))(
  ( (array!104044 (arr!50209 (Array (_ BitVec 32) (_ BitVec 64))) (size!50760 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104043)

(declare-datatypes ((V!59789 0))(
  ( (V!59790 (val!19427 Int)) )
))
(declare-datatypes ((ValueCell!18313 0))(
  ( (ValueCellFull!18313 (v!22176 V!59789)) (EmptyCell!18313) )
))
(declare-datatypes ((array!104045 0))(
  ( (array!104046 (arr!50210 (Array (_ BitVec 32) ValueCell!18313)) (size!50761 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104045)

(assert (=> b!1561962 (= res!1068042 (and (= (size!50761 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50760 _keys!637) (size!50761 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561963 () Bool)

(declare-fun e!870443 () Bool)

(declare-fun e!870446 () Bool)

(declare-fun mapRes!59406 () Bool)

(assert (=> b!1561963 (= e!870443 (and e!870446 mapRes!59406))))

(declare-fun condMapEmpty!59406 () Bool)

(declare-fun mapDefault!59406 () ValueCell!18313)

