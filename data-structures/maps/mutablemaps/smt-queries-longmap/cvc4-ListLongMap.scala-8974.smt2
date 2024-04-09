; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108630 () Bool)

(assert start!108630)

(declare-fun b_free!28121 () Bool)

(declare-fun b_next!28121 () Bool)

(assert (=> start!108630 (= b_free!28121 (not b_next!28121))))

(declare-fun tp!99476 () Bool)

(declare-fun b_and!46195 () Bool)

(assert (=> start!108630 (= tp!99476 b_and!46195)))

(declare-fun b!1281773 () Bool)

(declare-fun res!851520 () Bool)

(declare-fun e!732371 () Bool)

(assert (=> b!1281773 (=> (not res!851520) (not e!732371))))

(declare-datatypes ((array!84547 0))(
  ( (array!84548 (arr!40772 (Array (_ BitVec 32) (_ BitVec 64))) (size!41323 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84547)

(declare-datatypes ((List!29066 0))(
  ( (Nil!29063) (Cons!29062 (h!30271 (_ BitVec 64)) (t!42615 List!29066)) )
))
(declare-fun arrayNoDuplicates!0 (array!84547 (_ BitVec 32) List!29066) Bool)

(assert (=> b!1281773 (= res!851520 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29063))))

(declare-fun b!1281774 () Bool)

(declare-fun e!732370 () Bool)

(declare-fun e!732372 () Bool)

(declare-fun mapRes!52196 () Bool)

(assert (=> b!1281774 (= e!732370 (and e!732372 mapRes!52196))))

(declare-fun condMapEmpty!52196 () Bool)

(declare-datatypes ((V!50117 0))(
  ( (V!50118 (val!16955 Int)) )
))
(declare-datatypes ((ValueCell!15982 0))(
  ( (ValueCellFull!15982 (v!19554 V!50117)) (EmptyCell!15982) )
))
(declare-datatypes ((array!84549 0))(
  ( (array!84550 (arr!40773 (Array (_ BitVec 32) ValueCell!15982)) (size!41324 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84549)

(declare-fun mapDefault!52196 () ValueCell!15982)

