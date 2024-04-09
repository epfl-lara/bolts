; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109088 () Bool)

(assert start!109088)

(declare-fun b_free!28541 () Bool)

(declare-fun b_next!28541 () Bool)

(assert (=> start!109088 (= b_free!28541 (not b_next!28541))))

(declare-fun tp!100743 () Bool)

(declare-fun b_and!46641 () Bool)

(assert (=> start!109088 (= tp!100743 b_and!46641)))

(declare-fun b!1288923 () Bool)

(declare-fun res!856231 () Bool)

(declare-fun e!735982 () Bool)

(assert (=> b!1288923 (=> (not res!856231) (not e!735982))))

(declare-datatypes ((array!85361 0))(
  ( (array!85362 (arr!41177 (Array (_ BitVec 32) (_ BitVec 64))) (size!41728 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85361)

(declare-datatypes ((List!29373 0))(
  ( (Nil!29370) (Cons!29369 (h!30578 (_ BitVec 64)) (t!42944 List!29373)) )
))
(declare-fun arrayNoDuplicates!0 (array!85361 (_ BitVec 32) List!29373) Bool)

(assert (=> b!1288923 (= res!856231 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29370))))

(declare-fun b!1288925 () Bool)

(declare-fun e!735983 () Bool)

(declare-fun e!735985 () Bool)

(declare-fun mapRes!52832 () Bool)

(assert (=> b!1288925 (= e!735983 (and e!735985 mapRes!52832))))

(declare-fun condMapEmpty!52832 () Bool)

(declare-datatypes ((V!50677 0))(
  ( (V!50678 (val!17165 Int)) )
))
(declare-datatypes ((ValueCell!16192 0))(
  ( (ValueCellFull!16192 (v!19766 V!50677)) (EmptyCell!16192) )
))
(declare-datatypes ((array!85363 0))(
  ( (array!85364 (arr!41178 (Array (_ BitVec 32) ValueCell!16192)) (size!41729 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85363)

(declare-fun mapDefault!52832 () ValueCell!16192)

